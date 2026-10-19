
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aee400 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aee400:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  aee407:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  aee40b:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  aee410:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  aee415:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  aee41b:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  aee420:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  aee426:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  aee42b:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  aee432:	00 
  aee433:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  aee438:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  aee43e:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  aee443:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  aee449:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  aee450:	00 
  aee451:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  aee458:	00 
  aee459:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  aee45e:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  aee464:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  aee469:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  aee46f:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  aee476:	00 
  aee477:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  aee47e:	00 
  aee47f:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  aee484:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  aee48a:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  aee48f:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  aee495:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  aee49c:	00 
  aee49d:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  aee4a4:	00 
  aee4a5:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  aee4ab:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  aee4b1:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  aee4b7:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  aee4bd:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  aee4c4:	00 
  aee4c5:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  aee4cc:	00 
  aee4cd:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  aee4d3:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  aee4d9:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  aee4df:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  aee4e5:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  aee4ec:	00 
  aee4ed:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  aee4f4:	00 
  aee4f5:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  aee4fb:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  aee501:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  aee507:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  aee50d:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  aee514:	00 
  aee515:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  aee51c:	00 
  aee51d:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  aee524:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  aee52b:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  aee531:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  aee537:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  aee53b:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  aee541:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  aee547:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  aee54d:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  aee553:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  aee559:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  aee55f:	62 61 7c 28 11 7c 24 	vmovups YMMWORD PTR [rsp+0x60],ymm31
  aee566:	03 
  aee567:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  aee56d:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  aee573:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  aee579:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  aee57f:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  aee585:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  aee58b:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  aee591:	62 61 7c 28 11 74 24 	vmovups YMMWORD PTR [rsp+0x160],ymm30
  aee598:	0b 
  aee599:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  aee59d:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  aee5a2:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  aee5a8:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  aee5ad:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  aee5b2:	62 62 7d 28 18 05 80 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff586c80]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  aee5b9:	6c 58 ff 
  aee5bc:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  aee5c0:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  aee5c6:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  aee5cc:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  aee5d1:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  aee5d5:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  aee5db:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  aee5e0:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  aee5e6:	c5 7c 11 8c 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm9
  aee5ed:	00 00 
  aee5ef:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  aee5f4:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  aee5f8:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  aee5fc:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  aee600:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  aee606:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  aee60a:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  aee610:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  aee616:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  aee61c:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  aee621:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  aee627:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  aee62d:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  aee633:	c5 7c 11 94 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm10
  aee63a:	00 00 
  aee63c:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  aee642:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  aee648:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  aee64e:	c5 fc 11 7c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm7
  aee654:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  aee658:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  aee65c:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  aee660:	c5 7c 11 b4 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm14
  aee667:	00 00 
  aee669:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  aee66d:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  aee672:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  aee676:	c5 fc 11 6c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm5
  aee67c:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  aee682:	62 e1 7c 28 11 64 24 	vmovups YMMWORD PTR [rsp+0x80],ymm20
  aee689:	04 
  aee68a:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  aee690:	c5 7c 11 a4 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm12
  aee697:	00 00 
  aee699:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  aee69f:	c5 7c 11 ac 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm13
  aee6a6:	00 00 
  aee6a8:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  aee6ae:	c5 fc 11 74 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm6
  aee6b4:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  aee6ba:	62 e1 7c 28 11 44 24 	vmovups YMMWORD PTR [rsp+0xc0],ymm16
  aee6c1:	06 
  aee6c2:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  aee6c8:	c5 7c 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm11
  aee6ce:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  aee6d2:	c5 7c 11 bc 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm15
  aee6d9:	00 00 
  aee6db:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  aee6df:	c5 7c 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm8
  aee6e5:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  aee6ec:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  aee6f2:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  aee6f6:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  aee6fc:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  aee703:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  aee709:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  aee710:	c5 fc 11 64 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm4
  aee716:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  aee71d:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  aee721:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  aee727:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  aee72e:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  aee735:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  aee73c:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  aee743:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  aee747:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  aee74d:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  aee754:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  aee75a:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  aee761:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  aee768:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  aee76c:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  aee772:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  aee779:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  aee780:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  aee785:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  aee78a:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  aee791:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  aee796:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  aee79d:	00 
  aee79e:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  aee7a5:	00 
  aee7a6:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  aee7ab:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  aee7b0:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  aee7b7:	00 
  aee7b8:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  aee7bf:	00 
  aee7c0:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  aee7c7:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  aee7ce:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  aee7d5:	00 
  aee7d6:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  aee7dd:	00 
  aee7de:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  aee7e3:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  aee7e8:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  aee7ef:	00 
  aee7f0:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  aee7f7:	00 
  aee7f8:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  aee7ff:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  aee804:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  aee80b:	00 
  aee80c:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  aee813:	00 
  aee814:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  aee819:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  aee81e:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  aee825:	00 
  aee826:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  aee82d:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  aee834:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  aee83b:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  aee842:	00 
  aee843:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  aee84a:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  aee851:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  aee858:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  aee85e:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  aee864:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  aee86a:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  aee86e:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  aee872:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  aee877:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  aee87d:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  aee883:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  aee88a:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  aee890:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  aee894:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  aee898:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  aee89e:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  aee8a4:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  aee8aa:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  aee8b1:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  aee8b5:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  aee8b9:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  aee8bd:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  aee8c1:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  aee8c5:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  aee8c9:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  aee8cf:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  aee8d3:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  aee8d9:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  aee8df:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  aee8e3:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  aee8e7:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  aee8eb:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  aee8f0:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  aee8f6:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  aee8fb:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  aee8ff:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  aee903:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  aee909:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  aee90f:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  aee913:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  aee917:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  aee91b:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  aee921:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  aee927:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  aee92b:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  aee931:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  aee935:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  aee939:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  aee93d:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  aee943:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  aee948:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  aee94c:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  aee950:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  aee955:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  aee95b:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  aee961:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  aee967:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  aee96b:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  aee96f:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  aee973:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  aee977:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  aee97d:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  aee981:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  aee985:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  aee989:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  aee98d:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  aee993:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  aee999:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  aee99d:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  aee9a2:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  aee9a7:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  aee9ab:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  aee9af:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  aee9b5:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  aee9bb:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  aee9c1:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  aee9c5:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  aee9c9:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  aee9cd:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  aee9d2:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  aee9d7:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  aee9dc:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  aee9e1:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp-0x40],0xd8
  aee9e8:	fe d8 
  aee9ea:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  aee9f1:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  aee9f8:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  aee9fe:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  aeea05:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  aeea0c:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  aeea13:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  aeea1a:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  aeea21:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  aeea28:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  aeea2f:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  aeea36:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  aeea3d:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  aeea44:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  aeea4b:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  aeea52:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  aeea59:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  aeea5f:	c4 e3 7d 18 84 24 80 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x80],0x1
  aeea66:	00 00 00 01 
  aeea6a:	c5 fc 10 8c 24 a0 00 	vmovups ymm1,YMMWORD PTR [rsp+0xa0]
  aeea71:	00 00 
  aeea73:	c4 e3 75 18 8c 24 c0 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0xc0],0x1
  aeea7a:	00 00 00 01 
  aeea7e:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  aeea82:	c5 fc 10 9c 24 e0 00 	vmovups ymm3,YMMWORD PTR [rsp+0xe0]
  aeea89:	00 00 
  aeea8b:	c4 e3 65 18 9c 24 00 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x100],0x1
  aeea92:	01 00 00 01 
  aeea96:	c5 fc 10 a4 24 20 01 	vmovups ymm4,YMMWORD PTR [rsp+0x120]
  aeea9d:	00 00 
  aeea9f:	c4 e3 5d 18 ac 24 40 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x140],0x1
  aeeaa6:	01 00 00 01 
  aeeaaa:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  aeeaae:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  aeeab3:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  aeeab8:	c5 fc 10 b4 24 60 01 	vmovups ymm6,YMMWORD PTR [rsp+0x160]
  aeeabf:	00 00 
  aeeac1:	c4 e3 4d 18 b4 24 80 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x180],0x1
  aeeac8:	01 00 00 01 
  aeeacc:	c5 fc 10 7c 24 e0    	vmovups ymm7,YMMWORD PTR [rsp-0x20]
  aeead2:	c4 63 45 18 44 24 80 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp-0x80],0x1
  aeead9:	01 
  aeeada:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  aeeadf:	c5 7c 10 0c 24       	vmovups ymm9,YMMWORD PTR [rsp]
  aeeae4:	c4 63 35 18 4c 24 20 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0x20],0x1
  aeeaeb:	01 
  aeeaec:	c5 7c 10 54 24 40    	vmovups ymm10,YMMWORD PTR [rsp+0x40]
  aeeaf2:	c4 63 2d 18 54 24 a0 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp-0x60],0x1
  aeeaf9:	01 
  aeeafa:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  aeeaff:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  aeeb05:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  aeeb0b:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  aeeb10:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aeeb15:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  aeeb1b:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aeeb20:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  aeeb24:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  aeeb28:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  aeeb2d:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  aeeb32:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  aeeb37:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  aeeb3c:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  aeeb41:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  aeeb46:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  aeeb4b:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  aeeb52:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  aeeb57:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  aeeb5c:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  aeeb62:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  aeeb67:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  aeeb6c:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  aeeb73:	00 
  aeeb74:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  aeeb7b:	00 
  aeeb7c:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  aeeb83:	00 
  aeeb84:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  aeeb8b:	00 
  aeeb8c:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  aeeb93:	00 
  aeeb94:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  aeeb9a:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  aeeba0:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  aeeba6:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  aeebad:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  aeebb3:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  aeebba:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  aeebbf:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  aeebc5:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  aeebca:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  aeebd1:	00 
  aeebd2:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  aeebd8:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  aeebdf:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  aeebe5:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  aeebeb:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  aeebf1:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  aeebf8:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  aeebfe:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  aeec05:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  aeec0b:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  aeec11:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  aeec17:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  aeec1e:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  aeec24:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  aeec2b:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  aeec31:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  aeec37:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  aeec3d:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  aeec44:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  aeec4a:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  aeec51:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  aeec57:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  aeec5d:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  aeec63:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  aeec6a:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  aeec70:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  aeec77:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  aeec7d:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  aeec83:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  aeec88:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  aeec8f:	00 
  aeec90:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  aeec95:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  aeec9c:	00 
  aeec9d:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  aeeca3:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  aeeca9:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  aeecaf:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  aeecb6:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  aeecbc:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  aeecc2:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  aeecc8:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  aeecce:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  aeecd4:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  aeecd8:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  aeecdd:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  aeece2:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  aeece6:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  aeecec:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  aeecf2:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  aeecf8:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  aeecfe:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  aeed04:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  aeed0a:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  aeed10:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  aeed16:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  aeed1c:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  aeed22:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  aeed28:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  aeed2e:	c5 fc 11 0c 24       	vmovups YMMWORD PTR [rsp],ymm1
  aeed33:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  aeed39:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  aeed3f:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  aeed45:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  aeed4b:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  aeed51:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  aeed57:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  aeed5d:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  aeed63:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  aeed69:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  aeed6f:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  aeed75:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  aeed7b:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  aeed81:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  aeed86:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  aeed8b:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  aeed91:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  aeed97:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  aeed9d:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  aeeda3:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  aeeda9:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  aeedaf:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  aeedb3:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  aeedb9:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  aeedbf:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  aeedc5:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  aeedcb:	c5 fc 11 54 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm2
  aeedd1:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  aeedd7:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  aeeddc:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  aeede2:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  aeede7:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  aeeded:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  aeedf3:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  aeedf9:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  aeedff:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  aeee05:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  aeee0b:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  aeee11:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  aeee17:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  aeee1d:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  aeee23:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  aeee28:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  aeee2d:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  aeee32:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  aeee38:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  aeee3e:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  aeee43:	c5 7c 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm9
  aeee49:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  aeee4f:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  aeee53:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  aeee59:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  aeee5f:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  aeee65:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  aeee6b:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  aeee71:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  aeee77:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  aeee7d:	c4 62 7d 18 3d 7a 64 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff58647a]        # 75300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2900>
  aeee84:	58 ff 
  aeee86:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  aeee8c:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  aeee92:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  aeee97:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  aeee9b:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  aeeea1:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  aeeea7:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  aeeeab:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  aeeeb1:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  aeeeb6:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  aeeebc:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  aeeec2:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  aeeec8:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  aeeece:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  aeeed4:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  aeeed8:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  aeeedd:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  aeeee1:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  aeeee6:	c4 e2 7d 18 3d 85 62 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff586285]        # 75174 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2774>
  aeeeed:	58 ff 
  aeeeef:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  aeeef5:	c5 c4 59 54 24 40    	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0x40]
  aeeefb:	c5 fc 10 24 24       	vmovups ymm4,YMMWORD PTR [rsp]
  aeef00:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  aeef06:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  aeef0c:	c5 7c 10 54 24 20    	vmovups ymm10,YMMWORD PTR [rsp+0x20]
  aeef12:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  aeef18:	c5 c4 59 64 24 a0    	vmulps ymm4,ymm7,YMMWORD PTR [rsp-0x60]
  aeef1e:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  aeef24:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  aeef2a:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  aeef30:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  aeef36:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  aeef3c:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  aeef42:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  aeef48:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  aeef4c:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  aeef52:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp-0x80]
  aeef59:	fc 
  aeef5a:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  aeef60:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  aeef64:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  aeef6a:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  aeef70:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  aeef74:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  aeef7a:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  aeef80:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  aeef85:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  aeef8a:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  aeef90:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  aeef96:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  aeef9c:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  aeefa2:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  aeefa8:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  aeefae:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  aeefb2:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  aeefb8:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  aeefbe:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  aeefc2:	c5 7c 28 0d 76 67 58 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff586776]        # 75740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  aeefc9:	ff 
  aeefca:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  aeefd0:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  aeefd6:	62 e1 7c 28 28 1d a0 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff5880a0]        # 77080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  aeefdd:	80 58 ff 
  aeefe0:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  aeefe6:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  aeefea:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  aeeff0:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  aeeff6:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  aeeffc:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  aef002:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  aef008:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  aef00c:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  aef012:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  aef018:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  aef01d:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  aef023:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  aef029:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  aef02f:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  aef035:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  aef03b:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  aef041:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  aef047:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  aef04d:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  aef053:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  aef059:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  aef05f:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  aef065:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  aef06b:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  aef071:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  aef077:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  aef07d:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  aef083:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  aef089:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  aef08f:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  aef095:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  aef09b:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  aef0a1:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  aef0a7:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  aef0ac:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  aef0b1:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  aef0b6:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  aef0bd:	00 
  aef0be:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  aef0c5:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  aef0cc:	00 
  aef0cd:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  aef0d4:	00 
  aef0d5:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  aef0dc:	00 
  aef0dd:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  aef0e4:	00 
  aef0e5:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  aef0ec:	00 
  aef0ed:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  aef0f4:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  aef0fb:	00 
  aef0fc:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  aef103:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  aef10a:	00 
  aef10b:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  aef112:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  aef119:	00 
  aef11a:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  aef121:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  aef128:	00 
  aef129:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  aef130:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  aef137:	00 
  aef138:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  aef13f:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  aef146:	00 
  aef147:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  aef14e:	00 
  aef14f:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  aef156:	c5 f8 77             	vzeroupper
  aef159:	c3                   	ret
  aef15a:	cc                   	int3
  aef15b:	cc                   	int3
  aef15c:	cc                   	int3
  aef15d:	cc                   	int3
  aef15e:	cc                   	int3
  aef15f:	cc                   	int3
  aef160:	cc                   	int3
  aef161:	cc                   	int3
  aef162:	cc                   	int3
  aef163:	cc                   	int3
  aef164:	cc                   	int3
  aef165:	cc                   	int3
  aef166:	cc                   	int3
  aef167:	cc                   	int3
  aef168:	cc                   	int3
  aef169:	cc                   	int3
  aef16a:	cc                   	int3
  aef16b:	cc                   	int3
  aef16c:	cc                   	int3
  aef16d:	cc                   	int3
  aef16e:	cc                   	int3
  aef16f:	cc                   	int3
  aef170:	cc                   	int3
  aef171:	cc                   	int3
  aef172:	cc                   	int3
  aef173:	cc                   	int3
  aef174:	cc                   	int3
  aef175:	cc                   	int3
  aef176:	cc                   	int3
  aef177:	cc                   	int3
  aef178:	cc                   	int3
  aef179:	cc                   	int3
  aef17a:	cc                   	int3
  aef17b:	cc                   	int3
  aef17c:	cc                   	int3
  aef17d:	cc                   	int3
  aef17e:	cc                   	int3
  aef17f:	cc                   	int3
