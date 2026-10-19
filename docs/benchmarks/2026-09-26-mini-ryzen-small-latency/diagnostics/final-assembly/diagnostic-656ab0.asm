
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000656ab0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  656ab0:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  656ab4:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  656ab9:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  656abe:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  656ac3:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  656ac8:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  656acd:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  656ad2:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  656ad7:	c5 f8 58 da          	vaddps %xmm2,%xmm0,%xmm3
  656adb:	c5 d8 58 e9          	vaddps %xmm1,%xmm4,%xmm5
  656adf:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  656ae3:	c5 d8 5c c9          	vsubps %xmm1,%xmm4,%xmm1
  656ae7:	c5 f8 28 15 b1 ac a0 	vmovaps -0x5f534f(%rip),%xmm2        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  656aee:	ff 
  656aef:	c5 f0 59 e2          	vmulps %xmm2,%xmm1,%xmm4
  656af3:	c5 f8 28 35 c5 b4 a0 	vmovaps -0x5f4b3b(%rip),%xmm6        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  656afa:	ff 
  656afb:	c4 e2 79 b8 e6       	vfmadd231ps %xmm6,%xmm0,%xmm4
  656b00:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
  656b04:	c4 e2 79 bc ca       	vfnmadd231ps %xmm2,%xmm0,%xmm1
  656b09:	c5 e0 14 c4          	vunpcklps %xmm4,%xmm3,%xmm0
  656b0d:	c5 e0 15 d4          	vunpckhps %xmm4,%xmm3,%xmm2
  656b11:	c5 f9 c6 d8 03       	vshufpd $0x3,%xmm0,%xmm0,%xmm3
  656b16:	c5 e9 c6 e2 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm4
  656b1b:	c5 d0 14 f1          	vunpcklps %xmm1,%xmm5,%xmm6
  656b1f:	c5 d0 15 c9          	vunpckhps %xmm1,%xmm5,%xmm1
  656b23:	c5 c9 c6 ee 03       	vshufpd $0x3,%xmm6,%xmm6,%xmm5
  656b28:	c5 f1 c6 f9 03       	vshufpd $0x3,%xmm1,%xmm1,%xmm7
  656b2d:	c5 78 58 c2          	vaddps %xmm2,%xmm0,%xmm8
  656b31:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  656b35:	c5 e0 58 d4          	vaddps %xmm4,%xmm3,%xmm2
  656b39:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  656b3d:	c5 c8 58 e1          	vaddps %xmm1,%xmm6,%xmm4
  656b41:	c5 c8 5c c9          	vsubps %xmm1,%xmm6,%xmm1
  656b45:	c5 d0 58 f7          	vaddps %xmm7,%xmm5,%xmm6
  656b49:	c5 d0 5c ef          	vsubps %xmm7,%xmm5,%xmm5
  656b4d:	c5 b8 58 fa          	vaddps %xmm2,%xmm8,%xmm7
  656b51:	c5 78 58 cd          	vaddps %xmm5,%xmm0,%xmm9
  656b55:	c5 b8 5c d2          	vsubps %xmm2,%xmm8,%xmm2
  656b59:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  656b5d:	c5 d8 58 ee          	vaddps %xmm6,%xmm4,%xmm5
  656b61:	c5 d0 14 ef          	vunpcklps %xmm7,%xmm5,%xmm5
  656b65:	c5 f0 5c fb          	vsubps %xmm3,%xmm1,%xmm7
  656b69:	c4 c1 40 14 f9       	vunpcklps %xmm9,%xmm7,%xmm7
  656b6e:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  656b72:	c5 d8 14 d2          	vunpcklps %xmm2,%xmm4,%xmm2
  656b76:	c5 f0 58 cb          	vaddps %xmm3,%xmm1,%xmm1
  656b7a:	c5 f0 14 c0          	vunpcklps %xmm0,%xmm1,%xmm0
  656b7e:	c5 f8 11 2e          	vmovups %xmm5,(%rsi)
  656b82:	c5 f8 11 7e 10       	vmovups %xmm7,0x10(%rsi)
  656b87:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  656b8c:	c5 f8 11 46 30       	vmovups %xmm0,0x30(%rsi)
  656b91:	c3                   	ret
  656b92:	cc                   	int3
  656b93:	cc                   	int3
  656b94:	cc                   	int3
  656b95:	cc                   	int3
  656b96:	cc                   	int3
  656b97:	cc                   	int3
  656b98:	cc                   	int3
  656b99:	cc                   	int3
  656b9a:	cc                   	int3
  656b9b:	cc                   	int3
  656b9c:	cc                   	int3
  656b9d:	cc                   	int3
  656b9e:	cc                   	int3
  656b9f:	cc                   	int3
