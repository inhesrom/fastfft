
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000657b70 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  657b70:	48 85 d2             	test   %rdx,%rdx
  657b73:	0f 84 00 01 00 00    	je     657c79 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x109>
  657b79:	31 c0                	xor    %eax,%eax
  657b7b:	c5 f8 28 05 1d 9c a0 	vmovaps -0x5f63e3(%rip),%xmm0        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  657b82:	ff 
  657b83:	c5 f8 28 0d 35 a4 a0 	vmovaps -0x5f5bcb(%rip),%xmm1        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  657b8a:	ff 
  657b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  657b90:	c5 f8 10 14 07       	vmovups (%rdi,%rax,1),%xmm2
  657b95:	c5 f8 10 5c 07 10    	vmovups 0x10(%rdi,%rax,1),%xmm3
  657b9b:	c5 f8 10 64 07 20    	vmovups 0x20(%rdi,%rax,1),%xmm4
  657ba1:	c5 f8 10 6c 07 30    	vmovups 0x30(%rdi,%rax,1),%xmm5
  657ba7:	c5 e8 c6 f3 88       	vshufps $0x88,%xmm3,%xmm2,%xmm6
  657bac:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  657bb1:	c5 d8 c6 dd 88       	vshufps $0x88,%xmm5,%xmm4,%xmm3
  657bb6:	c5 d8 c6 e5 dd       	vshufps $0xdd,%xmm5,%xmm4,%xmm4
  657bbb:	c5 c8 58 eb          	vaddps %xmm3,%xmm6,%xmm5
  657bbf:	c5 e8 58 fc          	vaddps %xmm4,%xmm2,%xmm7
  657bc3:	c5 c8 5c db          	vsubps %xmm3,%xmm6,%xmm3
  657bc7:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  657bcb:	c5 e8 59 e0          	vmulps %xmm0,%xmm2,%xmm4
  657bcf:	c4 e2 61 b8 e1       	vfmadd231ps %xmm1,%xmm3,%xmm4
  657bd4:	c5 e8 59 d1          	vmulps %xmm1,%xmm2,%xmm2
  657bd8:	c4 e2 79 bc d3       	vfnmadd231ps %xmm3,%xmm0,%xmm2
  657bdd:	c5 d0 14 dc          	vunpcklps %xmm4,%xmm5,%xmm3
  657be1:	c5 d0 15 e4          	vunpckhps %xmm4,%xmm5,%xmm4
  657be5:	c5 e1 c6 eb 03       	vshufpd $0x3,%xmm3,%xmm3,%xmm5
  657bea:	c5 d9 c6 f4 03       	vshufpd $0x3,%xmm4,%xmm4,%xmm6
  657bef:	c5 40 14 c2          	vunpcklps %xmm2,%xmm7,%xmm8
  657bf3:	c5 c0 15 d2          	vunpckhps %xmm2,%xmm7,%xmm2
  657bf7:	c4 c1 39 c6 f8 03    	vshufpd $0x3,%xmm8,%xmm8,%xmm7
  657bfd:	c5 69 c6 ca 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm9
  657c02:	c5 60 58 d4          	vaddps %xmm4,%xmm3,%xmm10
  657c06:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  657c0a:	c5 d0 58 e6          	vaddps %xmm6,%xmm5,%xmm4
  657c0e:	c5 d0 5c ee          	vsubps %xmm6,%xmm5,%xmm5
  657c12:	c5 b8 58 f2          	vaddps %xmm2,%xmm8,%xmm6
  657c16:	c5 b8 5c d2          	vsubps %xmm2,%xmm8,%xmm2
  657c1a:	c5 30 58 c7          	vaddps %xmm7,%xmm9,%xmm8
  657c1e:	c4 c1 40 5c f9       	vsubps %xmm9,%xmm7,%xmm7
  657c23:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  657c27:	c5 60 58 df          	vaddps %xmm7,%xmm3,%xmm11
  657c2b:	c5 a8 5c e4          	vsubps %xmm4,%xmm10,%xmm4
  657c2f:	c5 e0 5c df          	vsubps %xmm7,%xmm3,%xmm3
  657c33:	c5 b8 58 fe          	vaddps %xmm6,%xmm8,%xmm7
  657c37:	c5 b0 14 ff          	vunpcklps %xmm7,%xmm9,%xmm7
  657c3b:	c5 68 5c cd          	vsubps %xmm5,%xmm2,%xmm9
  657c3f:	c4 41 20 14 c9       	vunpcklps %xmm9,%xmm11,%xmm9
  657c44:	c4 c1 48 5c f0       	vsubps %xmm8,%xmm6,%xmm6
  657c49:	c5 d8 14 e6          	vunpcklps %xmm6,%xmm4,%xmm4
  657c4d:	c5 e8 58 d5          	vaddps %xmm5,%xmm2,%xmm2
  657c51:	c5 e0 14 d2          	vunpcklps %xmm2,%xmm3,%xmm2
  657c55:	c5 f8 11 3c 06       	vmovups %xmm7,(%rsi,%rax,1)
  657c5a:	c5 78 11 4c 06 10    	vmovups %xmm9,0x10(%rsi,%rax,1)
  657c60:	c5 f8 11 64 06 20    	vmovups %xmm4,0x20(%rsi,%rax,1)
  657c66:	c5 f8 11 54 06 30    	vmovups %xmm2,0x30(%rsi,%rax,1)
  657c6c:	48 83 c0 40          	add    $0x40,%rax
  657c70:	48 ff ca             	dec    %rdx
  657c73:	0f 85 17 ff ff ff    	jne    657b90 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x20>
  657c79:	c3                   	ret
  657c7a:	cc                   	int3
  657c7b:	cc                   	int3
  657c7c:	cc                   	int3
  657c7d:	cc                   	int3
  657c7e:	cc                   	int3
  657c7f:	cc                   	int3
