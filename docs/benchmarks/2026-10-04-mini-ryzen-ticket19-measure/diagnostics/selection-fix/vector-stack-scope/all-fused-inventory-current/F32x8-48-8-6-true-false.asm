
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070a040 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70a040:	55                   	push   rbp
  70a041:	48 89 e5             	mov    rbp,rsp
  70a044:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  70a048:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  70a04f:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  70a056:	00 
  70a057:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  70a05e:	00 
  70a05f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  70a064:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  70a069:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  70a06d:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  70a072:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  70a077:	c5 f8 10 77 50       	vmovups xmm6,XMMWORD PTR [rdi+0x50]
  70a07c:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  70a081:	c5 78 10 97 80 00 00 	vmovups xmm10,XMMWORD PTR [rdi+0x80]
  70a088:	00 
  70a089:	c5 fc 10 af 90 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x90]
  70a090:	00 
  70a091:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  70a098:	00 
  70a099:	c5 fc 10 a7 c0 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0xc0]
  70a0a0:	00 
  70a0a1:	c5 78 10 af e0 00 00 	vmovups xmm13,XMMWORD PTR [rdi+0xe0]
  70a0a8:	00 
  70a0a9:	c5 7c 10 8f f0 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0xf0]
  70a0b0:	00 
  70a0b1:	c5 78 10 9f 10 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x110]
  70a0b8:	00 
  70a0b9:	c5 7c 10 b7 20 01 00 	vmovups ymm14,YMMWORD PTR [rdi+0x120]
  70a0c0:	00 
  70a0c1:	c5 78 10 bf 40 01 00 	vmovups xmm15,XMMWORD PTR [rdi+0x140]
  70a0c8:	00 
  70a0c9:	c5 7c 10 87 50 01 00 	vmovups ymm8,YMMWORD PTR [rdi+0x150]
  70a0d0:	00 
  70a0d1:	c5 7c c6 e2 dd       	vshufps ymm12,ymm0,ymm2,0xdd
  70a0d6:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  70a0db:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  70a0e1:	c4 c1 5c c6 c5 dd    	vshufps ymm0,ymm4,ymm13,0xdd
  70a0e7:	c4 c1 5c c6 d5 88    	vshufps ymm2,ymm4,ymm13,0x88
  70a0ed:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  70a0f4:	00 00 
  70a0f6:	c4 c1 74 c6 d2 dd    	vshufps ymm2,ymm1,ymm10,0xdd
  70a0fc:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  70a103:	00 00 
  70a105:	c4 c1 74 c6 e2 88    	vshufps ymm4,ymm1,ymm10,0x88
  70a10b:	c4 c1 0c c6 cf dd    	vshufps ymm1,ymm14,ymm15,0xdd
  70a111:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  70a117:	c4 c1 0c c6 cf 88    	vshufps ymm1,ymm14,ymm15,0x88
  70a11d:	c5 64 c6 fe dd       	vshufps ymm15,ymm3,ymm6,0xdd
  70a122:	c5 64 c6 ee 88       	vshufps ymm13,ymm3,ymm6,0x88
  70a127:	c4 c1 34 c6 db dd    	vshufps ymm3,ymm9,ymm11,0xdd
  70a12d:	c4 41 34 c6 db 88    	vshufps ymm11,ymm9,ymm11,0x88
  70a133:	c5 d4 c6 f7 dd       	vshufps ymm6,ymm5,ymm7,0xdd
  70a138:	c5 54 c6 f7 88       	vshufps ymm14,ymm5,ymm7,0x88
  70a13d:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  70a144:	00 
  70a145:	c5 3c c6 d2 dd       	vshufps ymm10,ymm8,ymm2,0xdd
  70a14a:	c5 bc c6 d2 88       	vshufps ymm2,ymm8,ymm2,0x88
  70a14f:	c4 c3 fd 01 ec d8    	vpermpd ymm5,ymm12,0xd8
  70a155:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  70a15b:	c5 54 58 c8          	vaddps ymm9,ymm5,ymm0
  70a15f:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  70a163:	c5 fc 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm0
  70a16a:	00 00 
  70a16c:	c4 e3 fd 01 c4 d8    	vpermpd ymm0,ymm4,0xd8
  70a172:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  70a178:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  70a17c:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  70a180:	c5 fc 29 84 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm0
  70a187:	00 00 
  70a189:	c4 c3 fd 01 c7 d8    	vpermpd ymm0,ymm15,0xd8
  70a18f:	c4 e3 fd 01 cb d8    	vpermpd ymm1,ymm3,0xd8
  70a195:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  70a199:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  70a1a0:	00 00 
  70a1a2:	c5 fc 5c c9          	vsubps ymm1,ymm0,ymm1
  70a1a6:	c4 c3 fd 01 c5 d8    	vpermpd ymm0,ymm13,0xd8
  70a1ac:	c4 c3 fd 01 db d8    	vpermpd ymm3,ymm11,0xd8
  70a1b2:	c5 7c 58 db          	vaddps ymm11,ymm0,ymm3
  70a1b6:	c5 fc 5c db          	vsubps ymm3,ymm0,ymm3
  70a1ba:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  70a1c0:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  70a1c6:	c5 7c 58 e2          	vaddps ymm12,ymm0,ymm2
  70a1ca:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  70a1ce:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  70a1d4:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  70a1da:	c5 2c 58 c2          	vaddps ymm8,ymm10,ymm2
  70a1de:	c4 41 6c 5c d2       	vsubps ymm10,ymm2,ymm10
  70a1e3:	c4 e3 fd 01 54 24 40 	vpermpd ymm2,YMMWORD PTR [rsp+0x40],0xd8
  70a1ea:	d8 
  70a1eb:	c4 63 fd 01 ac 24 a0 	vpermpd ymm13,YMMWORD PTR [rsp+0xa0],0xd8
  70a1f2:	00 00 00 d8 
  70a1f6:	c5 94 58 f2          	vaddps ymm6,ymm13,ymm2
  70a1fa:	c4 c1 6c 5c c5       	vsubps ymm0,ymm2,ymm13
  70a1ff:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  70a205:	c4 63 fd 01 ac 24 80 	vpermpd ymm13,YMMWORD PTR [rsp+0x80],0xd8
  70a20c:	00 00 00 d8 
  70a210:	c4 63 fd 01 7c 24 60 	vpermpd ymm15,YMMWORD PTR [rsp+0x60],0xd8
  70a217:	d8 
  70a218:	c4 c1 14 58 c7       	vaddps ymm0,ymm13,ymm15
  70a21d:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  70a222:	c5 74 58 fb          	vaddps ymm15,ymm1,ymm3
  70a226:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  70a22a:	c4 c1 5c 5c da       	vsubps ymm3,ymm4,ymm10
  70a22f:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  70a233:	c4 62 7d 18 15 60 b1 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff96b160]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  70a23a:	96 ff 
  70a23c:	c4 41 04 59 fa       	vmulps ymm15,ymm15,ymm10
  70a241:	c5 ac 59 eb          	vmulps ymm5,ymm10,ymm3
  70a245:	c5 ac 59 d1          	vmulps ymm2,ymm10,ymm1
  70a249:	c5 ac 59 e4          	vmulps ymm4,ymm10,ymm4
  70a24d:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  70a251:	c5 b4 5c c0          	vsubps ymm0,ymm9,ymm0
  70a255:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  70a25c:	00 00 
  70a25e:	c4 41 24 58 cc       	vaddps ymm9,ymm11,ymm12
  70a263:	c4 c1 24 5c c4       	vsubps ymm0,ymm11,ymm12
  70a268:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  70a26f:	00 00 
  70a271:	c5 4c 58 e7          	vaddps ymm12,ymm6,ymm7
  70a275:	c5 cc 5c c7          	vsubps ymm0,ymm6,ymm7
  70a279:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  70a280:	00 00 
  70a282:	c5 fc 28 84 24 e0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xe0]
  70a289:	00 00 
  70a28b:	c5 bc 58 f8          	vaddps ymm7,ymm8,ymm0
  70a28f:	c5 3c 5c d8          	vsubps ymm11,ymm8,ymm0
  70a293:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  70a29a:	00 00 
  70a29c:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  70a2a3:	00 00 
  70a2a5:	c5 fc 58 f1          	vaddps ymm6,ymm0,ymm1
  70a2a9:	c5 7c 5c d1          	vsubps ymm10,ymm0,ymm1
  70a2ad:	c5 ec 5c cc          	vsubps ymm1,ymm2,ymm4
  70a2b1:	c5 6c 58 c4          	vaddps ymm8,ymm2,ymm4
  70a2b5:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  70a2bb:	c5 94 58 e0          	vaddps ymm4,ymm13,ymm0
  70a2bf:	c4 41 7c 5c ed       	vsubps ymm13,ymm0,ymm13
  70a2c4:	c5 84 58 c5          	vaddps ymm0,ymm15,ymm5
  70a2c8:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  70a2cd:	c5 8c 58 df          	vaddps ymm3,ymm14,ymm7
  70a2d1:	c5 0c 5c ff          	vsubps ymm15,ymm14,ymm7
  70a2d5:	c4 c1 1c 58 d1       	vaddps ymm2,ymm12,ymm9
  70a2da:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  70a2e0:	c4 c1 1c 5c d1       	vsubps ymm2,ymm12,ymm9
  70a2e5:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  70a2eb:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  70a2ef:	c5 cc 5c d0          	vsubps ymm2,ymm6,ymm0
  70a2f3:	c5 dc 58 f1          	vaddps ymm6,ymm4,ymm1
  70a2f7:	c5 5c 5c c9          	vsubps ymm9,ymm4,ymm1
  70a2fb:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  70a302:	00 00 
  70a304:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  70a30b:	00 00 
  70a30d:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  70a311:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  70a315:	c5 7c 28 a4 24 c0 00 	vmovaps ymm12,YMMWORD PTR [rsp+0xc0]
  70a31c:	00 00 
  70a31e:	c4 c1 24 58 cc       	vaddps ymm1,ymm11,ymm12
  70a323:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  70a328:	c4 41 2c 58 d8       	vaddps ymm11,ymm10,ymm8
  70a32d:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  70a332:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  70a336:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  70a33a:	c4 c3 65 18 ef 01    	vinsertf128 ymm5,ymm3,xmm15,0x1
  70a340:	c4 c3 65 06 df 31    	vperm2f128 ymm3,ymm3,ymm15,0x31
  70a346:	c4 63 45 18 f2 01    	vinsertf128 ymm14,ymm7,xmm2,0x1
  70a34c:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  70a352:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  70a358:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  70a35e:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  70a362:	c4 c3 25 18 c2 01    	vinsertf128 ymm0,ymm11,xmm10,0x1
  70a368:	c4 c3 25 06 e2 31    	vperm2f128 ymm4,ymm11,ymm10,0x31
  70a36e:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  70a372:	c5 55 15 d7          	vunpckhpd ymm10,ymm5,ymm7
  70a376:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  70a37a:	c5 8d 15 e8          	vunpckhpd ymm5,ymm14,ymm0
  70a37e:	c5 8d 14 c0          	vunpcklpd ymm0,ymm14,ymm0
  70a382:	c5 ec c6 f8 88       	vshufps ymm7,ymm2,ymm0,0x88
  70a387:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  70a38c:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  70a393:	00 00 
  70a395:	c5 ec c6 c0 dd       	vshufps ymm0,ymm2,ymm0,0xdd
  70a39a:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  70a39f:	c5 ac c6 c5 88       	vshufps ymm0,ymm10,ymm5,0x88
  70a3a4:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  70a3a9:	c5 ac c6 c5 dd       	vshufps ymm0,ymm10,ymm5,0xdd
  70a3ae:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70a3b3:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  70a3b8:	c5 54 c6 dd d8       	vshufps ymm11,ymm5,ymm5,0xd8
  70a3bd:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  70a3c2:	c5 e4 c6 eb d8       	vshufps ymm5,ymm3,ymm3,0xd8
  70a3c7:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  70a3cd:	c5 fc 28 7c 24 40    	vmovaps ymm7,YMMWORD PTR [rsp+0x40]
  70a3d3:	c4 e3 5d 18 df 01    	vinsertf128 ymm3,ymm4,xmm7,0x1
  70a3d9:	c4 e3 5d 06 e7 31    	vperm2f128 ymm4,ymm4,ymm7,0x31
  70a3df:	c4 c3 4d 18 f9 01    	vinsertf128 ymm7,ymm6,xmm9,0x1
  70a3e5:	c4 c3 4d 06 f1 31    	vperm2f128 ymm6,ymm6,ymm9,0x31
  70a3eb:	c4 43 75 18 cc 01    	vinsertf128 ymm9,ymm1,xmm12,0x1
  70a3f1:	c4 c3 75 06 cc 31    	vperm2f128 ymm1,ymm1,ymm12,0x31
  70a3f7:	c5 5d 14 d1          	vunpcklpd ymm10,ymm4,ymm1
  70a3fb:	c4 c3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm13,0x1
  70a401:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  70a407:	c5 cd 14 f4          	vunpcklpd ymm6,ymm6,ymm4
  70a40b:	c4 c1 65 15 e1       	vunpckhpd ymm4,ymm3,ymm9
  70a410:	c4 c1 65 14 d9       	vunpcklpd ymm3,ymm3,ymm9
  70a415:	c5 45 15 c9          	vunpckhpd ymm9,ymm7,ymm1
  70a419:	c5 c5 14 f9          	vunpcklpd ymm7,ymm7,ymm1
  70a41d:	c5 e4 c6 cf 88       	vshufps ymm1,ymm3,ymm7,0x88
  70a422:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70a427:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  70a42d:	c5 e4 c6 df dd       	vshufps ymm3,ymm3,ymm7,0xdd
  70a432:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  70a437:	c4 c1 5c c6 d9 88    	vshufps ymm3,ymm4,ymm9,0x88
  70a43d:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70a442:	c4 c1 5c c6 e1 dd    	vshufps ymm4,ymm4,ymm9,0xdd
  70a448:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  70a44d:	c5 ac c6 fe 88       	vshufps ymm7,ymm10,ymm6,0x88
  70a452:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  70a457:	c5 ac c6 f6 dd       	vshufps ymm6,ymm10,ymm6,0xdd
  70a45c:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  70a461:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  70a466:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  70a46d:	00 
  70a46e:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  70a475:	00 
  70a476:	c5 c4 59 f2          	vmulps ymm6,ymm7,ymm2
  70a47a:	c4 c2 65 bc f2       	vfnmadd231ps ymm6,ymm3,ymm10
  70a47f:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  70a483:	c5 fc 10 9a 20 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x120]
  70a48a:	00 
  70a48b:	c4 c2 6d b8 fa       	vfmadd231ps ymm7,ymm2,ymm10
  70a490:	c5 fc 10 92 00 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x100]
  70a497:	00 
  70a498:	c5 24 59 d2          	vmulps ymm10,ymm11,ymm2
  70a49c:	c4 62 35 bc d3       	vfnmadd231ps ymm10,ymm9,ymm3
  70a4a1:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  70a4a5:	c4 62 25 b8 cb       	vfmadd231ps ymm9,ymm11,ymm3
  70a4aa:	c5 fc 10 92 60 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x160]
  70a4b1:	00 
  70a4b2:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  70a4b9:	00 
  70a4ba:	c5 14 59 db          	vmulps ymm11,ymm13,ymm3
  70a4be:	c4 62 55 b8 da       	vfmadd231ps ymm11,ymm5,ymm2
  70a4c3:	c5 e4 59 ed          	vmulps ymm5,ymm3,ymm5
  70a4c7:	c5 fc 10 5a 60       	vmovups ymm3,YMMWORD PTR [rdx+0x60]
  70a4cc:	c4 e2 15 bc ea       	vfnmadd231ps ymm5,ymm13,ymm2
  70a4d1:	c4 41 4c 5c fa       	vsubps ymm15,ymm6,ymm10
  70a4d6:	c4 41 1c 59 e8       	vmulps ymm13,ymm12,ymm8
  70a4db:	c4 62 0d b8 eb       	vfmadd231ps ymm13,ymm14,ymm3
  70a4e0:	c4 41 1c 59 e6       	vmulps ymm12,ymm12,ymm14
  70a4e5:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  70a4ec:	00 
  70a4ed:	c4 62 3d bc e3       	vfnmadd231ps ymm12,ymm8,ymm3
  70a4f2:	c5 fc 10 92 c0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xc0]
  70a4f9:	00 
  70a4fa:	c5 ec 59 dc          	vmulps ymm3,ymm2,ymm4
  70a4fe:	c4 c2 7d b8 de       	vfmadd231ps ymm3,ymm0,ymm14
  70a503:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  70a507:	c4 e2 7d 18 05 c4 ad 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff96adc4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70a50e:	96 ff 
  70a510:	c5 04 59 c0          	vmulps ymm8,ymm15,ymm0
  70a514:	c4 c2 5d bc d6       	vfnmadd231ps ymm2,ymm4,ymm14
  70a519:	c5 34 58 f7          	vaddps ymm14,ymm9,ymm7
  70a51d:	c4 62 7d 18 3d 3a af 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff96af3a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70a524:	96 ff 
  70a526:	c5 ac 58 e6          	vaddps ymm4,ymm10,ymm6
  70a52a:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  70a52e:	c4 e2 0d ac f1       	vfnmadd213ps ymm6,ymm14,ymm1
  70a533:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  70a538:	c4 41 54 5c cc       	vsubps ymm9,ymm5,ymm12
  70a53d:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  70a541:	c4 41 24 58 d5       	vaddps ymm10,ymm11,ymm13
  70a546:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  70a54b:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  70a54f:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  70a553:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  70a557:	c5 a4 59 c8          	vmulps ymm1,ymm11,ymm0
  70a55b:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  70a560:	c4 62 2d ac db       	vfnmadd213ps ymm11,ymm10,ymm3
  70a565:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  70a56a:	c4 41 24 58 c1       	vaddps ymm8,ymm11,ymm9
  70a56f:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  70a574:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  70a579:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  70a580:	00 00 
  70a582:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  70a587:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  70a58b:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  70a58f:	c4 62 55 ac fa       	vfnmadd213ps ymm15,ymm5,ymm2
  70a594:	c5 04 5c d9          	vsubps ymm11,ymm15,ymm1
  70a598:	c5 04 58 f9          	vaddps ymm15,ymm15,ymm1
  70a59c:	c5 0c 58 74 24 60    	vaddps ymm14,ymm14,YMMWORD PTR [rsp+0x60]
  70a5a2:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  70a5a6:	c5 dc 58 e0          	vaddps ymm4,ymm4,ymm0
  70a5aa:	c5 ec 58 ed          	vaddps ymm5,ymm2,ymm5
  70a5ae:	c4 c1 1c 5c c0       	vsubps ymm0,ymm12,ymm8
  70a5b3:	c4 41 1c 58 c0       	vaddps ymm8,ymm12,ymm8
  70a5b8:	c4 c1 14 5c cb       	vsubps ymm1,ymm13,ymm11
  70a5bd:	c4 41 14 58 d3       	vaddps ymm10,ymm13,ymm11
  70a5c2:	c5 b4 58 d6          	vaddps ymm2,ymm9,ymm6
  70a5c6:	c4 c1 4c 5c f1       	vsubps ymm6,ymm6,ymm9
  70a5cb:	c5 04 58 cf          	vaddps ymm9,ymm15,ymm7
  70a5cf:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  70a5d4:	c5 0c 5c db          	vsubps ymm11,ymm14,ymm3
  70a5d8:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  70a5dc:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  70a5e0:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  70a5e4:	c5 e4 15 ec          	vunpckhps ymm5,ymm3,ymm4
  70a5e8:	c5 e4 14 dc          	vunpcklps ymm3,ymm3,ymm4
  70a5ec:	c4 e3 65 06 e5 31    	vperm2f128 ymm4,ymm3,ymm5,0x31
  70a5f2:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  70a5f8:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  70a5fc:	c5 fc 11 66 20       	vmovups YMMWORD PTR [rsi+0x20],ymm4
  70a601:	c5 cc 15 df          	vunpckhps ymm3,ymm6,ymm7
  70a605:	c5 cc 14 e7          	vunpcklps ymm4,ymm6,ymm7
  70a609:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  70a60f:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  70a615:	c5 fc 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm3
  70a61a:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  70a61f:	c4 c1 3c 15 da       	vunpckhps ymm3,ymm8,ymm10
  70a624:	c4 c1 3c 14 e2       	vunpcklps ymm4,ymm8,ymm10
  70a629:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  70a62f:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  70a635:	c5 fc 11 9e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm3
  70a63c:	00 
  70a63d:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  70a644:	00 
  70a645:	c4 c1 24 15 dc       	vunpckhps ymm3,ymm11,ymm12
  70a64a:	c4 c1 24 14 e4       	vunpcklps ymm4,ymm11,ymm12
  70a64f:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  70a655:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  70a65b:	c5 fc 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm3
  70a662:	00 
  70a663:	c5 fc 11 ae e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm5
  70a66a:	00 
  70a66b:	c4 c1 6c 15 d9       	vunpckhps ymm3,ymm2,ymm9
  70a670:	c4 c1 6c 14 d1       	vunpcklps ymm2,ymm2,ymm9
  70a675:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  70a67b:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  70a681:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  70a688:	00 
  70a689:	c5 fc 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm4
  70a690:	00 
  70a691:	c5 fc 15 d1          	vunpckhps ymm2,ymm0,ymm1
  70a695:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  70a699:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  70a69f:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  70a6a5:	c5 fc 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm0
  70a6ac:	00 
  70a6ad:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  70a6b4:	00 
  70a6b5:	48 89 ec             	mov    rsp,rbp
  70a6b8:	5d                   	pop    rbp
  70a6b9:	c5 f8 77             	vzeroupper
  70a6bc:	c3                   	ret
