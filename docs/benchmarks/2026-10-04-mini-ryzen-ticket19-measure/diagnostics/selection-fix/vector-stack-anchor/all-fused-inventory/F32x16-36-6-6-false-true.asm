
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0b240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0b240:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6bbd36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0b247:	bd 6b ff 
  a0b24a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0b24e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a0b252:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a0b258:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6bbc9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0b25f:	bc 6b ff 
  a0b262:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6bbcd4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0b269:	bc 6b ff 
  a0b26c:	62 e1 7c 48 28 3d 8a 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6bbb8a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0b273:	bb 6b ff 
  a0b276:	62 61 7c 48 28 05 c0 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6bbbc0]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0b27d:	bb 6b ff 
  a0b280:	48 c1 e2 05          	shl    rdx,0x5
  a0b284:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a0b288:	31 d2                	xor    edx,edx
  a0b28a:	62 61 7c 48 28 0d ec 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6837ec]        # 8ea80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf30>
  a0b291:	37 68 ff 
  a0b294:	62 72 7d 48 18 05 c2 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff66a1c2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0b29b:	a1 66 ff 
  a0b29e:	62 61 7c 48 28 15 18 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff683818]        # 8eac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf70>
  a0b2a5:	38 68 ff 
  a0b2a8:	62 72 7d 48 18 15 22 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff66a022]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0b2af:	a0 66 ff 
  a0b2b2:	62 61 7c 48 28 1d 44 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff683844]        # 8eb00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bfb0>
  a0b2b9:	38 68 ff 
  a0b2bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a0b2c0:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a0b2c5:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a0b2cb:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a0b2d2:	10 
  a0b2d3:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a0b2da:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a0b2e0:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a0b2e7:	30 
  a0b2e8:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a0b2ef:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a0b2f5:	62 72 35 40 7f e9    	vpermt2ps zmm13,zmm25,zmm1
  a0b2fb:	62 72 2d 40 7f e1    	vpermt2ps zmm12,zmm26,zmm1
  a0b301:	c5 78 10 74 17 50    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x50]
  a0b307:	c4 63 09 21 74 17 54 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x54],0x10
  a0b30e:	10 
  a0b30f:	c4 62 79 18 7c 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x58]
  a0b316:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a0b31d:	30 00 00 00 
  a0b321:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a0b327:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a0b32e:	30 
  a0b32f:	62 53 7d 40 18 fe 02 	vinsertf32x4 zmm15,zmm16,xmm14,0x2
  a0b336:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a0b33c:	62 72 35 40 7f f1    	vpermt2ps zmm14,zmm25,zmm1
  a0b342:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x80]
  a0b349:	08 
  a0b34a:	62 f3 7d 00 21 6c 17 	vinsertps xmm5,xmm16,DWORD PTR [rdi+rdx*1+0x84],0x10
  a0b351:	21 10 
  a0b353:	c4 e2 79 18 b4 17 88 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x88]
  a0b35a:	00 00 00 
  a0b35d:	62 72 2d 40 7f f9    	vpermt2ps zmm15,zmm26,zmm1
  a0b363:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a0b369:	c4 e3 51 21 ac 17 8c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a0b370:	00 00 00 30 
  a0b374:	c5 fc 10 74 17 60    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  a0b37a:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a0b381:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a0b387:	62 e2 35 40 7f d1    	vpermt2ps zmm18,zmm25,zmm1
  a0b38d:	62 f2 2d 40 7f e9    	vpermt2ps zmm5,zmm26,zmm1
  a0b393:	c5 f8 10 b4 17 b0 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0xb0]
  a0b39a:	00 00 
  a0b39c:	c4 e3 49 21 b4 17 b4 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a0b3a3:	00 00 00 10 
  a0b3a7:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x90]
  a0b3ae:	90 00 00 00 
  a0b3b2:	c4 e2 79 18 bc 17 b8 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0xb8]
  a0b3b9:	00 00 00 
  a0b3bc:	c4 e3 41 0c f6 03    	vblendps xmm6,xmm7,xmm6,0x3
  a0b3c2:	c4 e3 49 21 b4 17 bc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a0b3c9:	00 00 00 30 
  a0b3cd:	62 e3 7d 40 18 c6 02 	vinsertf32x4 zmm16,zmm16,xmm6,0x2
  a0b3d4:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a0b3da:	62 e2 35 40 7f c9    	vpermt2ps zmm17,zmm25,zmm1
  a0b3e0:	62 e2 2d 40 7f c1    	vpermt2ps zmm16,zmm26,zmm1
  a0b3e6:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  a0b3ed:	00 00 
  a0b3ef:	c5 f8 10 bc 17 e0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xe0]
  a0b3f6:	00 00 
  a0b3f8:	c4 e3 41 21 bc 17 e4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a0b3ff:	00 00 00 10 
  a0b403:	c4 62 79 18 8c 17 e8 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0xe8]
  a0b40a:	00 00 00 
  a0b40d:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a0b413:	c4 e3 41 21 bc 17 ec 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xec],0x30
  a0b41a:	00 00 00 30 
  a0b41e:	62 f3 4d 48 18 f7 02 	vinsertf32x4 zmm6,zmm6,xmm7,0x2
  a0b425:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a0b42b:	62 f2 35 40 7f f9    	vpermt2ps zmm7,zmm25,zmm1
  a0b431:	62 f2 2d 40 7f f1    	vpermt2ps zmm6,zmm26,zmm1
  a0b437:	c5 78 10 8c 17 10 01 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x110]
  a0b43e:	00 00 
  a0b440:	c4 63 31 21 8c 17 14 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x114],0x10
  a0b447:	01 00 00 10 
  a0b44b:	c4 62 79 18 9c 17 18 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x118]
  a0b452:	01 00 00 
  a0b455:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0xf0]
  a0b45c:	f0 00 00 00 
  a0b460:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a0b466:	c4 63 31 21 8c 17 1c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a0b46d:	01 00 00 30 
  a0b471:	62 53 65 40 18 c9 02 	vinsertf32x4 zmm9,zmm19,xmm9,0x2
  a0b478:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a0b47e:	62 72 35 40 7f d9    	vpermt2ps zmm11,zmm25,zmm1
  a0b484:	62 72 2d 40 7f c9    	vpermt2ps zmm9,zmm26,zmm1
  a0b48a:	62 e1 6c 40 58 df    	vaddps zmm19,zmm18,zmm7
  a0b490:	62 a1 14 48 58 e3    	vaddps zmm20,zmm13,zmm19
  a0b496:	62 c1 24 48 58 ee    	vaddps zmm21,zmm11,zmm14
  a0b49c:	62 32 3d 48 bc eb    	vfnmadd231ps zmm13,zmm8,zmm19
  a0b4a2:	62 e1 54 48 58 de    	vaddps zmm19,zmm5,zmm6
  a0b4a8:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a0b4ae:	62 b1 74 40 58 f5    	vaddps zmm6,zmm17,zmm21
  a0b4b4:	62 a2 3d 48 bc cd    	vfnmadd231ps zmm17,zmm8,zmm21
  a0b4ba:	62 c1 34 48 58 ef    	vaddps zmm21,zmm9,zmm15
  a0b4c0:	62 51 34 48 5c cf    	vsubps zmm9,zmm9,zmm15
  a0b4c6:	62 a1 1c 48 58 f3    	vaddps zmm22,zmm12,zmm19
  a0b4cc:	62 32 3d 48 bc e3    	vfnmadd231ps zmm12,zmm8,zmm19
  a0b4d2:	62 61 5c 40 58 e6    	vaddps zmm28,zmm20,zmm6
  a0b4d8:	62 f1 6c 40 5c ff    	vsubps zmm7,zmm18,zmm7
  a0b4de:	62 a1 7c 40 58 d5    	vaddps zmm18,zmm16,zmm21
  a0b4e4:	62 a2 3d 48 bc c5    	vfnmadd231ps zmm16,zmm8,zmm21
  a0b4ea:	62 31 4c 40 58 fa    	vaddps zmm15,zmm22,zmm18
  a0b4f0:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a0b4f6:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a0b4fc:	62 71 14 48 58 f5    	vaddps zmm14,zmm13,zmm5
  a0b502:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a0b508:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a0b50e:	62 51 74 40 58 e9    	vaddps zmm13,zmm17,zmm9
  a0b514:	62 d1 44 48 59 fa    	vmulps zmm7,zmm7,zmm10
  a0b51a:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a0b520:	62 e1 1c 48 5c cf    	vsubps zmm17,zmm12,zmm7
  a0b526:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a0b52c:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a0b532:	62 51 7c 40 5c e3    	vsubps zmm12,zmm16,zmm11
  a0b538:	62 31 24 48 58 d8    	vaddps zmm11,zmm11,zmm16
  a0b53e:	62 c1 0c 48 5c c5    	vsubps zmm16,zmm14,zmm13
  a0b544:	62 f1 5c 40 5c f6    	vsubps zmm6,zmm20,zmm6
  a0b54a:	62 c1 74 40 5c dc    	vsubps zmm19,zmm17,zmm12
  a0b550:	62 a1 4c 40 5c e2    	vsubps zmm20,zmm22,zmm18
  a0b556:	62 c1 54 48 58 d1    	vaddps zmm18,zmm5,zmm9
  a0b55c:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a0b562:	62 c1 44 48 58 eb    	vaddps zmm21,zmm7,zmm11
  a0b568:	62 41 74 40 58 ec    	vaddps zmm29,zmm17,zmm12
  a0b56e:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a0b574:	62 c1 44 48 5c f3    	vsubps zmm22,zmm7,zmm11
  a0b57a:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a0b580:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a0b586:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a0b58c:	62 f2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm1
  a0b592:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a0b598:	62 f2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm1
  a0b59e:	62 91 7c 48 28 fc    	vmovaps zmm7,zmm28
  a0b5a4:	62 d2 65 48 7f fd    	vpermt2ps zmm7,zmm3,zmm13
  a0b5aa:	62 42 5d 48 7f e5    	vpermt2ps zmm28,zmm4,zmm13
  a0b5b0:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a0b5b6:	62 72 65 48 7f cd    	vpermt2ps zmm9,zmm3,zmm5
  a0b5bc:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a0b5c2:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a0b5c8:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a0b5ce:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a0b5d4:	62 31 9d 40 14 f2    	vunpcklpd zmm14,zmm28,zmm18
  a0b5da:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a0b5e0:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a0b5e6:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a0b5ec:	62 f1 fd 40 14 f6    	vunpcklpd zmm6,zmm16,zmm6
  a0b5f2:	62 71 c5 48 14 ed    	vunpcklpd zmm13,zmm7,zmm5
  a0b5f8:	62 e1 c5 48 15 c5    	vunpckhpd zmm16,zmm7,zmm5
  a0b5fe:	62 d1 b5 48 14 eb    	vunpcklpd zmm5,zmm9,zmm11
  a0b604:	62 d1 b5 48 15 fb    	vunpckhpd zmm7,zmm9,zmm11
  a0b60a:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0b610:	62 72 45 40 7f e5    	vpermt2ps zmm12,zmm23,zmm5
  a0b616:	62 72 3d 40 7f ed    	vpermt2ps zmm13,zmm24,zmm5
  a0b61c:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a0b622:	62 e2 45 40 7f d7    	vpermt2ps zmm18,zmm23,zmm7
  a0b628:	62 e2 3d 40 7f c7    	vpermt2ps zmm16,zmm24,zmm7
  a0b62e:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a0b634:	62 e2 45 40 7f ce    	vpermt2ps zmm17,zmm23,zmm6
  a0b63a:	62 72 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm6
  a0b640:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a0b646:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a0b64c:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a0b652:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a0b658:	62 62 7d 48 7f e9    	vpermt2ps zmm29,zmm0,zmm1
  a0b65e:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0b664:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a0b66a:	62 92 65 48 7f ed    	vpermt2ps zmm5,zmm3,zmm29
  a0b670:	62 12 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm29
  a0b676:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a0b67c:	62 b2 65 48 7f f6    	vpermt2ps zmm6,zmm3,zmm22
  a0b682:	62 a2 5d 48 7f de    	vpermt2ps zmm19,zmm4,zmm22
  a0b688:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a0b68e:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a0b694:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a0b69a:	62 a1 85 48 14 ed    	vunpcklpd zmm21,zmm15,zmm21
  a0b6a0:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a0b6a6:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a0b6ac:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a0b6b2:	62 31 e5 40 14 dc    	vunpcklpd zmm11,zmm19,zmm20
  a0b6b8:	62 e1 d5 48 14 df    	vunpcklpd zmm19,zmm5,zmm7
  a0b6be:	62 f1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm7
  a0b6c4:	62 d1 cd 48 14 f9    	vunpcklpd zmm7,zmm6,zmm9
  a0b6ca:	62 d1 cd 48 15 f1    	vunpckhpd zmm6,zmm6,zmm9
  a0b6d0:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a0b6d6:	62 72 45 40 7f ff    	vpermt2ps zmm15,zmm23,zmm7
  a0b6dc:	62 e2 3d 40 7f df    	vpermt2ps zmm19,zmm24,zmm7
  a0b6e2:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a0b6e8:	62 f2 45 40 7f fe    	vpermt2ps zmm7,zmm23,zmm6
  a0b6ee:	62 f2 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm6
  a0b6f4:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a0b6fa:	62 d2 45 40 7f f3    	vpermt2ps zmm6,zmm23,zmm11
  a0b700:	62 c2 3d 40 7f eb    	vpermt2ps zmm21,zmm24,zmm11
  a0b706:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a0b70d:	62 71 7c 48 10 59 05 	vmovups zmm11,ZMMWORD PTR [rcx+0x140]
  a0b714:	62 c1 6c 40 59 e1    	vmulps zmm20,zmm18,zmm9
  a0b71a:	62 c2 45 48 bc e3    	vfnmadd231ps zmm20,zmm7,zmm11
  a0b720:	62 d1 44 48 59 f9    	vmulps zmm7,zmm7,zmm9
  a0b726:	62 71 7c 48 10 49 08 	vmovups zmm9,ZMMWORD PTR [rcx+0x200]
  a0b72d:	62 b2 25 48 b8 fa    	vfmadd231ps zmm7,zmm11,zmm18
  a0b733:	62 71 7c 48 10 59 09 	vmovups zmm11,ZMMWORD PTR [rcx+0x240]
  a0b73a:	62 c1 74 40 59 d1    	vmulps zmm18,zmm17,zmm9
  a0b740:	62 c2 4d 48 bc d3    	vfnmadd231ps zmm18,zmm6,zmm11
  a0b746:	62 d1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm9
  a0b74c:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a0b753:	62 b2 25 48 b8 f1    	vfmadd231ps zmm6,zmm11,zmm17
  a0b759:	62 71 7c 48 10 59 07 	vmovups zmm11,ZMMWORD PTR [rcx+0x1c0]
  a0b760:	62 c1 7c 40 59 c9    	vmulps zmm17,zmm16,zmm9
  a0b766:	62 c2 55 48 bc cb    	vfnmadd231ps zmm17,zmm5,zmm11
  a0b76c:	62 d1 54 48 59 e9    	vmulps zmm5,zmm5,zmm9
  a0b772:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a0b779:	62 b2 25 48 b8 e8    	vfmadd231ps zmm5,zmm11,zmm16
  a0b77f:	62 71 7c 48 10 59 0b 	vmovups zmm11,ZMMWORD PTR [rcx+0x2c0]
  a0b786:	62 c1 0c 48 59 c1    	vmulps zmm16,zmm14,zmm9
  a0b78c:	62 c2 55 40 bc c3    	vfnmadd231ps zmm16,zmm21,zmm11
  a0b792:	62 51 54 40 59 c9    	vmulps zmm9,zmm21,zmm9
  a0b798:	62 e1 7c 48 10 69 02 	vmovups zmm21,ZMMWORD PTR [rcx+0x80]
  a0b79f:	62 52 25 48 b8 ce    	vfmadd231ps zmm9,zmm11,zmm14
  a0b7a5:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a0b7ac:	62 31 14 48 59 f5    	vmulps zmm14,zmm13,zmm21
  a0b7b2:	62 52 65 40 bc f3    	vfnmadd231ps zmm14,zmm19,zmm11
  a0b7b8:	62 a1 64 40 59 dd    	vmulps zmm19,zmm19,zmm21
  a0b7be:	62 a1 5c 40 58 ea    	vaddps zmm21,zmm20,zmm18
  a0b7c4:	62 c2 25 48 b8 dd    	vfmadd231ps zmm19,zmm11,zmm13
  a0b7ca:	62 31 1c 48 58 dd    	vaddps zmm11,zmm12,zmm21
  a0b7d0:	62 51 7c 40 58 ee    	vaddps zmm13,zmm16,zmm14
  a0b7d6:	62 32 3d 48 bc e5    	vfnmadd231ps zmm12,zmm8,zmm21
  a0b7dc:	62 e1 44 48 58 ee    	vaddps zmm21,zmm7,zmm6
  a0b7e2:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a0b7e8:	62 d1 74 40 58 fd    	vaddps zmm7,zmm17,zmm13
  a0b7ee:	62 c2 3d 48 bc cd    	vfnmadd231ps zmm17,zmm8,zmm13
  a0b7f4:	62 31 34 48 58 eb    	vaddps zmm13,zmm9,zmm19
  a0b7fa:	62 31 34 48 5c cb    	vsubps zmm9,zmm9,zmm19
  a0b800:	62 c1 54 40 58 df    	vaddps zmm19,zmm21,zmm15
  a0b806:	62 32 3d 48 bc fd    	vfnmadd231ps zmm15,zmm8,zmm21
  a0b80c:	62 a1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm18
  a0b812:	62 c1 54 48 58 e5    	vaddps zmm20,zmm5,zmm13
  a0b818:	62 d2 3d 48 bc ed    	vfnmadd231ps zmm5,zmm8,zmm13
  a0b81e:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a0b824:	62 51 7c 40 5c ee    	vsubps zmm13,zmm16,zmm14
  a0b82a:	62 71 1c 48 58 f6    	vaddps zmm14,zmm12,zmm6
  a0b830:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a0b836:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a0b83c:	62 51 74 40 58 e1    	vaddps zmm12,zmm17,zmm9
  a0b842:	62 c1 6c 40 59 c2    	vmulps zmm16,zmm18,zmm10
  a0b848:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a0b84e:	62 a1 04 48 5c c8    	vsubps zmm17,zmm15,zmm16
  a0b854:	62 51 14 48 59 ea    	vmulps zmm13,zmm13,zmm10
  a0b85a:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a0b860:	62 c1 54 48 5c c5    	vsubps zmm16,zmm5,zmm13
  a0b866:	62 d1 54 48 58 ed    	vaddps zmm5,zmm5,zmm13
  a0b86c:	62 51 0c 48 5c ec    	vsubps zmm13,zmm14,zmm12
  a0b872:	62 51 0c 48 58 e4    	vaddps zmm12,zmm14,zmm12
  a0b878:	62 31 74 40 5c f0    	vsubps zmm14,zmm17,zmm16
  a0b87e:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a0b884:	62 c1 4c 48 58 c9    	vaddps zmm17,zmm6,zmm9
  a0b88a:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a0b890:	62 71 04 48 58 cd    	vaddps zmm9,zmm15,zmm5
  a0b896:	62 f1 04 48 5c ed    	vsubps zmm5,zmm15,zmm5
  a0b89c:	62 71 24 48 5c ff    	vsubps zmm15,zmm11,zmm7
  a0b8a2:	62 f1 24 48 58 ff    	vaddps zmm7,zmm11,zmm7
  a0b8a8:	62 31 64 40 5c dc    	vsubps zmm11,zmm19,zmm20
  a0b8ae:	62 a1 64 40 58 d4    	vaddps zmm18,zmm19,zmm20
  a0b8b4:	62 b2 25 40 7f fa    	vpermt2ps zmm7,zmm27,zmm18
  a0b8ba:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm7,0x2
  a0b8c1:	02 02 
  a0b8c3:	c5 fc 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm7
  a0b8c8:	62 52 25 40 7f ee    	vpermt2ps zmm13,zmm27,zmm14
  a0b8ce:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm13,0x2
  a0b8d5:	05 02 
  a0b8d7:	c5 7c 11 6c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm13
  a0b8dd:	62 c2 25 40 7f c9    	vpermt2ps zmm17,zmm27,zmm9
  a0b8e3:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm17,0x2
  a0b8ea:	08 02 
  a0b8ec:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm17
  a0b8f3:	03 
  a0b8f4:	62 52 25 40 7f fb    	vpermt2ps zmm15,zmm27,zmm11
  a0b8fa:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm15,0x2
  a0b901:	0b 02 
  a0b903:	c5 7c 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm15
  a0b90a:	00 00 
  a0b90c:	62 32 25 40 7f e0    	vpermt2ps zmm12,zmm27,zmm16
  a0b912:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm12,0x2
  a0b919:	0e 02 
  a0b91b:	c5 7c 11 a4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm12
  a0b922:	00 00 
  a0b924:	62 f2 25 40 7f f5    	vpermt2ps zmm6,zmm27,zmm5
  a0b92a:	62 f3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm6,0x2
  a0b931:	11 02 
  a0b933:	c5 fc 11 b4 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm6
  a0b93a:	00 00 
  a0b93c:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a0b943:	48 39 d0             	cmp    rax,rdx
  a0b946:	0f 85 74 f9 ff ff    	jne    a0b2c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a0b94c:	c5 f8 77             	vzeroupper
  a0b94f:	c3                   	ret
