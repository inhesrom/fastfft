
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3d140 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3d140:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff689e36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3d147:	9e 68 ff 
  a3d14a:	62 f1 7c 48 28 0d ac 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff689dac]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3d151:	9d 68 ff 
  a3d154:	62 f1 7c 48 28 15 a2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff689ca2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3d15b:	9c 68 ff 
  a3d15e:	62 f1 7c 48 28 1d d8 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff689cd8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3d165:	9c 68 ff 
  a3d168:	48 c1 e2 06          	shl    rdx,0x6
  a3d16c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3d170:	31 d2                	xor    edx,edx
  a3d172:	62 f1 7c 48 28 25 44 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff654844]        # 919c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ee70>
  a3d179:	48 65 ff 
  a3d17c:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a3d180:	62 f2 7d 48 18 35 12 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff638212]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3d187:	82 63 ff 
  a3d18a:	62 f2 7d 48 18 3d cc 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6382cc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3d191:	82 63 ff 
  a3d194:	62 71 7c 48 28 05 62 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff654862]        # 91a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eeb0>
  a3d19b:	48 65 ff 
  a3d19e:	62 72 7d 48 18 0d 2c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63812c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3d1a5:	81 63 ff 
  a3d1a8:	62 71 7c 48 28 15 8e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff65488e]        # 91a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eef0>
  a3d1af:	48 65 ff 
  a3d1b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3d1b9:	1f 84 00 00 00 00 00 
  a3d1c0:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a3d1c6:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a3d1cb:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  a3d1d1:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x30]
  a3d1d8:	03 
  a3d1d9:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x48]
  a3d1e0:	48 00 00 00 
  a3d1e4:	62 53 1d 48 18 eb 01 	vinsertf32x4 zmm13,zmm12,xmm11,0x1
  a3d1eb:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a3d1f1:	62 72 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm5
  a3d1f7:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a3d1fd:	c5 7b 10 64 17 28    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x28]
  a3d203:	62 53 0d 48 18 fc 01 	vinsertf32x4 zmm15,zmm14,xmm12,0x1
  a3d20a:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a3d210:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a3d216:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a3d21c:	c5 7b 10 64 17 40    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x40]
  a3d222:	62 53 7d 40 18 e4 01 	vinsertf32x4 zmm12,zmm16,xmm12,0x1
  a3d229:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a3d22f:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a3d235:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a3d23b:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x58]
  a3d242:	0b 
  a3d243:	62 a3 75 40 18 ca 01 	vinsertf32x4 zmm17,zmm17,xmm18,0x1
  a3d24a:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a3d250:	62 e2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm5
  a3d256:	62 e2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm5
  a3d25c:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a3d263:	0e 
  a3d264:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a3d26b:	06 
  a3d26c:	62 a3 5d 40 18 db 01 	vinsertf32x4 zmm19,zmm20,xmm19,0x1
  a3d273:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a3d279:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a3d27f:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a3d285:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a3d28c:	11 
  a3d28d:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a3d294:	78 00 00 00 
  a3d298:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a3d29f:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a3d2a5:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a3d2ab:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a3d2b1:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0xa0]
  a3d2b8:	14 
  a3d2b9:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x90]
  a3d2c0:	09 
  a3d2c1:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a3d2c8:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a3d2ce:	62 62 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm5
  a3d2d4:	62 e2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm5
  a3d2da:	62 61 ff 08 10 4c 17 	vmovsd xmm25,QWORD PTR [rdi+rdx*1+0xb8]
  a3d2e1:	17 
  a3d2e2:	62 61 7c 08 10 94 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0xa8]
  a3d2e9:	a8 00 00 00 
  a3d2ed:	62 03 2d 40 18 c9 01 	vinsertf32x4 zmm25,zmm26,xmm25,0x1
  a3d2f4:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a3d2fa:	62 62 5d 48 7f d5    	vpermt2ps zmm26,zmm4,zmm5
  a3d300:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a3d306:	62 21 14 48 58 db    	vaddps zmm27,zmm13,zmm19
  a3d30c:	62 31 14 48 5c eb    	vsubps zmm13,zmm13,zmm19
  a3d312:	62 81 7c 40 58 d8    	vaddps zmm19,zmm16,zmm24
  a3d318:	62 81 7c 40 5c c0    	vsubps zmm16,zmm16,zmm24
  a3d31e:	62 21 04 48 58 c5    	vaddps zmm24,zmm15,zmm21
  a3d324:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a3d32a:	62 a1 0c 48 58 ee    	vaddps zmm21,zmm14,zmm22
  a3d330:	62 31 0c 48 5c f6    	vsubps zmm14,zmm14,zmm22
  a3d336:	62 81 6c 40 58 f2    	vaddps zmm22,zmm18,zmm26
  a3d33c:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  a3d342:	62 01 74 40 58 d1    	vaddps zmm26,zmm17,zmm25
  a3d348:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a3d34e:	62 21 24 48 58 cc    	vaddps zmm25,zmm11,zmm20
  a3d354:	62 31 24 48 5c dc    	vsubps zmm11,zmm11,zmm20
  a3d35a:	62 a1 1c 48 58 e7    	vaddps zmm20,zmm12,zmm23
  a3d360:	62 51 44 40 5c e4    	vsubps zmm12,zmm23,zmm12
  a3d366:	62 c1 04 48 58 fe    	vaddps zmm23,zmm15,zmm14
  a3d36c:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a3d372:	62 31 6c 40 5c f9    	vsubps zmm15,zmm18,zmm17
  a3d378:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a3d37e:	62 a1 24 40 58 d4    	vaddps zmm18,zmm27,zmm20
  a3d384:	62 a1 24 40 5c e4    	vsubps zmm20,zmm27,zmm20
  a3d38a:	62 21 54 40 58 de    	vaddps zmm27,zmm21,zmm22
  a3d390:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a3d396:	62 a1 34 40 58 f3    	vaddps zmm22,zmm25,zmm19
  a3d39c:	62 21 34 40 5c cb    	vsubps zmm25,zmm25,zmm19
  a3d3a2:	62 81 3c 40 58 da    	vaddps zmm19,zmm24,zmm26
  a3d3a8:	62 01 2c 40 5c c0    	vsubps zmm24,zmm26,zmm24
  a3d3ae:	62 21 14 48 58 d0    	vaddps zmm26,zmm13,zmm16
  a3d3b4:	62 e1 44 40 59 fe    	vmulps zmm23,zmm23,zmm6
  a3d3ba:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a3d3c0:	62 71 0c 48 59 f6    	vmulps zmm14,zmm14,zmm6
  a3d3c6:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a3d3cc:	62 21 14 48 5c e0    	vsubps zmm28,zmm13,zmm16
  a3d3d2:	62 a1 0c 48 5c c1    	vsubps zmm16,zmm14,zmm17
  a3d3d8:	62 a1 0c 48 58 c9    	vaddps zmm17,zmm14,zmm17
  a3d3de:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a3d3e4:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a3d3ea:	62 51 44 40 58 ef    	vaddps zmm13,zmm23,zmm15
  a3d3f0:	62 a1 04 48 5c ff    	vsubps zmm23,zmm15,zmm23
  a3d3f6:	62 21 6c 40 58 eb    	vaddps zmm29,zmm18,zmm19
  a3d3fc:	62 21 6c 40 5c f3    	vsubps zmm30,zmm18,zmm19
  a3d402:	62 11 4c 40 58 e3    	vaddps zmm12,zmm22,zmm27
  a3d408:	62 81 4c 40 5c d3    	vsubps zmm18,zmm22,zmm27
  a3d40e:	62 c1 2c 40 58 f5    	vaddps zmm22,zmm26,zmm13
  a3d414:	62 41 2c 40 5c d5    	vsubps zmm26,zmm26,zmm13
  a3d41a:	62 31 0c 48 58 e8    	vaddps zmm13,zmm14,zmm16
  a3d420:	62 a1 0c 48 5c d8    	vsubps zmm19,zmm14,zmm16
  a3d426:	62 21 5c 40 58 dd    	vaddps zmm27,zmm20,zmm21
  a3d42c:	62 a1 5c 40 5c ed    	vsubps zmm21,zmm20,zmm21
  a3d432:	62 11 3c 40 58 f1    	vaddps zmm14,zmm24,zmm25
  a3d438:	62 81 34 40 5c c0    	vsubps zmm16,zmm25,zmm24
  a3d43e:	62 21 1c 40 58 c1    	vaddps zmm24,zmm28,zmm17
  a3d444:	62 a1 1c 40 5c c9    	vsubps zmm17,zmm28,zmm17
  a3d44a:	62 31 24 48 58 ff    	vaddps zmm15,zmm11,zmm23
  a3d450:	62 a1 24 48 5c e7    	vsubps zmm20,zmm11,zmm23
  a3d456:	62 62 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm5
  a3d45c:	62 62 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm5
  a3d462:	62 02 75 48 7f ee    	vpermt2ps zmm29,zmm1,zmm30
  a3d468:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a3d46e:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a3d474:	62 82 75 48 7f f2    	vpermt2ps zmm22,zmm1,zmm26
  a3d47a:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a3d480:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a3d486:	62 22 75 48 7f dd    	vpermt2ps zmm27,zmm1,zmm21
  a3d48c:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a3d492:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a3d498:	62 22 75 48 7f c1    	vpermt2ps zmm24,zmm1,zmm17
  a3d49e:	62 81 95 40 14 eb    	vunpcklpd zmm21,zmm29,zmm27
  a3d4a4:	62 81 95 40 15 cb    	vunpckhpd zmm17,zmm29,zmm27
  a3d4aa:	62 81 cd 40 14 f8    	vunpcklpd zmm23,zmm22,zmm24
  a3d4b0:	62 81 cd 40 15 f0    	vunpckhpd zmm22,zmm22,zmm24
  a3d4b6:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a3d4bc:	62 32 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm23
  a3d4c2:	62 a2 65 48 7f ef    	vpermt2ps zmm21,zmm3,zmm23
  a3d4c8:	62 a2 6d 48 7f ce    	vpermt2ps zmm17,zmm2,zmm22
  a3d4ce:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a3d4d4:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a3d4da:	62 32 75 48 7f e2    	vpermt2ps zmm12,zmm1,zmm18
  a3d4e0:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a3d4e6:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a3d4ec:	62 32 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm19
  a3d4f2:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a3d4f8:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a3d4fe:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a3d504:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a3d50a:	62 32 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm16
  a3d510:	62 32 75 48 7f fc    	vpermt2ps zmm15,zmm1,zmm20
  a3d516:	62 c1 9d 48 14 c6    	vunpcklpd zmm16,zmm12,zmm14
  a3d51c:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  a3d522:	62 51 95 48 14 f7    	vunpcklpd zmm14,zmm13,zmm15
  a3d528:	62 51 95 48 15 ef    	vunpckhpd zmm13,zmm13,zmm15
  a3d52e:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a3d534:	62 52 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm14
  a3d53a:	62 c2 65 48 7f c6    	vpermt2ps zmm16,zmm3,zmm14
  a3d540:	62 52 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm13
  a3d546:	62 71 7c 48 10 69 02 	vmovups zmm13,ZMMWORD PTR [rcx+0x80]
  a3d54d:	62 71 7c 48 10 71 03 	vmovups zmm14,ZMMWORD PTR [rcx+0xc0]
  a3d554:	62 c1 54 40 59 d5    	vmulps zmm18,zmm21,zmm13
  a3d55a:	62 c2 7d 40 bc d6    	vfnmadd231ps zmm18,zmm16,zmm14
  a3d560:	62 51 7c 40 59 ed    	vmulps zmm13,zmm16,zmm13
  a3d566:	62 e1 7c 48 10 41 04 	vmovups zmm16,ZMMWORD PTR [rcx+0x100]
  a3d56d:	62 32 0d 48 b8 ed    	vfmadd231ps zmm13,zmm14,zmm21
  a3d573:	62 71 7c 48 10 71 05 	vmovups zmm14,ZMMWORD PTR [rcx+0x140]
  a3d57a:	62 a1 74 40 59 d8    	vmulps zmm19,zmm17,zmm16
  a3d580:	62 c2 1d 48 bc de    	vfnmadd231ps zmm19,zmm12,zmm14
  a3d586:	62 31 1c 48 59 e0    	vmulps zmm12,zmm12,zmm16
  a3d58c:	62 a1 6c 40 58 c3    	vaddps zmm16,zmm18,zmm19
  a3d592:	62 32 0d 48 b8 e1    	vfmadd231ps zmm12,zmm14,zmm17
  a3d598:	62 51 14 48 58 f4    	vaddps zmm14,zmm13,zmm12
  a3d59e:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a3d5a4:	62 c2 7d 40 ac cb    	vfnmadd213ps zmm17,zmm16,zmm11
  a3d5aa:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a3d5b0:	62 51 1c 48 59 e1    	vmulps zmm12,zmm12,zmm9
  a3d5b6:	62 51 74 40 58 ec    	vaddps zmm13,zmm17,zmm12
  a3d5bc:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a3d5c2:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a3d5c8:	62 c2 0d 48 ac df    	vfnmadd213ps zmm19,zmm14,zmm15
  a3d5ce:	62 c1 6c 40 59 d1    	vmulps zmm18,zmm18,zmm9
  a3d5d4:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a3d5da:	62 a1 64 40 5c ca    	vsubps zmm17,zmm19,zmm18
  a3d5e0:	62 a1 64 40 58 d2    	vaddps zmm18,zmm19,zmm18
  a3d5e6:	62 51 04 48 58 f6    	vaddps zmm14,zmm15,zmm14
  a3d5ec:	62 31 24 48 58 d8    	vaddps zmm11,zmm11,zmm16
  a3d5f2:	62 52 2d 48 7f f3    	vpermt2ps zmm14,zmm10,zmm11
  a3d5f8:	62 71 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm14
  a3d5ff:	62 c2 2d 48 7f cd    	vpermt2ps zmm17,zmm10,zmm13
  a3d605:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm17
  a3d60c:	01 
  a3d60d:	62 c2 2d 48 7f d4    	vpermt2ps zmm18,zmm10,zmm12
  a3d613:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm18
  a3d61a:	02 
  a3d61b:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a3d622:	48 39 d0             	cmp    rax,rdx
  a3d625:	0f 85 95 fb ff ff    	jne    a3d1c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a3d62b:	c5 f8 77             	vzeroupper
  a3d62e:	c3                   	ret
