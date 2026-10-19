
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009180c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9180c0:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  9180c6:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  9180cb:	62 f1 fd 48 28 15 eb 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff767beb]        # 7fcc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd170>
  9180d2:	7b 76 ff 
  9180d5:	62 f1 fd 48 28 e8    	vmovapd zmm5,zmm0
  9180db:	62 f2 ed 48 7f e9    	vpermt2pd zmm5,zmm2,zmm1
  9180e1:	62 f1 fd 48 28 25 15 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff767c15]        # 7fd00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd1b0>
  9180e8:	7c 76 ff 
  9180eb:	62 f2 dd 48 7f c1    	vpermt2pd zmm0,zmm4,zmm1
  9180f1:	62 f1 fd 48 10 b7 60 	vmovupd zmm6,ZMMWORD PTR [rdi+0x60]
  9180f8:	00 00 00 
  9180fb:	c5 fd 10 8f a0 00 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa0]
  918102:	00 
  918103:	62 f1 fd 48 28 fe    	vmovapd zmm7,zmm6
  918109:	62 f2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm1
  91810f:	62 f2 dd 48 7f f1    	vpermt2pd zmm6,zmm4,zmm1
  918115:	62 71 fd 48 10 47 03 	vmovupd zmm8,ZMMWORD PTR [rdi+0xc0]
  91811c:	c5 fd 10 8f 00 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x100]
  918123:	00 
  918124:	62 d1 fd 48 28 d8    	vmovapd zmm3,zmm8
  91812a:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  918130:	62 72 dd 48 7f c1    	vpermt2pd zmm8,zmm4,zmm1
  918136:	62 71 fd 48 10 8f 20 	vmovupd zmm9,ZMMWORD PTR [rdi+0x120]
  91813d:	01 00 00 
  918140:	c5 fd 10 8f 60 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x160]
  918147:	00 
  918148:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  91814e:	62 72 ed 48 7f d1    	vpermt2pd zmm10,zmm2,zmm1
  918154:	62 72 dd 48 7f c9    	vpermt2pd zmm9,zmm4,zmm1
  91815a:	62 71 fd 48 10 5f 06 	vmovupd zmm11,ZMMWORD PTR [rdi+0x180]
  918161:	c5 fd 10 8f c0 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x1c0]
  918168:	00 
  918169:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  91816f:	62 72 ed 48 7f e1    	vpermt2pd zmm12,zmm2,zmm1
  918175:	62 72 dd 48 7f d9    	vpermt2pd zmm11,zmm4,zmm1
  91817b:	62 71 fd 48 10 af e0 	vmovupd zmm13,ZMMWORD PTR [rdi+0x1e0]
  918182:	01 00 00 
  918185:	c5 fd 10 8f 20 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x220]
  91818c:	00 
  91818d:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  918193:	62 72 ed 48 7f f1    	vpermt2pd zmm14,zmm2,zmm1
  918199:	62 72 dd 48 7f e9    	vpermt2pd zmm13,zmm4,zmm1
  91819f:	62 71 fd 48 10 7f 09 	vmovupd zmm15,ZMMWORD PTR [rdi+0x240]
  9181a6:	c5 fd 10 8f 80 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x280]
  9181ad:	00 
  9181ae:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  9181b4:	62 e2 ed 48 7f c1    	vpermt2pd zmm16,zmm2,zmm1
  9181ba:	62 72 dd 48 7f f9    	vpermt2pd zmm15,zmm4,zmm1
  9181c0:	62 e1 fd 48 10 8f a0 	vmovupd zmm17,ZMMWORD PTR [rdi+0x2a0]
  9181c7:	02 00 00 
  9181ca:	c5 fd 10 8f e0 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x2e0]
  9181d1:	00 
  9181d2:	62 f2 f5 40 77 d1    	vpermi2pd zmm2,zmm17,zmm1
  9181d8:	62 e2 dd 48 7f c9    	vpermt2pd zmm17,zmm4,zmm1
  9181de:	62 c1 d5 48 58 d4    	vaddpd zmm18,zmm5,zmm12
  9181e4:	62 a1 e5 48 58 d8    	vaddpd zmm19,zmm3,zmm16
  9181ea:	62 a1 ed 40 58 e3    	vaddpd zmm20,zmm18,zmm19
  9181f0:	62 c1 c5 48 58 ee    	vaddpd zmm21,zmm7,zmm14
  9181f6:	62 e1 ad 48 58 f2    	vaddpd zmm22,zmm10,zmm2
  9181fc:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  918202:	62 b1 dd 40 58 e7    	vaddpd zmm4,zmm20,zmm23
  918208:	62 41 fd 48 58 c3    	vaddpd zmm24,zmm0,zmm11
  91820e:	62 41 bd 48 58 cf    	vaddpd zmm25,zmm8,zmm15
  918214:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  91821a:	62 41 cd 48 58 dd    	vaddpd zmm27,zmm6,zmm13
  918220:	62 21 b5 48 58 e1    	vaddpd zmm28,zmm9,zmm17
  918226:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  91822c:	62 91 ad 40 58 cd    	vaddpd zmm1,zmm26,zmm29
  918232:	62 d1 d5 48 5c ec    	vsubpd zmm5,zmm5,zmm12
  918238:	62 51 bd 48 5c c7    	vsubpd zmm8,zmm8,zmm15
  91823e:	62 51 d5 48 58 e0    	vaddpd zmm12,zmm5,zmm8
  918244:	62 d1 c5 48 5c fe    	vsubpd zmm7,zmm7,zmm14
  91824a:	62 51 cd 48 5c ed    	vsubpd zmm13,zmm6,zmm13
  918250:	62 72 fd 48 19 35 46 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff75cc46]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  918257:	cc 75 ff 
  91825a:	62 d1 c5 48 58 f5    	vaddpd zmm6,zmm7,zmm13
  918260:	62 51 cd 48 59 fe    	vmulpd zmm15,zmm6,zmm14
  918266:	62 31 b5 48 5c c9    	vsubpd zmm9,zmm9,zmm17
  91826c:	62 f1 ad 48 5c d2    	vsubpd zmm2,zmm10,zmm2
  918272:	62 f1 b5 48 5c f2    	vsubpd zmm6,zmm9,zmm2
  918278:	62 51 cd 48 59 d6    	vmulpd zmm10,zmm6,zmm14
  91827e:	62 c1 85 48 58 ca    	vaddpd zmm17,zmm15,zmm10
  918284:	62 b1 9d 48 58 f1    	vaddpd zmm6,zmm12,zmm17
  91828a:	62 d1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm11
  918290:	62 71 fd 40 5c db    	vsubpd zmm11,zmm16,zmm3
  918296:	62 e1 a5 48 58 c0    	vaddpd zmm16,zmm11,zmm0
  91829c:	62 f1 95 48 5c df    	vsubpd zmm3,zmm13,zmm7
  9182a2:	62 51 e5 48 59 ee    	vmulpd zmm13,zmm3,zmm14
  9182a8:	62 d1 ed 48 58 d1    	vaddpd zmm2,zmm2,zmm9
  9182ae:	62 d1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm14
  9182b4:	62 71 95 48 5c ca    	vsubpd zmm9,zmm13,zmm2
  9182ba:	62 d1 fd 40 58 d9    	vaddpd zmm3,zmm16,zmm9
  9182c0:	62 31 ed 40 5c f3    	vsubpd zmm14,zmm18,zmm19
  9182c6:	62 81 a5 40 5c d4    	vsubpd zmm18,zmm27,zmm28
  9182cc:	62 a1 8d 48 58 da    	vaddpd zmm19,zmm14,zmm18
  9182d2:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  9182d8:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  9182de:	62 91 d5 40 58 f8    	vaddpd zmm7,zmm21,zmm24
  9182e4:	62 d1 d5 48 5c e8    	vsubpd zmm5,zmm5,zmm8
  9182ea:	62 f1 95 48 58 d2    	vaddpd zmm2,zmm13,zmm2
  9182f0:	62 71 d5 48 58 ea    	vaddpd zmm13,zmm5,zmm2
  9182f6:	62 d1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm11
  9182fc:	62 51 ad 48 5c d7    	vsubpd zmm10,zmm10,zmm15
  918302:	62 51 fd 48 58 c2    	vaddpd zmm8,zmm0,zmm10
  918308:	62 31 dd 40 5c df    	vsubpd zmm11,zmm20,zmm23
  91830e:	62 11 ad 40 5c fd    	vsubpd zmm15,zmm26,zmm29
  918314:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  91831a:	62 51 fd 40 5c c9    	vsubpd zmm9,zmm16,zmm9
  918320:	62 31 8d 48 5c f2    	vsubpd zmm14,zmm14,zmm18
  918326:	62 a1 bd 40 5c c5    	vsubpd zmm16,zmm24,zmm21
  91832c:	62 f1 d5 48 5c d2    	vsubpd zmm2,zmm5,zmm2
  918332:	62 51 fd 48 5c d2    	vsubpd zmm10,zmm0,zmm10
  918338:	62 e1 fd 48 10 0d 26 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7aea26]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  91833f:	ea 7a ff 
  918342:	62 e1 fd 48 28 d4    	vmovapd zmm18,zmm4
  918348:	62 c2 f5 40 7f d3    	vpermt2pd zmm18,zmm17,zmm11
  91834e:	62 e1 fd 48 10 25 50 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff7aea50]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  918355:	ea 7a ff 
  918358:	62 d2 dd 40 7f e3    	vpermt2pd zmm4,zmm20,zmm11
  91835e:	62 71 fd 48 28 de    	vmovapd zmm11,zmm6
  918364:	62 52 f5 40 7f dc    	vpermt2pd zmm11,zmm17,zmm12
  91836a:	62 d2 dd 40 7f f4    	vpermt2pd zmm6,zmm20,zmm12
  918370:	62 b1 fd 48 28 c3    	vmovapd zmm0,zmm19
  918376:	62 d2 f5 40 7f c6    	vpermt2pd zmm0,zmm17,zmm14
  91837c:	62 c2 dd 40 7f de    	vpermt2pd zmm19,zmm20,zmm14
  918382:	62 d1 fd 48 28 ed    	vmovapd zmm5,zmm13
  918388:	62 f2 f5 40 7f ea    	vpermt2pd zmm5,zmm17,zmm2
  91838e:	62 72 dd 40 7f ea    	vpermt2pd zmm13,zmm20,zmm2
  918394:	62 71 fd 48 10 25 4a 	vmovupd zmm12,ZMMWORD PTR [rip+0xffffffffff7ae94a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91839b:	e9 7a ff 
  91839e:	62 b1 fd 48 28 d2    	vmovapd zmm2,zmm18
  9183a4:	62 f2 9d 48 7f d0    	vpermt2pd zmm2,zmm12,zmm0
  9183aa:	62 71 fd 48 10 35 74 	vmovupd zmm14,ZMMWORD PTR [rip+0xffffffffff7ae974]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9183b1:	e9 7a ff 
  9183b4:	62 e2 8d 48 7f d0    	vpermt2pd zmm18,zmm14,zmm0
  9183ba:	62 c1 fd 48 28 eb    	vmovapd zmm21,zmm11
  9183c0:	62 e2 9d 48 7f ed    	vpermt2pd zmm21,zmm12,zmm5
  9183c6:	62 72 8d 48 7f dd    	vpermt2pd zmm11,zmm14,zmm5
  9183cc:	62 b2 9d 48 7f e3    	vpermt2pd zmm4,zmm12,zmm19
  9183d2:	62 d2 9d 48 7f f5    	vpermt2pd zmm6,zmm12,zmm13
  9183d8:	62 b1 ed 48 14 c5    	vunpcklpd zmm0,zmm2,zmm21
  9183de:	62 b1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm21
  9183e4:	62 51 ed 40 14 eb    	vunpcklpd zmm13,zmm18,zmm11
  9183ea:	62 d1 ed 40 15 d3    	vunpckhpd zmm2,zmm18,zmm11
  9183f0:	62 71 dd 48 14 de    	vunpcklpd zmm11,zmm4,zmm6
  9183f6:	62 f1 dd 48 15 f6    	vunpckhpd zmm6,zmm4,zmm6
  9183fc:	62 e1 fd 48 28 d1    	vmovapd zmm18,zmm1
  918402:	62 c2 f5 40 7f d7    	vpermt2pd zmm18,zmm17,zmm15
  918408:	62 d2 dd 40 7f cf    	vpermt2pd zmm1,zmm20,zmm15
  91840e:	62 71 fd 48 28 fb    	vmovapd zmm15,zmm3
  918414:	62 52 f5 40 7f f9    	vpermt2pd zmm15,zmm17,zmm9
  91841a:	62 d2 dd 40 7f d9    	vpermt2pd zmm3,zmm20,zmm9
  918420:	62 f1 fd 48 28 e7    	vmovapd zmm4,zmm7
  918426:	62 b2 f5 40 7f e0    	vpermt2pd zmm4,zmm17,zmm16
  91842c:	62 b2 dd 40 7f f8    	vpermt2pd zmm7,zmm20,zmm16
  918432:	62 c2 bd 48 77 ca    	vpermi2pd zmm17,zmm8,zmm10
  918438:	62 52 dd 40 7f c2    	vpermt2pd zmm8,zmm20,zmm10
  91843e:	62 31 fd 48 28 ca    	vmovapd zmm9,zmm18
  918444:	62 72 9d 48 7f cc    	vpermt2pd zmm9,zmm12,zmm4
  91844a:	62 e2 8d 48 7f d4    	vpermt2pd zmm18,zmm14,zmm4
  918450:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  918456:	62 32 9d 48 7f d1    	vpermt2pd zmm10,zmm12,zmm17
  91845c:	62 32 8d 48 7f f9    	vpermt2pd zmm15,zmm14,zmm17
  918462:	62 f2 9d 48 7f cf    	vpermt2pd zmm1,zmm12,zmm7
  918468:	62 d2 9d 48 7f d8    	vpermt2pd zmm3,zmm12,zmm8
  91846e:	62 d1 b5 48 14 e2    	vunpcklpd zmm4,zmm9,zmm10
  918474:	62 51 b5 48 15 c2    	vunpckhpd zmm8,zmm9,zmm10
  91847a:	62 51 ed 40 14 cf    	vunpcklpd zmm9,zmm18,zmm15
  918480:	62 d1 ed 40 15 ff    	vunpckhpd zmm7,zmm18,zmm15
  918486:	62 71 f5 48 14 d3    	vunpcklpd zmm10,zmm1,zmm3
  91848c:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  918492:	62 f1 fd 48 10 5a 02 	vmovupd zmm3,ZMMWORD PTR [rdx+0x80]
  918499:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  9184a0:	62 71 fd 48 10 72 04 	vmovupd zmm14,ZMMWORD PTR [rdx+0x100]
  9184a7:	62 71 fd 48 10 7a 05 	vmovupd zmm15,ZMMWORD PTR [rdx+0x140]
  9184ae:	62 c1 95 48 59 c6    	vmulpd zmm16,zmm13,zmm14
  9184b4:	62 c2 b5 48 bc c7    	vfnmadd231pd zmm16,zmm9,zmm15
  9184ba:	62 e1 fd 48 10 4a 09 	vmovupd zmm17,ZMMWORD PTR [rdx+0x240]
  9184c1:	62 e1 fd 48 10 52 08 	vmovupd zmm18,ZMMWORD PTR [rdx+0x200]
  9184c8:	62 a1 a5 48 59 da    	vmulpd zmm19,zmm11,zmm18
  9184ce:	62 a2 ad 48 bc d9    	vfnmadd231pd zmm19,zmm10,zmm17
  9184d4:	62 e2 fd 48 19 25 42 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff75c742]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9184db:	c7 75 ff 
  9184de:	62 a1 fd 40 5c eb    	vsubpd zmm21,zmm16,zmm19
  9184e4:	62 a1 d5 40 59 ec    	vmulpd zmm21,zmm21,zmm20
  9184ea:	62 51 b5 48 59 ce    	vmulpd zmm9,zmm9,zmm14
  9184f0:	62 52 95 48 b8 cf    	vfmadd231pd zmm9,zmm13,zmm15
  9184f6:	62 31 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm18
  9184fc:	62 32 a5 48 b8 d1    	vfmadd231pd zmm10,zmm11,zmm17
  918502:	62 72 fd 48 19 1d 8c 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff75c58c]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  918509:	c5 75 ff 
  91850c:	62 51 b5 48 58 ea    	vaddpd zmm13,zmm9,zmm10
  918512:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  918518:	62 72 95 48 ac f4    	vfnmadd213pd zmm14,zmm13,zmm4
  91851e:	62 51 d5 40 58 fe    	vaddpd zmm15,zmm21,zmm14
  918524:	62 e1 fd 48 10 4a 0b 	vmovupd zmm17,ZMMWORD PTR [rdx+0x2c0]
  91852b:	62 e1 fd 48 10 52 0a 	vmovupd zmm18,ZMMWORD PTR [rdx+0x280]
  918532:	62 a1 f5 48 59 f2    	vmulpd zmm22,zmm1,zmm18
  918538:	62 a2 cd 48 b8 f1    	vfmadd231pd zmm22,zmm6,zmm17
  91853e:	62 e1 bd 48 59 fb    	vmulpd zmm23,zmm8,zmm3
  918544:	62 c2 d5 48 b8 fc    	vfmadd231pd zmm23,zmm5,zmm12
  91854a:	62 21 cd 40 58 c7    	vaddpd zmm24,zmm22,zmm23
  918550:	62 61 fd 48 10 4a 07 	vmovupd zmm25,ZMMWORD PTR [rdx+0x1c0]
  918557:	62 61 fd 48 10 52 06 	vmovupd zmm26,ZMMWORD PTR [rdx+0x180]
  91855e:	62 01 c5 48 59 da    	vmulpd zmm27,zmm7,zmm26
  918564:	62 02 ed 48 b8 d9    	vfmadd231pd zmm27,zmm2,zmm25
  91856a:	62 41 fd 48 28 e3    	vmovapd zmm28,zmm11
  918570:	62 02 bd 40 ac e3    	vfnmadd213pd zmm28,zmm24,zmm27
  918576:	62 b1 cd 48 59 f2    	vmulpd zmm6,zmm6,zmm18
  91857c:	62 b2 f5 48 bc f1    	vfnmadd231pd zmm6,zmm1,zmm17
  918582:	62 f1 d5 48 59 db    	vmulpd zmm3,zmm5,zmm3
  918588:	62 d2 bd 48 bc dc    	vfnmadd231pd zmm3,zmm8,zmm12
  91858e:	62 f1 cd 48 5c cb    	vsubpd zmm1,zmm6,zmm3
  918594:	62 b1 f5 48 59 ec    	vmulpd zmm5,zmm1,zmm20
  91859a:	62 71 9d 40 58 c5    	vaddpd zmm8,zmm28,zmm5
  9185a0:	62 d1 85 48 5c c8    	vsubpd zmm1,zmm15,zmm8
  9185a6:	62 31 fd 40 58 e3    	vaddpd zmm12,zmm16,zmm19
  9185ac:	62 c1 fd 48 28 c3    	vmovapd zmm16,zmm11
  9185b2:	62 e2 9d 48 ac c0    	vfnmadd213pd zmm16,zmm12,zmm0
  9185b8:	62 51 b5 48 5c ca    	vsubpd zmm9,zmm9,zmm10
  9185be:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  9185c4:	62 51 fd 40 5c d1    	vsubpd zmm10,zmm16,zmm9
  9185ca:	62 f1 cd 48 58 db    	vaddpd zmm3,zmm6,zmm3
  9185d0:	62 91 ed 48 59 d2    	vmulpd zmm2,zmm2,zmm26
  9185d6:	62 92 c5 48 bc d1    	vfnmadd231pd zmm2,zmm7,zmm25
  9185dc:	62 72 e5 48 ac da    	vfnmadd213pd zmm11,zmm3,zmm2
  9185e2:	62 b1 cd 40 5c f7    	vsubpd zmm6,zmm22,zmm23
  9185e8:	62 b1 cd 48 59 f4    	vmulpd zmm6,zmm6,zmm20
  9185ee:	62 f1 a5 48 5c fe    	vsubpd zmm7,zmm11,zmm6
  9185f4:	62 e1 ad 48 5c cf    	vsubpd zmm17,zmm10,zmm7
  9185fa:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  918600:	62 f1 9d 40 5c ed    	vsubpd zmm5,zmm28,zmm5
  918606:	62 e1 8d 48 58 d5    	vaddpd zmm18,zmm14,zmm5
  91860c:	62 51 fd 40 58 c9    	vaddpd zmm9,zmm16,zmm9
  918612:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  918618:	62 71 b5 48 58 de    	vaddpd zmm11,zmm9,zmm6
  91861e:	62 f1 95 48 58 e4    	vaddpd zmm4,zmm13,zmm4
  918624:	62 11 a5 40 58 e8    	vaddpd zmm13,zmm27,zmm24
  91862a:	62 c1 dd 48 5c c5    	vsubpd zmm16,zmm4,zmm13
  918630:	62 d1 fd 48 58 c4    	vaddpd zmm0,zmm0,zmm12
  918636:	62 f1 ed 48 58 d3    	vaddpd zmm2,zmm2,zmm3
  91863c:	62 f1 fd 48 5c da    	vsubpd zmm3,zmm0,zmm2
  918642:	62 51 85 48 58 c0    	vaddpd zmm8,zmm15,zmm8
  918648:	62 f1 ad 48 58 ff    	vaddpd zmm7,zmm10,zmm7
  91864e:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  918654:	62 f1 b5 48 5c f6    	vsubpd zmm6,zmm9,zmm6
  91865a:	62 d1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm13
  918660:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  918666:	62 f1 fd 48 28 15 d0 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff7676d0]        # 7fd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd1f0>
  91866d:	76 76 ff 
  918670:	62 71 fd 48 28 c8    	vmovapd zmm9,zmm0
  918676:	62 72 ed 48 7f cc    	vpermt2pd zmm9,zmm2,zmm4
  91867c:	62 71 fd 48 28 15 fa 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff7676fa]        # 7fd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd230>
  918683:	76 76 ff 
  918686:	62 f2 ad 48 7f c4    	vpermt2pd zmm0,zmm10,zmm4
  91868c:	62 f1 fd 48 11 06    	vmovupd ZMMWORD PTR [rsi],zmm0
  918692:	62 71 fd 48 11 4e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm9
  918699:	62 f1 fd 48 28 c6    	vmovapd zmm0,zmm6
  91869f:	62 f2 ed 48 7f c5    	vpermt2pd zmm0,zmm2,zmm5
  9186a5:	62 f2 ad 48 7f f5    	vpermt2pd zmm6,zmm10,zmm5
  9186ab:	62 f1 fd 48 11 76 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm6
  9186b2:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  9186b9:	62 f1 fd 48 28 c7    	vmovapd zmm0,zmm7
  9186bf:	62 d2 ed 48 7f c0    	vpermt2pd zmm0,zmm2,zmm8
  9186c5:	62 d2 ad 48 7f f8    	vpermt2pd zmm7,zmm10,zmm8
  9186cb:	62 f1 fd 48 11 7e 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm7
  9186d2:	62 f1 fd 48 11 46 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm0
  9186d9:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  9186df:	62 b2 ed 48 7f c0    	vpermt2pd zmm0,zmm2,zmm16
  9186e5:	62 b2 ad 48 7f d8    	vpermt2pd zmm3,zmm10,zmm16
  9186eb:	62 f1 fd 48 11 5e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm3
  9186f2:	62 f1 fd 48 11 46 07 	vmovupd ZMMWORD PTR [rsi+0x1c0],zmm0
  9186f9:	62 d1 fd 48 28 c3    	vmovapd zmm0,zmm11
  9186ff:	62 b2 ed 48 7f c2    	vpermt2pd zmm0,zmm2,zmm18
  918705:	62 32 ad 48 7f da    	vpermt2pd zmm11,zmm10,zmm18
  91870b:	62 71 fd 48 11 5e 08 	vmovupd ZMMWORD PTR [rsi+0x200],zmm11
  918712:	62 f1 fd 48 11 46 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm0
  918719:	62 f2 f5 40 77 d1    	vpermi2pd zmm2,zmm17,zmm1
  91871f:	62 e2 ad 48 7f c9    	vpermt2pd zmm17,zmm10,zmm1
  918725:	62 e1 fd 48 11 4e 0a 	vmovupd ZMMWORD PTR [rsi+0x280],zmm17
  91872c:	62 f1 fd 48 11 56 0b 	vmovupd ZMMWORD PTR [rsi+0x2c0],zmm2
  918733:	c5 f8 77             	vzeroupper
  918736:	c3                   	ret
