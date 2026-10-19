
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3c940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3c940:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68a636]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3c947:	a6 68 ff 
  a3c94a:	62 61 7c 48 28 15 ac 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff68a5ac]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3c951:	a5 68 ff 
  a3c954:	62 f1 7c 48 28 15 e2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68a5e2]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3c95b:	a5 68 ff 
  a3c95e:	62 61 7c 48 28 2d 98 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff68a498]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3c965:	a4 68 ff 
  a3c968:	62 61 7c 48 28 35 ce 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff68a4ce]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3c96f:	a4 68 ff 
  a3c972:	48 c1 e2 07          	shl    rdx,0x7
  a3c976:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3c97a:	31 d2                	xor    edx,edx
  a3c97c:	62 f1 7c 48 28 2d 7a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff654f7a]        # 91900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1edb0>
  a3c983:	4f 65 ff 
  a3c986:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a3c98a:	62 71 7c 48 28 0d ac 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff654fac]        # 91940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1edf0>
  a3c991:	4f 65 ff 
  a3c994:	62 62 7d 48 18 25 36 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff638936]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3c99b:	89 63 ff 
  a3c99e:	62 61 7c 48 28 3d d8 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff654fd8]        # 91980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ee30>
  a3c9a5:	4f 65 ff 
  a3c9a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a3c9af:	00 
  a3c9b0:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a3c9b5:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a3c9bb:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a3c9c2:	10 
  a3c9c3:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a3c9ca:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a3c9d0:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a3c9d7:	30 
  a3c9d8:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a3c9df:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a3c9e5:	62 72 55 48 7f ee    	vpermt2ps zmm13,zmm5,zmm6
  a3c9eb:	62 72 35 48 7f e6    	vpermt2ps zmm12,zmm9,zmm6
  a3c9f1:	c5 78 10 74 17 50    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x50]
  a3c9f7:	c4 63 09 21 74 17 54 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x54],0x10
  a3c9fe:	10 
  a3c9ff:	c4 62 79 18 7c 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x58]
  a3ca06:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a3ca0d:	30 00 00 00 
  a3ca11:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a3ca17:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a3ca1e:	30 
  a3ca1f:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a3ca26:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a3ca2c:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a3ca32:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a3ca39:	00 00 
  a3ca3b:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a3ca42:	00 00 00 10 
  a3ca46:	c4 e2 79 18 bc 17 88 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x88]
  a3ca4d:	00 00 00 
  a3ca50:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a3ca56:	c4 c3 41 0c ff 03    	vblendps xmm7,xmm7,xmm15,0x3
  a3ca5c:	c4 e3 41 21 bc 17 8c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a3ca63:	00 00 00 30 
  a3ca67:	c5 7c 10 7c 17 60    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x60]
  a3ca6d:	62 e3 05 48 18 cf 02 	vinsertf32x4 zmm17,zmm15,xmm7,0x2
  a3ca74:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a3ca7a:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a3ca80:	62 e2 35 48 7f ce    	vpermt2ps zmm17,zmm9,zmm6
  a3ca86:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  a3ca8d:	00 00 
  a3ca8f:	c4 e3 41 21 bc 17 b4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a3ca96:	00 00 00 10 
  a3ca9a:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  a3caa1:	90 00 00 00 
  a3caa5:	c4 62 79 18 84 17 b8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0xb8]
  a3caac:	00 00 00 
  a3caaf:	c4 e3 39 0c ff 03    	vblendps xmm7,xmm8,xmm7,0x3
  a3cab5:	c4 e3 41 21 bc 17 bc 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a3cabc:	00 00 00 30 
  a3cac0:	62 e3 6d 40 18 df 02 	vinsertf32x4 zmm19,zmm18,xmm7,0x2
  a3cac7:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a3cacd:	62 e2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm6
  a3cad3:	62 e2 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm6
  a3cad9:	c5 fc 10 bc 17 c0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xc0]
  a3cae0:	00 00 
  a3cae2:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  a3cae9:	00 00 
  a3caeb:	c4 63 39 21 84 17 e4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a3caf2:	00 00 00 10 
  a3caf6:	c4 62 79 18 94 17 e8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xe8]
  a3cafd:	00 00 00 
  a3cb00:	c4 43 29 0c c0 03    	vblendps xmm8,xmm10,xmm8,0x3
  a3cb06:	c4 63 39 21 84 17 ec 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xec],0x30
  a3cb0d:	00 00 00 30 
  a3cb11:	62 c3 45 48 18 e0 02 	vinsertf32x4 zmm20,zmm7,xmm8,0x2
  a3cb18:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a3cb1e:	62 f2 55 48 7f fe    	vpermt2ps zmm7,zmm5,zmm6
  a3cb24:	62 e2 35 48 7f e6    	vpermt2ps zmm20,zmm9,zmm6
  a3cb2a:	c5 78 10 84 17 10 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x110]
  a3cb31:	00 00 
  a3cb33:	c4 63 39 21 84 17 14 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x114],0x10
  a3cb3a:	01 00 00 10 
  a3cb3e:	c4 62 79 18 94 17 18 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x118]
  a3cb45:	01 00 00 
  a3cb48:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0xf0]
  a3cb4f:	f0 00 00 00 
  a3cb53:	c4 43 29 0c c0 03    	vblendps xmm8,xmm10,xmm8,0x3
  a3cb59:	c4 63 39 21 84 17 1c 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a3cb60:	01 00 00 30 
  a3cb64:	62 53 55 40 18 c0 02 	vinsertf32x4 zmm8,zmm21,xmm8,0x2
  a3cb6b:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a3cb71:	62 72 55 48 7f d6    	vpermt2ps zmm10,zmm5,zmm6
  a3cb77:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x140]
  a3cb7e:	14 
  a3cb7f:	62 f3 55 00 21 5c 17 	vinsertps xmm3,xmm21,DWORD PTR [rdi+rdx*1+0x144],0x10
  a3cb86:	51 10 
  a3cb88:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x148]
  a3cb8f:	01 00 00 
  a3cb92:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  a3cb98:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  a3cb9e:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a3cba5:	01 00 00 30 
  a3cba9:	c5 fc 10 a4 17 20 01 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x120]
  a3cbb0:	00 00 
  a3cbb2:	62 f3 5d 48 18 db 02 	vinsertf32x4 zmm3,zmm4,xmm3,0x2
  a3cbb9:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3cbbf:	62 f2 55 48 7f e6    	vpermt2ps zmm4,zmm5,zmm6
  a3cbc5:	62 f2 35 48 7f de    	vpermt2ps zmm3,zmm9,zmm6
  a3cbcb:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x170]
  a3cbd2:	17 
  a3cbd3:	62 73 55 00 21 5c 17 	vinsertps xmm11,xmm21,DWORD PTR [rdi+rdx*1+0x174],0x10
  a3cbda:	5d 10 
  a3cbdc:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x150]
  a3cbe3:	50 01 00 00 
  a3cbe7:	c4 e2 79 18 8c 17 78 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x178]
  a3cbee:	01 00 00 
  a3cbf1:	c4 c3 71 0c cb 03    	vblendps xmm1,xmm1,xmm11,0x3
  a3cbf7:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a3cbfe:	01 00 00 30 
  a3cc02:	62 f3 55 40 18 c9 02 	vinsertf32x4 zmm1,zmm21,xmm1,0x2
  a3cc09:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a3cc0f:	62 72 55 48 7f de    	vpermt2ps zmm11,zmm5,zmm6
  a3cc15:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a3cc1b:	62 e1 14 48 58 ef    	vaddps zmm21,zmm13,zmm7
  a3cc21:	62 f1 14 48 5c ff    	vsubps zmm7,zmm13,zmm7
  a3cc27:	62 71 74 40 58 eb    	vaddps zmm13,zmm17,zmm3
  a3cc2d:	62 f1 74 40 5c db    	vsubps zmm3,zmm17,zmm3
  a3cc33:	62 c1 7c 40 58 ca    	vaddps zmm17,zmm16,zmm10
  a3cc39:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a3cc3f:	62 c1 0c 48 58 c0    	vaddps zmm16,zmm14,zmm8
  a3cc45:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a3cc4b:	62 71 64 40 58 f1    	vaddps zmm14,zmm19,zmm1
  a3cc51:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a3cc57:	62 c1 6c 40 58 db    	vaddps zmm19,zmm18,zmm11
  a3cc5d:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a3cc63:	62 a1 1c 48 58 d4    	vaddps zmm18,zmm12,zmm20
  a3cc69:	62 31 1c 48 5c e4    	vsubps zmm12,zmm12,zmm20
  a3cc6f:	62 e1 04 48 58 e4    	vaddps zmm20,zmm15,zmm4
  a3cc75:	62 d1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm15
  a3cc7b:	62 51 2c 48 58 f8    	vaddps zmm15,zmm10,zmm8
  a3cc81:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a3cc87:	62 51 74 48 5c d3    	vsubps zmm10,zmm1,zmm11
  a3cc8d:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a3cc93:	62 31 54 40 58 dc    	vaddps zmm11,zmm21,zmm20
  a3cc99:	62 a1 54 40 5c e4    	vsubps zmm20,zmm21,zmm20
  a3cc9f:	62 c1 7c 40 58 ee    	vaddps zmm21,zmm16,zmm14
  a3cca5:	62 51 7c 40 5c f6    	vsubps zmm14,zmm16,zmm14
  a3ccab:	62 c1 6c 40 58 c5    	vaddps zmm16,zmm18,zmm13
  a3ccb1:	62 51 6c 40 5c ed    	vsubps zmm13,zmm18,zmm13
  a3ccb7:	62 a1 74 40 58 d3    	vaddps zmm18,zmm17,zmm19
  a3ccbd:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a3ccc3:	62 e1 44 48 58 f3    	vaddps zmm22,zmm7,zmm3
  a3ccc9:	62 e2 7d 48 18 0d c9 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff6386c9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3ccd0:	86 63 ff 
  a3ccd3:	62 31 04 48 59 f9    	vmulps zmm15,zmm15,zmm17
  a3ccd9:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a3ccdf:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a3cce5:	62 b1 74 48 59 c9    	vmulps zmm1,zmm1,zmm17
  a3cceb:	62 f1 44 48 5c db    	vsubps zmm3,zmm7,zmm3
  a3ccf1:	62 f1 3c 48 5c f9    	vsubps zmm7,zmm8,zmm1
  a3ccf7:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a3ccfd:	62 51 5c 48 58 c4    	vaddps zmm8,zmm4,zmm12
  a3cd03:	62 f1 1c 48 5c e4    	vsubps zmm4,zmm12,zmm4
  a3cd09:	62 51 04 48 58 e2    	vaddps zmm12,zmm15,zmm10
  a3cd0f:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a3cd15:	62 21 24 48 58 da    	vaddps zmm27,zmm11,zmm18
  a3cd1b:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a3cd21:	62 a1 7c 40 58 cd    	vaddps zmm17,zmm16,zmm21
  a3cd27:	62 a1 7c 40 5c fd    	vsubps zmm23,zmm16,zmm21
  a3cd2d:	62 c1 4c 40 58 c4    	vaddps zmm16,zmm22,zmm12
  a3cd33:	62 51 4c 40 5c e4    	vsubps zmm12,zmm22,zmm12
  a3cd39:	62 71 3c 48 58 ff    	vaddps zmm15,zmm8,zmm7
  a3cd3f:	62 61 3c 48 5c c7    	vsubps zmm24,zmm8,zmm7
  a3cd45:	62 d1 5c 40 58 fe    	vaddps zmm7,zmm20,zmm14
  a3cd4b:	62 51 5c 40 5c c6    	vsubps zmm8,zmm20,zmm14
  a3cd51:	62 c1 64 40 58 ed    	vaddps zmm21,zmm19,zmm13
  a3cd57:	62 21 14 48 5c cb    	vsubps zmm25,zmm13,zmm19
  a3cd5d:	62 71 64 48 58 e9    	vaddps zmm13,zmm3,zmm1
  a3cd63:	62 f1 64 48 5c c9    	vsubps zmm1,zmm3,zmm1
  a3cd69:	62 c1 5c 48 58 e2    	vaddps zmm20,zmm4,zmm10
  a3cd6f:	62 c1 5c 48 5c f2    	vsubps zmm22,zmm4,zmm10
  a3cd75:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a3cd7b:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a3cd81:	62 f2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm6
  a3cd87:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a3cd8d:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a3cd93:	62 72 7d 48 7f c6    	vpermt2ps zmm8,zmm0,zmm6
  a3cd99:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a3cd9f:	62 d2 2d 40 7f db    	vpermt2ps zmm3,zmm26,zmm11
  a3cda5:	62 42 6d 48 7f db    	vpermt2ps zmm27,zmm2,zmm11
  a3cdab:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a3cdb1:	62 d2 2d 40 7f e4    	vpermt2ps zmm4,zmm26,zmm12
  a3cdb7:	62 c2 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm12
  a3cdbd:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a3cdc3:	62 52 2d 40 7f d0    	vpermt2ps zmm10,zmm26,zmm8
  a3cdc9:	62 d2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm8
  a3cdcf:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a3cdd5:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a3cddb:	62 71 a5 40 14 f7    	vunpcklpd zmm14,zmm27,zmm7
  a3cde1:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a3cde7:	62 f2 2d 40 7f f9    	vpermt2ps zmm7,zmm26,zmm1
  a3cded:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a3cdf3:	62 d1 fd 40 14 cd    	vunpcklpd zmm1,zmm16,zmm13
  a3cdf9:	62 51 e5 48 14 ea    	vunpcklpd zmm13,zmm3,zmm10
  a3cdff:	62 c1 e5 48 15 c2    	vunpckhpd zmm16,zmm3,zmm10
  a3ce05:	62 f1 dd 48 14 df    	vunpcklpd zmm3,zmm4,zmm7
  a3ce0b:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a3ce11:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a3ce17:	62 72 15 40 7f e3    	vpermt2ps zmm12,zmm29,zmm3
  a3ce1d:	62 72 0d 40 7f eb    	vpermt2ps zmm13,zmm30,zmm3
  a3ce23:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a3ce29:	62 e2 15 40 7f dc    	vpermt2ps zmm19,zmm29,zmm4
  a3ce2f:	62 e2 0d 40 7f c4    	vpermt2ps zmm16,zmm30,zmm4
  a3ce35:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a3ce3b:	62 e2 15 40 7f d1    	vpermt2ps zmm18,zmm29,zmm1
  a3ce41:	62 72 0d 40 7f f1    	vpermt2ps zmm14,zmm30,zmm1
  a3ce47:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a3ce4d:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a3ce53:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a3ce59:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a3ce5f:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a3ce65:	62 62 7d 48 7f c6    	vpermt2ps zmm24,zmm0,zmm6
  a3ce6b:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a3ce71:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a3ce77:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a3ce7d:	62 b2 2d 40 7f cf    	vpermt2ps zmm1,zmm26,zmm23
  a3ce83:	62 a2 6d 48 7f cf    	vpermt2ps zmm17,zmm2,zmm23
  a3ce89:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a3ce8f:	62 92 2d 40 7f d8    	vpermt2ps zmm3,zmm26,zmm24
  a3ce95:	62 12 6d 48 7f f8    	vpermt2ps zmm15,zmm2,zmm24
  a3ce9b:	62 b1 7c 48 28 e5    	vmovaps zmm4,zmm21
  a3cea1:	62 92 2d 40 7f e1    	vpermt2ps zmm4,zmm26,zmm25
  a3cea7:	62 82 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm25
  a3cead:	62 a1 f5 40 14 ed    	vunpcklpd zmm21,zmm17,zmm21
  a3ceb3:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a3ceb9:	62 b2 2d 40 7f fe    	vpermt2ps zmm7,zmm26,zmm22
  a3cebf:	62 a2 6d 48 7f e6    	vpermt2ps zmm20,zmm2,zmm22
  a3cec5:	62 31 85 48 14 c4    	vunpcklpd zmm8,zmm15,zmm20
  a3cecb:	62 e1 f5 48 14 cc    	vunpcklpd zmm17,zmm1,zmm4
  a3ced1:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a3ced7:	62 f1 e5 48 14 e7    	vunpcklpd zmm4,zmm3,zmm7
  a3cedd:	62 f1 e5 48 15 df    	vunpckhpd zmm3,zmm3,zmm7
  a3cee3:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a3cee9:	62 72 15 40 7f fc    	vpermt2ps zmm15,zmm29,zmm4
  a3ceef:	62 e2 0d 40 7f cc    	vpermt2ps zmm17,zmm30,zmm4
  a3cef5:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a3cefb:	62 f2 15 40 7f e3    	vpermt2ps zmm4,zmm29,zmm3
  a3cf01:	62 f2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm3
  a3cf07:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a3cf0d:	62 d2 15 40 7f d8    	vpermt2ps zmm3,zmm29,zmm8
  a3cf13:	62 c2 0d 40 7f e8    	vpermt2ps zmm21,zmm30,zmm8
  a3cf19:	62 f1 7c 48 10 79 04 	vmovups zmm7,ZMMWORD PTR [rcx+0x100]
  a3cf20:	62 71 7c 48 10 41 05 	vmovups zmm8,ZMMWORD PTR [rcx+0x140]
  a3cf27:	62 e1 64 40 59 e7    	vmulps zmm20,zmm19,zmm7
  a3cf2d:	62 c2 5d 48 bc e0    	vfnmadd231ps zmm20,zmm4,zmm8
  a3cf33:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a3cf39:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a3cf40:	62 b2 3d 48 b8 e3    	vfmadd231ps zmm4,zmm8,zmm19
  a3cf46:	62 71 7c 48 10 41 09 	vmovups zmm8,ZMMWORD PTR [rcx+0x240]
  a3cf4d:	62 71 6c 40 59 d7    	vmulps zmm10,zmm18,zmm7
  a3cf53:	62 52 65 48 bc d0    	vfnmadd231ps zmm10,zmm3,zmm8
  a3cf59:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a3cf5f:	62 f1 7c 48 10 79 06 	vmovups zmm7,ZMMWORD PTR [rcx+0x180]
  a3cf66:	62 b2 3d 48 b8 da    	vfmadd231ps zmm3,zmm8,zmm18
  a3cf6c:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a3cf73:	62 71 7c 40 59 df    	vmulps zmm11,zmm16,zmm7
  a3cf79:	62 52 75 48 bc d8    	vfnmadd231ps zmm11,zmm1,zmm8
  a3cf7f:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a3cf85:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a3cf8c:	62 b2 3d 48 b8 c8    	vfmadd231ps zmm1,zmm8,zmm16
  a3cf92:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a3cf99:	62 e1 0c 48 59 c7    	vmulps zmm16,zmm14,zmm7
  a3cf9f:	62 c2 55 40 bc c0    	vfnmadd231ps zmm16,zmm21,zmm8
  a3cfa5:	62 f1 54 40 59 ff    	vmulps zmm7,zmm21,zmm7
  a3cfab:	62 e1 7c 48 10 51 02 	vmovups zmm18,ZMMWORD PTR [rcx+0x80]
  a3cfb2:	62 d2 3d 48 b8 fe    	vfmadd231ps zmm7,zmm8,zmm14
  a3cfb8:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a3cfbf:	62 31 14 48 59 f2    	vmulps zmm14,zmm13,zmm18
  a3cfc5:	62 52 75 40 bc f0    	vfnmadd231ps zmm14,zmm17,zmm8
  a3cfcb:	62 a1 74 40 59 ca    	vmulps zmm17,zmm17,zmm18
  a3cfd1:	62 c1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm10
  a3cfd7:	62 c2 3d 48 b8 cd    	vfmadd231ps zmm17,zmm8,zmm13
  a3cfdd:	62 31 1c 48 58 c2    	vaddps zmm8,zmm12,zmm18
  a3cfe3:	62 51 7c 40 58 ee    	vaddps zmm13,zmm16,zmm14
  a3cfe9:	62 e2 7d 48 18 1d 6d 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff63846d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3cff0:	84 63 ff 
  a3cff3:	62 32 65 40 bc e2    	vfnmadd231ps zmm12,zmm19,zmm18
  a3cff9:	62 e1 5c 48 58 d3    	vaddps zmm18,zmm4,zmm3
  a3cfff:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a3d005:	62 d1 24 48 58 e5    	vaddps zmm4,zmm11,zmm13
  a3d00b:	62 52 65 40 bc dd    	vfnmadd231ps zmm11,zmm19,zmm13
  a3d011:	62 31 44 48 58 e9    	vaddps zmm13,zmm7,zmm17
  a3d017:	62 b1 44 48 5c f9    	vsubps zmm7,zmm7,zmm17
  a3d01d:	62 c1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm15
  a3d023:	62 32 65 40 bc fa    	vfnmadd231ps zmm15,zmm19,zmm18
  a3d029:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a3d02f:	62 c1 74 48 58 d5    	vaddps zmm18,zmm1,zmm13
  a3d035:	62 d2 65 40 bc cd    	vfnmadd231ps zmm1,zmm19,zmm13
  a3d03b:	62 91 64 48 59 dc    	vmulps zmm3,zmm3,zmm28
  a3d041:	62 51 7c 40 5c ee    	vsubps zmm13,zmm16,zmm14
  a3d047:	62 71 1c 48 58 f3    	vaddps zmm14,zmm12,zmm3
  a3d04d:	62 91 44 48 59 fc    	vmulps zmm7,zmm7,zmm28
  a3d053:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a3d059:	62 71 24 48 58 e7    	vaddps zmm12,zmm11,zmm7
  a3d05f:	62 11 2c 48 59 d4    	vmulps zmm10,zmm10,zmm28
  a3d065:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a3d06b:	62 51 04 48 5c da    	vsubps zmm11,zmm15,zmm10
  a3d071:	62 11 14 48 59 ec    	vmulps zmm13,zmm13,zmm28
  a3d077:	62 51 2c 48 58 d7    	vaddps zmm10,zmm10,zmm15
  a3d07d:	62 51 74 48 5c fd    	vsubps zmm15,zmm1,zmm13
  a3d083:	62 d1 74 48 58 cd    	vaddps zmm1,zmm1,zmm13
  a3d089:	62 51 0c 48 5c ec    	vsubps zmm13,zmm14,zmm12
  a3d08f:	62 51 0c 48 58 e4    	vaddps zmm12,zmm14,zmm12
  a3d095:	62 51 24 48 5c f7    	vsubps zmm14,zmm11,zmm15
  a3d09b:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a3d0a1:	62 71 64 48 58 ff    	vaddps zmm15,zmm3,zmm7
  a3d0a7:	62 f1 64 48 5c df    	vsubps zmm3,zmm3,zmm7
  a3d0ad:	62 f1 2c 48 58 f9    	vaddps zmm7,zmm10,zmm1
  a3d0b3:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a3d0b9:	62 71 3c 48 5c d4    	vsubps zmm10,zmm8,zmm4
  a3d0bf:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a3d0c5:	62 31 74 40 5c c2    	vsubps zmm8,zmm17,zmm18
  a3d0cb:	62 a1 74 40 58 c2    	vaddps zmm16,zmm17,zmm18
  a3d0d1:	62 b2 05 40 7f e0    	vpermt2ps zmm4,zmm31,zmm16
  a3d0d7:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a3d0de:	62 52 05 40 7f ee    	vpermt2ps zmm13,zmm31,zmm14
  a3d0e4:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  a3d0eb:	01 
  a3d0ec:	62 72 05 40 7f ff    	vpermt2ps zmm15,zmm31,zmm7
  a3d0f2:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm15
  a3d0f9:	02 
  a3d0fa:	62 52 05 40 7f d0    	vpermt2ps zmm10,zmm31,zmm8
  a3d100:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm10
  a3d107:	03 
  a3d108:	62 52 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm11
  a3d10e:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm12
  a3d115:	04 
  a3d116:	62 f2 05 40 7f d9    	vpermt2ps zmm3,zmm31,zmm1
  a3d11c:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm3
  a3d123:	05 
  a3d124:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a3d12b:	48 39 d0             	cmp    rax,rdx
  a3d12e:	0f 85 7c f8 ff ff    	jne    a3c9b0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a3d134:	c5 f8 77             	vzeroupper
  a3d137:	c3                   	ret
