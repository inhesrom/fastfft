
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b19e80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b19e80:	48 c1 e2 06          	shl    rdx,0x6
  b19e84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b19e88:	c4 e2 7d 18 05 cf b5 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff55b5cf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b19e8f:	55 ff 
  b19e91:	31 d2                	xor    edx,edx
  b19e93:	c4 e2 7d 18 0d 38 b4 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff55b438]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b19e9a:	55 ff 
  b19e9c:	c5 fc 28 15 3c d3 55 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff55d33c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b19ea3:	ff 
  b19ea4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b19eab:	00 00 00 00 00 
  b19eb0:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  b19eb5:	c5 f8 10 64 17 20    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b19ebb:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  b19ec0:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b19ec6:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b19ecc:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b19ed3:	00 00 
  b19ed5:	c4 c1 44 c6 f0 88    	vshufps ymm6,ymm7,ymm8,0x88
  b19edb:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  b19ee1:	c4 41 54 5c d1       	vsubps ymm10,ymm5,ymm9
  b19ee6:	c5 7c 10 9c 17 90 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x90]
  b19eed:	00 00 
  b19eef:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  b19ef6:	00 00 
  b19ef8:	c4 c1 24 c6 f4 dd    	vshufps ymm6,ymm11,ymm12,0xdd
  b19efe:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  b19f04:	c5 7c 10 74 17 30    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  b19f0a:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  b19f10:	c4 c1 0c c6 f7 dd    	vshufps ymm6,ymm14,ymm15,0xdd
  b19f16:	62 e3 fd 28 01 c6 d8 	vpermpd ymm16,ymm6,0xd8
  b19f1d:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  b19f23:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b19f29:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  b19f2e:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b19f34:	c4 c1 44 c6 e0 dd    	vshufps ymm4,ymm7,ymm8,0xdd
  b19f3a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b19f40:	c5 e4 5c fc          	vsubps ymm7,ymm3,ymm4
  b19f44:	c4 41 0c c6 c7 88    	vshufps ymm8,ymm14,ymm15,0x88
  b19f4a:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b19f50:	c4 41 24 c6 dc 88    	vshufps ymm11,ymm11,ymm12,0x88
  b19f56:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b19f5c:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  b19f61:	c4 41 44 5c f4       	vsubps ymm14,ymm7,ymm12
  b19f66:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b19f6a:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  b19f6f:	c4 41 54 5c d8       	vsubps ymm11,ymm5,ymm8
  b19f74:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b19f78:	62 d1 7c 20 58 e5    	vaddps ymm4,ymm16,ymm13
  b19f7e:	c5 64 5c cc          	vsubps ymm9,ymm3,ymm4
  b19f82:	62 51 74 20 58 d2    	vaddps ymm10,ymm17,ymm10
  b19f88:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b19f8c:	c5 3c 58 e5          	vaddps ymm12,ymm8,ymm5
  b19f90:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b19f94:	c5 f8 28 e3          	vmovaps xmm4,xmm3
  b19f98:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b19f9e:	c5 f8 28 ef          	vmovaps xmm5,xmm7
  b19fa2:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b19fa8:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  b19fad:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b19fb3:	c4 41 65 14 e9       	vunpcklpd ymm13,ymm3,ymm9
  b19fb8:	c5 78 29 f3          	vmovaps xmm3,xmm14
  b19fbc:	c4 43 7d 19 f1 01    	vextractf128 xmm9,ymm14,0x1
  b19fc2:	c4 41 45 14 f1       	vunpcklpd ymm14,ymm7,ymm9
  b19fc7:	c4 c1 5d 15 f8       	vunpckhpd ymm7,ymm4,ymm8
  b19fcc:	c4 c1 5d 14 e0       	vunpcklpd ymm4,ymm4,ymm8
  b19fd1:	c5 55 15 c3          	vunpckhpd ymm8,ymm5,ymm3
  b19fd5:	c5 d5 14 eb          	vunpcklpd ymm5,ymm5,ymm3
  b19fd9:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  b19fde:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b19fe3:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  b19fe8:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b19fed:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  b19ff3:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  b19ff8:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  b19ffe:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  b1a003:	c4 c1 14 c6 ee 88    	vshufps ymm5,ymm13,ymm14,0x88
  b1a009:	c5 54 c6 c5 d8       	vshufps ymm8,ymm5,ymm5,0xd8
  b1a00e:	c4 c1 14 c6 ee dd    	vshufps ymm5,ymm13,ymm14,0xdd
  b1a014:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1a019:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b1a01e:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b1a024:	c4 41 78 28 f2       	vmovaps xmm14,xmm10
  b1a029:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b1a02f:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  b1a034:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b1a03a:	c4 41 1d 14 e3       	vunpcklpd ymm12,ymm12,ymm11
  b1a03f:	c5 78 28 de          	vmovaps xmm11,xmm6
  b1a043:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b1a049:	c5 2d 14 d6          	vunpcklpd ymm10,ymm10,ymm6
  b1a04d:	62 c1 95 28 15 c7    	vunpckhpd ymm16,ymm13,ymm15
  b1a053:	c4 41 15 14 ef       	vunpcklpd ymm13,ymm13,ymm15
  b1a058:	c4 41 0d 15 fb       	vunpckhpd ymm15,ymm14,ymm11
  b1a05d:	c4 41 0d 14 db       	vunpcklpd ymm11,ymm14,ymm11
  b1a062:	c4 c1 14 c6 f3 88    	vshufps ymm6,ymm13,ymm11,0x88
  b1a068:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1a06d:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  b1a073:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b1a079:	62 51 7c 20 c6 ef 88 	vshufps ymm13,ymm16,ymm15,0x88
  b1a080:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b1a086:	62 51 7c 20 c6 f7 dd 	vshufps ymm14,ymm16,ymm15,0xdd
  b1a08d:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b1a093:	c4 41 1c c6 fa 88    	vshufps ymm15,ymm12,ymm10,0x88
  b1a099:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b1a09f:	c4 41 1c c6 d2 dd    	vshufps ymm10,ymm12,ymm10,0xdd
  b1a0a5:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  b1a0ab:	62 e1 7c 28 10 41 04 	vmovups ymm16,YMMWORD PTR [rcx+0x80]
  b1a0b2:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  b1a0b9:	62 31 34 28 59 d0    	vmulps ymm10,ymm9,ymm16
  b1a0bf:	62 32 15 28 bc d1    	vfnmadd231ps ymm10,ymm13,ymm17
  b1a0c5:	62 31 14 28 59 e8    	vmulps ymm13,ymm13,ymm16
  b1a0cb:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  b1a0d2:	62 32 35 28 b8 e9    	vfmadd231ps ymm13,ymm9,ymm17
  b1a0d8:	c5 7c 10 89 20 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x120]
  b1a0df:	00 
  b1a0e0:	62 a1 3c 28 59 c8    	vmulps ymm17,ymm8,ymm16
  b1a0e6:	62 c2 05 28 bc c9    	vfnmadd231ps ymm17,ymm15,ymm9
  b1a0ec:	62 31 04 28 59 f8    	vmulps ymm15,ymm15,ymm16
  b1a0f2:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  b1a0f9:	c4 42 3d b8 f9       	vfmadd231ps ymm15,ymm8,ymm9
  b1a0fe:	c5 7c 10 81 e0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xe0]
  b1a105:	00 
  b1a106:	62 31 44 28 59 c8    	vmulps ymm9,ymm7,ymm16
  b1a10c:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  b1a111:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  b1a117:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  b1a11e:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  b1a123:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  b1a12a:	00 
  b1a12b:	62 31 54 28 59 c0    	vmulps ymm8,ymm5,ymm16
  b1a131:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  b1a136:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  b1a13c:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  b1a143:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  b1a148:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  b1a14d:	62 b1 5c 28 59 f8    	vmulps ymm7,ymm4,ymm16
  b1a153:	c4 e2 25 bc fd       	vfnmadd231ps ymm7,ymm11,ymm5
  b1a158:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  b1a15e:	62 a1 2c 28 58 c1    	vaddps ymm16,ymm10,ymm17
  b1a164:	c4 62 5d b8 dd       	vfmadd231ps ymm11,ymm4,ymm5
  b1a169:	62 b1 64 28 58 e0    	vaddps ymm4,ymm3,ymm16
  b1a16f:	c5 bc 58 ef          	vaddps ymm5,ymm8,ymm7
  b1a173:	62 e2 7d 28 ac c3    	vfnmadd213ps ymm16,ymm0,ymm3
  b1a179:	c4 c1 14 58 df       	vaddps ymm3,ymm13,ymm15
  b1a17e:	c4 41 14 5c ef       	vsubps ymm13,ymm13,ymm15
  b1a183:	c5 34 58 fd          	vaddps ymm15,ymm9,ymm5
  b1a187:	c4 62 7d bc cd       	vfnmadd231ps ymm9,ymm0,ymm5
  b1a18c:	c4 c1 1c 58 eb       	vaddps ymm5,ymm12,ymm11
  b1a191:	c4 41 1c 5c db       	vsubps ymm11,ymm12,ymm11
  b1a196:	c5 64 58 e6          	vaddps ymm12,ymm3,ymm6
  b1a19a:	c4 e2 7d ac de       	vfnmadd213ps ymm3,ymm0,ymm6
  b1a19f:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b1a1a5:	c5 0c 58 d5          	vaddps ymm10,ymm14,ymm5
  b1a1a9:	c4 62 7d bc f5       	vfnmadd231ps ymm14,ymm0,ymm5
  b1a1ae:	c5 94 59 e9          	vmulps ymm5,ymm13,ymm1
  b1a1b2:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  b1a1b6:	62 71 7c 20 58 c5    	vaddps ymm8,ymm16,ymm5
  b1a1bc:	c5 24 59 d9          	vmulps ymm11,ymm11,ymm1
  b1a1c0:	62 f1 7c 20 5c ed    	vsubps ymm5,ymm16,ymm5
  b1a1c6:	c4 41 34 58 eb       	vaddps ymm13,ymm9,ymm11
  b1a1cb:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  b1a1cf:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  b1a1d4:	c5 64 5c de          	vsubps ymm11,ymm3,ymm6
  b1a1d8:	c5 c4 59 f9          	vmulps ymm7,ymm7,ymm1
  b1a1dc:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b1a1e0:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b1a1e4:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b1a1e8:	c4 41 3c 5c f5       	vsubps ymm14,ymm8,ymm13
  b1a1ed:	c4 41 3c 58 c5       	vaddps ymm8,ymm8,ymm13
  b1a1f2:	c5 34 58 ed          	vaddps ymm13,ymm9,ymm5
  b1a1f6:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  b1a1fb:	c4 41 5c 5c cf       	vsubps ymm9,ymm4,ymm15
  b1a200:	c5 84 58 e4          	vaddps ymm4,ymm15,ymm4
  b1a204:	c4 41 18 58 fa       	vaddps xmm15,xmm12,xmm10
  b1a209:	62 72 6d 28 7f fc    	vpermt2ps ymm15,ymm2,ymm4
  b1a20f:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  b1a214:	c5 a0 5c e6          	vsubps xmm4,xmm11,xmm6
  b1a218:	62 d2 6d 28 7f e6    	vpermt2ps ymm4,ymm2,ymm14
  b1a21e:	c5 fc 11 64 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm4
  b1a224:	c5 e0 58 e7          	vaddps xmm4,xmm3,xmm7
  b1a228:	62 d2 6d 28 7f e5    	vpermt2ps ymm4,ymm2,ymm13
  b1a22e:	c5 fc 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm4
  b1a234:	c4 c1 18 5c e2       	vsubps xmm4,xmm12,xmm10
  b1a239:	62 d2 6d 28 7f e1    	vpermt2ps ymm4,ymm2,ymm9
  b1a23f:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  b1a245:	c5 a0 58 e6          	vaddps xmm4,xmm11,xmm6
  b1a249:	62 d2 6d 28 7f e0    	vpermt2ps ymm4,ymm2,ymm8
  b1a24f:	c5 fc 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm4
  b1a256:	00 00 
  b1a258:	c5 e0 5c df          	vsubps xmm3,xmm3,xmm7
  b1a25c:	62 f2 6d 28 7f dd    	vpermt2ps ymm3,ymm2,ymm5
  b1a262:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  b1a269:	00 00 
  b1a26b:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b1a272:	48 39 d0             	cmp    rax,rdx
  b1a275:	0f 85 35 fc ff ff    	jne    b19eb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b1a27b:	c5 f8 77             	vzeroupper
  b1a27e:	c3                   	ret
