
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b0e80 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b0e80:	48 83 ec 68          	sub    rsp,0x68
  6b0e84:	48 c1 e2 07          	shl    rdx,0x7
  6b0e88:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b0e8c:	31 d2                	xor    edx,edx
  6b0e8e:	66 90                	xchg   ax,ax
  6b0e90:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  6b0e95:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  6b0e9b:	c5 fc 10 7c 17 30    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x30]
  6b0ea1:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  6b0ea7:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  6b0ead:	c5 78 10 a4 17 80 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x80]
  6b0eb4:	00 00 
  6b0eb6:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  6b0ebd:	00 00 
  6b0ebf:	c5 78 10 94 17 b0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xb0]
  6b0ec6:	00 00 
  6b0ec8:	c5 fc 10 8c 17 c0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc0]
  6b0ecf:	00 00 
  6b0ed1:	c5 f8 10 94 17 e0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xe0]
  6b0ed8:	00 00 
  6b0eda:	c5 7c 10 9c 17 f0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xf0]
  6b0ee1:	00 00 
  6b0ee3:	c5 78 10 ac 17 10 01 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x110]
  6b0eea:	00 00 
  6b0eec:	c5 fc 10 b4 17 20 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x120]
  6b0ef3:	00 00 
  6b0ef5:	c5 78 10 bc 17 40 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x140]
  6b0efc:	00 00 
  6b0efe:	c5 fc 10 84 17 50 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x150]
  6b0f05:	00 00 
  6b0f07:	c5 64 c6 f5 88       	vshufps ymm14,ymm3,ymm5,0x88
  6b0f0c:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  6b0f11:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  6b0f17:	c5 f4 c6 da 88       	vshufps ymm3,ymm1,ymm2,0x88
  6b0f1c:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  6b0f21:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  6b0f27:	c4 c1 5c c6 cc 88    	vshufps ymm1,ymm4,ymm12,0x88
  6b0f2d:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  6b0f33:	c4 c1 5c c6 ec dd    	vshufps ymm5,ymm4,ymm12,0xdd
  6b0f39:	c4 c1 4c c6 cf 88    	vshufps ymm1,ymm6,ymm15,0x88
  6b0f3f:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  6b0f45:	c4 c1 4c c6 d7 dd    	vshufps ymm2,ymm6,ymm15,0xdd
  6b0f4b:	c4 c1 44 c6 f1 88    	vshufps ymm6,ymm7,ymm9,0x88
  6b0f51:	c4 41 44 c6 f9 dd    	vshufps ymm15,ymm7,ymm9,0xdd
  6b0f57:	c4 c1 24 c6 cd 88    	vshufps ymm1,ymm11,ymm13,0x88
  6b0f5d:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  6b0f63:	c4 c1 3c c6 e2 88    	vshufps ymm4,ymm8,ymm10,0x88
  6b0f69:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  6b0f6e:	c4 41 3c c6 ea dd    	vshufps ymm13,ymm8,ymm10,0xdd
  6b0f74:	c5 f8 10 a4 17 70 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x170]
  6b0f7b:	00 00 
  6b0f7d:	c5 7c c6 e4 88       	vshufps ymm12,ymm0,ymm4,0x88
  6b0f82:	c5 fc c6 e4 dd       	vshufps ymm4,ymm0,ymm4,0xdd
  6b0f87:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  6b0f8d:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6b0f93:	c5 7c 58 c3          	vaddps ymm8,ymm0,ymm3
  6b0f97:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  6b0f9b:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  6b0fa1:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  6b0fa7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6b0fad:	c5 7c 58 ca          	vaddps ymm9,ymm0,ymm2
  6b0fb1:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  6b0fb5:	c5 fc 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm0
  6b0fbb:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  6b0fc1:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6b0fc7:	c5 ec 58 f1          	vaddps ymm6,ymm2,ymm1
  6b0fcb:	c5 ec 5c d1          	vsubps ymm2,ymm2,ymm1
  6b0fcf:	c4 c3 fd 01 df d8    	vpermpd ymm3,ymm15,0xd8
  6b0fd5:	c4 c3 fd 01 eb d8    	vpermpd ymm5,ymm11,0xd8
  6b0fdb:	c5 e4 58 fd          	vaddps ymm7,ymm3,ymm5
  6b0fdf:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  6b0fe3:	c4 c3 fd 01 ed d8    	vpermpd ymm5,ymm13,0xd8
  6b0fe9:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6b0fef:	c5 d4 58 cc          	vaddps ymm1,ymm5,ymm4
  6b0ff3:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  6b0ff7:	c4 e3 fd 01 2c 24 d8 	vpermpd ymm5,YMMWORD PTR [rsp],0xd8
  6b0ffe:	c4 43 fd 01 dc d8    	vpermpd ymm11,ymm12,0xd8
  6b1004:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  6b1008:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  6b100d:	c4 63 fd 01 5c 24 a0 	vpermpd ymm11,YMMWORD PTR [rsp-0x60],0xd8
  6b1014:	d8 
  6b1015:	c4 63 fd 01 6c 24 80 	vpermpd ymm13,YMMWORD PTR [rsp-0x80],0xd8
  6b101c:	d8 
  6b101d:	c4 41 24 58 f5       	vaddps ymm14,ymm11,ymm13
  6b1022:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  6b1027:	c4 63 fd 01 6c 24 e0 	vpermpd ymm13,YMMWORD PTR [rsp-0x20],0xd8
  6b102e:	d8 
  6b102f:	c4 63 fd 01 7c 24 c0 	vpermpd ymm15,YMMWORD PTR [rsp-0x40],0xd8
  6b1036:	d8 
  6b1037:	c4 c1 14 58 c7       	vaddps ymm0,ymm13,ymm15
  6b103c:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  6b1041:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  6b1045:	c5 7c 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm10
  6b104b:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  6b104f:	c5 dc 5c dd          	vsubps ymm3,ymm4,ymm5
  6b1053:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  6b1059:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  6b105d:	c5 3c 58 d0          	vaddps ymm10,ymm8,ymm0
  6b1061:	c5 bc 5c c0          	vsubps ymm0,ymm8,ymm0
  6b1065:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  6b106b:	c5 44 58 c1          	vaddps ymm8,ymm7,ymm1
  6b106f:	c5 c4 5c c1          	vsubps ymm0,ymm7,ymm1
  6b1073:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6b1079:	c4 c1 0c 58 f9       	vaddps ymm7,ymm14,ymm9
  6b107e:	c4 c1 0c 5c c1       	vsubps ymm0,ymm14,ymm9
  6b1083:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  6b1088:	c5 1c 58 f6          	vaddps ymm14,ymm12,ymm6
  6b108c:	c5 1c 5c fe          	vsubps ymm15,ymm12,ymm6
  6b1090:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  6b1096:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  6b109c:	c5 7c 58 e1          	vaddps ymm12,ymm0,ymm1
  6b10a0:	c5 7c 5c c9          	vsubps ymm9,ymm0,ymm1
  6b10a4:	c4 e2 7d 18 05 ef 42 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9c42ef]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6b10ab:	9c ff 
  6b10ad:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  6b10b1:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  6b10b5:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  6b10b9:	c5 ec 58 f4          	vaddps ymm6,ymm2,ymm4
  6b10bd:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  6b10c2:	c4 c1 24 5c ed       	vsubps ymm5,ymm11,ymm13
  6b10c7:	c5 7c 59 5c 24 a0    	vmulps ymm11,ymm0,YMMWORD PTR [rsp-0x60]
  6b10cd:	c5 7c 59 6c 24 80    	vmulps ymm13,ymm0,YMMWORD PTR [rsp-0x80]
  6b10d3:	c4 c1 24 58 c5       	vaddps ymm0,ymm11,ymm13
  6b10d8:	c4 41 14 5c db       	vsubps ymm11,ymm13,ymm11
  6b10dd:	c4 c1 2c 58 e6       	vaddps ymm4,ymm10,ymm14
  6b10e2:	c4 41 2c 5c d6       	vsubps ymm10,ymm10,ymm14
  6b10e7:	c5 bc 58 d7          	vaddps ymm2,ymm8,ymm7
  6b10eb:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  6b10f1:	c4 c1 44 5c d0       	vsubps ymm2,ymm7,ymm8
  6b10f6:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  6b10fc:	c5 9c 58 d0          	vaddps ymm2,ymm12,ymm0
  6b1100:	c5 1c 5c c0          	vsubps ymm8,ymm12,ymm0
  6b1104:	c5 74 58 f3          	vaddps ymm14,ymm1,ymm3
  6b1108:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  6b110c:	c5 fc 10 44 24 e0    	vmovups ymm0,YMMWORD PTR [rsp-0x20]
  6b1112:	c5 fc 10 7c 24 c0    	vmovups ymm7,YMMWORD PTR [rsp-0x40]
  6b1118:	c5 fc 58 df          	vaddps ymm3,ymm0,ymm7
  6b111c:	c5 7c 5c e7          	vsubps ymm12,ymm0,ymm7
  6b1120:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  6b1125:	c5 84 58 f8          	vaddps ymm7,ymm15,ymm0
  6b1129:	c4 41 7c 5c ef       	vsubps ymm13,ymm0,ymm15
  6b112e:	c5 b4 58 c6          	vaddps ymm0,ymm9,ymm6
  6b1132:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  6b1136:	c5 24 58 cd          	vaddps ymm9,ymm11,ymm5
  6b113a:	c4 41 54 5c fb       	vsubps ymm15,ymm5,ymm11
  6b113f:	c4 c3 5d 18 ea 01    	vinsertf128 ymm5,ymm4,xmm10,0x1
  6b1145:	c4 c3 5d 06 e2 31    	vperm2f128 ymm4,ymm4,ymm10,0x31
  6b114b:	c4 43 6d 18 d0 01    	vinsertf128 ymm10,ymm2,xmm8,0x1
  6b1151:	c4 c3 6d 06 d0 31    	vperm2f128 ymm2,ymm2,ymm8,0x31
  6b1157:	c4 43 65 18 c4 01    	vinsertf128 ymm8,ymm3,xmm12,0x1
  6b115d:	c4 c3 65 06 dc 31    	vperm2f128 ymm3,ymm3,ymm12,0x31
  6b1163:	c5 dd 14 e3          	vunpcklpd ymm4,ymm4,ymm3
  6b1167:	c4 e3 7d 18 de 01    	vinsertf128 ymm3,ymm0,xmm6,0x1
  6b116d:	c4 e3 7d 06 c6 31    	vperm2f128 ymm0,ymm0,ymm6,0x31
  6b1173:	c5 ed 14 c0          	vunpcklpd ymm0,ymm2,ymm0
  6b1177:	c4 c1 55 15 d0       	vunpckhpd ymm2,ymm5,ymm8
  6b117c:	c4 c1 55 14 e8       	vunpcklpd ymm5,ymm5,ymm8
  6b1181:	c5 ad 15 f3          	vunpckhpd ymm6,ymm10,ymm3
  6b1185:	c5 2d 14 c3          	vunpcklpd ymm8,ymm10,ymm3
  6b1189:	c4 c1 54 c6 d8 88    	vshufps ymm3,ymm5,ymm8,0x88
  6b118f:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1194:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  6b119a:	c4 c1 54 c6 e8 dd    	vshufps ymm5,ymm5,ymm8,0xdd
  6b11a0:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6b11a5:	c5 6c c6 c6 88       	vshufps ymm8,ymm2,ymm6,0x88
  6b11aa:	c4 41 3c c6 e0 d8    	vshufps ymm12,ymm8,ymm8,0xd8
  6b11b0:	c5 ec c6 d6 dd       	vshufps ymm2,ymm2,ymm6,0xdd
  6b11b5:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6b11ba:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  6b11c0:	c5 dc c6 f0 88       	vshufps ymm6,ymm4,ymm0,0x88
  6b11c5:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6b11ca:	c5 dc c6 c0 dd       	vshufps ymm0,ymm4,ymm0,0xdd
  6b11cf:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  6b11d4:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  6b11da:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  6b11e0:	c4 e3 6d 18 c3 01    	vinsertf128 ymm0,ymm2,xmm3,0x1
  6b11e6:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  6b11ec:	c4 63 0d 18 d1 01    	vinsertf128 ymm10,ymm14,xmm1,0x1
  6b11f2:	c4 e3 0d 06 c9 31    	vperm2f128 ymm1,ymm14,ymm1,0x31
  6b11f8:	c4 43 45 18 dd 01    	vinsertf128 ymm11,ymm7,xmm13,0x1
  6b11fe:	c4 c3 45 06 fd 31    	vperm2f128 ymm7,ymm7,ymm13,0x31
  6b1204:	c5 5d 14 ef          	vunpcklpd ymm13,ymm4,ymm7
  6b1208:	c4 c3 35 18 e7 01    	vinsertf128 ymm4,ymm9,xmm15,0x1
  6b120e:	c4 c3 35 06 ff 31    	vperm2f128 ymm7,ymm9,ymm15,0x31
  6b1214:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  6b1218:	c4 c1 7d 15 fb       	vunpckhpd ymm7,ymm0,ymm11
  6b121d:	c4 c1 7d 14 c3       	vunpcklpd ymm0,ymm0,ymm11
  6b1222:	c5 2d 15 cc          	vunpckhpd ymm9,ymm10,ymm4
  6b1226:	c5 2d 14 d4          	vunpcklpd ymm10,ymm10,ymm4
  6b122a:	c4 c1 7c c6 e2 88    	vshufps ymm4,ymm0,ymm10,0x88
  6b1230:	c5 dc c6 dc d8       	vshufps ymm3,ymm4,ymm4,0xd8
  6b1235:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  6b123b:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  6b1241:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  6b1246:	c4 c1 44 c6 c1 88    	vshufps ymm0,ymm7,ymm9,0x88
  6b124c:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  6b1251:	c4 c1 44 c6 c1 dd    	vshufps ymm0,ymm7,ymm9,0xdd
  6b1257:	c5 fc c6 f8 d8       	vshufps ymm7,ymm0,ymm0,0xd8
  6b125c:	c5 94 c6 c1 88       	vshufps ymm0,ymm13,ymm1,0x88
  6b1261:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  6b1266:	c5 94 c6 c1 dd       	vshufps ymm0,ymm13,ymm1,0xdd
  6b126b:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  6b1270:	c5 7c 10 79 40       	vmovups ymm15,YMMWORD PTR [rcx+0x40]
  6b1275:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  6b127c:	00 
  6b127d:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  6b1284:	00 
  6b1285:	c5 1c 59 c9          	vmulps ymm9,ymm12,ymm1
  6b1289:	c4 42 2d bc cd       	vfnmadd231ps ymm9,ymm10,ymm13
  6b128e:	c5 2c 59 d1          	vmulps ymm10,ymm10,ymm1
  6b1292:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6b1299:	00 
  6b129a:	c4 42 1d b8 d5       	vfmadd231ps ymm10,ymm12,ymm13
  6b129f:	c5 7c 10 a9 00 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x100]
  6b12a6:	00 
  6b12a7:	c5 14 59 e6          	vmulps ymm12,ymm13,ymm6
  6b12ab:	c4 62 0d bc e1       	vfnmadd231ps ymm12,ymm14,ymm1
  6b12b0:	c4 41 14 59 ee       	vmulps ymm13,ymm13,ymm14
  6b12b5:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  6b12ba:	c5 fc 10 b1 60 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x160]
  6b12c1:	00 
  6b12c2:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6b12c9:	00 
  6b12ca:	c5 74 59 f2          	vmulps ymm14,ymm1,ymm2
  6b12ce:	c4 62 3d b8 f6       	vfmadd231ps ymm14,ymm8,ymm6
  6b12d3:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6b12d7:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  6b12dc:	c4 e2 6d bc ce       	vfnmadd231ps ymm1,ymm2,ymm6
  6b12e1:	c4 c1 34 5c d4       	vsubps ymm2,ymm9,ymm12
  6b12e6:	c4 e2 7d 18 25 e5 3f 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9c3fe5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b12ed:	9c ff 
  6b12ef:	c5 ec 59 e4          	vmulps ymm4,ymm2,ymm4
  6b12f3:	c4 41 04 59 c3       	vmulps ymm8,ymm15,ymm11
  6b12f8:	c4 62 55 b8 c0       	vfmadd231ps ymm8,ymm5,ymm0
  6b12fd:	c5 04 59 fd          	vmulps ymm15,ymm15,ymm5
  6b1301:	c5 fc 10 91 e0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xe0]
  6b1308:	00 
  6b1309:	c4 62 25 bc f8       	vfnmadd231ps ymm15,ymm11,ymm0
  6b130e:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6b1315:	00 
  6b1316:	c5 fc 59 f7          	vmulps ymm6,ymm0,ymm7
  6b131a:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  6b1320:	c4 e2 55 b8 f2       	vfmadd231ps ymm6,ymm5,ymm2
  6b1325:	c5 fc 59 ed          	vmulps ymm5,ymm0,ymm5
  6b1329:	c4 c1 2c 58 c5       	vaddps ymm0,ymm10,ymm13
  6b132e:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6b1334:	c4 e2 45 bc ea       	vfnmadd231ps ymm5,ymm7,ymm2
  6b1339:	c4 e2 7d 18 3d 1e 41 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9c411e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b1340:	9c ff 
  6b1342:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  6b1346:	c4 e2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm3
  6b134b:	c5 dc 58 c2          	vaddps ymm0,ymm4,ymm2
  6b134f:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6b1355:	c4 c1 34 58 dc       	vaddps ymm3,ymm9,ymm12
  6b135a:	c4 41 0c 58 c8       	vaddps ymm9,ymm14,ymm8
  6b135f:	c4 41 2c 5c d5       	vsubps ymm10,ymm10,ymm13
  6b1364:	c4 41 74 5c df       	vsubps ymm11,ymm1,ymm15
  6b1369:	c5 84 58 c9          	vaddps ymm1,ymm15,ymm1
  6b136d:	c5 7c 28 e7          	vmovaps ymm12,ymm7
  6b1371:	c4 62 35 ac e6       	vfnmadd213ps ymm12,ymm9,ymm6
  6b1376:	c4 e2 7d 18 05 55 3f 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9c3f55]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b137d:	9c ff 
  6b137f:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  6b1383:	c4 41 0c 5c c0       	vsubps ymm8,ymm14,ymm8
  6b1388:	c4 41 1c 58 eb       	vaddps ymm13,ymm12,ymm11
  6b138d:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  6b1391:	c5 fc 28 e7          	vmovaps ymm4,ymm7
  6b1395:	c5 7c 10 7c 24 e0    	vmovups ymm15,YMMWORD PTR [rsp-0x20]
  6b139b:	c4 c2 65 ac e7       	vfnmadd213ps ymm4,ymm3,ymm15
  6b13a0:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  6b13a4:	c4 41 1c 5c db       	vsubps ymm11,ymm12,ymm11
  6b13a9:	c4 41 5c 5c e2       	vsubps ymm12,ymm4,ymm10
  6b13ae:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  6b13b2:	c4 e2 75 ac fd       	vfnmadd213ps ymm7,ymm1,ymm5
  6b13b7:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  6b13bb:	c4 41 44 5c f0       	vsubps ymm14,ymm7,ymm8
  6b13c0:	c5 3c 58 c7          	vaddps ymm8,ymm8,ymm7
  6b13c4:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  6b13ca:	c5 7c 58 54 24 a0    	vaddps ymm10,ymm0,YMMWORD PTR [rsp-0x60]
  6b13d0:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  6b13d4:	c5 04 58 cb          	vaddps ymm9,ymm15,ymm3
  6b13d8:	c5 d4 58 e9          	vaddps ymm5,ymm5,ymm1
  6b13dc:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  6b13e2:	c4 c1 74 5c c5       	vsubps ymm0,ymm1,ymm13
  6b13e7:	c5 94 58 f9          	vaddps ymm7,ymm13,ymm1
  6b13eb:	c4 c1 1c 5c de       	vsubps ymm3,ymm12,ymm14
  6b13f0:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  6b13f5:	c5 a4 58 ca          	vaddps ymm1,ymm11,ymm2
  6b13f9:	c4 c1 6c 5c d3       	vsubps ymm2,ymm2,ymm11
  6b13fe:	c5 3c 58 dc          	vaddps ymm11,ymm8,ymm4
  6b1402:	c4 c1 5c 5c e0       	vsubps ymm4,ymm4,ymm8
  6b1407:	c5 2c 5c c6          	vsubps ymm8,ymm10,ymm6
  6b140b:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  6b140f:	c5 34 5c d5          	vsubps ymm10,ymm9,ymm5
  6b1413:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  6b1417:	c5 54 15 ce          	vunpckhps ymm9,ymm5,ymm6
  6b141b:	c5 d4 14 ee          	vunpcklps ymm5,ymm5,ymm6
  6b141f:	c4 c3 55 06 f1 31    	vperm2f128 ymm6,ymm5,ymm9,0x31
  6b1425:	c4 c3 55 06 e9 20    	vperm2f128 ymm5,ymm5,ymm9,0x20
  6b142b:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  6b1430:	c5 fc 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm6
  6b1436:	c5 dc 15 ea          	vunpckhps ymm5,ymm4,ymm2
  6b143a:	c5 dc 14 d2          	vunpcklps ymm2,ymm4,ymm2
  6b143e:	c4 e3 6d 06 e5 31    	vperm2f128 ymm4,ymm2,ymm5,0x31
  6b1444:	c4 e3 6d 06 d5 20    	vperm2f128 ymm2,ymm2,ymm5,0x20
  6b144a:	c5 fc 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  6b1450:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  6b1456:	c5 9c 15 d7          	vunpckhps ymm2,ymm12,ymm7
  6b145a:	c5 9c 14 e7          	vunpcklps ymm4,ymm12,ymm7
  6b145e:	c4 e3 5d 06 ea 31    	vperm2f128 ymm5,ymm4,ymm2,0x31
  6b1464:	c4 e3 5d 06 d2 20    	vperm2f128 ymm2,ymm4,ymm2,0x20
  6b146a:	c5 fc 11 94 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm2
  6b1471:	00 00 
  6b1473:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  6b147a:	00 00 
  6b147c:	c4 c1 2c 15 d0       	vunpckhps ymm2,ymm10,ymm8
  6b1481:	c4 c1 2c 14 e0       	vunpcklps ymm4,ymm10,ymm8
  6b1486:	c4 e3 5d 06 ea 31    	vperm2f128 ymm5,ymm4,ymm2,0x31
  6b148c:	c4 e3 5d 06 d2 20    	vperm2f128 ymm2,ymm4,ymm2,0x20
  6b1492:	c5 fc 11 94 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm2
  6b1499:	00 00 
  6b149b:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  6b14a2:	00 00 
  6b14a4:	c5 a4 15 d1          	vunpckhps ymm2,ymm11,ymm1
  6b14a8:	c5 a4 14 c9          	vunpcklps ymm1,ymm11,ymm1
  6b14ac:	c4 e3 75 06 e2 31    	vperm2f128 ymm4,ymm1,ymm2,0x31
  6b14b2:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  6b14b8:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  6b14bf:	00 00 
  6b14c1:	c5 fc 11 a4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm4
  6b14c8:	00 00 
  6b14ca:	c5 e4 15 c8          	vunpckhps ymm1,ymm3,ymm0
  6b14ce:	c5 e4 14 c0          	vunpcklps ymm0,ymm3,ymm0
  6b14d2:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  6b14d8:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  6b14de:	c5 fc 11 84 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm0
  6b14e5:	00 00 
  6b14e7:	c5 fc 11 94 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm2
  6b14ee:	00 00 
  6b14f0:	48 81 c2 80 01 00 00 	add    rdx,0x180
  6b14f7:	48 39 d0             	cmp    rax,rdx
  6b14fa:	0f 85 90 f9 ff ff    	jne    6b0e90 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6b1500:	48 83 c4 68          	add    rsp,0x68
  6b1504:	c5 f8 77             	vzeroupper
  6b1507:	c3                   	ret
