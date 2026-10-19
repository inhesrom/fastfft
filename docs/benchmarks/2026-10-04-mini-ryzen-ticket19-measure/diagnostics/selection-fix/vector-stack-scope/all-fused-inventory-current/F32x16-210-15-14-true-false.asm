
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0db00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0db00:	55                   	push   rbp
  a0db01:	48 89 e5             	mov    rbp,rsp
  a0db04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0db08:	48 81 ec 00 08 00 00 	sub    rsp,0x800
  a0db0f:	c6 84 24 80 07 00 00 	mov    BYTE PTR [rsp+0x780],0x0
  a0db16:	00 
  a0db17:	48 8d 84 24 80 07 00 	lea    rax,[rsp+0x780]
  a0db1e:	00 
  a0db1f:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  a0db26:	00 
  a0db27:	48 8d 84 24 b8 00 00 	lea    rax,[rsp+0xb8]
  a0db2e:	00 
  a0db2f:	62 61 7c 48 10 0f    	vmovups zmm25,ZMMWORD PTR [rdi]
  a0db35:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a0db3a:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a0db3f:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a0db46:	c4 e2 79 18 57 68    	vbroadcastss xmm2,DWORD PTR [rdi+0x68]
  a0db4c:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0db52:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a0db59:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0db60:	b0 3f                	mov    al,0x3f
  a0db62:	c5 fb 92 c8          	kmovd  k1,eax
  a0db66:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0db6c:	62 e1 7c 48 28 1d 4a 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68114a]        # 8ecc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c170>
  a0db73:	11 68 ff 
  a0db76:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a0db7c:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a0db82:	62 e1 7c 48 28 2d 74 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff681174]        # 8ed00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1b0>
  a0db89:	11 68 ff 
  a0db8c:	62 62 55 40 7f c8    	vpermt2ps zmm25,zmm21,zmm0
  a0db92:	62 f1 7c 48 10 a7 70 	vmovups zmm4,ZMMWORD PTR [rdi+0x70]
  a0db99:	00 00 00 
  a0db9c:	c5 f8 10 87 d0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd0]
  a0dba3:	00 
  a0dba4:	c4 e3 79 21 87 d4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xd4],0x10
  a0dbab:	00 00 10 
  a0dbae:	c5 fc 10 8f b0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb0]
  a0dbb5:	00 
  a0dbb6:	c4 e2 79 18 97 d8 00 	vbroadcastss xmm2,DWORD PTR [rdi+0xd8]
  a0dbbd:	00 00 
  a0dbbf:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0dbc5:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x30
  a0dbcc:	00 00 30 
  a0dbcf:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0dbd6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dbdc:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0dbe2:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0dbe8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a0dbef:	01 
  a0dbf0:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0dbf6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a0dbfd:	06 
  a0dbfe:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a0dc05:	00 
  a0dc06:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a0dc0d:	00 00 10 
  a0dc10:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a0dc17:	00 00 
  a0dc19:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0xe0]
  a0dc20:	00 00 00 
  a0dc23:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0dc29:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a0dc30:	00 00 30 
  a0dc33:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a0dc3a:	00 
  a0dc3b:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0dc42:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dc48:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a0dc4e:	62 62 65 40 7f f8    	vpermt2ps zmm31,zmm19,zmm0
  a0dc54:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a0dc5a:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a0dc60:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a0dc67:	15 
  a0dc68:	62 f1 7c 48 10 a7 50 	vmovups zmm4,ZMMWORD PTR [rdi+0x150]
  a0dc6f:	01 00 00 
  a0dc72:	c5 f8 10 87 b0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1b0]
  a0dc79:	00 
  a0dc7a:	c4 e3 79 21 87 b4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1b4],0x10
  a0dc81:	00 00 10 
  a0dc84:	c4 e2 79 18 8f b8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1b8]
  a0dc8b:	00 00 
  a0dc8d:	c5 fc 10 97 90 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x190]
  a0dc94:	00 
  a0dc95:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0dc9b:	c4 e3 79 21 87 bc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1bc],0x30
  a0dca2:	00 00 30 
  a0dca5:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a0dcac:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dcb2:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0dcb8:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0dcbe:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a0dcc4:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0dcca:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a0dcd0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm4
  a0dcd7:	13 
  a0dcd8:	62 f1 7c 48 10 67 07 	vmovups zmm4,ZMMWORD PTR [rdi+0x1c0]
  a0dcdf:	c5 f8 10 87 20 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x220]
  a0dce6:	00 
  a0dce7:	c5 fc 10 8f 00 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  a0dcee:	00 
  a0dcef:	c4 e3 79 21 87 24 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x224],0x10
  a0dcf6:	00 00 10 
  a0dcf9:	c4 e2 79 18 97 28 02 	vbroadcastss xmm2,DWORD PTR [rdi+0x228]
  a0dd00:	00 00 
  a0dd02:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0dd08:	c4 e3 79 21 87 2c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x22c],0x30
  a0dd0f:	00 00 30 
  a0dd12:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0dd19:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dd1f:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0dd25:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0dd2b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a0dd32:	03 
  a0dd33:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0dd39:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a0dd40:	04 
  a0dd41:	62 71 7c 48 10 87 30 	vmovups zmm8,ZMMWORD PTR [rdi+0x230]
  a0dd48:	02 00 00 
  a0dd4b:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a0dd52:	00 
  a0dd53:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a0dd5a:	00 00 10 
  a0dd5d:	c5 fc 10 8f 70 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x270]
  a0dd64:	00 
  a0dd65:	c4 e2 79 18 a7 98 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x298]
  a0dd6c:	00 00 
  a0dd6e:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0dd74:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a0dd7b:	00 00 30 
  a0dd7e:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0dd85:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dd8b:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a0dd91:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a0dd97:	62 72 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm0
  a0dd9d:	c5 f8 10 87 00 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x300]
  a0dda4:	00 
  a0dda5:	c4 e3 79 21 87 04 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x304],0x10
  a0ddac:	00 00 10 
  a0ddaf:	c4 e2 79 18 8f 08 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x308]
  a0ddb6:	00 00 
  a0ddb8:	62 f1 7c 48 10 a7 a0 	vmovups zmm4,ZMMWORD PTR [rdi+0x2a0]
  a0ddbf:	02 00 00 
  a0ddc2:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0ddc8:	c4 e3 79 21 87 0c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x30c],0x30
  a0ddcf:	00 00 30 
  a0ddd2:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a0ddd9:	00 
  a0ddda:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0dde1:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dde7:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0dded:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0ddf3:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a0ddfa:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0de00:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a0de07:	0f 
  a0de08:	62 71 7c 48 10 b7 10 	vmovups zmm14,ZMMWORD PTR [rdi+0x310]
  a0de0f:	03 00 00 
  a0de12:	c5 f8 10 87 70 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x370]
  a0de19:	00 
  a0de1a:	c4 e3 79 21 87 74 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x374],0x10
  a0de21:	00 00 10 
  a0de24:	c4 e2 79 18 8f 78 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x378]
  a0de2b:	00 00 
  a0de2d:	c5 fc 10 a7 50 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x350]
  a0de34:	00 
  a0de35:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0de3b:	c4 e3 79 21 87 7c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x37c],0x30
  a0de42:	00 00 30 
  a0de45:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0de4c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0de52:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a0de58:	62 62 65 40 7f e8    	vpermt2ps zmm29,zmm19,zmm0
  a0de5e:	62 72 55 40 7f f0    	vpermt2ps zmm14,zmm21,zmm0
  a0de64:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a0de6b:	09 
  a0de6c:	62 71 7c 48 10 7f 0e 	vmovups zmm15,ZMMWORD PTR [rdi+0x380]
  a0de73:	c5 f8 10 87 e0 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3e0]
  a0de7a:	00 
  a0de7b:	c5 fc 10 8f c0 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x3c0]
  a0de82:	00 
  a0de83:	c4 e3 79 21 87 e4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3e4],0x10
  a0de8a:	00 00 10 
  a0de8d:	c4 e2 79 18 a7 e8 03 	vbroadcastss xmm4,DWORD PTR [rdi+0x3e8]
  a0de94:	00 00 
  a0de96:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0de9c:	c4 e3 79 21 87 ec 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ec],0x30
  a0dea3:	00 00 30 
  a0dea6:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0dead:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0deb3:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0deb9:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0debf:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a0dec5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a0decc:	11 
  a0decd:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0ded3:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a0ded9:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm15
  a0dee0:	0e 
  a0dee1:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0x3f0]
  a0dee8:	03 00 00 
  a0deeb:	c5 f8 10 87 50 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x450]
  a0def2:	00 
  a0def3:	c4 e3 79 21 87 54 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x454],0x10
  a0defa:	00 00 10 
  a0defd:	c5 fc 10 8f 30 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x430]
  a0df04:	00 
  a0df05:	c4 e2 79 18 a7 58 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x458]
  a0df0c:	00 00 
  a0df0e:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0df14:	c4 e3 79 21 87 5c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x45c],0x30
  a0df1b:	00 00 30 
  a0df1e:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0df25:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0df2b:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0df31:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0df37:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0df3e:	05 
  a0df3f:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0df45:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm15
  a0df4c:	0d 
  a0df4d:	c5 f8 10 87 c0 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x4c0]
  a0df54:	00 
  a0df55:	c4 e3 79 21 87 c4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4c4],0x10
  a0df5c:	00 00 10 
  a0df5f:	c4 e2 79 18 8f c8 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4c8]
  a0df66:	00 00 
  a0df68:	62 61 7c 48 10 97 60 	vmovups zmm26,ZMMWORD PTR [rdi+0x460]
  a0df6f:	04 00 00 
  a0df72:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0df78:	c4 e3 79 21 87 cc 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4cc],0x30
  a0df7f:	00 00 30 
  a0df82:	c5 fc 10 8f a0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4a0]
  a0df89:	00 
  a0df8a:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0df91:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0df97:	62 81 7c 48 28 c2    	vmovaps zmm16,zmm26
  a0df9d:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a0dfa3:	62 62 55 40 7f d0    	vpermt2ps zmm26,zmm21,zmm0
  a0dfa9:	62 71 7c 48 10 8f d0 	vmovups zmm9,ZMMWORD PTR [rdi+0x4d0]
  a0dfb0:	04 00 00 
  a0dfb3:	c5 f8 10 87 30 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x530]
  a0dfba:	00 
  a0dfbb:	c4 e3 79 21 87 34 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x534],0x10
  a0dfc2:	00 00 10 
  a0dfc5:	c4 e2 79 18 8f 38 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x538]
  a0dfcc:	00 00 
  a0dfce:	c5 fc 10 a7 10 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x510]
  a0dfd5:	00 
  a0dfd6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0dfdc:	c4 e3 79 21 87 3c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x53c],0x30
  a0dfe3:	00 00 30 
  a0dfe6:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0dfed:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0dff3:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a0dff9:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a0dfff:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a0e005:	62 71 7c 48 10 7f 15 	vmovups zmm15,ZMMWORD PTR [rdi+0x540]
  a0e00c:	c5 f8 10 87 a0 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x5a0]
  a0e013:	00 
  a0e014:	c5 fc 10 8f 80 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x580]
  a0e01b:	00 
  a0e01c:	c4 e3 79 21 87 a4 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5a4],0x10
  a0e023:	00 00 10 
  a0e026:	c4 e2 79 18 a7 a8 05 	vbroadcastss xmm4,DWORD PTR [rdi+0x5a8]
  a0e02d:	00 00 
  a0e02f:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0e035:	c4 e3 79 21 87 ac 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5ac],0x30
  a0e03c:	00 00 30 
  a0e03f:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0e046:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0e04c:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a0e052:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a0e058:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0e05e:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm15
  a0e065:	14 
  a0e066:	62 e1 7c 48 10 bf b0 	vmovups zmm23,ZMMWORD PTR [rdi+0x5b0]
  a0e06d:	05 00 00 
  a0e070:	c5 f8 10 87 10 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x610]
  a0e077:	00 
  a0e078:	c4 e3 79 21 87 14 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x614],0x10
  a0e07f:	00 00 10 
  a0e082:	c5 fc 10 8f f0 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x5f0]
  a0e089:	00 
  a0e08a:	c4 e2 79 18 a7 18 06 	vbroadcastss xmm4,DWORD PTR [rdi+0x618]
  a0e091:	00 00 
  a0e093:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0e099:	c4 e3 79 21 87 1c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x61c],0x30
  a0e0a0:	00 00 30 
  a0e0a3:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0e0aa:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0e0b0:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a0e0b6:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0e0bc:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0e0c2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a0e0c9:	17 
  a0e0ca:	62 e2 55 40 7f f8    	vpermt2ps zmm23,zmm21,zmm0
  a0e0d0:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a0e0d6:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm23
  a0e0dd:	07 
  a0e0de:	c5 f8 10 87 80 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x680]
  a0e0e5:	00 
  a0e0e6:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x10
  a0e0ed:	00 00 10 
  a0e0f0:	c4 e2 79 18 8f 88 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x688]
  a0e0f7:	00 00 
  a0e0f9:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0e0ff:	c5 fc 10 8f 60 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x660]
  a0e106:	00 
  a0e107:	c4 e3 79 21 87 8c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x68c],0x30
  a0e10e:	00 00 30 
  a0e111:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0e118:	62 f1 7c 48 10 97 20 	vmovups zmm2,ZMMWORD PTR [rdi+0x620]
  a0e11f:	06 00 00 
  a0e122:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0e128:	62 e2 6d 48 77 d8    	vpermi2ps zmm19,zmm2,zmm0
  a0e12e:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a0e134:	62 f1 74 40 58 cf    	vaddps zmm1,zmm17,zmm7
  a0e13a:	62 62 7d 48 18 25 a4 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6675a4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0e141:	75 66 ff 
  a0e144:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0e14a:	62 d2 75 48 a8 c0    	vfmadd213ps zmm0,zmm1,zmm8
  a0e150:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a0e156:	62 e2 7d 48 18 3d e4 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff6674e4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0e15d:	74 66 ff 
  a0e160:	62 f1 3c 48 58 c1    	vaddps zmm0,zmm8,zmm1
  a0e166:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a0e16d:	0c 
  a0e16e:	62 72 45 40 bc c1    	vfnmadd231ps zmm8,zmm23,zmm1
  a0e174:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm8
  a0e17b:	0a 
  a0e17c:	62 d1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm14
  a0e182:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0e188:	62 92 75 48 a8 c2    	vfmadd213ps zmm0,zmm1,zmm26
  a0e18e:	62 f1 2c 40 58 e1    	vaddps zmm4,zmm26,zmm1
  a0e194:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a0e19b:	08 
  a0e19c:	62 62 45 40 bc d1    	vfnmadd231ps zmm26,zmm23,zmm1
  a0e1a2:	62 d1 2c 48 58 cf    	vaddps zmm1,zmm10,zmm15
  a0e1a8:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0e1ae:	62 92 75 48 a8 e1    	vfmadd213ps zmm4,zmm1,zmm25
  a0e1b4:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a0e1ba:	62 f1 34 40 58 e1    	vaddps zmm4,zmm25,zmm1
  a0e1c0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm4
  a0e1c7:	12 
  a0e1c8:	62 62 45 40 bc c9    	vfnmadd231ps zmm25,zmm23,zmm1
  a0e1ce:	62 91 24 48 58 cf    	vaddps zmm1,zmm11,zmm31
  a0e1d4:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a0e1da:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a0e1e0:	62 42 75 48 a8 f5    	vfmadd213ps zmm30,zmm1,zmm13
  a0e1e6:	62 f1 14 48 58 e1    	vaddps zmm4,zmm13,zmm1
  a0e1ec:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm4
  a0e1f3:	10 
  a0e1f4:	62 e2 45 40 bc f1    	vfnmadd231ps zmm22,zmm23,zmm1
  a0e1fa:	62 91 4c 48 58 cd    	vaddps zmm1,zmm6,zmm29
  a0e200:	62 11 7c 48 28 dc    	vmovaps zmm11,zmm28
  a0e206:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a0e20c:	62 32 75 48 a8 d8    	vfmadd213ps zmm11,zmm1,zmm16
  a0e212:	62 f1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm1
  a0e218:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm4
  a0e21f:	1d 
  a0e220:	62 e2 45 40 bc e9    	vfnmadd231ps zmm21,zmm23,zmm1
  a0e226:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a0e22c:	62 91 24 40 58 c8    	vaddps zmm1,zmm27,zmm24
  a0e232:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0e238:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a0e23e:	62 f2 75 48 a8 f3    	vfmadd213ps zmm6,zmm1,zmm3
  a0e244:	62 61 64 48 58 d9    	vaddps zmm27,zmm3,zmm1
  a0e24a:	62 32 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm23
  a0e250:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a0e256:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a0e25c:	62 f1 34 48 58 ca    	vaddps zmm1,zmm9,zmm2
  a0e262:	62 a2 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm23
  a0e268:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm17
  a0e26f:	19 
  a0e270:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x180]
  a0e277:	06 
  a0e278:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x100]
  a0e27f:	04 
  a0e280:	62 d1 74 40 58 e5    	vaddps zmm4,zmm17,zmm13
  a0e286:	62 b2 5d 48 bc c7    	vfnmadd231ps zmm0,zmm4,zmm23
  a0e28c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a0e293:	18 
  a0e294:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x3c0]
  a0e29b:	0f 
  a0e29c:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x340]
  a0e2a3:	0d 
  a0e2a4:	62 b1 5c 40 58 d2    	vaddps zmm2,zmm20,zmm18
  a0e2aa:	62 32 6d 48 bc c7    	vfnmadd231ps zmm8,zmm2,zmm23
  a0e2b0:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a0e2b7:	0b 
  a0e2b8:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0e2be:	62 b1 54 48 58 db    	vaddps zmm3,zmm5,zmm19
  a0e2c4:	62 22 65 48 bc f7    	vfnmadd231ps zmm30,zmm3,zmm23
  a0e2ca:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a0e2d1:	01 
  a0e2d2:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a0e2d9:	03 
  a0e2da:	62 d1 34 48 58 e8    	vaddps zmm5,zmm9,zmm8
  a0e2e0:	62 32 55 48 bc df    	vfnmadd231ps zmm11,zmm5,zmm23
  a0e2e6:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm11
  a0e2ed:	16 
  a0e2ee:	62 71 7c 48 28 1c 24 	vmovaps zmm11,ZMMWORD PTR [rsp]
  a0e2f5:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a0e2fc:	05 
  a0e2fd:	62 f1 24 48 58 c7    	vaddps zmm0,zmm11,zmm7
  a0e303:	62 b2 7d 48 bc f7    	vfnmadd231ps zmm6,zmm0,zmm23
  a0e309:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm6
  a0e310:	1c 
  a0e311:	62 f1 74 48 58 74 24 	vaddps zmm6,zmm1,ZMMWORD PTR [rsp+0x300]
  a0e318:	0c 
  a0e319:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a0e320:	1b 
  a0e321:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x280]
  a0e328:	0a 
  a0e329:	62 e2 1d 40 b8 f9    	vfmadd231ps zmm23,zmm28,zmm1
  a0e32f:	62 f1 5c 48 58 4c 24 	vaddps zmm1,zmm4,ZMMWORD PTR [rsp+0x200]
  a0e336:	08 
  a0e337:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a0e33e:	1a 
  a0e33f:	62 62 1d 40 b8 d4    	vfmadd231ps zmm26,zmm28,zmm4
  a0e345:	62 f1 6c 48 58 4c 24 	vaddps zmm1,zmm2,ZMMWORD PTR [rsp+0x480]
  a0e34c:	12 
  a0e34d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a0e354:	12 
  a0e355:	62 62 1d 40 b8 ca    	vfmadd231ps zmm25,zmm28,zmm2
  a0e35b:	62 f1 64 48 58 4c 24 	vaddps zmm1,zmm3,ZMMWORD PTR [rsp+0x400]
  a0e362:	10 
  a0e363:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a0e36a:	0c 
  a0e36b:	62 e2 1d 40 b8 f3    	vfmadd231ps zmm22,zmm28,zmm3
  a0e371:	62 f1 24 40 58 c8    	vaddps zmm1,zmm27,zmm0
  a0e377:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a0e37e:	0a 
  a0e37f:	62 12 7d 48 b8 e4    	vfmadd231ps zmm12,zmm0,zmm28
  a0e385:	62 e2 1d 40 b8 ed    	vfmadd231ps zmm21,zmm28,zmm5
  a0e38b:	62 f1 54 48 58 44 24 	vaddps zmm0,zmm5,ZMMWORD PTR [rsp+0x740]
  a0e392:	1d 
  a0e393:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a0e39a:	08 
  a0e39b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a0e3a2:	11 
  a0e3a3:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a0e3a9:	62 b1 2c 48 5c d3    	vsubps zmm2,zmm10,zmm19
  a0e3af:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a0e3b6:	17 
  a0e3b7:	62 91 74 48 5c e5    	vsubps zmm4,zmm1,zmm29
  a0e3bd:	62 d1 34 48 5c e8    	vsubps zmm5,zmm9,zmm8
  a0e3c3:	62 01 7c 40 5c d8    	vsubps zmm27,zmm16,zmm24
  a0e3c9:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a0e3cf:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a0e3d6:	0e 
  a0e3d7:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x540]
  a0e3de:	15 
  a0e3df:	62 51 04 48 5c de    	vsubps zmm11,zmm15,zmm14
  a0e3e5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0e3ec:	07 
  a0e3ed:	62 e1 74 48 5c 44 24 	vsubps zmm16,zmm1,ZMMWORD PTR [rsp+0x240]
  a0e3f4:	09 
  a0e3f5:	62 c1 74 40 5c dd    	vsubps zmm19,zmm17,zmm13
  a0e3fb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a0e402:	13 
  a0e403:	62 61 74 48 5c 44 24 	vsubps zmm24,zmm1,ZMMWORD PTR [rsp+0x500]
  a0e40a:	14 
  a0e40b:	62 62 7d 48 18 25 43 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff667343]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0e412:	73 66 ff 
  a0e415:	62 21 5c 40 5c ea    	vsubps zmm29,zmm20,zmm18
  a0e41b:	62 11 6c 48 59 cc    	vmulps zmm9,zmm2,zmm28
  a0e421:	62 f2 7d 48 18 35 75 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff666f75]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0e428:	6f 66 ff 
  a0e42b:	62 72 7d 48 b8 ce    	vfmadd231ps zmm9,zmm0,zmm6
  a0e431:	62 91 7c 48 59 dc    	vmulps zmm3,zmm0,zmm28
  a0e437:	62 f2 4d 48 bc da    	vfnmadd231ps zmm3,zmm6,zmm2
  a0e43d:	62 11 54 48 59 fc    	vmulps zmm15,zmm5,zmm28
  a0e443:	62 72 5d 48 b8 fe    	vfmadd231ps zmm15,zmm4,zmm6
  a0e449:	62 91 5c 48 59 d4    	vmulps zmm2,zmm4,zmm28
  a0e44f:	62 f2 4d 48 bc d5    	vfnmadd231ps zmm2,zmm6,zmm5
  a0e455:	62 81 44 48 59 cc    	vmulps zmm17,zmm7,zmm28
  a0e45b:	62 e2 25 40 b8 ce    	vfmadd231ps zmm17,zmm27,zmm6
  a0e461:	62 91 24 40 59 ec    	vmulps zmm5,zmm27,zmm28
  a0e467:	62 f2 4d 48 bc ef    	vfnmadd231ps zmm5,zmm6,zmm7
  a0e46d:	62 01 24 48 59 dc    	vmulps zmm27,zmm11,zmm28
  a0e473:	62 62 3d 48 b8 de    	vfmadd231ps zmm27,zmm8,zmm6
  a0e479:	62 91 3c 48 59 cc    	vmulps zmm1,zmm8,zmm28
  a0e47f:	62 d2 4d 48 bc cb    	vfnmadd231ps zmm1,zmm6,zmm11
  a0e485:	62 01 64 40 59 fc    	vmulps zmm31,zmm19,zmm28
  a0e48b:	62 62 7d 40 b8 fe    	vfmadd231ps zmm31,zmm16,zmm6
  a0e491:	62 91 7c 40 59 c4    	vmulps zmm0,zmm16,zmm28
  a0e497:	62 b2 4d 48 bc c3    	vfnmadd231ps zmm0,zmm6,zmm19
  a0e49d:	62 11 14 40 59 f4    	vmulps zmm14,zmm29,zmm28
  a0e4a3:	62 72 3d 40 b8 f6    	vfmadd231ps zmm14,zmm24,zmm6
  a0e4a9:	62 91 3c 40 59 fc    	vmulps zmm7,zmm24,zmm28
  a0e4af:	62 f2 15 40 bc fe    	vfnmadd231ps zmm7,zmm29,zmm6
  a0e4b5:	62 91 0c 40 5c e3    	vsubps zmm4,zmm30,zmm27
  a0e4bb:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x580]
  a0e4c2:	16 
  a0e4c3:	62 91 3c 40 5c f7    	vsubps zmm6,zmm24,zmm31
  a0e4c9:	62 71 5c 48 5c c6    	vsubps zmm8,zmm4,zmm6
  a0e4cf:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a0e4d6:	03 
  a0e4d7:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a0e4dd:	62 f1 7c 48 29 24 24 	vmovaps ZMMWORD PTR [rsp],zmm4
  a0e4e4:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x640]
  a0e4eb:	19 
  a0e4ec:	62 d1 2c 48 58 f1    	vaddps zmm6,zmm10,zmm9
  a0e4f2:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x600]
  a0e4f9:	18 
  a0e4fa:	62 c1 5c 40 58 c7    	vaddps zmm16,zmm20,zmm15
  a0e500:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0e506:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm4
  a0e50d:	0e 
  a0e50e:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0e514:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a0e51b:	04 
  a0e51c:	62 f1 4c 40 5c f1    	vsubps zmm6,zmm22,zmm1
  a0e522:	62 e1 54 40 5c c0    	vsubps zmm16,zmm21,zmm0
  a0e528:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0e52e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a0e535:	05 
  a0e536:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0e53c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a0e543:	0f 
  a0e544:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a0e54a:	62 e1 2c 40 58 c2    	vaddps zmm16,zmm26,zmm2
  a0e550:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0e556:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a0e55d:	09 
  a0e55e:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0e564:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a0e56b:	07 
  a0e56c:	62 f1 34 40 58 e5    	vaddps zmm4,zmm25,zmm5
  a0e572:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm4
  a0e579:	14 
  a0e57a:	62 f1 34 40 5c e5    	vsubps zmm4,zmm25,zmm5
  a0e580:	62 f1 44 40 5c f3    	vsubps zmm6,zmm23,zmm3
  a0e586:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm6
  a0e58d:	10 
  a0e58e:	62 71 2c 40 5c c2    	vsubps zmm8,zmm26,zmm2
  a0e594:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a0e59b:	11 
  a0e59c:	62 f1 1c 48 5c d7    	vsubps zmm2,zmm12,zmm7
  a0e5a2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm2
  a0e5a9:	13 
  a0e5aa:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a0e5b0:	62 21 74 48 58 ee    	vaddps zmm29,zmm1,zmm22
  a0e5b6:	62 a1 7c 48 58 dd    	vaddps zmm19,zmm0,zmm21
  a0e5bc:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x6c0]
  a0e5c3:	1b 
  a0e5c4:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x680]
  a0e5cb:	1a 
  a0e5cc:	62 31 4c 40 58 d8    	vaddps zmm11,zmm22,zmm16
  a0e5d2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a0e5d9:	12 
  a0e5da:	62 d1 74 48 58 c3    	vaddps zmm0,zmm1,zmm11
  a0e5e0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a0e5e7:	0d 
  a0e5e8:	62 62 7d 48 18 25 6e 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff666e6e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0e5ef:	6e 66 ff 
  a0e5f2:	62 72 1d 40 ac d9    	vfnmadd213ps zmm11,zmm28,zmm1
  a0e5f8:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a0e5ff:	0c 
  a0e600:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a0e607:	08 
  a0e608:	62 f1 54 48 58 d3    	vaddps zmm2,zmm5,zmm3
  a0e60e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a0e615:	0a 
  a0e616:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a0e61c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0e623:	01 
  a0e624:	62 f2 1d 40 ac d1    	vfnmadd213ps zmm2,zmm28,zmm1
  a0e62a:	62 51 4c 48 58 e8    	vaddps zmm13,zmm6,zmm8
  a0e630:	62 d1 5c 48 58 c5    	vaddps zmm0,zmm4,zmm13
  a0e636:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a0e63d:	0a 
  a0e63e:	62 72 1d 40 ac ec    	vfnmadd213ps zmm13,zmm28,zmm4
  a0e644:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0e64a:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a0e650:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0e656:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a0e65c:	62 21 14 40 58 d3    	vaddps zmm26,zmm29,zmm19
  a0e662:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0e668:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a0e66e:	62 62 2d 40 ac e7    	vfnmadd213ps zmm28,zmm26,zmm7
  a0e674:	62 91 44 48 58 fa    	vaddps zmm7,zmm7,zmm26
  a0e67a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a0e681:	06 
  a0e682:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a0e688:	62 51 5c 40 5c cf    	vsubps zmm9,zmm20,zmm15
  a0e68e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a0e695:	0b 
  a0e696:	62 a1 2c 48 58 e1    	vaddps zmm20,zmm10,zmm17
  a0e69c:	62 21 2c 48 5c c9    	vsubps zmm25,zmm10,zmm17
  a0e6a2:	62 11 24 40 58 d6    	vaddps zmm10,zmm27,zmm30
  a0e6a8:	62 11 04 40 58 e0    	vaddps zmm12,zmm31,zmm24
  a0e6ae:	62 c1 2c 48 5c d4    	vsubps zmm18,zmm10,zmm12
  a0e6b4:	62 41 2c 48 58 f4    	vaddps zmm30,zmm10,zmm12
  a0e6ba:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x700]
  a0e6c1:	1c 
  a0e6c2:	62 51 1c 48 5c d6    	vsubps zmm10,zmm12,zmm14
  a0e6c8:	62 c1 0c 48 58 ec    	vaddps zmm21,zmm14,zmm12
  a0e6ce:	62 41 44 48 58 f9    	vaddps zmm31,zmm7,zmm9
  a0e6d4:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a0e6da:	62 71 54 48 5c cb    	vsubps zmm9,zmm5,zmm3
  a0e6e0:	62 a1 4c 40 5c c8    	vsubps zmm17,zmm22,zmm16
  a0e6e6:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a0e6ed:	0e 
  a0e6ee:	62 b2 65 48 ac e4    	vfnmadd213ps zmm4,zmm3,zmm20
  a0e6f4:	62 61 5c 40 58 db    	vaddps zmm27,zmm20,zmm3
  a0e6fa:	62 f1 7c 48 28 1c 24 	vmovaps zmm3,ZMMWORD PTR [rsp]
  a0e701:	62 c2 65 48 ac fa    	vfnmadd213ps zmm23,zmm3,zmm10
  a0e707:	62 71 2c 48 58 d3    	vaddps zmm10,zmm10,zmm3
  a0e70d:	62 71 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm10
  a0e714:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x240]
  a0e71b:	09 
  a0e71c:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x500]
  a0e723:	14 
  a0e724:	62 d2 05 48 ac c6    	vfnmadd213ps zmm0,zmm15,zmm14
  a0e72a:	62 62 7d 48 18 05 a0 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff666ba0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0e731:	6b 66 ff 
  a0e734:	62 71 3c 40 59 54 24 	vmulps zmm10,zmm24,ZMMWORD PTR [rsp+0x140]
  a0e73b:	05 
  a0e73c:	62 c1 7c 48 5c e2    	vsubps zmm20,zmm0,zmm10
  a0e742:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a0e748:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a0e74f:	15 
  a0e750:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x3c0]
  a0e757:	0f 
  a0e758:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x4c0]
  a0e75f:	13 
  a0e760:	62 f2 1d 48 ac cd    	vfnmadd213ps zmm1,zmm12,zmm5
  a0e766:	62 f1 3c 40 59 44 24 	vmulps zmm0,zmm24,ZMMWORD PTR [rsp+0x1c0]
  a0e76d:	07 
  a0e76e:	62 61 74 48 58 d0    	vaddps zmm26,zmm1,zmm0
  a0e774:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a0e77a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a0e781:	05 
  a0e782:	62 b1 14 40 5c c3    	vsubps zmm0,zmm29,zmm19
  a0e788:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a0e78f:	10 
  a0e790:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x440]
  a0e797:	11 
  a0e798:	62 e1 3c 40 59 44 24 	vmulps zmm16,zmm24,ZMMWORD PTR [rsp+0xc0]
  a0e79f:	03 
  a0e7a0:	62 e1 3c 40 59 5c 24 	vmulps zmm19,zmm24,ZMMWORD PTR [rsp+0x100]
  a0e7a7:	04 
  a0e7a8:	62 81 6c 40 59 f0    	vmulps zmm22,zmm18,zmm24
  a0e7ae:	62 91 44 48 59 d8    	vmulps zmm3,zmm7,zmm24
  a0e7b4:	62 91 34 48 59 f8    	vmulps zmm7,zmm9,zmm24
  a0e7ba:	62 11 74 40 59 c8    	vmulps zmm9,zmm17,zmm24
  a0e7c0:	62 91 7c 48 59 c0    	vmulps zmm0,zmm0,zmm24
  a0e7c6:	62 91 74 48 59 c8    	vmulps zmm1,zmm1,zmm24
  a0e7cc:	62 92 05 40 ac f1    	vfnmadd213ps zmm6,zmm31,zmm25
  a0e7d2:	62 01 34 40 58 ff    	vaddps zmm31,zmm25,zmm31
  a0e7d8:	62 32 0d 40 ac c5    	vfnmadd213ps zmm8,zmm30,zmm21
  a0e7de:	62 01 54 40 58 c6    	vaddps zmm24,zmm21,zmm30
  a0e7e4:	62 61 24 48 5c cf    	vsubps zmm25,zmm11,zmm7
  a0e7ea:	62 61 24 48 58 f7    	vaddps zmm30,zmm11,zmm7
  a0e7f0:	62 f1 34 48 58 fa    	vaddps zmm7,zmm9,zmm2
  a0e7f6:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a0e7fd:	03 
  a0e7fe:	62 c1 6c 48 5c c9    	vsubps zmm17,zmm2,zmm9
  a0e804:	62 71 7c 40 58 d4    	vaddps zmm10,zmm16,zmm4
  a0e80a:	62 31 5c 48 5c c8    	vsubps zmm9,zmm4,zmm16
  a0e810:	62 31 44 40 5c db    	vsubps zmm11,zmm23,zmm19
  a0e816:	62 b1 44 40 58 d3    	vaddps zmm2,zmm23,zmm19
  a0e81c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a0e823:	0e 
  a0e824:	62 d1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm15
  a0e82a:	62 71 4c 40 58 fe    	vaddps zmm15,zmm22,zmm6
  a0e830:	62 d1 54 48 58 e4    	vaddps zmm4,zmm5,zmm12
  a0e836:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a0e83d:	04 
  a0e83e:	62 e1 14 48 5c d8    	vsubps zmm19,zmm13,zmm0
  a0e844:	62 f1 14 48 58 e0    	vaddps zmm4,zmm13,zmm0
  a0e84a:	62 61 1c 40 58 e9    	vaddps zmm29,zmm28,zmm1
  a0e850:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a0e856:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a0e85d:	0f 
  a0e85e:	62 71 3c 48 5c e3    	vsubps zmm12,zmm8,zmm3
  a0e864:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a0e86a:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a0e870:	62 f1 7c 48 28 05 06 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b8706]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0e877:	87 6b ff 
  a0e87a:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x340]
  a0e881:	0d 
  a0e882:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a0e888:	62 32 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm19
  a0e88e:	62 e1 7c 48 28 05 28 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b8728]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0e895:	87 6b ff 
  a0e898:	62 22 7d 40 7f e3    	vpermt2ps zmm28,zmm16,zmm19
  a0e89e:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a0e8a4:	62 82 7d 48 7f df    	vpermt2ps zmm19,zmm0,zmm31
  a0e8aa:	62 12 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm31
  a0e8b0:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a0e8b6:	62 82 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm30
  a0e8bc:	62 82 7d 40 7f e6    	vpermt2ps zmm20,zmm16,zmm30
  a0e8c2:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x280]
  a0e8c9:	0a 
  a0e8ca:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a0e8d0:	62 c2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm9
  a0e8d6:	62 c2 7d 40 7f d1    	vpermt2ps zmm18,zmm16,zmm9
  a0e8dc:	62 41 7c 48 28 f7    	vmovaps zmm30,zmm15
  a0e8e2:	62 62 7d 48 7f f2    	vpermt2ps zmm30,zmm0,zmm2
  a0e8e8:	62 72 7d 40 7f fa    	vpermt2ps zmm15,zmm16,zmm2
  a0e8ee:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a0e8f4:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a0e8fa:	62 62 7d 40 7f cc    	vpermt2ps zmm25,zmm16,zmm4
  a0e900:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a0e906:	62 72 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm1
  a0e90c:	62 62 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm1
  a0e912:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x40]
  a0e919:	01 
  a0e91a:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a0e920:	62 92 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm29
  a0e926:	62 12 7d 40 7f ed    	vpermt2ps zmm13,zmm16,zmm29
  a0e92c:	62 41 7c 48 28 eb    	vmovaps zmm29,zmm11
  a0e932:	62 02 7d 48 7f e8    	vpermt2ps zmm29,zmm0,zmm24
  a0e938:	62 12 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm24
  a0e93e:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm11
  a0e945:	0c 
  a0e946:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a0e94c:	62 22 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm17
  a0e952:	62 b2 7d 40 7f c9    	vpermt2ps zmm1,zmm16,zmm17
  a0e958:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a0e95f:	0d 
  a0e960:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a0e967:	06 
  a0e968:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a0e96e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a0e975:	0e 
  a0e976:	62 e2 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm2
  a0e97c:	62 f2 7d 40 7f ca    	vpermt2ps zmm1,zmm16,zmm2
  a0e982:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a0e989:	06 
  a0e98a:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a0e990:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a0e997:	04 
  a0e998:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a0e99e:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a0e9a4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a0e9ab:	03 
  a0e9ac:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a0e9b2:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a0e9b9:	0f 
  a0e9ba:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  a0e9c0:	62 f2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm5
  a0e9c6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a0e9cd:	03 
  a0e9ce:	62 f1 7c 48 28 0c 24 	vmovaps zmm1,ZMMWORD PTR [rsp]
  a0e9d5:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0e9db:	62 f2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm3
  a0e9e1:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a0e9e7:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a0e9ee:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0e9f2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x540]
  a0e9f9:	15 
  a0e9fa:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a0ea00:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0ea06:	62 f2 7d 40 7f d9    	vpermt2ps zmm3,zmm16,zmm1
  a0ea0c:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a0ea12:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x140]
  a0ea19:	05 
  a0ea1a:	62 f2 3d 40 77 c1    	vpermi2ps zmm0,zmm24,zmm1
  a0ea20:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a0ea26:	62 e1 7c 48 28 05 d0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b84d0]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0ea2d:	84 6b ff 
  a0ea30:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a0ea36:	62 92 7d 40 7f de    	vpermt2ps zmm3,zmm16,zmm30
  a0ea3c:	62 f1 7c 48 28 2d fa 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b84fa]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0ea43:	84 6b ff 
  a0ea46:	62 12 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm30
  a0ea4c:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a0ea52:	62 02 7d 40 7f f7    	vpermt2ps zmm30,zmm16,zmm31
  a0ea58:	62 82 55 48 7f df    	vpermt2ps zmm19,zmm5,zmm31
  a0ea5e:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a0ea64:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a0ea6a:	62 c2 55 48 7f e9    	vpermt2ps zmm21,zmm5,zmm9
  a0ea70:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a0ea76:	62 32 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm22
  a0ea7c:	62 a2 55 48 7f fe    	vpermt2ps zmm23,zmm5,zmm22
  a0ea82:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a0ea88:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a0ea8e:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a0ea94:	62 c2 55 48 7f f7    	vpermt2ps zmm22,zmm5,zmm15
  a0ea9a:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a0eaa0:	62 12 7d 40 7f c1    	vpermt2ps zmm8,zmm16,zmm25
  a0eaa6:	62 12 55 48 7f d1    	vpermt2ps zmm10,zmm5,zmm25
  a0eaac:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a0eab2:	62 12 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm27
  a0eab8:	62 82 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm27
  a0eabe:	62 a1 cd 40 14 e4    	vunpcklpd zmm20,zmm22,zmm20
  a0eac4:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm20
  a0eacb:	01 
  a0eacc:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a0ead2:	62 42 7d 40 7f db    	vpermt2ps zmm27,zmm16,zmm11
  a0ead8:	62 c2 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm11
  a0eade:	62 31 ad 48 14 da    	vunpcklpd zmm11,zmm10,zmm18
  a0eae4:	62 81 e5 48 14 d7    	vunpcklpd zmm18,zmm3,zmm31
  a0eaea:	62 81 e5 48 15 f7    	vunpckhpd zmm22,zmm3,zmm31
  a0eaf0:	62 d1 8d 40 14 d9    	vunpcklpd zmm3,zmm30,zmm9
  a0eaf6:	62 51 8d 40 15 c9    	vunpckhpd zmm9,zmm30,zmm9
  a0eafc:	62 21 8d 48 14 fd    	vunpcklpd zmm31,zmm14,zmm21
  a0eb02:	62 a1 8d 48 15 ed    	vunpckhpd zmm21,zmm14,zmm21
  a0eb08:	62 31 e5 40 14 f7    	vunpcklpd zmm14,zmm19,zmm23
  a0eb0e:	62 a1 e5 40 15 e7    	vunpckhpd zmm20,zmm19,zmm23
  a0eb14:	62 c1 f5 48 14 ff    	vunpcklpd zmm23,zmm1,zmm15
  a0eb1a:	62 d1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm15
  a0eb20:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0eb27:	05 
  a0eb28:	62 81 bd 48 14 db    	vunpcklpd zmm19,zmm8,zmm27
  a0eb2e:	62 11 bd 48 15 d3    	vunpckhpd zmm10,zmm8,zmm27
  a0eb34:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a0eb3a:	62 62 7d 40 7f e2    	vpermt2ps zmm28,zmm16,zmm2
  a0eb40:	62 f2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm2
  a0eb46:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a0eb4c:	62 f2 7d 40 7f d4    	vpermt2ps zmm2,zmm16,zmm4
  a0eb52:	62 62 55 48 7f ec    	vpermt2ps zmm29,zmm5,zmm4
  a0eb58:	62 01 7c 48 28 ca    	vmovaps zmm25,zmm26
  a0eb5e:	62 62 7d 40 7f ce    	vpermt2ps zmm25,zmm16,zmm6
  a0eb64:	62 62 55 48 7f d6    	vpermt2ps zmm26,zmm5,zmm6
  a0eb6a:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a0eb70:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a0eb76:	62 e2 55 48 7f c8    	vpermt2ps zmm17,zmm5,zmm0
  a0eb7c:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a0eb82:	62 d2 7d 40 7f e4    	vpermt2ps zmm4,zmm16,zmm12
  a0eb88:	62 52 55 48 7f ec    	vpermt2ps zmm13,zmm5,zmm12
  a0eb8e:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x300]
  a0eb95:	0c 
  a0eb96:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a0eb9c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a0eba3:	03 
  a0eba4:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a0ebaa:	62 62 55 48 7f f1    	vpermt2ps zmm30,zmm5,zmm1
  a0ebb0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a0ebb7:	0d 
  a0ebb8:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a0ebbe:	62 71 7c 48 28 04 24 	vmovaps zmm8,ZMMWORD PTR [rsp]
  a0ebc5:	62 d2 7d 40 7f c0    	vpermt2ps zmm0,zmm16,zmm8
  a0ebcb:	62 d2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm8
  a0ebd1:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a0ebd7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a0ebde:	06 
  a0ebdf:	62 82 75 48 77 c0    	vpermi2ps zmm16,zmm1,zmm24
  a0ebe5:	62 92 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm24
  a0ebeb:	62 f1 7c 48 28 2d 0b 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b820b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0ebf2:	82 6b ff 
  a0ebf5:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a0ebfb:	62 72 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm3
  a0ec01:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a0ec08:	0b 
  a0ec09:	62 71 7c 48 28 3d 2d 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b822d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0ec10:	82 6b ff 
  a0ec13:	62 e2 05 48 7f d3    	vpermt2ps zmm18,zmm15,zmm3
  a0ec19:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm18
  a0ec20:	07 
  a0ec21:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a0ec27:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a0ec2d:	62 c2 05 48 7f f1    	vpermt2ps zmm22,zmm15,zmm9
  a0ec33:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm22
  a0ec3a:	09 
  a0ec3b:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a0ec41:	62 52 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm14
  a0ec47:	62 42 05 48 7f fe    	vpermt2ps zmm31,zmm15,zmm14
  a0ec4d:	62 61 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm31
  a0ec54:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a0ec5a:	62 a2 55 48 7f ec    	vpermt2ps zmm21,zmm5,zmm20
  a0ec60:	62 22 05 48 7f c4    	vpermt2ps zmm24,zmm15,zmm20
  a0ec66:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a0ec6c:	62 a2 55 48 7f f3    	vpermt2ps zmm22,zmm5,zmm19
  a0ec72:	62 a2 05 48 7f fb    	vpermt2ps zmm23,zmm15,zmm19
  a0ec78:	62 21 7c 48 28 ff    	vmovaps zmm31,zmm23
  a0ec7e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a0ec85:	05 
  a0ec86:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a0ec8c:	62 c2 55 48 7f da    	vpermt2ps zmm19,zmm5,zmm10
  a0ec92:	62 d2 05 48 7f da    	vpermt2ps zmm3,zmm15,zmm10
  a0ec98:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a0ec9e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a0eca5:	01 
  a0eca6:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a0ecac:	62 52 55 48 7f d3    	vpermt2ps zmm10,zmm5,zmm11
  a0ecb2:	62 d2 05 48 7f db    	vpermt2ps zmm3,zmm15,zmm11
  a0ecb8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a0ecbf:	01 
  a0ecc0:	62 01 95 48 14 db    	vunpcklpd zmm27,zmm13,zmm27
  a0ecc6:	62 e1 8d 40 14 e1    	vunpcklpd zmm20,zmm30,zmm1
  a0eccc:	62 11 9d 40 14 e9    	vunpcklpd zmm13,zmm28,zmm25
  a0ecd2:	62 81 9d 40 15 d1    	vunpckhpd zmm18,zmm28,zmm25
  a0ecd8:	62 71 ed 48 14 de    	vunpcklpd zmm11,zmm2,zmm6
  a0ecde:	62 f1 ed 48 15 f6    	vunpckhpd zmm6,zmm2,zmm6
  a0ece4:	62 91 c5 48 14 ca    	vunpcklpd zmm1,zmm7,zmm26
  a0ecea:	62 91 c5 48 15 da    	vunpckhpd zmm3,zmm7,zmm26
  a0ecf0:	62 b1 95 40 14 f9    	vunpcklpd zmm7,zmm29,zmm17
  a0ecf6:	62 a1 95 40 15 c9    	vunpckhpd zmm17,zmm29,zmm17
  a0ecfc:	62 f1 dd 48 14 d0    	vunpcklpd zmm2,zmm4,zmm0
  a0ed02:	62 61 dd 48 15 c8    	vunpckhpd zmm25,zmm4,zmm0
  a0ed08:	62 b1 9d 48 14 c0    	vunpcklpd zmm0,zmm12,zmm16
  a0ed0e:	62 b1 9d 48 15 e0    	vunpckhpd zmm4,zmm12,zmm16
  a0ed14:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0ed1a:	62 52 55 48 7f e3    	vpermt2ps zmm12,zmm5,zmm11
  a0ed20:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a0ed27:	04 
  a0ed28:	62 52 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm11
  a0ed2e:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a0ed34:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a0ed3a:	62 e2 05 48 7f d6    	vpermt2ps zmm18,zmm15,zmm6
  a0ed40:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a0ed46:	62 72 55 48 7f df    	vpermt2ps zmm11,zmm5,zmm7
  a0ed4c:	62 f2 05 48 7f cf    	vpermt2ps zmm1,zmm15,zmm7
  a0ed52:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a0ed58:	62 32 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm17
  a0ed5e:	62 b2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm17
  a0ed64:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a0ed6a:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a0ed70:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a0ed76:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a0ed7c:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a0ed82:	62 62 05 48 7f cc    	vpermt2ps zmm25,zmm15,zmm4
  a0ed88:	62 b2 25 40 77 ec    	vpermi2ps zmm5,zmm27,zmm20
  a0ed8e:	62 22 05 48 7f dc    	vpermt2ps zmm27,zmm15,zmm20
  a0ed94:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a0ed9b:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a0eda2:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  a0eda9:	62 b1 3c 48 59 e4    	vmulps zmm4,zmm8,zmm20
  a0edaf:	62 b2 7d 40 bc e1    	vfnmadd231ps zmm4,zmm16,zmm17
  a0edb5:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a0edbb:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a0edc2:	0a 
  a0edc3:	62 b1 7c 40 59 fc    	vmulps zmm7,zmm16,zmm20
  a0edc9:	62 f1 7c 48 10 62 18 	vmovups zmm4,ZMMWORD PTR [rdx+0x600]
  a0edd0:	62 d2 75 40 b8 f8    	vfmadd231ps zmm7,zmm17,zmm8
  a0edd6:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a0eddd:	06 
  a0edde:	62 f1 7c 48 10 7a 19 	vmovups zmm7,ZMMWORD PTR [rdx+0x640]
  a0ede5:	62 71 2c 48 59 c4    	vmulps zmm8,zmm10,zmm4
  a0edeb:	62 72 55 48 bc c7    	vfnmadd231ps zmm8,zmm5,zmm7
  a0edf1:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm8
  a0edf8:	1c 
  a0edf9:	62 f1 54 48 59 ec    	vmulps zmm5,zmm5,zmm4
  a0edff:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a0ee06:	62 d2 45 48 b8 ea    	vfmadd231ps zmm5,zmm7,zmm10
  a0ee0c:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0ee12:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a0ee19:	11 
  a0ee1a:	62 f1 7c 48 10 6a 09 	vmovups zmm5,ZMMWORD PTR [rdx+0x240]
  a0ee21:	62 f1 34 48 59 fc    	vmulps zmm7,zmm9,zmm4
  a0ee27:	62 f2 25 48 bc fd    	vfnmadd231ps zmm7,zmm11,zmm5
  a0ee2d:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a0ee34:	03 
  a0ee35:	62 f1 24 48 59 fc    	vmulps zmm7,zmm11,zmm4
  a0ee3b:	62 f1 7c 48 10 62 14 	vmovups zmm4,ZMMWORD PTR [rdx+0x500]
  a0ee42:	62 d2 55 48 b8 f9    	vfmadd231ps zmm7,zmm5,zmm9
  a0ee48:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a0ee4f:	0f 
  a0ee50:	62 f1 7c 48 10 6a 15 	vmovups zmm5,ZMMWORD PTR [rdx+0x540]
  a0ee57:	62 f1 64 40 59 fc    	vmulps zmm7,zmm19,zmm4
  a0ee5d:	62 f2 7d 48 bc fd    	vfnmadd231ps zmm7,zmm0,zmm5
  a0ee63:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  a0ee6a:	05 
  a0ee6b:	62 f1 7c 48 59 e4    	vmulps zmm4,zmm0,zmm4
  a0ee71:	62 f1 7c 48 10 42 0c 	vmovups zmm0,ZMMWORD PTR [rdx+0x300]
  a0ee78:	62 b2 55 48 b8 e3    	vfmadd231ps zmm4,zmm5,zmm19
  a0ee7e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm4
  a0ee85:	0e 
  a0ee86:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a0ee8d:	62 f1 54 40 59 e8    	vmulps zmm5,zmm21,zmm0
  a0ee93:	62 f2 0d 48 bc ec    	vfnmadd231ps zmm5,zmm14,zmm4
  a0ee99:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a0eea0:	0d 
  a0eea1:	62 f1 0c 48 59 e8    	vmulps zmm5,zmm14,zmm0
  a0eea7:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a0eeae:	62 b2 5d 48 b8 ed    	vfmadd231ps zmm5,zmm4,zmm21
  a0eeb4:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a0eebb:	15 
  a0eebc:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a0eec3:	62 61 4c 40 59 d0    	vmulps zmm26,zmm22,zmm0
  a0eec9:	62 62 4d 48 bc d4    	vfnmadd231ps zmm26,zmm6,zmm4
  a0eecf:	62 f1 4c 48 59 e8    	vmulps zmm5,zmm6,zmm0
  a0eed5:	62 f1 7c 48 10 42 0e 	vmovups zmm0,ZMMWORD PTR [rdx+0x380]
  a0eedc:	62 b2 5d 48 b8 ee    	vfmadd231ps zmm5,zmm4,zmm22
  a0eee2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a0eee9:	0c 
  a0eeea:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a0eef1:	62 61 3c 40 59 e0    	vmulps zmm28,zmm24,zmm0
  a0eef7:	62 62 65 48 bc e6    	vfnmadd231ps zmm28,zmm3,zmm6
  a0eefd:	62 e1 64 48 59 e8    	vmulps zmm21,zmm3,zmm0
  a0ef03:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a0ef0a:	62 82 4d 48 b8 e8    	vfmadd231ps zmm21,zmm6,zmm24
  a0ef10:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a0ef17:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a0ef1d:	62 f2 6d 48 bc e3    	vfnmadd231ps zmm4,zmm2,zmm3
  a0ef23:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm4
  a0ef2a:	1a 
  a0ef2b:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a0ef31:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a0ef38:	62 92 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm31
  a0ef3e:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a0ef44:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm2
  a0ef4b:	18 
  a0ef4c:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a0ef53:	62 f1 7c 48 28 34 24 	vmovaps zmm6,ZMMWORD PTR [rsp]
  a0ef5a:	62 f1 4c 48 59 d8    	vmulps zmm3,zmm6,zmm0
  a0ef60:	62 f2 75 48 bc da    	vfnmadd231ps zmm3,zmm1,zmm2
  a0ef66:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a0ef6d:	1b 
  a0ef6e:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a0ef74:	62 f1 7c 48 10 42 16 	vmovups zmm0,ZMMWORD PTR [rdx+0x580]
  a0ef7b:	62 f2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm6
  a0ef81:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a0ef87:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a0ef8e:	19 
  a0ef8f:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a0ef96:	62 f1 44 40 59 d0    	vmulps zmm2,zmm23,zmm0
  a0ef9c:	62 f2 35 40 bc d1    	vfnmadd231ps zmm2,zmm25,zmm1
  a0efa2:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a0efa8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a0efaf:	10 
  a0efb0:	62 e1 34 40 59 c8    	vmulps zmm17,zmm25,zmm0
  a0efb6:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a0efbd:	62 a2 75 48 b8 cf    	vfmadd231ps zmm17,zmm1,zmm23
  a0efc3:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a0efca:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x240]
  a0efd1:	09 
  a0efd2:	62 f1 34 48 59 d0    	vmulps zmm2,zmm9,zmm0
  a0efd8:	62 f2 6d 40 bc d1    	vfnmadd231ps zmm2,zmm18,zmm1
  a0efde:	62 f1 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm2
  a0efe5:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a0efeb:	62 f1 7c 48 10 42 1a 	vmovups zmm0,ZMMWORD PTR [rdx+0x680]
  a0eff2:	62 d2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm9
  a0eff8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a0efff:	14 
  a0f000:	62 f1 7c 48 10 4a 1b 	vmovups zmm1,ZMMWORD PTR [rdx+0x6c0]
  a0f007:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a0f00e:	01 
  a0f00f:	62 e1 34 48 59 c0    	vmulps zmm16,zmm9,zmm0
  a0f015:	62 e2 25 40 bc c1    	vfnmadd231ps zmm16,zmm27,zmm1
  a0f01b:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm16
  a0f022:	16 
  a0f023:	62 f1 24 40 59 c0    	vmulps zmm0,zmm27,zmm0
  a0f029:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a0f030:	62 d2 75 48 b8 c1    	vfmadd231ps zmm0,zmm1,zmm9
  a0f036:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a0f03d:	09 
  a0f03e:	62 d1 1c 48 58 c0    	vaddps zmm0,zmm12,zmm8
  a0f044:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x1c0]
  a0f04b:	07 
  a0f04c:	62 d1 34 48 59 cf    	vmulps zmm1,zmm9,zmm15
  a0f052:	62 f2 15 48 bc ca    	vfnmadd231ps zmm1,zmm13,zmm2
  a0f058:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a0f05e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a0f065:	17 
  a0f066:	62 d1 14 48 59 cf    	vmulps zmm1,zmm13,zmm15
  a0f06c:	62 d2 6d 48 b8 c9    	vfmadd231ps zmm1,zmm2,zmm9
  a0f072:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a0f079:	07 
  a0f07a:	62 72 7d 48 18 35 70 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff666570]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a0f081:	65 66 ff 
  a0f084:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a0f08a:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x2c0]
  a0f091:	0b 
  a0f092:	62 b2 7d 48 a8 d7    	vfmadd213ps zmm2,zmm0,zmm23
  a0f098:	62 72 7d 48 18 2d 2a 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff66622a]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a0f09f:	62 66 ff 
  a0f0a2:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a0f0a8:	62 b2 7d 48 ac cf    	vfnmadd213ps zmm1,zmm0,zmm23
  a0f0ae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a0f0b5:	01 
  a0f0b6:	62 f1 44 40 58 c8    	vaddps zmm1,zmm23,zmm0
  a0f0bc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a0f0c3:	08 
  a0f0c4:	62 72 7d 48 18 3d 0a 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff66650a]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a0f0cb:	65 66 ff 
  a0f0ce:	62 e2 05 48 bc f8    	vfnmadd231ps zmm23,zmm15,zmm0
  a0f0d4:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a0f0da:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a0f0e0:	62 02 7d 48 a8 fc    	vfmadd213ps zmm31,zmm0,zmm28
  a0f0e6:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a0f0ec:	62 02 7d 48 ac f4    	vfnmadd213ps zmm30,zmm0,zmm28
  a0f0f2:	62 f1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm0
  a0f0f8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a0f0ff:	0b 
  a0f100:	62 62 05 48 bc e0    	vfnmadd231ps zmm28,zmm15,zmm0
  a0f106:	62 f1 2c 48 58 4c 24 	vaddps zmm1,zmm10,ZMMWORD PTR [rsp+0x180]
  a0f10d:	06 
  a0f10e:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a0f114:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x100]
  a0f11b:	04 
  a0f11c:	62 42 75 48 a8 e9    	vfmadd213ps zmm29,zmm1,zmm9
  a0f122:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a0f128:	62 c2 75 48 ac e1    	vfnmadd213ps zmm20,zmm1,zmm9
  a0f12e:	62 c1 74 48 58 d1    	vaddps zmm18,zmm1,zmm9
  a0f134:	62 72 05 48 bc c9    	vfnmadd231ps zmm9,zmm15,zmm1
  a0f13a:	62 e1 54 48 58 df    	vaddps zmm19,zmm5,zmm7
  a0f140:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a0f146:	62 32 65 40 a8 f5    	vfmadd213ps zmm14,zmm19,zmm21
  a0f14c:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a0f152:	62 32 65 40 ac d5    	vfnmadd213ps zmm10,zmm19,zmm21
  a0f158:	62 b1 54 40 58 c3    	vaddps zmm0,zmm21,zmm19
  a0f15e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a0f165:	04 
  a0f166:	62 d2 65 40 bc ff    	vfnmadd231ps zmm7,zmm19,zmm15
  a0f16c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a0f173:	05 
  a0f174:	62 e1 7c 48 58 5c 24 	vaddps zmm19,zmm0,ZMMWORD PTR [rsp+0xc0]
  a0f17b:	03 
  a0f17c:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a0f182:	62 d2 65 40 bc d5    	vfnmadd231ps zmm2,zmm19,zmm13
  a0f188:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x340]
  a0f18f:	0d 
  a0f190:	62 01 3c 40 58 da    	vaddps zmm27,zmm24,zmm26
  a0f196:	62 d2 25 40 bc d7    	vfnmadd231ps zmm2,zmm27,zmm15
  a0f19c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a0f1a3:	12 
  a0f1a4:	62 61 4c 48 58 0c 24 	vaddps zmm25,zmm6,ZMMWORD PTR [rsp]
  a0f1ab:	62 42 35 40 bc fd    	vfnmadd231ps zmm31,zmm25,zmm13
  a0f1b1:	62 d1 7c 40 58 e8    	vaddps zmm5,zmm16,zmm8
  a0f1b7:	62 42 55 48 bc ff    	vfnmadd231ps zmm31,zmm5,zmm15
  a0f1bd:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x3c0]
  a0f1c4:	0f 
  a0f1c5:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x380]
  a0f1cc:	0e 
  a0f1cd:	62 b1 4c 40 58 d5    	vaddps zmm2,zmm22,zmm21
  a0f1d3:	62 42 6d 48 bc ed    	vfnmadd231ps zmm29,zmm2,zmm13
  a0f1d9:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x540]
  a0f1e0:	15 
  a0f1e1:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x300]
  a0f1e8:	0c 
  a0f1e9:	62 d1 14 48 58 e3    	vaddps zmm4,zmm13,zmm11
  a0f1ef:	62 42 5d 48 bc ef    	vfnmadd231ps zmm29,zmm4,zmm15
  a0f1f5:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x500]
  a0f1fc:	14 
  a0f1fd:	62 b1 74 40 58 c8    	vaddps zmm1,zmm17,zmm16
  a0f203:	62 72 75 48 bc f0    	vfnmadd231ps zmm14,zmm1,zmm0
  a0f209:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x240]
  a0f210:	09 
  a0f211:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a0f218:	07 
  a0f219:	62 f1 3c 48 58 de    	vaddps zmm3,zmm8,zmm6
  a0f21f:	62 52 65 48 bc f7    	vfnmadd231ps zmm14,zmm3,zmm15
  a0f225:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a0f22c:	01 
  a0f22d:	62 d2 65 40 bc c7    	vfnmadd231ps zmm0,zmm19,zmm15
  a0f233:	62 42 35 40 bc f7    	vfnmadd231ps zmm30,zmm25,zmm15
  a0f239:	62 c2 6d 48 bc e7    	vfnmadd231ps zmm20,zmm2,zmm15
  a0f23f:	62 52 75 48 bc d7    	vfnmadd231ps zmm10,zmm1,zmm15
  a0f245:	62 71 64 40 58 64 24 	vaddps zmm12,zmm19,ZMMWORD PTR [rsp+0x200]
  a0f24c:	08 
  a0f24d:	62 72 7d 48 18 3d 9d 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff66639d]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a0f254:	63 66 ff 
  a0f257:	62 a2 05 48 b8 fb    	vfmadd231ps zmm23,zmm15,zmm19
  a0f25d:	62 e1 34 40 58 5c 24 	vaddps zmm19,zmm25,ZMMWORD PTR [rsp+0x2c0]
  a0f264:	0b 
  a0f265:	62 02 05 48 b8 e1    	vfmadd231ps zmm28,zmm15,zmm25
  a0f26b:	62 a1 6c 48 58 d2    	vaddps zmm18,zmm2,zmm18
  a0f271:	62 72 05 48 b8 ca    	vfmadd231ps zmm9,zmm15,zmm2
  a0f277:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x100]
  a0f27e:	04 
  a0f27f:	62 d2 75 48 b8 ff    	vfmadd231ps zmm7,zmm1,zmm15
  a0f285:	62 d2 25 40 b8 c7    	vfmadd231ps zmm0,zmm27,zmm15
  a0f28b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0f292:	01 
  a0f293:	62 42 55 48 b8 f7    	vfmadd231ps zmm30,zmm5,zmm15
  a0f299:	62 c2 5d 48 b8 e7    	vfmadd231ps zmm20,zmm4,zmm15
  a0f29f:	62 52 65 48 b8 d7    	vfmadd231ps zmm10,zmm3,zmm15
  a0f2a5:	62 91 1c 48 58 c3    	vaddps zmm0,zmm12,zmm27
  a0f2ab:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a0f2b2:	04 
  a0f2b3:	62 f2 7d 48 18 05 0f 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66600f]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a0f2ba:	60 66 ff 
  a0f2bd:	62 82 7d 48 bc fb    	vfnmadd231ps zmm23,zmm0,zmm27
  a0f2c3:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a0f2c9:	62 f1 64 40 58 cd    	vaddps zmm1,zmm19,zmm5
  a0f2cf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a0f2d6:	0b 
  a0f2d7:	62 62 7d 48 bc e5    	vfnmadd231ps zmm28,zmm0,zmm5
  a0f2dd:	62 b1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm18
  a0f2e3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a0f2ea:	08 
  a0f2eb:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a0f2f1:	62 f2 65 48 bc f8    	vfnmadd231ps zmm7,zmm3,zmm0
  a0f2f7:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a0f2fd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a0f304:	13 
  a0f305:	62 c1 14 48 5c fb    	vsubps zmm23,zmm13,zmm11
  a0f30b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a0f312:	06 
  a0f313:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x440]
  a0f31a:	11 
  a0f31b:	62 b1 4c 40 5c d5    	vsubps zmm2,zmm22,zmm21
  a0f321:	62 71 3c 48 5c c6    	vsubps zmm8,zmm8,zmm6
  a0f327:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a0f32e:	18 
  a0f32f:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x640]
  a0f336:	19 
  a0f337:	62 31 74 40 5c e8    	vsubps zmm13,zmm17,zmm16
  a0f33d:	62 11 3c 40 5c fa    	vsubps zmm15,zmm24,zmm26
  a0f343:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a0f34a:	0a 
  a0f34b:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x700]
  a0f352:	1c 
  a0f353:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a0f35a:	03 
  a0f35b:	62 e1 7c 48 5c 54 24 	vsubps zmm18,zmm0,ZMMWORD PTR [rsp+0x140]
  a0f362:	05 
  a0f363:	62 e2 7d 48 18 1d 23 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff666123]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a0f36a:	61 66 ff 
  a0f36d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a0f374:	16 
  a0f375:	62 e1 7c 48 5c 4c 24 	vsubps zmm17,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a0f37c:	17 
  a0f37d:	62 e2 7d 48 18 2d d9 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6662d9]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a0f384:	62 66 ff 
  a0f387:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x680]
  a0f38e:	1a 
  a0f38f:	62 e1 7c 48 5c 74 24 	vsubps zmm22,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a0f396:	1b 
  a0f397:	62 b1 6c 48 59 f3    	vmulps zmm6,zmm2,zmm19
  a0f39d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a0f3a4:	10 
  a0f3a5:	62 61 7c 48 5c 04 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp]
  a0f3ac:	62 62 7d 48 18 15 32 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff666232]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a0f3b3:	62 66 ff 
  a0f3b6:	62 b2 75 48 b8 f5    	vfmadd231ps zmm6,zmm1,zmm21
  a0f3bc:	62 b1 74 48 59 db    	vmulps zmm3,zmm1,zmm19
  a0f3c2:	62 92 6d 48 bc da    	vfnmadd231ps zmm3,zmm2,zmm26
  a0f3c8:	62 91 74 48 59 ca    	vmulps zmm1,zmm1,zmm26
  a0f3ce:	62 f2 55 40 bc ca    	vfnmadd231ps zmm1,zmm21,zmm2
  a0f3d4:	62 b1 14 48 59 e3    	vmulps zmm4,zmm13,zmm19
  a0f3da:	62 b2 55 48 b8 e5    	vfmadd231ps zmm4,zmm5,zmm21
  a0f3e0:	62 21 54 48 59 db    	vmulps zmm27,zmm5,zmm19
  a0f3e6:	62 02 15 48 bc da    	vfnmadd231ps zmm27,zmm13,zmm26
  a0f3ec:	62 91 54 48 59 ea    	vmulps zmm5,zmm5,zmm26
  a0f3f2:	62 d2 55 40 bc ed    	vfnmadd231ps zmm5,zmm21,zmm13
  a0f3f8:	62 31 6c 40 59 eb    	vmulps zmm13,zmm18,zmm19
  a0f3fe:	62 32 7d 40 b8 ed    	vfmadd231ps zmm13,zmm16,zmm21
  a0f404:	62 b1 7c 40 59 d3    	vmulps zmm2,zmm16,zmm19
  a0f40a:	62 92 6d 40 bc d2    	vfnmadd231ps zmm2,zmm18,zmm26
  a0f410:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a0f416:	62 a2 55 40 bc c2    	vfnmadd231ps zmm16,zmm21,zmm18
  a0f41c:	62 92 45 40 b8 f2    	vfmadd231ps zmm6,zmm23,zmm26
  a0f422:	62 92 3d 48 b8 e2    	vfmadd231ps zmm4,zmm8,zmm26
  a0f428:	62 12 05 48 b8 ea    	vfmadd231ps zmm13,zmm15,zmm26
  a0f42e:	62 a1 3c 40 59 d3    	vmulps zmm18,zmm24,zmm19
  a0f434:	62 a2 4d 40 b8 d5    	vfmadd231ps zmm18,zmm22,zmm21
  a0f43a:	62 82 75 40 b8 d2    	vfmadd231ps zmm18,zmm17,zmm26
  a0f440:	62 b1 4c 40 59 c3    	vmulps zmm0,zmm22,zmm19
  a0f446:	62 92 3d 40 bc c2    	vfnmadd231ps zmm0,zmm24,zmm26
  a0f44c:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a0f452:	62 a2 3d 40 bc f5    	vfnmadd231ps zmm22,zmm24,zmm21
  a0f458:	62 b2 45 40 bc dd    	vfnmadd231ps zmm3,zmm23,zmm21
  a0f45e:	62 22 3d 48 bc dd    	vfnmadd231ps zmm27,zmm8,zmm21
  a0f464:	62 b2 05 48 bc d5    	vfnmadd231ps zmm2,zmm15,zmm21
  a0f46a:	62 b2 75 40 bc c5    	vfnmadd231ps zmm0,zmm17,zmm21
  a0f470:	62 b2 65 40 b8 cf    	vfmadd231ps zmm1,zmm19,zmm23
  a0f476:	62 d2 65 40 b8 e8    	vfmadd231ps zmm5,zmm19,zmm8
  a0f47c:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x480]
  a0f483:	12 
  a0f484:	62 e1 1c 48 58 fe    	vaddps zmm23,zmm12,zmm6
  a0f48a:	62 c2 65 40 b8 c7    	vfmadd231ps zmm16,zmm19,zmm15
  a0f490:	62 71 04 40 58 fc    	vaddps zmm15,zmm31,zmm4
  a0f496:	62 a2 75 40 b8 f3    	vfmadd231ps zmm22,zmm17,zmm19
  a0f49c:	62 41 44 40 5c d7    	vsubps zmm26,zmm23,zmm15
  a0f4a2:	62 71 34 40 58 d9    	vaddps zmm11,zmm25,zmm1
  a0f4a8:	62 71 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm11
  a0f4af:	62 f1 34 40 5c c9    	vsubps zmm1,zmm25,zmm1
  a0f4b5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a0f4bc:	06 
  a0f4bd:	62 e1 1c 40 58 ed    	vaddps zmm21,zmm28,zmm5
  a0f4c3:	62 f1 1c 40 5c cd    	vsubps zmm1,zmm28,zmm5
  a0f4c9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a0f4d0:	03 
  a0f4d1:	62 a1 34 48 5c d8    	vsubps zmm19,zmm9,zmm16
  a0f4d7:	62 41 7c 40 58 c1    	vaddps zmm24,zmm16,zmm9
  a0f4dd:	62 21 44 48 5c ce    	vsubps zmm25,zmm7,zmm22
  a0f4e3:	62 a1 44 48 58 ce    	vaddps zmm17,zmm7,zmm22
  a0f4e9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a0f4f0:	01 
  a0f4f1:	62 e1 74 48 58 c3    	vaddps zmm16,zmm1,zmm3
  a0f4f7:	62 e1 74 48 5c f3    	vsubps zmm22,zmm1,zmm3
  a0f4fd:	62 01 0c 40 58 e3    	vaddps zmm28,zmm30,zmm27
  a0f503:	62 01 0c 40 5c f3    	vsubps zmm30,zmm30,zmm27
  a0f509:	62 71 5c 40 5c ca    	vsubps zmm9,zmm20,zmm2
  a0f50f:	62 31 6c 48 58 c4    	vaddps zmm8,zmm2,zmm20
  a0f515:	62 71 2c 48 5c d8    	vsubps zmm11,zmm10,zmm0
  a0f51b:	62 f1 2c 48 58 f8    	vaddps zmm7,zmm10,zmm0
  a0f521:	62 d1 14 40 5c dd    	vsubps zmm3,zmm29,zmm13
  a0f527:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a0f52d:	62 b1 0c 48 5c c2    	vsubps zmm0,zmm14,zmm18
  a0f533:	62 f1 04 40 5c e4    	vsubps zmm4,zmm31,zmm4
  a0f539:	62 61 64 48 5c d8    	vsubps zmm27,zmm3,zmm0
  a0f53f:	62 91 14 48 58 d5    	vaddps zmm2,zmm13,zmm29
  a0f545:	62 01 7c 40 58 ec    	vaddps zmm29,zmm16,zmm28
  a0f54b:	62 b1 0c 48 58 ca    	vaddps zmm1,zmm14,zmm18
  a0f551:	62 c1 34 48 58 d3    	vaddps zmm18,zmm9,zmm11
  a0f557:	62 51 44 40 58 e7    	vaddps zmm12,zmm23,zmm15
  a0f55d:	62 71 7c 48 28 34 24 	vmovaps zmm14,ZMMWORD PTR [rsp]
  a0f564:	62 b1 0c 48 5c ed    	vsubps zmm5,zmm14,zmm21
  a0f56a:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a0f570:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0f577:	01 
  a0f578:	62 11 64 40 5c e9    	vsubps zmm13,zmm19,zmm25
  a0f57e:	62 81 7c 40 5c fc    	vsubps zmm23,zmm16,zmm28
  a0f584:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x180]
  a0f58b:	06 
  a0f58c:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0xc0]
  a0f593:	03 
  a0f594:	62 21 2c 48 58 f8    	vaddps zmm31,zmm10,zmm16
  a0f59a:	62 d1 34 48 5c c3    	vsubps zmm0,zmm9,zmm11
  a0f5a0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a0f5a7:	07 
  a0f5a8:	62 31 3c 40 58 d9    	vaddps zmm11,zmm24,zmm17
  a0f5ae:	62 21 0c 48 58 e5    	vaddps zmm28,zmm14,zmm21
  a0f5b4:	62 91 4c 40 5c de    	vsubps zmm3,zmm22,zmm30
  a0f5ba:	62 81 64 40 58 e9    	vaddps zmm21,zmm19,zmm25
  a0f5c0:	62 71 3c 48 5c ff    	vsubps zmm15,zmm8,zmm7
  a0f5c6:	62 a1 2c 48 5c d8    	vsubps zmm19,zmm10,zmm16
  a0f5cc:	62 71 4c 48 58 cc    	vaddps zmm9,zmm6,zmm4
  a0f5d2:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a0f5d8:	62 e1 6c 48 58 c1    	vaddps zmm16,zmm2,zmm1
  a0f5de:	62 81 4c 40 58 f6    	vaddps zmm22,zmm22,zmm30
  a0f5e4:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x100]
  a0f5eb:	04 
  a0f5ec:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a0f5f3:	0b 
  a0f5f4:	62 71 5c 40 5c d0    	vsubps zmm10,zmm20,zmm0
  a0f5fa:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a0f600:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x200]
  a0f607:	08 
  a0f608:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x4c0]
  a0f60f:	13 
  a0f610:	62 41 3c 48 5c f6    	vsubps zmm30,zmm8,zmm14
  a0f616:	62 61 4c 48 5c cc    	vsubps zmm25,zmm6,zmm4
  a0f61c:	62 61 6c 48 5c c1    	vsubps zmm24,zmm2,zmm1
  a0f622:	62 51 3c 48 58 f6    	vaddps zmm14,zmm8,zmm14
  a0f628:	62 f1 5c 40 58 c8    	vaddps zmm1,zmm20,zmm0
  a0f62e:	62 f1 7c 48 28 35 08 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67f708]        # 8ed40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1f0>
  a0f635:	f7 67 ff 
  a0f638:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a0f63e:	62 f2 4d 48 7f d1    	vpermt2ps zmm2,zmm6,zmm1
  a0f644:	62 f1 7c 48 29 14 24 	vmovaps ZMMWORD PTR [rsp],zmm2
  a0f64b:	62 f1 0c 48 15 d1    	vunpckhps zmm2,zmm14,zmm1
  a0f651:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a0f658:	06 
  a0f659:	62 f1 0c 48 14 d1    	vunpcklps zmm2,zmm14,zmm1
  a0f65f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a0f666:	03 
  a0f667:	62 e1 7c 28 28 25 0f 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff67f70f]        # 8ed80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c230>
  a0f66e:	f7 67 ff 
  a0f671:	62 72 5d 40 7f f1    	vpermt2ps zmm14,zmm20,zmm1
  a0f677:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a0f67d:	62 92 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm26
  a0f683:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a0f68a:	04 
  a0f68b:	62 91 24 40 15 ca    	vunpckhps zmm1,zmm27,zmm26
  a0f691:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0f698:	05 
  a0f699:	62 91 24 40 14 ca    	vunpcklps zmm1,zmm27,zmm26
  a0f69f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a0f6a6:	0f 
  a0f6a7:	62 02 5d 40 7f da    	vpermt2ps zmm27,zmm20,zmm26
  a0f6ad:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a0f6b3:	62 92 4d 48 7f d5    	vpermt2ps zmm2,zmm6,zmm29
  a0f6b9:	62 91 6c 40 15 cd    	vunpckhps zmm1,zmm18,zmm29
  a0f6bf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a0f6c6:	0e 
  a0f6c7:	62 91 6c 40 14 cd    	vunpcklps zmm1,zmm18,zmm29
  a0f6cd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a0f6d4:	15 
  a0f6d5:	62 82 5d 40 7f d5    	vpermt2ps zmm18,zmm20,zmm29
  a0f6db:	62 41 7c 48 28 ed    	vmovaps zmm29,zmm13
  a0f6e1:	62 62 4d 48 7f ed    	vpermt2ps zmm29,zmm6,zmm5
  a0f6e7:	62 f1 14 48 15 cd    	vunpckhps zmm1,zmm13,zmm5
  a0f6ed:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a0f6f4:	0d 
  a0f6f5:	62 f1 14 48 14 cd    	vunpcklps zmm1,zmm13,zmm5
  a0f6fb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a0f702:	0c 
  a0f703:	62 72 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm5
  a0f709:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a0f70f:	62 02 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm31
  a0f715:	62 91 24 48 15 cf    	vunpckhps zmm1,zmm11,zmm31
  a0f71b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a0f722:	0b 
  a0f723:	62 91 24 48 14 cf    	vunpcklps zmm1,zmm11,zmm31
  a0f729:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a0f730:	1c 
  a0f731:	62 12 5d 40 7f df    	vpermt2ps zmm11,zmm20,zmm31
  a0f737:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a0f73d:	62 62 4d 48 7f fb    	vpermt2ps zmm31,zmm6,zmm3
  a0f743:	62 f1 04 48 15 cb    	vunpckhps zmm1,zmm15,zmm3
  a0f749:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a0f750:	0a 
  a0f751:	62 f1 04 48 14 cb    	vunpcklps zmm1,zmm15,zmm3
  a0f757:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a0f75e:	09 
  a0f75f:	62 72 5d 40 7f fb    	vpermt2ps zmm15,zmm20,zmm3
  a0f765:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a0f76b:	62 d2 4d 48 7f e1    	vpermt2ps zmm4,zmm6,zmm9
  a0f771:	62 d1 7c 40 15 c1    	vunpckhps zmm0,zmm16,zmm9
  a0f777:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a0f77e:	08 
  a0f77f:	62 d1 7c 40 14 c1    	vunpcklps zmm0,zmm16,zmm9
  a0f785:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a0f78c:	14 
  a0f78d:	62 c2 5d 40 7f c1    	vpermt2ps zmm16,zmm20,zmm9
  a0f793:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a0f799:	62 d2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm10
  a0f79f:	62 d1 0c 40 15 c2    	vunpckhps zmm0,zmm30,zmm10
  a0f7a5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a0f7ac:	13 
  a0f7ad:	62 d1 0c 40 14 c2    	vunpcklps zmm0,zmm30,zmm10
  a0f7b3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a0f7ba:	1b 
  a0f7bb:	62 42 5d 40 7f f2    	vpermt2ps zmm30,zmm20,zmm10
  a0f7c1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a0f7c8:	01 
  a0f7c9:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a0f7cf:	62 d2 4d 48 7f ec    	vpermt2ps zmm5,zmm6,zmm12
  a0f7d5:	62 d1 7c 48 15 cc    	vunpckhps zmm1,zmm0,zmm12
  a0f7db:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a0f7e2:	1a 
  a0f7e3:	62 d1 7c 48 14 cc    	vunpcklps zmm1,zmm0,zmm12
  a0f7e9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a0f7f0:	12 
  a0f7f1:	62 d2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm12
  a0f7f7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0f7fe:	01 
  a0f7ff:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0f806:	07 
  a0f807:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a0f80d:	62 b2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm23
  a0f813:	62 31 74 48 15 c7    	vunpckhps zmm8,zmm1,zmm23
  a0f819:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a0f820:	11 
  a0f821:	62 31 74 48 14 c7    	vunpcklps zmm8,zmm1,zmm23
  a0f827:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm8
  a0f82e:	19 
  a0f82f:	62 b2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm23
  a0f835:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a0f83b:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a0f841:	62 92 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm28
  a0f847:	62 11 54 40 15 c4    	vunpckhps zmm8,zmm21,zmm28
  a0f84d:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a0f854:	07 
  a0f855:	62 11 54 40 14 c4    	vunpcklps zmm8,zmm21,zmm28
  a0f85b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm8
  a0f862:	18 
  a0f863:	62 82 5d 40 7f ec    	vpermt2ps zmm21,zmm20,zmm28
  a0f869:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a0f86f:	62 22 4d 48 7f e3    	vpermt2ps zmm28,zmm6,zmm19
  a0f875:	62 31 74 40 15 c3    	vunpckhps zmm8,zmm17,zmm19
  a0f87b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm8
  a0f882:	10 
  a0f883:	62 31 74 40 14 c3    	vunpcklps zmm8,zmm17,zmm19
  a0f889:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm8
  a0f890:	17 
  a0f891:	62 a2 5d 40 7f cb    	vpermt2ps zmm17,zmm20,zmm19
  a0f897:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a0f89d:	62 a2 4d 48 7f fe    	vpermt2ps zmm23,zmm6,zmm22
  a0f8a3:	62 a1 44 48 15 de    	vunpckhps zmm19,zmm7,zmm22
  a0f8a9:	62 31 44 48 14 c6    	vunpcklps zmm8,zmm7,zmm22
  a0f8af:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm8
  a0f8b6:	16 
  a0f8b7:	62 b2 5d 40 7f fe    	vpermt2ps zmm7,zmm20,zmm22
  a0f8bd:	62 92 3d 40 77 f1    	vpermi2ps zmm6,zmm24,zmm25
  a0f8c3:	62 11 3c 40 15 e1    	vunpckhps zmm12,zmm24,zmm25
  a0f8c9:	62 11 3c 40 14 c1    	vunpcklps zmm8,zmm24,zmm25
  a0f8cf:	62 02 5d 40 7f c1    	vpermt2ps zmm24,zmm20,zmm25
  a0f8d5:	62 71 7c 48 28 0c 24 	vmovaps zmm9,ZMMWORD PTR [rsp]
  a0f8dc:	62 71 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm9
  a0f8e2:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a0f8e9:	03 
  a0f8ea:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a0f8f1:	03 
  a0f8f2:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x180]
  a0f8f9:	06 
  a0f8fa:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a0f901:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a0f906:	c5 7c 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm14
  a0f90b:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x100]
  a0f912:	04 
  a0f913:	62 71 7c 48 11 8e 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm9
  a0f91a:	00 00 00 
  a0f91d:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a0f924:	0f 
  a0f925:	62 73 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm9,0x3
  a0f92c:	00 00 00 03 
  a0f930:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x140]
  a0f937:	05 
  a0f938:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a0f93f:	c5 78 13 8e e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm9
  a0f946:	00 
  a0f947:	62 61 7c 28 11 9e b8 	vmovups YMMWORD PTR [rsi+0xb8],ymm27
  a0f94e:	00 00 00 
  a0f951:	62 f1 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm2
  a0f958:	00 00 00 
  a0f95b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a0f962:	15 
  a0f963:	62 f3 7d 48 19 56 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm2,0x3
  a0f96a:	03 
  a0f96b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a0f972:	0e 
  a0f973:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0f97a:	c5 f8 13 96 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm2
  a0f981:	00 
  a0f982:	62 e1 7c 28 11 96 30 	vmovups YMMWORD PTR [rsi+0x130],ymm18
  a0f989:	01 00 00 
  a0f98c:	62 61 7c 48 11 ae 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm29
  a0f993:	01 00 00 
  a0f996:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a0f99d:	0c 
  a0f99e:	62 f3 7d 48 19 96 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm2,0x3
  a0f9a5:	01 00 00 03 
  a0f9a9:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a0f9b0:	0d 
  a0f9b1:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0f9b8:	c5 f8 13 96 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm2
  a0f9bf:	00 
  a0f9c0:	c5 7c 11 ae a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm13
  a0f9c7:	00 
  a0f9c8:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a0f9cf:	01 00 00 
  a0f9d2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x700]
  a0f9d9:	1c 
  a0f9da:	62 f3 7d 48 19 56 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm2,0x3
  a0f9e1:	03 
  a0f9e2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0f9e9:	0b 
  a0f9ea:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0f9f1:	c5 f8 13 96 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm2
  a0f9f8:	00 
  a0f9f9:	c5 7c 11 9e 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm11
  a0fa00:	00 
  a0fa01:	62 61 7c 48 11 be 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm31
  a0fa08:	02 00 00 
  a0fa0b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a0fa12:	09 
  a0fa13:	62 f3 7d 48 19 96 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm2,0x3
  a0fa1a:	02 00 00 03 
  a0fa1e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a0fa25:	0a 
  a0fa26:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0fa2d:	c5 f8 13 96 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm2
  a0fa34:	00 
  a0fa35:	c5 7c 11 be 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm15
  a0fa3c:	00 
  a0fa3d:	62 f1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm4
  a0fa44:	02 00 00 
  a0fa47:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x500]
  a0fa4e:	14 
  a0fa4f:	62 f3 7d 48 19 56 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm2,0x3
  a0fa56:	03 
  a0fa57:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a0fa5e:	08 
  a0fa5f:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0fa66:	c5 f8 13 96 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm2
  a0fa6d:	00 
  a0fa6e:	62 e1 7c 28 11 86 10 	vmovups YMMWORD PTR [rsi+0x310],ymm16
  a0fa75:	03 00 00 
  a0fa78:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm3
  a0fa7f:	03 00 00 
  a0fa82:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x6c0]
  a0fa89:	1b 
  a0fa8a:	62 f3 7d 48 19 96 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm2,0x3
  a0fa91:	03 00 00 03 
  a0fa95:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x4c0]
  a0fa9c:	13 
  a0fa9d:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0faa4:	c5 f8 13 96 b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm2
  a0faab:	00 
  a0faac:	62 61 7c 28 11 b6 88 	vmovups YMMWORD PTR [rsi+0x388],ymm30
  a0fab3:	03 00 00 
  a0fab6:	62 f1 7c 48 11 6e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm5
  a0fabd:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a0fac4:	12 
  a0fac5:	62 f3 7d 48 19 56 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm2,0x3
  a0facc:	03 
  a0facd:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x680]
  a0fad4:	1a 
  a0fad5:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0fadc:	c5 f8 13 96 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm2
  a0fae3:	00 
  a0fae4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a0faeb:	01 
  a0faec:	c5 fc 11 96 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm2
  a0faf3:	00 
  a0faf4:	62 f1 7c 48 11 86 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm0
  a0fafb:	04 00 00 
  a0fafe:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a0fb05:	19 
  a0fb06:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a0fb0d:	04 00 00 03 
  a0fb11:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a0fb18:	11 
  a0fb19:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a0fb20:	c5 f8 13 86 a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm0
  a0fb27:	00 
  a0fb28:	c5 7c 11 96 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm10
  a0fb2f:	00 
  a0fb30:	62 f1 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm1
  a0fb37:	04 00 00 
  a0fb3a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a0fb41:	18 
  a0fb42:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a0fb49:	03 
  a0fb4a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a0fb51:	07 
  a0fb52:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a0fb59:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a0fb60:	00 
  a0fb61:	62 e1 7c 28 11 ae f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm21
  a0fb68:	04 00 00 
  a0fb6b:	62 61 7c 48 11 a6 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm28
  a0fb72:	05 00 00 
  a0fb75:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a0fb7c:	17 
  a0fb7d:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a0fb84:	05 00 00 03 
  a0fb88:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a0fb8f:	10 
  a0fb90:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a0fb97:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a0fb9e:	00 
  a0fb9f:	62 e1 7c 28 11 8e 68 	vmovups YMMWORD PTR [rsi+0x568],ymm17
  a0fba6:	05 00 00 
  a0fba9:	62 e1 7c 48 11 be a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm23
  a0fbb0:	05 00 00 
  a0fbb3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a0fbba:	16 
  a0fbbb:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a0fbc2:	03 
  a0fbc3:	62 e3 7d 48 19 d8 03 	vextractf32x4 xmm0,zmm19,0x3
  a0fbca:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a0fbd1:	00 
  a0fbd2:	c5 fc 11 be e0 05 00 	vmovups YMMWORD PTR [rsi+0x5e0],ymm7
  a0fbd9:	00 
  a0fbda:	62 f1 7c 48 11 b6 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm6
  a0fbe1:	06 00 00 
  a0fbe4:	62 73 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm8,0x3
  a0fbeb:	06 00 00 03 
  a0fbef:	62 73 7d 48 19 e0 03 	vextractf32x4 xmm0,zmm12,0x3
  a0fbf6:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a0fbfd:	00 
  a0fbfe:	62 61 7c 28 11 86 58 	vmovups YMMWORD PTR [rsi+0x658],ymm24
  a0fc05:	06 00 00 
  a0fc08:	48 89 ec             	mov    rsp,rbp
  a0fc0b:	5d                   	pop    rbp
  a0fc0c:	c5 f8 77             	vzeroupper
  a0fc0f:	c3                   	ret
