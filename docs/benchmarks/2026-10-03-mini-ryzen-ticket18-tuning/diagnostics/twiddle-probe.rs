#![allow(dead_code)]
#[path="original-twiddle.rs"] mod baseline;
#[path="dd-reference.rs"] mod dd;
use std::{hint::black_box, time::Instant};
struct Roots { n: usize, nf: f64, inv: f64 }
impl Roots {
 fn new(n: usize) -> Self { Self { n, nf:n as f64, inv:1.0/n as f64 } }
 #[inline(always)]
 fn get(&self, k: usize) -> (f64,f64) {
  let n=self.n;
  let k=if k<n {k} else {k%n};
  if k==0 { return (1.0,-0.0); }
  let (o,r)=if let Some(t)=k.checked_mul(8) { (t/n,t%n) } else {
   let t=8*k as u128; ((t/n as u128) as usize,(t%n as u128) as usize)
  };
  let num=if o%2==0 {r} else {n-r};
  let q=num as f64*self.inv;
  let q_lo=(-q).mul_add(self.nf,num as f64)*self.inv;
  let phi=std::f64::consts::FRAC_PI_4*q;
  let phi_lo=std::f64::consts::FRAC_PI_4.mul_add(q,-phi)+std::f64::consts::FRAC_PI_4*q_lo+3.061_616_997_868_383e-17*q;
  let (s0,c0)=phi.sin_cos();
  let s=s0+c0*phi_lo;
  let c=c0-s0*phi_lo;
  let (c,s)=match o {0=>(c,s),1=>(s,c),2=>(-s,c),3=>(-c,s),4=>(-c,-s),5=>(-s,-c),6=>(s,-c),_=>(c,-s)};
  (c,-s)
 }
}
#[target_feature(enable="fma")]
unsafe fn get_fma(r:&Roots,k:usize)->(f64,f64) { r.get(k) }
fn time(mut f:impl FnMut(usize)->(f64,f64),n:usize)->f64 {
 let mut best=f64::INFINITY;
 for _ in 0..5 {
  let start=Instant::now();
  for i in 0..200_000 { black_box(f(black_box(i%n))); }
  best=best.min(start.elapsed().as_secs_f64()*1e9/200_000.0);
 }
 best
}
fn main() {
 let fma=std::arch::is_x86_feature_detected!("fma");
 let mut worst=0f64;
 for n in (1..=512).chain([1000,4096,65537,1<<20,3<<22]) {
  let roots=Roots::new(n);
  for k in (0..n).step_by((n/2000).max(1)) {
   let (c,s)=dd::Dd::unit_root(k as u64,n as u64);
   for v in [roots.get(k),if fma {unsafe {get_fma(&roots,k)}} else {roots.get(k)}] {
    let error=(v.0-c.to_f64()).abs().max((v.1+s.to_f64()).abs());
    worst=worst.max(error);
    assert!(error<=f64::EPSILON/2.0+1e-300,"n={n} k={k} error={error}");
   }
  }
 }
 println!("DD reference: maximum absolute component error {worst:e}");
 for n in [16,34,62,256,1024,65524,131072,1048576] {
  let n=black_box(n);
  let roots=Roots::new(n);
  let base=time(|k|baseline::omega(k,n),n);
  let native=time(|k|roots.get(k),n);
  let fm=if fma {time(|k|unsafe {get_fma(&roots,k)},n)} else {0.0};
  println!("n={n} original={base:.3} cached={native:.3} fma={fm:.3} ns/root");
 }
}
