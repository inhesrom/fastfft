
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

0000000000286550 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  286550:	48 c1 e2 06          	shl    $0x6,%rdx
  286554:	31 c0                	xor    %eax,%eax
  286556:	c5 f8 28 05 82 fc de 	vmovaps -0x21037e(%rip),%xmm0        # 761e0 <__abi_tag+0x75ee4>
  28655d:	ff 
  28655e:	c5 f8 28 0d 8a 15 df 	vmovaps -0x20ea76(%rip),%xmm1        # 77af0 <__abi_tag+0x777f4>
  286565:	ff 
  286566:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  28656d:	00 00 00 
  286570:	c5 f8 10 14 07       	vmovups (%rdi,%rax,1),%xmm2
  286575:	c5 f8 10 5c 07 10    	vmovups 0x10(%rdi,%rax,1),%xmm3
  28657b:	c5 f8 10 64 07 20    	vmovups 0x20(%rdi,%rax,1),%xmm4
  286581:	c5 f8 10 6c 07 30    	vmovups 0x30(%rdi,%rax,1),%xmm5
  286587:	c5 e8 c6 f3 88       	vshufps $0x88,%xmm3,%xmm2,%xmm6
  28658c:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  286591:	c5 d8 c6 dd 88       	vshufps $0x88,%xmm5,%xmm4,%xmm3
  286596:	c5 d8 c6 e5 dd       	vshufps $0xdd,%xmm5,%xmm4,%xmm4
  28659b:	c5 e8 58 ec          	vaddps %xmm4,%xmm2,%xmm5
  28659f:	c5 c8 58 fb          	vaddps %xmm3,%xmm6,%xmm7
  2865a3:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  2865a7:	c5 c8 5c db          	vsubps %xmm3,%xmm6,%xmm3
  2865ab:	c5 e0 59 e0          	vmulps %xmm0,%xmm3,%xmm4
  2865af:	c4 e2 69 b8 e1       	vfmadd231ps %xmm1,%xmm2,%xmm4
  2865b4:	c5 e0 59 d9          	vmulps %xmm1,%xmm3,%xmm3
  2865b8:	c4 e2 79 bc da       	vfnmadd231ps %xmm2,%xmm0,%xmm3
  2865bd:	c5 d0 14 d4          	vunpcklps %xmm4,%xmm5,%xmm2
  2865c1:	c5 d0 15 e4          	vunpckhps %xmm4,%xmm5,%xmm4
  2865c5:	c5 e9 c6 ea 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm5
  2865ca:	c5 d9 c6 f4 03       	vshufpd $0x3,%xmm4,%xmm4,%xmm6
  2865cf:	c5 40 14 c3          	vunpcklps %xmm3,%xmm7,%xmm8
  2865d3:	c5 c0 15 db          	vunpckhps %xmm3,%xmm7,%xmm3
  2865d7:	c4 c1 39 c6 f8 03    	vshufpd $0x3,%xmm8,%xmm8,%xmm7
  2865dd:	c5 61 c6 cb 03       	vshufpd $0x3,%xmm3,%xmm3,%xmm9
  2865e2:	c5 68 58 d4          	vaddps %xmm4,%xmm2,%xmm10
  2865e6:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  2865ea:	c5 d0 58 e6          	vaddps %xmm6,%xmm5,%xmm4
  2865ee:	c5 d0 5c ee          	vsubps %xmm6,%xmm5,%xmm5
  2865f2:	c5 b8 58 f3          	vaddps %xmm3,%xmm8,%xmm6
  2865f6:	c5 b8 5c db          	vsubps %xmm3,%xmm8,%xmm3
  2865fa:	c5 30 58 c7          	vaddps %xmm7,%xmm9,%xmm8
  2865fe:	c4 c1 40 5c f9       	vsubps %xmm9,%xmm7,%xmm7
  286603:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  286607:	c5 68 58 df          	vaddps %xmm7,%xmm2,%xmm11
  28660b:	c5 a8 5c e4          	vsubps %xmm4,%xmm10,%xmm4
  28660f:	c5 e8 5c d7          	vsubps %xmm7,%xmm2,%xmm2
  286613:	c5 b8 58 fe          	vaddps %xmm6,%xmm8,%xmm7
  286617:	c4 c1 40 14 f9       	vunpcklps %xmm9,%xmm7,%xmm7
  28661c:	c5 60 5c cd          	vsubps %xmm5,%xmm3,%xmm9
  286620:	c4 41 30 14 cb       	vunpcklps %xmm11,%xmm9,%xmm9
  286625:	c4 c1 48 5c f0       	vsubps %xmm8,%xmm6,%xmm6
  28662a:	c5 c8 14 e4          	vunpcklps %xmm4,%xmm6,%xmm4
  28662e:	c5 e0 58 dd          	vaddps %xmm5,%xmm3,%xmm3
  286632:	c5 e0 14 d2          	vunpcklps %xmm2,%xmm3,%xmm2
  286636:	c5 f8 11 3c 06       	vmovups %xmm7,(%rsi,%rax,1)
  28663b:	c5 78 11 4c 06 10    	vmovups %xmm9,0x10(%rsi,%rax,1)
  286641:	c5 f8 11 64 06 20    	vmovups %xmm4,0x20(%rsi,%rax,1)
  286647:	c5 f8 11 54 06 30    	vmovups %xmm2,0x30(%rsi,%rax,1)
  28664d:	48 83 c0 40          	add    $0x40,%rax
  286651:	48 39 c2             	cmp    %rax,%rdx
  286654:	0f 85 16 ff ff ff    	jne    286570 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x20>
  28665a:	c3                   	ret
  28665b:	cc                   	int3
  28665c:	cc                   	int3
  28665d:	cc                   	int3
  28665e:	cc                   	int3
  28665f:	cc                   	int3
