
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a43280 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a43280:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a43285:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a4328c:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a43292:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a43298:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a4329f:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a432a3:	62 f3 75 48 18 e0 02 	vinsertf32x4 zmm4,zmm1,xmm0,0x2
  a432aa:	62 f1 7c 48 28 1d 0c 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff64ed0c]        # 91fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f470>
  a432b1:	ed 64 ff 
  a432b4:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a432b8:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a432be:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a432c4:	62 e1 7c 48 28 1d 32 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff64ed32]        # 92000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f4b0>
  a432cb:	ed 64 ff 
  a432ce:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a432d3:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a432da:	c4 e2 79 18 77 58    	vbroadcastss xmm6,DWORD PTR [rdi+0x58]
  a432e0:	62 f2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm0
  a432e6:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a432ec:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a432f3:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a432f8:	62 f3 4d 48 18 f5 02 	vinsertf32x4 zmm6,zmm6,xmm5,0x2
  a432ff:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a43305:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a4330b:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a43311:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  a43318:	00 
  a43319:	c4 e3 41 21 bf 84 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x84],0x10
  a43320:	00 00 10 
  a43323:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a43328:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a4332f:	00 00 
  a43331:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a43337:	c4 e3 41 21 bf 8c 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x8c],0x30
  a4333e:	00 00 30 
  a43341:	62 f3 3d 48 18 ff 02 	vinsertf32x4 zmm7,zmm8,xmm7,0x2
  a43348:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a4334e:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a43354:	62 f2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm0
  a4335a:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  a43361:	00 
  a43362:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  a43369:	00 
  a4336a:	c4 63 31 21 8f b4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xb4],0x10
  a43371:	00 00 10 
  a43374:	c4 62 79 18 9f b8 00 	vbroadcastss xmm11,DWORD PTR [rdi+0xb8]
  a4337b:	00 00 
  a4337d:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a43383:	c4 63 31 21 8f bc 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xbc],0x30
  a4338a:	00 00 30 
  a4338d:	62 53 2d 48 18 d1 02 	vinsertf32x4 zmm10,zmm10,xmm9,0x2
  a43394:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a4339a:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a433a0:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a433a6:	c5 78 10 8f e0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xe0]
  a433ad:	00 
  a433ae:	c4 63 31 21 8f e4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xe4],0x10
  a433b5:	00 00 10 
  a433b8:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a433bf:	00 00 
  a433c1:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a433c8:	00 
  a433c9:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a433cf:	c4 63 31 21 8f ec 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xec],0x30
  a433d6:	00 00 30 
  a433d9:	62 53 15 48 18 e9 02 	vinsertf32x4 zmm13,zmm13,xmm9,0x2
  a433e0:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a433e6:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  a433ec:	c5 78 10 8f 10 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x110]
  a433f3:	00 
  a433f4:	c4 63 31 21 8f 14 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x114],0x10
  a433fb:	00 00 10 
  a433fe:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a43405:	00 00 
  a43407:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a4340d:	c4 43 09 0c c9 03    	vblendps xmm9,xmm14,xmm9,0x3
  a43413:	c4 63 31 21 8f 1c 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x11c],0x30
  a4341a:	00 00 30 
  a4341d:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a43424:	00 
  a43425:	62 53 0d 48 18 f1 02 	vinsertf32x4 zmm14,zmm14,xmm9,0x2
  a4342c:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a43432:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a43438:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a4343e:	c5 78 10 8f 40 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x140]
  a43445:	00 
  a43446:	c4 63 31 21 8f 44 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x144],0x10
  a4344d:	00 00 10 
  a43450:	62 e1 7c 28 10 47 09 	vmovups ymm16,YMMWORD PTR [rdi+0x120]
  a43457:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a4345e:	00 00 
  a43460:	c4 c3 71 0c c9 03    	vblendps xmm1,xmm1,xmm9,0x3
  a43466:	c4 e3 71 21 8f 4c 01 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x14c],0x30
  a4346d:	00 00 30 
  a43470:	62 f3 7d 40 18 c9 02 	vinsertf32x4 zmm1,zmm16,xmm1,0x2
  a43477:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a4347d:	62 e2 65 48 7f c0    	vpermt2ps zmm16,zmm3,zmm0
  a43483:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a43489:	c5 78 10 8f 70 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x170]
  a43490:	00 
  a43491:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  a43498:	01 00 00 
  a4349b:	c4 63 31 21 8f 74 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x174],0x10
  a434a2:	00 00 10 
  a434a5:	c4 e2 79 18 97 78 01 	vbroadcastss xmm2,DWORD PTR [rdi+0x178]
  a434ac:	00 00 
  a434ae:	c4 c3 69 0c d1 03    	vblendps xmm2,xmm2,xmm9,0x3
  a434b4:	c4 e3 69 21 97 7c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x17c],0x30
  a434bb:	00 00 30 
  a434be:	62 e3 6d 40 18 d2 02 	vinsertf32x4 zmm18,zmm18,xmm2,0x2
  a434c5:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a434cb:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a434d1:	62 c1 5c 48 58 dd    	vaddps zmm19,zmm4,zmm13
  a434d7:	62 e1 44 48 58 e1    	vaddps zmm20,zmm7,zmm1
  a434dd:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a434e3:	62 c1 4c 48 58 f6    	vaddps zmm22,zmm6,zmm14
  a434e9:	62 a1 2c 48 58 fa    	vaddps zmm23,zmm10,zmm18
  a434ef:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a434f5:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a434fb:	62 41 74 40 58 cc    	vaddps zmm25,zmm17,zmm12
  a43501:	62 21 3c 48 58 d0    	vaddps zmm26,zmm8,zmm16
  a43507:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a4350d:	62 41 54 48 58 e7    	vaddps zmm28,zmm5,zmm15
  a43513:	62 61 24 48 58 eb    	vaddps zmm29,zmm11,zmm3
  a43519:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a4351f:	62 91 24 40 58 d6    	vaddps zmm2,zmm27,zmm30
  a43525:	62 51 5c 48 5c ed    	vsubps zmm13,zmm4,zmm13
  a4352b:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a43531:	62 c1 14 48 58 c0    	vaddps zmm16,zmm13,zmm8
  a43537:	62 d1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm14
  a4353d:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a43543:	62 f1 4c 48 58 e5    	vaddps zmm4,zmm6,zmm5
  a43549:	62 72 7d 48 18 35 49 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff631e49]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a43550:	1e 63 ff 
  a43553:	62 51 5c 48 59 fe    	vmulps zmm15,zmm4,zmm14
  a43559:	62 f1 24 48 5c db    	vsubps zmm3,zmm11,zmm3
  a4355f:	62 31 2c 48 5c d2    	vsubps zmm10,zmm10,zmm18
  a43565:	62 d1 64 48 5c e2    	vsubps zmm4,zmm3,zmm10
  a4356b:	62 51 5c 48 59 de    	vmulps zmm11,zmm4,zmm14
  a43571:	62 c1 04 48 58 d3    	vaddps zmm18,zmm15,zmm11
  a43577:	62 b1 7c 40 58 e2    	vaddps zmm4,zmm16,zmm18
  a4357d:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a43583:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a43589:	62 c1 74 48 58 cc    	vaddps zmm17,zmm1,zmm12
  a4358f:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a43595:	62 d1 54 48 59 f6    	vmulps zmm6,zmm5,zmm14
  a4359b:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a435a1:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a435a7:	62 71 4c 48 5c d3    	vsubps zmm10,zmm6,zmm3
  a435ad:	62 d1 74 40 58 ea    	vaddps zmm5,zmm17,zmm10
  a435b3:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a435b9:	62 81 1c 40 5c e5    	vsubps zmm20,zmm28,zmm29
  a435bf:	62 21 64 40 58 e4    	vaddps zmm28,zmm19,zmm20
  a435c5:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a435cb:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a435d1:	62 91 4c 40 58 f9    	vaddps zmm7,zmm22,zmm25
  a435d7:	62 c1 14 48 5c f8    	vsubps zmm23,zmm13,zmm8
  a435dd:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a435e3:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a435e9:	62 f1 1c 48 5c c9    	vsubps zmm1,zmm12,zmm1
  a435ef:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a435f5:	62 51 74 48 58 c3    	vaddps zmm8,zmm1,zmm11
  a435fb:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a43601:	62 11 24 40 5c fe    	vsubps zmm15,zmm27,zmm30
  a43607:	62 21 7c 40 5c c2    	vsubps zmm24,zmm16,zmm18
  a4360d:	62 51 74 40 5c f2    	vsubps zmm14,zmm17,zmm10
  a43613:	62 31 64 40 5c d4    	vsubps zmm10,zmm19,zmm20
  a43619:	62 31 34 40 5c ee    	vsubps zmm13,zmm25,zmm22
  a4361f:	62 e1 44 40 5c db    	vsubps zmm19,zmm23,zmm3
  a43625:	62 51 74 48 5c e3    	vsubps zmm12,zmm1,zmm11
  a4362b:	62 e1 7c 48 28 0d 4b 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff68394b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a43632:	39 68 ff 
  a43635:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a4363b:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a43641:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a43647:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a4364d:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a43653:	62 62 75 40 7f c0    	vpermt2ps zmm24,zmm17,zmm0
  a43659:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a4365f:	62 e2 75 40 7f d8    	vpermt2ps zmm19,zmm17,zmm0
  a43665:	62 e1 7c 48 28 05 91 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff683891]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4366c:	38 68 ff 
  a4366f:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a43675:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a4367b:	62 e1 7c 48 28 15 bb 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6838bb]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a43682:	38 68 ff 
  a43685:	62 32 6d 40 7f cd    	vpermt2ps zmm9,zmm18,zmm21
  a4368b:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a43691:	62 12 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm24
  a43697:	62 92 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm24
  a4369d:	62 81 7c 48 28 e4    	vmovaps zmm20,zmm28
  a436a3:	62 c2 7d 40 7f e2    	vpermt2ps zmm20,zmm16,zmm10
  a436a9:	62 42 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm10
  a436af:	62 91 b5 48 14 dc    	vunpcklpd zmm3,zmm9,zmm28
  a436b5:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a436bb:	62 32 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm19
  a436c1:	62 b2 6d 40 7f f3    	vpermt2ps zmm6,zmm18,zmm19
  a436c7:	62 e1 dd 48 14 de    	vunpcklpd zmm19,zmm4,zmm6
  a436cd:	62 b1 f5 48 14 e4    	vunpcklpd zmm4,zmm1,zmm20
  a436d3:	62 b1 f5 48 15 f4    	vunpckhpd zmm6,zmm1,zmm20
  a436d9:	62 51 a5 48 14 d1    	vunpcklpd zmm10,zmm11,zmm9
  a436df:	62 51 a5 48 15 d9    	vunpckhpd zmm11,zmm11,zmm9
  a436e5:	62 71 7c 48 28 0d 11 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff683711]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a436ec:	37 68 ff 
  a436ef:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a436f5:	62 d2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm10
  a436fb:	62 e1 7c 48 28 25 3b 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff68373b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a43702:	37 68 ff 
  a43705:	62 d2 5d 40 7f e2    	vpermt2ps zmm4,zmm20,zmm10
  a4370b:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a43711:	62 52 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm11
  a43717:	62 d2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm11
  a4371d:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a43723:	62 32 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm19
  a43729:	62 b2 5d 40 7f db    	vpermt2ps zmm3,zmm20,zmm19
  a4372f:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a43735:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a4373b:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a43741:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a43747:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a4374d:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a43753:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a43759:	62 72 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm0
  a4375f:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a43765:	62 d2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm15
  a4376b:	62 d2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm15
  a43771:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a43777:	62 52 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm14
  a4377d:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a43783:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a43789:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a4378f:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a43795:	62 f1 ed 48 14 ff    	vunpcklpd zmm7,zmm2,zmm7
  a4379b:	62 c2 3d 48 77 c4    	vpermi2ps zmm16,zmm8,zmm12
  a437a1:	62 52 6d 40 7f c4    	vpermt2ps zmm8,zmm18,zmm12
  a437a7:	62 d1 d5 48 14 d0    	vunpcklpd zmm2,zmm5,zmm8
  a437ad:	62 d1 fd 48 14 ee    	vunpcklpd zmm5,zmm0,zmm14
  a437b3:	62 51 fd 48 15 c6    	vunpckhpd zmm8,zmm0,zmm14
  a437b9:	62 31 85 48 14 e0    	vunpcklpd zmm12,zmm15,zmm16
  a437bf:	62 31 85 48 15 e8    	vunpckhpd zmm13,zmm15,zmm16
  a437c5:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a437cb:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a437d1:	62 d2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm12
  a437d7:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a437dd:	62 52 35 48 7f e5    	vpermt2ps zmm12,zmm9,zmm13
  a437e3:	62 52 5d 40 7f c5    	vpermt2ps zmm8,zmm20,zmm13
  a437e9:	62 72 45 48 77 ca    	vpermi2ps zmm9,zmm7,zmm2
  a437ef:	62 f2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm2
  a437f5:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a437fc:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a43803:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a4380a:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a43811:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a43818:	62 e1 7c 48 10 52 07 	vmovups zmm18,ZMMWORD PTR [rdx+0x1c0]
  a4381f:	62 e1 7c 48 10 5a 08 	vmovups zmm19,ZMMWORD PTR [rdx+0x200]
  a43826:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a4382d:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a43834:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a4383b:	62 c1 2c 48 59 ff    	vmulps zmm23,zmm10,zmm15
  a43841:	62 a2 1d 48 bc f8    	vfnmadd231ps zmm23,zmm12,zmm16
  a43847:	62 21 24 48 59 c3    	vmulps zmm24,zmm11,zmm19
  a4384d:	62 22 35 48 bc c4    	vfnmadd231ps zmm24,zmm9,zmm20
  a43853:	62 01 44 40 58 c8    	vaddps zmm25,zmm23,zmm24
  a43859:	62 91 74 48 58 d1    	vaddps zmm2,zmm1,zmm25
  a4385f:	62 21 4c 48 59 d1    	vmulps zmm26,zmm6,zmm17
  a43865:	62 22 3d 48 bc d2    	vfnmadd231ps zmm26,zmm8,zmm18
  a4386b:	62 21 64 48 59 dd    	vmulps zmm27,zmm3,zmm21
  a43871:	62 22 45 48 bc de    	vfnmadd231ps zmm27,zmm7,zmm22
  a43877:	62 41 5c 48 59 e5    	vmulps zmm28,zmm4,zmm13
  a4387d:	62 42 55 48 bc e6    	vfnmadd231ps zmm28,zmm5,zmm14
  a43883:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a43889:	62 01 2c 40 58 f5    	vaddps zmm30,zmm26,zmm29
  a4388f:	62 51 1c 48 59 e7    	vmulps zmm12,zmm12,zmm15
  a43895:	62 52 7d 40 b8 e2    	vfmadd231ps zmm12,zmm16,zmm10
  a4389b:	62 31 34 48 59 cb    	vmulps zmm9,zmm9,zmm19
  a438a1:	62 52 5d 40 b8 cb    	vfmadd231ps zmm9,zmm20,zmm11
  a438a7:	62 51 1c 48 58 d1    	vaddps zmm10,zmm12,zmm9
  a438ad:	62 71 2c 48 58 d8    	vaddps zmm11,zmm10,zmm0
  a438b3:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a438b9:	62 72 6d 40 b8 c6    	vfmadd231ps zmm8,zmm18,zmm6
  a438bf:	62 b1 44 48 59 f5    	vmulps zmm6,zmm7,zmm21
  a438c5:	62 f2 4d 40 b8 f3    	vfmadd231ps zmm6,zmm22,zmm3
  a438cb:	62 d1 54 48 59 dd    	vmulps zmm3,zmm5,zmm13
  a438d1:	62 f2 0d 48 b8 dc    	vfmadd231ps zmm3,zmm14,zmm4
  a438d7:	62 f1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm3
  a438dd:	62 f2 7d 48 18 2d 79 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff631b79]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a438e4:	1b 63 ff 
  a438e7:	62 f1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm4
  a438ed:	62 92 55 48 bc c9    	vfnmadd231ps zmm1,zmm5,zmm25
  a438f3:	62 72 7d 48 18 2d d7 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6319d7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a438fa:	19 63 ff 
  a438fd:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a43903:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a43909:	62 51 74 48 58 e1    	vaddps zmm12,zmm1,zmm9
  a4390f:	62 02 55 48 bc d5    	vfnmadd231ps zmm26,zmm5,zmm29
  a43915:	62 f1 4c 48 5c db    	vsubps zmm3,zmm6,zmm3
  a4391b:	62 d1 64 48 59 dd    	vmulps zmm3,zmm3,zmm13
  a43921:	62 f1 2c 40 58 f3    	vaddps zmm6,zmm26,zmm3
  a43927:	62 71 1c 48 5c f6    	vsubps zmm14,zmm12,zmm6
  a4392d:	62 d2 55 48 bc c2    	vfnmadd231ps zmm0,zmm5,zmm10
  a43933:	62 11 44 40 5c d0    	vsubps zmm10,zmm23,zmm24
  a43939:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a4393f:	62 51 7c 48 5c fa    	vsubps zmm15,zmm0,zmm10
  a43945:	62 72 5d 48 bc c5    	vfnmadd231ps zmm8,zmm4,zmm5
  a4394b:	62 91 24 40 5c e4    	vsubps zmm4,zmm27,zmm28
  a43951:	62 d1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm13
  a43957:	62 f1 3c 48 5c ec    	vsubps zmm5,zmm8,zmm4
  a4395d:	62 71 04 48 5c ed    	vsubps zmm13,zmm15,zmm5
  a43963:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a43969:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a4396f:	62 71 74 48 58 cb    	vaddps zmm9,zmm1,zmm3
  a43975:	62 f1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm0
  a4397b:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a43981:	62 71 7c 48 58 c4    	vaddps zmm8,zmm0,zmm4
  a43987:	62 11 6c 48 5c d6    	vsubps zmm10,zmm2,zmm30
  a4398d:	62 e1 24 48 5c c7    	vsubps zmm16,zmm11,zmm7
  a43993:	62 f1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm6
  a43999:	62 f1 04 48 58 ed    	vaddps zmm5,zmm15,zmm5
  a4399f:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a439a5:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a439ab:	62 f1 24 48 58 df    	vaddps zmm3,zmm11,zmm7
  a439b1:	62 91 6c 48 58 d6    	vaddps zmm2,zmm2,zmm30
  a439b7:	62 f1 7c 48 28 25 7f 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64e67f]        # 92040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f4f0>
  a439be:	e6 64 ff 
  a439c1:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a439c7:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a439cd:	62 52 5d 48 7f ee    	vpermt2ps zmm13,zmm4,zmm14
  a439d3:	62 71 7c 48 11 6e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm13
  a439da:	62 52 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm9
  a439e0:	62 71 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm8
  a439e7:	62 c2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm10
  a439ed:	62 e1 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm16
  a439f4:	62 f2 5d 48 7f ee    	vpermt2ps zmm5,zmm4,zmm6
  a439fa:	62 f1 7c 48 11 6e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm5
  a43a01:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a43a07:	62 f1 7c 48 11 46 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm0
  a43a0e:	c5 f8 77             	vzeroupper
  a43a11:	c3                   	ret
