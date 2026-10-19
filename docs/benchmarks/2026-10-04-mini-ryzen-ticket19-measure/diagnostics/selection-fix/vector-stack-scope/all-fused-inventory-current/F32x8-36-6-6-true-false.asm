
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000073e280 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  73e280:	55                   	push   rbp
  73e281:	48 89 e5             	mov    rbp,rsp
  73e284:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  73e288:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  73e28f:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  73e296:	00 
  73e297:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
  73e29e:	00 
  73e29f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  73e2a4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  73e2a9:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  73e2ad:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  73e2b2:	c5 7c 10 4f 30       	vmovups ymm9,YMMWORD PTR [rdi+0x30]
  73e2b7:	c5 f8 10 57 50       	vmovups xmm2,XMMWORD PTR [rdi+0x50]
  73e2bc:	c5 fc 10 77 60       	vmovups ymm6,YMMWORD PTR [rdi+0x60]
  73e2c1:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  73e2c8:	00 
  73e2c9:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  73e2d0:	00 
  73e2d1:	c5 78 10 a7 b0 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0xb0]
  73e2d8:	00 
  73e2d9:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  73e2e0:	00 
  73e2e1:	c5 78 10 b7 e0 00 00 	vmovups xmm14,XMMWORD PTR [rdi+0xe0]
  73e2e8:	00 
  73e2e9:	c5 7c 10 bf f0 00 00 	vmovups ymm15,YMMWORD PTR [rdi+0xf0]
  73e2f0:	00 
  73e2f1:	c5 f8 10 8f 10 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x110]
  73e2f8:	00 
  73e2f9:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  73e2fe:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  73e304:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  73e30a:	c5 cc c6 df dd       	vshufps ymm3,ymm6,ymm7,0xdd
  73e30f:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  73e315:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  73e31c:	00 00 
  73e31e:	c4 c1 14 c6 de dd    	vshufps ymm3,ymm13,ymm14,0xdd
  73e324:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  73e32a:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  73e331:	00 00 
  73e333:	c4 41 2c c6 c4 dd    	vshufps ymm8,ymm10,ymm12,0xdd
  73e339:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  73e33f:	c5 5c c6 dd 88       	vshufps ymm11,ymm4,ymm5,0x88
  73e344:	c5 84 c6 e1 dd       	vshufps ymm4,ymm15,ymm1,0xdd
  73e349:	c4 e3 fd 01 dc d8    	vpermpd ymm3,ymm4,0xd8
  73e34f:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  73e355:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  73e35a:	c5 b4 c6 ea dd       	vshufps ymm5,ymm9,ymm2,0xdd
  73e35f:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  73e365:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  73e36b:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  73e371:	c4 e3 fd 01 e6 d8    	vpermpd ymm4,ymm6,0xd8
  73e377:	c4 c1 14 c6 f6 88    	vshufps ymm6,ymm13,ymm14,0x88
  73e37d:	c4 63 fd 01 f6 d8    	vpermpd ymm14,ymm6,0xd8
  73e383:	c4 c1 2c c6 f4 88    	vshufps ymm6,ymm10,ymm12,0x88
  73e389:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  73e38f:	c5 84 c6 c9 88       	vshufps ymm1,ymm15,ymm1,0x88
  73e394:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  73e39a:	c5 b4 c6 d2 88       	vshufps ymm2,ymm9,ymm2,0x88
  73e39f:	c4 63 fd 01 e2 d8    	vpermpd ymm12,ymm2,0xd8
  73e3a5:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  73e3ac:	00 00 
  73e3ae:	c5 fc 28 ac 24 80 00 	vmovaps ymm5,YMMWORD PTR [rsp+0x80]
  73e3b5:	00 00 
  73e3b7:	c5 b4 58 fd          	vaddps ymm7,ymm9,ymm5
  73e3bb:	c5 7c 28 6c 24 40    	vmovaps ymm13,YMMWORD PTR [rsp+0x40]
  73e3c1:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  73e3c5:	c5 e4 58 f0          	vaddps ymm6,ymm3,ymm0
  73e3c9:	c4 e2 7d 18 05 8e 70 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff93708e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73e3d0:	93 ff 
  73e3d2:	c4 c2 7d ac fd       	vfnmadd213ps ymm7,ymm0,ymm13
  73e3d7:	c5 0c 58 ec          	vaddps ymm13,ymm14,ymm4
  73e3db:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  73e3e0:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  73e3e4:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  73e3ea:	c4 c2 7d ac f0       	vfnmadd213ps ymm6,ymm0,ymm8
  73e3ef:	c5 1c 58 c1          	vaddps ymm8,ymm12,ymm1
  73e3f3:	c4 41 74 5c fc       	vsubps ymm15,ymm1,ymm12
  73e3f8:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  73e3fd:	c4 42 7d ac eb       	vfnmadd213ps ymm13,ymm0,ymm11
  73e402:	c5 6c 58 e3          	vaddps ymm12,ymm2,ymm3
  73e406:	c5 b4 5c dd          	vsubps ymm3,ymm9,ymm5
  73e40a:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  73e40f:	c4 42 7d ac c2       	vfnmadd213ps ymm8,ymm0,ymm10
  73e414:	c4 e2 7d 18 05 b7 6e 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff936eb7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73e41b:	93 ff 
  73e41d:	c5 0c 59 d0          	vmulps ymm10,ymm14,ymm0
  73e421:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  73e427:	c5 dc 5c 64 24 20    	vsubps ymm4,ymm4,YMMWORD PTR [rsp+0x20]
  73e42d:	c5 ac 58 ef          	vaddps ymm5,ymm10,ymm7
  73e431:	c5 04 59 f0          	vmulps ymm14,ymm15,ymm0
  73e435:	c4 41 44 5c d2       	vsubps ymm10,ymm7,ymm10
  73e43a:	c5 0c 58 fe          	vaddps ymm15,ymm14,ymm6
  73e43e:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  73e442:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  73e446:	c4 41 4c 5c f6       	vsubps ymm14,ymm6,ymm14
  73e44b:	c5 94 5c c3          	vsubps ymm0,ymm13,ymm3
  73e44f:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  73e453:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  73e457:	c5 3c 5c ec          	vsubps ymm13,ymm8,ymm4
  73e45b:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  73e45f:	c5 a4 58 e1          	vaddps ymm4,ymm11,ymm1
  73e463:	c5 ec 5c 74 24 40    	vsubps ymm6,ymm2,YMMWORD PTR [rsp+0x40]
  73e469:	c4 c1 54 5c d7       	vsubps ymm2,ymm5,ymm15
  73e46e:	c4 c1 74 5c cb       	vsubps ymm1,ymm1,ymm11
  73e473:	c4 41 7c 5c c5       	vsubps ymm8,ymm0,ymm13
  73e478:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  73e47c:	c4 41 2c 58 fe       	vaddps ymm15,ymm10,ymm14
  73e481:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  73e485:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  73e489:	c4 41 2c 5c ce       	vsubps ymm9,ymm10,ymm14
  73e48e:	c5 64 5c ef          	vsubps ymm13,ymm3,ymm7
  73e492:	c4 e3 1d 18 fd 01    	vinsertf128 ymm7,ymm12,xmm5,0x1
  73e498:	c4 e3 1d 06 dd 31    	vperm2f128 ymm3,ymm12,ymm5,0x31
  73e49e:	c4 c3 6d 18 e9 01    	vinsertf128 ymm5,ymm2,xmm9,0x1
  73e4a4:	c4 c3 6d 06 d1 31    	vperm2f128 ymm2,ymm2,ymm9,0x31
  73e4aa:	c5 64 14 e2          	vunpcklps ymm12,ymm3,ymm2
  73e4ae:	c4 41 78 28 cf       	vmovaps xmm9,xmm15
  73e4b3:	c5 78 28 d6          	vmovaps xmm10,xmm6
  73e4b7:	c5 c4 14 dd          	vunpcklps ymm3,ymm7,ymm5
  73e4bb:	c4 41 34 14 f2       	vunpcklps ymm14,ymm9,ymm10
  73e4c0:	c4 c1 65 14 d6       	vunpcklpd ymm2,ymm3,ymm14
  73e4c5:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  73e4cb:	c4 c1 65 15 de       	vunpckhpd ymm3,ymm3,ymm14
  73e4d0:	c5 c4 15 ed          	vunpckhps ymm5,ymm7,ymm5
  73e4d4:	c4 c1 34 15 fa       	vunpckhps ymm7,ymm9,ymm10
  73e4d9:	c5 55 14 cf          	vunpcklpd ymm9,ymm5,ymm7
  73e4dd:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  73e4e1:	c4 63 7d 19 ff 01    	vextractf128 xmm7,ymm15,0x1
  73e4e7:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  73e4ed:	c5 c4 14 f6          	vunpcklps ymm6,ymm7,ymm6
  73e4f1:	c5 1d 14 d6          	vunpcklpd ymm10,ymm12,ymm6
  73e4f5:	c5 9d 15 f6          	vunpckhpd ymm6,ymm12,ymm6
  73e4f9:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  73e4ff:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  73e505:	c4 43 3d 18 e5 01    	vinsertf128 ymm12,ymm8,xmm13,0x1
  73e50b:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  73e511:	c5 fc 14 c4          	vunpcklps ymm0,ymm0,ymm4
  73e515:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  73e51a:	c5 78 28 f1          	vmovaps xmm14,xmm1
  73e51e:	c4 41 44 14 c4       	vunpcklps ymm8,ymm7,ymm12
  73e523:	c4 41 14 14 fe       	vunpcklps ymm15,ymm13,ymm14
  73e528:	c4 c1 3d 14 e7       	vunpcklpd ymm4,ymm8,ymm15
  73e52d:	c4 41 3d 15 c7       	vunpckhpd ymm8,ymm8,ymm15
  73e532:	c4 c1 44 15 fc       	vunpckhps ymm7,ymm7,ymm12
  73e537:	c4 41 14 15 ee       	vunpckhps ymm13,ymm13,ymm14
  73e53c:	c4 41 45 14 e5       	vunpcklpd ymm12,ymm7,ymm13
  73e541:	c4 41 45 15 f5       	vunpckhpd ymm14,ymm7,ymm13
  73e546:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  73e54c:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  73e552:	c5 c4 14 c9          	vunpcklps ymm1,ymm7,ymm1
  73e556:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  73e55a:	c5 7d 15 f9          	vunpckhpd ymm15,ymm0,ymm1
  73e55e:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  73e565:	00 
  73e566:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  73e56d:	00 
  73e56e:	c5 b4 59 f8          	vmulps ymm7,ymm9,ymm0
  73e572:	c4 e2 1d bc f9       	vfnmadd231ps ymm7,ymm12,ymm1
  73e577:	c5 1c 59 d8          	vmulps ymm11,ymm12,ymm0
  73e57b:	c4 62 35 b8 d9       	vfmadd231ps ymm11,ymm9,ymm1
  73e580:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  73e587:	00 
  73e588:	c5 fc 10 8a 20 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x120]
  73e58f:	00 
  73e590:	c5 2c 59 e0          	vmulps ymm12,ymm10,ymm0
  73e594:	c4 62 15 bc e1       	vfnmadd231ps ymm12,ymm13,ymm1
  73e599:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  73e59d:	c4 62 2d b8 e9       	vfmadd231ps ymm13,ymm10,ymm1
  73e5a2:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  73e5a9:	00 
  73e5aa:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  73e5b1:	00 
  73e5b2:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  73e5b6:	c4 62 0d bc d1       	vfnmadd231ps ymm10,ymm14,ymm1
  73e5bb:	c5 0c 59 c8          	vmulps ymm9,ymm14,ymm0
  73e5bf:	c4 62 55 b8 c9       	vfmadd231ps ymm9,ymm5,ymm1
  73e5c4:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  73e5cb:	00 
  73e5cc:	c5 fc 10 8a 60 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x160]
  73e5d3:	00 
  73e5d4:	c5 7c 59 f6          	vmulps ymm14,ymm0,ymm6
  73e5d8:	c4 62 05 bc f1       	vfnmadd231ps ymm14,ymm15,ymm1
  73e5dd:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  73e5e1:	c4 62 4d b8 f9       	vfmadd231ps ymm15,ymm6,ymm1
  73e5e6:	c5 fc 10 4a 40       	vmovups ymm1,YMMWORD PTR [rdx+0x40]
  73e5eb:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  73e5f0:	c5 f4 59 d3          	vmulps ymm2,ymm1,ymm3
  73e5f4:	c4 e2 3d bc d5       	vfnmadd231ps ymm2,ymm8,ymm5
  73e5f9:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  73e5fd:	c4 e2 65 b8 cd       	vfmadd231ps ymm1,ymm3,ymm5
  73e602:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  73e606:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  73e60c:	c5 cc 58 d8          	vaddps ymm3,ymm6,ymm0
  73e610:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  73e616:	c4 e2 7d 18 1d 41 6e 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff936e41]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73e61d:	93 ff 
  73e61f:	c4 e2 65 ac f0       	vfnmadd213ps ymm6,ymm3,ymm0
  73e624:	c5 8c 58 ea          	vaddps ymm5,ymm14,ymm2
  73e628:	c5 ac 58 c5          	vaddps ymm0,ymm10,ymm5
  73e62c:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  73e632:	c4 62 65 bc d5       	vfnmadd231ps ymm10,ymm3,ymm5
  73e637:	c4 c1 24 58 c5       	vaddps ymm0,ymm11,ymm13
  73e63c:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  73e640:	c4 e2 65 ac c4       	vfnmadd213ps ymm0,ymm3,ymm4
  73e645:	c5 84 58 e1          	vaddps ymm4,ymm15,ymm1
  73e649:	c5 34 58 c4          	vaddps ymm8,ymm9,ymm4
  73e64d:	c4 e2 7d 18 1d 0a 6e 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff936e0a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73e654:	93 ff 
  73e656:	c4 62 5d bc cb       	vfnmadd231ps ymm9,ymm4,ymm3
  73e65b:	c4 c1 24 5c e5       	vsubps ymm4,ymm11,ymm13
  73e660:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  73e664:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  73e669:	c4 62 7d 18 2d 62 6c 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff936c62]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73e670:	93 ff 
  73e672:	c5 94 59 e4          	vmulps ymm4,ymm13,ymm4
  73e676:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  73e67a:	c5 4c 58 dc          	vaddps ymm11,ymm6,ymm4
  73e67e:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  73e682:	c5 14 59 e7          	vmulps ymm12,ymm13,ymm7
  73e686:	c5 94 59 d2          	vmulps ymm2,ymm13,ymm2
  73e68a:	c5 2c 58 e9          	vaddps ymm13,ymm10,ymm1
  73e68e:	c5 4c 5c f4          	vsubps ymm14,ymm6,ymm4
  73e692:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  73e697:	c5 ac 5c c9          	vsubps ymm1,ymm10,ymm1
  73e69b:	c4 c1 7c 5c f4       	vsubps ymm6,ymm0,ymm12
  73e6a0:	c5 1c 58 d0          	vaddps ymm10,ymm12,ymm0
  73e6a4:	c5 b4 5c c2          	vsubps ymm0,ymm9,ymm2
  73e6a8:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  73e6ac:	c5 4c 5c e0          	vsubps ymm12,ymm6,ymm0
  73e6b0:	c4 c1 24 58 e5       	vaddps ymm4,ymm11,ymm13
  73e6b5:	c5 0c 58 d9          	vaddps ymm11,ymm14,ymm1
  73e6b9:	c5 cc 58 f0          	vaddps ymm6,ymm6,ymm0
  73e6bd:	c5 2c 58 ea          	vaddps ymm13,ymm10,ymm2
  73e6c1:	c5 8c 5c c1          	vsubps ymm0,ymm14,ymm1
  73e6c5:	c5 7c 28 74 24 60    	vmovaps ymm14,YMMWORD PTR [rsp+0x60]
  73e6cb:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  73e6d1:	c5 0c 5c cb          	vsubps ymm9,ymm14,ymm3
  73e6d5:	c5 ac 5c ca          	vsubps ymm1,ymm10,ymm2
  73e6d9:	c4 c1 54 5c d0       	vsubps ymm2,ymm5,ymm8
  73e6de:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  73e6e2:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  73e6e6:	c5 54 14 c3          	vunpcklps ymm8,ymm5,ymm3
  73e6ea:	c5 50 14 d3          	vunpcklps xmm10,xmm5,xmm3
  73e6ee:	c5 d0 15 db          	vunpckhps xmm3,xmm5,xmm3
  73e6f2:	c5 f8 11 5e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm3
  73e6f7:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  73e6fb:	c4 63 7d 19 46 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm8,0x1
  73e702:	c5 9c 14 df          	vunpcklps ymm3,ymm12,ymm7
  73e706:	c5 98 14 ef          	vunpcklps xmm5,xmm12,xmm7
  73e70a:	c5 98 15 ff          	vunpckhps xmm7,xmm12,xmm7
  73e70e:	c5 f8 11 7e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm7
  73e713:	c5 f8 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm5
  73e718:	c4 e3 7d 19 5e 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm3,0x1
  73e71f:	c4 c1 14 14 db       	vunpcklps ymm3,ymm13,ymm11
  73e724:	c4 c1 10 14 eb       	vunpcklps xmm5,xmm13,xmm11
  73e729:	c4 c1 10 15 fb       	vunpckhps xmm7,xmm13,xmm11
  73e72e:	c5 f8 11 7e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm7
  73e733:	c5 f8 11 6e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm5
  73e738:	c4 e3 7d 19 9e 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm3,0x1
  73e73f:	00 00 01 
  73e742:	c4 c1 6c 14 d9       	vunpcklps ymm3,ymm2,ymm9
  73e747:	c4 c1 68 14 e9       	vunpcklps xmm5,xmm2,xmm9
  73e74c:	c4 c1 68 15 d1       	vunpckhps xmm2,xmm2,xmm9
  73e751:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  73e758:	00 
  73e759:	c5 f8 11 ae 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm5
  73e760:	00 
  73e761:	c4 e3 7d 19 9e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm3,0x1
  73e768:	00 00 01 
  73e76b:	c5 cc 14 d4          	vunpcklps ymm2,ymm6,ymm4
  73e76f:	c5 c8 14 dc          	vunpcklps xmm3,xmm6,xmm4
  73e773:	c5 c8 15 e4          	vunpckhps xmm4,xmm6,xmm4
  73e777:	c5 f8 11 a6 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm4
  73e77e:	00 
  73e77f:	c5 f8 11 9e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm3
  73e786:	00 
  73e787:	c4 e3 7d 19 96 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm2,0x1
  73e78e:	00 00 01 
  73e791:	c5 f4 14 d0          	vunpcklps ymm2,ymm1,ymm0
  73e795:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  73e799:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  73e79d:	c5 f8 11 86 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm0
  73e7a4:	00 
  73e7a5:	c5 f8 11 9e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm3
  73e7ac:	00 
  73e7ad:	c4 e3 7d 19 96 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm2,0x1
  73e7b4:	00 00 01 
  73e7b7:	48 89 ec             	mov    rsp,rbp
  73e7ba:	5d                   	pop    rbp
  73e7bb:	c5 f8 77             	vzeroupper
  73e7be:	c3                   	ret
