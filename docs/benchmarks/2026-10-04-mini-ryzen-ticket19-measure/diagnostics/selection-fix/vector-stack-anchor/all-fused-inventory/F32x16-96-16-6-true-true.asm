
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a12a80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a12a80:	48 81 ec 88 02 00 00 	sub    rsp,0x288
  a12a87:	48 c1 e2 08          	shl    rdx,0x8
  a12a8b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a12a8f:	31 d2                	xor    edx,edx
  a12a91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a12a98:	0f 1f 84 00 00 00 00 
  a12a9f:	00 
  a12aa0:	c5 f8 10 44 17 20    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x20]
  a12aa6:	c4 e3 79 21 44 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x24],0x10
  a12aad:	10 
  a12aae:	c4 e2 79 18 4c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x28]
  a12ab5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a12abb:	c4 e3 79 21 44 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a12ac2:	30 
  a12ac3:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  a12ac8:	62 73 75 48 18 c0 02 	vinsertf32x4 zmm8,zmm1,xmm0,0x2
  a12acf:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a12ad6:	01 
  a12ad7:	c5 f8 10 44 17 50    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x50]
  a12add:	c4 e3 79 21 44 17 54 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x54],0x10
  a12ae4:	10 
  a12ae5:	c4 e2 79 18 4c 17 58 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x58]
  a12aec:	62 01 24 00 57 db    	vxorps xmm27,xmm27,xmm27
  a12af2:	62 e1 7c 48 28 0d c4 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff67c7c4]        # 8f2c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c770>
  a12af9:	c7 67 ff 
  a12afc:	62 12 75 40 7f c3    	vpermt2ps zmm8,zmm17,zmm27
  a12b02:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a12b08:	c4 e3 79 21 44 17 5c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a12b0f:	30 
  a12b10:	c5 fc 10 4c 17 30    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x30]
  a12b16:	62 e3 75 48 18 d0 02 	vinsertf32x4 zmm18,zmm1,xmm0,0x2
  a12b1d:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a12b23:	62 e1 7c 48 28 05 53 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67c753]        # 8f280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c730>
  a12b2a:	c7 67 ff 
  a12b2d:	62 92 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm27
  a12b33:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a12b3a:	62 82 75 40 7f d3    	vpermt2ps zmm18,zmm17,zmm27
  a12b40:	c5 f8 10 84 17 80 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x80]
  a12b47:	00 00 
  a12b49:	c4 e3 79 21 84 17 84 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x84],0x10
  a12b50:	00 00 00 10 
  a12b54:	c5 fc 10 4c 17 60    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x60]
  a12b5a:	c4 e2 79 18 94 17 88 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x88]
  a12b61:	00 00 00 
  a12b64:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a12b6a:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a12b71:	00 00 00 30 
  a12b75:	62 e3 75 48 18 f8 02 	vinsertf32x4 zmm23,zmm1,xmm0,0x2
  a12b7c:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a12b82:	62 82 7d 40 7f f3    	vpermt2ps zmm22,zmm16,zmm27
  a12b88:	62 82 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm27
  a12b8e:	c5 fc 10 84 17 90 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x90]
  a12b95:	00 00 
  a12b97:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  a12b9e:	00 00 
  a12ba0:	c4 e3 71 21 8c 17 b4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a12ba7:	00 00 00 10 
  a12bab:	c4 e2 79 18 94 17 b8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0xb8]
  a12bb2:	00 00 00 
  a12bb5:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a12bbb:	c4 e3 71 21 8c 17 bc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a12bc2:	00 00 00 30 
  a12bc6:	62 e3 7d 48 18 e9 02 	vinsertf32x4 zmm21,zmm0,xmm1,0x2
  a12bcd:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a12bd3:	62 82 75 40 7f eb    	vpermt2ps zmm21,zmm17,zmm27
  a12bd9:	c5 fc 10 84 17 c0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xc0]
  a12be0:	00 00 
  a12be2:	c5 f8 10 8c 17 e0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xe0]
  a12be9:	00 00 
  a12beb:	c4 e3 71 21 8c 17 e4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a12bf2:	00 00 00 10 
  a12bf6:	c4 e2 79 18 94 17 e8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0xe8]
  a12bfd:	00 00 00 
  a12c00:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a12c06:	c4 e3 71 21 8c 17 ec 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xec],0x30
  a12c0d:	00 00 00 30 
  a12c11:	62 73 7d 48 18 f9 02 	vinsertf32x4 zmm15,zmm0,xmm1,0x2
  a12c18:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm15
  a12c1f:	ff 
  a12c20:	62 12 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm27
  a12c26:	c5 fc 10 84 17 f0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xf0]
  a12c2d:	00 00 
  a12c2f:	c5 f8 10 8c 17 10 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x110]
  a12c36:	00 00 
  a12c38:	c4 e3 71 21 8c 17 14 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x114],0x10
  a12c3f:	01 00 00 10 
  a12c43:	c4 e2 79 18 94 17 18 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x118]
  a12c4a:	01 00 00 
  a12c4d:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a12c53:	c4 e3 71 21 8c 17 1c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a12c5a:	01 00 00 30 
  a12c5e:	62 73 7d 48 18 f1 02 	vinsertf32x4 zmm14,zmm0,xmm1,0x2
  a12c65:	62 41 7c 48 28 ce    	vmovaps zmm25,zmm14
  a12c6b:	62 02 7d 40 7f cb    	vpermt2ps zmm25,zmm16,zmm27
  a12c71:	62 12 75 40 7f f3    	vpermt2ps zmm14,zmm17,zmm27
  a12c77:	c5 f8 10 84 17 40 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x140]
  a12c7e:	00 00 
  a12c80:	c4 e3 79 21 84 17 44 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x144],0x10
  a12c87:	01 00 00 10 
  a12c8b:	c4 e2 79 18 8c 17 48 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x148]
  a12c92:	01 00 00 
  a12c95:	c5 fc 10 94 17 20 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x120]
  a12c9c:	00 00 
  a12c9e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a12ca4:	c4 e3 79 21 84 17 4c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a12cab:	01 00 00 30 
  a12caf:	62 63 6d 48 18 f0 02 	vinsertf32x4 zmm30,zmm2,xmm0,0x2
  a12cb6:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a12cbc:	62 02 7d 40 7f fb    	vpermt2ps zmm31,zmm16,zmm27
  a12cc2:	c5 f8 10 84 17 70 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x170]
  a12cc9:	00 00 
  a12ccb:	c4 e3 79 21 84 17 74 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x174],0x10
  a12cd2:	01 00 00 10 
  a12cd6:	c4 e2 79 18 8c 17 78 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x178]
  a12cdd:	01 00 00 
  a12ce0:	62 02 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm27
  a12ce6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a12cec:	c4 e3 79 21 84 17 7c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a12cf3:	01 00 00 30 
  a12cf7:	c5 fc 10 8c 17 50 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x150]
  a12cfe:	00 00 
  a12d00:	62 63 75 48 18 d0 02 	vinsertf32x4 zmm26,zmm1,xmm0,0x2
  a12d07:	62 01 7c 48 28 ea    	vmovaps zmm29,zmm26
  a12d0d:	c5 f8 10 84 17 a0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1a0]
  a12d14:	00 00 
  a12d16:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1a4],0x10
  a12d1d:	01 00 00 10 
  a12d21:	c4 e2 79 18 8c 17 a8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x1a8]
  a12d28:	01 00 00 
  a12d2b:	62 02 7d 40 7f eb    	vpermt2ps zmm29,zmm16,zmm27
  a12d31:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a12d37:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1ac],0x30
  a12d3e:	01 00 00 30 
  a12d42:	c5 fc 10 8c 17 80 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x180]
  a12d49:	00 00 
  a12d4b:	62 63 75 48 18 e0 02 	vinsertf32x4 zmm28,zmm1,xmm0,0x2
  a12d52:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm28
  a12d59:	fe 
  a12d5a:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a12d61:	00 00 
  a12d63:	c4 e3 79 21 84 17 d4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1d4],0x10
  a12d6a:	01 00 00 10 
  a12d6e:	c4 e2 79 18 8c 17 d8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x1d8]
  a12d75:	01 00 00 
  a12d78:	62 02 75 40 7f e3    	vpermt2ps zmm28,zmm17,zmm27
  a12d7e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a12d84:	c4 e3 79 21 84 17 dc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1dc],0x30
  a12d8b:	01 00 00 30 
  a12d8f:	c5 fc 10 8c 17 b0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1b0]
  a12d96:	00 00 
  a12d98:	62 73 75 48 18 d8 02 	vinsertf32x4 zmm11,zmm1,xmm0,0x2
  a12d9f:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a12da5:	62 82 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm27
  a12dab:	62 12 75 40 7f db    	vpermt2ps zmm11,zmm17,zmm27
  a12db1:	c5 f8 10 84 17 00 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x200]
  a12db8:	00 00 
  a12dba:	c4 e3 79 21 84 17 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x204],0x10
  a12dc1:	02 00 00 10 
  a12dc5:	c5 fc 10 8c 17 e0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a12dcc:	00 00 
  a12dce:	c4 e2 79 18 94 17 08 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x208]
  a12dd5:	02 00 00 
  a12dd8:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a12dde:	c4 e3 79 21 84 17 0c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x20c],0x30
  a12de5:	02 00 00 30 
  a12de9:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  a12df0:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a12df6:	62 12 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm27
  a12dfc:	62 92 75 40 7f d3    	vpermt2ps zmm2,zmm17,zmm27
  a12e02:	c5 fc 10 84 17 10 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x210]
  a12e09:	00 00 
  a12e0b:	c5 f8 10 8c 17 30 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x230]
  a12e12:	00 00 
  a12e14:	c4 e3 71 21 8c 17 34 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x234],0x10
  a12e1b:	02 00 00 10 
  a12e1f:	c4 e2 79 18 a4 17 38 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x238]
  a12e26:	02 00 00 
  a12e29:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a12e2f:	c4 e3 71 21 8c 17 3c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x23c],0x30
  a12e36:	02 00 00 30 
  a12e3a:	62 f3 7d 48 18 e1 02 	vinsertf32x4 zmm4,zmm0,xmm1,0x2
  a12e41:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a12e47:	62 92 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm27
  a12e4d:	c5 fc 10 84 17 40 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x240]
  a12e54:	00 00 
  a12e56:	c5 f8 10 8c 17 60 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x260]
  a12e5d:	00 00 
  a12e5f:	c4 e3 71 21 8c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x264],0x10
  a12e66:	02 00 00 10 
  a12e6a:	c4 e2 79 18 ac 17 68 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x268]
  a12e71:	02 00 00 
  a12e74:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a12e7a:	c4 e3 71 21 8c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x26c],0x30
  a12e81:	02 00 00 30 
  a12e85:	62 73 7d 48 18 e1 02 	vinsertf32x4 zmm12,zmm0,xmm1,0x2
  a12e8c:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a12e92:	62 92 7d 40 7f fb    	vpermt2ps zmm7,zmm16,zmm27
  a12e98:	c5 fc 10 84 17 70 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x270]
  a12e9f:	00 00 
  a12ea1:	c5 f8 10 8c 17 90 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x290]
  a12ea8:	00 00 
  a12eaa:	c4 e3 71 21 8c 17 94 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x294],0x10
  a12eb1:	02 00 00 10 
  a12eb5:	c4 e2 79 18 ac 17 98 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x298]
  a12ebc:	02 00 00 
  a12ebf:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a12ec5:	c4 e3 71 21 8c 17 9c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a12ecc:	02 00 00 30 
  a12ed0:	62 73 7d 48 18 d1 02 	vinsertf32x4 zmm10,zmm0,xmm1,0x2
  a12ed7:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a12edd:	62 92 7d 40 7f db    	vpermt2ps zmm3,zmm16,zmm27
  a12ee3:	62 12 75 40 7f d3    	vpermt2ps zmm10,zmm17,zmm27
  a12ee9:	c5 f8 10 8c 17 c0 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a12ef0:	00 00 
  a12ef2:	c4 e3 71 21 8c 17 c4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x2c4],0x10
  a12ef9:	02 00 00 10 
  a12efd:	c4 e2 79 18 ac 17 c8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x2c8]
  a12f04:	02 00 00 
  a12f07:	c5 fc 10 b4 17 a0 02 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x2a0]
  a12f0e:	00 00 
  a12f10:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a12f16:	c4 e3 71 21 8c 17 cc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x2cc],0x30
  a12f1d:	02 00 00 30 
  a12f21:	62 f3 4d 48 18 f1 02 	vinsertf32x4 zmm6,zmm6,xmm1,0x2
  a12f28:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a12f2e:	62 92 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm27
  a12f34:	c5 f8 10 8c 17 f0 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x2f0]
  a12f3b:	00 00 
  a12f3d:	c4 e3 71 21 8c 17 f4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x2f4],0x10
  a12f44:	02 00 00 10 
  a12f48:	c4 e2 79 18 ac 17 f8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x2f8]
  a12f4f:	02 00 00 
  a12f52:	62 92 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm27
  a12f58:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a12f5e:	c4 e3 71 21 8c 17 fc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x2fc],0x30
  a12f65:	02 00 00 30 
  a12f69:	c5 fc 10 ac 17 d0 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x2d0]
  a12f70:	00 00 
  a12f72:	62 f3 55 48 18 e9 02 	vinsertf32x4 zmm5,zmm5,xmm1,0x2
  a12f79:	62 91 3c 48 58 cc    	vaddps zmm1,zmm8,zmm28
  a12f7f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a12f86:	05 
  a12f87:	62 91 3c 48 5c cc    	vsubps zmm1,zmm8,zmm28
  a12f8d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a12f94:	06 
  a12f95:	62 f1 04 48 58 cf    	vaddps zmm1,zmm15,zmm7
  a12f9b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a12fa2:	02 
  a12fa3:	62 f1 04 48 5c cf    	vsubps zmm1,zmm15,zmm7
  a12fa9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a12fb0:	04 
  a12fb1:	62 f1 44 40 58 ca    	vaddps zmm1,zmm23,zmm2
  a12fb7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a12fbe:	03 
  a12fbf:	62 71 44 40 5c ea    	vsubps zmm13,zmm23,zmm2
  a12fc5:	62 c1 4c 40 58 f9    	vaddps zmm23,zmm22,zmm9
  a12fcb:	62 51 4c 40 5c c1    	vsubps zmm8,zmm22,zmm9
  a12fd1:	62 71 04 40 58 f8    	vaddps zmm15,zmm31,zmm0
  a12fd7:	62 f1 04 40 5c f8    	vsubps zmm7,zmm31,zmm0
  a12fdd:	62 e1 0c 40 58 f6    	vaddps zmm22,zmm30,zmm6
  a12fe3:	62 f1 0c 40 5c ce    	vsubps zmm1,zmm30,zmm6
  a12fe9:	62 41 6c 40 58 f3    	vaddps zmm30,zmm18,zmm11
  a12fef:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a12ff5:	62 61 34 40 58 fb    	vaddps zmm31,zmm25,zmm3
  a12ffb:	62 61 34 40 5c e3    	vsubps zmm28,zmm25,zmm3
  a13001:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm28
  a13008:	09 
  a13009:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a13010:	62 31 64 48 58 cc    	vaddps zmm9,zmm3,zmm20
  a13016:	62 b1 64 48 5c d4    	vsubps zmm2,zmm3,zmm20
  a1301c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a13023:	07 
  a13024:	62 c1 0c 48 58 d2    	vaddps zmm18,zmm14,zmm10
  a1302a:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a13030:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm10
  a13037:	08 
  a13038:	62 61 54 40 58 cc    	vaddps zmm25,zmm21,zmm4
  a1303e:	62 f1 54 40 5c f4    	vsubps zmm6,zmm21,zmm4
  a13044:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a1304a:	62 92 7d 40 7f db    	vpermt2ps zmm3,zmm16,zmm27
  a13050:	62 e1 14 40 58 eb    	vaddps zmm21,zmm29,zmm3
  a13056:	62 f1 14 40 5c c3    	vsubps zmm0,zmm29,zmm3
  a1305c:	62 82 7d 40 7f db    	vpermt2ps zmm19,zmm16,zmm27
  a13062:	62 02 7d 40 7f c3    	vpermt2ps zmm24,zmm16,zmm27
  a13068:	62 11 64 40 58 f0    	vaddps zmm14,zmm19,zmm24
  a1306e:	62 01 64 40 5c e8    	vsubps zmm29,zmm19,zmm24
  a13074:	62 02 75 40 7f d3    	vpermt2ps zmm26,zmm17,zmm27
  a1307a:	62 92 75 40 7f eb    	vpermt2ps zmm5,zmm17,zmm27
  a13080:	62 f1 2c 40 58 dd    	vaddps zmm3,zmm26,zmm5
  a13086:	62 81 54 48 5c da    	vsubps zmm19,zmm5,zmm26
  a1308c:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a13093:	01 
  a13094:	62 92 7d 40 7f e3    	vpermt2ps zmm4,zmm16,zmm27
  a1309a:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x80]
  a130a1:	fe 
  a130a2:	62 82 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm27
  a130a8:	62 b1 5c 48 58 ec    	vaddps zmm5,zmm4,zmm20
  a130ae:	62 a1 5c 48 5c e4    	vsubps zmm20,zmm4,zmm20
  a130b4:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a130bb:	ff 
  a130bc:	62 92 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm27
  a130c2:	62 12 75 40 7f e3    	vpermt2ps zmm12,zmm17,zmm27
  a130c8:	62 41 5c 48 58 c4    	vaddps zmm24,zmm4,zmm12
  a130ce:	62 e1 1c 48 5c cc    	vsubps zmm17,zmm12,zmm4
  a130d4:	62 d1 14 48 58 e0    	vaddps zmm4,zmm13,zmm8
  a130da:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a130e1:	62 d1 3c 48 5c e5    	vsubps zmm4,zmm8,zmm13
  a130e7:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a130ee:	fe 
  a130ef:	62 f1 44 48 5c e1    	vsubps zmm4,zmm7,zmm1
  a130f5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a130fc:	ff 
  a130fd:	62 61 74 48 58 df    	vaddps zmm27,zmm1,zmm7
  a13103:	62 91 24 48 58 cc    	vaddps zmm1,zmm11,zmm28
  a13109:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a1310f:	62 f1 2c 48 58 fa    	vaddps zmm7,zmm10,zmm2
  a13115:	62 62 7d 48 18 15 45 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff662545]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a1311c:	25 66 ff 
  a1311f:	62 91 44 48 59 e2    	vmulps zmm4,zmm7,zmm26
  a13125:	62 f2 7d 48 18 15 d1 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6625d1]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a1312c:	25 66 ff 
  a1312f:	62 f2 75 48 b8 e2    	vfmadd231ps zmm4,zmm1,zmm2
  a13135:	62 71 44 48 59 ea    	vmulps zmm13,zmm7,zmm2
  a1313b:	62 72 2d 40 bc e9    	vfnmadd231ps zmm13,zmm26,zmm1
  a13141:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a13147:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a1314d:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a13153:	62 91 64 40 58 fd    	vaddps zmm7,zmm19,zmm29
  a13159:	62 71 44 48 59 e2    	vmulps zmm12,zmm7,zmm2
  a1315f:	62 12 75 48 b8 e2    	vfmadd231ps zmm12,zmm1,zmm26
  a13165:	62 11 44 48 59 d2    	vmulps zmm10,zmm7,zmm26
  a1316b:	62 72 6d 48 bc d1    	vfnmadd231ps zmm10,zmm2,zmm1
  a13171:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a13178:	05 
  a13179:	62 91 7c 48 58 f8    	vaddps zmm7,zmm0,zmm24
  a1317f:	62 91 7c 48 5c c0    	vsubps zmm0,zmm0,zmm24
  a13185:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1318c:	01 
  a1318d:	62 41 44 40 58 c7    	vaddps zmm24,zmm23,zmm15
  a13193:	62 51 44 40 5c ff    	vsubps zmm15,zmm23,zmm15
  a13199:	62 a1 0c 40 58 fa    	vaddps zmm23,zmm30,zmm18
  a1319f:	62 b1 0c 40 5c c2    	vsubps zmm0,zmm30,zmm18
  a131a5:	62 81 34 48 58 d7    	vaddps zmm18,zmm9,zmm31
  a131ab:	62 11 34 48 5c cf    	vsubps zmm9,zmm9,zmm31
  a131b1:	62 21 0c 48 58 fd    	vaddps zmm31,zmm14,zmm21
  a131b7:	62 b1 0c 48 5c f5    	vsubps zmm6,zmm14,zmm21
  a131bd:	62 61 34 40 58 f3    	vaddps zmm30,zmm25,zmm3
  a131c3:	62 e1 34 40 5c eb    	vsubps zmm21,zmm25,zmm3
  a131c9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a131d0:	02 
  a131d1:	62 61 54 48 58 c9    	vaddps zmm25,zmm5,zmm1
  a131d7:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a131dd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a131e4:	02 
  a131e5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a131ec:	03 
  a131ed:	62 b1 64 48 58 ce    	vaddps zmm1,zmm3,zmm22
  a131f3:	62 e1 4c 40 5c f3    	vsubps zmm22,zmm22,zmm3
  a131f9:	62 d1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm9
  a131ff:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a13206:	05 
  a13207:	62 71 34 48 5c c8    	vsubps zmm9,zmm9,zmm0
  a1320d:	62 b1 4c 48 5c c5    	vsubps zmm0,zmm6,zmm21
  a13213:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a1321a:	03 
  a1321b:	62 f1 54 40 58 ee    	vaddps zmm5,zmm21,zmm6
  a13221:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a13228:	06 
  a13229:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a13230:	04 
  a13231:	62 e1 7c 48 58 eb    	vaddps zmm21,zmm0,zmm3
  a13237:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a1323d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a13244:	06 
  a13245:	62 f2 7d 48 18 1d 4d 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff66214d]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1324c:	21 66 ff 
  a1324f:	62 f1 64 48 59 74 24 	vmulps zmm6,zmm3,ZMMWORD PTR [rsp-0x80]
  a13256:	fe 
  a13257:	62 71 24 40 59 db    	vmulps zmm11,zmm27,zmm3
  a1325d:	62 41 4c 48 5c db    	vsubps zmm27,zmm6,zmm11
  a13263:	62 d1 4c 48 58 c3    	vaddps zmm0,zmm6,zmm11
  a13269:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a13270:	04 
  a13271:	62 71 1c 40 5c 5c 24 	vsubps zmm11,zmm28,ZMMWORD PTR [rsp+0x240]
  a13278:	09 
  a13279:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a13280:	07 
  a13281:	62 61 7c 48 5c 64 24 	vsubps zmm28,zmm0,ZMMWORD PTR [rsp+0x200]
  a13288:	08 
  a13289:	62 a1 3c 48 5c c0    	vsubps zmm16,zmm8,zmm16
  a1328f:	62 31 14 40 5c f3    	vsubps zmm14,zmm29,zmm19
  a13295:	62 a1 74 40 58 dc    	vaddps zmm19,zmm17,zmm20
  a1329b:	62 a1 5c 40 5c e1    	vsubps zmm20,zmm20,zmm17
  a132a1:	62 e1 64 48 59 0c 24 	vmulps zmm17,zmm3,ZMMWORD PTR [rsp]
  a132a8:	62 61 64 48 59 6c 24 	vmulps zmm29,zmm3,ZMMWORD PTR [rsp-0x40]
  a132af:	ff 
  a132b0:	62 91 74 40 58 c5    	vaddps zmm0,zmm17,zmm29
  a132b6:	62 31 14 40 5c c1    	vsubps zmm8,zmm29,zmm17
  a132bc:	62 61 1c 40 59 ea    	vmulps zmm29,zmm28,zmm2
  a132c2:	62 02 25 48 b8 ea    	vfmadd231ps zmm29,zmm11,zmm26
  a132c8:	62 01 1c 40 59 e2    	vmulps zmm28,zmm28,zmm26
  a132ce:	62 42 6d 48 bc e3    	vfnmadd231ps zmm28,zmm2,zmm11
  a132d4:	62 11 0c 48 59 da    	vmulps zmm11,zmm14,zmm26
  a132da:	62 72 7d 40 b8 da    	vfmadd231ps zmm11,zmm16,zmm2
  a132e0:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a132e6:	62 c2 6d 48 bc c6    	vfnmadd231ps zmm16,zmm2,zmm14
  a132ec:	62 71 44 48 58 f1    	vaddps zmm14,zmm7,zmm1
  a132f2:	62 f1 44 48 5c c9    	vsubps zmm1,zmm7,zmm1
  a132f8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a132ff:	ff 
  a13300:	62 01 6c 40 58 d7    	vaddps zmm26,zmm18,zmm31
  a13306:	62 91 6c 40 5c cf    	vsubps zmm1,zmm18,zmm31
  a1330c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a13313:	fe 
  a13314:	62 81 34 40 58 d0    	vaddps zmm18,zmm25,zmm24
  a1331a:	62 01 34 40 5c f8    	vsubps zmm31,zmm25,zmm24
  a13320:	62 01 44 40 58 ce    	vaddps zmm25,zmm23,zmm30
  a13326:	62 21 0c 40 5c c7    	vsubps zmm24,zmm30,zmm23
  a1332c:	62 61 54 40 58 f0    	vaddps zmm30,zmm21,zmm0
  a13332:	62 e1 54 40 5c f8    	vsubps zmm23,zmm21,zmm0
  a13338:	62 d1 14 48 58 f2    	vaddps zmm6,zmm13,zmm10
  a1333e:	62 c1 14 48 5c ea    	vsubps zmm21,zmm13,zmm10
  a13344:	62 11 64 40 58 d3    	vaddps zmm10,zmm19,zmm27
  a1334a:	62 01 64 40 5c db    	vsubps zmm27,zmm19,zmm27
  a13350:	62 c1 5c 48 58 dc    	vaddps zmm19,zmm4,zmm12
  a13356:	62 e1 1c 48 5c cc    	vsubps zmm17,zmm12,zmm4
  a1335c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a13363:	01 
  a13364:	62 51 7c 48 58 e7    	vaddps zmm12,zmm0,zmm15
  a1336a:	62 51 7c 48 5c ff    	vsubps zmm15,zmm0,zmm15
  a13370:	62 f1 34 48 59 d3    	vmulps zmm2,zmm9,zmm3
  a13376:	62 f1 54 48 59 e3    	vmulps zmm4,zmm5,zmm3
  a1337c:	62 f1 6c 48 5c ec    	vsubps zmm5,zmm2,zmm4
  a13382:	62 71 6c 48 58 ec    	vaddps zmm13,zmm2,zmm4
  a13388:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a1338f:	02 
  a13390:	62 f1 4c 40 58 d0    	vaddps zmm2,zmm22,zmm0
  a13396:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a1339c:	62 f1 64 48 59 64 24 	vmulps zmm4,zmm3,ZMMWORD PTR [rsp+0x140]
  a133a3:	05 
  a133a4:	62 71 64 48 59 4c 24 	vmulps zmm9,zmm3,ZMMWORD PTR [rsp+0xc0]
  a133ab:	03 
  a133ac:	62 d1 5c 48 58 c1    	vaddps zmm0,zmm4,zmm9
  a133b2:	62 71 34 48 5c cc    	vsubps zmm9,zmm9,zmm4
  a133b8:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x180]
  a133bf:	06 
  a133c0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a133c7:	04 
  a133c8:	62 f1 64 48 58 cc    	vaddps zmm1,zmm3,zmm4
  a133ce:	62 f1 64 48 5c fc    	vsubps zmm7,zmm3,zmm4
  a133d4:	62 b1 1c 40 58 e0    	vaddps zmm4,zmm28,zmm16
  a133da:	62 a1 1c 40 5c c0    	vsubps zmm16,zmm28,zmm16
  a133e0:	62 41 5c 40 58 e0    	vaddps zmm28,zmm20,zmm8
  a133e6:	62 c1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm8
  a133ec:	62 51 14 40 5c c3    	vsubps zmm8,zmm29,zmm11
  a133f2:	62 d1 14 40 58 db    	vaddps zmm3,zmm29,zmm11
  a133f8:	62 01 0c 48 58 e9    	vaddps zmm29,zmm14,zmm25
  a133fe:	62 01 0c 48 5c c9    	vsubps zmm25,zmm14,zmm25
  a13404:	62 11 6c 40 58 da    	vaddps zmm11,zmm18,zmm26
  a1340a:	62 11 6c 40 5c f2    	vsubps zmm14,zmm18,zmm26
  a13410:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm14
  a13417:	01 
  a13418:	62 a1 0c 40 58 d3    	vaddps zmm18,zmm30,zmm19
  a1341e:	62 a1 0c 40 5c db    	vsubps zmm19,zmm30,zmm19
  a13424:	62 61 2c 48 58 f6    	vaddps zmm30,zmm10,zmm6
  a1342a:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a13430:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a13437:	62 71 1c 48 58 d0    	vaddps zmm10,zmm12,zmm0
  a1343d:	62 71 1c 48 5c f0    	vsubps zmm14,zmm12,zmm0
  a13443:	62 f1 6c 48 58 f5    	vaddps zmm6,zmm2,zmm5
  a13449:	62 61 6c 48 5c d5    	vsubps zmm26,zmm2,zmm5
  a1344f:	62 d1 74 48 58 c0    	vaddps zmm0,zmm1,zmm8
  a13455:	62 d1 74 48 5c e8    	vsubps zmm5,zmm1,zmm8
  a1345b:	62 f1 1c 40 58 d4    	vaddps zmm2,zmm28,zmm4
  a13461:	62 71 1c 40 5c c4    	vsubps zmm8,zmm28,zmm4
  a13467:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a1346e:	ff 
  a1346f:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x80]
  a13476:	fe 
  a13477:	62 d1 74 48 58 e4    	vaddps zmm4,zmm1,zmm12
  a1347d:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a13483:	62 01 3c 40 58 e7    	vaddps zmm28,zmm24,zmm31
  a13489:	62 01 04 40 5c c0    	vsubps zmm24,zmm31,zmm24
  a1348f:	62 21 44 40 58 fd    	vaddps zmm31,zmm23,zmm21
  a13495:	62 a1 44 40 5c fd    	vsubps zmm23,zmm23,zmm21
  a1349b:	62 31 24 40 58 e1    	vaddps zmm12,zmm27,zmm17
  a134a1:	62 21 24 40 5c d9    	vsubps zmm27,zmm27,zmm17
  a134a7:	62 c1 04 48 58 cd    	vaddps zmm17,zmm15,zmm13
  a134ad:	62 51 04 48 5c fd    	vsubps zmm15,zmm15,zmm13
  a134b3:	62 51 4c 40 58 e9    	vaddps zmm13,zmm22,zmm9
  a134b9:	62 c1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm9
  a134bf:	62 a1 44 48 58 e8    	vaddps zmm21,zmm7,zmm16
  a134c5:	62 b1 44 48 5c f8    	vsubps zmm7,zmm7,zmm16
  a134cb:	62 71 5c 40 5c cb    	vsubps zmm9,zmm20,zmm3
  a134d1:	62 e1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm3
  a134d7:	62 e1 7c 48 28 05 9f 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b3a9f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a134de:	3a 6b ff 
  a134e1:	62 02 7d 40 7f e9    	vpermt2ps zmm29,zmm16,zmm25
  a134e7:	62 a2 7d 40 7f d3    	vpermt2ps zmm18,zmm16,zmm19
  a134ed:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  a134f3:	62 f2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm5
  a134f9:	62 f2 7d 40 7f e1    	vpermt2ps zmm4,zmm16,zmm1
  a134ff:	62 22 7d 40 7f ff    	vpermt2ps zmm31,zmm16,zmm23
  a13505:	62 c2 7d 40 7f cf    	vpermt2ps zmm17,zmm16,zmm15
  a1350b:	62 e2 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm7
  a13511:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a13517:	62 71 7c 48 28 35 df 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6b39df]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1351e:	39 6b ff 
  a13521:	62 f2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm4
  a13527:	62 e1 7c 48 28 1d 0f 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6b3a0f]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1352e:	3a 6b ff 
  a13531:	62 62 65 40 7f ec    	vpermt2ps zmm29,zmm19,zmm4
  a13537:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a1353d:	62 92 0d 48 7f e7    	vpermt2ps zmm4,zmm14,zmm31
  a13543:	62 82 65 40 7f d7    	vpermt2ps zmm18,zmm19,zmm31
  a13549:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a1354f:	62 b2 0d 48 7f f9    	vpermt2ps zmm7,zmm14,zmm17
  a13555:	62 32 65 40 7f d1    	vpermt2ps zmm10,zmm19,zmm17
  a1355b:	62 d1 95 40 14 ca    	vunpcklpd zmm1,zmm29,zmm10
  a13561:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a13567:	62 32 0d 48 7f d5    	vpermt2ps zmm10,zmm14,zmm21
  a1356d:	62 b2 65 40 7f c5    	vpermt2ps zmm0,zmm19,zmm21
  a13573:	62 f1 ed 40 14 c0    	vunpcklpd zmm0,zmm18,zmm0
  a13579:	62 f1 d5 48 14 df    	vunpcklpd zmm3,zmm5,zmm7
  a1357f:	62 e1 d5 48 15 d7    	vunpckhpd zmm18,zmm5,zmm7
  a13585:	62 d1 dd 48 14 ea    	vunpcklpd zmm5,zmm4,zmm10
  a1358b:	62 d1 dd 48 15 e2    	vunpckhpd zmm4,zmm4,zmm10
  a13591:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a13597:	62 e1 7c 48 28 2d 5f 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6b385f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1359e:	38 6b ff 
  a135a1:	62 72 55 40 7f fd    	vpermt2ps zmm15,zmm21,zmm5
  a135a7:	62 e1 7c 48 28 3d 8f 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6b388f]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a135ae:	38 6b ff 
  a135b1:	62 f2 45 40 7f dd    	vpermt2ps zmm3,zmm23,zmm5
  a135b7:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a135bd:	62 e2 55 40 7f cc    	vpermt2ps zmm17,zmm21,zmm4
  a135c3:	62 e2 45 40 7f d4    	vpermt2ps zmm18,zmm23,zmm4
  a135c9:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a135cf:	62 f2 55 40 7f f8    	vpermt2ps zmm7,zmm21,zmm0
  a135d5:	62 f2 45 40 7f c8    	vpermt2ps zmm1,zmm23,zmm0
  a135db:	62 72 7d 40 7f 5c 24 	vpermt2ps zmm11,zmm16,ZMMWORD PTR [rsp+0x40]
  a135e2:	01 
  a135e3:	62 62 7d 40 7f 34 24 	vpermt2ps zmm30,zmm16,ZMMWORD PTR [rsp]
  a135ea:	62 92 7d 40 7f f2    	vpermt2ps zmm6,zmm16,zmm26
  a135f0:	62 d2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm8
  a135f6:	62 02 7d 40 7f e0    	vpermt2ps zmm28,zmm16,zmm24
  a135fc:	62 12 7d 40 7f e3    	vpermt2ps zmm12,zmm16,zmm27
  a13602:	62 32 7d 40 7f ee    	vpermt2ps zmm13,zmm16,zmm22
  a13608:	62 32 7d 40 7f cc    	vpermt2ps zmm9,zmm16,zmm20
  a1360e:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a13614:	62 92 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm28
  a1361a:	62 12 65 40 7f dc    	vpermt2ps zmm11,zmm19,zmm28
  a13620:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a13626:	62 d2 0d 48 7f e4    	vpermt2ps zmm4,zmm14,zmm12
  a1362c:	62 42 65 40 7f f4    	vpermt2ps zmm30,zmm19,zmm12
  a13632:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a13638:	62 52 0d 48 7f c5    	vpermt2ps zmm8,zmm14,zmm13
  a1363e:	62 d2 65 40 7f f5    	vpermt2ps zmm6,zmm19,zmm13
  a13644:	62 f1 a5 48 14 f6    	vunpcklpd zmm6,zmm11,zmm6
  a1364a:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a13650:	62 52 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm9
  a13656:	62 d2 65 40 7f d1    	vpermt2ps zmm2,zmm19,zmm9
  a1365c:	62 71 8d 40 14 ca    	vunpcklpd zmm9,zmm30,zmm2
  a13662:	62 d1 fd 48 14 e8    	vunpcklpd zmm5,zmm0,zmm8
  a13668:	62 d1 fd 48 15 d0    	vunpckhpd zmm2,zmm0,zmm8
  a1366e:	62 d1 dd 48 14 c2    	vunpcklpd zmm0,zmm4,zmm10
  a13674:	62 51 dd 48 15 c2    	vunpckhpd zmm8,zmm4,zmm10
  a1367a:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a13680:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a13686:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a1368c:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a13692:	62 52 55 40 7f d0    	vpermt2ps zmm10,zmm21,zmm8
  a13698:	62 d2 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm8
  a1369e:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a136a4:	62 52 55 40 7f d9    	vpermt2ps zmm11,zmm21,zmm9
  a136aa:	62 d2 45 40 7f f1    	vpermt2ps zmm6,zmm23,zmm9
  a136b0:	62 71 7c 48 10 49 02 	vmovups zmm9,ZMMWORD PTR [rcx+0x80]
  a136b7:	62 71 7c 48 10 61 03 	vmovups zmm12,ZMMWORD PTR [rcx+0xc0]
  a136be:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a136c5:	62 71 7c 48 10 69 05 	vmovups zmm13,ZMMWORD PTR [rcx+0x140]
  a136cc:	62 d1 74 40 59 c0    	vmulps zmm0,zmm17,zmm8
  a136d2:	62 d2 2d 48 bc c5    	vfnmadd231ps zmm0,zmm10,zmm13
  a136d8:	62 51 2c 48 59 c0    	vmulps zmm8,zmm10,zmm8
  a136de:	62 71 7c 48 10 51 09 	vmovups zmm10,ZMMWORD PTR [rcx+0x240]
  a136e5:	62 32 15 48 b8 c1    	vfmadd231ps zmm8,zmm13,zmm17
  a136eb:	62 71 7c 48 10 69 08 	vmovups zmm13,ZMMWORD PTR [rcx+0x200]
  a136f2:	62 51 44 48 59 f5    	vmulps zmm14,zmm7,zmm13
  a136f8:	62 52 25 48 bc f2    	vfnmadd231ps zmm14,zmm11,zmm10
  a136fe:	62 51 24 48 59 dd    	vmulps zmm11,zmm11,zmm13
  a13704:	62 72 2d 48 b8 df    	vfmadd231ps zmm11,zmm10,zmm7
  a1370a:	62 f1 7c 48 10 79 0b 	vmovups zmm7,ZMMWORD PTR [rcx+0x2c0]
  a13711:	62 71 7c 48 10 51 0a 	vmovups zmm10,ZMMWORD PTR [rcx+0x280]
  a13718:	62 51 4c 48 59 ea    	vmulps zmm13,zmm6,zmm10
  a1371e:	62 72 75 48 b8 ef    	vfmadd231ps zmm13,zmm1,zmm7
  a13724:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a1372a:	62 51 7c 48 5c d6    	vsubps zmm10,zmm0,zmm14
  a13730:	62 e2 7d 48 18 0d 9a 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff661b9a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a13737:	1b 66 ff 
  a1373a:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a13740:	62 f2 45 48 bc ce    	vfnmadd231ps zmm1,zmm7,zmm6
  a13746:	62 d1 3c 48 58 f3    	vaddps zmm6,zmm8,zmm11
  a1374c:	62 d1 54 48 59 f9    	vmulps zmm7,zmm5,zmm9
  a13752:	62 d2 65 48 b8 fc    	vfmadd231ps zmm7,zmm3,zmm12
  a13758:	62 d1 64 48 59 d9    	vmulps zmm3,zmm3,zmm9
  a1375e:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a13765:	62 f2 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm5
  a1376b:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a13772:	62 71 6c 48 59 e5    	vmulps zmm12,zmm2,zmm5
  a13778:	62 52 6d 40 b8 e1    	vfmadd231ps zmm12,zmm18,zmm9
  a1377e:	62 f1 6c 40 59 ed    	vmulps zmm5,zmm18,zmm5
  a13784:	62 e2 7d 48 18 15 d2 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff661cd2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1378b:	1c 66 ff 
  a1378e:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a13794:	62 e2 4d 48 ac c4    	vfnmadd213ps zmm16,zmm6,zmm4
  a1379a:	62 f2 35 48 bc ea    	vfnmadd231ps zmm5,zmm9,zmm2
  a137a0:	62 b1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm16
  a137a6:	62 71 14 48 58 cf    	vaddps zmm9,zmm13,zmm7
  a137ac:	62 d1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm14
  a137b2:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a137b8:	62 52 35 48 ac f4    	vfnmadd213ps zmm14,zmm9,zmm12
  a137be:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a137c4:	62 71 74 48 5c db    	vsubps zmm11,zmm1,zmm3
  a137ca:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a137d0:	62 f1 74 48 58 cb    	vaddps zmm1,zmm1,zmm3
  a137d6:	62 d1 0c 48 58 db    	vaddps zmm3,zmm14,zmm11
  a137dc:	62 f1 14 48 5c ff    	vsubps zmm7,zmm13,zmm7
  a137e2:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a137e8:	62 52 7d 48 ac ef    	vfnmadd213ps zmm13,zmm0,zmm15
  a137ee:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a137f4:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a137fa:	62 c1 14 48 5c c0    	vsubps zmm16,zmm13,zmm8
  a13800:	62 51 0c 48 5c db    	vsubps zmm11,zmm14,zmm11
  a13806:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a1380c:	62 72 75 48 ac f5    	vfnmadd213ps zmm14,zmm1,zmm5
  a13812:	62 b1 44 48 59 f9    	vmulps zmm7,zmm7,zmm17
  a13818:	62 51 14 48 58 c0    	vaddps zmm8,zmm13,zmm8
  a1381e:	62 71 0c 48 5c ef    	vsubps zmm13,zmm14,zmm7
  a13824:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a1382a:	62 f1 4c 48 58 e4    	vaddps zmm4,zmm6,zmm4
  a13830:	62 d1 1c 48 58 f1    	vaddps zmm6,zmm12,zmm9
  a13836:	62 f1 04 48 58 c0    	vaddps zmm0,zmm15,zmm0
  a1383c:	62 f1 54 48 58 c9    	vaddps zmm1,zmm5,zmm1
  a13842:	62 f1 6c 48 5c eb    	vsubps zmm5,zmm2,zmm3
  a13848:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a1384e:	62 d1 7c 40 5c dd    	vsubps zmm3,zmm16,zmm13
  a13854:	62 51 7c 40 58 cd    	vaddps zmm9,zmm16,zmm13
  a1385a:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a13860:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a13866:	62 71 3c 48 58 df    	vaddps zmm11,zmm8,zmm7
  a1386c:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a13872:	62 71 5c 48 5c c6    	vsubps zmm8,zmm4,zmm6
  a13878:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a1387e:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a13884:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a1388a:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a13890:	62 71 7c 48 28 2d 66 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67ba66]        # 8f300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c7b0>
  a13897:	ba 67 ff 
  a1389a:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a138a0:	62 71 7c 48 28 35 96 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67ba96]        # 8f340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c7f0>
  a138a7:	ba 67 ff 
  a138aa:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a138b0:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a138b7:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm1
  a138be:	01 
  a138bf:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a138c5:	62 f2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm7
  a138cb:	62 72 0d 48 7f d7    	vpermt2ps zmm10,zmm14,zmm7
  a138d1:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm10
  a138d8:	02 
  a138d9:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm0
  a138e0:	03 
  a138e1:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a138e7:	62 d2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm9
  a138ed:	62 d2 0d 48 7f d1    	vpermt2ps zmm2,zmm14,zmm9
  a138f3:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm2
  a138fa:	04 
  a138fb:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a13902:	05 
  a13903:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a13909:	62 f2 15 48 7f c6    	vpermt2ps zmm0,zmm13,zmm6
  a1390f:	62 72 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm6
  a13915:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm8
  a1391c:	06 
  a1391d:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a13924:	07 
  a13925:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a1392b:	62 d2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm11
  a13931:	62 52 0d 48 7f e3    	vpermt2ps zmm12,zmm14,zmm11
  a13937:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm12
  a1393e:	08 
  a1393f:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a13946:	09 
  a13947:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a1394d:	62 f2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm3
  a13953:	62 f2 0d 48 7f eb    	vpermt2ps zmm5,zmm14,zmm3
  a13959:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm5
  a13960:	0a 
  a13961:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a13968:	0b 
  a13969:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a13970:	48 39 d0             	cmp    rax,rdx
  a13973:	0f 85 27 f1 ff ff    	jne    a12aa0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a13979:	48 81 c4 88 02 00 00 	add    rsp,0x288
  a13980:	c5 f8 77             	vzeroupper
  a13983:	c3                   	ret
