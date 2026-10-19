
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fd380 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fd380:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  9fd385:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  9fd38c:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  9fd392:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  9fd398:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  9fd39f:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  9fd3a3:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  9fd3aa:	62 f1 7c 48 28 2d 0c 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff69080c]        # 8dbc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b070>
  9fd3b1:	08 69 ff 
  9fd3b4:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  9fd3b8:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  9fd3be:	62 f2 55 48 7f f3    	vpermt2ps zmm6,zmm5,zmm3
  9fd3c4:	62 f1 7c 48 28 05 32 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff690832]        # 8dc00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b0b0>
  9fd3cb:	08 69 ff 
  9fd3ce:	c5 f8 10 4f 50       	vmovups xmm1,XMMWORD PTR [rdi+0x50]
  9fd3d3:	c4 e3 71 21 4f 54 10 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x54],0x10
  9fd3da:	c4 e2 79 18 67 58    	vbroadcastss xmm4,DWORD PTR [rdi+0x58]
  9fd3e0:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  9fd3e6:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  9fd3ec:	c4 e3 71 21 4f 5c 30 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x5c],0x30
  9fd3f3:	c5 fc 10 67 30       	vmovups ymm4,YMMWORD PTR [rdi+0x30]
  9fd3f8:	62 f3 5d 48 18 c9 02 	vinsertf32x4 zmm1,zmm4,xmm1,0x2
  9fd3ff:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  9fd405:	62 72 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm3
  9fd40b:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  9fd411:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  9fd418:	00 
  9fd419:	c4 e3 59 21 a7 84 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x84],0x10
  9fd420:	00 00 10 
  9fd423:	c5 fc 10 7f 60       	vmovups ymm7,YMMWORD PTR [rdi+0x60]
  9fd428:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  9fd42f:	00 00 
  9fd431:	c4 e3 31 0c e4 03    	vblendps xmm4,xmm9,xmm4,0x3
  9fd437:	c4 e3 59 21 a7 8c 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x8c],0x30
  9fd43e:	00 00 30 
  9fd441:	62 f3 45 48 18 fc 02 	vinsertf32x4 zmm7,zmm7,xmm4,0x2
  9fd448:	62 f2 45 48 77 eb    	vpermi2ps zmm5,zmm7,zmm3
  9fd44e:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  9fd454:	62 71 3c 48 58 cd    	vaddps zmm9,zmm8,zmm5
  9fd45a:	62 51 4c 48 58 d1    	vaddps zmm10,zmm6,zmm9
  9fd460:	62 71 74 48 58 df    	vaddps zmm11,zmm1,zmm7
  9fd466:	62 d1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm11
  9fd46c:	62 f2 7d 48 18 05 ea 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff677fea]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9fd473:	7f 67 ff 
  9fd476:	62 d2 7d 48 bc f1    	vfnmadd231ps zmm6,zmm0,zmm9
  9fd47c:	62 f1 74 48 5c ff    	vsubps zmm7,zmm1,zmm7
  9fd482:	62 f2 7d 48 18 0d 48 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff677e48]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9fd489:	7e 67 ff 
  9fd48c:	62 71 44 48 59 c9    	vmulps zmm9,zmm7,zmm1
  9fd492:	62 d1 4c 48 58 f9    	vaddps zmm7,zmm6,zmm9
  9fd498:	62 d2 7d 48 bc d3    	vfnmadd231ps zmm2,zmm0,zmm11
  9fd49e:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  9fd4a4:	62 71 54 48 59 c1    	vmulps zmm8,zmm5,zmm1
  9fd4aa:	62 d1 6c 48 5c e8    	vsubps zmm5,zmm2,zmm8
  9fd4b0:	62 51 4c 48 5c d9    	vsubps zmm11,zmm6,zmm9
  9fd4b6:	62 f1 3c 48 58 f2    	vaddps zmm6,zmm8,zmm2
  9fd4bc:	62 71 7c 48 28 05 ba 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c9aba]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fd4c3:	9a 6c ff 
  9fd4c6:	62 72 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm3
  9fd4cc:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  9fd4d2:	62 72 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm3
  9fd4d8:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  9fd4dd:	62 52 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm12
  9fd4e3:	62 71 7c 48 28 0d 13 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c9a13]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fd4ea:	9a 6c ff 
  9fd4ed:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  9fd4f3:	62 52 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm12
  9fd4f9:	62 71 7c 48 28 35 3d 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c9a3d]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fd500:	9a 6c ff 
  9fd503:	62 52 0d 48 7f d4    	vpermt2ps zmm10,zmm14,zmm12
  9fd509:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  9fd50f:	62 52 35 48 7f fc    	vpermt2ps zmm15,zmm9,zmm12
  9fd515:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  9fd51b:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  9fd521:	62 c2 35 48 7f c4    	vpermt2ps zmm16,zmm9,zmm12
  9fd527:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  9fd52d:	62 d1 ad 48 14 d3    	vunpcklpd zmm2,zmm10,zmm11
  9fd533:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  9fd539:	62 52 35 48 7f dc    	vpermt2ps zmm11,zmm9,zmm12
  9fd53f:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  9fd545:	62 f2 3d 48 7f eb    	vpermt2ps zmm5,zmm8,zmm3
  9fd54b:	62 f2 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm3
  9fd551:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  9fd557:	62 c2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm12
  9fd55d:	62 d2 0d 48 7f e4    	vpermt2ps zmm4,zmm14,zmm12
  9fd563:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  9fd569:	62 c2 35 48 7f d4    	vpermt2ps zmm18,zmm9,zmm12
  9fd56f:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  9fd575:	62 52 4d 48 77 cc    	vpermi2ps zmm9,zmm6,zmm12
  9fd57b:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  9fd581:	62 52 0d 48 7f e4    	vpermt2ps zmm12,zmm14,zmm12
  9fd587:	62 31 95 48 14 c0    	vunpcklpd zmm8,zmm13,zmm16
  9fd58d:	62 31 95 48 15 d0    	vunpckhpd zmm10,zmm13,zmm16
  9fd593:	62 51 85 48 14 eb    	vunpcklpd zmm13,zmm15,zmm11
  9fd599:	62 51 85 48 15 f3    	vunpckhpd zmm14,zmm15,zmm11
  9fd59f:	62 d1 c5 48 14 fc    	vunpcklpd zmm7,zmm7,zmm12
  9fd5a5:	62 71 7c 48 28 3d 51 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c9851]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fd5ac:	98 6c ff 
  9fd5af:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  9fd5b5:	62 d2 05 48 7f dd    	vpermt2ps zmm3,zmm15,zmm13
  9fd5bb:	62 e1 7c 48 28 05 7b 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c987b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fd5c2:	98 6c ff 
  9fd5c5:	62 52 7d 40 7f c5    	vpermt2ps zmm8,zmm16,zmm13
  9fd5cb:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  9fd5d1:	62 52 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm14
  9fd5d7:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  9fd5dd:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  9fd5e3:	62 72 05 48 7f f7    	vpermt2ps zmm14,zmm15,zmm7
  9fd5e9:	62 f2 7d 40 7f d7    	vpermt2ps zmm2,zmm16,zmm7
  9fd5ef:	62 f1 dd 48 14 f6    	vunpcklpd zmm6,zmm4,zmm6
  9fd5f5:	62 d1 f5 40 14 f9    	vunpcklpd zmm7,zmm17,zmm9
  9fd5fb:	62 51 f5 40 15 c9    	vunpckhpd zmm9,zmm17,zmm9
  9fd601:	62 c1 ed 40 14 cb    	vunpcklpd zmm17,zmm18,zmm11
  9fd607:	62 51 ed 40 15 db    	vunpckhpd zmm11,zmm18,zmm11
  9fd60d:	62 d1 d5 48 14 ec    	vunpcklpd zmm5,zmm5,zmm12
  9fd613:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  9fd619:	62 b2 05 48 7f e1    	vpermt2ps zmm4,zmm15,zmm17
  9fd61f:	62 b2 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm17
  9fd625:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  9fd62b:	62 52 05 48 7f e3    	vpermt2ps zmm12,zmm15,zmm11
  9fd631:	62 52 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm11
  9fd637:	62 72 4d 48 77 fd    	vpermi2ps zmm15,zmm6,zmm5
  9fd63d:	62 f2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm5
  9fd643:	62 71 7c 48 10 5a 02 	vmovups zmm11,ZMMWORD PTR [rdx+0x80]
  9fd64a:	62 e1 7c 48 10 42 03 	vmovups zmm16,ZMMWORD PTR [rdx+0xc0]
  9fd651:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  9fd658:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  9fd65f:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  9fd666:	62 e1 7c 48 10 5a 07 	vmovups zmm19,ZMMWORD PTR [rdx+0x1c0]
  9fd66d:	62 e1 7c 48 10 62 08 	vmovups zmm20,ZMMWORD PTR [rdx+0x200]
  9fd674:	62 e1 7c 48 10 6a 09 	vmovups zmm21,ZMMWORD PTR [rdx+0x240]
  9fd67b:	62 e1 7c 48 10 72 0a 	vmovups zmm22,ZMMWORD PTR [rdx+0x280]
  9fd682:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  9fd689:	62 61 14 48 59 c5    	vmulps zmm24,zmm13,zmm5
  9fd68f:	62 22 1d 48 bc c1    	vfnmadd231ps zmm24,zmm12,zmm17
  9fd695:	62 21 0c 48 59 cc    	vmulps zmm25,zmm14,zmm20
  9fd69b:	62 22 05 48 bc cd    	vfnmadd231ps zmm25,zmm15,zmm21
  9fd6a1:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  9fd6a7:	62 21 2c 48 59 da    	vmulps zmm27,zmm10,zmm18
  9fd6ad:	62 22 35 48 bc db    	vfnmadd231ps zmm27,zmm9,zmm19
  9fd6b3:	62 21 6c 48 59 e6    	vmulps zmm28,zmm2,zmm22
  9fd6b9:	62 22 4d 48 bc e7    	vfnmadd231ps zmm28,zmm6,zmm23
  9fd6bf:	62 41 3c 48 59 eb    	vmulps zmm29,zmm8,zmm11
  9fd6c5:	62 22 45 48 bc e8    	vfnmadd231ps zmm29,zmm7,zmm16
  9fd6cb:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  9fd6d1:	62 f1 1c 48 59 ed    	vmulps zmm5,zmm12,zmm5
  9fd6d7:	62 d2 75 40 b8 ed    	vfmadd231ps zmm5,zmm17,zmm13
  9fd6dd:	62 31 04 48 59 e4    	vmulps zmm12,zmm15,zmm20
  9fd6e3:	62 52 55 40 b8 e6    	vfmadd231ps zmm12,zmm21,zmm14
  9fd6e9:	62 51 54 48 58 ec    	vaddps zmm13,zmm5,zmm12
  9fd6ef:	62 31 34 48 59 ca    	vmulps zmm9,zmm9,zmm18
  9fd6f5:	62 52 65 40 b8 ca    	vfmadd231ps zmm9,zmm19,zmm10
  9fd6fb:	62 31 4c 48 59 d6    	vmulps zmm10,zmm6,zmm22
  9fd701:	62 72 45 40 b8 d2    	vfmadd231ps zmm10,zmm23,zmm2
  9fd707:	62 d1 44 48 59 fb    	vmulps zmm7,zmm7,zmm11
  9fd70d:	62 d2 7d 40 b8 f8    	vfmadd231ps zmm7,zmm16,zmm8
  9fd713:	62 f1 2c 48 58 d7    	vaddps zmm2,zmm10,zmm7
  9fd719:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  9fd71f:	62 f2 2d 40 ac f3    	vfnmadd213ps zmm6,zmm26,zmm3
  9fd725:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  9fd72b:	62 12 0d 40 ac c3    	vfnmadd213ps zmm8,zmm30,zmm27
  9fd731:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  9fd737:	62 72 15 48 ac dc    	vfnmadd213ps zmm11,zmm13,zmm4
  9fd73d:	62 11 3c 40 5c f1    	vsubps zmm14,zmm24,zmm25
  9fd743:	62 71 0c 48 59 f1    	vmulps zmm14,zmm14,zmm1
  9fd749:	62 d2 6d 48 ac c1    	vfnmadd213ps zmm0,zmm2,zmm9
  9fd74f:	62 11 1c 40 5c fd    	vsubps zmm15,zmm28,zmm29
  9fd755:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  9fd75b:	c5 34 58 ca          	vaddps ymm9,ymm9,ymm2
  9fd75f:	c5 94 58 e4          	vaddps ymm4,ymm13,ymm4
  9fd763:	c5 34 58 ec          	vaddps ymm13,ymm9,ymm4
  9fd767:	62 81 24 00 58 c6    	vaddps xmm16,xmm27,xmm30
  9fd76d:	62 91 64 08 58 da    	vaddps xmm3,xmm3,xmm26
  9fd773:	62 a1 64 08 58 c8    	vaddps xmm17,xmm3,xmm16
  9fd779:	c5 fc 28 15 3f ab 67 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff67ab3f]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  9fd780:	ff 
  9fd781:	62 c2 6d 28 7f cd    	vpermt2ps ymm17,ymm2,ymm13
  9fd787:	62 e1 7c 08 11 0e    	vmovups XMMWORD PTR [rsi],xmm17
  9fd78d:	62 c3 7d 28 19 cd 01 	vextractf32x4 xmm13,ymm17,0x1
  9fd794:	c5 78 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm13
  9fd799:	c4 41 7c 5c ef       	vsubps ymm13,ymm0,ymm15
  9fd79e:	62 c1 24 28 5c ce    	vsubps ymm17,ymm11,ymm14
  9fd7a4:	62 c1 74 20 5c d5    	vsubps ymm18,ymm17,ymm13
  9fd7aa:	c5 a8 5c ff          	vsubps xmm7,xmm10,xmm7
  9fd7ae:	c5 c0 59 f9          	vmulps xmm7,xmm7,xmm1
  9fd7b2:	c5 38 58 d7          	vaddps xmm10,xmm8,xmm7
  9fd7b6:	c4 c1 50 5c ec       	vsubps xmm5,xmm5,xmm12
  9fd7bb:	c5 d0 59 c9          	vmulps xmm1,xmm5,xmm1
  9fd7bf:	c5 c8 58 e9          	vaddps xmm5,xmm6,xmm1
  9fd7c3:	c4 41 50 5c e2       	vsubps xmm12,xmm5,xmm10
  9fd7c8:	62 32 6d 28 7f e2    	vpermt2ps ymm12,ymm2,ymm18
  9fd7ce:	c5 78 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm12
  9fd7d3:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  9fd7d9:	c5 78 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm12
  9fd7de:	c5 84 58 c0          	vaddps ymm0,ymm15,ymm0
  9fd7e2:	c4 41 0c 58 db       	vaddps ymm11,ymm14,ymm11
  9fd7e7:	c5 24 58 e0          	vaddps ymm12,ymm11,ymm0
  9fd7eb:	c5 b8 5c ff          	vsubps xmm7,xmm8,xmm7
  9fd7ef:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  9fd7f3:	c5 f0 58 f7          	vaddps xmm6,xmm1,xmm7
  9fd7f7:	62 d2 6d 28 7f f4    	vpermt2ps ymm6,ymm2,ymm12
  9fd7fd:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  9fd802:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  9fd808:	c5 f8 13 76 40       	vmovlps QWORD PTR [rsi+0x40],xmm6
  9fd80d:	c4 c1 5c 5c e1       	vsubps ymm4,ymm4,ymm9
  9fd812:	62 b1 64 08 5c d8    	vsubps xmm3,xmm3,xmm16
  9fd818:	62 f2 6d 28 7f dc    	vpermt2ps ymm3,ymm2,ymm4
  9fd81e:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  9fd824:	c5 f8 13 66 58       	vmovlps QWORD PTR [rsi+0x58],xmm4
  9fd829:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  9fd82e:	62 d1 74 20 58 dd    	vaddps ymm3,ymm17,ymm13
  9fd834:	c5 a8 58 e5          	vaddps xmm4,xmm10,xmm5
  9fd838:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  9fd83e:	c5 f8 11 66 60       	vmovups XMMWORD PTR [rsi+0x60],xmm4
  9fd843:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  9fd849:	c5 f8 13 5e 70       	vmovlps QWORD PTR [rsi+0x70],xmm3
  9fd84e:	c5 a4 5c c0          	vsubps ymm0,ymm11,ymm0
  9fd852:	c5 f0 5c cf          	vsubps xmm1,xmm1,xmm7
  9fd856:	62 f2 6d 28 7f c8    	vpermt2ps ymm1,ymm2,ymm0
  9fd85c:	c5 f8 11 4e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm1
  9fd861:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  9fd867:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  9fd86e:	00 
  9fd86f:	c5 f8 77             	vzeroupper
  9fd872:	c3                   	ret
