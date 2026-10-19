
target/ticket19/selection-fix/large-storage-crossover/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000be8300 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  be8300:	55                   	push   rbp
  be8301:	48 89 e5             	mov    rbp,rsp
  be8304:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  be8308:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  be830f:	48 c1 e2 07          	shl    rdx,0x7
  be8313:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  be8317:	31 d2                	xor    edx,edx
  be8319:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  be8320:	00 
  be8321:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  be8326:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  be832d:	00 00 00 
  be8330:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  be8337:	00 
  be8338:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  be833d:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  be8342:	c5 7c 10 44 17 20    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x20]
  be8348:	c4 41 7c c6 c8 88    	vshufps ymm9,ymm0,ymm8,0x88
  be834e:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  be8354:	c4 c1 7c c6 c0 dd    	vshufps ymm0,ymm0,ymm8,0xdd
  be835a:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  be8360:	c5 fc 10 44 17 50    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x50]
  be8366:	c5 7c 10 54 17 70    	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x70]
  be836c:	c4 41 7c c6 da 88    	vshufps ymm11,ymm0,ymm10,0x88
  be8372:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  be8378:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  be837e:	c5 7c 10 94 17 a0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xa0]
  be8385:	00 00 
  be8387:	c5 7c 10 a4 17 c0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  be838e:	00 00 
  be8390:	c4 63 fd 01 e8 d8    	vpermpd ymm13,ymm0,0xd8
  be8396:	c4 c1 2c c6 c4 88    	vshufps ymm0,ymm10,ymm12,0x88
  be839c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  be83a2:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  be83a8:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  be83ae:	c5 7c 10 a4 17 f0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xf0]
  be83b5:	00 00 
  be83b7:	c5 7c 10 b4 17 10 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x110]
  be83be:	00 00 
  be83c0:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  be83c6:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  be83cc:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  be83d2:	c5 7c 10 b4 17 40 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x140]
  be83d9:	00 00 
  be83db:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x160]
  be83e2:	0b 
  be83e3:	62 c3 fd 28 01 cc d8 	vpermpd ymm17,ymm12,0xd8
  be83ea:	62 31 0c 28 c6 e0 88 	vshufps ymm12,ymm14,ymm16,0x88
  be83f1:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  be83f7:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  be83fe:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  be8404:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x190]
  be840b:	90 01 00 00 
  be840f:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1b0]
  be8416:	b0 01 00 00 
  be841a:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  be8421:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  be8428:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  be842f:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1e0]
  be8436:	0f 
  be8437:	62 e1 7c 28 10 64 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x200]
  be843e:	10 
  be843f:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  be8446:	62 a1 6c 20 c6 ec 88 	vshufps ymm21,ymm18,ymm20,0x88
  be844d:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  be8454:	62 a1 6c 20 c6 d4 dd 	vshufps ymm18,ymm18,ymm20,0xdd
  be845b:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  be8462:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x230]
  be8469:	30 02 00 00 
  be846d:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x250]
  be8474:	50 02 00 00 
  be8478:	62 a1 5c 20 c6 fe 88 	vshufps ymm23,ymm20,ymm22,0x88
  be847f:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  be8486:	62 a1 5c 20 c6 e6 dd 	vshufps ymm20,ymm20,ymm22,0xdd
  be848d:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  be8494:	62 c1 34 28 58 f4    	vaddps ymm22,ymm9,ymm12
  be849a:	62 21 7c 28 58 c5    	vaddps ymm24,ymm0,ymm21
  be84a0:	62 01 4c 20 58 c8    	vaddps ymm25,ymm22,ymm24
  be84a6:	62 21 24 28 58 d3    	vaddps ymm26,ymm11,ymm19
  be84ac:	62 21 04 28 58 df    	vaddps ymm27,ymm15,ymm23
  be84b2:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  be84b8:	62 41 3c 28 58 ee    	vaddps ymm29,ymm8,ymm14
  be84be:	62 21 2c 28 58 f2    	vaddps ymm30,ymm10,ymm18
  be84c4:	62 21 14 28 58 f8    	vaddps ymm31,ymm13,ymm16
  be84ca:	62 91 14 20 58 ce    	vaddps ymm1,ymm29,ymm30
  be84d0:	62 b1 74 20 58 d4    	vaddps ymm2,ymm17,ymm20
  be84d6:	62 f1 04 20 58 da    	vaddps ymm3,ymm31,ymm2
  be84dc:	c4 c1 34 5c e4       	vsubps ymm4,ymm9,ymm12
  be84e1:	62 91 34 20 58 ec    	vaddps ymm5,ymm25,ymm28
  be84e7:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  be84ed:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  be84f1:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  be84f7:	c5 74 58 e3          	vaddps ymm12,ymm1,ymm3
  be84fb:	62 a1 14 28 5c c0    	vsubps ymm16,ymm13,ymm16
  be8501:	62 31 24 28 58 e8    	vaddps ymm13,ymm11,ymm16
  be8507:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  be850d:	c4 e2 7d 18 35 0e 74 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff4b740e]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  be8514:	4b ff 
  be8516:	62 e1 14 28 59 d6    	vmulps ymm18,ymm13,ymm6
  be851c:	62 31 04 28 5c ff    	vsubps ymm15,ymm15,ymm23
  be8522:	62 51 74 20 5c ef    	vsubps ymm13,ymm17,ymm15
  be8528:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  be852d:	62 e1 14 28 59 e6    	vmulps ymm20,ymm13,ymm6
  be8533:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  be8539:	c5 3c 58 e8          	vaddps ymm13,ymm8,ymm0
  be853d:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  be8543:	c5 24 59 de          	vmulps ymm11,ymm11,ymm6
  be8547:	62 31 04 28 58 f1    	vaddps ymm14,ymm15,ymm17
  be854d:	c5 0c 59 fe          	vmulps ymm15,ymm14,ymm6
  be8551:	62 81 4c 20 5c c0    	vsubps ymm16,ymm22,ymm24
  be8557:	62 21 6c 20 58 c4    	vaddps ymm24,ymm18,ymm20
  be855d:	62 f1 04 20 5c d2    	vsubps ymm2,ymm31,ymm2
  be8563:	62 e1 7c 20 58 ca    	vaddps ymm17,ymm16,ymm2
  be8569:	62 81 14 20 5c ee    	vsubps ymm21,ymm29,ymm30
  be856f:	62 41 24 28 5c ef    	vsubps ymm29,ymm11,ymm15
  be8575:	62 01 24 20 5c d2    	vsubps ymm26,ymm27,ymm26
  be857b:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  be8581:	c4 41 5c 5c f2       	vsubps ymm14,ymm4,ymm10
  be8586:	62 c1 24 28 58 ff    	vaddps ymm23,ymm11,ymm15
  be858c:	62 e1 3c 28 5c d8    	vsubps ymm19,ymm8,ymm0
  be8592:	62 a1 5c 20 5c f2    	vsubps ymm22,ymm20,ymm18
  be8598:	62 91 34 20 5c e4    	vsubps ymm4,ymm25,ymm28
  be859e:	62 81 34 28 58 e0    	vaddps ymm20,ymm9,ymm24
  be85a4:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  be85a8:	62 f1 7c 20 5c d2    	vsubps ymm2,ymm16,ymm2
  be85ae:	62 91 54 20 5c da    	vsubps ymm3,ymm21,ymm26
  be85b4:	62 11 14 28 58 fd    	vaddps ymm15,ymm13,ymm29
  be85ba:	c4 e3 55 18 c4 01    	vinsertf128 ymm0,ymm5,xmm4,0x1
  be85c0:	c4 e3 55 06 e4 31    	vperm2f128 ymm4,ymm5,ymm4,0x31
  be85c6:	62 f3 75 20 18 ea 01 	vinsertf32x4 ymm5,ymm17,xmm2,0x1
  be85cd:	62 a1 0c 28 58 ef    	vaddps ymm21,ymm14,ymm23
  be85d3:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  be85da:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  be85de:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  be85e4:	c5 5d 14 da          	vunpcklpd ymm11,ymm4,ymm2
  be85e8:	62 a1 64 20 58 ce    	vaddps ymm17,ymm19,ymm22
  be85ee:	c5 5d 15 d2          	vunpckhpd ymm10,ymm4,ymm2
  be85f2:	c4 e3 1d 18 d1 01    	vinsertf128 ymm2,ymm12,xmm1,0x1
  be85f8:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  be85fe:	62 91 34 28 5c e0    	vsubps ymm4,ymm9,ymm24
  be8604:	62 63 25 20 18 c3 01 	vinsertf32x4 ymm24,ymm27,xmm3,0x1
  be860b:	62 f3 a5 20 23 db 03 	vshuff64x2 ymm3,ymm27,ymm3,0x3
  be8612:	62 91 ed 28 14 f0    	vunpcklpd ymm6,ymm2,ymm24
  be8618:	c5 fc 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm6
  be861e:	62 81 14 28 5c d5    	vsubps ymm18,ymm13,ymm29
  be8624:	62 e1 f5 28 14 c3    	vunpcklpd ymm16,ymm1,ymm3
  be862a:	c5 75 15 e3          	vunpckhpd ymm12,ymm1,ymm3
  be862e:	62 91 ed 28 15 c8    	vunpckhpd ymm1,ymm2,ymm24
  be8634:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  be863a:	62 b1 0c 28 5c cf    	vsubps ymm1,ymm14,ymm23
  be8640:	c5 7d 15 f5          	vunpckhpd ymm14,ymm0,ymm5
  be8644:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x40]
  be864b:	04 
  be864c:	62 93 3d 00 21 d0 9c 	vinsertps xmm2,xmm24,xmm24,0x9c
  be8653:	62 a1 64 20 5c f6    	vsubps ymm22,ymm19,ymm22
  be8659:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  be8660:	00 00 
  be8662:	c4 e3 79 21 d8 9c    	vinsertps xmm3,xmm0,xmm0,0x9c
  be8668:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  be866d:	c4 c1 78 c6 e9 dd    	vshufps xmm5,xmm0,xmm9,0xdd
  be8673:	62 e3 5d 20 18 dc 01 	vinsertf32x4 ymm19,ymm20,xmm4,0x1
  be867a:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0xe0]
  be8681:	0e 
  be8682:	62 41 34 00 c6 d1 dd 	vshufps xmm26,xmm25,xmm9,0xdd
  be8689:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x130]
  be8690:	13 
  be8691:	62 e3 dd 20 23 fc 03 	vshuff64x2 ymm23,ymm20,ymm4,0x3
  be8698:	62 d1 24 00 c6 e1 dd 	vshufps xmm4,xmm27,xmm9,0xdd
  be869f:	62 61 7c 08 10 64 17 	vmovups xmm28,XMMWORD PTR [rdi+rdx*1+0x180]
  be86a6:	18 
  be86a7:	62 03 1d 00 21 ec 9c 	vinsertps xmm29,xmm28,xmm28,0x9c
  be86ae:	62 e3 55 20 18 e1 01 	vinsertf32x4 ymm20,ymm21,xmm1,0x1
  be86b5:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  be86bc:	00 00 
  be86be:	62 63 7d 08 21 f0 9c 	vinsertps xmm30,xmm0,xmm0,0x9c
  be86c5:	62 41 7c 08 c6 f9 dd 	vshufps xmm31,xmm0,xmm9,0xdd
  be86cc:	62 73 d5 20 23 c1 03 	vshuff64x2 ymm8,ymm21,ymm1,0x3
  be86d3:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  be86da:	00 00 
  be86dc:	62 c1 74 08 c6 e9 dd 	vshufps xmm21,xmm1,xmm9,0xdd
  be86e3:	c5 f8 10 b4 17 70 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x270]
  be86ea:	00 00 
  be86ec:	62 91 6c 28 58 fd    	vaddps ymm7,ymm2,ymm29
  be86f2:	62 91 6c 28 5c d5    	vsubps ymm2,ymm2,ymm29
  be86f8:	62 21 2c 20 58 ed    	vaddps ymm29,ymm26,ymm21
  be86fe:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  be8704:	62 01 64 28 58 d6    	vaddps ymm26,ymm3,ymm30
  be870a:	62 91 64 28 5c de    	vsubps ymm3,ymm3,ymm30
  be8710:	62 01 54 28 58 f7    	vaddps ymm30,ymm5,ymm31
  be8716:	62 91 54 28 5c ef    	vsubps ymm5,ymm5,ymm31
  be871c:	62 41 4c 08 c6 f9 dd 	vshufps xmm31,xmm6,xmm9,0xdd
  be8723:	62 91 5c 28 58 c7    	vaddps ymm0,ymm4,ymm31
  be8729:	62 91 5c 28 5c e7    	vsubps ymm4,ymm4,ymm31
  be872f:	62 03 25 00 21 db 9c 	vinsertps xmm27,xmm27,xmm27,0x9c
  be8736:	c4 e3 49 21 f6 9c    	vinsertps xmm6,xmm6,xmm6,0x9c
  be873c:	62 61 24 20 58 fe    	vaddps ymm31,ymm27,ymm6
  be8742:	62 f1 24 20 5c f6    	vsubps ymm6,ymm27,ymm6
  be8748:	62 41 3c 00 c6 c1 dd 	vshufps xmm24,xmm24,xmm9,0xdd
  be874f:	62 41 1c 00 c6 d9 dd 	vshufps xmm27,xmm28,xmm9,0xdd
  be8756:	62 01 3c 20 58 e3    	vaddps ymm28,ymm24,ymm27
  be875c:	62 01 3c 20 5c c3    	vsubps ymm24,ymm24,ymm27
  be8762:	62 03 35 00 21 c9 9c 	vinsertps xmm25,xmm25,xmm25,0x9c
  be8769:	c4 e3 71 21 c9 9c    	vinsertps xmm1,xmm1,xmm1,0x9c
  be876f:	62 61 34 20 58 d9    	vaddps ymm27,ymm25,ymm1
  be8775:	62 01 74 28 5c c9    	vsubps ymm25,ymm1,ymm25
  be877b:	62 b3 05 28 18 ca 01 	vinsertf32x4 ymm1,ymm15,xmm18,0x1
  be8782:	62 33 85 28 23 fa 03 	vshuff64x2 ymm15,ymm15,ymm18,0x3
  be8789:	c5 64 58 cd          	vaddps ymm9,ymm3,ymm5
  be878d:	c5 d4 5c eb          	vsubps ymm5,ymm5,ymm3
  be8791:	62 a3 75 20 18 d6 01 	vinsertf32x4 ymm18,ymm17,xmm22,0x1
  be8798:	62 b3 f5 20 23 de 03 	vshuff64x2 ymm3,ymm17,ymm22,0x3
  be879f:	62 e1 5c 28 5c f6    	vsubps ymm22,ymm4,ymm6
  be87a5:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  be87a9:	62 d1 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm8
  be87af:	62 51 c5 20 15 c0    	vunpckhpd ymm8,ymm23,ymm8
  be87b5:	62 81 44 28 58 fb    	vaddps ymm23,ymm7,ymm27
  be87bb:	62 91 44 28 5c fb    	vsubps ymm7,ymm7,ymm27
  be87c1:	62 61 85 28 14 db    	vunpcklpd ymm27,ymm15,ymm3
  be87c7:	c5 05 15 fb          	vunpckhpd ymm15,ymm15,ymm3
  be87cb:	62 71 0c 20 58 e8    	vaddps ymm13,ymm30,ymm0
  be87d1:	62 f1 0c 20 5c c0    	vsubps ymm0,ymm30,ymm0
  be87d7:	62 21 f5 28 14 f2    	vunpcklpd ymm30,ymm1,ymm18
  be87dd:	62 b1 f5 28 15 ca    	vunpckhpd ymm1,ymm1,ymm18
  be87e3:	62 81 1c 20 58 d5    	vaddps ymm18,ymm28,ymm29
  be87e9:	62 01 1c 20 5c e5    	vsubps ymm28,ymm28,ymm29
  be87ef:	62 21 e5 20 14 ec    	vunpcklpd ymm29,ymm19,ymm20
  be87f5:	62 a1 e5 20 15 cc    	vunpckhpd ymm17,ymm19,ymm20
  be87fb:	62 81 2c 20 58 e7    	vaddps ymm20,ymm26,ymm31
  be8801:	62 01 04 20 5c fa    	vsubps ymm31,ymm31,ymm26
  be8807:	62 61 24 28 c6 d6 88 	vshufps ymm26,ymm11,ymm6,0x88
  be880e:	c5 a4 c6 f6 dd       	vshufps ymm6,ymm11,ymm6,0xdd
  be8813:	62 31 6c 28 58 dd    	vaddps ymm11,ymm2,ymm21
  be8819:	62 a1 6c 28 5c ed    	vsubps ymm21,ymm2,ymm21
  be881f:	62 e2 7d 28 18 1d fb 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff4b70fb]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  be8826:	70 4b ff 
  be8829:	62 b1 54 28 59 d3    	vmulps ymm2,ymm5,ymm19
  be882f:	62 b1 5c 28 59 e3    	vmulps ymm4,ymm4,ymm19
  be8835:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  be8839:	c5 ec 58 e4          	vaddps ymm4,ymm2,ymm4
  be883d:	c4 c1 2c c6 e8 88    	vshufps ymm5,ymm10,ymm8,0x88
  be8843:	c4 41 2c c6 c0 dd    	vshufps ymm8,ymm10,ymm8,0xdd
  be8849:	62 11 34 20 58 d0    	vaddps ymm10,ymm25,ymm24
  be884f:	62 91 3c 20 5c d1    	vsubps ymm2,ymm24,ymm25
  be8855:	62 31 34 28 59 cb    	vmulps ymm9,ymm9,ymm19
  be885b:	62 a1 4c 20 59 f3    	vmulps ymm22,ymm22,ymm19
  be8861:	62 21 34 28 58 c6    	vaddps ymm24,ymm9,ymm22
  be8867:	62 c1 4c 20 5c f1    	vsubps ymm22,ymm22,ymm9
  be886d:	62 11 7c 20 c6 cb 88 	vshufps ymm9,ymm16,ymm27,0x88
  be8874:	62 81 7c 20 c6 c3 dd 	vshufps ymm16,ymm16,ymm27,0xdd
  be887b:	62 21 44 20 58 cc    	vaddps ymm25,ymm23,ymm20
  be8881:	62 a1 44 00 5c e4    	vsubps xmm20,xmm23,xmm20
  be8887:	62 a3 35 20 18 e4 01 	vinsertf32x4 ymm20,ymm25,xmm20,0x1
  be888e:	62 81 24 28 58 f8    	vaddps ymm23,ymm11,ymm24
  be8894:	62 11 24 08 5c d8    	vsubps xmm11,xmm11,xmm24
  be889a:	62 53 45 20 18 db 01 	vinsertf32x4 ymm11,ymm23,xmm11,0x1
  be88a1:	62 c1 1c 28 c6 ff 88 	vshufps ymm23,ymm12,ymm15,0x88
  be88a8:	c4 41 1c c6 ff dd    	vshufps ymm15,ymm12,ymm15,0xdd
  be88ae:	c5 44 58 e0          	vaddps ymm12,ymm7,ymm0
  be88b2:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  be88b6:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x20]
  be88bd:	01 
  be88be:	62 91 64 20 c6 fe dd 	vshufps ymm7,ymm19,ymm30,0xdd
  be88c5:	62 01 64 20 c6 c6 88 	vshufps ymm24,ymm19,ymm30,0x88
  be88cc:	c4 e3 1d 18 c0 01    	vinsertf128 ymm0,ymm12,xmm0,0x1
  be88d2:	62 e1 dd 20 14 e0    	vunpcklpd ymm20,ymm20,ymm0
  be88d8:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  be88de:	62 91 1c 28 c6 c5 dd 	vshufps ymm0,ymm12,ymm29,0xdd
  be88e5:	62 01 1c 28 c6 cd 88 	vshufps ymm25,ymm12,ymm29,0x88
  be88ec:	62 71 54 20 58 e4    	vaddps ymm12,ymm21,ymm4
  be88f2:	62 f1 54 00 5c e4    	vsubps xmm4,xmm21,xmm4
  be88f8:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x40]
  be88ff:	02 
  be8900:	62 61 64 20 c6 e9 dd 	vshufps ymm29,ymm19,ymm1,0xdd
  be8907:	62 61 64 20 c6 f1 88 	vshufps ymm30,ymm19,ymm1,0x88
  be890e:	c4 e3 1d 18 cc 01    	vinsertf128 ymm1,ymm12,xmm4,0x1
  be8914:	c5 a5 14 e1          	vunpcklpd ymm4,ymm11,ymm1
  be8918:	62 b1 0c 28 c6 c9 dd 	vshufps ymm1,ymm14,ymm17,0xdd
  be891f:	62 31 0c 28 c6 d9 88 	vshufps ymm11,ymm14,ymm17,0x88
  be8926:	62 c1 6c 20 58 cd    	vaddps ymm17,ymm18,ymm13
  be892c:	62 c1 6c 00 5c d5    	vsubps xmm18,xmm18,xmm13
  be8932:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  be8937:	62 81 2c 20 c6 ea d8 	vshufps ymm21,ymm26,ymm26,0xd8
  be893e:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  be8943:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  be8949:	62 61 54 28 c6 d5 d8 	vshufps ymm26,ymm5,ymm5,0xd8
  be8950:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  be8956:	c5 44 c6 ef d8       	vshufps ymm13,ymm7,ymm7,0xd8
  be895b:	c4 c1 34 c6 c1 d8    	vshufps ymm0,ymm9,ymm9,0xd8
  be8961:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  be8968:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  be896e:	62 b3 75 20 18 f2 01 	vinsertf32x4 ymm6,ymm17,xmm18,0x1
  be8975:	62 21 44 20 c6 df d8 	vshufps ymm27,ymm23,ymm23,0xd8
  be897c:	c5 ac 58 fb          	vaddps ymm7,ymm10,ymm3
  be8980:	c5 28 5c c3          	vsubps xmm8,xmm10,xmm3
  be8984:	62 11 04 20 58 d4    	vaddps ymm10,ymm31,ymm28
  be898a:	62 c1 04 28 c6 d7 d8 	vshufps ymm18,ymm15,ymm15,0xd8
  be8991:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  be8997:	62 31 6c 28 58 fe    	vaddps ymm15,ymm2,ymm22
  be899d:	62 11 1c 00 5c c7    	vsubps xmm8,xmm28,xmm31
  be89a3:	62 01 3c 20 c6 e0 d8 	vshufps ymm28,ymm24,ymm24,0xd8
  be89aa:	62 e1 5c 20 c6 c4 dd 	vshufps ymm16,ymm20,ymm4,0xdd
  be89b1:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  be89b8:	c4 43 2d 18 d0 01    	vinsertf128 ymm10,ymm10,xmm8,0x1
  be89be:	62 91 34 20 c6 d9 d8 	vshufps ymm3,ymm25,ymm25,0xd8
  be89c5:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  be89cb:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  be89d0:	62 b1 6c 08 5c d6    	vsubps xmm2,xmm2,xmm22
  be89d6:	c4 e3 05 18 d2 01    	vinsertf128 ymm2,ymm15,xmm2,0x1
  be89dc:	62 81 14 20 c6 cd d8 	vshufps ymm17,ymm29,ymm29,0xd8
  be89e3:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  be89e7:	c5 cc c6 fa dd       	vshufps ymm7,ymm6,ymm2,0xdd
  be89ec:	62 e1 44 28 c6 ff d8 	vshufps ymm23,ymm7,ymm7,0xd8
  be89f3:	62 91 0c 20 c6 fe d8 	vshufps ymm7,ymm30,ymm30,0xd8
  be89fa:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  be89ff:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  be8a04:	62 f1 5c 20 c6 e4 88 	vshufps ymm4,ymm20,ymm4,0x88
  be8a0b:	62 61 74 28 c6 c1 d8 	vshufps ymm24,ymm1,ymm1,0xd8
  be8a12:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  be8a17:	62 e1 7c 28 10 71 02 	vmovups ymm22,YMMWORD PTR [rcx+0x40]
  be8a1e:	62 e1 7c 28 10 61 03 	vmovups ymm20,YMMWORD PTR [rcx+0x60]
  be8a25:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  be8a2b:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  be8a32:	00 
  be8a33:	c5 7c 10 91 00 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x100]
  be8a3a:	00 
  be8a3b:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  be8a42:	00 
  be8a43:	62 51 54 20 59 ca    	vmulps ymm9,ymm21,ymm10
  be8a49:	c4 42 7d bc cb       	vfnmadd231ps ymm9,ymm0,ymm11
  be8a4e:	62 c1 7c 28 59 c2    	vmulps ymm16,ymm0,ymm10
  be8a54:	c5 fc 10 81 80 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x180]
  be8a5b:	00 
  be8a5c:	62 c2 55 20 b8 c3    	vfmadd231ps ymm16,ymm21,ymm11
  be8a62:	c5 7c 10 91 a0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1a0]
  be8a69:	00 
  be8a6a:	62 61 2c 20 59 c8    	vmulps ymm25,ymm26,ymm0
  be8a70:	62 e1 24 20 59 e8    	vmulps ymm21,ymm27,ymm0
  be8a76:	62 42 25 20 bc ca    	vfnmadd231ps ymm25,ymm27,ymm10
  be8a7c:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  be8a83:	00 
  be8a84:	62 c2 2d 20 b8 ea    	vfmadd231ps ymm21,ymm26,ymm10
  be8a8a:	c5 7c 10 91 c0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xc0]
  be8a91:	00 
  be8a92:	62 61 5c 28 59 d6    	vmulps ymm26,ymm4,ymm6
  be8a98:	62 62 45 28 bc d0    	vfnmadd231ps ymm26,ymm7,ymm0
  be8a9e:	62 61 44 28 59 de    	vmulps ymm27,ymm7,ymm6
  be8aa4:	c5 fc 10 b1 00 02 00 	vmovups ymm6,YMMWORD PTR [rcx+0x200]
  be8aab:	00 
  be8aac:	62 62 5d 28 b8 d8    	vfmadd231ps ymm27,ymm4,ymm0
  be8ab2:	c5 fc 10 81 20 02 00 	vmovups ymm0,YMMWORD PTR [rcx+0x220]
  be8ab9:	00 
  be8aba:	62 61 74 28 59 ee    	vmulps ymm29,ymm1,ymm6
  be8ac0:	62 e1 6c 28 59 de    	vmulps ymm19,ymm2,ymm6
  be8ac6:	62 62 6d 28 bc e8    	vfnmadd231ps ymm29,ymm2,ymm0
  be8acc:	c5 fc 10 91 c0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1c0]
  be8ad3:	00 
  be8ad4:	62 e2 75 28 b8 d8    	vfmadd231ps ymm19,ymm1,ymm0
  be8ada:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  be8ae1:	00 
  be8ae2:	62 61 6c 20 59 f2    	vmulps ymm30,ymm18,ymm2
  be8ae8:	62 62 0d 28 b8 f1    	vfmadd231ps ymm30,ymm14,ymm1
  be8aee:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  be8af2:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  be8af9:	00 
  be8afa:	62 f2 6d 20 bc c1    	vfnmadd231ps ymm0,ymm18,ymm1
  be8b00:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  be8b07:	00 
  be8b08:	62 61 44 20 59 f9    	vmulps ymm31,ymm23,ymm1
  be8b0e:	c5 d4 59 c9          	vmulps ymm1,ymm5,ymm1
  be8b12:	62 62 55 28 b8 fa    	vfmadd231ps ymm31,ymm5,ymm2
  be8b18:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  be8b1f:	00 
  be8b20:	62 f2 45 20 bc ca    	vfnmadd231ps ymm1,ymm23,ymm2
  be8b26:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  be8b2d:	00 
  be8b2e:	62 d1 74 20 59 f2    	vmulps ymm6,ymm17,ymm10
  be8b34:	62 f2 3d 20 b8 f4    	vfmadd231ps ymm6,ymm24,ymm4
  be8b3a:	62 d1 3c 20 59 fa    	vmulps ymm7,ymm24,ymm10
  be8b40:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  be8b47:	00 
  be8b48:	62 f2 75 20 bc fc    	vfnmadd231ps ymm7,ymm17,ymm4
  be8b4e:	62 b1 14 28 59 e6    	vmulps ymm4,ymm13,ymm22
  be8b54:	62 b2 1d 28 b8 e4    	vfmadd231ps ymm4,ymm12,ymm20
  be8b5a:	62 31 1c 28 59 f6    	vmulps ymm14,ymm12,ymm22
  be8b60:	62 91 2c 20 5c dd    	vsubps ymm3,ymm26,ymm29
  be8b66:	62 91 34 28 5c e9    	vsubps ymm5,ymm9,ymm25
  be8b6c:	62 32 15 28 bc f4    	vfnmadd231ps ymm14,ymm13,ymm20
  be8b72:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  be8b78:	c5 04 59 e2          	vmulps ymm12,ymm15,ymm2
  be8b7c:	62 31 7c 20 58 ed    	vaddps ymm13,ymm16,ymm21
  be8b82:	c5 7c 28 44 24 20    	vmovaps ymm8,YMMWORD PTR [rsp+0x20]
  be8b88:	c4 42 3d b8 e3       	vfmadd231ps ymm12,ymm8,ymm11
  be8b8d:	c5 3c 59 d2          	vmulps ymm10,ymm8,ymm2
  be8b91:	c4 42 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm11
  be8b96:	c4 62 7d 18 05 45 71 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff4b7145]        # 9fce4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x33b4>
  be8b9d:	4b ff 
  be8b9f:	62 c1 54 28 59 f0    	vmulps ymm22,ymm5,ymm8
  be8ba5:	62 a1 24 20 58 e3    	vaddps ymm20,ymm27,ymm19
  be8bab:	c4 62 7d 18 3d bc 70 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff4b70bc]        # 9fc70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3340>
  be8bb2:	4b ff 
  be8bb4:	62 c1 7c 28 28 ff    	vmovaps ymm23,ymm15
  be8bba:	62 91 34 28 58 d1    	vaddps ymm2,ymm9,ymm25
  be8bc0:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  be8bc6:	62 82 5d 20 a8 fc    	vfmadd213ps ymm23,ymm20,ymm28
  be8bcc:	62 e1 04 20 58 cc    	vaddps ymm17,ymm31,ymm4
  be8bd2:	62 11 2c 20 58 dd    	vaddps ymm11,ymm26,ymm29
  be8bd8:	62 e1 0c 20 58 d6    	vaddps ymm18,ymm30,ymm6
  be8bde:	62 62 7d 28 18 2d 40 	vbroadcastss ymm29,DWORD PTR [rip+0xffffffffff4b6d40]        # 9f928 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff8>
  be8be5:	6d 4b ff 
  be8be8:	62 82 65 28 b8 f5    	vfmadd231ps ymm22,ymm3,ymm29
  be8bee:	62 b1 24 20 5c d3    	vsubps ymm2,ymm27,ymm19
  be8bf4:	c5 7c 5c cf          	vsubps ymm9,ymm0,ymm7
  be8bf8:	62 21 7c 20 5c cd    	vsubps ymm25,ymm16,ymm21
  be8bfe:	62 62 7d 28 18 1d c8 	vbroadcastss ymm27,DWORD PTR [rip+0xffffffffff4b6fc8]        # 9fbd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x32a0>
  be8c05:	6f 4b ff 
  be8c08:	62 82 15 28 bc fb    	vfnmadd231ps ymm23,ymm13,ymm27
  be8c0e:	62 41 74 28 5c d6    	vsubps ymm26,ymm1,ymm14
  be8c14:	c5 0c 58 f1          	vaddps ymm14,ymm14,ymm1
  be8c18:	62 41 2c 20 59 c0    	vmulps ymm24,ymm26,ymm8
  be8c1e:	62 02 35 28 b8 c5    	vfmadd231ps ymm24,ymm9,ymm29
  be8c24:	62 e1 7c 28 58 df    	vaddps ymm19,ymm0,ymm7
  be8c2a:	62 c1 34 20 59 c0    	vmulps ymm16,ymm25,ymm8
  be8c30:	62 f1 0c 20 5c c6    	vsubps ymm0,ymm30,ymm6
  be8c36:	62 82 6d 28 b8 c5    	vfmadd231ps ymm16,ymm2,ymm29
  be8c3c:	62 f1 04 20 5c cc    	vsubps ymm1,ymm31,ymm4
  be8c42:	62 c1 74 28 59 e8    	vmulps ymm21,ymm1,ymm8
  be8c48:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  be8c4c:	62 82 7d 28 b8 ed    	vfmadd231ps ymm21,ymm0,ymm29
  be8c52:	62 f2 15 20 bc dd    	vfnmadd231ps ymm3,ymm29,ymm5
  be8c58:	62 91 7c 28 28 e3    	vmovaps ymm4,ymm27
  be8c5e:	62 92 5d 20 ac e4    	vfnmadd213ps ymm4,ymm20,ymm28
  be8c64:	c4 c2 15 b8 e7       	vfmadd231ps ymm4,ymm13,ymm15
  be8c69:	62 91 7c 28 28 eb    	vmovaps ymm5,ymm27
  be8c6f:	62 d2 6d 20 ac ec    	vfnmadd213ps ymm5,ymm18,ymm12
  be8c75:	c4 c1 34 59 f0       	vmulps ymm6,ymm9,ymm8
  be8c7a:	62 d2 75 20 b8 ef    	vfmadd231ps ymm5,ymm17,ymm15
  be8c80:	62 92 15 20 bc f2    	vfnmadd231ps ymm6,ymm29,ymm26
  be8c86:	62 91 7c 28 28 fb    	vmovaps ymm7,ymm27
  be8c8c:	62 61 7c 28 28 54 24 	vmovaps ymm26,YMMWORD PTR [rsp+0x60]
  be8c93:	03 
  be8c94:	62 92 25 28 ac fa    	vfnmadd213ps ymm7,ymm11,ymm26
  be8c9a:	62 61 7c 28 28 74 24 	vmovaps ymm30,YMMWORD PTR [rsp+0x20]
  be8ca1:	01 
  be8ca2:	62 d2 0d 20 b8 ff    	vfmadd231ps ymm7,ymm30,ymm15
  be8ca8:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  be8cac:	62 92 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm25
  be8cb2:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  be8cb6:	62 61 64 28 58 cc    	vaddps ymm25,ymm3,ymm4
  be8cbc:	62 f2 15 20 bc c1    	vfnmadd231ps ymm0,ymm29,ymm1
  be8cc2:	62 91 7c 28 28 cb    	vmovaps ymm1,ymm27
  be8cc8:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  be8ccc:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  be8cd0:	62 d2 65 20 ac ca    	vfnmadd213ps ymm1,ymm19,ymm10
  be8cd6:	c4 c2 0d b8 cf       	vfmadd231ps ymm1,ymm14,ymm15
  be8cdb:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  be8cdf:	c5 c4 5c f2          	vsubps ymm6,ymm7,ymm2
  be8ce3:	c5 c4 58 d2          	vaddps ymm2,ymm7,ymm2
  be8ce7:	c5 f4 5c f8          	vsubps ymm7,ymm1,ymm0
  be8ceb:	c5 f4 58 c8          	vaddps ymm1,ymm1,ymm0
  be8cef:	62 b1 4c 20 58 c7    	vaddps ymm0,ymm22,ymm23
  be8cf5:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  be8cfb:	62 11 5c 20 58 cc    	vaddps ymm9,ymm20,ymm28
  be8d01:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  be8d07:	62 c2 6d 20 a8 e4    	vfmadd213ps ymm20,ymm18,ymm12
  be8d0d:	62 82 75 20 bc e3    	vfnmadd231ps ymm20,ymm17,ymm27
  be8d13:	c4 41 14 58 e9       	vaddps ymm13,ymm13,ymm9
  be8d18:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  be8d1e:	62 81 5c 20 5c e0    	vsubps ymm20,ymm20,ymm24
  be8d24:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  be8d2a:	62 31 1c 28 58 e1    	vaddps ymm12,ymm12,ymm17
  be8d30:	62 c1 7c 28 28 cf    	vmovaps ymm17,ymm15
  be8d36:	62 82 25 28 a8 ca    	vfmadd213ps ymm17,ymm11,ymm26
  be8d3c:	62 51 2c 20 58 c3    	vaddps ymm8,ymm26,ymm11
  be8d42:	62 82 0d 20 bc cb    	vfnmadd231ps ymm17,ymm30,ymm27
  be8d48:	62 11 3c 28 58 de    	vaddps ymm11,ymm8,ymm30
  be8d4e:	c4 41 7c 28 c7       	vmovaps ymm8,ymm15
  be8d53:	62 52 65 20 a8 c2    	vfmadd213ps ymm8,ymm19,ymm10
  be8d59:	62 31 2c 28 58 d3    	vaddps ymm10,ymm10,ymm19
  be8d5f:	62 31 74 20 5c f8    	vsubps ymm15,ymm17,ymm16
  be8d65:	62 a1 74 20 58 c0    	vaddps ymm16,ymm17,ymm16
  be8d6b:	62 12 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm27
  be8d71:	c4 41 2c 58 f6       	vaddps ymm14,ymm10,ymm14
  be8d76:	62 31 3c 28 5c d5    	vsubps ymm10,ymm8,ymm21
  be8d7c:	62 a1 3c 28 58 cd    	vaddps ymm17,ymm8,ymm21
  be8d82:	c4 41 7c 5c c1       	vsubps ymm8,ymm0,ymm9
  be8d87:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  be8d8d:	c4 41 04 5c ca       	vsubps ymm9,ymm15,ymm10
  be8d92:	c4 41 04 58 fa       	vaddps ymm15,ymm15,ymm10
  be8d97:	62 f1 34 20 58 c4    	vaddps ymm0,ymm25,ymm4
  be8d9d:	62 f1 34 20 5c e4    	vsubps ymm4,ymm25,ymm4
  be8da3:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  be8da7:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  be8dab:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  be8daf:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  be8db3:	c5 ec 5c e9          	vsubps ymm5,ymm2,ymm1
  be8db7:	c5 ec 58 c9          	vaddps ymm1,ymm2,ymm1
  be8dbb:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  be8dc0:	c4 41 14 58 e4       	vaddps ymm12,ymm13,ymm12
  be8dc5:	62 31 4c 20 58 ec    	vaddps ymm13,ymm22,ymm20
  be8dcb:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  be8dd1:	62 c1 24 28 5c e6    	vsubps ymm20,ymm11,ymm14
  be8dd7:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  be8ddc:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  be8de1:	62 e1 7c 28 28 2d 35 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff4b7035]        # 9fe20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x34f0>
  be8de8:	70 4b ff 
  be8deb:	62 52 55 20 7f f4    	vpermt2ps ymm14,ymm21,ymm12
  be8df1:	62 e1 7c 28 28 35 85 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff4b8985]        # a1780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4e50>
  be8df8:	89 4b ff 
  be8dfb:	62 52 4d 20 7f dc    	vpermt2ps ymm11,ymm22,ymm12
  be8e01:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  be8e06:	62 31 7c 20 58 d9    	vaddps ymm11,ymm16,ymm17
  be8e0c:	62 31 7c 20 5c e1    	vsubps ymm12,ymm16,ymm17
  be8e12:	c5 7c 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  be8e18:	c4 41 7c 28 f4       	vmovaps ymm14,ymm12
  be8e1d:	62 32 4d 20 7f e3    	vpermt2ps ymm12,ymm22,ymm19
  be8e23:	62 32 55 20 7f f3    	vpermt2ps ymm14,ymm21,ymm19
  be8e29:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  be8e2f:	c5 7c 11 74 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm14
  be8e35:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  be8e39:	62 72 55 20 7f e3    	vpermt2ps ymm12,ymm21,ymm3
  be8e3f:	62 f2 4d 20 7f cb    	vpermt2ps ymm1,ymm22,ymm3
  be8e45:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  be8e4c:	00 00 
  be8e4e:	c5 7c 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  be8e55:	00 00 
  be8e57:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  be8e5b:	62 f2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm4
  be8e61:	62 f2 4d 20 7f f4    	vpermt2ps ymm6,ymm22,ymm4
  be8e67:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  be8e6e:	00 00 
  be8e70:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  be8e77:	00 00 
  be8e79:	c5 7c 29 f9          	vmovaps ymm1,ymm15
  be8e7d:	62 b2 55 20 7f ca    	vpermt2ps ymm1,ymm21,ymm18
  be8e83:	62 32 4d 20 7f fa    	vpermt2ps ymm15,ymm22,ymm18
  be8e89:	c5 7c 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm15
  be8e90:	00 00 
  be8e92:	62 b1 7c 28 28 dc    	vmovaps ymm3,ymm20
  be8e98:	62 f2 55 20 7f da    	vpermt2ps ymm3,ymm21,ymm2
  be8e9e:	62 e2 4d 20 7f e2    	vpermt2ps ymm20,ymm22,ymm2
  be8ea4:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  be8eab:	00 00 
  be8ead:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm20
  be8eb4:	0a 
  be8eb5:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  be8ebc:	00 00 
  be8ebe:	c5 7c 29 d9          	vmovaps ymm1,ymm11
  be8ec2:	62 d2 55 20 7f cd    	vpermt2ps ymm1,ymm21,ymm13
  be8ec8:	62 52 4d 20 7f dd    	vpermt2ps ymm11,ymm22,ymm13
  be8ece:	c5 7c 11 9c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm11
  be8ed5:	00 00 
  be8ed7:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  be8ede:	00 00 
  be8ee0:	c5 fc 28 cd          	vmovaps ymm1,ymm5
  be8ee4:	62 f2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm7
  be8eea:	62 f2 4d 20 7f ef    	vpermt2ps ymm5,ymm22,ymm7
  be8ef0:	c5 fc 11 ac 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm5
  be8ef7:	00 00 
  be8ef9:	c5 fc 11 8c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm1
  be8f00:	00 00 
  be8f02:	c5 7c 29 d1          	vmovaps ymm1,ymm10
  be8f06:	62 f2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm0
  be8f0c:	62 72 4d 20 7f d0    	vpermt2ps ymm10,ymm22,ymm0
  be8f12:	c5 7c 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm10
  be8f19:	00 00 
  be8f1b:	c5 7c 29 c8          	vmovaps ymm0,ymm9
  be8f1f:	62 d2 55 20 7f c0    	vpermt2ps ymm0,ymm21,ymm8
  be8f25:	62 52 4d 20 7f c8    	vpermt2ps ymm9,ymm22,ymm8
  be8f2b:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  be8f32:	00 00 
  be8f34:	c5 7c 11 8c 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm9
  be8f3b:	00 00 
  be8f3d:	c5 fc 11 84 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm0
  be8f44:	00 00 
  be8f46:	48 81 c2 80 02 00 00 	add    rdx,0x280
  be8f4d:	48 39 d0             	cmp    rax,rdx
  be8f50:	0f 85 da f3 ff ff    	jne    be8330 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  be8f56:	48 89 ec             	mov    rsp,rbp
  be8f59:	5d                   	pop    rbp
  be8f5a:	c5 f8 77             	vzeroupper
  be8f5d:	c3                   	ret
  be8f5e:	cc                   	int3
  be8f5f:	cc                   	int3
  be8f60:	cc                   	int3
  be8f61:	cc                   	int3
  be8f62:	cc                   	int3
  be8f63:	cc                   	int3
  be8f64:	cc                   	int3
  be8f65:	cc                   	int3
  be8f66:	cc                   	int3
  be8f67:	cc                   	int3
  be8f68:	cc                   	int3
  be8f69:	cc                   	int3
  be8f6a:	cc                   	int3
  be8f6b:	cc                   	int3
  be8f6c:	cc                   	int3
  be8f6d:	cc                   	int3
  be8f6e:	cc                   	int3
  be8f6f:	cc                   	int3
  be8f70:	cc                   	int3
  be8f71:	cc                   	int3
  be8f72:	cc                   	int3
  be8f73:	cc                   	int3
  be8f74:	cc                   	int3
  be8f75:	cc                   	int3
  be8f76:	cc                   	int3
  be8f77:	cc                   	int3
  be8f78:	cc                   	int3
  be8f79:	cc                   	int3
  be8f7a:	cc                   	int3
  be8f7b:	cc                   	int3
  be8f7c:	cc                   	int3
  be8f7d:	cc                   	int3
  be8f7e:	cc                   	int3
  be8f7f:	cc                   	int3
