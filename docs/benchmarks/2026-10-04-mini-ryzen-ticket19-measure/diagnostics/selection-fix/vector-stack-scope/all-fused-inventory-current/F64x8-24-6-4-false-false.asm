
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000093bfc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  93bfc0:	62 f1 fd 48 28 25 f6 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff746cf6]        # 82cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10170>
  93bfc7:	6c 74 ff 
  93bfca:	62 f1 fd 48 10 17    	vmovupd zmm2,ZMMWORD PTR [rdi]
  93bfd0:	62 f1 fd 48 10 6f 01 	vmovupd zmm5,ZMMWORD PTR [rdi+0x40]
  93bfd7:	62 f1 fd 48 10 77 02 	vmovupd zmm6,ZMMWORD PTR [rdi+0x80]
  93bfde:	62 f1 fd 48 10 5f 03 	vmovupd zmm3,ZMMWORD PTR [rdi+0xc0]
  93bfe5:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  93bfe9:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  93bfef:	62 f2 dd 48 7f f8    	vpermt2pd zmm7,zmm4,zmm0
  93bff5:	62 f1 fd 48 28 0d 01 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff746d01]        # 82d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x101b0>
  93bffc:	6d 74 ff 
  93bfff:	62 f2 f5 48 7f d0    	vpermt2pd zmm2,zmm1,zmm0
  93c005:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  93c00b:	62 72 dd 48 7f c0    	vpermt2pd zmm8,zmm4,zmm0
  93c011:	62 f2 f5 48 7f e8    	vpermt2pd zmm5,zmm1,zmm0
  93c017:	62 71 fd 48 28 ce    	vmovapd zmm9,zmm6
  93c01d:	62 72 dd 48 7f c8    	vpermt2pd zmm9,zmm4,zmm0
  93c023:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  93c029:	62 71 fd 48 28 d3    	vmovapd zmm10,zmm3
  93c02f:	62 72 dd 48 7f d0    	vpermt2pd zmm10,zmm4,zmm0
  93c035:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  93c03b:	62 71 fd 48 10 5f 04 	vmovupd zmm11,ZMMWORD PTR [rdi+0x100]
  93c042:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  93c048:	62 72 dd 48 7f e0    	vpermt2pd zmm12,zmm4,zmm0
  93c04e:	62 72 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm0
  93c054:	62 71 fd 48 10 6f 05 	vmovupd zmm13,ZMMWORD PTR [rdi+0x140]
  93c05b:	62 f2 95 48 77 e0    	vpermi2pd zmm4,zmm13,zmm0
  93c061:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  93c067:	62 51 b5 48 58 f4    	vaddpd zmm14,zmm9,zmm12
  93c06d:	62 51 c5 48 58 fe    	vaddpd zmm15,zmm7,zmm14
  93c073:	62 c1 dd 48 58 c0    	vaddpd zmm16,zmm4,zmm8
  93c079:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  93c07f:	62 a1 85 48 58 d1    	vaddpd zmm18,zmm15,zmm17
  93c085:	62 c1 cd 48 58 db    	vaddpd zmm19,zmm6,zmm11
  93c08b:	62 a1 ed 48 58 e3    	vaddpd zmm20,zmm2,zmm19
  93c091:	62 e1 95 48 58 ed    	vaddpd zmm21,zmm13,zmm5
  93c097:	62 a1 e5 48 58 f5    	vaddpd zmm22,zmm3,zmm21
  93c09d:	62 b1 dd 40 58 ce    	vaddpd zmm1,zmm20,zmm22
  93c0a3:	62 e2 fd 48 19 3d eb 	vbroadcastsd zmm23,QWORD PTR [rip+0xffffffffff7389eb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93c0aa:	89 73 ff 
  93c0ad:	62 d2 c5 40 bc fe    	vfnmadd231pd zmm7,zmm23,zmm14
  93c0b3:	62 d1 cd 48 5c f3    	vsubpd zmm6,zmm6,zmm11
  93c0b9:	62 72 fd 48 19 1d 5d 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff738b5d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  93c0c0:	8b 73 ff 
  93c0c3:	62 d1 cd 48 59 f3    	vmulpd zmm6,zmm6,zmm11
  93c0c9:	62 71 c5 48 58 f6    	vaddpd zmm14,zmm7,zmm6
  93c0cf:	62 32 c5 40 bc d0    	vfnmadd231pd zmm10,zmm23,zmm16
  93c0d5:	62 f1 95 48 5c ed    	vsubpd zmm5,zmm13,zmm5
  93c0db:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  93c0e1:	62 71 ad 48 58 ed    	vaddpd zmm13,zmm10,zmm5
  93c0e7:	62 c1 8d 48 5c c5    	vsubpd zmm16,zmm14,zmm13
  93c0ed:	62 b2 c5 40 bc d3    	vfnmadd231pd zmm2,zmm23,zmm19
  93c0f3:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  93c0f9:	62 51 b5 48 59 cb    	vmulpd zmm9,zmm9,zmm11
  93c0ff:	62 51 ed 48 5c e1    	vsubpd zmm12,zmm2,zmm9
  93c105:	62 b2 d5 40 bc df    	vfnmadd231pd zmm3,zmm21,zmm23
  93c10b:	62 d1 dd 48 5c e0    	vsubpd zmm4,zmm4,zmm8
  93c111:	62 d1 dd 48 59 e3    	vmulpd zmm4,zmm4,zmm11
  93c117:	62 71 e5 48 5c c4    	vsubpd zmm8,zmm3,zmm4
  93c11d:	62 51 9d 48 5c d8    	vsubpd zmm11,zmm12,zmm8
  93c123:	62 f1 c5 48 5c f6    	vsubpd zmm6,zmm7,zmm6
  93c129:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  93c12f:	62 f1 cd 48 58 fd    	vaddpd zmm7,zmm6,zmm5
  93c135:	62 f1 b5 48 58 d2    	vaddpd zmm2,zmm9,zmm2
  93c13b:	62 f1 dd 48 58 db    	vaddpd zmm3,zmm4,zmm3
  93c141:	62 f1 ed 48 58 e3    	vaddpd zmm4,zmm2,zmm3
  93c147:	62 31 85 48 5c c9    	vsubpd zmm9,zmm15,zmm17
  93c14d:	62 31 dd 40 5c d6    	vsubpd zmm10,zmm20,zmm22
  93c153:	62 51 8d 48 58 ed    	vaddpd zmm13,zmm14,zmm13
  93c159:	62 51 9d 48 58 c0    	vaddpd zmm8,zmm12,zmm8
  93c15f:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  93c165:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  93c16b:	62 f1 fd 48 10 1d f3 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff78abf3]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  93c172:	ab 78 ff 
  93c175:	62 c2 e5 48 7f d5    	vpermt2pd zmm18,zmm3,zmm13
  93c17b:	62 e2 e5 48 7f c5    	vpermt2pd zmm16,zmm3,zmm5
  93c181:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  93c187:	62 72 e5 48 7f c8    	vpermt2pd zmm9,zmm3,zmm0
  93c18d:	62 f1 fd 48 10 2d 51 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff78ab51]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  93c194:	ab 78 ff 
  93c197:	62 b1 fd 48 28 f2    	vmovapd zmm6,zmm18
  93c19d:	62 f2 d5 48 7f f7    	vpermt2pd zmm6,zmm5,zmm7
  93c1a3:	62 71 fd 48 10 25 7b 	vmovupd zmm12,ZMMWORD PTR [rip+0xffffffffff78ab7b]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93c1aa:	ab 78 ff 
  93c1ad:	62 e2 9d 48 7f d7    	vpermt2pd zmm18,zmm12,zmm7
  93c1b3:	62 b1 fd 48 28 f8    	vmovapd zmm7,zmm16
  93c1b9:	62 d2 d5 48 7f f9    	vpermt2pd zmm7,zmm5,zmm9
  93c1bf:	62 c2 9d 48 7f c1    	vpermt2pd zmm16,zmm12,zmm9
  93c1c5:	62 71 cd 48 14 cf    	vunpcklpd zmm9,zmm6,zmm7
  93c1cb:	62 f1 cd 48 15 f7    	vunpckhpd zmm6,zmm6,zmm7
  93c1d1:	62 b1 ed 40 14 f8    	vunpcklpd zmm7,zmm18,zmm16
  93c1d7:	62 31 ed 40 15 e8    	vunpckhpd zmm13,zmm18,zmm16
  93c1dd:	62 d2 e5 48 7f c8    	vpermt2pd zmm1,zmm3,zmm8
  93c1e3:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  93c1e9:	62 f2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm0
  93c1ef:	62 72 e5 48 7f d0    	vpermt2pd zmm10,zmm3,zmm0
  93c1f5:	62 f1 fd 48 28 c1    	vmovapd zmm0,zmm1
  93c1fb:	62 f2 d5 48 7f c4    	vpermt2pd zmm0,zmm5,zmm4
  93c201:	62 f2 9d 48 7f cc    	vpermt2pd zmm1,zmm12,zmm4
  93c207:	62 d2 a5 48 77 ea    	vpermi2pd zmm5,zmm11,zmm10
  93c20d:	62 52 9d 48 7f da    	vpermt2pd zmm11,zmm12,zmm10
  93c213:	62 f1 fd 48 14 d5    	vunpcklpd zmm2,zmm0,zmm5
  93c219:	62 f1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm5
  93c21f:	62 d1 f5 48 14 db    	vunpcklpd zmm3,zmm1,zmm11
  93c225:	62 d1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm11
  93c22b:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  93c232:	62 f1 fd 48 10 6a 03 	vmovupd zmm5,ZMMWORD PTR [rdx+0xc0]
  93c239:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  93c240:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  93c247:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  93c24e:	62 71 fd 48 10 62 07 	vmovupd zmm12,ZMMWORD PTR [rdx+0x1c0]
  93c255:	62 51 c5 48 59 f0    	vmulpd zmm14,zmm7,zmm8
  93c25b:	62 52 e5 48 bc f2    	vfnmadd231pd zmm14,zmm3,zmm10
  93c261:	62 51 b5 48 58 fe    	vaddpd zmm15,zmm9,zmm14
  93c267:	62 e1 cd 48 59 c4    	vmulpd zmm16,zmm6,zmm4
  93c26d:	62 e2 fd 48 bc c5    	vfnmadd231pd zmm16,zmm0,zmm5
  93c273:	62 c1 95 48 59 cb    	vmulpd zmm17,zmm13,zmm11
  93c279:	62 c2 f5 48 bc cc    	vfnmadd231pd zmm17,zmm1,zmm12
  93c27f:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  93c285:	62 d1 e5 48 59 d8    	vmulpd zmm3,zmm3,zmm8
  93c28b:	62 d2 c5 48 b8 da    	vfmadd231pd zmm3,zmm7,zmm10
  93c291:	62 f1 e5 48 58 fa    	vaddpd zmm7,zmm3,zmm2
  93c297:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  93c29d:	62 f2 cd 48 b8 c5    	vfmadd231pd zmm0,zmm6,zmm5
  93c2a3:	62 d1 f5 48 59 cb    	vmulpd zmm1,zmm1,zmm11
  93c2a9:	62 d2 95 48 b8 cc    	vfmadd231pd zmm1,zmm13,zmm12
  93c2af:	62 f1 fd 48 58 e1    	vaddpd zmm4,zmm0,zmm1
  93c2b5:	62 d1 b5 48 5c ee    	vsubpd zmm5,zmm9,zmm14
  93c2bb:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  93c2c1:	62 f1 d5 48 58 c8    	vaddpd zmm1,zmm5,zmm0
  93c2c7:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  93c2cd:	62 b1 f5 40 5c d8    	vsubpd zmm3,zmm17,zmm16
  93c2d3:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  93c2d9:	c5 7d 28 05 1f aa 73 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff73aa1f]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  93c2e0:	ff 
  93c2e1:	62 71 fd 48 28 c9    	vmovapd zmm9,zmm1
  93c2e7:	62 72 bd 48 7f ce    	vpermt2pd zmm9,zmm8,zmm6
  93c2ed:	62 31 85 48 5c d2    	vsubpd zmm10,zmm15,zmm18
  93c2f3:	62 71 c5 48 5c dc    	vsubpd zmm11,zmm7,zmm4
  93c2f9:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  93c2ff:	62 52 bd 48 7f e3    	vpermt2pd zmm12,zmm8,zmm11
  93c305:	62 f1 d5 48 5c c0    	vsubpd zmm0,zmm5,zmm0
  93c30b:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  93c311:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  93c317:	62 f2 bd 48 7f da    	vpermt2pd zmm3,zmm8,zmm2
  93c31d:	62 b1 85 48 58 ea    	vaddpd zmm5,zmm15,zmm18
  93c323:	62 f1 c5 48 58 e4    	vaddpd zmm4,zmm7,zmm4
  93c329:	62 72 d5 48 77 c4    	vpermi2pd zmm8,zmm5,zmm4
  93c32f:	62 f1 fd 48 28 3d 07 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff746a07]        # 82d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x101f0>
  93c336:	6a 74 ff 
  93c339:	62 f2 c5 48 7f ec    	vpermt2pd zmm5,zmm7,zmm4
  93c33f:	62 f1 fd 48 11 2e    	vmovupd ZMMWORD PTR [rsi],zmm5
  93c345:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  93c34a:	62 f2 c5 48 7f ce    	vpermt2pd zmm1,zmm7,zmm6
  93c350:	62 f1 fd 48 11 8e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm1
  93c357:	00 00 00 
  93c35a:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  93c361:	00 
  93c362:	62 52 c5 48 7f d3    	vpermt2pd zmm10,zmm7,zmm11
  93c368:	62 71 fd 48 11 56 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm10
  93c36f:	c5 7d 11 a6 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm12
  93c376:	00 
  93c377:	62 f2 c5 48 7f c2    	vpermt2pd zmm0,zmm7,zmm2
  93c37d:	62 f1 fd 48 11 86 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm0
  93c384:	01 00 00 
  93c387:	c5 fd 11 9e 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm3
  93c38e:	00 
  93c38f:	c5 f8 77             	vzeroupper
  93c392:	c3                   	ret
