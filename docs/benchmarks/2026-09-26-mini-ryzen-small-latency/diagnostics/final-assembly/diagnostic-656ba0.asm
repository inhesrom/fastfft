
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000656ba0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  656ba0:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  656ba4:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  656ba9:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  656bae:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  656bb3:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  656bb8:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  656bbd:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  656bc2:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  656bc7:	c5 d8 58 d9          	vaddps %xmm1,%xmm4,%xmm3
  656bcb:	c5 f8 58 ea          	vaddps %xmm2,%xmm0,%xmm5
  656bcf:	c5 d8 5c c9          	vsubps %xmm1,%xmm4,%xmm1
  656bd3:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  656bd7:	c5 f8 28 15 c1 ab a0 	vmovaps -0x5f543f(%rip),%xmm2        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  656bde:	ff 
  656bdf:	c5 f8 59 e2          	vmulps %xmm2,%xmm0,%xmm4
  656be3:	c5 f8 28 35 d5 b3 a0 	vmovaps -0x5f4c2b(%rip),%xmm6        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  656bea:	ff 
  656beb:	c4 e2 71 b8 e6       	vfmadd231ps %xmm6,%xmm1,%xmm4
  656bf0:	c5 f8 59 c6          	vmulps %xmm6,%xmm0,%xmm0
  656bf4:	c4 e2 71 bc c2       	vfnmadd231ps %xmm2,%xmm1,%xmm0
  656bf9:	c5 e0 14 cc          	vunpcklps %xmm4,%xmm3,%xmm1
  656bfd:	c5 e0 15 d4          	vunpckhps %xmm4,%xmm3,%xmm2
  656c01:	c5 f1 c6 d9 03       	vshufpd $0x3,%xmm1,%xmm1,%xmm3
  656c06:	c5 e9 c6 e2 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm4
  656c0b:	c5 d0 14 f0          	vunpcklps %xmm0,%xmm5,%xmm6
  656c0f:	c5 d0 15 c0          	vunpckhps %xmm0,%xmm5,%xmm0
  656c13:	c5 c9 c6 ee 03       	vshufpd $0x3,%xmm6,%xmm6,%xmm5
  656c18:	c5 f9 c6 f8 03       	vshufpd $0x3,%xmm0,%xmm0,%xmm7
  656c1d:	c5 70 58 c2          	vaddps %xmm2,%xmm1,%xmm8
  656c21:	c5 f0 5c ca          	vsubps %xmm2,%xmm1,%xmm1
  656c25:	c5 e0 58 d4          	vaddps %xmm4,%xmm3,%xmm2
  656c29:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  656c2d:	c5 c8 58 e0          	vaddps %xmm0,%xmm6,%xmm4
  656c31:	c5 c8 5c c0          	vsubps %xmm0,%xmm6,%xmm0
  656c35:	c5 d0 58 f7          	vaddps %xmm7,%xmm5,%xmm6
  656c39:	c5 d0 5c ef          	vsubps %xmm7,%xmm5,%xmm5
  656c3d:	c5 b8 58 fa          	vaddps %xmm2,%xmm8,%xmm7
  656c41:	c5 70 58 cd          	vaddps %xmm5,%xmm1,%xmm9
  656c45:	c5 b8 5c d2          	vsubps %xmm2,%xmm8,%xmm2
  656c49:	c5 f0 5c cd          	vsubps %xmm5,%xmm1,%xmm1
  656c4d:	c5 d8 58 ee          	vaddps %xmm6,%xmm4,%xmm5
  656c51:	c5 c0 14 ed          	vunpcklps %xmm5,%xmm7,%xmm5
  656c55:	c5 f8 5c fb          	vsubps %xmm3,%xmm0,%xmm7
  656c59:	c5 b0 14 ff          	vunpcklps %xmm7,%xmm9,%xmm7
  656c5d:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  656c61:	c5 e8 14 d4          	vunpcklps %xmm4,%xmm2,%xmm2
  656c65:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
  656c69:	c5 f0 14 c0          	vunpcklps %xmm0,%xmm1,%xmm0
  656c6d:	c5 f8 11 2e          	vmovups %xmm5,(%rsi)
  656c71:	c5 f8 11 7e 10       	vmovups %xmm7,0x10(%rsi)
  656c76:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  656c7b:	c5 f8 11 46 30       	vmovups %xmm0,0x30(%rsi)
  656c80:	c3                   	ret
  656c81:	cc                   	int3
  656c82:	cc                   	int3
  656c83:	cc                   	int3
  656c84:	cc                   	int3
  656c85:	cc                   	int3
  656c86:	cc                   	int3
  656c87:	cc                   	int3
  656c88:	cc                   	int3
  656c89:	cc                   	int3
  656c8a:	cc                   	int3
  656c8b:	cc                   	int3
  656c8c:	cc                   	int3
  656c8d:	cc                   	int3
  656c8e:	cc                   	int3
  656c8f:	cc                   	int3
