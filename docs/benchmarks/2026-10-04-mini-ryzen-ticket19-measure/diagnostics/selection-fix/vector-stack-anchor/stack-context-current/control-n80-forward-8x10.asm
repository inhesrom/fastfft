
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1d240 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1d240:	55                   	push   rbp
  b1d241:	48 89 e5             	mov    rbp,rsp
  b1d244:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b1d248:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  b1d24f:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  b1d256:	00 
  b1d257:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  b1d25e:	00 
  b1d25f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  b1d264:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  b1d269:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b1d26d:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b1d272:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b1d277:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b1d27d:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b1d282:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b1d288:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  b1d28d:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b1d292:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b1d297:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b1d29d:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b1d2a2:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b1d2a8:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  b1d2af:	00 
  b1d2b0:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b1d2b7:	00 
  b1d2b8:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b1d2bd:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b1d2c3:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b1d2c8:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b1d2ce:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  b1d2d5:	00 
  b1d2d6:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b1d2dd:	00 
  b1d2de:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b1d2e3:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b1d2e9:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1d2ee:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  b1d2f4:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  b1d2fb:	00 
  b1d2fc:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  b1d303:	00 
  b1d304:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  b1d309:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b1d30f:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1d314:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  b1d31a:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  b1d321:	00 
  b1d322:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  b1d329:	00 
  b1d32a:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  b1d32f:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b1d335:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b1d33a:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  b1d340:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  b1d347:	00 
  b1d348:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b1d34f:	00 
  b1d350:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  b1d356:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b1d35c:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b1d362:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  b1d368:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  b1d36f:	00 
  b1d370:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b1d377:	00 
  b1d378:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  b1d37f:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b1d386:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  b1d38c:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  b1d392:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  b1d398:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  b1d39e:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b1d3a4:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  b1d3aa:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b1d3b0:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b1d3b6:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b1d3bc:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  b1d3c2:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  b1d3c8:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b1d3ce:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  b1d3d4:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  b1d3da:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b1d3e0:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  b1d3e6:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b1d3eb:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b1d3f0:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  b1d3f4:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b1d3f9:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b1d3fd:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  b1d401:	c4 e2 7d 18 3d 92 7f 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff557f92]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1d408:	55 ff 
  b1d40a:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  b1d40e:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  b1d413:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b1d419:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  b1d41e:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  b1d422:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  b1d427:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  b1d42d:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  b1d432:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b1d436:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  b1d43a:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  b1d43e:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b1d442:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  b1d447:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  b1d44b:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  b1d44f:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  b1d454:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  b1d45a:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  b1d460:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  b1d466:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b1d46c:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b1d472:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  b1d478:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b1d47c:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b1d480:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  b1d484:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b1d488:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  b1d48d:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  b1d491:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  b1d497:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b1d49d:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  b1d4a2:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  b1d4a7:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b1d4ad:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  b1d4b3:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  b1d4b7:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  b1d4bd:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  b1d4c4:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  b1d4cb:	00 00 
  b1d4cd:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  b1d4d4:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  b1d4db:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b1d4e2:	00 00 
  b1d4e4:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  b1d4eb:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  b1d4f2:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  b1d4f9:	00 00 
  b1d4fb:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  b1d502:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  b1d508:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  b1d50f:	00 00 
  b1d511:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  b1d517:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  b1d51c:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  b1d521:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  b1d525:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  b1d529:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  b1d52f:	c5 fc 29 bc 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm7
  b1d536:	00 00 
  b1d538:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  b1d53e:	c5 fc 29 bc 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm7
  b1d545:	00 00 
  b1d547:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  b1d54c:	c5 fc 29 bc 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm7
  b1d553:	00 00 
  b1d555:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  b1d55a:	c5 fc 29 a4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm4
  b1d561:	00 00 
  b1d563:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  b1d56a:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  b1d570:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  b1d577:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  b1d57d:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  b1d584:	00 00 
  b1d586:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  b1d58c:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  b1d593:	c5 fc 29 b4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm6
  b1d59a:	00 00 
  b1d59c:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  b1d5a3:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  b1d5aa:	c5 fc 29 7c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm7
  b1d5b0:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b1d5b7:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  b1d5bd:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  b1d5c3:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  b1d5c8:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  b1d5ce:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  b1d5d5:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  b1d5dc:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  b1d5e3:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b1d5ea:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  b1d5f0:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  b1d5f6:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  b1d5fd:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  b1d604:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  b1d60a:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  b1d610:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  b1d617:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  b1d61e:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  b1d625:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  b1d62c:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  b1d632:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  b1d639:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  b1d640:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  b1d647:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  b1d64e:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  b1d655:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  b1d65c:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  b1d663:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  b1d66a:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  b1d671:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  b1d678:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  b1d67f:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  b1d686:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  b1d68d:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  b1d694:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  b1d69b:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  b1d6a2:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  b1d6a9:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  b1d6b0:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  b1d6b7:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  b1d6be:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  b1d6c5:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  b1d6cc:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  b1d6d2:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  b1d6d8:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  b1d6de:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  b1d6e4:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  b1d6e8:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  b1d6ee:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  b1d6f2:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  b1d6f6:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  b1d6fc:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  b1d702:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  b1d708:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b1d70c:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  b1d712:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  b1d718:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  b1d71e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  b1d724:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  b1d72a:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  b1d730:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  b1d736:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  b1d73c:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b1d740:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b1d744:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b1d748:	c4 62 7d 18 1d 4b 7c 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff557c4b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1d74f:	55 ff 
  b1d751:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  b1d757:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  b1d75b:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  b1d761:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  b1d767:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  b1d76b:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  b1d771:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b1d775:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  b1d77a:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  b1d780:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b1d784:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b1d788:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  b1d78c:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  b1d790:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  b1d794:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b1d798:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  b1d79c:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  b1d7a0:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  b1d7a6:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  b1d7aa:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  b1d7b0:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  b1d7b4:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  b1d7ba:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  b1d7be:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  b1d7c2:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  b1d7c6:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  b1d7cc:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  b1d7d2:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  b1d7d6:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b1d7da:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b1d7de:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  b1d7e4:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b1d7e8:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  b1d7ee:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  b1d7f4:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  b1d7f8:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b1d7fc:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  b1d800:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b1d804:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0x180],0xd8
  b1d80b:	0c d8 
  b1d80d:	c4 e3 7d 04 bc 24 60 	vpermilps ymm7,YMMWORD PTR [rsp+0x160],0xd8
  b1d814:	01 00 00 d8 
  b1d818:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x140],0xd8
  b1d81f:	0a d8 
  b1d821:	c4 63 7d 04 a4 24 20 	vpermilps ymm12,YMMWORD PTR [rsp+0x120],0xd8
  b1d828:	01 00 00 d8 
  b1d82c:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  b1d833:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  b1d839:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  b1d840:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  b1d847:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  b1d84e:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  b1d855:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  b1d85c:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b1d863:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  b1d869:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  b1d870:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  b1d875:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  b1d879:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  b1d87f:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  b1d883:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  b1d887:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  b1d88d:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  b1d891:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  b1d896:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  b1d89b:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  b1d8a2:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  b1d8a9:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  b1d8ae:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  b1d8b5:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  b1d8bc:	00 00 
  b1d8be:	c5 fd 14 84 24 00 01 	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x100]
  b1d8c5:	00 00 
  b1d8c7:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  b1d8ce:	00 00 
  b1d8d0:	c5 f5 14 8c 24 e0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xe0]
  b1d8d7:	00 00 
  b1d8d9:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b1d8de:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1d8e3:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  b1d8e9:	c5 e5 14 a4 24 80 00 	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp+0x80]
  b1d8f0:	00 00 
  b1d8f2:	c5 fc 28 9c 24 a0 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x1a0]
  b1d8f9:	00 00 
  b1d8fb:	c5 e5 14 6c 24 60    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp+0x60]
  b1d901:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  b1d906:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1d90b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b1d910:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1d915:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  b1d91c:	00 00 
  b1d91e:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  b1d923:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  b1d928:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  b1d92e:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1d935:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b1d93c:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b1d943:	00 
  b1d944:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  b1d94b:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b1d952:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  b1d959:	00 
  b1d95a:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  b1d961:	00 
  b1d962:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b1d969:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  b1d96f:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  b1d975:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  b1d97b:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  b1d982:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  b1d988:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  b1d98f:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  b1d995:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  b1d99b:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  b1d9a1:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  b1d9a8:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  b1d9ae:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  b1d9b5:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  b1d9bb:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  b1d9c1:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  b1d9c7:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  b1d9ce:	00 
  b1d9cf:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  b1d9d5:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  b1d9dc:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  b1d9e2:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  b1d9e8:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  b1d9ee:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  b1d9f5:	00 
  b1d9f6:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  b1d9fc:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b1da03:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  b1da09:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  b1da0f:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  b1da15:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  b1da1b:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  b1da21:	c4 62 7d 18 05 2e 7d 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff557d2e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b1da28:	55 ff 
  b1da2a:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  b1da30:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  b1da36:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  b1da3c:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  b1da43:	00 
  b1da44:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  b1da49:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  b1da50:	00 
  b1da51:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  b1da57:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  b1da5d:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  b1da61:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  b1da67:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  b1da6c:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  b1da72:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  b1da78:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  b1da7e:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  b1da84:	c4 62 7d 18 1d 13 79 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff557913]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b1da8b:	55 ff 
  b1da8d:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  b1da93:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  b1da99:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  b1da9f:	c5 7c 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm12
  b1daa5:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  b1daab:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  b1dab1:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b1dab7:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  b1dabd:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  b1dac3:	62 e2 7d 28 18 35 1b 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff557c1b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b1daca:	7c 55 ff 
  b1dacd:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  b1dad3:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  b1dad9:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  b1dade:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  b1dae4:	62 e2 7d 28 18 05 56 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff557b56]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b1daeb:	7b 55 ff 
  b1daee:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  b1daf4:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b1dafa:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  b1db00:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  b1db06:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  b1db0c:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  b1db12:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  b1db18:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  b1db1e:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  b1db24:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  b1db2a:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  b1db30:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  b1db36:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  b1db3c:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  b1db42:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  b1db48:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b1db4e:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  b1db54:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b1db5a:	62 61 7c 28 28 6c 24 	vmovaps ymm29,YMMWORD PTR [rsp+0x80]
  b1db61:	04 
  b1db62:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  b1db68:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  b1db6e:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  b1db74:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  b1db7a:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  b1db80:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  b1db86:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b1db8a:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  b1db90:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  b1db96:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  b1db9c:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  b1dba2:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  b1dba8:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  b1dbae:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  b1dbb4:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  b1dbba:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  b1dbc0:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  b1dbc6:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  b1dbcc:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  b1dbd2:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  b1dbd8:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  b1dbde:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  b1dbe3:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  b1dbe9:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b1dbee:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  b1dbf4:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  b1dbfa:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  b1dc00:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  b1dc06:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  b1dc0c:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  b1dc12:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  b1dc18:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  b1dc1e:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  b1dc24:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  b1dc2a:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  b1dc30:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  b1dc36:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  b1dc3c:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b1dc42:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b1dc46:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b1dc4a:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  b1dc50:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  b1dc56:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  b1dc5c:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  b1dc62:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  b1dc68:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  b1dc6e:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  b1dc74:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  b1dc7a:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b1dc7e:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b1dc82:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  b1dc88:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  b1dc8c:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  b1dc92:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b1dc96:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  b1dc9c:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  b1dca0:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  b1dca6:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  b1dcac:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  b1dcb2:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  b1dcb8:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  b1dcbe:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  b1dcc4:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  b1dcc9:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  b1dccf:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  b1dcd5:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  b1dcdb:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  b1dce1:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  b1dce6:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  b1dcec:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b1dcf2:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  b1dcf6:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  b1dcfc:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  b1dd02:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  b1dd06:	c5 fc 28 35 92 7b 55 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff557b92]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b1dd0d:	ff 
  b1dd0e:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  b1dd14:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  b1dd1a:	62 e1 7c 28 28 1d bc 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff5594bc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1dd21:	94 55 ff 
  b1dd24:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  b1dd2a:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b1dd2f:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b1dd35:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  b1dd3b:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b1dd40:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  b1dd46:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  b1dd4c:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  b1dd52:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b1dd58:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  b1dd5e:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  b1dd64:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  b1dd6a:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  b1dd70:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  b1dd75:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  b1dd7b:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  b1dd81:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  b1dd87:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  b1dd8d:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  b1dd93:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  b1dd99:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  b1dd9f:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  b1dda5:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b1ddab:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  b1ddb1:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  b1ddb7:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b1ddbd:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  b1ddc3:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  b1ddc7:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  b1ddce:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b1ddd3:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b1ddd8:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b1dddf:	00 
  b1dde0:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b1dde7:	00 
  b1dde8:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b1ddef:	00 
  b1ddf0:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  b1ddf7:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b1ddfe:	00 
  b1ddff:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  b1de06:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b1de0d:	00 
  b1de0e:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  b1de15:	00 
  b1de16:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b1de1d:	00 
  b1de1e:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b1de25:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b1de2c:	00 
  b1de2d:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b1de34:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b1de3b:	00 
  b1de3c:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  b1de43:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b1de4a:	00 
  b1de4b:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b1de52:	00 
  b1de53:	48 89 ec             	mov    rsp,rbp
  b1de56:	5d                   	pop    rbp
  b1de57:	c5 f8 77             	vzeroupper
  b1de5a:	c3                   	ret
