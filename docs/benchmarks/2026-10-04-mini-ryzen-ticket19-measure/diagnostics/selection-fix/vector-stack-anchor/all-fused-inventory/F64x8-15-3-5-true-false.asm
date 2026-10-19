
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008fed00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8fed00:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  8fed06:	c5 f9 10 4f 40       	vmovupd xmm1,XMMWORD PTR [rdi+0x40]
  8fed0b:	62 f1 fd 48 28 15 eb 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff77f1eb]        # 7df00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb3b0>
  8fed12:	f1 77 ff 
  8fed15:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  8fed1b:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  8fed21:	62 f1 fd 48 28 25 15 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff77f215]        # 7df40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb3f0>
  8fed28:	f2 77 ff 
  8fed2b:	62 f2 dd 48 7f c1    	vpermt2pd zmm0,zmm4,zmm1
  8fed31:	62 f1 fd 48 10 af 50 	vmovupd zmm5,ZMMWORD PTR [rdi+0x50]
  8fed38:	00 00 00 
  8fed3b:	c5 f9 10 8f 90 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0x90]
  8fed42:	00 
  8fed43:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  8fed49:	62 f2 ed 48 7f f1    	vpermt2pd zmm6,zmm2,zmm1
  8fed4f:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  8fed55:	62 f1 fd 48 10 bf a0 	vmovupd zmm7,ZMMWORD PTR [rdi+0xa0]
  8fed5c:	00 00 00 
  8fed5f:	c5 f9 10 8f e0 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0xe0]
  8fed66:	00 
  8fed67:	62 f2 c5 48 77 d1    	vpermi2pd zmm2,zmm7,zmm1
  8fed6d:	62 f2 dd 48 7f f9    	vpermt2pd zmm7,zmm4,zmm1
  8fed73:	62 f1 d5 48 58 e7    	vaddpd zmm4,zmm5,zmm7
  8fed79:	62 71 fd 48 58 c4    	vaddpd zmm8,zmm0,zmm4
  8fed7f:	62 71 cd 48 58 ca    	vaddpd zmm9,zmm6,zmm2
  8fed85:	62 72 fd 48 19 15 09 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff775d09]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8fed8c:	5d 77 ff 
  8fed8f:	62 d1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm9
  8fed95:	62 f2 ad 48 bc c4    	vfnmadd231pd zmm0,zmm10,zmm4
  8fed9b:	62 f2 fd 48 19 25 7b 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff775e7b]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8feda2:	5e 77 ff 
  8feda5:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  8fedab:	62 f1 ed 48 59 f4    	vmulpd zmm6,zmm2,zmm4
  8fedb1:	62 71 fd 48 58 de    	vaddpd zmm11,zmm0,zmm6
  8fedb7:	62 d2 b5 48 bc da    	vfnmadd231pd zmm3,zmm9,zmm10
  8fedbd:	62 f1 d5 48 5c d7    	vsubpd zmm2,zmm5,zmm7
  8fedc3:	62 f1 ed 48 59 e4    	vmulpd zmm4,zmm2,zmm4
  8fedc9:	62 f1 e5 48 5c d4    	vsubpd zmm2,zmm3,zmm4
  8fedcf:	62 f1 fd 48 5c c6    	vsubpd zmm0,zmm0,zmm6
  8fedd5:	62 f1 dd 48 58 db    	vaddpd zmm3,zmm4,zmm3
  8feddb:	62 f1 fd 48 10 25 83 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7c7f83]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8fede2:	7f 7c ff 
  8fede5:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
  8fede9:	62 d1 fd 48 28 f0    	vmovapd zmm6,zmm8
  8fedef:	62 f2 dd 48 7f f5    	vpermt2pd zmm6,zmm4,zmm5
  8fedf5:	62 f1 fd 48 10 3d a9 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff7c7fa9]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8fedfc:	7f 7c ff 
  8fedff:	62 72 c5 48 7f c5    	vpermt2pd zmm8,zmm7,zmm5
  8fee05:	62 51 fd 48 28 cb    	vmovapd zmm9,zmm11
  8fee0b:	62 72 dd 48 7f cd    	vpermt2pd zmm9,zmm4,zmm5
  8fee11:	62 72 c5 48 7f dd    	vpermt2pd zmm11,zmm7,zmm5
  8fee17:	62 71 fd 48 28 d0    	vmovapd zmm10,zmm0
  8fee1d:	62 72 dd 48 7f d5    	vpermt2pd zmm10,zmm4,zmm5
  8fee23:	62 f2 c5 48 7f c5    	vpermt2pd zmm0,zmm7,zmm5
  8fee29:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  8fee2e:	62 52 dd 48 7f e4    	vpermt2pd zmm12,zmm4,zmm12
  8fee34:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  8fee39:	62 52 c5 48 7f ed    	vpermt2pd zmm13,zmm7,zmm13
  8fee3f:	62 71 fd 48 10 35 9f 	vmovupd zmm14,ZMMWORD PTR [rip+0xffffffffff7c7e9f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8fee46:	7e 7c ff 
  8fee49:	62 71 fd 48 28 fe    	vmovapd zmm15,zmm6
  8fee4f:	62 52 8d 48 7f fa    	vpermt2pd zmm15,zmm14,zmm10
  8fee55:	62 e1 fd 48 10 05 c9 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7c7ec9]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8fee5c:	7e 7c ff 
  8fee5f:	62 d2 fd 40 7f f2    	vpermt2pd zmm6,zmm16,zmm10
  8fee65:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  8fee6b:	62 52 8d 48 7f d4    	vpermt2pd zmm10,zmm14,zmm12
  8fee71:	62 52 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm12
  8fee77:	62 72 8d 48 7f c0    	vpermt2pd zmm8,zmm14,zmm0
  8fee7d:	62 52 8d 48 7f dd    	vpermt2pd zmm11,zmm14,zmm13
  8fee83:	62 51 bd 48 14 c3    	vunpcklpd zmm8,zmm8,zmm11
  8fee89:	62 d1 85 48 14 c2    	vunpcklpd zmm0,zmm15,zmm10
  8fee8f:	62 51 85 48 15 d2    	vunpckhpd zmm10,zmm15,zmm10
  8fee95:	62 51 cd 48 14 d9    	vunpcklpd zmm11,zmm6,zmm9
  8fee9b:	62 d1 cd 48 15 f1    	vunpckhpd zmm6,zmm6,zmm9
  8feea1:	62 71 fd 48 28 c9    	vmovapd zmm9,zmm1
  8feea7:	62 72 dd 48 7f cd    	vpermt2pd zmm9,zmm4,zmm5
  8feead:	62 f2 c5 48 7f cd    	vpermt2pd zmm1,zmm7,zmm5
  8feeb3:	62 71 fd 48 28 fa    	vmovapd zmm15,zmm2
  8feeb9:	62 72 dd 48 7f fd    	vpermt2pd zmm15,zmm4,zmm5
  8feebf:	62 f2 c5 48 7f d5    	vpermt2pd zmm2,zmm7,zmm5
  8feec5:	62 f2 e5 48 77 e5    	vpermi2pd zmm4,zmm3,zmm5
  8feecb:	62 f2 c5 48 7f dd    	vpermt2pd zmm3,zmm7,zmm5
  8feed1:	62 d1 fd 48 28 e9    	vmovapd zmm5,zmm9
  8feed7:	62 f2 8d 48 7f ec    	vpermt2pd zmm5,zmm14,zmm4
  8feedd:	62 72 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm4
  8feee3:	62 d1 fd 48 28 e7    	vmovapd zmm4,zmm15
  8feee9:	62 d2 8d 48 7f e4    	vpermt2pd zmm4,zmm14,zmm12
  8feeef:	62 52 fd 40 7f fc    	vpermt2pd zmm15,zmm16,zmm12
  8feef5:	62 f2 8d 48 7f cb    	vpermt2pd zmm1,zmm14,zmm3
  8feefb:	62 d2 8d 48 7f d5    	vpermt2pd zmm2,zmm14,zmm13
  8fef01:	62 f1 f5 48 14 da    	vunpcklpd zmm3,zmm1,zmm2
  8fef07:	62 f1 d5 48 14 cc    	vunpcklpd zmm1,zmm5,zmm4
  8fef0d:	62 f1 d5 48 15 e4    	vunpckhpd zmm4,zmm5,zmm4
  8fef13:	62 d1 b5 48 14 ef    	vunpcklpd zmm5,zmm9,zmm15
  8fef19:	62 d1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm15
  8fef1f:	62 71 fd 48 10 4a 02 	vmovupd zmm9,ZMMWORD PTR [rdx+0x80]
  8fef26:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  8fef2d:	62 71 fd 48 10 6a 04 	vmovupd zmm13,ZMMWORD PTR [rdx+0x100]
  8fef34:	62 71 fd 48 10 72 05 	vmovupd zmm14,ZMMWORD PTR [rdx+0x140]
  8fef3b:	62 71 fd 48 10 7a 06 	vmovupd zmm15,ZMMWORD PTR [rdx+0x180]
  8fef42:	62 e1 fd 48 10 42 07 	vmovupd zmm16,ZMMWORD PTR [rdx+0x1c0]
  8fef49:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  8fef50:	62 e1 fd 48 10 52 09 	vmovupd zmm18,ZMMWORD PTR [rdx+0x240]
  8fef57:	62 c1 ad 48 59 d9    	vmulpd zmm19,zmm10,zmm9
  8fef5d:	62 c2 dd 48 bc dc    	vfnmadd231pd zmm19,zmm4,zmm12
  8fef63:	62 a1 bd 48 59 e1    	vmulpd zmm20,zmm8,zmm17
  8fef69:	62 a2 e5 48 bc e2    	vfnmadd231pd zmm20,zmm3,zmm18
  8fef6f:	62 b1 e5 40 58 d4    	vaddpd zmm2,zmm19,zmm20
  8fef75:	62 c1 a5 48 59 ed    	vmulpd zmm21,zmm11,zmm13
  8fef7b:	62 c2 d5 48 bc ee    	vfnmadd231pd zmm21,zmm5,zmm14
  8fef81:	62 c1 cd 48 59 f7    	vmulpd zmm22,zmm6,zmm15
  8fef87:	62 a2 c5 48 bc f0    	vfnmadd231pd zmm22,zmm7,zmm16
  8fef8d:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  8fef93:	62 d1 dd 48 59 e1    	vmulpd zmm4,zmm4,zmm9
  8fef99:	62 d2 ad 48 b8 e4    	vfmadd231pd zmm4,zmm10,zmm12
  8fef9f:	62 b1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm17
  8fefa5:	62 b2 bd 48 b8 da    	vfmadd231pd zmm3,zmm8,zmm18
  8fefab:	62 71 dd 48 58 c3    	vaddpd zmm8,zmm4,zmm3
  8fefb1:	62 d1 d5 48 59 ed    	vmulpd zmm5,zmm5,zmm13
  8fefb7:	62 d2 a5 48 b8 ee    	vfmadd231pd zmm5,zmm11,zmm14
  8fefbd:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  8fefc3:	62 b2 cd 48 b8 f8    	vfmadd231pd zmm7,zmm6,zmm16
  8fefc9:	62 f1 d5 48 58 f7    	vaddpd zmm6,zmm5,zmm7
  8fefcf:	62 72 fd 48 19 0d 7f 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff775a7f]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  8fefd6:	5a 77 ff 
  8fefd9:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  8fefdf:	62 72 ed 48 a8 d0    	vfmadd213pd zmm10,zmm2,zmm0
  8fefe5:	62 72 fd 48 19 1d 29 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff776029]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  8fefec:	60 77 ff 
  8fefef:	62 52 c5 40 bc d3    	vfnmadd231pd zmm10,zmm23,zmm11
  8feff5:	62 f1 dd 48 5c db    	vsubpd zmm3,zmm4,zmm3
  8feffb:	62 f1 d5 48 5c e7    	vsubpd zmm4,zmm5,zmm7
  8ff001:	62 f2 fd 48 19 2d bd 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff7757bd]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  8ff008:	57 77 ff 
  8ff00b:	62 f1 dd 48 59 fd    	vmulpd zmm7,zmm4,zmm5
  8ff011:	62 72 fd 48 19 25 b5 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff775bb5]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  8ff018:	5b 77 ff 
  8ff01b:	62 d2 e5 48 b8 fc    	vfmadd231pd zmm7,zmm3,zmm12
  8ff021:	62 71 ad 48 58 ef    	vaddpd zmm13,zmm10,zmm7
  8ff027:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  8ff02d:	62 72 bd 48 a8 f1    	vfmadd213pd zmm14,zmm8,zmm1
  8ff033:	62 52 cd 48 bc f3    	vfnmadd231pd zmm14,zmm6,zmm11
  8ff039:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  8ff03f:	62 a1 d5 40 5c c6    	vsubpd zmm16,zmm21,zmm22
  8ff045:	62 e1 fd 40 59 cd    	vmulpd zmm17,zmm16,zmm5
  8ff04b:	62 c2 85 48 b8 cc    	vfmadd231pd zmm17,zmm15,zmm12
  8ff051:	62 a1 8d 48 5c d1    	vsubpd zmm18,zmm14,zmm17
  8ff057:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  8ff05d:	62 e2 ed 48 ac d8    	vfnmadd213pd zmm19,zmm2,zmm0
  8ff063:	62 c2 c5 40 b8 d9    	vfmadd231pd zmm19,zmm23,zmm9
  8ff069:	62 f1 e5 48 59 dd    	vmulpd zmm3,zmm3,zmm5
  8ff06f:	62 f2 9d 48 bc dc    	vfnmadd231pd zmm3,zmm12,zmm4
  8ff075:	62 f1 e5 40 58 e3    	vaddpd zmm4,zmm19,zmm3
  8ff07b:	62 72 bd 48 ac d9    	vfnmadd213pd zmm11,zmm8,zmm1
  8ff081:	62 52 cd 48 b8 d9    	vfmadd231pd zmm11,zmm6,zmm9
  8ff087:	62 f1 85 48 59 ed    	vmulpd zmm5,zmm15,zmm5
  8ff08d:	62 d2 fd 40 bc ec    	vfnmadd231pd zmm5,zmm16,zmm12
  8ff093:	62 71 a5 48 5c cd    	vsubpd zmm9,zmm11,zmm5
  8ff099:	62 f1 e5 40 5c db    	vsubpd zmm3,zmm19,zmm3
  8ff09f:	62 f1 a5 48 58 ed    	vaddpd zmm5,zmm11,zmm5
  8ff0a5:	62 f1 ad 48 5c ff    	vsubpd zmm7,zmm10,zmm7
  8ff0ab:	62 31 8d 48 58 d1    	vaddpd zmm10,zmm14,zmm17
  8ff0b1:	62 f1 bd 48 58 c9    	vaddpd zmm1,zmm8,zmm1
  8ff0b7:	62 f1 f5 48 58 ce    	vaddpd zmm1,zmm1,zmm6
  8ff0bd:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  8ff0c3:	62 b1 fd 48 58 c7    	vaddpd zmm0,zmm0,zmm23
  8ff0c9:	62 f1 fd 48 28 15 ad 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff77eead]        # 7df80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb430>
  8ff0d0:	ee 77 ff 
  8ff0d3:	62 f2 ed 48 7f c8    	vpermt2pd zmm1,zmm2,zmm0
  8ff0d9:	62 f3 7d 48 19 4e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm1,0x2
  8ff0e0:	02 
  8ff0e1:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  8ff0e5:	62 c2 ed 48 7f d5    	vpermt2pd zmm18,zmm2,zmm13
  8ff0eb:	62 e3 7d 48 19 56 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm18,0x2
  8ff0f2:	02 
  8ff0f3:	62 e1 fd 28 11 96 30 	vmovupd YMMWORD PTR [rsi+0x30],ymm18
  8ff0fa:	00 00 00 
  8ff0fd:	62 72 ed 48 7f cc    	vpermt2pd zmm9,zmm2,zmm4
  8ff103:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  8ff10a:	02 
  8ff10b:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  8ff110:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  8ff116:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  8ff11d:	02 
  8ff11e:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  8ff125:	00 
  8ff126:	62 72 ed 48 7f d7    	vpermt2pd zmm10,zmm2,zmm7
  8ff12c:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  8ff133:	02 
  8ff134:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  8ff13b:	00 
  8ff13c:	c5 f8 77             	vzeroupper
  8ff13f:	c3                   	ret
