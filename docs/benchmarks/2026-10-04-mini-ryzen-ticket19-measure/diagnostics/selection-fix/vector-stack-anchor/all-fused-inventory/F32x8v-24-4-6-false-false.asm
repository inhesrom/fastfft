
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afd280 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afd280:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  afd284:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  afd289:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  afd28e:	c4 e3 fd 01 da d8    	vpermpd ymm3,ymm2,0xd8
  afd294:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  afd299:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  afd2a0:	00 
  afd2a1:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  afd2a6:	c4 e3 fd 01 f2 d8    	vpermpd ymm6,ymm2,0xd8
  afd2ac:	c5 e4 5c fe          	vsubps ymm7,ymm3,ymm6
  afd2b0:	c5 7c 10 87 90 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0x90]
  afd2b7:	00 
  afd2b8:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  afd2bf:	00 
  afd2c0:	c4 c1 3c c6 d1 88    	vshufps ymm2,ymm8,ymm9,0x88
  afd2c6:	c4 63 fd 01 d2 d8    	vpermpd ymm10,ymm2,0xd8
  afd2cc:	c5 7c 10 5f 30       	vmovups ymm11,YMMWORD PTR [rdi+0x30]
  afd2d1:	c5 78 10 67 50       	vmovups xmm12,XMMWORD PTR [rdi+0x50]
  afd2d6:	c4 c1 24 c6 d4 88    	vshufps ymm2,ymm11,ymm12,0x88
  afd2dc:	c4 63 fd 01 ea d8    	vpermpd ymm13,ymm2,0xd8
  afd2e2:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  afd2e7:	c4 c1 44 5c d6       	vsubps ymm2,ymm7,ymm14
  afd2ec:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  afd2f1:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  afd2f7:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  afd2fc:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  afd302:	c5 fc 5c e1          	vsubps ymm4,ymm0,ymm1
  afd306:	c4 c1 24 c6 ec dd    	vshufps ymm5,ymm11,ymm12,0xdd
  afd30c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  afd312:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  afd318:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  afd31e:	c4 41 54 5c c8       	vsubps ymm9,ymm5,ymm8
  afd323:	c4 41 5c 5c d9       	vsubps ymm11,ymm4,ymm9
  afd328:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  afd32c:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  afd330:	c5 e4 5c f5          	vsubps ymm6,ymm3,ymm5
  afd334:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  afd338:	c4 c1 14 58 ca       	vaddps ymm1,ymm13,ymm10
  afd33d:	c5 7c 5c c1          	vsubps ymm8,ymm0,ymm1
  afd341:	c5 0c 58 d7          	vaddps ymm10,ymm14,ymm7
  afd345:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  afd349:	c5 64 58 cd          	vaddps ymm9,ymm3,ymm5
  afd34d:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  afd351:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  afd355:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  afd35b:	c5 f8 28 dc          	vmovaps xmm3,xmm4
  afd35f:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  afd365:	c5 78 29 c5          	vmovaps xmm5,xmm8
  afd369:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  afd36f:	c5 7d 14 c7          	vunpcklpd ymm8,ymm0,ymm7
  afd373:	c5 78 29 d8          	vmovaps xmm0,xmm11
  afd377:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  afd37d:	c5 dd 14 e7          	vunpcklpd ymm4,ymm4,ymm7
  afd381:	c5 f5 15 fd          	vunpckhpd ymm7,ymm1,ymm5
  afd385:	c5 f5 14 cd          	vunpcklpd ymm1,ymm1,ymm5
  afd389:	c5 65 15 d8          	vunpckhpd ymm11,ymm3,ymm0
  afd38d:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  afd391:	c5 f4 c6 c3 88       	vshufps ymm0,ymm1,ymm3,0x88
  afd396:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  afd39b:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  afd3a0:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  afd3a5:	c4 c1 44 c6 db 88    	vshufps ymm3,ymm7,ymm11,0x88
  afd3ab:	c5 e4 c6 eb d8       	vshufps ymm5,ymm3,ymm3,0xd8
  afd3b0:	c4 c1 44 c6 db dd    	vshufps ymm3,ymm7,ymm11,0xdd
  afd3b6:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  afd3bb:	c5 bc c6 fc 88       	vshufps ymm7,ymm8,ymm4,0x88
  afd3c0:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  afd3c5:	c5 bc c6 e4 dd       	vshufps ymm4,ymm8,ymm4,0xdd
  afd3ca:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  afd3cf:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  afd3d4:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  afd3da:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  afd3df:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  afd3e5:	c5 78 28 e6          	vmovaps xmm12,xmm6
  afd3e9:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  afd3ef:	c5 b5 14 f6          	vunpcklpd ymm6,ymm9,ymm6
  afd3f3:	c5 78 28 ca          	vmovaps xmm9,xmm2
  afd3f7:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  afd3fd:	c5 ad 14 d2          	vunpcklpd ymm2,ymm10,ymm2
  afd401:	c4 41 3d 15 d4       	vunpckhpd ymm10,ymm8,ymm12
  afd406:	c4 41 3d 14 e4       	vunpcklpd ymm12,ymm8,ymm12
  afd40b:	c4 41 25 15 e9       	vunpckhpd ymm13,ymm11,ymm9
  afd410:	c4 41 25 14 c9       	vunpcklpd ymm9,ymm11,ymm9
  afd415:	c4 41 1c c6 c1 88    	vshufps ymm8,ymm12,ymm9,0x88
  afd41b:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  afd421:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  afd427:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  afd42d:	c4 41 2c c6 dd 88    	vshufps ymm11,ymm10,ymm13,0x88
  afd433:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  afd439:	c4 41 2c c6 d5 dd    	vshufps ymm10,ymm10,ymm13,0xdd
  afd43f:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  afd445:	c5 4c c6 e2 88       	vshufps ymm12,ymm6,ymm2,0x88
  afd44a:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  afd450:	c5 cc c6 d2 dd       	vshufps ymm2,ymm6,ymm2,0xdd
  afd455:	c5 6c c6 ea d8       	vshufps ymm13,ymm2,ymm2,0xd8
  afd45a:	c5 7c 10 72 40       	vmovups ymm14,YMMWORD PTR [rdx+0x40]
  afd45f:	c5 7c 10 7a 60       	vmovups ymm15,YMMWORD PTR [rdx+0x60]
  afd464:	62 e1 7c 28 10 42 04 	vmovups ymm16,YMMWORD PTR [rdx+0x80]
  afd46b:	62 e1 7c 28 10 4a 05 	vmovups ymm17,YMMWORD PTR [rdx+0xa0]
  afd472:	62 e1 7c 28 10 52 06 	vmovups ymm18,YMMWORD PTR [rdx+0xc0]
  afd479:	62 e1 7c 28 10 5a 07 	vmovups ymm19,YMMWORD PTR [rdx+0xe0]
  afd480:	62 e1 7c 28 10 62 08 	vmovups ymm20,YMMWORD PTR [rdx+0x100]
  afd487:	62 e1 7c 28 10 6a 09 	vmovups ymm21,YMMWORD PTR [rdx+0x120]
  afd48e:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  afd495:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  afd49c:	62 21 54 28 59 c0    	vmulps ymm24,ymm5,ymm16
  afd4a2:	62 22 25 28 bc c1    	vfnmadd231ps ymm24,ymm11,ymm17
  afd4a8:	62 21 44 28 59 cc    	vmulps ymm25,ymm7,ymm20
  afd4ae:	62 22 1d 28 bc cd    	vfnmadd231ps ymm25,ymm12,ymm21
  afd4b4:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  afd4ba:	62 91 7c 28 58 d2    	vaddps ymm2,ymm0,ymm26
  afd4c0:	62 21 64 28 59 da    	vmulps ymm27,ymm3,ymm18
  afd4c6:	62 22 2d 28 bc db    	vfnmadd231ps ymm27,ymm10,ymm19
  afd4cc:	62 21 5c 28 59 e6    	vmulps ymm28,ymm4,ymm22
  afd4d2:	62 22 15 28 bc e7    	vfnmadd231ps ymm28,ymm13,ymm23
  afd4d8:	62 41 74 28 59 ee    	vmulps ymm29,ymm1,ymm14
  afd4de:	62 42 35 28 bc ef    	vfnmadd231ps ymm29,ymm9,ymm15
  afd4e4:	62 01 1c 20 58 f5    	vaddps ymm30,ymm28,ymm29
  afd4ea:	62 91 24 20 58 f6    	vaddps ymm6,ymm27,ymm30
  afd4f0:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  afd4f6:	62 32 55 28 b8 d9    	vfmadd231ps ymm11,ymm5,ymm17
  afd4fc:	62 b1 1c 28 59 ec    	vmulps ymm5,ymm12,ymm20
  afd502:	62 b2 45 28 b8 ed    	vfmadd231ps ymm5,ymm7,ymm21
  afd508:	c5 a4 58 fd          	vaddps ymm7,ymm11,ymm5
  afd50c:	c5 3c 58 e7          	vaddps ymm12,ymm8,ymm7
  afd510:	62 31 2c 28 59 d2    	vmulps ymm10,ymm10,ymm18
  afd516:	62 32 65 28 b8 d3    	vfmadd231ps ymm10,ymm3,ymm19
  afd51c:	62 b1 14 28 59 de    	vmulps ymm3,ymm13,ymm22
  afd522:	62 b2 5d 28 b8 df    	vfmadd231ps ymm3,ymm4,ymm23
  afd528:	c4 c1 34 59 e6       	vmulps ymm4,ymm9,ymm14
  afd52d:	c4 c2 75 b8 e7       	vfmadd231ps ymm4,ymm1,ymm15
  afd532:	c5 e4 58 cc          	vaddps ymm1,ymm3,ymm4
  afd536:	c4 62 7d 18 0d 21 7f 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff577f21]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afd53d:	57 ff 
  afd53f:	c5 2c 58 e9          	vaddps ymm13,ymm10,ymm1
  afd543:	62 62 35 28 ac d0    	vfnmadd213ps ymm26,ymm9,ymm0
  afd549:	c4 e2 7d 18 05 82 7d 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff577d82]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afd550:	57 ff 
  afd552:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  afd556:	c5 d4 59 e8          	vmulps ymm5,ymm5,ymm0
  afd55a:	62 71 2c 20 58 dd    	vaddps ymm11,ymm26,ymm5
  afd560:	62 02 35 28 bc de    	vfnmadd231ps ymm27,ymm9,ymm30
  afd566:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  afd56a:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  afd56e:	62 f1 24 20 58 e3    	vaddps ymm4,ymm27,ymm3
  afd574:	c4 c2 35 ac f8       	vfnmadd213ps ymm7,ymm9,ymm8
  afd579:	62 11 3c 20 5c c1    	vsubps ymm8,ymm24,ymm25
  afd57f:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  afd583:	c4 41 44 5c f0       	vsubps ymm14,ymm7,ymm8
  afd588:	c4 42 75 bc d1       	vfnmadd231ps ymm10,ymm1,ymm9
  afd58d:	62 91 1c 20 5c cd    	vsubps ymm1,ymm28,ymm29
  afd593:	c5 f4 59 c0          	vmulps ymm0,ymm1,ymm0
  afd597:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  afd59b:	c5 0c 5c c9          	vsubps ymm9,ymm14,ymm1
  afd59f:	62 f1 2c 20 5c ed    	vsubps ymm5,ymm26,ymm5
  afd5a5:	62 f1 24 20 5c db    	vsubps ymm3,ymm27,ymm3
  afd5ab:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  afd5af:	c5 ac 58 c0          	vaddps ymm0,ymm10,ymm0
  afd5b3:	c5 44 58 c0          	vaddps ymm8,ymm7,ymm0
  afd5b7:	c4 41 1c 5c d5       	vsubps ymm10,ymm12,ymm13
  afd5bc:	c5 8c 58 c9          	vaddps ymm1,ymm14,ymm1
  afd5c0:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  afd5c4:	c4 c1 1c 58 fd       	vaddps ymm7,ymm12,ymm13
  afd5c9:	c5 68 58 e6          	vaddps xmm12,xmm2,xmm6
  afd5cd:	c5 7c 28 2d 0b 9c 57 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff579c0b]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afd5d4:	ff 
  afd5d5:	62 72 15 28 7f e7    	vpermt2ps ymm12,ymm13,ymm7
  afd5db:	c5 7c 11 26          	vmovups YMMWORD PTR [rsi],ymm12
  afd5df:	c5 a0 5c fc          	vsubps xmm7,xmm11,xmm4
  afd5e3:	62 d2 15 28 7f f9    	vpermt2ps ymm7,ymm13,ymm9
  afd5e9:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  afd5ee:	c5 d0 58 fb          	vaddps xmm7,xmm5,xmm3
  afd5f2:	62 d2 15 28 7f f8    	vpermt2ps ymm7,ymm13,ymm8
  afd5f8:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  afd5fd:	c5 e8 5c d6          	vsubps xmm2,xmm2,xmm6
  afd601:	62 d2 15 28 7f d2    	vpermt2ps ymm2,ymm13,ymm10
  afd607:	c5 fc 11 56 60       	vmovups YMMWORD PTR [rsi+0x60],ymm2
  afd60c:	c5 a0 58 d4          	vaddps xmm2,xmm11,xmm4
  afd610:	62 f2 15 28 7f d1    	vpermt2ps ymm2,ymm13,ymm1
  afd616:	c5 fc 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm2
  afd61d:	00 
  afd61e:	c5 d0 5c cb          	vsubps xmm1,xmm5,xmm3
  afd622:	62 f2 15 28 7f c8    	vpermt2ps ymm1,ymm13,ymm0
  afd628:	c5 fc 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm1
  afd62f:	00 
  afd630:	c5 f8 77             	vzeroupper
  afd633:	c3                   	ret
