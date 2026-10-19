
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ace4c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ace4c0:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  ace4c5:	c5 f8 10 97 80 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0x80]
  ace4cc:	00 
  ace4cd:	c5 f4 c6 c2 88       	vshufps ymm0,ymm1,ymm2,0x88
  ace4d2:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  ace4d8:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  ace4df:	00 
  ace4e0:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  ace4e7:	00 
  ace4e8:	c5 e4 c6 c4 88       	vshufps ymm0,ymm3,ymm4,0x88
  ace4ed:	c4 e3 fd 01 f8 d8    	vpermpd ymm7,ymm0,0xd8
  ace4f3:	c5 cc 5c ef          	vsubps ymm5,ymm6,ymm7
  ace4f7:	c4 e2 7d 18 05 d4 6d 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5a6dd4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ace4fe:	5a ff 
  ace500:	c5 d4 59 e8          	vmulps ymm5,ymm5,ymm0
  ace504:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ace509:	c4 63 fd 01 c1 d8    	vpermpd ymm8,ymm1,0xd8
  ace50f:	c5 e4 c6 cc dd       	vshufps ymm1,ymm3,ymm4,0xdd
  ace514:	c4 63 fd 01 c9 d8    	vpermpd ymm9,ymm1,0xd8
  ace51a:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  ace51f:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  ace523:	c5 78 10 5f 20       	vmovups xmm11,XMMWORD PTR [rdi+0x20]
  ace528:	c4 c1 2c c6 cb dd    	vshufps ymm1,ymm10,ymm11,0xdd
  ace52e:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  ace534:	c4 e2 7d 18 0d 23 6f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a6f23]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ace53b:	5a ff 
  ace53d:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  ace541:	c4 62 65 ac e4       	vfnmadd213ps ymm12,ymm3,ymm4
  ace546:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  ace54a:	c5 7c 10 af f0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xf0]
  ace551:	00 
  ace552:	c5 78 10 b7 10 01 00 	vmovups xmm14,XMMWORD PTR [rdi+0x110]
  ace559:	00 
  ace55a:	c4 41 14 c6 fe 88    	vshufps ymm15,ymm13,ymm14,0x88
  ace560:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  ace566:	62 e1 7c 28 10 87 30 	vmovups ymm16,YMMWORD PTR [rdi+0x30]
  ace56d:	00 00 00 
  ace570:	62 e1 7c 08 10 4f 05 	vmovups xmm17,XMMWORD PTR [rdi+0x50]
  ace577:	62 a1 7c 20 c6 d1 88 	vshufps ymm18,ymm16,ymm17,0x88
  ace57e:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  ace585:	c4 41 14 c6 ee dd    	vshufps ymm13,ymm13,ymm14,0xdd
  ace58b:	62 31 04 28 5c f2    	vsubps ymm14,ymm15,ymm18
  ace591:	c5 0c 59 f0          	vmulps ymm14,ymm14,ymm0
  ace595:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  ace59b:	62 a1 7c 20 c6 c1 dd 	vshufps ymm16,ymm16,ymm17,0xdd
  ace5a2:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  ace5a9:	62 a1 14 28 58 c8    	vaddps ymm17,ymm13,ymm16
  ace5af:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  ace5b3:	c5 fc 10 bf 90 00 00 	vmovups ymm7,YMMWORD PTR [rdi+0x90]
  ace5ba:	00 
  ace5bb:	c4 41 2c c6 d3 88    	vshufps ymm10,ymm10,ymm11,0x88
  ace5c1:	c5 78 10 9f b0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xb0]
  ace5c8:	00 
  ace5c9:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ace5ce:	c4 41 44 c6 cb dd    	vshufps ymm9,ymm7,ymm11,0xdd
  ace5d4:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ace5da:	62 31 04 28 58 fa    	vaddps ymm15,ymm15,ymm18
  ace5e0:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  ace5e6:	62 c2 75 20 ac d1    	vfnmadd213ps ymm18,ymm17,ymm9
  ace5ec:	c4 c1 44 c6 fb 88    	vshufps ymm7,ymm7,ymm11,0x88
  ace5f2:	62 31 0c 28 58 da    	vaddps ymm11,ymm14,ymm18
  ace5f8:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ace5fe:	62 31 14 28 5c e8    	vsubps ymm13,ymm13,ymm16
  ace604:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  ace60a:	62 c2 4d 28 ac c2    	vfnmadd213ps ymm16,ymm6,ymm10
  ace610:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ace614:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  ace618:	62 51 7c 20 5c e0    	vsubps ymm12,ymm16,ymm8
  ace61e:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ace624:	62 51 6c 20 5c f6    	vsubps ymm14,ymm18,ymm14
  ace62a:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  ace630:	62 e2 05 28 ac d7    	vfnmadd213ps ymm18,ymm15,ymm7
  ace636:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  ace63a:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  ace640:	62 c1 6c 20 5c c5    	vsubps ymm16,ymm18,ymm13
  ace646:	62 51 6c 20 58 ed    	vaddps ymm13,ymm18,ymm13
  ace64c:	62 c1 6c 28 5c d3    	vsubps ymm18,ymm2,ymm11
  ace652:	c5 dc 58 db          	vaddps ymm3,ymm4,ymm3
  ace656:	62 b1 1c 28 5c e0    	vsubps ymm4,ymm12,ymm16
  ace65c:	62 31 34 28 58 c9    	vaddps ymm9,ymm9,ymm17
  ace662:	62 c1 54 28 58 ce    	vaddps ymm17,ymm5,ymm14
  ace668:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  ace66c:	c4 41 3c 58 d5       	vaddps ymm10,ymm8,ymm13
  ace671:	c5 04 58 ff          	vaddps ymm15,ymm15,ymm7
  ace675:	c4 c1 64 5c f9       	vsubps ymm7,ymm3,ymm9
  ace67a:	c5 24 58 da          	vaddps ymm11,ymm11,ymm2
  ace67e:	62 c1 4c 28 5c df    	vsubps ymm19,ymm6,ymm15
  ace684:	62 31 1c 28 58 e0    	vaddps ymm12,ymm12,ymm16
  ace68a:	c4 41 54 5c f6       	vsubps ymm14,ymm5,ymm14
  ace68f:	c4 c1 3c 5c d5       	vsubps ymm2,ymm8,ymm13
  ace694:	c5 34 58 eb          	vaddps ymm13,ymm9,ymm3
  ace698:	c5 84 58 de          	vaddps ymm3,ymm15,ymm6
  ace69c:	c4 c3 65 18 ea 01    	vinsertf128 ymm5,ymm3,xmm10,0x1
  ace6a2:	c4 c3 65 06 f2 31    	vperm2f128 ymm6,ymm3,ymm10,0x31
  ace6a8:	c4 63 6d 18 c4 01    	vinsertf128 ymm8,ymm2,xmm4,0x1
  ace6ae:	c4 e3 6d 06 e4 31    	vperm2f128 ymm4,ymm2,ymm4,0x31
  ace6b4:	c4 41 78 28 cc       	vmovaps xmm9,xmm12
  ace6b9:	c4 c1 55 14 d9       	vunpcklpd ymm3,ymm5,ymm9
  ace6be:	62 31 7c 08 28 d3    	vmovaps xmm10,xmm19
  ace6c4:	c4 41 3d 14 fa       	vunpcklpd ymm15,ymm8,ymm10
  ace6c9:	c4 c1 64 c6 d7 88    	vshufps ymm2,ymm3,ymm15,0x88
  ace6cf:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ace6d4:	c4 c1 64 c6 df dd    	vshufps ymm3,ymm3,ymm15,0xdd
  ace6da:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ace6df:	c4 c1 55 15 e9       	vunpckhpd ymm5,ymm5,ymm9
  ace6e4:	c4 41 3d 15 ca       	vunpckhpd ymm9,ymm8,ymm10
  ace6e9:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  ace6ef:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ace6f5:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  ace6fb:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ace700:	c4 43 7d 19 e1 01    	vextractf128 xmm9,ymm12,0x1
  ace706:	c4 c1 4d 14 f1       	vunpcklpd ymm6,ymm6,ymm9
  ace70b:	62 c3 7d 28 19 d9 01 	vextractf32x4 xmm9,ymm19,0x1
  ace712:	c4 c1 5d 14 e1       	vunpcklpd ymm4,ymm4,ymm9
  ace717:	c5 4c c6 cc 88       	vshufps ymm9,ymm6,ymm4,0x88
  ace71c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ace722:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  ace727:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  ace72c:	62 33 15 28 18 e1 01 	vinsertf32x4 ymm12,ymm13,xmm17,0x1
  ace733:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  ace73a:	62 33 0d 28 18 fa 01 	vinsertf32x4 ymm15,ymm14,xmm18,0x1
  ace741:	62 33 8d 28 23 f2 03 	vshuff64x2 ymm14,ymm14,ymm18,0x3
  ace748:	62 c1 7c 08 28 c3    	vmovaps xmm16,xmm11
  ace74e:	62 31 9d 28 14 d0    	vunpcklpd ymm10,ymm12,ymm16
  ace754:	62 e1 7c 08 28 cf    	vmovaps xmm17,xmm7
  ace75a:	62 a1 85 28 14 d1    	vunpcklpd ymm18,ymm15,ymm17
  ace760:	62 b1 2c 28 c6 e2 88 	vshufps ymm4,ymm10,ymm18,0x88
  ace767:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ace76c:	62 31 2c 28 c6 d2 dd 	vshufps ymm10,ymm10,ymm18,0xdd
  ace773:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ace779:	62 31 9d 28 15 e0    	vunpckhpd ymm12,ymm12,ymm16
  ace77f:	62 31 85 28 15 f9    	vunpckhpd ymm15,ymm15,ymm17
  ace785:	62 c1 1c 28 c6 c7 88 	vshufps ymm16,ymm12,ymm15,0x88
  ace78c:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  ace793:	c4 41 1c c6 e7 dd    	vshufps ymm12,ymm12,ymm15,0xdd
  ace799:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ace79f:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  ace7a5:	c4 41 15 14 db       	vunpcklpd ymm11,ymm13,ymm11
  ace7aa:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  ace7b0:	c5 8d 14 ff          	vunpcklpd ymm7,ymm14,ymm7
  ace7b4:	c5 24 c6 ef 88       	vshufps ymm13,ymm11,ymm7,0x88
  ace7b9:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  ace7bf:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  ace7c4:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  ace7c9:	c5 7c 10 72 40       	vmovups ymm14,YMMWORD PTR [rdx+0x40]
  ace7ce:	c5 7c 10 7a 60       	vmovups ymm15,YMMWORD PTR [rdx+0x60]
  ace7d3:	62 e1 7c 28 10 4a 04 	vmovups ymm17,YMMWORD PTR [rdx+0x80]
  ace7da:	62 e1 7c 28 10 52 05 	vmovups ymm18,YMMWORD PTR [rdx+0xa0]
  ace7e1:	62 b1 3c 28 59 f9    	vmulps ymm7,ymm8,ymm17
  ace7e7:	62 b2 7d 20 bc fa    	vfnmadd231ps ymm7,ymm16,ymm18
  ace7ed:	62 a1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm17
  ace7f3:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  ace7fa:	62 a2 3d 28 b8 c2    	vfmadd231ps ymm16,ymm8,ymm18
  ace800:	c5 7c 10 82 20 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x120]
  ace807:	00 
  ace808:	62 a1 34 28 59 d1    	vmulps ymm18,ymm9,ymm17
  ace80e:	62 c2 15 28 bc d0    	vfnmadd231ps ymm18,ymm13,ymm8
  ace814:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  ace81a:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  ace821:	c4 42 35 b8 e8       	vfmadd231ps ymm13,ymm9,ymm8
  ace826:	c5 7c 10 82 e0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xe0]
  ace82d:	00 
  ace82e:	62 31 54 28 59 c9    	vmulps ymm9,ymm5,ymm17
  ace834:	c4 42 1d bc c8       	vfnmadd231ps ymm9,ymm12,ymm8
  ace839:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  ace83f:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  ace846:	c4 42 55 b8 e0       	vfmadd231ps ymm12,ymm5,ymm8
  ace84b:	c5 fc 10 aa 60 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x160]
  ace852:	00 
  ace853:	62 31 4c 28 59 c1    	vmulps ymm8,ymm6,ymm17
  ace859:	c4 62 25 bc c5       	vfnmadd231ps ymm8,ymm11,ymm5
  ace85e:	62 31 24 28 59 d9    	vmulps ymm11,ymm11,ymm17
  ace864:	62 a1 44 28 58 ca    	vaddps ymm17,ymm7,ymm18
  ace86a:	c4 62 4d b8 dd       	vfmadd231ps ymm11,ymm6,ymm5
  ace86f:	62 b1 6c 28 58 e9    	vaddps ymm5,ymm2,ymm17
  ace875:	c5 8c 59 f3          	vmulps ymm6,ymm14,ymm3
  ace879:	c4 c2 2d bc f7       	vfnmadd231ps ymm6,ymm10,ymm15
  ace87e:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  ace883:	c5 3c 58 f6          	vaddps ymm14,ymm8,ymm6
  ace887:	c4 42 65 b8 d7       	vfmadd231ps ymm10,ymm3,ymm15
  ace88c:	c4 c1 34 58 de       	vaddps ymm3,ymm9,ymm14
  ace891:	62 51 7c 20 58 fd    	vaddps ymm15,ymm16,ymm13
  ace897:	62 e2 75 28 ac ca    	vfnmadd213ps ymm17,ymm1,ymm2
  ace89d:	c5 84 58 d4          	vaddps ymm2,ymm15,ymm4
  ace8a1:	c4 42 75 bc ce       	vfnmadd231ps ymm9,ymm1,ymm14
  ace8a6:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ace8ab:	c4 62 75 ac fc       	vfnmadd213ps ymm15,ymm1,ymm4
  ace8b0:	c4 c1 1c 58 e6       	vaddps ymm4,ymm12,ymm14
  ace8b5:	c4 62 0d bc e1       	vfnmadd231ps ymm12,ymm14,ymm1
  ace8ba:	62 d1 7c 20 5c cd    	vsubps ymm1,ymm16,ymm13
  ace8c0:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ace8c5:	62 b1 44 28 5c fa    	vsubps ymm7,ymm7,ymm18
  ace8cb:	c5 f4 59 c8          	vmulps ymm1,ymm1,ymm0
  ace8cf:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  ace8d3:	62 71 74 20 58 c1    	vaddps ymm8,ymm17,ymm1
  ace8d9:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ace8dd:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  ace8e1:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  ace8e5:	c4 c1 34 58 f2       	vaddps ymm6,ymm9,ymm10
  ace8ea:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  ace8f0:	c5 3c 5c de          	vsubps ymm11,ymm8,ymm6
  ace8f4:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  ace8f9:	c5 04 5c d7          	vsubps ymm10,ymm15,ymm7
  ace8fd:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  ace901:	c5 1c 5c e8          	vsubps ymm13,ymm12,ymm0
  ace905:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  ace909:	c4 41 2c 5c e5       	vsubps ymm12,ymm10,ymm13
  ace90e:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ace912:	c5 34 58 c1          	vaddps ymm8,ymm9,ymm1
  ace916:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  ace91b:	c5 44 58 e8          	vaddps ymm13,ymm7,ymm0
  ace91f:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  ace924:	c5 54 5c cb          	vsubps ymm9,ymm5,ymm3
  ace928:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  ace92c:	c5 ec 5c fc          	vsubps ymm7,ymm2,ymm4
  ace930:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ace934:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  ace938:	c5 fc 28 25 a0 88 5a 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5a88a0]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ace93f:	ff 
  ace940:	c4 e3 7d 19 dd 01    	vextractf128 xmm5,ymm3,0x1
  ace946:	62 f2 5d 28 7f da    	vpermt2ps ymm3,ymm4,ymm2
  ace94c:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  ace950:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ace956:	c5 d0 14 d2          	vunpcklps xmm2,xmm5,xmm2
  ace95a:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  ace95f:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  ace965:	62 52 5d 28 7f dc    	vpermt2ps ymm11,ymm4,ymm12
  ace96b:	c5 7c 11 5e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm11
  ace970:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  ace976:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ace97a:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  ace97f:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  ace985:	62 52 5d 28 7f c5    	vpermt2ps ymm8,ymm4,ymm13
  ace98b:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  ace990:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  ace996:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ace99a:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  ace9a1:	00 
  ace9a2:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  ace9a8:	62 72 5d 28 7f cf    	vpermt2ps ymm9,ymm4,ymm7
  ace9ae:	c5 7c 11 8e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm9
  ace9b5:	00 
  ace9b6:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  ace9bc:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ace9c0:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  ace9c7:	00 
  ace9c8:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  ace9ce:	62 d2 5d 28 7f f2    	vpermt2ps ymm6,ymm4,ymm10
  ace9d4:	c5 fc 11 b6 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm6
  ace9db:	00 
  ace9dc:	c4 63 7d 19 d3 01    	vextractf128 xmm3,ymm10,0x1
  ace9e2:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ace9e6:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  ace9ed:	00 
  ace9ee:	62 f2 75 28 77 e0    	vpermi2ps ymm4,ymm1,ymm0
  ace9f4:	c5 fc 11 a6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm4
  ace9fb:	00 
  ace9fc:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acea02:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  acea08:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  acea0c:	c5 f8 11 86 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm0
  acea13:	00 
  acea14:	c5 f8 77             	vzeroupper
  acea17:	c3                   	ret
