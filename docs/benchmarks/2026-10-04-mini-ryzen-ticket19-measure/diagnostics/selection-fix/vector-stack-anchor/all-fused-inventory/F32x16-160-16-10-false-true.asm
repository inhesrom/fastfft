
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a69cc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a69cc0:	48 81 ec 48 03 00 00 	sub    rsp,0x348
  a69cc7:	48 c1 e2 08          	shl    rdx,0x8
  a69ccb:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a69ccf:	31 d2                	xor    edx,edx
  a69cd1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a69cd8:	0f 1f 84 00 00 00 00 
  a69cdf:	00 
  a69ce0:	62 f1 7c 48 10 0c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1]
  a69ce7:	c5 f8 10 44 17 40    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x40]
  a69ced:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  a69cf3:	62 e1 7c 48 28 0d 43 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff62a743]        # 94440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x218f0>
  a69cfa:	a7 62 ff 
  a69cfd:	62 62 75 40 7f e8    	vpermt2ps zmm29,zmm17,zmm0
  a69d03:	62 e1 7c 48 28 2d 73 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff62a773]        # 94480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21930>
  a69d0a:	a7 62 ff 
  a69d0d:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a69d13:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a69d1a:	05 
  a69d1b:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x50]
  a69d22:	50 00 00 00 
  a69d26:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  a69d2d:	00 00 
  a69d2f:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a69d35:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a69d3b:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a69d42:	62 e2 55 40 7f d8    	vpermt2ps zmm19,zmm21,zmm0
  a69d48:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a69d4f:	a0 00 00 00 
  a69d53:	c5 f8 10 84 17 e0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xe0]
  a69d5a:	00 00 
  a69d5c:	62 31 7c 48 28 e7    	vmovaps zmm12,zmm23
  a69d62:	62 72 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm0
  a69d68:	62 e2 55 40 7f f8    	vpermt2ps zmm23,zmm21,zmm0
  a69d6e:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a69d75:	f0 00 00 00 
  a69d79:	c5 f8 10 84 17 30 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x130]
  a69d80:	00 00 
  a69d82:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a69d88:	62 e2 75 40 7f f0    	vpermt2ps zmm22,zmm17,zmm0
  a69d8e:	62 e2 55 40 7f e0    	vpermt2ps zmm20,zmm21,zmm0
  a69d94:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  a69d9b:	05 
  a69d9c:	c5 f8 10 84 17 80 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x180]
  a69da3:	00 00 
  a69da5:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a69dab:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a69db1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a69db8:	01 
  a69db9:	62 e2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm0
  a69dbf:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x190]
  a69dc6:	90 01 00 00 
  a69dca:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a69dd1:	00 00 
  a69dd3:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a69dd9:	62 62 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm0
  a69ddf:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a69de5:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a69dec:	e0 01 00 00 
  a69df0:	c5 f8 10 84 17 20 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x220]
  a69df7:	00 00 
  a69df9:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a69dff:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a69e05:	62 72 55 40 7f d8    	vpermt2ps zmm11,zmm21,zmm0
  a69e0b:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x230]
  a69e12:	30 02 00 00 
  a69e16:	c5 f8 10 84 17 70 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x270]
  a69e1d:	00 00 
  a69e1f:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a69e25:	62 62 75 40 7f d0    	vpermt2ps zmm26,zmm17,zmm0
  a69e2b:	62 72 55 40 7f d0    	vpermt2ps zmm10,zmm21,zmm0
  a69e31:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  a69e38:	0a 
  a69e39:	c5 f8 10 84 17 c0 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a69e40:	00 00 
  a69e42:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a69e48:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a69e4e:	62 62 55 40 7f c0    	vpermt2ps zmm24,zmm21,zmm0
  a69e54:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a69e5b:	d0 02 00 00 
  a69e5f:	c5 f8 10 84 17 10 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x310]
  a69e66:	00 00 
  a69e68:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a69e6e:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a69e74:	62 72 55 40 7f f0    	vpermt2ps zmm14,zmm21,zmm0
  a69e7a:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x320]
  a69e81:	20 03 00 00 
  a69e85:	c5 f8 10 84 17 60 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x360]
  a69e8c:	00 00 
  a69e8e:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a69e94:	62 62 75 40 7f f8    	vpermt2ps zmm31,zmm17,zmm0
  a69e9a:	62 62 55 40 7f f0    	vpermt2ps zmm30,zmm21,zmm0
  a69ea0:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x370]
  a69ea7:	70 03 00 00 
  a69eab:	c5 f8 10 84 17 b0 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a69eb2:	00 00 
  a69eb4:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a69eba:	62 62 75 40 7f d8    	vpermt2ps zmm27,zmm17,zmm0
  a69ec0:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a69ec6:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a69ecd:	0f 
  a69ece:	c5 f8 10 84 17 00 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x400]
  a69ed5:	00 00 
  a69ed7:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a69edd:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a69ee3:	62 f2 55 40 7f f8    	vpermt2ps zmm7,zmm21,zmm0
  a69ee9:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x410]
  a69ef0:	10 04 00 00 
  a69ef4:	c5 f8 10 8c 17 50 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x450]
  a69efb:	00 00 
  a69efd:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a69f03:	62 f2 75 40 7f e9    	vpermt2ps zmm5,zmm17,zmm1
  a69f09:	62 f2 55 40 7f e1    	vpermt2ps zmm4,zmm21,zmm1
  a69f0f:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x460]
  a69f16:	60 04 00 00 
  a69f1a:	c5 f8 10 8c 17 a0 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x4a0]
  a69f21:	00 00 
  a69f23:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a69f29:	62 f2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm1
  a69f2f:	62 f2 55 40 7f d9    	vpermt2ps zmm3,zmm21,zmm1
  a69f35:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a69f3c:	b0 04 00 00 
  a69f40:	c5 f8 10 84 17 f0 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x4f0]
  a69f47:	00 00 
  a69f49:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a69f4f:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a69f55:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a69f5b:	62 91 14 40 58 c4    	vaddps zmm0,zmm29,zmm28
  a69f61:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a69f68:	ff 
  a69f69:	62 91 14 40 5c c4    	vsubps zmm0,zmm29,zmm28
  a69f6f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a69f76:	fe 
  a69f77:	62 f1 6c 40 58 c7    	vaddps zmm0,zmm18,zmm7
  a69f7d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a69f84:	02 
  a69f85:	62 f1 6c 40 5c c7    	vsubps zmm0,zmm18,zmm7
  a69f8b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a69f92:	04 
  a69f93:	62 91 1c 48 58 c7    	vaddps zmm0,zmm12,zmm31
  a69f99:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a69fa0:	03 
  a69fa1:	62 91 1c 48 5c ff    	vsubps zmm7,zmm12,zmm31
  a69fa7:	62 01 44 40 58 fe    	vaddps zmm31,zmm23,zmm30
  a69fad:	62 11 44 40 5c e6    	vsubps zmm12,zmm23,zmm30
  a69fb3:	62 e1 24 48 58 eb    	vaddps zmm21,zmm11,zmm3
  a69fb9:	62 61 24 48 5c f3    	vsubps zmm30,zmm11,zmm3
  a69fbf:	62 61 3c 48 58 e2    	vaddps zmm28,zmm8,zmm2
  a69fc5:	62 f1 3c 48 5c c2    	vsubps zmm0,zmm8,zmm2
  a69fcb:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a69fd2:	62 a1 64 48 58 d0    	vaddps zmm18,zmm3,zmm16
  a69fd8:	62 b1 64 48 5c d0    	vsubps zmm2,zmm3,zmm16
  a69fde:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a69fe5:	06 
  a69fe6:	62 e1 34 48 58 cc    	vaddps zmm17,zmm9,zmm4
  a69fec:	62 71 34 48 5c cc    	vsubps zmm9,zmm9,zmm4
  a69ff2:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm9
  a69ff9:	08 
  a69ffa:	62 c1 64 40 58 c6    	vaddps zmm16,zmm19,zmm14
  a6a000:	62 d1 64 40 5c de    	vsubps zmm3,zmm19,zmm14
  a6a006:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm3
  a6a00d:	0c 
  a6a00e:	62 71 34 40 58 c5    	vaddps zmm8,zmm25,zmm5
  a6a014:	62 81 54 48 5c f9    	vsubps zmm23,zmm5,zmm25
  a6a01a:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm23
  a6a021:	07 
  a6a022:	62 01 4c 40 58 cb    	vaddps zmm25,zmm22,zmm27
  a6a028:	62 91 4c 40 5c eb    	vsubps zmm5,zmm22,zmm27
  a6a02e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a6a035:	0a 
  a6a036:	62 61 2c 48 58 d9    	vaddps zmm27,zmm10,zmm1
  a6a03c:	62 61 2c 48 5c e9    	vsubps zmm29,zmm10,zmm1
  a6a042:	62 51 5c 40 58 df    	vaddps zmm11,zmm20,zmm15
  a6a048:	62 c1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm15
  a6a04e:	62 f1 2c 40 58 ce    	vaddps zmm1,zmm26,zmm6
  a6a054:	62 81 4c 48 5c da    	vsubps zmm19,zmm6,zmm26
  a6a05a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a6a061:	05 
  a6a062:	62 11 5c 48 58 f8    	vaddps zmm15,zmm4,zmm24
  a6a068:	62 81 5c 48 5c f0    	vsubps zmm22,zmm4,zmm24
  a6a06e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a6a075:	01 
  a6a076:	62 51 5c 48 58 f5    	vaddps zmm14,zmm4,zmm13
  a6a07c:	62 61 14 48 5c c4    	vsubps zmm24,zmm13,zmm4
  a6a082:	62 d1 44 48 58 e4    	vaddps zmm4,zmm7,zmm12
  a6a088:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a6a08f:	62 f1 1c 48 5c e7    	vsubps zmm4,zmm12,zmm7
  a6a095:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a6a09c:	0b 
  a6a09d:	62 f1 0c 40 5c e0    	vsubps zmm4,zmm30,zmm0
  a6a0a3:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a6a0aa:	09 
  a6a0ab:	62 01 7c 48 58 d6    	vaddps zmm26,zmm0,zmm30
  a6a0b1:	62 d1 6c 48 58 c1    	vaddps zmm0,zmm2,zmm9
  a6a0b7:	62 f1 44 40 58 d3    	vaddps zmm2,zmm23,zmm3
  a6a0bd:	62 72 7d 48 18 25 9d 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff60b59d]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a6a0c4:	b5 60 ff 
  a6a0c7:	62 d1 6c 48 59 e4    	vmulps zmm4,zmm2,zmm12
  a6a0cd:	62 f2 7d 48 18 35 29 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff60b629]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a6a0d4:	b6 60 ff 
  a6a0d7:	62 f2 7d 48 b8 e6    	vfmadd231ps zmm4,zmm0,zmm6
  a6a0dd:	62 71 6c 48 59 d6    	vmulps zmm10,zmm2,zmm6
  a6a0e3:	62 72 1d 48 bc d0    	vfnmadd231ps zmm10,zmm12,zmm0
  a6a0e9:	62 91 54 48 58 c5    	vaddps zmm0,zmm5,zmm29
  a6a0ef:	62 b1 64 40 58 d4    	vaddps zmm2,zmm19,zmm20
  a6a0f5:	62 71 6c 48 59 ce    	vmulps zmm9,zmm2,zmm6
  a6a0fb:	62 52 7d 48 b8 cc    	vfmadd231ps zmm9,zmm0,zmm12
  a6a101:	62 51 6c 48 59 ec    	vmulps zmm13,zmm2,zmm12
  a6a107:	62 72 4d 48 bc e8    	vfnmadd231ps zmm13,zmm6,zmm0
  a6a10d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a6a114:	ff 
  a6a115:	62 d1 7c 48 58 ee    	vaddps zmm5,zmm0,zmm14
  a6a11b:	62 d1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm14
  a6a121:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a6a128:	05 
  a6a129:	62 21 04 40 58 f5    	vaddps zmm30,zmm31,zmm21
  a6a12f:	62 b1 04 40 5c c5    	vsubps zmm0,zmm31,zmm21
  a6a135:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a6a13c:	01 
  a6a13d:	62 c1 6c 40 58 f8    	vaddps zmm23,zmm18,zmm8
  a6a143:	62 d1 6c 40 5c d0    	vsubps zmm2,zmm18,zmm8
  a6a149:	62 31 7c 40 58 f1    	vaddps zmm14,zmm16,zmm17
  a6a14f:	62 31 7c 40 5c c1    	vsubps zmm8,zmm16,zmm17
  a6a155:	62 91 24 48 58 fb    	vaddps zmm7,zmm11,zmm27
  a6a15b:	62 91 24 48 5c db    	vsubps zmm3,zmm11,zmm27
  a6a161:	62 61 34 40 58 f9    	vaddps zmm31,zmm25,zmm1
  a6a167:	62 e1 34 40 5c c9    	vsubps zmm17,zmm25,zmm1
  a6a16d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a6a174:	02 
  a6a175:	62 e1 04 48 58 e8    	vaddps zmm21,zmm15,zmm0
  a6a17b:	62 61 04 48 5c c8    	vsubps zmm25,zmm15,zmm0
  a6a181:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a6a188:	03 
  a6a189:	62 91 74 48 58 c4    	vaddps zmm0,zmm1,zmm28
  a6a18f:	62 61 1c 40 5c d9    	vsubps zmm27,zmm28,zmm1
  a6a195:	62 51 6c 48 58 d8    	vaddps zmm11,zmm2,zmm8
  a6a19b:	62 f1 3c 48 5c ca    	vsubps zmm1,zmm8,zmm2
  a6a1a1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a6a1a8:	03 
  a6a1a9:	62 b1 64 48 5c c9    	vsubps zmm1,zmm3,zmm17
  a6a1af:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6a1b6:	ff 
  a6a1b7:	62 71 74 40 58 c3    	vaddps zmm8,zmm17,zmm3
  a6a1bd:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a6a1c4:	fe 
  a6a1c5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a6a1cc:	04 
  a6a1cd:	62 e1 74 48 58 ca    	vaddps zmm17,zmm1,zmm2
  a6a1d3:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a6a1d9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6a1e0:	fe 
  a6a1e1:	62 f2 7d 48 18 15 b1 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60b1b1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6a1e8:	b1 60 ff 
  a6a1eb:	62 f1 6c 48 59 5c 24 	vmulps zmm3,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a6a1f2:	0b 
  a6a1f3:	62 61 2c 40 59 d2    	vmulps zmm26,zmm26,zmm2
  a6a1f9:	62 91 64 48 5c ca    	vsubps zmm1,zmm3,zmm26
  a6a1ff:	62 91 64 48 58 da    	vaddps zmm3,zmm3,zmm26
  a6a205:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a6a20c:	06 
  a6a20d:	62 61 04 48 5c 54 24 	vsubps zmm26,zmm15,ZMMWORD PTR [rsp+0x200]
  a6a214:	08 
  a6a215:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x300]
  a6a21c:	0c 
  a6a21d:	62 61 04 48 5c 64 24 	vsubps zmm28,zmm15,ZMMWORD PTR [rsp+0x1c0]
  a6a224:	07 
  a6a225:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x280]
  a6a22c:	0a 
  a6a22d:	62 81 04 48 5c d5    	vsubps zmm18,zmm15,zmm29
  a6a233:	62 a1 5c 40 5c db    	vsubps zmm19,zmm20,zmm19
  a6a239:	62 a1 3c 40 58 e6    	vaddps zmm20,zmm24,zmm22
  a6a23f:	62 81 4c 40 5c c0    	vsubps zmm16,zmm22,zmm24
  a6a245:	62 e1 6c 48 59 34 24 	vmulps zmm22,zmm2,ZMMWORD PTR [rsp]
  a6a24c:	62 61 6c 48 59 44 24 	vmulps zmm24,zmm2,ZMMWORD PTR [rsp+0x240]
  a6a253:	09 
  a6a254:	62 01 4c 40 58 e8    	vaddps zmm29,zmm22,zmm24
  a6a25a:	62 a1 3c 40 5c f6    	vsubps zmm22,zmm24,zmm22
  a6a260:	62 61 1c 40 59 c6    	vmulps zmm24,zmm28,zmm6
  a6a266:	62 42 2d 40 b8 c4    	vfmadd231ps zmm24,zmm26,zmm12
  a6a26c:	62 41 1c 40 59 e4    	vmulps zmm28,zmm28,zmm12
  a6a272:	62 02 4d 48 bc e2    	vfnmadd231ps zmm28,zmm6,zmm26
  a6a278:	62 41 64 40 59 d4    	vmulps zmm26,zmm19,zmm12
  a6a27e:	62 62 6d 40 b8 d6    	vfmadd231ps zmm26,zmm18,zmm6
  a6a284:	62 c1 6c 40 59 d4    	vmulps zmm18,zmm18,zmm12
  a6a28a:	62 a2 4d 48 bc d3    	vfnmadd231ps zmm18,zmm6,zmm19
  a6a290:	62 e1 54 48 58 d8    	vaddps zmm19,zmm5,zmm0
  a6a296:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a6a29c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a6a2a3:	02 
  a6a2a4:	62 71 0c 48 58 ff    	vaddps zmm15,zmm14,zmm7
  a6a2aa:	62 f1 0c 48 5c c7    	vsubps zmm0,zmm14,zmm7
  a6a2b0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a6a2b7:	09 
  a6a2b8:	62 11 54 40 58 e6    	vaddps zmm12,zmm21,zmm30
  a6a2be:	62 91 54 40 5c c6    	vsubps zmm0,zmm21,zmm30
  a6a2c4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a6a2cb:	08 
  a6a2cc:	62 01 44 40 58 f7    	vaddps zmm30,zmm23,zmm31
  a6a2d2:	62 b1 04 40 5c c7    	vsubps zmm0,zmm31,zmm23
  a6a2d8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a6a2df:	07 
  a6a2e0:	62 01 74 40 58 fd    	vaddps zmm31,zmm17,zmm29
  a6a2e6:	62 91 74 40 5c c5    	vsubps zmm0,zmm17,zmm29
  a6a2ec:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a6a2f3:	06 
  a6a2f4:	62 41 2c 48 58 ed    	vaddps zmm29,zmm10,zmm13
  a6a2fa:	62 c1 2c 48 5c fd    	vsubps zmm23,zmm10,zmm13
  a6a300:	62 71 5c 40 58 d1    	vaddps zmm10,zmm20,zmm1
  a6a306:	62 e1 5c 40 5c e9    	vsubps zmm21,zmm20,zmm1
  a6a30c:	62 d1 5c 48 58 e9    	vaddps zmm5,zmm4,zmm9
  a6a312:	62 e1 34 48 5c e4    	vsubps zmm20,zmm9,zmm4
  a6a318:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a6a31f:	05 
  a6a320:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a6a327:	01 
  a6a328:	62 71 7c 48 58 c9    	vaddps zmm9,zmm0,zmm1
  a6a32e:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a6a334:	62 f1 6c 48 59 64 24 	vmulps zmm4,zmm2,ZMMWORD PTR [rsp+0xc0]
  a6a33b:	03 
  a6a33c:	62 71 3c 48 59 c2    	vmulps zmm8,zmm8,zmm2
  a6a342:	62 51 5c 48 5c f0    	vsubps zmm14,zmm4,zmm8
  a6a348:	62 51 5c 48 58 e8    	vaddps zmm13,zmm4,zmm8
  a6a34e:	62 91 24 40 58 e1    	vaddps zmm4,zmm27,zmm25
  a6a354:	62 01 34 40 5c db    	vsubps zmm27,zmm25,zmm27
  a6a35a:	62 71 24 48 59 c2    	vmulps zmm8,zmm11,zmm2
  a6a360:	62 61 6c 48 59 4c 24 	vmulps zmm25,zmm2,ZMMWORD PTR [rsp-0x40]
  a6a367:	ff 
  a6a368:	62 91 3c 48 58 c9    	vaddps zmm1,zmm8,zmm25
  a6a36e:	62 51 34 40 5c d8    	vsubps zmm11,zmm25,zmm8
  a6a374:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a6a37b:	fe 
  a6a37c:	62 f1 7c 48 58 d3    	vaddps zmm2,zmm0,zmm3
  a6a382:	62 f1 7c 48 5c fb    	vsubps zmm7,zmm0,zmm3
  a6a388:	62 21 1c 40 58 ca    	vaddps zmm25,zmm28,zmm18
  a6a38e:	62 21 1c 40 5c e2    	vsubps zmm28,zmm28,zmm18
  a6a394:	62 b1 7c 40 58 de    	vaddps zmm3,zmm16,zmm22
  a6a39a:	62 b1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm22
  a6a3a0:	62 91 3c 40 5c c2    	vsubps zmm0,zmm24,zmm26
  a6a3a6:	62 01 3c 40 58 c2    	vaddps zmm24,zmm24,zmm26
  a6a3ac:	62 81 64 40 58 f6    	vaddps zmm22,zmm19,zmm30
  a6a3b2:	62 81 64 40 5c de    	vsubps zmm19,zmm19,zmm30
  a6a3b8:	62 51 1c 48 58 c7    	vaddps zmm8,zmm12,zmm15
  a6a3be:	62 71 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm8
  a6a3c5:	62 51 1c 48 5c c7    	vsubps zmm8,zmm12,zmm15
  a6a3cb:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a6a3d2:	ff 
  a6a3d3:	62 71 04 40 58 c5    	vaddps zmm8,zmm31,zmm5
  a6a3d9:	62 71 04 40 5c fd    	vsubps zmm15,zmm31,zmm5
  a6a3df:	62 81 2c 48 58 d5    	vaddps zmm18,zmm10,zmm29
  a6a3e5:	62 91 2c 48 5c ed    	vsubps zmm5,zmm10,zmm29
  a6a3eb:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm5
  a6a3f2:	04 
  a6a3f3:	62 71 34 48 58 d1    	vaddps zmm10,zmm9,zmm1
  a6a3f9:	62 f1 34 48 5c c9    	vsubps zmm1,zmm9,zmm1
  a6a3ff:	62 51 5c 48 58 e6    	vaddps zmm12,zmm4,zmm14
  a6a405:	62 51 5c 48 5c ce    	vsubps zmm9,zmm4,zmm14
  a6a40b:	62 e1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm0
  a6a411:	62 f1 6c 48 5c e0    	vsubps zmm4,zmm2,zmm0
  a6a417:	62 01 64 48 58 d1    	vaddps zmm26,zmm3,zmm25
  a6a41d:	62 91 64 48 5c c1    	vsubps zmm0,zmm3,zmm25
  a6a423:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a6a42a:	03 
  a6a42b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a6a432:	02 
  a6a433:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a6a43a:	09 
  a6a43b:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a6a441:	62 f1 6c 48 5c db    	vsubps zmm3,zmm2,zmm3
  a6a447:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x200]
  a6a44e:	08 
  a6a44f:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x1c0]
  a6a456:	07 
  a6a457:	62 f1 0c 48 58 d5    	vaddps zmm2,zmm14,zmm5
  a6a45d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a6a464:	fe 
  a6a465:	62 51 54 48 5c f6    	vsubps zmm14,zmm5,zmm14
  a6a46b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a6a472:	06 
  a6a473:	62 21 6c 48 58 f7    	vaddps zmm30,zmm2,zmm23
  a6a479:	62 a1 6c 48 5c ff    	vsubps zmm23,zmm2,zmm23
  a6a47f:	62 21 54 40 58 ec    	vaddps zmm29,zmm21,zmm20
  a6a485:	62 b1 54 40 5c d4    	vsubps zmm2,zmm21,zmm20
  a6a48b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6a492:	02 
  a6a493:	62 c1 74 40 58 e5    	vaddps zmm20,zmm17,zmm13
  a6a499:	62 c1 74 40 5c cd    	vsubps zmm17,zmm17,zmm13
  a6a49f:	62 41 24 40 58 cb    	vaddps zmm25,zmm27,zmm11
  a6a4a5:	62 51 24 40 5c db    	vsubps zmm11,zmm27,zmm11
  a6a4ab:	62 81 44 48 58 ec    	vaddps zmm21,zmm7,zmm28
  a6a4b1:	62 91 44 48 5c fc    	vsubps zmm7,zmm7,zmm28
  a6a4b7:	62 01 4c 48 5c f8    	vsubps zmm31,zmm6,zmm24
  a6a4bd:	62 91 4c 48 58 d0    	vaddps zmm2,zmm6,zmm24
  a6a4c3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a6a4ca:	01 
  a6a4cb:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a6a4d1:	62 f1 7c 48 28 35 a5 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff65caa5]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6a4d8:	ca 65 ff 
  a6a4db:	62 22 4d 48 7f c3    	vpermt2ps zmm24,zmm6,zmm19
  a6a4e1:	62 f1 7c 48 28 2d d5 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65cad5]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6a4e8:	ca 65 ff 
  a6a4eb:	62 a2 55 48 7f f3    	vpermt2ps zmm22,zmm5,zmm19
  a6a4f1:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a6a4f7:	62 c2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm15
  a6a4fd:	62 52 55 48 7f c7    	vpermt2ps zmm8,zmm5,zmm15
  a6a503:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a6a509:	62 72 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm1
  a6a50f:	62 72 55 48 7f d1    	vpermt2ps zmm10,zmm5,zmm1
  a6a515:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a6a51b:	62 f2 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm4
  a6a521:	62 e2 55 48 7f c4    	vpermt2ps zmm16,zmm5,zmm4
  a6a527:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a6a52d:	62 f2 4d 48 7f e3    	vpermt2ps zmm4,zmm6,zmm3
  a6a533:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a6a539:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a6a53f:	62 b2 4d 48 7f df    	vpermt2ps zmm3,zmm6,zmm23
  a6a545:	62 22 55 48 7f f7    	vpermt2ps zmm30,zmm5,zmm23
  a6a54b:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a6a551:	62 a2 4d 48 7f f9    	vpermt2ps zmm23,zmm6,zmm17
  a6a557:	62 a2 55 48 7f e1    	vpermt2ps zmm20,zmm5,zmm17
  a6a55d:	62 a1 7c 48 28 cd    	vmovaps zmm17,zmm21
  a6a563:	62 e2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm7
  a6a569:	62 e2 55 48 7f ef    	vpermt2ps zmm21,zmm5,zmm7
  a6a56f:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a6a575:	62 f1 7c 48 28 15 81 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65c981]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6a57c:	c9 65 ff 
  a6a57f:	62 f2 6d 48 7f fc    	vpermt2ps zmm7,zmm2,zmm4
  a6a585:	62 71 7c 48 28 2d b1 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff65c9b1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6a58c:	c9 65 ff 
  a6a58f:	62 62 15 48 7f c4    	vpermt2ps zmm24,zmm13,zmm4
  a6a595:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a6a59b:	62 f2 6d 48 7f e3    	vpermt2ps zmm4,zmm2,zmm3
  a6a5a1:	62 e2 15 48 7f db    	vpermt2ps zmm19,zmm13,zmm3
  a6a5a7:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a6a5ad:	62 22 6d 48 7f df    	vpermt2ps zmm27,zmm2,zmm23
  a6a5b3:	62 32 15 48 7f ff    	vpermt2ps zmm15,zmm13,zmm23
  a6a5b9:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a6a5bf:	62 a2 6d 48 7f f9    	vpermt2ps zmm23,zmm2,zmm17
  a6a5c5:	62 b2 15 48 7f c9    	vpermt2ps zmm1,zmm13,zmm17
  a6a5cb:	62 e2 6d 48 7f f0    	vpermt2ps zmm22,zmm2,zmm0
  a6a5d1:	62 12 6d 48 7f c6    	vpermt2ps zmm8,zmm2,zmm30
  a6a5d7:	62 32 6d 48 7f d4    	vpermt2ps zmm10,zmm2,zmm20
  a6a5dd:	62 d1 cd 40 14 da    	vunpcklpd zmm3,zmm22,zmm10
  a6a5e3:	62 a2 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm21
  a6a5e9:	62 b1 bd 48 14 c0    	vunpcklpd zmm0,zmm8,zmm16
  a6a5ef:	62 81 c5 48 14 e3    	vunpcklpd zmm20,zmm7,zmm27
  a6a5f5:	62 81 c5 48 15 f3    	vunpckhpd zmm22,zmm7,zmm27
  a6a5fb:	62 b1 dd 48 14 ff    	vunpcklpd zmm7,zmm4,zmm23
  a6a601:	62 b1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm23
  a6a607:	62 51 bd 40 14 d7    	vunpcklpd zmm10,zmm24,zmm15
  a6a60d:	62 51 bd 40 15 c7    	vunpckhpd zmm8,zmm24,zmm15
  a6a613:	62 71 e5 40 14 f9    	vunpcklpd zmm15,zmm19,zmm1
  a6a619:	62 f1 e5 40 15 c9    	vunpckhpd zmm1,zmm19,zmm1
  a6a61f:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a6a625:	62 e1 7c 48 28 05 d1 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff65c7d1]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6a62c:	c7 65 ff 
  a6a62f:	62 e2 7d 40 7f cf    	vpermt2ps zmm17,zmm16,zmm7
  a6a635:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm17
  a6a63c:	05 
  a6a63d:	62 61 7c 48 28 05 f9 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff65c7f9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6a644:	c7 65 ff 
  a6a647:	62 e2 3d 40 7f e7    	vpermt2ps zmm20,zmm24,zmm7
  a6a64d:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  a6a653:	62 62 7d 40 7f e4    	vpermt2ps zmm28,zmm16,zmm4
  a6a659:	62 e2 3d 40 7f f4    	vpermt2ps zmm22,zmm24,zmm4
  a6a65f:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a6a665:	62 c2 7d 40 7f df    	vpermt2ps zmm19,zmm16,zmm15
  a6a66b:	62 52 3d 40 7f d7    	vpermt2ps zmm10,zmm24,zmm15
  a6a671:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a6a677:	62 e2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm1
  a6a67d:	62 72 3d 40 7f c1    	vpermt2ps zmm8,zmm24,zmm1
  a6a683:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a6a689:	62 e2 7d 40 7f e8    	vpermt2ps zmm21,zmm16,zmm0
  a6a68f:	62 f2 3d 40 7f d8    	vpermt2ps zmm3,zmm24,zmm0
  a6a695:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a6a69c:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6a6a2:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a6a6a9:	ff 
  a6a6aa:	62 f2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm4
  a6a6b0:	62 f2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm4
  a6a6b6:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a6a6bc:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a6a6c2:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a6a6c9:	04 
  a6a6ca:	62 f2 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm4
  a6a6d0:	62 e2 55 48 7f d4    	vpermt2ps zmm18,zmm5,zmm4
  a6a6d6:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a6a6dc:	62 d2 4d 48 7f e1    	vpermt2ps zmm4,zmm6,zmm9
  a6a6e2:	62 52 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm9
  a6a6e8:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a6a6ee:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0xc0]
  a6a6f5:	03 
  a6a6f6:	62 d2 4d 48 7f f9    	vpermt2ps zmm7,zmm6,zmm9
  a6a6fc:	62 42 55 48 7f d1    	vpermt2ps zmm26,zmm5,zmm9
  a6a702:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp-0x80]
  a6a709:	fe 
  a6a70a:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a6a710:	62 52 4d 48 7f ce    	vpermt2ps zmm9,zmm6,zmm14
  a6a716:	62 52 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm14
  a6a71c:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a6a722:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a6a728:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x80]
  a6a72f:	02 
  a6a730:	62 52 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm15
  a6a736:	62 42 55 48 7f ef    	vpermt2ps zmm29,zmm5,zmm15
  a6a73c:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a6a742:	62 52 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm11
  a6a748:	62 42 55 48 7f cb    	vpermt2ps zmm25,zmm5,zmm11
  a6a74e:	62 11 7c 48 28 df    	vmovaps zmm11,zmm31
  a6a754:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x40]
  a6a75b:	01 
  a6a75c:	62 12 4d 48 7f de    	vpermt2ps zmm11,zmm6,zmm30
  a6a762:	62 02 55 48 7f fe    	vpermt2ps zmm31,zmm5,zmm30
  a6a768:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a6a76e:	62 d2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm9
  a6a774:	62 d2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm9
  a6a77a:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a6a780:	62 52 6d 48 7f ce    	vpermt2ps zmm9,zmm2,zmm14
  a6a786:	62 d2 15 48 7f ce    	vpermt2ps zmm1,zmm13,zmm14
  a6a78c:	62 71 7c 48 28 f4    	vmovaps zmm14,zmm4
  a6a792:	62 52 6d 48 7f f7    	vpermt2ps zmm14,zmm2,zmm15
  a6a798:	62 d2 15 48 7f e7    	vpermt2ps zmm4,zmm13,zmm15
  a6a79e:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a6a7a4:	62 52 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm11
  a6a7aa:	62 d2 15 48 7f fb    	vpermt2ps zmm7,zmm13,zmm11
  a6a7b0:	62 82 6d 48 7f cb    	vpermt2ps zmm17,zmm2,zmm27
  a6a7b6:	62 82 6d 48 7f d5    	vpermt2ps zmm18,zmm2,zmm29
  a6a7bc:	62 12 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm25
  a6a7c2:	62 41 f5 40 14 f4    	vunpcklpd zmm30,zmm17,zmm12
  a6a7c8:	62 02 6d 48 7f d7    	vpermt2ps zmm26,zmm2,zmm31
  a6a7ce:	62 91 ed 40 14 d2    	vunpcklpd zmm2,zmm18,zmm26
  a6a7d4:	62 41 cd 48 14 ee    	vunpcklpd zmm29,zmm6,zmm14
  a6a7da:	62 51 cd 48 15 e6    	vunpckhpd zmm12,zmm6,zmm14
  a6a7e0:	62 d1 b5 48 14 f7    	vunpcklpd zmm6,zmm9,zmm15
  a6a7e6:	62 51 b5 48 15 cf    	vunpckhpd zmm9,zmm9,zmm15
  a6a7ec:	62 61 fd 48 14 d4    	vunpcklpd zmm26,zmm0,zmm4
  a6a7f2:	62 f1 fd 48 15 ec    	vunpckhpd zmm5,zmm0,zmm4
  a6a7f8:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  a6a7fe:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  a6a804:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a6a80a:	62 f2 7d 40 7f e6    	vpermt2ps zmm4,zmm16,zmm6
  a6a810:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a6a817:	01 
  a6a818:	62 62 3d 40 7f ee    	vpermt2ps zmm29,zmm24,zmm6
  a6a81e:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a6a824:	62 d2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm9
  a6a82a:	62 52 3d 40 7f e1    	vpermt2ps zmm12,zmm24,zmm9
  a6a830:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a6a836:	62 f2 7d 40 7f e0    	vpermt2ps zmm4,zmm16,zmm0
  a6a83c:	62 62 3d 40 7f d0    	vpermt2ps zmm26,zmm24,zmm0
  a6a842:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a6a848:	62 f2 7d 40 7f c1    	vpermt2ps zmm0,zmm16,zmm1
  a6a84e:	62 f2 3d 40 7f e9    	vpermt2ps zmm5,zmm24,zmm1
  a6a854:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a6a85a:	62 f2 7d 40 7f ca    	vpermt2ps zmm1,zmm16,zmm2
  a6a860:	62 62 3d 40 7f f2    	vpermt2ps zmm30,zmm24,zmm2
  a6a866:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a6a86d:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a6a874:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a6a87b:	fe 
  a6a87c:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a6a883:	62 f1 7c 48 10 79 05 	vmovups zmm7,ZMMWORD PTR [rcx+0x140]
  a6a88a:	62 61 1c 40 59 da    	vmulps zmm27,zmm28,zmm2
  a6a890:	62 62 4d 48 bc df    	vfnmadd231ps zmm27,zmm6,zmm7
  a6a896:	62 61 7c 48 10 41 11 	vmovups zmm24,ZMMWORD PTR [rcx+0x440]
  a6a89d:	62 71 7c 48 10 71 09 	vmovups zmm14,ZMMWORD PTR [rcx+0x240]
  a6a8a4:	62 71 7c 48 10 59 08 	vmovups zmm11,ZMMWORD PTR [rcx+0x200]
  a6a8ab:	62 c1 64 40 59 d3    	vmulps zmm18,zmm19,zmm11
  a6a8b1:	62 c2 5d 48 bc d6    	vfnmadd231ps zmm18,zmm4,zmm14
  a6a8b7:	62 51 5c 48 59 db    	vmulps zmm11,zmm4,zmm11
  a6a8bd:	62 e1 7c 48 10 41 0d 	vmovups zmm16,ZMMWORD PTR [rcx+0x340]
  a6a8c4:	62 32 0d 48 b8 db    	vfmadd231ps zmm11,zmm14,zmm19
  a6a8ca:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a6a8d1:	62 71 44 40 59 f4    	vmulps zmm14,zmm23,zmm4
  a6a8d7:	62 32 7d 48 bc f0    	vfnmadd231ps zmm14,zmm0,zmm16
  a6a8dd:	62 71 7c 48 59 cc    	vmulps zmm9,zmm0,zmm4
  a6a8e3:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a6a8ea:	62 32 7d 40 b8 cf    	vfmadd231ps zmm9,zmm16,zmm23
  a6a8f0:	62 e1 54 40 59 d8    	vmulps zmm19,zmm21,zmm0
  a6a8f6:	62 82 75 48 bc d8    	vfnmadd231ps zmm19,zmm1,zmm24
  a6a8fc:	62 b1 24 40 5c e3    	vsubps zmm4,zmm27,zmm19
  a6a902:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a6a909:	62 e1 4c 48 59 c2    	vmulps zmm16,zmm6,zmm2
  a6a90f:	62 c1 6c 40 5c fe    	vsubps zmm23,zmm18,zmm14
  a6a915:	62 82 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm28
  a6a91b:	62 62 7d 48 18 0d 33 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff60ae33]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6a922:	ae 60 ff 
  a6a925:	62 11 44 40 59 e9    	vmulps zmm13,zmm23,zmm25
  a6a92b:	62 e2 7d 48 18 0d 6b 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff60aa6b]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6a932:	aa 60 ff 
  a6a935:	62 32 5d 48 b8 e9    	vfmadd231ps zmm13,zmm4,zmm17
  a6a93b:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a6a942:	ff 
  a6a943:	62 d1 24 48 58 e1    	vaddps zmm4,zmm11,zmm9
  a6a949:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a6a950:	04 
  a6a951:	62 61 74 48 59 e0    	vmulps zmm28,zmm1,zmm0
  a6a957:	62 22 3d 40 b8 e5    	vfmadd231ps zmm28,zmm24,zmm21
  a6a95d:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a6a964:	62 f1 7c 48 10 49 0e 	vmovups zmm1,ZMMWORD PTR [rcx+0x380]
  a6a96b:	62 e1 54 48 59 e9    	vmulps zmm21,zmm5,zmm1
  a6a971:	62 e2 3d 48 b8 e8    	vfmadd231ps zmm21,zmm8,zmm0
  a6a977:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a6a97d:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a6a984:	62 f2 7d 48 bc cd    	vfnmadd231ps zmm1,zmm0,zmm5
  a6a98a:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a6a991:	62 f1 1c 48 59 c5    	vmulps zmm0,zmm12,zmm5
  a6a997:	62 f2 4d 40 b8 c2    	vfmadd231ps zmm0,zmm22,zmm2
  a6a99d:	62 f1 4c 40 59 fd    	vmulps zmm7,zmm22,zmm5
  a6a9a3:	62 f1 7c 48 10 69 13 	vmovups zmm5,ZMMWORD PTR [rcx+0x4c0]
  a6a9aa:	62 d2 6d 48 bc fc    	vfnmadd231ps zmm7,zmm2,zmm12
  a6a9b0:	62 71 7c 48 10 41 12 	vmovups zmm8,ZMMWORD PTR [rcx+0x480]
  a6a9b7:	62 d1 0c 40 59 d0    	vmulps zmm2,zmm30,zmm8
  a6a9bd:	62 f2 65 48 b8 d5    	vfmadd231ps zmm2,zmm3,zmm5
  a6a9c3:	62 c1 64 48 59 f0    	vmulps zmm22,zmm3,zmm8
  a6a9c9:	62 01 7c 40 58 fc    	vaddps zmm31,zmm16,zmm28
  a6a9cf:	62 82 55 48 bc f6    	vfnmadd231ps zmm22,zmm5,zmm30
  a6a9d5:	62 e2 7d 48 18 0d 09 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff60ad09]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6a9dc:	ad 60 ff 
  a6a9df:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a6a9e5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a6a9ec:	01 
  a6a9ed:	62 72 05 40 a8 e3    	vfmadd213ps zmm12,zmm31,zmm3
  a6a9f3:	62 f2 7d 48 18 35 47 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff60ac47]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6a9fa:	ac 60 ff 
  a6a9fd:	62 72 5d 48 bc e6    	vfnmadd231ps zmm12,zmm4,zmm6
  a6aa03:	62 41 14 40 59 c7    	vmulps zmm24,zmm29,zmm15
  a6aa09:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a6aa10:	fe 
  a6aa11:	62 62 5d 40 b8 c4    	vfmadd231ps zmm24,zmm20,zmm4
  a6aa17:	62 41 5c 40 59 f7    	vmulps zmm30,zmm20,zmm15
  a6aa1d:	62 71 7c 48 10 79 0b 	vmovups zmm15,ZMMWORD PTR [rcx+0x2c0]
  a6aa24:	62 02 5d 48 bc f5    	vfnmadd231ps zmm30,zmm4,zmm29
  a6aa2a:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a6aa31:	62 71 2c 40 59 c5    	vmulps zmm8,zmm26,zmm5
  a6aa37:	62 52 2d 48 b8 c7    	vfmadd231ps zmm8,zmm10,zmm15
  a6aa3d:	62 71 2c 48 59 d5    	vmulps zmm10,zmm10,zmm5
  a6aa43:	62 d1 14 48 58 e4    	vaddps zmm4,zmm13,zmm12
  a6aa49:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a6aa50:	fe 
  a6aa51:	62 12 05 48 bc d2    	vfnmadd231ps zmm10,zmm15,zmm26
  a6aa57:	62 11 6c 48 58 e8    	vaddps zmm13,zmm2,zmm24
  a6aa5d:	62 71 54 40 58 f8    	vaddps zmm15,zmm21,zmm0
  a6aa63:	62 d1 6c 40 58 e6    	vaddps zmm4,zmm18,zmm14
  a6aa69:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a6aa6f:	62 c2 05 48 a8 e0    	vfmadd213ps zmm20,zmm15,zmm8
  a6aa75:	62 e2 15 48 bc e6    	vfnmadd231ps zmm20,zmm13,zmm6
  a6aa7b:	62 31 24 40 58 f3    	vaddps zmm14,zmm27,zmm19
  a6aa81:	62 61 74 48 5c d7    	vsubps zmm26,zmm1,zmm7
  a6aa87:	62 01 7c 40 5c dc    	vsubps zmm27,zmm16,zmm28
  a6aa8d:	62 01 4c 40 5c e6    	vsubps zmm28,zmm22,zmm30
  a6aa93:	62 41 24 48 5c e9    	vsubps zmm29,zmm11,zmm9
  a6aa99:	62 81 1c 40 59 d9    	vmulps zmm19,zmm28,zmm25
  a6aa9f:	62 72 7d 48 18 0d f7 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff60a8f7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6aaa6:	a8 60 ff 
  a6aaa9:	62 c2 2d 40 b8 d9    	vfmadd231ps zmm19,zmm26,zmm9
  a6aaaf:	62 11 4c 40 58 de    	vaddps zmm11,zmm22,zmm30
  a6aab5:	62 b1 5c 40 58 eb    	vaddps zmm5,zmm20,zmm19
  a6aabb:	62 e1 74 48 58 c7    	vaddps zmm16,zmm1,zmm7
  a6aac1:	62 81 14 40 59 f1    	vmulps zmm22,zmm29,zmm25
  a6aac7:	62 c2 25 40 b8 f1    	vfmadd231ps zmm22,zmm27,zmm9
  a6aacd:	62 f1 54 40 5c f8    	vsubps zmm7,zmm21,zmm0
  a6aad3:	62 91 6c 48 5c d0    	vsubps zmm2,zmm2,zmm24
  a6aad9:	62 91 6c 48 59 c9    	vmulps zmm1,zmm2,zmm25
  a6aadf:	62 d2 45 48 b8 c9    	vfmadd231ps zmm1,zmm7,zmm9
  a6aae5:	62 e1 34 40 59 2c 24 	vmulps zmm21,zmm25,ZMMWORD PTR [rsp]
  a6aaec:	62 a2 35 48 bc ef    	vfnmadd231ps zmm21,zmm9,zmm23
  a6aaf2:	62 e1 7c 48 28 fe    	vmovaps zmm23,zmm6
  a6aaf8:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a6aafe:	62 e2 05 40 ac fb    	vfnmadd213ps zmm23,zmm31,zmm3
  a6ab04:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a6ab0b:	04 
  a6ab0c:	62 a2 65 48 b8 f9    	vfmadd231ps zmm23,zmm3,zmm17
  a6ab12:	62 b1 54 40 58 c7    	vaddps zmm0,zmm21,zmm23
  a6ab18:	62 01 2c 40 59 c1    	vmulps zmm24,zmm26,zmm25
  a6ab1e:	62 02 35 48 bc c4    	vfnmadd231ps zmm24,zmm9,zmm28
  a6ab24:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a6ab2a:	62 42 05 48 ac d0    	vfnmadd213ps zmm26,zmm15,zmm8
  a6ab30:	62 22 15 48 b8 d1    	vfmadd231ps zmm26,zmm13,zmm17
  a6ab36:	62 01 24 40 59 d9    	vmulps zmm27,zmm27,zmm25
  a6ab3c:	62 02 35 48 bc dd    	vfnmadd231ps zmm27,zmm9,zmm29
  a6ab42:	62 01 2c 40 58 e0    	vaddps zmm28,zmm26,zmm24
  a6ab48:	62 91 44 48 59 f9    	vmulps zmm7,zmm7,zmm25
  a6ab4e:	62 f2 35 48 bc fa    	vfnmadd231ps zmm7,zmm9,zmm2
  a6ab54:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a6ab5a:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x140]
  a6ab61:	05 
  a6ab62:	62 b2 0d 48 ac d2    	vfnmadd213ps zmm2,zmm14,zmm18
  a6ab68:	62 b2 5d 48 b8 d1    	vfmadd231ps zmm2,zmm4,zmm17
  a6ab6e:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a6ab74:	62 81 6c 48 5c fb    	vsubps zmm23,zmm2,zmm27
  a6ab7a:	62 01 2c 40 5c c0    	vsubps zmm24,zmm26,zmm24
  a6ab80:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a6ab86:	62 42 7d 40 ac d2    	vfnmadd213ps zmm26,zmm16,zmm10
  a6ab8c:	62 22 25 48 b8 d1    	vfmadd231ps zmm26,zmm11,zmm17
  a6ab92:	62 91 6c 48 58 d3    	vaddps zmm2,zmm2,zmm27
  a6ab98:	62 61 2c 40 5c df    	vsubps zmm27,zmm26,zmm7
  a6ab9e:	62 f1 2c 40 58 ff    	vaddps zmm7,zmm26,zmm7
  a6aba4:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a6abaa:	62 22 0d 48 a8 d2    	vfmadd213ps zmm26,zmm14,zmm18
  a6abb0:	62 62 5d 48 bc d6    	vfnmadd231ps zmm26,zmm4,zmm6
  a6abb6:	62 71 1c 48 5c 64 24 	vsubps zmm12,zmm12,ZMMWORD PTR [rsp-0x40]
  a6abbd:	ff 
  a6abbe:	62 21 2c 40 5c ce    	vsubps zmm25,zmm26,zmm22
  a6abc4:	62 a1 5c 40 5c db    	vsubps zmm19,zmm20,zmm19
  a6abca:	62 c2 7d 40 a8 ca    	vfmadd213ps zmm17,zmm16,zmm10
  a6abd0:	62 e2 25 48 bc ce    	vfnmadd231ps zmm17,zmm11,zmm6
  a6abd6:	62 a1 2c 40 58 f6    	vaddps zmm22,zmm26,zmm22
  a6abdc:	62 61 74 40 5c d1    	vsubps zmm26,zmm17,zmm1
  a6abe2:	62 e1 74 40 58 e1    	vaddps zmm20,zmm17,zmm1
  a6abe8:	62 91 04 40 58 ce    	vaddps zmm1,zmm31,zmm30
  a6abee:	62 f1 64 48 58 f1    	vaddps zmm6,zmm3,zmm1
  a6abf4:	62 d1 3c 48 58 cf    	vaddps zmm1,zmm8,zmm15
  a6abfa:	62 51 74 48 58 c5    	vaddps zmm8,zmm1,zmm13
  a6ac00:	62 d1 6c 40 58 ce    	vaddps zmm1,zmm18,zmm14
  a6ac06:	62 71 74 48 58 cc    	vaddps zmm9,zmm1,zmm4
  a6ac0c:	62 b1 2c 48 58 c8    	vaddps zmm1,zmm10,zmm16
  a6ac12:	62 51 74 48 58 d3    	vaddps zmm10,zmm1,zmm11
  a6ac18:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a6ac1f:	fe 
  a6ac20:	62 f1 74 48 5c dd    	vsubps zmm3,zmm1,zmm5
  a6ac26:	62 f1 74 48 58 ed    	vaddps zmm5,zmm1,zmm5
  a6ac2c:	62 91 34 40 5c e2    	vsubps zmm4,zmm25,zmm26
  a6ac32:	62 11 34 40 58 da    	vaddps zmm11,zmm25,zmm26
  a6ac38:	62 91 7c 48 58 cc    	vaddps zmm1,zmm0,zmm28
  a6ac3e:	62 11 7c 48 5c ec    	vsubps zmm13,zmm0,zmm28
  a6ac44:	62 91 44 40 58 c3    	vaddps zmm0,zmm23,zmm27
  a6ac4a:	62 11 44 40 5c f3    	vsubps zmm14,zmm23,zmm27
  a6ac50:	62 11 54 40 5c f8    	vsubps zmm15,zmm21,zmm24
  a6ac56:	62 81 54 40 58 c0    	vaddps zmm16,zmm21,zmm24
  a6ac5c:	62 e1 6c 48 5c cf    	vsubps zmm17,zmm2,zmm7
  a6ac62:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a6ac68:	62 b1 1c 48 58 fb    	vaddps zmm7,zmm12,zmm19
  a6ac6e:	62 31 1c 48 5c e3    	vsubps zmm12,zmm12,zmm19
  a6ac74:	62 a1 4c 40 58 d4    	vaddps zmm18,zmm22,zmm20
  a6ac7a:	62 a1 4c 40 5c dc    	vsubps zmm19,zmm22,zmm20
  a6ac80:	62 c1 4c 48 5c e0    	vsubps zmm20,zmm6,zmm8
  a6ac86:	62 d1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm8
  a6ac8c:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a6ac92:	62 51 34 48 58 ca    	vaddps zmm9,zmm9,zmm10
  a6ac98:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a6ac9e:	62 e1 7c 48 28 2d 18 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff629818]        # 944c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21970>
  a6aca5:	98 62 ff 
  a6aca8:	62 72 55 40 7f d6    	vpermt2ps zmm10,zmm21,zmm6
  a6acae:	62 e1 7c 48 28 35 48 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff629848]        # 94500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x219b0>
  a6acb5:	98 62 ff 
  a6acb8:	62 72 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm6
  a6acbe:	62 71 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm9
  a6acc5:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm10
  a6accc:	01 
  a6accd:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a6acd3:	62 d2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm12
  a6acd9:	62 c2 4d 40 7f dc    	vpermt2ps zmm19,zmm22,zmm12
  a6acdf:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm19
  a6ace6:	02 
  a6ace7:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm6
  a6acee:	03 
  a6acef:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a6acf5:	62 b2 55 40 7f f0    	vpermt2ps zmm6,zmm21,zmm16
  a6acfb:	62 b2 4d 40 7f d0    	vpermt2ps zmm2,zmm22,zmm16
  a6ad01:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm2
  a6ad08:	04 
  a6ad09:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm6
  a6ad10:	05 
  a6ad11:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a6ad17:	62 d2 55 40 7f d5    	vpermt2ps zmm2,zmm21,zmm13
  a6ad1d:	62 52 4d 40 7f f5    	vpermt2ps zmm14,zmm22,zmm13
  a6ad23:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm14
  a6ad2a:	06 
  a6ad2b:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm2
  a6ad32:	07 
  a6ad33:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a6ad39:	62 f2 55 40 7f d5    	vpermt2ps zmm2,zmm21,zmm5
  a6ad3f:	62 72 4d 40 7f dd    	vpermt2ps zmm11,zmm22,zmm5
  a6ad45:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm11
  a6ad4c:	08 
  a6ad4d:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm2
  a6ad54:	09 
  a6ad55:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a6ad5b:	62 b2 55 40 7f d4    	vpermt2ps zmm2,zmm21,zmm20
  a6ad61:	62 32 4d 40 7f c4    	vpermt2ps zmm8,zmm22,zmm20
  a6ad67:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm8
  a6ad6e:	0a 
  a6ad6f:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm2
  a6ad76:	0b 
  a6ad77:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a6ad7d:	62 f2 55 40 7f d7    	vpermt2ps zmm2,zmm21,zmm7
  a6ad83:	62 e2 4d 40 7f d7    	vpermt2ps zmm18,zmm22,zmm7
  a6ad89:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm18
  a6ad90:	0c 
  a6ad91:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm2
  a6ad98:	0d 
  a6ad99:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a6ad9f:	62 d2 55 40 7f d7    	vpermt2ps zmm2,zmm21,zmm15
  a6ada5:	62 c2 4d 40 7f cf    	vpermt2ps zmm17,zmm22,zmm15
  a6adab:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm17
  a6adb2:	0e 
  a6adb3:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm2
  a6adba:	0f 
  a6adbb:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a6adc1:	62 f2 55 40 7f d1    	vpermt2ps zmm2,zmm21,zmm1
  a6adc7:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a6adcd:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm0
  a6add4:	10 
  a6add5:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm2
  a6addc:	11 
  a6addd:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a6ade3:	62 f2 55 40 7f c3    	vpermt2ps zmm0,zmm21,zmm3
  a6ade9:	62 f2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm3
  a6adef:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm4
  a6adf6:	12 
  a6adf7:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm0
  a6adfe:	13 
  a6adff:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a6ae06:	48 39 d0             	cmp    rax,rdx
  a6ae09:	0f 85 d1 ee ff ff    	jne    a69ce0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a6ae0f:	48 81 c4 48 03 00 00 	add    rsp,0x348
  a6ae16:	c5 f8 77             	vzeroupper
  a6ae19:	c3                   	ret
