
target/small-latency/n32-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000060b560 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::one>:
  60b560:	48 83 ec 48          	sub    $0x48,%rsp
  60b564:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  60b568:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  60b56d:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  60b572:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  60b577:	c5 fc 10 a7 80 00 00 	vmovups 0x80(%rdi),%ymm4
  60b57e:	00 
  60b57f:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  60b586:	00 
  60b587:	c5 fc 10 b7 c0 00 00 	vmovups 0xc0(%rdi),%ymm6
  60b58e:	00 
  60b58f:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  60b596:	00 
  60b597:	c5 7c c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm8
  60b59c:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  60b5a2:	c5 5c c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm9
  60b5a7:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  60b5ad:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  60b5b2:	c4 41 3c 5c c9       	vsubps %ymm9,%ymm8,%ymm9
  60b5b7:	c5 6c c6 c3 88       	vshufps $0x88,%ymm3,%ymm2,%ymm8
  60b5bc:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  60b5c2:	c5 4c c6 df 88       	vshufps $0x88,%ymm7,%ymm6,%ymm11
  60b5c7:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  60b5cd:	c4 41 3c 58 e3       	vaddps %ymm11,%ymm8,%ymm12
  60b5d2:	c4 41 3c 5c eb       	vsubps %ymm11,%ymm8,%ymm13
  60b5d7:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  60b5dc:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  60b5e2:	c5 dc c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm1
  60b5e7:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  60b5ed:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  60b5f1:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  60b5f5:	c5 ec c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm1
  60b5fa:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  60b600:	c5 cc c6 d7 dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm2
  60b605:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  60b60b:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  60b60f:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  60b613:	c4 c1 2c 58 ec       	vaddps %ymm12,%ymm10,%ymm5
  60b618:	c5 b4 58 d1          	vaddps %ymm1,%ymm9,%ymm2
  60b61c:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  60b621:	c5 34 5c c9          	vsubps %ymm1,%ymm9,%ymm9
  60b625:	c5 5c 58 d3          	vaddps %ymm3,%ymm4,%ymm10
  60b629:	c4 41 7c 5c dd       	vsubps %ymm13,%ymm0,%ymm11
  60b62e:	c5 dc 5c fb          	vsubps %ymm3,%ymm4,%ymm7
  60b632:	c5 14 58 c0          	vaddps %ymm0,%ymm13,%ymm8
  60b636:	c5 d0 14 ca          	vunpcklps %xmm2,%xmm5,%xmm1
  60b63a:	c5 7c 28 e5          	vmovaps %ymm5,%ymm12
  60b63e:	c5 fc 28 e2          	vmovaps %ymm2,%ymm4
  60b642:	c5 f8 29 4c 24 90    	vmovaps %xmm1,-0x70(%rsp)
  60b648:	c4 c1 48 14 c1       	vunpcklps %xmm9,%xmm6,%xmm0
  60b64d:	c5 7c 28 ee          	vmovaps %ymm6,%ymm13
  60b651:	c5 f8 29 44 24 a0    	vmovaps %xmm0,-0x60(%rsp)
  60b657:	c5 f1 15 c0          	vunpckhpd %xmm0,%xmm1,%xmm0
  60b65b:	c4 c1 28 14 d3       	vunpcklps %xmm11,%xmm10,%xmm2
  60b660:	c5 f8 29 54 24 f0    	vmovaps %xmm2,-0x10(%rsp)
  60b666:	c4 c1 40 14 c8       	vunpcklps %xmm8,%xmm7,%xmm1
  60b66b:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  60b66f:	c5 7c 11 44 24 20    	vmovups %ymm8,0x20(%rsp)
  60b675:	c5 f8 29 0c 24       	vmovaps %xmm1,(%rsp)
  60b67a:	c5 e9 15 c9          	vunpckhpd %xmm1,%xmm2,%xmm1
  60b67e:	c5 78 28 35 2a 60 a5 	vmovaps -0x5a9fd6(%rip),%xmm14        # 616b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13e0>
  60b685:	ff 
  60b686:	c5 88 59 d1          	vmulps %xmm1,%xmm14,%xmm2
  60b68a:	c5 f8 28 1d 4e 55 a5 	vmovaps -0x5aaab2(%rip),%xmm3        # 60be0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x910>
  60b691:	ff 
  60b692:	c4 e2 79 b8 d3       	vfmadd231ps %xmm3,%xmm0,%xmm2
  60b697:	c5 f8 29 54 24 10    	vmovaps %xmm2,0x10(%rsp)
  60b69d:	c5 f0 59 cb          	vmulps %xmm3,%xmm1,%xmm1
  60b6a1:	c4 c2 79 bc ce       	vfnmadd231ps %xmm14,%xmm0,%xmm1
  60b6a6:	c5 f8 29 4c 24 80    	vmovaps %xmm1,-0x80(%rsp)
  60b6ac:	c5 18 15 f4          	vunpckhps %xmm4,%xmm12,%xmm14
  60b6b0:	c5 7c 28 c4          	vmovaps %ymm4,%ymm8
  60b6b4:	c4 41 10 15 f9       	vunpckhps %xmm9,%xmm13,%xmm15
  60b6b9:	c4 c1 08 16 d7       	vmovlhps %xmm15,%xmm14,%xmm2
  60b6be:	c4 c1 28 15 e3       	vunpckhps %xmm11,%xmm10,%xmm4
  60b6c3:	c5 c0 15 ce          	vunpckhps %xmm6,%xmm7,%xmm1
  60b6c7:	c5 d8 16 d9          	vmovlhps %xmm1,%xmm4,%xmm3
  60b6cb:	c5 f8 28 35 dd 4e a5 	vmovaps -0x5ab123(%rip),%xmm6        # 605b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2e0>
  60b6d2:	ff 
  60b6d3:	c5 e0 59 c6          	vmulps %xmm6,%xmm3,%xmm0
  60b6d7:	c5 f8 28 2d 61 5f a5 	vmovaps -0x5aa09f(%rip),%xmm5        # 61640 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1370>
  60b6de:	ff 
  60b6df:	c4 e2 69 b8 c5       	vfmadd231ps %xmm5,%xmm2,%xmm0
  60b6e4:	c5 f8 29 44 24 b0    	vmovaps %xmm0,-0x50(%rsp)
  60b6ea:	c5 e0 59 c5          	vmulps %xmm5,%xmm3,%xmm0
  60b6ee:	c4 e2 69 bc c6       	vfnmadd231ps %xmm6,%xmm2,%xmm0
  60b6f3:	c5 f8 29 44 24 c0    	vmovaps %xmm0,-0x40(%rsp)
  60b6f9:	c4 c1 09 15 c7       	vunpckhpd %xmm15,%xmm14,%xmm0
  60b6fe:	c5 d9 15 c9          	vunpckhpd %xmm1,%xmm4,%xmm1
  60b702:	c5 f8 28 15 b6 5f a5 	vmovaps -0x5aa04a(%rip),%xmm2        # 616c0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13f0>
  60b709:	ff 
  60b70a:	c5 f0 59 da          	vmulps %xmm2,%xmm1,%xmm3
  60b70e:	c5 f8 28 25 3a 51 a5 	vmovaps -0x5aaec6(%rip),%xmm4        # 60850 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x580>
  60b715:	ff 
  60b716:	c4 e2 79 b8 dc       	vfmadd231ps %xmm4,%xmm0,%xmm3
  60b71b:	c5 f8 29 5c 24 d0    	vmovaps %xmm3,-0x30(%rsp)
  60b721:	c5 f0 59 cc          	vmulps %xmm4,%xmm1,%xmm1
  60b725:	c4 e2 79 bc ca       	vfnmadd231ps %xmm2,%xmm0,%xmm1
  60b72a:	c5 f8 29 4c 24 e0    	vmovaps %xmm1,-0x20(%rsp)
  60b730:	c4 43 7d 19 e7 01    	vextractf128 $0x1,%ymm12,%xmm15
  60b736:	c4 43 7d 19 c4 01    	vextractf128 $0x1,%ymm8,%xmm12
  60b73c:	c4 43 7d 19 ed 01    	vextractf128 $0x1,%ymm13,%xmm13
  60b742:	c4 63 7d 19 cd 01    	vextractf128 $0x1,%ymm9,%xmm5
  60b748:	c4 43 7d 19 d2 01    	vextractf128 $0x1,%ymm10,%xmm10
  60b74e:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
  60b754:	c4 e3 7d 19 fc 01    	vextractf128 $0x1,%ymm7,%xmm4
  60b75a:	c5 fc 10 44 24 20    	vmovups 0x20(%rsp),%ymm0
  60b760:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  60b766:	c4 c1 00 14 f4       	vunpcklps %xmm12,%xmm15,%xmm6
  60b76b:	c5 90 14 fd          	vunpcklps %xmm5,%xmm13,%xmm7
  60b76f:	c5 c8 16 c7          	vmovlhps %xmm7,%xmm6,%xmm0
  60b773:	c4 c1 28 14 d3       	vunpcklps %xmm11,%xmm10,%xmm2
  60b778:	c5 d8 14 cb          	vunpcklps %xmm3,%xmm4,%xmm1
  60b77c:	c5 68 16 c9          	vmovlhps %xmm1,%xmm2,%xmm9
  60b780:	c5 30 59 05 d8 5d a5 	vmulps -0x5aa228(%rip),%xmm9,%xmm8        # 61560 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1290>
  60b787:	ff 
  60b788:	c5 78 28 35 f0 65 a5 	vmovaps -0x5a9a10(%rip),%xmm14        # 61d80 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1ab0>
  60b78f:	ff 
  60b790:	c4 42 79 b8 c6       	vfmadd231ps %xmm14,%xmm0,%xmm8
  60b795:	c4 41 30 59 ce       	vmulps %xmm14,%xmm9,%xmm9
  60b79a:	c4 62 79 bc 0d bd 5d 	vfnmadd231ps -0x5aa243(%rip),%xmm0,%xmm9        # 61560 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1290>
  60b7a1:	a5 ff 
  60b7a3:	c5 c9 15 c7          	vunpckhpd %xmm7,%xmm6,%xmm0
  60b7a7:	c5 e9 15 c9          	vunpckhpd %xmm1,%xmm2,%xmm1
  60b7ab:	c5 f8 28 15 ad 6e a5 	vmovaps -0x5a9153(%rip),%xmm2        # 62660 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2390>
  60b7b2:	ff 
  60b7b3:	c5 f0 59 f2          	vmulps %xmm2,%xmm1,%xmm6
  60b7b7:	c5 f8 28 3d 31 64 a5 	vmovaps -0x5a9bcf(%rip),%xmm7        # 61bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1920>
  60b7be:	ff 
  60b7bf:	c4 e2 79 b8 f7       	vfmadd231ps %xmm7,%xmm0,%xmm6
  60b7c4:	c5 f0 59 ff          	vmulps %xmm7,%xmm1,%xmm7
  60b7c8:	c4 e2 79 bc fa       	vfnmadd231ps %xmm2,%xmm0,%xmm7
  60b7cd:	c4 c1 00 15 c4       	vunpckhps %xmm12,%xmm15,%xmm0
  60b7d2:	c5 90 15 cd          	vunpckhps %xmm5,%xmm13,%xmm1
  60b7d6:	c4 c1 28 15 d3       	vunpckhps %xmm11,%xmm10,%xmm2
  60b7db:	c5 d8 15 db          	vunpckhps %xmm3,%xmm4,%xmm3
  60b7df:	c5 f8 16 e1          	vmovlhps %xmm1,%xmm0,%xmm4
  60b7e3:	c5 e8 16 eb          	vmovlhps %xmm3,%xmm2,%xmm5
  60b7e7:	c5 78 28 15 01 54 a5 	vmovaps -0x5aabff(%rip),%xmm10        # 60bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x920>
  60b7ee:	ff 
  60b7ef:	c5 28 59 dd          	vmulps %xmm5,%xmm10,%xmm11
  60b7f3:	c5 78 28 25 95 4b a5 	vmovaps -0x5ab46b(%rip),%xmm12        # 60390 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0xc0>
  60b7fa:	ff 
  60b7fb:	c4 42 59 b8 dc       	vfmadd231ps %xmm12,%xmm4,%xmm11
  60b800:	c5 98 59 ed          	vmulps %xmm5,%xmm12,%xmm5
  60b804:	c4 c2 59 bc ea       	vfnmadd231ps %xmm10,%xmm4,%xmm5
  60b809:	c5 f9 15 c1          	vunpckhpd %xmm1,%xmm0,%xmm0
  60b80d:	c5 e9 15 cb          	vunpckhpd %xmm3,%xmm2,%xmm1
  60b811:	c5 f8 28 15 e7 6f a5 	vmovaps -0x5a9019(%rip),%xmm2        # 62800 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2530>
  60b818:	ff 
  60b819:	c5 f0 59 da          	vmulps %xmm2,%xmm1,%xmm3
  60b81d:	c5 f8 28 25 9b 73 a5 	vmovaps -0x5a8c65(%rip),%xmm4        # 62bc0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x28f0>
  60b824:	ff 
  60b825:	c4 e2 79 b8 dc       	vfmadd231ps %xmm4,%xmm0,%xmm3
  60b82a:	c5 70 59 e4          	vmulps %xmm4,%xmm1,%xmm12
  60b82e:	c4 62 79 bc e2       	vfnmadd231ps %xmm2,%xmm0,%xmm12
  60b833:	c5 f8 28 44 24 90    	vmovaps -0x70(%rsp),%xmm0
  60b839:	c5 f9 14 44 24 a0    	vunpcklpd -0x60(%rsp),%xmm0,%xmm0
  60b83f:	c5 f8 28 4c 24 f0    	vmovaps -0x10(%rsp),%xmm1
  60b845:	c5 f1 14 0c 24       	vunpcklpd (%rsp),%xmm1,%xmm1
  60b84a:	c5 b8 58 d0          	vaddps %xmm0,%xmm8,%xmm2
  60b84e:	c4 c1 78 5c c0       	vsubps %xmm8,%xmm0,%xmm0
  60b853:	c5 78 28 44 24 b0    	vmovaps -0x50(%rsp),%xmm8
  60b859:	c4 c1 38 58 e3       	vaddps %xmm11,%xmm8,%xmm4
  60b85e:	c4 41 38 5c eb       	vsubps %xmm11,%xmm8,%xmm13
  60b863:	c5 30 58 d1          	vaddps %xmm1,%xmm9,%xmm10
  60b867:	c4 41 70 5c f1       	vsubps %xmm9,%xmm1,%xmm14
  60b86c:	c5 f8 28 4c 24 c0    	vmovaps -0x40(%rsp),%xmm1
  60b872:	c5 70 58 fd          	vaddps %xmm5,%xmm1,%xmm15
  60b876:	c5 f0 5c ed          	vsubps %xmm5,%xmm1,%xmm5
  60b87a:	c5 68 58 cc          	vaddps %xmm4,%xmm2,%xmm9
  60b87e:	c5 e8 5c cc          	vsubps %xmm4,%xmm2,%xmm1
  60b882:	c5 78 58 c5          	vaddps %xmm5,%xmm0,%xmm8
  60b886:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  60b88a:	c5 f8 29 44 24 a0    	vmovaps %xmm0,-0x60(%rsp)
  60b890:	c4 41 28 58 df       	vaddps %xmm15,%xmm10,%xmm11
  60b895:	c4 c1 28 5c ef       	vsubps %xmm15,%xmm10,%xmm5
  60b89a:	c4 41 08 5c d5       	vsubps %xmm13,%xmm14,%xmm10
  60b89f:	c4 c1 08 58 c5       	vaddps %xmm13,%xmm14,%xmm0
  60b8a4:	c5 f8 29 44 24 90    	vmovaps %xmm0,-0x70(%rsp)
  60b8aa:	c5 f8 28 44 24 10    	vmovaps 0x10(%rsp),%xmm0
  60b8b0:	c5 f8 58 d6          	vaddps %xmm6,%xmm0,%xmm2
  60b8b4:	c5 f8 5c f6          	vsubps %xmm6,%xmm0,%xmm6
  60b8b8:	c5 f8 28 44 24 d0    	vmovaps -0x30(%rsp),%xmm0
  60b8be:	c5 78 58 eb          	vaddps %xmm3,%xmm0,%xmm13
  60b8c2:	c5 f8 5c db          	vsubps %xmm3,%xmm0,%xmm3
  60b8c6:	c5 f8 28 44 24 80    	vmovaps -0x80(%rsp),%xmm0
  60b8cc:	c5 78 58 f7          	vaddps %xmm7,%xmm0,%xmm14
  60b8d0:	c5 f8 5c ff          	vsubps %xmm7,%xmm0,%xmm7
  60b8d4:	c5 f8 28 44 24 e0    	vmovaps -0x20(%rsp),%xmm0
  60b8da:	c5 18 58 f8          	vaddps %xmm0,%xmm12,%xmm15
  60b8de:	c4 41 78 5c e4       	vsubps %xmm12,%xmm0,%xmm12
  60b8e3:	c5 90 58 c2          	vaddps %xmm2,%xmm13,%xmm0
  60b8e7:	c4 c1 68 5c d5       	vsubps %xmm13,%xmm2,%xmm2
  60b8ec:	c5 18 58 ee          	vaddps %xmm6,%xmm12,%xmm13
  60b8f0:	c4 c1 48 5c f4       	vsubps %xmm12,%xmm6,%xmm6
  60b8f5:	c4 41 08 58 e7       	vaddps %xmm15,%xmm14,%xmm12
  60b8fa:	c4 41 08 5c f7       	vsubps %xmm15,%xmm14,%xmm14
  60b8ff:	c5 40 5c fb          	vsubps %xmm3,%xmm7,%xmm15
  60b903:	c5 c0 58 db          	vaddps %xmm3,%xmm7,%xmm3
  60b907:	c4 c1 10 58 ff       	vaddps %xmm15,%xmm13,%xmm7
  60b90c:	c4 41 00 5c ed       	vsubps %xmm13,%xmm15,%xmm13
  60b911:	c5 60 5c fe          	vsubps %xmm6,%xmm3,%xmm15
  60b915:	c5 c8 58 db          	vaddps %xmm3,%xmm6,%xmm3
  60b919:	c4 e2 79 18 35 d6 84 	vbroadcastss -0x5a7b2a(%rip),%xmm6        # 63df8 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3b28>
  60b920:	a5 ff 
  60b922:	c5 e8 57 d6          	vxorps %xmm6,%xmm2,%xmm2
  60b926:	c5 e0 57 de          	vxorps %xmm6,%xmm3,%xmm3
  60b92a:	c4 e2 79 18 35 09 83 	vbroadcastss -0x5a7cf7(%rip),%xmm6        # 63c3c <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x396c>
  60b931:	a5 ff 
  60b933:	c5 c0 59 fe          	vmulps %xmm6,%xmm7,%xmm7
  60b937:	c5 10 59 ee          	vmulps %xmm6,%xmm13,%xmm13
  60b93b:	c5 00 59 fe          	vmulps %xmm6,%xmm15,%xmm15
  60b93f:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
  60b943:	c5 b0 58 f0          	vaddps %xmm0,%xmm9,%xmm6
  60b947:	c5 b0 5c e0          	vsubps %xmm0,%xmm9,%xmm4
  60b94b:	c4 41 20 58 cc       	vaddps %xmm12,%xmm11,%xmm9
  60b950:	c4 41 20 5c dc       	vsubps %xmm12,%xmm11,%xmm11
  60b955:	c5 38 58 e7          	vaddps %xmm7,%xmm8,%xmm12
  60b959:	c5 b8 5c ff          	vsubps %xmm7,%xmm8,%xmm7
  60b95d:	c4 41 28 58 c5       	vaddps %xmm13,%xmm10,%xmm8
  60b962:	c4 41 28 5c d5       	vsubps %xmm13,%xmm10,%xmm10
  60b967:	c5 08 58 e9          	vaddps %xmm1,%xmm14,%xmm13
  60b96b:	c4 c1 70 5c c6       	vsubps %xmm14,%xmm1,%xmm0
  60b970:	c5 f8 29 44 24 80    	vmovaps %xmm0,-0x80(%rsp)
  60b976:	c5 50 58 f2          	vaddps %xmm2,%xmm5,%xmm14
  60b97a:	c5 d0 5c d2          	vsubps %xmm2,%xmm5,%xmm2
  60b97e:	c5 f8 28 44 24 a0    	vmovaps -0x60(%rsp),%xmm0
  60b984:	c5 80 58 e8          	vaddps %xmm0,%xmm15,%xmm5
  60b988:	c4 41 78 5c ff       	vsubps %xmm15,%xmm0,%xmm15
  60b98d:	c5 f8 28 4c 24 90    	vmovaps -0x70(%rsp),%xmm1
  60b993:	c5 f0 58 c3          	vaddps %xmm3,%xmm1,%xmm0
  60b997:	c5 f0 5c db          	vsubps %xmm3,%xmm1,%xmm3
  60b99b:	c4 c1 48 14 c9       	vunpcklps %xmm9,%xmm6,%xmm1
  60b9a0:	c4 c1 48 15 f1       	vunpckhps %xmm9,%xmm6,%xmm6
  60b9a5:	c5 f8 11 0e          	vmovups %xmm1,(%rsi)
  60b9a9:	c5 f8 11 76 10       	vmovups %xmm6,0x10(%rsi)
  60b9ae:	c4 c1 18 14 c8       	vunpcklps %xmm8,%xmm12,%xmm1
  60b9b3:	c4 c1 18 15 f0       	vunpckhps %xmm8,%xmm12,%xmm6
  60b9b8:	c5 f8 11 4e 20       	vmovups %xmm1,0x20(%rsi)
  60b9bd:	c5 f8 11 76 30       	vmovups %xmm6,0x30(%rsi)
  60b9c2:	c4 c1 10 14 ce       	vunpcklps %xmm14,%xmm13,%xmm1
  60b9c7:	c4 c1 10 15 f6       	vunpckhps %xmm14,%xmm13,%xmm6
  60b9cc:	c5 f8 11 4e 40       	vmovups %xmm1,0x40(%rsi)
  60b9d1:	c5 f8 11 76 50       	vmovups %xmm6,0x50(%rsi)
  60b9d6:	c5 d0 14 c8          	vunpcklps %xmm0,%xmm5,%xmm1
  60b9da:	c5 d0 15 c0          	vunpckhps %xmm0,%xmm5,%xmm0
  60b9de:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  60b9e3:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  60b9e8:	c4 c1 58 14 c3       	vunpcklps %xmm11,%xmm4,%xmm0
  60b9ed:	c4 c1 58 15 cb       	vunpckhps %xmm11,%xmm4,%xmm1
  60b9f2:	c5 f8 11 86 80 00 00 	vmovups %xmm0,0x80(%rsi)
  60b9f9:	00 
  60b9fa:	c5 f8 11 8e 90 00 00 	vmovups %xmm1,0x90(%rsi)
  60ba01:	00 
  60ba02:	c4 c1 40 14 c2       	vunpcklps %xmm10,%xmm7,%xmm0
  60ba07:	c4 c1 40 15 ca       	vunpckhps %xmm10,%xmm7,%xmm1
  60ba0c:	c5 f8 11 86 a0 00 00 	vmovups %xmm0,0xa0(%rsi)
  60ba13:	00 
  60ba14:	c5 f8 11 8e b0 00 00 	vmovups %xmm1,0xb0(%rsi)
  60ba1b:	00 
  60ba1c:	c5 f8 28 4c 24 80    	vmovaps -0x80(%rsp),%xmm1
  60ba22:	c5 f0 14 c2          	vunpcklps %xmm2,%xmm1,%xmm0
  60ba26:	c5 f0 15 ca          	vunpckhps %xmm2,%xmm1,%xmm1
  60ba2a:	c5 f8 11 86 c0 00 00 	vmovups %xmm0,0xc0(%rsi)
  60ba31:	00 
  60ba32:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  60ba39:	00 
  60ba3a:	c5 80 14 c3          	vunpcklps %xmm3,%xmm15,%xmm0
  60ba3e:	c5 80 15 cb          	vunpckhps %xmm3,%xmm15,%xmm1
  60ba42:	c5 f8 11 86 e0 00 00 	vmovups %xmm0,0xe0(%rsi)
  60ba49:	00 
  60ba4a:	c5 f8 11 8e f0 00 00 	vmovups %xmm1,0xf0(%rsi)
  60ba51:	00 
  60ba52:	48 83 c4 48          	add    $0x48,%rsp
  60ba56:	c5 f8 77             	vzeroupper
  60ba59:	c3                   	ret
  60ba5a:	cc                   	int3
  60ba5b:	cc                   	int3
  60ba5c:	cc                   	int3
  60ba5d:	cc                   	int3
  60ba5e:	cc                   	int3
  60ba5f:	cc                   	int3
