
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a40c00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a40c00:	55                   	push   rbp
  a40c01:	48 89 e5             	mov    rbp,rsp
  a40c04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a40c08:	48 81 ec 40 03 00 00 	sub    rsp,0x340
  a40c0f:	48 c1 e2 08          	shl    rdx,0x8
  a40c13:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a40c17:	31 d2                	xor    edx,edx
  a40c19:	4c 8d 84 24 c0 02 00 	lea    r8,[rsp+0x2c0]
  a40c20:	00 
  a40c21:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a40c26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a40c2d:	00 00 00 
  a40c30:	c6 84 24 c0 02 00 00 	mov    BYTE PTR [rsp+0x2c0],0x0
  a40c37:	00 
  a40c38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a40c3d:	c5 f8 10 44 17 20    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x20]
  a40c43:	c4 e3 79 21 44 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x24],0x10
  a40c4a:	10 
  a40c4b:	c4 e2 79 18 4c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x28]
  a40c52:	c5 f8 10 54 17 50    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x50]
  a40c58:	c4 e3 69 21 54 17 54 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x54],0x10
  a40c5f:	10 
  a40c60:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  a40c65:	c4 e2 79 18 64 17 58 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x58]
  a40c6c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a40c72:	c5 fc 10 4c 17 30    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x30]
  a40c78:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  a40c7e:	c4 e3 79 21 44 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a40c85:	30 
  a40c86:	c5 f8 10 b4 17 80 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x80]
  a40c8d:	00 00 
  a40c8f:	c4 e3 49 21 b4 17 84 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x84],0x10
  a40c96:	00 00 00 10 
  a40c9a:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a40ca0:	c4 e2 79 18 a4 17 88 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x88]
  a40ca7:	00 00 00 
  a40caa:	c4 e3 69 21 54 17 5c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a40cb1:	30 
  a40cb2:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  a40cb9:	00 00 
  a40cbb:	c4 e3 41 21 bc 17 b4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a40cc2:	00 00 00 10 
  a40cc6:	c4 e3 59 0c e6 03    	vblendps xmm4,xmm4,xmm6,0x3
  a40ccc:	c4 e2 79 18 b4 17 b8 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0xb8]
  a40cd3:	00 00 00 
  a40cd6:	c4 e3 59 21 a4 17 8c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a40cdd:	00 00 00 30 
  a40ce1:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  a40ce8:	00 00 
  a40cea:	c5 7c 10 8c 17 c0 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0xc0]
  a40cf1:	00 00 
  a40cf3:	c5 78 10 94 17 e0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xe0]
  a40cfa:	00 00 
  a40cfc:	c4 e3 49 0c f7 03    	vblendps xmm6,xmm6,xmm7,0x3
  a40d02:	c4 e3 29 21 bc 17 e4 	vinsertps xmm7,xmm10,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a40d09:	00 00 00 10 
  a40d0d:	c4 e3 49 21 b4 17 bc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a40d14:	00 00 00 30 
  a40d18:	c4 62 79 18 94 17 e8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xe8]
  a40d1f:	00 00 00 
  a40d22:	c5 78 10 9c 17 10 01 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x110]
  a40d29:	00 00 
  a40d2b:	c4 e3 29 0c ff 03    	vblendps xmm7,xmm10,xmm7,0x3
  a40d31:	c4 63 21 21 94 17 14 	vinsertps xmm10,xmm11,DWORD PTR [rdi+rdx*1+0x114],0x10
  a40d38:	01 00 00 10 
  a40d3c:	c4 e3 41 21 bc 17 ec 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xec],0x30
  a40d43:	00 00 00 30 
  a40d47:	c5 7c 10 9c 17 f0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xf0]
  a40d4e:	00 00 
  a40d50:	c4 62 79 18 a4 17 18 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x118]
  a40d57:	01 00 00 
  a40d5a:	62 73 65 48 18 e8 02 	vinsertf32x4 zmm13,zmm3,xmm0,0x2
  a40d61:	c4 c3 19 0c c2 03    	vblendps xmm0,xmm12,xmm10,0x3
  a40d67:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a40d6e:	01 00 00 30 
  a40d72:	62 e3 75 48 18 d2 02 	vinsertf32x4 zmm18,zmm1,xmm2,0x2
  a40d79:	c5 f8 10 8c 17 40 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x140]
  a40d80:	00 00 
  a40d82:	c4 e3 71 21 8c 17 44 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x144],0x10
  a40d89:	01 00 00 10 
  a40d8d:	62 e3 55 48 18 f4 02 	vinsertf32x4 zmm22,zmm5,xmm4,0x2
  a40d94:	c5 fc 10 94 17 20 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x120]
  a40d9b:	00 00 
  a40d9d:	c4 e2 79 18 9c 17 48 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x148]
  a40da4:	01 00 00 
  a40da7:	62 e3 3d 48 18 e6 02 	vinsertf32x4 zmm20,zmm8,xmm6,0x2
  a40dae:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a40db4:	c4 e3 71 21 8c 17 4c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a40dbb:	01 00 00 30 
  a40dbf:	62 63 35 48 18 d7 02 	vinsertf32x4 zmm26,zmm9,xmm7,0x2
  a40dc6:	c5 f8 10 9c 17 70 01 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x170]
  a40dcd:	00 00 
  a40dcf:	c4 e3 61 21 9c 17 74 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x174],0x10
  a40dd6:	01 00 00 10 
  a40dda:	62 63 25 48 18 c0 02 	vinsertf32x4 zmm24,zmm11,xmm0,0x2
  a40de1:	c5 fc 10 84 17 50 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x150]
  a40de8:	00 00 
  a40dea:	c4 e2 79 18 a4 17 78 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x178]
  a40df1:	01 00 00 
  a40df4:	62 63 6d 48 18 e9 02 	vinsertf32x4 zmm29,zmm2,xmm1,0x2
  a40dfb:	c4 e3 59 0c cb 03    	vblendps xmm1,xmm4,xmm3,0x3
  a40e01:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a40e08:	01 00 00 30 
  a40e0c:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm13
  a40e13:	02 
  a40e14:	c5 f8 10 94 17 a0 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x1a0]
  a40e1b:	00 00 
  a40e1d:	c4 e3 69 21 94 17 a4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x1a4],0x10
  a40e24:	01 00 00 10 
  a40e28:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a40e2c:	62 71 7c 48 28 1d 4a 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff650e4a]        # 91c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f130>
  a40e33:	0e 65 ff 
  a40e36:	62 72 25 48 7f eb    	vpermt2ps zmm13,zmm11,zmm3
  a40e3c:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm13
  a40e43:	08 
  a40e44:	62 63 7d 48 18 d9 02 	vinsertf32x4 zmm27,zmm0,xmm1,0x2
  a40e4b:	c4 e2 79 18 84 17 a8 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x1a8]
  a40e52:	01 00 00 
  a40e55:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm18
  a40e5c:	01 
  a40e5d:	c4 e3 79 0c c2 03    	vblendps xmm0,xmm0,xmm2,0x3
  a40e63:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1ac],0x30
  a40e6a:	01 00 00 30 
  a40e6e:	62 e2 25 48 7f d3    	vpermt2ps zmm18,zmm11,zmm3
  a40e74:	c5 fc 10 8c 17 80 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x180]
  a40e7b:	00 00 
  a40e7d:	62 63 75 48 18 c8 02 	vinsertf32x4 zmm25,zmm1,xmm0,0x2
  a40e84:	c5 fc 10 84 17 b0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1b0]
  a40e8b:	00 00 
  a40e8d:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a40e93:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a40e9a:	00 00 
  a40e9c:	c4 e3 71 21 8c 17 d4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x1d4],0x10
  a40ea3:	01 00 00 10 
  a40ea7:	62 e2 25 48 7f f3    	vpermt2ps zmm22,zmm11,zmm3
  a40ead:	c4 e2 79 18 94 17 d8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x1d8]
  a40eb4:	01 00 00 
  a40eb7:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a40ebd:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm20
  a40ec4:	0a 
  a40ec5:	c4 e3 71 21 8c 17 dc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x1dc],0x30
  a40ecc:	01 00 00 30 
  a40ed0:	62 73 7d 48 18 f1 02 	vinsertf32x4 zmm14,zmm0,xmm1,0x2
  a40ed7:	62 e2 25 48 7f e3    	vpermt2ps zmm20,zmm11,zmm3
  a40edd:	c5 f8 10 84 17 00 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x200]
  a40ee4:	00 00 
  a40ee6:	c4 e3 79 21 84 17 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x204],0x10
  a40eed:	02 00 00 10 
  a40ef1:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm26
  a40ef8:	09 
  a40ef9:	c5 fc 10 8c 17 e0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a40f00:	00 00 
  a40f02:	c4 e2 79 18 94 17 08 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x208]
  a40f09:	02 00 00 
  a40f0c:	62 62 25 48 7f d3    	vpermt2ps zmm26,zmm11,zmm3
  a40f12:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a40f18:	c4 e3 79 21 84 17 0c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x20c],0x30
  a40f1f:	02 00 00 30 
  a40f23:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a40f29:	c5 f8 10 94 17 30 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x230]
  a40f30:	00 00 
  a40f32:	c4 e3 69 21 94 17 34 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x234],0x10
  a40f39:	02 00 00 10 
  a40f3d:	62 62 25 48 7f c3    	vpermt2ps zmm24,zmm11,zmm3
  a40f43:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a40f4a:	c4 e2 79 18 84 17 38 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x238]
  a40f51:	02 00 00 
  a40f54:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a40f5a:	c4 e3 79 0c c2 03    	vblendps xmm0,xmm0,xmm2,0x3
  a40f60:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x23c],0x30
  a40f67:	02 00 00 30 
  a40f6b:	62 62 25 48 7f eb    	vpermt2ps zmm29,zmm11,zmm3
  a40f71:	c5 fc 10 94 17 10 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x210]
  a40f78:	00 00 
  a40f7a:	62 73 6d 48 18 f8 02 	vinsertf32x4 zmm15,zmm2,xmm0,0x2
  a40f81:	c5 fc 10 84 17 40 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x240]
  a40f88:	00 00 
  a40f8a:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a40f90:	c5 f8 10 94 17 60 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x260]
  a40f97:	00 00 
  a40f99:	c4 e3 69 21 94 17 64 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x264],0x10
  a40fa0:	02 00 00 10 
  a40fa4:	62 62 25 48 7f db    	vpermt2ps zmm27,zmm11,zmm3
  a40faa:	c4 e2 79 18 a4 17 68 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x268]
  a40fb1:	02 00 00 
  a40fb4:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a40fba:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a40fc0:	c4 e3 69 21 94 17 6c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x26c],0x30
  a40fc7:	02 00 00 30 
  a40fcb:	62 f3 7d 48 18 c2 02 	vinsertf32x4 zmm0,zmm0,xmm2,0x2
  a40fd2:	62 72 25 48 7f f3    	vpermt2ps zmm14,zmm11,zmm3
  a40fd8:	c5 f8 10 94 17 90 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x290]
  a40fdf:	00 00 
  a40fe1:	c4 e3 69 21 a4 17 94 	vinsertps xmm4,xmm2,DWORD PTR [rdi+rdx*1+0x294],0x10
  a40fe8:	02 00 00 10 
  a40fec:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a40ff2:	c5 fc 10 ac 17 70 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x270]
  a40ff9:	00 00 
  a40ffb:	c4 e2 79 18 b4 17 98 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x298]
  a41002:	02 00 00 
  a41005:	62 f2 25 48 7f cb    	vpermt2ps zmm1,zmm11,zmm3
  a4100b:	c4 e3 49 0c e4 03    	vblendps xmm4,xmm6,xmm4,0x3
  a41011:	c4 e3 59 21 b4 17 9c 	vinsertps xmm6,xmm4,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a41018:	02 00 00 30 
  a4101c:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a41022:	c5 f8 10 bc 17 c0 02 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a41029:	00 00 
  a4102b:	c4 63 41 21 84 17 c4 	vinsertps xmm8,xmm7,DWORD PTR [rdi+rdx*1+0x2c4],0x10
  a41032:	02 00 00 10 
  a41036:	62 72 25 48 7f fb    	vpermt2ps zmm15,zmm11,zmm3
  a4103c:	62 f3 55 48 18 fe 02 	vinsertf32x4 zmm7,zmm5,xmm6,0x2
  a41043:	c4 e2 79 18 ac 17 c8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x2c8]
  a4104a:	02 00 00 
  a4104d:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a41053:	c4 c3 51 0c e8 03    	vblendps xmm5,xmm5,xmm8,0x3
  a41059:	c4 e3 51 21 ac 17 cc 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x2cc],0x30
  a41060:	02 00 00 30 
  a41064:	62 f2 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm3
  a4106a:	c5 fc 10 b4 17 a0 02 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x2a0]
  a41071:	00 00 
  a41073:	62 73 4d 48 18 d5 02 	vinsertf32x4 zmm10,zmm6,xmm5,0x2
  a4107a:	c5 fc 10 ac 17 d0 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x2d0]
  a41081:	00 00 
  a41083:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a41089:	c5 f8 10 94 17 f0 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x2f0]
  a41090:	00 00 
  a41092:	c4 e3 69 21 94 17 f4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x2f4],0x10
  a41099:	02 00 00 10 
  a4109d:	62 f2 25 48 7f fb    	vpermt2ps zmm7,zmm11,zmm3
  a410a3:	c4 e2 79 18 b4 17 f8 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x2f8]
  a410aa:	02 00 00 
  a410ad:	c4 e3 49 0c f2 03    	vblendps xmm6,xmm6,xmm2,0x3
  a410b3:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a410b9:	c4 e3 49 21 b4 17 fc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x2fc],0x30
  a410c0:	02 00 00 30 
  a410c4:	62 73 55 48 18 ce 02 	vinsertf32x4 zmm9,zmm5,xmm6,0x2
  a410cb:	62 72 25 48 7f d3    	vpermt2ps zmm10,zmm11,zmm3
  a410d1:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a410d7:	62 72 25 48 7f cb    	vpermt2ps zmm9,zmm11,zmm3
  a410dd:	62 f1 2c 40 58 e8    	vaddps zmm5,zmm26,zmm0
  a410e3:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm5
  a410ea:	07 
  a410eb:	62 f1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm0
  a410f1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a410f8:	06 
  a410f9:	62 e1 4c 40 58 e9    	vaddps zmm21,zmm22,zmm1
  a410ff:	62 f1 4c 40 5c e9    	vsubps zmm5,zmm22,zmm1
  a41105:	62 d1 14 40 58 f2    	vaddps zmm6,zmm29,zmm10
  a4110b:	62 c1 14 40 5c da    	vsubps zmm19,zmm29,zmm10
  a41111:	62 e1 3c 40 58 f7    	vaddps zmm22,zmm24,zmm7
  a41117:	62 f1 3c 40 5c c7    	vsubps zmm0,zmm24,zmm7
  a4111d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a41124:	05 
  a41125:	62 41 6c 40 58 ee    	vaddps zmm29,zmm18,zmm14
  a4112b:	62 41 6c 40 5c d6    	vsubps zmm26,zmm18,zmm14
  a41131:	62 41 24 40 58 c1    	vaddps zmm24,zmm27,zmm9
  a41137:	62 d1 24 40 5c c1    	vsubps zmm0,zmm27,zmm9
  a4113d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a41144:	03 
  a41145:	62 d1 5c 40 58 ff    	vaddps zmm7,zmm20,zmm15
  a4114b:	62 d1 5c 40 5c c7    	vsubps zmm0,zmm20,zmm15
  a41151:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a41158:	04 
  a41159:	62 11 7c 48 28 d1    	vmovaps zmm10,zmm25
  a4115f:	62 62 25 48 7f cb    	vpermt2ps zmm25,zmm11,zmm3
  a41165:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a4116c:	08 
  a4116d:	62 01 7c 48 58 d9    	vaddps zmm27,zmm0,zmm25
  a41173:	62 11 7c 48 5c c9    	vsubps zmm9,zmm0,zmm25
  a41179:	62 e1 7c 48 28 25 bd 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff650abd]        # 91c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f0f0>
  a41180:	0a 65 ff 
  a41183:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a4118a:	02 
  a4118b:	62 f2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm3
  a41191:	62 72 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm3
  a41197:	62 51 7c 48 58 da    	vaddps zmm11,zmm0,zmm10
  a4119d:	62 41 7c 48 5c ca    	vsubps zmm25,zmm0,zmm10
  a411a3:	62 e2 5d 40 7f fb    	vpermt2ps zmm23,zmm20,zmm3
  a411a9:	62 72 5d 40 7f e3    	vpermt2ps zmm12,zmm20,zmm3
  a411af:	62 c1 44 40 58 d4    	vaddps zmm18,zmm23,zmm12
  a411b5:	62 51 44 40 5c e4    	vsubps zmm12,zmm23,zmm12
  a411bb:	62 62 5d 40 7f fb    	vpermt2ps zmm31,zmm20,zmm3
  a411c1:	62 f2 5d 40 7f d3    	vpermt2ps zmm2,zmm20,zmm3
  a411c7:	62 71 04 40 58 f2    	vaddps zmm14,zmm31,zmm2
  a411cd:	62 f1 04 40 5c d2    	vsubps zmm2,zmm31,zmm2
  a411d3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a411da:	01 
  a411db:	62 f2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm3
  a411e1:	62 e2 5d 40 7f cb    	vpermt2ps zmm17,zmm20,zmm3
  a411e7:	62 31 7c 48 58 d1    	vaddps zmm10,zmm0,zmm17
  a411ed:	62 a1 7c 48 5c f9    	vsubps zmm23,zmm0,zmm17
  a411f3:	62 62 5d 40 7f e3    	vpermt2ps zmm28,zmm20,zmm3
  a411f9:	62 72 5d 40 7f c3    	vpermt2ps zmm8,zmm20,zmm3
  a411ff:	62 d1 1c 40 58 c0    	vaddps zmm0,zmm28,zmm8
  a41205:	62 01 3c 48 5c e4    	vsubps zmm28,zmm8,zmm28
  a4120b:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x280]
  a41212:	0a 
  a41213:	62 72 5d 40 7f c3    	vpermt2ps zmm8,zmm20,zmm3
  a41219:	62 e2 5d 40 7f c3    	vpermt2ps zmm16,zmm20,zmm3
  a4121f:	62 b1 3c 48 58 c8    	vaddps zmm1,zmm8,zmm16
  a41225:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a4122b:	62 62 5d 40 7f f3    	vpermt2ps zmm30,zmm20,zmm3
  a41231:	62 f2 5d 40 7f e3    	vpermt2ps zmm4,zmm20,zmm3
  a41237:	62 61 0c 40 58 fc    	vaddps zmm31,zmm30,zmm4
  a4123d:	62 01 5c 48 5c f6    	vsubps zmm30,zmm4,zmm30
  a41243:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x240]
  a4124a:	09 
  a4124b:	62 72 5d 40 7f fb    	vpermt2ps zmm15,zmm20,zmm3
  a41251:	62 72 5d 40 7f eb    	vpermt2ps zmm13,zmm20,zmm3
  a41257:	62 d1 04 48 58 e5    	vaddps zmm4,zmm15,zmm13
  a4125d:	62 51 14 48 5c ff    	vsubps zmm15,zmm13,zmm15
  a41263:	62 f1 1c 48 58 dd    	vaddps zmm3,zmm12,zmm5
  a41269:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a41270:	02 
  a41271:	62 d1 54 48 5c dc    	vsubps zmm3,zmm5,zmm12
  a41277:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a4127e:	0a 
  a4127f:	62 f1 64 40 5c da    	vsubps zmm3,zmm19,zmm2
  a41285:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a4128c:	01 
  a4128d:	62 b1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm19
  a41293:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a4129a:	09 
  a4129b:	62 e1 54 40 58 de    	vaddps zmm19,zmm21,zmm6
  a412a1:	62 71 54 40 5c e6    	vsubps zmm12,zmm21,zmm6
  a412a7:	62 f1 24 48 58 f4    	vaddps zmm6,zmm11,zmm4
  a412ad:	62 f1 24 48 5c e4    	vsubps zmm4,zmm11,zmm4
  a412b3:	62 31 14 40 58 de    	vaddps zmm11,zmm29,zmm22
  a412b9:	62 b1 14 40 5c ee    	vsubps zmm5,zmm29,zmm22
  a412bf:	62 e1 2c 48 58 f0    	vaddps zmm22,zmm10,zmm0
  a412c5:	62 71 2c 48 5c d0    	vsubps zmm10,zmm10,zmm0
  a412cb:	62 01 44 48 58 e8    	vaddps zmm29,zmm7,zmm24
  a412d1:	62 91 44 48 5c f8    	vsubps zmm7,zmm7,zmm24
  a412d7:	62 11 74 48 58 ef    	vaddps zmm13,zmm1,zmm31
  a412dd:	62 91 74 48 5c cf    	vsubps zmm1,zmm1,zmm31
  a412e3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a412ea:	07 
  a412eb:	62 61 24 40 58 f8    	vaddps zmm31,zmm27,zmm0
  a412f1:	62 61 24 40 5c c0    	vsubps zmm24,zmm27,zmm0
  a412f7:	62 41 6c 40 58 de    	vaddps zmm27,zmm18,zmm14
  a412fd:	62 b1 0c 48 5c da    	vsubps zmm3,zmm14,zmm18
  a41303:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a4130a:	06 
  a4130b:	62 e1 34 40 58 d0    	vaddps zmm18,zmm25,zmm0
  a41311:	62 f1 34 40 5c c0    	vsubps zmm0,zmm25,zmm0
  a41317:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a4131e:	08 
  a4131f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a41326:	05 
  a41327:	62 71 44 40 58 f0    	vaddps zmm14,zmm23,zmm0
  a4132d:	62 e1 44 40 5c f8    	vsubps zmm23,zmm23,zmm0
  a41333:	62 91 1c 40 58 c2    	vaddps zmm0,zmm28,zmm26
  a41339:	62 01 2c 40 5c e4    	vsubps zmm28,zmm26,zmm28
  a4133f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a41346:	03 
  a41347:	62 61 3c 48 58 d2    	vaddps zmm26,zmm8,zmm2
  a4134d:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a41353:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a4135a:	04 
  a4135b:	62 c1 0c 40 58 e0    	vaddps zmm20,zmm30,zmm8
  a41361:	62 81 3c 48 5c ce    	vsubps zmm17,zmm8,zmm30
  a41367:	62 71 2c 48 58 c5    	vaddps zmm8,zmm10,zmm5
  a4136d:	62 51 54 48 5c d2    	vsubps zmm10,zmm5,zmm10
  a41373:	62 c1 04 48 58 e9    	vaddps zmm21,zmm15,zmm9
  a41379:	62 c1 34 48 5c c7    	vsubps zmm16,zmm9,zmm15
  a4137f:	62 f1 44 48 5c e9    	vsubps zmm5,zmm7,zmm1
  a41385:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a4138c:	03 
  a4138d:	62 61 74 48 58 f7    	vaddps zmm30,zmm1,zmm7
  a41393:	62 01 24 48 58 cd    	vaddps zmm25,zmm11,zmm29
  a41399:	62 91 24 48 5c cd    	vsubps zmm1,zmm11,zmm29
  a4139f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a413a6:	06 
  a413a7:	62 11 4c 48 58 cb    	vaddps zmm9,zmm6,zmm27
  a413ad:	62 91 4c 48 5c cb    	vsubps zmm1,zmm6,zmm27
  a413b3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a413ba:	04 
  a413bb:	62 21 04 40 58 db    	vaddps zmm27,zmm31,zmm19
  a413c1:	62 b1 04 40 5c cb    	vsubps zmm1,zmm31,zmm19
  a413c7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a413ce:	07 
  a413cf:	62 51 4c 40 58 dd    	vaddps zmm11,zmm22,zmm13
  a413d5:	62 b1 14 48 5c ce    	vsubps zmm1,zmm13,zmm22
  a413db:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a413e2:	05 
  a413e3:	62 f2 7d 48 18 35 77 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff634277]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a413ea:	42 63 ff 
  a413ed:	62 71 7c 48 59 ee    	vmulps zmm13,zmm0,zmm6
  a413f3:	62 f2 7d 48 18 3d 03 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff634303]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a413fa:	43 63 ff 
  a413fd:	62 72 0d 48 b8 ef    	vfmadd231ps zmm13,zmm14,zmm7
  a41403:	62 f1 7c 48 59 cf    	vmulps zmm1,zmm0,zmm7
  a41409:	62 d2 4d 48 bc ce    	vfnmadd231ps zmm1,zmm6,zmm14
  a4140f:	62 71 5c 40 59 f7    	vmulps zmm14,zmm20,zmm7
  a41415:	62 72 2d 40 b8 f6    	vfmadd231ps zmm14,zmm26,zmm6
  a4141b:	62 e1 5c 40 59 e6    	vmulps zmm20,zmm20,zmm6
  a41421:	62 82 45 48 bc e2    	vfnmadd231ps zmm20,zmm7,zmm26
  a41427:	62 f2 7d 48 18 2d 6b 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff633f6b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a4142e:	3f 63 ff 
  a41431:	62 e1 54 48 59 74 24 	vmulps zmm22,zmm5,ZMMWORD PTR [rsp+0x280]
  a41438:	0a 
  a41439:	62 61 54 48 59 54 24 	vmulps zmm26,zmm5,ZMMWORD PTR [rsp+0x240]
  a41440:	09 
  a41441:	62 01 4c 40 5c ea    	vsubps zmm29,zmm22,zmm26
  a41447:	62 81 4c 40 58 f2    	vaddps zmm22,zmm22,zmm26
  a4144d:	62 61 54 48 59 54 24 	vmulps zmm26,zmm5,ZMMWORD PTR [rsp+0x80]
  a41454:	02 
  a41455:	62 61 54 48 59 7c 24 	vmulps zmm31,zmm5,ZMMWORD PTR [rsp+0x40]
  a4145c:	01 
  a4145d:	62 91 2c 40 58 c7    	vaddps zmm0,zmm26,zmm31
  a41463:	62 01 04 40 5c d2    	vsubps zmm26,zmm31,zmm26
  a41469:	62 61 1c 40 59 ff    	vmulps zmm31,zmm28,zmm7
  a4146f:	62 62 45 40 b8 fe    	vfmadd231ps zmm31,zmm23,zmm6
  a41475:	62 61 1c 40 59 e6    	vmulps zmm28,zmm28,zmm6
  a4147b:	62 22 45 48 bc e7    	vfnmadd231ps zmm28,zmm7,zmm23
  a41481:	62 e1 74 40 59 fe    	vmulps zmm23,zmm17,zmm6
  a41487:	62 e2 6d 48 b8 ff    	vfmadd231ps zmm23,zmm2,zmm7
  a4148d:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a41493:	62 b2 45 48 bc d1    	vfnmadd231ps zmm2,zmm7,zmm17
  a41499:	62 c1 5c 48 58 cc    	vaddps zmm17,zmm4,zmm12
  a4149f:	62 c1 5c 48 5c dc    	vsubps zmm19,zmm4,zmm12
  a414a5:	62 71 6c 40 58 e0    	vaddps zmm12,zmm18,zmm0
  a414ab:	62 71 6c 40 5c f8    	vsubps zmm15,zmm18,zmm0
  a414b1:	62 81 64 48 58 d0    	vaddps zmm18,zmm3,zmm24
  a414b7:	62 61 3c 40 5c c3    	vsubps zmm24,zmm24,zmm3
  a414bd:	62 91 54 40 58 fd    	vaddps zmm7,zmm21,zmm29
  a414c3:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a414c9:	62 f1 2c 48 59 dd    	vmulps zmm3,zmm10,zmm5
  a414cf:	62 f1 0c 40 59 e5    	vmulps zmm4,zmm30,zmm5
  a414d5:	62 61 64 48 5c ec    	vsubps zmm29,zmm3,zmm4
  a414db:	62 61 64 48 58 f4    	vaddps zmm30,zmm3,zmm4
  a414e1:	62 f1 3c 48 59 dd    	vmulps zmm3,zmm8,zmm5
  a414e7:	62 f1 54 48 59 64 24 	vmulps zmm4,zmm5,ZMMWORD PTR [rsp+0xc0]
  a414ee:	03 
  a414ef:	62 f1 64 48 58 ec    	vaddps zmm5,zmm3,zmm4
  a414f5:	62 71 5c 48 5c d3    	vsubps zmm10,zmm4,zmm3
  a414fb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a41502:	08 
  a41503:	62 b1 7c 48 58 f6    	vaddps zmm6,zmm0,zmm22
  a41509:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a4150f:	62 b1 74 48 58 e4    	vaddps zmm4,zmm1,zmm20
  a41515:	62 a1 74 48 5c e4    	vsubps zmm20,zmm1,zmm20
  a4151b:	62 91 7c 40 58 ca    	vaddps zmm1,zmm16,zmm26
  a41521:	62 81 7c 40 5c c2    	vsubps zmm16,zmm16,zmm26
  a41527:	62 d1 14 48 58 c6    	vaddps zmm0,zmm13,zmm14
  a4152d:	62 51 0c 48 5c c5    	vsubps zmm8,zmm14,zmm13
  a41533:	62 d1 34 48 58 db    	vaddps zmm3,zmm9,zmm11
  a41539:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a4153f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a41546:	01 
  a41547:	62 71 1c 40 58 ca    	vaddps zmm9,zmm28,zmm2
  a4154d:	62 f1 1c 40 5c d2    	vsubps zmm2,zmm28,zmm2
  a41553:	62 01 24 40 58 d1    	vaddps zmm26,zmm27,zmm25
  a41559:	62 11 24 40 5c d9    	vsubps zmm11,zmm27,zmm25
  a4155f:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm11
  a41566:	02 
  a41567:	62 31 04 40 5c ef    	vsubps zmm13,zmm31,zmm23
  a4156d:	62 21 04 40 58 cf    	vaddps zmm25,zmm31,zmm23
  a41573:	62 61 74 40 58 fd    	vaddps zmm31,zmm17,zmm5
  a41579:	62 61 74 40 5c e5    	vsubps zmm28,zmm17,zmm5
  a4157f:	62 71 1c 48 58 f0    	vaddps zmm14,zmm12,zmm0
  a41585:	62 71 1c 48 5c d8    	vsubps zmm11,zmm12,zmm0
  a4158b:	62 11 6c 40 58 e5    	vaddps zmm12,zmm18,zmm29
  a41591:	62 01 6c 40 5c ed    	vsubps zmm29,zmm18,zmm29
  a41597:	62 e1 44 48 58 fc    	vaddps zmm23,zmm7,zmm4
  a4159d:	62 61 44 48 5c dc    	vsubps zmm27,zmm7,zmm4
  a415a3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a415aa:	06 
  a415ab:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x100]
  a415b2:	04 
  a415b3:	62 f1 5c 48 58 e8    	vaddps zmm5,zmm4,zmm0
  a415b9:	62 f1 5c 48 5c f8    	vsubps zmm7,zmm4,zmm0
  a415bf:	62 c1 4c 48 58 d5    	vaddps zmm18,zmm6,zmm13
  a415c5:	62 d1 4c 48 5c c5    	vsubps zmm0,zmm6,zmm13
  a415cb:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a415d2:	07 
  a415d3:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x140]
  a415da:	05 
  a415db:	62 f1 14 48 58 f4    	vaddps zmm6,zmm13,zmm4
  a415e1:	62 c1 5c 48 5c cd    	vsubps zmm17,zmm4,zmm13
  a415e7:	62 51 74 48 58 e9    	vaddps zmm13,zmm1,zmm9
  a415ed:	62 d1 74 48 5c e1    	vsubps zmm4,zmm1,zmm9
  a415f3:	62 11 64 40 58 ce    	vaddps zmm9,zmm19,zmm30
  a415f9:	62 01 64 40 5c f6    	vsubps zmm30,zmm19,zmm30
  a415ff:	62 a1 04 48 58 dc    	vaddps zmm19,zmm15,zmm20
  a41605:	62 31 04 48 5c fc    	vsubps zmm15,zmm15,zmm20
  a4160b:	62 d1 3c 40 58 ca    	vaddps zmm1,zmm24,zmm10
  a41611:	62 c1 3c 40 5c e2    	vsubps zmm20,zmm24,zmm10
  a41617:	62 51 54 40 58 d0    	vaddps zmm10,zmm21,zmm8
  a4161d:	62 c1 54 40 5c e8    	vsubps zmm21,zmm21,zmm8
  a41623:	62 61 4c 40 58 c2    	vaddps zmm24,zmm22,zmm2
  a41629:	62 e1 4c 40 5c f2    	vsubps zmm22,zmm22,zmm2
  a4162f:	62 91 7c 40 5c d1    	vsubps zmm2,zmm16,zmm25
  a41635:	62 11 7c 40 58 c1    	vaddps zmm8,zmm16,zmm25
  a4163b:	62 e1 7c 48 28 05 3b 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68593b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a41642:	59 68 ff 
  a41645:	62 f2 7d 40 7f 5c 24 	vpermt2ps zmm3,zmm16,ZMMWORD PTR [rsp+0x40]
  a4164c:	01 
  a4164d:	62 52 7d 40 7f f3    	vpermt2ps zmm14,zmm16,zmm11
  a41653:	62 02 7d 40 7f fc    	vpermt2ps zmm31,zmm16,zmm28
  a41659:	62 e2 7d 40 7f d0    	vpermt2ps zmm18,zmm16,zmm0
  a4165f:	62 f2 7d 40 7f ef    	vpermt2ps zmm5,zmm16,zmm7
  a41665:	62 c2 7d 40 7f df    	vpermt2ps zmm19,zmm16,zmm15
  a4166b:	62 12 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm30
  a41671:	62 22 7d 40 7f c6    	vpermt2ps zmm24,zmm16,zmm22
  a41677:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4167d:	62 e1 7c 48 28 35 79 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff685879]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a41684:	58 68 ff 
  a41687:	62 f2 4d 40 7f c5    	vpermt2ps zmm0,zmm22,zmm5
  a4168d:	62 61 7c 48 28 0d a9 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6858a9]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a41694:	58 68 ff 
  a41697:	62 f2 35 40 7f dd    	vpermt2ps zmm3,zmm25,zmm5
  a4169d:	62 91 7c 48 28 ef    	vmovaps zmm5,zmm31
  a416a3:	62 d2 4d 40 7f e9    	vpermt2ps zmm5,zmm22,zmm9
  a416a9:	62 42 35 40 7f f9    	vpermt2ps zmm31,zmm25,zmm9
  a416af:	62 91 e5 48 14 df    	vunpcklpd zmm3,zmm3,zmm31
  a416b5:	62 71 fd 48 14 dd    	vunpcklpd zmm11,zmm0,zmm5
  a416bb:	62 71 fd 48 15 fd    	vunpckhpd zmm15,zmm0,zmm5
  a416c1:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a416c7:	62 32 35 40 7f f3    	vpermt2ps zmm14,zmm25,zmm19
  a416cd:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a416d3:	62 62 7d 40 7f 54 24 	vpermt2ps zmm26,zmm16,ZMMWORD PTR [rsp+0x80]
  a416da:	02 
  a416db:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a416e1:	62 82 35 40 7f d0    	vpermt2ps zmm18,zmm25,zmm24
  a416e7:	62 92 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm24
  a416ed:	62 82 7d 40 7f fb    	vpermt2ps zmm23,zmm16,zmm27
  a416f3:	62 12 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm29
  a416f9:	62 72 7d 40 7f ec    	vpermt2ps zmm13,zmm16,zmm4
  a416ff:	62 b1 8d 48 14 e2    	vunpcklpd zmm4,zmm14,zmm18
  a41705:	62 b2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm17
  a4170b:	62 32 7d 40 7f d5    	vpermt2ps zmm10,zmm16,zmm21
  a41711:	62 71 fd 48 14 cd    	vunpcklpd zmm9,zmm0,zmm5
  a41717:	62 f1 fd 48 15 ed    	vunpckhpd zmm5,zmm0,zmm5
  a4171d:	62 b2 7d 40 7f cc    	vpermt2ps zmm1,zmm16,zmm20
  a41723:	62 d2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm8
  a41729:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a4172f:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a41735:	62 72 4d 40 7f c6    	vpermt2ps zmm8,zmm22,zmm6
  a4173b:	62 62 35 40 7f d6    	vpermt2ps zmm26,zmm25,zmm6
  a41741:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a41747:	62 d2 4d 40 7f f2    	vpermt2ps zmm6,zmm22,zmm10
  a4174d:	62 c2 35 40 7f fa    	vpermt2ps zmm23,zmm25,zmm10
  a41753:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a41759:	62 e1 7c 48 28 0d 9d 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff68569d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a41760:	56 68 ff 
  a41763:	62 72 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm4
  a41769:	62 e1 7c 48 28 15 cd 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6856cd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a41770:	56 68 ff 
  a41773:	62 f2 6d 40 7f dc    	vpermt2ps zmm3,zmm18,zmm4
  a41779:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a4177f:	62 72 4d 40 7f f1    	vpermt2ps zmm14,zmm22,zmm1
  a41785:	62 72 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm1
  a4178b:	62 c2 75 40 7f c1    	vpermt2ps zmm16,zmm17,zmm9
  a41791:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a41797:	62 d1 ad 40 14 fc    	vunpcklpd zmm7,zmm26,zmm12
  a4179d:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a417a3:	62 52 6d 40 7f d9    	vpermt2ps zmm11,zmm18,zmm9
  a417a9:	62 f2 4d 40 7f ca    	vpermt2ps zmm1,zmm22,zmm2
  a417af:	62 72 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm2
  a417b5:	62 51 c5 40 14 cd    	vunpcklpd zmm9,zmm23,zmm13
  a417bb:	62 f2 75 40 7f c5    	vpermt2ps zmm0,zmm17,zmm5
  a417c1:	62 d1 bd 48 14 e6    	vunpcklpd zmm4,zmm8,zmm14
  a417c7:	62 d1 bd 48 15 d6    	vunpckhpd zmm2,zmm8,zmm14
  a417cd:	62 71 cd 48 14 c1    	vunpcklpd zmm8,zmm6,zmm1
  a417d3:	62 72 6d 40 7f fd    	vpermt2ps zmm15,zmm18,zmm5
  a417d9:	62 f1 cd 48 15 f1    	vunpckhpd zmm6,zmm6,zmm1
  a417df:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a417e5:	62 d2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm8
  a417eb:	62 d2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm8
  a417f1:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a417f7:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a417fd:	62 52 75 40 7f c1    	vpermt2ps zmm8,zmm17,zmm9
  a41803:	62 72 75 40 7f e6    	vpermt2ps zmm12,zmm17,zmm6
  a41809:	62 d2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm9
  a4180f:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a41816:	62 71 7c 48 10 69 08 	vmovups zmm13,ZMMWORD PTR [rcx+0x200]
  a4181d:	62 d1 2c 48 59 ed    	vmulps zmm5,zmm10,zmm13
  a41823:	62 d2 3d 48 bc e9    	vfnmadd231ps zmm5,zmm8,zmm9
  a41829:	62 51 3c 48 59 c5    	vmulps zmm8,zmm8,zmm13
  a4182f:	62 71 7c 48 10 69 0b 	vmovups zmm13,ZMMWORD PTR [rcx+0x2c0]
  a41836:	62 52 35 48 b8 c2    	vfmadd231ps zmm8,zmm9,zmm10
  a4183c:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a41843:	62 51 44 48 59 d1    	vmulps zmm10,zmm7,zmm9
  a41849:	62 51 64 48 59 c9    	vmulps zmm9,zmm3,zmm9
  a4184f:	62 52 65 48 b8 d5    	vfmadd231ps zmm10,zmm3,zmm13
  a41855:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a4185c:	62 72 15 48 bc cf    	vfnmadd231ps zmm9,zmm13,zmm7
  a41862:	62 f1 7c 48 10 79 05 	vmovups zmm7,ZMMWORD PTR [rcx+0x140]
  a41869:	62 71 7c 48 59 eb    	vmulps zmm13,zmm0,zmm3
  a4186f:	62 72 1d 48 bc ef    	vfnmadd231ps zmm13,zmm12,zmm7
  a41875:	62 f1 1c 48 59 db    	vmulps zmm3,zmm12,zmm3
  a4187b:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a41882:	62 f2 45 48 b8 d8    	vfmadd231ps zmm3,zmm7,zmm0
  a41888:	62 f1 7c 48 10 41 03 	vmovups zmm0,ZMMWORD PTR [rcx+0xc0]
  a4188f:	62 d1 5c 48 59 fc    	vmulps zmm7,zmm4,zmm12
  a41895:	62 51 24 48 59 e4    	vmulps zmm12,zmm11,zmm12
  a4189b:	62 f2 25 48 b8 f8    	vfmadd231ps zmm7,zmm11,zmm0
  a418a1:	62 72 7d 48 bc e4    	vfnmadd231ps zmm12,zmm0,zmm4
  a418a7:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a418ae:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  a418b5:	62 f2 6d 40 7f d6    	vpermt2ps zmm2,zmm18,zmm6
  a418bb:	62 f1 6c 48 59 f4    	vmulps zmm6,zmm2,zmm4
  a418c1:	62 f2 05 48 b8 f0    	vfmadd231ps zmm6,zmm15,zmm0
  a418c7:	62 f1 04 48 59 e4    	vmulps zmm4,zmm15,zmm4
  a418cd:	62 71 14 48 5c dd    	vsubps zmm11,zmm13,zmm5
  a418d3:	62 f2 7d 48 bc e2    	vfnmadd231ps zmm4,zmm0,zmm2
  a418d9:	62 d1 64 48 58 c0    	vaddps zmm0,zmm3,zmm8
  a418df:	62 72 7d 48 18 3d 77 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff633b77]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a418e6:	3b 63 ff 
  a418e9:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a418ef:	62 72 7d 48 18 35 db 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6339db]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a418f6:	39 63 ff 
  a418f9:	62 51 24 48 59 de    	vmulps zmm11,zmm11,zmm14
  a418ff:	62 f1 14 48 58 ed    	vaddps zmm5,zmm13,zmm5
  a41905:	62 71 2c 48 58 ef    	vaddps zmm13,zmm10,zmm7
  a4190b:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a41911:	62 f2 7d 48 ac d1    	vfnmadd213ps zmm2,zmm0,zmm1
  a41917:	62 51 34 48 5c c4    	vsubps zmm8,zmm9,zmm12
  a4191d:	62 51 34 48 58 cc    	vaddps zmm9,zmm9,zmm12
  a41923:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a41929:	62 71 24 48 58 d2    	vaddps zmm10,zmm11,zmm2
  a4192f:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a41935:	62 72 15 48 ac e6    	vfnmadd213ps zmm12,zmm13,zmm6
  a4193b:	62 51 3c 48 59 c6    	vmulps zmm8,zmm8,zmm14
  a41941:	62 d1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm11
  a41947:	62 51 1c 48 58 d8    	vaddps zmm11,zmm12,zmm8
  a4194d:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a41953:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a41959:	62 32 55 48 ac e0    	vfnmadd213ps zmm12,zmm5,zmm16
  a4195f:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a41965:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a4196b:	62 f1 1c 48 5c cb    	vsubps zmm1,zmm12,zmm3
  a41971:	62 f1 1c 48 58 db    	vaddps zmm3,zmm12,zmm3
  a41977:	62 d1 4c 48 58 f5    	vaddps zmm6,zmm6,zmm13
  a4197d:	62 f1 7c 40 58 ed    	vaddps zmm5,zmm16,zmm5
  a41983:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a41989:	62 72 35 48 ac e4    	vfnmadd213ps zmm12,zmm9,zmm4
  a4198f:	62 d1 44 48 59 fe    	vmulps zmm7,zmm7,zmm14
  a41995:	62 d1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm9
  a4199b:	62 71 1c 48 5c cf    	vsubps zmm9,zmm12,zmm7
  a419a1:	62 f1 1c 48 58 ff    	vaddps zmm7,zmm12,zmm7
  a419a7:	62 51 2c 48 5c e3    	vsubps zmm12,zmm10,zmm11
  a419ad:	62 51 2c 48 58 d3    	vaddps zmm10,zmm10,zmm11
  a419b3:	62 51 74 48 5c d9    	vsubps zmm11,zmm1,zmm9
  a419b9:	62 d1 74 48 58 c9    	vaddps zmm1,zmm1,zmm9
  a419bf:	62 71 7c 48 5c ce    	vsubps zmm9,zmm0,zmm6
  a419c5:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a419cb:	62 d1 6c 48 58 f0    	vaddps zmm6,zmm2,zmm8
  a419d1:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a419d7:	62 71 54 48 5c c4    	vsubps zmm8,zmm5,zmm4
  a419dd:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a419e3:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a419e9:	62 71 7c 48 28 2d cd 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6502cd]        # 91cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f170>
  a419f0:	02 65 ff 
  a419f3:	62 f2 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm0
  a419f9:	62 71 7c 48 28 35 fd 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6502fd]        # 91d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f1b0>
  a41a00:	02 65 ff 
  a41a03:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a41a09:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a41a10:	62 f1 64 48 58 c7    	vaddps zmm0,zmm3,zmm7
  a41a16:	62 f1 64 48 5c df    	vsubps zmm3,zmm3,zmm7
  a41a1c:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm5
  a41a23:	01 
  a41a24:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a41a2a:	62 f2 0d 48 7f da    	vpermt2ps zmm3,zmm14,zmm2
  a41a30:	62 f2 15 48 7f e2    	vpermt2ps zmm4,zmm13,zmm2
  a41a36:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm3
  a41a3d:	02 
  a41a3e:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm4
  a41a45:	03 
  a41a46:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a41a4c:	62 d2 15 48 7f d2    	vpermt2ps zmm2,zmm13,zmm10
  a41a52:	62 d2 0d 48 7f ca    	vpermt2ps zmm1,zmm14,zmm10
  a41a58:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm1
  a41a5f:	04 
  a41a60:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm2
  a41a67:	05 
  a41a68:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a41a6e:	62 d2 15 48 7f c9    	vpermt2ps zmm1,zmm13,zmm9
  a41a74:	62 52 0d 48 7f c1    	vpermt2ps zmm8,zmm14,zmm9
  a41a7a:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm8
  a41a81:	06 
  a41a82:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm1
  a41a89:	07 
  a41a8a:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a41a90:	62 f2 15 48 7f ce    	vpermt2ps zmm1,zmm13,zmm6
  a41a96:	62 f2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm6
  a41a9c:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm0
  a41aa3:	08 
  a41aa4:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a41aaa:	62 d2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm12
  a41ab0:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a41ab6:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a41abd:	09 
  a41abe:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm11
  a41ac5:	0a 
  a41ac6:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a41acd:	0b 
  a41ace:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a41ad5:	48 39 d0             	cmp    rax,rdx
  a41ad8:	0f 85 52 f1 ff ff    	jne    a40c30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a41ade:	48 89 ec             	mov    rsp,rbp
  a41ae1:	5d                   	pop    rbp
  a41ae2:	c5 f8 77             	vzeroupper
  a41ae5:	c3                   	ret
