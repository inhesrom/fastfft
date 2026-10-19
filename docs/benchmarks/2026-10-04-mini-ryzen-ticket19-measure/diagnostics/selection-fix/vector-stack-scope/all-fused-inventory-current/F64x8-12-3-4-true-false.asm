
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000094a040 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  94a040:	62 f1 fd 48 28 05 f6 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff739df6]        # 83e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x112f0>
  94a047:	9d 73 ff 
  94a04a:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  94a050:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  94a057:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  94a05e:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  94a062:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  94a068:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  94a06e:	62 f1 fd 48 28 35 08 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff739e08]        # 83e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11330>
  94a075:	9e 73 ff 
  94a078:	62 f2 cd 48 7f cc    	vpermt2pd zmm1,zmm6,zmm4
  94a07e:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  94a084:	62 f2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm4
  94a08a:	62 f2 cd 48 7f d4    	vpermt2pd zmm2,zmm6,zmm4
  94a090:	62 f2 e5 48 77 c4    	vpermi2pd zmm0,zmm3,zmm4
  94a096:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  94a09c:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  94a0a2:	62 71 f5 48 58 c6    	vaddpd zmm8,zmm1,zmm6
  94a0a8:	62 71 c5 48 58 c8    	vaddpd zmm9,zmm7,zmm0
  94a0ae:	62 51 d5 48 58 d1    	vaddpd zmm10,zmm5,zmm9
  94a0b4:	62 72 fd 48 19 1d da 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff72a9da]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  94a0bb:	a9 72 ff 
  94a0be:	62 f2 a5 48 bc ce    	vfnmadd231pd zmm1,zmm11,zmm6
  94a0c4:	62 f1 c5 48 5c c0    	vsubpd zmm0,zmm7,zmm0
  94a0ca:	62 f2 fd 48 19 35 4c 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff72ab4c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  94a0d1:	ab 72 ff 
  94a0d4:	62 f1 fd 48 59 c6    	vmulpd zmm0,zmm0,zmm6
  94a0da:	62 f1 f5 48 58 f8    	vaddpd zmm7,zmm1,zmm0
  94a0e0:	62 d2 b5 48 bc eb    	vfnmadd231pd zmm5,zmm9,zmm11
  94a0e6:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  94a0ec:	62 f1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm6
  94a0f2:	62 f1 d5 48 5c da    	vsubpd zmm3,zmm5,zmm2
  94a0f8:	62 f1 f5 48 5c c0    	vsubpd zmm0,zmm1,zmm0
  94a0fe:	62 f1 ed 48 58 cd    	vaddpd zmm1,zmm2,zmm5
  94a104:	62 f1 fd 48 10 15 5a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff77cc5a]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  94a10b:	cc 77 ff 
  94a10e:	62 72 ed 48 7f c4    	vpermt2pd zmm8,zmm2,zmm4
  94a114:	62 f2 ed 48 7f fc    	vpermt2pd zmm7,zmm2,zmm4
  94a11a:	62 f2 ed 48 7f c4    	vpermt2pd zmm0,zmm2,zmm4
  94a120:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
  94a124:	62 f2 ed 48 7f ed    	vpermt2pd zmm5,zmm2,zmm5
  94a12a:	62 f1 fd 48 10 35 b4 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff77cbb4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  94a131:	cb 77 ff 
  94a134:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  94a13a:	62 72 cd 48 7f c8    	vpermt2pd zmm9,zmm6,zmm0
  94a140:	62 71 fd 48 10 1d de 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff77cbde]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  94a147:	cb 77 ff 
  94a14a:	62 72 a5 48 7f c0    	vpermt2pd zmm8,zmm11,zmm0
  94a150:	62 f1 fd 48 28 c7    	vmovapd zmm0,zmm7
  94a156:	62 f2 cd 48 7f c5    	vpermt2pd zmm0,zmm6,zmm5
  94a15c:	62 f2 a5 48 7f fd    	vpermt2pd zmm7,zmm11,zmm5
  94a162:	62 71 b5 48 14 e0    	vunpcklpd zmm12,zmm9,zmm0
  94a168:	62 f1 b5 48 15 c0    	vunpckhpd zmm0,zmm9,zmm0
  94a16e:	62 71 bd 48 14 cf    	vunpcklpd zmm9,zmm8,zmm7
  94a174:	62 f1 bd 48 15 ff    	vunpckhpd zmm7,zmm8,zmm7
  94a17a:	62 72 ed 48 7f d4    	vpermt2pd zmm10,zmm2,zmm4
  94a180:	62 f2 ed 48 7f dc    	vpermt2pd zmm3,zmm2,zmm4
  94a186:	62 f2 ed 48 7f cc    	vpermt2pd zmm1,zmm2,zmm4
  94a18c:	62 d1 fd 48 28 d2    	vmovapd zmm2,zmm10
  94a192:	62 f2 cd 48 7f d1    	vpermt2pd zmm2,zmm6,zmm1
  94a198:	62 72 a5 48 7f d1    	vpermt2pd zmm10,zmm11,zmm1
  94a19e:	62 f2 e5 48 77 f5    	vpermi2pd zmm6,zmm3,zmm5
  94a1a4:	62 f2 a5 48 7f dd    	vpermt2pd zmm3,zmm11,zmm5
  94a1aa:	62 f1 ed 48 14 ce    	vunpcklpd zmm1,zmm2,zmm6
  94a1b0:	62 f1 ed 48 15 d6    	vunpckhpd zmm2,zmm2,zmm6
  94a1b6:	62 f1 ad 48 14 e3    	vunpcklpd zmm4,zmm10,zmm3
  94a1bc:	62 f1 ad 48 15 db    	vunpckhpd zmm3,zmm10,zmm3
  94a1c2:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  94a1c9:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  94a1d0:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  94a1d7:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  94a1de:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  94a1e5:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  94a1ec:	62 51 b5 48 59 f0    	vmulpd zmm14,zmm9,zmm8
  94a1f2:	62 52 dd 48 bc f2    	vfnmadd231pd zmm14,zmm4,zmm10
  94a1f8:	62 51 9d 48 58 fe    	vaddpd zmm15,zmm12,zmm14
  94a1fe:	62 e1 fd 48 59 c5    	vmulpd zmm16,zmm0,zmm5
  94a204:	62 e2 ed 48 bc c6    	vfnmadd231pd zmm16,zmm2,zmm6
  94a20a:	62 c1 c5 48 59 cb    	vmulpd zmm17,zmm7,zmm11
  94a210:	62 c2 e5 48 bc cd    	vfnmadd231pd zmm17,zmm3,zmm13
  94a216:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  94a21c:	62 d1 dd 48 59 e0    	vmulpd zmm4,zmm4,zmm8
  94a222:	62 d2 b5 48 b8 e2    	vfmadd231pd zmm4,zmm9,zmm10
  94a228:	62 71 dd 48 58 c1    	vaddpd zmm8,zmm4,zmm1
  94a22e:	62 f1 ed 48 59 d5    	vmulpd zmm2,zmm2,zmm5
  94a234:	62 f2 fd 48 b8 d6    	vfmadd231pd zmm2,zmm0,zmm6
  94a23a:	62 d1 e5 48 59 c3    	vmulpd zmm0,zmm3,zmm11
  94a240:	62 d2 c5 48 b8 c5    	vfmadd231pd zmm0,zmm7,zmm13
  94a246:	62 f1 ed 48 58 d8    	vaddpd zmm3,zmm2,zmm0
  94a24c:	62 d1 9d 48 5c ee    	vsubpd zmm5,zmm12,zmm14
  94a252:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  94a258:	62 f1 d5 48 58 d0    	vaddpd zmm2,zmm5,zmm0
  94a25e:	62 f1 f5 48 5c cc    	vsubpd zmm1,zmm1,zmm4
  94a264:	62 b1 f5 40 5c e0    	vsubpd zmm4,zmm17,zmm16
  94a26a:	62 f1 f5 48 58 f4    	vaddpd zmm6,zmm1,zmm4
  94a270:	62 b1 85 48 5c fa    	vsubpd zmm7,zmm15,zmm18
  94a276:	62 71 bd 48 5c cb    	vsubpd zmm9,zmm8,zmm3
  94a27c:	62 f1 d5 48 5c c0    	vsubpd zmm0,zmm5,zmm0
  94a282:	62 f1 f5 48 5c cc    	vsubpd zmm1,zmm1,zmm4
  94a288:	62 f1 bd 48 58 db    	vaddpd zmm3,zmm8,zmm3
  94a28e:	62 b1 85 48 58 e2    	vaddpd zmm4,zmm15,zmm18
  94a294:	62 f1 fd 48 28 2d 22 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff739c22]        # 83ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11370>
  94a29b:	9c 73 ff 
  94a29e:	62 f2 d5 48 7f dc    	vpermt2pd zmm3,zmm5,zmm4
  94a2a4:	62 f3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm3,0x2
  94a2ab:	02 
  94a2ac:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  94a2b0:	62 f2 d5 48 7f f2    	vpermt2pd zmm6,zmm5,zmm2
  94a2b6:	62 f3 7d 48 19 76 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm6,0x2
  94a2bd:	02 
  94a2be:	c5 fd 11 76 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm6
  94a2c3:	62 72 d5 48 7f cf    	vpermt2pd zmm9,zmm5,zmm7
  94a2c9:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  94a2d0:	02 
  94a2d1:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  94a2d6:	62 f2 d5 48 7f c8    	vpermt2pd zmm1,zmm5,zmm0
  94a2dc:	62 f3 7d 48 19 4e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm1,0x2
  94a2e3:	02 
  94a2e4:	c5 fd 11 8e 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm1
  94a2eb:	00 
  94a2ec:	c5 f8 77             	vzeroupper
  94a2ef:	c3                   	ret
