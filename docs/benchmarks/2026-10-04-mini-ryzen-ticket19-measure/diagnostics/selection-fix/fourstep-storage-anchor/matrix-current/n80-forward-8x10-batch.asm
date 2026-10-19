
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b08280 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b08280:	55                   	push   rbp
  b08281:	48 89 e5             	mov    rbp,rsp
  b08284:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b08288:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  b0828f:	48 c1 e2 07          	shl    rdx,0x7
  b08293:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  b08297:	31 d2                	xor    edx,edx
  b08299:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  b082a0:	00 
  b082a1:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  b082a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  b082ad:	00 00 00 
  b082b0:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  b082b7:	00 
  b082b8:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  b082bd:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  b082c2:	c5 7c 10 44 17 20    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x20]
  b082c8:	c4 41 7c c6 c8 88    	vshufps ymm9,ymm0,ymm8,0x88
  b082ce:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b082d4:	c4 c1 7c c6 c0 dd    	vshufps ymm0,ymm0,ymm8,0xdd
  b082da:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  b082e0:	c5 fc 10 44 17 50    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x50]
  b082e6:	c5 7c 10 54 17 70    	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x70]
  b082ec:	c4 41 7c c6 da 88    	vshufps ymm11,ymm0,ymm10,0x88
  b082f2:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b082f8:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  b082fe:	c5 7c 10 94 17 a0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xa0]
  b08305:	00 00 
  b08307:	c5 7c 10 a4 17 c0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  b0830e:	00 00 
  b08310:	c4 63 fd 01 e8 d8    	vpermpd ymm13,ymm0,0xd8
  b08316:	c4 c1 2c c6 c4 88    	vshufps ymm0,ymm10,ymm12,0x88
  b0831c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b08322:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  b08328:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b0832e:	c5 7c 10 a4 17 f0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xf0]
  b08335:	00 00 
  b08337:	c5 7c 10 b4 17 10 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x110]
  b0833e:	00 00 
  b08340:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  b08346:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  b0834c:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  b08352:	c5 7c 10 b4 17 40 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x140]
  b08359:	00 00 
  b0835b:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x160]
  b08362:	0b 
  b08363:	62 c3 fd 28 01 cc d8 	vpermpd ymm17,ymm12,0xd8
  b0836a:	62 31 0c 28 c6 e0 88 	vshufps ymm12,ymm14,ymm16,0x88
  b08371:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b08377:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  b0837e:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b08384:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x190]
  b0838b:	90 01 00 00 
  b0838f:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1b0]
  b08396:	b0 01 00 00 
  b0839a:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  b083a1:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  b083a8:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b083af:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1e0]
  b083b6:	0f 
  b083b7:	62 e1 7c 28 10 64 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x200]
  b083be:	10 
  b083bf:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b083c6:	62 a1 6c 20 c6 ec 88 	vshufps ymm21,ymm18,ymm20,0x88
  b083cd:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  b083d4:	62 a1 6c 20 c6 d4 dd 	vshufps ymm18,ymm18,ymm20,0xdd
  b083db:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b083e2:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x230]
  b083e9:	30 02 00 00 
  b083ed:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x250]
  b083f4:	50 02 00 00 
  b083f8:	62 a1 5c 20 c6 fe 88 	vshufps ymm23,ymm20,ymm22,0x88
  b083ff:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  b08406:	62 a1 5c 20 c6 e6 dd 	vshufps ymm20,ymm20,ymm22,0xdd
  b0840d:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b08414:	62 c1 34 28 58 f4    	vaddps ymm22,ymm9,ymm12
  b0841a:	62 21 7c 28 58 c5    	vaddps ymm24,ymm0,ymm21
  b08420:	62 01 4c 20 58 c8    	vaddps ymm25,ymm22,ymm24
  b08426:	62 21 24 28 58 d3    	vaddps ymm26,ymm11,ymm19
  b0842c:	62 21 04 28 58 df    	vaddps ymm27,ymm15,ymm23
  b08432:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b08438:	62 41 3c 28 58 ee    	vaddps ymm29,ymm8,ymm14
  b0843e:	62 21 2c 28 58 f2    	vaddps ymm30,ymm10,ymm18
  b08444:	62 21 14 28 58 f8    	vaddps ymm31,ymm13,ymm16
  b0844a:	62 91 14 20 58 ce    	vaddps ymm1,ymm29,ymm30
  b08450:	62 b1 74 20 58 d4    	vaddps ymm2,ymm17,ymm20
  b08456:	62 f1 04 20 58 da    	vaddps ymm3,ymm31,ymm2
  b0845c:	c4 c1 34 5c e4       	vsubps ymm4,ymm9,ymm12
  b08461:	62 91 34 20 58 ec    	vaddps ymm5,ymm25,ymm28
  b08467:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  b0846d:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  b08471:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  b08477:	c5 74 58 e3          	vaddps ymm12,ymm1,ymm3
  b0847b:	62 a1 14 28 5c c0    	vsubps ymm16,ymm13,ymm16
  b08481:	62 31 24 28 58 e8    	vaddps ymm13,ymm11,ymm16
  b08487:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  b0848d:	c4 e2 7d 18 35 c6 ce 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff56cec6]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b08494:	56 ff 
  b08496:	62 e1 14 28 59 d6    	vmulps ymm18,ymm13,ymm6
  b0849c:	62 31 04 28 5c ff    	vsubps ymm15,ymm15,ymm23
  b084a2:	62 51 74 20 5c ef    	vsubps ymm13,ymm17,ymm15
  b084a8:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  b084ad:	62 e1 14 28 59 e6    	vmulps ymm20,ymm13,ymm6
  b084b3:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  b084b9:	c5 3c 58 e8          	vaddps ymm13,ymm8,ymm0
  b084bd:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  b084c3:	c5 24 59 de          	vmulps ymm11,ymm11,ymm6
  b084c7:	62 31 04 28 58 f1    	vaddps ymm14,ymm15,ymm17
  b084cd:	c5 0c 59 fe          	vmulps ymm15,ymm14,ymm6
  b084d1:	62 81 4c 20 5c c0    	vsubps ymm16,ymm22,ymm24
  b084d7:	62 21 6c 20 58 c4    	vaddps ymm24,ymm18,ymm20
  b084dd:	62 f1 04 20 5c d2    	vsubps ymm2,ymm31,ymm2
  b084e3:	62 e1 7c 20 58 ca    	vaddps ymm17,ymm16,ymm2
  b084e9:	62 81 14 20 5c ee    	vsubps ymm21,ymm29,ymm30
  b084ef:	62 41 24 28 5c ef    	vsubps ymm29,ymm11,ymm15
  b084f5:	62 01 24 20 5c d2    	vsubps ymm26,ymm27,ymm26
  b084fb:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  b08501:	c4 41 5c 5c f2       	vsubps ymm14,ymm4,ymm10
  b08506:	62 c1 24 28 58 ff    	vaddps ymm23,ymm11,ymm15
  b0850c:	62 e1 3c 28 5c d8    	vsubps ymm19,ymm8,ymm0
  b08512:	62 a1 5c 20 5c f2    	vsubps ymm22,ymm20,ymm18
  b08518:	62 91 34 20 5c e4    	vsubps ymm4,ymm25,ymm28
  b0851e:	62 81 34 28 58 e0    	vaddps ymm20,ymm9,ymm24
  b08524:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b08528:	62 f1 7c 20 5c d2    	vsubps ymm2,ymm16,ymm2
  b0852e:	62 91 54 20 5c da    	vsubps ymm3,ymm21,ymm26
  b08534:	62 11 14 28 58 fd    	vaddps ymm15,ymm13,ymm29
  b0853a:	c4 e3 55 18 c4 01    	vinsertf128 ymm0,ymm5,xmm4,0x1
  b08540:	c4 e3 55 06 e4 31    	vperm2f128 ymm4,ymm5,ymm4,0x31
  b08546:	62 f3 75 20 18 ea 01 	vinsertf32x4 ymm5,ymm17,xmm2,0x1
  b0854d:	62 a1 0c 28 58 ef    	vaddps ymm21,ymm14,ymm23
  b08553:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  b0855a:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  b0855e:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  b08564:	c5 5d 14 da          	vunpcklpd ymm11,ymm4,ymm2
  b08568:	62 a1 64 20 58 ce    	vaddps ymm17,ymm19,ymm22
  b0856e:	c5 5d 15 d2          	vunpckhpd ymm10,ymm4,ymm2
  b08572:	c4 e3 1d 18 d1 01    	vinsertf128 ymm2,ymm12,xmm1,0x1
  b08578:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  b0857e:	62 91 34 28 5c e0    	vsubps ymm4,ymm9,ymm24
  b08584:	62 63 25 20 18 c3 01 	vinsertf32x4 ymm24,ymm27,xmm3,0x1
  b0858b:	62 f3 a5 20 23 db 03 	vshuff64x2 ymm3,ymm27,ymm3,0x3
  b08592:	62 91 ed 28 14 f0    	vunpcklpd ymm6,ymm2,ymm24
  b08598:	c5 fc 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm6
  b0859e:	62 81 14 28 5c d5    	vsubps ymm18,ymm13,ymm29
  b085a4:	62 e1 f5 28 14 c3    	vunpcklpd ymm16,ymm1,ymm3
  b085aa:	c5 75 15 e3          	vunpckhpd ymm12,ymm1,ymm3
  b085ae:	62 91 ed 28 15 c8    	vunpckhpd ymm1,ymm2,ymm24
  b085b4:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  b085ba:	62 b1 0c 28 5c cf    	vsubps ymm1,ymm14,ymm23
  b085c0:	c5 7d 15 f5          	vunpckhpd ymm14,ymm0,ymm5
  b085c4:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x40]
  b085cb:	04 
  b085cc:	62 93 3d 00 21 d0 9c 	vinsertps xmm2,xmm24,xmm24,0x9c
  b085d3:	62 a1 64 20 5c f6    	vsubps ymm22,ymm19,ymm22
  b085d9:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  b085e0:	00 00 
  b085e2:	c4 e3 79 21 d8 9c    	vinsertps xmm3,xmm0,xmm0,0x9c
  b085e8:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b085ed:	c4 c1 78 c6 e9 dd    	vshufps xmm5,xmm0,xmm9,0xdd
  b085f3:	62 e3 5d 20 18 dc 01 	vinsertf32x4 ymm19,ymm20,xmm4,0x1
  b085fa:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0xe0]
  b08601:	0e 
  b08602:	62 41 34 00 c6 d1 dd 	vshufps xmm26,xmm25,xmm9,0xdd
  b08609:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x130]
  b08610:	13 
  b08611:	62 e3 dd 20 23 fc 03 	vshuff64x2 ymm23,ymm20,ymm4,0x3
  b08618:	62 d1 24 00 c6 e1 dd 	vshufps xmm4,xmm27,xmm9,0xdd
  b0861f:	62 61 7c 08 10 64 17 	vmovups xmm28,XMMWORD PTR [rdi+rdx*1+0x180]
  b08626:	18 
  b08627:	62 03 1d 00 21 ec 9c 	vinsertps xmm29,xmm28,xmm28,0x9c
  b0862e:	62 e3 55 20 18 e1 01 	vinsertf32x4 ymm20,ymm21,xmm1,0x1
  b08635:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  b0863c:	00 00 
  b0863e:	62 63 7d 08 21 f0 9c 	vinsertps xmm30,xmm0,xmm0,0x9c
  b08645:	62 41 7c 08 c6 f9 dd 	vshufps xmm31,xmm0,xmm9,0xdd
  b0864c:	62 73 d5 20 23 c1 03 	vshuff64x2 ymm8,ymm21,ymm1,0x3
  b08653:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  b0865a:	00 00 
  b0865c:	62 c1 74 08 c6 e9 dd 	vshufps xmm21,xmm1,xmm9,0xdd
  b08663:	c5 f8 10 b4 17 70 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x270]
  b0866a:	00 00 
  b0866c:	62 91 6c 28 58 fd    	vaddps ymm7,ymm2,ymm29
  b08672:	62 91 6c 28 5c d5    	vsubps ymm2,ymm2,ymm29
  b08678:	62 21 2c 20 58 ed    	vaddps ymm29,ymm26,ymm21
  b0867e:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  b08684:	62 01 64 28 58 d6    	vaddps ymm26,ymm3,ymm30
  b0868a:	62 91 64 28 5c de    	vsubps ymm3,ymm3,ymm30
  b08690:	62 01 54 28 58 f7    	vaddps ymm30,ymm5,ymm31
  b08696:	62 91 54 28 5c ef    	vsubps ymm5,ymm5,ymm31
  b0869c:	62 41 4c 08 c6 f9 dd 	vshufps xmm31,xmm6,xmm9,0xdd
  b086a3:	62 91 5c 28 58 c7    	vaddps ymm0,ymm4,ymm31
  b086a9:	62 91 5c 28 5c e7    	vsubps ymm4,ymm4,ymm31
  b086af:	62 03 25 00 21 db 9c 	vinsertps xmm27,xmm27,xmm27,0x9c
  b086b6:	c4 e3 49 21 f6 9c    	vinsertps xmm6,xmm6,xmm6,0x9c
  b086bc:	62 61 24 20 58 fe    	vaddps ymm31,ymm27,ymm6
  b086c2:	62 f1 24 20 5c f6    	vsubps ymm6,ymm27,ymm6
  b086c8:	62 41 3c 00 c6 c1 dd 	vshufps xmm24,xmm24,xmm9,0xdd
  b086cf:	62 41 1c 00 c6 d9 dd 	vshufps xmm27,xmm28,xmm9,0xdd
  b086d6:	62 01 3c 20 58 e3    	vaddps ymm28,ymm24,ymm27
  b086dc:	62 01 3c 20 5c c3    	vsubps ymm24,ymm24,ymm27
  b086e2:	62 03 35 00 21 c9 9c 	vinsertps xmm25,xmm25,xmm25,0x9c
  b086e9:	c4 e3 71 21 c9 9c    	vinsertps xmm1,xmm1,xmm1,0x9c
  b086ef:	62 61 34 20 58 d9    	vaddps ymm27,ymm25,ymm1
  b086f5:	62 01 74 28 5c c9    	vsubps ymm25,ymm1,ymm25
  b086fb:	62 b3 05 28 18 ca 01 	vinsertf32x4 ymm1,ymm15,xmm18,0x1
  b08702:	62 33 85 28 23 fa 03 	vshuff64x2 ymm15,ymm15,ymm18,0x3
  b08709:	c5 64 58 cd          	vaddps ymm9,ymm3,ymm5
  b0870d:	c5 d4 5c eb          	vsubps ymm5,ymm5,ymm3
  b08711:	62 a3 75 20 18 d6 01 	vinsertf32x4 ymm18,ymm17,xmm22,0x1
  b08718:	62 b3 f5 20 23 de 03 	vshuff64x2 ymm3,ymm17,ymm22,0x3
  b0871f:	62 e1 5c 28 5c f6    	vsubps ymm22,ymm4,ymm6
  b08725:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  b08729:	62 d1 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm8
  b0872f:	62 51 c5 20 15 c0    	vunpckhpd ymm8,ymm23,ymm8
  b08735:	62 81 44 28 58 fb    	vaddps ymm23,ymm7,ymm27
  b0873b:	62 91 44 28 5c fb    	vsubps ymm7,ymm7,ymm27
  b08741:	62 61 85 28 14 db    	vunpcklpd ymm27,ymm15,ymm3
  b08747:	c5 05 15 fb          	vunpckhpd ymm15,ymm15,ymm3
  b0874b:	62 71 0c 20 58 e8    	vaddps ymm13,ymm30,ymm0
  b08751:	62 f1 0c 20 5c c0    	vsubps ymm0,ymm30,ymm0
  b08757:	62 21 f5 28 14 f2    	vunpcklpd ymm30,ymm1,ymm18
  b0875d:	62 b1 f5 28 15 ca    	vunpckhpd ymm1,ymm1,ymm18
  b08763:	62 81 1c 20 58 d5    	vaddps ymm18,ymm28,ymm29
  b08769:	62 01 1c 20 5c e5    	vsubps ymm28,ymm28,ymm29
  b0876f:	62 21 e5 20 14 ec    	vunpcklpd ymm29,ymm19,ymm20
  b08775:	62 a1 e5 20 15 cc    	vunpckhpd ymm17,ymm19,ymm20
  b0877b:	62 81 2c 20 58 e7    	vaddps ymm20,ymm26,ymm31
  b08781:	62 01 04 20 5c fa    	vsubps ymm31,ymm31,ymm26
  b08787:	62 61 24 28 c6 d6 88 	vshufps ymm26,ymm11,ymm6,0x88
  b0878e:	c5 a4 c6 f6 dd       	vshufps ymm6,ymm11,ymm6,0xdd
  b08793:	62 31 6c 28 58 dd    	vaddps ymm11,ymm2,ymm21
  b08799:	62 a1 6c 28 5c ed    	vsubps ymm21,ymm2,ymm21
  b0879f:	62 e2 7d 28 18 1d b3 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff56cbb3]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b087a6:	cb 56 ff 
  b087a9:	62 b1 54 28 59 d3    	vmulps ymm2,ymm5,ymm19
  b087af:	62 b1 5c 28 59 e3    	vmulps ymm4,ymm4,ymm19
  b087b5:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  b087b9:	c5 ec 58 e4          	vaddps ymm4,ymm2,ymm4
  b087bd:	c4 c1 2c c6 e8 88    	vshufps ymm5,ymm10,ymm8,0x88
  b087c3:	c4 41 2c c6 c0 dd    	vshufps ymm8,ymm10,ymm8,0xdd
  b087c9:	62 11 34 20 58 d0    	vaddps ymm10,ymm25,ymm24
  b087cf:	62 91 3c 20 5c d1    	vsubps ymm2,ymm24,ymm25
  b087d5:	62 31 34 28 59 cb    	vmulps ymm9,ymm9,ymm19
  b087db:	62 a1 4c 20 59 f3    	vmulps ymm22,ymm22,ymm19
  b087e1:	62 21 34 28 58 c6    	vaddps ymm24,ymm9,ymm22
  b087e7:	62 c1 4c 20 5c f1    	vsubps ymm22,ymm22,ymm9
  b087ed:	62 11 7c 20 c6 cb 88 	vshufps ymm9,ymm16,ymm27,0x88
  b087f4:	62 81 7c 20 c6 c3 dd 	vshufps ymm16,ymm16,ymm27,0xdd
  b087fb:	62 21 44 20 58 cc    	vaddps ymm25,ymm23,ymm20
  b08801:	62 a1 44 00 5c e4    	vsubps xmm20,xmm23,xmm20
  b08807:	62 a3 35 20 18 e4 01 	vinsertf32x4 ymm20,ymm25,xmm20,0x1
  b0880e:	62 81 24 28 58 f8    	vaddps ymm23,ymm11,ymm24
  b08814:	62 11 24 08 5c d8    	vsubps xmm11,xmm11,xmm24
  b0881a:	62 53 45 20 18 db 01 	vinsertf32x4 ymm11,ymm23,xmm11,0x1
  b08821:	62 c1 1c 28 c6 ff 88 	vshufps ymm23,ymm12,ymm15,0x88
  b08828:	c4 41 1c c6 ff dd    	vshufps ymm15,ymm12,ymm15,0xdd
  b0882e:	c5 44 58 e0          	vaddps ymm12,ymm7,ymm0
  b08832:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  b08836:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x20]
  b0883d:	01 
  b0883e:	62 91 64 20 c6 fe dd 	vshufps ymm7,ymm19,ymm30,0xdd
  b08845:	62 01 64 20 c6 c6 88 	vshufps ymm24,ymm19,ymm30,0x88
  b0884c:	c4 e3 1d 18 c0 01    	vinsertf128 ymm0,ymm12,xmm0,0x1
  b08852:	62 e1 dd 20 14 e0    	vunpcklpd ymm20,ymm20,ymm0
  b08858:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  b0885e:	62 91 1c 28 c6 c5 dd 	vshufps ymm0,ymm12,ymm29,0xdd
  b08865:	62 01 1c 28 c6 cd 88 	vshufps ymm25,ymm12,ymm29,0x88
  b0886c:	62 71 54 20 58 e4    	vaddps ymm12,ymm21,ymm4
  b08872:	62 f1 54 00 5c e4    	vsubps xmm4,xmm21,xmm4
  b08878:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x40]
  b0887f:	02 
  b08880:	62 61 64 20 c6 e9 dd 	vshufps ymm29,ymm19,ymm1,0xdd
  b08887:	62 61 64 20 c6 f1 88 	vshufps ymm30,ymm19,ymm1,0x88
  b0888e:	c4 e3 1d 18 cc 01    	vinsertf128 ymm1,ymm12,xmm4,0x1
  b08894:	c5 a5 14 e1          	vunpcklpd ymm4,ymm11,ymm1
  b08898:	62 b1 0c 28 c6 c9 dd 	vshufps ymm1,ymm14,ymm17,0xdd
  b0889f:	62 31 0c 28 c6 d9 88 	vshufps ymm11,ymm14,ymm17,0x88
  b088a6:	62 c1 6c 20 58 cd    	vaddps ymm17,ymm18,ymm13
  b088ac:	62 c1 6c 00 5c d5    	vsubps xmm18,xmm18,xmm13
  b088b2:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  b088b7:	62 81 2c 20 c6 ea d8 	vshufps ymm21,ymm26,ymm26,0xd8
  b088be:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  b088c3:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b088c9:	62 61 54 28 c6 d5 d8 	vshufps ymm26,ymm5,ymm5,0xd8
  b088d0:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  b088d6:	c5 44 c6 ef d8       	vshufps ymm13,ymm7,ymm7,0xd8
  b088db:	c4 c1 34 c6 c1 d8    	vshufps ymm0,ymm9,ymm9,0xd8
  b088e1:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b088e8:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  b088ee:	62 b3 75 20 18 f2 01 	vinsertf32x4 ymm6,ymm17,xmm18,0x1
  b088f5:	62 21 44 20 c6 df d8 	vshufps ymm27,ymm23,ymm23,0xd8
  b088fc:	c5 ac 58 fb          	vaddps ymm7,ymm10,ymm3
  b08900:	c5 28 5c c3          	vsubps xmm8,xmm10,xmm3
  b08904:	62 11 04 20 58 d4    	vaddps ymm10,ymm31,ymm28
  b0890a:	62 c1 04 28 c6 d7 d8 	vshufps ymm18,ymm15,ymm15,0xd8
  b08911:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  b08917:	62 31 6c 28 58 fe    	vaddps ymm15,ymm2,ymm22
  b0891d:	62 11 1c 00 5c c7    	vsubps xmm8,xmm28,xmm31
  b08923:	62 01 3c 20 c6 e0 d8 	vshufps ymm28,ymm24,ymm24,0xd8
  b0892a:	62 e1 5c 20 c6 c4 dd 	vshufps ymm16,ymm20,ymm4,0xdd
  b08931:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b08938:	c4 43 2d 18 d0 01    	vinsertf128 ymm10,ymm10,xmm8,0x1
  b0893e:	62 91 34 20 c6 d9 d8 	vshufps ymm3,ymm25,ymm25,0xd8
  b08945:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  b0894b:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  b08950:	62 b1 6c 08 5c d6    	vsubps xmm2,xmm2,xmm22
  b08956:	c4 e3 05 18 d2 01    	vinsertf128 ymm2,ymm15,xmm2,0x1
  b0895c:	62 81 14 20 c6 cd d8 	vshufps ymm17,ymm29,ymm29,0xd8
  b08963:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  b08967:	c5 cc c6 fa dd       	vshufps ymm7,ymm6,ymm2,0xdd
  b0896c:	62 e1 44 28 c6 ff d8 	vshufps ymm23,ymm7,ymm7,0xd8
  b08973:	62 91 0c 20 c6 fe d8 	vshufps ymm7,ymm30,ymm30,0xd8
  b0897a:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  b0897f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b08984:	62 f1 5c 20 c6 e4 88 	vshufps ymm4,ymm20,ymm4,0x88
  b0898b:	62 61 74 28 c6 c1 d8 	vshufps ymm24,ymm1,ymm1,0xd8
  b08992:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  b08997:	62 e1 7c 28 10 71 02 	vmovups ymm22,YMMWORD PTR [rcx+0x40]
  b0899e:	62 e1 7c 28 10 61 03 	vmovups ymm20,YMMWORD PTR [rcx+0x60]
  b089a5:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  b089ab:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  b089b2:	00 
  b089b3:	c5 7c 10 91 00 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x100]
  b089ba:	00 
  b089bb:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  b089c2:	00 
  b089c3:	62 51 54 20 59 ca    	vmulps ymm9,ymm21,ymm10
  b089c9:	c4 42 7d bc cb       	vfnmadd231ps ymm9,ymm0,ymm11
  b089ce:	62 c1 7c 28 59 c2    	vmulps ymm16,ymm0,ymm10
  b089d4:	c5 fc 10 81 80 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x180]
  b089db:	00 
  b089dc:	62 c2 55 20 b8 c3    	vfmadd231ps ymm16,ymm21,ymm11
  b089e2:	c5 7c 10 91 a0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1a0]
  b089e9:	00 
  b089ea:	62 61 2c 20 59 c8    	vmulps ymm25,ymm26,ymm0
  b089f0:	62 e1 24 20 59 e8    	vmulps ymm21,ymm27,ymm0
  b089f6:	62 42 25 20 bc ca    	vfnmadd231ps ymm25,ymm27,ymm10
  b089fc:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  b08a03:	00 
  b08a04:	62 c2 2d 20 b8 ea    	vfmadd231ps ymm21,ymm26,ymm10
  b08a0a:	c5 7c 10 91 c0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xc0]
  b08a11:	00 
  b08a12:	62 61 5c 28 59 d6    	vmulps ymm26,ymm4,ymm6
  b08a18:	62 62 45 28 bc d0    	vfnmadd231ps ymm26,ymm7,ymm0
  b08a1e:	62 61 44 28 59 de    	vmulps ymm27,ymm7,ymm6
  b08a24:	c5 fc 10 b1 00 02 00 	vmovups ymm6,YMMWORD PTR [rcx+0x200]
  b08a2b:	00 
  b08a2c:	62 62 5d 28 b8 d8    	vfmadd231ps ymm27,ymm4,ymm0
  b08a32:	c5 fc 10 81 20 02 00 	vmovups ymm0,YMMWORD PTR [rcx+0x220]
  b08a39:	00 
  b08a3a:	62 61 74 28 59 ee    	vmulps ymm29,ymm1,ymm6
  b08a40:	62 e1 6c 28 59 de    	vmulps ymm19,ymm2,ymm6
  b08a46:	62 62 6d 28 bc e8    	vfnmadd231ps ymm29,ymm2,ymm0
  b08a4c:	c5 fc 10 91 c0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1c0]
  b08a53:	00 
  b08a54:	62 e2 75 28 b8 d8    	vfmadd231ps ymm19,ymm1,ymm0
  b08a5a:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  b08a61:	00 
  b08a62:	62 61 6c 20 59 f2    	vmulps ymm30,ymm18,ymm2
  b08a68:	62 62 0d 28 b8 f1    	vfmadd231ps ymm30,ymm14,ymm1
  b08a6e:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  b08a72:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  b08a79:	00 
  b08a7a:	62 f2 6d 20 bc c1    	vfnmadd231ps ymm0,ymm18,ymm1
  b08a80:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  b08a87:	00 
  b08a88:	62 61 44 20 59 f9    	vmulps ymm31,ymm23,ymm1
  b08a8e:	c5 d4 59 c9          	vmulps ymm1,ymm5,ymm1
  b08a92:	62 62 55 28 b8 fa    	vfmadd231ps ymm31,ymm5,ymm2
  b08a98:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  b08a9f:	00 
  b08aa0:	62 f2 45 20 bc ca    	vfnmadd231ps ymm1,ymm23,ymm2
  b08aa6:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  b08aad:	00 
  b08aae:	62 d1 74 20 59 f2    	vmulps ymm6,ymm17,ymm10
  b08ab4:	62 f2 3d 20 b8 f4    	vfmadd231ps ymm6,ymm24,ymm4
  b08aba:	62 d1 3c 20 59 fa    	vmulps ymm7,ymm24,ymm10
  b08ac0:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  b08ac7:	00 
  b08ac8:	62 f2 75 20 bc fc    	vfnmadd231ps ymm7,ymm17,ymm4
  b08ace:	62 b1 14 28 59 e6    	vmulps ymm4,ymm13,ymm22
  b08ad4:	62 b2 1d 28 b8 e4    	vfmadd231ps ymm4,ymm12,ymm20
  b08ada:	62 31 1c 28 59 f6    	vmulps ymm14,ymm12,ymm22
  b08ae0:	62 91 2c 20 5c dd    	vsubps ymm3,ymm26,ymm29
  b08ae6:	62 91 34 28 5c e9    	vsubps ymm5,ymm9,ymm25
  b08aec:	62 32 15 28 bc f4    	vfnmadd231ps ymm14,ymm13,ymm20
  b08af2:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  b08af8:	c5 04 59 e2          	vmulps ymm12,ymm15,ymm2
  b08afc:	62 31 7c 20 58 ed    	vaddps ymm13,ymm16,ymm21
  b08b02:	c5 7c 28 44 24 20    	vmovaps ymm8,YMMWORD PTR [rsp+0x20]
  b08b08:	c4 42 3d b8 e3       	vfmadd231ps ymm12,ymm8,ymm11
  b08b0d:	c5 3c 59 d2          	vmulps ymm10,ymm8,ymm2
  b08b11:	c4 42 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm11
  b08b16:	c4 62 7d 18 05 f9 cb 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff56cbf9]        # 75718 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  b08b1d:	56 ff 
  b08b1f:	62 c1 54 28 59 f0    	vmulps ymm22,ymm5,ymm8
  b08b25:	62 a1 24 20 58 e3    	vaddps ymm20,ymm27,ymm19
  b08b2b:	c4 62 7d 18 3d 74 cb 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56cb74]        # 756a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  b08b32:	56 ff 
  b08b34:	62 c1 7c 28 28 ff    	vmovaps ymm23,ymm15
  b08b3a:	62 91 34 28 58 d1    	vaddps ymm2,ymm9,ymm25
  b08b40:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  b08b46:	62 82 5d 20 a8 fc    	vfmadd213ps ymm23,ymm20,ymm28
  b08b4c:	62 e1 04 20 58 cc    	vaddps ymm17,ymm31,ymm4
  b08b52:	62 11 2c 20 58 dd    	vaddps ymm11,ymm26,ymm29
  b08b58:	62 e1 0c 20 58 d6    	vaddps ymm18,ymm30,ymm6
  b08b5e:	62 62 7d 28 18 2d f8 	vbroadcastss ymm29,DWORD PTR [rip+0xffffffffff56c7f8]        # 75360 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  b08b65:	c7 56 ff 
  b08b68:	62 82 65 28 b8 f5    	vfmadd231ps ymm22,ymm3,ymm29
  b08b6e:	62 b1 24 20 5c d3    	vsubps ymm2,ymm27,ymm19
  b08b74:	c5 7c 5c cf          	vsubps ymm9,ymm0,ymm7
  b08b78:	62 21 7c 20 5c cd    	vsubps ymm25,ymm16,ymm21
  b08b7e:	62 62 7d 28 18 1d 7c 	vbroadcastss ymm27,DWORD PTR [rip+0xffffffffff56ca7c]        # 75604 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ae4>
  b08b85:	ca 56 ff 
  b08b88:	62 82 15 28 bc fb    	vfnmadd231ps ymm23,ymm13,ymm27
  b08b8e:	62 41 74 28 5c d6    	vsubps ymm26,ymm1,ymm14
  b08b94:	c5 0c 58 f1          	vaddps ymm14,ymm14,ymm1
  b08b98:	62 41 2c 20 59 c0    	vmulps ymm24,ymm26,ymm8
  b08b9e:	62 02 35 28 b8 c5    	vfmadd231ps ymm24,ymm9,ymm29
  b08ba4:	62 e1 7c 28 58 df    	vaddps ymm19,ymm0,ymm7
  b08baa:	62 c1 34 20 59 c0    	vmulps ymm16,ymm25,ymm8
  b08bb0:	62 f1 0c 20 5c c6    	vsubps ymm0,ymm30,ymm6
  b08bb6:	62 82 6d 28 b8 c5    	vfmadd231ps ymm16,ymm2,ymm29
  b08bbc:	62 f1 04 20 5c cc    	vsubps ymm1,ymm31,ymm4
  b08bc2:	62 c1 74 28 59 e8    	vmulps ymm21,ymm1,ymm8
  b08bc8:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  b08bcc:	62 82 7d 28 b8 ed    	vfmadd231ps ymm21,ymm0,ymm29
  b08bd2:	62 f2 15 20 bc dd    	vfnmadd231ps ymm3,ymm29,ymm5
  b08bd8:	62 91 7c 28 28 e3    	vmovaps ymm4,ymm27
  b08bde:	62 92 5d 20 ac e4    	vfnmadd213ps ymm4,ymm20,ymm28
  b08be4:	c4 c2 15 b8 e7       	vfmadd231ps ymm4,ymm13,ymm15
  b08be9:	62 91 7c 28 28 eb    	vmovaps ymm5,ymm27
  b08bef:	62 d2 6d 20 ac ec    	vfnmadd213ps ymm5,ymm18,ymm12
  b08bf5:	c4 c1 34 59 f0       	vmulps ymm6,ymm9,ymm8
  b08bfa:	62 d2 75 20 b8 ef    	vfmadd231ps ymm5,ymm17,ymm15
  b08c00:	62 92 15 20 bc f2    	vfnmadd231ps ymm6,ymm29,ymm26
  b08c06:	62 91 7c 28 28 fb    	vmovaps ymm7,ymm27
  b08c0c:	62 61 7c 28 28 54 24 	vmovaps ymm26,YMMWORD PTR [rsp+0x60]
  b08c13:	03 
  b08c14:	62 92 25 28 ac fa    	vfnmadd213ps ymm7,ymm11,ymm26
  b08c1a:	62 61 7c 28 28 74 24 	vmovaps ymm30,YMMWORD PTR [rsp+0x20]
  b08c21:	01 
  b08c22:	62 d2 0d 20 b8 ff    	vfmadd231ps ymm7,ymm30,ymm15
  b08c28:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  b08c2c:	62 92 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm25
  b08c32:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b08c36:	62 61 64 28 58 cc    	vaddps ymm25,ymm3,ymm4
  b08c3c:	62 f2 15 20 bc c1    	vfnmadd231ps ymm0,ymm29,ymm1
  b08c42:	62 91 7c 28 28 cb    	vmovaps ymm1,ymm27
  b08c48:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b08c4c:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  b08c50:	62 d2 65 20 ac ca    	vfnmadd213ps ymm1,ymm19,ymm10
  b08c56:	c4 c2 0d b8 cf       	vfmadd231ps ymm1,ymm14,ymm15
  b08c5b:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  b08c5f:	c5 c4 5c f2          	vsubps ymm6,ymm7,ymm2
  b08c63:	c5 c4 58 d2          	vaddps ymm2,ymm7,ymm2
  b08c67:	c5 f4 5c f8          	vsubps ymm7,ymm1,ymm0
  b08c6b:	c5 f4 58 c8          	vaddps ymm1,ymm1,ymm0
  b08c6f:	62 b1 4c 20 58 c7    	vaddps ymm0,ymm22,ymm23
  b08c75:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  b08c7b:	62 11 5c 20 58 cc    	vaddps ymm9,ymm20,ymm28
  b08c81:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b08c87:	62 c2 6d 20 a8 e4    	vfmadd213ps ymm20,ymm18,ymm12
  b08c8d:	62 82 75 20 bc e3    	vfnmadd231ps ymm20,ymm17,ymm27
  b08c93:	c4 41 14 58 e9       	vaddps ymm13,ymm13,ymm9
  b08c98:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b08c9e:	62 81 5c 20 5c e0    	vsubps ymm20,ymm20,ymm24
  b08ca4:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  b08caa:	62 31 1c 28 58 e1    	vaddps ymm12,ymm12,ymm17
  b08cb0:	62 c1 7c 28 28 cf    	vmovaps ymm17,ymm15
  b08cb6:	62 82 25 28 a8 ca    	vfmadd213ps ymm17,ymm11,ymm26
  b08cbc:	62 51 2c 20 58 c3    	vaddps ymm8,ymm26,ymm11
  b08cc2:	62 82 0d 20 bc cb    	vfnmadd231ps ymm17,ymm30,ymm27
  b08cc8:	62 11 3c 28 58 de    	vaddps ymm11,ymm8,ymm30
  b08cce:	c4 41 7c 28 c7       	vmovaps ymm8,ymm15
  b08cd3:	62 52 65 20 a8 c2    	vfmadd213ps ymm8,ymm19,ymm10
  b08cd9:	62 31 2c 28 58 d3    	vaddps ymm10,ymm10,ymm19
  b08cdf:	62 31 74 20 5c f8    	vsubps ymm15,ymm17,ymm16
  b08ce5:	62 a1 74 20 58 c0    	vaddps ymm16,ymm17,ymm16
  b08ceb:	62 12 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm27
  b08cf1:	c4 41 2c 58 f6       	vaddps ymm14,ymm10,ymm14
  b08cf6:	62 31 3c 28 5c d5    	vsubps ymm10,ymm8,ymm21
  b08cfc:	62 a1 3c 28 58 cd    	vaddps ymm17,ymm8,ymm21
  b08d02:	c4 41 7c 5c c1       	vsubps ymm8,ymm0,ymm9
  b08d07:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  b08d0d:	c4 41 04 5c ca       	vsubps ymm9,ymm15,ymm10
  b08d12:	c4 41 04 58 fa       	vaddps ymm15,ymm15,ymm10
  b08d17:	62 f1 34 20 58 c4    	vaddps ymm0,ymm25,ymm4
  b08d1d:	62 f1 34 20 5c e4    	vsubps ymm4,ymm25,ymm4
  b08d23:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  b08d27:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  b08d2b:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  b08d2f:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  b08d33:	c5 ec 5c e9          	vsubps ymm5,ymm2,ymm1
  b08d37:	c5 ec 58 c9          	vaddps ymm1,ymm2,ymm1
  b08d3b:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  b08d40:	c4 41 14 58 e4       	vaddps ymm12,ymm13,ymm12
  b08d45:	62 31 4c 20 58 ec    	vaddps ymm13,ymm22,ymm20
  b08d4b:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  b08d51:	62 c1 24 28 5c e6    	vsubps ymm20,ymm11,ymm14
  b08d57:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  b08d5c:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b08d61:	62 e1 7c 28 28 2d f5 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff56caf5]        # 75860 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b08d68:	ca 56 ff 
  b08d6b:	62 52 55 20 7f f4    	vpermt2ps ymm14,ymm21,ymm12
  b08d71:	62 e1 7c 28 28 35 25 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff56e425]        # 771a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b08d78:	e4 56 ff 
  b08d7b:	62 52 4d 20 7f dc    	vpermt2ps ymm11,ymm22,ymm12
  b08d81:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  b08d86:	62 31 7c 20 58 d9    	vaddps ymm11,ymm16,ymm17
  b08d8c:	62 31 7c 20 5c e1    	vsubps ymm12,ymm16,ymm17
  b08d92:	c5 7c 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  b08d98:	c4 41 7c 28 f4       	vmovaps ymm14,ymm12
  b08d9d:	62 32 4d 20 7f e3    	vpermt2ps ymm12,ymm22,ymm19
  b08da3:	62 32 55 20 7f f3    	vpermt2ps ymm14,ymm21,ymm19
  b08da9:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  b08daf:	c5 7c 11 74 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm14
  b08db5:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  b08db9:	62 72 55 20 7f e3    	vpermt2ps ymm12,ymm21,ymm3
  b08dbf:	62 f2 4d 20 7f cb    	vpermt2ps ymm1,ymm22,ymm3
  b08dc5:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  b08dcc:	00 00 
  b08dce:	c5 7c 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  b08dd5:	00 00 
  b08dd7:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  b08ddb:	62 f2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm4
  b08de1:	62 f2 4d 20 7f f4    	vpermt2ps ymm6,ymm22,ymm4
  b08de7:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  b08dee:	00 00 
  b08df0:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  b08df7:	00 00 
  b08df9:	c5 7c 29 f9          	vmovaps ymm1,ymm15
  b08dfd:	62 b2 55 20 7f ca    	vpermt2ps ymm1,ymm21,ymm18
  b08e03:	62 32 4d 20 7f fa    	vpermt2ps ymm15,ymm22,ymm18
  b08e09:	c5 7c 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm15
  b08e10:	00 00 
  b08e12:	62 b1 7c 28 28 dc    	vmovaps ymm3,ymm20
  b08e18:	62 f2 55 20 7f da    	vpermt2ps ymm3,ymm21,ymm2
  b08e1e:	62 e2 4d 20 7f e2    	vpermt2ps ymm20,ymm22,ymm2
  b08e24:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  b08e2b:	00 00 
  b08e2d:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm20
  b08e34:	0a 
  b08e35:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  b08e3c:	00 00 
  b08e3e:	c5 7c 29 d9          	vmovaps ymm1,ymm11
  b08e42:	62 d2 55 20 7f cd    	vpermt2ps ymm1,ymm21,ymm13
  b08e48:	62 52 4d 20 7f dd    	vpermt2ps ymm11,ymm22,ymm13
  b08e4e:	c5 7c 11 9c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm11
  b08e55:	00 00 
  b08e57:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  b08e5e:	00 00 
  b08e60:	c5 fc 28 cd          	vmovaps ymm1,ymm5
  b08e64:	62 f2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm7
  b08e6a:	62 f2 4d 20 7f ef    	vpermt2ps ymm5,ymm22,ymm7
  b08e70:	c5 fc 11 ac 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm5
  b08e77:	00 00 
  b08e79:	c5 fc 11 8c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm1
  b08e80:	00 00 
  b08e82:	c5 7c 29 d1          	vmovaps ymm1,ymm10
  b08e86:	62 f2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm0
  b08e8c:	62 72 4d 20 7f d0    	vpermt2ps ymm10,ymm22,ymm0
  b08e92:	c5 7c 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm10
  b08e99:	00 00 
  b08e9b:	c5 7c 29 c8          	vmovaps ymm0,ymm9
  b08e9f:	62 d2 55 20 7f c0    	vpermt2ps ymm0,ymm21,ymm8
  b08ea5:	62 52 4d 20 7f c8    	vpermt2ps ymm9,ymm22,ymm8
  b08eab:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  b08eb2:	00 00 
  b08eb4:	c5 7c 11 8c 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm9
  b08ebb:	00 00 
  b08ebd:	c5 fc 11 84 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm0
  b08ec4:	00 00 
  b08ec6:	48 81 c2 80 02 00 00 	add    rdx,0x280
  b08ecd:	48 39 d0             	cmp    rax,rdx
  b08ed0:	0f 85 da f3 ff ff    	jne    b082b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b08ed6:	48 89 ec             	mov    rsp,rbp
  b08ed9:	5d                   	pop    rbp
  b08eda:	c5 f8 77             	vzeroupper
  b08edd:	c3                   	ret
  b08ede:	cc                   	int3
  b08edf:	cc                   	int3
  b08ee0:	cc                   	int3
  b08ee1:	cc                   	int3
  b08ee2:	cc                   	int3
  b08ee3:	cc                   	int3
  b08ee4:	cc                   	int3
  b08ee5:	cc                   	int3
  b08ee6:	cc                   	int3
  b08ee7:	cc                   	int3
  b08ee8:	cc                   	int3
  b08ee9:	cc                   	int3
  b08eea:	cc                   	int3
  b08eeb:	cc                   	int3
  b08eec:	cc                   	int3
  b08eed:	cc                   	int3
  b08eee:	cc                   	int3
  b08eef:	cc                   	int3
  b08ef0:	cc                   	int3
  b08ef1:	cc                   	int3
  b08ef2:	cc                   	int3
  b08ef3:	cc                   	int3
  b08ef4:	cc                   	int3
  b08ef5:	cc                   	int3
  b08ef6:	cc                   	int3
  b08ef7:	cc                   	int3
  b08ef8:	cc                   	int3
  b08ef9:	cc                   	int3
  b08efa:	cc                   	int3
  b08efb:	cc                   	int3
  b08efc:	cc                   	int3
  b08efd:	cc                   	int3
  b08efe:	cc                   	int3
  b08eff:	cc                   	int3
