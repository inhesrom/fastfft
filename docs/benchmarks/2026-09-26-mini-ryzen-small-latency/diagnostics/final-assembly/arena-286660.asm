
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

0000000000286660 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  286660:	48 c1 e2 06          	shl    $0x6,%rdx
  286664:	31 c0                	xor    %eax,%eax
  286666:	c5 f8 28 05 72 fb de 	vmovaps -0x21048e(%rip),%xmm0        # 761e0 <__abi_tag+0x75ee4>
  28666d:	ff 
  28666e:	c5 f8 28 0d 7a 14 df 	vmovaps -0x20eb86(%rip),%xmm1        # 77af0 <__abi_tag+0x777f4>
  286675:	ff 
  286676:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  28667d:	00 00 00 
  286680:	c5 f8 10 14 07       	vmovups (%rdi,%rax,1),%xmm2
  286685:	c5 f8 10 5c 07 10    	vmovups 0x10(%rdi,%rax,1),%xmm3
  28668b:	c5 f8 10 64 07 20    	vmovups 0x20(%rdi,%rax,1),%xmm4
  286691:	c5 f8 10 6c 07 30    	vmovups 0x30(%rdi,%rax,1),%xmm5
  286697:	c5 e8 c6 f3 88       	vshufps $0x88,%xmm3,%xmm2,%xmm6
  28669c:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  2866a1:	c5 d8 c6 dd 88       	vshufps $0x88,%xmm5,%xmm4,%xmm3
  2866a6:	c5 d8 c6 e5 dd       	vshufps $0xdd,%xmm5,%xmm4,%xmm4
  2866ab:	c5 c8 58 eb          	vaddps %xmm3,%xmm6,%xmm5
  2866af:	c5 e8 58 fc          	vaddps %xmm4,%xmm2,%xmm7
  2866b3:	c5 c8 5c db          	vsubps %xmm3,%xmm6,%xmm3
  2866b7:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  2866bb:	c5 e8 59 e0          	vmulps %xmm0,%xmm2,%xmm4
  2866bf:	c4 e2 61 b8 e1       	vfmadd231ps %xmm1,%xmm3,%xmm4
  2866c4:	c5 e8 59 d1          	vmulps %xmm1,%xmm2,%xmm2
  2866c8:	c4 e2 79 bc d3       	vfnmadd231ps %xmm3,%xmm0,%xmm2
  2866cd:	c5 d0 14 dc          	vunpcklps %xmm4,%xmm5,%xmm3
  2866d1:	c5 d0 15 e4          	vunpckhps %xmm4,%xmm5,%xmm4
  2866d5:	c5 e1 c6 eb 03       	vshufpd $0x3,%xmm3,%xmm3,%xmm5
  2866da:	c5 d9 c6 f4 03       	vshufpd $0x3,%xmm4,%xmm4,%xmm6
  2866df:	c5 40 14 c2          	vunpcklps %xmm2,%xmm7,%xmm8
  2866e3:	c5 c0 15 d2          	vunpckhps %xmm2,%xmm7,%xmm2
  2866e7:	c4 c1 39 c6 f8 03    	vshufpd $0x3,%xmm8,%xmm8,%xmm7
  2866ed:	c5 69 c6 ca 03       	vshufpd $0x3,%xmm2,%xmm2,%xmm9
  2866f2:	c5 60 58 d4          	vaddps %xmm4,%xmm3,%xmm10
  2866f6:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  2866fa:	c5 d0 58 e6          	vaddps %xmm6,%xmm5,%xmm4
  2866fe:	c5 d0 5c ee          	vsubps %xmm6,%xmm5,%xmm5
  286702:	c5 b8 58 f2          	vaddps %xmm2,%xmm8,%xmm6
  286706:	c5 b8 5c d2          	vsubps %xmm2,%xmm8,%xmm2
  28670a:	c5 30 58 c7          	vaddps %xmm7,%xmm9,%xmm8
  28670e:	c4 c1 40 5c f9       	vsubps %xmm9,%xmm7,%xmm7
  286713:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  286717:	c5 60 58 df          	vaddps %xmm7,%xmm3,%xmm11
  28671b:	c5 a8 5c e4          	vsubps %xmm4,%xmm10,%xmm4
  28671f:	c5 e0 5c df          	vsubps %xmm7,%xmm3,%xmm3
  286723:	c5 b8 58 fe          	vaddps %xmm6,%xmm8,%xmm7
  286727:	c5 b0 14 ff          	vunpcklps %xmm7,%xmm9,%xmm7
  28672b:	c5 68 5c cd          	vsubps %xmm5,%xmm2,%xmm9
  28672f:	c4 41 20 14 c9       	vunpcklps %xmm9,%xmm11,%xmm9
  286734:	c4 c1 48 5c f0       	vsubps %xmm8,%xmm6,%xmm6
  286739:	c5 d8 14 e6          	vunpcklps %xmm6,%xmm4,%xmm4
  28673d:	c5 e8 58 d5          	vaddps %xmm5,%xmm2,%xmm2
  286741:	c5 e0 14 d2          	vunpcklps %xmm2,%xmm3,%xmm2
  286745:	c5 f8 11 3c 06       	vmovups %xmm7,(%rsi,%rax,1)
  28674a:	c5 78 11 4c 06 10    	vmovups %xmm9,0x10(%rsi,%rax,1)
  286750:	c5 f8 11 64 06 20    	vmovups %xmm4,0x20(%rsi,%rax,1)
  286756:	c5 f8 11 54 06 30    	vmovups %xmm2,0x30(%rsi,%rax,1)
  28675c:	48 83 c0 40          	add    $0x40,%rax
  286760:	48 39 c2             	cmp    %rax,%rdx
  286763:	0f 85 17 ff ff ff    	jne    286680 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x20>
  286769:	c3                   	ret
  28676a:	cc                   	int3
  28676b:	cc                   	int3
  28676c:	cc                   	int3
  28676d:	cc                   	int3
  28676e:	cc                   	int3
  28676f:	cc                   	int3
