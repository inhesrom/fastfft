
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1b180 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1b180:	55                   	push   rbp
  b1b181:	48 89 e5             	mov    rbp,rsp
  b1b184:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b1b188:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  b1b18f:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  b1b196:	00 
  b1b197:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  b1b19e:	00 
  b1b19f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  b1b1a4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  b1b1a9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b1b1ad:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b1b1b2:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b1b1b7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b1b1bd:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b1b1c2:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b1b1c8:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  b1b1cd:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b1b1d2:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b1b1d7:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b1b1dd:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b1b1e2:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b1b1e8:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  b1b1ef:	00 
  b1b1f0:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b1b1f7:	00 
  b1b1f8:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b1b1fd:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b1b203:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b1b208:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b1b20e:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  b1b215:	00 
  b1b216:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b1b21d:	00 
  b1b21e:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b1b223:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b1b229:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1b22e:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  b1b234:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  b1b23b:	00 
  b1b23c:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  b1b243:	00 
  b1b244:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  b1b249:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b1b24f:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1b254:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  b1b25a:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  b1b261:	00 
  b1b262:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  b1b269:	00 
  b1b26a:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  b1b26f:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b1b275:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1b27a:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  b1b280:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  b1b287:	00 
  b1b288:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b1b28f:	00 
  b1b290:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  b1b296:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b1b29c:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b1b2a2:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  b1b2a8:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  b1b2af:	00 
  b1b2b0:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b1b2b7:	00 
  b1b2b8:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  b1b2bf:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b1b2c6:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  b1b2cc:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  b1b2d2:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  b1b2d8:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  b1b2de:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b1b2e4:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  b1b2ea:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b1b2f0:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b1b2f6:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b1b2fc:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  b1b302:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  b1b308:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b1b30e:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  b1b314:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  b1b31a:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b1b320:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  b1b326:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b1b32b:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b1b330:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  b1b334:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b1b339:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b1b33d:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  b1b341:	c4 e2 7d 18 3d 52 a0 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff55a052]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1b348:	55 ff 
  b1b34a:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  b1b34e:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  b1b353:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b1b359:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  b1b35e:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  b1b362:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  b1b367:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  b1b36d:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  b1b372:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b1b376:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  b1b37a:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  b1b37e:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b1b382:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  b1b387:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  b1b38b:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  b1b38f:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  b1b394:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  b1b39a:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  b1b3a0:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  b1b3a6:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b1b3ac:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b1b3b2:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  b1b3b8:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b1b3bc:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b1b3c0:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  b1b3c4:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b1b3c8:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  b1b3cd:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  b1b3d1:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  b1b3d7:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b1b3dd:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  b1b3e2:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  b1b3e7:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b1b3ed:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  b1b3f3:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  b1b3f7:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  b1b3fd:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  b1b404:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  b1b40b:	00 00 
  b1b40d:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  b1b414:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  b1b41b:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b1b422:	00 00 
  b1b424:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  b1b42b:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  b1b432:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  b1b439:	00 00 
  b1b43b:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  b1b442:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  b1b448:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  b1b44f:	00 00 
  b1b451:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  b1b457:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  b1b45c:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  b1b461:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  b1b465:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  b1b469:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  b1b46f:	c5 fc 29 bc 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm7
  b1b476:	00 00 
  b1b478:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  b1b47e:	c5 fc 29 bc 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm7
  b1b485:	00 00 
  b1b487:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  b1b48c:	c5 fc 29 bc 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm7
  b1b493:	00 00 
  b1b495:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  b1b49a:	c5 fc 29 a4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm4
  b1b4a1:	00 00 
  b1b4a3:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  b1b4aa:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  b1b4b0:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  b1b4b7:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  b1b4bd:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  b1b4c4:	00 00 
  b1b4c6:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  b1b4cc:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  b1b4d3:	c5 fc 29 b4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm6
  b1b4da:	00 00 
  b1b4dc:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  b1b4e3:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  b1b4ea:	c5 fc 29 7c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm7
  b1b4f0:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b1b4f7:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  b1b4fd:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  b1b503:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  b1b508:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  b1b50e:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  b1b515:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  b1b51c:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  b1b523:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b1b52a:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  b1b530:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  b1b536:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  b1b53d:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  b1b544:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  b1b54a:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  b1b550:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  b1b557:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  b1b55e:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  b1b565:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  b1b56c:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  b1b572:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  b1b579:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  b1b580:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  b1b587:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  b1b58e:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  b1b595:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  b1b59c:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  b1b5a3:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  b1b5aa:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  b1b5b1:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  b1b5b8:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  b1b5bf:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  b1b5c6:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  b1b5cd:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  b1b5d4:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  b1b5db:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  b1b5e2:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  b1b5e9:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  b1b5f0:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  b1b5f7:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  b1b5fe:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  b1b605:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  b1b60c:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  b1b612:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  b1b618:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  b1b61e:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  b1b624:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  b1b628:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  b1b62e:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  b1b632:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  b1b636:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  b1b63c:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  b1b642:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  b1b648:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b1b64c:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  b1b652:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  b1b658:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  b1b65e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  b1b664:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  b1b66a:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  b1b670:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  b1b676:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  b1b67c:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b1b680:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b1b684:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b1b688:	c4 62 7d 18 1d 0b 9d 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff559d0b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1b68f:	55 ff 
  b1b691:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  b1b697:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  b1b69b:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  b1b6a1:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  b1b6a7:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  b1b6ab:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  b1b6b1:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b1b6b5:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  b1b6ba:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  b1b6c0:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b1b6c4:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b1b6c8:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  b1b6cc:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  b1b6d0:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  b1b6d4:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b1b6d8:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  b1b6dc:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  b1b6e0:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  b1b6e6:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  b1b6ea:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  b1b6f0:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  b1b6f4:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  b1b6fa:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  b1b6fe:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  b1b702:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  b1b706:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  b1b70c:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  b1b712:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  b1b716:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b1b71a:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b1b71e:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  b1b724:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b1b728:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  b1b72e:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  b1b734:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  b1b738:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b1b73c:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  b1b740:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b1b744:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0x180],0xd8
  b1b74b:	0c d8 
  b1b74d:	c4 e3 7d 04 bc 24 60 	vpermilps ymm7,YMMWORD PTR [rsp+0x160],0xd8
  b1b754:	01 00 00 d8 
  b1b758:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x140],0xd8
  b1b75f:	0a d8 
  b1b761:	c4 63 7d 04 a4 24 20 	vpermilps ymm12,YMMWORD PTR [rsp+0x120],0xd8
  b1b768:	01 00 00 d8 
  b1b76c:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  b1b773:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  b1b779:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  b1b780:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  b1b787:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  b1b78e:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  b1b795:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  b1b79c:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b1b7a3:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  b1b7a9:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  b1b7b0:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  b1b7b5:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  b1b7b9:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  b1b7bf:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  b1b7c3:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  b1b7c7:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  b1b7cd:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  b1b7d1:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  b1b7d6:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  b1b7db:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  b1b7e2:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  b1b7e9:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  b1b7ee:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  b1b7f5:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  b1b7fc:	00 00 
  b1b7fe:	c5 fd 14 84 24 00 01 	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x100]
  b1b805:	00 00 
  b1b807:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  b1b80e:	00 00 
  b1b810:	c5 f5 14 8c 24 e0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xe0]
  b1b817:	00 00 
  b1b819:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b1b81e:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1b823:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  b1b829:	c5 e5 14 a4 24 80 00 	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp+0x80]
  b1b830:	00 00 
  b1b832:	c5 fc 28 9c 24 a0 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x1a0]
  b1b839:	00 00 
  b1b83b:	c5 e5 14 6c 24 60    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp+0x60]
  b1b841:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  b1b846:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1b84b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b1b850:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1b855:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  b1b85c:	00 00 
  b1b85e:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  b1b863:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  b1b868:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  b1b86e:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1b875:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b1b87c:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b1b883:	00 
  b1b884:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  b1b88b:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b1b892:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  b1b899:	00 
  b1b89a:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  b1b8a1:	00 
  b1b8a2:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b1b8a9:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  b1b8af:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  b1b8b5:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  b1b8bb:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  b1b8c2:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  b1b8c8:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  b1b8cf:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  b1b8d5:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  b1b8db:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  b1b8e1:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  b1b8e8:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  b1b8ee:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  b1b8f5:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  b1b8fb:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  b1b901:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  b1b907:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  b1b90e:	00 
  b1b90f:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  b1b915:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  b1b91c:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  b1b922:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  b1b928:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  b1b92e:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  b1b935:	00 
  b1b936:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  b1b93c:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b1b943:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  b1b949:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  b1b94f:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  b1b955:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  b1b95b:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  b1b961:	c4 62 7d 18 05 ee 9d 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff559dee]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b1b968:	55 ff 
  b1b96a:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  b1b970:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  b1b976:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  b1b97c:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  b1b983:	00 
  b1b984:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  b1b989:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  b1b990:	00 
  b1b991:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  b1b997:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  b1b99d:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  b1b9a1:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  b1b9a7:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  b1b9ac:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  b1b9b2:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  b1b9b8:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  b1b9be:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  b1b9c4:	c4 62 7d 18 1d d3 99 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff5599d3]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b1b9cb:	55 ff 
  b1b9cd:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  b1b9d3:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  b1b9d9:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  b1b9df:	c5 7c 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm12
  b1b9e5:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  b1b9eb:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  b1b9f1:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b1b9f7:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  b1b9fd:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  b1ba03:	62 e2 7d 28 18 35 db 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff559cdb]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b1ba0a:	9c 55 ff 
  b1ba0d:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  b1ba13:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  b1ba19:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  b1ba1e:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  b1ba24:	62 e2 7d 28 18 05 16 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff559c16]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b1ba2b:	9c 55 ff 
  b1ba2e:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  b1ba34:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b1ba3a:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  b1ba40:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  b1ba46:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  b1ba4c:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  b1ba52:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  b1ba58:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  b1ba5e:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  b1ba64:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  b1ba6a:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  b1ba70:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  b1ba76:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  b1ba7c:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  b1ba82:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  b1ba88:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b1ba8e:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  b1ba94:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b1ba9a:	62 61 7c 28 28 6c 24 	vmovaps ymm29,YMMWORD PTR [rsp+0x80]
  b1baa1:	04 
  b1baa2:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  b1baa8:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  b1baae:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  b1bab4:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  b1baba:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  b1bac0:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  b1bac6:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b1baca:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  b1bad0:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  b1bad6:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  b1badc:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  b1bae2:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  b1bae8:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  b1baee:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  b1baf4:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  b1bafa:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  b1bb00:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  b1bb06:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  b1bb0c:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  b1bb12:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  b1bb18:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  b1bb1e:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  b1bb23:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  b1bb29:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b1bb2e:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  b1bb34:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  b1bb3a:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  b1bb40:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  b1bb46:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  b1bb4c:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  b1bb52:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  b1bb58:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  b1bb5e:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  b1bb64:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  b1bb6a:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  b1bb70:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  b1bb76:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  b1bb7c:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b1bb82:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b1bb86:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b1bb8a:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  b1bb90:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  b1bb96:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  b1bb9c:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  b1bba2:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  b1bba8:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  b1bbae:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  b1bbb4:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  b1bbba:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b1bbbe:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b1bbc2:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  b1bbc8:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  b1bbcc:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  b1bbd2:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b1bbd6:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  b1bbdc:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  b1bbe0:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  b1bbe6:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  b1bbec:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  b1bbf2:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  b1bbf8:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  b1bbfe:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  b1bc04:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  b1bc09:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  b1bc0f:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  b1bc15:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  b1bc1b:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  b1bc21:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  b1bc26:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  b1bc2c:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b1bc32:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  b1bc36:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  b1bc3c:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  b1bc42:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  b1bc46:	c5 fc 28 35 52 9c 55 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff559c52]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b1bc4d:	ff 
  b1bc4e:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  b1bc54:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  b1bc5a:	62 e1 7c 28 28 1d 7c 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff55b57c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1bc61:	b5 55 ff 
  b1bc64:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  b1bc6a:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b1bc6f:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b1bc75:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  b1bc7b:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b1bc80:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  b1bc86:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  b1bc8c:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  b1bc92:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b1bc98:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  b1bc9e:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  b1bca4:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  b1bcaa:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  b1bcb0:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  b1bcb5:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  b1bcbb:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  b1bcc1:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  b1bcc7:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  b1bccd:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  b1bcd3:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  b1bcd9:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  b1bcdf:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  b1bce5:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b1bceb:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  b1bcf1:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  b1bcf7:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b1bcfd:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  b1bd03:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  b1bd07:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  b1bd0e:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b1bd13:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b1bd18:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b1bd1f:	00 
  b1bd20:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b1bd27:	00 
  b1bd28:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b1bd2f:	00 
  b1bd30:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  b1bd37:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b1bd3e:	00 
  b1bd3f:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  b1bd46:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b1bd4d:	00 
  b1bd4e:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  b1bd55:	00 
  b1bd56:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b1bd5d:	00 
  b1bd5e:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b1bd65:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b1bd6c:	00 
  b1bd6d:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b1bd74:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b1bd7b:	00 
  b1bd7c:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  b1bd83:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b1bd8a:	00 
  b1bd8b:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b1bd92:	00 
  b1bd93:	48 89 ec             	mov    rsp,rbp
  b1bd96:	5d                   	pop    rbp
  b1bd97:	c5 f8 77             	vzeroupper
  b1bd9a:	c3                   	ret
