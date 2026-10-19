
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000091d280 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  91d280:	62 f1 fd 48 10 1f    	vmovupd zmm3,ZMMWORD PTR [rdi]
  91d286:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  91d28b:	62 f1 fd 48 28 15 2b 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff76312b]        # 803c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd870>
  91d292:	31 76 ff 
  91d295:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  91d29b:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  91d2a1:	62 f1 fd 48 28 25 55 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff763155]        # 80400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd8b0>
  91d2a8:	31 76 ff 
  91d2ab:	62 f2 dd 48 7f d9    	vpermt2pd zmm3,zmm4,zmm1
  91d2b1:	62 f1 fd 48 10 b7 60 	vmovupd zmm6,ZMMWORD PTR [rdi+0x60]
  91d2b8:	00 00 00 
  91d2bb:	c5 fd 10 8f a0 00 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa0]
  91d2c2:	00 
  91d2c3:	62 f1 fd 48 28 fe    	vmovapd zmm7,zmm6
  91d2c9:	62 f2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm1
  91d2cf:	62 f2 dd 48 7f f1    	vpermt2pd zmm6,zmm4,zmm1
  91d2d5:	62 f1 fd 48 10 6f 03 	vmovupd zmm5,ZMMWORD PTR [rdi+0xc0]
  91d2dc:	c5 fd 10 8f 00 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x100]
  91d2e3:	00 
  91d2e4:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  91d2ea:	62 72 ed 48 7f c1    	vpermt2pd zmm8,zmm2,zmm1
  91d2f0:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  91d2f6:	62 71 fd 48 10 8f 20 	vmovupd zmm9,ZMMWORD PTR [rdi+0x120]
  91d2fd:	01 00 00 
  91d300:	c5 fd 10 8f 60 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x160]
  91d307:	00 
  91d308:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  91d30e:	62 72 ed 48 7f d1    	vpermt2pd zmm10,zmm2,zmm1
  91d314:	62 72 dd 48 7f c9    	vpermt2pd zmm9,zmm4,zmm1
  91d31a:	62 71 fd 48 10 5f 06 	vmovupd zmm11,ZMMWORD PTR [rdi+0x180]
  91d321:	c5 fd 10 8f c0 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x1c0]
  91d328:	00 
  91d329:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  91d32f:	62 72 ed 48 7f e1    	vpermt2pd zmm12,zmm2,zmm1
  91d335:	62 72 dd 48 7f d9    	vpermt2pd zmm11,zmm4,zmm1
  91d33b:	62 71 fd 48 10 af e0 	vmovupd zmm13,ZMMWORD PTR [rdi+0x1e0]
  91d342:	01 00 00 
  91d345:	c5 fd 10 8f 20 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x220]
  91d34c:	00 
  91d34d:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  91d353:	62 72 ed 48 7f f1    	vpermt2pd zmm14,zmm2,zmm1
  91d359:	62 72 dd 48 7f e9    	vpermt2pd zmm13,zmm4,zmm1
  91d35f:	62 71 fd 48 10 7f 09 	vmovupd zmm15,ZMMWORD PTR [rdi+0x240]
  91d366:	c5 fd 10 8f 80 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x280]
  91d36d:	00 
  91d36e:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  91d374:	62 e2 ed 48 7f c1    	vpermt2pd zmm16,zmm2,zmm1
  91d37a:	62 72 dd 48 7f f9    	vpermt2pd zmm15,zmm4,zmm1
  91d380:	62 e1 fd 48 10 8f a0 	vmovupd zmm17,ZMMWORD PTR [rdi+0x2a0]
  91d387:	02 00 00 
  91d38a:	c5 fd 10 8f e0 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x2e0]
  91d391:	00 
  91d392:	62 f2 f5 40 77 d1    	vpermi2pd zmm2,zmm17,zmm1
  91d398:	62 e2 dd 48 7f c9    	vpermt2pd zmm17,zmm4,zmm1
  91d39e:	62 c1 e5 48 58 d3    	vaddpd zmm18,zmm3,zmm11
  91d3a4:	62 c1 d5 48 58 df    	vaddpd zmm19,zmm5,zmm15
  91d3aa:	62 a1 ed 40 58 e3    	vaddpd zmm20,zmm18,zmm19
  91d3b0:	62 c1 cd 48 58 ed    	vaddpd zmm21,zmm6,zmm13
  91d3b6:	62 a1 b5 48 58 f1    	vaddpd zmm22,zmm9,zmm17
  91d3bc:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  91d3c2:	62 b1 dd 40 58 e7    	vaddpd zmm4,zmm20,zmm23
  91d3c8:	62 41 fd 48 58 c4    	vaddpd zmm24,zmm0,zmm12
  91d3ce:	62 21 bd 48 58 c8    	vaddpd zmm25,zmm8,zmm16
  91d3d4:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  91d3da:	62 41 c5 48 58 de    	vaddpd zmm27,zmm7,zmm14
  91d3e0:	62 61 ad 48 58 e2    	vaddpd zmm28,zmm10,zmm2
  91d3e6:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  91d3ec:	62 91 ad 40 58 cd    	vaddpd zmm1,zmm26,zmm29
  91d3f2:	62 51 e5 48 5c db    	vsubpd zmm11,zmm3,zmm11
  91d3f8:	62 31 bd 48 5c c0    	vsubpd zmm8,zmm8,zmm16
  91d3fe:	62 c1 a5 48 58 c0    	vaddpd zmm16,zmm11,zmm8
  91d404:	62 d1 cd 48 5c dd    	vsubpd zmm3,zmm6,zmm13
  91d40a:	62 d1 c5 48 5c fe    	vsubpd zmm7,zmm7,zmm14
  91d410:	62 72 fd 48 19 2d 86 	vbroadcastsd zmm13,QWORD PTR [rip+0xffffffffff757a86]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  91d417:	7a 75 ff 
  91d41a:	62 f1 e5 48 58 f7    	vaddpd zmm6,zmm3,zmm7
  91d420:	62 51 cd 48 59 f5    	vmulpd zmm14,zmm6,zmm13
  91d426:	62 f1 ad 48 5c d2    	vsubpd zmm2,zmm10,zmm2
  91d42c:	62 31 b5 48 5c c9    	vsubpd zmm9,zmm9,zmm17
  91d432:	62 d1 ed 48 5c f1    	vsubpd zmm6,zmm2,zmm9
  91d438:	62 51 cd 48 59 d5    	vmulpd zmm10,zmm6,zmm13
  91d43e:	62 c1 8d 48 58 ca    	vaddpd zmm17,zmm14,zmm10
  91d444:	62 b1 fd 40 58 f1    	vaddpd zmm6,zmm16,zmm17
  91d44a:	62 d1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm12
  91d450:	62 f1 85 48 5c ed    	vsubpd zmm5,zmm15,zmm5
  91d456:	62 71 d5 48 58 e0    	vaddpd zmm12,zmm5,zmm0
  91d45c:	62 f1 c5 48 5c db    	vsubpd zmm3,zmm7,zmm3
  91d462:	62 51 e5 48 59 fd    	vmulpd zmm15,zmm3,zmm13
  91d468:	62 f1 b5 48 58 d2    	vaddpd zmm2,zmm9,zmm2
  91d46e:	62 d1 ed 48 59 d5    	vmulpd zmm2,zmm2,zmm13
  91d474:	62 71 85 48 5c ca    	vsubpd zmm9,zmm15,zmm2
  91d47a:	62 d1 9d 48 58 d9    	vaddpd zmm3,zmm12,zmm9
  91d480:	62 31 ed 40 5c eb    	vsubpd zmm13,zmm18,zmm19
  91d486:	62 81 a5 40 5c d4    	vsubpd zmm18,zmm27,zmm28
  91d48c:	62 a1 95 48 58 da    	vaddpd zmm19,zmm13,zmm18
  91d492:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  91d498:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  91d49e:	62 91 d5 40 58 f8    	vaddpd zmm7,zmm21,zmm24
  91d4a4:	62 51 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm8
  91d4aa:	62 f1 85 48 58 d2    	vaddpd zmm2,zmm15,zmm2
  91d4b0:	62 71 a5 48 58 fa    	vaddpd zmm15,zmm11,zmm2
  91d4b6:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  91d4bc:	62 d1 ad 48 5c ee    	vsubpd zmm5,zmm10,zmm14
  91d4c2:	62 71 fd 48 58 c5    	vaddpd zmm8,zmm0,zmm5
  91d4c8:	62 31 dd 40 5c d7    	vsubpd zmm10,zmm20,zmm23
  91d4ce:	62 11 ad 40 5c f5    	vsubpd zmm14,zmm26,zmm29
  91d4d4:	62 a1 fd 40 5c c1    	vsubpd zmm16,zmm16,zmm17
  91d4da:	62 51 9d 48 5c c9    	vsubpd zmm9,zmm12,zmm9
  91d4e0:	62 31 95 48 5c e2    	vsubpd zmm12,zmm13,zmm18
  91d4e6:	62 31 bd 40 5c ed    	vsubpd zmm13,zmm24,zmm21
  91d4ec:	62 f1 a5 48 5c d2    	vsubpd zmm2,zmm11,zmm2
  91d4f2:	62 71 fd 48 5c dd    	vsubpd zmm11,zmm0,zmm5
  91d4f8:	62 e1 fd 48 10 0d 66 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7a9866]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  91d4ff:	98 7a ff 
  91d502:	62 e1 fd 48 28 d4    	vmovapd zmm18,zmm4
  91d508:	62 c2 f5 40 7f d2    	vpermt2pd zmm18,zmm17,zmm10
  91d50e:	62 e1 fd 48 10 25 90 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff7a9890]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  91d515:	98 7a ff 
  91d518:	62 d2 dd 40 7f e2    	vpermt2pd zmm4,zmm20,zmm10
  91d51e:	62 71 fd 48 28 d6    	vmovapd zmm10,zmm6
  91d524:	62 32 f5 40 7f d0    	vpermt2pd zmm10,zmm17,zmm16
  91d52a:	62 b2 dd 40 7f f0    	vpermt2pd zmm6,zmm20,zmm16
  91d530:	62 b1 fd 48 28 c3    	vmovapd zmm0,zmm19
  91d536:	62 d2 f5 40 7f c4    	vpermt2pd zmm0,zmm17,zmm12
  91d53c:	62 c2 dd 40 7f dc    	vpermt2pd zmm19,zmm20,zmm12
  91d542:	62 d1 fd 48 28 ef    	vmovapd zmm5,zmm15
  91d548:	62 f2 f5 40 7f ea    	vpermt2pd zmm5,zmm17,zmm2
  91d54e:	62 72 dd 40 7f fa    	vpermt2pd zmm15,zmm20,zmm2
  91d554:	62 71 fd 48 10 25 8a 	vmovupd zmm12,ZMMWORD PTR [rip+0xffffffffff7a978a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91d55b:	97 7a ff 
  91d55e:	62 b1 fd 48 28 d2    	vmovapd zmm2,zmm18
  91d564:	62 f2 9d 48 7f d0    	vpermt2pd zmm2,zmm12,zmm0
  91d56a:	62 e1 fd 48 10 05 b4 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7a97b4]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  91d571:	97 7a ff 
  91d574:	62 e2 fd 40 7f d0    	vpermt2pd zmm18,zmm16,zmm0
  91d57a:	62 c1 fd 48 28 ea    	vmovapd zmm21,zmm10
  91d580:	62 e2 9d 48 7f ed    	vpermt2pd zmm21,zmm12,zmm5
  91d586:	62 72 fd 40 7f d5    	vpermt2pd zmm10,zmm16,zmm5
  91d58c:	62 b2 9d 48 7f e3    	vpermt2pd zmm4,zmm12,zmm19
  91d592:	62 d2 9d 48 7f f7    	vpermt2pd zmm6,zmm12,zmm15
  91d598:	62 b1 ed 48 14 c5    	vunpcklpd zmm0,zmm2,zmm21
  91d59e:	62 b1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm21
  91d5a4:	62 51 ed 40 14 fa    	vunpcklpd zmm15,zmm18,zmm10
  91d5aa:	62 d1 ed 40 15 d2    	vunpckhpd zmm2,zmm18,zmm10
  91d5b0:	62 71 dd 48 14 d6    	vunpcklpd zmm10,zmm4,zmm6
  91d5b6:	62 f1 dd 48 15 f6    	vunpckhpd zmm6,zmm4,zmm6
  91d5bc:	62 e1 fd 48 28 d1    	vmovapd zmm18,zmm1
  91d5c2:	62 c2 f5 40 7f d6    	vpermt2pd zmm18,zmm17,zmm14
  91d5c8:	62 d2 dd 40 7f ce    	vpermt2pd zmm1,zmm20,zmm14
  91d5ce:	62 71 fd 48 28 f3    	vmovapd zmm14,zmm3
  91d5d4:	62 52 f5 40 7f f1    	vpermt2pd zmm14,zmm17,zmm9
  91d5da:	62 d2 dd 40 7f d9    	vpermt2pd zmm3,zmm20,zmm9
  91d5e0:	62 f1 fd 48 28 e7    	vmovapd zmm4,zmm7
  91d5e6:	62 d2 f5 40 7f e5    	vpermt2pd zmm4,zmm17,zmm13
  91d5ec:	62 d2 dd 40 7f fd    	vpermt2pd zmm7,zmm20,zmm13
  91d5f2:	62 c2 bd 48 77 cb    	vpermi2pd zmm17,zmm8,zmm11
  91d5f8:	62 52 dd 40 7f c3    	vpermt2pd zmm8,zmm20,zmm11
  91d5fe:	62 31 fd 48 28 ca    	vmovapd zmm9,zmm18
  91d604:	62 72 9d 48 7f cc    	vpermt2pd zmm9,zmm12,zmm4
  91d60a:	62 e2 fd 40 7f d4    	vpermt2pd zmm18,zmm16,zmm4
  91d610:	62 51 fd 48 28 de    	vmovapd zmm11,zmm14
  91d616:	62 32 9d 48 7f d9    	vpermt2pd zmm11,zmm12,zmm17
  91d61c:	62 32 fd 40 7f f1    	vpermt2pd zmm14,zmm16,zmm17
  91d622:	62 f2 9d 48 7f cf    	vpermt2pd zmm1,zmm12,zmm7
  91d628:	62 d2 9d 48 7f d8    	vpermt2pd zmm3,zmm12,zmm8
  91d62e:	62 d1 b5 48 14 e3    	vunpcklpd zmm4,zmm9,zmm11
  91d634:	62 51 b5 48 15 c3    	vunpckhpd zmm8,zmm9,zmm11
  91d63a:	62 51 ed 40 14 ce    	vunpcklpd zmm9,zmm18,zmm14
  91d640:	62 d1 ed 40 15 fe    	vunpckhpd zmm7,zmm18,zmm14
  91d646:	62 71 f5 48 14 db    	vunpcklpd zmm11,zmm1,zmm3
  91d64c:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  91d652:	62 f1 fd 48 10 5a 02 	vmovupd zmm3,ZMMWORD PTR [rdx+0x80]
  91d659:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  91d660:	62 71 fd 48 10 6a 04 	vmovupd zmm13,ZMMWORD PTR [rdx+0x100]
  91d667:	62 71 fd 48 10 72 05 	vmovupd zmm14,ZMMWORD PTR [rdx+0x140]
  91d66e:	62 c1 85 48 59 c5    	vmulpd zmm16,zmm15,zmm13
  91d674:	62 c2 b5 48 bc c6    	vfnmadd231pd zmm16,zmm9,zmm14
  91d67a:	62 e1 fd 48 10 4a 09 	vmovupd zmm17,ZMMWORD PTR [rdx+0x240]
  91d681:	62 e1 fd 48 10 52 08 	vmovupd zmm18,ZMMWORD PTR [rdx+0x200]
  91d688:	62 a1 ad 48 59 da    	vmulpd zmm19,zmm10,zmm18
  91d68e:	62 a2 a5 48 bc d9    	vfnmadd231pd zmm19,zmm11,zmm17
  91d694:	62 e2 fd 48 19 25 82 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff757582]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  91d69b:	75 75 ff 
  91d69e:	62 a1 fd 40 5c eb    	vsubpd zmm21,zmm16,zmm19
  91d6a4:	62 a1 d5 40 59 ec    	vmulpd zmm21,zmm21,zmm20
  91d6aa:	62 51 b5 48 59 cd    	vmulpd zmm9,zmm9,zmm13
  91d6b0:	62 52 85 48 b8 ce    	vfmadd231pd zmm9,zmm15,zmm14
  91d6b6:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  91d6bc:	62 32 ad 48 b8 d9    	vfmadd231pd zmm11,zmm10,zmm17
  91d6c2:	62 72 fd 48 19 15 cc 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff7573cc]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  91d6c9:	73 75 ff 
  91d6cc:	62 51 b5 48 58 eb    	vaddpd zmm13,zmm9,zmm11
  91d6d2:	62 51 fd 48 28 f2    	vmovapd zmm14,zmm10
  91d6d8:	62 72 95 48 ac f4    	vfnmadd213pd zmm14,zmm13,zmm4
  91d6de:	62 51 d5 40 58 fe    	vaddpd zmm15,zmm21,zmm14
  91d6e4:	62 e1 fd 48 10 4a 0b 	vmovupd zmm17,ZMMWORD PTR [rdx+0x2c0]
  91d6eb:	62 e1 fd 48 10 52 0a 	vmovupd zmm18,ZMMWORD PTR [rdx+0x280]
  91d6f2:	62 a1 f5 48 59 f2    	vmulpd zmm22,zmm1,zmm18
  91d6f8:	62 a2 cd 48 b8 f1    	vfmadd231pd zmm22,zmm6,zmm17
  91d6fe:	62 e1 bd 48 59 fb    	vmulpd zmm23,zmm8,zmm3
  91d704:	62 c2 d5 48 b8 fc    	vfmadd231pd zmm23,zmm5,zmm12
  91d70a:	62 21 cd 40 58 c7    	vaddpd zmm24,zmm22,zmm23
  91d710:	62 61 fd 48 10 4a 07 	vmovupd zmm25,ZMMWORD PTR [rdx+0x1c0]
  91d717:	62 61 fd 48 10 52 06 	vmovupd zmm26,ZMMWORD PTR [rdx+0x180]
  91d71e:	62 01 c5 48 59 da    	vmulpd zmm27,zmm7,zmm26
  91d724:	62 02 ed 48 b8 d9    	vfmadd231pd zmm27,zmm2,zmm25
  91d72a:	62 41 fd 48 28 e2    	vmovapd zmm28,zmm10
  91d730:	62 02 bd 40 ac e3    	vfnmadd213pd zmm28,zmm24,zmm27
  91d736:	62 b1 cd 48 59 f2    	vmulpd zmm6,zmm6,zmm18
  91d73c:	62 b2 f5 48 bc f1    	vfnmadd231pd zmm6,zmm1,zmm17
  91d742:	62 f1 d5 48 59 db    	vmulpd zmm3,zmm5,zmm3
  91d748:	62 d2 bd 48 bc dc    	vfnmadd231pd zmm3,zmm8,zmm12
  91d74e:	62 f1 cd 48 5c cb    	vsubpd zmm1,zmm6,zmm3
  91d754:	62 b1 f5 48 59 ec    	vmulpd zmm5,zmm1,zmm20
  91d75a:	62 71 9d 40 58 c5    	vaddpd zmm8,zmm28,zmm5
  91d760:	62 d1 85 48 5c c8    	vsubpd zmm1,zmm15,zmm8
  91d766:	62 31 fd 40 58 e3    	vaddpd zmm12,zmm16,zmm19
  91d76c:	62 c1 fd 48 28 c2    	vmovapd zmm16,zmm10
  91d772:	62 e2 9d 48 ac c0    	vfnmadd213pd zmm16,zmm12,zmm0
  91d778:	62 51 b5 48 5c cb    	vsubpd zmm9,zmm9,zmm11
  91d77e:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  91d784:	62 51 fd 40 5c d9    	vsubpd zmm11,zmm16,zmm9
  91d78a:	62 f1 cd 48 58 db    	vaddpd zmm3,zmm6,zmm3
  91d790:	62 91 ed 48 59 d2    	vmulpd zmm2,zmm2,zmm26
  91d796:	62 92 c5 48 bc d1    	vfnmadd231pd zmm2,zmm7,zmm25
  91d79c:	62 72 e5 48 ac d2    	vfnmadd213pd zmm10,zmm3,zmm2
  91d7a2:	62 b1 cd 40 5c f7    	vsubpd zmm6,zmm22,zmm23
  91d7a8:	62 b1 cd 48 59 f4    	vmulpd zmm6,zmm6,zmm20
  91d7ae:	62 f1 ad 48 5c fe    	vsubpd zmm7,zmm10,zmm6
  91d7b4:	62 e1 a5 48 5c cf    	vsubpd zmm17,zmm11,zmm7
  91d7ba:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  91d7c0:	62 f1 9d 40 5c ed    	vsubpd zmm5,zmm28,zmm5
  91d7c6:	62 e1 8d 48 58 d5    	vaddpd zmm18,zmm14,zmm5
  91d7cc:	62 51 fd 40 58 c9    	vaddpd zmm9,zmm16,zmm9
  91d7d2:	62 f1 ad 48 58 f6    	vaddpd zmm6,zmm10,zmm6
  91d7d8:	62 71 b5 48 58 d6    	vaddpd zmm10,zmm9,zmm6
  91d7de:	62 f1 95 48 58 e4    	vaddpd zmm4,zmm13,zmm4
  91d7e4:	62 11 a5 40 58 e8    	vaddpd zmm13,zmm27,zmm24
  91d7ea:	62 c1 dd 48 5c c5    	vsubpd zmm16,zmm4,zmm13
  91d7f0:	62 d1 fd 48 58 c4    	vaddpd zmm0,zmm0,zmm12
  91d7f6:	62 f1 ed 48 58 d3    	vaddpd zmm2,zmm2,zmm3
  91d7fc:	62 f1 fd 48 5c da    	vsubpd zmm3,zmm0,zmm2
  91d802:	62 51 85 48 58 c0    	vaddpd zmm8,zmm15,zmm8
  91d808:	62 f1 a5 48 58 ff    	vaddpd zmm7,zmm11,zmm7
  91d80e:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  91d814:	62 f1 b5 48 5c f6    	vsubpd zmm6,zmm9,zmm6
  91d81a:	62 d1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm13
  91d820:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  91d826:	62 f1 fd 48 28 15 10 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff762c10]        # 80440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd8f0>
  91d82d:	2c 76 ff 
  91d830:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  91d836:	62 72 ed 48 7f c8    	vpermt2pd zmm9,zmm2,zmm0
  91d83c:	62 71 fd 48 28 1d 3a 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff762c3a]        # 80480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd930>
  91d843:	2c 76 ff 
  91d846:	62 f2 a5 48 7f e0    	vpermt2pd zmm4,zmm11,zmm0
  91d84c:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  91d852:	62 71 fd 48 11 4e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm9
  91d859:	62 f1 fd 48 28 c5    	vmovapd zmm0,zmm5
  91d85f:	62 f2 ed 48 7f c6    	vpermt2pd zmm0,zmm2,zmm6
  91d865:	62 f2 a5 48 7f ee    	vpermt2pd zmm5,zmm11,zmm6
  91d86b:	62 f1 fd 48 11 6e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm5
  91d872:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  91d879:	62 d1 fd 48 28 c0    	vmovapd zmm0,zmm8
  91d87f:	62 f2 ed 48 7f c7    	vpermt2pd zmm0,zmm2,zmm7
  91d885:	62 72 a5 48 7f c7    	vpermt2pd zmm8,zmm11,zmm7
  91d88b:	62 71 fd 48 11 46 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm8
  91d892:	62 f1 fd 48 11 46 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm0
  91d899:	62 b1 fd 48 28 c0    	vmovapd zmm0,zmm16
  91d89f:	62 f2 ed 48 7f c3    	vpermt2pd zmm0,zmm2,zmm3
  91d8a5:	62 e2 a5 48 7f c3    	vpermt2pd zmm16,zmm11,zmm3
  91d8ab:	62 e1 fd 48 11 46 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm16
  91d8b2:	62 f1 fd 48 11 46 07 	vmovupd ZMMWORD PTR [rsi+0x1c0],zmm0
  91d8b9:	62 b1 fd 48 28 c2    	vmovapd zmm0,zmm18
  91d8bf:	62 d2 ed 48 7f c2    	vpermt2pd zmm0,zmm2,zmm10
  91d8c5:	62 c2 a5 48 7f d2    	vpermt2pd zmm18,zmm11,zmm10
  91d8cb:	62 e1 fd 48 11 56 08 	vmovupd ZMMWORD PTR [rsi+0x200],zmm18
  91d8d2:	62 f1 fd 48 11 46 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm0
  91d8d9:	62 b2 f5 48 77 d1    	vpermi2pd zmm2,zmm1,zmm17
  91d8df:	62 b2 a5 48 7f c9    	vpermt2pd zmm1,zmm11,zmm17
  91d8e5:	62 f1 fd 48 11 4e 0a 	vmovupd ZMMWORD PTR [rsi+0x280],zmm1
  91d8ec:	62 f1 fd 48 11 56 0b 	vmovupd ZMMWORD PTR [rsi+0x2c0],zmm2
  91d8f3:	c5 f8 77             	vzeroupper
  91d8f6:	c3                   	ret
