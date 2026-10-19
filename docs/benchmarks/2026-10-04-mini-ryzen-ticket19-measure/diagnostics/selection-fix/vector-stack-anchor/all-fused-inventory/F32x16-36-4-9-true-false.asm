
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5c080 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5c080:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a5c086:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  a5c08b:	62 f1 7c 48 28 15 6b 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff63746b]        # 93500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x209b0>
  a5c092:	74 63 ff 
  a5c095:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a5c09b:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a5c0a1:	62 f1 7c 48 28 25 95 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff637495]        # 93540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x209f0>
  a5c0a8:	74 63 ff 
  a5c0ab:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a5c0b1:	62 f1 7c 48 10 8f 48 	vmovups zmm1,ZMMWORD PTR [rdi+0x48]
  a5c0b8:	00 00 00 
  a5c0bb:	c5 fb 10 af 88 00 00 	vmovsd xmm5,QWORD PTR [rdi+0x88]
  a5c0c2:	00 
  a5c0c3:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a5c0c9:	62 f2 6d 48 7f f5    	vpermt2ps zmm6,zmm2,zmm5
  a5c0cf:	62 f2 5d 48 7f cd    	vpermt2ps zmm1,zmm4,zmm5
  a5c0d5:	62 f1 7c 48 10 bf 90 	vmovups zmm7,ZMMWORD PTR [rdi+0x90]
  a5c0dc:	00 00 00 
  a5c0df:	c5 fb 10 af d0 00 00 	vmovsd xmm5,QWORD PTR [rdi+0xd0]
  a5c0e6:	00 
  a5c0e7:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a5c0ed:	62 72 6d 48 7f c5    	vpermt2ps zmm8,zmm2,zmm5
  a5c0f3:	62 f2 5d 48 7f fd    	vpermt2ps zmm7,zmm4,zmm5
  a5c0f9:	62 71 7c 48 10 8f d8 	vmovups zmm9,ZMMWORD PTR [rdi+0xd8]
  a5c100:	00 00 00 
  a5c103:	c5 fb 10 af 18 01 00 	vmovsd xmm5,QWORD PTR [rdi+0x118]
  a5c10a:	00 
  a5c10b:	62 f2 35 48 77 d5    	vpermi2ps zmm2,zmm9,zmm5
  a5c111:	62 72 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm5
  a5c117:	62 f1 7c 48 58 e7    	vaddps zmm4,zmm0,zmm7
  a5c11d:	62 51 74 48 58 d9    	vaddps zmm11,zmm1,zmm9
  a5c123:	62 c1 5c 48 58 db    	vaddps zmm19,zmm4,zmm11
  a5c129:	62 51 64 48 58 e0    	vaddps zmm12,zmm3,zmm8
  a5c12f:	62 71 4c 48 58 ea    	vaddps zmm13,zmm6,zmm2
  a5c135:	62 d1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm13
  a5c13b:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a5c141:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a5c147:	62 f1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm2
  a5c14d:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a5c153:	62 f1 34 48 5c c9    	vsubps zmm1,zmm9,zmm1
  a5c159:	62 71 74 48 58 d3    	vaddps zmm10,zmm1,zmm3
  a5c15f:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a5c165:	62 51 1c 48 5c ed    	vsubps zmm13,zmm12,zmm13
  a5c16b:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a5c171:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a5c177:	62 f1 7c 48 28 0d ff 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66adff]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5c17e:	ad 66 ff 
  a5c181:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  a5c187:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a5c18d:	62 32 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm16
  a5c193:	62 e1 7c 48 28 15 23 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff66ae23]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5c19a:	ae 66 ff 
  a5c19d:	62 a2 6d 40 7f d8    	vpermt2ps zmm19,zmm18,zmm16
  a5c1a3:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a5c1a9:	62 32 75 48 7f d8    	vpermt2ps zmm11,zmm1,zmm16
  a5c1af:	62 b2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm16
  a5c1b5:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a5c1bb:	62 a2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm16
  a5c1c1:	62 b2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm16
  a5c1c7:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a5c1cd:	62 a2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm16
  a5c1d3:	62 b2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm16
  a5c1d9:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a5c1df:	62 a2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm17
  a5c1e5:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  a5c1ea:	62 52 6d 40 7f f6    	vpermt2ps zmm14,zmm18,zmm14
  a5c1f0:	62 71 7c 48 28 3d 06 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff66ad06]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5c1f7:	ad 66 ff 
  a5c1fa:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a5c200:	62 b2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm17
  a5c206:	62 e1 7c 48 28 25 30 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66ad30]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5c20d:	ad 66 ff 
  a5c210:	62 32 5d 40 7f c1    	vpermt2ps zmm8,zmm20,zmm17
  a5c216:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a5c21c:	62 a2 05 48 7f f9    	vpermt2ps zmm23,zmm15,zmm17
  a5c222:	62 32 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm17
  a5c228:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a5c22e:	62 32 05 48 7f c9    	vpermt2ps zmm9,zmm15,zmm17
  a5c234:	62 a2 5d 40 7f e9    	vpermt2ps zmm21,zmm20,zmm17
  a5c23a:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a5c240:	62 22 05 48 7f c1    	vpermt2ps zmm24,zmm15,zmm17
  a5c246:	62 a2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm17
  a5c24c:	62 c2 05 48 7f de    	vpermt2ps zmm19,zmm15,zmm14
  a5c252:	62 d2 05 48 7f f6    	vpermt2ps zmm6,zmm15,zmm14
  a5c258:	62 d2 05 48 7f e6    	vpermt2ps zmm4,zmm15,zmm14
  a5c25e:	62 f1 e5 40 14 d4    	vunpcklpd zmm2,zmm19,zmm4
  a5c264:	62 d2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm14
  a5c26a:	62 61 cd 48 14 c8    	vunpcklpd zmm25,zmm6,zmm0
  a5c270:	62 d1 e5 48 14 f9    	vunpcklpd zmm7,zmm3,zmm9
  a5c276:	62 51 e5 48 15 c9    	vunpckhpd zmm9,zmm3,zmm9
  a5c27c:	62 91 c5 40 14 f0    	vunpcklpd zmm6,zmm23,zmm24
  a5c282:	62 81 c5 40 15 f8    	vunpckhpd zmm23,zmm23,zmm24
  a5c288:	62 b1 bd 48 14 dd    	vunpcklpd zmm3,zmm8,zmm21
  a5c28e:	62 b1 bd 48 15 e5    	vunpckhpd zmm4,zmm8,zmm21
  a5c294:	62 21 a5 48 14 c6    	vunpcklpd zmm24,zmm11,zmm22
  a5c29a:	62 a1 a5 48 15 f6    	vunpckhpd zmm22,zmm11,zmm22
  a5c2a0:	62 e1 7c 48 28 1d 56 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66ab56]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5c2a7:	ab 66 ff 
  a5c2aa:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a5c2b0:	62 f2 65 40 7f c6    	vpermt2ps zmm0,zmm19,zmm6
  a5c2b6:	62 e1 7c 48 28 2d 80 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff66ab80]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5c2bd:	ab 66 ff 
  a5c2c0:	62 f2 55 40 7f fe    	vpermt2ps zmm7,zmm21,zmm6
  a5c2c6:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a5c2cc:	62 b2 65 40 7f f7    	vpermt2ps zmm6,zmm19,zmm23
  a5c2d2:	62 32 55 40 7f cf    	vpermt2ps zmm9,zmm21,zmm23
  a5c2d8:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a5c2de:	62 12 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm24
  a5c2e4:	62 92 55 40 7f d8    	vpermt2ps zmm3,zmm21,zmm24
  a5c2ea:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a5c2f0:	62 32 65 40 7f de    	vpermt2ps zmm11,zmm19,zmm22
  a5c2f6:	62 b2 55 40 7f e6    	vpermt2ps zmm4,zmm21,zmm22
  a5c2fc:	62 92 65 40 7f d1    	vpermt2ps zmm2,zmm19,zmm25
  a5c302:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a5c308:	62 a2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm16
  a5c30e:	62 b2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm16
  a5c314:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a5c31a:	62 a2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm16
  a5c320:	62 32 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm16
  a5c326:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a5c32c:	62 22 75 48 7f c0    	vpermt2ps zmm24,zmm1,zmm16
  a5c332:	62 32 6d 40 7f e8    	vpermt2ps zmm13,zmm18,zmm16
  a5c338:	62 b2 1d 48 77 c8    	vpermi2ps zmm1,zmm12,zmm16
  a5c33e:	62 32 6d 40 7f e0    	vpermt2ps zmm12,zmm18,zmm16
  a5c344:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a5c34a:	62 a2 05 48 7f c1    	vpermt2ps zmm16,zmm15,zmm17
  a5c350:	62 a2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm17
  a5c356:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a5c35c:	62 22 05 48 7f c9    	vpermt2ps zmm25,zmm15,zmm17
  a5c362:	62 a2 5d 40 7f f9    	vpermt2ps zmm23,zmm20,zmm17
  a5c368:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a5c36e:	62 22 05 48 7f d1    	vpermt2ps zmm26,zmm15,zmm17
  a5c374:	62 22 5d 40 7f c1    	vpermt2ps zmm24,zmm20,zmm17
  a5c37a:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a5c380:	62 22 05 48 7f d9    	vpermt2ps zmm27,zmm15,zmm17
  a5c386:	62 b2 5d 40 7f c9    	vpermt2ps zmm1,zmm20,zmm17
  a5c38c:	62 d2 05 48 7f ee    	vpermt2ps zmm5,zmm15,zmm14
  a5c392:	62 52 05 48 7f d6    	vpermt2ps zmm10,zmm15,zmm14
  a5c398:	62 52 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm14
  a5c39e:	62 51 d5 48 14 ed    	vunpcklpd zmm13,zmm5,zmm13
  a5c3a4:	62 52 05 48 7f e6    	vpermt2ps zmm12,zmm15,zmm14
  a5c3aa:	62 d1 ad 48 14 ec    	vunpcklpd zmm5,zmm10,zmm12
  a5c3b0:	62 81 fd 40 14 d2    	vunpcklpd zmm18,zmm16,zmm26
  a5c3b6:	62 11 fd 40 15 d2    	vunpckhpd zmm10,zmm16,zmm26
  a5c3bc:	62 11 b5 40 14 e3    	vunpcklpd zmm12,zmm25,zmm27
  a5c3c2:	62 81 b5 40 15 cb    	vunpckhpd zmm17,zmm25,zmm27
  a5c3c8:	62 11 cd 40 14 f0    	vunpcklpd zmm14,zmm22,zmm24
  a5c3ce:	62 81 cd 40 15 c0    	vunpckhpd zmm16,zmm22,zmm24
  a5c3d4:	62 e1 c5 40 14 e1    	vunpcklpd zmm20,zmm23,zmm1
  a5c3da:	62 e1 c5 40 15 f9    	vunpckhpd zmm23,zmm23,zmm1
  a5c3e0:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a5c3e6:	62 d2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm12
  a5c3ec:	62 c2 55 40 7f d4    	vpermt2ps zmm18,zmm21,zmm12
  a5c3f2:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a5c3f8:	62 32 65 40 7f f9    	vpermt2ps zmm15,zmm19,zmm17
  a5c3fe:	62 32 55 40 7f d1    	vpermt2ps zmm10,zmm21,zmm17
  a5c404:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a5c40a:	62 a2 65 40 7f f4    	vpermt2ps zmm22,zmm19,zmm20
  a5c410:	62 32 55 40 7f f4    	vpermt2ps zmm14,zmm21,zmm20
  a5c416:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5c41c:	62 32 65 40 7f e7    	vpermt2ps zmm12,zmm19,zmm23
  a5c422:	62 a2 55 40 7f c7    	vpermt2ps zmm16,zmm21,zmm23
  a5c428:	62 72 65 40 7f ed    	vpermt2ps zmm13,zmm19,zmm5
  a5c42e:	62 61 7c 48 10 42 02 	vmovups zmm24,ZMMWORD PTR [rdx+0x80]
  a5c435:	62 e1 7c 48 10 7a 03 	vmovups zmm23,ZMMWORD PTR [rdx+0xc0]
  a5c43c:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a5c443:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a5c44a:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a5c451:	62 61 7c 48 10 4a 07 	vmovups zmm25,ZMMWORD PTR [rdx+0x1c0]
  a5c458:	62 61 7c 48 10 52 08 	vmovups zmm26,ZMMWORD PTR [rdx+0x200]
  a5c45f:	62 e1 7c 48 10 5a 09 	vmovups zmm19,ZMMWORD PTR [rdx+0x240]
  a5c466:	62 b1 34 48 59 e9    	vmulps zmm5,zmm9,zmm17
  a5c46c:	62 92 2d 48 bc e9    	vfnmadd231ps zmm5,zmm10,zmm25
  a5c472:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a5c478:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a5c47f:	62 52 35 40 b8 d1    	vfmadd231ps zmm10,zmm25,zmm9
  a5c485:	62 61 7c 48 10 4a 0d 	vmovups zmm25,ZMMWORD PTR [rdx+0x340]
  a5c48c:	62 31 24 48 59 c9    	vmulps zmm9,zmm11,zmm17
  a5c492:	62 12 1d 48 bc c9    	vfnmadd231ps zmm9,zmm12,zmm25
  a5c498:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a5c49e:	62 61 7c 48 10 5a 0a 	vmovups zmm27,ZMMWORD PTR [rdx+0x280]
  a5c4a5:	62 52 35 40 b8 e3    	vfmadd231ps zmm12,zmm25,zmm11
  a5c4ab:	62 71 7c 48 10 5a 0b 	vmovups zmm11,ZMMWORD PTR [rdx+0x2c0]
  a5c4b2:	62 81 44 48 59 c8    	vmulps zmm17,zmm7,zmm24
  a5c4b8:	62 a2 6d 40 bc cf    	vfnmadd231ps zmm17,zmm18,zmm23
  a5c4be:	62 81 6c 40 59 d0    	vmulps zmm18,zmm18,zmm24
  a5c4c4:	62 61 7c 48 10 42 0e 	vmovups zmm24,ZMMWORD PTR [rdx+0x380]
  a5c4cb:	62 e2 45 40 b8 d7    	vfmadd231ps zmm18,zmm23,zmm7
  a5c4d1:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a5c4d8:	62 81 3c 48 59 fa    	vmulps zmm23,zmm8,zmm26
  a5c4de:	62 a2 4d 40 bc fb    	vfnmadd231ps zmm23,zmm22,zmm19
  a5c4e4:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a5c4ea:	62 61 7c 48 10 4a 10 	vmovups zmm25,ZMMWORD PTR [rdx+0x400]
  a5c4f1:	62 c2 65 40 b8 f0    	vfmadd231ps zmm22,zmm19,zmm8
  a5c4f7:	62 71 7c 48 10 42 11 	vmovups zmm8,ZMMWORD PTR [rdx+0x440]
  a5c4fe:	62 01 5c 48 59 d0    	vmulps zmm26,zmm4,zmm24
  a5c504:	62 62 7d 40 bc d7    	vfnmadd231ps zmm26,zmm16,zmm7
  a5c50a:	62 81 7c 40 59 c0    	vmulps zmm16,zmm16,zmm24
  a5c510:	62 01 44 40 58 c2    	vaddps zmm24,zmm23,zmm26
  a5c516:	62 e2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm4
  a5c51c:	62 91 74 40 58 e0    	vaddps zmm4,zmm17,zmm24
  a5c522:	62 a1 4c 48 59 dc    	vmulps zmm19,zmm6,zmm20
  a5c528:	62 a2 05 48 bc dd    	vfnmadd231ps zmm19,zmm15,zmm21
  a5c52e:	62 a1 04 48 59 e4    	vmulps zmm20,zmm15,zmm20
  a5c534:	62 11 64 48 59 fb    	vmulps zmm15,zmm3,zmm27
  a5c53a:	62 52 0d 48 bc fb    	vfnmadd231ps zmm15,zmm14,zmm11
  a5c540:	62 e2 55 40 b8 e6    	vfmadd231ps zmm20,zmm21,zmm6
  a5c546:	62 81 6c 48 59 e9    	vmulps zmm21,zmm2,zmm25
  a5c54c:	62 c2 15 48 bc e8    	vfnmadd231ps zmm21,zmm13,zmm8
  a5c552:	62 21 04 48 58 e5    	vaddps zmm28,zmm15,zmm21
  a5c558:	62 11 0c 48 59 f3    	vmulps zmm14,zmm14,zmm27
  a5c55e:	62 91 64 40 58 f4    	vaddps zmm6,zmm19,zmm28
  a5c564:	62 72 25 48 b8 f3    	vfmadd231ps zmm14,zmm11,zmm3
  a5c56a:	62 21 4c 40 58 d8    	vaddps zmm27,zmm22,zmm16
  a5c570:	62 91 6c 40 58 fb    	vaddps zmm7,zmm18,zmm27
  a5c576:	62 11 14 48 59 e9    	vmulps zmm13,zmm13,zmm25
  a5c57c:	62 72 3d 48 b8 ea    	vfmadd231ps zmm13,zmm8,zmm2
  a5c582:	62 f2 7d 48 18 15 d4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff618ed4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5c589:	8e 61 ff 
  a5c58c:	62 41 0c 48 58 cd    	vaddps zmm25,zmm14,zmm13
  a5c592:	62 f2 7d 48 18 1d 38 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff618d38]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5c599:	8d 61 ff 
  a5c59c:	62 82 6d 48 bc c8    	vfnmadd231ps zmm17,zmm2,zmm24
  a5c5a2:	62 11 5c 40 58 d9    	vaddps zmm11,zmm20,zmm25
  a5c5a8:	62 31 4c 40 5c c0    	vsubps zmm8,zmm22,zmm16
  a5c5ae:	62 e1 3c 48 59 f3    	vmulps zmm22,zmm8,zmm3
  a5c5b4:	62 a1 74 40 58 c6    	vaddps zmm16,zmm17,zmm22
  a5c5ba:	62 82 6d 48 bc d3    	vfnmadd231ps zmm18,zmm2,zmm27
  a5c5c0:	62 11 44 40 5c c2    	vsubps zmm8,zmm23,zmm26
  a5c5c6:	62 e1 3c 48 59 fb    	vmulps zmm23,zmm8,zmm3
  a5c5cc:	62 21 6c 40 5c c7    	vsubps zmm24,zmm18,zmm23
  a5c5d2:	62 62 7d 48 18 15 8c 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff61908c]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a5c5d9:	90 61 ff 
  a5c5dc:	62 82 6d 48 bc dc    	vfnmadd231ps zmm19,zmm2,zmm28
  a5c5e2:	62 11 3c 40 59 c2    	vmulps zmm8,zmm24,zmm26
  a5c5e8:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a5c5ee:	62 72 7d 48 18 35 e0 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff618ee0]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a5c5f5:	8e 61 ff 
  a5c5f8:	62 52 7d 40 b8 c6    	vfmadd231ps zmm8,zmm16,zmm14
  a5c5fe:	62 71 14 48 59 eb    	vmulps zmm13,zmm13,zmm3
  a5c604:	62 82 6d 48 bc e1    	vfnmadd231ps zmm20,zmm2,zmm25
  a5c60a:	62 41 64 40 58 cd    	vaddps zmm25,zmm19,zmm13
  a5c610:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a5c616:	62 e1 04 48 59 eb    	vmulps zmm21,zmm15,zmm3
  a5c61c:	62 62 7d 48 18 1d f2 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff618cf2]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a5c623:	8c 61 ff 
  a5c626:	62 51 3c 40 59 fe    	vmulps zmm15,zmm24,zmm14
  a5c62c:	62 21 5c 40 5c c5    	vsubps zmm24,zmm20,zmm21
  a5c632:	62 12 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm26
  a5c638:	62 62 7d 48 18 15 9a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff618e9a]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a5c63f:	8e 61 ff 
  a5c642:	62 11 3c 40 59 f3    	vmulps zmm14,zmm24,zmm27
  a5c648:	62 12 35 40 b8 f2    	vfmadd231ps zmm14,zmm25,zmm26
  a5c64e:	62 81 3c 40 59 c2    	vmulps zmm16,zmm24,zmm26
  a5c654:	62 82 25 40 bc c1    	vfnmadd231ps zmm16,zmm27,zmm25
  a5c65a:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a5c660:	62 a1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm23
  a5c666:	62 c1 54 48 58 f1    	vaddps zmm22,zmm5,zmm9
  a5c66c:	62 c1 64 40 5c fd    	vsubps zmm23,zmm19,zmm13
  a5c672:	62 21 7c 48 58 c6    	vaddps zmm24,zmm0,zmm22
  a5c678:	62 a1 5c 40 58 dd    	vaddps zmm19,zmm20,zmm21
  a5c67e:	62 11 6c 40 59 eb    	vmulps zmm13,zmm18,zmm27
  a5c684:	62 12 75 40 b8 ea    	vfmadd231ps zmm13,zmm17,zmm26
  a5c68a:	62 81 6c 40 59 d2    	vmulps zmm18,zmm18,zmm26
  a5c690:	62 e2 7d 48 18 25 56 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff618e56]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a5c697:	8e 61 ff 
  a5c69a:	62 82 75 40 bc d3    	vfnmadd231ps zmm18,zmm17,zmm27
  a5c6a0:	62 a1 64 40 59 cc    	vmulps zmm17,zmm19,zmm20
  a5c6a6:	62 e2 7d 48 18 2d 48 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff618f48]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a5c6ad:	8f 61 ff 
  a5c6b0:	62 a2 45 40 bc cd    	vfnmadd231ps zmm17,zmm23,zmm21
  a5c6b6:	62 a1 64 40 59 dd    	vmulps zmm19,zmm19,zmm21
  a5c6bc:	62 e1 5c 48 58 ee    	vaddps zmm21,zmm4,zmm6
  a5c6c2:	62 a2 45 40 b8 dc    	vfmadd231ps zmm19,zmm23,zmm20
  a5c6c8:	62 c1 2c 48 58 e4    	vaddps zmm20,zmm10,zmm12
  a5c6ce:	62 e1 5c 40 58 f9    	vaddps zmm23,zmm20,zmm1
  a5c6d4:	62 b2 6d 48 bc c6    	vfnmadd231ps zmm0,zmm2,zmm22
  a5c6da:	62 c1 44 48 58 f3    	vaddps zmm22,zmm7,zmm11
  a5c6e0:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a5c6e6:	62 71 2c 48 59 d3    	vmulps zmm10,zmm10,zmm3
  a5c6ec:	62 41 7c 48 58 ca    	vaddps zmm25,zmm0,zmm10
  a5c6f2:	62 b2 6d 48 bc cc    	vfnmadd231ps zmm1,zmm2,zmm20
  a5c6f8:	62 c1 3c 48 58 e6    	vaddps zmm20,zmm8,zmm14
  a5c6fe:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a5c704:	62 f1 54 48 59 eb    	vmulps zmm5,zmm5,zmm3
  a5c70a:	62 61 74 48 5c d5    	vsubps zmm26,zmm1,zmm5
  a5c710:	62 41 7c 48 5c da    	vsubps zmm27,zmm0,zmm10
  a5c716:	62 31 04 48 58 d0    	vaddps zmm10,zmm15,zmm16
  a5c71c:	62 61 54 48 58 e1    	vaddps zmm28,zmm5,zmm1
  a5c722:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a5c728:	62 92 55 40 ac c0    	vfnmadd213ps zmm0,zmm21,zmm24
  a5c72e:	62 31 3c 20 58 e5    	vaddps ymm12,ymm24,ymm21
  a5c734:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a5c73a:	62 32 4d 40 ac cf    	vfnmadd213ps zmm9,zmm22,zmm23
  a5c740:	62 b1 44 00 58 ce    	vaddps xmm1,xmm23,xmm22
  a5c746:	c5 fc 28 2d 92 aa 61 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff61aa92]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a5c74d:	ff 
  a5c74e:	62 d2 55 28 7f cc    	vpermt2ps ymm1,ymm5,ymm12
  a5c754:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a5c75a:	62 12 5d 40 ac e1    	vfnmadd213ps zmm12,zmm20,zmm25
  a5c760:	62 a1 34 20 58 ec    	vaddps ymm21,ymm25,ymm20
  a5c766:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a5c76c:	62 82 2d 48 ac e2    	vfnmadd213ps zmm20,zmm10,zmm26
  a5c772:	62 51 2c 00 58 d2    	vaddps xmm10,xmm26,xmm10
  a5c778:	62 a1 14 48 58 f1    	vaddps zmm22,zmm13,zmm17
  a5c77e:	62 32 55 28 7f d5    	vpermt2ps ymm10,ymm5,ymm21
  a5c784:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a5c78a:	62 82 4d 40 ac eb    	vfnmadd213ps zmm21,zmm22,zmm27
  a5c790:	62 a1 24 20 58 fe    	vaddps ymm23,ymm27,ymm22
  a5c796:	62 a1 6c 40 5c f3    	vsubps zmm22,zmm18,zmm19
  a5c79c:	62 92 4d 40 ac d4    	vfnmadd213ps zmm2,zmm22,zmm28
  a5c7a2:	62 a1 1c 00 58 f6    	vaddps xmm22,xmm28,xmm22
  a5c7a8:	62 a2 55 28 7f f7    	vpermt2ps ymm22,ymm5,ymm23
  a5c7ae:	c4 c1 44 5c fb       	vsubps ymm7,ymm7,ymm11
  a5c7b3:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  a5c7b7:	c5 7c 58 df          	vaddps ymm11,ymm0,ymm7
  a5c7bb:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  a5c7bf:	c5 dc 59 e3          	vmulps ymm4,ymm4,ymm3
  a5c7c3:	c5 b0 5c f4          	vsubps xmm6,xmm9,xmm4
  a5c7c7:	62 d2 55 28 7f f3    	vpermt2ps ymm6,ymm5,ymm11
  a5c7cd:	62 31 04 28 5c d8    	vsubps ymm11,ymm15,ymm16
  a5c7d3:	c5 24 59 db          	vmulps ymm11,ymm11,ymm3
  a5c7d7:	c4 41 1c 58 fb       	vaddps ymm15,ymm12,ymm11
  a5c7dc:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  a5c7e1:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  a5c7e5:	62 51 5c 00 5c f0    	vsubps xmm14,xmm20,xmm8
  a5c7eb:	62 52 55 28 7f f7    	vpermt2ps ymm14,ymm5,ymm15
  a5c7f1:	62 31 6c 20 58 fb    	vaddps ymm15,ymm18,ymm19
  a5c7f7:	c5 04 59 fb          	vmulps ymm15,ymm15,ymm3
  a5c7fb:	62 31 14 28 5c e9    	vsubps ymm13,ymm13,ymm17
  a5c801:	62 c1 54 20 58 c7    	vaddps ymm16,ymm21,ymm15
  a5c807:	c5 94 59 db          	vmulps ymm3,ymm13,ymm3
  a5c80b:	c5 68 5c eb          	vsubps xmm13,xmm2,xmm3
  a5c80f:	62 32 55 28 7f e8    	vpermt2ps ymm13,ymm5,ymm16
  a5c815:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  a5c819:	c5 b0 58 e4          	vaddps xmm4,xmm9,xmm4
  a5c81d:	62 f2 55 28 7f e0    	vpermt2ps ymm4,ymm5,ymm0
  a5c823:	c4 c1 1c 5c c3       	vsubps ymm0,ymm12,ymm11
  a5c828:	62 d1 5c 00 58 f8    	vaddps xmm7,xmm20,xmm8
  a5c82e:	62 f2 55 28 7f f8    	vpermt2ps ymm7,ymm5,ymm0
  a5c834:	62 d1 54 20 5c c7    	vsubps ymm0,ymm21,ymm15
  a5c83a:	c5 e8 58 d3          	vaddps xmm2,xmm2,xmm3
  a5c83e:	62 f2 55 28 7f d0    	vpermt2ps ymm2,ymm5,ymm0
  a5c844:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  a5c848:	c5 7c 11 56 20       	vmovups YMMWORD PTR [rsi+0x20],ymm10
  a5c84d:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a5c854:	c5 fc 11 76 60       	vmovups YMMWORD PTR [rsi+0x60],ymm6
  a5c859:	c5 7c 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm14
  a5c860:	00 
  a5c861:	c5 7c 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm13
  a5c868:	00 
  a5c869:	c5 fc 11 a6 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm4
  a5c870:	00 
  a5c871:	c5 fc 11 be e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm7
  a5c878:	00 
  a5c879:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  a5c880:	00 
  a5c881:	c5 f8 77             	vzeroupper
  a5c884:	c3                   	ret
