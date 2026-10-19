
target/ticket19/selection-fix/page-storage-stack/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afe500 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afe500:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  afe507:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  afe50b:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  afe510:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  afe515:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  afe51b:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  afe520:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  afe526:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  afe52b:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  afe532:	00 
  afe533:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  afe538:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  afe53e:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  afe543:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  afe549:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  afe550:	00 
  afe551:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  afe558:	00 
  afe559:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  afe55e:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  afe564:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  afe569:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  afe56f:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  afe576:	00 
  afe577:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  afe57e:	00 
  afe57f:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  afe584:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  afe58a:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  afe58f:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  afe595:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  afe59c:	00 
  afe59d:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  afe5a4:	00 
  afe5a5:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  afe5ab:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  afe5b1:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  afe5b7:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  afe5bd:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  afe5c4:	00 
  afe5c5:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  afe5cc:	00 
  afe5cd:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  afe5d3:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  afe5d9:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  afe5df:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  afe5e5:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  afe5ec:	00 
  afe5ed:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  afe5f4:	00 
  afe5f5:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  afe5fb:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  afe601:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  afe607:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  afe60d:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  afe614:	00 
  afe615:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  afe61c:	00 
  afe61d:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  afe624:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  afe62b:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  afe631:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  afe637:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  afe63b:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  afe641:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  afe647:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  afe64d:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  afe653:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  afe659:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  afe65f:	62 61 7c 28 11 7c 24 	vmovups YMMWORD PTR [rsp+0x60],ymm31
  afe666:	03 
  afe667:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  afe66d:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  afe673:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  afe679:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  afe67f:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  afe685:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  afe68b:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  afe691:	62 61 7c 28 11 74 24 	vmovups YMMWORD PTR [rsp+0x160],ymm30
  afe698:	0b 
  afe699:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  afe69d:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  afe6a2:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  afe6a8:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  afe6ad:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  afe6b2:	62 62 7d 28 18 05 a0 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff576ba0]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  afe6b9:	6b 57 ff 
  afe6bc:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  afe6c0:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  afe6c6:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  afe6cc:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  afe6d1:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  afe6d5:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  afe6db:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  afe6e0:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  afe6e6:	c5 7c 11 8c 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm9
  afe6ed:	00 00 
  afe6ef:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  afe6f4:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  afe6f8:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  afe6fc:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  afe700:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  afe706:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  afe70a:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  afe710:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  afe716:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  afe71c:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  afe721:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  afe727:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  afe72d:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  afe733:	c5 7c 11 94 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm10
  afe73a:	00 00 
  afe73c:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  afe742:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  afe748:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  afe74e:	c5 fc 11 7c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm7
  afe754:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  afe758:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  afe75c:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  afe760:	c5 7c 11 b4 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm14
  afe767:	00 00 
  afe769:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  afe76d:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  afe772:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  afe776:	c5 fc 11 6c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm5
  afe77c:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  afe782:	62 e1 7c 28 11 64 24 	vmovups YMMWORD PTR [rsp+0x80],ymm20
  afe789:	04 
  afe78a:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  afe790:	c5 7c 11 a4 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm12
  afe797:	00 00 
  afe799:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  afe79f:	c5 7c 11 ac 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm13
  afe7a6:	00 00 
  afe7a8:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  afe7ae:	c5 fc 11 74 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm6
  afe7b4:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  afe7ba:	62 e1 7c 28 11 44 24 	vmovups YMMWORD PTR [rsp+0xc0],ymm16
  afe7c1:	06 
  afe7c2:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  afe7c8:	c5 7c 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm11
  afe7ce:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  afe7d2:	c5 7c 11 bc 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm15
  afe7d9:	00 00 
  afe7db:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  afe7df:	c5 7c 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm8
  afe7e5:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  afe7ec:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  afe7f2:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  afe7f6:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  afe7fc:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  afe803:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  afe809:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  afe810:	c5 fc 11 64 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm4
  afe816:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  afe81d:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  afe821:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  afe827:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  afe82e:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  afe835:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  afe83c:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  afe843:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  afe847:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  afe84d:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  afe854:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  afe85a:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  afe861:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  afe868:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  afe86c:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  afe872:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  afe879:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  afe880:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  afe885:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  afe88a:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  afe891:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  afe896:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  afe89d:	00 
  afe89e:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  afe8a5:	00 
  afe8a6:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  afe8ab:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  afe8b0:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  afe8b7:	00 
  afe8b8:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  afe8bf:	00 
  afe8c0:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  afe8c7:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  afe8ce:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  afe8d5:	00 
  afe8d6:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  afe8dd:	00 
  afe8de:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  afe8e3:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  afe8e8:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  afe8ef:	00 
  afe8f0:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  afe8f7:	00 
  afe8f8:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  afe8ff:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  afe904:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  afe90b:	00 
  afe90c:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  afe913:	00 
  afe914:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  afe919:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  afe91e:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  afe925:	00 
  afe926:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  afe92d:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  afe934:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  afe93b:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  afe942:	00 
  afe943:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  afe94a:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  afe951:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  afe958:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  afe95e:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  afe964:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  afe96a:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  afe96e:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  afe972:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  afe977:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  afe97d:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  afe983:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  afe98a:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  afe990:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  afe994:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  afe998:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  afe99e:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  afe9a4:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  afe9aa:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  afe9b1:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  afe9b5:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  afe9b9:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  afe9bd:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  afe9c1:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  afe9c5:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  afe9c9:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  afe9cf:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  afe9d3:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  afe9d9:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  afe9df:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  afe9e3:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  afe9e7:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  afe9eb:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  afe9f0:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  afe9f6:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  afe9fb:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  afe9ff:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  afea03:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  afea09:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  afea0f:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  afea13:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  afea17:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  afea1b:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  afea21:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  afea27:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  afea2b:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  afea31:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  afea35:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  afea39:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  afea3d:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  afea43:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  afea48:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  afea4c:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  afea50:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  afea55:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  afea5b:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  afea61:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  afea67:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  afea6b:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  afea6f:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  afea73:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  afea77:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  afea7d:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  afea81:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  afea85:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  afea89:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  afea8d:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  afea93:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  afea99:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  afea9d:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  afeaa2:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  afeaa7:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  afeaab:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  afeaaf:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  afeab5:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  afeabb:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  afeac1:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  afeac5:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  afeac9:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  afeacd:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  afead2:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  afead7:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  afeadc:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  afeae1:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp-0x40],0xd8
  afeae8:	fe d8 
  afeaea:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  afeaf1:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  afeaf8:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  afeafe:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  afeb05:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  afeb0c:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  afeb13:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  afeb1a:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  afeb21:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  afeb28:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  afeb2f:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  afeb36:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  afeb3d:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  afeb44:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  afeb4b:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  afeb52:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  afeb59:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  afeb5f:	c4 e3 7d 18 84 24 80 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x80],0x1
  afeb66:	00 00 00 01 
  afeb6a:	c5 fc 10 8c 24 a0 00 	vmovups ymm1,YMMWORD PTR [rsp+0xa0]
  afeb71:	00 00 
  afeb73:	c4 e3 75 18 8c 24 c0 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0xc0],0x1
  afeb7a:	00 00 00 01 
  afeb7e:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  afeb82:	c5 fc 10 9c 24 e0 00 	vmovups ymm3,YMMWORD PTR [rsp+0xe0]
  afeb89:	00 00 
  afeb8b:	c4 e3 65 18 9c 24 00 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x100],0x1
  afeb92:	01 00 00 01 
  afeb96:	c5 fc 10 a4 24 20 01 	vmovups ymm4,YMMWORD PTR [rsp+0x120]
  afeb9d:	00 00 
  afeb9f:	c4 e3 5d 18 ac 24 40 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x140],0x1
  afeba6:	01 00 00 01 
  afebaa:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  afebae:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  afebb3:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  afebb8:	c5 fc 10 b4 24 60 01 	vmovups ymm6,YMMWORD PTR [rsp+0x160]
  afebbf:	00 00 
  afebc1:	c4 e3 4d 18 b4 24 80 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x180],0x1
  afebc8:	01 00 00 01 
  afebcc:	c5 fc 10 7c 24 e0    	vmovups ymm7,YMMWORD PTR [rsp-0x20]
  afebd2:	c4 63 45 18 44 24 80 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp-0x80],0x1
  afebd9:	01 
  afebda:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  afebdf:	c5 7c 10 0c 24       	vmovups ymm9,YMMWORD PTR [rsp]
  afebe4:	c4 63 35 18 4c 24 20 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0x20],0x1
  afebeb:	01 
  afebec:	c5 7c 10 54 24 40    	vmovups ymm10,YMMWORD PTR [rsp+0x40]
  afebf2:	c4 63 2d 18 54 24 a0 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp-0x60],0x1
  afebf9:	01 
  afebfa:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  afebff:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  afec05:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  afec0b:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  afec10:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  afec15:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  afec1b:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  afec20:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  afec24:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  afec28:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  afec2d:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  afec32:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  afec37:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  afec3c:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  afec41:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  afec46:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  afec4b:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  afec52:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  afec57:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  afec5c:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  afec62:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  afec67:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  afec6c:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  afec73:	00 
  afec74:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  afec7b:	00 
  afec7c:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  afec83:	00 
  afec84:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  afec8b:	00 
  afec8c:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  afec93:	00 
  afec94:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  afec9a:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  afeca0:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  afeca6:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  afecad:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  afecb3:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  afecba:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  afecbf:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  afecc5:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  afecca:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  afecd1:	00 
  afecd2:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  afecd8:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  afecdf:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  afece5:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  afeceb:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  afecf1:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  afecf8:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  afecfe:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  afed05:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  afed0b:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  afed11:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  afed17:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  afed1e:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  afed24:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  afed2b:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  afed31:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  afed37:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  afed3d:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  afed44:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  afed4a:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  afed51:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  afed57:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  afed5d:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  afed63:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  afed6a:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  afed70:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  afed77:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  afed7d:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  afed83:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  afed88:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  afed8f:	00 
  afed90:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  afed95:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  afed9c:	00 
  afed9d:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  afeda3:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  afeda9:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  afedaf:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  afedb6:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  afedbc:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  afedc2:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  afedc8:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  afedce:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  afedd4:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  afedd8:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  afeddd:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  afede2:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  afede6:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  afedec:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  afedf2:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  afedf8:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  afedfe:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  afee04:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  afee0a:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  afee10:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  afee16:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  afee1c:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  afee22:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  afee28:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  afee2e:	c5 fc 11 0c 24       	vmovups YMMWORD PTR [rsp],ymm1
  afee33:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  afee39:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  afee3f:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  afee45:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  afee4b:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  afee51:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  afee57:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  afee5d:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  afee63:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  afee69:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  afee6f:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  afee75:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  afee7b:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  afee81:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  afee86:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  afee8b:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  afee91:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  afee97:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  afee9d:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  afeea3:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  afeea9:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  afeeaf:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  afeeb3:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  afeeb9:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  afeebf:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  afeec5:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  afeecb:	c5 fc 11 54 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm2
  afeed1:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  afeed7:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  afeedc:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  afeee2:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  afeee7:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  afeeed:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  afeef3:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  afeef9:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  afeeff:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  afef05:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  afef0b:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  afef11:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  afef17:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  afef1d:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  afef23:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  afef28:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  afef2d:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  afef32:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  afef38:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  afef3e:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  afef43:	c5 7c 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm9
  afef49:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  afef4f:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  afef53:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  afef59:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  afef5f:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  afef65:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  afef6b:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  afef71:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  afef77:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  afef7d:	c4 62 7d 18 3d 9a 63 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff57639a]        # 75320 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2900>
  afef84:	57 ff 
  afef86:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  afef8c:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  afef92:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  afef97:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  afef9b:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  afefa1:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  afefa7:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  afefab:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  afefb1:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  afefb6:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  afefbc:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  afefc2:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  afefc8:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  afefce:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  afefd4:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  afefd8:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  afefdd:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  afefe1:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  afefe6:	c4 e2 7d 18 3d a5 61 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5761a5]        # 75194 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2774>
  afefed:	57 ff 
  afefef:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  afeff5:	c5 c4 59 54 24 40    	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0x40]
  afeffb:	c5 fc 10 24 24       	vmovups ymm4,YMMWORD PTR [rsp]
  aff000:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  aff006:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  aff00c:	c5 7c 10 54 24 20    	vmovups ymm10,YMMWORD PTR [rsp+0x20]
  aff012:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  aff018:	c5 c4 59 64 24 a0    	vmulps ymm4,ymm7,YMMWORD PTR [rsp-0x60]
  aff01e:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  aff024:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  aff02a:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  aff030:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  aff036:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  aff03c:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  aff042:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  aff048:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  aff04c:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  aff052:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp-0x80]
  aff059:	fc 
  aff05a:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  aff060:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  aff064:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  aff06a:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  aff070:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  aff074:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  aff07a:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  aff080:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  aff085:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  aff08a:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  aff090:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  aff096:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  aff09c:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  aff0a2:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  aff0a8:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  aff0ae:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  aff0b2:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  aff0b8:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  aff0be:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  aff0c2:	c5 7c 28 0d 96 66 57 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff576696]        # 75760 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  aff0c9:	ff 
  aff0ca:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  aff0d0:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  aff0d6:	62 e1 7c 28 28 1d c0 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff577fc0]        # 770a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  aff0dd:	7f 57 ff 
  aff0e0:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  aff0e6:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  aff0ea:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  aff0f0:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  aff0f6:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  aff0fc:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  aff102:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  aff108:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  aff10c:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  aff112:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  aff118:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  aff11d:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  aff123:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  aff129:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  aff12f:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  aff135:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  aff13b:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  aff141:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  aff147:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  aff14d:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  aff153:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  aff159:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  aff15f:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  aff165:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  aff16b:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  aff171:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  aff177:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  aff17d:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  aff183:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  aff189:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  aff18f:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  aff195:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  aff19b:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  aff1a1:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  aff1a7:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  aff1ac:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  aff1b1:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  aff1b6:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  aff1bd:	00 
  aff1be:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  aff1c5:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  aff1cc:	00 
  aff1cd:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  aff1d4:	00 
  aff1d5:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  aff1dc:	00 
  aff1dd:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  aff1e4:	00 
  aff1e5:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  aff1ec:	00 
  aff1ed:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  aff1f4:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  aff1fb:	00 
  aff1fc:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  aff203:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  aff20a:	00 
  aff20b:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  aff212:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  aff219:	00 
  aff21a:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  aff221:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  aff228:	00 
  aff229:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  aff230:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  aff237:	00 
  aff238:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  aff23f:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  aff246:	00 
  aff247:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  aff24e:	00 
  aff24f:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  aff256:	c5 f8 77             	vzeroupper
  aff259:	c3                   	ret
  aff25a:	cc                   	int3
  aff25b:	cc                   	int3
  aff25c:	cc                   	int3
  aff25d:	cc                   	int3
  aff25e:	cc                   	int3
  aff25f:	cc                   	int3
  aff260:	cc                   	int3
  aff261:	cc                   	int3
  aff262:	cc                   	int3
  aff263:	cc                   	int3
  aff264:	cc                   	int3
  aff265:	cc                   	int3
  aff266:	cc                   	int3
  aff267:	cc                   	int3
  aff268:	cc                   	int3
  aff269:	cc                   	int3
  aff26a:	cc                   	int3
  aff26b:	cc                   	int3
  aff26c:	cc                   	int3
  aff26d:	cc                   	int3
  aff26e:	cc                   	int3
  aff26f:	cc                   	int3
  aff270:	cc                   	int3
  aff271:	cc                   	int3
  aff272:	cc                   	int3
  aff273:	cc                   	int3
  aff274:	cc                   	int3
  aff275:	cc                   	int3
  aff276:	cc                   	int3
  aff277:	cc                   	int3
  aff278:	cc                   	int3
  aff279:	cc                   	int3
  aff27a:	cc                   	int3
  aff27b:	cc                   	int3
  aff27c:	cc                   	int3
  aff27d:	cc                   	int3
  aff27e:	cc                   	int3
  aff27f:	cc                   	int3
