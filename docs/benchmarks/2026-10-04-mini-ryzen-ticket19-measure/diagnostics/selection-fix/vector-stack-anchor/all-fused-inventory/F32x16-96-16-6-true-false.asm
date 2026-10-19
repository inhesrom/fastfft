
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a70c80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a70c80:	48 81 ec 08 04 00 00 	sub    rsp,0x408
  a70c87:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a70c8c:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a70c93:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a70c99:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a70c9d:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a70ca3:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a70caa:	62 f3 6d 48 18 c8 02 	vinsertf32x4 zmm1,zmm2,xmm0,0x2
  a70cb1:	62 f1 7c 48 28 15 85 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff623d85]        # 94a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21ef0>
  a70cb8:	3d 62 ff 
  a70cbb:	62 01 34 00 57 c9    	vxorps xmm25,xmm25,xmm25
  a70cc1:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a70cc7:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70ccd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a70cd4:	03 
  a70cd5:	62 61 7c 48 28 1d a1 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff623da1]        # 94a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21f30>
  a70cdc:	3d 62 ff 
  a70cdf:	62 92 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm25
  a70ce5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a70cec:	02 
  a70ced:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  a70cf2:	c4 e3 79 21 47 54 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x54],0x10
  a70cf9:	c4 e2 79 18 4f 58    	vbroadcastss xmm1,DWORD PTR [rdi+0x58]
  a70cff:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  a70d04:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a70d0a:	c4 e3 79 21 47 5c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5c],0x30
  a70d11:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a70d18:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a70d1e:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70d24:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a70d2a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a70d31:	06 
  a70d32:	c5 f8 10 87 80 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0x80]
  a70d39:	00 
  a70d3a:	c4 e3 79 21 87 84 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x84],0x10
  a70d41:	00 00 10 
  a70d44:	c4 e2 79 18 8f 88 00 	vbroadcastss xmm1,DWORD PTR [rdi+0x88]
  a70d4b:	00 00 
  a70d4d:	62 92 25 40 7f d9    	vpermt2ps zmm3,zmm27,zmm25
  a70d53:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a70d59:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a70d60:	05 
  a70d61:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a70d67:	c4 e3 79 21 87 8c 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x8c],0x30
  a70d6e:	00 00 30 
  a70d71:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  a70d76:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a70d7d:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a70d83:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70d89:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a70d90:	01 
  a70d91:	62 92 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm25
  a70d97:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a70d9e:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  a70da5:	00 
  a70da6:	c4 e3 79 21 87 b4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xb4],0x10
  a70dad:	00 00 10 
  a70db0:	c5 fc 10 8f 90 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0x90]
  a70db7:	00 
  a70db8:	c4 e2 79 18 9f b8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xb8]
  a70dbf:	00 00 
  a70dc1:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a70dc7:	c4 e3 79 21 87 bc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xbc],0x30
  a70dce:	00 00 30 
  a70dd1:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a70dd8:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a70dde:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70de4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a70deb:	0c 
  a70dec:	62 92 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm25
  a70df2:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a70df8:	c5 f8 10 87 e0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xe0]
  a70dff:	00 
  a70e00:	c5 fc 10 8f c0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xc0]
  a70e07:	00 
  a70e08:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x10
  a70e0f:	00 00 10 
  a70e12:	c4 e2 79 18 9f e8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xe8]
  a70e19:	00 00 
  a70e1b:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a70e21:	c4 e3 79 21 87 ec 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xec],0x30
  a70e28:	00 00 30 
  a70e2b:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a70e32:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a70e38:	62 92 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm25
  a70e3e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a70e45:	fe 
  a70e46:	62 92 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm25
  a70e4c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a70e53:	ff 
  a70e54:	c5 f8 10 87 10 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x110]
  a70e5b:	00 
  a70e5c:	c4 e3 79 21 87 14 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x114],0x10
  a70e63:	00 00 10 
  a70e66:	c4 e2 79 18 8f 18 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x118]
  a70e6d:	00 00 
  a70e6f:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a70e76:	00 
  a70e77:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a70e7d:	c4 e3 79 21 87 1c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x11c],0x30
  a70e84:	00 00 30 
  a70e87:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a70e8e:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a70e94:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70e9a:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a70ea0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a70ea7:	08 
  a70ea8:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a70eaf:	00 
  a70eb0:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a70eb7:	00 00 10 
  a70eba:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a70ec1:	00 00 
  a70ec3:	62 92 25 40 7f d9    	vpermt2ps zmm3,zmm27,zmm25
  a70ec9:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a70ecf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a70ed6:	04 
  a70ed7:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a70edd:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a70ee4:	00 00 30 
  a70ee7:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a70eee:	00 
  a70eef:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a70ef6:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a70efc:	62 92 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm25
  a70f02:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a70f09:	0e 
  a70f0a:	62 92 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm25
  a70f10:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a70f17:	0f 
  a70f18:	c5 f8 10 87 70 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x170]
  a70f1f:	00 
  a70f20:	c4 e3 79 21 87 74 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x174],0x10
  a70f27:	00 00 10 
  a70f2a:	c5 fc 10 8f 50 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x150]
  a70f31:	00 
  a70f32:	c4 e2 79 18 9f 78 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x178]
  a70f39:	00 00 
  a70f3b:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a70f41:	c4 e3 79 21 87 7c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x17c],0x30
  a70f48:	00 00 30 
  a70f4b:	62 e3 75 48 18 d8 02 	vinsertf32x4 zmm19,zmm1,xmm0,0x2
  a70f52:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a70f58:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70f5e:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a70f64:	62 82 25 40 7f d9    	vpermt2ps zmm19,zmm27,zmm25
  a70f6a:	c5 f8 10 87 a0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1a0]
  a70f71:	00 
  a70f72:	c5 fc 10 8f 80 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x180]
  a70f79:	00 
  a70f7a:	c4 e3 79 21 87 a4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1a4],0x10
  a70f81:	00 00 10 
  a70f84:	c4 e2 79 18 9f a8 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1a8]
  a70f8b:	00 00 
  a70f8d:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a70f93:	c4 e3 79 21 87 ac 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1ac],0x30
  a70f9a:	00 00 30 
  a70f9d:	62 e3 75 48 18 d0 02 	vinsertf32x4 zmm18,zmm1,xmm0,0x2
  a70fa4:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a70faa:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a70fb0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a70fb7:	0d 
  a70fb8:	62 82 25 40 7f d1    	vpermt2ps zmm18,zmm27,zmm25
  a70fbe:	c5 f8 10 87 d0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1d0]
  a70fc5:	00 
  a70fc6:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x10
  a70fcd:	00 00 10 
  a70fd0:	c4 e2 79 18 8f d8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1d8]
  a70fd7:	00 00 
  a70fd9:	c5 fc 10 9f b0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b0]
  a70fe0:	00 
  a70fe1:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a70fe7:	c4 e3 79 21 87 dc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1dc],0x30
  a70fee:	00 00 30 
  a70ff1:	62 e3 65 48 18 e0 02 	vinsertf32x4 zmm20,zmm3,xmm0,0x2
  a70ff8:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a70ffe:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a71004:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a7100a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a71011:	07 
  a71012:	c5 f8 10 87 00 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x200]
  a71019:	00 
  a7101a:	c4 e3 79 21 87 04 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x204],0x10
  a71021:	00 00 10 
  a71024:	c4 e2 79 18 8f 08 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x208]
  a7102b:	00 00 
  a7102d:	62 82 25 40 7f e1    	vpermt2ps zmm20,zmm27,zmm25
  a71033:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a71039:	c4 e3 79 21 87 0c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x20c],0x30
  a71040:	00 00 30 
  a71043:	c5 fc 10 8f e0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1e0]
  a7104a:	00 
  a7104b:	62 e3 75 48 18 f0 02 	vinsertf32x4 zmm22,zmm1,xmm0,0x2
  a71052:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  a71058:	62 82 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm25
  a7105e:	62 82 25 40 7f f1    	vpermt2ps zmm22,zmm27,zmm25
  a71064:	c5 f8 10 87 30 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x230]
  a7106b:	00 
  a7106c:	c4 e3 79 21 87 34 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x234],0x10
  a71073:	00 00 10 
  a71076:	c5 fc 10 8f 10 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x210]
  a7107d:	00 
  a7107e:	c4 e2 79 18 9f 38 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x238]
  a71085:	00 00 
  a71087:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a7108d:	c4 e3 79 21 87 3c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x23c],0x30
  a71094:	00 00 30 
  a71097:	62 63 75 48 18 d0 02 	vinsertf32x4 zmm26,zmm1,xmm0,0x2
  a7109e:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a710a4:	62 02 6d 48 7f c1    	vpermt2ps zmm24,zmm2,zmm25
  a710aa:	c5 f8 10 87 60 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x260]
  a710b1:	00 
  a710b2:	c4 e3 79 21 87 64 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x264],0x10
  a710b9:	00 00 10 
  a710bc:	c5 fc 10 8f 40 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x240]
  a710c3:	00 
  a710c4:	c4 e2 79 18 9f 68 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x268]
  a710cb:	00 00 
  a710cd:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a710d3:	c4 e3 79 21 87 6c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x26c],0x30
  a710da:	00 00 30 
  a710dd:	62 e3 75 48 18 f8 02 	vinsertf32x4 zmm23,zmm1,xmm0,0x2
  a710e4:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a710eb:	00 
  a710ec:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a710f3:	00 00 10 
  a710f6:	c4 e2 79 18 8f 98 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x298]
  a710fd:	00 00 
  a710ff:	c5 fc 10 9f 70 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x270]
  a71106:	00 
  a71107:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a7110d:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a71114:	00 00 30 
  a71117:	62 63 65 48 18 e8 02 	vinsertf32x4 zmm29,zmm3,xmm0,0x2
  a7111e:	c5 f8 10 87 c0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2c0]
  a71125:	00 
  a71126:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x10
  a7112d:	00 00 10 
  a71130:	c5 fc 10 8f a0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2a0]
  a71137:	00 
  a71138:	c4 e2 79 18 9f c8 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x2c8]
  a7113f:	00 00 
  a71141:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a71147:	c4 e3 79 21 87 cc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2cc],0x30
  a7114e:	00 00 30 
  a71151:	62 63 75 48 18 e0 02 	vinsertf32x4 zmm28,zmm1,xmm0,0x2
  a71158:	c5 f8 10 87 f0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2f0]
  a7115f:	00 
  a71160:	c4 e3 79 21 87 f4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2f4],0x10
  a71167:	00 00 10 
  a7116a:	c4 e2 79 18 8f f8 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2f8]
  a71171:	00 00 
  a71173:	62 02 25 40 7f d1    	vpermt2ps zmm26,zmm27,zmm25
  a71179:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a7117f:	c4 e3 79 21 87 fc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2fc],0x30
  a71186:	00 00 30 
  a71189:	c5 fc 10 8f d0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2d0]
  a71190:	00 
  a71191:	62 73 75 48 18 d0 02 	vinsertf32x4 zmm10,zmm1,xmm0,0x2
  a71198:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a7119e:	62 02 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm25
  a711a4:	62 82 25 40 7f f9    	vpermt2ps zmm23,zmm27,zmm25
  a711aa:	62 81 7c 48 28 c5    	vmovaps zmm16,zmm29
  a711b0:	62 82 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm25
  a711b6:	62 02 25 40 7f e9    	vpermt2ps zmm29,zmm27,zmm25
  a711bc:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a711c2:	62 02 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm25
  a711c8:	62 02 25 40 7f e1    	vpermt2ps zmm28,zmm27,zmm25
  a711ce:	62 92 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm25
  a711d4:	62 12 25 40 7f d1    	vpermt2ps zmm10,zmm27,zmm25
  a711da:	62 31 54 48 5c fc    	vsubps zmm15,zmm5,zmm20
  a711e0:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a711e6:	62 d1 04 48 58 fe    	vaddps zmm7,zmm15,zmm14
  a711ec:	62 51 5c 48 5c e1    	vsubps zmm12,zmm4,zmm9
  a711f2:	62 51 14 40 5c d8    	vsubps zmm11,zmm29,zmm8
  a711f8:	62 72 7d 48 18 05 62 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff604462]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a711ff:	44 60 ff 
  a71202:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a71208:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a7120e:	62 f2 7d 48 18 35 e8 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6044e8]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a71215:	44 60 ff 
  a71218:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a7121e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a71225:	0b 
  a71226:	62 61 34 48 59 de    	vmulps zmm27,zmm9,zmm6
  a7122c:	62 62 3d 48 bc df    	vfnmadd231ps zmm27,zmm8,zmm7
  a71232:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a71238:	62 91 74 40 5c ea    	vsubps zmm5,zmm17,zmm26
  a7123e:	62 f1 14 48 5c e2    	vsubps zmm4,zmm13,zmm2
  a71244:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a7124a:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a71250:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x300]
  a71257:	0c 
  a71258:	62 91 14 48 5c d8    	vsubps zmm3,zmm13,zmm24
  a7125e:	62 b1 2c 48 5c cb    	vsubps zmm1,zmm10,zmm19
  a71264:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a7126a:	62 61 44 48 59 ce    	vmulps zmm25,zmm7,zmm6
  a71270:	62 42 7d 48 b8 c8    	vfmadd231ps zmm25,zmm0,zmm8
  a71276:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm25
  a7127d:	0a 
  a7127e:	62 41 44 48 59 c8    	vmulps zmm25,zmm7,zmm8
  a71284:	62 62 4d 48 bc c8    	vfnmadd231ps zmm25,zmm6,zmm0
  a7128a:	62 d1 04 48 5c c6    	vsubps zmm0,zmm15,zmm14
  a71290:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a71296:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a7129c:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a712a2:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a712a8:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a712ae:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a712b5:	09 
  a712b6:	62 d1 24 48 59 e0    	vmulps zmm4,zmm11,zmm8
  a712bc:	62 f2 4d 48 bc e0    	vfnmadd231ps zmm4,zmm6,zmm0
  a712c2:	62 d1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm8
  a712c8:	62 f2 55 48 b8 fe    	vfmadd231ps zmm7,zmm5,zmm6
  a712ce:	62 d1 54 48 59 d8    	vmulps zmm3,zmm5,zmm8
  a712d4:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a712da:	62 f1 5c 40 58 6c 24 	vaddps zmm5,zmm20,ZMMWORD PTR [rsp+0x140]
  a712e1:	05 
  a712e2:	62 f1 14 40 58 74 24 	vaddps zmm6,zmm29,ZMMWORD PTR [rsp+0x100]
  a712e9:	04 
  a712ea:	62 11 34 48 58 c2    	vaddps zmm8,zmm9,zmm26
  a712f0:	62 51 64 40 58 d2    	vaddps zmm10,zmm19,zmm10
  a712f6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a712fd:	06 
  a712fe:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a71305:	07 
  a71306:	62 71 7c 40 58 64 24 	vaddps zmm12,zmm16,ZMMWORD PTR [rsp+0x200]
  a7130d:	08 
  a7130e:	62 11 14 48 58 e8    	vaddps zmm13,zmm13,zmm24
  a71314:	62 f1 74 40 58 d2    	vaddps zmm2,zmm17,zmm2
  a7131a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a71321:	02 
  a71322:	62 31 7c 48 58 f2    	vaddps zmm14,zmm0,zmm18
  a71328:	62 31 7c 48 5c fa    	vsubps zmm15,zmm0,zmm18
  a7132e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a71335:	fe 
  a71336:	62 81 7c 48 58 c6    	vaddps zmm16,zmm0,zmm30
  a7133c:	62 81 7c 48 5c ce    	vsubps zmm17,zmm0,zmm30
  a71342:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a71349:	62 a1 7c 48 58 d6    	vaddps zmm18,zmm0,zmm22
  a7134f:	62 a1 7c 48 5c de    	vsubps zmm19,zmm0,zmm22
  a71355:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a7135c:	01 
  a7135d:	62 a1 7c 48 58 e5    	vaddps zmm20,zmm0,zmm21
  a71363:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a71369:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a71370:	0e 
  a71371:	62 81 7c 48 58 f7    	vaddps zmm22,zmm0,zmm31
  a71377:	62 01 7c 48 5c c7    	vsubps zmm24,zmm0,zmm31
  a7137d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a71384:	0f 
  a71385:	62 01 7c 48 58 d4    	vaddps zmm26,zmm0,zmm28
  a7138b:	62 01 7c 48 5c e4    	vsubps zmm28,zmm0,zmm28
  a71391:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a71398:	03 
  a71399:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a713a0:	0d 
  a713a1:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a713a7:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a713ad:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a713b4:	ff 
  a713b5:	62 21 7c 48 58 ff    	vaddps zmm31,zmm0,zmm23
  a713bb:	62 e1 44 40 5c f8    	vsubps zmm23,zmm23,zmm0
  a713c1:	62 b1 64 40 58 c5    	vaddps zmm0,zmm19,zmm21
  a713c7:	62 a1 54 40 5c db    	vsubps zmm19,zmm21,zmm19
  a713cd:	62 81 3c 40 5c ec    	vsubps zmm21,zmm24,zmm28
  a713d3:	62 01 1c 40 58 c0    	vaddps zmm24,zmm28,zmm24
  a713d9:	62 01 0c 48 58 e7    	vaddps zmm28,zmm14,zmm31
  a713df:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a713e5:	62 21 5c 40 58 fe    	vaddps zmm31,zmm20,zmm22
  a713eb:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a713f1:	62 e1 54 48 58 f6    	vaddps zmm22,zmm5,zmm6
  a713f7:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a713fd:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a71403:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a71409:	62 71 14 48 58 e2    	vaddps zmm12,zmm13,zmm2
  a7140f:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a71415:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a7141b:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a71421:	62 31 14 40 58 d0    	vaddps zmm10,zmm29,zmm16
  a71427:	62 a1 14 40 5c c0    	vsubps zmm16,zmm29,zmm16
  a7142d:	62 01 6c 40 58 ea    	vaddps zmm29,zmm18,zmm26
  a71433:	62 a1 2c 40 5c d2    	vsubps zmm18,zmm26,zmm18
  a71439:	62 41 54 48 58 d3    	vaddps zmm26,zmm5,zmm11
  a7143f:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a71445:	62 51 6c 48 5c d8    	vsubps zmm11,zmm2,zmm8
  a7144b:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a71451:	62 72 7d 48 18 05 41 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff603f41]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a71458:	3f 60 ff 
  a7145b:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a71461:	62 c1 54 40 59 e8    	vmulps zmm21,zmm21,zmm8
  a71467:	62 c1 64 40 59 d8    	vmulps zmm19,zmm19,zmm8
  a7146d:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a71473:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a71479:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a7147f:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a71485:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a7148b:	62 31 04 48 58 c1    	vaddps zmm8,zmm15,zmm17
  a71491:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a71497:	62 81 64 40 5c c8    	vsubps zmm17,zmm19,zmm24
  a7149d:	62 81 64 40 58 d8    	vaddps zmm19,zmm19,zmm24
  a714a3:	62 01 44 40 58 c6    	vaddps zmm24,zmm23,zmm30
  a714a9:	62 a1 0c 40 5c ff    	vsubps zmm23,zmm30,zmm23
  a714af:	62 21 7c 48 58 f5    	vaddps zmm30,zmm0,zmm21
  a714b5:	62 f1 54 40 5c c0    	vsubps zmm0,zmm21,zmm0
  a714bb:	62 81 1c 40 58 ed    	vaddps zmm21,zmm28,zmm29
  a714c1:	62 91 1c 40 5c cd    	vsubps zmm1,zmm28,zmm29
  a714c7:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a714ce:	62 41 4c 48 58 ec    	vaddps zmm29,zmm6,zmm12
  a714d4:	62 d1 4c 48 5c cc    	vsubps zmm1,zmm6,zmm12
  a714da:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a714e1:	ff 
  a714e2:	62 91 2c 48 58 f7    	vaddps zmm6,zmm10,zmm31
  a714e8:	62 01 2c 48 5c e7    	vsubps zmm28,zmm10,zmm31
  a714ee:	62 41 4c 40 58 fd    	vaddps zmm31,zmm22,zmm13
  a714f4:	62 a1 14 48 5c f6    	vsubps zmm22,zmm13,zmm22
  a714fa:	62 11 3c 48 58 ee    	vaddps zmm13,zmm8,zmm30
  a71500:	62 11 3c 48 5c e6    	vsubps zmm12,zmm8,zmm30
  a71506:	62 01 24 40 58 f1    	vaddps zmm30,zmm27,zmm25
  a7150c:	62 01 24 40 5c d9    	vsubps zmm27,zmm27,zmm25
  a71512:	62 31 3c 40 58 c9    	vaddps zmm9,zmm24,zmm17
  a71518:	62 21 3c 40 5c c1    	vsubps zmm24,zmm24,zmm17
  a7151e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a71525:	0b 
  a71526:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x280]
  a7152d:	0a 
  a7152e:	62 c1 74 48 58 c8    	vaddps zmm17,zmm1,zmm8
  a71534:	62 61 3c 48 5c c9    	vsubps zmm25,zmm8,zmm1
  a7153a:	62 b1 0c 48 58 cc    	vaddps zmm1,zmm14,zmm20
  a71540:	62 a1 0c 48 5c e4    	vsubps zmm20,zmm14,zmm20
  a71546:	62 71 54 48 5c f2    	vsubps zmm14,zmm5,zmm2
  a7154c:	62 71 54 48 58 d2    	vaddps zmm10,zmm5,zmm2
  a71552:	62 b1 6c 40 58 e8    	vaddps zmm5,zmm18,zmm16
  a71558:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a7155e:	62 c1 2c 40 58 d3    	vaddps zmm18,zmm26,zmm11
  a71564:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a7156a:	62 21 04 48 58 d3    	vaddps zmm26,zmm15,zmm19
  a71570:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a71576:	62 e1 5c 48 58 db    	vaddps zmm19,zmm4,zmm3
  a7157c:	62 71 5c 48 5c c3    	vsubps zmm8,zmm4,zmm3
  a71582:	62 f1 44 40 58 e0    	vaddps zmm4,zmm23,zmm0
  a71588:	62 f1 44 40 5c d8    	vsubps zmm3,zmm23,zmm0
  a7158e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a71595:	09 
  a71596:	62 f1 6c 48 5c c7    	vsubps zmm0,zmm2,zmm7
  a7159c:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a715a2:	62 91 54 40 58 ff    	vaddps zmm7,zmm21,zmm31
  a715a8:	62 81 54 40 5c ef    	vsubps zmm21,zmm21,zmm31
  a715ae:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm21
  a715b5:	fe 
  a715b6:	62 01 4c 48 58 fd    	vaddps zmm31,zmm6,zmm29
  a715bc:	62 91 4c 48 5c f5    	vsubps zmm6,zmm6,zmm29
  a715c2:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm6
  a715c9:	03 
  a715ca:	62 b1 14 48 58 f1    	vaddps zmm6,zmm13,zmm17
  a715d0:	62 a1 14 48 5c f9    	vsubps zmm23,zmm13,zmm17
  a715d6:	62 01 34 48 58 ee    	vaddps zmm29,zmm9,zmm30
  a715dc:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a715e2:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm9
  a715e9:	02 
  a715ea:	62 a1 74 48 58 ca    	vaddps zmm17,zmm1,zmm18
  a715f0:	62 31 74 48 5c ea    	vsubps zmm13,zmm1,zmm18
  a715f6:	62 41 54 48 58 f6    	vaddps zmm30,zmm5,zmm14
  a715fc:	62 d1 54 48 5c ce    	vsubps zmm1,zmm5,zmm14
  a71602:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a71609:	01 
  a7160a:	62 e1 2c 40 58 d0    	vaddps zmm18,zmm26,zmm0
  a71610:	62 f1 2c 40 5c c8    	vsubps zmm1,zmm26,zmm0
  a71616:	62 21 5c 48 58 d3    	vaddps zmm26,zmm4,zmm19
  a7161c:	62 31 5c 48 5c f3    	vsubps zmm14,zmm4,zmm19
  a71622:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a71629:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a71630:	ff 
  a71631:	62 e1 7c 48 58 dc    	vaddps zmm19,zmm0,zmm4
  a71637:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a7163d:	62 11 4c 40 58 cc    	vaddps zmm9,zmm22,zmm28
  a71643:	62 a1 1c 40 5c f6    	vsubps zmm22,zmm28,zmm22
  a71649:	62 01 1c 48 58 e3    	vaddps zmm28,zmm12,zmm27
  a7164f:	62 11 1c 48 5c e3    	vsubps zmm12,zmm12,zmm27
  a71655:	62 91 3c 40 58 e1    	vaddps zmm4,zmm24,zmm25
  a7165b:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a71661:	62 41 5c 40 58 ca    	vaddps zmm25,zmm20,zmm10
  a71667:	62 41 5c 40 5c da    	vsubps zmm27,zmm20,zmm10
  a7166d:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a71673:	62 51 7c 40 5c d3    	vsubps zmm10,zmm16,zmm11
  a71679:	62 51 04 48 58 d8    	vaddps zmm11,zmm15,zmm8
  a7167f:	62 51 04 48 5c f8    	vsubps zmm15,zmm15,zmm8
  a71685:	62 71 64 48 5c c2    	vsubps zmm8,zmm3,zmm2
  a7168b:	62 e1 64 48 58 e2    	vaddps zmm20,zmm3,zmm2
  a71691:	62 e1 7c 48 28 2d e5 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6558e5]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a71698:	58 65 ff 
  a7169b:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp-0x80]
  a716a2:	fe 
  a716a3:	62 b2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm23
  a716a9:	62 c2 55 40 7f cd    	vpermt2ps zmm17,zmm21,zmm13
  a716af:	62 e2 55 40 7f d1    	vpermt2ps zmm18,zmm21,zmm1
  a716b5:	62 e2 55 40 7f d8    	vpermt2ps zmm19,zmm21,zmm0
  a716bb:	62 42 55 40 7f e4    	vpermt2ps zmm28,zmm21,zmm12
  a716c1:	62 02 55 40 7f cb    	vpermt2ps zmm25,zmm21,zmm27
  a716c7:	62 52 55 40 7f df    	vpermt2ps zmm11,zmm21,zmm15
  a716cd:	62 71 7c 48 28 25 29 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff655829]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a716d4:	58 65 ff 
  a716d7:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a716dd:	62 b2 1d 48 7f c3    	vpermt2ps zmm0,zmm12,zmm19
  a716e3:	62 e1 7c 48 28 05 53 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff655853]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a716ea:	58 65 ff 
  a716ed:	62 b2 7d 40 7f fb    	vpermt2ps zmm7,zmm16,zmm19
  a716f3:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a716f9:	62 12 1d 48 7f ec    	vpermt2ps zmm13,zmm12,zmm28
  a716ff:	62 92 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm28
  a71705:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a7170b:	62 92 1d 48 7f c9    	vpermt2ps zmm1,zmm12,zmm25
  a71711:	62 82 7d 40 7f c9    	vpermt2ps zmm17,zmm16,zmm25
  a71717:	62 b1 c5 48 14 d9    	vunpcklpd zmm3,zmm7,zmm17
  a7171d:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a71723:	62 d2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm11
  a71729:	62 c2 7d 40 7f d3    	vpermt2ps zmm18,zmm16,zmm11
  a7172f:	62 b1 cd 48 14 f2    	vunpcklpd zmm6,zmm6,zmm18
  a71735:	62 f1 fd 48 14 d1    	vunpcklpd zmm2,zmm0,zmm1
  a7173b:	62 f1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm1
  a71741:	62 71 95 48 14 df    	vunpcklpd zmm11,zmm13,zmm7
  a71747:	62 f1 95 48 15 ff    	vunpckhpd zmm7,zmm13,zmm7
  a7174d:	62 62 55 40 7f 7c 24 	vpermt2ps zmm31,zmm21,ZMMWORD PTR [rsp+0xc0]
  a71754:	03 
  a71755:	62 62 55 40 7f 6c 24 	vpermt2ps zmm29,zmm21,ZMMWORD PTR [rsp+0x80]
  a7175c:	02 
  a7175d:	62 62 55 40 7f 74 24 	vpermt2ps zmm30,zmm21,ZMMWORD PTR [rsp+0x40]
  a71764:	01 
  a71765:	62 42 55 40 7f d6    	vpermt2ps zmm26,zmm21,zmm14
  a7176b:	62 32 55 40 7f ce    	vpermt2ps zmm9,zmm21,zmm22
  a71771:	62 92 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm24
  a71777:	62 d2 55 40 7f ea    	vpermt2ps zmm5,zmm21,zmm10
  a7177d:	62 71 7c 48 28 2d 79 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff655679]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a71784:	56 65 ff 
  a71787:	62 32 55 40 7f c4    	vpermt2ps zmm8,zmm21,zmm20
  a7178d:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a71793:	62 d2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm11
  a71799:	62 71 7c 48 28 15 9d 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff65569d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a717a0:	56 65 ff 
  a717a3:	62 d2 2d 48 7f d3    	vpermt2ps zmm2,zmm10,zmm11
  a717a9:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a717af:	62 72 15 48 7f df    	vpermt2ps zmm11,zmm13,zmm7
  a717b5:	62 f2 2d 48 7f cf    	vpermt2ps zmm1,zmm10,zmm7
  a717bb:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a717c1:	62 72 15 48 7f f6    	vpermt2ps zmm14,zmm13,zmm6
  a717c7:	62 f2 2d 48 7f de    	vpermt2ps zmm3,zmm10,zmm6
  a717cd:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a717d3:	62 d2 1d 48 7f f1    	vpermt2ps zmm6,zmm12,zmm9
  a717d9:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a717df:	62 11 7c 48 28 fd    	vmovaps zmm15,zmm29
  a717e5:	62 72 1d 48 7f fc    	vpermt2ps zmm15,zmm12,zmm4
  a717eb:	62 62 7d 40 7f ec    	vpermt2ps zmm29,zmm16,zmm4
  a717f1:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a717f7:	62 f2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm5
  a717fd:	62 62 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm5
  a71803:	62 11 85 40 14 ce    	vunpcklpd zmm9,zmm31,zmm30
  a71809:	62 52 2d 40 77 e0    	vpermi2ps zmm12,zmm26,zmm8
  a7180f:	62 42 7d 40 7f d0    	vpermt2ps zmm26,zmm16,zmm8
  a71815:	62 11 95 40 14 c2    	vunpcklpd zmm8,zmm29,zmm26
  a7181b:	62 f1 cd 48 14 fc    	vunpcklpd zmm7,zmm6,zmm4
  a71821:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a71827:	62 d1 85 48 14 f4    	vunpcklpd zmm6,zmm15,zmm12
  a7182d:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a71833:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a71839:	62 f2 15 48 7f e6    	vpermt2ps zmm4,zmm13,zmm6
  a7183f:	62 f2 2d 48 7f fe    	vpermt2ps zmm7,zmm10,zmm6
  a71845:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a7184b:	62 52 15 48 7f fc    	vpermt2ps zmm15,zmm13,zmm12
  a71851:	62 d2 2d 48 7f ec    	vpermt2ps zmm5,zmm10,zmm12
  a71857:	62 52 35 48 77 e8    	vpermi2ps zmm13,zmm9,zmm8
  a7185d:	62 52 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm8
  a71863:	62 71 7c 48 10 52 02 	vmovups zmm10,ZMMWORD PTR [rdx+0x80]
  a7186a:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a71871:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a71878:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a7187f:	62 d1 24 48 59 f0    	vmulps zmm6,zmm11,zmm8
  a71885:	62 b2 05 48 bc f0    	vfnmadd231ps zmm6,zmm15,zmm16
  a7188b:	62 51 04 48 59 c0    	vmulps zmm8,zmm15,zmm8
  a71891:	62 71 7c 48 10 7a 09 	vmovups zmm15,ZMMWORD PTR [rdx+0x240]
  a71898:	62 52 7d 40 b8 c3    	vfmadd231ps zmm8,zmm16,zmm11
  a7189e:	62 71 7c 48 10 5a 08 	vmovups zmm11,ZMMWORD PTR [rdx+0x200]
  a718a5:	62 c1 0c 48 59 c3    	vmulps zmm16,zmm14,zmm11
  a718ab:	62 c2 15 48 bc c7    	vfnmadd231ps zmm16,zmm13,zmm15
  a718b1:	62 51 14 48 59 db    	vmulps zmm11,zmm13,zmm11
  a718b7:	62 52 05 48 b8 de    	vfmadd231ps zmm11,zmm15,zmm14
  a718bd:	62 71 7c 48 10 6a 0b 	vmovups zmm13,ZMMWORD PTR [rdx+0x2c0]
  a718c4:	62 71 7c 48 10 72 0a 	vmovups zmm14,ZMMWORD PTR [rdx+0x280]
  a718cb:	62 51 34 48 59 fe    	vmulps zmm15,zmm9,zmm14
  a718d1:	62 52 65 48 b8 fd    	vfmadd231ps zmm15,zmm3,zmm13
  a718d7:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a718dd:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a718e3:	62 d2 15 48 bc d9    	vfnmadd231ps zmm3,zmm13,zmm9
  a718e9:	62 72 7d 48 18 0d e1 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6039e1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a718f0:	39 60 ff 
  a718f3:	62 51 0c 48 59 e9    	vmulps zmm13,zmm14,zmm9
  a718f9:	62 51 44 48 59 f2    	vmulps zmm14,zmm7,zmm10
  a718ff:	62 52 6d 48 b8 f4    	vfmadd231ps zmm14,zmm2,zmm12
  a71905:	62 d1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm10
  a7190b:	62 71 7c 48 10 52 07 	vmovups zmm10,ZMMWORD PTR [rdx+0x1c0]
  a71912:	62 f2 1d 48 bc d7    	vfnmadd231ps zmm2,zmm12,zmm7
  a71918:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a7191f:	62 71 54 48 59 e7    	vmulps zmm12,zmm5,zmm7
  a71925:	62 52 75 48 b8 e2    	vfmadd231ps zmm12,zmm1,zmm10
  a7192b:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a71931:	62 f2 7d 48 18 3d 25 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff603b25]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a71938:	3b 60 ff 
  a7193b:	62 f2 2d 48 bc cd    	vfnmadd231ps zmm1,zmm10,zmm5
  a71941:	62 d1 3c 48 58 eb    	vaddps zmm5,zmm8,zmm11
  a71947:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a7194d:	62 72 55 48 ac d4    	vfnmadd213ps zmm10,zmm5,zmm4
  a71953:	62 b1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm16
  a71959:	62 c1 14 48 58 c2    	vaddps zmm16,zmm13,zmm10
  a7195f:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a71965:	62 71 64 48 5c da    	vsubps zmm11,zmm3,zmm2
  a7196b:	62 f1 64 48 58 d2    	vaddps zmm2,zmm3,zmm2
  a71971:	62 d1 04 48 58 de    	vaddps zmm3,zmm15,zmm14
  a71977:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a7197d:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a71983:	62 52 65 48 ac fc    	vfnmadd213ps zmm15,zmm3,zmm12
  a71989:	62 51 24 48 59 d9    	vmulps zmm11,zmm11,zmm9
  a7198f:	62 51 3c 48 59 c1    	vmulps zmm8,zmm8,zmm9
  a71995:	62 51 0c 48 59 c9    	vmulps zmm9,zmm14,zmm9
  a7199b:	62 51 04 48 58 f3    	vaddps zmm14,zmm15,zmm11
  a719a1:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a719a7:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a719ad:	62 72 4d 48 ac e8    	vfnmadd213ps zmm13,zmm6,zmm0
  a719b3:	62 51 04 48 5c db    	vsubps zmm11,zmm15,zmm11
  a719b9:	62 51 14 48 5c f8    	vsubps zmm15,zmm13,zmm8
  a719bf:	62 f2 6d 48 ac f9    	vfnmadd213ps zmm7,zmm2,zmm1
  a719c5:	62 51 14 48 58 c0    	vaddps zmm8,zmm13,zmm8
  a719cb:	62 51 44 48 5c e9    	vsubps zmm13,zmm7,zmm9
  a719d1:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a719d7:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a719dd:	62 f1 1c 48 58 db    	vaddps zmm3,zmm12,zmm3
  a719e3:	62 d1 7c 40 5c ee    	vsubps zmm5,zmm16,zmm14
  a719e9:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a719ef:	62 d1 04 48 5c f5    	vsubps zmm6,zmm15,zmm13
  a719f5:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a719fb:	62 d1 2c 48 58 d3    	vaddps zmm2,zmm10,zmm11
  a71a01:	62 51 7c 40 58 ce    	vaddps zmm9,zmm16,zmm14
  a71a07:	62 71 3c 48 58 e7    	vaddps zmm12,zmm8,zmm7
  a71a0d:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a71a13:	62 71 5c 48 5c f3    	vsubps zmm14,zmm4,zmm3
  a71a19:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a71a1f:	62 71 7c 48 5c d9    	vsubps zmm11,zmm0,zmm1
  a71a25:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a71a2b:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a71a31:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a71a37:	62 f1 7c 48 28 0d 7f 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff62307f]        # 94ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21f70>
  a71a3e:	30 62 ff 
  a71a41:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a71a47:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a71a4d:	62 71 7c 48 28 05 a9 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6230a9]        # 94b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21fb0>
  a71a54:	30 62 ff 
  a71a57:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a71a5d:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a71a63:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a71a69:	62 72 3d 48 7f d7    	vpermt2ps zmm10,zmm8,zmm7
  a71a6f:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a71a75:	62 d2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm13
  a71a7b:	62 52 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm13
  a71a81:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a71a87:	62 52 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm11
  a71a8d:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  a71a93:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a71a99:	62 52 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm12
  a71a9f:	62 d2 3d 48 7f d4    	vpermt2ps zmm2,zmm8,zmm12
  a71aa5:	62 f2 55 48 77 ce    	vpermi2ps zmm1,zmm5,zmm6
  a71aab:	62 f2 3d 48 7f ee    	vpermt2ps zmm5,zmm8,zmm6
  a71ab1:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a71ab7:	62 f1 7c 48 11 66 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm4
  a71abe:	62 71 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm10
  a71ac5:	62 f1 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm0
  a71acc:	62 71 7c 48 11 4e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm9
  a71ad3:	62 f1 7c 48 11 7e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm7
  a71ada:	62 71 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm14
  a71ae1:	62 71 7c 48 11 6e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm13
  a71ae8:	62 f1 7c 48 11 56 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm2
  a71aef:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a71af6:	62 f1 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm5
  a71afd:	62 f1 7c 48 11 4e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm1
  a71b04:	48 81 c4 08 04 00 00 	add    rsp,0x408
  a71b0b:	c5 f8 77             	vzeroupper
  a71b0e:	c3                   	ret
