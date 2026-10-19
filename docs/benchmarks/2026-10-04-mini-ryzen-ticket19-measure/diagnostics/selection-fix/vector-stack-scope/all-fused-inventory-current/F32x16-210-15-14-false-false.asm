
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a36940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a36940:	55                   	push   rbp
  a36941:	48 89 e5             	mov    rbp,rsp
  a36944:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a36948:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  a3694f:	c6 84 24 c0 07 00 00 	mov    BYTE PTR [rsp+0x7c0],0x0
  a36956:	00 
  a36957:	48 8d 84 24 c0 07 00 	lea    rax,[rsp+0x7c0]
  a3695e:	00 
  a3695f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  a36964:	48 8d 44 24 78       	lea    rax,[rsp+0x78]
  a36969:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a3696f:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a36974:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a36979:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a36980:	c4 e2 79 18 57 68    	vbroadcastss xmm2,DWORD PTR [rdi+0x68]
  a36986:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a3698c:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a36993:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a3699a:	b0 3f                	mov    al,0x3f
  a3699c:	c5 fb 92 c8          	kmovd  k1,eax
  a369a0:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a369a6:	62 61 7c 48 28 05 50 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff65a750]        # 91100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e5b0>
  a369ad:	a7 65 ff 
  a369b0:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a369b6:	62 e2 3d 40 7f f0    	vpermt2ps zmm22,zmm24,zmm0
  a369bc:	62 e1 7c 48 28 2d 7a 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff65a77a]        # 91140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e5f0>
  a369c3:	a7 65 ff 
  a369c6:	62 f2 55 40 7f d8    	vpermt2ps zmm3,zmm21,zmm0
  a369cc:	62 f1 7c 48 10 af 70 	vmovups zmm5,ZMMWORD PTR [rdi+0x70]
  a369d3:	00 00 00 
  a369d6:	c5 f8 10 87 d0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd0]
  a369dd:	00 
  a369de:	c4 e3 79 21 87 d4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xd4],0x10
  a369e5:	00 00 10 
  a369e8:	c5 fc 10 8f b0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb0]
  a369ef:	00 
  a369f0:	c4 e2 79 18 a7 d8 00 	vbroadcastss xmm4,DWORD PTR [rdi+0xd8]
  a369f7:	00 00 
  a369f9:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a369ff:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x30
  a36a06:	00 00 30 
  a36a09:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36a10:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36a16:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a36a1c:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36a22:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a36a29:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a36a2f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a36a36:	03 
  a36a37:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a36a3e:	00 
  a36a3f:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a36a46:	00 00 10 
  a36a49:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a36a50:	00 00 
  a36a52:	62 61 7c 48 10 bf e0 	vmovups zmm31,ZMMWORD PTR [rdi+0xe0]
  a36a59:	00 00 00 
  a36a5c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36a62:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a36a69:	00 00 30 
  a36a6c:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a36a73:	00 
  a36a74:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36a7b:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36a81:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a36a87:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36a8d:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a36a93:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a36a9a:	0e 
  a36a9b:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a36aa1:	62 e1 7c 48 10 bf 50 	vmovups zmm23,ZMMWORD PTR [rdi+0x150]
  a36aa8:	01 00 00 
  a36aab:	c5 f8 10 87 b0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1b0]
  a36ab2:	00 
  a36ab3:	c4 e3 79 21 87 b4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1b4],0x10
  a36aba:	00 00 10 
  a36abd:	c4 e2 79 18 8f b8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1b8]
  a36ac4:	00 00 
  a36ac6:	c5 fc 10 a7 90 01 00 	vmovups ymm4,YMMWORD PTR [rdi+0x190]
  a36acd:	00 
  a36ace:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36ad4:	c4 e3 79 21 87 bc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1bc],0x30
  a36adb:	00 00 30 
  a36ade:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a36ae5:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36aeb:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a36af1:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36af7:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a36afd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm1
  a36b04:	1b 
  a36b05:	62 e2 55 40 7f f8    	vpermt2ps zmm23,zmm21,zmm0
  a36b0b:	62 f1 7c 48 10 7f 07 	vmovups zmm7,ZMMWORD PTR [rdi+0x1c0]
  a36b12:	c5 f8 10 87 20 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x220]
  a36b19:	00 
  a36b1a:	c5 fc 10 8f 00 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  a36b21:	00 
  a36b22:	c4 e3 79 21 87 24 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x224],0x10
  a36b29:	00 00 10 
  a36b2c:	c4 e2 79 18 a7 28 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x228]
  a36b33:	00 00 
  a36b35:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a36b3b:	c4 e3 79 21 87 2c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x22c],0x30
  a36b42:	00 00 30 
  a36b45:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36b4c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36b52:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a36b58:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36b5e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a36b65:	06 
  a36b66:	62 f2 55 40 7f f8    	vpermt2ps zmm7,zmm21,zmm0
  a36b6c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm7
  a36b73:	08 
  a36b74:	62 e1 7c 48 10 a7 30 	vmovups zmm20,ZMMWORD PTR [rdi+0x230]
  a36b7b:	02 00 00 
  a36b7e:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a36b85:	00 
  a36b86:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a36b8d:	00 00 10 
  a36b90:	c5 fc 10 8f 70 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x270]
  a36b97:	00 
  a36b98:	c4 e2 79 18 a7 98 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x298]
  a36b9f:	00 00 
  a36ba1:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a36ba7:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a36bae:	00 00 30 
  a36bb1:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36bb8:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36bbe:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a36bc4:	62 f2 3d 40 7f f8    	vpermt2ps zmm7,zmm24,zmm0
  a36bca:	62 e2 55 40 7f e0    	vpermt2ps zmm20,zmm21,zmm0
  a36bd0:	c5 f8 10 87 00 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x300]
  a36bd7:	00 
  a36bd8:	c4 e3 79 21 87 04 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x304],0x10
  a36bdf:	00 00 10 
  a36be2:	c4 e2 79 18 8f 08 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x308]
  a36be9:	00 00 
  a36beb:	62 f1 7c 48 10 a7 a0 	vmovups zmm4,ZMMWORD PTR [rdi+0x2a0]
  a36bf2:	02 00 00 
  a36bf5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36bfb:	c4 e3 79 21 87 0c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x30c],0x30
  a36c02:	00 00 30 
  a36c05:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a36c0c:	00 
  a36c0d:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36c14:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36c1a:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a36c20:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36c26:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a36c2d:	04 
  a36c2e:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a36c34:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a36c3b:	02 
  a36c3c:	62 61 7c 48 10 9f 10 	vmovups zmm27,ZMMWORD PTR [rdi+0x310]
  a36c43:	03 00 00 
  a36c46:	c5 f8 10 87 70 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x370]
  a36c4d:	00 
  a36c4e:	c4 e3 79 21 87 74 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x374],0x10
  a36c55:	00 00 10 
  a36c58:	c4 e2 79 18 8f 78 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x378]
  a36c5f:	00 00 
  a36c61:	c5 fc 10 a7 50 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x350]
  a36c68:	00 
  a36c69:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36c6f:	c4 e3 79 21 87 7c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x37c],0x30
  a36c76:	00 00 30 
  a36c79:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a36c80:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36c86:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a36c8c:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36c92:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a36c98:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a36c9f:	09 
  a36ca0:	62 62 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm0
  a36ca6:	62 71 7c 48 10 4f 0e 	vmovups zmm9,ZMMWORD PTR [rdi+0x380]
  a36cad:	c5 f8 10 87 e0 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3e0]
  a36cb4:	00 
  a36cb5:	c5 fc 10 8f c0 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x3c0]
  a36cbc:	00 
  a36cbd:	c4 e3 79 21 87 e4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3e4],0x10
  a36cc4:	00 00 10 
  a36cc7:	c4 e2 79 18 a7 e8 03 	vbroadcastss xmm4,DWORD PTR [rdi+0x3e8]
  a36cce:	00 00 
  a36cd0:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a36cd6:	c4 e3 79 21 87 ec 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ec],0x30
  a36cdd:	00 00 30 
  a36ce0:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36ce7:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36ced:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a36cf3:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36cf9:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a36cff:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a36d06:	0f 
  a36d07:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a36d0d:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a36d13:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm9
  a36d1a:	18 
  a36d1b:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0x3f0]
  a36d22:	03 00 00 
  a36d25:	c5 f8 10 87 50 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x450]
  a36d2c:	00 
  a36d2d:	c4 e3 79 21 87 54 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x454],0x10
  a36d34:	00 00 10 
  a36d37:	c5 fc 10 8f 30 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x430]
  a36d3e:	00 
  a36d3f:	c4 e2 79 18 a7 58 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x458]
  a36d46:	00 00 
  a36d48:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a36d4e:	c4 e3 79 21 87 5c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x45c],0x30
  a36d55:	00 00 30 
  a36d58:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36d5f:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36d65:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a36d6b:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36d71:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a36d78:	0d 
  a36d79:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a36d7f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm9
  a36d86:	05 
  a36d87:	c5 f8 10 87 c0 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x4c0]
  a36d8e:	00 
  a36d8f:	c4 e3 79 21 87 c4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4c4],0x10
  a36d96:	00 00 10 
  a36d99:	c4 e2 79 18 8f c8 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4c8]
  a36da0:	00 00 
  a36da2:	62 71 7c 48 10 af 60 	vmovups zmm13,ZMMWORD PTR [rdi+0x460]
  a36da9:	04 00 00 
  a36dac:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36db2:	c4 e3 79 21 87 cc 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4cc],0x30
  a36db9:	00 00 30 
  a36dbc:	c5 fc 10 8f a0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4a0]
  a36dc3:	00 
  a36dc4:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36dcb:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36dd1:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a36dd7:	62 62 3d 40 7f c8    	vpermt2ps zmm25,zmm24,zmm0
  a36ddd:	62 72 55 40 7f e8    	vpermt2ps zmm13,zmm21,zmm0
  a36de3:	62 f1 7c 48 10 af d0 	vmovups zmm5,ZMMWORD PTR [rdi+0x4d0]
  a36dea:	04 00 00 
  a36ded:	c5 f8 10 87 30 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x530]
  a36df4:	00 
  a36df5:	c4 e3 79 21 87 34 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x534],0x10
  a36dfc:	00 00 10 
  a36dff:	c4 e2 79 18 8f 38 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x538]
  a36e06:	00 00 
  a36e08:	c5 fc 10 a7 10 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x510]
  a36e0f:	00 
  a36e10:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36e16:	c4 e3 79 21 87 3c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x53c],0x30
  a36e1d:	00 00 30 
  a36e20:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a36e27:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36e2d:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a36e33:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36e39:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a36e40:	13 
  a36e41:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a36e47:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a36e4e:	0c 
  a36e4f:	62 e1 7c 48 10 57 15 	vmovups zmm18,ZMMWORD PTR [rdi+0x540]
  a36e56:	c5 f8 10 87 a0 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x5a0]
  a36e5d:	00 
  a36e5e:	c5 fc 10 8f 80 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x580]
  a36e65:	00 
  a36e66:	c4 e3 79 21 87 a4 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5a4],0x10
  a36e6d:	00 00 10 
  a36e70:	c4 e2 79 18 a7 a8 05 	vbroadcastss xmm4,DWORD PTR [rdi+0x5a8]
  a36e77:	00 00 
  a36e79:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a36e7f:	c4 e3 79 21 87 ac 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5ac],0x30
  a36e86:	00 00 30 
  a36e89:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36e90:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36e96:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a36e9c:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36ea2:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a36ea8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a36eaf:	1c 
  a36eb0:	62 e2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm0
  a36eb6:	62 e1 7c 48 10 9f b0 	vmovups zmm19,ZMMWORD PTR [rdi+0x5b0]
  a36ebd:	05 00 00 
  a36ec0:	c5 f8 10 87 10 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x610]
  a36ec7:	00 
  a36ec8:	c4 e3 79 21 87 14 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x614],0x10
  a36ecf:	00 00 10 
  a36ed2:	c5 fc 10 8f f0 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x5f0]
  a36ed9:	00 
  a36eda:	c4 e2 79 18 a7 18 06 	vbroadcastss xmm4,DWORD PTR [rdi+0x618]
  a36ee1:	00 00 
  a36ee3:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a36ee9:	c4 e3 79 21 87 1c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x61c],0x30
  a36ef0:	00 00 30 
  a36ef3:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36efa:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36f00:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a36f06:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a36f0c:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a36f12:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a36f19:	0a 
  a36f1a:	62 e2 55 40 7f d8    	vpermt2ps zmm19,zmm21,zmm0
  a36f20:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm19
  a36f27:	1e 
  a36f28:	c5 f8 10 87 80 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x680]
  a36f2f:	00 
  a36f30:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x10
  a36f37:	00 00 10 
  a36f3a:	c4 e2 79 18 8f 88 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x688]
  a36f41:	00 00 
  a36f43:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a36f49:	c5 fc 10 8f 60 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x660]
  a36f50:	00 
  a36f51:	c4 e3 79 21 87 8c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x68c],0x30
  a36f58:	00 00 30 
  a36f5b:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a36f62:	62 71 7c 48 10 87 20 	vmovups zmm8,ZMMWORD PTR [rdi+0x620]
  a36f69:	06 00 00 
  a36f6c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a36f72:	62 62 3d 48 77 c0    	vpermi2ps zmm24,zmm8,zmm0
  a36f78:	62 72 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm0
  a36f7e:	62 f1 04 48 58 ce    	vaddps zmm1,zmm15,zmm6
  a36f84:	62 62 7d 48 18 2d 5a 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff63e75a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a36f8b:	e7 63 ff 
  a36f8e:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a36f94:	62 f2 75 48 a8 c7    	vfmadd213ps zmm0,zmm1,zmm7
  a36f9a:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a36fa0:	62 62 7d 48 18 15 9a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff63e69a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a36fa7:	e6 63 ff 
  a36faa:	62 f1 44 48 58 c1    	vaddps zmm0,zmm7,zmm1
  a36fb0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a36fb7:	12 
  a36fb8:	62 f2 2d 40 bc f9    	vfnmadd231ps zmm7,zmm26,zmm1
  a36fbe:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a36fc5:	07 
  a36fc6:	62 d1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm12
  a36fcc:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a36fd2:	62 92 75 48 a8 c1    	vfmadd213ps zmm0,zmm1,zmm25
  a36fd8:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a36fde:	62 f1 34 40 58 c1    	vaddps zmm0,zmm25,zmm1
  a36fe4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a36feb:	11 
  a36fec:	62 62 2d 40 bc c9    	vfnmadd231ps zmm25,zmm26,zmm1
  a36ff2:	62 71 2c 48 58 cd    	vaddps zmm9,zmm10,zmm5
  a36ff8:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a36ffe:	62 b2 35 48 a8 c6    	vfmadd213ps zmm0,zmm9,zmm22
  a37004:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a3700a:	62 d1 4c 40 58 c1    	vaddps zmm0,zmm22,zmm9
  a37010:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a37017:	10 
  a37018:	62 c2 2d 40 bc f1    	vfnmadd231ps zmm22,zmm26,zmm9
  a3701e:	62 11 0c 48 58 cf    	vaddps zmm9,zmm14,zmm31
  a37024:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a3702a:	62 b2 35 48 a8 ec    	vfmadd213ps zmm5,zmm9,zmm20
  a37030:	62 d1 5c 40 58 c1    	vaddps zmm0,zmm20,zmm9
  a37036:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a3703d:	15 
  a3703e:	62 c2 2d 40 bc e1    	vfnmadd231ps zmm20,zmm26,zmm9
  a37044:	62 81 64 40 58 eb    	vaddps zmm21,zmm19,zmm27
  a3704a:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a37050:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a37056:	62 42 55 40 a8 f5    	vfmadd213ps zmm30,zmm21,zmm13
  a3705c:	62 b1 14 48 58 c5    	vaddps zmm0,zmm13,zmm21
  a37062:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a37069:	1d 
  a3706a:	62 a2 2d 40 bc dd    	vfnmadd231ps zmm19,zmm26,zmm21
  a37070:	62 b1 44 40 58 c2    	vaddps zmm0,zmm23,zmm18
  a37076:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a3707c:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a37082:	62 e2 7d 48 a8 eb    	vfmadd213ps zmm21,zmm0,zmm3
  a37088:	62 61 64 48 58 e0    	vaddps zmm28,zmm3,zmm0
  a3708e:	62 12 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm26
  a37094:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x4c0]
  a3709b:	13 
  a3709c:	62 91 1c 48 58 e0    	vaddps zmm4,zmm12,zmm24
  a370a2:	62 12 5d 48 bc fa    	vfnmadd231ps zmm15,zmm4,zmm26
  a370a8:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm15
  a370af:	17 
  a370b0:	62 71 7c 48 28 3c 24 	vmovaps zmm15,ZMMWORD PTR [rsp]
  a370b7:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x180]
  a370be:	06 
  a370bf:	62 d1 04 48 58 ce    	vaddps zmm1,zmm15,zmm14
  a370c5:	62 92 75 48 bc f2    	vfnmadd231ps zmm6,zmm1,zmm26
  a370cb:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm6
  a370d2:	16 
  a370d3:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x100]
  a370da:	04 
  a370db:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x340]
  a370e2:	0d 
  a370e3:	62 b1 74 40 58 d0    	vaddps zmm2,zmm17,zmm16
  a370e9:	62 92 6d 48 bc fa    	vfnmadd231ps zmm7,zmm2,zmm26
  a370ef:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm7
  a370f6:	0b 
  a370f7:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x300]
  a370fe:	0c 
  a370ff:	62 d1 2c 48 58 d8    	vaddps zmm3,zmm10,zmm8
  a37105:	62 92 65 48 bc ea    	vfnmadd231ps zmm5,zmm3,zmm26
  a3710b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm5
  a37112:	14 
  a37113:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a3711a:	03 
  a3711b:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a37122:	08 
  a37123:	62 f1 34 48 58 ee    	vaddps zmm5,zmm9,zmm6
  a37129:	62 02 55 48 bc f2    	vfnmadd231ps zmm30,zmm5,zmm26
  a3712f:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x80]
  a37136:	02 
  a37137:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a3713e:	05 
  a3713f:	62 f1 24 48 58 c7    	vaddps zmm0,zmm11,zmm7
  a37145:	62 82 7d 48 bc ea    	vfnmadd231ps zmm21,zmm0,zmm26
  a3714b:	62 61 5c 48 58 54 24 	vaddps zmm26,zmm4,ZMMWORD PTR [rsp+0x480]
  a37152:	12 
  a37153:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm26
  a3715a:	1a 
  a3715b:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x1c0]
  a37162:	07 
  a37163:	62 62 15 40 b8 d4    	vfmadd231ps zmm26,zmm29,zmm4
  a37169:	62 f1 74 48 58 64 24 	vaddps zmm4,zmm1,ZMMWORD PTR [rsp+0x440]
  a37170:	11 
  a37171:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm4
  a37178:	19 
  a37179:	62 62 15 40 b8 c9    	vfmadd231ps zmm25,zmm29,zmm1
  a3717f:	62 f1 6c 48 58 4c 24 	vaddps zmm1,zmm2,ZMMWORD PTR [rsp+0x400]
  a37186:	10 
  a37187:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a3718e:	10 
  a3718f:	62 e2 15 40 b8 f2    	vfmadd231ps zmm22,zmm29,zmm2
  a37195:	62 f1 64 48 58 4c 24 	vaddps zmm1,zmm3,ZMMWORD PTR [rsp+0x540]
  a3719c:	15 
  a3719d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a371a4:	12 
  a371a5:	62 e2 15 40 b8 e3    	vfmadd231ps zmm20,zmm29,zmm3
  a371ab:	62 f1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm0
  a371b1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a371b8:	07 
  a371b9:	62 12 7d 48 b8 ed    	vfmadd231ps zmm13,zmm0,zmm29
  a371bf:	62 e2 15 40 b8 dd    	vfmadd231ps zmm19,zmm29,zmm5
  a371c5:	62 f1 54 48 58 44 24 	vaddps zmm0,zmm5,ZMMWORD PTR [rsp+0x740]
  a371cc:	1d 
  a371cd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a371d4:	11 
  a371d5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a371dc:	18 
  a371dd:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a371e3:	62 d1 2c 48 5c d0    	vsubps zmm2,zmm10,zmm8
  a371e9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a371f0:	1e 
  a371f1:	62 91 74 48 5c db    	vsubps zmm3,zmm1,zmm27
  a371f7:	62 f1 34 48 5c e6    	vsubps zmm4,zmm9,zmm6
  a371fd:	62 b1 44 40 5c ea    	vsubps zmm5,zmm23,zmm18
  a37203:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a37209:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a37210:	0f 
  a37211:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x380]
  a37218:	0e 
  a37219:	62 91 1c 48 5c f0    	vsubps zmm6,zmm12,zmm24
  a3721f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a37226:	0a 
  a37227:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x240]
  a3722e:	09 
  a3722f:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a37235:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x6c0]
  a3723c:	1b 
  a3723d:	62 e1 74 48 5c 54 24 	vsubps zmm18,zmm1,ZMMWORD PTR [rsp+0x700]
  a37244:	1c 
  a37245:	62 e2 7d 48 18 3d 09 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63e509]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3724c:	e5 63 ff 
  a3724f:	62 21 74 40 5c d8    	vsubps zmm27,zmm17,zmm16
  a37255:	62 31 6c 48 59 ff    	vmulps zmm15,zmm2,zmm23
  a3725b:	62 62 7d 48 18 3d 3b 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff63e13b]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a37262:	e1 63 ff 
  a37265:	62 12 7d 48 b8 ff    	vfmadd231ps zmm15,zmm0,zmm31
  a3726b:	62 b1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm23
  a37271:	62 f2 05 40 bc c2    	vfnmadd231ps zmm0,zmm31,zmm2
  a37277:	62 31 5c 48 59 df    	vmulps zmm11,zmm4,zmm23
  a3727d:	62 12 65 48 b8 df    	vfmadd231ps zmm11,zmm3,zmm31
  a37283:	62 b1 64 48 59 d7    	vmulps zmm2,zmm3,zmm23
  a37289:	62 f2 05 40 bc d4    	vfnmadd231ps zmm2,zmm31,zmm4
  a3728f:	62 21 44 48 59 c7    	vmulps zmm24,zmm7,zmm23
  a37295:	62 02 55 48 b8 c7    	vfmadd231ps zmm24,zmm5,zmm31
  a3729b:	62 b1 54 48 59 df    	vmulps zmm3,zmm5,zmm23
  a372a1:	62 f2 05 40 bc df    	vfnmadd231ps zmm3,zmm31,zmm7
  a372a7:	62 21 4c 48 59 e7    	vmulps zmm28,zmm6,zmm23
  a372ad:	62 02 3d 48 b8 e7    	vfmadd231ps zmm28,zmm8,zmm31
  a372b3:	62 b1 3c 48 59 e7    	vmulps zmm4,zmm8,zmm23
  a372b9:	62 f2 05 40 bc e6    	vfnmadd231ps zmm4,zmm31,zmm6
  a372bf:	62 21 0c 48 59 ef    	vmulps zmm29,zmm14,zmm23
  a372c5:	62 02 1d 48 b8 ef    	vfmadd231ps zmm29,zmm12,zmm31
  a372cb:	62 b1 1c 48 59 f7    	vmulps zmm6,zmm12,zmm23
  a372d1:	62 d2 05 40 bc f6    	vfnmadd231ps zmm6,zmm31,zmm14
  a372d7:	62 31 24 40 59 f7    	vmulps zmm14,zmm27,zmm23
  a372dd:	62 12 6d 40 b8 f7    	vfmadd231ps zmm14,zmm18,zmm31
  a372e3:	62 b1 6c 40 59 ff    	vmulps zmm7,zmm18,zmm23
  a372e9:	62 92 25 40 bc ff    	vfnmadd231ps zmm7,zmm27,zmm31
  a372ef:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x500]
  a372f6:	14 
  a372f7:	62 91 44 40 5c ec    	vsubps zmm5,zmm23,zmm28
  a372fd:	62 11 0c 40 5c c5    	vsubps zmm8,zmm30,zmm29
  a37303:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a37309:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a37310:	02 
  a37311:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a37317:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a3731e:	03 
  a3731f:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x5c0]
  a37326:	17 
  a37327:	62 d1 2c 48 58 ef    	vaddps zmm5,zmm10,zmm15
  a3732d:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x580]
  a37334:	16 
  a37335:	62 51 74 40 58 c3    	vaddps zmm8,zmm17,zmm11
  a3733b:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a37341:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a37348:	06 
  a37349:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a3734f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a37356:	0f 
  a37357:	62 f1 5c 40 5c ec    	vsubps zmm5,zmm20,zmm4
  a3735d:	62 71 64 40 5c c6    	vsubps zmm8,zmm19,zmm6
  a37363:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a37369:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a37370:	05 
  a37371:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a37377:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a3737e:	0c 
  a3737f:	62 f1 2c 40 58 e8    	vaddps zmm5,zmm26,zmm0
  a37385:	62 71 34 40 58 c2    	vaddps zmm8,zmm25,zmm2
  a3738b:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a37391:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a37398:	13 
  a37399:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a3739f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a373a6:	0e 
  a373a7:	62 f1 4c 40 58 cb    	vaddps zmm1,zmm22,zmm3
  a373ad:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a373b4:	0a 
  a373b5:	62 f1 4c 40 5c cb    	vsubps zmm1,zmm22,zmm3
  a373bb:	62 61 2c 40 5c f8    	vsubps zmm31,zmm26,zmm0
  a373c1:	62 f1 34 40 5c ea    	vsubps zmm5,zmm25,zmm2
  a373c7:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a373ce:	0d 
  a373cf:	62 f1 14 48 5c c7    	vsubps zmm0,zmm13,zmm7
  a373d5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a373dc:	09 
  a373dd:	62 51 44 48 58 cd    	vaddps zmm9,zmm7,zmm13
  a373e3:	62 21 5c 48 58 dc    	vaddps zmm27,zmm4,zmm20
  a373e9:	62 a1 4c 48 58 d3    	vaddps zmm18,zmm6,zmm19
  a373ef:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x680]
  a373f6:	1a 
  a373f7:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x640]
  a373fe:	19 
  a373ff:	62 31 7c 40 58 e6    	vaddps zmm12,zmm16,zmm22
  a37405:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x400]
  a3740c:	10 
  a3740d:	62 d1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm12
  a37413:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3741a:	04 
  a3741b:	62 72 7d 48 18 2d 3b 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff63e03b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a37422:	e0 63 ff 
  a37425:	62 72 15 48 ac e2    	vfnmadd213ps zmm12,zmm13,zmm2
  a3742b:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x480]
  a37432:	12 
  a37433:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x440]
  a3743a:	11 
  a3743b:	62 91 4c 48 58 d9    	vaddps zmm3,zmm6,zmm25
  a37441:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a37448:	07 
  a37449:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a3744f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a37456:	08 
  a37457:	62 f2 15 48 ac da    	vfnmadd213ps zmm3,zmm13,zmm2
  a3745d:	62 f1 04 40 58 ed    	vaddps zmm5,zmm31,zmm5
  a37463:	62 61 74 48 58 d5    	vaddps zmm26,zmm1,zmm5
  a37469:	62 f2 15 48 ac e9    	vfnmadd213ps zmm5,zmm13,zmm1
  a3746f:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a37475:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a3747b:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a37481:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a37487:	62 b1 24 40 58 c2    	vaddps zmm0,zmm27,zmm18
  a3748d:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a37493:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a37499:	62 52 7d 48 ac e9    	vfnmadd213ps zmm13,zmm0,zmm9
  a3749f:	62 f1 34 48 58 c0    	vaddps zmm0,zmm9,zmm0
  a374a5:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a374ac:	62 d1 2c 48 5c c7    	vsubps zmm0,zmm10,zmm15
  a374b2:	62 51 74 40 5c cb    	vsubps zmm9,zmm17,zmm11
  a374b8:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a374bf:	0b 
  a374c0:	62 81 2c 48 58 e0    	vaddps zmm20,zmm10,zmm24
  a374c6:	62 11 2c 48 5c f8    	vsubps zmm15,zmm10,zmm24
  a374cc:	62 31 1c 40 58 df    	vaddps zmm11,zmm28,zmm23
  a374d2:	62 11 14 40 58 d6    	vaddps zmm10,zmm29,zmm30
  a374d8:	62 41 24 48 5c f2    	vsubps zmm30,zmm11,zmm10
  a374de:	62 51 24 48 58 d2    	vaddps zmm10,zmm11,zmm10
  a374e4:	62 51 54 40 5c de    	vsubps zmm11,zmm21,zmm14
  a374ea:	62 a1 0c 48 58 ed    	vaddps zmm21,zmm14,zmm21
  a374f0:	62 41 7c 48 58 e1    	vaddps zmm28,zmm0,zmm9
  a374f6:	62 d1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm9
  a374fc:	62 11 4c 48 5c c9    	vsubps zmm9,zmm6,zmm25
  a37502:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a37508:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x180]
  a3750f:	06 
  a37510:	62 a2 4d 48 ac dc    	vfnmadd213ps zmm19,zmm6,zmm20
  a37516:	62 61 5c 40 58 ce    	vaddps zmm25,zmm20,zmm6
  a3751c:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a37523:	03 
  a37524:	62 d2 4d 48 ac e3    	vfnmadd213ps zmm4,zmm6,zmm11
  a3752a:	62 71 24 48 58 de    	vaddps zmm11,zmm11,zmm6
  a37530:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a37537:	06 
  a37538:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x4c0]
  a3753f:	13 
  a37540:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x280]
  a37547:	0a 
  a37548:	62 92 3d 40 ac cd    	vfnmadd213ps zmm1,zmm24,zmm29
  a3754e:	62 e2 7d 48 18 3d 7c 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63dd7c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a37555:	dd 63 ff 
  a37558:	62 71 44 40 59 74 24 	vmulps zmm14,zmm23,ZMMWORD PTR [rsp+0x140]
  a3755f:	05 
  a37560:	62 51 74 48 5c de    	vsubps zmm11,zmm1,zmm14
  a37566:	62 51 74 48 58 f6    	vaddps zmm14,zmm1,zmm14
  a3756c:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x300]
  a37573:	0c 
  a37574:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x240]
  a3757b:	09 
  a3757c:	62 f2 7d 40 ac d6    	vfnmadd213ps zmm2,zmm16,zmm6
  a37582:	62 f1 44 40 59 4c 24 	vmulps zmm1,zmm23,ZMMWORD PTR [rsp+0x380]
  a37589:	0e 
  a3758a:	62 e1 6c 48 58 e1    	vaddps zmm20,zmm2,zmm1
  a37590:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm20
  a37597:	03 
  a37598:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a3759e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a375a5:	05 
  a375a6:	62 b1 24 40 5c ca    	vsubps zmm1,zmm27,zmm18
  a375ac:	62 f1 04 40 5c 54 24 	vsubps zmm2,zmm31,ZMMWORD PTR [rsp+0x340]
  a375b3:	0d 
  a375b4:	62 e1 44 40 59 4c 24 	vmulps zmm17,zmm23,ZMMWORD PTR [rsp+0x80]
  a375bb:	02 
  a375bc:	62 e1 44 40 59 54 24 	vmulps zmm18,zmm23,ZMMWORD PTR [rsp+0x3c0]
  a375c3:	0f 
  a375c4:	62 21 0c 40 59 f7    	vmulps zmm30,zmm30,zmm23
  a375ca:	62 b1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm23
  a375d0:	62 31 34 48 59 cf    	vmulps zmm9,zmm9,zmm23
  a375d6:	62 a1 4c 40 59 f7    	vmulps zmm22,zmm22,zmm23
  a375dc:	62 b1 74 48 59 cf    	vmulps zmm1,zmm1,zmm23
  a375e2:	62 a1 6c 48 59 ff    	vmulps zmm23,zmm2,zmm23
  a375e8:	62 52 1d 40 ac c7    	vfnmadd213ps zmm8,zmm28,zmm15
  a375ee:	62 01 04 48 58 e4    	vaddps zmm28,zmm15,zmm28
  a375f4:	62 b2 2d 48 ac fd    	vfnmadd213ps zmm7,zmm10,zmm21
  a375fa:	62 d1 54 40 58 d2    	vaddps zmm2,zmm21,zmm10
  a37600:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a37607:	0d 
  a37608:	62 51 1c 48 5c f9    	vsubps zmm15,zmm12,zmm9
  a3760e:	62 51 1c 48 58 e1    	vaddps zmm12,zmm12,zmm9
  a37614:	62 f1 4c 40 58 d3    	vaddps zmm2,zmm22,zmm3
  a3761a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a37621:	02 
  a37622:	62 b1 64 48 5c d6    	vsubps zmm2,zmm3,zmm22
  a37628:	62 31 74 40 58 d3    	vaddps zmm10,zmm17,zmm19
  a3762e:	62 b1 64 40 5c d9    	vsubps zmm3,zmm19,zmm17
  a37634:	62 a1 5c 48 5c e2    	vsubps zmm20,zmm4,zmm18
  a3763a:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a37640:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm4
  a37647:	0e 
  a37648:	62 91 14 40 58 e0    	vaddps zmm4,zmm29,zmm24
  a3764e:	62 c1 0c 40 58 f0    	vaddps zmm22,zmm30,zmm8
  a37654:	62 31 4c 48 58 c8    	vaddps zmm9,zmm6,zmm16
  a3765a:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm9
  a37661:	0f 
  a37662:	62 71 54 48 5c c9    	vsubps zmm9,zmm5,zmm1
  a37668:	62 f1 54 48 58 e9    	vaddps zmm5,zmm5,zmm1
  a3766e:	62 21 14 48 58 ef    	vaddps zmm29,zmm13,zmm23
  a37674:	62 b1 14 48 5c cf    	vsubps zmm1,zmm13,zmm23
  a3767a:	62 61 44 48 5c c0    	vsubps zmm24,zmm7,zmm0
  a37680:	62 91 3c 48 5c f6    	vsubps zmm6,zmm8,zmm30
  a37686:	62 f1 44 48 58 f8    	vaddps zmm7,zmm7,zmm0
  a3768c:	62 f1 7c 48 28 05 ea 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68f8ea]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a37693:	f8 68 ff 
  a37696:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x100]
  a3769d:	04 
  a3769e:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a376a4:	62 c2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm9
  a376aa:	62 e1 7c 48 28 05 0c 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68f90c]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a376b1:	f9 68 ff 
  a376b4:	62 c2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm9
  a376ba:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a376c0:	62 82 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm28
  a376c6:	62 12 7d 40 7f d4    	vpermt2ps zmm10,zmm16,zmm28
  a376cc:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a376d2:	62 c2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm12
  a376d8:	62 52 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm12
  a376de:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a376e4:	62 e2 7d 48 7f eb    	vpermt2ps zmm21,zmm0,zmm3
  a376ea:	62 62 7d 40 7f d3    	vpermt2ps zmm26,zmm16,zmm3
  a376f0:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a376f6:	62 62 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm4
  a376fc:	62 e2 7d 40 7f f4    	vpermt2ps zmm22,zmm16,zmm4
  a37702:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a37708:	62 62 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm5
  a3770e:	62 72 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm5
  a37714:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a3771a:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a37720:	62 62 7d 40 7f ce    	vpermt2ps zmm25,zmm16,zmm6
  a37726:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm25
  a3772d:	04 
  a3772e:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x200]
  a37735:	08 
  a37736:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a3773c:	62 02 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm29
  a37742:	62 02 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm29
  a37748:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a3774e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x340]
  a37755:	0d 
  a37756:	62 62 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm3
  a3775c:	62 e2 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm3
  a37762:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0xc0]
  a37769:	03 
  a3776a:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a37770:	62 62 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm2
  a37776:	62 72 7d 40 7f ea    	vpermt2ps zmm13,zmm16,zmm2
  a3777c:	62 f1 7c 48 28 1c 24 	vmovaps zmm3,ZMMWORD PTR [rsp]
  a37783:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a37789:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x380]
  a37790:	0e 
  a37791:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  a37797:	62 f2 7d 40 7f dc    	vpermt2ps zmm3,zmm16,zmm4
  a3779d:	62 f1 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm3
  a377a4:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a377aa:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a377b0:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a377b7:	0f 
  a377b8:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a377be:	62 72 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm5
  a377c4:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x80]
  a377cb:	02 
  a377cc:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a377d2:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a377d8:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a377de:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a377e5:	06 
  a377e6:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a377ec:	62 f2 7d 48 7f ef    	vpermt2ps zmm5,zmm0,zmm7
  a377f2:	62 f2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm7
  a377f8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a377ff:	06 
  a37800:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a37804:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a3780a:	62 f2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm1
  a37810:	62 72 7d 40 7f f1    	vpermt2ps zmm14,zmm16,zmm1
  a37816:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a3781d:	05 
  a3781e:	62 f2 45 48 77 c1    	vpermi2ps zmm0,zmm7,zmm1
  a37824:	62 f2 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm1
  a3782a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  a37831:	05 
  a37832:	62 e1 7c 48 28 05 c4 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68f6c4]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a37839:	f6 68 ff 
  a3783c:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a37842:	62 92 7d 40 7f fe    	vpermt2ps zmm7,zmm16,zmm30
  a37848:	62 f1 7c 48 28 0d ee 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68f6ee]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3784f:	f6 68 ff 
  a37852:	62 82 75 48 7f ce    	vpermt2ps zmm17,zmm1,zmm30
  a37858:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a3785e:	62 12 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm31
  a37864:	62 82 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm31
  a3786a:	62 21 7c 48 28 f2    	vmovaps zmm30,zmm18
  a37870:	62 42 7d 40 7f f1    	vpermt2ps zmm30,zmm16,zmm9
  a37876:	62 c2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm9
  a3787c:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a37882:	62 72 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm6
  a37888:	62 e2 75 48 7f ee    	vpermt2ps zmm21,zmm1,zmm6
  a3788e:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a37894:	62 b2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm22
  a3789a:	62 a2 75 48 7f fe    	vpermt2ps zmm23,zmm1,zmm22
  a378a0:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a378a6:	62 c2 7d 40 7f f7    	vpermt2ps zmm22,zmm16,zmm15
  a378ac:	62 52 75 48 7f d7    	vpermt2ps zmm10,zmm1,zmm15
  a378b2:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a378b8:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x100]
  a378bf:	04 
  a378c0:	62 12 7d 40 7f ff    	vpermt2ps zmm15,zmm16,zmm31
  a378c6:	62 12 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm31
  a378cc:	62 51 c5 40 14 db    	vunpcklpd zmm11,zmm23,zmm11
  a378d2:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a378d9:	03 
  a378da:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a378e0:	62 52 7d 40 7f de    	vpermt2ps zmm11,zmm16,zmm14
  a378e6:	62 42 75 48 7f d6    	vpermt2ps zmm26,zmm1,zmm14
  a378ec:	62 11 ad 48 14 d2    	vunpcklpd zmm10,zmm10,zmm26
  a378f2:	62 01 c5 48 14 fe    	vunpcklpd zmm31,zmm7,zmm30
  a378f8:	62 01 c5 48 15 f6    	vunpckhpd zmm30,zmm7,zmm30
  a378fe:	62 d1 bd 48 14 f9    	vunpcklpd zmm7,zmm8,zmm9
  a37904:	62 51 bd 48 15 f1    	vunpckhpd zmm14,zmm8,zmm9
  a3790a:	62 31 f5 40 14 c2    	vunpcklpd zmm8,zmm17,zmm18
  a37910:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a37917:	08 
  a37918:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a3791e:	62 a1 e5 40 14 cd    	vunpcklpd zmm17,zmm19,zmm21
  a37924:	62 a1 e5 40 15 ed    	vunpckhpd zmm21,zmm19,zmm21
  a3792a:	62 c1 cd 48 14 df    	vunpcklpd zmm19,zmm6,zmm15
  a37930:	62 d1 cd 48 15 f7    	vunpckhpd zmm6,zmm6,zmm15
  a37936:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a3793d:	02 
  a3793e:	62 d1 cd 40 14 f3    	vunpcklpd zmm6,zmm22,zmm11
  a37944:	62 51 cd 40 15 db    	vunpckhpd zmm11,zmm22,zmm11
  a3794a:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a37950:	62 72 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm3
  a37956:	62 62 75 48 7f e3    	vpermt2ps zmm28,zmm1,zmm3
  a3795c:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a37962:	62 f2 7d 40 7f dc    	vpermt2ps zmm3,zmm16,zmm4
  a37968:	62 62 75 48 7f ec    	vpermt2ps zmm29,zmm1,zmm4
  a3796e:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a37974:	62 e2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm5
  a3797a:	62 62 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm5
  a37980:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a37986:	62 e2 7d 40 7f f8    	vpermt2ps zmm23,zmm16,zmm0
  a3798c:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a37992:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a37998:	62 42 7d 40 7f d4    	vpermt2ps zmm26,zmm16,zmm12
  a3799e:	62 42 75 48 7f dc    	vpermt2ps zmm27,zmm1,zmm12
  a379a4:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a379aa:	62 12 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm24
  a379b0:	62 82 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm24
  a379b6:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a379bc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a379c3:	06 
  a379c4:	62 62 7d 40 7f c0    	vpermt2ps zmm24,zmm16,zmm0
  a379ca:	62 72 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm0
  a379d0:	62 f1 7c 48 28 04 24 	vmovaps zmm0,ZMMWORD PTR [rsp]
  a379d7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a379de:	05 
  a379df:	62 e2 7d 48 77 c4    	vpermi2ps zmm16,zmm0,zmm4
  a379e5:	62 f2 75 48 7f c4    	vpermt2ps zmm0,zmm1,zmm4
  a379eb:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a379f1:	62 71 7c 48 28 05 05 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68f405]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a379f8:	f4 68 ff 
  a379fb:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a37a01:	62 f2 3d 48 7f c7    	vpermt2ps zmm0,zmm8,zmm7
  a37a07:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a37a0e:	62 f1 7c 48 28 05 28 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68f428]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a37a15:	f4 68 ff 
  a37a18:	62 62 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm7
  a37a1e:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm31
  a37a25:	0b 
  a37a26:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a37a2c:	62 52 3d 48 7f ce    	vpermt2ps zmm9,zmm8,zmm14
  a37a32:	62 42 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm14
  a37a38:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm30
  a37a3f:	07 
  a37a40:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  a37a47:	08 
  a37a48:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a37a4e:	62 b2 3d 48 7f e9    	vpermt2ps zmm5,zmm8,zmm17
  a37a54:	62 b2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm17
  a37a5a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a37a61:	08 
  a37a62:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a37a68:	62 a2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm21
  a37a6e:	62 a2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm21
  a37a74:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a37a7a:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a37a80:	62 62 3d 48 7f f6    	vpermt2ps zmm30,zmm8,zmm6
  a37a86:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a37a8c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a37a93:	02 
  a37a94:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a37a9a:	62 c2 3d 48 7f d3    	vpermt2ps zmm18,zmm8,zmm11
  a37aa0:	62 d2 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm11
  a37aa6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a37aad:	02 
  a37aae:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a37ab5:	03 
  a37ab6:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a37abc:	62 d2 3d 48 7f fa    	vpermt2ps zmm7,zmm8,zmm10
  a37ac2:	62 d2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm10
  a37ac8:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a37acf:	03 
  a37ad0:	62 d1 a5 40 14 e5    	vunpcklpd zmm4,zmm27,zmm13
  a37ad6:	62 e1 dd 40 14 e1    	vunpcklpd zmm20,zmm20,zmm1
  a37adc:	62 31 85 48 14 d6    	vunpcklpd zmm10,zmm15,zmm22
  a37ae2:	62 b1 85 48 15 ce    	vunpckhpd zmm1,zmm15,zmm22
  a37ae8:	62 b1 e5 48 14 f7    	vunpcklpd zmm6,zmm3,zmm23
  a37aee:	62 31 e5 48 15 df    	vunpckhpd zmm11,zmm3,zmm23
  a37af4:	62 81 9d 40 14 f1    	vunpcklpd zmm22,zmm28,zmm25
  a37afa:	62 91 9d 40 15 d9    	vunpckhpd zmm3,zmm28,zmm25
  a37b00:	62 71 95 40 14 f2    	vunpcklpd zmm14,zmm29,zmm2
  a37b06:	62 71 95 40 15 fa    	vunpckhpd zmm15,zmm29,zmm2
  a37b0c:	62 91 ad 40 14 d0    	vunpcklpd zmm2,zmm26,zmm24
  a37b12:	62 01 ad 40 15 c8    	vunpckhpd zmm25,zmm26,zmm24
  a37b18:	62 a1 9d 48 14 e8    	vunpcklpd zmm21,zmm12,zmm16
  a37b1e:	62 31 9d 48 15 e0    	vunpckhpd zmm12,zmm12,zmm16
  a37b24:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a37b2a:	62 62 3d 48 7f c6    	vpermt2ps zmm24,zmm8,zmm6
  a37b30:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a37b36:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a37b3c:	62 c2 3d 48 7f c3    	vpermt2ps zmm16,zmm8,zmm11
  a37b42:	62 d2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm11
  a37b48:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a37b4e:	62 52 3d 48 7f de    	vpermt2ps zmm11,zmm8,zmm14
  a37b54:	62 c2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm14
  a37b5a:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a37b60:	62 52 3d 48 7f f7    	vpermt2ps zmm14,zmm8,zmm15
  a37b66:	62 d2 7d 48 7f df    	vpermt2ps zmm3,zmm0,zmm15
  a37b6c:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a37b72:	62 b2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm21
  a37b78:	62 b2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm21
  a37b7e:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a37b84:	62 52 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm12
  a37b8a:	62 42 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm12
  a37b90:	62 32 5d 48 77 c4    	vpermi2ps zmm8,zmm4,zmm20
  a37b96:	62 b2 7d 48 7f e4    	vpermt2ps zmm4,zmm0,zmm20
  a37b9c:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a37ba3:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a37baa:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a37bb1:	62 b1 34 48 59 c5    	vmulps zmm0,zmm9,zmm21
  a37bb7:	62 b2 7d 40 bc c4    	vfnmadd231ps zmm0,zmm16,zmm20
  a37bbd:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a37bc3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a37bca:	12 
  a37bcb:	62 31 7c 40 59 ed    	vmulps zmm13,zmm16,zmm21
  a37bd1:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a37bd8:	62 52 5d 40 b8 e9    	vfmadd231ps zmm13,zmm20,zmm9
  a37bde:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a37be4:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm13
  a37beb:	19 
  a37bec:	62 71 7c 48 10 4a 19 	vmovups zmm9,ZMMWORD PTR [rdx+0x640]
  a37bf3:	62 71 44 48 59 e8    	vmulps zmm13,zmm7,zmm0
  a37bf9:	62 52 3d 48 bc e9    	vfnmadd231ps zmm13,zmm8,zmm9
  a37bff:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm13
  a37c06:	13 
  a37c07:	62 71 3c 48 59 c0    	vmulps zmm8,zmm8,zmm0
  a37c0d:	62 f1 7c 48 10 42 08 	vmovups zmm0,ZMMWORD PTR [rdx+0x200]
  a37c14:	62 72 35 48 b8 c7    	vfmadd231ps zmm8,zmm9,zmm7
  a37c1a:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm8
  a37c21:	05 
  a37c22:	62 f1 7c 48 10 7a 09 	vmovups zmm7,ZMMWORD PTR [rdx+0x240]
  a37c29:	62 71 54 48 59 c0    	vmulps zmm8,zmm5,zmm0
  a37c2f:	62 72 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm7
  a37c35:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a37c3c:	04 
  a37c3d:	62 71 24 48 59 c0    	vmulps zmm8,zmm11,zmm0
  a37c43:	62 f1 7c 48 10 42 14 	vmovups zmm0,ZMMWORD PTR [rdx+0x500]
  a37c4a:	62 72 45 48 b8 c5    	vfmadd231ps zmm8,zmm7,zmm5
  a37c50:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a37c57:	0f 
  a37c58:	62 f1 7c 48 10 6a 15 	vmovups zmm5,ZMMWORD PTR [rdx+0x540]
  a37c5f:	62 f1 6c 40 59 f8    	vmulps zmm7,zmm18,zmm0
  a37c65:	62 f2 05 48 bc fd    	vfnmadd231ps zmm7,zmm15,zmm5
  a37c6b:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a37c72:	06 
  a37c73:	62 f1 04 48 59 f8    	vmulps zmm7,zmm15,zmm0
  a37c79:	62 f1 7c 48 10 42 0c 	vmovups zmm0,ZMMWORD PTR [rdx+0x300]
  a37c80:	62 b2 55 48 b8 fa    	vfmadd231ps zmm7,zmm5,zmm18
  a37c86:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a37c8d:	0e 
  a37c8e:	62 f1 7c 48 10 6a 0d 	vmovups zmm5,ZMMWORD PTR [rdx+0x340]
  a37c95:	62 f1 74 40 59 f8    	vmulps zmm7,zmm17,zmm0
  a37c9b:	62 f2 0d 48 bc fd    	vfnmadd231ps zmm7,zmm14,zmm5
  a37ca1:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a37ca7:	62 f1 0c 48 59 f8    	vmulps zmm7,zmm14,zmm0
  a37cad:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a37cb4:	62 b2 55 48 b8 f9    	vfmadd231ps zmm7,zmm5,zmm17
  a37cba:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm7
  a37cc1:	0d 
  a37cc2:	62 f1 7c 48 10 6a 11 	vmovups zmm5,ZMMWORD PTR [rdx+0x440]
  a37cc9:	62 f1 0c 40 59 f8    	vmulps zmm7,zmm30,zmm0
  a37ccf:	62 f2 4d 48 bc fd    	vfnmadd231ps zmm7,zmm6,zmm5
  a37cd5:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a37cdb:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a37ce1:	62 f1 7c 48 10 42 0e 	vmovups zmm0,ZMMWORD PTR [rdx+0x380]
  a37ce8:	62 92 55 48 b8 f6    	vfmadd231ps zmm6,zmm5,zmm30
  a37cee:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a37cf5:	0c 
  a37cf6:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a37cfd:	62 61 04 40 59 e8    	vmulps zmm29,zmm31,zmm0
  a37d03:	62 62 65 48 bc ee    	vfnmadd231ps zmm29,zmm3,zmm6
  a37d09:	62 e1 64 48 59 d0    	vmulps zmm18,zmm3,zmm0
  a37d0f:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a37d16:	62 82 4d 48 b8 d7    	vfmadd231ps zmm18,zmm6,zmm31
  a37d1c:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a37d23:	62 f1 64 40 59 e8    	vmulps zmm5,zmm19,zmm0
  a37d29:	62 f2 6d 48 bc eb    	vfnmadd231ps zmm5,zmm2,zmm3
  a37d2f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm5
  a37d36:	1c 
  a37d37:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a37d3d:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a37d44:	62 b2 65 48 b8 d3    	vfmadd231ps zmm2,zmm3,zmm19
  a37d4a:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a37d50:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a37d57:	17 
  a37d58:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a37d5f:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x200]
  a37d66:	08 
  a37d67:	62 f1 3c 48 59 d8    	vmulps zmm3,zmm8,zmm0
  a37d6d:	62 f2 4d 40 bc da    	vfnmadd231ps zmm3,zmm22,zmm2
  a37d73:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a37d7a:	09 
  a37d7b:	62 f1 4c 40 59 f0    	vmulps zmm6,zmm22,zmm0
  a37d81:	62 f1 7c 48 10 42 16 	vmovups zmm0,ZMMWORD PTR [rdx+0x580]
  a37d88:	62 d2 6d 48 b8 f0    	vfmadd231ps zmm6,zmm2,zmm8
  a37d8e:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm6
  a37d95:	18 
  a37d96:	62 f1 7c 48 10 52 17 	vmovups zmm2,ZMMWORD PTR [rdx+0x5c0]
  a37d9d:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a37da4:	02 
  a37da5:	62 71 34 48 59 f8    	vmulps zmm15,zmm9,zmm0
  a37dab:	62 72 35 40 bc fa    	vfnmadd231ps zmm15,zmm25,zmm2
  a37db1:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm15
  a37db8:	15 
  a37db9:	62 71 34 40 59 c0    	vmulps zmm8,zmm25,zmm0
  a37dbf:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a37dc6:	62 52 6d 48 b8 c1    	vfmadd231ps zmm8,zmm2,zmm9
  a37dcc:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a37dd3:	08 
  a37dd4:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a37ddb:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x1c0]
  a37de2:	07 
  a37de3:	62 71 3c 48 59 c8    	vmulps zmm9,zmm8,zmm0
  a37de9:	62 72 75 48 bc ca    	vfnmadd231ps zmm9,zmm1,zmm2
  a37def:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a37df5:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm9
  a37dfc:	16 
  a37dfd:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a37e03:	62 f1 7c 48 10 42 1a 	vmovups zmm0,ZMMWORD PTR [rdx+0x680]
  a37e0a:	62 d2 6d 48 b8 c8    	vfmadd231ps zmm1,zmm2,zmm8
  a37e10:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a37e17:	02 
  a37e18:	62 f1 7c 48 10 4a 1b 	vmovups zmm1,ZMMWORD PTR [rdx+0x6c0]
  a37e1f:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a37e26:	03 
  a37e27:	62 61 34 48 59 c8    	vmulps zmm25,zmm9,zmm0
  a37e2d:	62 62 5d 48 bc c9    	vfnmadd231ps zmm25,zmm4,zmm1
  a37e33:	62 f1 5c 48 59 c0    	vmulps zmm0,zmm4,zmm0
  a37e39:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a37e40:	62 d2 75 48 b8 c1    	vfmadd231ps zmm0,zmm1,zmm9
  a37e46:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a37e4d:	03 
  a37e4e:	62 d1 1c 48 58 c5    	vaddps zmm0,zmm12,zmm13
  a37e54:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x2c0]
  a37e5b:	0b 
  a37e5c:	62 b1 5c 48 59 cf    	vmulps zmm1,zmm4,zmm23
  a37e62:	62 f2 2d 48 bc ca    	vfnmadd231ps zmm1,zmm10,zmm2
  a37e68:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a37e6e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a37e75:	14 
  a37e76:	62 21 2c 48 59 df    	vmulps zmm27,zmm10,zmm23
  a37e7c:	62 62 6d 48 b8 dc    	vfmadd231ps zmm27,zmm2,zmm4
  a37e82:	62 62 7d 48 18 25 68 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff63d768]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a37e89:	d7 63 ff 
  a37e8c:	62 91 7c 48 28 d4    	vmovaps zmm2,zmm28
  a37e92:	62 e1 7c 48 28 04 24 	vmovaps zmm16,ZMMWORD PTR [rsp]
  a37e99:	62 b2 7d 48 a8 d0    	vfmadd213ps zmm2,zmm0,zmm16
  a37e9f:	62 f2 7d 48 18 25 23 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff63d423]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a37ea6:	d4 63 ff 
  a37ea9:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a37eaf:	62 32 7d 48 ac e8    	vfnmadd213ps zmm13,zmm0,zmm16
  a37eb5:	62 f1 7c 40 58 c8    	vaddps zmm1,zmm16,zmm0
  a37ebb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a37ec2:	0b 
  a37ec3:	62 72 7d 48 18 15 0b 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff63d70b]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a37eca:	d7 63 ff 
  a37ecd:	62 e2 2d 48 bc c0    	vfnmadd231ps zmm16,zmm10,zmm0
  a37ed3:	62 f1 54 48 58 c3    	vaddps zmm0,zmm5,zmm3
  a37ed9:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a37edf:	62 92 7d 48 a8 dd    	vfmadd213ps zmm3,zmm0,zmm29
  a37ee5:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a37eeb:	62 02 7d 48 ac f5    	vfnmadd213ps zmm30,zmm0,zmm29
  a37ef1:	62 f1 14 40 58 c8    	vaddps zmm1,zmm29,zmm0
  a37ef7:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a37efe:	62 62 2d 48 bc e8    	vfnmadd231ps zmm29,zmm10,zmm0
  a37f04:	62 f1 5c 40 58 4c 24 	vaddps zmm1,zmm20,ZMMWORD PTR [rsp+0x140]
  a37f0b:	05 
  a37f0c:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a37f12:	62 11 7c 48 28 d8    	vmovaps zmm11,zmm24
  a37f18:	62 02 75 48 a8 f8    	vfmadd213ps zmm31,zmm1,zmm24
  a37f1e:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a37f24:	62 82 75 48 ac e8    	vfnmadd213ps zmm21,zmm1,zmm24
  a37f2a:	62 91 74 48 58 e8    	vaddps zmm5,zmm1,zmm24
  a37f30:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm5
  a37f37:	07 
  a37f38:	62 72 2d 48 bc d9    	vfnmadd231ps zmm11,zmm10,zmm1
  a37f3e:	62 e1 44 48 58 e6    	vaddps zmm20,zmm7,zmm6
  a37f44:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a37f4a:	62 22 5d 40 a8 e2    	vfmadd213ps zmm28,zmm20,zmm18
  a37f50:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a37f56:	62 b2 5d 40 ac fa    	vfnmadd213ps zmm7,zmm20,zmm18
  a37f5c:	62 b1 6c 40 58 c4    	vaddps zmm0,zmm18,zmm20
  a37f62:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a37f69:	0a 
  a37f6a:	62 52 5d 40 bc e2    	vfnmadd231ps zmm12,zmm20,zmm10
  a37f70:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a37f77:	06 
  a37f78:	62 e1 7c 48 58 64 24 	vaddps zmm20,zmm0,ZMMWORD PTR [rsp+0x100]
  a37f7f:	04 
  a37f80:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a37f86:	62 f2 5d 40 bc d4    	vfnmadd231ps zmm2,zmm20,zmm4
  a37f8c:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a37f92:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a37f98:	62 b1 2c 40 58 f1    	vaddps zmm6,zmm26,zmm17
  a37f9e:	62 d2 4d 48 bc d2    	vfnmadd231ps zmm2,zmm6,zmm10
  a37fa4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a37fab:	1b 
  a37fac:	62 41 04 48 58 d6    	vaddps zmm26,zmm15,zmm14
  a37fb2:	62 f2 2d 40 bc dc    	vfnmadd231ps zmm3,zmm26,zmm4
  a37fb8:	62 d1 34 40 58 e9    	vaddps zmm5,zmm25,zmm9
  a37fbe:	62 d2 55 48 bc da    	vfnmadd231ps zmm3,zmm5,zmm10
  a37fc4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm3
  a37fcb:	1a 
  a37fcc:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x3c0]
  a37fd3:	0f 
  a37fd4:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x380]
  a37fdb:	0e 
  a37fdc:	62 b1 4c 40 58 d3    	vaddps zmm2,zmm22,zmm19
  a37fe2:	62 62 6d 48 bc fc    	vfnmadd231ps zmm31,zmm2,zmm4
  a37fe8:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x340]
  a37fef:	0d 
  a37ff0:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x300]
  a37ff7:	0c 
  a37ff8:	62 d1 0c 48 58 e1    	vaddps zmm4,zmm14,zmm9
  a37ffe:	62 42 5d 48 bc fa    	vfnmadd231ps zmm31,zmm4,zmm10
  a38004:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x200]
  a3800b:	08 
  a3800c:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x80]
  a38013:	02 
  a38014:	62 b1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm17
  a3801a:	62 62 75 48 bc e0    	vfnmadd231ps zmm28,zmm1,zmm0
  a38020:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a38027:	03 
  a38028:	62 91 3c 48 58 db    	vaddps zmm3,zmm8,zmm27
  a3802e:	62 42 65 48 bc e2    	vfnmadd231ps zmm28,zmm3,zmm10
  a38034:	62 52 5d 40 bc ea    	vfnmadd231ps zmm13,zmm20,zmm10
  a3803a:	62 42 2d 40 bc f2    	vfnmadd231ps zmm30,zmm26,zmm10
  a38040:	62 c2 6d 48 bc ea    	vfnmadd231ps zmm21,zmm2,zmm10
  a38046:	62 d2 75 48 bc fa    	vfnmadd231ps zmm7,zmm1,zmm10
  a3804c:	62 71 5c 40 58 7c 24 	vaddps zmm15,zmm20,ZMMWORD PTR [rsp+0x2c0]
  a38053:	0b 
  a38054:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  a3805a:	62 f2 7d 48 18 05 90 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63d590]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a38061:	d5 63 ff 
  a38064:	62 32 7d 48 b8 d4    	vfmadd231ps zmm10,zmm0,zmm20
  a3806a:	62 e1 2c 40 58 04 24 	vaddps zmm16,zmm26,ZMMWORD PTR [rsp]
  a38071:	62 02 7d 48 b8 ea    	vfmadd231ps zmm29,zmm0,zmm26
  a38077:	62 e1 6c 48 58 64 24 	vaddps zmm20,zmm2,ZMMWORD PTR [rsp+0x1c0]
  a3807e:	07 
  a3807f:	62 72 7d 48 b8 da    	vfmadd231ps zmm11,zmm0,zmm2
  a38085:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x280]
  a3808c:	0a 
  a3808d:	62 72 75 48 b8 e0    	vfmadd231ps zmm12,zmm1,zmm0
  a38093:	62 72 4d 48 b8 e8    	vfmadd231ps zmm13,zmm6,zmm0
  a38099:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm13
  a380a0:	10 
  a380a1:	62 62 55 48 b8 f0    	vfmadd231ps zmm30,zmm5,zmm0
  a380a7:	62 e2 5d 48 b8 e8    	vfmadd231ps zmm21,zmm4,zmm0
  a380ad:	62 f2 65 48 b8 f8    	vfmadd231ps zmm7,zmm3,zmm0
  a380b3:	62 f1 04 48 58 c6    	vaddps zmm0,zmm15,zmm6
  a380b9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a380c0:	0b 
  a380c1:	62 f2 7d 48 18 05 01 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63d201]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a380c8:	d2 63 ff 
  a380cb:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a380d1:	62 71 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm10
  a380d8:	62 f1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm5
  a380de:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a380e5:	07 
  a380e6:	62 62 7d 48 bc ed    	vfnmadd231ps zmm29,zmm0,zmm5
  a380ec:	62 b1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm20
  a380f2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a380f9:	0a 
  a380fa:	62 72 7d 48 bc dc    	vfnmadd231ps zmm11,zmm0,zmm4
  a38100:	62 72 65 48 bc e0    	vfnmadd231ps zmm12,zmm3,zmm0
  a38106:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a3810c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a38113:	11 
  a38114:	62 51 0c 48 5c d1    	vsubps zmm10,zmm14,zmm9
  a3811a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a38121:	19 
  a38122:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x140]
  a38129:	05 
  a3812a:	62 b1 4c 40 5c d3    	vsubps zmm2,zmm22,zmm19
  a38130:	62 11 3c 48 5c c3    	vsubps zmm8,zmm8,zmm27
  a38136:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a3813d:	17 
  a3813e:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x600]
  a38145:	18 
  a38146:	62 31 6c 40 5c c9    	vsubps zmm9,zmm18,zmm17
  a3814c:	62 31 3c 40 5c f7    	vsubps zmm14,zmm24,zmm23
  a38152:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a38159:	12 
  a3815a:	62 71 7c 48 5c 7c 24 	vsubps zmm15,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a38161:	13 
  a38162:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a38169:	04 
  a3816a:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x180]
  a38171:	06 
  a38172:	62 e2 7d 48 18 0d 14 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff63d314]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a38179:	d3 63 ff 
  a3817c:	62 e1 34 40 5c 5c 24 	vsubps zmm19,zmm25,ZMMWORD PTR [rsp+0x500]
  a38183:	14 
  a38184:	62 e2 7d 48 18 35 d2 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff63d4d2]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a3818b:	d4 63 ff 
  a3818e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a38195:	1c 
  a38196:	62 e1 7c 48 5c 7c 24 	vsubps zmm23,zmm0,ZMMWORD PTR [rsp+0x240]
  a3819d:	09 
  a3819e:	62 b1 6c 48 59 f1    	vmulps zmm6,zmm2,zmm17
  a381a4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a381ab:	15 
  a381ac:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp+0x580]
  a381b3:	16 
  a381b4:	62 62 7d 48 18 0d 2a 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff63d42a]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a381bb:	d4 63 ff 
  a381be:	62 b2 75 48 b8 f6    	vfmadd231ps zmm6,zmm1,zmm22
  a381c4:	62 b1 74 48 59 d9    	vmulps zmm3,zmm1,zmm17
  a381ca:	62 92 6d 48 bc d9    	vfnmadd231ps zmm3,zmm2,zmm25
  a381d0:	62 91 74 48 59 c9    	vmulps zmm1,zmm1,zmm25
  a381d6:	62 f2 4d 40 bc ca    	vfnmadd231ps zmm1,zmm22,zmm2
  a381dc:	62 b1 34 48 59 e1    	vmulps zmm4,zmm9,zmm17
  a381e2:	62 b2 55 48 b8 e6    	vfmadd231ps zmm4,zmm5,zmm22
  a381e8:	62 b1 54 48 59 d1    	vmulps zmm2,zmm5,zmm17
  a381ee:	62 92 35 48 bc d1    	vfnmadd231ps zmm2,zmm9,zmm25
  a381f4:	62 91 54 48 59 e9    	vmulps zmm5,zmm5,zmm25
  a381fa:	62 d2 4d 40 bc e9    	vfnmadd231ps zmm5,zmm22,zmm9
  a38200:	62 31 7c 40 59 c9    	vmulps zmm9,zmm16,zmm17
  a38206:	62 32 05 48 b8 ce    	vfmadd231ps zmm9,zmm15,zmm22
  a3820c:	62 21 04 48 59 d1    	vmulps zmm26,zmm15,zmm17
  a38212:	62 02 7d 40 bc d1    	vfnmadd231ps zmm26,zmm16,zmm25
  a38218:	62 11 04 48 59 f9    	vmulps zmm15,zmm15,zmm25
  a3821e:	62 32 4d 40 bc f8    	vfnmadd231ps zmm15,zmm22,zmm16
  a38224:	62 92 2d 48 b8 f1    	vfmadd231ps zmm6,zmm10,zmm25
  a3822a:	62 92 3d 48 b8 e1    	vfmadd231ps zmm4,zmm8,zmm25
  a38230:	62 12 0d 48 b8 c9    	vfmadd231ps zmm9,zmm14,zmm25
  a38236:	62 a1 3c 40 59 c1    	vmulps zmm16,zmm24,zmm17
  a3823c:	62 a2 45 40 b8 c6    	vfmadd231ps zmm16,zmm23,zmm22
  a38242:	62 82 65 40 b8 c1    	vfmadd231ps zmm16,zmm19,zmm25
  a38248:	62 b1 44 40 59 c1    	vmulps zmm0,zmm23,zmm17
  a3824e:	62 92 3d 40 bc c1    	vfnmadd231ps zmm0,zmm24,zmm25
  a38254:	62 81 44 40 59 f9    	vmulps zmm23,zmm23,zmm25
  a3825a:	62 a2 3d 40 bc fe    	vfnmadd231ps zmm23,zmm24,zmm22
  a38260:	62 b2 2d 48 bc de    	vfnmadd231ps zmm3,zmm10,zmm22
  a38266:	62 b2 3d 48 bc d6    	vfnmadd231ps zmm2,zmm8,zmm22
  a3826c:	62 22 0d 48 bc d6    	vfnmadd231ps zmm26,zmm14,zmm22
  a38272:	62 b2 65 40 bc c6    	vfnmadd231ps zmm0,zmm19,zmm22
  a38278:	62 d2 75 40 b8 ca    	vfmadd231ps zmm1,zmm17,zmm10
  a3827e:	62 d2 75 40 b8 e8    	vfmadd231ps zmm5,zmm17,zmm8
  a38284:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x6c0]
  a3828b:	1b 
  a3828c:	62 61 14 48 58 ce    	vaddps zmm25,zmm13,zmm6
  a38292:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a38298:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x680]
  a3829f:	1a 
  a382a0:	62 71 2c 48 58 f4    	vaddps zmm14,zmm10,zmm4
  a382a6:	62 a2 65 40 b8 f9    	vfmadd231ps zmm23,zmm19,zmm17
  a382ac:	62 51 34 40 5c c6    	vsubps zmm8,zmm25,zmm14
  a382b2:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a382b9:	04 
  a382ba:	62 71 7c 48 28 04 24 	vmovaps zmm8,ZMMWORD PTR [rsp]
  a382c1:	62 61 3c 48 58 d9    	vaddps zmm27,zmm8,zmm1
  a382c7:	62 f1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm1
  a382cd:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a382d4:	62 e1 14 40 58 dd    	vaddps zmm19,zmm29,zmm5
  a382da:	62 e1 14 40 5c f5    	vsubps zmm22,zmm29,zmm5
  a382e0:	62 41 24 48 5c c7    	vsubps zmm24,zmm11,zmm15
  a382e6:	62 c1 04 48 58 e3    	vaddps zmm20,zmm15,zmm11
  a382ec:	62 31 1c 48 5c df    	vsubps zmm11,zmm12,zmm23
  a382f2:	62 a1 1c 48 58 d7    	vaddps zmm18,zmm12,zmm23
  a382f8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a382ff:	10 
  a38300:	62 71 74 48 58 fb    	vaddps zmm15,zmm1,zmm3
  a38306:	62 e1 74 48 5c fb    	vsubps zmm23,zmm1,zmm3
  a3830c:	62 61 0c 40 58 ea    	vaddps zmm29,zmm30,zmm2
  a38312:	62 61 0c 40 5c f2    	vsubps zmm30,zmm30,zmm2
  a38318:	62 91 54 40 5c d2    	vsubps zmm2,zmm21,zmm26
  a3831e:	62 a1 2c 40 58 cd    	vaddps zmm17,zmm26,zmm21
  a38324:	62 71 44 48 5c c0    	vsubps zmm8,zmm7,zmm0
  a3832a:	62 71 44 48 58 e0    	vaddps zmm12,zmm7,zmm0
  a38330:	62 d1 04 40 5c c1    	vsubps zmm0,zmm31,zmm9
  a38336:	62 f1 14 48 5c fe    	vsubps zmm7,zmm13,zmm6
  a3833c:	62 b1 1c 40 5c d8    	vsubps zmm3,zmm28,zmm16
  a38342:	62 f1 2c 48 5c f4    	vsubps zmm6,zmm10,zmm4
  a38348:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a3834e:	62 91 34 48 58 e7    	vaddps zmm4,zmm9,zmm31
  a38354:	62 01 04 48 58 d5    	vaddps zmm26,zmm15,zmm29
  a3835a:	62 a1 1c 40 58 c0    	vaddps zmm16,zmm28,zmm16
  a38360:	62 d1 6c 48 58 e8    	vaddps zmm5,zmm2,zmm8
  a38366:	62 51 34 40 58 ce    	vaddps zmm9,zmm25,zmm14
  a3836c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a38373:	09 
  a38374:	62 a1 24 40 5c eb    	vsubps zmm21,zmm27,zmm19
  a3837a:	62 71 7c 48 58 cb    	vaddps zmm9,zmm0,zmm3
  a38380:	62 41 3c 40 5c cb    	vsubps zmm25,zmm24,zmm11
  a38386:	62 01 04 48 5c ed    	vsubps zmm29,zmm15,zmm29
  a3838c:	62 f1 7c 48 28 1c 24 	vmovaps zmm3,ZMMWORD PTR [rsp]
  a38393:	62 31 64 48 58 fe    	vaddps zmm15,zmm3,zmm22
  a38399:	62 51 6c 48 5c c0    	vsubps zmm8,zmm2,zmm8
  a3839f:	62 b1 5c 40 58 c2    	vaddps zmm0,zmm20,zmm18
  a383a5:	62 b1 24 40 58 d3    	vaddps zmm2,zmm27,zmm19
  a383ab:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a383b2:	0c 
  a383b3:	62 81 44 40 5c de    	vsubps zmm19,zmm23,zmm30
  a383b9:	62 41 3c 40 58 e3    	vaddps zmm28,zmm24,zmm11
  a383bf:	62 41 74 40 5c fc    	vsubps zmm31,zmm17,zmm12
  a383c5:	62 a1 64 48 5c f6    	vsubps zmm22,zmm3,zmm22
  a383cb:	62 71 44 48 58 ee    	vaddps zmm13,zmm7,zmm6
  a383d1:	62 21 5c 40 5c c2    	vsubps zmm24,zmm20,zmm18
  a383d7:	62 b1 5c 48 58 d0    	vaddps zmm2,zmm4,zmm16
  a383dd:	62 01 44 40 58 de    	vaddps zmm27,zmm23,zmm30
  a383e3:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x2c0]
  a383ea:	0b 
  a383eb:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x1c0]
  a383f2:	07 
  a383f3:	62 c1 24 48 5c fe    	vsubps zmm23,zmm11,zmm14
  a383f9:	62 51 74 40 58 e4    	vaddps zmm12,zmm17,zmm12
  a383ff:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x280]
  a38406:	0a 
  a38407:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x440]
  a3840e:	11 
  a3840f:	62 b1 2c 48 5c d9    	vsubps zmm3,zmm10,zmm17
  a38415:	62 61 44 48 5c f6    	vsubps zmm30,zmm7,zmm6
  a3841b:	62 a1 5c 48 5c c0    	vsubps zmm16,zmm4,zmm16
  a38421:	62 51 24 48 58 f6    	vaddps zmm14,zmm11,zmm14
  a38427:	62 b1 2c 48 58 e1    	vaddps zmm4,zmm10,zmm17
  a3842d:	62 f1 7c 48 28 3d 49 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff658d49]        # 91180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e630>
  a38434:	8d 65 ff 
  a38437:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a3843d:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a38443:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a3844a:	03 
  a3844b:	62 f1 0c 48 15 f4    	vunpckhps zmm6,zmm14,zmm4
  a38451:	62 f1 7c 48 29 34 24 	vmovaps ZMMWORD PTR [rsp],zmm6
  a38458:	62 f1 0c 48 14 f4    	vunpcklps zmm6,zmm14,zmm4
  a3845e:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm6
  a38465:	08 
  a38466:	62 e1 7c 28 28 25 50 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff658d50]        # 911c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e670>
  a3846d:	8d 65 ff 
  a38470:	62 72 5d 40 7f f4    	vpermt2ps zmm14,zmm20,zmm4
  a38476:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a3847d:	04 
  a3847e:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a38484:	62 f2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm1
  a3848a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a38491:	06 
  a38492:	62 f1 24 48 15 e1    	vunpckhps zmm4,zmm11,zmm1
  a38498:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a3849f:	02 
  a384a0:	62 f1 24 48 14 e1    	vunpcklps zmm4,zmm11,zmm1
  a384a6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a384ad:	05 
  a384ae:	62 72 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm1
  a384b4:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a384ba:	62 f2 45 48 7f e5    	vpermt2ps zmm4,zmm7,zmm5
  a384c0:	62 f1 2c 40 15 cd    	vunpckhps zmm1,zmm26,zmm5
  a384c6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a384cd:	04 
  a384ce:	62 f1 2c 40 14 cd    	vunpcklps zmm1,zmm26,zmm5
  a384d4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a384db:	0f 
  a384dc:	62 62 5d 40 7f d5    	vpermt2ps zmm26,zmm20,zmm5
  a384e2:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a384e8:	62 12 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm25
  a384ee:	62 91 54 40 15 c9    	vunpckhps zmm1,zmm21,zmm25
  a384f4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a384fb:	0e 
  a384fc:	62 91 54 40 14 c9    	vunpcklps zmm1,zmm21,zmm25
  a38502:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a38509:	0d 
  a3850a:	62 82 5d 40 7f e9    	vpermt2ps zmm21,zmm20,zmm25
  a38510:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a38516:	62 62 45 48 7f c8    	vpermt2ps zmm25,zmm7,zmm0
  a3851c:	62 f1 04 48 15 c8    	vunpckhps zmm1,zmm15,zmm0
  a38522:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a38529:	13 
  a3852a:	62 f1 04 48 14 c8    	vunpcklps zmm1,zmm15,zmm0
  a38530:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a38537:	12 
  a38538:	62 72 5d 40 7f f8    	vpermt2ps zmm15,zmm20,zmm0
  a3853e:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a38544:	62 82 45 48 7f d7    	vpermt2ps zmm18,zmm7,zmm31
  a3854a:	62 91 64 40 15 c7    	vunpckhps zmm0,zmm19,zmm31
  a38550:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a38557:	0b 
  a38558:	62 91 64 40 14 c7    	vunpcklps zmm0,zmm19,zmm31
  a3855e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a38565:	07 
  a38566:	62 82 5d 40 7f df    	vpermt2ps zmm19,zmm20,zmm31
  a3856c:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a38572:	62 62 45 48 7f fa    	vpermt2ps zmm31,zmm7,zmm2
  a38578:	62 f1 14 48 15 c2    	vunpckhps zmm0,zmm13,zmm2
  a3857e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a38585:	0a 
  a38586:	62 f1 14 48 14 c2    	vunpcklps zmm0,zmm13,zmm2
  a3858c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a38593:	11 
  a38594:	62 72 5d 40 7f ea    	vpermt2ps zmm13,zmm20,zmm2
  a3859a:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a385a0:	62 f2 45 48 7f d3    	vpermt2ps zmm2,zmm7,zmm3
  a385a6:	62 f1 44 40 15 c3    	vunpckhps zmm0,zmm23,zmm3
  a385ac:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a385b3:	1c 
  a385b4:	62 f1 44 40 14 c3    	vunpcklps zmm0,zmm23,zmm3
  a385ba:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a385c1:	1b 
  a385c2:	62 e2 5d 40 7f fb    	vpermt2ps zmm23,zmm20,zmm3
  a385c8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a385cf:	09 
  a385d0:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a385d6:	62 d2 45 48 7f f1    	vpermt2ps zmm6,zmm7,zmm9
  a385dc:	62 d1 7c 48 15 c9    	vunpckhps zmm1,zmm0,zmm9
  a385e2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a385e9:	1a 
  a385ea:	62 d1 7c 48 14 c9    	vunpcklps zmm1,zmm0,zmm9
  a385f0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a385f7:	19 
  a385f8:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a385fe:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a38604:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a3860a:	62 d2 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm8
  a38610:	62 d1 14 40 15 c8    	vunpckhps zmm1,zmm29,zmm8
  a38616:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a3861d:	09 
  a3861e:	62 d1 14 40 14 c8    	vunpcklps zmm1,zmm29,zmm8
  a38624:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a3862b:	10 
  a3862c:	62 42 5d 40 7f e8    	vpermt2ps zmm29,zmm20,zmm8
  a38632:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x300]
  a38639:	0c 
  a3863a:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a38640:	62 92 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm28
  a38646:	62 91 64 48 15 ec    	vunpckhps zmm5,zmm3,zmm28
  a3864c:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm5
  a38653:	18 
  a38654:	62 91 64 48 14 ec    	vunpcklps zmm5,zmm3,zmm28
  a3865a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm5
  a38661:	17 
  a38662:	62 92 5d 40 7f dc    	vpermt2ps zmm3,zmm20,zmm28
  a38668:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a3866e:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  a38674:	62 02 45 48 7f e0    	vpermt2ps zmm28,zmm7,zmm24
  a3867a:	62 91 4c 40 15 d8    	vunpckhps zmm3,zmm22,zmm24
  a38680:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a38687:	0c 
  a38688:	62 91 4c 40 14 d8    	vunpcklps zmm3,zmm22,zmm24
  a3868e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a38695:	16 
  a38696:	62 82 5d 40 7f f0    	vpermt2ps zmm22,zmm20,zmm24
  a3869c:	62 01 7c 48 28 c3    	vmovaps zmm24,zmm27
  a386a2:	62 42 45 48 7f c4    	vpermt2ps zmm24,zmm7,zmm12
  a386a8:	62 d1 24 40 15 dc    	vunpckhps zmm3,zmm27,zmm12
  a386ae:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a386b5:	15 
  a386b6:	62 d1 24 40 14 dc    	vunpcklps zmm3,zmm27,zmm12
  a386bc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm3
  a386c3:	14 
  a386c4:	62 42 5d 40 7f dc    	vpermt2ps zmm27,zmm20,zmm12
  a386ca:	62 b2 0d 40 77 f8    	vpermi2ps zmm7,zmm30,zmm16
  a386d0:	62 b1 0c 40 15 e8    	vunpckhps zmm5,zmm30,zmm16
  a386d6:	62 b1 0c 40 14 d8    	vunpcklps zmm3,zmm30,zmm16
  a386dc:	62 22 5d 40 7f f0    	vpermt2ps zmm30,zmm20,zmm16
  a386e2:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a386e9:	03 
  a386ea:	62 71 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm8
  a386f0:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x200]
  a386f7:	08 
  a386f8:	62 73 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm8,0x3
  a386ff:	03 
  a38700:	62 71 7c 48 28 04 24 	vmovaps zmm8,ZMMWORD PTR [rsp]
  a38707:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a3870e:	c5 78 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm8
  a38713:	c5 7c 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm14
  a38718:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x180]
  a3871f:	06 
  a38720:	62 71 7c 48 11 86 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm8
  a38727:	00 00 00 
  a3872a:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x140]
  a38731:	05 
  a38732:	62 73 7d 48 19 86 d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm8,0x3
  a38739:	00 00 00 03 
  a3873d:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x80]
  a38744:	02 
  a38745:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a3874c:	c5 78 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm8
  a38753:	00 
  a38754:	c5 7c 11 9e b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm11
  a3875b:	00 
  a3875c:	62 f1 7c 48 11 a6 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm4
  a38763:	00 00 00 
  a38766:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x3c0]
  a3876d:	0f 
  a3876e:	62 f3 7d 48 19 66 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm4,0x3
  a38775:	03 
  a38776:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x100]
  a3877d:	04 
  a3877e:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a38785:	c5 f8 13 a6 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm4
  a3878c:	00 
  a3878d:	62 61 7c 28 11 96 30 	vmovups YMMWORD PTR [rsi+0x130],ymm26
  a38794:	01 00 00 
  a38797:	62 71 7c 48 11 96 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm10
  a3879e:	01 00 00 
  a387a1:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x340]
  a387a8:	0d 
  a387a9:	62 f3 7d 48 19 a6 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm4,0x3
  a387b0:	01 00 00 03 
  a387b4:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x380]
  a387bb:	0e 
  a387bc:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a387c3:	c5 f8 13 a6 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm4
  a387ca:	00 
  a387cb:	62 e1 7c 28 11 ae a8 	vmovups YMMWORD PTR [rsi+0x1a8],ymm21
  a387d2:	01 00 00 
  a387d5:	62 61 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm25
  a387dc:	01 00 00 
  a387df:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x480]
  a387e6:	12 
  a387e7:	62 f3 7d 48 19 66 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm4,0x3
  a387ee:	03 
  a387ef:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x4c0]
  a387f6:	13 
  a387f7:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a387fe:	c5 f8 13 a6 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm4
  a38805:	00 
  a38806:	c5 7c 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm15
  a3880d:	00 
  a3880e:	62 e1 7c 48 11 96 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm18
  a38815:	02 00 00 
  a38818:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a3881f:	07 
  a38820:	62 f3 7d 48 19 a6 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm4,0x3
  a38827:	02 00 00 03 
  a3882b:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x2c0]
  a38832:	0b 
  a38833:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a3883a:	c5 f8 13 a6 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm4
  a38841:	00 
  a38842:	62 e1 7c 28 11 9e 98 	vmovups YMMWORD PTR [rsi+0x298],ymm19
  a38849:	02 00 00 
  a3884c:	62 61 7c 48 11 be d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm31
  a38853:	02 00 00 
  a38856:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x440]
  a3885d:	11 
  a3885e:	62 f3 7d 48 19 66 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm4,0x3
  a38865:	03 
  a38866:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a3886d:	0a 
  a3886e:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a38875:	c5 f8 13 a6 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm4
  a3887c:	00 
  a3887d:	c5 7c 11 ae 10 03 00 	vmovups YMMWORD PTR [rsi+0x310],ymm13
  a38884:	00 
  a38885:	62 f1 7c 48 11 96 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm2
  a3888c:	03 00 00 
  a3888f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x6c0]
  a38896:	1b 
  a38897:	62 f3 7d 48 19 96 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm2,0x3
  a3889e:	03 00 00 03 
  a388a2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x700]
  a388a9:	1c 
  a388aa:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a388b1:	c5 f8 13 96 b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm2
  a388b8:	00 
  a388b9:	62 e1 7c 28 11 be 88 	vmovups YMMWORD PTR [rsi+0x388],ymm23
  a388c0:	03 00 00 
  a388c3:	62 f1 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm6
  a388ca:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x640]
  a388d1:	19 
  a388d2:	62 f3 7d 48 19 56 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm2,0x3
  a388d9:	03 
  a388da:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x680]
  a388e1:	1a 
  a388e2:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a388e9:	c5 f8 13 96 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm2
  a388f0:	00 
  a388f1:	62 e1 7c 28 11 4e 20 	vmovups YMMWORD PTR [rsi+0x400],ymm17
  a388f8:	62 f1 7c 48 11 86 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm0
  a388ff:	04 00 00 
  a38902:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a38909:	10 
  a3890a:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a38911:	04 00 00 03 
  a38915:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a3891c:	09 
  a3891d:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a38924:	c5 f8 13 86 a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm0
  a3892b:	00 
  a3892c:	62 61 7c 28 11 ae 78 	vmovups YMMWORD PTR [rsi+0x478],ymm29
  a38933:	04 00 00 
  a38936:	62 f1 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm1
  a3893d:	04 00 00 
  a38940:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a38947:	17 
  a38948:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a3894f:	03 
  a38950:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a38957:	18 
  a38958:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3895f:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a38966:	00 
  a38967:	c5 7c 11 8e f0 04 00 	vmovups YMMWORD PTR [rsi+0x4f0],ymm9
  a3896e:	00 
  a3896f:	62 61 7c 48 11 a6 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm28
  a38976:	05 00 00 
  a38979:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a38980:	16 
  a38981:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a38988:	05 00 00 03 
  a3898c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a38993:	0c 
  a38994:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3899b:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a389a2:	00 
  a389a3:	62 e1 7c 28 11 b6 68 	vmovups YMMWORD PTR [rsi+0x568],ymm22
  a389aa:	05 00 00 
  a389ad:	62 61 7c 48 11 86 a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm24
  a389b4:	05 00 00 
  a389b7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a389be:	14 
  a389bf:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a389c6:	03 
  a389c7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a389ce:	15 
  a389cf:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a389d6:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a389dd:	00 
  a389de:	62 61 7c 28 11 5e 2f 	vmovups YMMWORD PTR [rsi+0x5e0],ymm27
  a389e5:	62 f1 7c 48 11 be 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm7
  a389ec:	06 00 00 
  a389ef:	62 f3 7d 48 19 9e 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm3,0x3
  a389f6:	06 00 00 03 
  a389fa:	62 f3 7d 48 19 e8 03 	vextractf32x4 xmm0,zmm5,0x3
  a38a01:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a38a08:	00 
  a38a09:	62 61 7c 28 11 b6 58 	vmovups YMMWORD PTR [rsi+0x658],ymm30
  a38a10:	06 00 00 
  a38a13:	48 89 ec             	mov    rsp,rbp
  a38a16:	5d                   	pop    rbp
  a38a17:	c5 f8 77             	vzeroupper
  a38a1a:	c3                   	ret
