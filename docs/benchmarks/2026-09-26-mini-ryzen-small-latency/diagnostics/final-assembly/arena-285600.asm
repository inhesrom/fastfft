
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

0000000000285600 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  285600:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  285604:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  285609:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  28560e:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  285613:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  285618:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  28561d:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  285622:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  285627:	c5 f8 58 da          	vaddps %xmm2,%xmm0,%xmm3
  28562b:	c5 d8 58 e9          	vaddps %xmm1,%xmm4,%xmm5
  28562f:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  285633:	c5 d8 5c c9          	vsubps %xmm1,%xmm4,%xmm1
  285637:	c5 f8 28 15 a1 0b df 	vmovaps -0x20f45f(%rip),%xmm2        # 761e0 <__abi_tag+0x75ee4>
  28563e:	ff 
  28563f:	c5 f0 59 e2          	vmulps %xmm2,%xmm1,%xmm4
  285643:	c5 f8 28 35 a5 24 df 	vmovaps -0x20db5b(%rip),%xmm6        # 77af0 <__abi_tag+0x777f4>
  28564a:	ff 
  28564b:	c4 e2 79 b8 e6       	vfmadd231ps %xmm6,%xmm0,%xmm4
  285650:	c5 f0 59 ce          	vmulps %xmm6,%xmm1,%xmm1
  285654:	c4 e2 79 bc ca       	vfnmadd231ps %xmm2,%xmm0,%xmm1
  285659:	c5 e0 14 c4          	vunpcklps %xmm4,%xmm3,%xmm0
  28565d:	c5 e0 15 d4          	vunpckhps %xmm4,%xmm3,%xmm2
  285661:	c5 f9 c6 d8 03       	vshufpd $0x3,%xmm0,%xmm0,%xmm3
  285666:	c5 e9 c6 e2 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm4
  28566b:	c5 d0 14 f1          	vunpcklps %xmm1,%xmm5,%xmm6
  28566f:	c5 d0 15 c9          	vunpckhps %xmm1,%xmm5,%xmm1
  285673:	c5 c9 c6 ee 03       	vshufpd $0x3,%xmm6,%xmm6,%xmm5
  285678:	c5 f1 c6 f9 03       	vshufpd $0x3,%xmm1,%xmm1,%xmm7
  28567d:	c5 78 58 c2          	vaddps %xmm2,%xmm0,%xmm8
  285681:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  285685:	c5 e0 58 d4          	vaddps %xmm4,%xmm3,%xmm2
  285689:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  28568d:	c5 c8 58 e1          	vaddps %xmm1,%xmm6,%xmm4
  285691:	c5 c8 5c c9          	vsubps %xmm1,%xmm6,%xmm1
  285695:	c5 d0 58 f7          	vaddps %xmm7,%xmm5,%xmm6
  285699:	c5 d0 5c ef          	vsubps %xmm7,%xmm5,%xmm5
  28569d:	c5 b8 58 fa          	vaddps %xmm2,%xmm8,%xmm7
  2856a1:	c5 78 58 cd          	vaddps %xmm5,%xmm0,%xmm9
  2856a5:	c5 b8 5c d2          	vsubps %xmm2,%xmm8,%xmm2
  2856a9:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  2856ad:	c5 d8 58 ee          	vaddps %xmm6,%xmm4,%xmm5
  2856b1:	c5 d0 14 ef          	vunpcklps %xmm7,%xmm5,%xmm5
  2856b5:	c5 f0 5c fb          	vsubps %xmm3,%xmm1,%xmm7
  2856b9:	c4 c1 40 14 f9       	vunpcklps %xmm9,%xmm7,%xmm7
  2856be:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  2856c2:	c5 d8 14 d2          	vunpcklps %xmm2,%xmm4,%xmm2
  2856c6:	c5 f0 58 cb          	vaddps %xmm3,%xmm1,%xmm1
  2856ca:	c5 f0 14 c0          	vunpcklps %xmm0,%xmm1,%xmm0
  2856ce:	c5 f8 11 2e          	vmovups %xmm5,(%rsi)
  2856d2:	c5 f8 11 7e 10       	vmovups %xmm7,0x10(%rsi)
  2856d7:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  2856dc:	c5 f8 11 46 30       	vmovups %xmm0,0x30(%rsi)
  2856e1:	c3                   	ret
  2856e2:	cc                   	int3
  2856e3:	cc                   	int3
  2856e4:	cc                   	int3
  2856e5:	cc                   	int3
  2856e6:	cc                   	int3
  2856e7:	cc                   	int3
  2856e8:	cc                   	int3
  2856e9:	cc                   	int3
  2856ea:	cc                   	int3
  2856eb:	cc                   	int3
  2856ec:	cc                   	int3
  2856ed:	cc                   	int3
  2856ee:	cc                   	int3
  2856ef:	cc                   	int3
