
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5e240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5e240:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a5e245:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a5e249:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a5e24e:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  a5e253:	c5 78 10 4f 48       	vmovups xmm9,XMMWORD PTR [rdi+0x48]
  a5e258:	62 f3 75 48 18 e8 01 	vinsertf32x4 zmm5,zmm1,xmm0,0x1
  a5e25f:	62 f1 7c 48 28 1d 97 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff635597]        # 93800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20cb0>
  a5e266:	55 63 ff 
  a5e269:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a5e26d:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a5e273:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a5e279:	62 f1 7c 48 28 0d bd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6355bd]        # 93840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20cf0>
  a5e280:	55 63 ff 
  a5e283:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a5e289:	c5 fb 10 7f 28       	vmovsd xmm7,QWORD PTR [rdi+0x28]
  a5e28e:	62 73 5d 48 18 c7 01 	vinsertf32x4 zmm8,zmm4,xmm7,0x1
  a5e295:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a5e29b:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a5e2a1:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a5e2a7:	c5 fb 10 67 40       	vmovsd xmm4,QWORD PTR [rdi+0x40]
  a5e2ac:	62 f3 4d 48 18 f4 01 	vinsertf32x4 zmm6,zmm6,xmm4,0x1
  a5e2b3:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a5e2b9:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a5e2bf:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a5e2c5:	c5 fb 10 67 58       	vmovsd xmm4,QWORD PTR [rdi+0x58]
  a5e2ca:	62 73 35 48 18 cc 01 	vinsertf32x4 zmm9,zmm9,xmm4,0x1
  a5e2d1:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a5e2d7:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a5e2dd:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a5e2e3:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  a5e2e8:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a5e2ed:	62 73 1d 48 18 e4 01 	vinsertf32x4 zmm12,zmm12,xmm4,0x1
  a5e2f4:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a5e2fa:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a5e300:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a5e306:	c5 fb 10 a7 88 00 00 	vmovsd xmm4,QWORD PTR [rdi+0x88]
  a5e30d:	00 
  a5e30e:	c5 78 10 77 78       	vmovups xmm14,XMMWORD PTR [rdi+0x78]
  a5e313:	62 73 0d 48 18 f4 01 	vinsertf32x4 zmm14,zmm14,xmm4,0x1
  a5e31a:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a5e320:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a5e326:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a5e32c:	c5 fb 10 a7 a0 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xa0]
  a5e333:	00 
  a5e334:	62 e1 7c 08 10 47 09 	vmovups xmm16,XMMWORD PTR [rdi+0x90]
  a5e33b:	62 e3 7d 40 18 c4 01 	vinsertf32x4 zmm16,zmm16,xmm4,0x1
  a5e342:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a5e348:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a5e34e:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a5e354:	c5 fb 10 a7 b8 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xb8]
  a5e35b:	00 
  a5e35c:	62 e1 7c 08 10 97 a8 	vmovups xmm18,XMMWORD PTR [rdi+0xa8]
  a5e363:	00 00 00 
  a5e366:	62 e3 6d 40 18 d4 01 	vinsertf32x4 zmm18,zmm18,xmm4,0x1
  a5e36d:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a5e373:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a5e379:	62 c1 54 48 58 dc    	vaddps zmm19,zmm5,zmm12
  a5e37f:	62 a1 4c 48 58 e0    	vaddps zmm20,zmm6,zmm16
  a5e385:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a5e38b:	62 c1 3c 48 58 f6    	vaddps zmm22,zmm8,zmm14
  a5e391:	62 a1 34 48 58 fa    	vaddps zmm23,zmm9,zmm18
  a5e397:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a5e39d:	62 91 54 40 58 e0    	vaddps zmm4,zmm21,zmm24
  a5e3a3:	62 41 6c 48 58 cd    	vaddps zmm25,zmm2,zmm13
  a5e3a9:	62 21 2c 48 58 d1    	vaddps zmm26,zmm10,zmm17
  a5e3af:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a5e3b5:	62 41 44 48 58 e7    	vaddps zmm28,zmm7,zmm15
  a5e3bb:	62 61 24 48 58 eb    	vaddps zmm29,zmm11,zmm3
  a5e3c1:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a5e3c7:	62 91 24 40 58 ce    	vaddps zmm1,zmm27,zmm30
  a5e3cd:	62 d1 54 48 5c ec    	vsubps zmm5,zmm5,zmm12
  a5e3d3:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a5e3d9:	62 51 54 48 58 e2    	vaddps zmm12,zmm5,zmm10
  a5e3df:	62 51 3c 48 5c c6    	vsubps zmm8,zmm8,zmm14
  a5e3e5:	62 d1 44 48 5c ff    	vsubps zmm7,zmm7,zmm15
  a5e3eb:	62 71 3c 48 58 f7    	vaddps zmm14,zmm8,zmm7
  a5e3f1:	62 72 7d 48 18 3d a1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff616fa1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5e3f8:	6f 61 ff 
  a5e3fb:	62 51 0c 48 59 f7    	vmulps zmm14,zmm14,zmm15
  a5e401:	62 f1 24 48 5c db    	vsubps zmm3,zmm11,zmm3
  a5e407:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a5e40d:	62 51 64 48 5c d9    	vsubps zmm11,zmm3,zmm9
  a5e413:	62 51 24 48 59 df    	vmulps zmm11,zmm11,zmm15
  a5e419:	62 c1 0c 48 58 cb    	vaddps zmm17,zmm14,zmm11
  a5e41f:	62 a1 1c 48 58 d1    	vaddps zmm18,zmm12,zmm17
  a5e425:	62 51 6c 48 5c ed    	vsubps zmm13,zmm2,zmm13
  a5e42b:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a5e431:	62 c1 4c 48 58 c5    	vaddps zmm16,zmm6,zmm13
  a5e437:	62 d1 44 48 5c d0    	vsubps zmm2,zmm7,zmm8
  a5e43d:	62 d1 6c 48 59 ff    	vmulps zmm7,zmm2,zmm15
  a5e443:	62 f1 34 48 58 d3    	vaddps zmm2,zmm9,zmm3
  a5e449:	62 51 6c 48 59 c7    	vmulps zmm8,zmm2,zmm15
  a5e44f:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a5e455:	62 d1 7c 40 58 d1    	vaddps zmm2,zmm16,zmm9
  a5e45b:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a5e461:	62 81 1c 40 5c dd    	vsubps zmm19,zmm28,zmm29
  a5e467:	62 a1 04 48 58 e3    	vaddps zmm20,zmm15,zmm19
  a5e46d:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a5e473:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a5e479:	62 91 4c 40 58 d9    	vaddps zmm3,zmm22,zmm25
  a5e47f:	62 51 54 48 5c d2    	vsubps zmm10,zmm5,zmm10
  a5e485:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a5e48b:	62 71 2c 48 58 c7    	vaddps zmm8,zmm10,zmm7
  a5e491:	62 f1 14 48 5c f6    	vsubps zmm6,zmm13,zmm6
  a5e497:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a5e49d:	62 d1 4c 48 58 eb    	vaddps zmm5,zmm6,zmm11
  a5e4a3:	62 11 54 40 5c e8    	vsubps zmm13,zmm21,zmm24
  a5e4a9:	62 11 24 40 5c f6    	vsubps zmm14,zmm27,zmm30
  a5e4af:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a5e4b5:	62 51 7c 40 5c c9    	vsubps zmm9,zmm16,zmm9
  a5e4bb:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a5e4c1:	62 a1 34 40 5c c6    	vsubps zmm16,zmm25,zmm22
  a5e4c7:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a5e4cd:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a5e4d3:	62 71 7c 48 28 15 a3 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff668aa3]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5e4da:	8a 66 ff 
  a5e4dd:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a5e4e3:	62 e2 2d 48 7f d0    	vpermt2ps zmm18,zmm10,zmm0
  a5e4e9:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a5e4ef:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a5e4f5:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  a5e4fb:	62 72 2d 48 7f e0    	vpermt2ps zmm12,zmm10,zmm0
  a5e501:	62 72 2d 48 7f f8    	vpermt2ps zmm15,zmm10,zmm0
  a5e507:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a5e50d:	62 71 7c 48 28 1d e9 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6689e9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5e514:	89 66 ff 
  a5e517:	62 d2 25 48 7f e5    	vpermt2ps zmm4,zmm11,zmm13
  a5e51d:	62 c2 25 48 7f d4    	vpermt2ps zmm18,zmm11,zmm12
  a5e523:	62 c2 25 48 7f e7    	vpermt2ps zmm20,zmm11,zmm15
  a5e529:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a5e52f:	62 b1 dd 48 14 fc    	vunpcklpd zmm7,zmm4,zmm20
  a5e535:	62 31 dd 48 15 e4    	vunpckhpd zmm12,zmm4,zmm20
  a5e53b:	62 51 ed 40 14 e8    	vunpcklpd zmm13,zmm18,zmm8
  a5e541:	62 51 ed 40 15 c0    	vunpckhpd zmm8,zmm18,zmm8
  a5e547:	62 71 7c 48 28 3d af 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6688af]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5e54e:	88 66 ff 
  a5e551:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a5e557:	62 d2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm13
  a5e55d:	62 e1 7c 48 28 0d d9 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6688d9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5e564:	88 66 ff 
  a5e567:	62 d2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm13
  a5e56d:	62 52 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm8
  a5e573:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a5e579:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a5e57f:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a5e585:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a5e58b:	62 72 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm0
  a5e591:	62 72 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm0
  a5e597:	62 e2 2d 48 7f c0    	vpermt2ps zmm16,zmm10,zmm0
  a5e59d:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  a5e5a3:	62 d2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm14
  a5e5a9:	62 d2 25 48 7f d1    	vpermt2ps zmm2,zmm11,zmm9
  a5e5af:	62 b2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm16
  a5e5b5:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a5e5bb:	62 f1 f5 48 14 c3    	vunpcklpd zmm0,zmm1,zmm3
  a5e5c1:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  a5e5c7:	62 f1 ed 48 14 dd    	vunpcklpd zmm3,zmm2,zmm5
  a5e5cd:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a5e5d3:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a5e5d9:	62 f2 05 48 7f eb    	vpermt2ps zmm5,zmm15,zmm3
  a5e5df:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a5e5e5:	62 f2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm2
  a5e5eb:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a5e5f2:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a5e5f9:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a5e600:	62 71 7c 48 10 42 05 	vmovups zmm8,ZMMWORD PTR [rdx+0x140]
  a5e607:	62 71 44 48 59 ca    	vmulps zmm9,zmm7,zmm2
  a5e60d:	62 72 7d 48 bc cb    	vfnmadd231ps zmm9,zmm0,zmm3
  a5e613:	62 71 1c 48 59 d6    	vmulps zmm10,zmm12,zmm6
  a5e619:	62 52 75 48 bc d0    	vfnmadd231ps zmm10,zmm1,zmm8
  a5e61f:	62 51 34 48 58 da    	vaddps zmm11,zmm9,zmm10
  a5e625:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a5e62b:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a5e631:	62 f1 74 48 59 ce    	vmulps zmm1,zmm1,zmm6
  a5e637:	62 d2 3d 48 b8 cc    	vfmadd231ps zmm1,zmm8,zmm12
  a5e63d:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a5e643:	62 f2 7d 48 18 1d 13 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff616e13]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5e64a:	6e 61 ff 
  a5e64d:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a5e653:	62 f2 25 48 ac f4    	vfnmadd213ps zmm6,zmm11,zmm4
  a5e659:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a5e65f:	62 f2 7d 48 18 0d 6b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff616c6b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5e666:	6c 61 ff 
  a5e669:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a5e66f:	62 f1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm0
  a5e675:	62 f2 6d 48 ac dd    	vfnmadd213ps zmm3,zmm2,zmm5
  a5e67b:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a5e681:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a5e687:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a5e68d:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a5e693:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a5e699:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a5e69f:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  a5e6a5:	62 f1 7c 48 28 25 d1 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6351d1]        # 93880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d30>
  a5e6ac:	51 63 ff 
  a5e6af:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a5e6b5:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a5e6bb:	62 72 5d 48 7f c7    	vpermt2ps zmm8,zmm4,zmm7
  a5e6c1:	62 71 7c 48 11 46 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm8
  a5e6c8:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5e6ce:	62 f1 7c 48 11 4e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm1
  a5e6d5:	c5 f8 77             	vzeroupper
  a5e6d8:	c3                   	ret
