//! Real-valued computation DAG with hash-consing, algebraic simplification,
//! FMA fusion and add/FMA pipe balancing.

use std::collections::HashMap;

/// Node id.
pub type Id = usize;

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum Op {
    /// Input slot `k` (re of complex input j is 2j, im is 2j+1).
    Input(usize),
    /// Twiddle slot `k` (re of twiddle j is 2(j-1), im is 2(j-1)+1).
    Tw(usize),
    /// The opaque constant 1.0 used to steer adds onto FMA pipes.
    One,
    Const(f64),
    Add(Id, Id),
    Sub(Id, Id),
    Neg(Id),
    Mul(Id, Id),
    /// a*b + c
    MulAdd(Id, Id, Id),
    /// a*b - c
    MulSub(Id, Id, Id),
    /// c - a*b
    NegMulAdd(Id, Id, Id),
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
enum Key {
    Input(usize),
    Tw(usize),
    One,
    Const(u64),
    Add(Id, Id),
    Sub(Id, Id),
    Neg(Id),
    Mul(Id, Id),
    MulAdd(Id, Id, Id),
    MulSub(Id, Id, Id),
    NegMulAdd(Id, Id, Id),
}

fn key(op: Op) -> Key {
    match op {
        Op::Input(k) => Key::Input(k),
        Op::Tw(k) => Key::Tw(k),
        Op::One => Key::One,
        Op::Const(c) => Key::Const(c.to_bits()),
        Op::Add(a, b) => Key::Add(a.min(b), a.max(b)),
        Op::Sub(a, b) => Key::Sub(a, b),
        Op::Neg(a) => Key::Neg(a),
        Op::Mul(a, b) => Key::Mul(a.min(b), a.max(b)),
        Op::MulAdd(a, b, c) => Key::MulAdd(a.min(b), a.max(b), c),
        Op::MulSub(a, b, c) => Key::MulSub(a.min(b), a.max(b), c),
        Op::NegMulAdd(a, b, c) => Key::NegMulAdd(a.min(b), a.max(b), c),
    }
}

/// A DAG under construction.
#[derive(Default, Clone, Debug)]
pub struct Dag {
    pub nodes: Vec<Op>,
    cons: HashMap<Key, Id>,
}

/// Constants closer than this to a simple value are snapped to it.
const SNAP: f64 = 1e-15;

impl Dag {
    pub fn new() -> Self {
        Self::default()
    }

    fn intern(&mut self, op: Op) -> Id {
        let k = key(op);
        if let Some(&id) = self.cons.get(&k) {
            return id;
        }
        let id = self.nodes.len();
        self.nodes.push(op);
        self.cons.insert(k, id);
        id
    }

    pub fn input(&mut self, k: usize) -> Id {
        self.intern(Op::Input(k))
    }
    pub fn tw(&mut self, k: usize) -> Id {
        self.intern(Op::Tw(k))
    }
    pub fn one(&mut self) -> Id {
        self.intern(Op::One)
    }
    pub fn konst(&mut self, c: f64) -> Id {
        let c = if c.abs() < SNAP { 0.0 } else { c };
        self.intern(Op::Const(c))
    }
    pub fn as_const(&self, id: Id) -> Option<f64> {
        match self.nodes[id] {
            Op::Const(c) => Some(c),
            _ => None,
        }
    }
    fn is_zero(&self, id: Id) -> bool {
        self.as_const(id) == Some(0.0)
    }

    pub fn neg(&mut self, a: Id) -> Id {
        match self.nodes[a] {
            Op::Neg(x) => x,
            Op::Const(c) => self.konst(-c),
            Op::Sub(x, y) => self.sub(y, x),
            _ => self.intern(Op::Neg(a)),
        }
    }

    pub fn add(&mut self, a: Id, b: Id) -> Id {
        if self.is_zero(a) {
            return b;
        }
        if self.is_zero(b) {
            return a;
        }
        if let Op::Neg(y) = self.nodes[b] {
            return self.sub(a, y);
        }
        if let Op::Neg(x) = self.nodes[a] {
            return self.sub(b, x);
        }
        if let (Some(x), Some(y)) = (self.as_const(a), self.as_const(b)) {
            return self.konst(x + y);
        }
        self.intern(Op::Add(a, b))
    }

    pub fn sub(&mut self, a: Id, b: Id) -> Id {
        if self.is_zero(b) {
            return a;
        }
        if self.is_zero(a) {
            return self.neg(b);
        }
        if a == b {
            return self.konst(0.0);
        }
        if let Op::Neg(y) = self.nodes[b] {
            return self.add(a, y);
        }
        if let Op::Neg(x) = self.nodes[a] {
            // -x - b = -(x + b)
            let s = self.add(x, b);
            return self.neg(s);
        }
        if let (Some(x), Some(y)) = (self.as_const(a), self.as_const(b)) {
            return self.konst(x - y);
        }
        self.intern(Op::Sub(a, b))
    }

    /// Multiplication by a constant or a variable.
    pub fn mul(&mut self, a: Id, b: Id) -> Id {
        let (a, b) = if self.as_const(a).is_some() {
            (b, a)
        } else {
            (a, b)
        };
        if let Some(c) = self.as_const(b) {
            if c == 0.0 {
                return self.konst(0.0);
            }
            if (c - 1.0).abs() < SNAP {
                return a;
            }
            if (c + 1.0).abs() < SNAP {
                return self.neg(a);
            }
            if let Some(x) = self.as_const(a) {
                return self.konst(x * c);
            }
            if let Op::Neg(x) = self.nodes[a] {
                let m = self.mul(x, b);
                return self.neg(m);
            }
            if c < 0.0 {
                // keep constants positive; fold the sign into the consumer
                let k = self.konst(-c);
                let m = self.intern(Op::Mul(a, k));
                return self.neg(m);
            }
        }
        self.intern(Op::Mul(a, b))
    }

    pub fn mul_c(&mut self, a: Id, c: f64) -> Id {
        let k = self.konst(c);
        self.mul(a, k)
    }

    /// Evaluates every node (inputs and twiddles supplied) in f64.
    pub fn eval(&self, input: &[f64], tw: &[f64]) -> Vec<f64> {
        let mut v = vec![0.0; self.nodes.len()];
        for (i, op) in self.nodes.iter().enumerate() {
            v[i] = match *op {
                Op::Input(k) => input[k],
                Op::Tw(k) => tw[k],
                Op::One => 1.0,
                Op::Const(c) => c,
                Op::Add(a, b) => v[a] + v[b],
                Op::Sub(a, b) => v[a] - v[b],
                Op::Neg(a) => -v[a],
                Op::Mul(a, b) => v[a] * v[b],
                Op::MulAdd(a, b, c) => v[a].mul_add(v[b], v[c]),
                Op::MulSub(a, b, c) => v[a].mul_add(v[b], -v[c]),
                Op::NegMulAdd(a, b, c) => (-v[a]).mul_add(v[b], v[c]),
            };
        }
        v
    }
}

/// A finished codelet graph: nodes plus output ids.
#[derive(Clone, Debug)]
pub struct Graph {
    pub dag: Dag,
    pub outputs: Vec<Id>,
}

/// Operation counts of a graph (only nodes reachable from the outputs).
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Counts {
    pub add: usize,
    pub mul: usize,
    pub fma: usize,
    pub neg: usize,
}

impl Counts {
    /// Ops on the FP add pipes vs the FMA pipes (Zen: separate pipe pairs).
    pub fn add_pipe(&self) -> usize {
        self.add + self.neg
    }
    pub fn fma_pipe(&self) -> usize {
        self.mul + self.fma
    }
    pub fn total(&self) -> usize {
        self.add + self.mul + self.fma + self.neg
    }
}

impl Graph {
    pub fn live(&self) -> Vec<bool> {
        let mut live = vec![false; self.dag.nodes.len()];
        let mut stack: Vec<Id> = self.outputs.clone();
        while let Some(i) = stack.pop() {
            if live[i] {
                continue;
            }
            live[i] = true;
            match self.dag.nodes[i] {
                Op::Add(a, b) | Op::Sub(a, b) | Op::Mul(a, b) => {
                    stack.push(a);
                    stack.push(b);
                }
                Op::Neg(a) => stack.push(a),
                Op::MulAdd(a, b, c) | Op::MulSub(a, b, c) | Op::NegMulAdd(a, b, c) => {
                    stack.push(a);
                    stack.push(b);
                    stack.push(c);
                }
                _ => {}
            }
        }
        live
    }

    pub fn uses(&self) -> Vec<usize> {
        let live = self.live();
        let mut u = vec![0usize; self.dag.nodes.len()];
        for (i, op) in self.dag.nodes.iter().enumerate() {
            if !live[i] {
                continue;
            }
            match *op {
                Op::Add(a, b) | Op::Sub(a, b) | Op::Mul(a, b) => {
                    u[a] += 1;
                    u[b] += 1;
                }
                Op::Neg(a) => u[a] += 1,
                Op::MulAdd(a, b, c) | Op::MulSub(a, b, c) | Op::NegMulAdd(a, b, c) => {
                    u[a] += 1;
                    u[b] += 1;
                    u[c] += 1;
                }
                _ => {}
            }
        }
        for &o in &self.outputs {
            u[o] += 1;
        }
        u
    }

    pub fn counts(&self) -> Counts {
        let live = self.live();
        let mut c = Counts::default();
        for (i, op) in self.dag.nodes.iter().enumerate() {
            if !live[i] {
                continue;
            }
            match op {
                Op::Add(..) | Op::Sub(..) => c.add += 1,
                Op::Neg(..) => c.neg += 1,
                Op::Mul(a, b)
                    if !(matches!(self.dag.nodes[*a], Op::One)
                        || matches!(self.dag.nodes[*b], Op::One)) =>
                {
                    c.mul += 1
                }
                Op::MulAdd(..) | Op::MulSub(..) | Op::NegMulAdd(..) => c.fma += 1,
                _ => {}
            }
        }
        c
    }

    /// Rebuilds the graph keeping only live nodes, in dependency (DFS
    /// post-)order, so every node only references earlier nodes.
    pub fn compact(&mut self) {
        let n = self.dag.nodes.len();
        let mut order = Vec::with_capacity(n);
        let mut state = vec![0u8; n]; // 0 new, 1 visiting, 2 done
        for &o in &self.outputs {
            let mut stack = vec![(o, false)];
            while let Some((x, expanded)) = stack.pop() {
                if expanded {
                    state[x] = 2;
                    order.push(x);
                    continue;
                }
                if state[x] != 0 {
                    continue;
                }
                state[x] = 1;
                stack.push((x, true));
                let ops: Vec<Id> = match self.dag.nodes[x] {
                    Op::Add(a, b) | Op::Sub(a, b) | Op::Mul(a, b) => vec![a, b],
                    Op::Neg(a) => vec![a],
                    Op::MulAdd(a, b, c) | Op::MulSub(a, b, c) | Op::NegMulAdd(a, b, c) => {
                        vec![a, b, c]
                    }
                    _ => vec![],
                };
                for y in ops.into_iter().rev() {
                    if state[y] == 0 {
                        stack.push((y, false));
                    }
                }
            }
        }
        let mut map = vec![usize::MAX; n];
        let mut nd = Dag::new();
        for &i in &order {
            let op = self.dag.nodes[i];
            let m = |x: Id| {
                debug_assert!(map[x] != usize::MAX);
                map[x]
            };
            let new = match op {
                Op::Add(a, b) => Op::Add(m(a), m(b)),
                Op::Sub(a, b) => Op::Sub(m(a), m(b)),
                Op::Neg(a) => Op::Neg(m(a)),
                Op::Mul(a, b) => Op::Mul(m(a), m(b)),
                Op::MulAdd(a, b, c) => Op::MulAdd(m(a), m(b), m(c)),
                Op::MulSub(a, b, c) => Op::MulSub(m(a), m(b), m(c)),
                Op::NegMulAdd(a, b, c) => Op::NegMulAdd(m(a), m(b), m(c)),
                o => o,
            };
            map[i] = nd.intern(new);
        }
        self.outputs = self.outputs.iter().map(|&o| map[o]).collect();
        self.dag = nd;
    }

    /// Fuses single-use products into adds/subs (a*b + c etc.) and removes
    /// negations where a consumer can absorb them.
    pub fn fuse_fma(&mut self) {
        loop {
            let uses = self.uses();
            let mut changed = false;
            let n = self.dag.nodes.len();
            for i in 0..n {
                let op = self.dag.nodes[i];
                let prod = |d: &Dag, x: Id| -> Option<(Id, Id)> {
                    match d.nodes[x] {
                        Op::Mul(a, b) if uses[x] == 1 => Some((a, b)),
                        _ => None,
                    }
                };
                let new = match op {
                    Op::Add(a, b) => {
                        if let Some((p, q)) = prod(&self.dag, a) {
                            Some(Op::MulAdd(p, q, b))
                        } else {
                            prod(&self.dag, b).map(|(p, q)| Op::MulAdd(p, q, a))
                        }
                    }
                    Op::Sub(a, b) => {
                        if let Some((p, q)) = prod(&self.dag, b) {
                            Some(Op::NegMulAdd(p, q, a))
                        } else {
                            prod(&self.dag, a).map(|(p, q)| Op::MulSub(p, q, b))
                        }
                    }
                    _ => None,
                };
                if let Some(new) = new {
                    self.dag.nodes[i] = new;
                    changed = true;
                    break;
                }
            }
            if !changed {
                break;
            }
            // uses changed; rebuild hash-cons table lazily via compaction
            self.compact();
        }
        self.compact();
    }

    /// Distributes a +/- (p*q -/+ r*s) into two chained FMAs when that moves
    /// work from the add pipes to the FMA pipes (the product is then
    /// recomputed per consumer; the op count stays the same).
    pub fn distribute_products(&mut self) {
        loop {
            let c = self.counts();
            if c.add_pipe() <= c.fma_pipe() {
                break;
            }
            let uses = self.uses();
            let n = self.dag.nodes.len();
            let mut done = false;
            for i in 0..n {
                let (a, t, sub) = match self.dag.nodes[i] {
                    Op::Add(a, b) => match self.dag.nodes[b] {
                        Op::MulSub(..) | Op::MulAdd(..) => (a, b, false),
                        _ => match self.dag.nodes[a] {
                            Op::MulSub(..) | Op::MulAdd(..) => (b, a, false),
                            _ => continue,
                        },
                    },
                    Op::Sub(a, b) => match self.dag.nodes[b] {
                        Op::MulSub(..) | Op::MulAdd(..) => (a, b, true),
                        _ => continue,
                    },
                    _ => continue,
                };
                if uses[t] < 2 {
                    continue;
                }
                // t = p*q - (r*s)  or  p*q + (r*s), with the inner term a single product
                let (p, q, inner, t_sub) = match self.dag.nodes[t] {
                    Op::MulSub(p, q, x) => (p, q, x, true),
                    Op::MulAdd(p, q, x) => (p, q, x, false),
                    _ => continue,
                };
                let Op::Mul(r, s) = self.dag.nodes[inner] else {
                    continue;
                };
                // a + (pq - rs) = pq + (a - rs) ;  a - (pq - rs) = (a + rs) - pq
                // a + (pq + rs) = pq + (a + rs) ;  a - (pq + rs) = (a - rs) - pq
                let new = match (sub, t_sub) {
                    (false, true) => {
                        let x = self.dag.intern(Op::NegMulAdd(r, s, a));
                        Op::MulAdd(p, q, x)
                    }
                    (true, true) => {
                        let x = self.dag.intern(Op::MulAdd(r, s, a));
                        Op::NegMulAdd(p, q, x)
                    }
                    (false, false) => {
                        let x = self.dag.intern(Op::MulAdd(r, s, a));
                        Op::MulAdd(p, q, x)
                    }
                    (true, false) => {
                        let x = self.dag.intern(Op::NegMulAdd(r, s, a));
                        Op::NegMulAdd(p, q, x)
                    }
                };
                self.dag.nodes[i] = new;
                done = true;
                break;
            }
            if !done {
                break;
            }
            self.compact();
        }
        self.compact();
    }

    /// Converts adds/subs into FMAs against the opaque constant `one` until
    /// the add and FMA pipes carry similar work (Zen 4 has two of each).
    pub fn balance_with_one(&mut self, max_fraction: f64) {
        let c = self.counts();
        if c.add_pipe() <= c.fma_pipe() + 1 {
            return;
        }
        let want = ((c.add_pipe() - c.fma_pipe()) / 2).min((c.add as f64 * max_fraction) as usize);
        let one = self.dag.one();
        let mut converted = 0;
        // Convert later adds first: they sit near the outputs, off the loads' critical path.
        for i in (0..self.dag.nodes.len()).rev() {
            if converted >= want {
                break;
            }
            let new = match self.dag.nodes[i] {
                Op::Add(a, b) => Op::MulAdd(a, one, b),
                Op::Sub(a, b) => Op::MulSub(a, one, b),
                _ => continue,
            };
            self.dag.nodes[i] = new;
            converted += 1;
        }
        self.compact();
    }
}
