
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3a280 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3a280:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  a3a287:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a3a28d:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a3a292:	62 e1 7c 48 28 15 e4 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6573e4]        # 91680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eb30>
  a3a299:	73 65 ff 
  a3a29c:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a3a2a2:	62 f2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm0
  a3a2a8:	62 f1 7c 48 28 15 0e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65740e]        # 916c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eb70>
  a3a2af:	74 65 ff 
  a3a2b2:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a3a2b8:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a3a2bf:	00 00 00 
  a3a2c2:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a3a2c9:	00 
  a3a2ca:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a3a2d0:	62 72 6d 40 7f c8    	vpermt2ps zmm9,zmm18,zmm0
  a3a2d6:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a3a2dc:	62 f1 7c 48 10 7f 03 	vmovups zmm7,ZMMWORD PTR [rdi+0xc0]
  a3a2e3:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a3a2ea:	00 
  a3a2eb:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a3a2f1:	62 72 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm0
  a3a2f7:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a3a2fd:	62 71 7c 48 10 af 20 	vmovups zmm13,ZMMWORD PTR [rdi+0x120]
  a3a304:	01 00 00 
  a3a307:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a3a30e:	00 
  a3a30f:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a3a315:	62 72 6d 40 7f c0    	vpermt2ps zmm8,zmm18,zmm0
  a3a31b:	62 72 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm0
  a3a321:	62 e1 7c 48 10 67 06 	vmovups zmm20,ZMMWORD PTR [rdi+0x180]
  a3a328:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a3a32f:	00 
  a3a330:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a3a336:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a3a33c:	62 e2 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm1
  a3a342:	62 e1 7c 48 10 b7 e0 	vmovups zmm22,ZMMWORD PTR [rdi+0x1e0]
  a3a349:	01 00 00 
  a3a34c:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a3a353:	00 
  a3a354:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a3a35a:	62 f2 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm3
  a3a360:	62 e2 6d 48 7f f3    	vpermt2ps zmm22,zmm2,zmm3
  a3a366:	62 61 7c 48 10 47 09 	vmovups zmm24,ZMMWORD PTR [rdi+0x240]
  a3a36d:	c5 fc 10 9f 80 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x280]
  a3a374:	00 
  a3a375:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a3a37b:	62 e2 6d 40 7f eb    	vpermt2ps zmm21,zmm18,zmm3
  a3a381:	62 62 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm3
  a3a387:	62 61 7c 48 10 8f a0 	vmovups zmm25,ZMMWORD PTR [rdi+0x2a0]
  a3a38e:	02 00 00 
  a3a391:	c5 fc 10 9f e0 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x2e0]
  a3a398:	00 
  a3a399:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a3a39f:	62 62 6d 40 7f d3    	vpermt2ps zmm26,zmm18,zmm3
  a3a3a5:	62 62 6d 48 7f cb    	vpermt2ps zmm25,zmm2,zmm3
  a3a3ab:	62 61 7c 48 10 5f 0c 	vmovups zmm27,ZMMWORD PTR [rdi+0x300]
  a3a3b2:	c5 fc 10 9f 40 03 00 	vmovups ymm3,YMMWORD PTR [rdi+0x340]
  a3a3b9:	00 
  a3a3ba:	62 e2 25 40 77 d3    	vpermi2ps zmm18,zmm27,zmm3
  a3a3c0:	62 62 6d 48 7f db    	vpermt2ps zmm27,zmm2,zmm3
  a3a3c6:	62 a1 3c 48 58 dd    	vaddps zmm19,zmm8,zmm21
  a3a3cc:	62 31 5c 48 58 fb    	vaddps zmm15,zmm4,zmm19
  a3a3d2:	62 01 7c 48 58 e2    	vaddps zmm28,zmm0,zmm26
  a3a3d8:	62 91 34 48 58 d4    	vaddps zmm2,zmm9,zmm28
  a3a3de:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a3a3e5:	fe 
  a3a3e6:	62 21 74 48 58 ea    	vaddps zmm29,zmm1,zmm18
  a3a3ec:	62 11 2c 48 58 dd    	vaddps zmm11,zmm10,zmm29
  a3a3f2:	62 51 6c 48 58 e3    	vaddps zmm12,zmm2,zmm11
  a3a3f8:	62 d1 04 48 58 d4    	vaddps zmm2,zmm15,zmm12
  a3a3fe:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a3a405:	03 
  a3a406:	62 81 14 48 58 f8    	vaddps zmm23,zmm13,zmm24
  a3a40c:	62 a1 54 48 58 c7    	vaddps zmm16,zmm5,zmm23
  a3a412:	62 01 5c 40 58 f1    	vaddps zmm30,zmm20,zmm25
  a3a418:	62 81 4c 48 58 ce    	vaddps zmm17,zmm6,zmm30
  a3a41e:	62 72 7d 48 18 35 38 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff63b038]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3a425:	b0 63 ff 
  a3a428:	62 01 4c 40 58 fb    	vaddps zmm31,zmm22,zmm27
  a3a42e:	62 b2 0d 48 bc e3    	vfnmadd231ps zmm4,zmm14,zmm19
  a3a434:	62 81 44 48 58 df    	vaddps zmm19,zmm7,zmm31
  a3a43a:	62 01 14 48 5c c0    	vsubps zmm24,zmm13,zmm24
  a3a440:	62 31 74 40 58 eb    	vaddps zmm13,zmm17,zmm19
  a3a446:	62 12 0d 48 bc cc    	vfnmadd231ps zmm9,zmm14,zmm28
  a3a44c:	62 d1 7c 40 58 d5    	vaddps zmm2,zmm16,zmm13
  a3a452:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a3a459:	62 01 5c 40 5c c9    	vsubps zmm25,zmm20,zmm25
  a3a45f:	62 f2 7d 48 18 15 6b 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff63ae6b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3a466:	ae 63 ff 
  a3a469:	62 61 3c 40 59 c2    	vmulps zmm24,zmm24,zmm2
  a3a46f:	62 92 0d 48 bc f6    	vfnmadd231ps zmm6,zmm14,zmm30
  a3a475:	62 81 5c 48 58 e0    	vaddps zmm20,zmm4,zmm24
  a3a47b:	62 61 34 40 59 ca    	vmulps zmm25,zmm25,zmm2
  a3a481:	62 91 7c 48 5c c2    	vsubps zmm0,zmm0,zmm26
  a3a487:	62 01 34 48 58 d1    	vaddps zmm26,zmm9,zmm25
  a3a48d:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a3a493:	62 12 0d 48 bc d5    	vfnmadd231ps zmm10,zmm14,zmm29
  a3a499:	62 91 4c 48 5c c4    	vsubps zmm0,zmm6,zmm28
  a3a49f:	62 01 4c 40 5c db    	vsubps zmm27,zmm22,zmm27
  a3a4a5:	62 62 7d 48 18 2d b9 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff63b1b9]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a3a4ac:	b1 63 ff 
  a3a4af:	62 92 0d 48 bc ff    	vfnmadd231ps zmm7,zmm14,zmm31
  a3a4b5:	62 81 7c 48 59 f5    	vmulps zmm22,zmm0,zmm29
  a3a4bb:	62 b1 74 48 5c ca    	vsubps zmm1,zmm1,zmm18
  a3a4c1:	62 e2 7d 48 18 15 0d 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff63b00d]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a3a4c8:	b0 63 ff 
  a3a4cb:	62 a2 2d 40 b8 f2    	vfmadd231ps zmm22,zmm26,zmm18
  a3a4d1:	62 61 24 40 59 da    	vmulps zmm27,zmm27,zmm2
  a3a4d7:	62 a1 7c 48 59 d2    	vmulps zmm18,zmm0,zmm18
  a3a4dd:	62 91 2c 48 58 c3    	vaddps zmm0,zmm10,zmm27
  a3a4e3:	62 f1 74 48 59 ca    	vmulps zmm1,zmm1,zmm2
  a3a4e9:	62 82 2d 40 bc d5    	vfnmadd231ps zmm18,zmm26,zmm29
  a3a4ef:	62 61 44 48 5c d1    	vsubps zmm26,zmm7,zmm1
  a3a4f5:	62 62 7d 48 18 2d 19 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff63ae19]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a3a4fc:	ae 63 ff 
  a3a4ff:	62 b2 0d 48 bc ef    	vfnmadd231ps zmm5,zmm14,zmm23
  a3a505:	62 e2 7d 48 18 3d cd 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63afcd]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a3a50c:	af 63 ff 
  a3a50f:	62 a1 3c 48 5c ed    	vsubps zmm21,zmm8,zmm21
  a3a515:	62 01 2c 40 59 f5    	vmulps zmm30,zmm26,zmm29
  a3a51b:	62 22 7d 48 b8 f7    	vfmadd231ps zmm30,zmm0,zmm23
  a3a521:	62 21 2c 40 59 d7    	vmulps zmm26,zmm26,zmm23
  a3a527:	62 62 15 40 bc d0    	vfnmadd231ps zmm26,zmm29,zmm0
  a3a52d:	62 91 4c 40 58 c6    	vaddps zmm0,zmm22,zmm30
  a3a533:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a3a539:	62 f1 5c 40 58 d8    	vaddps zmm3,zmm20,zmm0
  a3a53f:	62 e1 54 40 59 ea    	vmulps zmm21,zmm21,zmm2
  a3a545:	62 11 34 48 5c c9    	vsubps zmm9,zmm9,zmm25
  a3a54b:	62 21 54 48 5c cd    	vsubps zmm25,zmm5,zmm21
  a3a551:	62 61 1c 40 58 e6    	vaddps zmm28,zmm28,zmm6
  a3a557:	62 91 6c 40 58 f2    	vaddps zmm6,zmm18,zmm26
  a3a55d:	62 11 2c 48 5c d3    	vsubps zmm10,zmm10,zmm27
  a3a563:	62 f1 34 40 58 e6    	vaddps zmm4,zmm25,zmm6
  a3a569:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a3a570:	ff 
  a3a571:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a3a577:	62 01 1c 40 59 dd    	vmulps zmm27,zmm28,zmm29
  a3a57d:	62 22 35 48 b8 df    	vfmadd231ps zmm27,zmm9,zmm23
  a3a583:	62 a1 1c 40 59 ff    	vmulps zmm23,zmm28,zmm23
  a3a589:	62 f2 7d 48 18 3d 5d 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff63af5d]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a3a590:	af 63 ff 
  a3a593:	62 82 35 48 bc fd    	vfnmadd231ps zmm23,zmm9,zmm29
  a3a599:	62 61 74 48 59 e7    	vmulps zmm28,zmm1,zmm7
  a3a59f:	62 72 7d 48 18 0d 4f 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63b04f]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a3a5a6:	b0 63 ff 
  a3a5a9:	62 42 2d 48 bc e1    	vfnmadd231ps zmm28,zmm10,zmm9
  a3a5af:	62 e1 54 40 58 ed    	vaddps zmm21,zmm21,zmm5
  a3a5b5:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a3a5bb:	62 41 74 48 59 f9    	vmulps zmm31,zmm1,zmm9
  a3a5c1:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a3a5c7:	62 62 2d 48 b8 ff    	vfmadd231ps zmm31,zmm10,zmm7
  a3a5cd:	62 11 44 40 5c d7    	vsubps zmm10,zmm23,zmm31
  a3a5d3:	62 d1 54 40 58 ca    	vaddps zmm1,zmm21,zmm10
  a3a5d9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a3a5e0:	05 
  a3a5e1:	62 52 0d 48 ac e7    	vfnmadd213ps zmm12,zmm14,zmm15
  a3a5e7:	62 b1 74 40 5c cb    	vsubps zmm1,zmm17,zmm19
  a3a5ed:	62 71 74 48 59 fa    	vmulps zmm15,zmm1,zmm2
  a3a5f3:	62 d1 1c 48 58 ef    	vaddps zmm5,zmm12,zmm15
  a3a5f9:	62 32 0d 48 ac e8    	vfnmadd213ps zmm13,zmm14,zmm16
  a3a5ff:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a3a606:	fe 
  a3a607:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a3a60d:	62 71 74 48 59 da    	vmulps zmm11,zmm1,zmm2
  a3a613:	62 d1 14 48 5c cb    	vsubps zmm1,zmm13,zmm11
  a3a619:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a3a620:	04 
  a3a621:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a3a627:	62 b2 0d 48 ac c4    	vfnmadd213ps zmm0,zmm14,zmm20
  a3a62d:	62 91 6c 40 5c fa    	vsubps zmm7,zmm18,zmm26
  a3a633:	62 e1 44 48 59 d2    	vmulps zmm18,zmm7,zmm2
  a3a639:	62 a1 7c 48 58 ca    	vaddps zmm17,zmm0,zmm18
  a3a63f:	62 92 0d 48 ac f1    	vfnmadd213ps zmm6,zmm14,zmm25
  a3a645:	62 11 4c 40 5c f6    	vsubps zmm14,zmm22,zmm30
  a3a64b:	62 e1 0c 48 59 e2    	vmulps zmm20,zmm14,zmm2
  a3a651:	62 b1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm20
  a3a657:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a3a65e:	fe 
  a3a65f:	62 02 75 48 ac e8    	vfnmadd213ps zmm29,zmm1,zmm24
  a3a665:	62 11 44 40 58 f7    	vaddps zmm14,zmm23,zmm31
  a3a66b:	62 e1 0c 48 59 f2    	vmulps zmm22,zmm14,zmm2
  a3a671:	62 31 14 40 58 f6    	vaddps zmm14,zmm29,zmm22
  a3a677:	62 32 75 48 ac d5    	vfnmadd213ps zmm10,zmm1,zmm21
  a3a67d:	62 81 24 40 5c c4    	vsubps zmm16,zmm27,zmm28
  a3a683:	62 e1 7c 40 59 ea    	vmulps zmm21,zmm16,zmm2
  a3a689:	62 b1 2c 48 5c cd    	vsubps zmm1,zmm10,zmm21
  a3a68f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a3a696:	01 
  a3a697:	62 c1 1c 48 5c c7    	vsubps zmm16,zmm12,zmm15
  a3a69d:	62 51 24 48 58 e5    	vaddps zmm12,zmm11,zmm13
  a3a6a3:	62 a1 7c 48 5c da    	vsubps zmm19,zmm0,zmm18
  a3a6a9:	62 b1 4c 48 58 c4    	vaddps zmm0,zmm6,zmm20
  a3a6af:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a3a6b6:	02 
  a3a6b7:	62 b1 14 40 5c c6    	vsubps zmm0,zmm29,zmm22
  a3a6bd:	62 21 2c 48 58 f5    	vaddps zmm30,zmm10,zmm21
  a3a6c3:	62 71 7c 48 28 3d b3 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff68c8b3]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3a6ca:	c8 68 ff 
  a3a6cd:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0xc0]
  a3a6d4:	03 
  a3a6d5:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a3a6db:	62 e2 05 48 7f d0    	vpermt2ps zmm18,zmm15,zmm0
  a3a6e1:	62 e1 7c 48 28 3d d5 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff68c8d5]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3a6e8:	c8 68 ff 
  a3a6eb:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a3a6f1:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a3a6f7:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a3a6fd:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a3a703:	62 82 05 48 7f e0    	vpermt2ps zmm20,zmm15,zmm24
  a3a709:	62 92 45 40 7f f8    	vpermt2ps zmm7,zmm23,zmm24
  a3a70f:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a3a715:	62 82 05 48 7f e8    	vpermt2ps zmm21,zmm15,zmm24
  a3a71b:	62 12 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm24
  a3a721:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a3a727:	62 82 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm24
  a3a72d:	62 92 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm24
  a3a733:	62 21 7c 48 28 c9    	vmovaps zmm25,zmm17
  a3a739:	62 02 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm24
  a3a73f:	62 82 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm24
  a3a745:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a3a74b:	62 02 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm24
  a3a751:	62 12 45 40 7f f0    	vpermt2ps zmm14,zmm23,zmm24
  a3a757:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a3a75d:	62 02 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm24
  a3a763:	62 82 45 40 7f c0    	vpermt2ps zmm16,zmm23,zmm24
  a3a769:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a3a76f:	62 02 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm24
  a3a775:	62 82 45 40 7f d8    	vpermt2ps zmm19,zmm23,zmm24
  a3a77b:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a3a782:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a3a788:	62 02 05 48 7f ee    	vpermt2ps zmm29,zmm15,zmm30
  a3a78e:	62 12 45 40 7f c6    	vpermt2ps zmm8,zmm23,zmm30
  a3a794:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a3a79b:	ff 
  a3a79c:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a3a7a2:	62 02 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm24
  a3a7a8:	62 92 45 40 7f e0    	vpermt2ps zmm4,zmm23,zmm24
  a3a7ae:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a3a7b5:	05 
  a3a7b6:	62 61 7c 48 28 fb    	vmovaps zmm31,zmm3
  a3a7bc:	62 02 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm24
  a3a7c2:	62 92 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm24
  a3a7c8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a3a7cf:	04 
  a3a7d0:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a3a7d6:	62 92 05 48 7f f0    	vpermt2ps zmm6,zmm15,zmm24
  a3a7dc:	62 92 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm24
  a3a7e2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a3a7e9:	fe 
  a3a7ea:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a3a7f0:	62 12 05 48 7f d0    	vpermt2ps zmm10,zmm15,zmm24
  a3a7f6:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3a7fc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3a803:	fe 
  a3a804:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a3a80b:	01 
  a3a80c:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a3a812:	62 12 05 48 7f d8    	vpermt2ps zmm11,zmm15,zmm24
  a3a818:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3a81e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a3a825:	01 
  a3a826:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a3a82c:	62 12 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm24
  a3a832:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3a838:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a3a83f:	03 
  a3a840:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a3a847:	02 
  a3a848:	62 12 7d 48 77 f8    	vpermi2ps zmm15,zmm0,zmm24
  a3a84e:	62 92 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm24
  a3a854:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a3a85b:	02 
  a3a85c:	62 f1 7c 48 28 05 9a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68c69a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3a863:	c6 68 ff 
  a3a866:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a3a86c:	62 82 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm25
  a3a872:	62 f1 7c 48 28 0d c4 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68c6c4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3a879:	c6 68 ff 
  a3a87c:	62 82 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm25
  a3a882:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a3a888:	62 02 7d 48 7f c2    	vpermt2ps zmm24,zmm0,zmm26
  a3a88e:	62 82 75 48 7f e2    	vpermt2ps zmm20,zmm1,zmm26
  a3a894:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a3a89a:	62 02 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm27
  a3a8a0:	62 82 75 48 7f eb    	vpermt2ps zmm21,zmm1,zmm27
  a3a8a6:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a3a8ac:	62 02 7d 48 7f d4    	vpermt2ps zmm26,zmm0,zmm28
  a3a8b2:	62 82 75 48 7f f4    	vpermt2ps zmm22,zmm1,zmm28
  a3a8b8:	62 32 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm17
  a3a8be:	62 d2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm14
  a3a8c4:	62 32 7d 48 7f c8    	vpermt2ps zmm9,zmm0,zmm16
  a3a8ca:	62 b2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm19
  a3a8d0:	62 11 c5 40 14 f1    	vunpcklpd zmm14,zmm23,zmm25
  a3a8d6:	62 81 c5 40 15 d9    	vunpckhpd zmm19,zmm23,zmm25
  a3a8dc:	62 81 bd 40 14 fa    	vunpcklpd zmm23,zmm24,zmm26
  a3a8e2:	62 01 bd 40 15 ca    	vunpckhpd zmm25,zmm24,zmm26
  a3a8e8:	62 a1 ed 40 14 cd    	vunpcklpd zmm17,zmm18,zmm21
  a3a8ee:	62 a1 ed 40 15 c5    	vunpckhpd zmm16,zmm18,zmm21
  a3a8f4:	62 21 dd 40 14 d6    	vunpcklpd zmm26,zmm20,zmm22
  a3a8fa:	62 a1 dd 40 15 f6    	vunpckhpd zmm22,zmm20,zmm22
  a3a900:	62 c1 95 48 14 e1    	vunpcklpd zmm20,zmm13,zmm9
  a3a906:	62 51 95 48 15 c9    	vunpckhpd zmm9,zmm13,zmm9
  a3a90c:	62 61 c5 48 14 dd    	vunpcklpd zmm27,zmm7,zmm5
  a3a912:	62 61 c5 48 15 e5    	vunpckhpd zmm28,zmm7,zmm5
  a3a918:	62 e1 7c 48 28 15 de 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff68c4de]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3a91f:	c4 68 ff 
  a3a922:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a3a928:	62 b2 6d 40 7f ef    	vpermt2ps zmm5,zmm18,zmm23
  a3a92e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a3a935:	ff 
  a3a936:	62 61 7c 48 28 05 00 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff68c500]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3a93d:	c5 68 ff 
  a3a940:	62 32 3d 40 7f f7    	vpermt2ps zmm14,zmm24,zmm23
  a3a946:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a3a94c:	62 92 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm25
  a3a952:	62 82 3d 40 7f d9    	vpermt2ps zmm19,zmm24,zmm25
  a3a958:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a3a95e:	62 82 6d 40 7f ea    	vpermt2ps zmm21,zmm18,zmm26
  a3a964:	62 82 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm26
  a3a96a:	62 e1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm17
  a3a971:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a3a977:	62 a2 6d 40 7f fe    	vpermt2ps zmm23,zmm18,zmm22
  a3a97d:	62 a2 3d 40 7f c6    	vpermt2ps zmm16,zmm24,zmm22
  a3a983:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a3a989:	62 82 6d 40 7f cb    	vpermt2ps zmm17,zmm18,zmm27
  a3a98f:	62 82 3d 40 7f e3    	vpermt2ps zmm20,zmm24,zmm27
  a3a995:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a3a99b:	62 82 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm28
  a3a9a1:	62 12 3d 40 7f cc    	vpermt2ps zmm9,zmm24,zmm28
  a3a9a7:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a3a9ad:	62 42 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm10
  a3a9b3:	62 42 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm10
  a3a9b9:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a3a9bf:	62 52 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm11
  a3a9c5:	62 42 75 48 7f f3    	vpermt2ps zmm30,zmm1,zmm11
  a3a9cb:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a3a9d1:	62 42 7d 48 7f d4    	vpermt2ps zmm26,zmm0,zmm12
  a3a9d7:	62 42 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm12
  a3a9dd:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  a3a9e3:	62 d2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm15
  a3a9e9:	62 52 7d 48 7f e7    	vpermt2ps zmm12,zmm0,zmm15
  a3a9ef:	62 72 7d 48 7f 44 24 	vpermt2ps zmm8,zmm0,ZMMWORD PTR [rsp-0x80]
  a3a9f6:	fe 
  a3a9f7:	62 f2 7d 48 7f 64 24 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rsp+0x40]
  a3a9fe:	01 
  a3a9ff:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0xc0]
  a3aa06:	03 
  a3aa07:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x80]
  a3aa0e:	02 
  a3aa0f:	62 11 b5 40 14 da    	vunpcklpd zmm11,zmm25,zmm26
  a3aa15:	62 01 b5 40 15 da    	vunpckhpd zmm27,zmm25,zmm26
  a3aa1b:	62 d1 ad 48 14 cc    	vunpcklpd zmm1,zmm10,zmm12
  a3aa21:	62 51 ad 48 15 ec    	vunpckhpd zmm13,zmm10,zmm12
  a3aa27:	62 11 95 40 14 d7    	vunpcklpd zmm10,zmm29,zmm31
  a3aa2d:	62 11 95 40 15 e7    	vunpckhpd zmm12,zmm29,zmm31
  a3aa33:	62 71 8d 40 14 fe    	vunpcklpd zmm15,zmm30,zmm6
  a3aa39:	62 f1 8d 40 15 f6    	vunpckhpd zmm6,zmm30,zmm6
  a3aa3f:	62 61 bd 48 14 e3    	vunpcklpd zmm28,zmm8,zmm3
  a3aa45:	62 f1 bd 48 15 eb    	vunpckhpd zmm5,zmm8,zmm3
  a3aa4b:	62 61 dd 48 14 ca    	vunpcklpd zmm25,zmm4,zmm2
  a3aa51:	62 f1 dd 48 15 da    	vunpckhpd zmm3,zmm4,zmm2
  a3aa57:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a3aa5d:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a3aa63:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3aa6a:	fe 
  a3aa6b:	62 72 3d 40 7f d9    	vpermt2ps zmm11,zmm24,zmm1
  a3aa71:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a3aa77:	62 d2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm13
  a3aa7d:	62 42 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm13
  a3aa83:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a3aa89:	62 42 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm15
  a3aa8f:	62 52 3d 40 7f d7    	vpermt2ps zmm10,zmm24,zmm15
  a3aa95:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a3aa9b:	62 f2 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm6
  a3aaa1:	62 72 3d 40 7f e6    	vpermt2ps zmm12,zmm24,zmm6
  a3aaa7:	62 11 7c 48 28 ec    	vmovaps zmm13,zmm28
  a3aaad:	62 12 6d 40 7f e9    	vpermt2ps zmm13,zmm18,zmm25
  a3aab3:	62 02 3d 40 7f e1    	vpermt2ps zmm28,zmm24,zmm25
  a3aab9:	62 e2 55 48 77 d3    	vpermi2ps zmm18,zmm5,zmm3
  a3aabf:	62 f2 3d 40 7f eb    	vpermt2ps zmm5,zmm24,zmm3
  a3aac5:	62 61 7c 48 10 52 02 	vmovups zmm26,ZMMWORD PTR [rdx+0x80]
  a3aacc:	62 61 7c 48 10 4a 03 	vmovups zmm25,ZMMWORD PTR [rdx+0xc0]
  a3aad3:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a3aada:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a3aae1:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a3aae8:	62 f1 44 40 59 f3    	vmulps zmm6,zmm23,zmm3
  a3aaee:	62 92 75 48 bc f6    	vfnmadd231ps zmm6,zmm1,zmm30
  a3aaf4:	62 61 74 48 59 c3    	vmulps zmm24,zmm1,zmm3
  a3aafa:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a3ab01:	62 22 0d 40 b8 c7    	vfmadd231ps zmm24,zmm30,zmm23
  a3ab07:	62 f1 7c 48 10 5a 07 	vmovups zmm3,ZMMWORD PTR [rdx+0x1c0]
  a3ab0e:	62 e1 64 40 59 f9    	vmulps zmm23,zmm19,zmm1
  a3ab14:	62 e2 25 40 bc fb    	vfnmadd231ps zmm23,zmm27,zmm3
  a3ab1a:	62 f1 24 40 59 c9    	vmulps zmm1,zmm27,zmm1
  a3ab20:	62 61 7c 48 10 5a 12 	vmovups zmm27,ZMMWORD PTR [rdx+0x480]
  a3ab27:	62 b2 65 48 b8 cb    	vfmadd231ps zmm1,zmm3,zmm19
  a3ab2d:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a3ab34:	62 81 5c 40 59 db    	vmulps zmm19,zmm20,zmm27
  a3ab3a:	62 e2 1d 40 bc db    	vfnmadd231ps zmm19,zmm28,zmm3
  a3ab40:	62 01 1c 40 59 db    	vmulps zmm27,zmm28,zmm27
  a3ab46:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a3ab4d:	62 22 65 48 b8 dc    	vfmadd231ps zmm27,zmm3,zmm20
  a3ab53:	62 f1 7c 48 10 5a 09 	vmovups zmm3,ZMMWORD PTR [rdx+0x240]
  a3ab5a:	62 01 54 40 59 e6    	vmulps zmm28,zmm21,zmm30
  a3ab60:	62 62 15 40 bc e3    	vfnmadd231ps zmm28,zmm29,zmm3
  a3ab66:	62 81 14 40 59 e6    	vmulps zmm20,zmm29,zmm30
  a3ab6c:	62 61 7c 48 10 6a 14 	vmovups zmm29,ZMMWORD PTR [rdx+0x500]
  a3ab73:	62 a2 65 48 b8 e5    	vfmadd231ps zmm20,zmm3,zmm21
  a3ab79:	62 f1 7c 48 10 5a 15 	vmovups zmm3,ZMMWORD PTR [rdx+0x540]
  a3ab80:	62 01 4c 40 59 f5    	vmulps zmm30,zmm22,zmm29
  a3ab86:	62 62 6d 40 bc f3    	vfnmadd231ps zmm30,zmm18,zmm3
  a3ab8c:	62 81 6c 40 59 d5    	vmulps zmm18,zmm18,zmm29
  a3ab92:	62 61 7c 48 10 6a 0e 	vmovups zmm29,ZMMWORD PTR [rdx+0x380]
  a3ab99:	62 a2 65 48 b8 d6    	vfmadd231ps zmm18,zmm3,zmm22
  a3ab9f:	62 f1 7c 48 10 5a 0f 	vmovups zmm3,ZMMWORD PTR [rdx+0x3c0]
  a3aba6:	62 81 7c 40 59 ed    	vmulps zmm21,zmm16,zmm29
  a3abac:	62 e2 1d 48 bc eb    	vfnmadd231ps zmm21,zmm12,zmm3
  a3abb2:	62 81 1c 48 59 f5    	vmulps zmm22,zmm12,zmm29
  a3abb8:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a3abbf:	62 a2 65 48 b8 f0    	vfmadd231ps zmm22,zmm3,zmm16
  a3abc5:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a3abcc:	62 01 0c 48 59 ea    	vmulps zmm29,zmm14,zmm26
  a3abd2:	62 02 25 48 bc e9    	vfnmadd231ps zmm29,zmm11,zmm25
  a3abd8:	62 81 24 48 59 c2    	vmulps zmm16,zmm11,zmm26
  a3abde:	62 71 7c 48 10 5a 10 	vmovups zmm11,ZMMWORD PTR [rdx+0x400]
  a3abe5:	62 c2 35 40 b8 c6    	vfmadd231ps zmm16,zmm25,zmm14
  a3abeb:	62 71 7c 48 10 72 11 	vmovups zmm14,ZMMWORD PTR [rdx+0x440]
  a3abf2:	62 41 74 40 59 cb    	vmulps zmm25,zmm17,zmm11
  a3abf8:	62 42 15 48 bc ce    	vfnmadd231ps zmm25,zmm13,zmm14
  a3abfe:	62 51 14 48 59 eb    	vmulps zmm13,zmm13,zmm11
  a3ac04:	62 71 7c 48 10 5a 0b 	vmovups zmm11,ZMMWORD PTR [rdx+0x2c0]
  a3ac0b:	62 32 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm17
  a3ac11:	62 71 7c 48 10 72 16 	vmovups zmm14,ZMMWORD PTR [rdx+0x580]
  a3ac18:	62 c1 44 48 59 cf    	vmulps zmm17,zmm7,zmm15
  a3ac1e:	62 c2 5d 48 bc cc    	vfnmadd231ps zmm17,zmm4,zmm12
  a3ac24:	62 51 5c 48 59 ff    	vmulps zmm15,zmm4,zmm15
  a3ac2a:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a3ac31:	62 72 1d 48 b8 ff    	vfmadd231ps zmm15,zmm12,zmm7
  a3ac37:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a3ac3e:	ff 
  a3ac3f:	62 71 7c 48 58 e6    	vaddps zmm12,zmm0,zmm6
  a3ac45:	62 51 34 48 59 c6    	vmulps zmm8,zmm9,zmm14
  a3ac4b:	62 72 55 48 bc c4    	vfnmadd231ps zmm8,zmm5,zmm4
  a3ac51:	62 d1 54 48 59 ee    	vmulps zmm5,zmm5,zmm14
  a3ac57:	62 21 44 40 58 d3    	vaddps zmm26,zmm23,zmm19
  a3ac5d:	62 d2 5d 48 b8 e9    	vfmadd231ps zmm5,zmm4,zmm9
  a3ac63:	62 91 1c 48 58 d2    	vaddps zmm2,zmm12,zmm26
  a3ac69:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a3ac70:	02 
  a3ac71:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a3ac78:	62 71 6c 48 59 cb    	vmulps zmm9,zmm2,zmm3
  a3ac7e:	62 52 2d 48 bc cb    	vfnmadd231ps zmm9,zmm10,zmm11
  a3ac84:	62 f1 2c 48 59 db    	vmulps zmm3,zmm10,zmm3
  a3ac8a:	62 11 1c 40 58 d6    	vaddps zmm10,zmm28,zmm30
  a3ac90:	62 f2 25 48 b8 da    	vfmadd231ps zmm3,zmm11,zmm2
  a3ac96:	62 91 54 40 58 fd    	vaddps zmm7,zmm21,zmm29
  a3ac9c:	62 21 34 40 58 f9    	vaddps zmm31,zmm25,zmm17
  a3aca2:	62 11 1c 40 5c de    	vsubps zmm11,zmm28,zmm30
  a3aca8:	62 21 4c 40 58 e0    	vaddps zmm28,zmm22,zmm16
  a3acae:	62 31 4c 40 5c f0    	vsubps zmm14,zmm22,zmm16
  a3acb4:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a3acba:	62 a1 34 40 5c c1    	vsubps zmm16,zmm25,zmm17
  a3acc0:	62 e1 54 48 58 cb    	vaddps zmm17,zmm5,zmm3
  a3acc6:	62 61 54 48 5c cb    	vsubps zmm25,zmm5,zmm3
  a3accc:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a3acd3:	fe 
  a3acd4:	62 61 3c 40 58 f4    	vaddps zmm30,zmm24,zmm4
  a3acda:	62 f1 7c 48 5c f6    	vsubps zmm6,zmm0,zmm6
  a3ace0:	62 91 74 48 58 db    	vaddps zmm3,zmm1,zmm27
  a3ace6:	62 91 74 48 5c cb    	vsubps zmm1,zmm1,zmm27
  a3acec:	62 b1 5c 40 58 ea    	vaddps zmm5,zmm20,zmm18
  a3acf2:	62 a1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm18
  a3acf8:	62 c1 14 48 58 e7    	vaddps zmm20,zmm13,zmm15
  a3acfe:	62 b1 14 40 5c d5    	vsubps zmm2,zmm29,zmm21
  a3ad04:	62 e1 6c 40 58 ea    	vaddps zmm21,zmm18,zmm2
  a3ad0a:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a3ad10:	62 51 34 48 5c f8    	vsubps zmm15,zmm9,zmm8
  a3ad16:	62 51 14 48 58 c7    	vaddps zmm8,zmm13,zmm15
  a3ad1c:	62 d1 54 40 5c c0    	vsubps zmm0,zmm21,zmm8
  a3ad22:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a3ad29:	01 
  a3ad2a:	62 d1 54 40 58 c0    	vaddps zmm0,zmm21,zmm8
  a3ad30:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a3ad37:	62 51 24 48 58 c6    	vaddps zmm8,zmm11,zmm14
  a3ad3d:	62 01 5c 48 5c c0    	vsubps zmm24,zmm4,zmm24
  a3ad43:	62 11 7c 40 58 c9    	vaddps zmm9,zmm16,zmm25
  a3ad49:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a3ad4f:	62 41 3c 48 58 d9    	vaddps zmm27,zmm8,zmm9
  a3ad55:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a3ad5b:	62 71 2c 48 58 cf    	vaddps zmm9,zmm10,zmm7
  a3ad61:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a3ad67:	62 31 04 40 58 d6    	vaddps zmm10,zmm31,zmm22
  a3ad6d:	62 a1 04 40 5c f6    	vsubps zmm22,zmm31,zmm22
  a3ad73:	62 91 64 48 58 c6    	vaddps zmm0,zmm3,zmm30
  a3ad79:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3ad80:	fe 
  a3ad81:	62 01 1c 48 5c ea    	vsubps zmm29,zmm12,zmm26
  a3ad87:	62 11 54 48 58 e4    	vaddps zmm12,zmm5,zmm28
  a3ad8d:	62 91 54 48 5c ec    	vsubps zmm5,zmm5,zmm28
  a3ad93:	62 b1 5c 40 58 e1    	vaddps zmm4,zmm20,zmm17
  a3ad99:	62 a1 5c 40 5c c9    	vsubps zmm17,zmm20,zmm17
  a3ad9f:	62 b1 54 48 5c c1    	vsubps zmm0,zmm5,zmm17
  a3ada5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3adac:	ff 
  a3adad:	62 21 54 48 58 d1    	vaddps zmm26,zmm5,zmm17
  a3adb3:	62 61 4c 48 58 f9    	vaddps zmm31,zmm6,zmm1
  a3adb9:	62 61 0c 40 5c f3    	vsubps zmm30,zmm30,zmm3
  a3adbf:	62 a1 44 48 58 ee    	vaddps zmm21,zmm7,zmm22
  a3adc5:	62 b1 44 48 5c fe    	vsubps zmm7,zmm7,zmm22
  a3adcb:	62 e2 7d 48 18 25 8b 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff63a68b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3add2:	a6 63 ff 
  a3add5:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a3addb:	62 f1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm1
  a3ade1:	62 01 64 40 58 e0    	vaddps zmm28,zmm19,zmm24
  a3ade7:	62 d1 24 48 5c de    	vsubps zmm3,zmm11,zmm14
  a3aded:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a3adf3:	62 01 7c 40 5c c9    	vsubps zmm25,zmm16,zmm25
  a3adf9:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a3adff:	62 31 3c 40 5c db    	vsubps zmm11,zmm24,zmm19
  a3ae05:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a3ae0b:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a3ae11:	62 f1 6c 40 5c d2    	vsubps zmm2,zmm18,zmm2
  a3ae17:	62 81 64 48 58 e1    	vaddps zmm20,zmm3,zmm25
  a3ae1d:	62 51 14 48 5c ff    	vsubps zmm15,zmm13,zmm15
  a3ae23:	62 31 7c 48 58 f4    	vaddps zmm14,zmm0,zmm20
  a3ae29:	62 e2 3d 40 ac e0    	vfnmadd213ps zmm20,zmm24,zmm0
  a3ae2f:	62 d1 6c 48 58 c7    	vaddps zmm0,zmm2,zmm15
  a3ae35:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a3ae3b:	62 81 7c 48 28 c0    	vmovaps zmm16,zmm24
  a3ae41:	62 42 7d 48 ac c3    	vfnmadd213ps zmm24,zmm0,zmm11
  a3ae47:	62 e1 24 48 58 d0    	vaddps zmm18,zmm11,zmm0
  a3ae4d:	62 71 1c 48 58 ec    	vaddps zmm13,zmm12,zmm4
  a3ae53:	62 71 1c 48 5c e4    	vsubps zmm12,zmm12,zmm4
  a3ae59:	62 d1 34 48 58 f2    	vaddps zmm6,zmm9,zmm10
  a3ae5f:	62 51 34 48 5c d2    	vsubps zmm10,zmm9,zmm10
  a3ae65:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a3ae6b:	62 82 25 40 ac f7    	vfnmadd213ps zmm22,zmm27,zmm31
  a3ae71:	62 f2 7d 48 18 05 59 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63a459]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3ae78:	a4 63 ff 
  a3ae7b:	62 71 7c 48 59 4c 24 	vmulps zmm9,zmm0,ZMMWORD PTR [rsp+0x40]
  a3ae82:	01 
  a3ae83:	62 41 4c 40 58 d9    	vaddps zmm27,zmm22,zmm9
  a3ae89:	62 51 4c 40 5c d9    	vsubps zmm11,zmm22,zmm9
  a3ae8f:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a3ae96:	62 82 5d 48 ac fc    	vfnmadd213ps zmm23,zmm4,zmm28
  a3ae9c:	62 71 3c 48 59 c0    	vmulps zmm8,zmm8,zmm0
  a3aea2:	62 c1 44 40 5c f0    	vsubps zmm22,zmm23,zmm8
  a3aea8:	62 c1 44 40 58 f8    	vaddps zmm23,zmm23,zmm8
  a3aeae:	62 82 55 40 ac cd    	vfnmadd213ps zmm17,zmm21,zmm29
  a3aeb4:	62 31 14 40 58 cd    	vaddps zmm9,zmm29,zmm21
  a3aeba:	62 82 2d 40 ac de    	vfnmadd213ps zmm19,zmm26,zmm30
  a3aec0:	62 81 0c 40 58 ea    	vaddps zmm21,zmm30,zmm26
  a3aec6:	62 d1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm15
  a3aecc:	62 91 64 48 5c d9    	vsubps zmm3,zmm3,zmm25
  a3aed2:	62 71 7c 48 59 7c 24 	vmulps zmm15,zmm0,ZMMWORD PTR [rsp-0x40]
  a3aed9:	ff 
  a3aeda:	62 61 44 48 59 c8    	vmulps zmm25,zmm7,zmm0
  a3aee0:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x80]
  a3aee7:	02 
  a3aee8:	62 92 4d 48 ac ce    	vfnmadd213ps zmm1,zmm6,zmm30
  a3aeee:	62 f1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm0
  a3aef4:	62 71 2c 48 59 c0    	vmulps zmm8,zmm10,zmm0
  a3aefa:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a3af00:	62 71 64 48 59 d0    	vmulps zmm10,zmm3,zmm0
  a3af06:	62 61 74 48 58 d7    	vaddps zmm26,zmm1,zmm7
  a3af0c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a3af13:	fe 
  a3af14:	62 e2 15 48 ac c0    	vfnmadd213ps zmm16,zmm13,zmm0
  a3af1a:	62 71 74 48 5c e7    	vsubps zmm12,zmm1,zmm7
  a3af20:	62 d1 7c 40 5c c8    	vsubps zmm1,zmm16,zmm8
  a3af26:	62 d1 7c 40 58 d8    	vaddps zmm3,zmm16,zmm8
  a3af2c:	62 71 04 40 58 c5    	vaddps zmm8,zmm31,zmm5
  a3af32:	62 f1 1c 40 58 fc    	vaddps zmm7,zmm28,zmm4
  a3af38:	62 c1 74 40 5c c7    	vsubps zmm16,zmm17,zmm15
  a3af3e:	62 41 74 40 58 e7    	vaddps zmm28,zmm17,zmm15
  a3af44:	62 81 64 40 58 c9    	vaddps zmm17,zmm19,zmm25
  a3af4a:	62 01 64 40 5c c9    	vsubps zmm25,zmm19,zmm25
  a3af50:	62 e1 5c 40 58 da    	vaddps zmm19,zmm20,zmm2
  a3af56:	62 f1 5c 40 5c ea    	vsubps zmm5,zmm20,zmm2
  a3af5c:	62 c1 3c 40 5c e2    	vsubps zmm20,zmm24,zmm10
  a3af62:	62 51 3c 40 58 fa    	vaddps zmm15,zmm24,zmm10
  a3af68:	62 f1 0c 40 58 e6    	vaddps zmm4,zmm30,zmm6
  a3af6e:	62 d1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm13
  a3af74:	62 f1 7c 48 28 15 82 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff656782]        # 91700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ebb0>
  a3af7b:	67 65 ff 
  a3af7e:	62 d3 7d 48 19 e2 02 	vextractf32x4 xmm10,zmm4,0x2
  a3af85:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a3af8b:	62 f1 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm4
  a3af91:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a3af98:	c5 a8 14 c0          	vunpcklps xmm0,xmm10,xmm0
  a3af9c:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a3afa1:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a3afa8:	62 22 6d 48 7f de    	vpermt2ps zmm27,zmm2,zmm22
  a3afae:	62 61 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm27
  a3afb5:	00 00 00 
  a3afb8:	62 e3 7d 48 19 f4 02 	vextractf32x4 xmm4,zmm22,0x2
  a3afbf:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3afc3:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a3afca:	00 
  a3afcb:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a3afd2:	62 a2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm17
  a3afd8:	62 e1 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm16
  a3afdf:	00 00 00 
  a3afe2:	62 e3 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm17,0x2
  a3afe9:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3afed:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a3aff4:	00 
  a3aff5:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a3affc:	62 32 6d 48 7f f2    	vpermt2ps zmm14,zmm2,zmm18
  a3b002:	62 71 7c 48 11 b6 d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm14
  a3b009:	00 00 00 
  a3b00c:	62 e3 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm18,0x2
  a3b013:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3b017:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a3b01e:	00 
  a3b01f:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a3b026:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a3b02c:	62 61 7c 48 11 96 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm26
  a3b033:	01 00 00 
  a3b036:	62 f3 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm1,0x2
  a3b03d:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a3b041:	c5 f8 13 86 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm0
  a3b048:	00 
  a3b049:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a3b050:	62 32 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm23
  a3b056:	62 71 7c 48 11 9e 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm11
  a3b05d:	01 00 00 
  a3b060:	62 e3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm23,0x2
  a3b067:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3b06b:	c5 f8 13 86 a8 01 00 	vmovlps QWORD PTR [rsi+0x1a8],xmm0
  a3b072:	00 
  a3b073:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a3b07a:	62 32 6d 48 7f cd    	vpermt2ps zmm9,zmm2,zmm21
  a3b080:	62 71 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x1b0],zmm9
  a3b087:	01 00 00 
  a3b08a:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a3b091:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3b095:	c5 f8 13 86 f0 01 00 	vmovlps QWORD PTR [rsi+0x1f0],xmm0
  a3b09c:	00 
  a3b09d:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a3b0a4:	62 a2 6d 48 7f dc    	vpermt2ps zmm19,zmm2,zmm20
  a3b0aa:	62 e1 7c 48 11 9e f8 	vmovups ZMMWORD PTR [rsi+0x1f8],zmm19
  a3b0b1:	01 00 00 
  a3b0b4:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a3b0bb:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3b0bf:	c5 f8 13 86 38 02 00 	vmovlps QWORD PTR [rsi+0x238],xmm0
  a3b0c6:	00 
  a3b0c7:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a3b0ce:	62 72 6d 48 7f e3    	vpermt2ps zmm12,zmm2,zmm3
  a3b0d4:	62 71 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm12
  a3b0db:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a3b0e2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3b0e6:	c5 f8 13 86 80 02 00 	vmovlps QWORD PTR [rsi+0x280],xmm0
  a3b0ed:	00 
  a3b0ee:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a3b0f5:	62 72 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm7
  a3b0fb:	62 71 7c 48 11 86 88 	vmovups ZMMWORD PTR [rsi+0x288],zmm8
  a3b102:	02 00 00 
  a3b105:	62 f3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm7,0x2
  a3b10c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3b110:	c5 f8 13 86 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm0
  a3b117:	00 
  a3b118:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a3b11f:	62 02 6d 48 7f e1    	vpermt2ps zmm28,zmm2,zmm25
  a3b125:	62 61 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm28
  a3b12c:	02 00 00 
  a3b12f:	62 63 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm25,0x2
  a3b136:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a3b13a:	c5 f8 13 86 10 03 00 	vmovlps QWORD PTR [rsi+0x310],xmm0
  a3b141:	00 
  a3b142:	62 d2 55 48 77 d7    	vpermi2ps zmm2,zmm5,zmm15
  a3b148:	62 f1 7c 48 11 96 18 	vmovups ZMMWORD PTR [rsi+0x318],zmm2
  a3b14f:	03 00 00 
  a3b152:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a3b159:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a3b160:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a3b164:	c5 f8 13 86 58 03 00 	vmovlps QWORD PTR [rsi+0x358],xmm0
  a3b16b:	00 
  a3b16c:	48 81 c4 88 01 00 00 	add    rsp,0x188
  a3b173:	c5 f8 77             	vzeroupper
  a3b176:	c3                   	ret
