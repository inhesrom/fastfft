
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab0e00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab0e00:	48 c1 e2 07          	shl    rdx,0x7
  ab0e04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ab0e08:	31 d2                	xor    edx,edx
  ab0e0a:	c4 e2 7d 18 05 89 45 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5c4589]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ab0e11:	5c ff 
  ab0e13:	c4 e2 7d 18 0d b8 44 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5c44b8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab0e1a:	5c ff 
  ab0e1c:	c4 e2 7d 18 15 3b 46 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5c463b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab0e23:	5c ff 
  ab0e25:	c5 fc 28 1d 73 4a 5c 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5c4a73]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ab0e2c:	ff 
  ab0e2d:	c5 fc 28 25 ab 63 5c 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5c63ab]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab0e34:	ff 
  ab0e35:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  ab0e3c:	00 00 00 00 
  ab0e40:	c5 7c 10 2c 17       	vmovups ymm13,YMMWORD PTR [rdi+rdx*1]
  ab0e45:	c5 78 10 7c 17 20    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x20]
  ab0e4b:	c4 c1 14 c6 ef 88    	vshufps ymm5,ymm13,ymm15,0x88
  ab0e51:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ab0e57:	c5 7c 10 b4 17 c0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xc0]
  ab0e5e:	00 00 
  ab0e60:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xe0]
  ab0e67:	0e 
  ab0e68:	62 b1 0c 28 c6 f0 88 	vshufps ymm6,ymm14,ymm16,0x88
  ab0e6f:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ab0e75:	c5 7c 10 9c 17 20 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x120]
  ab0e7c:	00 00 
  ab0e7e:	c5 78 10 a4 17 40 01 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x140]
  ab0e85:	00 00 
  ab0e87:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  ab0e8d:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x60]
  ab0e94:	03 
  ab0e95:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x80]
  ab0e9c:	08 
  ab0e9d:	62 31 74 20 c6 ca dd 	vshufps ymm9,ymm17,ymm18,0xdd
  ab0ea4:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x90]
  ab0eab:	90 00 00 00 
  ab0eaf:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0xb0]
  ab0eb6:	0b 
  ab0eb7:	62 31 64 20 c6 c4 88 	vshufps ymm8,ymm19,ymm20,0x88
  ab0ebe:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ab0ec4:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x150]
  ab0ecb:	50 01 00 00 
  ab0ecf:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x170]
  ab0ed6:	17 
  ab0ed7:	62 31 54 20 c6 d6 88 	vshufps ymm10,ymm21,ymm22,0x88
  ab0ede:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ab0ee4:	62 a1 64 20 c6 dc dd 	vshufps ymm19,ymm19,ymm20,0xdd
  ab0eeb:	62 a1 54 20 c6 e6 dd 	vshufps ymm20,ymm21,ymm22,0xdd
  ab0ef2:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x30]
  ab0ef9:	30 00 00 00 
  ab0efd:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x50]
  ab0f04:	05 
  ab0f05:	62 a1 54 20 c6 fe dd 	vshufps ymm23,ymm21,ymm22,0xdd
  ab0f0c:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0xf0]
  ab0f13:	f0 00 00 00 
  ab0f17:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x110]
  ab0f1e:	11 
  ab0f1f:	62 a1 54 20 c6 ee 88 	vshufps ymm21,ymm21,ymm22,0x88
  ab0f26:	62 81 3c 20 c6 f1 dd 	vshufps ymm22,ymm24,ymm25,0xdd
  ab0f2d:	62 01 3c 20 c6 c1 88 	vshufps ymm24,ymm24,ymm25,0x88
  ab0f34:	62 41 3c 28 5c ca    	vsubps ymm25,ymm8,ymm10
  ab0f3a:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  ab0f41:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  ab0f48:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  ab0f4e:	62 31 64 20 5c fc    	vsubps ymm15,ymm19,ymm20
  ab0f54:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  ab0f5b:	62 a3 fd 28 01 f6 d8 	vpermpd ymm22,ymm22,0xd8
  ab0f62:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  ab0f69:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  ab0f6f:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  ab0f76:	62 03 fd 28 01 c0 d8 	vpermpd ymm24,ymm24,0xd8
  ab0f7d:	62 a1 74 20 c6 ca 88 	vshufps ymm17,ymm17,ymm18,0x88
  ab0f84:	62 81 54 20 5c d0    	vsubps ymm18,ymm21,ymm24
  ab0f8a:	c4 41 24 c6 dc 88    	vshufps ymm11,ymm11,ymm12,0x88
  ab0f90:	62 31 7c 20 58 e2    	vaddps ymm12,ymm16,ymm18
  ab0f96:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  ab0f9c:	62 c1 34 20 5c d7    	vsubps ymm18,ymm25,ymm15
  ab0fa2:	62 11 04 28 58 f9    	vaddps ymm15,ymm15,ymm25
  ab0fa8:	62 61 54 28 5c ce    	vsubps ymm25,ymm5,ymm6
  ab0fae:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  ab0fb5:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  ab0fbb:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ab0fbf:	62 d1 74 20 5c f3    	vsubps ymm6,ymm17,ymm11
  ab0fc5:	62 51 74 20 58 db    	vaddps ymm11,ymm17,ymm11
  ab0fcb:	62 a1 64 20 58 cc    	vaddps ymm17,ymm19,ymm20
  ab0fd1:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ab0fd7:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ab0fdd:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  ab0fe3:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  ab0fe9:	62 a1 44 20 58 de    	vaddps ymm19,ymm23,ymm22
  ab0fef:	62 c1 14 28 5c e6    	vsubps ymm20,ymm13,ymm14
  ab0ff5:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  ab0ffa:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  ab0fff:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  ab1003:	62 11 54 20 58 c8    	vaddps ymm9,ymm21,ymm24
  ab1009:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  ab100e:	62 51 34 20 5c d6    	vsubps ymm10,ymm25,ymm14
  ab1014:	62 e1 6c 20 59 d0    	vmulps ymm18,ymm18,ymm0
  ab101a:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ab101e:	62 e1 7c 20 59 c0    	vmulps ymm16,ymm16,ymm0
  ab1024:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  ab1028:	62 11 0c 28 58 f1    	vaddps ymm14,ymm14,ymm25
  ab102e:	62 c1 7c 20 58 ef    	vaddps ymm21,ymm16,ymm15
  ab1034:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  ab103a:	62 e1 5c 20 5c c6    	vsubps ymm16,ymm20,ymm6
  ab1040:	62 f1 5c 20 58 f6    	vaddps ymm6,ymm20,ymm6
  ab1046:	62 c1 6c 20 5c e4    	vsubps ymm20,ymm18,ymm12
  ab104c:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  ab1052:	62 c1 54 28 5c d3    	vsubps ymm18,ymm5,ymm11
  ab1058:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  ab105c:	c4 41 34 5c d8       	vsubps ymm11,ymm9,ymm8
  ab1061:	c4 41 34 58 c0       	vaddps ymm8,ymm9,ymm8
  ab1066:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  ab106a:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  ab106e:	62 31 74 20 5c eb    	vsubps ymm13,ymm17,ymm19
  ab1074:	62 a1 64 20 58 c9    	vaddps ymm17,ymm19,ymm17
  ab107a:	62 a1 2c 28 5c dc    	vsubps ymm19,ymm10,ymm20
  ab1080:	62 a1 2c 28 58 e4    	vaddps ymm20,ymm10,ymm20
  ab1086:	62 31 7c 20 5c d5    	vsubps ymm10,ymm16,ymm21
  ab108c:	62 a1 7c 20 58 c5    	vaddps ymm16,ymm16,ymm21
  ab1092:	62 c1 6c 20 5c ed    	vsubps ymm21,ymm18,ymm13
  ab1098:	62 31 14 28 58 ea    	vaddps ymm13,ymm13,ymm18
  ab109e:	62 c1 34 28 5c d3    	vsubps ymm18,ymm9,ymm11
  ab10a4:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  ab10a9:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  ab10ae:	c4 41 0c 58 f7       	vaddps ymm14,ymm14,ymm15
  ab10b3:	c4 41 4c 5c fc       	vsubps ymm15,ymm6,ymm12
  ab10b8:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  ab10bc:	c4 41 54 5c e0       	vsubps ymm12,ymm5,ymm8
  ab10c1:	62 c1 54 28 58 f0    	vaddps ymm22,ymm5,ymm8
  ab10c7:	62 b1 44 28 5c e9    	vsubps ymm5,ymm7,ymm17
  ab10cd:	62 b1 44 28 58 f9    	vaddps ymm7,ymm7,ymm17
  ab10d3:	c4 63 45 18 c5 01    	vinsertf128 ymm8,ymm7,xmm5,0x1
  ab10d9:	c4 e3 45 06 ed 31    	vperm2f128 ymm5,ymm7,ymm5,0x31
  ab10df:	c4 c3 4d 18 ff 01    	vinsertf128 ymm7,ymm6,xmm15,0x1
  ab10e5:	c4 c3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm15,0x31
  ab10eb:	62 33 35 28 18 fa 01 	vinsertf32x4 ymm15,ymm9,xmm18,0x1
  ab10f2:	62 33 b5 28 23 ca 03 	vshuff64x2 ymm9,ymm9,ymm18,0x3
  ab10f9:	c4 41 55 14 c9       	vunpcklpd ymm9,ymm5,ymm9
  ab10fe:	62 d3 7d 20 18 ea 01 	vinsertf32x4 ymm5,ymm16,xmm10,0x1
  ab1105:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  ab110c:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  ab1111:	c4 41 3d 15 d7       	vunpckhpd ymm10,ymm8,ymm15
  ab1116:	c4 41 3d 14 c7       	vunpcklpd ymm8,ymm8,ymm15
  ab111b:	c5 45 15 fd          	vunpckhpd ymm15,ymm7,ymm5
  ab111f:	c5 c5 14 fd          	vunpcklpd ymm7,ymm7,ymm5
  ab1123:	c5 bc c6 ef 88       	vshufps ymm5,ymm8,ymm7,0x88
  ab1128:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab112d:	c5 bc c6 ff dd       	vshufps ymm7,ymm8,ymm7,0xdd
  ab1132:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  ab1137:	c4 c1 2c c6 ff 88    	vshufps ymm7,ymm10,ymm15,0x88
  ab113d:	62 e1 44 28 c6 c7 d8 	vshufps ymm16,ymm7,ymm7,0xd8
  ab1144:	c4 c1 2c c6 ff dd    	vshufps ymm7,ymm10,ymm15,0xdd
  ab114a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab114f:	c5 34 c6 d6 88       	vshufps ymm10,ymm9,ymm6,0x88
  ab1154:	c4 41 2c c6 fa d8    	vshufps ymm15,ymm10,ymm10,0xd8
  ab115a:	c5 b4 c6 f6 dd       	vshufps ymm6,ymm9,ymm6,0xdd
  ab115f:	c5 4c c6 d6 d8       	vshufps ymm10,ymm6,ymm6,0xd8
  ab1164:	62 d3 4d 20 18 f4 01 	vinsertf32x4 ymm6,ymm22,xmm12,0x1
  ab116b:	62 53 cd 20 23 cc 03 	vshuff64x2 ymm9,ymm22,ymm12,0x3
  ab1172:	c4 43 0d 18 e3 01    	vinsertf128 ymm12,ymm14,xmm11,0x1
  ab1178:	c4 43 0d 06 db 31    	vperm2f128 ymm11,ymm14,ymm11,0x31
  ab117e:	62 33 15 28 18 f5 01 	vinsertf32x4 ymm14,ymm13,xmm21,0x1
  ab1185:	62 33 95 28 23 ed 03 	vshuff64x2 ymm13,ymm13,ymm21,0x3
  ab118c:	c4 41 35 14 ed       	vunpcklpd ymm13,ymm9,ymm13
  ab1191:	62 33 5d 20 18 cb 01 	vinsertf32x4 ymm9,ymm20,xmm19,0x1
  ab1198:	62 a3 dd 20 23 cb 03 	vshuff64x2 ymm17,ymm20,ymm19,0x3
  ab119f:	62 31 a5 28 14 d9    	vunpcklpd ymm11,ymm11,ymm17
  ab11a5:	62 c1 cd 28 15 ce    	vunpckhpd ymm17,ymm6,ymm14
  ab11ab:	c4 41 4d 14 f6       	vunpcklpd ymm14,ymm6,ymm14
  ab11b0:	62 c1 9d 28 15 d1    	vunpckhpd ymm18,ymm12,ymm9
  ab11b6:	c4 41 1d 14 c9       	vunpcklpd ymm9,ymm12,ymm9
  ab11bb:	c4 c1 0c c6 f1 88    	vshufps ymm6,ymm14,ymm9,0x88
  ab11c1:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ab11c6:	c4 41 0c c6 c9 dd    	vshufps ymm9,ymm14,ymm9,0xdd
  ab11cc:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  ab11d2:	62 31 74 20 c6 ca 88 	vshufps ymm9,ymm17,ymm18,0x88
  ab11d9:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  ab11df:	62 31 74 20 c6 ca dd 	vshufps ymm9,ymm17,ymm18,0xdd
  ab11e6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab11ec:	62 c1 14 28 c6 cb 88 	vshufps ymm17,ymm13,ymm11,0x88
  ab11f3:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  ab11fa:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  ab1200:	c4 41 24 c6 eb d8    	vshufps ymm13,ymm11,ymm11,0xd8
  ab1206:	62 e1 7c 28 10 51 02 	vmovups ymm18,YMMWORD PTR [rcx+0x40]
  ab120d:	62 e1 7c 28 10 59 03 	vmovups ymm19,YMMWORD PTR [rcx+0x60]
  ab1214:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  ab121b:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  ab1222:	62 31 7c 20 59 dc    	vmulps ymm11,ymm16,ymm20
  ab1228:	62 32 1d 28 bc dd    	vfnmadd231ps ymm11,ymm12,ymm21
  ab122e:	62 31 1c 28 59 e4    	vmulps ymm12,ymm12,ymm20
  ab1234:	62 e1 7c 28 10 61 09 	vmovups ymm20,YMMWORD PTR [rcx+0x120]
  ab123b:	62 32 7d 20 b8 e5    	vfmadd231ps ymm12,ymm16,ymm21
  ab1241:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ab1248:	62 a1 04 28 59 e8    	vmulps ymm21,ymm15,ymm16
  ab124e:	62 a2 75 20 bc ec    	vfnmadd231ps ymm21,ymm17,ymm20
  ab1254:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  ab125a:	62 a2 05 28 b8 c4    	vfmadd231ps ymm16,ymm15,ymm20
  ab1260:	c5 7c 10 b9 60 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x160]
  ab1267:	00 
  ab1268:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  ab126f:	62 a1 14 28 59 e1    	vmulps ymm20,ymm13,ymm17
  ab1275:	62 c2 2d 28 b8 e7    	vfmadd231ps ymm20,ymm10,ymm15
  ab127b:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  ab1281:	62 a1 24 28 5c cd    	vsubps ymm17,ymm11,ymm21
  ab1287:	62 e1 74 20 59 c9    	vmulps ymm17,ymm17,ymm1
  ab128d:	c4 42 15 bc d7       	vfnmadd231ps ymm10,ymm13,ymm15
  ab1292:	62 31 1c 28 58 e8    	vaddps ymm13,ymm12,ymm16
  ab1298:	62 31 0c 28 59 fa    	vmulps ymm15,ymm14,ymm18
  ab129e:	62 32 3d 28 b8 fb    	vfmadd231ps ymm15,ymm8,ymm19
  ab12a4:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  ab12aa:	62 e1 7c 28 10 51 07 	vmovups ymm18,YMMWORD PTR [rcx+0xe0]
  ab12b1:	62 32 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm19
  ab12b7:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  ab12be:	00 
  ab12bf:	62 c1 34 28 59 de    	vmulps ymm19,ymm9,ymm14
  ab12c5:	62 a2 45 28 b8 da    	vfmadd231ps ymm19,ymm7,ymm18
  ab12cb:	c5 8c 59 ff          	vmulps ymm7,ymm14,ymm7
  ab12cf:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  ab12d3:	c4 62 15 ac f6       	vfnmadd213ps ymm14,ymm13,ymm6
  ab12d8:	62 b2 35 28 bc fa    	vfnmadd231ps ymm7,ymm9,ymm18
  ab12de:	62 51 74 20 58 ce    	vaddps ymm9,ymm17,ymm14
  ab12e4:	62 c1 5c 20 58 d7    	vaddps ymm18,ymm20,ymm15
  ab12ea:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  ab12f0:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  ab12f6:	62 a2 6d 20 ac eb    	vfnmadd213ps ymm21,ymm18,ymm19
  ab12fc:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ab1302:	62 c1 2c 28 5c c0    	vsubps ymm16,ymm10,ymm8
  ab1308:	62 e1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm1
  ab130e:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  ab1313:	62 31 54 20 58 d0    	vaddps ymm10,ymm21,ymm16
  ab1319:	62 51 5c 20 5c ff    	vsubps ymm15,ymm20,ymm15
  ab131f:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  ab1325:	62 e2 25 28 ac e5    	vfnmadd213ps ymm20,ymm11,ymm5
  ab132b:	c5 1c 59 e1          	vmulps ymm12,ymm12,ymm1
  ab132f:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  ab1335:	62 c1 5c 20 5c cc    	vsubps ymm17,ymm20,ymm12
  ab133b:	62 a1 54 20 5c c0    	vsubps ymm16,ymm21,ymm16
  ab1341:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  ab1347:	62 e2 3d 28 ac ef    	vfnmadd213ps ymm21,ymm8,ymm7
  ab134d:	c5 04 59 f9          	vmulps ymm15,ymm15,ymm1
  ab1351:	62 51 5c 20 58 e4    	vaddps ymm12,ymm20,ymm12
  ab1357:	62 c1 54 20 5c e7    	vsubps ymm20,ymm21,ymm15
  ab135d:	62 51 54 20 58 ff    	vaddps ymm15,ymm21,ymm15
  ab1363:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  ab1367:	62 31 64 20 58 ea    	vaddps ymm13,ymm19,ymm18
  ab136d:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  ab1371:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  ab1375:	c4 41 34 5c c2       	vsubps ymm8,ymm9,ymm10
  ab137a:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ab137f:	62 31 74 20 5c d4    	vsubps ymm10,ymm17,ymm20
  ab1385:	62 31 74 20 58 dc    	vaddps ymm11,ymm17,ymm20
  ab138b:	62 a1 0c 28 58 c8    	vaddps ymm17,ymm14,ymm16
  ab1391:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  ab1397:	62 c1 1c 28 58 c7    	vaddps ymm16,ymm12,ymm15
  ab139d:	c4 41 1c 5c e7       	vsubps ymm12,ymm12,ymm15
  ab13a2:	c4 41 4c 5c fd       	vsubps ymm15,ymm6,ymm13
  ab13a7:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  ab13ab:	c5 54 5c ef          	vsubps ymm13,ymm5,ymm7
  ab13af:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ab13b3:	c5 fc 28 fe          	vmovaps ymm7,ymm6
  ab13b7:	62 f2 65 28 7f fd    	vpermt2ps ymm7,ymm3,ymm5
  ab13bd:	62 f2 5d 28 7f f5    	vpermt2ps ymm6,ymm4,ymm5
  ab13c3:	c5 fc 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm6
  ab13c8:	c5 fc 11 7c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  ab13ce:	c5 7c 29 f5          	vmovaps ymm5,ymm14
  ab13d2:	62 d2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm12
  ab13d8:	62 52 5d 28 7f f4    	vpermt2ps ymm14,ymm4,ymm12
  ab13de:	c5 7c 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm14
  ab13e4:	c5 fc 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  ab13ea:	c5 7c 29 cd          	vmovaps ymm5,ymm9
  ab13ee:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  ab13f4:	62 52 5d 28 7f cb    	vpermt2ps ymm9,ymm4,ymm11
  ab13fa:	c5 7c 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm9
  ab1401:	00 00 
  ab1403:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  ab140a:	00 00 
  ab140c:	c5 7c 29 fd          	vmovaps ymm5,ymm15
  ab1410:	62 d2 65 28 7f ed    	vpermt2ps ymm5,ymm3,ymm13
  ab1416:	62 52 5d 28 7f fd    	vpermt2ps ymm15,ymm4,ymm13
  ab141c:	c5 7c 11 bc 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm15
  ab1423:	00 00 
  ab1425:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  ab142c:	00 00 
  ab142e:	62 b1 7c 28 28 e9    	vmovaps ymm5,ymm17
  ab1434:	62 b2 65 28 7f e8    	vpermt2ps ymm5,ymm3,ymm16
  ab143a:	62 a2 5d 28 7f c8    	vpermt2ps ymm17,ymm4,ymm16
  ab1440:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm17
  ab1447:	08 
  ab1448:	c5 fc 11 ac 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm5
  ab144f:	00 00 
  ab1451:	c5 7c 29 c5          	vmovaps ymm5,ymm8
  ab1455:	62 d2 65 28 7f ea    	vpermt2ps ymm5,ymm3,ymm10
  ab145b:	62 52 5d 28 7f c2    	vpermt2ps ymm8,ymm4,ymm10
  ab1461:	c5 7c 11 84 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm8
  ab1468:	00 00 
  ab146a:	c5 fc 11 ac 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm5
  ab1471:	00 00 
  ab1473:	48 81 c2 80 01 00 00 	add    rdx,0x180
  ab147a:	48 39 d0             	cmp    rax,rdx
  ab147d:	0f 85 bd f9 ff ff    	jne    ab0e40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  ab1483:	c5 f8 77             	vzeroupper
  ab1486:	c3                   	ret
