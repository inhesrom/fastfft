
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ae02c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ae02c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ae02c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae02cb:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  ae02d0:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae02d6:	c5 f8 10 3f          	vmovups xmm7,XMMWORD PTR [rdi]
  ae02da:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  ae02df:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  ae02e4:	62 e1 7c 08 10 87 48 	vmovups xmm16,XMMWORD PTR [rdi+0x48]
  ae02eb:	00 00 00 
  ae02ee:	c4 c3 7d 19 c2 01    	vextractf128 xmm10,ymm0,0x1
  ae02f4:	62 41 44 08 c6 ea dd 	vshufps xmm29,xmm7,xmm10,0xdd
  ae02fb:	c5 78 10 5f 60       	vmovups xmm11,XMMWORD PTR [rdi+0x60]
  ae0300:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  ae0305:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae030b:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae0311:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  ae0317:	c4 c1 20 c6 e6 dd    	vshufps xmm4,xmm11,xmm14,0xdd
  ae031d:	62 61 14 20 5c d4    	vsubps ymm26,ymm29,ymm4
  ae0323:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  ae032a:	00 
  ae032b:	c5 fb 10 87 a0 00 00 	vmovsd xmm0,QWORD PTR [rdi+0xa0]
  ae0332:	00 
  ae0333:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae0339:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae033f:	62 b3 7d 28 19 c1 01 	vextractf32x4 xmm17,ymm0,0x1
  ae0346:	62 b1 1c 08 c6 f1 88 	vshufps xmm6,xmm12,xmm17,0x88
  ae034d:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  ae0352:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae0358:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae035e:	62 b3 7d 28 19 c2 01 	vextractf32x4 xmm18,ymm0,0x1
  ae0365:	62 31 54 08 c6 ca 88 	vshufps xmm9,xmm5,xmm18,0x88
  ae036c:	c4 41 4c 5c c1       	vsubps ymm8,ymm6,ymm9
  ae0371:	62 c1 2c 20 5c f0    	vsubps ymm22,ymm26,ymm8
  ae0377:	c5 7b 10 6f 58       	vmovsd xmm13,QWORD PTR [rdi+0x58]
  ae037c:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  ae0382:	c4 43 15 0c ef c0    	vblendps ymm13,ymm13,ymm15,0xc0
  ae0388:	62 33 7d 28 19 eb 01 	vextractf32x4 xmm19,ymm13,0x1
  ae038f:	62 31 7c 00 c6 eb dd 	vshufps xmm13,xmm16,xmm19,0xdd
  ae0396:	62 e1 7c 08 10 a7 a8 	vmovups xmm20,XMMWORD PTR [rdi+0xa8]
  ae039d:	00 00 00 
  ae03a0:	62 e1 ff 08 10 6f 17 	vmovsd xmm21,QWORD PTR [rdi+0xb8]
  ae03a7:	62 b3 7d 28 18 c5 01 	vinsertf32x4 ymm0,ymm0,xmm21,0x1
  ae03ae:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae03b4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae03ba:	62 e1 5c 00 c6 e8 dd 	vshufps xmm21,xmm20,xmm0,0xdd
  ae03c1:	62 a1 14 28 5c fd    	vsubps ymm23,ymm13,ymm21
  ae03c7:	62 a1 7c 00 c6 c3 88 	vshufps xmm16,xmm16,xmm19,0x88
  ae03ce:	62 f1 5c 00 c6 c0 88 	vshufps xmm0,xmm20,xmm0,0x88
  ae03d5:	62 e1 7c 20 5c d8    	vsubps ymm19,ymm16,ymm0
  ae03db:	62 a1 44 20 5c e3    	vsubps ymm20,ymm23,ymm19
  ae03e1:	62 62 7d 28 18 05 b1 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff594fb1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ae03e8:	4f 59 ff 
  ae03eb:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  ae03f1:	62 61 ff 08 10 4f 05 	vmovsd xmm25,QWORD PTR [rdi+0x28]
  ae03f8:	62 93 7d 28 18 c9 01 	vinsertf32x4 ymm1,ymm0,xmm25,0x1
  ae03ff:	c4 c3 75 0c cf c0    	vblendps ymm1,ymm1,ymm15,0xc0
  ae0405:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ae040b:	62 61 64 08 c6 c9 88 	vshufps xmm25,xmm3,xmm1,0x88
  ae0412:	62 61 7c 08 10 9f 78 	vmovups xmm27,XMMWORD PTR [rdi+0x78]
  ae0419:	00 00 00 
  ae041c:	62 61 ff 08 10 67 11 	vmovsd xmm28,QWORD PTR [rdi+0x88]
  ae0423:	62 93 7d 28 18 d4 01 	vinsertf32x4 ymm2,ymm0,xmm28,0x1
  ae042a:	c4 c3 6d 0c d7 c0    	vblendps ymm2,ymm2,ymm15,0xc0
  ae0430:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ae0436:	62 71 24 00 c6 fa 88 	vshufps xmm15,xmm27,xmm2,0x88
  ae043d:	62 41 34 20 5c e7    	vsubps ymm28,ymm25,ymm15
  ae0443:	c5 e0 c6 c9 dd       	vshufps xmm1,xmm3,xmm1,0xdd
  ae0448:	62 f1 24 00 c6 d2 dd 	vshufps xmm2,xmm27,xmm2,0xdd
  ae044f:	62 61 74 28 5c da    	vsubps ymm27,ymm1,ymm2
  ae0455:	62 91 1c 20 58 db    	vaddps ymm3,ymm28,ymm27
  ae045b:	62 01 64 28 59 f0    	vmulps ymm30,ymm3,ymm24
  ae0461:	62 91 5c 20 5c de    	vsubps ymm3,ymm20,ymm30
  ae0467:	c4 c1 40 c6 fa 88    	vshufps xmm7,xmm7,xmm10,0x88
  ae046d:	c4 41 20 c6 d6 88    	vshufps xmm10,xmm11,xmm14,0x88
  ae0473:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  ae0478:	62 b1 54 08 c6 ea dd 	vshufps xmm5,xmm5,xmm18,0xdd
  ae047f:	62 31 1c 08 c6 e1 dd 	vshufps xmm12,xmm12,xmm17,0xdd
  ae0486:	c4 41 54 5c f4       	vsubps ymm14,ymm5,ymm12
  ae048b:	62 c1 24 28 5c ce    	vsubps ymm17,ymm11,ymm14
  ae0491:	62 81 24 20 5c d4    	vsubps ymm18,ymm27,ymm28
  ae0497:	62 81 6c 20 59 d0    	vmulps ymm18,ymm18,ymm24
  ae049d:	62 a1 64 20 58 df    	vaddps ymm19,ymm19,ymm23
  ae04a3:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  ae04a9:	62 a1 6c 20 58 fb    	vaddps ymm23,ymm18,ymm19
  ae04af:	62 f1 14 20 58 e4    	vaddps ymm4,ymm29,ymm4
  ae04b5:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  ae04b9:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  ae04bd:	62 f1 7c 20 58 c0    	vaddps ymm0,ymm16,ymm0
  ae04c3:	62 51 34 20 58 ff    	vaddps ymm15,ymm25,ymm15
  ae04c9:	62 c1 7c 28 5c c7    	vsubps ymm16,ymm0,ymm15
  ae04cf:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  ae04d3:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ae04d7:	c5 44 5c ce          	vsubps ymm9,ymm7,ymm6
  ae04db:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  ae04df:	62 b1 14 28 58 d5    	vaddps ymm2,ymm13,ymm21
  ae04e5:	c5 74 5c d2          	vsubps ymm10,ymm1,ymm2
  ae04e9:	62 11 3c 28 58 c2    	vaddps ymm8,ymm8,ymm26
  ae04ef:	62 31 6c 20 5c eb    	vsubps ymm13,ymm18,ymm19
  ae04f5:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  ae04fa:	62 31 0c 20 58 f4    	vaddps ymm14,ymm30,ymm20
  ae0500:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  ae0504:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  ae0508:	c5 c4 58 d6          	vaddps ymm2,ymm7,ymm6
  ae050c:	c5 84 58 c0          	vaddps ymm0,ymm15,ymm0
  ae0510:	62 f1 4c 20 58 eb    	vaddps ymm5,ymm22,ymm3
  ae0516:	62 b1 74 20 58 f7    	vaddps ymm6,ymm17,ymm23
  ae051c:	62 d1 7c 20 58 fc    	vaddps ymm7,ymm16,ymm12
  ae0522:	c4 41 34 58 fa       	vaddps ymm15,ymm9,ymm10
  ae0527:	62 c1 3c 28 58 d5    	vaddps ymm18,ymm8,ymm13
  ae052d:	62 c1 24 28 58 de    	vaddps ymm19,ymm11,ymm14
  ae0533:	62 e1 5c 28 58 e1    	vaddps ymm20,ymm4,ymm1
  ae0539:	62 e1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm0
  ae053f:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  ae0543:	62 f3 55 20 18 c0 01 	vinsertf32x4 ymm0,ymm21,xmm0,0x1
  ae054a:	c4 c1 20 5c d6       	vsubps xmm2,xmm11,xmm14
  ae054f:	62 f3 65 20 18 d2 01 	vinsertf32x4 ymm2,ymm19,xmm2,0x1
  ae0556:	c4 41 30 5c ca       	vsubps xmm9,xmm9,xmm10
  ae055b:	c4 43 05 18 c9 01    	vinsertf128 ymm9,ymm15,xmm9,0x1
  ae0561:	62 31 74 00 5c d7    	vsubps xmm10,xmm17,xmm23
  ae0567:	c4 c3 4d 18 f2 01    	vinsertf128 ymm6,ymm6,xmm10,0x1
  ae056d:	c4 41 7d 15 d1       	vunpckhpd ymm10,ymm0,ymm9
  ae0572:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  ae0577:	c5 6d 15 ce          	vunpckhpd ymm9,ymm2,ymm6
  ae057b:	c4 41 2c c6 c9 88    	vshufps ymm9,ymm10,ymm9,0x88
  ae0581:	c5 ed 14 d6          	vunpcklpd ymm2,ymm2,ymm6
  ae0585:	c5 fc c6 f2 88       	vshufps ymm6,ymm0,ymm2,0x88
  ae058a:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ae058f:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  ae0594:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae0599:	c4 c1 34 c6 d1 d8    	vshufps ymm2,ymm9,ymm9,0xd8
  ae059f:	c5 d8 5c c9          	vsubps xmm1,xmm4,xmm1
  ae05a3:	62 f3 5d 20 18 c9 01 	vinsertf32x4 ymm1,ymm20,xmm1,0x1
  ae05aa:	c4 c1 38 5c e5       	vsubps xmm4,xmm8,xmm13
  ae05af:	62 f3 6d 20 18 e4 01 	vinsertf32x4 ymm4,ymm18,xmm4,0x1
  ae05b6:	62 31 1c 08 5c c0    	vsubps xmm8,xmm12,xmm16
  ae05bc:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  ae05c2:	62 f1 4c 00 5c db    	vsubps xmm3,xmm22,xmm3
  ae05c8:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  ae05ce:	c5 f5 15 ef          	vunpckhpd ymm5,ymm1,ymm7
  ae05d2:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  ae05d6:	c5 dd 15 fb          	vunpckhpd ymm7,ymm4,ymm3
  ae05da:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  ae05df:	c5 dd 14 db          	vunpcklpd ymm3,ymm4,ymm3
  ae05e3:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  ae05e8:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ae05ed:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  ae05f2:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ae05f7:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  ae05fc:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  ae0601:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  ae0606:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ae060d:	00 
  ae060e:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  ae0615:	00 
  ae0616:	c5 74 59 d5          	vmulps ymm10,ymm1,ymm5
  ae061a:	c4 62 7d b8 d7       	vfmadd231ps ymm10,ymm0,ymm7
  ae061f:	c5 3c 59 db          	vmulps ymm11,ymm8,ymm3
  ae0623:	c4 42 6d b8 d9       	vfmadd231ps ymm11,ymm2,ymm9
  ae0628:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  ae062d:	c4 62 7d 18 2d 2a 4e 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff594e2a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ae0634:	59 ff 
  ae0636:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  ae063b:	c4 62 1d ac f4       	vfnmadd213ps ymm14,ymm12,ymm4
  ae0640:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  ae0644:	c4 e2 75 bc c7       	vfnmadd231ps ymm0,ymm1,ymm7
  ae0649:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ae064d:	c4 c2 65 bc c9       	vfnmadd231ps ymm1,ymm3,ymm9
  ae0652:	c4 e2 7d 18 15 79 4c 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff594c79]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ae0659:	59 ff 
  ae065b:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  ae065f:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  ae0663:	c5 8c 58 eb          	vaddps ymm5,ymm14,ymm3
  ae0667:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  ae066b:	c4 62 7d ac ee       	vfnmadd213ps ymm13,ymm0,ymm6
  ae0670:	c4 c1 2c 5c cb       	vsubps ymm1,ymm10,ymm11
  ae0675:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  ae0679:	c5 94 5c d1          	vsubps ymm2,ymm13,ymm1
  ae067d:	c5 8c 5c db          	vsubps ymm3,ymm14,ymm3
  ae0681:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  ae0685:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  ae0689:	c5 cc 58 c0          	vaddps ymm0,ymm6,ymm0
  ae068d:	c5 fc 28 35 0b 52 59 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff59520b]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ae0694:	ff 
  ae0695:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ae0699:	62 f2 4d 28 7f fc    	vpermt2ps ymm7,ymm6,ymm4
  ae069f:	c5 7c 28 05 39 6b 59 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff596b39]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ae06a6:	ff 
  ae06a7:	62 f2 3d 28 7f c4    	vpermt2ps ymm0,ymm8,ymm4
  ae06ad:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  ae06b1:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  ae06b6:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  ae06ba:	62 f2 4d 28 7f c3    	vpermt2ps ymm0,ymm6,ymm3
  ae06c0:	62 f2 3d 28 7f cb    	vpermt2ps ymm1,ymm8,ymm3
  ae06c6:	c5 fc 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm1
  ae06cb:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  ae06d0:	62 f2 6d 28 77 f5    	vpermi2ps ymm6,ymm2,ymm5
  ae06d6:	62 f2 3d 28 7f d5    	vpermt2ps ymm2,ymm8,ymm5
  ae06dc:	c5 fc 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm2
  ae06e3:	00 
  ae06e4:	c5 fc 11 b6 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm6
  ae06eb:	00 
  ae06ec:	c5 f8 77             	vzeroupper
  ae06ef:	c3                   	ret
