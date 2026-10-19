
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b20f40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b20f40:	c5 f8 10 07          	vmovups xmm0,XMMWORD PTR [rdi]
  b20f44:	c5 f8 10 4f 10       	vmovups xmm1,XMMWORD PTR [rdi+0x10]
  b20f49:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  b20f4e:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  b20f53:	c5 e8 c6 e3 88       	vshufps xmm4,xmm2,xmm3,0x88
  b20f58:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  b20f5d:	c5 f8 10 77 40       	vmovups xmm6,XMMWORD PTR [rdi+0x40]
  b20f62:	c5 c8 c6 fd 88       	vshufps xmm7,xmm6,xmm5,0x88
  b20f67:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b20f6b:	c4 62 7d 18 0d 60 43 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff554360]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b20f72:	55 ff 
  b20f74:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b20f79:	c5 e8 c6 d3 dd       	vshufps xmm2,xmm2,xmm3,0xdd
  b20f7e:	c5 c8 c6 dd dd       	vshufps xmm3,xmm6,xmm5,0xdd
  b20f83:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b20f87:	c5 f8 c6 f1 dd       	vshufps xmm6,xmm0,xmm1,0xdd
  b20f8c:	c4 62 7d 18 15 cb 44 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5544cb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b20f93:	55 ff 
  b20f95:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b20f99:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
  b20f9e:	c5 f8 58 cc          	vaddps xmm1,xmm0,xmm4
  b20fa2:	c4 c2 5d bc c2       	vfnmadd231ps ymm0,ymm4,ymm10
  b20fa7:	c4 62 55 ac d6       	vfnmadd213ps ymm10,ymm5,ymm6
  b20fac:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b20fb0:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  b20fb4:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  b20fb8:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b20fbc:	c5 f5 15 d0          	vunpckhpd ymm2,ymm1,ymm0
  b20fc0:	c5 f5 14 c0          	vunpcklpd ymm0,ymm1,ymm0
  b20fc4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b20fc8:	c4 e3 65 0c e1 cc    	vblendps ymm4,ymm3,ymm1,0xcc
  b20fce:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  b20fd3:	c5 fc c6 fc 88       	vshufps ymm7,ymm0,ymm4,0x88
  b20fd8:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b20fdd:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  b20fe2:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b20fe7:	c5 ec c6 e3 88       	vshufps ymm4,ymm2,ymm3,0x88
  b20fec:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b20ff1:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  b20ff6:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b20ffb:	c5 c8 58 dd          	vaddps xmm3,xmm6,xmm5
  b20fff:	c4 c1 28 5c e8       	vsubps xmm5,xmm10,xmm8
  b21004:	c4 c1 38 58 f2       	vaddps xmm6,xmm8,xmm10
  b21009:	c5 65 15 c6          	vunpckhpd ymm8,ymm3,ymm6
  b2100d:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b21011:	c4 e3 55 0c c9 cc    	vblendps ymm1,ymm5,ymm1,0xcc
  b21017:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  b2101c:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  b21021:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b21026:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b2102b:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b21030:	c5 bc c6 dd 88       	vshufps ymm3,ymm8,ymm5,0x88
  b21035:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b2103a:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  b2103f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b21044:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  b21049:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  b2104e:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  b21055:	00 
  b21056:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  b2105d:	00 
  b2105e:	c5 7c 10 a2 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xc0]
  b21065:	00 
  b21066:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  b2106d:	00 
  b2106e:	c5 2c 59 f4          	vmulps ymm14,ymm10,ymm4
  b21072:	c4 42 65 bc f3       	vfnmadd231ps ymm14,ymm3,ymm11
  b21077:	c5 0c 58 ff          	vaddps ymm15,ymm14,ymm7
  b2107b:	62 c1 7c 28 59 c0    	vmulps ymm16,ymm0,ymm8
  b21081:	62 c2 75 28 bc c1    	vfnmadd231ps ymm16,ymm1,ymm9
  b21087:	62 c1 6c 28 59 cc    	vmulps ymm17,ymm2,ymm12
  b2108d:	62 c2 55 28 bc cd    	vfnmadd231ps ymm17,ymm5,ymm13
  b21093:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  b21099:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  b2109d:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  b210a2:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  b210a6:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  b210aa:	c4 c2 7d b8 c9       	vfmadd231ps ymm1,ymm0,ymm9
  b210af:	c5 9c 59 c5          	vmulps ymm0,ymm12,ymm5
  b210b3:	c4 c2 6d b8 c5       	vfmadd231ps ymm0,ymm2,ymm13
  b210b8:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  b210bc:	c4 c1 44 5c ee       	vsubps ymm5,ymm7,ymm14
  b210c1:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b210c5:	c5 cc 5c cb          	vsubps ymm1,ymm6,ymm3
  b210c9:	62 b1 74 20 5c d8    	vsubps ymm3,ymm17,ymm16
  b210cf:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b210d3:	c5 dc 5c fa          	vsubps ymm7,ymm4,ymm2
  b210d7:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b210db:	c5 dc 58 d2          	vaddps ymm2,ymm4,ymm2
  b210df:	62 b1 04 08 58 da    	vaddps xmm3,xmm15,xmm18
  b210e5:	c5 fc 28 25 d3 71 55 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5571d3]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b210ec:	ff 
  b210ed:	62 f2 5d 28 7f da    	vpermt2ps ymm3,ymm4,ymm2
  b210f3:	c5 f8 11 1e          	vmovups XMMWORD PTR [rsi],xmm3
  b210f7:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  b210fd:	c5 f8 13 56 10       	vmovlps QWORD PTR [rsi+0x10],xmm2
  b21102:	c5 d0 58 d0          	vaddps xmm2,xmm5,xmm0
  b21106:	62 f2 5d 28 7f d6    	vpermt2ps ymm2,ymm4,ymm6
  b2110c:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  b21111:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b21117:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  b2111c:	62 b1 04 08 5c d2    	vsubps xmm2,xmm15,xmm18
  b21122:	62 f2 5d 28 7f d7    	vpermt2ps ymm2,ymm4,ymm7
  b21128:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  b2112d:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b21133:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  b21138:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  b2113c:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  b21142:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b21148:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  b2114d:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  b21152:	c5 f8 77             	vzeroupper
  b21155:	c3                   	ret
