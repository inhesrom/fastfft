
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006d4380 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6d4380:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  6d4384:	c5 f8 10 7f 10       	vmovups xmm7,XMMWORD PTR [rdi+0x10]
  6d4389:	c5 f8 10 67 20       	vmovups xmm4,XMMWORD PTR [rdi+0x20]
  6d438e:	c5 f8 10 4f 30       	vmovups xmm1,XMMWORD PTR [rdi+0x30]
  6d4393:	c5 c8 c6 c7 88       	vshufps xmm0,xmm6,xmm7,0x88
  6d4398:	c5 fc 11 44 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm0
  6d439e:	c5 78 10 57 50       	vmovups xmm10,XMMWORD PTR [rdi+0x50]
  6d43a3:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  6d43a8:	c4 c1 30 c6 d2 88    	vshufps xmm2,xmm9,xmm10,0x88
  6d43ae:	c5 78 10 9f 90 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0x90]
  6d43b5:	00 
  6d43b6:	c5 78 10 a7 80 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x80]
  6d43bd:	00 
  6d43be:	c4 c1 18 c6 db 88    	vshufps xmm3,xmm12,xmm11,0x88
  6d43c4:	c5 78 10 77 70       	vmovups xmm14,XMMWORD PTR [rdi+0x70]
  6d43c9:	c5 78 10 7f 60       	vmovups xmm15,XMMWORD PTR [rdi+0x60]
  6d43ce:	c4 c1 00 c6 ee 88    	vshufps xmm5,xmm15,xmm14,0x88
  6d43d4:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  6d43db:	00 
  6d43dc:	c5 78 10 87 a0 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xa0]
  6d43e3:	00 
  6d43e4:	c5 48 c6 ef dd       	vshufps xmm13,xmm6,xmm7,0xdd
  6d43e9:	c5 b8 c6 f0 88       	vshufps xmm6,xmm8,xmm0,0x88
  6d43ee:	c4 41 30 c6 d2 dd    	vshufps xmm10,xmm9,xmm10,0xdd
  6d43f4:	c5 d8 c6 f9 88       	vshufps xmm7,xmm4,xmm1,0x88
  6d43f9:	c4 41 18 c6 db dd    	vshufps xmm11,xmm12,xmm11,0xdd
  6d43ff:	c4 41 00 c6 f6 dd    	vshufps xmm14,xmm15,xmm14,0xdd
  6d4405:	c5 38 c6 f8 dd       	vshufps xmm15,xmm8,xmm0,0xdd
  6d440a:	c5 d8 c6 c1 dd       	vshufps xmm0,xmm4,xmm1,0xdd
  6d440f:	c5 6c 58 c3          	vaddps ymm8,ymm2,ymm3
  6d4413:	c5 fc 10 64 24 98    	vmovups ymm4,YMMWORD PTR [rsp-0x68]
  6d4419:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  6d441d:	c5 fc 11 4c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm1
  6d4423:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  6d4427:	c4 62 7d 18 25 30 10 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff9a1030]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6d442e:	9a ff 
  6d4430:	c4 62 1d ac c4       	vfnmadd213ps ymm8,ymm12,ymm4
  6d4435:	c5 b4 58 cd          	vaddps ymm1,ymm9,ymm5
  6d4439:	c5 fc 11 4c 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm1
  6d443f:	c4 62 1d ac cd       	vfnmadd213ps ymm9,ymm12,ymm5
  6d4444:	c4 c1 2c 58 cb       	vaddps ymm1,ymm10,ymm11
  6d4449:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  6d444d:	c5 fc 11 64 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm4
  6d4453:	c4 c2 1d ac cd       	vfnmadd213ps ymm1,ymm12,ymm13
  6d4458:	c5 84 58 e0          	vaddps ymm4,ymm15,ymm0
  6d445c:	c4 42 5d ac e6       	vfnmadd213ps ymm12,ymm4,ymm14
  6d4461:	c5 8c 58 e4          	vaddps ymm4,ymm14,ymm4
  6d4465:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  6d446a:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  6d446e:	c5 ec 5c db          	vsubps ymm3,ymm2,ymm3
  6d4472:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  6d4476:	c4 e2 7d 18 3d 55 0e 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9a0e55]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6d447d:	9a ff 
  6d447f:	c5 2c 59 d7          	vmulps ymm10,ymm10,ymm7
  6d4483:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  6d4487:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  6d448b:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  6d448f:	c4 c1 3c 58 fa       	vaddps ymm7,ymm8,ymm10
  6d4494:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  6d4499:	c5 34 58 d0          	vaddps ymm10,ymm9,ymm0
  6d449d:	c5 34 5c c8          	vsubps ymm9,ymm9,ymm0
  6d44a1:	c5 74 5c db          	vsubps ymm11,ymm1,ymm3
  6d44a5:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  6d44a9:	c5 1c 5c ee          	vsubps ymm13,ymm12,ymm6
  6d44ad:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  6d44b1:	c4 c1 44 5c ca       	vsubps ymm1,ymm7,ymm10
  6d44b6:	c5 a8 58 df          	vaddps xmm3,xmm10,xmm7
  6d44ba:	c5 fc 10 54 24 d8    	vmovups ymm2,YMMWORD PTR [rsp-0x28]
  6d44c0:	c5 fc 10 6c 24 b8    	vmovups ymm5,YMMWORD PTR [rsp-0x48]
  6d44c6:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6d44ca:	c4 e3 45 18 fb 01    	vinsertf128 ymm7,ymm7,xmm3,0x1
  6d44d0:	c4 c1 38 5c d9       	vsubps xmm3,xmm8,xmm9
  6d44d5:	c4 63 75 18 d3 01    	vinsertf128 ymm10,ymm1,xmm3,0x1
  6d44db:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  6d44e0:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  6d44e4:	c4 c1 44 14 da       	vunpcklps ymm3,ymm7,ymm10
  6d44e9:	c5 bc 14 ea          	vunpcklps ymm5,ymm8,ymm2
  6d44ed:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  6d44f1:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  6d44f5:	c4 c1 44 15 fa       	vunpckhps ymm7,ymm7,ymm10
  6d44fa:	c5 bc 15 d2          	vunpckhps ymm2,ymm8,ymm2
  6d44fe:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  6d4502:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  6d4506:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  6d450b:	c4 41 20 58 c5       	vaddps xmm8,xmm11,xmm13
  6d4510:	c5 7c 10 54 24 98    	vmovups ymm10,YMMWORD PTR [rsp-0x68]
  6d4516:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  6d451a:	c4 43 35 18 c0 01    	vinsertf128 ymm8,ymm9,xmm8,0x1
  6d4520:	c5 78 5c ce          	vsubps xmm9,xmm0,xmm6
  6d4524:	c4 c3 45 18 f9 01    	vinsertf128 ymm7,ymm7,xmm9,0x1
  6d452a:	c5 f8 58 f6          	vaddps xmm6,xmm0,xmm6
  6d452e:	c5 a8 5c e4          	vsubps xmm4,xmm10,xmm4
  6d4532:	c5 3c 14 cf          	vunpcklps ymm9,ymm8,ymm7
  6d4536:	c5 4c 14 d4          	vunpcklps ymm10,ymm6,ymm4
  6d453a:	c4 c1 35 14 c2       	vunpcklpd ymm0,ymm9,ymm10
  6d453f:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  6d4544:	c5 bc 15 ff          	vunpckhps ymm7,ymm8,ymm7
  6d4548:	c5 cc 15 e4          	vunpckhps ymm4,ymm6,ymm4
  6d454c:	c5 c5 14 f4          	vunpcklpd ymm6,ymm7,ymm4
  6d4550:	c5 c5 15 e4          	vunpckhpd ymm4,ymm7,ymm4
  6d4554:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  6d455b:	00 
  6d455c:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  6d4563:	00 
  6d4564:	c5 44 59 d5          	vmulps ymm10,ymm7,ymm5
  6d4568:	c4 42 4d bc d0       	vfnmadd231ps ymm10,ymm6,ymm8
  6d456d:	c5 c4 59 f6          	vmulps ymm6,ymm7,ymm6
  6d4571:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  6d4576:	c4 c2 55 b8 f0       	vfmadd231ps ymm6,ymm5,ymm8
  6d457b:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  6d4580:	c5 44 59 c3          	vmulps ymm8,ymm7,ymm3
  6d4584:	c4 62 35 bc c5       	vfnmadd231ps ymm8,ymm9,ymm5
  6d4589:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6d458d:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  6d4594:	00 
  6d4595:	c4 e2 65 b8 fd       	vfmadd231ps ymm7,ymm3,ymm5
  6d459a:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  6d45a1:	00 
  6d45a2:	c5 b4 59 ea          	vmulps ymm5,ymm9,ymm2
  6d45a6:	c4 e2 5d bc eb       	vfnmadd231ps ymm5,ymm4,ymm3
  6d45ab:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  6d45af:	c4 e2 6d b8 e3       	vfmadd231ps ymm4,ymm2,ymm3
  6d45b4:	c5 ac 58 d1          	vaddps ymm2,ymm10,ymm1
  6d45b8:	c5 bc 58 dd          	vaddps ymm3,ymm8,ymm5
  6d45bc:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  6d45c1:	c5 44 58 cc          	vaddps ymm9,ymm7,ymm4
  6d45c5:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  6d45c9:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  6d45cd:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  6d45d1:	c5 74 58 d4          	vaddps ymm10,ymm1,ymm4
  6d45d5:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  6d45da:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  6d45de:	c5 f4 5c c4          	vsubps ymm0,ymm1,ymm4
  6d45e2:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  6d45e6:	c5 cc 5c e5          	vsubps ymm4,ymm6,ymm5
  6d45ea:	c4 c1 44 5c e9       	vsubps ymm5,ymm7,ymm9
  6d45ef:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6d45f3:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  6d45f7:	c5 ec 14 f3          	vunpcklps ymm6,ymm2,ymm3
  6d45fb:	c5 e8 14 fb          	vunpcklps xmm7,xmm2,xmm3
  6d45ff:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  6d4603:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  6d4608:	c5 f8 11 3e          	vmovups XMMWORD PTR [rsi],xmm7
  6d460c:	c4 e3 7d 19 76 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm6,0x1
  6d4613:	c4 c1 2c 14 d0       	vunpcklps ymm2,ymm10,ymm8
  6d4618:	c4 c1 28 15 d8       	vunpckhps xmm3,xmm10,xmm8
  6d461d:	c4 c1 28 14 f0       	vunpcklps xmm6,xmm10,xmm8
  6d4622:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  6d4627:	c5 f8 11 5e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm3
  6d462c:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  6d4633:	c5 f4 14 d5          	vunpcklps ymm2,ymm1,ymm5
  6d4637:	c5 f0 15 dd          	vunpckhps xmm3,xmm1,xmm5
  6d463b:	c5 f0 14 cd          	vunpcklps xmm1,xmm1,xmm5
  6d463f:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  6d4644:	c5 f8 11 5e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm3
  6d4649:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  6d4650:	00 00 01 
  6d4653:	c5 fc 14 cc          	vunpcklps ymm1,ymm0,ymm4
  6d4657:	c5 f8 15 d4          	vunpckhps xmm2,xmm0,xmm4
  6d465b:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  6d465f:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  6d4666:	00 
  6d4667:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6d466e:	00 
  6d466f:	c4 e3 7d 19 8e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm1,0x1
  6d4676:	00 00 01 
  6d4679:	c5 f8 77             	vzeroupper
  6d467c:	c3                   	ret
