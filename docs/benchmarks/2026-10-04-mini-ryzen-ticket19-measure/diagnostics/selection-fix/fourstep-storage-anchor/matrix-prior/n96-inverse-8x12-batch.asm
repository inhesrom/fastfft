
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ae0dc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ae0dc0:	48 83 ec 48          	sub    rsp,0x48
  ae0dc4:	48 c1 e2 08          	shl    rdx,0x8
  ae0dc8:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ae0dcc:	31 d2                	xor    edx,edx
  ae0dce:	66 90                	xchg   ax,ax
  ae0dd0:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  ae0dd5:	c5 fc 10 4c 17 20    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x20]
  ae0ddb:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  ae0de0:	c4 e3 fd 01 ea d8    	vpermpd ymm5,ymm2,0xd8
  ae0de6:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  ae0deb:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  ae0df1:	c5 fc 10 4c 17 60    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x60]
  ae0df7:	c5 fc 10 94 17 80 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x80]
  ae0dfe:	00 00 
  ae0e00:	c5 f4 c6 f2 88       	vshufps ymm6,ymm1,ymm2,0x88
  ae0e05:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ae0e0b:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ae0e10:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  ae0e16:	c5 fc 10 94 17 c0 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xc0]
  ae0e1d:	00 00 
  ae0e1f:	c5 fc 10 bc 17 e0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xe0]
  ae0e26:	00 00 
  ae0e28:	c5 6c c6 c7 88       	vshufps ymm8,ymm2,ymm7,0x88
  ae0e2d:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ae0e33:	c5 ec c6 d7 dd       	vshufps ymm2,ymm2,ymm7,0xdd
  ae0e38:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  ae0e3e:	c5 fc 10 bc 17 20 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x120]
  ae0e45:	00 00 
  ae0e47:	c5 7c 10 8c 17 40 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x140]
  ae0e4e:	00 00 
  ae0e50:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  ae0e56:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ae0e5c:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  ae0e62:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ae0e68:	c5 7c 10 8c 17 80 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x180]
  ae0e6f:	00 00 
  ae0e71:	c5 7c 10 9c 17 a0 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x1a0]
  ae0e78:	00 00 
  ae0e7a:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  ae0e80:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ae0e86:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  ae0e8c:	c4 43 fd 01 e9 d8    	vpermpd ymm13,ymm9,0xd8
  ae0e92:	c5 7c 10 8c 17 e0 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x1e0]
  ae0e99:	00 00 
  ae0e9b:	c5 7c 10 9c 17 00 02 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x200]
  ae0ea2:	00 00 
  ae0ea4:	c4 41 34 c6 f3 88    	vshufps ymm14,ymm9,ymm11,0x88
  ae0eaa:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  ae0eb0:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  ae0eb6:	c4 43 fd 01 f9 d8    	vpermpd ymm15,ymm9,0xd8
  ae0ebc:	c5 7c 10 8c 17 40 02 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x240]
  ae0ec3:	00 00 
  ae0ec5:	c5 7c 10 9c 17 60 02 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x260]
  ae0ecc:	00 00 
  ae0ece:	62 c1 34 28 c6 c3 88 	vshufps ymm16,ymm9,ymm11,0x88
  ae0ed5:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  ae0edc:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  ae0ee2:	62 c3 fd 28 01 c9 d8 	vpermpd ymm17,ymm9,0xd8
  ae0ee9:	c5 7c 10 8c 17 a0 02 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x2a0]
  ae0ef0:	00 00 
  ae0ef2:	c5 7c 10 9c 17 c0 02 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x2c0]
  ae0ef9:	00 00 
  ae0efb:	62 c1 34 28 c6 d3 88 	vshufps ymm18,ymm9,ymm11,0x88
  ae0f02:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  ae0f09:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  ae0f0f:	62 c3 fd 28 01 d9 d8 	vpermpd ymm19,ymm9,0xd8
  ae0f16:	62 c1 7c 28 58 e5    	vaddps ymm20,ymm0,ymm13
  ae0f1c:	62 a1 6c 28 58 e9    	vaddps ymm21,ymm2,ymm17
  ae0f22:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  ae0f28:	62 c1 74 28 58 ff    	vaddps ymm23,ymm1,ymm15
  ae0f2e:	62 21 44 28 58 c3    	vaddps ymm24,ymm7,ymm19
  ae0f34:	62 01 44 20 58 c8    	vaddps ymm25,ymm23,ymm24
  ae0f3a:	62 11 4c 20 58 c9    	vaddps ymm9,ymm22,ymm25
  ae0f40:	62 41 54 28 58 d4    	vaddps ymm26,ymm5,ymm12
  ae0f46:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  ae0f4c:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  ae0f52:	62 41 4c 28 58 ee    	vaddps ymm29,ymm6,ymm14
  ae0f58:	62 21 2c 28 58 f2    	vaddps ymm30,ymm10,ymm18
  ae0f5e:	62 01 14 20 58 fe    	vaddps ymm31,ymm29,ymm30
  ae0f64:	62 11 1c 20 58 df    	vaddps ymm11,ymm28,ymm31
  ae0f6a:	c4 41 7c 5c ed       	vsubps ymm13,ymm0,ymm13
  ae0f6f:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  ae0f75:	62 c1 14 28 58 c0    	vaddps ymm16,ymm13,ymm8
  ae0f7b:	c4 c1 74 5c cf       	vsubps ymm1,ymm1,ymm15
  ae0f80:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  ae0f85:	c5 f4 58 c6          	vaddps ymm0,ymm1,ymm6
  ae0f89:	c4 e2 7d 18 1d aa 42 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5942aa]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ae0f90:	59 ff 
  ae0f92:	c5 7c 59 f3          	vmulps ymm14,ymm0,ymm3
  ae0f96:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  ae0f9c:	62 b1 44 28 5c fb    	vsubps ymm7,ymm7,ymm19
  ae0fa2:	c5 ac 5c c7          	vsubps ymm0,ymm10,ymm7
  ae0fa6:	62 e1 7c 28 59 d3    	vmulps ymm18,ymm0,ymm3
  ae0fac:	62 a1 0c 28 58 da    	vaddps ymm19,ymm14,ymm18
  ae0fb2:	62 b1 7c 20 58 c3    	vaddps ymm0,ymm16,ymm19
  ae0fb8:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  ae0fbd:	62 f1 74 20 5c d2    	vsubps ymm2,ymm17,ymm2
  ae0fc3:	c5 6c 58 e5          	vaddps ymm12,ymm2,ymm5
  ae0fc7:	c5 cc 5c c9          	vsubps ymm1,ymm6,ymm1
  ae0fcb:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  ae0fcf:	c5 ac 58 f7          	vaddps ymm6,ymm10,ymm7
  ae0fd3:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  ae0fd7:	c5 f4 5c fe          	vsubps ymm7,ymm1,ymm6
  ae0fdb:	62 e1 1c 28 58 cf    	vaddps ymm17,ymm12,ymm7
  ae0fe1:	62 31 5c 20 5c d5    	vsubps ymm10,ymm20,ymm21
  ae0fe7:	62 81 14 20 5c ee    	vsubps ymm21,ymm29,ymm30
  ae0fed:	62 31 2c 28 58 fd    	vaddps ymm15,ymm10,ymm21
  ae0ff3:	62 01 2c 20 5c d3    	vsubps ymm26,ymm26,ymm27
  ae0ff9:	62 a1 3c 20 5c ff    	vsubps ymm23,ymm24,ymm23
  ae0fff:	62 01 44 20 58 c2    	vaddps ymm24,ymm23,ymm26
  ae1005:	c4 41 14 5c c0       	vsubps ymm8,ymm13,ymm8
  ae100a:	c5 f4 58 ce          	vaddps ymm1,ymm1,ymm6
  ae100e:	62 e1 3c 28 58 e1    	vaddps ymm20,ymm8,ymm1
  ae1014:	c5 d4 5c ea          	vsubps ymm5,ymm5,ymm2
  ae1018:	62 d1 6c 20 5c f6    	vsubps ymm6,ymm18,ymm14
  ae101e:	62 e1 54 28 58 d6    	vaddps ymm18,ymm5,ymm6
  ae1024:	62 81 4c 20 5c f1    	vsubps ymm22,ymm22,ymm25
  ae102a:	62 01 1c 20 5c cf    	vsubps ymm25,ymm28,ymm31
  ae1030:	62 b1 7c 20 5c d3    	vsubps ymm2,ymm16,ymm19
  ae1036:	62 e1 1c 28 5c c7    	vsubps ymm16,ymm12,ymm7
  ae103c:	62 a1 2c 28 5c ed    	vsubps ymm21,ymm10,ymm21
  ae1042:	62 a1 2c 20 5c df    	vsubps ymm19,ymm26,ymm23
  ae1048:	c5 bc 5c c9          	vsubps ymm1,ymm8,ymm1
  ae104c:	62 e1 54 28 5c fe    	vsubps ymm23,ymm5,ymm6
  ae1052:	62 b3 35 28 18 ee 01 	vinsertf32x4 ymm5,ymm9,xmm22,0x1
  ae1059:	c4 e3 7d 18 f2 01    	vinsertf128 ymm6,ymm0,xmm2,0x1
  ae105f:	62 b3 05 28 18 fd 01 	vinsertf32x4 ymm7,ymm15,xmm21,0x1
  ae1066:	62 73 5d 20 18 c1 01 	vinsertf32x4 ymm8,ymm20,xmm1,0x1
  ae106d:	c5 55 14 f7          	vunpcklpd ymm14,ymm5,ymm7
  ae1071:	c5 d5 15 ff          	vunpckhpd ymm7,ymm5,ymm7
  ae1075:	62 41 cd 28 14 d0    	vunpcklpd ymm26,ymm6,ymm8
  ae107b:	c4 41 4d 15 c0       	vunpckhpd ymm8,ymm6,ymm8
  ae1080:	62 91 0c 28 c6 da dd 	vshufps ymm3,ymm14,ymm26,0xdd
  ae1087:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  ae108d:	c4 c1 44 c6 d8 88    	vshufps ymm3,ymm7,ymm8,0x88
  ae1093:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  ae1099:	c4 c1 44 c6 d8 dd    	vshufps ymm3,ymm7,ymm8,0xdd
  ae109f:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  ae10a5:	62 13 25 28 18 c1 01 	vinsertf32x4 ymm8,ymm11,xmm25,0x1
  ae10ac:	62 33 75 20 18 d0 01 	vinsertf32x4 ymm10,ymm17,xmm16,0x1
  ae10b3:	62 33 3d 20 18 e3 01 	vinsertf32x4 ymm12,ymm24,xmm19,0x1
  ae10ba:	62 33 6d 20 18 ef 01 	vinsertf32x4 ymm13,ymm18,xmm23,0x1
  ae10c1:	62 41 bd 28 14 dc    	vunpcklpd ymm27,ymm8,ymm12
  ae10c7:	c4 41 3d 15 e4       	vunpckhpd ymm12,ymm8,ymm12
  ae10cc:	62 41 ad 28 14 e5    	vunpcklpd ymm28,ymm10,ymm13
  ae10d2:	c4 41 2d 15 ed       	vunpckhpd ymm13,ymm10,ymm13
  ae10d7:	62 91 24 20 c6 dc dd 	vshufps ymm3,ymm27,ymm28,0xdd
  ae10de:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  ae10e4:	c4 c1 1c c6 dd 88    	vshufps ymm3,ymm12,ymm13,0x88
  ae10ea:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  ae10f0:	c4 c1 1c c6 dd dd    	vshufps ymm3,ymm12,ymm13,0xdd
  ae10f6:	c5 fc 11 1c 24       	vmovups YMMWORD PTR [rsp],ymm3
  ae10fb:	62 11 24 20 c6 ec 88 	vshufps ymm13,ymm27,ymm28,0x88
  ae1102:	62 11 0c 28 c6 f2 88 	vshufps ymm14,ymm14,ymm26,0x88
  ae1109:	62 13 a5 28 23 d9 03 	vshuff64x2 ymm11,ymm11,ymm25,0x3
  ae1110:	62 a3 bd 20 23 db 03 	vshuff64x2 ymm19,ymm24,ymm19,0x3
  ae1117:	62 21 a5 28 15 c3    	vunpckhpd ymm24,ymm11,ymm19
  ae111d:	62 23 f5 20 23 c8 03 	vshuff64x2 ymm25,ymm17,ymm16,0x3
  ae1124:	62 a3 ed 20 23 d7 03 	vshuff64x2 ymm18,ymm18,ymm23,0x3
  ae112b:	62 a1 b5 20 15 ca    	vunpckhpd ymm17,ymm25,ymm18
  ae1131:	62 a1 3c 20 c6 c1 dd 	vshufps ymm16,ymm24,ymm17,0xdd
  ae1138:	62 a1 3c 20 c6 c9 88 	vshufps ymm17,ymm24,ymm17,0x88
  ae113f:	62 31 a5 28 14 db    	vunpcklpd ymm11,ymm11,ymm19
  ae1145:	62 a1 b5 20 14 da    	vunpcklpd ymm19,ymm25,ymm18
  ae114b:	62 a1 24 28 c6 d3 dd 	vshufps ymm18,ymm11,ymm19,0xdd
  ae1152:	62 a1 24 28 c6 db 88 	vshufps ymm19,ymm11,ymm19,0x88
  ae1159:	62 33 b5 28 23 ce 03 	vshuff64x2 ymm9,ymm9,ymm22,0x3
  ae1160:	62 33 85 28 23 dd 03 	vshuff64x2 ymm11,ymm15,ymm21,0x3
  ae1167:	c4 41 35 15 fb       	vunpckhpd ymm15,ymm9,ymm11
  ae116c:	c4 e3 7d 06 c2 31    	vperm2f128 ymm0,ymm0,ymm2,0x31
  ae1172:	62 f3 dd 20 23 c9 03 	vshuff64x2 ymm1,ymm20,ymm1,0x3
  ae1179:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  ae117d:	62 e1 04 28 c6 e2 dd 	vshufps ymm20,ymm15,ymm2,0xdd
  ae1184:	62 e1 04 28 c6 ea 88 	vshufps ymm21,ymm15,ymm2,0x88
  ae118b:	c4 c1 35 14 d3       	vunpcklpd ymm2,ymm9,ymm11
  ae1190:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  ae1194:	62 e1 6c 28 c6 f0 dd 	vshufps ymm22,ymm2,ymm0,0xdd
  ae119b:	62 e1 6c 28 c6 f8 88 	vshufps ymm23,ymm2,ymm0,0x88
  ae11a2:	c5 f8 10 4c 17 50    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x50]
  ae11a8:	c5 f8 10 54 17 40    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x40]
  ae11ae:	c5 e8 c6 e9 88       	vshufps xmm5,xmm2,xmm1,0x88
  ae11b3:	c5 e8 c6 c9 dd       	vshufps xmm1,xmm2,xmm1,0xdd
  ae11b8:	c5 f8 10 94 17 b0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xb0]
  ae11bf:	00 00 
  ae11c1:	c5 78 10 8c 17 a0 00 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0xa0]
  ae11c8:	00 00 
  ae11ca:	c5 30 c6 da 88       	vshufps xmm11,xmm9,xmm2,0x88
  ae11cf:	c5 30 c6 ca dd       	vshufps xmm9,xmm9,xmm2,0xdd
  ae11d4:	c5 f8 10 94 17 10 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x110]
  ae11db:	00 00 
  ae11dd:	c5 78 10 bc 17 00 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x100]
  ae11e4:	00 00 
  ae11e6:	62 61 04 08 c6 c2 88 	vshufps xmm24,xmm15,xmm2,0x88
  ae11ed:	c5 80 c6 fa dd       	vshufps xmm7,xmm15,xmm2,0xdd
  ae11f2:	c5 78 10 bc 17 70 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x170]
  ae11f9:	00 00 
  ae11fb:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x160]
  ae1202:	16 
  ae1203:	62 41 34 00 c6 d7 88 	vshufps xmm26,xmm25,xmm15,0x88
  ae120a:	62 51 34 00 c6 ff dd 	vshufps xmm15,xmm25,xmm15,0xdd
  ae1211:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x1d0]
  ae1218:	1d 
  ae1219:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1c0]
  ae1220:	1c 
  ae1221:	62 01 24 00 c6 e1 88 	vshufps xmm28,xmm27,xmm25,0x88
  ae1228:	62 01 24 00 c6 c9 dd 	vshufps xmm25,xmm27,xmm25,0xdd
  ae122f:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x230]
  ae1236:	23 
  ae1237:	62 61 7c 08 10 6c 17 	vmovups xmm29,XMMWORD PTR [rdi+rdx*1+0x220]
  ae123e:	22 
  ae123f:	62 01 14 00 c6 f3 88 	vshufps xmm30,xmm29,xmm27,0x88
  ae1246:	62 01 14 00 c6 db dd 	vshufps xmm27,xmm29,xmm27,0xdd
  ae124d:	62 61 7c 08 10 6c 17 	vmovups xmm29,XMMWORD PTR [rdi+rdx*1+0x290]
  ae1254:	29 
  ae1255:	62 61 7c 08 10 7c 17 	vmovups xmm31,XMMWORD PTR [rdi+rdx*1+0x280]
  ae125c:	28 
  ae125d:	62 91 04 00 c6 dd 88 	vshufps xmm3,xmm31,xmm29,0x88
  ae1264:	62 01 04 00 c6 ed dd 	vshufps xmm29,xmm31,xmm29,0xdd
  ae126b:	62 61 7c 08 10 7c 17 	vmovups xmm31,XMMWORD PTR [rdi+rdx*1+0x2f0]
  ae1272:	2f 
  ae1273:	c5 f8 10 a4 17 e0 02 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x2e0]
  ae127a:	00 00 
  ae127c:	62 91 5c 08 c6 c7 88 	vshufps xmm0,xmm4,xmm31,0x88
  ae1283:	62 91 5c 08 c6 e7 dd 	vshufps xmm4,xmm4,xmm31,0xdd
  ae128a:	62 91 74 28 58 f1    	vaddps ymm6,ymm1,ymm25
  ae1290:	62 91 74 28 5c d1    	vsubps ymm2,ymm1,ymm25
  ae1296:	62 61 3c 20 58 cb    	vaddps ymm25,ymm24,ymm3
  ae129c:	62 f1 3c 20 5c db    	vsubps ymm3,ymm24,ymm3
  ae12a2:	62 01 34 28 58 c3    	vaddps ymm24,ymm9,ymm27
  ae12a8:	62 11 34 28 5c cb    	vsubps ymm9,ymm9,ymm27
  ae12ae:	62 01 24 28 58 de    	vaddps ymm27,ymm11,ymm30
  ae12b4:	62 11 24 28 5c de    	vsubps ymm11,ymm11,ymm30
  ae12ba:	62 61 2c 20 58 f0    	vaddps ymm30,ymm26,ymm0
  ae12c0:	62 f1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm0
  ae12c6:	62 61 04 28 58 d4    	vaddps ymm26,ymm15,ymm4
  ae12cc:	c5 84 5c e4          	vsubps ymm4,ymm15,ymm4
  ae12d0:	62 11 54 28 58 fc    	vaddps ymm15,ymm5,ymm28
  ae12d6:	62 91 54 28 5c ec    	vsubps ymm5,ymm5,ymm28
  ae12dc:	62 01 44 28 58 e5    	vaddps ymm28,ymm7,ymm29
  ae12e2:	62 61 14 20 5c ef    	vsubps ymm29,ymm29,ymm7
  ae12e8:	c4 c1 34 58 fb       	vaddps ymm7,ymm9,ymm11
  ae12ed:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  ae12f2:	c5 7c 5c dc          	vsubps ymm11,ymm0,ymm4
  ae12f6:	c5 dc 58 c0          	vaddps ymm0,ymm4,ymm0
  ae12fa:	62 01 4c 28 58 fc    	vaddps ymm31,ymm6,ymm28
  ae1300:	62 91 4c 28 5c cc    	vsubps ymm1,ymm6,ymm28
  ae1306:	62 11 24 20 58 d6    	vaddps ymm10,ymm27,ymm30
  ae130c:	62 01 24 20 5c de    	vsubps ymm27,ymm27,ymm30
  ae1312:	62 01 04 28 58 f1    	vaddps ymm30,ymm15,ymm25
  ae1318:	62 11 04 28 5c e1    	vsubps ymm12,ymm15,ymm25
  ae131e:	62 11 3c 20 58 fa    	vaddps ymm15,ymm24,ymm26
  ae1324:	62 01 2c 20 5c e0    	vsubps ymm28,ymm26,ymm24
  ae132a:	62 61 6c 28 58 c3    	vaddps ymm24,ymm2,ymm3
  ae1330:	c5 ec 5c db          	vsubps ymm3,ymm2,ymm3
  ae1334:	c4 e2 7d 18 25 ff 3e 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff593eff]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ae133b:	59 ff 
  ae133d:	c5 b4 59 d4          	vmulps ymm2,ymm9,ymm4
  ae1341:	c5 7c 59 cc          	vmulps ymm9,ymm0,ymm4
  ae1345:	c4 c1 6c 5c f1       	vsubps ymm6,ymm2,ymm9
  ae134a:	c5 34 58 ca          	vaddps ymm9,ymm9,ymm2
  ae134e:	62 61 14 20 58 cd    	vaddps ymm25,ymm29,ymm5
  ae1354:	62 01 54 28 5c ed    	vsubps ymm29,ymm5,ymm29
  ae135a:	c5 c4 59 d4          	vmulps ymm2,ymm7,ymm4
  ae135e:	c5 a4 59 ec          	vmulps ymm5,ymm11,ymm4
  ae1362:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  ae1366:	c5 54 5c c2          	vsubps ymm8,ymm5,ymm2
  ae136a:	62 d1 04 20 58 ef    	vaddps ymm5,ymm31,ymm15
  ae1370:	62 51 04 00 5c df    	vsubps xmm11,xmm31,xmm15
  ae1376:	62 43 55 28 18 fb 01 	vinsertf32x4 ymm31,ymm5,xmm11,0x1
  ae137d:	62 f1 3c 20 58 ef    	vaddps ymm5,ymm24,ymm7
  ae1383:	62 f1 3c 00 5c ff    	vsubps xmm7,xmm24,xmm7
  ae1389:	c4 e3 55 18 d7 01    	vinsertf128 ymm2,ymm5,xmm7,0x1
  ae138f:	62 91 74 28 58 eb    	vaddps ymm5,ymm1,ymm27
  ae1395:	62 91 74 08 5c cb    	vsubps xmm1,xmm1,xmm27
  ae139b:	c4 e3 55 18 c1 01    	vinsertf128 ymm0,ymm5,xmm1,0x1
  ae13a1:	c5 b4 58 e3          	vaddps ymm4,ymm9,ymm3
  ae13a5:	c4 c1 60 5c c9       	vsubps xmm1,xmm3,xmm9
  ae13aa:	c4 63 7d 04 5c 24 a0 	vpermilps ymm11,YMMWORD PTR [rsp-0x60],0xd8
  ae13b1:	d8 
  ae13b2:	c4 63 7d 04 4c 24 80 	vpermilps ymm9,YMMWORD PTR [rsp-0x80],0xd8
  ae13b9:	d8 
  ae13ba:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp-0x20],0xd8
  ae13c1:	ff d8 
  ae13c3:	c4 63 7d 04 7c 24 c0 	vpermilps ymm15,YMMWORD PTR [rsp-0x40],0xd8
  ae13ca:	d8 
  ae13cb:	c4 e3 7d 04 7c 24 20 	vpermilps ymm7,YMMWORD PTR [rsp+0x20],0xd8
  ae13d2:	d8 
  ae13d3:	c4 e3 7d 04 1c 24 d8 	vpermilps ymm3,YMMWORD PTR [rsp],0xd8
  ae13da:	c4 c1 14 c6 ed d8    	vshufps ymm5,ymm13,ymm13,0xd8
  ae13e0:	c5 fc 11 6c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm5
  ae13e6:	c4 c1 0c c6 ee d8    	vshufps ymm5,ymm14,ymm14,0xd8
  ae13ec:	c5 fc 11 6c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm5
  ae13f2:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  ae13f9:	62 21 74 20 c6 d1 d8 	vshufps ymm26,ymm17,ymm17,0xd8
  ae1400:	62 31 6c 20 c6 ea d8 	vshufps ymm13,ymm18,ymm18,0xd8
  ae1407:	c5 7c 11 6c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm13
  ae140d:	62 a1 64 20 c6 c3 d8 	vshufps ymm16,ymm19,ymm19,0xd8
  ae1414:	62 31 5c 20 c6 f4 d8 	vshufps ymm14,ymm20,ymm20,0xd8
  ae141b:	62 21 54 20 c6 dd d8 	vshufps ymm27,ymm21,ymm21,0xd8
  ae1422:	62 31 4c 20 c6 ee d8 	vshufps ymm13,ymm22,ymm22,0xd8
  ae1429:	c5 7c 11 6c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm13
  ae142f:	62 a1 44 20 c6 cf d8 	vshufps ymm17,ymm23,ymm23,0xd8
  ae1436:	c4 e3 5d 18 c9 01    	vinsertf128 ymm1,ymm4,xmm1,0x1
  ae143c:	62 f1 85 20 14 e0    	vunpcklpd ymm4,ymm31,ymm0
  ae1442:	62 f1 85 20 15 c0    	vunpckhpd ymm0,ymm31,ymm0
  ae1448:	62 e1 ed 28 14 d1    	vunpcklpd ymm18,ymm2,ymm1
  ae144e:	c5 ed 15 c9          	vunpckhpd ymm1,ymm2,ymm1
  ae1452:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  ae1457:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  ae145c:	62 d1 0c 20 58 ca    	vaddps ymm1,ymm30,ymm10
  ae1462:	62 51 0c 00 5c d2    	vsubps xmm10,xmm30,xmm10
  ae1468:	62 71 34 20 58 ee    	vaddps ymm13,ymm25,ymm6
  ae146e:	c4 c3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm10,0x1
  ae1474:	62 51 1c 20 58 d4    	vaddps ymm10,ymm28,ymm12
  ae147a:	62 f1 34 00 5c f6    	vsubps xmm6,xmm25,xmm6
  ae1480:	62 c1 14 20 58 d8    	vaddps ymm19,ymm29,ymm8
  ae1486:	c4 e3 15 18 f6 01    	vinsertf128 ymm6,ymm13,xmm6,0x1
  ae148c:	62 31 5c 28 c6 ea dd 	vshufps ymm13,ymm4,ymm18,0xdd
  ae1493:	62 41 14 28 c6 f5 d8 	vshufps ymm30,ymm13,ymm13,0xd8
  ae149a:	62 e1 6c 28 c6 ea d8 	vshufps ymm21,ymm2,ymm2,0xd8
  ae14a1:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  ae14a6:	62 91 1c 08 5c c4    	vsubps xmm0,xmm12,xmm28
  ae14ac:	c4 e3 2d 18 c0 01    	vinsertf128 ymm0,ymm10,xmm0,0x1
  ae14b2:	62 d1 14 00 5c d0    	vsubps xmm2,xmm29,xmm8
  ae14b8:	62 f3 65 20 18 d2 01 	vinsertf32x4 ymm2,ymm19,xmm2,0x1
  ae14bf:	c5 75 14 c0          	vunpcklpd ymm8,ymm1,ymm0
  ae14c3:	c5 f5 15 c8          	vunpckhpd ymm1,ymm1,ymm0
  ae14c7:	c5 4d 14 d2          	vunpcklpd ymm10,ymm6,ymm2
  ae14cb:	c5 cd 15 d2          	vunpckhpd ymm2,ymm6,ymm2
  ae14cf:	c4 c1 3c c6 c2 dd    	vshufps ymm0,ymm8,ymm10,0xdd
  ae14d5:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae14da:	c5 f4 c6 f2 88       	vshufps ymm6,ymm1,ymm2,0x88
  ae14df:	62 61 4c 28 c6 fe d8 	vshufps ymm31,ymm6,ymm6,0xd8
  ae14e6:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ae14eb:	62 e1 74 28 c6 d9 d8 	vshufps ymm19,ymm1,ymm1,0xd8
  ae14f2:	c4 c1 3c c6 ca 88    	vshufps ymm1,ymm8,ymm10,0x88
  ae14f8:	62 e1 74 28 c6 f1 d8 	vshufps ymm22,ymm1,ymm1,0xd8
  ae14ff:	62 b1 5c 28 c6 ca 88 	vshufps ymm1,ymm4,ymm18,0x88
  ae1506:	62 e1 74 28 c6 e1 d8 	vshufps ymm20,ymm1,ymm1,0xd8
  ae150d:	62 61 7c 28 10 69 02 	vmovups ymm29,YMMWORD PTR [rcx+0x40]
  ae1514:	62 61 7c 28 10 61 03 	vmovups ymm28,YMMWORD PTR [rcx+0x60]
  ae151b:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  ae1522:	00 
  ae1523:	c5 fc 10 91 a0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1a0]
  ae152a:	00 
  ae152b:	62 e1 24 20 59 d1    	vmulps ymm18,ymm27,ymm1
  ae1531:	62 e2 2d 20 bc d2    	vfnmadd231ps ymm18,ymm26,ymm2
  ae1537:	62 e1 2c 20 59 f9    	vmulps ymm23,ymm26,ymm1
  ae153d:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  ae1544:	00 
  ae1545:	62 e2 25 20 b8 fa    	vfmadd231ps ymm23,ymm27,ymm2
  ae154b:	c5 fc 10 91 e0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xe0]
  ae1552:	00 
  ae1553:	62 61 3c 20 59 d1    	vmulps ymm26,ymm24,ymm1
  ae1559:	62 62 65 28 bc d2    	vfnmadd231ps ymm26,ymm3,ymm2
  ae155f:	62 61 64 28 59 c9    	vmulps ymm25,ymm3,ymm1
  ae1565:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  ae156c:	00 
  ae156d:	62 62 3d 20 b8 ca    	vfmadd231ps ymm25,ymm24,ymm2
  ae1573:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  ae157a:	00 
  ae157b:	62 61 0c 20 59 c1    	vmulps ymm24,ymm30,ymm1
  ae1581:	62 62 7d 28 bc c2    	vfnmadd231ps ymm24,ymm0,ymm2
  ae1587:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  ae158b:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  ae1592:	00 
  ae1593:	62 f2 0d 20 b8 c2    	vfmadd231ps ymm0,ymm30,ymm2
  ae1599:	c5 fc 10 99 20 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x120]
  ae15a0:	00 
  ae15a1:	62 f1 74 20 59 d1    	vmulps ymm2,ymm17,ymm1
  ae15a7:	62 f2 7d 20 bc d3    	vfnmadd231ps ymm2,ymm16,ymm3
  ae15ad:	62 e1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm1
  ae15b3:	c5 fc 10 89 80 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x280]
  ae15ba:	00 
  ae15bb:	62 e2 75 20 b8 c3    	vfmadd231ps ymm16,ymm17,ymm3
  ae15c1:	c5 fc 10 99 a0 02 00 	vmovups ymm3,YMMWORD PTR [rcx+0x2a0]
  ae15c8:	00 
  ae15c9:	62 f1 54 20 59 e1    	vmulps ymm4,ymm21,ymm1
  ae15cf:	62 f2 05 20 bc e3    	vfnmadd231ps ymm4,ymm31,ymm3
  ae15d5:	62 e1 04 20 59 c9    	vmulps ymm17,ymm31,ymm1
  ae15db:	c5 fc 10 89 c0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1c0]
  ae15e2:	00 
  ae15e3:	62 e2 55 20 b8 cb    	vfmadd231ps ymm17,ymm21,ymm3
  ae15e9:	c5 fc 10 99 e0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1e0]
  ae15f0:	00 
  ae15f1:	62 e1 0c 28 59 e9    	vmulps ymm21,ymm14,ymm1
  ae15f7:	62 e2 55 28 bc eb    	vfnmadd231ps ymm21,ymm5,ymm3
  ae15fd:	c5 d4 59 c9          	vmulps ymm1,ymm5,ymm1
  ae1601:	c5 fc 10 a9 80 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0x80]
  ae1608:	00 
  ae1609:	c4 e2 0d b8 cb       	vfmadd231ps ymm1,ymm14,ymm3
  ae160e:	c5 fc 10 99 a0 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0xa0]
  ae1615:	00 
  ae1616:	62 91 24 28 59 f5    	vmulps ymm6,ymm11,ymm29
  ae161c:	62 92 05 28 bc f4    	vfnmadd231ps ymm6,ymm15,ymm28
  ae1622:	62 11 04 28 59 c5    	vmulps ymm8,ymm15,ymm29
  ae1628:	c5 7c 10 91 00 02 00 	vmovups ymm10,YMMWORD PTR [rcx+0x200]
  ae162f:	00 
  ae1630:	62 12 25 28 b8 c4    	vfmadd231ps ymm8,ymm11,ymm28
  ae1636:	c5 7c 10 99 20 02 00 	vmovups ymm11,YMMWORD PTR [rcx+0x220]
  ae163d:	00 
  ae163e:	62 51 5c 20 59 e2    	vmulps ymm12,ymm20,ymm10
  ae1644:	62 52 4d 20 bc e3    	vfnmadd231ps ymm12,ymm22,ymm11
  ae164a:	62 51 4c 20 59 d2    	vmulps ymm10,ymm22,ymm10
  ae1650:	c5 7c 10 b1 40 01 00 	vmovups ymm14,YMMWORD PTR [rcx+0x140]
  ae1657:	00 
  ae1658:	62 52 5d 20 b8 d3    	vfmadd231ps ymm10,ymm20,ymm11
  ae165e:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  ae1665:	00 
  ae1666:	c5 34 59 fd          	vmulps ymm15,ymm9,ymm5
  ae166a:	c4 62 45 bc fb       	vfnmadd231ps ymm15,ymm7,ymm3
  ae166f:	c5 c4 59 ed          	vmulps ymm5,ymm7,ymm5
  ae1673:	c5 fc 10 b9 c0 02 00 	vmovups ymm7,YMMWORD PTR [rcx+0x2c0]
  ae167a:	00 
  ae167b:	c4 e2 35 b8 eb       	vfmadd231ps ymm5,ymm9,ymm3
  ae1680:	c5 fc 10 99 e0 02 00 	vmovups ymm3,YMMWORD PTR [rcx+0x2e0]
  ae1687:	00 
  ae1688:	c5 14 59 cf          	vmulps ymm9,ymm13,ymm7
  ae168c:	62 72 65 20 bc cb    	vfnmadd231ps ymm9,ymm19,ymm3
  ae1692:	62 e1 64 20 59 df    	vmulps ymm19,ymm19,ymm7
  ae1698:	62 61 7c 28 10 64 24 	vmovups ymm28,YMMWORD PTR [rsp-0x20]
  ae169f:	ff 
  ae16a0:	62 a1 1c 20 58 e2    	vaddps ymm20,ymm28,ymm18
  ae16a6:	62 e2 15 28 b8 db    	vfmadd231ps ymm19,ymm13,ymm3
  ae16ac:	62 91 2c 20 58 d8    	vaddps ymm3,ymm26,ymm24
  ae16b2:	62 61 7c 28 10 5c 24 	vmovups ymm27,YMMWORD PTR [rsp-0x40]
  ae16b9:	fe 
  ae16ba:	62 51 24 20 59 ee    	vmulps ymm13,ymm27,ymm14
  ae16c0:	c5 fc 10 7c 24 80    	vmovups ymm7,YMMWORD PTR [rsp-0x80]
  ae16c6:	c4 42 45 bc eb       	vfnmadd231ps ymm13,ymm7,ymm11
  ae16cb:	c5 0c 59 f7          	vmulps ymm14,ymm14,ymm7
  ae16cf:	62 e1 6c 28 58 f4    	vaddps ymm22,ymm2,ymm4
  ae16d5:	62 52 25 20 b8 f3    	vfmadd231ps ymm14,ymm27,ymm11
  ae16db:	62 71 54 20 58 de    	vaddps ymm11,ymm21,ymm6
  ae16e1:	62 41 1c 28 58 df    	vaddps ymm27,ymm12,ymm15
  ae16e7:	c5 ec 5c fc          	vsubps ymm7,ymm2,ymm4
  ae16eb:	c5 bc 58 d1          	vaddps ymm2,ymm8,ymm1
  ae16ef:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  ae16f4:	c4 c1 34 58 e5       	vaddps ymm4,ymm9,ymm13
  ae16f9:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  ae16fe:	62 51 64 20 58 e6    	vaddps ymm12,ymm19,ymm14
  ae1704:	62 51 64 20 5c f6    	vsubps ymm14,ymm19,ymm14
  ae170a:	62 61 7c 28 10 6c 24 	vmovups ymm29,YMMWORD PTR [rsp-0x60]
  ae1711:	fd 
  ae1712:	62 11 44 20 58 fd    	vaddps ymm15,ymm23,ymm29
  ae1718:	62 a1 1c 20 5c d2    	vsubps ymm18,ymm28,ymm18
  ae171e:	62 e1 34 20 58 d8    	vaddps ymm19,ymm25,ymm0
  ae1724:	62 61 34 20 5c c8    	vsubps ymm25,ymm25,ymm0
  ae172a:	62 b1 7c 20 58 c1    	vaddps ymm0,ymm16,ymm17
  ae1730:	62 a1 7c 20 5c c1    	vsubps ymm16,ymm16,ymm17
  ae1736:	62 e1 2c 28 58 cd    	vaddps ymm17,ymm10,ymm5
  ae173c:	62 a1 4c 28 5c ed    	vsubps ymm21,ymm6,ymm21
  ae1742:	62 b1 7c 20 58 f5    	vaddps ymm6,ymm16,ymm21
  ae1748:	c5 2c 5c d5          	vsubps ymm10,ymm10,ymm5
  ae174c:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  ae1751:	c4 c1 2c 58 e9       	vaddps ymm5,ymm10,ymm9
  ae1756:	c5 4c 5c ed          	vsubps ymm13,ymm6,ymm5
  ae175a:	c5 cc 58 f5          	vaddps ymm6,ymm6,ymm5
  ae175e:	62 61 44 28 58 e1    	vaddps ymm28,ymm7,ymm1
  ae1764:	62 a1 14 20 5c ff    	vsubps ymm23,ymm29,ymm23
  ae176a:	62 41 3c 28 58 ee    	vaddps ymm29,ymm8,ymm14
  ae1770:	62 01 3c 20 5c c2    	vsubps ymm24,ymm24,ymm26
  ae1776:	62 91 1c 20 58 ed    	vaddps ymm5,ymm28,ymm29
  ae177c:	62 01 1c 20 5c d5    	vsubps ymm26,ymm28,ymm29
  ae1782:	62 41 4c 20 58 e3    	vaddps ymm28,ymm22,ymm11
  ae1788:	62 51 4c 20 5c db    	vsubps ymm11,ymm22,ymm11
  ae178e:	62 e1 24 20 58 f4    	vaddps ymm22,ymm27,ymm4
  ae1794:	62 f1 24 20 5c e4    	vsubps ymm4,ymm27,ymm4
  ae179a:	62 61 5c 20 58 db    	vaddps ymm27,ymm20,ymm3
  ae17a0:	62 f1 5c 20 5c db    	vsubps ymm3,ymm20,ymm3
  ae17a6:	62 e1 7c 28 58 e2    	vaddps ymm20,ymm0,ymm2
  ae17ac:	c5 fc 5c d2          	vsubps ymm2,ymm0,ymm2
  ae17b0:	62 41 74 20 58 ec    	vaddps ymm29,ymm17,ymm12
  ae17b6:	62 51 74 20 5c e4    	vsubps ymm12,ymm17,ymm12
  ae17bc:	c4 c1 6c 5c c4       	vsubps ymm0,ymm2,ymm12
  ae17c1:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  ae17c7:	62 c1 6c 28 58 cc    	vaddps ymm17,ymm2,ymm12
  ae17cd:	62 41 64 20 58 f7    	vaddps ymm30,ymm19,ymm15
  ae17d3:	62 31 04 28 5c fb    	vsubps ymm15,ymm15,ymm19
  ae17d9:	62 e1 24 28 58 dc    	vaddps ymm19,ymm11,ymm4
  ae17df:	c5 a4 5c c4          	vsubps ymm0,ymm11,ymm4
  ae17e3:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  ae17e9:	62 91 6c 20 58 e1    	vaddps ymm4,ymm18,ymm25
  ae17ef:	62 11 6c 20 5c d9    	vsubps ymm11,ymm18,ymm25
  ae17f5:	c5 c4 5c d1          	vsubps ymm2,ymm7,ymm1
  ae17f9:	62 a1 1c 20 58 d6    	vaddps ymm18,ymm28,ymm22
  ae17ff:	c4 41 3c 5c f6       	vsubps ymm14,ymm8,ymm14
  ae1804:	62 21 3c 20 58 cf    	vaddps ymm25,ymm24,ymm23
  ae180a:	62 81 44 20 5c f8    	vsubps ymm23,ymm23,ymm24
  ae1810:	62 31 24 20 58 e2    	vaddps ymm12,ymm27,ymm18
  ae1816:	62 a1 7c 20 5c ed    	vsubps ymm21,ymm16,ymm21
  ae181c:	62 01 5c 20 58 c5    	vaddps ymm24,ymm20,ymm29
  ae1822:	62 41 2c 28 5c f9    	vsubps ymm31,ymm10,ymm9
  ae1828:	62 81 0c 20 58 c0    	vaddps ymm16,ymm30,ymm24
  ae182e:	c4 e2 7d 18 05 c9 3a 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff593ac9]        # 75300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2900>
  ae1835:	59 ff 
  ae1837:	62 82 7d 28 ac d3    	vfnmadd213ps ymm18,ymm0,ymm27
  ae183d:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ae1841:	c4 e2 55 ac fc       	vfnmadd213ps ymm7,ymm5,ymm4
  ae1846:	c4 e2 7d 18 0d 25 39 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff593925]        # 75174 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2774>
  ae184d:	59 ff 
  ae184f:	c5 14 59 c1          	vmulps ymm8,ymm13,ymm1
  ae1853:	62 11 5c 20 5c ed    	vsubps ymm13,ymm20,ymm29
  ae1859:	62 c1 44 28 58 e0    	vaddps ymm20,ymm7,ymm8
  ae185f:	62 02 7d 28 ac c6    	vfnmadd213ps ymm24,ymm0,ymm30
  ae1865:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ae1869:	62 12 4d 28 ac c9    	vfnmadd213ps ymm9,ymm6,ymm25
  ae186f:	62 71 2c 20 59 d1    	vmulps ymm10,ymm26,ymm1
  ae1875:	62 a1 1c 20 5c f6    	vsubps ymm22,ymm28,ymm22
  ae187b:	62 41 34 28 5c d2    	vsubps ymm26,ymm9,ymm10
  ae1881:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  ae1886:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  ae188c:	62 62 65 20 ac db    	vfnmadd213ps ymm27,ymm19,ymm3
  ae1892:	c4 41 34 58 d2       	vaddps ymm10,ymm9,ymm10
  ae1897:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  ae189d:	62 42 75 20 ac e7    	vfnmadd213ps ymm28,ymm17,ymm15
  ae18a3:	62 31 64 28 58 c3    	vaddps ymm8,ymm3,ymm19
  ae18a9:	c5 8c 58 da          	vaddps ymm3,ymm14,ymm2
  ae18ad:	62 31 04 28 58 c9    	vaddps ymm9,ymm15,ymm17
  ae18b3:	62 e1 24 28 58 db    	vaddps ymm19,ymm11,ymm3
  ae18b9:	c4 c2 7d ac db       	vfnmadd213ps ymm3,ymm0,ymm11
  ae18be:	62 01 54 20 58 ef    	vaddps ymm29,ymm21,ymm31
  ae18c4:	62 81 54 20 5c ef    	vsubps ymm21,ymm21,ymm31
  ae18ca:	62 01 44 20 58 f5    	vaddps ymm30,ymm23,ymm29
  ae18d0:	62 22 7d 28 ac ef    	vfnmadd213ps ymm29,ymm0,ymm23
  ae18d6:	c5 14 59 d9          	vmulps ymm11,ymm13,ymm1
  ae18da:	62 41 6c 28 5c fe    	vsubps ymm31,ymm2,ymm14
  ae18e0:	62 c1 6c 20 58 fb    	vaddps ymm23,ymm18,ymm11
  ae18e6:	62 71 4c 20 59 e9    	vmulps ymm13,ymm22,ymm1
  ae18ec:	62 51 6c 20 5c fb    	vsubps ymm15,ymm18,ymm11
  ae18f2:	62 c1 3c 20 5c d5    	vsubps ymm18,ymm24,ymm13
  ae18f8:	62 c1 3c 20 58 cd    	vaddps ymm17,ymm24,ymm13
  ae18fe:	c5 5c 58 dd          	vaddps ymm11,ymm4,ymm5
  ae1902:	c5 f4 59 44 24 a0    	vmulps ymm0,ymm1,YMMWORD PTR [rsp-0x60]
  ae1908:	62 71 34 20 58 ee    	vaddps ymm13,ymm25,ymm6
  ae190e:	62 f1 24 20 5c e0    	vsubps ymm4,ymm27,ymm0
  ae1914:	c5 f4 59 54 24 80    	vmulps ymm2,ymm1,YMMWORD PTR [rsp-0x80]
  ae191a:	62 f1 24 20 58 c0    	vaddps ymm0,ymm27,ymm0
  ae1920:	62 e1 1c 20 58 f2    	vaddps ymm22,ymm28,ymm2
  ae1926:	62 f1 54 20 59 e9    	vmulps ymm5,ymm21,ymm1
  ae192c:	62 71 1c 20 5c f2    	vsubps ymm14,ymm28,ymm2
  ae1932:	c5 e4 58 d5          	vaddps ymm2,ymm3,ymm5
  ae1936:	62 f1 04 20 59 c9    	vmulps ymm1,ymm31,ymm1
  ae193c:	c5 e4 5c ed          	vsubps ymm5,ymm3,ymm5
  ae1940:	62 f1 14 20 5c d9    	vsubps ymm3,ymm29,ymm1
  ae1946:	62 f1 14 20 58 f1    	vaddps ymm6,ymm29,ymm1
  ae194c:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  ae1952:	62 e1 7c 28 28 2d e4 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff593de4]        # 75740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  ae1959:	3d 59 ff 
  ae195c:	62 d2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm12
  ae1962:	62 61 7c 28 28 05 14 	vmovaps ymm24,YMMWORD PTR [rip+0xffffffffff595714]        # 77080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  ae1969:	57 59 ff 
  ae196c:	62 c2 3d 20 7f c4    	vpermt2ps ymm16,ymm24,ymm12
  ae1972:	62 e1 7c 28 11 04 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm16
  ae1979:	c5 fc 11 4c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm1
  ae197f:	62 91 7c 28 28 ca    	vmovaps ymm1,ymm26
  ae1985:	62 b2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm20
  ae198b:	62 22 3d 20 7f d4    	vpermt2ps ymm26,ymm24,ymm20
  ae1991:	62 61 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm26
  ae1998:	02 
  ae1999:	c5 fc 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm1
  ae199f:	62 b1 7c 28 28 ce    	vmovaps ymm1,ymm22
  ae19a5:	62 f2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm4
  ae19ab:	62 e2 3d 20 7f f4    	vpermt2ps ymm22,ymm24,ymm4
  ae19b1:	62 e1 7c 28 11 74 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm22
  ae19b8:	04 
  ae19b9:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  ae19c0:	00 00 
  ae19c2:	62 91 7c 28 28 ce    	vmovaps ymm1,ymm30
  ae19c8:	62 b2 55 20 7f cb    	vpermt2ps ymm1,ymm21,ymm19
  ae19ce:	62 22 3d 20 7f f3    	vpermt2ps ymm30,ymm24,ymm19
  ae19d4:	62 61 7c 28 11 74 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm30
  ae19db:	06 
  ae19dc:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  ae19e3:	00 00 
  ae19e5:	62 b1 7c 28 28 ca    	vmovaps ymm1,ymm18
  ae19eb:	62 b2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm23
  ae19f1:	62 a2 3d 20 7f d7    	vpermt2ps ymm18,ymm24,ymm23
  ae19f7:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm18
  ae19fe:	08 
  ae19ff:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  ae1a06:	00 00 
  ae1a08:	c5 7c 29 d1          	vmovaps ymm1,ymm10
  ae1a0c:	62 f2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm7
  ae1a12:	62 72 3d 20 7f d7    	vpermt2ps ymm10,ymm24,ymm7
  ae1a18:	c5 7c 11 94 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm10
  ae1a1f:	00 00 
  ae1a21:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  ae1a28:	00 00 
  ae1a2a:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  ae1a2e:	62 d2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm8
  ae1a34:	62 52 3d 20 7f c8    	vpermt2ps ymm9,ymm24,ymm8
  ae1a3a:	c5 7c 11 8c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm9
  ae1a41:	00 00 
  ae1a43:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  ae1a4a:	00 00 
  ae1a4c:	c5 fc 28 cb          	vmovaps ymm1,ymm3
  ae1a50:	62 f2 55 20 7f ca    	vpermt2ps ymm1,ymm21,ymm2
  ae1a56:	62 f2 3d 20 7f da    	vpermt2ps ymm3,ymm24,ymm2
  ae1a5c:	c5 fc 11 9c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm3
  ae1a63:	00 00 
  ae1a65:	c5 fc 11 8c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm1
  ae1a6c:	00 00 
  ae1a6e:	62 b1 7c 28 28 c9    	vmovaps ymm1,ymm17
  ae1a74:	62 d2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm15
  ae1a7a:	62 c2 3d 20 7f cf    	vpermt2ps ymm17,ymm24,ymm15
  ae1a80:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm17
  ae1a87:	10 
  ae1a88:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  ae1a8f:	00 00 
  ae1a91:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  ae1a95:	62 d2 55 20 7f cb    	vpermt2ps ymm1,ymm21,ymm11
  ae1a9b:	62 52 3d 20 7f eb    	vpermt2ps ymm13,ymm24,ymm11
  ae1aa1:	c5 7c 11 ac 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm13
  ae1aa8:	00 00 
  ae1aaa:	c5 fc 11 8c 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm1
  ae1ab1:	00 00 
  ae1ab3:	c5 7c 29 f1          	vmovaps ymm1,ymm14
  ae1ab7:	62 f2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm0
  ae1abd:	62 72 3d 20 7f f0    	vpermt2ps ymm14,ymm24,ymm0
  ae1ac3:	c5 7c 11 b4 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm14
  ae1aca:	00 00 
  ae1acc:	c5 fc 11 8c 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm1
  ae1ad3:	00 00 
  ae1ad5:	c5 fc 28 c6          	vmovaps ymm0,ymm6
  ae1ad9:	62 f2 55 20 7f c5    	vpermt2ps ymm0,ymm21,ymm5
  ae1adf:	62 f2 3d 20 7f f5    	vpermt2ps ymm6,ymm24,ymm5
  ae1ae5:	c5 fc 11 b4 16 c0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2c0],ymm6
  ae1aec:	00 00 
  ae1aee:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  ae1af5:	00 00 
  ae1af7:	48 81 c2 00 03 00 00 	add    rdx,0x300
  ae1afe:	48 39 d0             	cmp    rax,rdx
  ae1b01:	0f 85 c9 f2 ff ff    	jne    ae0dd0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x10>
  ae1b07:	48 83 c4 48          	add    rsp,0x48
  ae1b0b:	c5 f8 77             	vzeroupper
  ae1b0e:	c3                   	ret
  ae1b0f:	cc                   	int3
  ae1b10:	cc                   	int3
  ae1b11:	cc                   	int3
  ae1b12:	cc                   	int3
  ae1b13:	cc                   	int3
  ae1b14:	cc                   	int3
  ae1b15:	cc                   	int3
  ae1b16:	cc                   	int3
  ae1b17:	cc                   	int3
  ae1b18:	cc                   	int3
  ae1b19:	cc                   	int3
  ae1b1a:	cc                   	int3
  ae1b1b:	cc                   	int3
  ae1b1c:	cc                   	int3
  ae1b1d:	cc                   	int3
  ae1b1e:	cc                   	int3
  ae1b1f:	cc                   	int3
  ae1b20:	cc                   	int3
  ae1b21:	cc                   	int3
  ae1b22:	cc                   	int3
  ae1b23:	cc                   	int3
  ae1b24:	cc                   	int3
  ae1b25:	cc                   	int3
  ae1b26:	cc                   	int3
  ae1b27:	cc                   	int3
  ae1b28:	cc                   	int3
  ae1b29:	cc                   	int3
  ae1b2a:	cc                   	int3
  ae1b2b:	cc                   	int3
  ae1b2c:	cc                   	int3
  ae1b2d:	cc                   	int3
  ae1b2e:	cc                   	int3
  ae1b2f:	cc                   	int3
  ae1b30:	cc                   	int3
  ae1b31:	cc                   	int3
  ae1b32:	cc                   	int3
  ae1b33:	cc                   	int3
  ae1b34:	cc                   	int3
  ae1b35:	cc                   	int3
  ae1b36:	cc                   	int3
  ae1b37:	cc                   	int3
  ae1b38:	cc                   	int3
  ae1b39:	cc                   	int3
  ae1b3a:	cc                   	int3
  ae1b3b:	cc                   	int3
  ae1b3c:	cc                   	int3
  ae1b3d:	cc                   	int3
  ae1b3e:	cc                   	int3
  ae1b3f:	cc                   	int3
