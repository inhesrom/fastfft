
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a443c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a443c0:	55                   	push   rbp
  a443c1:	48 89 e5             	mov    rbp,rsp
  a443c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a443c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a443cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a443d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a443d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a443de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a443e3:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a443e8:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a443ef:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a443f5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a443fb:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a44402:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a44406:	62 f3 75 48 18 e0 02 	vinsertf32x4 zmm4,zmm1,xmm0,0x2
  a4440d:	62 f1 7c 48 28 1d a9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff64dba9]        # 91fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f470>
  a44414:	db 64 ff 
  a44417:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a4441b:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a44421:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a44427:	62 e1 7c 48 28 1d cf 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff64dbcf]        # 92000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f4b0>
  a4442e:	db 64 ff 
  a44431:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a44436:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a4443d:	c4 e2 79 18 77 58    	vbroadcastss xmm6,DWORD PTR [rdi+0x58]
  a44443:	62 f2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm0
  a44449:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a4444f:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a44456:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a4445b:	62 f3 4d 48 18 f5 02 	vinsertf32x4 zmm6,zmm6,xmm5,0x2
  a44462:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a44468:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a4446e:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a44474:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  a4447b:	00 
  a4447c:	c4 e3 41 21 bf 84 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x84],0x10
  a44483:	00 00 10 
  a44486:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a4448b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a44492:	00 00 
  a44494:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a4449a:	c4 e3 41 21 bf 8c 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x8c],0x30
  a444a1:	00 00 30 
  a444a4:	62 f3 3d 48 18 ff 02 	vinsertf32x4 zmm7,zmm8,xmm7,0x2
  a444ab:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a444b1:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a444b7:	62 f2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm0
  a444bd:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  a444c4:	00 
  a444c5:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  a444cc:	00 
  a444cd:	c4 63 31 21 8f b4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xb4],0x10
  a444d4:	00 00 10 
  a444d7:	c4 62 79 18 9f b8 00 	vbroadcastss xmm11,DWORD PTR [rdi+0xb8]
  a444de:	00 00 
  a444e0:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a444e6:	c4 63 31 21 8f bc 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xbc],0x30
  a444ed:	00 00 30 
  a444f0:	62 53 2d 48 18 d1 02 	vinsertf32x4 zmm10,zmm10,xmm9,0x2
  a444f7:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a444fd:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a44503:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a44509:	c5 78 10 8f e0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xe0]
  a44510:	00 
  a44511:	c4 63 31 21 8f e4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xe4],0x10
  a44518:	00 00 10 
  a4451b:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a44522:	00 00 
  a44524:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a4452b:	00 
  a4452c:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a44532:	c4 63 31 21 8f ec 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xec],0x30
  a44539:	00 00 30 
  a4453c:	62 53 15 48 18 e9 02 	vinsertf32x4 zmm13,zmm13,xmm9,0x2
  a44543:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a44549:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  a4454f:	c5 78 10 8f 10 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x110]
  a44556:	00 
  a44557:	c4 63 31 21 8f 14 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x114],0x10
  a4455e:	00 00 10 
  a44561:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a44568:	00 00 
  a4456a:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a44570:	c4 43 09 0c c9 03    	vblendps xmm9,xmm14,xmm9,0x3
  a44576:	c4 63 31 21 8f 1c 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x11c],0x30
  a4457d:	00 00 30 
  a44580:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a44587:	00 
  a44588:	62 53 0d 48 18 f1 02 	vinsertf32x4 zmm14,zmm14,xmm9,0x2
  a4458f:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a44595:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a4459b:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a445a1:	c5 78 10 8f 40 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x140]
  a445a8:	00 
  a445a9:	c4 63 31 21 8f 44 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x144],0x10
  a445b0:	00 00 10 
  a445b3:	62 e1 7c 28 10 47 09 	vmovups ymm16,YMMWORD PTR [rdi+0x120]
  a445ba:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a445c1:	00 00 
  a445c3:	c4 c3 71 0c c9 03    	vblendps xmm1,xmm1,xmm9,0x3
  a445c9:	c4 e3 71 21 8f 4c 01 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x14c],0x30
  a445d0:	00 00 30 
  a445d3:	62 f3 7d 40 18 c9 02 	vinsertf32x4 zmm1,zmm16,xmm1,0x2
  a445da:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a445e0:	62 e2 65 48 7f c0    	vpermt2ps zmm16,zmm3,zmm0
  a445e6:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a445ec:	c5 78 10 8f 70 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x170]
  a445f3:	00 
  a445f4:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  a445fb:	01 00 00 
  a445fe:	c4 63 31 21 8f 74 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x174],0x10
  a44605:	00 00 10 
  a44608:	c4 e2 79 18 97 78 01 	vbroadcastss xmm2,DWORD PTR [rdi+0x178]
  a4460f:	00 00 
  a44611:	c4 c3 69 0c d1 03    	vblendps xmm2,xmm2,xmm9,0x3
  a44617:	c4 e3 69 21 97 7c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x17c],0x30
  a4461e:	00 00 30 
  a44621:	62 e3 6d 40 18 d2 02 	vinsertf32x4 zmm18,zmm18,xmm2,0x2
  a44628:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a4462e:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a44634:	62 c1 5c 48 58 dd    	vaddps zmm19,zmm4,zmm13
  a4463a:	62 e1 44 48 58 e1    	vaddps zmm20,zmm7,zmm1
  a44640:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a44646:	62 c1 4c 48 58 f6    	vaddps zmm22,zmm6,zmm14
  a4464c:	62 a1 2c 48 58 fa    	vaddps zmm23,zmm10,zmm18
  a44652:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a44658:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a4465e:	62 41 74 40 58 cc    	vaddps zmm25,zmm17,zmm12
  a44664:	62 21 3c 48 58 d0    	vaddps zmm26,zmm8,zmm16
  a4466a:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a44670:	62 41 54 48 58 e7    	vaddps zmm28,zmm5,zmm15
  a44676:	62 61 24 48 58 eb    	vaddps zmm29,zmm11,zmm3
  a4467c:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a44682:	62 91 24 40 58 d6    	vaddps zmm2,zmm27,zmm30
  a44688:	62 51 5c 48 5c ed    	vsubps zmm13,zmm4,zmm13
  a4468e:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a44694:	62 c1 14 48 58 c0    	vaddps zmm16,zmm13,zmm8
  a4469a:	62 d1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm14
  a446a0:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a446a6:	62 f1 4c 48 58 e5    	vaddps zmm4,zmm6,zmm5
  a446ac:	62 72 7d 48 18 35 e6 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff630ce6]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a446b3:	0c 63 ff 
  a446b6:	62 51 5c 48 59 fe    	vmulps zmm15,zmm4,zmm14
  a446bc:	62 f1 24 48 5c db    	vsubps zmm3,zmm11,zmm3
  a446c2:	62 31 2c 48 5c d2    	vsubps zmm10,zmm10,zmm18
  a446c8:	62 d1 64 48 5c e2    	vsubps zmm4,zmm3,zmm10
  a446ce:	62 51 5c 48 59 de    	vmulps zmm11,zmm4,zmm14
  a446d4:	62 c1 04 48 58 d3    	vaddps zmm18,zmm15,zmm11
  a446da:	62 b1 7c 40 58 e2    	vaddps zmm4,zmm16,zmm18
  a446e0:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a446e6:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a446ec:	62 c1 74 48 58 cc    	vaddps zmm17,zmm1,zmm12
  a446f2:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a446f8:	62 d1 54 48 59 f6    	vmulps zmm6,zmm5,zmm14
  a446fe:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a44704:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a4470a:	62 71 4c 48 5c d3    	vsubps zmm10,zmm6,zmm3
  a44710:	62 d1 74 40 58 ea    	vaddps zmm5,zmm17,zmm10
  a44716:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a4471c:	62 81 1c 40 5c e5    	vsubps zmm20,zmm28,zmm29
  a44722:	62 21 64 40 58 e4    	vaddps zmm28,zmm19,zmm20
  a44728:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a4472e:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a44734:	62 91 4c 40 58 f9    	vaddps zmm7,zmm22,zmm25
  a4473a:	62 c1 14 48 5c f8    	vsubps zmm23,zmm13,zmm8
  a44740:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a44746:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a4474c:	62 f1 1c 48 5c c9    	vsubps zmm1,zmm12,zmm1
  a44752:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a44758:	62 51 74 48 58 c3    	vaddps zmm8,zmm1,zmm11
  a4475e:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a44764:	62 11 24 40 5c fe    	vsubps zmm15,zmm27,zmm30
  a4476a:	62 21 7c 40 5c c2    	vsubps zmm24,zmm16,zmm18
  a44770:	62 51 74 40 5c f2    	vsubps zmm14,zmm17,zmm10
  a44776:	62 31 64 40 5c d4    	vsubps zmm10,zmm19,zmm20
  a4477c:	62 31 34 40 5c ee    	vsubps zmm13,zmm25,zmm22
  a44782:	62 e1 44 40 5c db    	vsubps zmm19,zmm23,zmm3
  a44788:	62 51 74 48 5c e3    	vsubps zmm12,zmm1,zmm11
  a4478e:	62 e1 7c 48 28 0d e8 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6827e8]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a44795:	27 68 ff 
  a44798:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a4479e:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a447a4:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a447aa:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a447b0:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a447b6:	62 62 75 40 7f c0    	vpermt2ps zmm24,zmm17,zmm0
  a447bc:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a447c2:	62 e2 75 40 7f d8    	vpermt2ps zmm19,zmm17,zmm0
  a447c8:	62 e1 7c 48 28 05 2e 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68272e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a447cf:	27 68 ff 
  a447d2:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a447d8:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a447de:	62 e1 7c 48 28 15 58 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff682758]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a447e5:	27 68 ff 
  a447e8:	62 32 6d 40 7f cd    	vpermt2ps zmm9,zmm18,zmm21
  a447ee:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a447f4:	62 12 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm24
  a447fa:	62 92 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm24
  a44800:	62 81 7c 48 28 e4    	vmovaps zmm20,zmm28
  a44806:	62 c2 7d 40 7f e2    	vpermt2ps zmm20,zmm16,zmm10
  a4480c:	62 42 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm10
  a44812:	62 91 b5 48 14 dc    	vunpcklpd zmm3,zmm9,zmm28
  a44818:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a4481e:	62 32 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm19
  a44824:	62 b2 6d 40 7f f3    	vpermt2ps zmm6,zmm18,zmm19
  a4482a:	62 e1 dd 48 14 de    	vunpcklpd zmm19,zmm4,zmm6
  a44830:	62 b1 f5 48 14 e4    	vunpcklpd zmm4,zmm1,zmm20
  a44836:	62 b1 f5 48 15 f4    	vunpckhpd zmm6,zmm1,zmm20
  a4483c:	62 51 a5 48 14 d1    	vunpcklpd zmm10,zmm11,zmm9
  a44842:	62 51 a5 48 15 d9    	vunpckhpd zmm11,zmm11,zmm9
  a44848:	62 71 7c 48 28 0d ae 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6825ae]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4484f:	25 68 ff 
  a44852:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a44858:	62 d2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm10
  a4485e:	62 e1 7c 48 28 25 d8 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6825d8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a44865:	25 68 ff 
  a44868:	62 d2 5d 40 7f e2    	vpermt2ps zmm4,zmm20,zmm10
  a4486e:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a44874:	62 52 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm11
  a4487a:	62 d2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm11
  a44880:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a44886:	62 32 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm19
  a4488c:	62 b2 5d 40 7f db    	vpermt2ps zmm3,zmm20,zmm19
  a44892:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a44898:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a4489e:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a448a4:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a448aa:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a448b0:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a448b6:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a448bc:	62 72 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm0
  a448c2:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a448c8:	62 d2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm15
  a448ce:	62 d2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm15
  a448d4:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a448da:	62 52 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm14
  a448e0:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a448e6:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a448ec:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a448f2:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a448f8:	62 f1 ed 48 14 ff    	vunpcklpd zmm7,zmm2,zmm7
  a448fe:	62 c2 3d 48 77 c4    	vpermi2ps zmm16,zmm8,zmm12
  a44904:	62 52 6d 40 7f c4    	vpermt2ps zmm8,zmm18,zmm12
  a4490a:	62 d1 d5 48 14 d0    	vunpcklpd zmm2,zmm5,zmm8
  a44910:	62 d1 fd 48 14 ee    	vunpcklpd zmm5,zmm0,zmm14
  a44916:	62 51 fd 48 15 c6    	vunpckhpd zmm8,zmm0,zmm14
  a4491c:	62 31 85 48 14 e0    	vunpcklpd zmm12,zmm15,zmm16
  a44922:	62 31 85 48 15 e8    	vunpckhpd zmm13,zmm15,zmm16
  a44928:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a4492e:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a44934:	62 d2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm12
  a4493a:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a44940:	62 52 35 48 7f e5    	vpermt2ps zmm12,zmm9,zmm13
  a44946:	62 52 5d 40 7f c5    	vpermt2ps zmm8,zmm20,zmm13
  a4494c:	62 72 45 48 77 ca    	vpermi2ps zmm9,zmm7,zmm2
  a44952:	62 f2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm2
  a44958:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a4495f:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a44966:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a4496d:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a44974:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a4497b:	62 e1 7c 48 10 52 07 	vmovups zmm18,ZMMWORD PTR [rdx+0x1c0]
  a44982:	62 e1 7c 48 10 5a 08 	vmovups zmm19,ZMMWORD PTR [rdx+0x200]
  a44989:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a44990:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a44997:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a4499e:	62 c1 2c 48 59 ff    	vmulps zmm23,zmm10,zmm15
  a449a4:	62 a2 1d 48 bc f8    	vfnmadd231ps zmm23,zmm12,zmm16
  a449aa:	62 21 24 48 59 c3    	vmulps zmm24,zmm11,zmm19
  a449b0:	62 22 35 48 bc c4    	vfnmadd231ps zmm24,zmm9,zmm20
  a449b6:	62 01 44 40 58 c8    	vaddps zmm25,zmm23,zmm24
  a449bc:	62 91 74 48 58 d1    	vaddps zmm2,zmm1,zmm25
  a449c2:	62 21 4c 48 59 d1    	vmulps zmm26,zmm6,zmm17
  a449c8:	62 22 3d 48 bc d2    	vfnmadd231ps zmm26,zmm8,zmm18
  a449ce:	62 21 64 48 59 dd    	vmulps zmm27,zmm3,zmm21
  a449d4:	62 22 45 48 bc de    	vfnmadd231ps zmm27,zmm7,zmm22
  a449da:	62 41 5c 48 59 e5    	vmulps zmm28,zmm4,zmm13
  a449e0:	62 42 55 48 bc e6    	vfnmadd231ps zmm28,zmm5,zmm14
  a449e6:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a449ec:	62 01 2c 40 58 f5    	vaddps zmm30,zmm26,zmm29
  a449f2:	62 51 1c 48 59 e7    	vmulps zmm12,zmm12,zmm15
  a449f8:	62 52 7d 40 b8 e2    	vfmadd231ps zmm12,zmm16,zmm10
  a449fe:	62 31 34 48 59 cb    	vmulps zmm9,zmm9,zmm19
  a44a04:	62 52 5d 40 b8 cb    	vfmadd231ps zmm9,zmm20,zmm11
  a44a0a:	62 51 1c 48 58 d1    	vaddps zmm10,zmm12,zmm9
  a44a10:	62 71 2c 48 58 d8    	vaddps zmm11,zmm10,zmm0
  a44a16:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a44a1c:	62 72 6d 40 b8 c6    	vfmadd231ps zmm8,zmm18,zmm6
  a44a22:	62 b1 44 48 59 f5    	vmulps zmm6,zmm7,zmm21
  a44a28:	62 f2 4d 40 b8 f3    	vfmadd231ps zmm6,zmm22,zmm3
  a44a2e:	62 d1 54 48 59 dd    	vmulps zmm3,zmm5,zmm13
  a44a34:	62 f2 0d 48 b8 dc    	vfmadd231ps zmm3,zmm14,zmm4
  a44a3a:	62 f1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm3
  a44a40:	62 f2 7d 48 18 2d 16 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff630a16]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a44a47:	0a 63 ff 
  a44a4a:	62 f1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm4
  a44a50:	62 92 55 48 bc c9    	vfnmadd231ps zmm1,zmm5,zmm25
  a44a56:	62 72 7d 48 18 2d 74 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff630874]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a44a5d:	08 63 ff 
  a44a60:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a44a66:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a44a6c:	62 51 74 48 58 e1    	vaddps zmm12,zmm1,zmm9
  a44a72:	62 02 55 48 bc d5    	vfnmadd231ps zmm26,zmm5,zmm29
  a44a78:	62 f1 4c 48 5c db    	vsubps zmm3,zmm6,zmm3
  a44a7e:	62 d1 64 48 59 dd    	vmulps zmm3,zmm3,zmm13
  a44a84:	62 f1 2c 40 58 f3    	vaddps zmm6,zmm26,zmm3
  a44a8a:	62 71 1c 48 5c f6    	vsubps zmm14,zmm12,zmm6
  a44a90:	62 d2 55 48 bc c2    	vfnmadd231ps zmm0,zmm5,zmm10
  a44a96:	62 11 44 40 5c d0    	vsubps zmm10,zmm23,zmm24
  a44a9c:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a44aa2:	62 51 7c 48 5c fa    	vsubps zmm15,zmm0,zmm10
  a44aa8:	62 72 5d 48 bc c5    	vfnmadd231ps zmm8,zmm4,zmm5
  a44aae:	62 91 24 40 5c e4    	vsubps zmm4,zmm27,zmm28
  a44ab4:	62 d1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm13
  a44aba:	62 f1 3c 48 5c ec    	vsubps zmm5,zmm8,zmm4
  a44ac0:	62 71 04 48 5c ed    	vsubps zmm13,zmm15,zmm5
  a44ac6:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a44acc:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a44ad2:	62 71 74 48 58 cb    	vaddps zmm9,zmm1,zmm3
  a44ad8:	62 f1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm0
  a44ade:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a44ae4:	62 71 7c 48 58 c4    	vaddps zmm8,zmm0,zmm4
  a44aea:	62 11 6c 48 5c d6    	vsubps zmm10,zmm2,zmm30
  a44af0:	62 e1 24 48 5c c7    	vsubps zmm16,zmm11,zmm7
  a44af6:	62 f1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm6
  a44afc:	62 f1 04 48 58 ed    	vaddps zmm5,zmm15,zmm5
  a44b02:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a44b08:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a44b0e:	62 f1 24 48 58 df    	vaddps zmm3,zmm11,zmm7
  a44b14:	62 91 6c 48 58 d6    	vaddps zmm2,zmm2,zmm30
  a44b1a:	62 f1 7c 48 28 25 1c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64d51c]        # 92040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f4f0>
  a44b21:	d5 64 ff 
  a44b24:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a44b2a:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a44b30:	62 52 5d 48 7f ee    	vpermt2ps zmm13,zmm4,zmm14
  a44b36:	62 71 7c 48 11 6e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm13
  a44b3d:	62 52 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm9
  a44b43:	62 71 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm8
  a44b4a:	62 c2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm10
  a44b50:	62 e1 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm16
  a44b57:	62 f2 5d 48 7f ee    	vpermt2ps zmm5,zmm4,zmm6
  a44b5d:	62 f1 7c 48 11 6e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm5
  a44b64:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a44b6a:	62 f1 7c 48 11 46 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm0
  a44b71:	48 89 ec             	mov    rsp,rbp
  a44b74:	5d                   	pop    rbp
  a44b75:	c5 f8 77             	vzeroupper
  a44b78:	c3                   	ret
