
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096bf00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96bf00:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  96bf05:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  96bf0c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  96bf10:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  96bf15:	c5 fd 10 6f 60       	vmovupd ymm5,YMMWORD PTR [rdi+0x60]
  96bf1a:	c5 7d 10 87 90 00 00 	vmovupd ymm8,YMMWORD PTR [rdi+0x90]
  96bf21:	00 
  96bf22:	62 f3 75 48 18 d8 02 	vinsertf32x4 zmm3,zmm1,xmm0,0x2
  96bf29:	62 f1 fd 48 28 3d cd 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff71a6cd]        # 86600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13ab0>
  96bf30:	a6 71 ff 
  96bf33:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  96bf37:	62 f1 fd 48 28 e3    	vmovapd zmm4,zmm3
  96bf3d:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  96bf43:	62 f1 fd 48 28 0d f3 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff71a6f3]        # 86640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13af0>
  96bf4a:	a6 71 ff 
  96bf4d:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  96bf53:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  96bf58:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  96bf5f:	62 f3 6d 48 18 f6 02 	vinsertf32x4 zmm6,zmm2,xmm6,0x2
  96bf66:	62 71 fd 48 28 ce    	vmovapd zmm9,zmm6
  96bf6c:	62 72 c5 48 7f c8    	vpermt2pd zmm9,zmm7,zmm0
  96bf72:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  96bf78:	c5 fb 12 97 88 00 00 	vmovddup xmm2,QWORD PTR [rdi+0x88]
  96bf7f:	00 
  96bf80:	c4 e3 69 0d 97 80 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0x80],0x1
  96bf87:	00 00 01 
  96bf8a:	62 73 55 48 18 d2 02 	vinsertf32x4 zmm10,zmm5,xmm2,0x2
  96bf91:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  96bf97:	62 72 c5 48 7f d8    	vpermt2pd zmm11,zmm7,zmm0
  96bf9d:	62 72 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm0
  96bfa3:	c5 fb 12 97 b8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xb8]
  96bfaa:	00 
  96bfab:	c4 e3 69 0d 97 b0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xb0],0x1
  96bfb2:	00 00 01 
  96bfb5:	62 73 3d 48 18 c2 02 	vinsertf32x4 zmm8,zmm8,xmm2,0x2
  96bfbc:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  96bfc2:	62 72 c5 48 7f e0    	vpermt2pd zmm12,zmm7,zmm0
  96bfc8:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  96bfce:	c5 fb 12 97 e8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xe8]
  96bfd5:	00 
  96bfd6:	c4 e3 69 0d 97 e0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xe0],0x1
  96bfdd:	00 00 01 
  96bfe0:	c5 fd 10 af c0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xc0]
  96bfe7:	00 
  96bfe8:	62 73 55 48 18 ea 02 	vinsertf32x4 zmm13,zmm5,xmm2,0x2
  96bfef:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  96bff5:	62 72 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm0
  96bffb:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  96c001:	c5 fd 10 97 f0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xf0]
  96c008:	00 
  96c009:	c5 fb 12 af 18 01 00 	vmovddup xmm5,QWORD PTR [rdi+0x118]
  96c010:	00 
  96c011:	c4 e3 51 0d af 10 01 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+0x110],0x1
  96c018:	00 00 01 
  96c01b:	62 73 6d 48 18 fd 02 	vinsertf32x4 zmm15,zmm2,xmm5,0x2
  96c022:	62 f2 85 48 77 f8    	vpermi2pd zmm7,zmm15,zmm0
  96c028:	62 72 f5 48 7f f8    	vpermt2pd zmm15,zmm1,zmm0
  96c02e:	62 d1 ad 48 58 d5    	vaddpd zmm2,zmm10,zmm13
  96c034:	62 e1 e5 48 58 c2    	vaddpd zmm16,zmm3,zmm2
  96c03a:	62 e1 85 48 58 ce    	vaddpd zmm17,zmm15,zmm6
  96c040:	62 a1 bd 48 58 d1    	vaddpd zmm18,zmm8,zmm17
  96c046:	62 a1 fd 40 58 da    	vaddpd zmm19,zmm16,zmm18
  96c04c:	62 c1 a5 48 58 e6    	vaddpd zmm20,zmm11,zmm14
  96c052:	62 a1 dd 48 58 ec    	vaddpd zmm21,zmm4,zmm20
  96c058:	62 c1 c5 48 58 f1    	vaddpd zmm22,zmm7,zmm9
  96c05e:	62 a1 9d 48 58 fe    	vaddpd zmm23,zmm12,zmm22
  96c064:	62 f2 fd 48 19 0d 2a 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff708a2a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96c06b:	8a 70 ff 
  96c06e:	62 b1 d5 40 58 ef    	vaddpd zmm5,zmm21,zmm23
  96c074:	62 f2 f5 48 bc da    	vfnmadd231pd zmm3,zmm1,zmm2
  96c07a:	62 f2 fd 48 19 15 9c 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff708b9c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96c081:	8b 70 ff 
  96c084:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  96c08a:	62 71 a5 48 59 da    	vmulpd zmm11,zmm11,zmm2
  96c090:	62 51 e5 48 58 f3    	vaddpd zmm14,zmm3,zmm11
  96c096:	62 32 f5 48 bc c1    	vfnmadd231pd zmm8,zmm1,zmm17
  96c09c:	62 d1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm9
  96c0a2:	62 f1 c5 48 59 fa    	vmulpd zmm7,zmm7,zmm2
  96c0a8:	62 71 bd 48 58 cf    	vaddpd zmm9,zmm8,zmm7
  96c0ae:	62 c1 8d 48 5c c9    	vsubpd zmm17,zmm14,zmm9
  96c0b4:	62 b2 f5 48 bc e4    	vfnmadd231pd zmm4,zmm1,zmm20
  96c0ba:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  96c0c0:	62 71 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm2
  96c0c6:	62 51 dd 48 5c ea    	vsubpd zmm13,zmm4,zmm10
  96c0cc:	62 32 f5 48 bc e6    	vfnmadd231pd zmm12,zmm1,zmm22
  96c0d2:	62 f1 85 48 5c f6    	vsubpd zmm6,zmm15,zmm6
  96c0d8:	62 f1 cd 48 59 f2    	vmulpd zmm6,zmm6,zmm2
  96c0de:	62 71 9d 48 5c fe    	vsubpd zmm15,zmm12,zmm6
  96c0e4:	62 c1 95 48 5c e7    	vsubpd zmm20,zmm13,zmm15
  96c0ea:	62 d1 e5 48 5c db    	vsubpd zmm3,zmm3,zmm11
  96c0f0:	62 f1 bd 48 5c ff    	vsubpd zmm7,zmm8,zmm7
  96c0f6:	62 71 e5 48 58 c7    	vaddpd zmm8,zmm3,zmm7
  96c0fc:	62 f1 ad 48 58 e4    	vaddpd zmm4,zmm10,zmm4
  96c102:	62 d1 cd 48 58 f4    	vaddpd zmm6,zmm6,zmm12
  96c108:	62 71 dd 48 58 d6    	vaddpd zmm10,zmm4,zmm6
  96c10e:	62 31 fd 40 5c da    	vsubpd zmm11,zmm16,zmm18
  96c114:	62 31 d5 40 5c e7    	vsubpd zmm12,zmm21,zmm23
  96c11a:	62 51 8d 48 58 c9    	vaddpd zmm9,zmm14,zmm9
  96c120:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  96c126:	62 f1 e5 48 5c df    	vsubpd zmm3,zmm3,zmm7
  96c12c:	62 f1 dd 48 5c e6    	vsubpd zmm4,zmm4,zmm6
  96c132:	62 f1 fd 48 10 35 2c 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff75ac2c]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96c139:	ac 75 ff 
  96c13c:	62 c2 cd 48 7f d9    	vpermt2pd zmm19,zmm6,zmm9
  96c142:	62 e2 cd 48 7f cb    	vpermt2pd zmm17,zmm6,zmm3
  96c148:	62 72 cd 48 7f c0    	vpermt2pd zmm8,zmm6,zmm0
  96c14e:	62 72 cd 48 7f d8    	vpermt2pd zmm11,zmm6,zmm0
  96c154:	62 f1 fd 48 10 1d 8a 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff75ab8a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96c15b:	ab 75 ff 
  96c15e:	62 b1 fd 48 28 fb    	vmovapd zmm7,zmm19
  96c164:	62 d2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm8
  96c16a:	62 71 fd 48 10 0d b4 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff75abb4]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96c171:	ab 75 ff 
  96c174:	62 c2 b5 48 7f d8    	vpermt2pd zmm19,zmm9,zmm8
  96c17a:	62 31 fd 48 28 c1    	vmovapd zmm8,zmm17
  96c180:	62 52 e5 48 7f c3    	vpermt2pd zmm8,zmm3,zmm11
  96c186:	62 c2 b5 48 7f cb    	vpermt2pd zmm17,zmm9,zmm11
  96c18c:	62 31 e5 40 14 d9    	vunpcklpd zmm11,zmm19,zmm17
  96c192:	62 51 c5 48 14 f0    	vunpcklpd zmm14,zmm7,zmm8
  96c198:	62 d1 c5 48 15 f8    	vunpckhpd zmm7,zmm7,zmm8
  96c19e:	62 d2 cd 48 7f ed    	vpermt2pd zmm5,zmm6,zmm13
  96c1a4:	62 e2 cd 48 7f e4    	vpermt2pd zmm20,zmm6,zmm4
  96c1aa:	62 72 cd 48 7f d0    	vpermt2pd zmm10,zmm6,zmm0
  96c1b0:	62 72 cd 48 7f e0    	vpermt2pd zmm12,zmm6,zmm0
  96c1b6:	62 f1 fd 48 28 c5    	vmovapd zmm0,zmm5
  96c1bc:	62 d2 e5 48 7f c2    	vpermt2pd zmm0,zmm3,zmm10
  96c1c2:	62 d2 b5 48 7f ea    	vpermt2pd zmm5,zmm9,zmm10
  96c1c8:	62 d2 dd 40 77 dc    	vpermi2pd zmm3,zmm20,zmm12
  96c1ce:	62 c2 b5 48 7f e4    	vpermt2pd zmm20,zmm9,zmm12
  96c1d4:	62 b1 d5 48 14 e4    	vunpcklpd zmm4,zmm5,zmm20
  96c1da:	62 f1 fd 48 14 eb    	vunpcklpd zmm5,zmm0,zmm3
  96c1e0:	62 f1 fd 48 15 c3    	vunpckhpd zmm0,zmm0,zmm3
  96c1e6:	62 f1 fd 48 10 5a 02 	vmovupd zmm3,ZMMWORD PTR [rdx+0x80]
  96c1ed:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  96c1f4:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  96c1fb:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  96c202:	62 71 c5 48 59 d3    	vmulpd zmm10,zmm7,zmm3
  96c208:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  96c20e:	62 51 a5 48 59 e0    	vmulpd zmm12,zmm11,zmm8
  96c214:	62 52 dd 48 bc e1    	vfnmadd231pd zmm12,zmm4,zmm9
  96c21a:	62 51 ad 48 58 ec    	vaddpd zmm13,zmm10,zmm12
  96c220:	62 f1 fd 48 59 c3    	vmulpd zmm0,zmm0,zmm3
  96c226:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  96c22c:	62 d1 dd 48 59 d8    	vmulpd zmm3,zmm4,zmm8
  96c232:	62 d2 a5 48 b8 d9    	vfmadd231pd zmm3,zmm11,zmm9
  96c238:	62 f1 fd 48 58 e3    	vaddpd zmm4,zmm0,zmm3
  96c23e:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  96c244:	62 d2 95 48 ac f6    	vfnmadd213pd zmm6,zmm13,zmm14
  96c24a:	62 f1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm3
  96c250:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  96c256:	62 f1 cd 48 58 d8    	vaddpd zmm3,zmm6,zmm0
  96c25c:	62 f2 dd 48 ac cd    	vfnmadd213pd zmm1,zmm4,zmm5
  96c262:	62 d1 ad 48 5c fc    	vsubpd zmm7,zmm10,zmm12
  96c268:	62 f1 c5 48 59 d2    	vmulpd zmm2,zmm7,zmm2
  96c26e:	62 f1 f5 48 5c fa    	vsubpd zmm7,zmm1,zmm2
  96c274:	c5 7d 28 05 84 aa 70 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff70aa84]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  96c27b:	ff 
  96c27c:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  96c282:	62 72 bd 48 7f cb    	vpermt2pd zmm9,zmm8,zmm3
  96c288:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  96c28e:	62 f1 f5 48 58 ca    	vaddpd zmm1,zmm1,zmm2
  96c294:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  96c29a:	62 f2 bd 48 7f d0    	vpermt2pd zmm2,zmm8,zmm0
  96c2a0:	62 f1 d5 48 58 e4    	vaddpd zmm4,zmm5,zmm4
  96c2a6:	62 d1 8d 48 58 ed    	vaddpd zmm5,zmm14,zmm13
  96c2ac:	62 72 dd 48 77 c5    	vpermi2pd zmm8,zmm4,zmm5
  96c2b2:	62 f1 fd 48 28 35 c4 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71a3c4]        # 86680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13b30>
  96c2b9:	a3 71 ff 
  96c2bc:	62 f2 cd 48 7f e5    	vpermt2pd zmm4,zmm6,zmm5
  96c2c2:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  96c2c8:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  96c2cd:	62 f2 cd 48 7f fb    	vpermt2pd zmm7,zmm6,zmm3
  96c2d3:	62 f1 fd 48 11 be 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm7
  96c2da:	00 00 00 
  96c2dd:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  96c2e4:	00 
  96c2e5:	62 f2 cd 48 7f c8    	vpermt2pd zmm1,zmm6,zmm0
  96c2eb:	62 f1 fd 48 11 4e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm1
  96c2f2:	c5 fd 11 96 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm2
  96c2f9:	00 
  96c2fa:	c5 f8 77             	vzeroupper
  96c2fd:	c3                   	ret
