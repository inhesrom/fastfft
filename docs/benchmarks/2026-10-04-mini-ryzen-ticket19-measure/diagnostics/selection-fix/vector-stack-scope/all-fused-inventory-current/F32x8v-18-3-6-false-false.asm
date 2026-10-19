
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b25dc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b25dc0:	c5 fc 10 4f 30       	vmovups ymm1,YMMWORD PTR [rdi+0x30]
  b25dc5:	c5 f8 10 57 50       	vmovups xmm2,XMMWORD PTR [rdi+0x50]
  b25dca:	c5 f4 c6 c2 88       	vshufps ymm0,ymm1,ymm2,0x88
  b25dcf:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  b25dd5:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  b25dda:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  b25de1:	00 
  b25de2:	c5 dc c6 c5 88       	vshufps ymm0,ymm4,ymm5,0x88
  b25de7:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  b25ded:	c4 e2 7d 18 05 de f4 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff54f4de]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b25df4:	54 ff 
  b25df6:	c5 e4 5c fe          	vsubps ymm7,ymm3,ymm6
  b25dfa:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  b25dfe:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  b25e03:	c4 e3 fd 01 d1 d8    	vpermpd ymm2,ymm1,0xd8
  b25e09:	c5 dc c6 cd dd       	vshufps ymm1,ymm4,ymm5,0xdd
  b25e0e:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  b25e14:	c5 ec 58 ec          	vaddps ymm5,ymm2,ymm4
  b25e18:	c5 7c 10 07          	vmovups ymm8,YMMWORD PTR [rdi]
  b25e1c:	c5 78 10 4f 20       	vmovups xmm9,XMMWORD PTR [rdi+0x20]
  b25e21:	c4 41 3c c6 d1 dd    	vshufps ymm10,ymm8,ymm9,0xdd
  b25e27:	c4 e2 7d 18 0d 30 f6 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff54f630]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b25e2e:	54 ff 
  b25e30:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b25e36:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  b25e3a:	c4 42 55 ac da       	vfnmadd213ps ymm11,ymm5,ymm10
  b25e3f:	c5 24 58 e7          	vaddps ymm12,ymm11,ymm7
  b25e43:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  b25e47:	c4 c1 3c c6 f1 88    	vshufps ymm6,ymm8,ymm9,0x88
  b25e4d:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b25e53:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  b25e57:	c4 62 65 ac c6       	vfnmadd213ps ymm8,ymm3,ymm6
  b25e5c:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  b25e60:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  b25e64:	c5 bc 5c e2          	vsubps ymm4,ymm8,ymm2
  b25e68:	c5 a4 5c ff          	vsubps ymm7,ymm11,ymm7
  b25e6c:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  b25e70:	c5 2c 58 d5          	vaddps ymm10,ymm10,ymm5
  b25e74:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b25e78:	c5 f8 28 eb          	vmovaps xmm5,xmm3
  b25e7c:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b25e82:	c5 f8 28 f2          	vmovaps xmm6,xmm2
  b25e86:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  b25e8c:	c5 78 28 cc          	vmovaps xmm9,xmm4
  b25e90:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b25e96:	c5 65 14 dc          	vunpcklpd ymm11,ymm3,ymm4
  b25e9a:	c4 41 55 15 e9       	vunpckhpd ymm13,ymm5,ymm9
  b25e9f:	c4 c1 55 14 d9       	vunpcklpd ymm3,ymm5,ymm9
  b25ea4:	c5 fa 7e ea          	vmovq  xmm5,xmm2
  b25ea8:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  b25ead:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  b25eb1:	c4 63 3d 0c f4 cc    	vblendps ymm14,ymm8,ymm4,0xcc
  b25eb7:	c5 e4 c6 d5 88       	vshufps ymm2,ymm3,ymm5,0x88
  b25ebc:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b25ec1:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b25ec6:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b25ecb:	c5 94 c6 ee 88       	vshufps ymm5,ymm13,ymm6,0x88
  b25ed0:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  b25ed5:	c5 94 c6 ee dd       	vshufps ymm5,ymm13,ymm6,0xdd
  b25eda:	c5 d4 c6 f5 d8       	vshufps ymm6,ymm5,ymm5,0xd8
  b25edf:	c4 c1 24 c6 ee 88    	vshufps ymm5,ymm11,ymm14,0x88
  b25ee5:	c5 54 c6 c5 d8       	vshufps ymm8,ymm5,ymm5,0xd8
  b25eea:	c4 c1 24 c6 ee dd    	vshufps ymm5,ymm11,ymm14,0xdd
  b25ef0:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b25ef5:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b25efa:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b25f00:	c5 78 28 ef          	vmovaps xmm13,xmm7
  b25f04:	c4 c3 7d 19 fe 01    	vextractf128 xmm14,ymm7,0x1
  b25f0a:	c4 41 78 28 fc       	vmovaps xmm15,xmm12
  b25f0f:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b25f15:	c4 41 2d 14 e4       	vunpcklpd ymm12,ymm10,ymm12
  b25f1a:	62 c1 a5 28 15 c7    	vunpckhpd ymm16,ymm11,ymm15
  b25f20:	c4 41 25 14 d7       	vunpcklpd ymm10,ymm11,ymm15
  b25f25:	c5 fa 7e ff          	vmovq  xmm7,xmm7
  b25f29:	c4 c1 25 73 dd 08    	vpsrldq ymm11,ymm13,0x8
  b25f2f:	c4 63 0d 0c ec cc    	vblendps ymm13,ymm14,ymm4,0xcc
  b25f35:	c5 ac c6 e7 88       	vshufps ymm4,ymm10,ymm7,0x88
  b25f3a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b25f3f:	c5 ac c6 ff dd       	vshufps ymm7,ymm10,ymm7,0xdd
  b25f44:	c5 44 c6 d7 d8       	vshufps ymm10,ymm7,ymm7,0xd8
  b25f49:	62 d1 7c 20 c6 fb 88 	vshufps ymm7,ymm16,ymm11,0x88
  b25f50:	c5 44 c6 f7 d8       	vshufps ymm14,ymm7,ymm7,0xd8
  b25f55:	62 d1 7c 20 c6 fb dd 	vshufps ymm7,ymm16,ymm11,0xdd
  b25f5c:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  b25f61:	c4 c1 1c c6 fd 88    	vshufps ymm7,ymm12,ymm13,0x88
  b25f67:	c5 44 c6 ff d8       	vshufps ymm15,ymm7,ymm7,0xd8
  b25f6c:	c4 c1 1c c6 fd dd    	vshufps ymm7,ymm12,ymm13,0xdd
  b25f72:	c5 44 c6 e7 d8       	vshufps ymm12,ymm7,ymm7,0xd8
  b25f77:	c5 7c 10 6a 40       	vmovups ymm13,YMMWORD PTR [rdx+0x40]
  b25f7c:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b25f83:	62 e1 7c 28 10 4a 04 	vmovups ymm17,YMMWORD PTR [rdx+0x80]
  b25f8a:	62 e1 7c 28 10 52 05 	vmovups ymm18,YMMWORD PTR [rdx+0xa0]
  b25f91:	62 b1 34 28 59 f9    	vmulps ymm7,ymm9,ymm17
  b25f97:	62 b2 0d 28 bc fa    	vfnmadd231ps ymm7,ymm14,ymm18
  b25f9d:	62 31 0c 28 59 f1    	vmulps ymm14,ymm14,ymm17
  b25fa3:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  b25faa:	62 32 35 28 b8 f2    	vfmadd231ps ymm14,ymm9,ymm18
  b25fb0:	c5 7c 10 8a 20 01 00 	vmovups ymm9,YMMWORD PTR [rdx+0x120]
  b25fb7:	00 
  b25fb8:	62 a1 3c 28 59 d1    	vmulps ymm18,ymm8,ymm17
  b25fbe:	62 c2 05 28 bc d1    	vfnmadd231ps ymm18,ymm15,ymm9
  b25fc4:	62 31 04 28 59 f9    	vmulps ymm15,ymm15,ymm17
  b25fca:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  b25fd1:	c4 42 3d b8 f9       	vfmadd231ps ymm15,ymm8,ymm9
  b25fd6:	c5 7c 10 82 e0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xe0]
  b25fdd:	00 
  b25fde:	62 31 4c 28 59 c9    	vmulps ymm9,ymm6,ymm17
  b25fe4:	c4 42 25 bc c8       	vfnmadd231ps ymm9,ymm11,ymm8
  b25fe9:	62 31 24 28 59 d9    	vmulps ymm11,ymm11,ymm17
  b25fef:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  b25ff6:	c4 42 4d b8 d8       	vfmadd231ps ymm11,ymm6,ymm8
  b25ffb:	c5 fc 10 b2 60 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x160]
  b26002:	00 
  b26003:	62 31 54 28 59 c1    	vmulps ymm8,ymm5,ymm17
  b26009:	c4 62 1d bc c6       	vfnmadd231ps ymm8,ymm12,ymm6
  b2600e:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  b26014:	62 a1 44 28 58 ca    	vaddps ymm17,ymm7,ymm18
  b2601a:	c4 62 55 b8 e6       	vfmadd231ps ymm12,ymm5,ymm6
  b2601f:	62 b1 6c 28 58 e9    	vaddps ymm5,ymm2,ymm17
  b26025:	c5 94 59 f3          	vmulps ymm6,ymm13,ymm3
  b26029:	62 b2 2d 28 bc f0    	vfnmadd231ps ymm6,ymm10,ymm16
  b2602f:	c4 41 2c 59 d5       	vmulps ymm10,ymm10,ymm13
  b26034:	c5 3c 58 ee          	vaddps ymm13,ymm8,ymm6
  b26038:	62 32 65 28 b8 d0    	vfmadd231ps ymm10,ymm3,ymm16
  b2603e:	c4 c1 34 58 dd       	vaddps ymm3,ymm9,ymm13
  b26043:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  b26049:	62 e2 75 28 ac ca    	vfnmadd213ps ymm17,ymm1,ymm2
  b2604f:	62 f1 7c 20 58 d4    	vaddps ymm2,ymm16,ymm4
  b26055:	c4 42 75 bc cd       	vfnmadd231ps ymm9,ymm1,ymm13
  b2605a:	c4 41 1c 58 ea       	vaddps ymm13,ymm12,ymm10
  b2605f:	62 e2 75 28 ac c4    	vfnmadd213ps ymm16,ymm1,ymm4
  b26065:	c4 c1 24 58 e5       	vaddps ymm4,ymm11,ymm13
  b2606a:	c4 62 15 bc d9       	vfnmadd231ps ymm11,ymm13,ymm1
  b2606f:	c4 c1 0c 5c cf       	vsubps ymm1,ymm14,ymm15
  b26074:	c4 41 1c 5c d2       	vsubps ymm10,ymm12,ymm10
  b26079:	62 b1 44 28 5c fa    	vsubps ymm7,ymm7,ymm18
  b2607f:	c5 f4 59 c8          	vmulps ymm1,ymm1,ymm0
  b26083:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  b26087:	62 71 74 20 58 c1    	vaddps ymm8,ymm17,ymm1
  b2608d:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  b26091:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  b26095:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  b26099:	c4 c1 34 58 f2       	vaddps ymm6,ymm9,ymm10
  b2609e:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  b260a4:	62 71 7c 20 5c e7    	vsubps ymm12,ymm16,ymm7
  b260aa:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  b260af:	c5 24 5c d0          	vsubps ymm10,ymm11,ymm0
  b260b3:	62 b1 44 28 58 f8    	vaddps ymm7,ymm7,ymm16
  b260b9:	c4 41 1c 5c ea       	vsubps ymm13,ymm12,ymm10
  b260be:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  b260c2:	c5 44 58 d8          	vaddps ymm11,ymm7,ymm0
  b260c6:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  b260cb:	c5 6c 5c e4          	vsubps ymm12,ymm2,ymm4
  b260cf:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  b260d3:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  b260d7:	c5 d0 58 e3          	vaddps xmm4,xmm5,xmm3
  b260db:	c5 fc 28 3d dd 21 55 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff5521dd]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b260e2:	ff 
  b260e3:	62 f2 45 28 7f e2    	vpermt2ps ymm4,ymm7,ymm2
  b260e9:	c5 b8 5c d6          	vsubps xmm2,xmm8,xmm6
  b260ed:	62 d2 45 28 7f d5    	vpermt2ps ymm2,ymm7,ymm13
  b260f3:	c5 30 58 e9          	vaddps xmm13,xmm9,xmm1
  b260f7:	62 52 45 28 7f eb    	vpermt2ps ymm13,ymm7,ymm11
  b260fd:	c5 d0 5c db          	vsubps xmm3,xmm5,xmm3
  b26101:	62 d2 45 28 7f dc    	vpermt2ps ymm3,ymm7,ymm12
  b26107:	c5 b8 58 ee          	vaddps xmm5,xmm8,xmm6
  b2610b:	62 d2 45 28 7f ea    	vpermt2ps ymm5,ymm7,ymm10
  b26111:	c4 c1 70 5c c9       	vsubps xmm1,xmm1,xmm9
  b26116:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  b2611c:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  b26122:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  b26127:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  b2612b:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  b26131:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  b26136:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  b2613b:	c4 63 7d 19 e8 01    	vextractf128 xmm0,ymm13,0x1
  b26141:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  b26146:	c5 78 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm13
  b2614b:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  b26151:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  b26156:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  b2615b:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  b26161:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  b26166:	c5 f8 11 6e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm5
  b2616b:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b26171:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  b26178:	00 
  b26179:	c5 f8 11 4e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm1
  b2617e:	c5 f8 77             	vzeroupper
  b26181:	c3                   	ret
