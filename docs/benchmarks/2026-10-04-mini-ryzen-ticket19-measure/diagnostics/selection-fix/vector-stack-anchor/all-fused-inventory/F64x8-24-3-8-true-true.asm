
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f1d00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f1d00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d505e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f1d07:	50 7d ff 
  8f1d0a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d5094]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8f1d11:	50 7d ff 
  8f1d14:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  8f1d18:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  8f1d1c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  8f1d22:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  8f1d26:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  8f1d2c:	62 f1 fd 48 10 2d b2 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7d4fb2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f1d33:	4f 7d ff 
  8f1d36:	62 f1 fd 48 10 35 e8 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7d4fe8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f1d3d:	4f 7d ff 
  8f1d40:	48 c1 e2 07          	shl    rdx,0x7
  8f1d44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8f1d48:	31 d2                	xor    edx,edx
  8f1d4a:	62 f1 fd 48 28 3d 2c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff78b52c]        # 7d280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa730>
  8f1d51:	b5 78 ff 
  8f1d54:	62 71 fd 48 28 15 62 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff78b562]        # 7d2c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa770>
  8f1d5b:	b5 78 ff 
  8f1d5e:	62 72 fd 48 19 1d 38 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff783138]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  8f1d65:	31 78 ff 
  8f1d68:	62 71 fd 48 28 25 8e 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff78b58e]        # 7d300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa7b0>
  8f1d6f:	b5 78 ff 
  8f1d72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  8f1d79:	1f 84 00 00 00 00 00 
  8f1d80:	62 71 fd 48 10 2c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1]
  8f1d87:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  8f1d8e:	01 
  8f1d8f:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  8f1d96:	02 
  8f1d97:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8f1d9e:	03 
  8f1d9f:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  8f1da5:	62 c2 c5 48 7f ce    	vpermt2pd zmm17,zmm7,zmm14
  8f1dab:	62 52 ad 48 7f ee    	vpermt2pd zmm13,zmm10,zmm14
  8f1db1:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  8f1db7:	62 32 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm16
  8f1dbd:	62 32 ad 48 7f f8    	vpermt2pd zmm15,zmm10,zmm16
  8f1dc3:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  8f1dca:	04 
  8f1dcb:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  8f1dd2:	05 
  8f1dd3:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  8f1dd9:	62 a2 c5 48 7f da    	vpermt2pd zmm19,zmm7,zmm18
  8f1ddf:	62 a2 ad 48 7f c2    	vpermt2pd zmm16,zmm10,zmm18
  8f1de5:	62 a1 85 48 58 d0    	vaddpd zmm18,zmm15,zmm16
  8f1deb:	62 a1 95 48 58 e2    	vaddpd zmm20,zmm13,zmm18
  8f1df1:	62 a1 8d 48 58 eb    	vaddpd zmm21,zmm14,zmm19
  8f1df7:	62 21 f5 40 58 d5    	vaddpd zmm26,zmm17,zmm21
  8f1dfd:	62 72 fd 48 19 05 91 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff782c91]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f1e04:	2c 78 ff 
  8f1e07:	62 32 bd 48 bc ea    	vfnmadd231pd zmm13,zmm8,zmm18
  8f1e0d:	62 31 8d 48 5c f3    	vsubpd zmm14,zmm14,zmm19
  8f1e13:	62 72 fd 48 19 0d 03 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff782e03]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f1e1a:	2e 78 ff 
  8f1e1d:	62 51 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm9
  8f1e23:	62 c1 95 48 58 fe    	vaddpd zmm23,zmm13,zmm14
  8f1e29:	62 a2 bd 48 bc cd    	vfnmadd231pd zmm17,zmm8,zmm21
  8f1e2f:	62 31 85 48 5c f8    	vsubpd zmm15,zmm15,zmm16
  8f1e35:	62 51 85 48 59 f9    	vmulpd zmm15,zmm15,zmm9
  8f1e3b:	62 41 f5 40 5c e7    	vsubpd zmm28,zmm17,zmm15
  8f1e41:	62 c1 95 48 5c c6    	vsubpd zmm16,zmm13,zmm14
  8f1e47:	62 21 85 48 58 c1    	vaddpd zmm24,zmm15,zmm17
  8f1e4d:	62 31 fd 48 28 fc    	vmovapd zmm15,zmm20
  8f1e53:	62 72 fd 48 7f fa    	vpermt2pd zmm15,zmm0,zmm2
  8f1e59:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  8f1e5f:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  8f1e65:	62 e2 fd 48 7f ca    	vpermt2pd zmm17,zmm0,zmm2
  8f1e6b:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  8f1e71:	62 31 fd 48 28 f0    	vmovapd zmm14,zmm16
  8f1e77:	62 72 fd 48 7f f2    	vpermt2pd zmm14,zmm0,zmm2
  8f1e7d:	62 e2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm2
  8f1e83:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  8f1e89:	62 52 d5 48 7f ee    	vpermt2pd zmm13,zmm5,zmm14
  8f1e8f:	62 52 cd 48 7f fe    	vpermt2pd zmm15,zmm6,zmm14
  8f1e95:	62 31 fd 48 28 f1    	vmovapd zmm14,zmm17
  8f1e9b:	62 72 d5 48 7f f3    	vpermt2pd zmm14,zmm5,zmm3
  8f1ea1:	62 e2 cd 48 7f cb    	vpermt2pd zmm17,zmm6,zmm3
  8f1ea7:	62 a1 fd 48 28 d4    	vmovapd zmm18,zmm20
  8f1ead:	62 a2 d5 48 7f d0    	vpermt2pd zmm18,zmm5,zmm16
  8f1eb3:	62 a2 cd 48 7f e0    	vpermt2pd zmm20,zmm6,zmm16
  8f1eb9:	62 a1 fd 48 28 ef    	vmovapd zmm21,zmm23
  8f1ebf:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  8f1ec5:	62 e2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm4
  8f1ecb:	62 c1 95 48 15 de    	vunpckhpd zmm19,zmm13,zmm14
  8f1ed1:	62 a1 85 48 14 f1    	vunpcklpd zmm22,zmm15,zmm17
  8f1ed7:	62 a1 85 48 15 c1    	vunpckhpd zmm16,zmm15,zmm17
  8f1edd:	62 21 ed 40 14 cd    	vunpcklpd zmm25,zmm18,zmm21
  8f1ee3:	62 a1 ed 40 15 d5    	vunpckhpd zmm18,zmm18,zmm21
  8f1ee9:	62 a1 dd 40 14 ef    	vunpcklpd zmm21,zmm20,zmm23
  8f1eef:	62 31 dd 40 15 ff    	vunpckhpd zmm15,zmm20,zmm23
  8f1ef5:	62 81 fd 48 28 fa    	vmovapd zmm23,zmm26
  8f1efb:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  8f1f01:	62 62 f5 48 7f d2    	vpermt2pd zmm26,zmm1,zmm2
  8f1f07:	62 01 fd 48 28 dc    	vmovapd zmm27,zmm28
  8f1f0d:	62 62 fd 48 7f da    	vpermt2pd zmm27,zmm0,zmm2
  8f1f13:	62 62 f5 48 7f e2    	vpermt2pd zmm28,zmm1,zmm2
  8f1f19:	62 81 fd 48 28 e0    	vmovapd zmm20,zmm24
  8f1f1f:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  8f1f25:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  8f1f2b:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  8f1f31:	62 a2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm20
  8f1f37:	62 a2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm20
  8f1f3d:	62 81 fd 48 28 e3    	vmovapd zmm20,zmm27
  8f1f43:	62 e2 d5 48 7f e3    	vpermt2pd zmm20,zmm5,zmm3
  8f1f49:	62 62 cd 48 7f db    	vpermt2pd zmm27,zmm6,zmm3
  8f1f4f:	62 01 fd 48 28 f2    	vmovapd zmm30,zmm26
  8f1f55:	62 02 d5 48 7f f0    	vpermt2pd zmm30,zmm5,zmm24
  8f1f5b:	62 02 cd 48 7f d0    	vpermt2pd zmm26,zmm6,zmm24
  8f1f61:	62 01 fd 48 28 fc    	vmovapd zmm31,zmm28
  8f1f67:	62 62 d5 48 7f fc    	vpermt2pd zmm31,zmm5,zmm4
  8f1f6d:	62 62 cd 48 7f e4    	vpermt2pd zmm28,zmm6,zmm4
  8f1f73:	62 21 f5 40 15 ec    	vunpckhpd zmm29,zmm17,zmm20
  8f1f79:	62 11 c5 40 14 c3    	vunpcklpd zmm8,zmm23,zmm27
  8f1f7f:	62 01 c5 40 15 c3    	vunpckhpd zmm24,zmm23,zmm27
  8f1f85:	62 11 8d 40 14 cf    	vunpcklpd zmm9,zmm30,zmm31
  8f1f8b:	62 01 8d 40 15 df    	vunpckhpd zmm27,zmm30,zmm31
  8f1f91:	62 81 ad 40 15 fc    	vunpckhpd zmm23,zmm26,zmm28
  8f1f97:	62 01 ad 40 14 f4    	vunpcklpd zmm30,zmm26,zmm28
  8f1f9d:	62 61 fd 48 10 61 08 	vmovupd zmm28,ZMMWORD PTR [rcx+0x200]
  8f1fa4:	62 61 fd 48 10 79 09 	vmovupd zmm31,ZMMWORD PTR [rcx+0x240]
  8f1fab:	62 01 b5 40 59 d4    	vmulpd zmm26,zmm25,zmm28
  8f1fb1:	62 02 b5 48 bc d7    	vfnmadd231pd zmm26,zmm9,zmm31
  8f1fb7:	62 01 b5 48 59 e4    	vmulpd zmm28,zmm9,zmm28
  8f1fbd:	62 71 fd 48 10 49 04 	vmovupd zmm9,ZMMWORD PTR [rcx+0x100]
  8f1fc4:	62 02 b5 40 b8 e7    	vfmadd231pd zmm28,zmm25,zmm31
  8f1fca:	62 61 fd 48 10 79 05 	vmovupd zmm31,ZMMWORD PTR [rcx+0x140]
  8f1fd1:	62 41 cd 40 59 c9    	vmulpd zmm25,zmm22,zmm9
  8f1fd7:	62 02 bd 48 bc cf    	vfnmadd231pd zmm25,zmm8,zmm31
  8f1fdd:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  8f1fe3:	62 71 fd 48 10 49 0c 	vmovupd zmm9,ZMMWORD PTR [rcx+0x300]
  8f1fea:	62 12 cd 40 b8 c7    	vfmadd231pd zmm8,zmm22,zmm31
  8f1ff0:	62 e1 fd 48 10 71 0d 	vmovupd zmm22,ZMMWORD PTR [rcx+0x340]
  8f1ff7:	62 41 d5 40 59 f9    	vmulpd zmm31,zmm21,zmm9
  8f1ffd:	62 22 8d 40 bc fe    	vfnmadd231pd zmm31,zmm30,zmm22
  8f2003:	62 51 8d 40 59 c9    	vmulpd zmm9,zmm30,zmm9
  8f2009:	62 61 fd 48 10 71 02 	vmovupd zmm30,ZMMWORD PTR [rcx+0x80]
  8f2010:	62 32 d5 40 b8 ce    	vfmadd231pd zmm9,zmm21,zmm22
  8f2016:	62 e1 fd 48 10 69 03 	vmovupd zmm21,ZMMWORD PTR [rcx+0xc0]
  8f201d:	62 81 e5 40 59 f6    	vmulpd zmm22,zmm19,zmm30
  8f2023:	62 a2 95 40 bc f5    	vfnmadd231pd zmm22,zmm29,zmm21
  8f2029:	62 01 95 40 59 ee    	vmulpd zmm29,zmm29,zmm30
  8f202f:	62 61 fd 48 10 71 0a 	vmovupd zmm30,ZMMWORD PTR [rcx+0x280]
  8f2036:	62 22 e5 40 b8 ed    	vfmadd231pd zmm29,zmm19,zmm21
  8f203c:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  8f2043:	62 81 ed 40 59 ee    	vmulpd zmm21,zmm18,zmm30
  8f2049:	62 a2 a5 40 bc eb    	vfnmadd231pd zmm21,zmm27,zmm19
  8f204f:	62 01 a5 40 59 de    	vmulpd zmm27,zmm27,zmm30
  8f2055:	62 61 fd 48 10 71 06 	vmovupd zmm30,ZMMWORD PTR [rcx+0x180]
  8f205c:	62 22 ed 40 b8 db    	vfmadd231pd zmm27,zmm18,zmm19
  8f2062:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  8f2069:	62 81 fd 40 59 de    	vmulpd zmm19,zmm16,zmm30
  8f206f:	62 a2 bd 40 bc da    	vfnmadd231pd zmm19,zmm24,zmm18
  8f2075:	62 01 bd 40 59 c6    	vmulpd zmm24,zmm24,zmm30
  8f207b:	62 61 fd 48 10 71 0e 	vmovupd zmm30,ZMMWORD PTR [rcx+0x380]
  8f2082:	62 22 fd 40 b8 c2    	vfmadd231pd zmm24,zmm16,zmm18
  8f2088:	62 e1 fd 48 10 41 0f 	vmovupd zmm16,ZMMWORD PTR [rcx+0x3c0]
  8f208f:	62 81 85 48 59 d6    	vmulpd zmm18,zmm15,zmm30
  8f2095:	62 a2 c5 40 bc d0    	vfnmadd231pd zmm18,zmm23,zmm16
  8f209b:	62 81 c5 40 59 fe    	vmulpd zmm23,zmm23,zmm30
  8f20a1:	62 a2 85 48 b8 f8    	vfmadd231pd zmm23,zmm15,zmm16
  8f20a7:	62 51 95 48 14 ee    	vunpcklpd zmm13,zmm13,zmm14
  8f20ad:	62 31 f5 40 14 f4    	vunpcklpd zmm14,zmm17,zmm20
  8f20b3:	62 11 95 48 58 fa    	vaddpd zmm15,zmm13,zmm26
  8f20b9:	62 11 95 48 5c ea    	vsubpd zmm13,zmm13,zmm26
  8f20bf:	62 c1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm9
  8f20c5:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  8f20cb:	62 31 cd 40 58 cd    	vaddpd zmm9,zmm22,zmm21
  8f20d1:	62 a1 cd 40 5c cd    	vsubpd zmm17,zmm22,zmm21
  8f20d7:	62 81 95 40 58 e3    	vaddpd zmm20,zmm29,zmm27
  8f20dd:	62 81 95 40 5c eb    	vsubpd zmm21,zmm29,zmm27
  8f20e3:	62 a1 bd 40 58 f7    	vaddpd zmm22,zmm24,zmm23
  8f20e9:	62 a1 bd 40 5c ff    	vsubpd zmm23,zmm24,zmm23
  8f20ef:	62 21 e5 40 58 c2    	vaddpd zmm24,zmm19,zmm18
  8f20f5:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  8f20fb:	62 c1 9d 40 58 de    	vaddpd zmm19,zmm28,zmm14
  8f2101:	62 11 8d 48 5c f4    	vsubpd zmm14,zmm14,zmm28
  8f2107:	62 01 b5 40 58 d7    	vaddpd zmm26,zmm25,zmm31
  8f210d:	62 01 85 40 5c c9    	vsubpd zmm25,zmm31,zmm25
  8f2113:	62 21 f5 40 58 dd    	vaddpd zmm27,zmm17,zmm21
  8f2119:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  8f211f:	62 a1 c5 40 5c ea    	vsubpd zmm21,zmm23,zmm18
  8f2125:	62 a1 ed 40 58 d7    	vaddpd zmm18,zmm18,zmm23
  8f212b:	62 81 85 48 58 fa    	vaddpd zmm23,zmm15,zmm26
  8f2131:	62 11 85 48 5c fa    	vsubpd zmm15,zmm15,zmm26
  8f2137:	62 21 dd 40 58 d6    	vaddpd zmm26,zmm20,zmm22
  8f213d:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  8f2143:	62 a1 fd 40 58 f3    	vaddpd zmm22,zmm16,zmm19
  8f2149:	62 a1 e5 40 5c c0    	vsubpd zmm16,zmm19,zmm16
  8f214f:	62 81 b5 48 58 d8    	vaddpd zmm19,zmm9,zmm24
  8f2155:	62 51 bd 40 5c c9    	vsubpd zmm9,zmm24,zmm9
  8f215b:	62 41 95 48 58 c0    	vaddpd zmm24,zmm13,zmm8
  8f2161:	62 41 a5 40 59 db    	vmulpd zmm27,zmm27,zmm11
  8f2167:	62 c1 d5 40 59 eb    	vmulpd zmm21,zmm21,zmm11
  8f216d:	62 c1 f5 40 59 cb    	vmulpd zmm17,zmm17,zmm11
  8f2173:	62 c1 ed 40 59 d3    	vmulpd zmm18,zmm18,zmm11
  8f2179:	62 51 95 48 5c c0    	vsubpd zmm8,zmm13,zmm8
  8f217f:	62 31 f5 40 5c ea    	vsubpd zmm13,zmm17,zmm18
  8f2185:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  8f218b:	62 c1 b5 40 58 d6    	vaddpd zmm18,zmm25,zmm14
  8f2191:	62 11 8d 48 5c f1    	vsubpd zmm14,zmm14,zmm25
  8f2197:	62 21 a5 40 58 cd    	vaddpd zmm25,zmm27,zmm21
  8f219d:	62 81 d5 40 5c eb    	vsubpd zmm21,zmm21,zmm27
  8f21a3:	62 01 bd 40 58 d9    	vaddpd zmm27,zmm24,zmm25
  8f21a9:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  8f21af:	62 41 ed 40 58 cd    	vaddpd zmm25,zmm18,zmm13
  8f21b5:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  8f21bb:	62 a1 85 48 58 d4    	vaddpd zmm18,zmm15,zmm20
  8f21c1:	62 31 85 48 5c fc    	vsubpd zmm15,zmm15,zmm20
  8f21c7:	62 c1 fd 40 58 e1    	vaddpd zmm20,zmm16,zmm9
  8f21cd:	62 51 fd 40 5c c9    	vsubpd zmm9,zmm16,zmm9
  8f21d3:	62 a1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm17
  8f21d9:	62 31 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm17
  8f21df:	62 a1 8d 48 58 cd    	vaddpd zmm17,zmm14,zmm21
  8f21e5:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  8f21eb:	62 81 cd 40 5c ea    	vsubpd zmm21,zmm22,zmm26
  8f21f1:	62 81 cd 40 58 f2    	vaddpd zmm22,zmm22,zmm26
  8f21f7:	62 21 c5 40 5c d3    	vsubpd zmm26,zmm23,zmm19
  8f21fd:	62 a1 c5 40 58 db    	vaddpd zmm19,zmm23,zmm19
  8f2203:	62 a2 9d 48 7f f3    	vpermt2pd zmm22,zmm12,zmm19
  8f2209:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm22,0x2
  8f2210:	02 02 
  8f2212:	62 e1 fd 28 11 34 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm22
  8f2219:	62 02 9d 48 7f cb    	vpermt2pd zmm25,zmm12,zmm27
  8f221f:	62 63 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm25,0x2
  8f2226:	05 02 
  8f2228:	62 61 fd 28 11 8c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm25
  8f222f:	30 00 00 00 
  8f2233:	62 a2 9d 48 7f e2    	vpermt2pd zmm20,zmm12,zmm18
  8f2239:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm20,0x2
  8f2240:	08 02 
  8f2242:	62 e1 fd 28 11 64 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm20
  8f2249:	03 
  8f224a:	62 a2 9d 48 7f c8    	vpermt2pd zmm17,zmm12,zmm16
  8f2250:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm17,0x2
  8f2257:	0b 02 
  8f2259:	62 e1 fd 28 11 8c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm17
  8f2260:	90 00 00 00 
  8f2264:	62 82 9d 48 7f ea    	vpermt2pd zmm21,zmm12,zmm26
  8f226a:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm21,0x2
  8f2271:	0e 02 
  8f2273:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  8f227a:	06 
  8f227b:	62 12 9d 48 7f e8    	vpermt2pd zmm13,zmm12,zmm24
  8f2281:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm13,0x2
  8f2288:	11 02 
  8f228a:	c5 7d 11 ac 16 f0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm13
  8f2291:	00 00 
  8f2293:	62 52 9d 48 7f cf    	vpermt2pd zmm9,zmm12,zmm15
  8f2299:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm9,0x2
  8f22a0:	14 02 
  8f22a2:	c5 7d 11 8c 16 20 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x120],ymm9
  8f22a9:	00 00 
  8f22ab:	62 52 9d 48 7f f0    	vpermt2pd zmm14,zmm12,zmm8
  8f22b1:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm14,0x2
  8f22b8:	17 02 
  8f22ba:	c5 7d 11 b4 16 50 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x150],ymm14
  8f22c1:	00 00 
  8f22c3:	48 81 c2 80 01 00 00 	add    rdx,0x180
  8f22ca:	48 39 d0             	cmp    rax,rdx
  8f22cd:	0f 85 ad fa ff ff    	jne    8f1d80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  8f22d3:	c5 f8 77             	vzeroupper
  8f22d6:	c3                   	ret
