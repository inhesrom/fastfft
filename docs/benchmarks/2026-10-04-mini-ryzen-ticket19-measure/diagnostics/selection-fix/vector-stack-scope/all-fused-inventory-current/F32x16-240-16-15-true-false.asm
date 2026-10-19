
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4d900 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4d900:	55                   	push   rbp
  a4d901:	48 89 e5             	mov    rbp,rsp
  a4d904:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a4d908:	48 81 ec 00 0a 00 00 	sub    rsp,0xa00
  a4d90f:	c6 84 24 80 09 00 00 	mov    BYTE PTR [rsp+0x980],0x0
  a4d916:	00 
  a4d917:	48 8d 84 24 80 09 00 	lea    rax,[rsp+0x980]
  a4d91e:	00 
  a4d91f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a4d924:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a4d929:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a4d92f:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a4d934:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a4d93b:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a4d941:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a4d946:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4d94c:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a4d953:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a4d958:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4d95e:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4d965:	b0 7f                	mov    al,0x7f
  a4d967:	c5 fb 92 c8          	kmovd  k1,eax
  a4d96b:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4d971:	62 f1 7c 48 28 2d c5 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff644ec5]        # 92840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fcf0>
  a4d978:	4e 64 ff 
  a4d97b:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a4d981:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4d987:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a4d98e:	06 
  a4d98f:	62 e1 7c 48 28 1d e7 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff644ee7]        # 92880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fd30>
  a4d996:	4e 64 ff 
  a4d999:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a4d99f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a4d9a6:	05 
  a4d9a7:	c5 f8 10 87 d8 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd8]
  a4d9ae:	00 
  a4d9af:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x10
  a4d9b6:	00 00 10 
  a4d9b9:	c4 e2 79 18 8f e0 00 	vbroadcastss xmm1,DWORD PTR [rdi+0xe0]
  a4d9c0:	00 00 
  a4d9c2:	62 f1 7c 48 10 97 78 	vmovups zmm2,ZMMWORD PTR [rdi+0x78]
  a4d9c9:	00 00 00 
  a4d9cc:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4d9d2:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x30
  a4d9d9:	00 00 30 
  a4d9dc:	c5 fc 10 8f b8 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb8]
  a4d9e3:	00 
  a4d9e4:	c5 fb 10 9f e8 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xe8]
  a4d9eb:	00 
  a4d9ec:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4d9f2:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4d9f9:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4d9ff:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4da05:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4da0b:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4da11:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a4da18:	0f 
  a4da19:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4da1f:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a4da25:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a4da2c:	0e 
  a4da2d:	62 f1 7c 48 10 97 f0 	vmovups zmm2,ZMMWORD PTR [rdi+0xf0]
  a4da34:	00 00 00 
  a4da37:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a4da3e:	00 
  a4da3f:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a4da46:	00 00 10 
  a4da49:	c5 fc 10 8f 30 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x130]
  a4da50:	00 
  a4da51:	c4 e2 79 18 9f 58 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x158]
  a4da58:	00 00 
  a4da5a:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4da60:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a4da67:	00 00 30 
  a4da6a:	c5 fb 10 9f 60 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x160]
  a4da71:	00 
  a4da72:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4da78:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4da7f:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4da85:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4da8b:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4da91:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a4da98:	04 
  a4da99:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4da9f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a4daa6:	09 
  a4daa7:	62 71 7c 48 10 bf 68 	vmovups zmm15,ZMMWORD PTR [rdi+0x168]
  a4daae:	01 00 00 
  a4dab1:	c5 f8 10 87 c8 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1c8]
  a4dab8:	00 
  a4dab9:	c5 fc 10 8f a8 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1a8]
  a4dac0:	00 
  a4dac1:	c4 e3 79 21 87 cc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1cc],0x10
  a4dac8:	00 00 10 
  a4dacb:	c4 e2 79 18 9f d0 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1d0]
  a4dad2:	00 00 
  a4dad4:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4dada:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x30
  a4dae1:	00 00 30 
  a4dae4:	c5 fb 10 9f d8 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x1d8]
  a4daeb:	00 
  a4daec:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4daf2:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4daf9:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4daff:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a4db05:	62 72 55 48 7f e8    	vpermt2ps zmm13,zmm5,zmm0
  a4db0b:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a4db11:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0x1e0]
  a4db18:	01 00 00 
  a4db1b:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a4db22:	00 
  a4db23:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a4db2a:	00 00 10 
  a4db2d:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a4db34:	00 00 
  a4db36:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a4db3d:	00 
  a4db3e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4db44:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a4db4b:	00 00 30 
  a4db4e:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a4db55:	00 
  a4db56:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4db5c:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4db63:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4db69:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4db6f:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4db75:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4db7c:	03 
  a4db7d:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4db83:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a4db8a:	08 
  a4db8b:	c5 f8 10 87 b8 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2b8]
  a4db92:	00 
  a4db93:	c4 e3 79 21 87 bc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2bc],0x10
  a4db9a:	00 00 10 
  a4db9d:	c4 e2 79 18 8f c0 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2c0]
  a4dba4:	00 00 
  a4dba6:	62 f1 7c 48 10 97 58 	vmovups zmm2,ZMMWORD PTR [rdi+0x258]
  a4dbad:	02 00 00 
  a4dbb0:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4dbb6:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a4dbbd:	00 00 30 
  a4dbc0:	c5 fc 10 8f 98 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x298]
  a4dbc7:	00 
  a4dbc8:	c5 fb 10 9f c8 02 00 	vmovsd xmm3,QWORD PTR [rdi+0x2c8]
  a4dbcf:	00 
  a4dbd0:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4dbd6:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4dbdd:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4dbe3:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4dbe9:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4dbef:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a4dbf5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a4dbfc:	11 
  a4dbfd:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4dc03:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4dc09:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm2
  a4dc10:	1a 
  a4dc11:	62 f1 7c 48 10 97 d0 	vmovups zmm2,ZMMWORD PTR [rdi+0x2d0]
  a4dc18:	02 00 00 
  a4dc1b:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a4dc22:	00 
  a4dc23:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a4dc2a:	00 00 10 
  a4dc2d:	c5 fc 10 8f 10 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x310]
  a4dc34:	00 
  a4dc35:	c4 e2 79 18 9f 38 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x338]
  a4dc3c:	00 00 
  a4dc3e:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4dc44:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a4dc4b:	00 00 30 
  a4dc4e:	c5 fb 10 9f 40 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x340]
  a4dc55:	00 
  a4dc56:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4dc5c:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4dc63:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4dc69:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4dc6f:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4dc75:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a4dc7c:	01 
  a4dc7d:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4dc83:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a4dc8a:	02 
  a4dc8b:	62 e1 7c 48 10 b7 48 	vmovups zmm22,ZMMWORD PTR [rdi+0x348]
  a4dc92:	03 00 00 
  a4dc95:	c5 f8 10 87 a8 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3a8]
  a4dc9c:	00 
  a4dc9d:	c5 fc 10 8f 88 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x388]
  a4dca4:	00 
  a4dca5:	c4 e3 79 21 87 ac 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ac],0x10
  a4dcac:	00 00 10 
  a4dcaf:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a4dcb6:	00 00 
  a4dcb8:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4dcbe:	c4 e3 79 21 87 b4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3b4],0x30
  a4dcc5:	00 00 30 
  a4dcc8:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a4dccf:	00 
  a4dcd0:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4dcd6:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4dcdd:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4dce3:	62 31 7c 48 28 f6    	vmovaps zmm14,zmm22
  a4dce9:	62 72 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm0
  a4dcef:	62 e2 65 40 7f f0    	vpermt2ps zmm22,zmm19,zmm0
  a4dcf5:	62 e1 7c 48 10 57 0f 	vmovups zmm18,ZMMWORD PTR [rdi+0x3c0]
  a4dcfc:	c5 f8 10 87 20 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x420]
  a4dd03:	00 
  a4dd04:	c4 e3 79 21 87 24 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x424],0x10
  a4dd0b:	00 00 10 
  a4dd0e:	c4 e2 79 18 8f 28 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x428]
  a4dd15:	00 00 
  a4dd17:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a4dd1e:	00 
  a4dd1f:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4dd25:	c4 e3 79 21 87 2c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x42c],0x30
  a4dd2c:	00 00 30 
  a4dd2f:	c5 fb 10 8f 30 04 00 	vmovsd xmm1,QWORD PTR [rdi+0x430]
  a4dd36:	00 
  a4dd37:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4dd3d:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4dd44:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4dd4a:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4dd50:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4dd56:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a4dd5d:	07 
  a4dd5e:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a4dd64:	c5 f8 10 87 98 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x498]
  a4dd6b:	00 
  a4dd6c:	c4 e3 79 21 87 9c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x49c],0x10
  a4dd73:	00 00 10 
  a4dd76:	c4 e2 79 18 8f a0 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4a0]
  a4dd7d:	00 00 
  a4dd7f:	62 e1 7c 48 10 a7 38 	vmovups zmm20,ZMMWORD PTR [rdi+0x438]
  a4dd86:	04 00 00 
  a4dd89:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4dd8f:	c4 e3 79 21 87 a4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4a4],0x30
  a4dd96:	00 00 30 
  a4dd99:	c5 fc 10 8f 78 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x478]
  a4dda0:	00 
  a4dda1:	c5 fb 10 9f a8 04 00 	vmovsd xmm3,QWORD PTR [rdi+0x4a8]
  a4dda8:	00 
  a4dda9:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4ddaf:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4ddb6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4ddbc:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a4ddc2:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4ddc8:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a4ddce:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a4ddd5:	10 
  a4ddd6:	62 e2 65 40 7f e0    	vpermt2ps zmm20,zmm19,zmm0
  a4dddc:	62 e1 7c 48 10 af b0 	vmovups zmm21,ZMMWORD PTR [rdi+0x4b0]
  a4dde3:	04 00 00 
  a4dde6:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a4dded:	00 
  a4ddee:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a4ddf5:	00 00 10 
  a4ddf8:	c5 fc 10 8f f0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4f0]
  a4ddff:	00 
  a4de00:	c4 e2 79 18 9f 18 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x518]
  a4de07:	00 00 
  a4de09:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4de0f:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a4de16:	00 00 30 
  a4de19:	c5 fb 10 9f 20 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x520]
  a4de20:	00 
  a4de21:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4de27:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4de2e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4de34:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a4de3a:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a4de40:	62 e2 65 40 7f e8    	vpermt2ps zmm21,zmm19,zmm0
  a4de46:	62 61 7c 48 10 8f 28 	vmovups zmm25,ZMMWORD PTR [rdi+0x528]
  a4de4d:	05 00 00 
  a4de50:	c5 f8 10 87 88 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x588]
  a4de57:	00 
  a4de58:	c5 fc 10 8f 68 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x568]
  a4de5f:	00 
  a4de60:	c4 e3 79 21 87 8c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x58c],0x10
  a4de67:	00 00 10 
  a4de6a:	c4 e2 79 18 9f 90 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x590]
  a4de71:	00 00 
  a4de73:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4de79:	c4 e3 79 21 87 94 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x594],0x30
  a4de80:	00 00 30 
  a4de83:	c5 fb 10 9f 98 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x598]
  a4de8a:	00 
  a4de8b:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4de91:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4de98:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4de9e:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a4dea4:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a4deaa:	62 62 65 40 7f c8    	vpermt2ps zmm25,zmm19,zmm0
  a4deb0:	62 61 7c 48 10 87 a0 	vmovups zmm24,ZMMWORD PTR [rdi+0x5a0]
  a4deb7:	05 00 00 
  a4deba:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a4dec1:	00 
  a4dec2:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a4dec9:	00 00 10 
  a4decc:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a4ded3:	00 00 
  a4ded5:	c5 fc 10 9f e0 05 00 	vmovups ymm3,YMMWORD PTR [rdi+0x5e0]
  a4dedc:	00 
  a4dedd:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4dee3:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a4deea:	00 00 30 
  a4deed:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a4def4:	00 
  a4def5:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4defb:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4df02:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4df08:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a4df0e:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a4df14:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a4df1a:	c5 f8 10 87 78 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x678]
  a4df21:	00 
  a4df22:	c4 e3 79 21 87 7c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x67c],0x10
  a4df29:	00 00 10 
  a4df2c:	c4 e2 79 18 8f 80 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x680]
  a4df33:	00 00 
  a4df35:	62 61 7c 48 10 a7 18 	vmovups zmm28,ZMMWORD PTR [rdi+0x618]
  a4df3c:	06 00 00 
  a4df3f:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4df45:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x30
  a4df4c:	00 00 30 
  a4df4f:	c5 fc 10 8f 58 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x658]
  a4df56:	00 
  a4df57:	c5 fb 10 9f 88 06 00 	vmovsd xmm3,QWORD PTR [rdi+0x688]
  a4df5e:	00 
  a4df5f:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4df65:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4df6c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4df72:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a4df78:	62 62 55 48 7f e8    	vpermt2ps zmm29,zmm5,zmm0
  a4df7e:	c5 f8 10 8f f0 06 00 	vmovups xmm1,XMMWORD PTR [rdi+0x6f0]
  a4df85:	00 
  a4df86:	c4 e3 71 21 8f f4 06 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x6f4],0x10
  a4df8d:	00 00 10 
  a4df90:	c4 e2 79 18 9f f8 06 	vbroadcastss xmm3,DWORD PTR [rdi+0x6f8]
  a4df97:	00 00 
  a4df99:	62 62 65 40 7f e0    	vpermt2ps zmm28,zmm19,zmm0
  a4df9f:	c4 e3 61 0c c1 03    	vblendps xmm0,xmm3,xmm1,0x3
  a4dfa5:	c4 e3 79 21 87 fc 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6fc],0x30
  a4dfac:	00 00 30 
  a4dfaf:	c5 f8 10 8f 68 07 00 	vmovups xmm1,XMMWORD PTR [rdi+0x768]
  a4dfb6:	00 
  a4dfb7:	c4 e3 71 21 8f 6c 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x76c],0x10
  a4dfbe:	00 00 10 
  a4dfc1:	c5 fb 10 9f 00 07 00 	vmovsd xmm3,QWORD PTR [rdi+0x700]
  a4dfc8:	00 
  a4dfc9:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4dfcf:	c5 fc 10 9f d0 06 00 	vmovups ymm3,YMMWORD PTR [rdi+0x6d0]
  a4dfd6:	00 
  a4dfd7:	c4 e2 79 18 a7 70 07 	vbroadcastss xmm4,DWORD PTR [rdi+0x770]
  a4dfde:	00 00 
  a4dfe0:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4dfe7:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a4dfed:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4dff3:	62 61 7c 48 10 b7 90 	vmovups zmm30,ZMMWORD PTR [rdi+0x690]
  a4dffa:	06 00 00 
  a4dffd:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a4e003:	62 62 55 48 7f f8    	vpermt2ps zmm31,zmm5,zmm0
  a4e009:	c4 e3 71 21 8f 74 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x774],0x30
  a4e010:	00 00 30 
  a4e013:	62 62 65 40 7f f0    	vpermt2ps zmm30,zmm19,zmm0
  a4e019:	c5 fb 10 87 78 07 00 	vmovsd xmm0,QWORD PTR [rdi+0x778]
  a4e020:	00 
  a4e021:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  a4e027:	c5 fc 10 8f 48 07 00 	vmovups ymm1,YMMWORD PTR [rdi+0x748]
  a4e02e:	00 
  a4e02f:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4e036:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4e03c:	62 71 7c 48 10 97 08 	vmovups zmm10,ZMMWORD PTR [rdi+0x708]
  a4e043:	07 00 00 
  a4e046:	62 f2 2d 48 77 e8    	vpermi2ps zmm5,zmm10,zmm0
  a4e04c:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a4e052:	62 a1 44 48 5c cc    	vsubps zmm17,zmm7,zmm20
  a4e058:	62 81 3c 48 5c c5    	vsubps zmm16,zmm8,zmm29
  a4e05e:	62 b1 74 40 58 f8    	vaddps zmm7,zmm17,zmm16
  a4e064:	62 51 4c 48 5c e3    	vsubps zmm12,zmm6,zmm11
  a4e06a:	62 51 1c 40 5c d9    	vsubps zmm11,zmm28,zmm9
  a4e070:	62 72 7d 48 18 05 ea 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6275ea]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a4e077:	75 62 ff 
  a4e07a:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a4e080:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a4e086:	62 f2 7d 48 18 35 70 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff627670]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a4e08d:	76 62 ff 
  a4e090:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a4e096:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a4e09d:	0d 
  a4e09e:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a4e0a4:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a4e0aa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a4e0b1:	0c 
  a4e0b2:	62 91 04 48 5c e1    	vsubps zmm4,zmm15,zmm25
  a4e0b8:	62 f1 0c 48 5c dd    	vsubps zmm3,zmm14,zmm5
  a4e0be:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a4e0c4:	62 91 14 48 5c d2    	vsubps zmm2,zmm13,zmm26
  a4e0ca:	62 b1 2c 48 5c ce    	vsubps zmm1,zmm10,zmm22
  a4e0d0:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a4e0d6:	62 e1 44 48 59 de    	vmulps zmm19,zmm7,zmm6
  a4e0dc:	62 c2 7d 48 b8 d8    	vfmadd231ps zmm19,zmm0,zmm8
  a4e0e2:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a4e0e8:	62 f2 4d 48 bc f8    	vfnmadd231ps zmm7,zmm6,zmm0
  a4e0ee:	62 b1 74 40 5c c0    	vsubps zmm0,zmm17,zmm16
  a4e0f4:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a4e0fa:	62 f1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm3
  a4e100:	62 71 6c 48 5c e1    	vsubps zmm12,zmm2,zmm1
  a4e106:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a4e10c:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a4e112:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a4e119:	0b 
  a4e11a:	62 d1 24 48 59 c8    	vmulps zmm1,zmm11,zmm8
  a4e120:	62 f2 4d 48 bc c8    	vfnmadd231ps zmm1,zmm6,zmm0
  a4e126:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a4e12d:	12 
  a4e12e:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a4e134:	62 f2 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm6
  a4e13a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a4e141:	0a 
  a4e142:	62 51 5c 48 59 c8    	vmulps zmm9,zmm4,zmm8
  a4e148:	62 72 1d 48 bc ce    	vfnmadd231ps zmm9,zmm12,zmm6
  a4e14e:	62 f1 5c 40 58 64 24 	vaddps zmm4,zmm20,ZMMWORD PTR [rsp+0x380]
  a4e155:	0e 
  a4e156:	62 f1 1c 40 58 74 24 	vaddps zmm6,zmm28,ZMMWORD PTR [rsp+0x680]
  a4e15d:	1a 
  a4e15e:	62 11 04 48 58 c1    	vaddps zmm8,zmm15,zmm25
  a4e164:	62 51 4c 40 58 d2    	vaddps zmm10,zmm22,zmm10
  a4e16a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a4e171:	0f 
  a4e172:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x400]
  a4e179:	10 
  a4e17a:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x440]
  a4e181:	11 
  a4e182:	62 11 14 48 58 ea    	vaddps zmm13,zmm13,zmm26
  a4e188:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a4e18e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a4e195:	05 
  a4e196:	62 31 7c 48 58 f2    	vaddps zmm14,zmm0,zmm18
  a4e19c:	62 a1 7c 48 5c c2    	vsubps zmm16,zmm0,zmm18
  a4e1a2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a4e1a9:	03 
  a4e1aa:	62 81 7c 48 58 cb    	vaddps zmm17,zmm0,zmm27
  a4e1b0:	62 81 7c 48 5c d3    	vsubps zmm18,zmm0,zmm27
  a4e1b6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a4e1bd:	09 
  a4e1be:	62 a1 7c 48 58 e5    	vaddps zmm20,zmm0,zmm21
  a4e1c4:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a4e1ca:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a4e1d1:	04 
  a4e1d2:	62 a1 7c 48 58 f7    	vaddps zmm22,zmm0,zmm23
  a4e1d8:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a4e1de:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a4e1e5:	01 
  a4e1e6:	62 01 7c 48 58 cf    	vaddps zmm25,zmm0,zmm31
  a4e1ec:	62 01 7c 48 5c d7    	vsubps zmm26,zmm0,zmm31
  a4e1f2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a4e1f9:	02 
  a4e1fa:	62 01 7c 48 58 de    	vaddps zmm27,zmm0,zmm30
  a4e200:	62 01 7c 48 5c e6    	vsubps zmm28,zmm0,zmm30
  a4e206:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a4e20d:	06 
  a4e20e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a4e215:	07 
  a4e216:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a4e21c:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a4e222:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a4e229:	08 
  a4e22a:	62 01 7c 48 58 f8    	vaddps zmm31,zmm0,zmm24
  a4e230:	62 61 3c 40 5c c0    	vsubps zmm24,zmm24,zmm0
  a4e236:	62 b1 54 40 58 c7    	vaddps zmm0,zmm21,zmm23
  a4e23c:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a4e242:	62 81 2c 40 5c fc    	vsubps zmm23,zmm26,zmm28
  a4e248:	62 01 1c 40 58 d2    	vaddps zmm26,zmm28,zmm26
  a4e24e:	62 01 0c 48 58 e7    	vaddps zmm28,zmm14,zmm31
  a4e254:	62 91 0c 48 5c df    	vsubps zmm3,zmm14,zmm31
  a4e25a:	62 01 4c 40 58 f9    	vaddps zmm31,zmm22,zmm25
  a4e260:	62 91 4c 40 5c c9    	vsubps zmm1,zmm22,zmm25
  a4e266:	62 61 5c 48 58 ce    	vaddps zmm25,zmm4,zmm6
  a4e26c:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a4e272:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a4e278:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a4e27e:	62 71 14 48 58 e5    	vaddps zmm12,zmm13,zmm5
  a4e284:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a4e28a:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a4e290:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a4e296:	62 31 14 40 58 d1    	vaddps zmm10,zmm29,zmm17
  a4e29c:	62 a1 14 40 5c c9    	vsubps zmm17,zmm29,zmm17
  a4e2a2:	62 01 5c 40 58 eb    	vaddps zmm29,zmm20,zmm27
  a4e2a8:	62 a1 24 40 5c e4    	vsubps zmm20,zmm27,zmm20
  a4e2ae:	62 41 5c 48 58 db    	vaddps zmm27,zmm4,zmm11
  a4e2b4:	62 f1 24 48 5c e4    	vsubps zmm4,zmm11,zmm4
  a4e2ba:	62 51 54 48 5c d8    	vsubps zmm11,zmm5,zmm8
  a4e2c0:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a4e2c6:	62 72 7d 48 18 05 cc 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6270cc]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a4e2cd:	70 62 ff 
  a4e2d0:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a4e2d6:	62 c1 44 40 59 f8    	vmulps zmm23,zmm23,zmm8
  a4e2dc:	62 c1 54 40 59 e8    	vmulps zmm21,zmm21,zmm8
  a4e2e2:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a4e2e8:	62 41 24 40 59 d8    	vmulps zmm27,zmm27,zmm8
  a4e2ee:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a4e2f4:	62 d1 5c 48 59 d0    	vmulps zmm2,zmm4,zmm8
  a4e2fa:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a4e300:	62 31 7c 40 58 c2    	vaddps zmm8,zmm16,zmm18
  a4e306:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a4e30c:	62 81 54 40 5c d2    	vsubps zmm18,zmm21,zmm26
  a4e312:	62 81 54 40 58 ea    	vaddps zmm21,zmm21,zmm26
  a4e318:	62 01 3c 40 58 d6    	vaddps zmm26,zmm24,zmm30
  a4e31e:	62 01 0c 40 5c c0    	vsubps zmm24,zmm30,zmm24
  a4e324:	62 21 7c 48 58 f7    	vaddps zmm30,zmm0,zmm23
  a4e32a:	62 e1 44 40 5c f0    	vsubps zmm22,zmm23,zmm0
  a4e330:	62 81 1c 40 58 fd    	vaddps zmm23,zmm28,zmm29
  a4e336:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a4e33c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a4e343:	09 
  a4e344:	62 41 4c 48 58 ec    	vaddps zmm29,zmm6,zmm12
  a4e34a:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a4e350:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a4e357:	08 
  a4e358:	62 11 2c 48 58 f7    	vaddps zmm14,zmm10,zmm31
  a4e35e:	62 91 2c 48 5c c7    	vsubps zmm0,zmm10,zmm31
  a4e364:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a4e36b:	02 
  a4e36c:	62 51 34 40 58 e5    	vaddps zmm12,zmm25,zmm13
  a4e372:	62 91 14 48 5c c1    	vsubps zmm0,zmm13,zmm25
  a4e378:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a4e37f:	01 
  a4e380:	62 01 3c 48 58 ce    	vaddps zmm25,zmm8,zmm30
  a4e386:	62 01 3c 48 5c f6    	vsubps zmm30,zmm8,zmm30
  a4e38c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a4e393:	0c 
  a4e394:	62 71 7c 48 58 c7    	vaddps zmm8,zmm0,zmm7
  a4e39a:	62 61 7c 48 5c e7    	vsubps zmm28,zmm0,zmm7
  a4e3a0:	62 21 2c 40 58 fa    	vaddps zmm31,zmm26,zmm18
  a4e3a6:	62 a1 2c 40 5c d2    	vsubps zmm18,zmm26,zmm18
  a4e3ac:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a4e3b3:	0d 
  a4e3b4:	62 21 7c 48 58 d3    	vaddps zmm26,zmm0,zmm19
  a4e3ba:	62 e1 64 40 5c d8    	vsubps zmm19,zmm19,zmm0
  a4e3c0:	62 f1 64 48 58 e1    	vaddps zmm4,zmm3,zmm1
  a4e3c6:	62 71 64 48 5c f9    	vsubps zmm15,zmm3,zmm1
  a4e3cc:	62 f1 6c 48 5c dd    	vsubps zmm3,zmm2,zmm5
  a4e3d2:	62 71 6c 48 58 ed    	vaddps zmm13,zmm2,zmm5
  a4e3d8:	62 b1 5c 40 58 d1    	vaddps zmm2,zmm20,zmm17
  a4e3de:	62 a1 74 40 5c e4    	vsubps zmm20,zmm17,zmm20
  a4e3e4:	62 c1 24 40 58 cb    	vaddps zmm17,zmm27,zmm11
  a4e3ea:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a4e3f0:	62 b1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm21
  a4e3f6:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a4e3fc:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x480]
  a4e403:	12 
  a4e404:	62 d1 54 48 58 c1    	vaddps zmm0,zmm5,zmm9
  a4e40a:	62 d1 54 48 5c f9    	vsubps zmm7,zmm5,zmm9
  a4e410:	62 31 3c 40 58 ce    	vaddps zmm9,zmm24,zmm22
  a4e416:	62 b1 3c 40 5c f6    	vsubps zmm6,zmm24,zmm22
  a4e41c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x2c0]
  a4e423:	0b 
  a4e424:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x280]
  a4e42b:	0a 
  a4e42c:	62 41 54 48 5c c2    	vsubps zmm24,zmm5,zmm10
  a4e432:	62 d1 54 48 58 ea    	vaddps zmm5,zmm5,zmm10
  a4e438:	62 41 44 40 58 dc    	vaddps zmm27,zmm23,zmm12
  a4e43e:	62 51 44 40 5c d4    	vsubps zmm10,zmm23,zmm12
  a4e444:	62 11 0c 48 58 e5    	vaddps zmm12,zmm14,zmm29
  a4e44a:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a4e451:	04 
  a4e452:	62 81 0c 48 5c ed    	vsubps zmm21,zmm14,zmm29
  a4e458:	62 81 34 40 58 fa    	vaddps zmm23,zmm25,zmm26
  a4e45e:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a4e464:	62 51 04 40 58 e0    	vaddps zmm12,zmm31,zmm8
  a4e46a:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a4e471:	06 
  a4e472:	62 51 04 40 5c c0    	vsubps zmm8,zmm31,zmm8
  a4e478:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a4e47f:	07 
  a4e480:	62 31 5c 48 58 e1    	vaddps zmm12,zmm4,zmm17
  a4e486:	62 b1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm17
  a4e48c:	62 71 6c 48 58 c3    	vaddps zmm8,zmm2,zmm3
  a4e492:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm8
  a4e499:	05 
  a4e49a:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a4e4a0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a4e4a7:	0d 
  a4e4a8:	62 81 74 48 58 f0    	vaddps zmm22,zmm1,zmm24
  a4e4ae:	62 91 74 48 5c d0    	vsubps zmm2,zmm1,zmm24
  a4e4b4:	62 61 34 48 58 c0    	vaddps zmm24,zmm9,zmm0
  a4e4ba:	62 f1 34 48 5c c8    	vsubps zmm1,zmm9,zmm0
  a4e4c0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a4e4c7:	09 
  a4e4c8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a4e4cf:	08 
  a4e4d0:	62 61 7c 48 58 d3    	vaddps zmm26,zmm0,zmm3
  a4e4d6:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a4e4dc:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x80]
  a4e4e3:	02 
  a4e4e4:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a4e4eb:	01 
  a4e4ec:	62 d1 0c 48 58 d8    	vaddps zmm3,zmm14,zmm8
  a4e4f2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a4e4f9:	03 
  a4e4fa:	62 d1 3c 48 5c de    	vsubps zmm3,zmm8,zmm14
  a4e500:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a4e507:	0c 
  a4e508:	62 81 0c 40 58 cc    	vaddps zmm17,zmm30,zmm28
  a4e50e:	62 01 0c 40 5c f4    	vsubps zmm30,zmm30,zmm28
  a4e514:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a4e51a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a4e521:	02 
  a4e522:	62 b1 6c 40 5c db    	vsubps zmm3,zmm18,zmm19
  a4e528:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a4e52f:	0b 
  a4e530:	62 51 04 48 58 c5    	vaddps zmm8,zmm15,zmm13
  a4e536:	62 41 04 48 5c e5    	vsubps zmm28,zmm15,zmm13
  a4e53c:	62 d1 5c 40 58 db    	vaddps zmm3,zmm20,zmm11
  a4e542:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a4e549:	01 
  a4e54a:	62 d1 5c 40 5c db    	vsubps zmm3,zmm20,zmm11
  a4e550:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a4e557:	0a 
  a4e558:	62 71 7c 40 58 ef    	vaddps zmm13,zmm16,zmm7
  a4e55e:	62 71 7c 40 5c df    	vsubps zmm11,zmm16,zmm7
  a4e564:	62 e1 4c 48 5c c5    	vsubps zmm16,zmm6,zmm5
  a4e56a:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a4e570:	62 71 7c 48 28 35 06 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff678a06]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4e577:	8a 67 ff 
  a4e57a:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a4e580:	62 52 0d 48 7f fa    	vpermt2ps zmm15,zmm14,zmm10
  a4e586:	62 61 7c 48 28 2d 30 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff678a30]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4e58d:	8a 67 ff 
  a4e590:	62 42 15 40 7f da    	vpermt2ps zmm27,zmm29,zmm10
  a4e596:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a4e59c:	62 12 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm25
  a4e5a2:	62 82 15 40 7f f9    	vpermt2ps zmm23,zmm29,zmm25
  a4e5a8:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a4e5ae:	62 72 0d 48 7f e4    	vpermt2ps zmm12,zmm14,zmm4
  a4e5b4:	62 f2 15 40 7f dc    	vpermt2ps zmm3,zmm29,zmm4
  a4e5ba:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a4e5c1:	09 
  a4e5c2:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a4e5c8:	62 e2 0d 48 7f f2    	vpermt2ps zmm22,zmm14,zmm2
  a4e5ce:	62 f2 15 40 7f da    	vpermt2ps zmm3,zmm29,zmm2
  a4e5d4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a4e5db:	08 
  a4e5dc:	62 01 7c 48 28 fa    	vmovaps zmm31,zmm26
  a4e5e2:	62 62 0d 48 7f f8    	vpermt2ps zmm31,zmm14,zmm0
  a4e5e8:	62 62 15 40 7f d0    	vpermt2ps zmm26,zmm29,zmm0
  a4e5ee:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a4e5f4:	62 82 0d 48 7f d6    	vpermt2ps zmm18,zmm14,zmm30
  a4e5fa:	62 82 15 40 7f ce    	vpermt2ps zmm17,zmm29,zmm30
  a4e600:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a4e606:	62 82 0d 48 7f dc    	vpermt2ps zmm19,zmm14,zmm28
  a4e60c:	62 12 15 40 7f c4    	vpermt2ps zmm8,zmm29,zmm28
  a4e612:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a4e618:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a4e61e:	62 c2 0d 48 7f e3    	vpermt2ps zmm20,zmm14,zmm11
  a4e624:	62 d2 15 40 7f c3    	vpermt2ps zmm0,zmm29,zmm11
  a4e62a:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a4e630:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a4e637:	04 
  a4e638:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a4e63e:	62 b2 0d 48 7f dd    	vpermt2ps zmm3,zmm14,zmm21
  a4e644:	62 b2 15 40 7f c5    	vpermt2ps zmm0,zmm29,zmm21
  a4e64a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a4e651:	04 
  a4e652:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a4e659:	06 
  a4e65a:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a4e660:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a4e667:	07 
  a4e668:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a4e66e:	62 f2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm0
  a4e674:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a4e67b:	06 
  a4e67c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a4e683:	05 
  a4e684:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a4e68a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a4e691:	0d 
  a4e692:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a4e698:	62 f2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm0
  a4e69e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a4e6a5:	05 
  a4e6a6:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a4e6ac:	62 62 0d 48 7f c1    	vpermt2ps zmm24,zmm14,zmm1
  a4e6b2:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a4e6b8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a4e6bf:	07 
  a4e6c0:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a4e6c7:	03 
  a4e6c8:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a4e6ce:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a4e6d5:	0c 
  a4e6d6:	62 f2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm1
  a4e6dc:	62 f2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm1
  a4e6e2:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a4e6e8:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a4e6ef:	02 
  a4e6f0:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a4e6f6:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x2c0]
  a4e6fd:	0b 
  a4e6fe:	62 f2 0d 48 7f f7    	vpermt2ps zmm6,zmm14,zmm7
  a4e704:	62 f2 15 40 7f e7    	vpermt2ps zmm4,zmm29,zmm7
  a4e70a:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a4e710:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a4e717:	01 
  a4e718:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a4e71e:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a4e725:	0a 
  a4e726:	62 42 0d 48 7f c9    	vpermt2ps zmm25,zmm14,zmm9
  a4e72c:	62 d2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm9
  a4e732:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a4e738:	62 72 7d 40 77 f5    	vpermi2ps zmm14,zmm16,zmm5
  a4e73e:	62 e2 15 40 7f c5    	vpermt2ps zmm16,zmm29,zmm5
  a4e744:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm16
  a4e74b:	01 
  a4e74c:	62 61 7c 48 28 25 aa 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6787aa]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4e753:	87 67 ff 
  a4e756:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a4e75c:	62 92 1d 40 7f ef    	vpermt2ps zmm5,zmm28,zmm31
  a4e762:	62 61 7c 48 28 2d d4 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6787d4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4e769:	87 67 ff 
  a4e76c:	62 12 15 40 7f ff    	vpermt2ps zmm15,zmm29,zmm31
  a4e772:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm15
  a4e779:	03 
  a4e77a:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a4e780:	62 32 1d 40 7f d2    	vpermt2ps zmm10,zmm28,zmm18
  a4e786:	62 b2 15 40 7f e2    	vpermt2ps zmm4,zmm29,zmm18
  a4e78c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a4e793:	02 
  a4e794:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a4e79a:	62 32 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm19
  a4e7a0:	62 32 15 40 7f e3    	vpermt2ps zmm12,zmm29,zmm19
  a4e7a6:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  a4e7ac:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a4e7b2:	62 a2 1d 40 7f dc    	vpermt2ps zmm19,zmm28,zmm20
  a4e7b8:	62 a2 15 40 7f ec    	vpermt2ps zmm21,zmm29,zmm20
  a4e7be:	62 81 7c 48 28 f3    	vmovaps zmm22,zmm27
  a4e7c4:	62 02 1d 40 7f da    	vpermt2ps zmm27,zmm28,zmm26
  a4e7ca:	62 82 15 40 7f f2    	vpermt2ps zmm22,zmm29,zmm26
  a4e7d0:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a4e7d6:	62 a2 1d 40 7f f9    	vpermt2ps zmm23,zmm28,zmm17
  a4e7dc:	62 22 15 40 7f d1    	vpermt2ps zmm26,zmm29,zmm17
  a4e7e2:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x240]
  a4e7e9:	09 
  a4e7ea:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a4e7f0:	62 c2 1d 40 7f c8    	vpermt2ps zmm17,zmm28,zmm8
  a4e7f6:	62 c2 15 40 7f c0    	vpermt2ps zmm16,zmm29,zmm8
  a4e7fc:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x200]
  a4e803:	08 
  a4e804:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a4e80a:	62 12 1d 40 7f c6    	vpermt2ps zmm8,zmm28,zmm30
  a4e810:	62 12 15 40 7f ee    	vpermt2ps zmm13,zmm29,zmm30
  a4e816:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a4e81c:	62 62 1d 40 7f f0    	vpermt2ps zmm30,zmm28,zmm0
  a4e822:	62 f2 15 40 7f d8    	vpermt2ps zmm3,zmm29,zmm0
  a4e828:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a4e82e:	62 e2 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm6
  a4e834:	62 f2 15 40 7f d6    	vpermt2ps zmm2,zmm29,zmm6
  a4e83a:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a4e840:	62 82 1d 40 7f e1    	vpermt2ps zmm20,zmm28,zmm25
  a4e846:	62 12 15 40 7f d9    	vpermt2ps zmm11,zmm29,zmm25
  a4e84c:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a4e852:	62 d2 1d 40 7f e6    	vpermt2ps zmm4,zmm28,zmm14
  a4e858:	62 42 15 40 7f c6    	vpermt2ps zmm24,zmm29,zmm14
  a4e85e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a4e865:	04 
  a4e866:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a4e86c:	62 62 1d 40 7f f9    	vpermt2ps zmm31,zmm28,zmm1
  a4e872:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a4e878:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a4e87f:	04 
  a4e880:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a4e887:	06 
  a4e888:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a4e88e:	62 62 1d 40 7f cf    	vpermt2ps zmm25,zmm28,zmm7
  a4e894:	62 f2 15 40 7f c7    	vpermt2ps zmm0,zmm29,zmm7
  a4e89a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a4e8a1:	06 
  a4e8a2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a4e8a9:	05 
  a4e8aa:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a4e8b0:	62 d2 1d 40 7f c9    	vpermt2ps zmm1,zmm28,zmm9
  a4e8b6:	62 d2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm9
  a4e8bc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a4e8c3:	05 
  a4e8c4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a4e8cb:	07 
  a4e8cc:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a4e8d3:	01 
  a4e8d4:	62 62 7d 48 77 e6    	vpermi2ps zmm28,zmm0,zmm6
  a4e8da:	62 f2 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm6
  a4e8e0:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a4e8e6:	62 d1 d5 48 14 c7    	vunpcklpd zmm0,zmm5,zmm15
  a4e8ec:	62 51 d5 48 15 cf    	vunpckhpd zmm9,zmm5,zmm15
  a4e8f2:	62 b1 ad 48 14 eb    	vunpcklpd zmm5,zmm10,zmm19
  a4e8f8:	62 b1 ad 48 15 fb    	vunpckhpd zmm7,zmm10,zmm19
  a4e8fe:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0xc0]
  a4e905:	03 
  a4e906:	62 d1 ad 48 14 f4    	vunpcklpd zmm6,zmm10,zmm12
  a4e90c:	62 51 ad 48 15 f4    	vunpckhpd zmm14,zmm10,zmm12
  a4e912:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a4e919:	02 
  a4e91a:	62 31 ad 48 14 e5    	vunpcklpd zmm12,zmm10,zmm21
  a4e920:	62 31 ad 48 15 fd    	vunpckhpd zmm15,zmm10,zmm21
  a4e926:	62 31 a5 40 14 d1    	vunpcklpd zmm10,zmm27,zmm17
  a4e92c:	62 a1 a5 40 15 c9    	vunpckhpd zmm17,zmm27,zmm17
  a4e932:	62 c1 c5 40 14 e8    	vunpcklpd zmm21,zmm23,zmm8
  a4e938:	62 41 c5 40 15 d8    	vunpckhpd zmm27,zmm23,zmm8
  a4e93e:	62 a1 cd 40 14 d8    	vunpcklpd zmm19,zmm22,zmm16
  a4e944:	62 a1 cd 40 15 c0    	vunpckhpd zmm16,zmm22,zmm16
  a4e94a:	62 c1 ad 40 14 f5    	vunpcklpd zmm22,zmm26,zmm13
  a4e950:	62 41 ad 40 15 d5    	vunpckhpd zmm26,zmm26,zmm13
  a4e956:	62 71 7c 48 28 05 a0 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6784a0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4e95d:	84 67 ff 
  a4e960:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a4e966:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a4e96c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a4e973:	09 
  a4e974:	62 f1 7c 48 28 05 c2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6784c2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4e97b:	84 67 ff 
  a4e97e:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a4e984:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm13
  a4e98b:	0f 
  a4e98c:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a4e992:	62 f2 3d 48 7f ef    	vpermt2ps zmm5,zmm8,zmm7
  a4e998:	62 72 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm7
  a4e99e:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a4e9a5:	01 
  a4e9a6:	62 e1 7c 48 28 fe    	vmovaps zmm23,zmm6
  a4e9ac:	62 c2 3d 48 7f fc    	vpermt2ps zmm23,zmm8,zmm12
  a4e9b2:	62 d2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm12
  a4e9b8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a4e9bf:	02 
  a4e9c0:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a4e9c6:	62 52 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm15
  a4e9cc:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a4e9d2:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a4e9d8:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a4e9de:	62 32 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm21
  a4e9e4:	62 32 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm21
  a4e9ea:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm10
  a4e9f1:	0e 
  a4e9f2:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a4e9f8:	62 92 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm27
  a4e9fe:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm6
  a4ea05:	07 
  a4ea06:	62 82 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm27
  a4ea0c:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a4ea12:	62 b2 3d 48 7f f6    	vpermt2ps zmm6,zmm8,zmm22
  a4ea18:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm6
  a4ea1f:	12 
  a4ea20:	62 a2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm22
  a4ea26:	62 82 3d 48 7f c2    	vpermt2ps zmm16,zmm8,zmm26
  a4ea2c:	62 21 8d 40 14 d4    	vunpcklpd zmm26,zmm30,zmm20
  a4ea32:	62 21 8d 40 15 dc    	vunpckhpd zmm27,zmm30,zmm20
  a4ea38:	62 71 ed 40 14 e4    	vunpcklpd zmm12,zmm18,zmm4
  a4ea3e:	62 f1 ed 40 15 e4    	vunpckhpd zmm4,zmm18,zmm4
  a4ea44:	62 c1 e5 48 14 d3    	vunpcklpd zmm18,zmm3,zmm11
  a4ea4a:	62 d1 e5 48 15 fb    	vunpckhpd zmm7,zmm3,zmm11
  a4ea50:	62 91 ed 48 14 d8    	vunpcklpd zmm3,zmm2,zmm24
  a4ea56:	62 81 ed 48 15 e8    	vunpckhpd zmm21,zmm2,zmm24
  a4ea5c:	62 61 85 40 14 f1    	vunpcklpd zmm30,zmm31,zmm1
  a4ea62:	62 e1 85 40 15 e1    	vunpckhpd zmm20,zmm31,zmm1
  a4ea68:	62 81 b5 40 14 f4    	vunpcklpd zmm22,zmm25,zmm28
  a4ea6e:	62 01 b5 40 15 c4    	vunpckhpd zmm24,zmm25,zmm28
  a4ea74:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a4ea7b:	04 
  a4ea7c:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a4ea83:	05 
  a4ea84:	62 f1 f5 48 14 d6    	vunpcklpd zmm2,zmm1,zmm6
  a4ea8a:	62 71 f5 48 15 de    	vunpckhpd zmm11,zmm1,zmm6
  a4ea90:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a4ea97:	06 
  a4ea98:	62 01 f5 48 14 cd    	vunpcklpd zmm25,zmm1,zmm29
  a4ea9e:	62 01 f5 48 15 e5    	vunpckhpd zmm28,zmm1,zmm29
  a4eaa4:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a4eaaa:	62 d2 3d 48 7f cc    	vpermt2ps zmm1,zmm8,zmm12
  a4eab0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a4eab7:	06 
  a4eab8:	62 42 7d 48 7f d4    	vpermt2ps zmm26,zmm0,zmm12
  a4eabe:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a4eac4:	62 72 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm4
  a4eaca:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a4ead0:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4ead6:	62 f2 3d 48 7f cb    	vpermt2ps zmm1,zmm8,zmm3
  a4eadc:	62 e2 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm3
  a4eae2:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4eae8:	62 b2 3d 48 7f e5    	vpermt2ps zmm4,zmm8,zmm21
  a4eaee:	62 b2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm21
  a4eaf4:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a4eafa:	62 b2 3d 48 7f de    	vpermt2ps zmm3,zmm8,zmm22
  a4eb00:	62 22 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm22
  a4eb06:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a4eb0c:	62 82 3d 48 7f f0    	vpermt2ps zmm22,zmm8,zmm24
  a4eb12:	62 82 7d 48 7f e0    	vpermt2ps zmm20,zmm0,zmm24
  a4eb18:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a4eb1e:	62 92 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm25
  a4eb24:	62 02 3d 48 7f c1    	vpermt2ps zmm24,zmm8,zmm25
  a4eb2a:	62 12 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm28
  a4eb30:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a4eb37:	62 71 7c 48 10 42 10 	vmovups zmm8,ZMMWORD PTR [rdx+0x400]
  a4eb3e:	62 d1 64 48 59 f0    	vmulps zmm6,zmm3,zmm8
  a4eb44:	62 f2 05 48 b8 f0    	vfmadd231ps zmm6,zmm15,zmm0
  a4eb4a:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm6
  a4eb51:	0d 
  a4eb52:	62 d1 04 48 59 f0    	vmulps zmm6,zmm15,zmm8
  a4eb58:	62 f2 7d 48 bc f3    	vfnmadd231ps zmm6,zmm0,zmm3
  a4eb5e:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm6
  a4eb65:	08 
  a4eb66:	62 f1 7c 48 10 42 04 	vmovups zmm0,ZMMWORD PTR [rdx+0x100]
  a4eb6d:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a4eb74:	62 f1 1c 48 59 f0    	vmulps zmm6,zmm12,zmm0
  a4eb7a:	62 f2 55 48 b8 f3    	vfmadd231ps zmm6,zmm5,zmm3
  a4eb80:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a4eb87:	0c 
  a4eb88:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a4eb8e:	62 d2 65 48 bc c4    	vfnmadd231ps zmm0,zmm3,zmm12
  a4eb94:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a4eb9b:	03 
  a4eb9c:	62 f1 7c 48 10 42 17 	vmovups zmm0,ZMMWORD PTR [rdx+0x5c0]
  a4eba3:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a4ebaa:	62 f1 5c 40 59 eb    	vmulps zmm5,zmm20,zmm3
  a4ebb0:	62 f2 75 40 b8 e8    	vfmadd231ps zmm5,zmm17,zmm0
  a4ebb6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm5
  a4ebbd:	0b 
  a4ebbe:	62 e1 74 40 59 cb    	vmulps zmm17,zmm17,zmm3
  a4ebc4:	62 a2 7d 48 bc cc    	vfnmadd231ps zmm17,zmm0,zmm20
  a4ebca:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm17
  a4ebd1:	18 
  a4ebd2:	62 f1 7c 48 10 42 1d 	vmovups zmm0,ZMMWORD PTR [rdx+0x740]
  a4ebd9:	62 f1 7c 48 10 5a 1c 	vmovups zmm3,ZMMWORD PTR [rdx+0x700]
  a4ebe0:	62 f1 24 48 59 eb    	vmulps zmm5,zmm11,zmm3
  a4ebe6:	62 f2 7d 40 b8 e8    	vfmadd231ps zmm5,zmm16,zmm0
  a4ebec:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm5
  a4ebf3:	0a 
  a4ebf4:	62 f1 7c 40 59 db    	vmulps zmm3,zmm16,zmm3
  a4ebfa:	62 d2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm11
  a4ec00:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a4ec06:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm3
  a4ec0d:	19 
  a4ec0e:	62 f1 7c 48 10 42 1b 	vmovups zmm0,ZMMWORD PTR [rdx+0x6c0]
  a4ec15:	62 f1 7c 48 10 5a 1a 	vmovups zmm3,ZMMWORD PTR [rdx+0x680]
  a4ec1c:	62 f1 6c 48 59 eb    	vmulps zmm5,zmm2,zmm3
  a4ec22:	62 f2 65 40 b8 e8    	vfmadd231ps zmm5,zmm19,zmm0
  a4ec28:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a4ec2e:	62 f1 64 40 59 db    	vmulps zmm3,zmm19,zmm3
  a4ec34:	62 f2 7d 48 bc da    	vfnmadd231ps zmm3,zmm0,zmm2
  a4ec3a:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a4ec40:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm3
  a4ec47:	17 
  a4ec48:	62 f1 7c 48 10 42 0f 	vmovups zmm0,ZMMWORD PTR [rdx+0x3c0]
  a4ec4f:	62 f1 7c 48 10 52 0e 	vmovups zmm2,ZMMWORD PTR [rdx+0x380]
  a4ec56:	62 f1 44 48 59 da    	vmulps zmm3,zmm7,zmm2
  a4ec5c:	62 f2 15 48 b8 d8    	vfmadd231ps zmm3,zmm13,zmm0
  a4ec62:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm3
  a4ec69:	11 
  a4ec6a:	62 71 14 48 59 e2    	vmulps zmm12,zmm13,zmm2
  a4ec70:	62 72 7d 48 bc e7    	vfnmadd231ps zmm12,zmm0,zmm7
  a4ec76:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a4ec7d:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a4ec84:	62 f1 2c 40 59 d8    	vmulps zmm3,zmm26,zmm0
  a4ec8a:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a4ec91:	0f 
  a4ec92:	62 f2 55 48 b8 da    	vfmadd231ps zmm3,zmm5,zmm2
  a4ec98:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a4ec9f:	10 
  a4eca0:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a4eca6:	62 92 6d 48 bc c2    	vfnmadd231ps zmm0,zmm2,zmm26
  a4ecac:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a4ecb2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a4ecb9:	13 
  a4ecba:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a4ecc1:	62 f1 7c 48 10 52 08 	vmovups zmm2,ZMMWORD PTR [rdx+0x200]
  a4ecc8:	62 71 74 48 59 d2    	vmulps zmm10,zmm1,zmm2
  a4ecce:	62 72 45 40 b8 d0    	vfmadd231ps zmm10,zmm23,zmm0
  a4ecd4:	62 f1 44 40 59 d2    	vmulps zmm2,zmm23,zmm2
  a4ecda:	62 f2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm1
  a4ece0:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a4ece6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm2
  a4eced:	16 
  a4ecee:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a4ecf5:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a4ecfc:	62 f1 34 48 59 d1    	vmulps zmm2,zmm9,zmm1
  a4ed02:	62 f2 5d 48 bc d0    	vfnmadd231ps zmm2,zmm4,zmm0
  a4ed08:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a4ed0e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a4ed15:	14 
  a4ed16:	62 e1 5c 48 59 e1    	vmulps zmm20,zmm4,zmm1
  a4ed1c:	62 c2 7d 48 b8 e1    	vfmadd231ps zmm20,zmm0,zmm9
  a4ed22:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a4ed29:	62 f1 7c 48 10 4a 12 	vmovups zmm1,ZMMWORD PTR [rdx+0x480]
  a4ed30:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a4ed37:	0e 
  a4ed38:	62 f1 6c 48 59 d9    	vmulps zmm3,zmm2,zmm1
  a4ed3e:	62 f2 0d 40 bc d8    	vfnmadd231ps zmm3,zmm30,zmm0
  a4ed44:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a4ed4a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a4ed51:	15 
  a4ed52:	62 61 0c 40 59 c9    	vmulps zmm25,zmm30,zmm1
  a4ed58:	62 62 7d 48 b8 ca    	vfmadd231ps zmm25,zmm0,zmm2
  a4ed5e:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a4ed65:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a4ed6c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a4ed73:	01 
  a4ed74:	62 61 6c 48 59 f1    	vmulps zmm30,zmm2,zmm1
  a4ed7a:	62 62 25 40 bc f0    	vfnmadd231ps zmm30,zmm27,zmm0
  a4ed80:	62 e1 24 40 59 d9    	vmulps zmm19,zmm27,zmm1
  a4ed86:	62 e2 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm2
  a4ed8c:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a4ed93:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a4ed9a:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a4eda1:	12 
  a4eda2:	62 61 6c 48 59 d1    	vmulps zmm26,zmm2,zmm1
  a4eda8:	62 62 3d 40 bc d0    	vfnmadd231ps zmm26,zmm24,zmm0
  a4edae:	62 71 3c 40 59 f9    	vmulps zmm15,zmm24,zmm1
  a4edb4:	62 72 7d 48 b8 fa    	vfmadd231ps zmm15,zmm0,zmm2
  a4edba:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a4edc1:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a4edc8:	62 f1 6c 40 59 d3    	vmulps zmm2,zmm18,zmm3
  a4edce:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a4edd5:	02 
  a4edd6:	62 f2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm0
  a4eddc:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a4ede3:	04 
  a4ede4:	62 f1 74 48 59 cb    	vmulps zmm1,zmm1,zmm3
  a4edea:	62 b2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm18
  a4edf0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a4edf7:	01 
  a4edf8:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a4edff:	62 f1 7c 48 10 5a 14 	vmovups zmm3,ZMMWORD PTR [rdx+0x500]
  a4ee06:	62 f1 4c 40 59 d3    	vmulps zmm2,zmm22,zmm3
  a4ee0c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a4ee13:	07 
  a4ee14:	62 f2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm0
  a4ee1a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a4ee21:	02 
  a4ee22:	62 f1 74 48 59 db    	vmulps zmm3,zmm1,zmm3
  a4ee28:	62 b2 7d 48 bc de    	vfnmadd231ps zmm3,zmm0,zmm22
  a4ee2e:	62 61 7c 48 28 fb    	vmovaps zmm31,zmm3
  a4ee34:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a4ee3b:	08 
  a4ee3c:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0xc0]
  a4ee43:	03 
  a4ee44:	62 d1 74 40 5c fe    	vsubps zmm7,zmm17,zmm14
  a4ee4a:	62 f2 7d 48 18 1d 04 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff626904]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a4ee51:	69 62 ff 
  a4ee54:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a4ee5a:	62 f2 7d 48 18 2d 3c 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff62653c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a4ee61:	65 62 ff 
  a4ee64:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4ee6a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4ee71:	05 
  a4ee72:	62 61 7c 48 59 eb    	vmulps zmm29,zmm0,zmm3
  a4ee78:	62 62 55 48 bc ef    	vfnmadd231ps zmm29,zmm5,zmm7
  a4ee7e:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a4ee84:	62 d1 7c 40 5c c4    	vsubps zmm0,zmm16,zmm12
  a4ee8a:	62 d1 4c 48 5c f8    	vsubps zmm7,zmm6,zmm8
  a4ee90:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a4ee96:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4ee9c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a4eea3:	07 
  a4eea4:	62 61 7c 48 59 e3    	vmulps zmm28,zmm0,zmm3
  a4eeaa:	62 62 55 48 bc e7    	vfnmadd231ps zmm28,zmm5,zmm7
  a4eeb0:	62 91 0c 40 5c c2    	vsubps zmm0,zmm30,zmm26
  a4eeb6:	62 f1 14 48 5c fc    	vsubps zmm7,zmm13,zmm4
  a4eebc:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a4eec2:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4eec8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a4eecf:	12 
  a4eed0:	62 e1 7c 48 59 fb    	vmulps zmm23,zmm0,zmm3
  a4eed6:	62 e2 55 48 bc ff    	vfnmadd231ps zmm23,zmm5,zmm7
  a4eedc:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x300]
  a4eee3:	0c 
  a4eee4:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x340]
  a4eeeb:	0d 
  a4eeec:	62 b1 3c 48 5c c0    	vsubps zmm0,zmm8,zmm16
  a4eef2:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x2c0]
  a4eef9:	0b 
  a4eefa:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a4ef01:	0a 
  a4ef02:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a4ef08:	62 71 44 48 59 e3    	vmulps zmm12,zmm7,zmm3
  a4ef0e:	62 72 7d 48 b8 e5    	vfmadd231ps zmm12,zmm0,zmm5
  a4ef14:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm12
  a4ef1b:	0e 
  a4ef1c:	62 e1 7c 48 59 f3    	vmulps zmm22,zmm0,zmm3
  a4ef22:	62 e2 55 48 bc f7    	vfnmadd231ps zmm22,zmm5,zmm7
  a4ef28:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a4ef2e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x440]
  a4ef35:	11 
  a4ef36:	62 f1 24 48 5c c2    	vsubps zmm0,zmm11,zmm2
  a4ef3c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a4ef43:	10 
  a4ef44:	62 d1 74 48 5c fa    	vsubps zmm7,zmm1,zmm10
  a4ef4a:	62 e1 44 48 59 eb    	vmulps zmm21,zmm7,zmm3
  a4ef50:	62 e2 7d 48 b8 ed    	vfmadd231ps zmm21,zmm0,zmm5
  a4ef56:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm21
  a4ef5d:	1a 
  a4ef5e:	62 e1 7c 48 59 d3    	vmulps zmm18,zmm0,zmm3
  a4ef64:	62 e2 55 48 bc d7    	vfnmadd231ps zmm18,zmm5,zmm7
  a4ef6a:	62 d1 64 40 5c c7    	vsubps zmm0,zmm19,zmm15
  a4ef70:	62 91 5c 40 5c f9    	vsubps zmm7,zmm20,zmm25
  a4ef76:	62 71 44 48 59 db    	vmulps zmm11,zmm7,zmm3
  a4ef7c:	62 72 7d 48 b8 dd    	vfmadd231ps zmm11,zmm0,zmm5
  a4ef82:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm11
  a4ef89:	0f 
  a4ef8a:	62 71 7c 48 59 f3    	vmulps zmm14,zmm0,zmm3
  a4ef90:	62 72 45 48 bc f5    	vfnmadd231ps zmm14,zmm7,zmm5
  a4ef96:	62 61 4c 48 58 c4    	vaddps zmm24,zmm6,zmm4
  a4ef9c:	62 b1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm16
  a4efa2:	62 51 74 48 58 ea    	vaddps zmm13,zmm1,zmm10
  a4efa8:	62 71 74 40 58 da    	vaddps zmm11,zmm17,zmm2
  a4efae:	62 01 5c 40 58 d9    	vaddps zmm27,zmm20,zmm25
  a4efb4:	62 41 64 40 58 cf    	vaddps zmm25,zmm19,zmm15
  a4efba:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x600]
  a4efc1:	18 
  a4efc2:	62 f1 74 48 58 74 24 	vaddps zmm6,zmm1,ZMMWORD PTR [rsp+0x640]
  a4efc9:	19 
  a4efca:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a4efd1:	03 
  a4efd2:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x200]
  a4efd9:	08 
  a4efda:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a4efe1:	13 
  a4efe2:	62 71 74 48 58 54 24 	vaddps zmm10,zmm1,ZMMWORD PTR [rsp+0x580]
  a4efe9:	16 
  a4efea:	62 71 34 48 58 4c 24 	vaddps zmm9,zmm9,ZMMWORD PTR [rsp+0x5c0]
  a4eff1:	17 
  a4eff2:	62 f2 7d 48 18 0d ec 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6266ec]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a4eff9:	66 62 ff 
  a4effc:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a4f002:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a4f009:	01 
  a4f00a:	62 e2 65 40 a8 e7    	vfmadd213ps zmm20,zmm19,zmm7
  a4f010:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm19
  a4f017:	19 
  a4f018:	62 f2 7d 48 18 15 22 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff626622]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a4f01f:	66 62 ff 
  a4f022:	62 e2 4d 48 bc e2    	vfnmadd231ps zmm20,zmm6,zmm2
  a4f028:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm6
  a4f02f:	18 
  a4f030:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a4f036:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a4f03c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm31
  a4f043:	25 
  a4f044:	62 82 35 48 a8 c7    	vfmadd213ps zmm16,zmm9,zmm31
  a4f04a:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm9
  a4f051:	17 
  a4f052:	62 e2 2d 48 bc c2    	vfnmadd231ps zmm16,zmm10,zmm2
  a4f058:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm10
  a4f05f:	16 
  a4f060:	62 d1 5c 40 5c dc    	vsubps zmm3,zmm20,zmm12
  a4f066:	62 b1 7c 40 5c e5    	vsubps zmm4,zmm16,zmm21
  a4f06c:	62 f1 64 48 5c ec    	vsubps zmm5,zmm3,zmm4
  a4f072:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a4f079:	03 
  a4f07a:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a4f080:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a4f087:	0c 
  a4f088:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x500]
  a4f08f:	14 
  a4f090:	62 e1 64 48 58 6c 24 	vaddps zmm21,zmm3,ZMMWORD PTR [rsp+0x540]
  a4f097:	15 
  a4f098:	62 01 0c 40 58 fa    	vaddps zmm31,zmm30,zmm26
  a4f09e:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a4f0a4:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x100]
  a4f0ab:	04 
  a4f0ac:	62 12 7d 48 a8 fa    	vfmadd213ps zmm15,zmm0,zmm26
  a4f0b2:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a4f0b8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a4f0bf:	22 
  a4f0c0:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a4f0c6:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm24
  a4f0cd:	20 
  a4f0ce:	62 72 3d 40 bc fa    	vfnmadd231ps zmm15,zmm24,zmm2
  a4f0d4:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a4f0da:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x80]
  a4f0e1:	02 
  a4f0e2:	62 02 25 48 a8 c6    	vfmadd213ps zmm24,zmm11,zmm30
  a4f0e8:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm11
  a4f0ef:	1e 
  a4f0f0:	62 62 15 48 bc c2    	vfnmadd231ps zmm24,zmm13,zmm2
  a4f0f6:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm13
  a4f0fd:	1d 
  a4f0fe:	62 f1 04 48 58 5c 24 	vaddps zmm3,zmm15,ZMMWORD PTR [rsp+0x140]
  a4f105:	05 
  a4f106:	62 f1 3c 40 58 64 24 	vaddps zmm4,zmm24,ZMMWORD PTR [rsp+0x1c0]
  a4f10d:	07 
  a4f10e:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a4f114:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a4f11b:	0a 
  a4f11c:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a4f122:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a4f129:	0d 
  a4f12a:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a4f130:	62 f2 65 40 ac ef    	vfnmadd213ps zmm5,zmm19,zmm7
  a4f136:	62 f2 4d 48 b8 e9    	vfmadd231ps zmm5,zmm6,zmm1
  a4f13c:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a4f142:	62 d2 35 48 ac f0    	vfnmadd213ps zmm6,zmm9,zmm8
  a4f148:	62 f2 2d 48 b8 f1    	vfmadd231ps zmm6,zmm10,zmm1
  a4f14e:	62 b1 54 48 5c de    	vsubps zmm3,zmm5,zmm22
  a4f154:	62 b1 4c 48 5c e2    	vsubps zmm4,zmm6,zmm18
  a4f15a:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a4f160:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a4f167:	10 
  a4f168:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a4f16e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a4f175:	11 
  a4f176:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a4f17c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x180]
  a4f183:	06 
  a4f184:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a4f18a:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm25
  a4f191:	1c 
  a4f192:	62 72 35 40 a8 c7    	vfmadd213ps zmm8,zmm25,zmm7
  a4f198:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a4f19e:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm27
  a4f1a5:	1b 
  a4f1a6:	62 72 25 40 bc c2    	vfnmadd231ps zmm8,zmm27,zmm2
  a4f1ac:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a4f1b2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a4f1b9:	09 
  a4f1ba:	62 62 05 40 a8 cb    	vfmadd213ps zmm25,zmm31,zmm3
  a4f1c0:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm21
  a4f1c7:	24 
  a4f1c8:	62 62 55 40 bc ca    	vfnmadd231ps zmm25,zmm21,zmm2
  a4f1ce:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4f1d4:	62 12 1d 48 ac ca    	vfnmadd213ps zmm9,zmm12,zmm26
  a4f1da:	62 72 75 40 b8 c9    	vfmadd231ps zmm9,zmm17,zmm1
  a4f1e0:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a4f1e6:	62 02 25 48 ac de    	vfnmadd213ps zmm27,zmm11,zmm30
  a4f1ec:	62 62 15 48 b8 d9    	vfmadd231ps zmm27,zmm13,zmm1
  a4f1f2:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a4f1f8:	62 62 5d 48 ac d7    	vfnmadd213ps zmm26,zmm4,zmm7
  a4f1fe:	62 62 7d 48 b8 d1    	vfmadd231ps zmm26,zmm0,zmm1
  a4f204:	62 f2 05 40 ac d3    	vfnmadd213ps zmm2,zmm31,zmm3
  a4f20a:	62 f2 55 40 b8 d1    	vfmadd231ps zmm2,zmm21,zmm1
  a4f210:	62 91 34 48 58 cd    	vaddps zmm1,zmm9,zmm29
  a4f216:	62 01 24 40 58 f4    	vaddps zmm30,zmm27,zmm28
  a4f21c:	62 91 74 48 58 c6    	vaddps zmm0,zmm1,zmm30
  a4f222:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a4f229:	14 
  a4f22a:	62 91 74 48 5c c6    	vsubps zmm0,zmm1,zmm30
  a4f230:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a4f237:	15 
  a4f238:	62 91 44 40 58 c2    	vaddps zmm0,zmm23,zmm26
  a4f23e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a4f245:	13 
  a4f246:	62 b1 2c 40 5c cf    	vsubps zmm1,zmm26,zmm23
  a4f24c:	62 91 34 48 5c fd    	vsubps zmm7,zmm9,zmm29
  a4f252:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm7
  a4f259:	21 
  a4f25a:	62 91 24 40 5c dc    	vsubps zmm3,zmm27,zmm28
  a4f260:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm3
  a4f267:	1f 
  a4f268:	62 d1 6c 48 5c c6    	vsubps zmm0,zmm2,zmm14
  a4f26e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm0
  a4f275:	23 
  a4f276:	62 51 6c 48 58 d6    	vaddps zmm10,zmm2,zmm14
  a4f27c:	62 21 54 48 58 d6    	vaddps zmm26,zmm5,zmm22
  a4f282:	62 21 4c 48 58 ea    	vaddps zmm29,zmm6,zmm18
  a4f288:	62 f2 7d 48 18 05 ce 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6261ce]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4f28f:	61 62 ff 
  a4f292:	62 61 44 48 58 db    	vaddps zmm27,zmm7,zmm3
  a4f298:	62 91 74 48 58 d3    	vaddps zmm2,zmm1,zmm27
  a4f29e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a4f2a5:	08 
  a4f2a6:	62 62 7d 48 ac d9    	vfnmadd213ps zmm27,zmm0,zmm1
  a4f2ac:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a4f2b2:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a4f2b8:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a4f2be:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a4f2c4:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a4f2ca:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a4f2d0:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a4f2d6:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a4f2dc:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a4f2e2:	62 d2 75 48 ac c2    	vfnmadd213ps zmm0,zmm1,zmm10
  a4f2e8:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a4f2ee:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a4f2f5:	0b 
  a4f2f6:	62 f1 04 48 5c 4c 24 	vsubps zmm1,zmm15,ZMMWORD PTR [rsp+0x140]
  a4f2fd:	05 
  a4f2fe:	62 71 3c 40 5c 54 24 	vsubps zmm10,zmm24,ZMMWORD PTR [rsp+0x1c0]
  a4f305:	07 
  a4f306:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x480]
  a4f30d:	12 
  a4f30e:	62 51 6c 40 58 d8    	vaddps zmm11,zmm18,zmm8
  a4f314:	62 a1 3c 48 5c da    	vsubps zmm19,zmm8,zmm18
  a4f31a:	62 71 5c 40 58 7c 24 	vaddps zmm15,zmm20,ZMMWORD PTR [rsp+0x380]
  a4f321:	0e 
  a4f322:	62 71 7c 40 58 6c 24 	vaddps zmm13,zmm16,ZMMWORD PTR [rsp+0x680]
  a4f329:	1a 
  a4f32a:	62 d1 04 48 5c e5    	vsubps zmm4,zmm15,zmm13
  a4f330:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a4f336:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a4f33d:	0f 
  a4f33e:	62 e1 34 40 5c f5    	vsubps zmm22,zmm25,zmm5
  a4f344:	62 71 34 40 58 ed    	vaddps zmm13,zmm25,zmm5
  a4f34a:	62 41 74 48 58 c2    	vaddps zmm24,zmm1,zmm10
  a4f350:	62 c1 74 48 5c ea    	vsubps zmm21,zmm1,zmm10
  a4f356:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a4f35d:	04 
  a4f35e:	62 71 74 48 58 54 24 	vaddps zmm10,zmm1,ZMMWORD PTR [rsp+0x880]
  a4f365:	22 
  a4f366:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x800]
  a4f36d:	20 
  a4f36e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a4f375:	02 
  a4f376:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x780]
  a4f37d:	1e 
  a4f37e:	62 71 04 48 58 7c 24 	vaddps zmm15,zmm15,ZMMWORD PTR [rsp+0x740]
  a4f385:	1d 
  a4f386:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a4f38d:	06 
  a4f38e:	62 e1 74 48 58 54 24 	vaddps zmm18,zmm1,ZMMWORD PTR [rsp+0x700]
  a4f395:	1c 
  a4f396:	62 61 6c 40 58 64 24 	vaddps zmm28,zmm18,ZMMWORD PTR [rsp+0x6c0]
  a4f39d:	1b 
  a4f39e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a4f3a5:	01 
  a4f3a6:	62 e1 74 48 58 54 24 	vaddps zmm18,zmm1,ZMMWORD PTR [rsp+0x640]
  a4f3ad:	19 
  a4f3ae:	62 e1 6c 40 58 54 24 	vaddps zmm18,zmm18,ZMMWORD PTR [rsp+0x600]
  a4f3b5:	18 
  a4f3b6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x940]
  a4f3bd:	25 
  a4f3be:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x5c0]
  a4f3c5:	17 
  a4f3c6:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x580]
  a4f3cd:	16 
  a4f3ce:	62 81 6c 40 5c c1    	vsubps zmm16,zmm18,zmm25
  a4f3d4:	62 81 6c 40 58 d1    	vaddps zmm18,zmm18,zmm25
  a4f3da:	62 61 04 40 58 4c 24 	vaddps zmm25,zmm31,ZMMWORD PTR [rsp+0x240]
  a4f3e1:	09 
  a4f3e2:	62 e1 34 40 58 64 24 	vaddps zmm20,zmm25,ZMMWORD PTR [rsp+0x900]
  a4f3e9:	24 
  a4f3ea:	62 41 2c 48 58 cf    	vaddps zmm25,zmm10,zmm15
  a4f3f0:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a4f3f6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a4f3fd:	0a 
  a4f3fe:	62 52 75 48 ac cb    	vfnmadd213ps zmm9,zmm1,zmm11
  a4f404:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a4f40a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a4f411:	04 
  a4f412:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a4f419:	0c 
  a4f41a:	62 32 75 48 ac e6    	vfnmadd213ps zmm12,zmm1,zmm22
  a4f420:	62 f1 4c 40 58 c9    	vaddps zmm1,zmm22,zmm1
  a4f426:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a4f42d:	09 
  a4f42e:	62 72 7d 48 18 1d 9c 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff625e9c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4f435:	5e 62 ff 
  a4f438:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x500]
  a4f43f:	14 
  a4f440:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x4c0]
  a4f447:	13 
  a4f448:	62 d2 3d 48 ac d7    	vfnmadd213ps zmm2,zmm8,zmm15
  a4f44e:	62 e1 24 48 59 74 24 	vmulps zmm22,zmm11,ZMMWORD PTR [rsp+0x400]
  a4f455:	10 
  a4f456:	62 b1 6c 48 5c ce    	vsubps zmm1,zmm2,zmm22
  a4f45c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a4f463:	06 
  a4f464:	62 b1 6c 48 58 ce    	vaddps zmm1,zmm2,zmm22
  a4f46a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a4f471:	02 
  a4f472:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x440]
  a4f479:	11 
  a4f47a:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x8c0]
  a4f481:	23 
  a4f482:	62 f2 4d 48 ac dd    	vfnmadd213ps zmm3,zmm6,zmm5
  a4f488:	62 f1 24 48 59 54 24 	vmulps zmm2,zmm11,ZMMWORD PTR [rsp+0x540]
  a4f48f:	15 
  a4f490:	62 f1 64 48 58 ca    	vaddps zmm1,zmm3,zmm2
  a4f496:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4f49d:	05 
  a4f49e:	62 f1 64 48 5c ca    	vsubps zmm1,zmm3,zmm2
  a4f4a4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a4f4ab:	01 
  a4f4ac:	62 81 2c 40 5c f5    	vsubps zmm22,zmm26,zmm29
  a4f4b2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x840]
  a4f4b9:	21 
  a4f4ba:	62 61 74 48 5c 54 24 	vsubps zmm26,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a4f4c1:	1f 
  a4f4c2:	62 f1 24 48 59 4c 24 	vmulps zmm1,zmm11,ZMMWORD PTR [rsp+0xc0]
  a4f4c9:	03 
  a4f4ca:	62 f1 24 48 59 54 24 	vmulps zmm2,zmm11,ZMMWORD PTR [rsp+0x340]
  a4f4d1:	0d 
  a4f4d2:	62 d1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm11
  a4f4d8:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a4f4de:	62 c1 7c 40 59 c3    	vmulps zmm16,zmm16,zmm11
  a4f4e4:	62 51 2c 48 59 d3    	vmulps zmm10,zmm10,zmm11
  a4f4ea:	62 d1 4c 40 59 db    	vmulps zmm3,zmm22,zmm11
  a4f4f0:	62 51 2c 40 59 db    	vmulps zmm11,zmm26,zmm11
  a4f4f6:	62 a2 3d 40 ac fb    	vfnmadd213ps zmm23,zmm24,zmm19
  a4f4fc:	62 01 64 40 58 e8    	vaddps zmm29,zmm19,zmm24
  a4f502:	62 c2 0d 48 ac cd    	vfnmadd213ps zmm17,zmm14,zmm13
  a4f508:	62 51 14 48 58 f6    	vaddps zmm14,zmm13,zmm14
  a4f50e:	62 02 35 40 ac f4    	vfnmadd213ps zmm30,zmm25,zmm28
  a4f514:	62 21 0c 40 5c f8    	vsubps zmm31,zmm30,zmm16
  a4f51a:	62 21 0c 40 58 d0    	vaddps zmm26,zmm30,zmm16
  a4f520:	62 b2 6d 40 ac fc    	vfnmadd213ps zmm7,zmm18,zmm20
  a4f526:	62 41 44 48 58 c2    	vaddps zmm24,zmm7,zmm10
  a4f52c:	62 c1 44 48 5c da    	vsubps zmm19,zmm7,zmm10
  a4f532:	62 61 34 48 58 f1    	vaddps zmm30,zmm9,zmm1
  a4f538:	62 71 34 48 5c d1    	vsubps zmm10,zmm9,zmm1
  a4f53e:	62 f1 1c 48 5c ca    	vsubps zmm1,zmm12,zmm2
  a4f544:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4f54b:	03 
  a4f54c:	62 71 1c 48 58 ca    	vaddps zmm9,zmm12,zmm2
  a4f552:	62 d1 04 48 58 c8    	vaddps zmm1,zmm15,zmm8
  a4f558:	62 f1 54 48 58 fe    	vaddps zmm7,zmm5,zmm6
  a4f55e:	62 e1 24 40 5c f3    	vsubps zmm22,zmm27,zmm3
  a4f564:	62 f1 24 40 58 db    	vaddps zmm3,zmm27,zmm3
  a4f56a:	62 d1 7c 48 58 d3    	vaddps zmm2,zmm0,zmm11
  a4f570:	62 d1 7c 48 5c f3    	vsubps zmm6,zmm0,zmm11
  a4f576:	62 71 44 40 58 dc    	vaddps zmm11,zmm23,zmm4
  a4f57c:	62 e1 44 40 5c c4    	vsubps zmm16,zmm23,zmm4
  a4f582:	62 b1 74 40 5c e5    	vsubps zmm4,zmm17,zmm21
  a4f588:	62 31 74 40 58 e5    	vaddps zmm12,zmm17,zmm21
  a4f58e:	62 81 1c 40 58 c9    	vaddps zmm17,zmm28,zmm25
  a4f594:	62 31 5c 40 58 ea    	vaddps zmm13,zmm20,zmm18
  a4f59a:	62 f1 7c 48 28 05 1c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64331c]        # 928c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fd70>
  a4f5a1:	33 64 ff 
  a4f5a4:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a4f5aa:	62 42 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm13
  a4f5b0:	62 e1 7c 48 28 25 46 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff643346]        # 92900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fdb0>
  a4f5b7:	33 64 ff 
  a4f5ba:	62 c2 5d 40 7f cd    	vpermt2ps zmm17,zmm20,zmm13
  a4f5c0:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a4f5c6:	62 c2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm12
  a4f5cc:	62 c2 5d 40 7f c4    	vpermt2ps zmm16,zmm20,zmm12
  a4f5d2:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a4f5d8:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a4f5de:	62 f2 5d 40 7f de    	vpermt2ps zmm3,zmm20,zmm6
  a4f5e4:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4f5ea:	62 f2 7d 48 7f f7    	vpermt2ps zmm6,zmm0,zmm7
  a4f5f0:	62 f2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm7
  a4f5f6:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a4f5fc:	62 d2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm9
  a4f602:	62 52 5d 40 7f d1    	vpermt2ps zmm10,zmm20,zmm9
  a4f608:	62 11 7c 48 28 ea    	vmovaps zmm13,zmm26
  a4f60e:	62 32 7d 48 7f eb    	vpermt2ps zmm13,zmm0,zmm19
  a4f614:	62 22 5d 40 7f d3    	vpermt2ps zmm26,zmm20,zmm19
  a4f61a:	62 11 7c 48 28 cd    	vmovaps zmm9,zmm29
  a4f620:	62 52 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm14
  a4f626:	62 42 5d 40 7f ee    	vpermt2ps zmm29,zmm20,zmm14
  a4f62c:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a4f632:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a4f638:	62 e2 5d 40 7f f2    	vpermt2ps zmm22,zmm20,zmm2
  a4f63e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x80]
  a4f645:	02 
  a4f646:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a4f64c:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a4f653:	01 
  a4f654:	62 d2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm14
  a4f65a:	62 52 5d 40 7f c6    	vpermt2ps zmm8,zmm20,zmm14
  a4f660:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a4f666:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a4f66d:	04 
  a4f66e:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a4f674:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x240]
  a4f67b:	09 
  a4f67c:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a4f682:	62 52 5d 40 7f c7    	vpermt2ps zmm8,zmm20,zmm15
  a4f688:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a4f68e:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  a4f694:	62 12 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm24
  a4f69a:	62 02 5d 40 7f f8    	vpermt2ps zmm31,zmm20,zmm24
  a4f6a0:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a4f6a6:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a4f6ac:	62 72 5d 40 7f dc    	vpermt2ps zmm11,zmm20,zmm4
  a4f6b2:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x200]
  a4f6b9:	08 
  a4f6ba:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a4f6c0:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x2c0]
  a4f6c7:	0b 
  a4f6c8:	62 d2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm8
  a4f6ce:	62 42 5d 40 7f c0    	vpermt2ps zmm24,zmm20,zmm8
  a4f6d4:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a4f6da:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x180]
  a4f6e1:	06 
  a4f6e2:	62 41 7c 48 28 c0    	vmovaps zmm24,zmm8
  a4f6e8:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x140]
  a4f6ef:	05 
  a4f6f0:	62 02 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm28
  a4f6f6:	62 12 5d 40 7f c4    	vpermt2ps zmm8,zmm20,zmm28
  a4f6fc:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0xc0]
  a4f703:	03 
  a4f704:	62 92 0d 40 77 c4    	vpermi2ps zmm0,zmm30,zmm28
  a4f70a:	62 02 5d 40 7f f4    	vpermt2ps zmm30,zmm20,zmm28
  a4f710:	62 e1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm17
  a4f716:	62 61 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm27
  a4f71d:	62 e1 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm16
  a4f724:	62 e1 7c 48 11 6e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm21
  a4f72b:	62 f1 7c 48 11 5e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm3
  a4f732:	62 71 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm12
  a4f739:	62 f1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm1
  a4f740:	62 f1 7c 48 11 76 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm6
  a4f747:	62 71 7c 48 11 56 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm10
  a4f74e:	62 f1 7c 48 11 7e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm7
  a4f755:	62 61 7c 48 11 56 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm26
  a4f75c:	62 71 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm13
  a4f763:	62 61 7c 48 11 6e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm29
  a4f76a:	62 71 7c 48 11 4e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm9
  a4f771:	62 e1 7c 48 11 76 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm22
  a4f778:	62 f1 7c 48 11 6e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm5
  a4f77f:	62 e1 7c 48 11 5e 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm19
  a4f786:	62 f1 7c 48 11 56 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm2
  a4f78d:	62 e1 7c 48 11 7e 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm23
  a4f794:	62 71 7c 48 11 76 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm14
  a4f79b:	62 61 7c 48 11 7e 14 	vmovups ZMMWORD PTR [rsi+0x500],zmm31
  a4f7a2:	62 71 7c 48 11 7e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm15
  a4f7a9:	62 71 7c 48 11 5e 16 	vmovups ZMMWORD PTR [rsi+0x580],zmm11
  a4f7b0:	62 e1 7c 48 11 56 17 	vmovups ZMMWORD PTR [rsi+0x5c0],zmm18
  a4f7b7:	62 61 7c 48 11 4e 18 	vmovups ZMMWORD PTR [rsi+0x600],zmm25
  a4f7be:	62 f1 7c 48 11 66 19 	vmovups ZMMWORD PTR [rsi+0x640],zmm4
  a4f7c5:	62 71 7c 48 11 46 1a 	vmovups ZMMWORD PTR [rsi+0x680],zmm8
  a4f7cc:	62 61 7c 48 11 46 1b 	vmovups ZMMWORD PTR [rsi+0x6c0],zmm24
  a4f7d3:	62 61 7c 48 11 76 1c 	vmovups ZMMWORD PTR [rsi+0x700],zmm30
  a4f7da:	62 f1 7c 48 11 46 1d 	vmovups ZMMWORD PTR [rsi+0x740],zmm0
  a4f7e1:	48 89 ec             	mov    rsp,rbp
  a4f7e4:	5d                   	pop    rbp
  a4f7e5:	c5 f8 77             	vzeroupper
  a4f7e8:	c3                   	ret
