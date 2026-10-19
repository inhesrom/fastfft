
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008fff80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8fff80:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  8fff86:	c5 f9 10 4f 40       	vmovupd xmm1,XMMWORD PTR [rdi+0x40]
  8fff8b:	62 f1 fd 48 28 15 6b 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff77df6b]        # 7df00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb3b0>
  8fff92:	df 77 ff 
  8fff95:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  8fff9b:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  8fffa1:	62 f1 fd 48 28 25 95 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff77df95]        # 7df40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb3f0>
  8fffa8:	df 77 ff 
  8fffab:	62 f2 dd 48 7f c1    	vpermt2pd zmm0,zmm4,zmm1
  8fffb1:	62 f1 fd 48 10 af 50 	vmovupd zmm5,ZMMWORD PTR [rdi+0x50]
  8fffb8:	00 00 00 
  8fffbb:	c5 f9 10 8f 90 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0x90]
  8fffc2:	00 
  8fffc3:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  8fffc9:	62 f2 ed 48 7f f1    	vpermt2pd zmm6,zmm2,zmm1
  8fffcf:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  8fffd5:	62 f1 fd 48 10 bf a0 	vmovupd zmm7,ZMMWORD PTR [rdi+0xa0]
  8fffdc:	00 00 00 
  8fffdf:	c5 f9 10 8f e0 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0xe0]
  8fffe6:	00 
  8fffe7:	62 f2 c5 48 77 d1    	vpermi2pd zmm2,zmm7,zmm1
  8fffed:	62 f2 dd 48 7f f9    	vpermt2pd zmm7,zmm4,zmm1
  8ffff3:	62 f1 d5 48 58 e7    	vaddpd zmm4,zmm5,zmm7
  8ffff9:	62 71 fd 48 58 c4    	vaddpd zmm8,zmm0,zmm4
  8fffff:	62 71 cd 48 58 ca    	vaddpd zmm9,zmm6,zmm2
  900005:	62 72 fd 48 19 15 89 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff774a89]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  90000c:	4a 77 ff 
  90000f:	62 d1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm9
  900015:	62 f2 ad 48 bc c4    	vfnmadd231pd zmm0,zmm10,zmm4
  90001b:	62 f2 fd 48 19 25 fb 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff774bfb]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  900022:	4b 77 ff 
  900025:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  90002b:	62 f1 ed 48 59 f4    	vmulpd zmm6,zmm2,zmm4
  900031:	62 71 fd 48 58 de    	vaddpd zmm11,zmm0,zmm6
  900037:	62 d2 b5 48 bc da    	vfnmadd231pd zmm3,zmm9,zmm10
  90003d:	62 f1 d5 48 5c d7    	vsubpd zmm2,zmm5,zmm7
  900043:	62 f1 ed 48 59 e4    	vmulpd zmm4,zmm2,zmm4
  900049:	62 f1 e5 48 5c d4    	vsubpd zmm2,zmm3,zmm4
  90004f:	62 f1 fd 48 5c c6    	vsubpd zmm0,zmm0,zmm6
  900055:	62 f1 dd 48 58 db    	vaddpd zmm3,zmm4,zmm3
  90005b:	62 f1 fd 48 10 25 03 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7c6d03]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  900062:	6d 7c ff 
  900065:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
  900069:	62 d1 fd 48 28 f0    	vmovapd zmm6,zmm8
  90006f:	62 f2 dd 48 7f f5    	vpermt2pd zmm6,zmm4,zmm5
  900075:	62 f1 fd 48 10 3d 29 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff7c6d29]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  90007c:	6d 7c ff 
  90007f:	62 72 c5 48 7f c5    	vpermt2pd zmm8,zmm7,zmm5
  900085:	62 51 fd 48 28 cb    	vmovapd zmm9,zmm11
  90008b:	62 72 dd 48 7f cd    	vpermt2pd zmm9,zmm4,zmm5
  900091:	62 72 c5 48 7f dd    	vpermt2pd zmm11,zmm7,zmm5
  900097:	62 71 fd 48 28 d0    	vmovapd zmm10,zmm0
  90009d:	62 72 dd 48 7f d5    	vpermt2pd zmm10,zmm4,zmm5
  9000a3:	62 f2 c5 48 7f c5    	vpermt2pd zmm0,zmm7,zmm5
  9000a9:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  9000ae:	62 52 dd 48 7f e4    	vpermt2pd zmm12,zmm4,zmm12
  9000b4:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  9000b9:	62 52 c5 48 7f ed    	vpermt2pd zmm13,zmm7,zmm13
  9000bf:	62 71 fd 48 10 35 1f 	vmovupd zmm14,ZMMWORD PTR [rip+0xffffffffff7c6c1f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9000c6:	6c 7c ff 
  9000c9:	62 71 fd 48 28 fe    	vmovapd zmm15,zmm6
  9000cf:	62 52 8d 48 7f fa    	vpermt2pd zmm15,zmm14,zmm10
  9000d5:	62 e1 fd 48 10 05 49 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7c6c49]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9000dc:	6c 7c ff 
  9000df:	62 d2 fd 40 7f f2    	vpermt2pd zmm6,zmm16,zmm10
  9000e5:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  9000eb:	62 52 8d 48 7f d4    	vpermt2pd zmm10,zmm14,zmm12
  9000f1:	62 52 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm12
  9000f7:	62 72 8d 48 7f c0    	vpermt2pd zmm8,zmm14,zmm0
  9000fd:	62 52 8d 48 7f dd    	vpermt2pd zmm11,zmm14,zmm13
  900103:	62 51 bd 48 14 c3    	vunpcklpd zmm8,zmm8,zmm11
  900109:	62 d1 85 48 14 c2    	vunpcklpd zmm0,zmm15,zmm10
  90010f:	62 51 85 48 15 d2    	vunpckhpd zmm10,zmm15,zmm10
  900115:	62 51 cd 48 14 d9    	vunpcklpd zmm11,zmm6,zmm9
  90011b:	62 d1 cd 48 15 f1    	vunpckhpd zmm6,zmm6,zmm9
  900121:	62 71 fd 48 28 c9    	vmovapd zmm9,zmm1
  900127:	62 72 dd 48 7f cd    	vpermt2pd zmm9,zmm4,zmm5
  90012d:	62 f2 c5 48 7f cd    	vpermt2pd zmm1,zmm7,zmm5
  900133:	62 71 fd 48 28 fa    	vmovapd zmm15,zmm2
  900139:	62 72 dd 48 7f fd    	vpermt2pd zmm15,zmm4,zmm5
  90013f:	62 f2 c5 48 7f d5    	vpermt2pd zmm2,zmm7,zmm5
  900145:	62 f2 e5 48 77 e5    	vpermi2pd zmm4,zmm3,zmm5
  90014b:	62 f2 c5 48 7f dd    	vpermt2pd zmm3,zmm7,zmm5
  900151:	62 d1 fd 48 28 e9    	vmovapd zmm5,zmm9
  900157:	62 f2 8d 48 7f ec    	vpermt2pd zmm5,zmm14,zmm4
  90015d:	62 72 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm4
  900163:	62 d1 fd 48 28 e7    	vmovapd zmm4,zmm15
  900169:	62 d2 8d 48 7f e4    	vpermt2pd zmm4,zmm14,zmm12
  90016f:	62 52 fd 40 7f fc    	vpermt2pd zmm15,zmm16,zmm12
  900175:	62 f2 8d 48 7f cb    	vpermt2pd zmm1,zmm14,zmm3
  90017b:	62 d2 8d 48 7f d5    	vpermt2pd zmm2,zmm14,zmm13
  900181:	62 f1 f5 48 14 da    	vunpcklpd zmm3,zmm1,zmm2
  900187:	62 f1 d5 48 14 cc    	vunpcklpd zmm1,zmm5,zmm4
  90018d:	62 f1 d5 48 15 e4    	vunpckhpd zmm4,zmm5,zmm4
  900193:	62 d1 b5 48 14 ef    	vunpcklpd zmm5,zmm9,zmm15
  900199:	62 d1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm15
  90019f:	62 71 fd 48 10 4a 02 	vmovupd zmm9,ZMMWORD PTR [rdx+0x80]
  9001a6:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  9001ad:	62 71 fd 48 10 6a 04 	vmovupd zmm13,ZMMWORD PTR [rdx+0x100]
  9001b4:	62 71 fd 48 10 72 05 	vmovupd zmm14,ZMMWORD PTR [rdx+0x140]
  9001bb:	62 71 fd 48 10 7a 06 	vmovupd zmm15,ZMMWORD PTR [rdx+0x180]
  9001c2:	62 e1 fd 48 10 42 07 	vmovupd zmm16,ZMMWORD PTR [rdx+0x1c0]
  9001c9:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  9001d0:	62 e1 fd 48 10 52 09 	vmovupd zmm18,ZMMWORD PTR [rdx+0x240]
  9001d7:	62 c1 ad 48 59 d9    	vmulpd zmm19,zmm10,zmm9
  9001dd:	62 c2 dd 48 bc dc    	vfnmadd231pd zmm19,zmm4,zmm12
  9001e3:	62 a1 bd 48 59 e1    	vmulpd zmm20,zmm8,zmm17
  9001e9:	62 a2 e5 48 bc e2    	vfnmadd231pd zmm20,zmm3,zmm18
  9001ef:	62 b1 e5 40 58 d4    	vaddpd zmm2,zmm19,zmm20
  9001f5:	62 c1 a5 48 59 ed    	vmulpd zmm21,zmm11,zmm13
  9001fb:	62 c2 d5 48 bc ee    	vfnmadd231pd zmm21,zmm5,zmm14
  900201:	62 c1 cd 48 59 f7    	vmulpd zmm22,zmm6,zmm15
  900207:	62 a2 c5 48 bc f0    	vfnmadd231pd zmm22,zmm7,zmm16
  90020d:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  900213:	62 d1 dd 48 59 e1    	vmulpd zmm4,zmm4,zmm9
  900219:	62 d2 ad 48 b8 e4    	vfmadd231pd zmm4,zmm10,zmm12
  90021f:	62 b1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm17
  900225:	62 b2 bd 48 b8 da    	vfmadd231pd zmm3,zmm8,zmm18
  90022b:	62 71 dd 48 58 c3    	vaddpd zmm8,zmm4,zmm3
  900231:	62 d1 d5 48 59 ed    	vmulpd zmm5,zmm5,zmm13
  900237:	62 d2 a5 48 b8 ee    	vfmadd231pd zmm5,zmm11,zmm14
  90023d:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  900243:	62 b2 cd 48 b8 f8    	vfmadd231pd zmm7,zmm6,zmm16
  900249:	62 f1 d5 48 58 f7    	vaddpd zmm6,zmm5,zmm7
  90024f:	62 72 fd 48 19 0d ff 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff7747ff]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  900256:	47 77 ff 
  900259:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  90025f:	62 72 ed 48 a8 d0    	vfmadd213pd zmm10,zmm2,zmm0
  900265:	62 72 fd 48 19 1d a9 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff774da9]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  90026c:	4d 77 ff 
  90026f:	62 52 c5 40 bc d3    	vfnmadd231pd zmm10,zmm23,zmm11
  900275:	62 f1 dd 48 5c db    	vsubpd zmm3,zmm4,zmm3
  90027b:	62 f1 d5 48 5c e7    	vsubpd zmm4,zmm5,zmm7
  900281:	62 f2 fd 48 19 2d 3d 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff77453d]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  900288:	45 77 ff 
  90028b:	62 f1 dd 48 59 fd    	vmulpd zmm7,zmm4,zmm5
  900291:	62 72 fd 48 19 25 35 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff774935]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  900298:	49 77 ff 
  90029b:	62 d2 e5 48 b8 fc    	vfmadd231pd zmm7,zmm3,zmm12
  9002a1:	62 71 ad 48 58 ef    	vaddpd zmm13,zmm10,zmm7
  9002a7:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  9002ad:	62 72 bd 48 a8 f1    	vfmadd213pd zmm14,zmm8,zmm1
  9002b3:	62 52 cd 48 bc f3    	vfnmadd231pd zmm14,zmm6,zmm11
  9002b9:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  9002bf:	62 a1 d5 40 5c c6    	vsubpd zmm16,zmm21,zmm22
  9002c5:	62 e1 fd 40 59 cd    	vmulpd zmm17,zmm16,zmm5
  9002cb:	62 c2 85 48 b8 cc    	vfmadd231pd zmm17,zmm15,zmm12
  9002d1:	62 a1 8d 48 5c d1    	vsubpd zmm18,zmm14,zmm17
  9002d7:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  9002dd:	62 e2 ed 48 ac d8    	vfnmadd213pd zmm19,zmm2,zmm0
  9002e3:	62 c2 c5 40 b8 d9    	vfmadd231pd zmm19,zmm23,zmm9
  9002e9:	62 f1 e5 48 59 dd    	vmulpd zmm3,zmm3,zmm5
  9002ef:	62 f2 9d 48 bc dc    	vfnmadd231pd zmm3,zmm12,zmm4
  9002f5:	62 f1 e5 40 58 e3    	vaddpd zmm4,zmm19,zmm3
  9002fb:	62 72 bd 48 ac d9    	vfnmadd213pd zmm11,zmm8,zmm1
  900301:	62 52 cd 48 b8 d9    	vfmadd231pd zmm11,zmm6,zmm9
  900307:	62 f1 85 48 59 ed    	vmulpd zmm5,zmm15,zmm5
  90030d:	62 d2 fd 40 bc ec    	vfnmadd231pd zmm5,zmm16,zmm12
  900313:	62 71 a5 48 5c cd    	vsubpd zmm9,zmm11,zmm5
  900319:	62 f1 e5 40 5c db    	vsubpd zmm3,zmm19,zmm3
  90031f:	62 f1 a5 48 58 ed    	vaddpd zmm5,zmm11,zmm5
  900325:	62 f1 ad 48 5c ff    	vsubpd zmm7,zmm10,zmm7
  90032b:	62 31 8d 48 58 d1    	vaddpd zmm10,zmm14,zmm17
  900331:	62 f1 bd 48 58 c9    	vaddpd zmm1,zmm8,zmm1
  900337:	62 f1 f5 48 58 ce    	vaddpd zmm1,zmm1,zmm6
  90033d:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  900343:	62 b1 fd 48 58 c7    	vaddpd zmm0,zmm0,zmm23
  900349:	62 f1 fd 48 28 15 2d 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff77dc2d]        # 7df80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb430>
  900350:	dc 77 ff 
  900353:	62 f2 ed 48 7f c8    	vpermt2pd zmm1,zmm2,zmm0
  900359:	62 f3 7d 48 19 4e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm1,0x2
  900360:	02 
  900361:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  900365:	62 c2 ed 48 7f d5    	vpermt2pd zmm18,zmm2,zmm13
  90036b:	62 e3 7d 48 19 56 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm18,0x2
  900372:	02 
  900373:	62 e1 fd 28 11 96 30 	vmovupd YMMWORD PTR [rsi+0x30],ymm18
  90037a:	00 00 00 
  90037d:	62 72 ed 48 7f cc    	vpermt2pd zmm9,zmm2,zmm4
  900383:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  90038a:	02 
  90038b:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  900390:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  900396:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  90039d:	02 
  90039e:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  9003a5:	00 
  9003a6:	62 72 ed 48 7f d7    	vpermt2pd zmm10,zmm2,zmm7
  9003ac:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  9003b3:	02 
  9003b4:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  9003bb:	00 
  9003bc:	c5 f8 77             	vzeroupper
  9003bf:	c3                   	ret
