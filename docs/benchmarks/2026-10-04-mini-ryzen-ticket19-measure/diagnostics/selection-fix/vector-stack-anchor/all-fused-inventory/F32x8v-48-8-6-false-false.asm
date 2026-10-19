
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b11c80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b11c80:	c5 7c 10 07          	vmovups ymm8,YMMWORD PTR [rdi]
  b11c84:	c5 78 10 4f 20       	vmovups xmm9,XMMWORD PTR [rdi+0x20]
  b11c89:	c4 c1 3c c6 c1 dd    	vshufps ymm0,ymm8,ymm9,0xdd
  b11c8f:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  b11c95:	c5 7c 10 97 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0xc0]
  b11c9c:	00 
  b11c9d:	c5 78 10 9f e0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xe0]
  b11ca4:	00 
  b11ca5:	c4 c1 2c c6 c3 dd    	vshufps ymm0,ymm10,ymm11,0xdd
  b11cab:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  b11cb1:	c5 e4 5c c6          	vsubps ymm0,ymm3,ymm6
  b11cb5:	c5 7c 10 a7 20 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x120]
  b11cbc:	00 
  b11cbd:	c5 78 10 af 40 01 00 	vmovups xmm13,XMMWORD PTR [rdi+0x140]
  b11cc4:	00 
  b11cc5:	c4 c1 1c c6 cd 88    	vshufps ymm1,ymm12,ymm13,0x88
  b11ccb:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  b11cd1:	c5 7c 10 77 60       	vmovups ymm14,YMMWORD PTR [rdi+0x60]
  b11cd6:	c5 78 10 bf 80 00 00 	vmovups xmm15,XMMWORD PTR [rdi+0x80]
  b11cdd:	00 
  b11cde:	c4 c1 0c c6 cf 88    	vshufps ymm1,ymm14,ymm15,0x88
  b11ce4:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  b11cea:	c5 dc 5c ef          	vsubps ymm5,ymm4,ymm7
  b11cee:	c5 fc 5c cd          	vsubps ymm1,ymm0,ymm5
  b11cf2:	c5 fc 10 97 90 00 00 	vmovups ymm2,YMMWORD PTR [rdi+0x90]
  b11cf9:	00 
  b11cfa:	62 e1 7c 08 10 47 0b 	vmovups xmm16,XMMWORD PTR [rdi+0xb0]
  b11d01:	62 a1 6c 28 c6 c8 dd 	vshufps ymm17,ymm2,ymm16,0xdd
  b11d08:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  b11d0f:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  b11d16:	01 00 00 
  b11d19:	62 e1 7c 08 10 5f 17 	vmovups xmm19,XMMWORD PTR [rdi+0x170]
  b11d20:	62 a1 6c 20 c6 e3 dd 	vshufps ymm20,ymm18,ymm19,0xdd
  b11d27:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b11d2e:	62 a1 74 20 5c ec    	vsubps ymm21,ymm17,ymm20
  b11d34:	62 b1 6c 28 c6 d0 88 	vshufps ymm2,ymm2,ymm16,0x88
  b11d3b:	62 e3 fd 28 01 c2 d8 	vpermpd ymm16,ymm2,0xd8
  b11d42:	62 b1 6c 20 c6 d3 88 	vshufps ymm2,ymm18,ymm19,0x88
  b11d49:	62 e3 fd 28 01 d2 d8 	vpermpd ymm18,ymm2,0xd8
  b11d50:	62 a1 7c 20 5c da    	vsubps ymm19,ymm16,ymm18
  b11d56:	62 b1 54 20 5c d3    	vsubps ymm2,ymm21,ymm19
  b11d5c:	62 e2 7d 28 18 35 36 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff563636]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b11d63:	36 56 ff 
  b11d66:	62 a1 6c 28 59 fe    	vmulps ymm23,ymm2,ymm22
  b11d6c:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  b11d71:	62 61 7c 08 10 47 05 	vmovups xmm24,XMMWORD PTR [rdi+0x50]
  b11d78:	62 01 6c 28 c6 c8 88 	vshufps ymm25,ymm2,ymm24,0x88
  b11d7f:	62 03 fd 28 01 c9 d8 	vpermpd ymm25,ymm25,0xd8
  b11d86:	62 61 7c 28 10 97 f0 	vmovups ymm26,YMMWORD PTR [rdi+0xf0]
  b11d8d:	00 00 00 
  b11d90:	62 61 7c 08 10 5f 11 	vmovups xmm27,XMMWORD PTR [rdi+0x110]
  b11d97:	62 01 2c 20 c6 e3 88 	vshufps ymm28,ymm26,ymm27,0x88
  b11d9e:	62 03 fd 28 01 e4 d8 	vpermpd ymm28,ymm28,0xd8
  b11da5:	62 01 34 20 5c ec    	vsubps ymm29,ymm25,ymm28
  b11dab:	62 91 6c 28 c6 d0 dd 	vshufps ymm2,ymm2,ymm24,0xdd
  b11db2:	62 63 fd 28 01 c2 d8 	vpermpd ymm24,ymm2,0xd8
  b11db9:	62 91 2c 20 c6 d3 dd 	vshufps ymm2,ymm26,ymm27,0xdd
  b11dc0:	62 63 fd 28 01 d2 d8 	vpermpd ymm26,ymm2,0xd8
  b11dc7:	62 01 3c 20 5c da    	vsubps ymm27,ymm24,ymm26
  b11dcd:	62 91 14 20 58 d3    	vaddps ymm2,ymm29,ymm27
  b11dd3:	62 21 6c 28 59 f6    	vmulps ymm30,ymm2,ymm22
  b11dd9:	62 01 44 20 5c fe    	vsubps ymm31,ymm23,ymm30
  b11ddf:	62 91 74 28 5c d7    	vsubps ymm2,ymm1,ymm31
  b11de5:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  b11deb:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b11df1:	c4 41 2c c6 cb 88    	vshufps ymm9,ymm10,ymm11,0x88
  b11df7:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b11dfd:	c4 41 3c 5c d1       	vsubps ymm10,ymm8,ymm9
  b11e02:	c4 41 0c c6 df dd    	vshufps ymm11,ymm14,ymm15,0xdd
  b11e08:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b11e0e:	c4 41 1c c6 e5 dd    	vshufps ymm12,ymm12,ymm13,0xdd
  b11e14:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b11e1a:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  b11e1f:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  b11e24:	62 11 24 20 5c fd    	vsubps ymm15,ymm27,ymm29
  b11e2a:	62 31 04 28 59 fe    	vmulps ymm15,ymm15,ymm22
  b11e30:	62 a1 64 20 58 dd    	vaddps ymm19,ymm19,ymm21
  b11e36:	62 a1 64 20 59 de    	vmulps ymm19,ymm19,ymm22
  b11e3c:	62 a1 04 28 58 eb    	vaddps ymm21,ymm15,ymm19
  b11e42:	62 a1 0c 28 5c f5    	vsubps ymm22,ymm14,ymm21
  b11e48:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  b11e4c:	c4 41 24 58 dc       	vaddps ymm11,ymm11,ymm12
  b11e51:	c4 41 64 5c e3       	vsubps ymm12,ymm3,ymm11
  b11e56:	62 a1 7c 20 58 c2    	vaddps ymm16,ymm16,ymm18
  b11e5c:	62 81 34 20 58 d4    	vaddps ymm18,ymm25,ymm28
  b11e62:	62 21 7c 20 5c ca    	vsubps ymm25,ymm16,ymm18
  b11e68:	62 91 1c 28 5c f1    	vsubps ymm6,ymm12,ymm25
  b11e6e:	c4 41 3c 58 c1       	vaddps ymm8,ymm8,ymm9
  b11e73:	c5 c4 58 e4          	vaddps ymm4,ymm7,ymm4
  b11e77:	c5 bc 5c fc          	vsubps ymm7,ymm8,ymm4
  b11e7b:	62 11 3c 20 58 ca    	vaddps ymm9,ymm24,ymm26
  b11e81:	62 a1 74 20 58 cc    	vaddps ymm17,ymm17,ymm20
  b11e87:	62 a1 34 28 5c e1    	vsubps ymm20,ymm9,ymm17
  b11e8d:	62 21 44 28 5c c4    	vsubps ymm24,ymm7,ymm20
  b11e93:	c5 d4 58 c0          	vaddps ymm0,ymm5,ymm0
  b11e97:	62 b1 04 28 5c eb    	vsubps ymm5,ymm15,ymm19
  b11e9d:	c5 7c 5c fd          	vsubps ymm15,ymm0,ymm5
  b11ea1:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  b11ea6:	62 31 0c 20 58 ef    	vaddps ymm13,ymm30,ymm23
  b11eac:	62 c1 2c 28 5c dd    	vsubps ymm19,ymm10,ymm13
  b11eb2:	c5 a4 58 db          	vaddps ymm3,ymm11,ymm3
  b11eb6:	62 31 34 28 58 c9    	vaddps ymm9,ymm9,ymm17
  b11ebc:	c4 41 64 5c d9       	vsubps ymm11,ymm3,ymm9
  b11ec1:	c5 bc 58 e4          	vaddps ymm4,ymm8,ymm4
  b11ec5:	62 31 6c 20 58 c0    	vaddps ymm8,ymm18,ymm16
  b11ecb:	62 c1 5c 28 5c c0    	vsubps ymm16,ymm4,ymm8
  b11ed1:	62 81 74 28 58 cf    	vaddps ymm17,ymm1,ymm31
  b11ed7:	62 b1 0c 28 58 cd    	vaddps ymm1,ymm14,ymm21
  b11edd:	62 51 34 20 58 e4    	vaddps ymm12,ymm25,ymm12
  b11ee3:	62 b1 44 28 58 fc    	vaddps ymm7,ymm7,ymm20
  b11ee9:	c5 fc 58 ed          	vaddps ymm5,ymm0,ymm5
  b11eed:	c4 c1 2c 58 c5       	vaddps ymm0,ymm10,ymm13
  b11ef2:	c5 34 58 cb          	vaddps ymm9,ymm9,ymm3
  b11ef6:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  b11efa:	62 b3 65 28 18 e0 01 	vinsertf32x4 ymm4,ymm3,xmm16,0x1
  b11f01:	62 b3 e5 28 23 d8 03 	vshuff64x2 ymm3,ymm3,ymm16,0x3
  b11f08:	62 33 7d 28 18 c3 01 	vinsertf32x4 ymm8,ymm0,xmm19,0x1
  b11f0f:	62 b3 fd 28 23 c3 03 	vshuff64x2 ymm0,ymm0,ymm19,0x3
  b11f16:	62 13 45 28 18 d0 01 	vinsertf32x4 ymm10,ymm7,xmm24,0x1
  b11f1d:	62 93 c5 28 23 f8 03 	vshuff64x2 ymm7,ymm7,ymm24,0x3
  b11f24:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  b11f28:	62 b3 75 28 18 de 01 	vinsertf32x4 ymm3,ymm1,xmm22,0x1
  b11f2f:	62 b3 f5 28 23 ce 03 	vshuff64x2 ymm1,ymm1,ymm22,0x3
  b11f36:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  b11f3a:	c4 c1 5d 15 ca       	vunpckhpd ymm1,ymm4,ymm10
  b11f3f:	c4 c1 5d 14 e2       	vunpcklpd ymm4,ymm4,ymm10
  b11f44:	c5 3d 15 d3          	vunpckhpd ymm10,ymm8,ymm3
  b11f48:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  b11f4c:	c5 dc c6 c3 88       	vshufps ymm0,ymm4,ymm3,0x88
  b11f51:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b11f56:	c5 dc c6 db dd       	vshufps ymm3,ymm4,ymm3,0xdd
  b11f5b:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b11f60:	c4 c1 74 c6 e2 88    	vshufps ymm4,ymm1,ymm10,0x88
  b11f66:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  b11f6b:	c4 c1 74 c6 ca dd    	vshufps ymm1,ymm1,ymm10,0xdd
  b11f71:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b11f76:	c4 c1 44 c6 e5 88    	vshufps ymm4,ymm7,ymm13,0x88
  b11f7c:	c5 5c c6 d4 d8       	vshufps ymm10,ymm4,ymm4,0xd8
  b11f81:	c4 c1 44 c6 e5 dd    	vshufps ymm4,ymm7,ymm13,0xdd
  b11f87:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b11f8c:	c4 c3 35 18 fb 01    	vinsertf128 ymm7,ymm9,xmm11,0x1
  b11f92:	c4 43 35 06 cb 31    	vperm2f128 ymm9,ymm9,ymm11,0x31
  b11f98:	c4 43 55 18 df 01    	vinsertf128 ymm11,ymm5,xmm15,0x1
  b11f9e:	c4 c3 55 06 ef 31    	vperm2f128 ymm5,ymm5,ymm15,0x31
  b11fa4:	c4 63 1d 18 ee 01    	vinsertf128 ymm13,ymm12,xmm6,0x1
  b11faa:	c4 e3 1d 06 f6 31    	vperm2f128 ymm6,ymm12,ymm6,0x31
  b11fb0:	c5 b5 14 f6          	vunpcklpd ymm6,ymm9,ymm6
  b11fb4:	62 73 75 20 18 ca 01 	vinsertf32x4 ymm9,ymm17,xmm2,0x1
  b11fbb:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  b11fc2:	c5 55 14 e2          	vunpcklpd ymm12,ymm5,ymm2
  b11fc6:	c4 c1 45 15 ed       	vunpckhpd ymm5,ymm7,ymm13
  b11fcb:	c4 c1 45 14 fd       	vunpcklpd ymm7,ymm7,ymm13
  b11fd0:	c4 41 25 15 e9       	vunpckhpd ymm13,ymm11,ymm9
  b11fd5:	c4 41 25 14 c9       	vunpcklpd ymm9,ymm11,ymm9
  b11fda:	c4 c1 44 c6 d1 88    	vshufps ymm2,ymm7,ymm9,0x88
  b11fe0:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b11fe5:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b11feb:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b11ff0:	c4 41 54 c6 cd 88    	vshufps ymm9,ymm5,ymm13,0x88
  b11ff6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b11ffc:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b12002:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b12007:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  b1200d:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b12013:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  b12019:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1201e:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b12023:	c5 7c 10 6a 60       	vmovups ymm13,YMMWORD PTR [rdx+0x60]
  b12028:	c5 7c 10 b2 80 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0x80]
  b1202f:	00 
  b12030:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b12037:	00 
  b12038:	62 c1 3c 28 59 c6    	vmulps ymm16,ymm8,ymm14
  b1203e:	62 c2 35 28 bc c7    	vfnmadd231ps ymm16,ymm9,ymm15
  b12044:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  b1204b:	62 e1 7c 28 10 52 08 	vmovups ymm18,YMMWORD PTR [rdx+0x100]
  b12052:	62 a1 2c 28 59 da    	vmulps ymm19,ymm10,ymm18
  b12058:	62 a2 25 28 bc d9    	vfnmadd231ps ymm19,ymm11,ymm17
  b1205e:	62 e2 7d 28 18 25 6c 	vbroadcastss ymm20,DWORD PTR [rip+0xffffffffff56326c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b12065:	32 56 ff 
  b12068:	62 a1 7c 20 5c eb    	vsubps ymm21,ymm16,ymm19
  b1206e:	62 a1 54 20 59 ec    	vmulps ymm21,ymm21,ymm20
  b12074:	c4 41 34 59 ce       	vmulps ymm9,ymm9,ymm14
  b12079:	c4 42 3d b8 cf       	vfmadd231ps ymm9,ymm8,ymm15
  b1207e:	62 31 24 28 59 c2    	vmulps ymm8,ymm11,ymm18
  b12084:	62 32 2d 28 b8 c1    	vfmadd231ps ymm8,ymm10,ymm17
  b1208a:	c4 62 7d 18 15 cd 33 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5633cd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b12091:	56 ff 
  b12093:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  b12098:	c4 41 7c 28 f2       	vmovaps ymm14,ymm10
  b1209d:	c4 62 25 ac f2       	vfnmadd213ps ymm14,ymm11,ymm2
  b120a2:	62 51 54 20 58 fe    	vaddps ymm15,ymm21,ymm14
  b120a8:	62 e1 7c 28 10 4a 0b 	vmovups ymm17,YMMWORD PTR [rdx+0x160]
  b120af:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  b120b6:	62 a1 4c 28 59 f2    	vmulps ymm22,ymm6,ymm18
  b120bc:	62 a2 5d 28 b8 f1    	vfmadd231ps ymm22,ymm4,ymm17
  b120c2:	62 c1 44 28 59 fc    	vmulps ymm23,ymm7,ymm12
  b120c8:	62 c2 65 28 b8 fd    	vfmadd231ps ymm23,ymm3,ymm13
  b120ce:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  b120d4:	62 61 7c 28 10 4a 07 	vmovups ymm25,YMMWORD PTR [rdx+0xe0]
  b120db:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b120e2:	62 01 54 28 59 da    	vmulps ymm27,ymm5,ymm26
  b120e8:	62 02 75 28 b8 d9    	vfmadd231ps ymm27,ymm1,ymm25
  b120ee:	62 41 7c 28 28 e2    	vmovaps ymm28,ymm10
  b120f4:	62 02 3d 20 ac e3    	vfnmadd213ps ymm28,ymm24,ymm27
  b120fa:	62 b1 5c 28 59 e2    	vmulps ymm4,ymm4,ymm18
  b12100:	62 b2 4d 28 bc e1    	vfnmadd231ps ymm4,ymm6,ymm17
  b12106:	c5 9c 59 f3          	vmulps ymm6,ymm12,ymm3
  b1210a:	c4 c2 45 bc f5       	vfnmadd231ps ymm6,ymm7,ymm13
  b1210f:	c5 dc 5c de          	vsubps ymm3,ymm4,ymm6
  b12113:	62 b1 64 28 59 fc    	vmulps ymm7,ymm3,ymm20
  b12119:	62 71 1c 20 58 e7    	vaddps ymm12,ymm28,ymm7
  b1211f:	c4 c1 04 5c dc       	vsubps ymm3,ymm15,ymm12
  b12124:	62 31 7c 20 58 eb    	vaddps ymm13,ymm16,ymm19
  b1212a:	62 c1 7c 28 28 c2    	vmovaps ymm16,ymm10
  b12130:	62 e2 15 28 ac c0    	vfnmadd213ps ymm16,ymm13,ymm0
  b12136:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  b1213b:	62 31 3c 28 59 c4    	vmulps ymm8,ymm8,ymm20
  b12141:	62 51 7c 20 5c c8    	vsubps ymm9,ymm16,ymm8
  b12147:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b1214b:	62 91 74 28 59 ca    	vmulps ymm1,ymm1,ymm26
  b12151:	62 92 55 28 bc c9    	vfnmadd231ps ymm1,ymm5,ymm25
  b12157:	c4 62 5d ac d1       	vfnmadd213ps ymm10,ymm4,ymm1
  b1215c:	62 b1 4c 20 5c ef    	vsubps ymm5,ymm22,ymm23
  b12162:	62 b1 54 28 59 ec    	vmulps ymm5,ymm5,ymm20
  b12168:	c5 ac 5c f5          	vsubps ymm6,ymm10,ymm5
  b1216c:	62 e1 34 28 5c ce    	vsubps ymm17,ymm9,ymm6
  b12172:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  b12178:	62 f1 1c 20 5c ff    	vsubps ymm7,ymm28,ymm7
  b1217e:	62 e1 0c 28 58 d7    	vaddps ymm18,ymm14,ymm7
  b12184:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b1218a:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  b1218e:	c5 3c 58 d5          	vaddps ymm10,ymm8,ymm5
  b12192:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  b12196:	62 11 24 20 58 d8    	vaddps ymm11,ymm27,ymm24
  b1219c:	62 c1 6c 28 5c c3    	vsubps ymm16,ymm2,ymm11
  b121a2:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  b121a6:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b121aa:	c5 fc 5c e1          	vsubps ymm4,ymm0,ymm1
  b121ae:	c4 41 04 58 e4       	vaddps ymm12,ymm15,ymm12
  b121b3:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  b121b7:	c5 8c 5c ff          	vsubps ymm7,ymm14,ymm7
  b121bb:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  b121bf:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  b121c3:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  b121c7:	c5 fc 28 0d d1 36 56 	vmovaps ymm1,YMMWORD PTR [rip+0xffffffffff5636d1]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b121ce:	ff 
  b121cf:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  b121d3:	62 72 75 28 7f c2    	vpermt2ps ymm8,ymm1,ymm2
  b121d9:	c5 7c 28 0d ff 4f 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff564fff]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b121e0:	ff 
  b121e1:	62 f2 35 28 7f c2    	vpermt2ps ymm0,ymm9,ymm2
  b121e7:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  b121eb:	c5 7c 11 46 20       	vmovups YMMWORD PTR [rsi+0x20],ymm8
  b121f0:	c5 fc 28 c5          	vmovaps ymm0,ymm5
  b121f4:	62 f2 75 28 7f c7    	vpermt2ps ymm0,ymm1,ymm7
  b121fa:	62 f2 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm7
  b12200:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  b12205:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  b1220a:	c5 fc 28 c6          	vmovaps ymm0,ymm6
  b1220e:	62 d2 75 28 7f c4    	vpermt2ps ymm0,ymm1,ymm12
  b12214:	62 d2 35 28 7f f4    	vpermt2ps ymm6,ymm9,ymm12
  b1221a:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  b12221:	00 
  b12222:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  b12229:	00 
  b1222a:	c5 fc 28 c4          	vmovaps ymm0,ymm4
  b1222e:	62 b2 75 28 7f c0    	vpermt2ps ymm0,ymm1,ymm16
  b12234:	62 b2 35 28 7f e0    	vpermt2ps ymm4,ymm9,ymm16
  b1223a:	c5 fc 11 a6 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm4
  b12241:	00 
  b12242:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b12249:	00 
  b1224a:	c5 7c 29 d0          	vmovaps ymm0,ymm10
  b1224e:	62 b2 75 28 7f c2    	vpermt2ps ymm0,ymm1,ymm18
  b12254:	62 32 35 28 7f d2    	vpermt2ps ymm10,ymm9,ymm18
  b1225a:	c5 7c 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm10
  b12261:	00 
  b12262:	c5 fc 11 86 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm0
  b12269:	00 
  b1226a:	62 f2 75 20 77 cb    	vpermi2ps ymm1,ymm17,ymm3
  b12270:	62 e2 35 28 7f cb    	vpermt2ps ymm17,ymm9,ymm3
  b12276:	62 e1 7c 28 11 4e 0a 	vmovups YMMWORD PTR [rsi+0x140],ymm17
  b1227d:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  b12284:	00 
  b12285:	c5 f8 77             	vzeroupper
  b12288:	c3                   	ret
