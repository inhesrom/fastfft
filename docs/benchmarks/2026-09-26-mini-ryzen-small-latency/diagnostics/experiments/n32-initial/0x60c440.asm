
target/small-latency/n32-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000060c440 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  60c440:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  60c444:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  60c449:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  60c44e:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  60c453:	c5 fc c6 e1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm4
  60c458:	c4 e3 fd 01 e4 d8    	vpermpd $0xd8,%ymm4,%ymm4
  60c45e:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  60c463:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  60c469:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  60c46e:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  60c474:	c5 ec c6 d3 dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm2
  60c479:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  60c47f:	c5 fc 10 9f 80 00 00 	vmovups 0x80(%rdi),%ymm3
  60c486:	00 
  60c487:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  60c48e:	00 
  60c48f:	c5 e4 c6 f5 88       	vshufps $0x88,%ymm5,%ymm3,%ymm6
  60c494:	c4 e3 fd 01 f6 d8    	vpermpd $0xd8,%ymm6,%ymm6
  60c49a:	c5 e4 c6 dd dd       	vshufps $0xdd,%ymm5,%ymm3,%ymm3
  60c49f:	c4 e3 fd 01 db d8    	vpermpd $0xd8,%ymm3,%ymm3
  60c4a5:	c5 fc 10 af c0 00 00 	vmovups 0xc0(%rdi),%ymm5
  60c4ac:	00 
  60c4ad:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  60c4b4:	00 
  60c4b5:	c5 54 c6 c7 88       	vshufps $0x88,%ymm7,%ymm5,%ymm8
  60c4ba:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  60c4c0:	c5 d4 c6 ef dd       	vshufps $0xdd,%ymm7,%ymm5,%ymm5
  60c4c5:	c4 e3 fd 01 ed d8    	vpermpd $0xd8,%ymm5,%ymm5
  60c4cb:	c5 dc 58 fe          	vaddps %ymm6,%ymm4,%ymm7
  60c4cf:	c5 dc 5c e6          	vsubps %ymm6,%ymm4,%ymm4
  60c4d3:	c5 bc 58 f1          	vaddps %ymm1,%ymm8,%ymm6
  60c4d7:	c4 c1 74 5c c8       	vsubps %ymm8,%ymm1,%ymm1
  60c4dc:	c5 7c 58 c3          	vaddps %ymm3,%ymm0,%ymm8
  60c4e0:	c5 fc 5c c3          	vsubps %ymm3,%ymm0,%ymm0
  60c4e4:	c5 ec 58 dd          	vaddps %ymm5,%ymm2,%ymm3
  60c4e8:	c5 ec 5c d5          	vsubps %ymm5,%ymm2,%ymm2
  60c4ec:	c5 c4 58 ee          	vaddps %ymm6,%ymm7,%ymm5
  60c4f0:	c5 5c 58 ca          	vaddps %ymm2,%ymm4,%ymm9
  60c4f4:	c5 c4 5c f6          	vsubps %ymm6,%ymm7,%ymm6
  60c4f8:	c5 dc 5c d2          	vsubps %ymm2,%ymm4,%ymm2
  60c4fc:	c5 bc 58 e3          	vaddps %ymm3,%ymm8,%ymm4
  60c500:	c5 fc 5c f9          	vsubps %ymm1,%ymm0,%ymm7
  60c504:	c5 3c 5c c3          	vsubps %ymm3,%ymm8,%ymm8
  60c508:	c5 7c 58 d1          	vaddps %ymm1,%ymm0,%ymm10
  60c50c:	c4 c1 50 14 c9       	vunpcklps %xmm9,%xmm5,%xmm1
  60c511:	c4 c1 50 15 d9       	vunpckhps %xmm9,%xmm5,%xmm3
  60c516:	c5 48 14 da          	vunpcklps %xmm2,%xmm6,%xmm11
  60c51a:	c5 48 15 e2          	vunpckhps %xmm2,%xmm6,%xmm12
  60c51e:	c4 c1 70 16 c3       	vmovlhps %xmm11,%xmm1,%xmm0
  60c523:	c4 41 71 15 db       	vunpckhpd %xmm11,%xmm1,%xmm11
  60c528:	c4 41 60 16 ec       	vmovlhps %xmm12,%xmm3,%xmm13
  60c52d:	c4 41 61 15 e4       	vunpckhpd %xmm12,%xmm3,%xmm12
  60c532:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
  60c538:	c4 e3 7d 19 eb 01    	vextractf128 $0x1,%ymm5,%xmm3
  60c53e:	c5 e0 14 e9          	vunpcklps %xmm1,%xmm3,%xmm5
  60c542:	c5 e0 15 c9          	vunpckhps %xmm1,%xmm3,%xmm1
  60c546:	c4 e3 7d 19 d2 01    	vextractf128 $0x1,%ymm2,%xmm2
  60c54c:	c4 e3 7d 19 f3 01    	vextractf128 $0x1,%ymm6,%xmm3
  60c552:	c5 e0 14 f2          	vunpcklps %xmm2,%xmm3,%xmm6
  60c556:	c5 e0 15 d2          	vunpckhps %xmm2,%xmm3,%xmm2
  60c55a:	c5 50 16 ce          	vmovlhps %xmm6,%xmm5,%xmm9
  60c55e:	c5 d1 15 f6          	vunpckhpd %xmm6,%xmm5,%xmm6
  60c562:	c5 f0 16 da          	vmovlhps %xmm2,%xmm1,%xmm3
  60c566:	c5 f1 15 ca          	vunpckhpd %xmm2,%xmm1,%xmm1
  60c56a:	c5 d8 14 ef          	vunpcklps %xmm7,%xmm4,%xmm5
  60c56e:	c5 58 15 f7          	vunpckhps %xmm7,%xmm4,%xmm14
  60c572:	c4 41 38 14 fa       	vunpcklps %xmm10,%xmm8,%xmm15
  60c577:	62 c1 3c 08 15 c2    	vunpckhps %xmm10,%xmm8,%xmm16
  60c57d:	c4 c1 50 16 d7       	vmovlhps %xmm15,%xmm5,%xmm2
  60c582:	c4 c1 51 15 ef       	vunpckhpd %xmm15,%xmm5,%xmm5
  60c587:	62 31 0c 08 16 f8    	vmovlhps %xmm16,%xmm14,%xmm15
  60c58d:	62 31 8d 08 15 f0    	vunpckhpd %xmm16,%xmm14,%xmm14
  60c593:	c4 e3 7d 19 ff 01    	vextractf128 $0x1,%ymm7,%xmm7
  60c599:	c4 e3 7d 19 e4 01    	vextractf128 $0x1,%ymm4,%xmm4
  60c59f:	62 e1 5c 08 14 c7    	vunpcklps %xmm7,%xmm4,%xmm16
  60c5a5:	c5 d8 15 e7          	vunpckhps %xmm7,%xmm4,%xmm4
  60c5a9:	c4 63 7d 19 d7 01    	vextractf128 $0x1,%ymm10,%xmm7
  60c5af:	c4 43 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm8
  60c5b5:	c5 38 14 d7          	vunpcklps %xmm7,%xmm8,%xmm10
  60c5b9:	c5 b8 15 ff          	vunpckhps %xmm7,%xmm8,%xmm7
  60c5bd:	62 51 7c 00 16 c2    	vmovlhps %xmm10,%xmm16,%xmm8
  60c5c3:	62 51 fd 00 15 d2    	vunpckhpd %xmm10,%xmm16,%xmm10
  60c5c9:	62 e1 5c 08 16 c7    	vmovlhps %xmm7,%xmm4,%xmm16
  60c5cf:	c5 d9 15 ff          	vunpckhpd %xmm7,%xmm4,%xmm7
  60c5d3:	62 e1 7c 08 28 0d d3 	vmovaps -0x5aaf2d(%rip),%xmm17        # 616b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13e0>
  60c5da:	50 a5 ff 
  60c5dd:	62 b1 54 08 59 e1    	vmulps %xmm17,%xmm5,%xmm4
  60c5e3:	62 e1 7c 08 28 15 f3 	vmovaps -0x5aba0d(%rip),%xmm18        # 60be0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x910>
  60c5ea:	45 a5 ff 
  60c5ed:	62 b2 25 08 b8 e2    	vfmadd231ps %xmm18,%xmm11,%xmm4
  60c5f3:	62 b1 54 08 59 ea    	vmulps %xmm18,%xmm5,%xmm5
  60c5f9:	62 b2 25 08 bc e9    	vfnmadd231ps %xmm17,%xmm11,%xmm5
  60c5ff:	c5 78 28 1d a9 3f a5 	vmovaps -0x5ac057(%rip),%xmm11        # 605b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2e0>
  60c606:	ff 
  60c607:	62 c1 04 08 59 cb    	vmulps %xmm11,%xmm15,%xmm17
  60c60d:	62 e1 7c 08 28 15 29 	vmovaps -0x5aafd7(%rip),%xmm18        # 61640 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1370>
  60c614:	50 a5 ff 
  60c617:	62 a2 15 08 b8 ca    	vfmadd231ps %xmm18,%xmm13,%xmm17
  60c61d:	62 31 04 08 59 fa    	vmulps %xmm18,%xmm15,%xmm15
  60c623:	c4 42 11 bc fb       	vfnmadd231ps %xmm11,%xmm13,%xmm15
  60c628:	c5 78 28 1d 90 50 a5 	vmovaps -0x5aaf70(%rip),%xmm11        # 616c0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13f0>
  60c62f:	ff 
  60c630:	c4 41 08 59 eb       	vmulps %xmm11,%xmm14,%xmm13
  60c635:	62 e1 7c 08 28 15 11 	vmovaps -0x5abdef(%rip),%xmm18        # 60850 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x580>
  60c63c:	42 a5 ff 
  60c63f:	62 32 1d 08 b8 ea    	vfmadd231ps %xmm18,%xmm12,%xmm13
  60c645:	62 31 0c 08 59 f2    	vmulps %xmm18,%xmm14,%xmm14
  60c64b:	c4 42 19 bc f3       	vfnmadd231ps %xmm11,%xmm12,%xmm14
  60c650:	c5 78 28 1d 08 4f a5 	vmovaps -0x5ab0f8(%rip),%xmm11        # 61560 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1290>
  60c657:	ff 
  60c658:	c4 41 38 59 e3       	vmulps %xmm11,%xmm8,%xmm12
  60c65d:	62 e1 7c 08 28 15 19 	vmovaps -0x5aa8e7(%rip),%xmm18        # 61d80 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1ab0>
  60c664:	57 a5 ff 
  60c667:	62 32 35 08 b8 e2    	vfmadd231ps %xmm18,%xmm9,%xmm12
  60c66d:	62 31 3c 08 59 c2    	vmulps %xmm18,%xmm8,%xmm8
  60c673:	c4 42 31 bc c3       	vfnmadd231ps %xmm11,%xmm9,%xmm8
  60c678:	c5 78 28 0d e0 5f a5 	vmovaps -0x5aa020(%rip),%xmm9        # 62660 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2390>
  60c67f:	ff 
  60c680:	c4 41 28 59 d9       	vmulps %xmm9,%xmm10,%xmm11
  60c685:	62 e1 7c 08 28 15 61 	vmovaps -0x5aaa9f(%rip),%xmm18        # 61bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1920>
  60c68c:	55 a5 ff 
  60c68f:	62 32 4d 08 b8 da    	vfmadd231ps %xmm18,%xmm6,%xmm11
  60c695:	62 31 2c 08 59 d2    	vmulps %xmm18,%xmm10,%xmm10
  60c69b:	c4 42 49 bc d1       	vfnmadd231ps %xmm9,%xmm6,%xmm10
  60c6a0:	c5 f8 28 35 48 45 a5 	vmovaps -0x5abab8(%rip),%xmm6        # 60bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x920>
  60c6a7:	ff 
  60c6a8:	62 71 7c 00 59 ce    	vmulps %xmm6,%xmm16,%xmm9
  60c6ae:	62 e1 7c 08 28 15 d8 	vmovaps -0x5ac328(%rip),%xmm18        # 60390 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0xc0>
  60c6b5:	3c a5 ff 
  60c6b8:	62 32 65 08 b8 ca    	vfmadd231ps %xmm18,%xmm3,%xmm9
  60c6be:	62 a1 7c 00 59 c2    	vmulps %xmm18,%xmm16,%xmm16
  60c6c4:	62 e2 65 08 bc c6    	vfnmadd231ps %xmm6,%xmm3,%xmm16
  60c6ca:	c5 f8 28 1d 2e 61 a5 	vmovaps -0x5a9ed2(%rip),%xmm3        # 62800 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2530>
  60c6d1:	ff 
  60c6d2:	c5 c0 59 f3          	vmulps %xmm3,%xmm7,%xmm6
  60c6d6:	62 e1 7c 08 28 15 e0 	vmovaps -0x5a9b20(%rip),%xmm18        # 62bc0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x28f0>
  60c6dd:	64 a5 ff 
  60c6e0:	62 b2 75 08 b8 f2    	vfmadd231ps %xmm18,%xmm1,%xmm6
  60c6e6:	62 b1 44 08 59 fa    	vmulps %xmm18,%xmm7,%xmm7
  60c6ec:	c4 e2 71 bc fb       	vfnmadd231ps %xmm3,%xmm1,%xmm7
  60c6f1:	c5 98 58 c8          	vaddps %xmm0,%xmm12,%xmm1
  60c6f5:	c4 c1 78 5c c4       	vsubps %xmm12,%xmm0,%xmm0
  60c6fa:	62 d1 74 00 58 d9    	vaddps %xmm9,%xmm17,%xmm3
  60c700:	62 51 74 00 5c c9    	vsubps %xmm9,%xmm17,%xmm9
  60c706:	c5 38 58 e2          	vaddps %xmm2,%xmm8,%xmm12
  60c70a:	c4 c1 68 5c d0       	vsubps %xmm8,%xmm2,%xmm2
  60c70f:	62 31 04 08 58 c0    	vaddps %xmm16,%xmm15,%xmm8
  60c715:	62 31 04 08 5c f8    	vsubps %xmm16,%xmm15,%xmm15
  60c71b:	62 e1 74 08 58 c3    	vaddps %xmm3,%xmm1,%xmm16
  60c721:	62 c1 7c 08 58 cf    	vaddps %xmm15,%xmm0,%xmm17
  60c727:	c5 f0 5c cb          	vsubps %xmm3,%xmm1,%xmm1
  60c72b:	c4 c1 78 5c c7       	vsubps %xmm15,%xmm0,%xmm0
  60c730:	c4 c1 18 58 d8       	vaddps %xmm8,%xmm12,%xmm3
  60c735:	c4 41 68 5c f9       	vsubps %xmm9,%xmm2,%xmm15
  60c73a:	c4 41 18 5c c0       	vsubps %xmm8,%xmm12,%xmm8
  60c73f:	c5 b0 58 d2          	vaddps %xmm2,%xmm9,%xmm2
  60c743:	c5 20 58 cc          	vaddps %xmm4,%xmm11,%xmm9
  60c747:	c4 c1 58 5c e3       	vsubps %xmm11,%xmm4,%xmm4
  60c74c:	c5 10 58 de          	vaddps %xmm6,%xmm13,%xmm11
  60c750:	c5 90 5c f6          	vsubps %xmm6,%xmm13,%xmm6
  60c754:	c5 28 58 e5          	vaddps %xmm5,%xmm10,%xmm12
  60c758:	c4 c1 50 5c ea       	vsubps %xmm10,%xmm5,%xmm5
  60c75d:	c5 08 58 d7          	vaddps %xmm7,%xmm14,%xmm10
  60c761:	c5 88 5c ff          	vsubps %xmm7,%xmm14,%xmm7
  60c765:	c4 41 30 58 eb       	vaddps %xmm11,%xmm9,%xmm13
  60c76a:	c5 58 58 f7          	vaddps %xmm7,%xmm4,%xmm14
  60c76e:	c4 41 30 5c cb       	vsubps %xmm11,%xmm9,%xmm9
  60c773:	c5 d8 5c e7          	vsubps %xmm7,%xmm4,%xmm4
  60c777:	c4 c1 18 58 fa       	vaddps %xmm10,%xmm12,%xmm7
  60c77c:	c5 50 5c de          	vsubps %xmm6,%xmm5,%xmm11
  60c780:	c4 41 18 5c d2       	vsubps %xmm10,%xmm12,%xmm10
  60c785:	c5 d0 58 ee          	vaddps %xmm6,%xmm5,%xmm5
  60c789:	c4 e2 79 18 35 aa 74 	vbroadcastss -0x5a8b56(%rip),%xmm6        # 63c3c <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x396c>
  60c790:	a5 ff 
  60c792:	c4 41 08 58 e3       	vaddps %xmm11,%xmm14,%xmm12
  60c797:	c5 18 59 e6          	vmulps %xmm6,%xmm12,%xmm12
  60c79b:	c4 41 20 5c de       	vsubps %xmm14,%xmm11,%xmm11
  60c7a0:	c5 20 59 de          	vmulps %xmm6,%xmm11,%xmm11
  60c7a4:	c5 7b 12 35 5c 6e a5 	vmovddup -0x5a91a4(%rip),%xmm14        # 63608 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3338>
  60c7ab:	ff 
  60c7ac:	c4 41 30 57 ce       	vxorps %xmm14,%xmm9,%xmm9
  60c7b1:	62 e1 54 08 5c d4    	vsubps %xmm4,%xmm5,%xmm18
  60c7b7:	62 e1 6c 00 59 d6    	vmulps %xmm6,%xmm18,%xmm18
  60c7bd:	c5 d8 58 e5          	vaddps %xmm5,%xmm4,%xmm4
  60c7c1:	c5 88 57 e4          	vxorps %xmm4,%xmm14,%xmm4
  60c7c5:	c5 d8 59 e6          	vmulps %xmm6,%xmm4,%xmm4
  60c7c9:	62 d1 7c 00 58 ed    	vaddps %xmm13,%xmm16,%xmm5
  60c7cf:	62 d1 7c 00 5c f5    	vsubps %xmm13,%xmm16,%xmm6
  60c7d5:	c5 60 58 ef          	vaddps %xmm7,%xmm3,%xmm13
  60c7d9:	c5 e0 5c df          	vsubps %xmm7,%xmm3,%xmm3
  60c7dd:	62 d1 74 00 58 fc    	vaddps %xmm12,%xmm17,%xmm7
  60c7e3:	62 51 74 00 5c e4    	vsubps %xmm12,%xmm17,%xmm12
  60c7e9:	c4 41 00 58 f3       	vaddps %xmm11,%xmm15,%xmm14
  60c7ee:	c4 41 00 5c db       	vsubps %xmm11,%xmm15,%xmm11
  60c7f3:	c5 28 58 f9          	vaddps %xmm1,%xmm10,%xmm15
  60c7f7:	c4 c1 70 5c ca       	vsubps %xmm10,%xmm1,%xmm1
  60c7fc:	c4 41 38 58 d1       	vaddps %xmm9,%xmm8,%xmm10
  60c801:	c4 41 38 5c c1       	vsubps %xmm9,%xmm8,%xmm8
  60c806:	62 31 7c 08 58 ca    	vaddps %xmm18,%xmm0,%xmm9
  60c80c:	62 b1 7c 08 5c c2    	vsubps %xmm18,%xmm0,%xmm0
  60c812:	62 e1 6c 08 58 c4    	vaddps %xmm4,%xmm2,%xmm16
  60c818:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  60c81c:	c4 c1 50 14 e5       	vunpcklps %xmm13,%xmm5,%xmm4
  60c821:	c4 c1 50 15 ed       	vunpckhps %xmm13,%xmm5,%xmm5
  60c826:	c5 f8 11 26          	vmovups %xmm4,(%rsi)
  60c82a:	c5 f8 11 6e 10       	vmovups %xmm5,0x10(%rsi)
  60c82f:	c4 c1 40 14 e6       	vunpcklps %xmm14,%xmm7,%xmm4
  60c834:	c4 c1 40 15 ee       	vunpckhps %xmm14,%xmm7,%xmm5
  60c839:	c5 f8 11 66 20       	vmovups %xmm4,0x20(%rsi)
  60c83e:	c5 f8 11 6e 30       	vmovups %xmm5,0x30(%rsi)
  60c843:	c4 c1 00 14 e2       	vunpcklps %xmm10,%xmm15,%xmm4
  60c848:	c4 c1 00 15 ea       	vunpckhps %xmm10,%xmm15,%xmm5
  60c84d:	c5 f8 11 66 40       	vmovups %xmm4,0x40(%rsi)
  60c852:	c5 f8 11 6e 50       	vmovups %xmm5,0x50(%rsi)
  60c857:	62 b1 34 08 14 e0    	vunpcklps %xmm16,%xmm9,%xmm4
  60c85d:	62 b1 34 08 15 e8    	vunpckhps %xmm16,%xmm9,%xmm5
  60c863:	c5 f8 11 66 60       	vmovups %xmm4,0x60(%rsi)
  60c868:	c5 f8 11 6e 70       	vmovups %xmm5,0x70(%rsi)
  60c86d:	c5 c8 14 e3          	vunpcklps %xmm3,%xmm6,%xmm4
  60c871:	c5 c8 15 db          	vunpckhps %xmm3,%xmm6,%xmm3
  60c875:	c5 f8 11 a6 80 00 00 	vmovups %xmm4,0x80(%rsi)
  60c87c:	00 
  60c87d:	c5 f8 11 9e 90 00 00 	vmovups %xmm3,0x90(%rsi)
  60c884:	00 
  60c885:	c4 c1 18 14 db       	vunpcklps %xmm11,%xmm12,%xmm3
  60c88a:	c4 c1 18 15 e3       	vunpckhps %xmm11,%xmm12,%xmm4
  60c88f:	c5 f8 11 9e a0 00 00 	vmovups %xmm3,0xa0(%rsi)
  60c896:	00 
  60c897:	c5 f8 11 a6 b0 00 00 	vmovups %xmm4,0xb0(%rsi)
  60c89e:	00 
  60c89f:	c4 c1 70 14 d8       	vunpcklps %xmm8,%xmm1,%xmm3
  60c8a4:	c4 c1 70 15 c8       	vunpckhps %xmm8,%xmm1,%xmm1
  60c8a9:	c5 f8 11 9e c0 00 00 	vmovups %xmm3,0xc0(%rsi)
  60c8b0:	00 
  60c8b1:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  60c8b8:	00 
  60c8b9:	c5 f8 14 ca          	vunpcklps %xmm2,%xmm0,%xmm1
  60c8bd:	c5 f8 15 c2          	vunpckhps %xmm2,%xmm0,%xmm0
  60c8c1:	c5 f8 11 8e e0 00 00 	vmovups %xmm1,0xe0(%rsi)
  60c8c8:	00 
  60c8c9:	c5 f8 11 86 f0 00 00 	vmovups %xmm0,0xf0(%rsi)
  60c8d0:	00 
  60c8d1:	c5 f8 77             	vzeroupper
  60c8d4:	c3                   	ret
  60c8d5:	cc                   	int3
  60c8d6:	cc                   	int3
  60c8d7:	cc                   	int3
  60c8d8:	cc                   	int3
  60c8d9:	cc                   	int3
  60c8da:	cc                   	int3
  60c8db:	cc                   	int3
  60c8dc:	cc                   	int3
  60c8dd:	cc                   	int3
  60c8de:	cc                   	int3
  60c8df:	cc                   	int3
