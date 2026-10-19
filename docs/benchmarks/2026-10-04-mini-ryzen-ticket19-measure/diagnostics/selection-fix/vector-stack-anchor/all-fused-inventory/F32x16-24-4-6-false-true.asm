
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2e240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2e240:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff698d36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2e247:	8d 69 ff 
  a2e24a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a2e24e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a2e252:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a2e258:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff698c9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2e25f:	8c 69 ff 
  a2e262:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff698cd4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2e269:	8c 69 ff 
  a2e26c:	62 f1 7c 48 28 2d 8a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff698b8a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2e273:	8b 69 ff 
  a2e276:	62 f1 7c 48 28 35 c0 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff698bc0]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2e27d:	8b 69 ff 
  a2e280:	48 c1 e2 06          	shl    rdx,0x6
  a2e284:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a2e288:	31 d2                	xor    edx,edx
  a2e28a:	62 61 7c 48 28 05 2c 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66282c]        # 90ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1df70>
  a2e291:	28 66 ff 
  a2e294:	62 62 7d 48 18 1d c2 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff6471c2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2e29b:	71 64 ff 
  a2e29e:	62 61 7c 48 28 0d 58 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff662858]        # 90b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dfb0>
  a2e2a5:	28 66 ff 
  a2e2a8:	62 62 7d 48 18 15 22 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff647022]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2e2af:	70 64 ff 
  a2e2b2:	c5 7c 28 1d 26 8f 64 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff648f26]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a2e2b9:	ff 
  a2e2ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  a2e2c0:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a2e2c5:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a2e2cb:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a2e2d2:	10 
  a2e2d3:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a2e2da:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a2e2e0:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a2e2e7:	30 
  a2e2e8:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a2e2ef:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a2e2f5:	62 72 3d 40 7f e9    	vpermt2ps zmm13,zmm24,zmm1
  a2e2fb:	62 72 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm1
  a2e301:	c5 78 10 74 17 50    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x50]
  a2e307:	c4 63 09 21 74 17 54 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x54],0x10
  a2e30e:	10 
  a2e30f:	c4 62 79 18 7c 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x58]
  a2e316:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a2e31d:	30 00 00 00 
  a2e321:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a2e327:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a2e32e:	30 
  a2e32f:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a2e336:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a2e33c:	62 72 3d 40 7f f9    	vpermt2ps zmm15,zmm24,zmm1
  a2e342:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x80]
  a2e349:	08 
  a2e34a:	62 f3 7d 00 21 7c 17 	vinsertps xmm7,xmm16,DWORD PTR [rdi+rdx*1+0x84],0x10
  a2e351:	21 10 
  a2e353:	c4 62 79 18 8c 17 88 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x88]
  a2e35a:	00 00 00 
  a2e35d:	62 72 35 40 7f f1    	vpermt2ps zmm14,zmm25,zmm1
  a2e363:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a2e369:	c4 e3 41 21 bc 17 8c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a2e370:	00 00 00 30 
  a2e374:	c5 7c 10 4c 17 60    	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x60]
  a2e37a:	62 f3 35 48 18 ff 02 	vinsertf32x4 zmm7,zmm9,xmm7,0x2
  a2e381:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a2e387:	62 72 3d 40 7f c9    	vpermt2ps zmm9,zmm24,zmm1
  a2e38d:	62 f2 35 40 7f f9    	vpermt2ps zmm7,zmm25,zmm1
  a2e393:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xb0]
  a2e39a:	0b 
  a2e39b:	62 73 7d 00 21 54 17 	vinsertps xmm10,xmm16,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a2e3a2:	2d 10 
  a2e3a4:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x90]
  a2e3ab:	90 00 00 00 
  a2e3af:	c4 62 79 18 84 17 b8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0xb8]
  a2e3b6:	00 00 00 
  a2e3b9:	c4 43 39 0c c2 03    	vblendps xmm8,xmm8,xmm10,0x3
  a2e3bf:	c4 63 39 21 84 17 bc 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a2e3c6:	00 00 00 30 
  a2e3ca:	62 53 7d 40 18 c0 02 	vinsertf32x4 zmm8,zmm16,xmm8,0x2
  a2e3d1:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a2e3d7:	62 72 3d 40 7f d1    	vpermt2ps zmm10,zmm24,zmm1
  a2e3dd:	62 72 35 40 7f c1    	vpermt2ps zmm8,zmm25,zmm1
  a2e3e3:	62 c1 14 48 58 d1    	vaddps zmm18,zmm13,zmm9
  a2e3e9:	62 c1 04 48 58 da    	vaddps zmm19,zmm15,zmm10
  a2e3ef:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a2e3f5:	62 e1 1c 48 58 ef    	vaddps zmm21,zmm12,zmm7
  a2e3fb:	62 c1 0c 48 58 f0    	vaddps zmm22,zmm14,zmm8
  a2e401:	62 a1 54 40 58 c6    	vaddps zmm16,zmm21,zmm22
  a2e407:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a2e40d:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a2e413:	62 51 34 48 58 f0    	vaddps zmm14,zmm9,zmm8
  a2e419:	62 f1 1c 48 5c ff    	vsubps zmm7,zmm12,zmm7
  a2e41f:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a2e425:	62 e1 2c 48 58 cf    	vaddps zmm17,zmm10,zmm7
  a2e42b:	62 31 6c 40 5c e3    	vsubps zmm12,zmm18,zmm19
  a2e431:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a2e437:	62 51 34 48 5c c0    	vsubps zmm8,zmm9,zmm8
  a2e43d:	62 c1 44 48 5c d2    	vsubps zmm18,zmm7,zmm10
  a2e443:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a2e449:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a2e44f:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a2e455:	62 72 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm1
  a2e45b:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a2e461:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a2e467:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a2e46d:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a2e473:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a2e479:	62 72 5d 48 7f f2    	vpermt2ps zmm14,zmm4,zmm2
  a2e47f:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a2e485:	62 72 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm2
  a2e48b:	62 72 5d 48 7f e2    	vpermt2ps zmm12,zmm4,zmm2
  a2e491:	62 51 dd 40 14 ec    	vunpcklpd zmm13,zmm20,zmm12
  a2e497:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a2e49d:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a2e4a3:	62 72 5d 48 7f c2    	vpermt2ps zmm8,zmm4,zmm2
  a2e4a9:	62 51 8d 48 14 c0    	vunpcklpd zmm8,zmm14,zmm8
  a2e4af:	62 51 c5 48 14 f2    	vunpcklpd zmm14,zmm7,zmm10
  a2e4b5:	62 51 c5 48 15 fa    	vunpckhpd zmm15,zmm7,zmm10
  a2e4bb:	62 d1 b5 48 14 fc    	vunpcklpd zmm7,zmm9,zmm12
  a2e4c1:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  a2e4c7:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a2e4cd:	62 72 55 48 7f e7    	vpermt2ps zmm12,zmm5,zmm7
  a2e4d3:	62 72 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm7
  a2e4d9:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a2e4df:	62 c2 55 48 7f e1    	vpermt2ps zmm20,zmm5,zmm9
  a2e4e5:	62 52 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm9
  a2e4eb:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a2e4f1:	62 c2 55 48 7f d8    	vpermt2ps zmm19,zmm5,zmm8
  a2e4f7:	62 52 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm8
  a2e4fd:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a2e503:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a2e509:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a2e50f:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a2e515:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a2e51b:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a2e521:	62 e2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm2
  a2e527:	62 31 7c 48 28 c1    	vmovaps zmm8,zmm17
  a2e52d:	62 72 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm2
  a2e533:	62 e2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm2
  a2e539:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a2e53f:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a2e545:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a2e54b:	62 a1 fd 40 14 f5    	vunpcklpd zmm22,zmm16,zmm21
  a2e551:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a2e557:	62 72 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm2
  a2e55d:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a2e563:	62 a1 f5 40 14 c2    	vunpcklpd zmm16,zmm17,zmm18
  a2e569:	62 c1 c5 48 14 e9    	vunpcklpd zmm21,zmm7,zmm9
  a2e56f:	62 d1 c5 48 15 f9    	vunpckhpd zmm7,zmm7,zmm9
  a2e575:	62 51 bd 48 14 ca    	vunpcklpd zmm9,zmm8,zmm10
  a2e57b:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  a2e581:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a2e587:	62 c2 55 48 7f d1    	vpermt2ps zmm18,zmm5,zmm9
  a2e58d:	62 c2 4d 48 7f e9    	vpermt2ps zmm21,zmm6,zmm9
  a2e593:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a2e599:	62 52 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm8
  a2e59f:	62 d2 4d 48 7f f8    	vpermt2ps zmm7,zmm6,zmm8
  a2e5a5:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a2e5ab:	62 32 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm16
  a2e5b1:	62 a2 4d 48 7f f0    	vpermt2ps zmm22,zmm6,zmm16
  a2e5b7:	62 71 7c 48 10 51 02 	vmovups zmm10,ZMMWORD PTR [rcx+0x80]
  a2e5be:	62 61 7c 48 10 61 03 	vmovups zmm28,ZMMWORD PTR [rcx+0xc0]
  a2e5c5:	62 e1 7c 48 10 49 04 	vmovups zmm17,ZMMWORD PTR [rcx+0x100]
  a2e5cc:	62 e1 7c 48 10 79 05 	vmovups zmm23,ZMMWORD PTR [rcx+0x140]
  a2e5d3:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a2e5da:	62 a1 5c 40 59 c1    	vmulps zmm16,zmm20,zmm17
  a2e5e0:	62 a2 35 48 bc c7    	vfnmadd231ps zmm16,zmm9,zmm23
  a2e5e6:	62 a1 34 48 59 c9    	vmulps zmm17,zmm9,zmm17
  a2e5ec:	62 71 7c 48 10 49 08 	vmovups zmm9,ZMMWORD PTR [rcx+0x200]
  a2e5f3:	62 a2 45 40 b8 cc    	vfmadd231ps zmm17,zmm23,zmm20
  a2e5f9:	62 61 7c 48 10 71 09 	vmovups zmm30,ZMMWORD PTR [rcx+0x240]
  a2e600:	62 c1 64 40 59 f9    	vmulps zmm23,zmm19,zmm9
  a2e606:	62 82 3d 48 bc fe    	vfnmadd231ps zmm23,zmm8,zmm30
  a2e60c:	62 c1 3c 48 59 e1    	vmulps zmm20,zmm8,zmm9
  a2e612:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a2e619:	62 a2 0d 40 b8 e3    	vfmadd231ps zmm20,zmm30,zmm19
  a2e61f:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a2e626:	62 81 04 48 59 dd    	vmulps zmm19,zmm15,zmm29
  a2e62c:	62 c2 45 48 bc d8    	vfnmadd231ps zmm19,zmm7,zmm8
  a2e632:	62 91 44 48 59 fd    	vmulps zmm7,zmm7,zmm29
  a2e638:	62 61 7c 48 10 69 0b 	vmovups zmm29,ZMMWORD PTR [rcx+0x2c0]
  a2e63f:	62 d2 3d 48 b8 ff    	vfmadd231ps zmm7,zmm8,zmm15
  a2e645:	62 31 7c 40 58 c7    	vaddps zmm8,zmm16,zmm23
  a2e64b:	62 51 14 48 59 f9    	vmulps zmm15,zmm13,zmm9
  a2e651:	62 12 4d 40 bc fd    	vfnmadd231ps zmm15,zmm22,zmm29
  a2e657:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a2e65d:	62 c1 0c 48 59 f2    	vmulps zmm22,zmm14,zmm10
  a2e663:	62 82 55 40 bc f4    	vfnmadd231ps zmm22,zmm21,zmm28
  a2e669:	62 52 15 40 b8 cd    	vfmadd231ps zmm9,zmm29,zmm13
  a2e66f:	62 21 04 48 58 ee    	vaddps zmm29,zmm15,zmm22
  a2e675:	62 21 74 40 58 f4    	vaddps zmm30,zmm17,zmm20
  a2e67b:	62 51 54 40 59 d2    	vmulps zmm10,zmm21,zmm10
  a2e681:	62 52 1d 40 b8 d6    	vfmadd231ps zmm10,zmm28,zmm14
  a2e687:	62 51 34 48 58 f2    	vaddps zmm14,zmm9,zmm10
  a2e68d:	62 11 7c 48 28 eb    	vmovaps zmm13,zmm27
  a2e693:	62 52 3d 48 ac ec    	vfnmadd213ps zmm13,zmm8,zmm12
  a2e699:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a2e69f:	62 e2 0d 48 ac ef    	vfnmadd213ps zmm21,zmm14,zmm7
  a2e6a5:	c5 0c 58 f7          	vaddps ymm14,ymm14,ymm7
  a2e6a9:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a2e6af:	62 b2 0d 40 ac fa    	vfnmadd213ps zmm7,zmm30,zmm18
  a2e6b5:	62 a1 0c 20 58 d2    	vaddps ymm18,ymm30,ymm18
  a2e6bb:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a2e6c1:	62 22 15 40 ac e3    	vfnmadd213ps zmm28,zmm29,zmm19
  a2e6c7:	62 81 64 20 58 dd    	vaddps ymm19,ymm19,ymm29
  a2e6cd:	62 41 6c 20 58 ee    	vaddps ymm29,ymm18,ymm14
  a2e6d3:	c4 41 1c 58 c0       	vaddps ymm8,ymm12,ymm8
  a2e6d8:	62 31 3c 08 58 e3    	vaddps xmm12,xmm8,xmm19
  a2e6de:	62 12 25 28 7f e5    	vpermt2ps ymm12,ymm11,ymm29
  a2e6e4:	c5 7c 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm12
  a2e6e9:	62 31 04 28 5c e6    	vsubps ymm12,ymm15,ymm22
  a2e6ef:	62 11 1c 28 59 e2    	vmulps ymm12,ymm12,ymm26
  a2e6f5:	62 51 54 20 5c fc    	vsubps ymm15,ymm21,ymm12
  a2e6fb:	62 a1 7c 20 5c c7    	vsubps ymm16,ymm16,ymm23
  a2e701:	62 81 7c 20 59 c2    	vmulps ymm16,ymm16,ymm26
  a2e707:	62 a1 44 28 5c f0    	vsubps ymm22,ymm7,ymm16
  a2e70d:	62 c1 4c 20 5c ff    	vsubps ymm23,ymm22,ymm15
  a2e713:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  a2e718:	62 11 34 28 59 ca    	vmulps ymm9,ymm9,ymm26
  a2e71e:	62 51 1c 20 58 d1    	vaddps ymm10,ymm28,ymm9
  a2e724:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  a2e72a:	62 81 74 20 59 ca    	vmulps ymm17,ymm17,ymm26
  a2e730:	62 a1 14 28 58 e1    	vaddps ymm20,ymm13,ymm17
  a2e736:	62 41 5c 00 5c ea    	vsubps xmm29,xmm20,xmm10
  a2e73c:	62 22 25 28 7f ef    	vpermt2ps ymm29,ymm11,ymm23
  a2e742:	62 61 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm29
  a2e749:	01 
  a2e74a:	62 51 54 20 58 e4    	vaddps ymm12,ymm21,ymm12
  a2e750:	62 f1 7c 20 58 ff    	vaddps ymm7,ymm16,ymm7
  a2e756:	62 51 1c 20 5c c9    	vsubps ymm9,ymm28,ymm9
  a2e75c:	62 c1 44 28 58 c4    	vaddps ymm16,ymm7,ymm12
  a2e762:	62 31 14 28 5c e9    	vsubps ymm13,ymm13,ymm17
  a2e768:	62 c1 14 08 58 c9    	vaddps xmm17,xmm13,xmm9
  a2e76e:	62 a2 25 28 7f c8    	vpermt2ps ymm17,ymm11,ymm16
  a2e774:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm17
  a2e77b:	02 
  a2e77c:	62 51 6c 20 5c f6    	vsubps ymm14,ymm18,ymm14
  a2e782:	62 31 3c 08 5c c3    	vsubps xmm8,xmm8,xmm19
  a2e788:	62 52 25 28 7f c6    	vpermt2ps ymm8,ymm11,ymm14
  a2e78e:	c5 7c 11 44 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm8
  a2e794:	62 51 4c 20 58 c7    	vaddps ymm8,ymm22,ymm15
  a2e79a:	62 51 5c 00 58 d2    	vaddps xmm10,xmm20,xmm10
  a2e7a0:	62 52 25 28 7f d0    	vpermt2ps ymm10,ymm11,ymm8
  a2e7a6:	c5 7c 11 94 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm10
  a2e7ad:	00 00 
  a2e7af:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  a2e7b4:	c4 41 10 5c c1       	vsubps xmm8,xmm13,xmm9
  a2e7b9:	62 72 25 28 7f c7    	vpermt2ps ymm8,ymm11,ymm7
  a2e7bf:	c5 7c 11 84 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm8
  a2e7c6:	00 00 
  a2e7c8:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a2e7cf:	48 39 d0             	cmp    rax,rdx
  a2e7d2:	0f 85 e8 fa ff ff    	jne    a2e2c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a2e7d8:	c5 f8 77             	vzeroupper
  a2e7db:	c3                   	ret
