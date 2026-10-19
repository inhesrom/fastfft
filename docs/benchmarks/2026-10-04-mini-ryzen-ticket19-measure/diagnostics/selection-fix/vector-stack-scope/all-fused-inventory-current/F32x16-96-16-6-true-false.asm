
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a72a00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a72a00:	55                   	push   rbp
  a72a01:	48 89 e5             	mov    rbp,rsp
  a72a04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a72a08:	48 81 ec 40 05 00 00 	sub    rsp,0x540
  a72a0f:	c6 84 24 c0 04 00 00 	mov    BYTE PTR [rsp+0x4c0],0x0
  a72a16:	00 
  a72a17:	48 8d 84 24 c0 04 00 	lea    rax,[rsp+0x4c0]
  a72a1e:	00 
  a72a1f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a72a24:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a72a29:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a72a2e:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a72a35:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a72a3b:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a72a3f:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72a45:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a72a4c:	62 f3 6d 48 18 c8 02 	vinsertf32x4 zmm1,zmm2,xmm0,0x2
  a72a53:	62 01 34 00 57 c9    	vxorps xmm25,xmm25,xmm25
  a72a59:	62 f1 7c 48 28 15 dd 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff621fdd]        # 94a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21ef0>
  a72a60:	1f 62 ff 
  a72a63:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a72a69:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72a6f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a72a76:	06 
  a72a77:	62 61 7c 48 28 1d ff 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff621fff]        # 94a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21f30>
  a72a7e:	1f 62 ff 
  a72a81:	62 92 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm25
  a72a87:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a72a8e:	05 
  a72a8f:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  a72a94:	c4 e3 79 21 47 54 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x54],0x10
  a72a9b:	c4 e2 79 18 4f 58    	vbroadcastss xmm1,DWORD PTR [rdi+0x58]
  a72aa1:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  a72aa6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72aac:	c4 e3 79 21 47 5c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5c],0x30
  a72ab3:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a72aba:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a72ac0:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72ac6:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a72acc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a72ad3:	09 
  a72ad4:	c5 f8 10 87 80 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0x80]
  a72adb:	00 
  a72adc:	c4 e3 79 21 87 84 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x84],0x10
  a72ae3:	00 00 10 
  a72ae6:	c4 e2 79 18 8f 88 00 	vbroadcastss xmm1,DWORD PTR [rdi+0x88]
  a72aed:	00 00 
  a72aef:	62 92 25 40 7f d9    	vpermt2ps zmm3,zmm27,zmm25
  a72af5:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a72afb:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a72b02:	08 
  a72b03:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72b09:	c4 e3 79 21 87 8c 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x8c],0x30
  a72b10:	00 00 30 
  a72b13:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  a72b18:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a72b1f:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a72b25:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72b2b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a72b32:	04 
  a72b33:	62 92 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm25
  a72b39:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a72b40:	03 
  a72b41:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  a72b48:	00 
  a72b49:	c4 e3 79 21 87 b4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xb4],0x10
  a72b50:	00 00 10 
  a72b53:	c5 fc 10 8f 90 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0x90]
  a72b5a:	00 
  a72b5b:	c4 e2 79 18 9f b8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xb8]
  a72b62:	00 00 
  a72b64:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72b6a:	c4 e3 79 21 87 bc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xbc],0x30
  a72b71:	00 00 30 
  a72b74:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a72b7b:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a72b81:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72b87:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a72b8e:	0f 
  a72b8f:	62 92 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm25
  a72b95:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a72b9b:	c5 f8 10 87 e0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xe0]
  a72ba2:	00 
  a72ba3:	c5 fc 10 8f c0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xc0]
  a72baa:	00 
  a72bab:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x10
  a72bb2:	00 00 10 
  a72bb5:	c4 e2 79 18 9f e8 00 	vbroadcastss xmm3,DWORD PTR [rdi+0xe8]
  a72bbc:	00 00 
  a72bbe:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72bc4:	c4 e3 79 21 87 ec 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xec],0x30
  a72bcb:	00 00 30 
  a72bce:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a72bd5:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a72bdb:	62 92 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm25
  a72be1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a72be8:	01 
  a72be9:	62 92 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm25
  a72bef:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a72bf6:	02 
  a72bf7:	c5 f8 10 87 10 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x110]
  a72bfe:	00 
  a72bff:	c4 e3 79 21 87 14 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x114],0x10
  a72c06:	00 00 10 
  a72c09:	c4 e2 79 18 8f 18 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x118]
  a72c10:	00 00 
  a72c12:	c5 fc 10 9f f0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xf0]
  a72c19:	00 
  a72c1a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72c20:	c4 e3 79 21 87 1c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x11c],0x30
  a72c27:	00 00 30 
  a72c2a:	62 f3 65 48 18 d8 02 	vinsertf32x4 zmm3,zmm3,xmm0,0x2
  a72c31:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a72c37:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72c3d:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a72c43:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a72c4a:	0b 
  a72c4b:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a72c52:	00 
  a72c53:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a72c5a:	00 00 10 
  a72c5d:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a72c64:	00 00 
  a72c66:	62 92 25 40 7f d9    	vpermt2ps zmm3,zmm27,zmm25
  a72c6c:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a72c72:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a72c79:	07 
  a72c7a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72c80:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a72c87:	00 00 30 
  a72c8a:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a72c91:	00 
  a72c92:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a72c99:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a72c9f:	62 92 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm25
  a72ca5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a72cac:	11 
  a72cad:	62 92 25 40 7f c1    	vpermt2ps zmm0,zmm27,zmm25
  a72cb3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a72cba:	12 
  a72cbb:	c5 f8 10 87 70 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x170]
  a72cc2:	00 
  a72cc3:	c4 e3 79 21 87 74 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x174],0x10
  a72cca:	00 00 10 
  a72ccd:	c5 fc 10 8f 50 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x150]
  a72cd4:	00 
  a72cd5:	c4 e2 79 18 9f 78 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x178]
  a72cdc:	00 00 
  a72cde:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72ce4:	c4 e3 79 21 87 7c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x17c],0x30
  a72ceb:	00 00 30 
  a72cee:	62 e3 75 48 18 d8 02 	vinsertf32x4 zmm19,zmm1,xmm0,0x2
  a72cf5:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a72cfb:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72d01:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a72d07:	62 82 25 40 7f d9    	vpermt2ps zmm19,zmm27,zmm25
  a72d0d:	c5 f8 10 87 a0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1a0]
  a72d14:	00 
  a72d15:	c5 fc 10 8f 80 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x180]
  a72d1c:	00 
  a72d1d:	c4 e3 79 21 87 a4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1a4],0x10
  a72d24:	00 00 10 
  a72d27:	c4 e2 79 18 9f a8 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1a8]
  a72d2e:	00 00 
  a72d30:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72d36:	c4 e3 79 21 87 ac 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1ac],0x30
  a72d3d:	00 00 30 
  a72d40:	62 e3 75 48 18 d0 02 	vinsertf32x4 zmm18,zmm1,xmm0,0x2
  a72d47:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a72d4d:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72d53:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a72d5a:	10 
  a72d5b:	62 82 25 40 7f d1    	vpermt2ps zmm18,zmm27,zmm25
  a72d61:	c5 f8 10 87 d0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1d0]
  a72d68:	00 
  a72d69:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x10
  a72d70:	00 00 10 
  a72d73:	c4 e2 79 18 8f d8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1d8]
  a72d7a:	00 00 
  a72d7c:	c5 fc 10 9f b0 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x1b0]
  a72d83:	00 
  a72d84:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72d8a:	c4 e3 79 21 87 dc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1dc],0x30
  a72d91:	00 00 30 
  a72d94:	62 e3 65 48 18 e0 02 	vinsertf32x4 zmm20,zmm3,xmm0,0x2
  a72d9b:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a72da1:	62 92 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm25
  a72da7:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a72dad:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a72db4:	0a 
  a72db5:	c5 f8 10 87 00 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x200]
  a72dbc:	00 
  a72dbd:	c4 e3 79 21 87 04 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x204],0x10
  a72dc4:	00 00 10 
  a72dc7:	c4 e2 79 18 8f 08 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x208]
  a72dce:	00 00 
  a72dd0:	62 82 25 40 7f e1    	vpermt2ps zmm20,zmm27,zmm25
  a72dd6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72ddc:	c4 e3 79 21 87 0c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x20c],0x30
  a72de3:	00 00 30 
  a72de6:	c5 fc 10 8f e0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1e0]
  a72ded:	00 
  a72dee:	62 e3 75 48 18 f0 02 	vinsertf32x4 zmm22,zmm1,xmm0,0x2
  a72df5:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  a72dfb:	62 82 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm25
  a72e01:	62 82 25 40 7f f1    	vpermt2ps zmm22,zmm27,zmm25
  a72e07:	c5 f8 10 87 30 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x230]
  a72e0e:	00 
  a72e0f:	c4 e3 79 21 87 34 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x234],0x10
  a72e16:	00 00 10 
  a72e19:	c5 fc 10 8f 10 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x210]
  a72e20:	00 
  a72e21:	c4 e2 79 18 9f 38 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x238]
  a72e28:	00 00 
  a72e2a:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72e30:	c4 e3 79 21 87 3c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x23c],0x30
  a72e37:	00 00 30 
  a72e3a:	62 63 75 48 18 d0 02 	vinsertf32x4 zmm26,zmm1,xmm0,0x2
  a72e41:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a72e47:	62 02 6d 48 7f c1    	vpermt2ps zmm24,zmm2,zmm25
  a72e4d:	c5 f8 10 87 60 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x260]
  a72e54:	00 
  a72e55:	c4 e3 79 21 87 64 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x264],0x10
  a72e5c:	00 00 10 
  a72e5f:	c5 fc 10 8f 40 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x240]
  a72e66:	00 
  a72e67:	c4 e2 79 18 9f 68 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x268]
  a72e6e:	00 00 
  a72e70:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72e76:	c4 e3 79 21 87 6c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x26c],0x30
  a72e7d:	00 00 30 
  a72e80:	62 e3 75 48 18 f8 02 	vinsertf32x4 zmm23,zmm1,xmm0,0x2
  a72e87:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a72e8e:	00 
  a72e8f:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a72e96:	00 00 10 
  a72e99:	c4 e2 79 18 8f 98 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x298]
  a72ea0:	00 00 
  a72ea2:	c5 fc 10 9f 70 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x270]
  a72ea9:	00 
  a72eaa:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72eb0:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a72eb7:	00 00 30 
  a72eba:	62 63 65 48 18 e8 02 	vinsertf32x4 zmm29,zmm3,xmm0,0x2
  a72ec1:	c5 f8 10 87 c0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2c0]
  a72ec8:	00 
  a72ec9:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x10
  a72ed0:	00 00 10 
  a72ed3:	c5 fc 10 8f a0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2a0]
  a72eda:	00 
  a72edb:	c4 e2 79 18 9f c8 02 	vbroadcastss xmm3,DWORD PTR [rdi+0x2c8]
  a72ee2:	00 00 
  a72ee4:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a72eea:	c4 e3 79 21 87 cc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2cc],0x30
  a72ef1:	00 00 30 
  a72ef4:	62 63 75 48 18 e0 02 	vinsertf32x4 zmm28,zmm1,xmm0,0x2
  a72efb:	c5 f8 10 87 f0 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2f0]
  a72f02:	00 
  a72f03:	c4 e3 79 21 87 f4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2f4],0x10
  a72f0a:	00 00 10 
  a72f0d:	c4 e2 79 18 8f f8 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2f8]
  a72f14:	00 00 
  a72f16:	62 02 25 40 7f d1    	vpermt2ps zmm26,zmm27,zmm25
  a72f1c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a72f22:	c4 e3 79 21 87 fc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2fc],0x30
  a72f29:	00 00 30 
  a72f2c:	c5 fc 10 8f d0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2d0]
  a72f33:	00 
  a72f34:	62 73 75 48 18 d0 02 	vinsertf32x4 zmm10,zmm1,xmm0,0x2
  a72f3b:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a72f41:	62 02 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm25
  a72f47:	62 82 25 40 7f f9    	vpermt2ps zmm23,zmm27,zmm25
  a72f4d:	62 81 7c 48 28 c5    	vmovaps zmm16,zmm29
  a72f53:	62 82 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm25
  a72f59:	62 02 25 40 7f e9    	vpermt2ps zmm29,zmm27,zmm25
  a72f5f:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a72f65:	62 02 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm25
  a72f6b:	62 02 25 40 7f e1    	vpermt2ps zmm28,zmm27,zmm25
  a72f71:	62 92 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm25
  a72f77:	62 12 25 40 7f d1    	vpermt2ps zmm10,zmm27,zmm25
  a72f7d:	62 31 54 48 5c fc    	vsubps zmm15,zmm5,zmm20
  a72f83:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a72f89:	62 d1 04 48 58 fe    	vaddps zmm7,zmm15,zmm14
  a72f8f:	62 51 5c 48 5c e1    	vsubps zmm12,zmm4,zmm9
  a72f95:	62 51 14 40 5c d8    	vsubps zmm11,zmm29,zmm8
  a72f9b:	62 72 7d 48 18 05 bf 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6026bf]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a72fa2:	26 60 ff 
  a72fa5:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a72fab:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a72fb1:	62 f2 7d 48 18 35 45 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff602745]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a72fb8:	27 60 ff 
  a72fbb:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a72fc1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a72fc8:	0e 
  a72fc9:	62 61 34 48 59 de    	vmulps zmm27,zmm9,zmm6
  a72fcf:	62 62 3d 48 bc df    	vfnmadd231ps zmm27,zmm8,zmm7
  a72fd5:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a72fdb:	62 91 74 40 5c ea    	vsubps zmm5,zmm17,zmm26
  a72fe1:	62 f1 14 48 5c e2    	vsubps zmm4,zmm13,zmm2
  a72fe7:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a72fed:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a72ff3:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x3c0]
  a72ffa:	0f 
  a72ffb:	62 91 14 48 5c d8    	vsubps zmm3,zmm13,zmm24
  a73001:	62 b1 2c 48 5c cb    	vsubps zmm1,zmm10,zmm19
  a73007:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a7300d:	62 61 44 48 59 ce    	vmulps zmm25,zmm7,zmm6
  a73013:	62 42 7d 48 b8 c8    	vfmadd231ps zmm25,zmm0,zmm8
  a73019:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm25
  a73020:	0d 
  a73021:	62 41 44 48 59 c8    	vmulps zmm25,zmm7,zmm8
  a73027:	62 62 4d 48 bc c8    	vfnmadd231ps zmm25,zmm6,zmm0
  a7302d:	62 d1 04 48 5c c6    	vsubps zmm0,zmm15,zmm14
  a73033:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a73039:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a7303f:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a73045:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a7304b:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a73051:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a73058:	0c 
  a73059:	62 d1 24 48 59 e0    	vmulps zmm4,zmm11,zmm8
  a7305f:	62 f2 4d 48 bc e0    	vfnmadd231ps zmm4,zmm6,zmm0
  a73065:	62 d1 1c 48 59 f8    	vmulps zmm7,zmm12,zmm8
  a7306b:	62 f2 55 48 b8 fe    	vfmadd231ps zmm7,zmm5,zmm6
  a73071:	62 d1 54 48 59 d8    	vmulps zmm3,zmm5,zmm8
  a73077:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a7307d:	62 f1 5c 40 58 6c 24 	vaddps zmm5,zmm20,ZMMWORD PTR [rsp+0x200]
  a73084:	08 
  a73085:	62 f1 14 40 58 74 24 	vaddps zmm6,zmm29,ZMMWORD PTR [rsp+0x1c0]
  a7308c:	07 
  a7308d:	62 11 34 48 58 c2    	vaddps zmm8,zmm9,zmm26
  a73093:	62 51 64 40 58 d2    	vaddps zmm10,zmm19,zmm10
  a73099:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a730a0:	09 
  a730a1:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x280]
  a730a8:	0a 
  a730a9:	62 71 7c 40 58 64 24 	vaddps zmm12,zmm16,ZMMWORD PTR [rsp+0x2c0]
  a730b0:	0b 
  a730b1:	62 11 14 48 58 e8    	vaddps zmm13,zmm13,zmm24
  a730b7:	62 f1 74 40 58 d2    	vaddps zmm2,zmm17,zmm2
  a730bd:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a730c4:	05 
  a730c5:	62 31 7c 48 58 f2    	vaddps zmm14,zmm0,zmm18
  a730cb:	62 31 7c 48 5c fa    	vsubps zmm15,zmm0,zmm18
  a730d1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a730d8:	01 
  a730d9:	62 81 7c 48 58 c6    	vaddps zmm16,zmm0,zmm30
  a730df:	62 81 7c 48 5c ce    	vsubps zmm17,zmm0,zmm30
  a730e5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a730ec:	03 
  a730ed:	62 a1 7c 48 58 d6    	vaddps zmm18,zmm0,zmm22
  a730f3:	62 a1 7c 48 5c de    	vsubps zmm19,zmm0,zmm22
  a730f9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a73100:	04 
  a73101:	62 a1 7c 48 58 e5    	vaddps zmm20,zmm0,zmm21
  a73107:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a7310d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a73114:	11 
  a73115:	62 81 7c 48 58 f7    	vaddps zmm22,zmm0,zmm31
  a7311b:	62 01 7c 48 5c c7    	vsubps zmm24,zmm0,zmm31
  a73121:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a73128:	12 
  a73129:	62 01 7c 48 58 d4    	vaddps zmm26,zmm0,zmm28
  a7312f:	62 01 7c 48 5c e4    	vsubps zmm28,zmm0,zmm28
  a73135:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a7313c:	06 
  a7313d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a73144:	10 
  a73145:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a7314b:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a73151:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a73158:	02 
  a73159:	62 21 7c 48 58 ff    	vaddps zmm31,zmm0,zmm23
  a7315f:	62 e1 44 40 5c f8    	vsubps zmm23,zmm23,zmm0
  a73165:	62 b1 64 40 58 c5    	vaddps zmm0,zmm19,zmm21
  a7316b:	62 a1 54 40 5c db    	vsubps zmm19,zmm21,zmm19
  a73171:	62 81 3c 40 5c ec    	vsubps zmm21,zmm24,zmm28
  a73177:	62 01 1c 40 58 c0    	vaddps zmm24,zmm28,zmm24
  a7317d:	62 01 0c 48 58 e7    	vaddps zmm28,zmm14,zmm31
  a73183:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a73189:	62 21 5c 40 58 fe    	vaddps zmm31,zmm20,zmm22
  a7318f:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a73195:	62 e1 54 48 58 f6    	vaddps zmm22,zmm5,zmm6
  a7319b:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a731a1:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a731a7:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a731ad:	62 71 14 48 58 e2    	vaddps zmm12,zmm13,zmm2
  a731b3:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a731b9:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a731bf:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a731c5:	62 31 14 40 58 d0    	vaddps zmm10,zmm29,zmm16
  a731cb:	62 a1 14 40 5c c0    	vsubps zmm16,zmm29,zmm16
  a731d1:	62 01 6c 40 58 ea    	vaddps zmm29,zmm18,zmm26
  a731d7:	62 a1 2c 40 5c d2    	vsubps zmm18,zmm26,zmm18
  a731dd:	62 41 54 48 58 d3    	vaddps zmm26,zmm5,zmm11
  a731e3:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a731e9:	62 51 6c 48 5c d8    	vsubps zmm11,zmm2,zmm8
  a731ef:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a731f5:	62 72 7d 48 18 05 9d 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff60219d]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a731fc:	21 60 ff 
  a731ff:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a73205:	62 c1 54 40 59 e8    	vmulps zmm21,zmm21,zmm8
  a7320b:	62 c1 64 40 59 d8    	vmulps zmm19,zmm19,zmm8
  a73211:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a73217:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a7321d:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a73223:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a73229:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a7322f:	62 31 04 48 58 c1    	vaddps zmm8,zmm15,zmm17
  a73235:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a7323b:	62 81 64 40 5c c8    	vsubps zmm17,zmm19,zmm24
  a73241:	62 81 64 40 58 d8    	vaddps zmm19,zmm19,zmm24
  a73247:	62 01 44 40 58 c6    	vaddps zmm24,zmm23,zmm30
  a7324d:	62 a1 0c 40 5c ff    	vsubps zmm23,zmm30,zmm23
  a73253:	62 21 7c 48 58 f5    	vaddps zmm30,zmm0,zmm21
  a73259:	62 f1 54 40 5c c0    	vsubps zmm0,zmm21,zmm0
  a7325f:	62 81 1c 40 58 ed    	vaddps zmm21,zmm28,zmm29
  a73265:	62 91 1c 40 5c cd    	vsubps zmm1,zmm28,zmm29
  a7326b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a73272:	03 
  a73273:	62 41 4c 48 58 ec    	vaddps zmm29,zmm6,zmm12
  a73279:	62 d1 4c 48 5c cc    	vsubps zmm1,zmm6,zmm12
  a7327f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a73286:	02 
  a73287:	62 91 2c 48 58 f7    	vaddps zmm6,zmm10,zmm31
  a7328d:	62 01 2c 48 5c e7    	vsubps zmm28,zmm10,zmm31
  a73293:	62 41 4c 40 58 fd    	vaddps zmm31,zmm22,zmm13
  a73299:	62 a1 14 48 5c f6    	vsubps zmm22,zmm13,zmm22
  a7329f:	62 11 3c 48 58 ee    	vaddps zmm13,zmm8,zmm30
  a732a5:	62 11 3c 48 5c e6    	vsubps zmm12,zmm8,zmm30
  a732ab:	62 01 24 40 58 f1    	vaddps zmm30,zmm27,zmm25
  a732b1:	62 01 24 40 5c d9    	vsubps zmm27,zmm27,zmm25
  a732b7:	62 31 3c 40 58 c9    	vaddps zmm9,zmm24,zmm17
  a732bd:	62 21 3c 40 5c c1    	vsubps zmm24,zmm24,zmm17
  a732c3:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a732ca:	0e 
  a732cb:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x340]
  a732d2:	0d 
  a732d3:	62 c1 74 48 58 c8    	vaddps zmm17,zmm1,zmm8
  a732d9:	62 61 3c 48 5c c9    	vsubps zmm25,zmm8,zmm1
  a732df:	62 b1 0c 48 58 cc    	vaddps zmm1,zmm14,zmm20
  a732e5:	62 a1 0c 48 5c e4    	vsubps zmm20,zmm14,zmm20
  a732eb:	62 71 54 48 5c f2    	vsubps zmm14,zmm5,zmm2
  a732f1:	62 71 54 48 58 d2    	vaddps zmm10,zmm5,zmm2
  a732f7:	62 b1 6c 40 58 e8    	vaddps zmm5,zmm18,zmm16
  a732fd:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a73303:	62 c1 2c 40 58 d3    	vaddps zmm18,zmm26,zmm11
  a73309:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a7330f:	62 21 04 48 58 d3    	vaddps zmm26,zmm15,zmm19
  a73315:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a7331b:	62 e1 5c 48 58 db    	vaddps zmm19,zmm4,zmm3
  a73321:	62 71 5c 48 5c c3    	vsubps zmm8,zmm4,zmm3
  a73327:	62 f1 44 40 58 e0    	vaddps zmm4,zmm23,zmm0
  a7332d:	62 f1 44 40 5c d8    	vsubps zmm3,zmm23,zmm0
  a73333:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a7333a:	0c 
  a7333b:	62 f1 6c 48 5c c7    	vsubps zmm0,zmm2,zmm7
  a73341:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a73347:	62 91 54 40 58 ff    	vaddps zmm7,zmm21,zmm31
  a7334d:	62 81 54 40 5c ef    	vsubps zmm21,zmm21,zmm31
  a73353:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm21
  a7335a:	01 
  a7335b:	62 01 4c 48 58 fd    	vaddps zmm31,zmm6,zmm29
  a73361:	62 91 4c 48 5c f5    	vsubps zmm6,zmm6,zmm29
  a73367:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm6
  a7336e:	06 
  a7336f:	62 b1 14 48 58 f1    	vaddps zmm6,zmm13,zmm17
  a73375:	62 a1 14 48 5c f9    	vsubps zmm23,zmm13,zmm17
  a7337b:	62 01 34 48 58 ee    	vaddps zmm29,zmm9,zmm30
  a73381:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a73387:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm9
  a7338e:	05 
  a7338f:	62 a1 74 48 58 ca    	vaddps zmm17,zmm1,zmm18
  a73395:	62 31 74 48 5c ea    	vsubps zmm13,zmm1,zmm18
  a7339b:	62 41 54 48 58 f6    	vaddps zmm30,zmm5,zmm14
  a733a1:	62 d1 54 48 5c ce    	vsubps zmm1,zmm5,zmm14
  a733a7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a733ae:	04 
  a733af:	62 e1 2c 40 58 d0    	vaddps zmm18,zmm26,zmm0
  a733b5:	62 f1 2c 40 5c c8    	vsubps zmm1,zmm26,zmm0
  a733bb:	62 21 5c 48 58 d3    	vaddps zmm26,zmm4,zmm19
  a733c1:	62 31 5c 48 5c f3    	vsubps zmm14,zmm4,zmm19
  a733c7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a733ce:	03 
  a733cf:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a733d6:	02 
  a733d7:	62 e1 7c 48 58 dc    	vaddps zmm19,zmm0,zmm4
  a733dd:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a733e3:	62 11 4c 40 58 cc    	vaddps zmm9,zmm22,zmm28
  a733e9:	62 a1 1c 40 5c f6    	vsubps zmm22,zmm28,zmm22
  a733ef:	62 01 1c 48 58 e3    	vaddps zmm28,zmm12,zmm27
  a733f5:	62 11 1c 48 5c e3    	vsubps zmm12,zmm12,zmm27
  a733fb:	62 91 3c 40 58 e1    	vaddps zmm4,zmm24,zmm25
  a73401:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a73407:	62 41 5c 40 58 ca    	vaddps zmm25,zmm20,zmm10
  a7340d:	62 41 5c 40 5c da    	vsubps zmm27,zmm20,zmm10
  a73413:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a73419:	62 51 7c 40 5c d3    	vsubps zmm10,zmm16,zmm11
  a7341f:	62 51 04 48 58 d8    	vaddps zmm11,zmm15,zmm8
  a73425:	62 51 04 48 5c f8    	vsubps zmm15,zmm15,zmm8
  a7342b:	62 71 64 48 5c c2    	vsubps zmm8,zmm3,zmm2
  a73431:	62 e1 64 48 58 e2    	vaddps zmm20,zmm3,zmm2
  a73437:	62 e1 7c 48 28 2d 3f 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff653b3f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a7343e:	3b 65 ff 
  a73441:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x40]
  a73448:	01 
  a73449:	62 b2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm23
  a7344f:	62 c2 55 40 7f cd    	vpermt2ps zmm17,zmm21,zmm13
  a73455:	62 e2 55 40 7f d1    	vpermt2ps zmm18,zmm21,zmm1
  a7345b:	62 e2 55 40 7f d8    	vpermt2ps zmm19,zmm21,zmm0
  a73461:	62 42 55 40 7f e4    	vpermt2ps zmm28,zmm21,zmm12
  a73467:	62 02 55 40 7f cb    	vpermt2ps zmm25,zmm21,zmm27
  a7346d:	62 52 55 40 7f df    	vpermt2ps zmm11,zmm21,zmm15
  a73473:	62 71 7c 48 28 25 83 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff653a83]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a7347a:	3a 65 ff 
  a7347d:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a73483:	62 b2 1d 48 7f c3    	vpermt2ps zmm0,zmm12,zmm19
  a73489:	62 e1 7c 48 28 05 ad 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff653aad]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a73490:	3a 65 ff 
  a73493:	62 b2 7d 40 7f fb    	vpermt2ps zmm7,zmm16,zmm19
  a73499:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a7349f:	62 12 1d 48 7f ec    	vpermt2ps zmm13,zmm12,zmm28
  a734a5:	62 92 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm28
  a734ab:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a734b1:	62 92 1d 48 7f c9    	vpermt2ps zmm1,zmm12,zmm25
  a734b7:	62 82 7d 40 7f c9    	vpermt2ps zmm17,zmm16,zmm25
  a734bd:	62 b1 c5 48 14 d9    	vunpcklpd zmm3,zmm7,zmm17
  a734c3:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a734c9:	62 d2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm11
  a734cf:	62 c2 7d 40 7f d3    	vpermt2ps zmm18,zmm16,zmm11
  a734d5:	62 b1 cd 48 14 f2    	vunpcklpd zmm6,zmm6,zmm18
  a734db:	62 f1 fd 48 14 d1    	vunpcklpd zmm2,zmm0,zmm1
  a734e1:	62 f1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm1
  a734e7:	62 71 95 48 14 df    	vunpcklpd zmm11,zmm13,zmm7
  a734ed:	62 f1 95 48 15 ff    	vunpckhpd zmm7,zmm13,zmm7
  a734f3:	62 62 55 40 7f 7c 24 	vpermt2ps zmm31,zmm21,ZMMWORD PTR [rsp+0x180]
  a734fa:	06 
  a734fb:	62 62 55 40 7f 6c 24 	vpermt2ps zmm29,zmm21,ZMMWORD PTR [rsp+0x140]
  a73502:	05 
  a73503:	62 62 55 40 7f 74 24 	vpermt2ps zmm30,zmm21,ZMMWORD PTR [rsp+0x100]
  a7350a:	04 
  a7350b:	62 42 55 40 7f d6    	vpermt2ps zmm26,zmm21,zmm14
  a73511:	62 32 55 40 7f ce    	vpermt2ps zmm9,zmm21,zmm22
  a73517:	62 92 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm24
  a7351d:	62 d2 55 40 7f ea    	vpermt2ps zmm5,zmm21,zmm10
  a73523:	62 71 7c 48 28 2d d3 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6538d3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a7352a:	38 65 ff 
  a7352d:	62 32 55 40 7f c4    	vpermt2ps zmm8,zmm21,zmm20
  a73533:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a73539:	62 d2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm11
  a7353f:	62 71 7c 48 28 15 f7 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6538f7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a73546:	38 65 ff 
  a73549:	62 d2 2d 48 7f d3    	vpermt2ps zmm2,zmm10,zmm11
  a7354f:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a73555:	62 72 15 48 7f df    	vpermt2ps zmm11,zmm13,zmm7
  a7355b:	62 f2 2d 48 7f cf    	vpermt2ps zmm1,zmm10,zmm7
  a73561:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a73567:	62 72 15 48 7f f6    	vpermt2ps zmm14,zmm13,zmm6
  a7356d:	62 f2 2d 48 7f de    	vpermt2ps zmm3,zmm10,zmm6
  a73573:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a73579:	62 d2 1d 48 7f f1    	vpermt2ps zmm6,zmm12,zmm9
  a7357f:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a73585:	62 11 7c 48 28 fd    	vmovaps zmm15,zmm29
  a7358b:	62 72 1d 48 7f fc    	vpermt2ps zmm15,zmm12,zmm4
  a73591:	62 62 7d 40 7f ec    	vpermt2ps zmm29,zmm16,zmm4
  a73597:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a7359d:	62 f2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm5
  a735a3:	62 62 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm5
  a735a9:	62 11 85 40 14 ce    	vunpcklpd zmm9,zmm31,zmm30
  a735af:	62 52 2d 40 77 e0    	vpermi2ps zmm12,zmm26,zmm8
  a735b5:	62 42 7d 40 7f d0    	vpermt2ps zmm26,zmm16,zmm8
  a735bb:	62 11 95 40 14 c2    	vunpcklpd zmm8,zmm29,zmm26
  a735c1:	62 f1 cd 48 14 fc    	vunpcklpd zmm7,zmm6,zmm4
  a735c7:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a735cd:	62 d1 85 48 14 f4    	vunpcklpd zmm6,zmm15,zmm12
  a735d3:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a735d9:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a735df:	62 f2 15 48 7f e6    	vpermt2ps zmm4,zmm13,zmm6
  a735e5:	62 f2 2d 48 7f fe    	vpermt2ps zmm7,zmm10,zmm6
  a735eb:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a735f1:	62 52 15 48 7f fc    	vpermt2ps zmm15,zmm13,zmm12
  a735f7:	62 d2 2d 48 7f ec    	vpermt2ps zmm5,zmm10,zmm12
  a735fd:	62 52 35 48 77 e8    	vpermi2ps zmm13,zmm9,zmm8
  a73603:	62 52 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm8
  a73609:	62 71 7c 48 10 52 02 	vmovups zmm10,ZMMWORD PTR [rdx+0x80]
  a73610:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a73617:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a7361e:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a73625:	62 d1 24 48 59 f0    	vmulps zmm6,zmm11,zmm8
  a7362b:	62 b2 05 48 bc f0    	vfnmadd231ps zmm6,zmm15,zmm16
  a73631:	62 51 04 48 59 c0    	vmulps zmm8,zmm15,zmm8
  a73637:	62 71 7c 48 10 7a 09 	vmovups zmm15,ZMMWORD PTR [rdx+0x240]
  a7363e:	62 52 7d 40 b8 c3    	vfmadd231ps zmm8,zmm16,zmm11
  a73644:	62 71 7c 48 10 5a 08 	vmovups zmm11,ZMMWORD PTR [rdx+0x200]
  a7364b:	62 c1 0c 48 59 c3    	vmulps zmm16,zmm14,zmm11
  a73651:	62 c2 15 48 bc c7    	vfnmadd231ps zmm16,zmm13,zmm15
  a73657:	62 51 14 48 59 db    	vmulps zmm11,zmm13,zmm11
  a7365d:	62 52 05 48 b8 de    	vfmadd231ps zmm11,zmm15,zmm14
  a73663:	62 71 7c 48 10 6a 0b 	vmovups zmm13,ZMMWORD PTR [rdx+0x2c0]
  a7366a:	62 71 7c 48 10 72 0a 	vmovups zmm14,ZMMWORD PTR [rdx+0x280]
  a73671:	62 51 34 48 59 fe    	vmulps zmm15,zmm9,zmm14
  a73677:	62 52 65 48 b8 fd    	vfmadd231ps zmm15,zmm3,zmm13
  a7367d:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a73683:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a73689:	62 d2 15 48 bc d9    	vfnmadd231ps zmm3,zmm13,zmm9
  a7368f:	62 72 7d 48 18 0d 3b 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff601c3b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a73696:	1c 60 ff 
  a73699:	62 51 0c 48 59 e9    	vmulps zmm13,zmm14,zmm9
  a7369f:	62 51 44 48 59 f2    	vmulps zmm14,zmm7,zmm10
  a736a5:	62 52 6d 48 b8 f4    	vfmadd231ps zmm14,zmm2,zmm12
  a736ab:	62 d1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm10
  a736b1:	62 71 7c 48 10 52 07 	vmovups zmm10,ZMMWORD PTR [rdx+0x1c0]
  a736b8:	62 f2 1d 48 bc d7    	vfnmadd231ps zmm2,zmm12,zmm7
  a736be:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a736c5:	62 71 54 48 59 e7    	vmulps zmm12,zmm5,zmm7
  a736cb:	62 52 75 48 b8 e2    	vfmadd231ps zmm12,zmm1,zmm10
  a736d1:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a736d7:	62 f2 7d 48 18 3d 7f 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff601d7f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a736de:	1d 60 ff 
  a736e1:	62 f2 2d 48 bc cd    	vfnmadd231ps zmm1,zmm10,zmm5
  a736e7:	62 d1 3c 48 58 eb    	vaddps zmm5,zmm8,zmm11
  a736ed:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a736f3:	62 72 55 48 ac d4    	vfnmadd213ps zmm10,zmm5,zmm4
  a736f9:	62 b1 4c 48 58 f0    	vaddps zmm6,zmm6,zmm16
  a736ff:	62 c1 14 48 58 c2    	vaddps zmm16,zmm13,zmm10
  a73705:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a7370b:	62 71 64 48 5c da    	vsubps zmm11,zmm3,zmm2
  a73711:	62 f1 64 48 58 d2    	vaddps zmm2,zmm3,zmm2
  a73717:	62 d1 04 48 58 de    	vaddps zmm3,zmm15,zmm14
  a7371d:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a73723:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a73729:	62 52 65 48 ac fc    	vfnmadd213ps zmm15,zmm3,zmm12
  a7372f:	62 51 24 48 59 d9    	vmulps zmm11,zmm11,zmm9
  a73735:	62 51 3c 48 59 c1    	vmulps zmm8,zmm8,zmm9
  a7373b:	62 51 0c 48 59 c9    	vmulps zmm9,zmm14,zmm9
  a73741:	62 51 04 48 58 f3    	vaddps zmm14,zmm15,zmm11
  a73747:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a7374d:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a73753:	62 72 4d 48 ac e8    	vfnmadd213ps zmm13,zmm6,zmm0
  a73759:	62 51 04 48 5c db    	vsubps zmm11,zmm15,zmm11
  a7375f:	62 51 14 48 5c f8    	vsubps zmm15,zmm13,zmm8
  a73765:	62 f2 6d 48 ac f9    	vfnmadd213ps zmm7,zmm2,zmm1
  a7376b:	62 51 14 48 58 c0    	vaddps zmm8,zmm13,zmm8
  a73771:	62 51 44 48 5c e9    	vsubps zmm13,zmm7,zmm9
  a73777:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a7377d:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a73783:	62 f1 1c 48 58 db    	vaddps zmm3,zmm12,zmm3
  a73789:	62 d1 7c 40 5c ee    	vsubps zmm5,zmm16,zmm14
  a7378f:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a73795:	62 d1 04 48 5c f5    	vsubps zmm6,zmm15,zmm13
  a7379b:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a737a1:	62 d1 2c 48 58 d3    	vaddps zmm2,zmm10,zmm11
  a737a7:	62 51 7c 40 58 ce    	vaddps zmm9,zmm16,zmm14
  a737ad:	62 71 3c 48 58 e7    	vaddps zmm12,zmm8,zmm7
  a737b3:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a737b9:	62 71 5c 48 5c f3    	vsubps zmm14,zmm4,zmm3
  a737bf:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a737c5:	62 71 7c 48 5c d9    	vsubps zmm11,zmm0,zmm1
  a737cb:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a737d1:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a737d7:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a737dd:	62 f1 7c 48 28 0d d9 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6212d9]        # 94ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21f70>
  a737e4:	12 62 ff 
  a737e7:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a737ed:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a737f3:	62 71 7c 48 28 05 03 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff621303]        # 94b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21fb0>
  a737fa:	13 62 ff 
  a737fd:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a73803:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a73809:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a7380f:	62 72 3d 48 7f d7    	vpermt2ps zmm10,zmm8,zmm7
  a73815:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a7381b:	62 d2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm13
  a73821:	62 52 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm13
  a73827:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a7382d:	62 52 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm11
  a73833:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  a73839:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a7383f:	62 52 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm12
  a73845:	62 d2 3d 48 7f d4    	vpermt2ps zmm2,zmm8,zmm12
  a7384b:	62 f2 55 48 77 ce    	vpermi2ps zmm1,zmm5,zmm6
  a73851:	62 f2 3d 48 7f ee    	vpermt2ps zmm5,zmm8,zmm6
  a73857:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a7385d:	62 f1 7c 48 11 66 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm4
  a73864:	62 71 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm10
  a7386b:	62 f1 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm0
  a73872:	62 71 7c 48 11 4e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm9
  a73879:	62 f1 7c 48 11 7e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm7
  a73880:	62 71 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm14
  a73887:	62 71 7c 48 11 6e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm13
  a7388e:	62 f1 7c 48 11 56 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm2
  a73895:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a7389c:	62 f1 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm5
  a738a3:	62 f1 7c 48 11 4e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm1
  a738aa:	48 89 ec             	mov    rsp,rbp
  a738ad:	5d                   	pop    rbp
  a738ae:	c5 f8 77             	vzeroupper
  a738b1:	c3                   	ret
