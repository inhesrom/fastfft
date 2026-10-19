
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

00000000006570f0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  6570f0:	48 85 d2             	test   %rdx,%rdx
  6570f3:	0f 84 01 01 00 00    	je     6571fa <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x10a>
  6570f9:	31 c0                	xor    %eax,%eax
  6570fb:	c5 f8 28 05 9d a6 a0 	vmovaps -0x5f5963(%rip),%xmm0        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  657102:	ff 
  657103:	c5 f8 28 0d b5 ae a0 	vmovaps -0x5f514b(%rip),%xmm1        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  65710a:	ff 
  65710b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  657110:	c5 f8 10 14 07       	vmovups (%rdi,%rax,1),%xmm2
  657115:	c5 f8 10 5c 07 10    	vmovups 0x10(%rdi,%rax,1),%xmm3
  65711b:	c5 f8 10 64 07 20    	vmovups 0x20(%rdi,%rax,1),%xmm4
  657121:	c5 f8 10 6c 07 30    	vmovups 0x30(%rdi,%rax,1),%xmm5
  657127:	c5 e8 c6 f3 88       	vshufps $0x88,%xmm3,%xmm2,%xmm6
  65712c:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  657131:	c5 d8 c6 dd 88       	vshufps $0x88,%xmm5,%xmm4,%xmm3
  657136:	c5 d8 c6 e5 dd       	vshufps $0xdd,%xmm5,%xmm4,%xmm4
  65713b:	c5 e8 58 ec          	vaddps %xmm4,%xmm2,%xmm5
  65713f:	c5 c8 58 fb          	vaddps %xmm3,%xmm6,%xmm7
  657143:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  657147:	c5 c8 5c db          	vsubps %xmm3,%xmm6,%xmm3
  65714b:	c5 e0 59 e0          	vmulps %xmm0,%xmm3,%xmm4
  65714f:	c4 e2 69 b8 e1       	vfmadd231ps %xmm1,%xmm2,%xmm4
  657154:	c5 e0 59 d9          	vmulps %xmm1,%xmm3,%xmm3
  657158:	c4 e2 79 bc da       	vfnmadd231ps %xmm2,%xmm0,%xmm3
  65715d:	c5 d0 14 d4          	vunpcklps %xmm4,%xmm5,%xmm2
  657161:	c5 d0 15 e4          	vunpckhps %xmm4,%xmm5,%xmm4
  657165:	c5 e9 c6 ea 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm5
  65716a:	c5 d9 c6 f4 03       	vshufpd $0x3,%xmm4,%xmm4,%xmm6
  65716f:	c5 40 14 c3          	vunpcklps %xmm3,%xmm7,%xmm8
  657173:	c5 c0 15 db          	vunpckhps %xmm3,%xmm7,%xmm3
  657177:	c4 c1 39 c6 f8 03    	vshufpd $0x3,%xmm8,%xmm8,%xmm7
  65717d:	c5 61 c6 cb 03       	vshufpd $0x3,%xmm3,%xmm3,%xmm9
  657182:	c5 68 58 d4          	vaddps %xmm4,%xmm2,%xmm10
  657186:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  65718a:	c5 d0 58 e6          	vaddps %xmm6,%xmm5,%xmm4
  65718e:	c5 d0 5c ee          	vsubps %xmm6,%xmm5,%xmm5
  657192:	c5 b8 58 f3          	vaddps %xmm3,%xmm8,%xmm6
  657196:	c5 b8 5c db          	vsubps %xmm3,%xmm8,%xmm3
  65719a:	c5 30 58 c7          	vaddps %xmm7,%xmm9,%xmm8
  65719e:	c4 c1 40 5c f9       	vsubps %xmm9,%xmm7,%xmm7
  6571a3:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  6571a7:	c5 68 58 df          	vaddps %xmm7,%xmm2,%xmm11
  6571ab:	c5 a8 5c e4          	vsubps %xmm4,%xmm10,%xmm4
  6571af:	c5 e8 5c d7          	vsubps %xmm7,%xmm2,%xmm2
  6571b3:	c5 b8 58 fe          	vaddps %xmm6,%xmm8,%xmm7
  6571b7:	c4 c1 40 14 f9       	vunpcklps %xmm9,%xmm7,%xmm7
  6571bc:	c5 60 5c cd          	vsubps %xmm5,%xmm3,%xmm9
  6571c0:	c4 41 30 14 cb       	vunpcklps %xmm11,%xmm9,%xmm9
  6571c5:	c4 c1 48 5c f0       	vsubps %xmm8,%xmm6,%xmm6
  6571ca:	c5 c8 14 e4          	vunpcklps %xmm4,%xmm6,%xmm4
  6571ce:	c5 e0 58 dd          	vaddps %xmm5,%xmm3,%xmm3
  6571d2:	c5 e0 14 d2          	vunpcklps %xmm2,%xmm3,%xmm2
  6571d6:	c5 f8 11 3c 06       	vmovups %xmm7,(%rsi,%rax,1)
  6571db:	c5 78 11 4c 06 10    	vmovups %xmm9,0x10(%rsi,%rax,1)
  6571e1:	c5 f8 11 64 06 20    	vmovups %xmm4,0x20(%rsi,%rax,1)
  6571e7:	c5 f8 11 54 06 30    	vmovups %xmm2,0x30(%rsi,%rax,1)
  6571ed:	48 83 c0 40          	add    $0x40,%rax
  6571f1:	48 ff ca             	dec    %rdx
  6571f4:	0f 85 16 ff ff ff    	jne    657110 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x20>
  6571fa:	c3                   	ret
  6571fb:	cc                   	int3
  6571fc:	cc                   	int3
  6571fd:	cc                   	int3
  6571fe:	cc                   	int3
  6571ff:	cc                   	int3
