
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096e000 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96e000:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff758d5e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96e007:	8d 75 ff 
  96e00a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff758d94]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  96e011:	8d 75 ff 
  96e014:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff758cca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96e01b:	8c 75 ff 
  96e01e:	62 f1 fd 48 10 1d 00 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff758d00]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96e025:	8d 75 ff 
  96e028:	48 c1 e2 08          	shl    rdx,0x8
  96e02c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  96e030:	31 d2                	xor    edx,edx
  96e032:	62 f1 fd 48 28 25 84 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff718984]        # 869c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13e70>
  96e039:	89 71 ff 
  96e03c:	62 f1 fd 48 28 2d ba 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7189ba]        # 86a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13eb0>
  96e043:	89 71 ff 
  96e046:	62 f2 fd 48 19 35 50 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff706e50]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  96e04d:	6e 70 ff 
  96e050:	62 f2 fd 48 19 3d c6 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff706bc6]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96e057:	6b 70 ff 
  96e05a:	62 72 fd 48 19 05 34 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff706a34]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96e061:	6a 70 ff 
  96e064:	62 71 fd 48 28 0d d2 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff7189d2]        # 86a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13ef0>
  96e06b:	89 71 ff 
  96e06e:	62 71 fd 48 28 15 08 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff718a08]        # 86a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13f30>
  96e075:	8a 71 ff 
  96e078:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  96e07f:	00 
  96e080:	62 71 fd 48 10 2c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1]
  96e087:	c5 7d 10 64 17 40    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  96e08d:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  96e093:	62 52 dd 48 7f dc    	vpermt2pd zmm11,zmm4,zmm12
  96e099:	62 52 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm12
  96e09f:	62 71 fd 48 10 b4 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x60]
  96e0a6:	60 00 00 00 
  96e0aa:	c5 7d 10 a4 17 a0 00 	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0xa0]
  96e0b1:	00 00 
  96e0b3:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  96e0b9:	62 52 dd 48 7f fc    	vpermt2pd zmm15,zmm4,zmm12
  96e0bf:	62 52 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm12
  96e0c5:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0xc0]
  96e0cc:	03 
  96e0cd:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x100]
  96e0d4:	08 
  96e0d5:	62 c1 fd 48 28 cc    	vmovapd zmm17,zmm12
  96e0db:	62 a2 dd 48 7f c8    	vpermt2pd zmm17,zmm4,zmm16
  96e0e1:	62 32 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm16
  96e0e7:	62 e1 fd 48 10 84 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x120]
  96e0ee:	20 01 00 00 
  96e0f2:	62 e1 fd 28 10 54 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  96e0f9:	0b 
  96e0fa:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  96e100:	62 a2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm18
  96e106:	62 a2 d5 48 7f c2    	vpermt2pd zmm16,zmm5,zmm18
  96e10c:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  96e113:	06 
  96e114:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  96e11b:	0e 
  96e11c:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  96e122:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  96e128:	62 a2 d5 48 7f d4    	vpermt2pd zmm18,zmm5,zmm20
  96e12e:	62 e1 fd 48 10 a4 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  96e135:	e0 01 00 00 
  96e139:	62 e1 fd 28 10 74 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0x220]
  96e140:	11 
  96e141:	62 a1 fd 48 28 fc    	vmovapd zmm23,zmm20
  96e147:	62 a2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm22
  96e14d:	62 a2 d5 48 7f e6    	vpermt2pd zmm20,zmm5,zmm22
  96e153:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x240]
  96e15a:	09 
  96e15b:	62 61 fd 28 10 44 17 	vmovupd ymm24,YMMWORD PTR [rdi+rdx*1+0x280]
  96e162:	14 
  96e163:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  96e169:	62 02 dd 48 7f c8    	vpermt2pd zmm25,zmm4,zmm24
  96e16f:	62 82 d5 48 7f f0    	vpermt2pd zmm22,zmm5,zmm24
  96e175:	62 61 fd 48 10 84 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  96e17c:	a0 02 00 00 
  96e180:	62 61 fd 28 10 54 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x2e0]
  96e187:	17 
  96e188:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  96e18e:	62 02 dd 48 7f da    	vpermt2pd zmm27,zmm4,zmm26
  96e194:	62 02 d5 48 7f c2    	vpermt2pd zmm24,zmm5,zmm26
  96e19a:	62 21 95 48 58 d2    	vaddpd zmm26,zmm13,zmm18
  96e1a0:	62 31 95 48 5c ea    	vsubpd zmm13,zmm13,zmm18
  96e1a6:	62 81 f5 40 58 d1    	vaddpd zmm18,zmm17,zmm25
  96e1ac:	62 81 f5 40 5c c9    	vsubpd zmm17,zmm17,zmm25
  96e1b2:	62 21 8d 48 58 cc    	vaddpd zmm25,zmm14,zmm20
  96e1b8:	62 31 8d 48 5c f4    	vsubpd zmm14,zmm14,zmm20
  96e1be:	62 a1 85 48 58 e7    	vaddpd zmm20,zmm15,zmm23
  96e1c4:	62 31 85 48 5c ff    	vsubpd zmm15,zmm15,zmm23
  96e1ca:	62 81 e5 40 58 fb    	vaddpd zmm23,zmm19,zmm27
  96e1d0:	62 81 e5 40 5c db    	vsubpd zmm19,zmm19,zmm27
  96e1d6:	62 01 fd 40 58 d8    	vaddpd zmm27,zmm16,zmm24
  96e1dc:	62 81 fd 40 5c c0    	vsubpd zmm16,zmm16,zmm24
  96e1e2:	62 21 a5 48 58 c5    	vaddpd zmm24,zmm11,zmm21
  96e1e8:	62 31 a5 48 5c dd    	vsubpd zmm11,zmm11,zmm21
  96e1ee:	62 a1 9d 48 58 ee    	vaddpd zmm21,zmm12,zmm22
  96e1f4:	62 51 cd 40 5c e4    	vsubpd zmm12,zmm22,zmm12
  96e1fa:	62 c1 8d 48 58 f7    	vaddpd zmm22,zmm14,zmm15
  96e200:	62 51 85 48 5c f6    	vsubpd zmm14,zmm15,zmm14
  96e206:	62 31 e5 40 5c f8    	vsubpd zmm15,zmm19,zmm16
  96e20c:	62 a1 fd 40 58 c3    	vaddpd zmm16,zmm16,zmm19
  96e212:	62 a1 ad 40 58 dd    	vaddpd zmm19,zmm26,zmm21
  96e218:	62 a1 ad 40 5c ed    	vsubpd zmm21,zmm26,zmm21
  96e21e:	62 21 dd 40 58 d7    	vaddpd zmm26,zmm20,zmm23
  96e224:	62 a1 dd 40 5c e7    	vsubpd zmm20,zmm20,zmm23
  96e22a:	62 a1 bd 40 58 fa    	vaddpd zmm23,zmm24,zmm18
  96e230:	62 a1 bd 40 5c d2    	vsubpd zmm18,zmm24,zmm18
  96e236:	62 01 b5 40 58 c3    	vaddpd zmm24,zmm25,zmm27
  96e23c:	62 01 a5 40 5c c9    	vsubpd zmm25,zmm27,zmm25
  96e242:	62 21 95 48 58 d9    	vaddpd zmm27,zmm13,zmm17
  96e248:	62 e1 cd 40 59 f6    	vmulpd zmm22,zmm22,zmm6
  96e24e:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  96e254:	62 71 8d 48 59 f6    	vmulpd zmm14,zmm14,zmm6
  96e25a:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  96e260:	62 31 95 48 5c e9    	vsubpd zmm13,zmm13,zmm17
  96e266:	62 21 8d 48 5c e0    	vsubpd zmm28,zmm14,zmm16
  96e26c:	62 31 8d 48 58 f0    	vaddpd zmm14,zmm14,zmm16
  96e272:	62 c1 9d 48 58 c3    	vaddpd zmm16,zmm12,zmm11
  96e278:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  96e27e:	62 51 cd 40 58 e7    	vaddpd zmm12,zmm22,zmm15
  96e284:	62 a1 85 48 5c f6    	vsubpd zmm22,zmm15,zmm22
  96e28a:	62 01 e5 40 58 e8    	vaddpd zmm29,zmm19,zmm24
  96e290:	62 81 e5 40 5c d8    	vsubpd zmm19,zmm19,zmm24
  96e296:	62 11 c5 40 58 fa    	vaddpd zmm15,zmm23,zmm26
  96e29c:	62 81 c5 40 5c fa    	vsubpd zmm23,zmm23,zmm26
  96e2a2:	62 41 a5 40 58 c4    	vaddpd zmm24,zmm27,zmm12
  96e2a8:	62 41 a5 40 5c d4    	vsubpd zmm26,zmm27,zmm12
  96e2ae:	62 81 fd 40 58 cc    	vaddpd zmm17,zmm16,zmm28
  96e2b4:	62 01 fd 40 5c dc    	vsubpd zmm27,zmm16,zmm28
  96e2ba:	62 a1 d5 40 58 c4    	vaddpd zmm16,zmm21,zmm20
  96e2c0:	62 a1 d5 40 5c e4    	vsubpd zmm20,zmm21,zmm20
  96e2c6:	62 31 b5 40 58 e2    	vaddpd zmm12,zmm25,zmm18
  96e2cc:	62 81 ed 40 5c d1    	vsubpd zmm18,zmm18,zmm25
  96e2d2:	62 c1 95 48 58 ee    	vaddpd zmm21,zmm13,zmm14
  96e2d8:	62 51 95 48 5c ee    	vsubpd zmm13,zmm13,zmm14
  96e2de:	62 21 a5 48 58 ce    	vaddpd zmm25,zmm11,zmm22
  96e2e4:	62 a1 a5 48 5c f6    	vsubpd zmm22,zmm11,zmm22
  96e2ea:	62 01 fd 48 28 e5    	vmovapd zmm28,zmm29
  96e2f0:	62 22 fd 48 7f e3    	vpermt2pd zmm28,zmm0,zmm19
  96e2f6:	62 22 f5 48 7f eb    	vpermt2pd zmm29,zmm1,zmm19
  96e2fc:	62 81 fd 48 28 d8    	vmovapd zmm19,zmm24
  96e302:	62 82 fd 48 7f da    	vpermt2pd zmm19,zmm0,zmm26
  96e308:	62 02 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm26
  96e30e:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  96e314:	62 32 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm20
  96e31a:	62 a2 f5 48 7f c4    	vpermt2pd zmm16,zmm1,zmm20
  96e320:	62 31 fd 48 28 f5    	vmovapd zmm14,zmm21
  96e326:	62 52 fd 48 7f f5    	vpermt2pd zmm14,zmm0,zmm13
  96e32c:	62 c2 f5 48 7f ed    	vpermt2pd zmm21,zmm1,zmm13
  96e332:	62 11 fd 48 28 ec    	vmovapd zmm13,zmm28
  96e338:	62 52 ed 48 7f eb    	vpermt2pd zmm13,zmm2,zmm11
  96e33e:	62 42 e5 48 7f e3    	vpermt2pd zmm28,zmm3,zmm11
  96e344:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  96e34a:	62 c2 ed 48 7f e6    	vpermt2pd zmm20,zmm2,zmm14
  96e350:	62 c2 e5 48 7f de    	vpermt2pd zmm19,zmm3,zmm14
  96e356:	62 22 ed 48 7f e8    	vpermt2pd zmm29,zmm2,zmm16
  96e35c:	62 22 ed 48 7f c5    	vpermt2pd zmm24,zmm2,zmm21
  96e362:	62 31 95 48 14 dc    	vunpcklpd zmm11,zmm13,zmm20
  96e368:	62 31 95 48 15 f4    	vunpckhpd zmm14,zmm13,zmm20
  96e36e:	62 a1 9d 40 14 e3    	vunpcklpd zmm20,zmm28,zmm19
  96e374:	62 31 9d 40 15 eb    	vunpckhpd zmm13,zmm28,zmm19
  96e37a:	62 81 95 40 14 d8    	vunpcklpd zmm19,zmm29,zmm24
  96e380:	62 81 95 40 15 c0    	vunpckhpd zmm16,zmm29,zmm24
  96e386:	62 c1 fd 48 28 ef    	vmovapd zmm21,zmm15
  96e38c:	62 a2 fd 48 7f ef    	vpermt2pd zmm21,zmm0,zmm23
  96e392:	62 32 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm23
  96e398:	62 a1 fd 48 28 f9    	vmovapd zmm23,zmm17
  96e39e:	62 82 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm27
  96e3a4:	62 82 f5 48 7f cb    	vpermt2pd zmm17,zmm1,zmm27
  96e3aa:	62 41 fd 48 28 c4    	vmovapd zmm24,zmm12
  96e3b0:	62 22 fd 48 7f c2    	vpermt2pd zmm24,zmm0,zmm18
  96e3b6:	62 32 f5 48 7f e2    	vpermt2pd zmm12,zmm1,zmm18
  96e3bc:	62 81 fd 48 28 d1    	vmovapd zmm18,zmm25
  96e3c2:	62 a2 fd 48 7f d6    	vpermt2pd zmm18,zmm0,zmm22
  96e3c8:	62 22 f5 48 7f ce    	vpermt2pd zmm25,zmm1,zmm22
  96e3ce:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  96e3d4:	62 82 ed 48 7f f0    	vpermt2pd zmm22,zmm2,zmm24
  96e3da:	62 82 e5 48 7f e8    	vpermt2pd zmm21,zmm3,zmm24
  96e3e0:	62 21 fd 48 28 c7    	vmovapd zmm24,zmm23
  96e3e6:	62 22 ed 48 7f c2    	vpermt2pd zmm24,zmm2,zmm18
  96e3ec:	62 a2 e5 48 7f fa    	vpermt2pd zmm23,zmm3,zmm18
  96e3f2:	62 52 ed 48 7f fc    	vpermt2pd zmm15,zmm2,zmm12
  96e3f8:	62 82 ed 48 7f c9    	vpermt2pd zmm17,zmm2,zmm25
  96e3fe:	62 11 cd 40 14 e0    	vunpcklpd zmm12,zmm22,zmm24
  96e404:	62 81 cd 40 15 f0    	vunpckhpd zmm22,zmm22,zmm24
  96e40a:	62 21 d5 40 14 c7    	vunpcklpd zmm24,zmm21,zmm23
  96e410:	62 a1 d5 40 15 d7    	vunpckhpd zmm18,zmm21,zmm23
  96e416:	62 a1 85 48 14 e9    	vunpcklpd zmm21,zmm15,zmm17
  96e41c:	62 a1 85 48 15 f9    	vunpckhpd zmm23,zmm15,zmm17
  96e422:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  96e429:	62 61 fd 48 10 51 03 	vmovupd zmm26,ZMMWORD PTR [rcx+0xc0]
  96e430:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  96e437:	62 61 fd 48 10 59 05 	vmovupd zmm27,ZMMWORD PTR [rcx+0x140]
  96e43e:	62 31 dd 40 59 f9    	vmulpd zmm15,zmm20,zmm17
  96e444:	62 12 bd 40 bc fb    	vfnmadd231pd zmm15,zmm24,zmm27
  96e44a:	62 a1 bd 40 59 c9    	vmulpd zmm17,zmm24,zmm17
  96e450:	62 61 fd 48 10 41 09 	vmovupd zmm24,ZMMWORD PTR [rcx+0x240]
  96e457:	62 82 dd 40 b8 cb    	vfmadd231pd zmm17,zmm20,zmm27
  96e45d:	62 e1 fd 48 10 61 08 	vmovupd zmm20,ZMMWORD PTR [rcx+0x200]
  96e464:	62 21 e5 40 59 dc    	vmulpd zmm27,zmm19,zmm20
  96e46a:	62 02 d5 40 bc d8    	vfnmadd231pd zmm27,zmm21,zmm24
  96e470:	62 a1 d5 40 59 e4    	vmulpd zmm20,zmm21,zmm20
  96e476:	62 82 e5 40 b8 e0    	vfmadd231pd zmm20,zmm19,zmm24
  96e47c:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  96e483:	62 e1 fd 48 10 69 0a 	vmovupd zmm21,ZMMWORD PTR [rcx+0x280]
  96e48a:	62 21 c5 40 59 c5    	vmulpd zmm24,zmm23,zmm21
  96e490:	62 22 fd 40 b8 c3    	vfmadd231pd zmm24,zmm16,zmm19
  96e496:	62 a1 fd 40 59 c5    	vmulpd zmm16,zmm16,zmm21
  96e49c:	62 81 85 48 5c eb    	vsubpd zmm21,zmm15,zmm27
  96e4a2:	62 e1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm7
  96e4a8:	62 a2 c5 40 bc c3    	vfnmadd231pd zmm16,zmm23,zmm19
  96e4ae:	62 a1 f5 40 58 dc    	vaddpd zmm19,zmm17,zmm20
  96e4b4:	62 81 cd 40 59 f9    	vmulpd zmm23,zmm22,zmm25
  96e4ba:	62 82 8d 48 b8 fa    	vfmadd231pd zmm23,zmm14,zmm26
  96e4c0:	62 11 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm25
  96e4c6:	62 61 fd 48 10 49 07 	vmovupd zmm25,ZMMWORD PTR [rcx+0x1c0]
  96e4cd:	62 12 cd 40 bc f2    	vfnmadd231pd zmm14,zmm22,zmm26
  96e4d3:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  96e4da:	62 21 ed 40 59 d6    	vmulpd zmm26,zmm18,zmm22
  96e4e0:	62 02 95 48 b8 d1    	vfmadd231pd zmm26,zmm13,zmm25
  96e4e6:	62 31 95 48 59 ee    	vmulpd zmm13,zmm13,zmm22
  96e4ec:	62 c1 fd 48 28 f0    	vmovapd zmm22,zmm8
  96e4f2:	62 c2 e5 40 ac f4    	vfnmadd213pd zmm22,zmm19,zmm12
  96e4f8:	62 12 ed 40 bc e9    	vfnmadd231pd zmm13,zmm18,zmm25
  96e4fe:	62 a1 d5 40 58 d6    	vaddpd zmm18,zmm21,zmm22
  96e504:	62 21 bd 40 58 cf    	vaddpd zmm25,zmm24,zmm23
  96e50a:	62 11 85 48 58 fb    	vaddpd zmm15,zmm15,zmm27
  96e510:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  96e516:	62 02 b5 40 ac da    	vfnmadd213pd zmm27,zmm25,zmm26
  96e51c:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  96e522:	62 c1 fd 40 5c e6    	vsubpd zmm20,zmm16,zmm14
  96e528:	62 e1 dd 40 59 e7    	vmulpd zmm20,zmm20,zmm7
  96e52e:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  96e534:	62 a1 a5 40 58 c4    	vaddpd zmm16,zmm27,zmm20
  96e53a:	62 a1 bd 40 5c ff    	vsubpd zmm23,zmm24,zmm23
  96e540:	62 41 fd 48 28 c0    	vmovapd zmm24,zmm8
  96e546:	62 42 85 48 ac c3    	vfnmadd213pd zmm24,zmm15,zmm11
  96e54c:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  96e552:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  96e558:	62 a1 bd 40 5c f1    	vsubpd zmm22,zmm24,zmm17
  96e55e:	62 a1 a5 40 5c e4    	vsubpd zmm20,zmm27,zmm20
  96e564:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  96e56a:	62 42 8d 48 ac dd    	vfnmadd213pd zmm27,zmm14,zmm13
  96e570:	62 e1 c5 40 59 ff    	vmulpd zmm23,zmm23,zmm7
  96e576:	62 a1 bd 40 58 c9    	vaddpd zmm17,zmm24,zmm17
  96e57c:	62 21 a5 40 5c c7    	vsubpd zmm24,zmm27,zmm23
  96e582:	62 a1 a5 40 58 ff    	vaddpd zmm23,zmm27,zmm23
  96e588:	62 51 e5 40 58 e4    	vaddpd zmm12,zmm19,zmm12
  96e58e:	62 81 ad 40 58 d9    	vaddpd zmm19,zmm26,zmm25
  96e594:	62 51 a5 48 58 df    	vaddpd zmm11,zmm11,zmm15
  96e59a:	62 51 95 48 58 ee    	vaddpd zmm13,zmm13,zmm14
  96e5a0:	62 31 ed 40 5c f0    	vsubpd zmm14,zmm18,zmm16
  96e5a6:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  96e5ac:	62 81 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm24
  96e5b2:	62 81 cd 40 58 d0    	vaddpd zmm18,zmm22,zmm24
  96e5b8:	62 a1 d5 40 58 f4    	vaddpd zmm22,zmm21,zmm20
  96e5be:	62 a1 d5 40 5c e4    	vsubpd zmm20,zmm21,zmm20
  96e5c4:	62 a1 f5 40 58 ef    	vaddpd zmm21,zmm17,zmm23
  96e5ca:	62 a1 f5 40 5c cf    	vsubpd zmm17,zmm17,zmm23
  96e5d0:	62 a1 9d 48 5c fb    	vsubpd zmm23,zmm12,zmm19
  96e5d6:	62 31 9d 48 58 e3    	vaddpd zmm12,zmm12,zmm19
  96e5dc:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  96e5e2:	62 51 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm13
  96e5e8:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  96e5ee:	62 52 b5 48 7f eb    	vpermt2pd zmm13,zmm9,zmm11
  96e5f4:	62 52 ad 48 7f e3    	vpermt2pd zmm12,zmm10,zmm11
  96e5fa:	62 71 fd 48 11 24 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm12
  96e601:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  96e608:	01 
  96e609:	62 31 fd 48 28 dc    	vmovapd zmm11,zmm20
  96e60f:	62 32 b5 48 7f d9    	vpermt2pd zmm11,zmm9,zmm17
  96e615:	62 a2 ad 48 7f e1    	vpermt2pd zmm20,zmm10,zmm17
  96e61b:	62 e1 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm20
  96e622:	02 
  96e623:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  96e62a:	03 
  96e62b:	62 51 fd 48 28 df    	vmovapd zmm11,zmm15
  96e631:	62 32 b5 48 7f da    	vpermt2pd zmm11,zmm9,zmm18
  96e637:	62 32 ad 48 7f fa    	vpermt2pd zmm15,zmm10,zmm18
  96e63d:	62 71 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm15
  96e644:	04 
  96e645:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm11
  96e64c:	05 
  96e64d:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  96e653:	62 32 b5 48 7f db    	vpermt2pd zmm11,zmm9,zmm19
  96e659:	62 a2 ad 48 7f fb    	vpermt2pd zmm23,zmm10,zmm19
  96e65f:	62 e1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm23
  96e666:	06 
  96e667:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm11
  96e66e:	07 
  96e66f:	62 31 fd 48 28 de    	vmovapd zmm11,zmm22
  96e675:	62 32 b5 48 7f dd    	vpermt2pd zmm11,zmm9,zmm21
  96e67b:	62 a2 ad 48 7f f5    	vpermt2pd zmm22,zmm10,zmm21
  96e681:	62 e1 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x200],zmm22
  96e688:	08 
  96e689:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm11
  96e690:	09 
  96e691:	62 51 fd 48 28 de    	vmovapd zmm11,zmm14
  96e697:	62 32 b5 48 7f d8    	vpermt2pd zmm11,zmm9,zmm16
  96e69d:	62 32 ad 48 7f f0    	vpermt2pd zmm14,zmm10,zmm16
  96e6a3:	62 71 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x280],zmm14
  96e6aa:	0a 
  96e6ab:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm11
  96e6b2:	0b 
  96e6b3:	48 81 c2 00 03 00 00 	add    rdx,0x300
  96e6ba:	48 39 d0             	cmp    rax,rdx
  96e6bd:	0f 85 bd f9 ff ff    	jne    96e080 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  96e6c3:	c5 f8 77             	vzeroupper
  96e6c6:	c3                   	ret
