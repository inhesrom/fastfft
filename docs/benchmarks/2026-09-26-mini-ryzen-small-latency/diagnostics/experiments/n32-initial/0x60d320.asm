
target/small-latency/n32-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000060d320 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  60d320:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  60d324:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  60d329:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  60d32e:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  60d333:	c5 fc c6 e1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm4
  60d338:	c4 e3 fd 01 e4 d8    	vpermpd $0xd8,%ymm4,%ymm4
  60d33e:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  60d343:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  60d349:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  60d34e:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  60d354:	c5 ec c6 d3 dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm2
  60d359:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  60d35f:	c5 fc 10 9f 80 00 00 	vmovups 0x80(%rdi),%ymm3
  60d366:	00 
  60d367:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  60d36e:	00 
  60d36f:	c5 e4 c6 f5 88       	vshufps $0x88,%ymm5,%ymm3,%ymm6
  60d374:	c4 e3 fd 01 f6 d8    	vpermpd $0xd8,%ymm6,%ymm6
  60d37a:	c5 e4 c6 dd dd       	vshufps $0xdd,%ymm5,%ymm3,%ymm3
  60d37f:	c4 e3 fd 01 db d8    	vpermpd $0xd8,%ymm3,%ymm3
  60d385:	c5 fc 10 af c0 00 00 	vmovups 0xc0(%rdi),%ymm5
  60d38c:	00 
  60d38d:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  60d394:	00 
  60d395:	c5 54 c6 c7 88       	vshufps $0x88,%ymm7,%ymm5,%ymm8
  60d39a:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  60d3a0:	c5 d4 c6 ef dd       	vshufps $0xdd,%ymm7,%ymm5,%ymm5
  60d3a5:	c4 e3 fd 01 ed d8    	vpermpd $0xd8,%ymm5,%ymm5
  60d3ab:	c5 fc 58 fb          	vaddps %ymm3,%ymm0,%ymm7
  60d3af:	c5 fc 5c c3          	vsubps %ymm3,%ymm0,%ymm0
  60d3b3:	c5 ec 58 dd          	vaddps %ymm5,%ymm2,%ymm3
  60d3b7:	c5 ec 5c d5          	vsubps %ymm5,%ymm2,%ymm2
  60d3bb:	c5 dc 58 ee          	vaddps %ymm6,%ymm4,%ymm5
  60d3bf:	c5 dc 5c e6          	vsubps %ymm6,%ymm4,%ymm4
  60d3c3:	c5 bc 58 f1          	vaddps %ymm1,%ymm8,%ymm6
  60d3c7:	c4 c1 74 5c c8       	vsubps %ymm8,%ymm1,%ymm1
  60d3cc:	c5 44 58 c3          	vaddps %ymm3,%ymm7,%ymm8
  60d3d0:	c5 7c 58 c9          	vaddps %ymm1,%ymm0,%ymm9
  60d3d4:	c5 c4 5c db          	vsubps %ymm3,%ymm7,%ymm3
  60d3d8:	c5 fc 5c c9          	vsubps %ymm1,%ymm0,%ymm1
  60d3dc:	c5 d4 58 fe          	vaddps %ymm6,%ymm5,%ymm7
  60d3e0:	c5 5c 5c d2          	vsubps %ymm2,%ymm4,%ymm10
  60d3e4:	c5 d4 5c ee          	vsubps %ymm6,%ymm5,%ymm5
  60d3e8:	c5 dc 58 e2          	vaddps %ymm2,%ymm4,%ymm4
  60d3ec:	c4 c1 38 14 d1       	vunpcklps %xmm9,%xmm8,%xmm2
  60d3f1:	c4 c1 38 15 f1       	vunpckhps %xmm9,%xmm8,%xmm6
  60d3f6:	c5 60 14 d9          	vunpcklps %xmm1,%xmm3,%xmm11
  60d3fa:	c5 60 15 e1          	vunpckhps %xmm1,%xmm3,%xmm12
  60d3fe:	c4 c1 68 16 c3       	vmovlhps %xmm11,%xmm2,%xmm0
  60d403:	c4 41 69 15 db       	vunpckhpd %xmm11,%xmm2,%xmm11
  60d408:	c4 41 48 16 ec       	vmovlhps %xmm12,%xmm6,%xmm13
  60d40d:	c4 41 49 15 e4       	vunpckhpd %xmm12,%xmm6,%xmm12
  60d412:	c4 63 7d 19 ca 01    	vextractf128 $0x1,%ymm9,%xmm2
  60d418:	c4 63 7d 19 c6 01    	vextractf128 $0x1,%ymm8,%xmm6
  60d41e:	c5 48 14 c2          	vunpcklps %xmm2,%xmm6,%xmm8
  60d422:	c5 c8 15 d2          	vunpckhps %xmm2,%xmm6,%xmm2
  60d426:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  60d42c:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  60d432:	c5 e0 14 f1          	vunpcklps %xmm1,%xmm3,%xmm6
  60d436:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
  60d43a:	c5 38 16 ce          	vmovlhps %xmm6,%xmm8,%xmm9
  60d43e:	c5 b9 15 f6          	vunpckhpd %xmm6,%xmm8,%xmm6
  60d442:	c5 e8 16 d9          	vmovlhps %xmm1,%xmm2,%xmm3
  60d446:	c5 e9 15 c9          	vunpckhpd %xmm1,%xmm2,%xmm1
  60d44a:	c4 41 40 14 c2       	vunpcklps %xmm10,%xmm7,%xmm8
  60d44f:	c4 41 40 15 f2       	vunpckhps %xmm10,%xmm7,%xmm14
  60d454:	c5 50 14 fc          	vunpcklps %xmm4,%xmm5,%xmm15
  60d458:	62 e1 54 08 15 c4    	vunpckhps %xmm4,%xmm5,%xmm16
  60d45e:	c4 c1 38 16 d7       	vmovlhps %xmm15,%xmm8,%xmm2
  60d463:	c4 41 39 15 c7       	vunpckhpd %xmm15,%xmm8,%xmm8
  60d468:	62 31 0c 08 16 f8    	vmovlhps %xmm16,%xmm14,%xmm15
  60d46e:	62 31 8d 08 15 f0    	vunpckhpd %xmm16,%xmm14,%xmm14
  60d474:	c4 43 7d 19 d2 01    	vextractf128 $0x1,%ymm10,%xmm10
  60d47a:	c4 e3 7d 19 ff 01    	vextractf128 $0x1,%ymm7,%xmm7
  60d480:	62 c1 44 08 14 c2    	vunpcklps %xmm10,%xmm7,%xmm16
  60d486:	c4 c1 40 15 fa       	vunpckhps %xmm10,%xmm7,%xmm7
  60d48b:	c4 e3 7d 19 e4 01    	vextractf128 $0x1,%ymm4,%xmm4
  60d491:	c4 e3 7d 19 ed 01    	vextractf128 $0x1,%ymm5,%xmm5
  60d497:	c5 50 14 d4          	vunpcklps %xmm4,%xmm5,%xmm10
  60d49b:	c5 d0 15 e4          	vunpckhps %xmm4,%xmm5,%xmm4
  60d49f:	62 c1 7c 00 16 ca    	vmovlhps %xmm10,%xmm16,%xmm17
  60d4a5:	62 51 fd 00 15 d2    	vunpckhpd %xmm10,%xmm16,%xmm10
  60d4ab:	62 e1 44 08 16 c4    	vmovlhps %xmm4,%xmm7,%xmm16
  60d4b1:	c5 c1 15 fc          	vunpckhpd %xmm4,%xmm7,%xmm7
  60d4b5:	62 e1 7c 08 28 15 f1 	vmovaps -0x5abe0f(%rip),%xmm18        # 616b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13e0>
  60d4bc:	41 a5 ff 
  60d4bf:	62 b1 3c 08 59 e2    	vmulps %xmm18,%xmm8,%xmm4
  60d4c5:	c5 f8 28 2d 13 37 a5 	vmovaps -0x5ac8ed(%rip),%xmm5        # 60be0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x910>
  60d4cc:	ff 
  60d4cd:	c4 e2 21 b8 e5       	vfmadd231ps %xmm5,%xmm11,%xmm4
  60d4d2:	c5 b8 59 ed          	vmulps %xmm5,%xmm8,%xmm5
  60d4d6:	62 b2 25 08 bc ea    	vfnmadd231ps %xmm18,%xmm11,%xmm5
  60d4dc:	c5 78 28 05 cc 30 a5 	vmovaps -0x5acf34(%rip),%xmm8        # 605b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2e0>
  60d4e3:	ff 
  60d4e4:	c4 41 00 59 d8       	vmulps %xmm8,%xmm15,%xmm11
  60d4e9:	62 e1 7c 08 28 15 4d 	vmovaps -0x5abeb3(%rip),%xmm18        # 61640 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1370>
  60d4f0:	41 a5 ff 
  60d4f3:	62 32 15 08 b8 da    	vfmadd231ps %xmm18,%xmm13,%xmm11
  60d4f9:	62 31 04 08 59 fa    	vmulps %xmm18,%xmm15,%xmm15
  60d4ff:	c4 42 11 bc f8       	vfnmadd231ps %xmm8,%xmm13,%xmm15
  60d504:	c5 78 28 05 b4 41 a5 	vmovaps -0x5abe4c(%rip),%xmm8        # 616c0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13f0>
  60d50b:	ff 
  60d50c:	c4 41 08 59 e8       	vmulps %xmm8,%xmm14,%xmm13
  60d511:	62 e1 7c 08 28 15 35 	vmovaps -0x5acccb(%rip),%xmm18        # 60850 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x580>
  60d518:	33 a5 ff 
  60d51b:	62 32 1d 08 b8 ea    	vfmadd231ps %xmm18,%xmm12,%xmm13
  60d521:	62 31 0c 08 59 f2    	vmulps %xmm18,%xmm14,%xmm14
  60d527:	c4 42 19 bc f0       	vfnmadd231ps %xmm8,%xmm12,%xmm14
  60d52c:	c5 78 28 05 2c 40 a5 	vmovaps -0x5abfd4(%rip),%xmm8        # 61560 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1290>
  60d533:	ff 
  60d534:	62 51 74 00 59 e0    	vmulps %xmm8,%xmm17,%xmm12
  60d53a:	62 e1 7c 08 28 15 3c 	vmovaps -0x5ab7c4(%rip),%xmm18        # 61d80 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1ab0>
  60d541:	48 a5 ff 
  60d544:	62 32 35 08 b8 e2    	vfmadd231ps %xmm18,%xmm9,%xmm12
  60d54a:	62 a1 74 00 59 ca    	vmulps %xmm18,%xmm17,%xmm17
  60d550:	62 c2 35 08 bc c8    	vfnmadd231ps %xmm8,%xmm9,%xmm17
  60d556:	c5 78 28 05 02 51 a5 	vmovaps -0x5aaefe(%rip),%xmm8        # 62660 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2390>
  60d55d:	ff 
  60d55e:	c4 41 28 59 c8       	vmulps %xmm8,%xmm10,%xmm9
  60d563:	62 e1 7c 08 28 15 83 	vmovaps -0x5ab97d(%rip),%xmm18        # 61bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1920>
  60d56a:	46 a5 ff 
  60d56d:	62 32 4d 08 b8 ca    	vfmadd231ps %xmm18,%xmm6,%xmm9
  60d573:	62 31 2c 08 59 d2    	vmulps %xmm18,%xmm10,%xmm10
  60d579:	c4 42 49 bc d0       	vfnmadd231ps %xmm8,%xmm6,%xmm10
  60d57e:	c5 f8 28 35 6a 36 a5 	vmovaps -0x5ac996(%rip),%xmm6        # 60bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x920>
  60d585:	ff 
  60d586:	62 71 7c 00 59 c6    	vmulps %xmm6,%xmm16,%xmm8
  60d58c:	62 e1 7c 08 28 15 fa 	vmovaps -0x5ad206(%rip),%xmm18        # 60390 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0xc0>
  60d593:	2d a5 ff 
  60d596:	62 32 65 08 b8 c2    	vfmadd231ps %xmm18,%xmm3,%xmm8
  60d59c:	62 a1 7c 00 59 c2    	vmulps %xmm18,%xmm16,%xmm16
  60d5a2:	62 e2 65 08 bc c6    	vfnmadd231ps %xmm6,%xmm3,%xmm16
  60d5a8:	c5 f8 28 1d 50 52 a5 	vmovaps -0x5aadb0(%rip),%xmm3        # 62800 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2530>
  60d5af:	ff 
  60d5b0:	c5 c0 59 f3          	vmulps %xmm3,%xmm7,%xmm6
  60d5b4:	62 e1 7c 08 28 15 02 	vmovaps -0x5aa9fe(%rip),%xmm18        # 62bc0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x28f0>
  60d5bb:	56 a5 ff 
  60d5be:	62 b2 75 08 b8 f2    	vfmadd231ps %xmm18,%xmm1,%xmm6
  60d5c4:	62 b1 44 08 59 fa    	vmulps %xmm18,%xmm7,%xmm7
  60d5ca:	c4 e2 71 bc fb       	vfnmadd231ps %xmm3,%xmm1,%xmm7
  60d5cf:	c5 98 58 c8          	vaddps %xmm0,%xmm12,%xmm1
  60d5d3:	c4 c1 78 5c c4       	vsubps %xmm12,%xmm0,%xmm0
  60d5d8:	c4 c1 20 58 d8       	vaddps %xmm8,%xmm11,%xmm3
  60d5dd:	c4 41 20 5c c0       	vsubps %xmm8,%xmm11,%xmm8
  60d5e2:	62 31 6c 08 58 d9    	vaddps %xmm17,%xmm2,%xmm11
  60d5e8:	62 b1 6c 08 5c d1    	vsubps %xmm17,%xmm2,%xmm2
  60d5ee:	62 31 04 08 58 e0    	vaddps %xmm16,%xmm15,%xmm12
  60d5f4:	62 31 04 08 5c f8    	vsubps %xmm16,%xmm15,%xmm15
  60d5fa:	62 e1 74 08 58 c3    	vaddps %xmm3,%xmm1,%xmm16
  60d600:	62 c1 7c 08 58 cf    	vaddps %xmm15,%xmm0,%xmm17
  60d606:	c5 f0 5c cb          	vsubps %xmm3,%xmm1,%xmm1
  60d60a:	c4 c1 78 5c c7       	vsubps %xmm15,%xmm0,%xmm0
  60d60f:	c4 c1 20 58 dc       	vaddps %xmm12,%xmm11,%xmm3
  60d614:	c4 41 68 5c f8       	vsubps %xmm8,%xmm2,%xmm15
  60d619:	c4 41 20 5c dc       	vsubps %xmm12,%xmm11,%xmm11
  60d61e:	c5 b8 58 d2          	vaddps %xmm2,%xmm8,%xmm2
  60d622:	c5 30 58 c4          	vaddps %xmm4,%xmm9,%xmm8
  60d626:	c4 c1 58 5c e1       	vsubps %xmm9,%xmm4,%xmm4
  60d62b:	c5 10 58 ce          	vaddps %xmm6,%xmm13,%xmm9
  60d62f:	c5 90 5c f6          	vsubps %xmm6,%xmm13,%xmm6
  60d633:	c5 28 58 e5          	vaddps %xmm5,%xmm10,%xmm12
  60d637:	c4 c1 50 5c ea       	vsubps %xmm10,%xmm5,%xmm5
  60d63c:	c5 08 58 d7          	vaddps %xmm7,%xmm14,%xmm10
  60d640:	c5 88 5c ff          	vsubps %xmm7,%xmm14,%xmm7
  60d644:	c4 41 38 58 e9       	vaddps %xmm9,%xmm8,%xmm13
  60d649:	c5 58 58 f7          	vaddps %xmm7,%xmm4,%xmm14
  60d64d:	c4 41 38 5c c1       	vsubps %xmm9,%xmm8,%xmm8
  60d652:	c5 d8 5c e7          	vsubps %xmm7,%xmm4,%xmm4
  60d656:	c4 c1 18 58 fa       	vaddps %xmm10,%xmm12,%xmm7
  60d65b:	c5 50 5c ce          	vsubps %xmm6,%xmm5,%xmm9
  60d65f:	c4 41 18 5c d2       	vsubps %xmm10,%xmm12,%xmm10
  60d664:	c5 d0 58 ee          	vaddps %xmm6,%xmm5,%xmm5
  60d668:	c4 e2 79 18 35 cb 65 	vbroadcastss -0x5a9a35(%rip),%xmm6        # 63c3c <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x396c>
  60d66f:	a5 ff 
  60d671:	c4 41 08 58 e1       	vaddps %xmm9,%xmm14,%xmm12
  60d676:	c5 18 59 e6          	vmulps %xmm6,%xmm12,%xmm12
  60d67a:	c4 41 30 5c ce       	vsubps %xmm14,%xmm9,%xmm9
  60d67f:	c5 30 59 ce          	vmulps %xmm6,%xmm9,%xmm9
  60d683:	c5 7b 12 35 7d 5f a5 	vmovddup -0x5aa083(%rip),%xmm14        # 63608 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3338>
  60d68a:	ff 
  60d68b:	c4 41 38 57 c6       	vxorps %xmm14,%xmm8,%xmm8
  60d690:	62 e1 54 08 5c d4    	vsubps %xmm4,%xmm5,%xmm18
  60d696:	62 e1 6c 00 59 d6    	vmulps %xmm6,%xmm18,%xmm18
  60d69c:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
  60d6a0:	c5 88 57 e4          	vxorps %xmm4,%xmm14,%xmm4
  60d6a4:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
  60d6a8:	62 d1 7c 00 58 ed    	vaddps %xmm13,%xmm16,%xmm5
  60d6ae:	62 d1 7c 00 5c f5    	vsubps %xmm13,%xmm16,%xmm6
  60d6b4:	c5 60 58 ef          	vaddps %xmm7,%xmm3,%xmm13
  60d6b8:	c5 e0 5c df          	vsubps %xmm7,%xmm3,%xmm3
  60d6bc:	62 d1 74 00 58 fc    	vaddps %xmm12,%xmm17,%xmm7
  60d6c2:	62 51 74 00 5c e4    	vsubps %xmm12,%xmm17,%xmm12
  60d6c8:	c4 41 00 58 f1       	vaddps %xmm9,%xmm15,%xmm14
  60d6cd:	c4 41 00 5c c9       	vsubps %xmm9,%xmm15,%xmm9
  60d6d2:	c5 28 58 f9          	vaddps %xmm1,%xmm10,%xmm15
  60d6d6:	c4 c1 70 5c ca       	vsubps %xmm10,%xmm1,%xmm1
  60d6db:	c4 41 20 58 d0       	vaddps %xmm8,%xmm11,%xmm10
  60d6e0:	c4 41 20 5c c0       	vsubps %xmm8,%xmm11,%xmm8
  60d6e5:	62 31 7c 08 58 da    	vaddps %xmm18,%xmm0,%xmm11
  60d6eb:	62 b1 7c 08 5c c2    	vsubps %xmm18,%xmm0,%xmm0
  60d6f1:	62 e1 6c 08 58 c4    	vaddps %xmm4,%xmm2,%xmm16
  60d6f7:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  60d6fb:	c5 90 14 e5          	vunpcklps %xmm5,%xmm13,%xmm4
  60d6ff:	c5 90 15 ed          	vunpckhps %xmm5,%xmm13,%xmm5
  60d703:	c5 f8 11 26          	vmovups %xmm4,(%rsi)
  60d707:	c5 f8 11 6e 10       	vmovups %xmm5,0x10(%rsi)
  60d70c:	c5 88 14 e7          	vunpcklps %xmm7,%xmm14,%xmm4
  60d710:	c5 88 15 ef          	vunpckhps %xmm7,%xmm14,%xmm5
  60d714:	c5 f8 11 66 20       	vmovups %xmm4,0x20(%rsi)
  60d719:	c5 f8 11 6e 30       	vmovups %xmm5,0x30(%rsi)
  60d71e:	c4 c1 28 14 e7       	vunpcklps %xmm15,%xmm10,%xmm4
  60d723:	c4 c1 28 15 ef       	vunpckhps %xmm15,%xmm10,%xmm5
  60d728:	c5 f8 11 66 40       	vmovups %xmm4,0x40(%rsi)
  60d72d:	c5 f8 11 6e 50       	vmovups %xmm5,0x50(%rsi)
  60d732:	62 d1 7c 00 14 e3    	vunpcklps %xmm11,%xmm16,%xmm4
  60d738:	62 d1 7c 00 15 eb    	vunpckhps %xmm11,%xmm16,%xmm5
  60d73e:	c5 f8 11 66 60       	vmovups %xmm4,0x60(%rsi)
  60d743:	c5 f8 11 6e 70       	vmovups %xmm5,0x70(%rsi)
  60d748:	c5 e0 14 e6          	vunpcklps %xmm6,%xmm3,%xmm4
  60d74c:	c5 e0 15 de          	vunpckhps %xmm6,%xmm3,%xmm3
  60d750:	c5 f8 11 a6 80 00 00 	vmovups %xmm4,0x80(%rsi)
  60d757:	00 
  60d758:	c5 f8 11 9e 90 00 00 	vmovups %xmm3,0x90(%rsi)
  60d75f:	00 
  60d760:	c4 c1 30 14 dc       	vunpcklps %xmm12,%xmm9,%xmm3
  60d765:	c4 c1 30 15 e4       	vunpckhps %xmm12,%xmm9,%xmm4
  60d76a:	c5 f8 11 9e a0 00 00 	vmovups %xmm3,0xa0(%rsi)
  60d771:	00 
  60d772:	c5 f8 11 a6 b0 00 00 	vmovups %xmm4,0xb0(%rsi)
  60d779:	00 
  60d77a:	c5 b8 14 d9          	vunpcklps %xmm1,%xmm8,%xmm3
  60d77e:	c5 b8 15 c9          	vunpckhps %xmm1,%xmm8,%xmm1
  60d782:	c5 f8 11 9e c0 00 00 	vmovups %xmm3,0xc0(%rsi)
  60d789:	00 
  60d78a:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  60d791:	00 
  60d792:	c5 e8 14 c8          	vunpcklps %xmm0,%xmm2,%xmm1
  60d796:	c5 e8 15 c0          	vunpckhps %xmm0,%xmm2,%xmm0
  60d79a:	c5 f8 11 8e e0 00 00 	vmovups %xmm1,0xe0(%rsi)
  60d7a1:	00 
  60d7a2:	c5 f8 11 86 f0 00 00 	vmovups %xmm0,0xf0(%rsi)
  60d7a9:	00 
  60d7aa:	c5 f8 77             	vzeroupper
  60d7ad:	c3                   	ret
  60d7ae:	cc                   	int3
  60d7af:	cc                   	int3
