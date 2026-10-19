
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3fa80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3fa80:	48 81 ec 88 03 00 00 	sub    rsp,0x388
  a3fa87:	48 c1 e2 08          	shl    rdx,0x8
  a3fa8b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3fa8f:	31 d2                	xor    edx,edx
  a3fa91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3fa98:	0f 1f 84 00 00 00 00 
  a3fa9f:	00 
  a3faa0:	c5 f8 10 44 17 20    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x20]
  a3faa6:	c4 e3 79 21 44 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x24],0x10
  a3faad:	10 
  a3faae:	c4 e2 79 18 4c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x28]
  a3fab5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a3fabb:	c4 e3 79 21 44 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a3fac2:	30 
  a3fac3:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  a3fac8:	62 e3 75 48 18 e0 02 	vinsertf32x4 zmm20,zmm1,xmm0,0x2
  a3facf:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm20
  a3fad6:	01 
  a3fad7:	c5 f8 10 44 17 50    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x50]
  a3fadd:	c4 e3 79 21 44 17 54 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x54],0x10
  a3fae4:	10 
  a3fae5:	c4 e2 79 18 4c 17 58 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x58]
  a3faec:	62 e1 7c 48 28 35 4a 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff65214a]        # 91c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f0f0>
  a3faf3:	21 65 ff 
  a3faf6:	62 01 34 00 57 c9    	vxorps xmm25,xmm25,xmm25
  a3fafc:	62 82 4d 40 7f e1    	vpermt2ps zmm20,zmm22,zmm25
  a3fb02:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a3fb08:	c4 e3 79 21 44 17 5c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a3fb0f:	30 
  a3fb10:	c5 fc 10 4c 17 30    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x30]
  a3fb16:	62 63 75 48 18 c0 02 	vinsertf32x4 zmm24,zmm1,xmm0,0x2
  a3fb1d:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a3fb23:	62 92 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm25
  a3fb29:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a3fb30:	ff 
  a3fb31:	62 71 7c 48 28 3d 45 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff652145]        # 91c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f130>
  a3fb38:	21 65 ff 
  a3fb3b:	62 02 05 48 7f c1    	vpermt2ps zmm24,zmm15,zmm25
  a3fb41:	c5 f8 10 84 17 80 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x80]
  a3fb48:	00 00 
  a3fb4a:	c4 e3 79 21 84 17 84 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x84],0x10
  a3fb51:	00 00 00 10 
  a3fb55:	c5 fc 10 4c 17 60    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x60]
  a3fb5b:	c4 e2 79 18 94 17 88 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x88]
  a3fb62:	00 00 00 
  a3fb65:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a3fb6b:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a3fb72:	00 00 00 30 
  a3fb76:	62 e3 75 48 18 c0 02 	vinsertf32x4 zmm16,zmm1,xmm0,0x2
  a3fb7d:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a3fb83:	62 82 4d 40 7f f9    	vpermt2ps zmm23,zmm22,zmm25
  a3fb89:	62 82 05 48 7f c1    	vpermt2ps zmm16,zmm15,zmm25
  a3fb8f:	c5 fc 10 84 17 90 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x90]
  a3fb96:	00 00 
  a3fb98:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  a3fb9f:	00 00 
  a3fba1:	c4 e3 71 21 8c 17 b4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a3fba8:	00 00 00 10 
  a3fbac:	c4 e2 79 18 94 17 b8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0xb8]
  a3fbb3:	00 00 00 
  a3fbb6:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a3fbbc:	c4 e3 71 21 8c 17 bc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a3fbc3:	00 00 00 30 
  a3fbc7:	62 f3 7d 48 18 c1 02 	vinsertf32x4 zmm0,zmm0,xmm1,0x2
  a3fbce:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3fbd5:	fe 
  a3fbd6:	62 92 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm25
  a3fbdc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a3fbe3:	04 
  a3fbe4:	c5 fc 10 84 17 c0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xc0]
  a3fbeb:	00 00 
  a3fbed:	c5 f8 10 8c 17 e0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xe0]
  a3fbf4:	00 00 
  a3fbf6:	c4 e3 71 21 8c 17 e4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a3fbfd:	00 00 00 10 
  a3fc01:	c4 e2 79 18 94 17 e8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0xe8]
  a3fc08:	00 00 00 
  a3fc0b:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a3fc11:	c4 e3 71 21 8c 17 ec 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0xec],0x30
  a3fc18:	00 00 00 30 
  a3fc1c:	62 f3 7d 48 18 d9 02 	vinsertf32x4 zmm3,zmm0,xmm1,0x2
  a3fc23:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a3fc2a:	62 92 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm25
  a3fc30:	c5 fc 10 84 17 f0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xf0]
  a3fc37:	00 00 
  a3fc39:	c5 f8 10 8c 17 10 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x110]
  a3fc40:	00 00 
  a3fc42:	c4 e3 71 21 8c 17 14 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x114],0x10
  a3fc49:	01 00 00 10 
  a3fc4d:	c4 e2 79 18 94 17 18 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x118]
  a3fc54:	01 00 00 
  a3fc57:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a3fc5d:	c4 e3 71 21 8c 17 1c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a3fc64:	01 00 00 30 
  a3fc68:	62 e3 7d 48 18 c9 02 	vinsertf32x4 zmm17,zmm0,xmm1,0x2
  a3fc6f:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a3fc75:	62 82 4d 40 7f d1    	vpermt2ps zmm18,zmm22,zmm25
  a3fc7b:	62 82 05 48 7f c9    	vpermt2ps zmm17,zmm15,zmm25
  a3fc81:	c5 f8 10 84 17 40 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x140]
  a3fc88:	00 00 
  a3fc8a:	c4 e3 79 21 84 17 44 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x144],0x10
  a3fc91:	01 00 00 10 
  a3fc95:	c4 e2 79 18 8c 17 48 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x148]
  a3fc9c:	01 00 00 
  a3fc9f:	c5 fc 10 94 17 20 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x120]
  a3fca6:	00 00 
  a3fca8:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a3fcae:	c4 e3 79 21 84 17 4c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a3fcb5:	01 00 00 30 
  a3fcb9:	62 63 6d 48 18 f8 02 	vinsertf32x4 zmm31,zmm2,xmm0,0x2
  a3fcc0:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a3fcc6:	62 02 4d 40 7f f1    	vpermt2ps zmm30,zmm22,zmm25
  a3fccc:	c5 f8 10 84 17 70 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x170]
  a3fcd3:	00 00 
  a3fcd5:	c4 e3 79 21 84 17 74 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x174],0x10
  a3fcdc:	01 00 00 10 
  a3fce0:	c4 e2 79 18 8c 17 78 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x178]
  a3fce7:	01 00 00 
  a3fcea:	62 02 05 48 7f f9    	vpermt2ps zmm31,zmm15,zmm25
  a3fcf0:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a3fcf6:	c4 e3 79 21 84 17 7c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a3fcfd:	01 00 00 30 
  a3fd01:	c5 fc 10 8c 17 50 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x150]
  a3fd08:	00 00 
  a3fd0a:	62 63 75 48 18 e8 02 	vinsertf32x4 zmm29,zmm1,xmm0,0x2
  a3fd11:	62 01 7c 48 28 d5    	vmovaps zmm26,zmm29
  a3fd17:	c5 f8 10 84 17 a0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1a0]
  a3fd1e:	00 00 
  a3fd20:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1a4],0x10
  a3fd27:	01 00 00 10 
  a3fd2b:	c4 e2 79 18 8c 17 a8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x1a8]
  a3fd32:	01 00 00 
  a3fd35:	62 02 05 48 7f e9    	vpermt2ps zmm29,zmm15,zmm25
  a3fd3b:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a3fd41:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1ac],0x30
  a3fd48:	01 00 00 30 
  a3fd4c:	c5 fc 10 8c 17 80 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x180]
  a3fd53:	00 00 
  a3fd55:	62 e3 75 48 18 e8 02 	vinsertf32x4 zmm21,zmm1,xmm0,0x2
  a3fd5c:	62 21 7c 48 28 e5    	vmovaps zmm28,zmm21
  a3fd62:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a3fd69:	00 00 
  a3fd6b:	c4 e3 79 21 84 17 d4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1d4],0x10
  a3fd72:	01 00 00 10 
  a3fd76:	c4 e2 79 18 8c 17 d8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x1d8]
  a3fd7d:	01 00 00 
  a3fd80:	62 02 4d 40 7f e1    	vpermt2ps zmm28,zmm22,zmm25
  a3fd86:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a3fd8c:	c4 e3 79 21 84 17 dc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1dc],0x30
  a3fd93:	01 00 00 30 
  a3fd97:	c5 fc 10 8c 17 b0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1b0]
  a3fd9e:	00 00 
  a3fda0:	62 73 75 48 18 d8 02 	vinsertf32x4 zmm11,zmm1,xmm0,0x2
  a3fda7:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a3fdad:	62 02 4d 40 7f d9    	vpermt2ps zmm27,zmm22,zmm25
  a3fdb3:	62 12 05 48 7f d9    	vpermt2ps zmm11,zmm15,zmm25
  a3fdb9:	c5 f8 10 84 17 00 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x200]
  a3fdc0:	00 00 
  a3fdc2:	c4 e3 79 21 84 17 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x204],0x10
  a3fdc9:	02 00 00 10 
  a3fdcd:	c5 fc 10 8c 17 e0 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1e0]
  a3fdd4:	00 00 
  a3fdd6:	c4 e2 79 18 94 17 08 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x208]
  a3fddd:	02 00 00 
  a3fde0:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a3fde6:	c4 e3 79 21 84 17 0c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x20c],0x30
  a3fded:	02 00 00 30 
  a3fdf1:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  a3fdf8:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a3fdfe:	62 12 4d 40 7f c9    	vpermt2ps zmm9,zmm22,zmm25
  a3fe04:	62 92 05 48 7f d1    	vpermt2ps zmm2,zmm15,zmm25
  a3fe0a:	c5 fc 10 84 17 10 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x210]
  a3fe11:	00 00 
  a3fe13:	c5 f8 10 8c 17 30 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x230]
  a3fe1a:	00 00 
  a3fe1c:	c4 e3 71 21 8c 17 34 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x234],0x10
  a3fe23:	02 00 00 10 
  a3fe27:	c4 e2 79 18 a4 17 38 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x238]
  a3fe2e:	02 00 00 
  a3fe31:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a3fe37:	c4 e3 71 21 8c 17 3c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x23c],0x30
  a3fe3e:	02 00 00 30 
  a3fe42:	62 f3 7d 48 18 e1 02 	vinsertf32x4 zmm4,zmm0,xmm1,0x2
  a3fe49:	62 71 7c 48 28 f4    	vmovaps zmm14,zmm4
  a3fe4f:	62 12 4d 40 7f f1    	vpermt2ps zmm14,zmm22,zmm25
  a3fe55:	c5 fc 10 84 17 40 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x240]
  a3fe5c:	00 00 
  a3fe5e:	c5 f8 10 8c 17 60 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x260]
  a3fe65:	00 00 
  a3fe67:	c4 e3 71 21 8c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x264],0x10
  a3fe6e:	02 00 00 10 
  a3fe72:	c4 e2 79 18 ac 17 68 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x268]
  a3fe79:	02 00 00 
  a3fe7c:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a3fe82:	c4 e3 71 21 8c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x26c],0x30
  a3fe89:	02 00 00 30 
  a3fe8d:	62 f3 7d 48 18 e9 02 	vinsertf32x4 zmm5,zmm0,xmm1,0x2
  a3fe94:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a3fe9a:	62 92 05 48 7f e9    	vpermt2ps zmm5,zmm15,zmm25
  a3fea0:	c5 fc 10 84 17 70 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x270]
  a3fea7:	00 00 
  a3fea9:	c5 f8 10 8c 17 90 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x290]
  a3feb0:	00 00 
  a3feb2:	c4 e3 71 21 8c 17 94 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x294],0x10
  a3feb9:	02 00 00 10 
  a3febd:	c4 e2 79 18 b4 17 98 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x298]
  a3fec4:	02 00 00 
  a3fec7:	c4 e3 49 0c c9 03    	vblendps xmm1,xmm6,xmm1,0x3
  a3fecd:	c4 e3 71 21 8c 17 9c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a3fed4:	02 00 00 30 
  a3fed8:	62 73 7d 48 18 d1 02 	vinsertf32x4 zmm10,zmm0,xmm1,0x2
  a3fedf:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a3fee5:	62 92 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm25
  a3feeb:	62 12 05 48 7f d1    	vpermt2ps zmm10,zmm15,zmm25
  a3fef1:	c5 f8 10 8c 17 c0 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a3fef8:	00 00 
  a3fefa:	c4 e3 71 21 8c 17 c4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x2c4],0x10
  a3ff01:	02 00 00 10 
  a3ff05:	c4 e2 79 18 b4 17 c8 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x2c8]
  a3ff0c:	02 00 00 
  a3ff0f:	c5 fc 10 bc 17 a0 02 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x2a0]
  a3ff16:	00 00 
  a3ff18:	c4 e3 49 0c c9 03    	vblendps xmm1,xmm6,xmm1,0x3
  a3ff1e:	c4 e3 71 21 8c 17 cc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x2cc],0x30
  a3ff25:	02 00 00 30 
  a3ff29:	62 f3 45 48 18 c9 02 	vinsertf32x4 zmm1,zmm7,xmm1,0x2
  a3ff30:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a3ff36:	62 92 4d 40 7f f9    	vpermt2ps zmm7,zmm22,zmm25
  a3ff3c:	c5 f8 10 b4 17 f0 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x2f0]
  a3ff43:	00 00 
  a3ff45:	c4 e3 49 21 b4 17 f4 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x2f4],0x10
  a3ff4c:	02 00 00 10 
  a3ff50:	c4 62 79 18 84 17 f8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x2f8]
  a3ff57:	02 00 00 
  a3ff5a:	62 92 05 48 7f c9    	vpermt2ps zmm1,zmm15,zmm25
  a3ff60:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a3ff66:	c4 e3 49 21 b4 17 fc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x2fc],0x30
  a3ff6d:	02 00 00 30 
  a3ff71:	c5 7c 10 84 17 d0 02 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x2d0]
  a3ff78:	00 00 
  a3ff7a:	62 f3 3d 48 18 f6 02 	vinsertf32x4 zmm6,zmm8,xmm6,0x2
  a3ff81:	62 11 5c 40 58 c4    	vaddps zmm8,zmm20,zmm28
  a3ff87:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm8
  a3ff8e:	06 
  a3ff8f:	62 81 5c 40 5c e4    	vsubps zmm20,zmm20,zmm28
  a3ff95:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm20
  a3ff9c:	08 
  a3ff9d:	62 71 64 48 58 c5    	vaddps zmm8,zmm3,zmm5
  a3ffa3:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm8
  a3ffaa:	03 
  a3ffab:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a3ffb1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a3ffb8:	07 
  a3ffb9:	62 d1 44 40 58 d9    	vaddps zmm3,zmm23,zmm9
  a3ffbf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a3ffc6:	05 
  a3ffc7:	62 51 44 40 5c e1    	vsubps zmm12,zmm23,zmm9
  a3ffcd:	62 e1 7c 40 58 fa    	vaddps zmm23,zmm16,zmm2
  a3ffd3:	62 71 7c 40 5c ca    	vsubps zmm9,zmm16,zmm2
  a3ffd9:	62 e1 04 40 58 e1    	vaddps zmm20,zmm31,zmm1
  a3ffdf:	62 71 04 40 5c c1    	vsubps zmm8,zmm31,zmm1
  a3ffe5:	62 f1 0c 40 58 cf    	vaddps zmm1,zmm30,zmm7
  a3ffeb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a3fff2:	02 
  a3fff3:	62 f1 0c 40 5c d7    	vsubps zmm2,zmm30,zmm7
  a3fff9:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a40000:	ff 
  a40001:	62 01 44 48 58 f3    	vaddps zmm30,zmm7,zmm27
  a40007:	62 01 44 48 5c db    	vsubps zmm27,zmm7,zmm27
  a4000d:	62 41 74 40 58 fa    	vaddps zmm31,zmm17,zmm10
  a40013:	62 51 74 40 5c d2    	vsubps zmm10,zmm17,zmm10
  a40019:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm10
  a40020:	0d 
  a40021:	62 c1 3c 40 58 cb    	vaddps zmm17,zmm24,zmm11
  a40027:	62 d1 3c 40 5c eb    	vsubps zmm5,zmm24,zmm11
  a4002d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm5
  a40034:	0b 
  a40035:	62 e1 6c 40 58 c0    	vaddps zmm16,zmm18,zmm0
  a4003b:	62 b1 7c 48 5c da    	vsubps zmm3,zmm0,zmm18
  a40041:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm3
  a40048:	0c 
  a40049:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a40050:	04 
  a40051:	62 c1 7c 48 58 d6    	vaddps zmm18,zmm0,zmm14
  a40057:	62 d1 7c 48 5c fe    	vsubps zmm7,zmm0,zmm14
  a4005d:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a40063:	62 92 05 48 7f f1    	vpermt2ps zmm6,zmm15,zmm25
  a40069:	62 61 14 40 58 c6    	vaddps zmm24,zmm29,zmm6
  a4006f:	62 e1 14 40 5c de    	vsubps zmm19,zmm29,zmm6
  a40075:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm19
  a4007c:	09 
  a4007d:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a40084:	fe 
  a40085:	62 12 05 48 7f d9    	vpermt2ps zmm11,zmm15,zmm25
  a4008b:	62 92 05 48 7f e1    	vpermt2ps zmm4,zmm15,zmm25
  a40091:	62 f1 24 48 58 f4    	vaddps zmm6,zmm11,zmm4
  a40097:	62 f1 24 48 5c cc    	vsubps zmm1,zmm11,zmm4
  a4009d:	62 02 4d 40 7f d1    	vpermt2ps zmm26,zmm22,zmm25
  a400a3:	62 92 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm25
  a400a9:	62 61 2c 40 58 e8    	vaddps zmm29,zmm26,zmm0
  a400af:	62 11 7c 48 5c f2    	vsubps zmm14,zmm0,zmm26
  a400b5:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a400bc:	01 
  a400bd:	62 92 05 48 7f e1    	vpermt2ps zmm4,zmm15,zmm25
  a400c3:	62 82 05 48 7f e9    	vpermt2ps zmm21,zmm15,zmm25
  a400c9:	62 b1 5c 48 58 c5    	vaddps zmm0,zmm4,zmm21
  a400cf:	62 21 5c 48 5c e5    	vsubps zmm28,zmm4,zmm21
  a400d5:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a400dc:	62 92 4d 40 7f e1    	vpermt2ps zmm4,zmm22,zmm25
  a400e2:	62 12 4d 40 7f e9    	vpermt2ps zmm13,zmm22,zmm25
  a400e8:	62 41 5c 48 58 d5    	vaddps zmm26,zmm4,zmm13
  a400ee:	62 e1 14 48 5c ec    	vsubps zmm21,zmm13,zmm4
  a400f4:	62 d1 1c 48 58 e1    	vaddps zmm4,zmm12,zmm9
  a400fa:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a40101:	62 d1 34 48 5c e4    	vsubps zmm4,zmm9,zmm12
  a40107:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a4010e:	fe 
  a4010f:	62 f1 3c 48 5c e2    	vsubps zmm4,zmm8,zmm2
  a40115:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a4011c:	ff 
  a4011d:	62 d1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm8
  a40123:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a4012a:	0a 
  a4012b:	62 d1 24 40 58 d2    	vaddps zmm2,zmm27,zmm10
  a40131:	62 f1 64 48 58 e5    	vaddps zmm4,zmm3,zmm5
  a40137:	62 72 7d 48 18 3d 23 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff635523]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a4013e:	55 63 ff 
  a40141:	62 51 5c 48 59 df    	vmulps zmm11,zmm4,zmm15
  a40147:	62 f2 7d 48 18 1d af 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6355af]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a4014e:	55 63 ff 
  a40151:	62 72 6d 48 b8 db    	vfmadd231ps zmm11,zmm2,zmm3
  a40157:	62 71 5c 48 59 e3    	vmulps zmm12,zmm4,zmm3
  a4015d:	62 72 05 48 bc e2    	vfnmadd231ps zmm12,zmm15,zmm2
  a40163:	62 b1 44 48 58 d3    	vaddps zmm2,zmm7,zmm19
  a40169:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a4016f:	62 71 0c 48 58 e9    	vaddps zmm13,zmm14,zmm1
  a40175:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a4017b:	62 f1 14 48 59 e3    	vmulps zmm4,zmm13,zmm3
  a40181:	62 d2 6d 48 b8 e7    	vfmadd231ps zmm4,zmm2,zmm15
  a40187:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a4018d:	62 72 65 48 bc ea    	vfnmadd231ps zmm13,zmm3,zmm2
  a40193:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a4019a:	06 
  a4019b:	62 11 74 48 58 d2    	vaddps zmm10,zmm1,zmm26
  a401a1:	62 91 74 48 5c ca    	vsubps zmm1,zmm1,zmm26
  a401a7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a401ae:	01 
  a401af:	62 21 44 40 58 cc    	vaddps zmm25,zmm23,zmm20
  a401b5:	62 21 44 40 5c d4    	vsubps zmm26,zmm23,zmm20
  a401bb:	62 a1 0c 40 58 f8    	vaddps zmm23,zmm30,zmm16
  a401c1:	62 b1 0c 40 5c f8    	vsubps zmm7,zmm30,zmm16
  a401c7:	62 01 74 40 58 f7    	vaddps zmm30,zmm17,zmm31
  a401cd:	62 11 74 40 5c cf    	vsubps zmm9,zmm17,zmm31
  a401d3:	62 11 4c 48 58 c0    	vaddps zmm8,zmm6,zmm24
  a401d9:	62 81 4c 48 5c c8    	vsubps zmm17,zmm6,zmm24
  a401df:	62 01 6c 40 58 fd    	vaddps zmm31,zmm18,zmm29
  a401e5:	62 01 6c 40 5c ed    	vsubps zmm29,zmm18,zmm29
  a401eb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a401f2:	03 
  a401f3:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a401f9:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a401ff:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a40206:	04 
  a40207:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a4020e:	05 
  a4020f:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a40216:	02 
  a40217:	62 f1 74 48 58 c6    	vaddps zmm0,zmm1,zmm6
  a4021d:	62 e1 4c 48 5c f1    	vsubps zmm22,zmm6,zmm1
  a40223:	62 d1 44 48 58 c9    	vaddps zmm1,zmm7,zmm9
  a40229:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a40230:	06 
  a40231:	62 f1 34 48 5c cf    	vsubps zmm1,zmm9,zmm7
  a40237:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4023e:	03 
  a4023f:	62 91 74 40 5c cd    	vsubps zmm1,zmm17,zmm29
  a40245:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a4024c:	05 
  a4024d:	62 21 14 40 58 e9    	vaddps zmm29,zmm29,zmm17
  a40253:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x200]
  a4025a:	08 
  a4025b:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x1c0]
  a40262:	07 
  a40263:	62 e1 4c 48 58 cf    	vaddps zmm17,zmm6,zmm7
  a40269:	62 f1 4c 48 5c cf    	vsubps zmm1,zmm6,zmm7
  a4026f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a40276:	08 
  a40277:	62 72 7d 48 18 0d 1b 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63511b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a4027e:	51 63 ff 
  a40281:	62 61 34 48 59 44 24 	vmulps zmm24,zmm9,ZMMWORD PTR [rsp-0x80]
  a40288:	fe 
  a40289:	62 e1 34 48 59 54 24 	vmulps zmm18,zmm9,ZMMWORD PTR [rsp+0x280]
  a40290:	0a 
  a40291:	62 b1 3c 40 5c ca    	vsubps zmm1,zmm24,zmm18
  a40297:	62 b1 3c 40 58 f2    	vaddps zmm6,zmm24,zmm18
  a4029d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm6
  a402a4:	07 
  a402a5:	62 61 24 40 5c 44 24 	vsubps zmm24,zmm27,ZMMWORD PTR [rsp+0x340]
  a402ac:	0d 
  a402ad:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x2c0]
  a402b4:	0b 
  a402b5:	62 61 4c 48 5c 5c 24 	vsubps zmm27,zmm6,ZMMWORD PTR [rsp+0x300]
  a402bc:	0c 
  a402bd:	62 e1 54 48 5c 44 24 	vsubps zmm16,zmm5,ZMMWORD PTR [rsp+0x240]
  a402c4:	09 
  a402c5:	62 51 64 40 5c f6    	vsubps zmm14,zmm19,zmm14
  a402cb:	62 81 54 40 58 dc    	vaddps zmm19,zmm21,zmm28
  a402d1:	62 b1 1c 40 5c ed    	vsubps zmm5,zmm28,zmm21
  a402d7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a402de:	02 
  a402df:	62 e1 34 48 59 24 24 	vmulps zmm20,zmm9,ZMMWORD PTR [rsp]
  a402e6:	62 e1 34 48 59 6c 24 	vmulps zmm21,zmm9,ZMMWORD PTR [rsp-0x40]
  a402ed:	ff 
  a402ee:	62 21 5c 40 58 e5    	vaddps zmm28,zmm20,zmm21
  a402f4:	62 a1 54 40 5c e4    	vsubps zmm20,zmm21,zmm20
  a402fa:	62 e1 24 40 59 eb    	vmulps zmm21,zmm27,zmm3
  a40300:	62 c2 3d 40 b8 ef    	vfmadd231ps zmm21,zmm24,zmm15
  a40306:	62 41 24 40 59 df    	vmulps zmm27,zmm27,zmm15
  a4030c:	62 02 65 48 bc d8    	vfnmadd231ps zmm27,zmm3,zmm24
  a40312:	62 41 0c 48 59 c7    	vmulps zmm24,zmm14,zmm15
  a40318:	62 62 7d 40 b8 c3    	vfmadd231ps zmm24,zmm16,zmm3
  a4031e:	62 c1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm15
  a40324:	62 c2 65 48 bc c6    	vfnmadd231ps zmm16,zmm3,zmm14
  a4032a:	62 71 2c 48 58 f8    	vaddps zmm15,zmm10,zmm0
  a40330:	62 f1 2c 48 5c c0    	vsubps zmm0,zmm10,zmm0
  a40336:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a4033d:	ff 
  a4033e:	62 51 0c 40 58 f0    	vaddps zmm14,zmm30,zmm8
  a40344:	62 d1 0c 40 5c c0    	vsubps zmm0,zmm30,zmm8
  a4034a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a40351:	fe 
  a40352:	62 11 6c 48 58 d1    	vaddps zmm10,zmm2,zmm25
  a40358:	62 01 6c 48 5c f1    	vsubps zmm30,zmm2,zmm25
  a4035e:	62 91 44 40 58 f7    	vaddps zmm6,zmm23,zmm31
  a40364:	62 21 04 40 5c cf    	vsubps zmm25,zmm31,zmm23
  a4036a:	62 01 74 40 58 fc    	vaddps zmm31,zmm17,zmm28
  a40370:	62 81 74 40 5c fc    	vsubps zmm23,zmm17,zmm28
  a40376:	62 41 1c 48 58 e5    	vaddps zmm28,zmm12,zmm13
  a4037c:	62 c1 1c 48 5c d5    	vsubps zmm18,zmm12,zmm13
  a40382:	62 71 64 40 58 c1    	vaddps zmm8,zmm19,zmm1
  a40388:	62 e1 64 40 5c c9    	vsubps zmm17,zmm19,zmm1
  a4038e:	62 e1 24 48 58 dc    	vaddps zmm19,zmm11,zmm4
  a40394:	62 51 5c 48 5c eb    	vsubps zmm13,zmm4,zmm11
  a4039a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a403a1:	01 
  a403a2:	62 91 7c 48 58 fa    	vaddps zmm7,zmm0,zmm26
  a403a8:	62 01 7c 48 5c d2    	vsubps zmm26,zmm0,zmm26
  a403ae:	62 f1 34 48 59 64 24 	vmulps zmm4,zmm9,ZMMWORD PTR [rsp+0xc0]
  a403b5:	03 
  a403b6:	62 d1 14 40 59 e9    	vmulps zmm5,zmm29,zmm9
  a403bc:	62 61 5c 48 5c ed    	vsubps zmm29,zmm4,zmm5
  a403c2:	62 71 5c 48 58 dd    	vaddps zmm11,zmm4,zmm5
  a403c8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a403cf:	04 
  a403d0:	62 f1 4c 40 58 d8    	vaddps zmm3,zmm22,zmm0
  a403d6:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a403dc:	62 f1 34 48 59 64 24 	vmulps zmm4,zmm9,ZMMWORD PTR [rsp+0x180]
  a403e3:	06 
  a403e4:	62 71 34 48 59 64 24 	vmulps zmm12,zmm9,ZMMWORD PTR [rsp+0x140]
  a403eb:	05 
  a403ec:	62 d1 5c 48 58 d4    	vaddps zmm2,zmm4,zmm12
  a403f2:	62 71 1c 48 5c cc    	vsubps zmm9,zmm12,zmm4
  a403f8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a403ff:	08 
  a40400:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a40407:	07 
  a40408:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a4040e:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a40414:	62 31 24 40 58 e0    	vaddps zmm12,zmm27,zmm16
  a4041a:	62 a1 24 40 5c c0    	vsubps zmm16,zmm27,zmm16
  a40420:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a40427:	02 
  a40428:	62 b1 7c 48 58 cc    	vaddps zmm1,zmm0,zmm20
  a4042e:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  a40434:	62 91 54 40 5c c0    	vsubps zmm0,zmm21,zmm24
  a4043a:	62 81 54 40 58 e8    	vaddps zmm21,zmm21,zmm24
  a40440:	62 61 04 48 58 c6    	vaddps zmm24,zmm15,zmm6
  a40446:	62 61 04 48 5c de    	vsubps zmm27,zmm15,zmm6
  a4044c:	62 d1 2c 48 58 f6    	vaddps zmm6,zmm10,zmm14
  a40452:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a40458:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm10
  a4045f:	01 
  a40460:	62 31 04 40 58 d3    	vaddps zmm10,zmm31,zmm19
  a40466:	62 31 04 40 5c fb    	vsubps zmm15,zmm31,zmm19
  a4046c:	62 01 3c 48 58 fc    	vaddps zmm31,zmm8,zmm28
  a40472:	62 11 3c 48 5c c4    	vsubps zmm8,zmm8,zmm28
  a40478:	62 71 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm8
  a4047f:	62 61 44 48 58 e2    	vaddps zmm28,zmm7,zmm2
  a40485:	62 71 44 48 5c f2    	vsubps zmm14,zmm7,zmm2
  a4048b:	62 11 64 48 58 c5    	vaddps zmm8,zmm3,zmm29
  a40491:	62 01 64 48 5c ed    	vsubps zmm29,zmm3,zmm29
  a40497:	62 f1 5c 48 58 d8    	vaddps zmm3,zmm4,zmm0
  a4049d:	62 f1 5c 48 5c f8    	vsubps zmm7,zmm4,zmm0
  a404a3:	62 d1 74 48 58 d4    	vaddps zmm2,zmm1,zmm12
  a404a9:	62 c1 74 48 5c dc    	vsubps zmm19,zmm1,zmm12
  a404af:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a404b6:	ff 
  a404b7:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a404be:	fe 
  a404bf:	62 f1 7c 48 58 cc    	vaddps zmm1,zmm0,zmm4
  a404c5:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a404cb:	62 91 34 40 58 c6    	vaddps zmm0,zmm25,zmm30
  a404d1:	62 01 0c 40 5c c9    	vsubps zmm25,zmm30,zmm25
  a404d7:	62 21 44 40 58 f2    	vaddps zmm30,zmm23,zmm18
  a404dd:	62 a1 44 40 5c d2    	vsubps zmm18,zmm23,zmm18
  a404e3:	62 51 74 40 58 e5    	vaddps zmm12,zmm17,zmm13
  a404e9:	62 c1 74 40 5c cd    	vsubps zmm17,zmm17,zmm13
  a404ef:	62 c1 2c 40 58 fb    	vaddps zmm23,zmm26,zmm11
  a404f5:	62 51 2c 40 5c db    	vsubps zmm11,zmm26,zmm11
  a404fb:	62 51 4c 40 58 e9    	vaddps zmm13,zmm22,zmm9
  a40501:	62 c1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm9
  a40507:	62 21 54 48 58 d0    	vaddps zmm26,zmm5,zmm16
  a4050d:	62 b1 54 48 5c e8    	vsubps zmm5,zmm5,zmm16
  a40513:	62 31 5c 40 5c cd    	vsubps zmm9,zmm20,zmm21
  a40519:	62 a1 5c 40 58 ed    	vaddps zmm21,zmm20,zmm21
  a4051f:	62 e1 7c 48 28 25 57 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff686a57]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a40526:	6a 68 ff 
  a40529:	62 02 5d 40 7f c3    	vpermt2ps zmm24,zmm20,zmm27
  a4052f:	62 52 5d 40 7f d7    	vpermt2ps zmm10,zmm20,zmm15
  a40535:	62 42 5d 40 7f e6    	vpermt2ps zmm28,zmm20,zmm14
  a4053b:	62 f2 5d 40 7f df    	vpermt2ps zmm3,zmm20,zmm7
  a40541:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a40547:	62 22 5d 40 7f f2    	vpermt2ps zmm30,zmm20,zmm18
  a4054d:	62 c2 5d 40 7f fb    	vpermt2ps zmm23,zmm20,zmm11
  a40553:	62 62 5d 40 7f d5    	vpermt2ps zmm26,zmm20,zmm5
  a40559:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a4055f:	62 61 7c 48 28 1d 97 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff686997]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a40566:	69 68 ff 
  a40569:	62 f2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm1
  a4056f:	62 71 7c 48 28 3d c7 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6869c7]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a40576:	69 68 ff 
  a40579:	62 62 05 48 7f c1    	vpermt2ps zmm24,zmm15,zmm1
  a4057f:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a40585:	62 92 25 40 7f ee    	vpermt2ps zmm5,zmm27,zmm30
  a4058b:	62 12 05 48 7f d6    	vpermt2ps zmm10,zmm15,zmm30
  a40591:	62 91 7c 48 28 fc    	vmovaps zmm7,zmm28
  a40597:	62 b2 25 40 7f ff    	vpermt2ps zmm7,zmm27,zmm23
  a4059d:	62 22 05 48 7f e7    	vpermt2ps zmm28,zmm15,zmm23
  a405a3:	62 91 bd 40 14 cc    	vunpcklpd zmm1,zmm24,zmm28
  a405a9:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a405af:	62 12 25 40 7f f2    	vpermt2ps zmm14,zmm27,zmm26
  a405b5:	62 92 05 48 7f da    	vpermt2ps zmm3,zmm15,zmm26
  a405bb:	62 71 ad 48 14 d3    	vunpcklpd zmm10,zmm10,zmm3
  a405c1:	62 f1 dd 48 14 df    	vunpcklpd zmm3,zmm4,zmm7
  a405c7:	62 71 dd 48 15 df    	vunpckhpd zmm11,zmm4,zmm7
  a405cd:	62 d1 d5 48 14 e6    	vunpcklpd zmm4,zmm5,zmm14
  a405d3:	62 d1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm14
  a405d9:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a405df:	62 71 7c 48 28 35 17 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff686817]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a405e6:	68 68 ff 
  a405e9:	62 e2 0d 48 7f fc    	vpermt2ps zmm23,zmm14,zmm4
  a405ef:	62 61 7c 48 28 05 47 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff686847]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a405f6:	68 68 ff 
  a405f9:	62 f2 3d 40 7f dc    	vpermt2ps zmm3,zmm24,zmm4
  a405ff:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a40605:	62 e2 0d 48 7f d5    	vpermt2ps zmm18,zmm14,zmm5
  a4060b:	62 72 3d 40 7f dd    	vpermt2ps zmm11,zmm24,zmm5
  a40611:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a40617:	62 c2 0d 48 7f c2    	vpermt2ps zmm16,zmm14,zmm10
  a4061d:	62 d2 3d 40 7f ca    	vpermt2ps zmm1,zmm24,zmm10
  a40623:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0x40]
  a4062a:	01 
  a4062b:	62 62 5d 40 7f 3c 24 	vpermt2ps zmm31,zmm20,ZMMWORD PTR [rsp]
  a40632:	62 12 5d 40 7f c5    	vpermt2ps zmm8,zmm20,zmm29
  a40638:	62 b2 5d 40 7f d3    	vpermt2ps zmm2,zmm20,zmm19
  a4063e:	62 92 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm25
  a40644:	62 32 5d 40 7f e1    	vpermt2ps zmm12,zmm20,zmm17
  a4064a:	62 32 5d 40 7f ee    	vpermt2ps zmm13,zmm20,zmm22
  a40650:	62 32 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm21
  a40656:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a4065c:	62 f2 25 40 7f e0    	vpermt2ps zmm4,zmm27,zmm0
  a40662:	62 f2 05 48 7f f0    	vpermt2ps zmm6,zmm15,zmm0
  a40668:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a4066e:	62 d2 25 40 7f c4    	vpermt2ps zmm0,zmm27,zmm12
  a40674:	62 42 05 48 7f fc    	vpermt2ps zmm31,zmm15,zmm12
  a4067a:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a40680:	62 d2 25 40 7f fd    	vpermt2ps zmm7,zmm27,zmm13
  a40686:	62 52 05 48 7f c5    	vpermt2ps zmm8,zmm15,zmm13
  a4068c:	62 d1 cd 48 14 f0    	vunpcklpd zmm6,zmm6,zmm8
  a40692:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a40698:	62 52 25 40 7f c1    	vpermt2ps zmm8,zmm27,zmm9
  a4069e:	62 d2 05 48 7f d1    	vpermt2ps zmm2,zmm15,zmm9
  a406a4:	62 71 85 40 14 ca    	vunpcklpd zmm9,zmm31,zmm2
  a406aa:	62 f1 dd 48 14 ef    	vunpcklpd zmm5,zmm4,zmm7
  a406b0:	62 f1 dd 48 15 d7    	vunpckhpd zmm2,zmm4,zmm7
  a406b6:	62 d1 fd 48 14 f8    	vunpcklpd zmm7,zmm0,zmm8
  a406bc:	62 d1 fd 48 15 c0    	vunpckhpd zmm0,zmm0,zmm8
  a406c2:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a406c8:	62 f2 0d 48 7f e7    	vpermt2ps zmm4,zmm14,zmm7
  a406ce:	62 f2 3d 40 7f ef    	vpermt2ps zmm5,zmm24,zmm7
  a406d4:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a406da:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a406e0:	62 f2 3d 40 7f d0    	vpermt2ps zmm2,zmm24,zmm0
  a406e6:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a406ec:	62 52 0d 48 7f c1    	vpermt2ps zmm8,zmm14,zmm9
  a406f2:	62 d2 3d 40 7f f1    	vpermt2ps zmm6,zmm24,zmm9
  a406f8:	62 71 7c 48 10 49 02 	vmovups zmm9,ZMMWORD PTR [rcx+0x80]
  a406ff:	62 71 7c 48 10 51 03 	vmovups zmm10,ZMMWORD PTR [rcx+0xc0]
  a40706:	62 71 7c 48 10 61 04 	vmovups zmm12,ZMMWORD PTR [rcx+0x100]
  a4070d:	62 71 7c 48 10 69 05 	vmovups zmm13,ZMMWORD PTR [rcx+0x140]
  a40714:	62 d1 6c 40 59 c4    	vmulps zmm0,zmm18,zmm12
  a4071a:	62 d2 45 48 bc c5    	vfnmadd231ps zmm0,zmm7,zmm13
  a40720:	62 d1 44 48 59 fc    	vmulps zmm7,zmm7,zmm12
  a40726:	62 71 7c 48 10 61 09 	vmovups zmm12,ZMMWORD PTR [rcx+0x240]
  a4072d:	62 b2 15 48 b8 fa    	vfmadd231ps zmm7,zmm13,zmm18
  a40733:	62 71 7c 48 10 69 08 	vmovups zmm13,ZMMWORD PTR [rcx+0x200]
  a4073a:	62 51 7c 40 59 f5    	vmulps zmm14,zmm16,zmm13
  a40740:	62 52 3d 48 bc f4    	vfnmadd231ps zmm14,zmm8,zmm12
  a40746:	62 51 3c 48 59 c5    	vmulps zmm8,zmm8,zmm13
  a4074c:	62 32 1d 48 b8 c0    	vfmadd231ps zmm8,zmm12,zmm16
  a40752:	62 71 7c 48 10 61 0b 	vmovups zmm12,ZMMWORD PTR [rcx+0x2c0]
  a40759:	62 71 7c 48 10 69 0a 	vmovups zmm13,ZMMWORD PTR [rcx+0x280]
  a40760:	62 c1 4c 48 59 c5    	vmulps zmm16,zmm6,zmm13
  a40766:	62 c2 75 48 b8 c4    	vfmadd231ps zmm16,zmm1,zmm12
  a4076c:	62 d1 74 48 59 cd    	vmulps zmm1,zmm1,zmm13
  a40772:	62 51 7c 48 5c ee    	vsubps zmm13,zmm0,zmm14
  a40778:	62 72 7d 48 18 3d 52 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff634b52]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4077f:	4b 63 ff 
  a40782:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a40788:	62 f2 1d 48 bc ce    	vfnmadd231ps zmm1,zmm12,zmm6
  a4078e:	62 d1 44 48 58 f0    	vaddps zmm6,zmm7,zmm8
  a40794:	62 51 54 48 59 e1    	vmulps zmm12,zmm5,zmm9
  a4079a:	62 52 65 48 b8 e2    	vfmadd231ps zmm12,zmm3,zmm10
  a407a0:	62 d1 64 48 59 d9    	vmulps zmm3,zmm3,zmm9
  a407a6:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a407ad:	62 f2 2d 48 bc dd    	vfnmadd231ps zmm3,zmm10,zmm5
  a407b3:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a407ba:	62 71 6c 48 59 d5    	vmulps zmm10,zmm2,zmm5
  a407c0:	62 52 25 48 b8 d1    	vfmadd231ps zmm10,zmm11,zmm9
  a407c6:	62 f1 24 48 59 ed    	vmulps zmm5,zmm11,zmm5
  a407cc:	62 e2 7d 48 18 0d 8a 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff634c8a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a407d3:	4c 63 ff 
  a407d6:	62 31 7c 48 28 d9    	vmovaps zmm11,zmm17
  a407dc:	62 72 4d 48 ac dc    	vfnmadd213ps zmm11,zmm6,zmm4
  a407e2:	62 f2 35 48 bc ea    	vfnmadd231ps zmm5,zmm9,zmm2
  a407e8:	62 d1 14 48 58 d3    	vaddps zmm2,zmm13,zmm11
  a407ee:	62 51 7c 40 58 cc    	vaddps zmm9,zmm16,zmm12
  a407f4:	62 d1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm14
  a407fa:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a40800:	62 52 35 48 ac f2    	vfnmadd213ps zmm14,zmm9,zmm10
  a40806:	62 d1 44 48 5c f8    	vsubps zmm7,zmm7,zmm8
  a4080c:	62 71 74 48 5c c3    	vsubps zmm8,zmm1,zmm3
  a40812:	62 51 3c 48 59 c7    	vmulps zmm8,zmm8,zmm15
  a40818:	62 f1 74 48 58 cb    	vaddps zmm1,zmm1,zmm3
  a4081e:	62 d1 0c 48 58 d8    	vaddps zmm3,zmm14,zmm8
  a40824:	62 51 7c 40 5c e4    	vsubps zmm12,zmm16,zmm12
  a4082a:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a40830:	62 a2 7d 48 ac c7    	vfnmadd213ps zmm16,zmm0,zmm23
  a40836:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a4083c:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a40842:	62 71 7c 40 5c ef    	vsubps zmm13,zmm16,zmm7
  a40848:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a4084e:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a40854:	62 72 75 48 ac f5    	vfnmadd213ps zmm14,zmm1,zmm5
  a4085a:	62 51 1c 48 59 e7    	vmulps zmm12,zmm12,zmm15
  a40860:	62 f1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm7
  a40866:	62 c1 0c 48 5c c4    	vsubps zmm16,zmm14,zmm12
  a4086c:	62 51 0c 48 58 e4    	vaddps zmm12,zmm14,zmm12
  a40872:	62 f1 4c 48 58 e4    	vaddps zmm4,zmm6,zmm4
  a40878:	62 d1 2c 48 58 f1    	vaddps zmm6,zmm10,zmm9
  a4087e:	62 f1 44 40 58 c0    	vaddps zmm0,zmm23,zmm0
  a40884:	62 f1 54 48 58 c9    	vaddps zmm1,zmm5,zmm1
  a4088a:	62 f1 6c 48 5c eb    	vsubps zmm5,zmm2,zmm3
  a40890:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a40896:	62 b1 14 48 5c d8    	vsubps zmm3,zmm13,zmm16
  a4089c:	62 31 14 48 58 c8    	vaddps zmm9,zmm13,zmm16
  a408a2:	62 51 24 48 58 d0    	vaddps zmm10,zmm11,zmm8
  a408a8:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a408ae:	62 51 44 48 58 dc    	vaddps zmm11,zmm7,zmm12
  a408b4:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a408ba:	62 71 5c 48 5c e6    	vsubps zmm12,zmm4,zmm6
  a408c0:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a408c6:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a408cc:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a408d2:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a408d8:	62 71 7c 48 28 2d de 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6513de]        # 91cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f170>
  a408df:	13 65 ff 
  a408e2:	62 f2 15 48 7f cc    	vpermt2ps zmm1,zmm13,zmm4
  a408e8:	62 71 7c 48 28 35 0e 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff65140e]        # 91d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f1b0>
  a408ef:	14 65 ff 
  a408f2:	62 f2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm4
  a408f8:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a408ff:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm1
  a40906:	01 
  a40907:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a4090d:	62 d2 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm8
  a40913:	62 d2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm8
  a40919:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm7
  a40920:	02 
  a40921:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm0
  a40928:	03 
  a40929:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a4092f:	62 f2 15 48 7f c2    	vpermt2ps zmm0,zmm13,zmm2
  a40935:	62 72 0d 48 7f ca    	vpermt2ps zmm9,zmm14,zmm2
  a4093b:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm9
  a40942:	04 
  a40943:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a4094a:	05 
  a4094b:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a40951:	62 d2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm12
  a40957:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  a4095d:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm6
  a40964:	06 
  a40965:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a4096c:	07 
  a4096d:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a40973:	62 d2 15 48 7f c2    	vpermt2ps zmm0,zmm13,zmm10
  a40979:	62 52 0d 48 7f da    	vpermt2ps zmm11,zmm14,zmm10
  a4097f:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm11
  a40986:	08 
  a40987:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a4098e:	09 
  a4098f:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a40995:	62 f2 15 48 7f c5    	vpermt2ps zmm0,zmm13,zmm5
  a4099b:	62 f2 0d 48 7f dd    	vpermt2ps zmm3,zmm14,zmm5
  a409a1:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm3
  a409a8:	0a 
  a409a9:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a409b0:	0b 
  a409b1:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a409b8:	48 39 d0             	cmp    rax,rdx
  a409bb:	0f 85 df f0 ff ff    	jne    a3faa0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a409c1:	48 81 c4 88 03 00 00 	add    rsp,0x388
  a409c8:	c5 f8 77             	vzeroupper
  a409cb:	c3                   	ret
