#![allow(dead_code)]
#[path="original-twiddle.rs"] mod baseline;
#[path="dd-reference.rs"] mod dd;
use std::{hint::black_box, time::Instant};
use dd::Dd;
type C=(Dd,Dd);
const COS: [Dd; 15] = [
 Dd { hi:1.00000000000000000e+00, lo:0.00000000000000000e+00 },
 Dd { hi:-5.00000000000000000e-01, lo:0.00000000000000000e+00 },
 Dd { hi:4.16666666666666644e-02, lo:2.31296463463574266e-18 },
 Dd { hi:-1.38888888888888894e-03, lo:5.30054395437357706e-20 },
 Dd { hi:2.48015873015873016e-05, lo:2.15119478667758816e-23 },
 Dd { hi:-2.75573192239858883e-07, lo:-2.37677146222502973e-23 },
 Dd { hi:2.08767569878681002e-09, lo:-1.20734505911325997e-25 },
 Dd { hi:-1.14707455977297245e-11, lo:-2.06555127528307454e-28 },
 Dd { hi:4.77947733238738525e-14, lo:4.39920548583408126e-31 },
 Dd { hi:-1.56192069685862253e-16, lo:-1.19106796602737540e-32 },
 Dd { hi:4.11031762331216484e-19, lo:1.44129733786595271e-36 },
 Dd { hi:-8.89679139245057408e-22, lo:7.91140261487237622e-38 },
 Dd { hi:1.61173757109611839e-24, lo:-3.68465735645097660e-41 },
 Dd { hi:-2.47959626322479759e-27, lo:1.29537309647652288e-43 },
 Dd { hi:3.27988923706983776e-30, lo:1.51175427440298787e-46 },
];
const SIN: [Dd; 15] = [
 Dd { hi:1.00000000000000000e+00, lo:0.00000000000000000e+00 },
 Dd { hi:-1.66666666666666657e-01, lo:-9.25185853854297066e-18 },
 Dd { hi:8.33333333333333322e-03, lo:1.15648231731787138e-19 },
 Dd { hi:-1.98412698412698413e-04, lo:-1.72095582934207053e-22 },
 Dd { hi:2.75573192239858925e-06, lo:-1.85839327404647208e-22 },
 Dd { hi:-2.50521083854417202e-08, lo:1.44881407093591197e-24 },
 Dd { hi:1.60590438368216133e-10, lo:1.25852945887520981e-26 },
 Dd { hi:-7.64716373181981641e-13, lo:-7.03872877733453001e-30 },
 Dd { hi:2.81145725434552060e-15, lo:1.65088427308614326e-31 },
 Dd { hi:-8.22063524662432950e-18, lo:-2.21418941196042654e-34 },
 Dd { hi:1.95729410633912626e-20, lo:-1.36435038300879085e-36 },
 Dd { hi:-3.86817017063068413e-23, lo:8.84317765548234385e-40 },
 Dd { hi:6.44695028438447359e-26, lo:-1.93304042337034648e-42 },
 Dd { hi:-9.18368986379554601e-29, lo:-1.43031503967873220e-45 },
 Dd { hi:1.13099628864477159e-31, lo:1.04980154129595060e-47 },
];

#[target_feature(enable="fma")]
unsafe fn seed(k:usize,n:usize)->C {
 let k=k%n;
 if k==0 { return (Dd::ONE,Dd::ZERO); }
 let t=8*k;
 let o=t/n;
 let r=t%n;
 let num=if o%2==0 {r} else {n-r};
 let x=Dd::FRAC_PI_4*Dd::ratio(num as u64,n as u64);
 let x2=x*x;
 let mut c=COS[14];
 let mut s=SIN[14];
 for i in (0..14).rev() { c=c*x2+COS[i]; s=s*x2+SIN[i]; }
 let s=s*x;
 let (c,s)=match o {0=>(c,s),1=>(s,c),2=>(-s,c),3=>(-c,s),4=>(-c,-s),5=>(-s,-c),6=>(s,-c),_=>(c,-s)};
 (c,-s)
}

struct Roots { n:usize, shift:u32, low:Vec<C>, high:Vec<C> }
impl Roots {
 fn new(n:usize)->Self {
  let shift=(n.ilog2()/2).saturating_sub(1);
  let block=1usize<<shift;
  let at=|k| unsafe {seed(k,n)};
  Self {n,shift,low:(0..block).map(at).collect(),high:(0..n.div_ceil(block)).map(|i|at(i*block)).collect()}
 }
 #[target_feature(enable="fma")]
 unsafe fn get(&self,k:usize)->(f64,f64) {
  let k=if k<self.n {k} else {k%self.n};
  let (ar,ai)=self.high[k>>self.shift];
  let (br,bi)=self.low[k&((1<<self.shift)-1)];
  let p=ar.hi*br.hi;
  let re=(-ai.hi).mul_add(bi.hi,p);
  let correction=ar.hi.mul_add(br.hi,-p)+ar.hi*br.lo+ar.lo*br.hi-ai.hi*bi.lo-ai.lo*bi.hi;
  let re=re+correction;
  let p=ar.hi*bi.hi;
  let im=ai.hi.mul_add(br.hi,p);
  let correction=ar.hi.mul_add(bi.hi,-p)+ar.hi*bi.lo+ar.lo*bi.hi+ai.hi*br.lo+ai.lo*br.hi;
  (re,im+correction)
 }
}
fn main() {
 assert!(std::arch::is_x86_feature_detected!("fma"));
 let mut worst=0f64;
 for n in (2..512).chain([1000,4096,65524,65537,131072,1<<20,3<<22]) {
  let r=Roots::new(n);
  for k in (0..n).step_by((n/2000).max(1)) {
   let (c,s)=Dd::unit_root(k as u64,n as u64);
   let v=unsafe {r.get(k)};
   let error=(v.0-c.to_f64()).abs().max((v.1+s.to_f64()).abs());
   worst=worst.max(error);
   assert!(error<=f64::EPSILON/2.0+1e-300,"n={n} k={k} error={error}");
  }
 }
 println!("DD reference: maximum absolute component error {worst:e}");
 for n in [1024,4096,16384,65524,131072,1048576] {
  let n=black_box(n);
  let mut base=f64::INFINITY;
  let mut build=f64::INFINITY;
  let mut total=f64::INFINITY;
  let mut lookup=f64::INFINITY;
  let mut chirp=f64::INFINITY;
  for _ in 0..5 {
   let t=Instant::now();
   for k in 0..n {black_box(baseline::omega(black_box(k),n));}
   base=base.min(t.elapsed().as_secs_f64()*1e6);
   let t=Instant::now();
   let r=Roots::new(n);
   build=build.min(t.elapsed().as_secs_f64()*1e6);
   let v=Instant::now();
   for k in 0..n {black_box(unsafe {r.get(black_box(k))});}
   lookup=lookup.min(v.elapsed().as_secs_f64()*1e9/n as f64);
   total=total.min(t.elapsed().as_secs_f64()*1e6);
   let v=Instant::now();
   for k in 0..n {black_box(unsafe {r.get(black_box(k*k%n))});}
   chirp=chirp.min(v.elapsed().as_secs_f64()*1e9/n as f64);
  }
  println!("n={n} original={base:.3}us table-total={total:.3}us build={build:.3}us lookup={lookup:.3}ns chirp={chirp:.3}ns");
 }
}
