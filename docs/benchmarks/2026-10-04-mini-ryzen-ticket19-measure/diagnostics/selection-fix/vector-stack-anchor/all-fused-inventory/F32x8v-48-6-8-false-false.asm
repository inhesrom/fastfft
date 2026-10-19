
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac8280 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac8280:	c5 fc 10 87 80 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0x80]
  ac8287:	00 
  ac8288:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  ac828f:	00 
  ac8290:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  ac8295:	c4 e3 fd 01 ea d8    	vpermpd ymm5,ymm2,0xd8
  ac829b:	c5 fc 10 9f 00 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x100]
  ac82a2:	00 
  ac82a3:	c5 fc 10 a7 20 01 00 	vmovups ymm4,YMMWORD PTR [rdi+0x120]
  ac82aa:	00 
  ac82ab:	c5 e4 c6 d4 88       	vshufps ymm2,ymm3,ymm4,0x88
  ac82b0:	c4 e3 fd 01 fa d8    	vpermpd ymm7,ymm2,0xd8
  ac82b6:	c5 d4 5c d7          	vsubps ymm2,ymm5,ymm7
  ac82ba:	c4 e2 7d 18 35 11 d0 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5ad011]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac82c1:	5a ff 
  ac82c3:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  ac82c7:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  ac82cc:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  ac82d2:	c5 e4 c6 c4 dd       	vshufps ymm0,ymm3,ymm4,0xdd
  ac82d7:	c4 63 fd 01 c8 d8    	vpermpd ymm9,ymm0,0xd8
  ac82dd:	c4 c1 3c 58 c1       	vaddps ymm0,ymm8,ymm9
  ac82e2:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  ac82e6:	c5 7c 10 5f 20       	vmovups ymm11,YMMWORD PTR [rdi+0x20]
  ac82eb:	c5 7c 10 67 40       	vmovups ymm12,YMMWORD PTR [rdi+0x40]
  ac82f0:	c5 7c 10 6f 60       	vmovups ymm13,YMMWORD PTR [rdi+0x60]
  ac82f5:	c4 c1 2c c6 cb dd    	vshufps ymm1,ymm10,ymm11,0xdd
  ac82fb:	c4 e2 7d 18 25 5c d1 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5ad15c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac8302:	5a ff 
  ac8304:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  ac830a:	c5 7c 28 f4          	vmovaps ymm14,ymm4
  ac830e:	c4 62 7d ac f3       	vfnmadd213ps ymm14,ymm0,ymm3
  ac8313:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  ac8317:	c5 7c 10 bf 40 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x140]
  ac831e:	00 
  ac831f:	62 e1 7c 28 10 47 0b 	vmovups ymm16,YMMWORD PTR [rdi+0x160]
  ac8326:	62 a1 04 28 c6 c8 88 	vshufps ymm17,ymm15,ymm16,0x88
  ac832d:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  ac8334:	62 c1 1c 28 c6 d5 88 	vshufps ymm18,ymm12,ymm13,0x88
  ac833b:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  ac8342:	62 31 04 28 c6 f8 dd 	vshufps ymm15,ymm15,ymm16,0xdd
  ac8349:	62 a1 74 20 5c c2    	vsubps ymm16,ymm17,ymm18
  ac834f:	62 e1 7c 20 59 c6    	vmulps ymm16,ymm16,ymm6
  ac8355:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  ac835b:	c4 41 1c c6 e5 dd    	vshufps ymm12,ymm12,ymm13,0xdd
  ac8361:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ac8367:	c4 41 04 58 ec       	vaddps ymm13,ymm15,ymm12
  ac836c:	c5 d4 58 ff          	vaddps ymm7,ymm5,ymm7
  ac8370:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  ac8377:	00 
  ac8378:	c4 41 2c c6 d3 88    	vshufps ymm10,ymm10,ymm11,0x88
  ac837e:	c5 7c 10 9f e0 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0xe0]
  ac8385:	00 
  ac8386:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ac838b:	c4 41 54 c6 cb dd    	vshufps ymm9,ymm5,ymm11,0xdd
  ac8391:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac8397:	62 a1 74 20 58 ca    	vaddps ymm17,ymm17,ymm18
  ac839d:	62 e1 7c 28 28 d4    	vmovaps ymm18,ymm4
  ac83a3:	62 c2 15 28 ac d1    	vfnmadd213ps ymm18,ymm13,ymm9
  ac83a9:	c4 41 54 c6 db 88    	vshufps ymm11,ymm5,ymm11,0x88
  ac83af:	62 a1 7c 20 58 da    	vaddps ymm19,ymm16,ymm18
  ac83b5:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  ac83ba:	62 b1 74 28 5c eb    	vsubps ymm5,ymm1,ymm19
  ac83c0:	c4 43 fd 01 fa d8    	vpermpd ymm15,ymm10,0xd8
  ac83c6:	c5 3c 59 c6          	vmulps ymm8,ymm8,ymm6
  ac83ca:	c5 9c 59 f6          	vmulps ymm6,ymm12,ymm6
  ac83ce:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  ac83d2:	c4 42 45 ac d7       	vfnmadd213ps ymm10,ymm7,ymm15
  ac83d7:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  ac83db:	c4 41 2c 5c f0       	vsubps ymm14,ymm10,ymm8
  ac83e0:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  ac83e6:	62 d2 75 20 ac e3    	vfnmadd213ps ymm4,ymm17,ymm11
  ac83ec:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  ac83f2:	62 e1 5c 28 5c d6    	vsubps ymm18,ymm4,ymm6
  ac83f8:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  ac83fd:	62 a1 0c 28 5c e2    	vsubps ymm20,ymm14,ymm18
  ac8403:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  ac8407:	62 a1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm16
  ac840d:	c5 e4 58 c0          	vaddps ymm0,ymm3,ymm0
  ac8411:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  ac8415:	c4 c1 34 58 f5       	vaddps ymm6,ymm9,ymm13
  ac841a:	c5 7c 5c d6          	vsubps ymm10,ymm0,ymm6
  ac841e:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  ac8422:	62 31 24 28 58 c9    	vaddps ymm9,ymm11,ymm17
  ac8428:	c4 41 44 5c d9       	vsubps ymm11,ymm7,ymm9
  ac842d:	62 31 74 28 58 e3    	vaddps ymm12,ymm1,ymm19
  ac8433:	62 31 0c 28 58 ea    	vaddps ymm13,ymm14,ymm18
  ac8439:	62 31 6c 28 5c f0    	vsubps ymm14,ymm2,ymm16
  ac843f:	c5 bc 5c cc          	vsubps ymm1,ymm8,ymm4
  ac8443:	c5 7c 58 c6          	vaddps ymm8,ymm0,ymm6
  ac8447:	c5 b4 58 c7          	vaddps ymm0,ymm9,ymm7
  ac844b:	c4 e3 7d 18 d3 01    	vinsertf128 ymm2,ymm0,xmm3,0x1
  ac8451:	c4 e3 7d 06 fb 31    	vperm2f128 ymm7,ymm0,ymm3,0x31
  ac8457:	62 b3 75 28 18 e4 01 	vinsertf32x4 ymm4,ymm1,xmm20,0x1
  ac845e:	62 33 f5 28 23 fc 03 	vshuff64x2 ymm15,ymm1,ymm20,0x3
  ac8465:	c5 78 29 e9          	vmovaps xmm1,xmm13
  ac8469:	c5 ed 14 d9          	vunpcklpd ymm3,ymm2,ymm1
  ac846d:	c5 78 29 de          	vmovaps xmm6,xmm11
  ac8471:	c5 5d 14 ce          	vunpcklpd ymm9,ymm4,ymm6
  ac8475:	c4 c1 64 c6 c1 88    	vshufps ymm0,ymm3,ymm9,0x88
  ac847b:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  ac8481:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac8486:	c5 ed 15 c9          	vunpckhpd ymm1,ymm2,ymm1
  ac848a:	c5 dd 15 d6          	vunpckhpd ymm2,ymm4,ymm6
  ac848e:	c5 f4 c6 e2 88       	vshufps ymm4,ymm1,ymm2,0x88
  ac8493:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  ac8498:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ac849d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ac84a2:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  ac84a8:	c5 c5 14 e2          	vunpcklpd ymm4,ymm7,ymm2
  ac84ac:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  ac84b2:	c4 41 05 14 eb       	vunpcklpd ymm13,ymm15,ymm11
  ac84b7:	c4 41 5c c6 cd 88    	vshufps ymm9,ymm4,ymm13,0x88
  ac84bd:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ac84c3:	c4 c1 5c c6 e5 dd    	vshufps ymm4,ymm4,ymm13,0xdd
  ac84c9:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac84ce:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  ac84d2:	c4 41 05 15 db       	vunpckhpd ymm11,ymm15,ymm11
  ac84d7:	c4 c1 6c c6 fb 88    	vshufps ymm7,ymm2,ymm11,0x88
  ac84dd:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ac84e2:	c4 c1 6c c6 d3 dd    	vshufps ymm2,ymm2,ymm11,0xdd
  ac84e8:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac84ed:	62 33 3d 28 18 ed 01 	vinsertf32x4 ymm13,ymm8,xmm21,0x1
  ac84f4:	62 a3 bd 28 23 c5 03 	vshuff64x2 ymm16,ymm8,ymm21,0x3
  ac84fb:	c4 63 0d 18 c5 01    	vinsertf128 ymm8,ymm14,xmm5,0x1
  ac8501:	c4 63 0d 06 f5 31    	vperm2f128 ymm14,ymm14,ymm5,0x31
  ac8507:	c4 41 78 28 fc       	vmovaps xmm15,xmm12
  ac850c:	c4 41 15 14 df       	vunpcklpd ymm11,ymm13,ymm15
  ac8511:	62 c1 7c 08 28 ca    	vmovaps xmm17,xmm10
  ac8517:	62 a1 bd 28 14 d1    	vunpcklpd ymm18,ymm8,ymm17
  ac851d:	62 b1 24 28 c6 ea 88 	vshufps ymm5,ymm11,ymm18,0x88
  ac8524:	62 31 24 28 c6 da dd 	vshufps ymm11,ymm11,ymm18,0xdd
  ac852b:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  ac8531:	c4 41 15 15 ef       	vunpckhpd ymm13,ymm13,ymm15
  ac8536:	62 31 bd 28 15 c1    	vunpckhpd ymm8,ymm8,ymm17
  ac853c:	c4 41 14 c6 f8 88    	vshufps ymm15,ymm13,ymm8,0x88
  ac8542:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  ac8548:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  ac854e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ac8554:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac855a:	62 51 fd 20 14 ec    	vunpcklpd ymm13,ymm16,ymm12
  ac8560:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  ac8566:	62 c1 8d 28 14 ca    	vunpcklpd ymm17,ymm14,ymm10
  ac856c:	62 a1 14 28 c6 d1 88 	vshufps ymm18,ymm13,ymm17,0x88
  ac8573:	62 a1 6c 20 c6 d2 d8 	vshufps ymm18,ymm18,ymm18,0xd8
  ac857a:	62 31 14 28 c6 e9 dd 	vshufps ymm13,ymm13,ymm17,0xdd
  ac8581:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  ac8587:	62 51 fd 20 15 e4    	vunpckhpd ymm12,ymm16,ymm12
  ac858d:	c4 41 0d 15 f2       	vunpckhpd ymm14,ymm14,ymm10
  ac8592:	c4 41 1c c6 d6 dd    	vshufps ymm10,ymm12,ymm14,0xdd
  ac8598:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ac859e:	c4 41 1c c6 e6 88    	vshufps ymm12,ymm12,ymm14,0x88
  ac85a4:	62 c1 1c 28 c6 c4 d8 	vshufps ymm16,ymm12,ymm12,0xd8
  ac85ab:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  ac85b2:	00 
  ac85b3:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  ac85ba:	c4 41 34 59 e6       	vmulps ymm12,ymm9,ymm14
  ac85bf:	62 32 6d 20 bc e1    	vfnmadd231ps ymm12,ymm18,ymm17
  ac85c5:	62 51 6c 20 59 f6    	vmulps ymm14,ymm18,ymm14
  ac85cb:	62 e1 7c 28 10 52 04 	vmovups ymm18,YMMWORD PTR [rdx+0x80]
  ac85d2:	62 32 35 28 b8 f1    	vfmadd231ps ymm14,ymm9,ymm17
  ac85d8:	62 e1 7c 28 10 4a 05 	vmovups ymm17,YMMWORD PTR [rdx+0xa0]
  ac85df:	62 31 4c 28 59 ca    	vmulps ymm9,ymm6,ymm18
  ac85e5:	62 32 05 28 bc c9    	vfnmadd231ps ymm9,ymm15,ymm17
  ac85eb:	62 31 04 28 59 fa    	vmulps ymm15,ymm15,ymm18
  ac85f1:	62 e1 7c 28 10 52 0c 	vmovups ymm18,YMMWORD PTR [rdx+0x180]
  ac85f8:	62 32 4d 28 b8 f9    	vfmadd231ps ymm15,ymm6,ymm17
  ac85fe:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  ac8605:	00 
  ac8606:	62 a1 44 28 59 ca    	vmulps ymm17,ymm7,ymm18
  ac860c:	62 e2 7d 20 bc ce    	vfnmadd231ps ymm17,ymm16,ymm6
  ac8612:	62 a1 7c 20 59 c2    	vmulps ymm16,ymm16,ymm18
  ac8618:	62 e1 7c 28 10 52 02 	vmovups ymm18,YMMWORD PTR [rdx+0x40]
  ac861f:	62 e2 45 28 b8 c6    	vfmadd231ps ymm16,ymm7,ymm6
  ac8625:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  ac862a:	62 b1 64 28 59 fa    	vmulps ymm7,ymm3,ymm18
  ac8630:	c4 e2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm6
  ac8635:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  ac863b:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  ac8642:	c4 62 65 b8 de       	vfmadd231ps ymm11,ymm3,ymm6
  ac8647:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  ac864e:	00 
  ac864f:	62 b1 5c 28 59 f2    	vmulps ymm6,ymm4,ymm18
  ac8655:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  ac865a:	62 31 14 28 59 ea    	vmulps ymm13,ymm13,ymm18
  ac8660:	62 e1 7c 28 10 52 06 	vmovups ymm18,YMMWORD PTR [rdx+0xc0]
  ac8667:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  ac866c:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  ac8673:	00 
  ac8674:	62 b1 74 28 59 e2    	vmulps ymm4,ymm1,ymm18
  ac867a:	c4 e2 3d bc e3       	vfnmadd231ps ymm4,ymm8,ymm3
  ac867f:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  ac8685:	62 e1 7c 28 10 52 0e 	vmovups ymm18,YMMWORD PTR [rdx+0x1c0]
  ac868c:	c4 62 75 b8 c3       	vfmadd231ps ymm8,ymm1,ymm3
  ac8691:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  ac8698:	00 
  ac8699:	62 b1 6c 28 59 da    	vmulps ymm3,ymm2,ymm18
  ac869f:	c4 e2 2d bc d9       	vfnmadd231ps ymm3,ymm10,ymm1
  ac86a4:	62 31 2c 28 59 d2    	vmulps ymm10,ymm10,ymm18
  ac86aa:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ac86af:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac86b4:	c4 62 6d b8 d1       	vfmadd231ps ymm10,ymm2,ymm1
  ac86b9:	c5 9c 58 c8          	vaddps ymm1,ymm12,ymm0
  ac86bd:	62 b1 34 28 58 d1    	vaddps ymm2,ymm9,ymm17
  ac86c3:	c4 c1 7c 5c c4       	vsubps ymm0,ymm0,ymm12
  ac86c8:	62 31 04 28 58 e0    	vaddps ymm12,ymm15,ymm16
  ac86ce:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  ac86d4:	62 e1 44 28 58 c6    	vaddps ymm16,ymm7,ymm6
  ac86da:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ac86de:	c4 c1 24 58 fd       	vaddps ymm7,ymm11,ymm13
  ac86e3:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  ac86e8:	c4 41 3c 58 ea       	vaddps ymm13,ymm8,ymm10
  ac86ed:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  ac86f2:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  ac86f6:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  ac86fa:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  ac86fe:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  ac8703:	c5 74 58 f2          	vaddps ymm14,ymm1,ymm2
  ac8707:	62 51 74 20 5c c9    	vsubps ymm9,ymm17,ymm9
  ac870d:	62 c1 4c 28 58 cb    	vaddps ymm17,ymm6,ymm11
  ac8713:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ac8717:	c5 3c 5c db          	vsubps ymm11,ymm8,ymm3
  ac871b:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  ac871f:	c4 62 7d 18 05 74 cc 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5acc74]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ac8726:	5a ff 
  ac8728:	62 c1 74 20 59 c8    	vmulps ymm17,ymm17,ymm8
  ac872e:	c4 41 24 59 d8       	vmulps ymm11,ymm11,ymm8
  ac8733:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ac8737:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  ac873b:	62 51 7c 20 58 c2    	vaddps ymm8,ymm16,ymm10
  ac8741:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  ac8745:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  ac8749:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  ac874e:	c5 1c 58 ec          	vaddps ymm13,ymm12,ymm4
  ac8752:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  ac8757:	c5 04 58 e0          	vaddps ymm12,ymm15,ymm0
  ac875b:	62 31 2c 28 5c d0    	vsubps ymm10,ymm10,ymm16
  ac8761:	62 c1 74 20 58 c3    	vaddps ymm16,ymm17,ymm11
  ac8767:	c4 c1 7c 5c c7       	vsubps ymm0,ymm0,ymm15
  ac876c:	c5 4c 5c fb          	vsubps ymm15,ymm6,ymm3
  ac8770:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  ac8774:	c5 b4 58 f5          	vaddps ymm6,ymm9,ymm5
  ac8778:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  ac877d:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  ac8783:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  ac8789:	62 c1 4c 28 58 cf    	vaddps ymm17,ymm6,ymm15
  ac878f:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ac8795:	62 e1 74 28 58 c7    	vaddps ymm16,ymm1,ymm7
  ac879b:	c4 c1 4c 5c f7       	vsubps ymm6,ymm6,ymm15
  ac87a0:	c5 2c 58 fc          	vaddps ymm15,ymm10,ymm4
  ac87a4:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  ac87a8:	c5 fc 58 fb          	vaddps ymm7,ymm0,ymm3
  ac87ac:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  ac87b1:	c5 24 58 d5          	vaddps ymm10,ymm11,ymm5
  ac87b5:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  ac87b9:	c4 c1 0c 5c d8       	vsubps ymm3,ymm14,ymm8
  ac87be:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  ac87c3:	c5 14 5c da          	vsubps ymm11,ymm13,ymm2
  ac87c7:	c4 41 0c 58 c0       	vaddps ymm8,ymm14,ymm8
  ac87cc:	c5 94 58 d2          	vaddps ymm2,ymm13,ymm2
  ac87d0:	c5 7c 28 2d 08 ea 5a 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff5aea08]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ac87d7:	ff 
  ac87d8:	c4 43 7d 19 c6 01    	vextractf128 xmm14,ymm8,0x1
  ac87de:	62 72 15 28 7f c2    	vpermt2ps ymm8,ymm13,ymm2
  ac87e4:	c5 7c 11 06          	vmovups YMMWORD PTR [rsi],ymm8
  ac87e8:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ac87ee:	c5 88 14 d2          	vunpcklps xmm2,xmm14,xmm2
  ac87f2:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  ac87f7:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  ac87fd:	62 32 15 28 7f c9    	vpermt2ps ymm9,ymm13,ymm17
  ac8803:	c5 7c 11 4e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm9
  ac8808:	62 c3 7d 28 19 c8 01 	vextractf32x4 xmm8,ymm17,0x1
  ac880f:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  ac8814:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  ac8819:	62 e3 7d 28 19 c2 01 	vextractf32x4 xmm2,ymm16,0x1
  ac8820:	62 c2 15 28 7f c7    	vpermt2ps ymm16,ymm13,ymm15
  ac8826:	62 e1 7c 28 11 46 03 	vmovups YMMWORD PTR [rsi+0x60],ymm16
  ac882d:	c4 43 7d 19 f8 01    	vextractf128 xmm8,ymm15,0x1
  ac8833:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  ac8838:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  ac883f:	00 
  ac8840:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  ac8846:	62 d2 15 28 7f fa    	vpermt2ps ymm7,ymm13,ymm10
  ac884c:	c5 fc 11 be 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm7
  ac8853:	00 
  ac8854:	c4 63 7d 19 d7 01    	vextractf128 xmm7,ymm10,0x1
  ac885a:	c5 e8 14 d7          	vunpcklps xmm2,xmm2,xmm7
  ac885e:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  ac8865:	00 
  ac8866:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  ac886c:	62 d2 15 28 7f db    	vpermt2ps ymm3,ymm13,ymm11
  ac8872:	c5 fc 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm3
  ac8879:	00 
  ac887a:	c4 63 7d 19 db 01    	vextractf128 xmm3,ymm11,0x1
  ac8880:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ac8884:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  ac888b:	00 
  ac888c:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  ac8892:	62 72 15 28 7f e6    	vpermt2ps ymm12,ymm13,ymm6
  ac8898:	c5 7c 11 a6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm12
  ac889f:	00 
  ac88a0:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  ac88a6:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  ac88aa:	c5 f8 11 96 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm2
  ac88b1:	00 
  ac88b2:	c4 e3 7d 19 ca 01    	vextractf128 xmm2,ymm1,0x1
  ac88b8:	62 f2 15 28 7f cc    	vpermt2ps ymm1,ymm13,ymm4
  ac88be:	c5 fc 11 8e 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm1
  ac88c5:	00 
  ac88c6:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  ac88cc:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  ac88d0:	c5 f8 11 8e 40 01 00 	vmovups XMMWORD PTR [rsi+0x140],xmm1
  ac88d7:	00 
  ac88d8:	62 72 7d 28 77 ed    	vpermi2ps ymm13,ymm0,ymm5
  ac88de:	c5 7c 11 ae 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm13
  ac88e5:	00 
  ac88e6:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  ac88ec:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac88f2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  ac88f6:	c5 f8 11 86 70 01 00 	vmovups XMMWORD PTR [rsi+0x170],xmm0
  ac88fd:	00 
  ac88fe:	c5 f8 77             	vzeroupper
  ac8901:	c3                   	ret
