
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad0280 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad0280:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  ad0285:	c5 f8 10 97 80 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0x80]
  ad028c:	00 
  ad028d:	c5 f4 c6 c2 88       	vshufps ymm0,ymm1,ymm2,0x88
  ad0292:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  ad0298:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  ad029f:	00 
  ad02a0:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  ad02a7:	00 
  ad02a8:	c5 e4 c6 c4 88       	vshufps ymm0,ymm3,ymm4,0x88
  ad02ad:	c4 e3 fd 01 f8 d8    	vpermpd ymm7,ymm0,0xd8
  ad02b3:	c5 cc 5c ef          	vsubps ymm5,ymm6,ymm7
  ad02b7:	c4 e2 7d 18 05 14 50 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5a5014]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad02be:	5a ff 
  ad02c0:	c5 d4 59 e8          	vmulps ymm5,ymm5,ymm0
  ad02c4:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ad02c9:	c4 63 fd 01 c1 d8    	vpermpd ymm8,ymm1,0xd8
  ad02cf:	c5 e4 c6 cc dd       	vshufps ymm1,ymm3,ymm4,0xdd
  ad02d4:	c4 63 fd 01 c9 d8    	vpermpd ymm9,ymm1,0xd8
  ad02da:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  ad02df:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  ad02e3:	c5 78 10 5f 20       	vmovups xmm11,XMMWORD PTR [rdi+0x20]
  ad02e8:	c4 c1 2c c6 cb dd    	vshufps ymm1,ymm10,ymm11,0xdd
  ad02ee:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  ad02f4:	c4 e2 7d 18 0d 63 51 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a5163]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad02fb:	5a ff 
  ad02fd:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  ad0301:	c4 62 65 ac e4       	vfnmadd213ps ymm12,ymm3,ymm4
  ad0306:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  ad030a:	c5 7c 10 af f0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xf0]
  ad0311:	00 
  ad0312:	c5 78 10 b7 10 01 00 	vmovups xmm14,XMMWORD PTR [rdi+0x110]
  ad0319:	00 
  ad031a:	c4 41 14 c6 fe 88    	vshufps ymm15,ymm13,ymm14,0x88
  ad0320:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  ad0326:	62 e1 7c 28 10 87 30 	vmovups ymm16,YMMWORD PTR [rdi+0x30]
  ad032d:	00 00 00 
  ad0330:	62 e1 7c 08 10 4f 05 	vmovups xmm17,XMMWORD PTR [rdi+0x50]
  ad0337:	62 a1 7c 20 c6 d1 88 	vshufps ymm18,ymm16,ymm17,0x88
  ad033e:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  ad0345:	c4 41 14 c6 ee dd    	vshufps ymm13,ymm13,ymm14,0xdd
  ad034b:	62 31 04 28 5c f2    	vsubps ymm14,ymm15,ymm18
  ad0351:	c5 0c 59 f0          	vmulps ymm14,ymm14,ymm0
  ad0355:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  ad035b:	62 a1 7c 20 c6 c1 dd 	vshufps ymm16,ymm16,ymm17,0xdd
  ad0362:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  ad0369:	62 a1 14 28 58 c8    	vaddps ymm17,ymm13,ymm16
  ad036f:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  ad0373:	c5 fc 10 bf 90 00 00 	vmovups ymm7,YMMWORD PTR [rdi+0x90]
  ad037a:	00 
  ad037b:	c4 41 2c c6 d3 88    	vshufps ymm10,ymm10,ymm11,0x88
  ad0381:	c5 78 10 9f b0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xb0]
  ad0388:	00 
  ad0389:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ad038e:	c4 41 44 c6 cb dd    	vshufps ymm9,ymm7,ymm11,0xdd
  ad0394:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ad039a:	62 31 04 28 58 fa    	vaddps ymm15,ymm15,ymm18
  ad03a0:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  ad03a6:	62 c2 75 20 ac d1    	vfnmadd213ps ymm18,ymm17,ymm9
  ad03ac:	c4 c1 44 c6 fb 88    	vshufps ymm7,ymm7,ymm11,0x88
  ad03b2:	62 31 0c 28 58 da    	vaddps ymm11,ymm14,ymm18
  ad03b8:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ad03be:	62 31 14 28 5c e8    	vsubps ymm13,ymm13,ymm16
  ad03c4:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  ad03ca:	62 c2 4d 28 ac c2    	vfnmadd213ps ymm16,ymm6,ymm10
  ad03d0:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ad03d4:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  ad03d8:	62 51 7c 20 5c e0    	vsubps ymm12,ymm16,ymm8
  ad03de:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ad03e4:	62 51 6c 20 5c f6    	vsubps ymm14,ymm18,ymm14
  ad03ea:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  ad03f0:	62 e2 05 28 ac d7    	vfnmadd213ps ymm18,ymm15,ymm7
  ad03f6:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  ad03fa:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  ad0400:	62 c1 6c 20 5c c5    	vsubps ymm16,ymm18,ymm13
  ad0406:	62 51 6c 20 58 ed    	vaddps ymm13,ymm18,ymm13
  ad040c:	62 c1 6c 28 5c d3    	vsubps ymm18,ymm2,ymm11
  ad0412:	c5 dc 58 db          	vaddps ymm3,ymm4,ymm3
  ad0416:	62 b1 1c 28 5c e0    	vsubps ymm4,ymm12,ymm16
  ad041c:	62 31 34 28 58 c9    	vaddps ymm9,ymm9,ymm17
  ad0422:	62 c1 54 28 58 ce    	vaddps ymm17,ymm5,ymm14
  ad0428:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  ad042c:	c4 41 3c 58 d5       	vaddps ymm10,ymm8,ymm13
  ad0431:	c5 04 58 ff          	vaddps ymm15,ymm15,ymm7
  ad0435:	c4 c1 64 5c f9       	vsubps ymm7,ymm3,ymm9
  ad043a:	c5 24 58 da          	vaddps ymm11,ymm11,ymm2
  ad043e:	62 c1 4c 28 5c df    	vsubps ymm19,ymm6,ymm15
  ad0444:	62 31 1c 28 58 e0    	vaddps ymm12,ymm12,ymm16
  ad044a:	c4 41 54 5c f6       	vsubps ymm14,ymm5,ymm14
  ad044f:	c4 c1 3c 5c d5       	vsubps ymm2,ymm8,ymm13
  ad0454:	c5 34 58 eb          	vaddps ymm13,ymm9,ymm3
  ad0458:	c5 84 58 de          	vaddps ymm3,ymm15,ymm6
  ad045c:	c4 c3 65 18 ea 01    	vinsertf128 ymm5,ymm3,xmm10,0x1
  ad0462:	c4 c3 65 06 f2 31    	vperm2f128 ymm6,ymm3,ymm10,0x31
  ad0468:	c4 63 6d 18 c4 01    	vinsertf128 ymm8,ymm2,xmm4,0x1
  ad046e:	c4 e3 6d 06 e4 31    	vperm2f128 ymm4,ymm2,ymm4,0x31
  ad0474:	c4 41 78 28 cc       	vmovaps xmm9,xmm12
  ad0479:	c4 c1 55 14 d9       	vunpcklpd ymm3,ymm5,ymm9
  ad047e:	62 31 7c 08 28 d3    	vmovaps xmm10,xmm19
  ad0484:	c4 41 3d 14 fa       	vunpcklpd ymm15,ymm8,ymm10
  ad0489:	c4 c1 64 c6 d7 88    	vshufps ymm2,ymm3,ymm15,0x88
  ad048f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ad0494:	c4 c1 64 c6 df dd    	vshufps ymm3,ymm3,ymm15,0xdd
  ad049a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ad049f:	c4 c1 55 15 e9       	vunpckhpd ymm5,ymm5,ymm9
  ad04a4:	c4 41 3d 15 ca       	vunpckhpd ymm9,ymm8,ymm10
  ad04a9:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  ad04af:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad04b5:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  ad04bb:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad04c0:	c4 43 7d 19 e1 01    	vextractf128 xmm9,ymm12,0x1
  ad04c6:	c4 c1 4d 14 f1       	vunpcklpd ymm6,ymm6,ymm9
  ad04cb:	62 c3 7d 28 19 d9 01 	vextractf32x4 xmm9,ymm19,0x1
  ad04d2:	c4 c1 5d 14 e1       	vunpcklpd ymm4,ymm4,ymm9
  ad04d7:	c5 4c c6 cc 88       	vshufps ymm9,ymm6,ymm4,0x88
  ad04dc:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ad04e2:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  ad04e7:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  ad04ec:	62 33 15 28 18 e1 01 	vinsertf32x4 ymm12,ymm13,xmm17,0x1
  ad04f3:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  ad04fa:	62 33 0d 28 18 fa 01 	vinsertf32x4 ymm15,ymm14,xmm18,0x1
  ad0501:	62 33 8d 28 23 f2 03 	vshuff64x2 ymm14,ymm14,ymm18,0x3
  ad0508:	62 c1 7c 08 28 c3    	vmovaps xmm16,xmm11
  ad050e:	62 31 9d 28 14 d0    	vunpcklpd ymm10,ymm12,ymm16
  ad0514:	62 e1 7c 08 28 cf    	vmovaps xmm17,xmm7
  ad051a:	62 a1 85 28 14 d1    	vunpcklpd ymm18,ymm15,ymm17
  ad0520:	62 b1 2c 28 c6 e2 88 	vshufps ymm4,ymm10,ymm18,0x88
  ad0527:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad052c:	62 31 2c 28 c6 d2 dd 	vshufps ymm10,ymm10,ymm18,0xdd
  ad0533:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ad0539:	62 31 9d 28 15 e0    	vunpckhpd ymm12,ymm12,ymm16
  ad053f:	62 31 85 28 15 f9    	vunpckhpd ymm15,ymm15,ymm17
  ad0545:	62 c1 1c 28 c6 c7 88 	vshufps ymm16,ymm12,ymm15,0x88
  ad054c:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  ad0553:	c4 41 1c c6 e7 dd    	vshufps ymm12,ymm12,ymm15,0xdd
  ad0559:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ad055f:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  ad0565:	c4 41 15 14 db       	vunpcklpd ymm11,ymm13,ymm11
  ad056a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  ad0570:	c5 8d 14 ff          	vunpcklpd ymm7,ymm14,ymm7
  ad0574:	c5 24 c6 ef 88       	vshufps ymm13,ymm11,ymm7,0x88
  ad0579:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  ad057f:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  ad0584:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  ad0589:	c5 7c 10 72 40       	vmovups ymm14,YMMWORD PTR [rdx+0x40]
  ad058e:	c5 7c 10 7a 60       	vmovups ymm15,YMMWORD PTR [rdx+0x60]
  ad0593:	62 e1 7c 28 10 4a 04 	vmovups ymm17,YMMWORD PTR [rdx+0x80]
  ad059a:	62 e1 7c 28 10 52 05 	vmovups ymm18,YMMWORD PTR [rdx+0xa0]
  ad05a1:	62 b1 3c 28 59 f9    	vmulps ymm7,ymm8,ymm17
  ad05a7:	62 b2 7d 20 bc fa    	vfnmadd231ps ymm7,ymm16,ymm18
  ad05ad:	62 a1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm17
  ad05b3:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  ad05ba:	62 a2 3d 28 b8 c2    	vfmadd231ps ymm16,ymm8,ymm18
  ad05c0:	c5 7c 10 82 20 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x120]
  ad05c7:	00 
  ad05c8:	62 a1 34 28 59 d1    	vmulps ymm18,ymm9,ymm17
  ad05ce:	62 c2 15 28 bc d0    	vfnmadd231ps ymm18,ymm13,ymm8
  ad05d4:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  ad05da:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  ad05e1:	c4 42 35 b8 e8       	vfmadd231ps ymm13,ymm9,ymm8
  ad05e6:	c5 7c 10 82 e0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xe0]
  ad05ed:	00 
  ad05ee:	62 31 54 28 59 c9    	vmulps ymm9,ymm5,ymm17
  ad05f4:	c4 42 1d bc c8       	vfnmadd231ps ymm9,ymm12,ymm8
  ad05f9:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  ad05ff:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  ad0606:	c4 42 55 b8 e0       	vfmadd231ps ymm12,ymm5,ymm8
  ad060b:	c5 fc 10 aa 60 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x160]
  ad0612:	00 
  ad0613:	62 31 4c 28 59 c1    	vmulps ymm8,ymm6,ymm17
  ad0619:	c4 62 25 bc c5       	vfnmadd231ps ymm8,ymm11,ymm5
  ad061e:	62 31 24 28 59 d9    	vmulps ymm11,ymm11,ymm17
  ad0624:	62 a1 44 28 58 ca    	vaddps ymm17,ymm7,ymm18
  ad062a:	c4 62 4d b8 dd       	vfmadd231ps ymm11,ymm6,ymm5
  ad062f:	62 b1 6c 28 58 e9    	vaddps ymm5,ymm2,ymm17
  ad0635:	c5 8c 59 f3          	vmulps ymm6,ymm14,ymm3
  ad0639:	c4 c2 2d bc f7       	vfnmadd231ps ymm6,ymm10,ymm15
  ad063e:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  ad0643:	c5 3c 58 f6          	vaddps ymm14,ymm8,ymm6
  ad0647:	c4 42 65 b8 d7       	vfmadd231ps ymm10,ymm3,ymm15
  ad064c:	c4 c1 34 58 de       	vaddps ymm3,ymm9,ymm14
  ad0651:	62 51 7c 20 58 fd    	vaddps ymm15,ymm16,ymm13
  ad0657:	62 e2 75 28 ac ca    	vfnmadd213ps ymm17,ymm1,ymm2
  ad065d:	c5 84 58 d4          	vaddps ymm2,ymm15,ymm4
  ad0661:	c4 42 75 bc ce       	vfnmadd231ps ymm9,ymm1,ymm14
  ad0666:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad066b:	c4 62 75 ac fc       	vfnmadd213ps ymm15,ymm1,ymm4
  ad0670:	c4 c1 1c 58 e6       	vaddps ymm4,ymm12,ymm14
  ad0675:	c4 62 0d bc e1       	vfnmadd231ps ymm12,ymm14,ymm1
  ad067a:	62 d1 7c 20 5c cd    	vsubps ymm1,ymm16,ymm13
  ad0680:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad0685:	62 b1 44 28 5c fa    	vsubps ymm7,ymm7,ymm18
  ad068b:	c5 f4 59 c8          	vmulps ymm1,ymm1,ymm0
  ad068f:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  ad0693:	62 71 74 20 58 c1    	vaddps ymm8,ymm17,ymm1
  ad0699:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ad069d:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  ad06a1:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  ad06a5:	c4 c1 34 58 f2       	vaddps ymm6,ymm9,ymm10
  ad06aa:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  ad06b0:	c5 3c 5c de          	vsubps ymm11,ymm8,ymm6
  ad06b4:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  ad06b9:	c5 04 5c d7          	vsubps ymm10,ymm15,ymm7
  ad06bd:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  ad06c1:	c5 1c 5c e8          	vsubps ymm13,ymm12,ymm0
  ad06c5:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  ad06c9:	c4 41 2c 5c e5       	vsubps ymm12,ymm10,ymm13
  ad06ce:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ad06d2:	c5 34 58 c1          	vaddps ymm8,ymm9,ymm1
  ad06d6:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  ad06db:	c5 44 58 e8          	vaddps ymm13,ymm7,ymm0
  ad06df:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  ad06e4:	c5 54 5c cb          	vsubps ymm9,ymm5,ymm3
  ad06e8:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  ad06ec:	c5 ec 5c fc          	vsubps ymm7,ymm2,ymm4
  ad06f0:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ad06f4:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  ad06f8:	c5 fc 28 25 e0 6a 5a 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5a6ae0]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ad06ff:	ff 
  ad0700:	c4 e3 7d 19 dd 01    	vextractf128 xmm5,ymm3,0x1
  ad0706:	62 f2 5d 28 7f da    	vpermt2ps ymm3,ymm4,ymm2
  ad070c:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  ad0710:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ad0716:	c5 d0 14 d2          	vunpcklps xmm2,xmm5,xmm2
  ad071a:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  ad071f:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  ad0725:	62 52 5d 28 7f dc    	vpermt2ps ymm11,ymm4,ymm12
  ad072b:	c5 7c 11 5e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm11
  ad0730:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  ad0736:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ad073a:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  ad073f:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  ad0745:	62 52 5d 28 7f c5    	vpermt2ps ymm8,ymm4,ymm13
  ad074b:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  ad0750:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  ad0756:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ad075a:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  ad0761:	00 
  ad0762:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  ad0768:	62 72 5d 28 7f cf    	vpermt2ps ymm9,ymm4,ymm7
  ad076e:	c5 7c 11 8e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm9
  ad0775:	00 
  ad0776:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  ad077c:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ad0780:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  ad0787:	00 
  ad0788:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  ad078e:	62 d2 5d 28 7f f2    	vpermt2ps ymm6,ymm4,ymm10
  ad0794:	c5 fc 11 b6 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm6
  ad079b:	00 
  ad079c:	c4 63 7d 19 d3 01    	vextractf128 xmm3,ymm10,0x1
  ad07a2:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ad07a6:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  ad07ad:	00 
  ad07ae:	62 f2 75 28 77 e0    	vpermi2ps ymm4,ymm1,ymm0
  ad07b4:	c5 fc 11 a6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm4
  ad07bb:	00 
  ad07bc:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ad07c2:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ad07c8:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  ad07cc:	c5 f8 11 86 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm0
  ad07d3:	00 
  ad07d4:	c5 f8 77             	vzeroupper
  ad07d7:	c3                   	ret
