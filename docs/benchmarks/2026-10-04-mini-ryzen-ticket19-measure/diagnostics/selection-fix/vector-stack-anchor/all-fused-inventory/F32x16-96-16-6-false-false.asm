
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a06a00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a06a00:	48 81 ec 08 04 00 00 	sub    rsp,0x408
  a06a07:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a06a0c:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a06a13:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a06a19:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a06a1d:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06a23:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a06a2a:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a06a31:	62 f1 7c 48 28 15 05 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff687c05]        # 8e640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1baf0>
  a06a38:	7c 68 ff 
  a06a3b:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  a06a41:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a06a47:	62 92 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm24
  a06a4d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a06a54:	01 
  a06a55:	62 61 7c 48 28 15 21 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff687c21]        # 8e680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bb30>
  a06a5c:	7c 68 ff 
  a06a5f:	62 92 2d 40 7f c0    	vpermt2ps zmm0,zmm26,zmm24
  a06a65:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a06a6c:	02 
  a06a6d:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  a06a72:	c4 e3 79 21 47 54 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x54],0x10
  a06a79:	c4 e2 79 18 4f 58    	vbroadcastss xmm1,DWORD PTR [rdi+0x58]
  a06a7f:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  a06a84:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06a8a:	c4 e3 79 21 47 5c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5c],0x30
  a06a91:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a06a98:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a06a9e:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a06aa4:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a06aaa:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a06ab1:	04 
  a06ab2:	c5 f8 10 87 80 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0x80]
  a06ab9:	00 
  a06aba:	c4 e3 79 21 87 84 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x84],0x10
  a06ac1:	00 00 10 
  a06ac4:	c4 e2 79 18 8f 88 00 	vbroadcastss xmm1,DWORD PTR [rdi+0x88]
  a06acb:	00 00 
  a06acd:	62 92 2d 40 7f d8    	vpermt2ps zmm3,zmm26,zmm24
  a06ad3:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a06ad9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a06ae0:	05 
  a06ae1:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06ae7:	c4 e3 79 21 87 8c 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x8c],0x30
  a06aee:	00 00 30 
  a06af1:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  a06af6:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a06afd:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a06b03:	62 92 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm24
  a06b09:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a06b10:	ff 
  a06b11:	62 92 2d 40 7f c0    	vpermt2ps zmm0,zmm26,zmm24
  a06b17:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a06b1e:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  a06b25:	00 
  a06b26:	c4 e3 79 21 87 b4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xb4],0x10
  a06b2d:	00 00 10 
  a06b30:	c5 fc 10 8f 90 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0x90]
  a06b37:	00 
  a06b38:	c4 e2 79 18 9f b8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xb8]
  a06b3f:	00 00 
  a06b41:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06b47:	c4 e3 79 21 87 bc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xbc],0x30
  a06b4e:	00 00 30 
  a06b51:	62 73 75 48 18 e8 02 	vinsertf32x4 zmm13,zmm1,xmm0,0x2
  a06b58:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a06b5e:	62 12 6d 48 7f d0    	vpermt2ps zmm10,zmm2,zmm24
  a06b64:	62 12 2d 40 7f e8    	vpermt2ps zmm13,zmm26,zmm24
  a06b6a:	c5 f8 10 87 e0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xe0]
  a06b71:	00 
  a06b72:	c5 fc 10 8f c0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xc0]
  a06b79:	00 
  a06b7a:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x10
  a06b81:	00 00 10 
  a06b84:	c4 e2 79 18 9f e8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xe8]
  a06b8b:	00 00 
  a06b8d:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06b93:	c4 e3 79 21 87 ec 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xec],0x30
  a06b9a:	00 00 30 
  a06b9d:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a06ba4:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a06baa:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a06bb0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a06bb7:	fe 
  a06bb8:	62 92 2d 40 7f c8    	vpermt2ps zmm1,zmm26,zmm24
  a06bbe:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a06bc5:	0f 
  a06bc6:	c5 f8 10 87 10 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x110]
  a06bcd:	00 
  a06bce:	c4 e3 79 21 87 14 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x114],0x10
  a06bd5:	00 00 10 
  a06bd8:	c4 e2 79 18 8f 18 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x118]
  a06bdf:	00 00 
  a06be1:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a06be8:	00 
  a06be9:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06bef:	c4 e3 79 21 87 1c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x11c],0x30
  a06bf6:	00 00 30 
  a06bf9:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a06c00:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a06c06:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a06c0c:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a06c12:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a06c19:	03 
  a06c1a:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a06c21:	00 
  a06c22:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a06c29:	00 00 10 
  a06c2c:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a06c33:	00 00 
  a06c35:	62 92 2d 40 7f d8    	vpermt2ps zmm3,zmm26,zmm24
  a06c3b:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a06c41:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a06c48:	06 
  a06c49:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06c4f:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a06c56:	00 00 30 
  a06c59:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a06c60:	00 
  a06c61:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a06c68:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a06c6e:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a06c74:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a06c7b:	0e 
  a06c7c:	62 92 2d 40 7f c8    	vpermt2ps zmm1,zmm26,zmm24
  a06c82:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a06c89:	0c 
  a06c8a:	c5 f8 10 87 70 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x170]
  a06c91:	00 
  a06c92:	c4 e3 79 21 87 74 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x174],0x10
  a06c99:	00 00 10 
  a06c9c:	c5 fc 10 8f 50 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x150]
  a06ca3:	00 
  a06ca4:	c4 e2 79 18 9f 78 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x178]
  a06cab:	00 00 
  a06cad:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06cb3:	c4 e3 79 21 87 7c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x17c],0x30
  a06cba:	00 00 30 
  a06cbd:	62 e3 75 48 18 d0 02 	vinsertf32x4 zmm18,zmm1,xmm0,0x2
  a06cc4:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a06cca:	62 92 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm24
  a06cd0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a06cd7:	0a 
  a06cd8:	62 82 2d 40 7f d0    	vpermt2ps zmm18,zmm26,zmm24
  a06cde:	c5 f8 10 87 a0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1a0]
  a06ce5:	00 
  a06ce6:	c5 fc 10 8f 80 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x180]
  a06ced:	00 
  a06cee:	c4 e3 79 21 87 a4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1a4],0x10
  a06cf5:	00 00 10 
  a06cf8:	c4 e2 79 18 9f a8 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1a8]
  a06cff:	00 00 
  a06d01:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06d07:	c4 e3 79 21 87 ac 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1ac],0x30
  a06d0e:	00 00 30 
  a06d11:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a06d18:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a06d1e:	62 92 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm24
  a06d24:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a06d2b:	0b 
  a06d2c:	62 92 2d 40 7f c0    	vpermt2ps zmm0,zmm26,zmm24
  a06d32:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a06d39:	0d 
  a06d3a:	c5 f8 10 87 d0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1d0]
  a06d41:	00 
  a06d42:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x10
  a06d49:	00 00 10 
  a06d4c:	c4 e2 79 18 8f d8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1d8]
  a06d53:	00 00 
  a06d55:	c5 fc 10 9f b0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b0]
  a06d5c:	00 
  a06d5d:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06d63:	c4 e3 79 21 87 dc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1dc],0x30
  a06d6a:	00 00 30 
  a06d6d:	62 e3 65 48 18 d8 02 	vinsertf32x4 zmm19,zmm3,xmm0,0x2
  a06d74:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a06d7a:	62 82 6d 48 7f e8    	vpermt2ps zmm21,zmm2,zmm24
  a06d80:	c5 f8 10 87 00 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x200]
  a06d87:	00 
  a06d88:	c4 e3 79 21 87 04 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x204],0x10
  a06d8f:	00 00 10 
  a06d92:	c4 e2 79 18 8f 08 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x208]
  a06d99:	00 00 
  a06d9b:	62 82 2d 40 7f d8    	vpermt2ps zmm19,zmm26,zmm24
  a06da1:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06da7:	c4 e3 79 21 87 0c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x20c],0x30
  a06dae:	00 00 30 
  a06db1:	c5 fc 10 8f e0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1e0]
  a06db8:	00 
  a06db9:	62 e3 75 48 18 e0 02 	vinsertf32x4 zmm20,zmm1,xmm0,0x2
  a06dc0:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a06dc6:	62 82 6d 48 7f f0    	vpermt2ps zmm22,zmm2,zmm24
  a06dcc:	62 82 2d 40 7f e0    	vpermt2ps zmm20,zmm26,zmm24
  a06dd2:	c5 f8 10 87 30 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x230]
  a06dd9:	00 
  a06dda:	c4 e3 79 21 87 34 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x234],0x10
  a06de1:	00 00 10 
  a06de4:	c5 fc 10 8f 10 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x210]
  a06deb:	00 
  a06dec:	c4 e2 79 18 9f 38 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x238]
  a06df3:	00 00 
  a06df5:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06dfb:	c4 e3 79 21 87 3c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x23c],0x30
  a06e02:	00 00 30 
  a06e05:	62 e3 75 48 18 f8 02 	vinsertf32x4 zmm23,zmm1,xmm0,0x2
  a06e0c:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a06e12:	62 02 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm24
  a06e18:	c5 f8 10 87 60 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x260]
  a06e1f:	00 
  a06e20:	c4 e3 79 21 87 64 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x264],0x10
  a06e27:	00 00 10 
  a06e2a:	c5 fc 10 8f 40 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x240]
  a06e31:	00 
  a06e32:	c4 e2 79 18 9f 68 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x268]
  a06e39:	00 00 
  a06e3b:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06e41:	c4 e3 79 21 87 6c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x26c],0x30
  a06e48:	00 00 30 
  a06e4b:	62 63 75 48 18 d8 02 	vinsertf32x4 zmm27,zmm1,xmm0,0x2
  a06e52:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a06e59:	00 
  a06e5a:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a06e61:	00 00 10 
  a06e64:	c4 e2 79 18 8f 98 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x298]
  a06e6b:	00 00 
  a06e6d:	c5 fc 10 9f 70 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x270]
  a06e74:	00 
  a06e75:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06e7b:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a06e82:	00 00 30 
  a06e85:	62 63 65 48 18 e0 02 	vinsertf32x4 zmm28,zmm3,xmm0,0x2
  a06e8c:	c5 f8 10 87 c0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2c0]
  a06e93:	00 
  a06e94:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x10
  a06e9b:	00 00 10 
  a06e9e:	c5 fc 10 8f a0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2a0]
  a06ea5:	00 
  a06ea6:	c4 e2 79 18 9f c8 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x2c8]
  a06ead:	00 00 
  a06eaf:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a06eb5:	c4 e3 79 21 87 cc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2cc],0x30
  a06ebc:	00 00 30 
  a06ebf:	62 63 75 48 18 e8 02 	vinsertf32x4 zmm29,zmm1,xmm0,0x2
  a06ec6:	c5 f8 10 87 f0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2f0]
  a06ecd:	00 
  a06ece:	c4 e3 79 21 87 f4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2f4],0x10
  a06ed5:	00 00 10 
  a06ed8:	c4 e2 79 18 8f f8 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2f8]
  a06edf:	00 00 
  a06ee1:	62 82 2d 40 7f f8    	vpermt2ps zmm23,zmm26,zmm24
  a06ee7:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a06eed:	c4 e3 79 21 87 fc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2fc],0x30
  a06ef4:	00 00 30 
  a06ef7:	c5 fc 10 8f d0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2d0]
  a06efe:	00 
  a06eff:	62 73 75 48 18 f0 02 	vinsertf32x4 zmm14,zmm1,xmm0,0x2
  a06f06:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a06f0c:	62 02 6d 48 7f f0    	vpermt2ps zmm30,zmm2,zmm24
  a06f12:	62 02 2d 40 7f d8    	vpermt2ps zmm27,zmm26,zmm24
  a06f18:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a06f1e:	62 82 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm24
  a06f24:	62 02 2d 40 7f e0    	vpermt2ps zmm28,zmm26,zmm24
  a06f2a:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a06f30:	62 02 6d 48 7f f8    	vpermt2ps zmm31,zmm2,zmm24
  a06f36:	62 02 2d 40 7f e8    	vpermt2ps zmm29,zmm26,zmm24
  a06f3c:	62 92 0d 48 77 d0    	vpermi2ps zmm2,zmm14,zmm24
  a06f42:	62 12 2d 40 7f f0    	vpermt2ps zmm14,zmm26,zmm24
  a06f48:	62 a1 5c 48 5c c5    	vsubps zmm16,zmm4,zmm21
  a06f4e:	62 11 44 48 5c fc    	vsubps zmm15,zmm7,zmm28
  a06f54:	62 d1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm15
  a06f5a:	62 31 54 48 5c e3    	vsubps zmm12,zmm5,zmm19
  a06f60:	62 71 74 40 5c de    	vsubps zmm11,zmm17,zmm6
  a06f66:	62 72 7d 48 18 05 f4 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff66e6f4]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a06f6d:	e6 66 ff 
  a06f70:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a06f76:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a06f7c:	62 f2 7d 48 18 35 7a 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66e77a]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a06f83:	e7 66 ff 
  a06f86:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a06f8c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a06f93:	09 
  a06f94:	62 61 34 48 59 d6    	vmulps zmm26,zmm9,zmm6
  a06f9a:	62 62 3d 48 bc d7    	vfnmadd231ps zmm26,zmm8,zmm7
  a06fa0:	62 91 2c 48 5c e9    	vsubps zmm5,zmm10,zmm25
  a06fa6:	62 d1 6c 40 5c e6    	vsubps zmm4,zmm18,zmm14
  a06fac:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a06fb2:	62 b1 14 48 5c df    	vsubps zmm3,zmm13,zmm23
  a06fb8:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x280]
  a06fbf:	0a 
  a06fc0:	62 d1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm9
  a06fc6:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a06fcc:	62 61 44 48 59 c6    	vmulps zmm24,zmm7,zmm6
  a06fd2:	62 42 7d 48 b8 c0    	vfmadd231ps zmm24,zmm0,zmm8
  a06fd8:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm24
  a06fdf:	08 
  a06fe0:	62 41 44 48 59 c0    	vmulps zmm24,zmm7,zmm8
  a06fe6:	62 62 4d 48 bc c0    	vfnmadd231ps zmm24,zmm6,zmm0
  a06fec:	62 d1 7c 40 5c c7    	vsubps zmm0,zmm16,zmm15
  a06ff2:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a06ff8:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a06ffe:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a07004:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a0700a:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a07010:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a07017:	07 
  a07018:	62 d1 24 48 59 e0    	vmulps zmm4,zmm11,zmm8
  a0701e:	62 f2 4d 48 bc e0    	vfnmadd231ps zmm4,zmm6,zmm0
  a07024:	62 d1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm8
  a0702a:	62 f2 55 48 b8 fe    	vfmadd231ps zmm7,zmm5,zmm6
  a07030:	62 d1 54 48 59 d8    	vmulps zmm3,zmm5,zmm8
  a07036:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a0703c:	62 f1 54 40 58 6c 24 	vaddps zmm5,zmm21,ZMMWORD PTR [rsp+0x100]
  a07043:	04 
  a07044:	62 f1 74 40 58 74 24 	vaddps zmm6,zmm17,ZMMWORD PTR [rsp+0xc0]
  a0704b:	03 
  a0704c:	62 11 2c 48 58 c1    	vaddps zmm8,zmm10,zmm25
  a07052:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a07058:	62 71 64 40 58 5c 24 	vaddps zmm11,zmm19,ZMMWORD PTR [rsp+0x140]
  a0705f:	05 
  a07060:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x180]
  a07067:	06 
  a07068:	62 31 14 48 58 ef    	vaddps zmm13,zmm13,zmm23
  a0706e:	62 51 6c 40 58 d6    	vaddps zmm10,zmm18,zmm14
  a07074:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a0707b:	01 
  a0707c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a07083:	0b 
  a07084:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a0708a:	62 71 7c 48 5c f9    	vsubps zmm15,zmm0,zmm1
  a07090:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a07097:	0f 
  a07098:	62 81 7c 48 58 c3    	vaddps zmm16,zmm0,zmm27
  a0709e:	62 81 7c 48 5c db    	vsubps zmm19,zmm0,zmm27
  a070a4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a070ab:	ff 
  a070ac:	62 a1 7c 48 58 ee    	vaddps zmm21,zmm0,zmm22
  a070b2:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a070b8:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a070bf:	62 a1 7c 48 58 fc    	vaddps zmm23,zmm0,zmm20
  a070c5:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  a070cb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a070d2:	0c 
  a070d3:	62 01 7c 48 58 cd    	vaddps zmm25,zmm0,zmm29
  a070d9:	62 81 7c 48 5c d5    	vsubps zmm18,zmm0,zmm29
  a070df:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a070e6:	0e 
  a070e7:	62 01 7c 48 58 df    	vaddps zmm27,zmm0,zmm31
  a070ed:	62 01 7c 48 5c e7    	vsubps zmm28,zmm0,zmm31
  a070f3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a070fa:	02 
  a070fb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a07102:	0d 
  a07103:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a07109:	62 e1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm1
  a0710f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a07116:	fe 
  a07117:	62 01 7c 48 58 fe    	vaddps zmm31,zmm0,zmm30
  a0711d:	62 61 0c 40 5c f0    	vsubps zmm30,zmm30,zmm0
  a07123:	62 b1 4c 40 58 c4    	vaddps zmm0,zmm22,zmm20
  a07129:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a0712f:	62 81 6c 40 5c f4    	vsubps zmm22,zmm18,zmm28
  a07135:	62 a1 1c 40 58 d2    	vaddps zmm18,zmm28,zmm18
  a0713b:	62 01 0c 48 58 e7    	vaddps zmm28,zmm14,zmm31
  a07141:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a07147:	62 01 44 40 58 f9    	vaddps zmm31,zmm23,zmm25
  a0714d:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a07153:	62 61 54 48 58 ce    	vaddps zmm25,zmm5,zmm6
  a07159:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a0715f:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a07165:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a0716b:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a07171:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a07177:	62 71 3c 48 58 ea    	vaddps zmm13,zmm8,zmm2
  a0717d:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a07183:	62 31 14 40 58 c0    	vaddps zmm8,zmm29,zmm16
  a07189:	62 a1 14 40 5c c0    	vsubps zmm16,zmm29,zmm16
  a0718f:	62 01 54 40 58 eb    	vaddps zmm29,zmm21,zmm27
  a07195:	62 a1 24 40 5c ed    	vsubps zmm21,zmm27,zmm21
  a0719b:	62 41 54 48 58 db    	vaddps zmm27,zmm5,zmm11
  a071a1:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a071a7:	62 71 2c 48 5c da    	vsubps zmm11,zmm10,zmm2
  a071ad:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a071b3:	62 72 7d 48 18 15 df 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff66e1df]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a071ba:	e1 66 ff 
  a071bd:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a071c3:	62 c1 4c 40 59 f2    	vmulps zmm22,zmm22,zmm10
  a071c9:	62 c1 5c 40 59 e2    	vmulps zmm20,zmm20,zmm10
  a071cf:	62 c1 6c 40 59 d2    	vmulps zmm18,zmm18,zmm10
  a071d5:	62 41 24 40 59 da    	vmulps zmm27,zmm27,zmm10
  a071db:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a071e1:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a071e7:	62 d1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm10
  a071ed:	62 31 04 48 58 d3    	vaddps zmm10,zmm15,zmm19
  a071f3:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a071f9:	62 a1 5c 40 5c da    	vsubps zmm19,zmm20,zmm18
  a071ff:	62 a1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm18
  a07205:	62 a1 0c 40 58 e1    	vaddps zmm20,zmm30,zmm17
  a0720b:	62 81 74 40 5c ce    	vsubps zmm17,zmm17,zmm30
  a07211:	62 21 7c 48 58 f6    	vaddps zmm30,zmm0,zmm22
  a07217:	62 f1 4c 40 5c c8    	vsubps zmm1,zmm22,zmm0
  a0721d:	62 81 1c 40 58 f5    	vaddps zmm22,zmm28,zmm29
  a07223:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a07229:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a07230:	ff 
  a07231:	62 41 4c 48 58 ec    	vaddps zmm29,zmm6,zmm12
  a07237:	62 41 4c 48 5c e4    	vsubps zmm28,zmm6,zmm12
  a0723d:	62 91 3c 48 58 f7    	vaddps zmm6,zmm8,zmm31
  a07243:	62 11 3c 48 5c e7    	vsubps zmm12,zmm8,zmm31
  a07249:	62 41 34 40 58 fd    	vaddps zmm31,zmm25,zmm13
  a0724f:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a07255:	62 11 2c 48 58 ee    	vaddps zmm13,zmm10,zmm30
  a0725b:	62 11 2c 48 5c d6    	vsubps zmm10,zmm10,zmm30
  a07261:	62 01 2c 40 58 f0    	vaddps zmm30,zmm26,zmm24
  a07267:	62 01 2c 40 5c d0    	vsubps zmm26,zmm26,zmm24
  a0726d:	62 31 5c 40 58 cb    	vaddps zmm9,zmm20,zmm19
  a07273:	62 a1 5c 40 5c db    	vsubps zmm19,zmm20,zmm19
  a07279:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a07280:	09 
  a07281:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x200]
  a07288:	08 
  a07289:	62 c1 7c 48 58 e0    	vaddps zmm20,zmm0,zmm8
  a0728f:	62 61 3c 48 5c c0    	vsubps zmm24,zmm8,zmm0
  a07295:	62 b1 0c 48 58 c7    	vaddps zmm0,zmm14,zmm23
  a0729b:	62 a1 0c 48 5c ff    	vsubps zmm23,zmm14,zmm23
  a072a1:	62 71 54 48 5c f2    	vsubps zmm14,zmm5,zmm2
  a072a7:	62 71 54 48 58 c2    	vaddps zmm8,zmm5,zmm2
  a072ad:	62 b1 54 40 58 e8    	vaddps zmm5,zmm21,zmm16
  a072b3:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a072b9:	62 c1 24 40 58 eb    	vaddps zmm21,zmm27,zmm11
  a072bf:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a072c5:	62 21 04 48 58 da    	vaddps zmm27,zmm15,zmm18
  a072cb:	62 31 04 48 5c fa    	vsubps zmm15,zmm15,zmm18
  a072d1:	62 e1 5c 48 58 d3    	vaddps zmm18,zmm4,zmm3
  a072d7:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a072dd:	62 f1 74 40 58 e1    	vaddps zmm4,zmm17,zmm1
  a072e3:	62 f1 74 40 5c d1    	vsubps zmm2,zmm17,zmm1
  a072e9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a072f0:	07 
  a072f1:	62 e1 74 48 5c cf    	vsubps zmm17,zmm1,zmm7
  a072f7:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a072fd:	62 91 4c 40 58 ff    	vaddps zmm7,zmm22,zmm31
  a07303:	62 81 4c 40 5c f7    	vsubps zmm22,zmm22,zmm31
  a07309:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a07310:	fe 
  a07311:	62 01 4c 48 58 fd    	vaddps zmm31,zmm6,zmm29
  a07317:	62 91 4c 48 5c f5    	vsubps zmm6,zmm6,zmm29
  a0731d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  a07324:	02 
  a07325:	62 b1 14 48 58 f4    	vaddps zmm6,zmm13,zmm20
  a0732b:	62 a1 14 48 5c f4    	vsubps zmm22,zmm13,zmm20
  a07331:	62 01 34 48 58 ee    	vaddps zmm29,zmm9,zmm30
  a07337:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a0733d:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a07344:	01 
  a07345:	62 a1 7c 48 58 e5    	vaddps zmm20,zmm0,zmm21
  a0734b:	62 31 7c 48 5c ed    	vsubps zmm13,zmm0,zmm21
  a07351:	62 41 54 48 58 f6    	vaddps zmm30,zmm5,zmm14
  a07357:	62 d1 54 48 5c c6    	vsubps zmm0,zmm5,zmm14
  a0735d:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a07364:	62 b1 24 40 58 c1    	vaddps zmm0,zmm27,zmm17
  a0736a:	62 a1 24 40 5c c9    	vsubps zmm17,zmm27,zmm17
  a07370:	62 21 5c 48 58 da    	vaddps zmm27,zmm4,zmm18
  a07376:	62 31 5c 48 5c f2    	vsubps zmm14,zmm4,zmm18
  a0737c:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a07383:	ff 
  a07384:	62 81 5c 48 58 d4    	vaddps zmm18,zmm4,zmm28
  a0738a:	62 01 5c 48 5c e4    	vsubps zmm28,zmm4,zmm28
  a07390:	62 51 34 40 58 cc    	vaddps zmm9,zmm25,zmm12
  a07396:	62 01 1c 48 5c c9    	vsubps zmm25,zmm12,zmm25
  a0739c:	62 91 2c 48 58 e2    	vaddps zmm4,zmm10,zmm26
  a073a2:	62 11 2c 48 5c e2    	vsubps zmm12,zmm10,zmm26
  a073a8:	62 11 64 40 58 d0    	vaddps zmm10,zmm19,zmm24
  a073ae:	62 01 64 40 5c c0    	vsubps zmm24,zmm19,zmm24
  a073b4:	62 41 44 40 58 d0    	vaddps zmm26,zmm23,zmm8
  a073ba:	62 c1 44 40 5c f8    	vsubps zmm23,zmm23,zmm8
  a073c0:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a073c6:	62 c1 7c 40 5c db    	vsubps zmm19,zmm16,zmm11
  a073cc:	62 71 04 48 58 db    	vaddps zmm11,zmm15,zmm3
  a073d2:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a073d8:	62 71 6c 48 5c c1    	vsubps zmm8,zmm2,zmm1
  a073de:	62 71 6c 48 58 f9    	vaddps zmm15,zmm2,zmm1
  a073e4:	62 e1 7c 48 28 2d 92 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6bfb92]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a073eb:	fb 6b ff 
  a073ee:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp-0x80]
  a073f5:	fe 
  a073f6:	62 b2 55 40 7f f6    	vpermt2ps zmm6,zmm21,zmm22
  a073fc:	62 c2 55 40 7f e5    	vpermt2ps zmm20,zmm21,zmm13
  a07402:	62 b2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm17
  a07408:	62 82 55 40 7f d4    	vpermt2ps zmm18,zmm21,zmm28
  a0740e:	62 d2 55 40 7f e4    	vpermt2ps zmm4,zmm21,zmm12
  a07414:	62 22 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm23
  a0741a:	62 72 55 40 7f db    	vpermt2ps zmm11,zmm21,zmm3
  a07420:	62 71 7c 48 28 25 d6 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6bfad6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a07427:	fa 6b ff 
  a0742a:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a07430:	62 b2 1d 48 7f ca    	vpermt2ps zmm1,zmm12,zmm18
  a07436:	62 e1 7c 48 28 05 00 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6bfb00]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0743d:	fb 6b ff 
  a07440:	62 b2 7d 40 7f fa    	vpermt2ps zmm7,zmm16,zmm18
  a07446:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a0744c:	62 72 1d 48 7f ec    	vpermt2ps zmm13,zmm12,zmm4
  a07452:	62 f2 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm4
  a07458:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a0745e:	62 92 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm26
  a07464:	62 82 7d 40 7f e2    	vpermt2ps zmm20,zmm16,zmm26
  a0746a:	62 b1 c5 48 14 dc    	vunpcklpd zmm3,zmm7,zmm20
  a07470:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a07476:	62 d2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm11
  a0747c:	62 d2 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm11
  a07482:	62 f1 cd 48 14 f0    	vunpcklpd zmm6,zmm6,zmm0
  a07488:	62 f1 f5 48 14 d4    	vunpcklpd zmm2,zmm1,zmm4
  a0748e:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a07494:	62 f1 95 48 14 e7    	vunpcklpd zmm4,zmm13,zmm7
  a0749a:	62 f1 95 48 15 ff    	vunpckhpd zmm7,zmm13,zmm7
  a074a0:	62 62 55 40 7f 7c 24 	vpermt2ps zmm31,zmm21,ZMMWORD PTR [rsp+0x80]
  a074a7:	02 
  a074a8:	62 62 55 40 7f 6c 24 	vpermt2ps zmm29,zmm21,ZMMWORD PTR [rsp+0x40]
  a074af:	01 
  a074b0:	62 62 55 40 7f 34 24 	vpermt2ps zmm30,zmm21,ZMMWORD PTR [rsp]
  a074b7:	62 42 55 40 7f de    	vpermt2ps zmm27,zmm21,zmm14
  a074bd:	62 12 55 40 7f c9    	vpermt2ps zmm9,zmm21,zmm25
  a074c3:	62 12 55 40 7f d0    	vpermt2ps zmm10,zmm21,zmm24
  a074c9:	62 b2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm19
  a074cf:	62 71 7c 48 28 2d 27 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6bf927]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a074d6:	f9 6b ff 
  a074d9:	62 52 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm15
  a074df:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a074e5:	62 f2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm4
  a074eb:	62 71 7c 48 28 1d 4b 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6bf94b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a074f2:	f9 6b ff 
  a074f5:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a074fb:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a07501:	62 72 15 48 7f f7    	vpermt2ps zmm14,zmm13,zmm7
  a07507:	62 f2 25 48 7f cf    	vpermt2ps zmm1,zmm11,zmm7
  a0750d:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a07513:	62 72 15 48 7f fe    	vpermt2ps zmm15,zmm13,zmm6
  a07519:	62 f2 25 48 7f de    	vpermt2ps zmm3,zmm11,zmm6
  a0751f:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a07525:	62 d2 1d 48 7f e1    	vpermt2ps zmm4,zmm12,zmm9
  a0752b:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a07531:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  a07537:	62 d2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm10
  a0753d:	62 42 7d 40 7f ea    	vpermt2ps zmm29,zmm16,zmm10
  a07543:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a07549:	62 72 1d 48 7f d5    	vpermt2ps zmm10,zmm12,zmm5
  a0754f:	62 62 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm5
  a07555:	62 11 85 40 14 ce    	vunpcklpd zmm9,zmm31,zmm30
  a0755b:	62 52 25 40 77 e0    	vpermi2ps zmm12,zmm27,zmm8
  a07561:	62 42 7d 40 7f d8    	vpermt2ps zmm27,zmm16,zmm8
  a07567:	62 11 95 40 14 c3    	vunpcklpd zmm8,zmm29,zmm27
  a0756d:	62 d1 dd 48 14 fa    	vunpcklpd zmm7,zmm4,zmm10
  a07573:	62 d1 dd 48 15 ea    	vunpckhpd zmm5,zmm4,zmm10
  a07579:	62 51 cd 48 14 d4    	vunpcklpd zmm10,zmm6,zmm12
  a0757f:	62 d1 cd 48 15 f4    	vunpckhpd zmm6,zmm6,zmm12
  a07585:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a0758b:	62 d2 15 48 7f e2    	vpermt2ps zmm4,zmm13,zmm10
  a07591:	62 d2 25 48 7f fa    	vpermt2ps zmm7,zmm11,zmm10
  a07597:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0759d:	62 72 15 48 7f d6    	vpermt2ps zmm10,zmm13,zmm6
  a075a3:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a075a9:	62 52 35 48 77 e8    	vpermi2ps zmm13,zmm9,zmm8
  a075af:	62 52 25 48 7f c8    	vpermt2ps zmm9,zmm11,zmm8
  a075b5:	62 71 7c 48 10 5a 02 	vmovups zmm11,ZMMWORD PTR [rdx+0x80]
  a075bc:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a075c3:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a075ca:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a075d1:	62 d1 0c 48 59 f0    	vmulps zmm6,zmm14,zmm8
  a075d7:	62 b2 2d 48 bc f0    	vfnmadd231ps zmm6,zmm10,zmm16
  a075dd:	62 51 2c 48 59 c0    	vmulps zmm8,zmm10,zmm8
  a075e3:	62 71 7c 48 10 52 09 	vmovups zmm10,ZMMWORD PTR [rdx+0x240]
  a075ea:	62 52 7d 40 b8 c6    	vfmadd231ps zmm8,zmm16,zmm14
  a075f0:	62 71 7c 48 10 72 08 	vmovups zmm14,ZMMWORD PTR [rdx+0x200]
  a075f7:	62 c1 04 48 59 c6    	vmulps zmm16,zmm15,zmm14
  a075fd:	62 c2 15 48 bc c2    	vfnmadd231ps zmm16,zmm13,zmm10
  a07603:	62 51 14 48 59 ee    	vmulps zmm13,zmm13,zmm14
  a07609:	62 52 2d 48 b8 ef    	vfmadd231ps zmm13,zmm10,zmm15
  a0760f:	62 71 7c 48 10 52 0b 	vmovups zmm10,ZMMWORD PTR [rdx+0x2c0]
  a07616:	62 71 7c 48 10 72 0a 	vmovups zmm14,ZMMWORD PTR [rdx+0x280]
  a0761d:	62 51 34 48 59 fe    	vmulps zmm15,zmm9,zmm14
  a07623:	62 52 65 48 b8 fa    	vfmadd231ps zmm15,zmm3,zmm10
  a07629:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a0762f:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a07635:	62 d2 2d 48 bc d9    	vfnmadd231ps zmm3,zmm10,zmm9
  a0763b:	62 72 7d 48 18 0d 8f 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff66dc8f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a07642:	dc 66 ff 
  a07645:	62 51 0c 48 59 d1    	vmulps zmm10,zmm14,zmm9
  a0764b:	62 51 44 48 59 f3    	vmulps zmm14,zmm7,zmm11
  a07651:	62 52 6d 48 b8 f4    	vfmadd231ps zmm14,zmm2,zmm12
  a07657:	62 d1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm11
  a0765d:	62 71 7c 48 10 5a 07 	vmovups zmm11,ZMMWORD PTR [rdx+0x1c0]
  a07664:	62 f2 1d 48 bc d7    	vfnmadd231ps zmm2,zmm12,zmm7
  a0766a:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a07671:	62 71 54 48 59 e7    	vmulps zmm12,zmm5,zmm7
  a07677:	62 52 75 48 b8 e3    	vfmadd231ps zmm12,zmm1,zmm11
  a0767d:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a07683:	62 f2 7d 48 18 3d d3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff66ddd3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0768a:	dd 66 ff 
  a0768d:	62 f2 25 48 bc cd    	vfnmadd231ps zmm1,zmm11,zmm5
  a07693:	62 d1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm13
  a07699:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a0769f:	62 72 55 48 ac dc    	vfnmadd213ps zmm11,zmm5,zmm4
  a076a5:	62 b1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm16
  a076ab:	62 c1 2c 48 58 c3    	vaddps zmm16,zmm10,zmm11
  a076b1:	62 51 3c 48 5c c5    	vsubps zmm8,zmm8,zmm13
  a076b7:	62 71 64 48 5c ea    	vsubps zmm13,zmm3,zmm2
  a076bd:	62 f1 64 48 58 d2    	vaddps zmm2,zmm3,zmm2
  a076c3:	62 d1 04 48 58 de    	vaddps zmm3,zmm15,zmm14
  a076c9:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a076cf:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a076d5:	62 52 65 48 ac fc    	vfnmadd213ps zmm15,zmm3,zmm12
  a076db:	62 51 14 48 59 e9    	vmulps zmm13,zmm13,zmm9
  a076e1:	62 51 3c 48 59 c1    	vmulps zmm8,zmm8,zmm9
  a076e7:	62 51 0c 48 59 c9    	vmulps zmm9,zmm14,zmm9
  a076ed:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a076f3:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a076f9:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a076ff:	62 72 4d 48 ac d8    	vfnmadd213ps zmm11,zmm6,zmm0
  a07705:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a0770b:	62 51 24 48 5c f8    	vsubps zmm15,zmm11,zmm8
  a07711:	62 f2 6d 48 ac f9    	vfnmadd213ps zmm7,zmm2,zmm1
  a07717:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a0771d:	62 51 44 48 5c d9    	vsubps zmm11,zmm7,zmm9
  a07723:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a07729:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a0772f:	62 f1 1c 48 58 db    	vaddps zmm3,zmm12,zmm3
  a07735:	62 d1 7c 40 5c ee    	vsubps zmm5,zmm16,zmm14
  a0773b:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a07741:	62 d1 04 48 5c f3    	vsubps zmm6,zmm15,zmm11
  a07747:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a0774d:	62 d1 2c 48 58 d5    	vaddps zmm2,zmm10,zmm13
  a07753:	62 51 7c 40 58 ce    	vaddps zmm9,zmm16,zmm14
  a07759:	62 71 3c 48 58 e7    	vaddps zmm12,zmm8,zmm7
  a0775f:	62 51 04 48 58 db    	vaddps zmm11,zmm15,zmm11
  a07765:	62 71 5c 48 5c f3    	vsubps zmm14,zmm4,zmm3
  a0776b:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a07771:	62 71 7c 48 5c e9    	vsubps zmm13,zmm0,zmm1
  a07777:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a0777d:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a07783:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a07789:	62 f1 7c 48 28 0d 2d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff686f2d]        # 8e6c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bb70>
  a07790:	6f 68 ff 
  a07793:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a07799:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a0779f:	62 71 7c 48 28 05 57 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff686f57]        # 8e700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bbb0>
  a077a6:	6f 68 ff 
  a077a9:	62 f2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm3
  a077af:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a077b5:	62 d2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm10
  a077bb:	62 d2 3d 48 7f fa    	vpermt2ps zmm7,zmm8,zmm10
  a077c1:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a077c7:	62 52 75 48 7f d1    	vpermt2ps zmm10,zmm1,zmm9
  a077cd:	62 52 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm9
  a077d3:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a077d9:	62 52 75 48 7f ce    	vpermt2ps zmm9,zmm1,zmm14
  a077df:	62 52 3d 48 7f ee    	vpermt2ps zmm13,zmm8,zmm14
  a077e5:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a077eb:	62 72 75 48 7f f2    	vpermt2ps zmm14,zmm1,zmm2
  a077f1:	62 72 3d 48 7f e2    	vpermt2ps zmm12,zmm8,zmm2
  a077f7:	62 f2 4d 48 77 cd    	vpermi2ps zmm1,zmm6,zmm5
  a077fd:	62 f2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm5
  a07803:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a07809:	62 f1 7c 48 11 66 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm4
  a07810:	62 f1 7c 48 11 7e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm7
  a07817:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a0781e:	62 71 7c 48 11 5e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm11
  a07825:	62 71 7c 48 11 56 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm10
  a0782c:	62 71 7c 48 11 6e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm13
  a07833:	62 71 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm9
  a0783a:	62 71 7c 48 11 66 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm12
  a07841:	62 71 7c 48 11 76 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm14
  a07848:	62 f1 7c 48 11 76 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm6
  a0784f:	62 f1 7c 48 11 4e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm1
  a07856:	48 81 c4 08 04 00 00 	add    rsp,0x408
  a0785d:	c5 f8 77             	vzeroupper
  a07860:	c3                   	ret
