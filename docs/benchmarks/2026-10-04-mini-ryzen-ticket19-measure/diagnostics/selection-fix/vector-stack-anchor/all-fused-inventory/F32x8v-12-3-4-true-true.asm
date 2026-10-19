
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac1040 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac1040:	48 c1 e2 05          	shl    rdx,0x5
  ac1044:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ac1048:	31 d2                	xor    edx,edx
  ac104a:	c4 e2 7d 18 05 81 42 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b4281]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac1051:	5b ff 
  ac1053:	c4 e2 7d 18 0d 04 44 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b4404]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac105a:	5b ff 
  ac105c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac1060:	c5 fc 28 1d 58 72 5b 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5b7258]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac1067:	ff 
  ac1068:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ac106f:	00 
  ac1070:	c5 f8 10 24 17       	vmovups xmm4,XMMWORD PTR [rdi+rdx*1]
  ac1075:	c5 f8 10 6c 17 10    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  ac107b:	c5 f8 10 74 17 20    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x20]
  ac1081:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  ac1087:	c5 48 c6 c7 dd       	vshufps xmm8,xmm6,xmm7,0xdd
  ac108c:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  ac1092:	c5 78 10 54 17 40    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x40]
  ac1098:	c4 41 28 c6 d9 dd    	vshufps xmm11,xmm10,xmm9,0xdd
  ac109e:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  ac10a3:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ac10a7:	c5 c8 c6 f7 88       	vshufps xmm6,xmm6,xmm7,0x88
  ac10ac:	c4 c1 28 c6 f9 88    	vshufps xmm7,xmm10,xmm9,0x88
  ac10b2:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  ac10b6:	c5 58 c6 d5 88       	vshufps xmm10,xmm4,xmm5,0x88
  ac10bb:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ac10bf:	c4 42 35 ac ea       	vfnmadd213ps ymm13,ymm9,ymm10
  ac10c4:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  ac10c9:	c5 d8 c6 e5 dd       	vshufps xmm4,xmm4,xmm5,0xdd
  ac10ce:	c5 b8 58 ec          	vaddps xmm5,xmm8,xmm4
  ac10d2:	c4 e2 3d bc e1       	vfnmadd231ps ymm4,ymm8,ymm1
  ac10d7:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ac10db:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ac10df:	c5 d8 58 fe          	vaddps xmm7,xmm4,xmm6
  ac10e3:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ac10e7:	c5 d5 15 f4          	vunpckhpd ymm6,ymm5,ymm4
  ac10eb:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  ac10ef:	c4 e3 45 0c ea cc    	vblendps ymm5,ymm7,ymm2,0xcc
  ac10f5:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ac10fa:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  ac10ff:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ac1105:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ac110a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac110f:	c5 cc c6 ef 88       	vshufps ymm5,ymm6,ymm7,0x88
  ac1114:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac1119:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  ac111e:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac1123:	c4 c1 28 58 f9       	vaddps xmm7,xmm10,xmm9
  ac1128:	c4 41 10 5c cc       	vsubps xmm9,xmm13,xmm12
  ac112d:	c4 41 18 58 d5       	vaddps xmm10,xmm12,xmm13
  ac1132:	c4 41 45 15 da       	vunpckhpd ymm11,ymm7,ymm10
  ac1137:	c4 c1 45 14 fa       	vunpcklpd ymm7,ymm7,ymm10
  ac113c:	c4 63 35 0c d2 cc    	vblendps ymm10,ymm9,ymm2,0xcc
  ac1142:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  ac1148:	c4 41 44 c6 e2 88    	vshufps ymm12,ymm7,ymm10,0x88
  ac114e:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ac1154:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  ac115a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ac115f:	c4 41 24 c6 d1 88    	vshufps ymm10,ymm11,ymm9,0x88
  ac1165:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ac116b:	c4 41 24 c6 c9 dd    	vshufps ymm9,ymm11,ymm9,0xdd
  ac1171:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ac1177:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  ac117c:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  ac1181:	c5 7c 10 b1 80 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0x80]
  ac1188:	00 
  ac1189:	c5 7c 10 b9 a0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xa0]
  ac1190:	00 
  ac1191:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  ac1198:	62 e1 7c 28 10 49 07 	vmovups ymm17,YMMWORD PTR [rcx+0xe0]
  ac119f:	62 c1 54 28 59 d6    	vmulps ymm18,ymm5,ymm14
  ac11a5:	62 c2 2d 28 bc d7    	vfnmadd231ps ymm18,ymm10,ymm15
  ac11ab:	62 a1 3c 28 58 da    	vaddps ymm19,ymm8,ymm18
  ac11b1:	62 c1 5c 28 59 e3    	vmulps ymm20,ymm4,ymm11
  ac11b7:	62 c2 45 28 bc e5    	vfnmadd231ps ymm20,ymm7,ymm13
  ac11bd:	62 a1 4c 28 59 e8    	vmulps ymm21,ymm6,ymm16
  ac11c3:	62 a2 35 28 bc e9    	vfnmadd231ps ymm21,ymm9,ymm17
  ac11c9:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  ac11cf:	c4 41 2c 59 d6       	vmulps ymm10,ymm10,ymm14
  ac11d4:	c4 42 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm15
  ac11d9:	c4 c1 2c 58 ec       	vaddps ymm5,ymm10,ymm12
  ac11de:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  ac11e2:	c4 c2 5d b8 fd       	vfmadd231ps ymm7,ymm4,ymm13
  ac11e7:	62 b1 34 28 59 e0    	vmulps ymm4,ymm9,ymm16
  ac11ed:	62 b2 4d 28 b8 e1    	vfmadd231ps ymm4,ymm6,ymm17
  ac11f3:	c5 c4 58 f4          	vaddps ymm6,ymm7,ymm4
  ac11f7:	62 31 3c 28 5c c2    	vsubps ymm8,ymm8,ymm18
  ac11fd:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  ac1201:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  ac1205:	c4 41 1c 5c ca       	vsubps ymm9,ymm12,ymm10
  ac120a:	62 31 54 20 5c d4    	vsubps ymm10,ymm21,ymm20
  ac1210:	62 31 64 20 5c de    	vsubps ymm11,ymm19,ymm22
  ac1216:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  ac121a:	62 31 64 20 58 c6    	vaddps ymm8,ymm19,ymm22
  ac1220:	c5 50 58 e6          	vaddps xmm12,xmm5,xmm6
  ac1224:	62 52 65 28 7f e0    	vpermt2ps ymm12,ymm3,ymm8
  ac122a:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  ac122f:	c4 43 7d 19 e0 01    	vextractf128 xmm8,ymm12,0x1
  ac1235:	c5 78 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm8
  ac123b:	c4 41 30 58 c2       	vaddps xmm8,xmm9,xmm10
  ac1240:	62 72 65 28 7f c7    	vpermt2ps ymm8,ymm3,ymm7
  ac1246:	c5 78 11 44 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm8
  ac124c:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  ac1252:	c5 f8 13 7c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm7
  ac1258:	c5 d0 5c ee          	vsubps xmm5,xmm5,xmm6
  ac125c:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  ac1262:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  ac1268:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac126e:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  ac1274:	c4 c1 30 5c ea       	vsubps xmm5,xmm9,xmm10
  ac1279:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  ac127f:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  ac1285:	c5 f8 13 64 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm4
  ac128b:	c5 f8 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm5
  ac1291:	48 83 c2 60          	add    rdx,0x60
  ac1295:	48 39 d0             	cmp    rax,rdx
  ac1298:	0f 85 d2 fd ff ff    	jne    ac1070 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  ac129e:	c5 f8 77             	vzeroupper
  ac12a1:	c3                   	ret
