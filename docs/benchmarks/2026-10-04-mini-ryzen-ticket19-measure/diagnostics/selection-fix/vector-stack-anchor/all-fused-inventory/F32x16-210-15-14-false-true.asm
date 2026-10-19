
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a61d80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a61d80:	48 81 ec 48 04 00 00 	sub    rsp,0x448
  a61d87:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a61d8e:	31 d2                	xor    edx,edx
  a61d90:	41 b0 3f             	mov    r8b,0x3f
  a61d93:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a61d98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a61d9f:	00 
  a61da0:	c5 f8 10 44 17 60    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x60]
  a61da6:	c4 e3 79 21 44 17 64 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x64],0x10
  a61dad:	10 
  a61dae:	c4 e2 79 18 4c 17 68 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x68]
  a61db5:	62 f1 7c 48 10 14 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1]
  a61dbc:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a61dc2:	c4 e3 79 21 44 17 6c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a61dc9:	30 
  a61dca:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  a61dd0:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a61dd7:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a61ddd:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a61de3:	62 e1 7c 48 28 1d d3 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6320d3]        # 93ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21370>
  a61dea:	20 63 ff 
  a61ded:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a61df3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a61dfa:	ff 
  a61dfb:	62 e1 7c 48 28 2d fb 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6320fb]        # 93f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x213b0>
  a61e02:	20 63 ff 
  a61e05:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a61e0b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a61e12:	02 
  a61e13:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x70]
  a61e1a:	70 00 00 00 
  a61e1e:	c5 f8 10 84 17 d0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xd0]
  a61e25:	00 00 
  a61e27:	c4 e3 79 21 84 17 d4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xd4],0x10
  a61e2e:	00 00 00 10 
  a61e32:	c4 e2 79 18 8c 17 d8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0xd8]
  a61e39:	00 00 00 
  a61e3c:	c5 fc 10 94 17 b0 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xb0]
  a61e43:	00 00 
  a61e45:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a61e4b:	c4 e3 79 21 84 17 dc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xdc],0x30
  a61e52:	00 00 00 30 
  a61e56:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a61e5d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a61e63:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a61e69:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a61e6f:	62 f2 55 40 7f d8    	vpermt2ps zmm3,zmm21,zmm0
  a61e75:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0xe0]
  a61e7c:	e0 00 00 00 
  a61e80:	c5 fc 10 84 17 20 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x120]
  a61e87:	00 00 
  a61e89:	c5 f8 10 8c 17 40 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x140]
  a61e90:	00 00 
  a61e92:	c4 e3 71 21 8c 17 44 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x144],0x10
  a61e99:	01 00 00 10 
  a61e9d:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x148]
  a61ea4:	01 00 00 
  a61ea7:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a61ead:	c4 e3 71 21 8c 17 4c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a61eb4:	01 00 00 30 
  a61eb8:	62 f3 7d 48 18 c1 02 	vinsertf32x4 zmm0,zmm0,xmm1,0x2
  a61ebf:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a61ec5:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a61ecb:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a61ed1:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a61ed7:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a61edd:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x150]
  a61ee4:	50 01 00 00 
  a61ee8:	c5 f8 10 84 17 b0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1b0]
  a61eef:	00 00 
  a61ef1:	c4 e3 79 21 84 17 b4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1b4],0x10
  a61ef8:	01 00 00 10 
  a61efc:	c5 fc 10 8c 17 90 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x190]
  a61f03:	00 00 
  a61f05:	c4 e2 79 18 a4 17 b8 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x1b8]
  a61f0c:	01 00 00 
  a61f0f:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a61f15:	c4 e3 79 21 84 17 bc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1bc],0x30
  a61f1c:	01 00 00 30 
  a61f20:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a61f27:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a61f2d:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a61f33:	62 62 65 40 7f f0    	vpermt2ps zmm30,zmm19,zmm0
  a61f39:	62 e2 55 40 7f e0    	vpermt2ps zmm20,zmm21,zmm0
  a61f3f:	c5 f8 10 84 17 20 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x220]
  a61f46:	00 00 
  a61f48:	c4 e3 79 21 84 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x224],0x10
  a61f4f:	02 00 00 10 
  a61f53:	c4 e2 79 18 8c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x228]
  a61f5a:	02 00 00 
  a61f5d:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a61f64:	07 
  a61f65:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a61f6b:	c4 e3 79 21 84 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x22c],0x30
  a61f72:	02 00 00 30 
  a61f76:	c5 fc 10 8c 17 00 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x200]
  a61f7d:	00 00 
  a61f7f:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a61f86:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a61f8c:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a61f92:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a61f98:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a61f9f:	06 
  a61fa0:	62 72 55 40 7f d0    	vpermt2ps zmm10,zmm21,zmm0
  a61fa6:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x230]
  a61fad:	30 02 00 00 
  a61fb1:	c5 f8 10 84 17 90 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x290]
  a61fb8:	00 00 
  a61fba:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x294],0x10
  a61fc1:	02 00 00 10 
  a61fc5:	c4 e2 79 18 8c 17 98 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x298]
  a61fcc:	02 00 00 
  a61fcf:	c5 fc 10 a4 17 70 02 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x270]
  a61fd6:	00 00 
  a61fd8:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a61fde:	c4 e3 79 21 84 17 9c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a61fe5:	02 00 00 30 
  a61fe9:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a61ff0:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a61ff6:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a61ffc:	62 62 65 40 7f d0    	vpermt2ps zmm26,zmm19,zmm0
  a62002:	62 62 55 40 7f c8    	vpermt2ps zmm25,zmm21,zmm0
  a62008:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a6200f:	a0 02 00 00 
  a62013:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a6201a:	00 00 
  a6201c:	c5 f8 10 8c 17 00 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x300]
  a62023:	00 00 
  a62025:	c4 e3 71 21 8c 17 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x304],0x10
  a6202c:	03 00 00 10 
  a62030:	c4 e2 79 18 a4 17 08 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x308]
  a62037:	03 00 00 
  a6203a:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a62040:	c4 e3 71 21 8c 17 0c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x30c],0x30
  a62047:	03 00 00 30 
  a6204b:	62 f3 7d 48 18 c1 02 	vinsertf32x4 zmm0,zmm0,xmm1,0x2
  a62052:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a62058:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a6205e:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a62064:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a6206b:	07 
  a6206c:	62 f2 55 40 7f f8    	vpermt2ps zmm7,zmm21,zmm0
  a62072:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x310]
  a62079:	10 03 00 00 
  a6207d:	c5 f8 10 84 17 70 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x370]
  a62084:	00 00 
  a62086:	c4 e3 79 21 84 17 74 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x374],0x10
  a6208d:	03 00 00 10 
  a62091:	c5 fc 10 8c 17 50 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x350]
  a62098:	00 00 
  a6209a:	c4 e2 79 18 a4 17 78 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x378]
  a620a1:	03 00 00 
  a620a4:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a620aa:	c4 e3 79 21 84 17 7c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x37c],0x30
  a620b1:	03 00 00 30 
  a620b5:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a620bc:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a620c2:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a620c8:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a620ce:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a620d4:	c5 f8 10 84 17 e0 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3e0]
  a620db:	00 00 
  a620dd:	c4 e3 79 21 84 17 e4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3e4],0x10
  a620e4:	03 00 00 10 
  a620e8:	c4 e2 79 18 8c 17 e8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x3e8]
  a620ef:	03 00 00 
  a620f2:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x380]
  a620f9:	0e 
  a620fa:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a62100:	c4 e3 79 21 84 17 ec 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3ec],0x30
  a62107:	03 00 00 30 
  a6210b:	c5 fc 10 8c 17 c0 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x3c0]
  a62112:	00 00 
  a62114:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a6211b:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a62121:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a62127:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a6212d:	62 f2 55 40 7f f0    	vpermt2ps zmm6,zmm21,zmm0
  a62133:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x3f0]
  a6213a:	f0 03 00 00 
  a6213e:	c5 f8 10 84 17 50 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x450]
  a62145:	00 00 
  a62147:	c4 e3 79 21 84 17 54 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x454],0x10
  a6214e:	04 00 00 10 
  a62152:	c4 e2 79 18 8c 17 58 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x458]
  a62159:	04 00 00 
  a6215c:	c5 fc 10 a4 17 30 04 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x430]
  a62163:	00 00 
  a62165:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a6216b:	c4 e3 79 21 84 17 5c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x45c],0x30
  a62172:	04 00 00 30 
  a62176:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a6217d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a62183:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a62189:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a6218f:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a62195:	62 61 7c 48 10 9c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x460]
  a6219c:	60 04 00 00 
  a621a0:	c5 fc 10 84 17 a0 04 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x4a0]
  a621a7:	00 00 
  a621a9:	c5 f8 10 8c 17 c0 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x4c0]
  a621b0:	00 00 
  a621b2:	c4 e3 71 21 8c 17 c4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x4c4],0x10
  a621b9:	04 00 00 10 
  a621bd:	c4 e2 79 18 a4 17 c8 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x4c8]
  a621c4:	04 00 00 
  a621c7:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a621cd:	c4 e3 71 21 8c 17 cc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x4cc],0x30
  a621d4:	04 00 00 30 
  a621d8:	62 f3 7d 48 18 c1 02 	vinsertf32x4 zmm0,zmm0,xmm1,0x2
  a621df:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a621e5:	62 01 7c 48 28 eb    	vmovaps zmm29,zmm27
  a621eb:	62 62 65 40 7f e8    	vpermt2ps zmm29,zmm19,zmm0
  a621f1:	62 62 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm0
  a621f7:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x4d0]
  a621fe:	d0 04 00 00 
  a62202:	c5 f8 10 84 17 30 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x530]
  a62209:	00 00 
  a6220b:	c4 e3 79 21 84 17 34 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x534],0x10
  a62212:	05 00 00 10 
  a62216:	c5 fc 10 8c 17 10 05 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x510]
  a6221d:	00 00 
  a6221f:	c4 e2 79 18 a4 17 38 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x538]
  a62226:	05 00 00 
  a62229:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a6222f:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x53c],0x30
  a62236:	05 00 00 30 
  a6223a:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a62241:	62 f2 fd c9 88 c8    	vexpandpd zmm1{k1}{z},zmm0
  a62247:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a6224d:	62 f2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm1
  a62253:	62 72 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm1
  a62259:	c5 f8 10 8c 17 a0 05 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x5a0]
  a62260:	00 00 
  a62262:	c4 e3 71 21 8c 17 a4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x5a4],0x10
  a62269:	05 00 00 10 
  a6226d:	c4 62 79 18 8c 17 a8 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x5a8]
  a62274:	05 00 00 
  a62277:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x540]
  a6227e:	15 
  a6227f:	c4 e3 31 0c c9 03    	vblendps xmm1,xmm9,xmm1,0x3
  a62285:	c4 e3 71 21 8c 17 ac 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x5ac],0x30
  a6228c:	05 00 00 30 
  a62290:	c5 7c 10 8c 17 80 05 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x580]
  a62297:	00 00 
  a62299:	62 f3 35 48 18 c9 02 	vinsertf32x4 zmm1,zmm9,xmm1,0x2
  a622a0:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a622a6:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a622ac:	62 e2 65 40 7f f1    	vpermt2ps zmm22,zmm19,zmm1
  a622b2:	62 f2 55 40 7f e1    	vpermt2ps zmm4,zmm21,zmm1
  a622b8:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x5b0]
  a622bf:	b0 05 00 00 
  a622c3:	c5 78 10 8c 17 10 06 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x610]
  a622ca:	00 00 
  a622cc:	c4 63 31 21 8c 17 14 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x614],0x10
  a622d3:	06 00 00 10 
  a622d7:	c4 62 79 18 a4 17 18 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x618]
  a622de:	06 00 00 
  a622e1:	c5 7c 10 ac 17 f0 05 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x5f0]
  a622e8:	00 00 
  a622ea:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a622f0:	c4 63 31 21 8c 17 1c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x61c],0x30
  a622f7:	06 00 00 30 
  a622fb:	62 53 15 48 18 c9 02 	vinsertf32x4 zmm9,zmm13,xmm9,0x2
  a62302:	62 52 fd c9 88 c9    	vexpandpd zmm9{k1}{z},zmm9
  a62308:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a6230e:	62 52 65 40 7f f1    	vpermt2ps zmm14,zmm19,zmm9
  a62314:	62 d2 55 40 7f c9    	vpermt2ps zmm1,zmm21,zmm9
  a6231a:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x620]
  a62321:	20 06 00 00 
  a62325:	c5 7c 10 a4 17 60 06 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x660]
  a6232c:	00 00 
  a6232e:	c5 78 10 ac 17 80 06 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x680]
  a62335:	00 00 
  a62337:	c4 63 11 21 ac 17 84 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x684],0x10
  a6233e:	06 00 00 10 
  a62342:	c4 62 79 18 9c 17 88 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x688]
  a62349:	06 00 00 
  a6234c:	c4 43 21 0c dd 03    	vblendps xmm11,xmm11,xmm13,0x3
  a62352:	c4 63 21 21 9c 17 8c 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x68c],0x30
  a62359:	06 00 00 30 
  a6235d:	62 53 1d 48 18 db 02 	vinsertf32x4 zmm11,zmm12,xmm11,0x2
  a62364:	62 52 fd c9 88 db    	vexpandpd zmm11{k1}{z},zmm11
  a6236a:	62 41 7c 48 28 e1    	vmovaps zmm28,zmm9
  a62370:	62 42 65 40 7f e3    	vpermt2ps zmm28,zmm19,zmm11
  a62376:	62 52 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm11
  a6237c:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a62382:	62 71 7c 40 58 ea    	vaddps zmm13,zmm16,zmm2
  a62388:	62 91 4c 48 58 d7    	vaddps zmm2,zmm6,zmm31
  a6238e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm2
  a62395:	0e 
  a62396:	62 91 4c 48 5c f7    	vsubps zmm6,zmm6,zmm31
  a6239c:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm6
  a623a3:	0a 
  a623a4:	62 c1 3c 48 58 e9    	vaddps zmm21,zmm8,zmm9
  a623aa:	62 c1 3c 48 5c f9    	vsubps zmm23,zmm8,zmm9
  a623b0:	62 d1 74 48 58 f7    	vaddps zmm6,zmm1,zmm15
  a623b6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm6
  a623bd:	10 
  a623be:	62 41 74 48 5c ff    	vsubps zmm31,zmm1,zmm15
  a623c4:	62 c1 64 48 58 da    	vaddps zmm19,zmm3,zmm10
  a623ca:	62 51 64 48 5c e2    	vsubps zmm12,zmm3,zmm10
  a623d0:	62 f1 5c 40 58 cc    	vaddps zmm1,zmm20,zmm4
  a623d6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a623dd:	04 
  a623de:	62 f1 5c 40 5c cc    	vsubps zmm1,zmm20,zmm4
  a623e4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a623eb:	fe 
  a623ec:	62 f1 44 48 58 cd    	vaddps zmm1,zmm7,zmm5
  a623f2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a623f9:	03 
  a623fa:	62 f1 44 48 5c cd    	vsubps zmm1,zmm7,zmm5
  a62400:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a62407:	01 
  a62408:	62 11 7c 48 58 c4    	vaddps zmm8,zmm0,zmm28
  a6240e:	62 d1 7c 40 5c cb    	vsubps zmm1,zmm16,zmm11
  a62414:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a6241b:	0f 
  a6241c:	62 b1 0c 48 58 d9    	vaddps zmm3,zmm14,zmm17
  a62422:	62 91 7c 48 5c e4    	vsubps zmm4,zmm0,zmm28
  a62428:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a6242f:	08 
  a62430:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a62437:	06 
  a62438:	62 f1 3c 40 58 e8    	vaddps zmm5,zmm24,zmm0
  a6243e:	62 b1 0c 48 5c f9    	vsubps zmm7,zmm14,zmm17
  a62444:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a6244b:	09 
  a6244c:	62 72 7d 48 18 35 92 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff613292]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a62453:	32 61 ff 
  a62456:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a6245c:	62 82 6d 48 a8 c1    	vfmadd213ps zmm16,zmm2,zmm25
  a62462:	62 72 7d 48 18 1d d8 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6131d8]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a62469:	31 61 ff 
  a6246c:	62 c2 55 40 bc c3    	vfnmadd231ps zmm16,zmm21,zmm11
  a62472:	62 f1 3c 40 5c d0    	vsubps zmm2,zmm24,zmm0
  a62478:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a6247f:	0b 
  a62480:	62 72 7d 48 18 0d ce 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6132ce]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a62487:	32 61 ff 
  a6248a:	62 d1 5c 48 59 c1    	vmulps zmm0,zmm4,zmm9
  a62490:	62 72 7d 48 18 15 06 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff612f06]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a62497:	2f 61 ff 
  a6249a:	62 d2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm10
  a624a0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a624a7:	0c 
  a624a8:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a624ae:	62 12 4d 48 a8 fb    	vfmadd213ps zmm15,zmm6,zmm27
  a624b4:	62 52 65 40 bc fb    	vfnmadd231ps zmm15,zmm19,zmm11
  a624ba:	62 41 6c 48 59 c1    	vmulps zmm24,zmm2,zmm9
  a624c0:	62 42 45 48 b8 c2    	vfmadd231ps zmm24,zmm7,zmm10
  a624c6:	62 f1 7c 40 5c c0    	vsubps zmm0,zmm16,zmm0
  a624cc:	62 91 04 48 5c e0    	vsubps zmm4,zmm15,zmm24
  a624d2:	62 f1 7c 48 5c cc    	vsubps zmm1,zmm0,zmm4
  a624d8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a624df:	06 
  a624e0:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a624e6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a624ed:	05 
  a624ee:	62 b1 0c 40 58 d6    	vaddps zmm2,zmm30,zmm22
  a624f4:	62 a1 0c 40 5c e6    	vsubps zmm20,zmm30,zmm22
  a624fa:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a62501:	07 
  a62502:	62 b1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm18
  a62508:	62 21 5c 48 5c f2    	vsubps zmm30,zmm4,zmm18
  a6250e:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a62514:	62 92 15 48 a8 f2    	vfmadd213ps zmm6,zmm13,zmm26
  a6251a:	62 d2 3d 48 bc f3    	vfnmadd231ps zmm6,zmm8,zmm11
  a62520:	62 21 7c 48 28 e7    	vmovaps zmm28,zmm23
  a62526:	62 c1 44 40 59 f9    	vmulps zmm23,zmm23,zmm9
  a6252c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a62533:	0a 
  a62534:	62 c2 7d 48 b8 fa    	vfmadd231ps zmm23,zmm0,zmm10
  a6253a:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a62540:	62 82 65 48 a8 d5    	vfmadd213ps zmm18,zmm3,zmm29
  a62546:	62 c2 55 48 bc d3    	vfnmadd231ps zmm18,zmm5,zmm11
  a6254c:	62 c1 1c 48 59 c9    	vmulps zmm17,zmm12,zmm9
  a62552:	62 c2 05 40 b8 ca    	vfmadd231ps zmm17,zmm31,zmm10
  a62558:	62 b1 4c 48 58 e7    	vaddps zmm4,zmm6,zmm23
  a6255e:	62 a1 6c 40 58 f1    	vaddps zmm22,zmm18,zmm17
  a62564:	62 b1 5c 48 58 fe    	vaddps zmm7,zmm4,zmm22
  a6256a:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm7
  a62571:	0d 
  a62572:	62 b1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm22
  a62578:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm4
  a6257f:	07 
  a62580:	62 d1 2c 40 58 e5    	vaddps zmm4,zmm26,zmm13
  a62586:	62 42 25 48 bc d5    	vfnmadd231ps zmm26,zmm11,zmm13
  a6258c:	62 d1 5c 48 58 e0    	vaddps zmm4,zmm4,zmm8
  a62592:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a62599:	62 42 0d 48 b8 d0    	vfmadd231ps zmm26,zmm14,zmm8
  a6259f:	62 d1 7c 48 59 f9    	vmulps zmm7,zmm0,zmm9
  a625a5:	62 92 2d 48 bc fc    	vfnmadd231ps zmm7,zmm10,zmm28
  a625ab:	62 71 14 40 58 c3    	vaddps zmm8,zmm29,zmm3
  a625b1:	62 62 25 48 bc eb    	vfnmadd231ps zmm29,zmm11,zmm3
  a625b7:	62 f1 3c 48 58 c5    	vaddps zmm0,zmm8,zmm5
  a625bd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a625c4:	0a 
  a625c5:	62 62 0d 48 b8 ed    	vfmadd231ps zmm29,zmm14,zmm5
  a625cb:	62 41 04 40 59 f9    	vmulps zmm31,zmm31,zmm9
  a625d1:	62 42 2d 48 bc fc    	vfnmadd231ps zmm31,zmm10,zmm12
  a625d7:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a625dd:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a625e4:	ff 
  a625e5:	62 72 6d 48 a8 e4    	vfmadd213ps zmm12,zmm2,zmm4
  a625eb:	62 f1 5c 48 58 da    	vaddps zmm3,zmm4,zmm2
  a625f1:	62 f2 25 48 bc e2    	vfnmadd231ps zmm4,zmm11,zmm2
  a625f7:	62 f1 64 48 58 c1    	vaddps zmm0,zmm3,zmm1
  a625fd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a62604:	ff 
  a62605:	62 52 75 48 bc e3    	vfnmadd231ps zmm12,zmm1,zmm11
  a6260b:	62 f2 0d 48 b8 e1    	vfmadd231ps zmm4,zmm14,zmm1
  a62611:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a62617:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a6261e:	01 
  a6261f:	62 d1 74 48 59 e1    	vmulps zmm4,zmm1,zmm9
  a62625:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a6262c:	fe 
  a6262d:	62 d2 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm10
  a62633:	62 d1 7c 48 59 d9    	vmulps zmm3,zmm0,zmm9
  a62639:	62 f2 2d 48 bc d9    	vfnmadd231ps zmm3,zmm10,zmm1
  a6263f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a62646:	0e 
  a62647:	62 f1 34 40 58 c1    	vaddps zmm0,zmm25,zmm1
  a6264d:	62 62 25 48 bc c9    	vfnmadd231ps zmm25,zmm11,zmm1
  a62653:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a62659:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a62660:	fe 
  a62661:	62 22 0d 48 b8 cd    	vfmadd231ps zmm25,zmm14,zmm21
  a62667:	62 f1 34 48 59 6c 24 	vmulps zmm5,zmm9,ZMMWORD PTR [rsp+0x3c0]
  a6266e:	0f 
  a6266f:	62 f2 2d 48 bc 6c 24 	vfnmadd231ps zmm5,zmm10,ZMMWORD PTR [rsp+0x200]
  a62676:	08 
  a62677:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a6267e:	10 
  a6267f:	62 f1 24 40 58 c1    	vaddps zmm0,zmm27,zmm1
  a62685:	62 62 25 48 bc d9    	vfnmadd231ps zmm27,zmm11,zmm1
  a6268b:	62 31 7c 48 58 c3    	vaddps zmm8,zmm0,zmm19
  a62691:	62 22 0d 48 b8 db    	vfmadd231ps zmm27,zmm14,zmm19
  a62697:	62 f1 34 48 59 4c 24 	vmulps zmm1,zmm9,ZMMWORD PTR [rsp+0x240]
  a6269e:	09 
  a6269f:	62 f2 2d 48 bc 4c 24 	vfnmadd231ps zmm1,zmm10,ZMMWORD PTR [rsp+0x2c0]
  a626a6:	0b 
  a626a7:	62 71 34 40 5c ed    	vsubps zmm13,zmm25,zmm5
  a626ad:	62 e1 24 40 5c e9    	vsubps zmm21,zmm27,zmm1
  a626b3:	62 b1 14 48 5c c5    	vsubps zmm0,zmm13,zmm21
  a626b9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a626c0:	01 
  a626c1:	62 b1 14 48 58 c5    	vaddps zmm0,zmm13,zmm21
  a626c7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a626ce:	09 
  a626cf:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a626d5:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x100]
  a626dc:	04 
  a626dd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a626e4:	02 
  a626e5:	62 f2 65 40 a8 c2    	vfmadd213ps zmm0,zmm19,zmm2
  a626eb:	62 31 6c 48 58 eb    	vaddps zmm13,zmm2,zmm19
  a626f1:	62 b2 25 48 bc d3    	vfnmadd231ps zmm2,zmm11,zmm19
  a626f7:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0xc0]
  a626fe:	03 
  a626ff:	62 a1 14 48 58 dd    	vaddps zmm19,zmm13,zmm21
  a62705:	62 d2 55 40 bc c3    	vfnmadd231ps zmm0,zmm21,zmm11
  a6270b:	62 b2 0d 48 b8 d5    	vfmadd231ps zmm2,zmm14,zmm21
  a62711:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a62717:	62 d1 0c 40 59 d1    	vmulps zmm2,zmm30,zmm9
  a6271d:	62 d2 5d 40 b8 d2    	vfmadd231ps zmm2,zmm20,zmm10
  a62723:	62 c1 5c 40 59 e1    	vmulps zmm20,zmm20,zmm9
  a62729:	62 82 2d 48 bc e6    	vfnmadd231ps zmm20,zmm10,zmm30
  a6272f:	62 71 2c 40 58 ef    	vaddps zmm13,zmm26,zmm7
  a62735:	62 01 14 40 58 f7    	vaddps zmm30,zmm29,zmm31
  a6273b:	62 11 14 48 58 ce    	vaddps zmm9,zmm13,zmm30
  a62741:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm9
  a62748:	08 
  a62749:	62 11 14 48 5c ce    	vsubps zmm9,zmm13,zmm30
  a6274f:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm9
  a62756:	02 
  a62757:	62 e1 4c 40 58 eb    	vaddps zmm21,zmm22,zmm3
  a6275d:	62 61 4c 40 5c f3    	vsubps zmm30,zmm22,zmm3
  a62763:	62 f1 2c 40 5c df    	vsubps zmm3,zmm26,zmm7
  a62769:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a62770:	0b 
  a62771:	62 01 14 40 5c e7    	vsubps zmm28,zmm29,zmm31
  a62777:	62 21 24 48 5c fc    	vsubps zmm31,zmm11,zmm20
  a6277d:	62 41 5c 40 58 d3    	vaddps zmm26,zmm20,zmm11
  a62783:	62 81 54 48 58 f1    	vaddps zmm22,zmm5,zmm25
  a62789:	62 81 74 48 58 e3    	vaddps zmm20,zmm1,zmm27
  a6278f:	62 b1 4c 48 5c df    	vsubps zmm3,zmm6,zmm23
  a62795:	62 b1 6c 40 5c f1    	vsubps zmm6,zmm18,zmm17
  a6279b:	62 71 1c 48 58 d4    	vaddps zmm10,zmm12,zmm4
  a627a1:	62 61 1c 48 5c cc    	vsubps zmm25,zmm12,zmm4
  a627a7:	62 71 7c 40 58 4c 24 	vaddps zmm9,zmm16,ZMMWORD PTR [rsp+0x300]
  a627ae:	0c 
  a627af:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a627b6:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x280]
  a627bd:	0a 
  a627be:	62 d1 1c 48 58 e5    	vaddps zmm4,zmm12,zmm13
  a627c4:	62 51 3c 40 58 df    	vaddps zmm11,zmm24,zmm15
  a627ca:	62 d1 34 48 5c cb    	vsubps zmm1,zmm9,zmm11
  a627d0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a627d7:	04 
  a627d8:	62 51 34 48 58 f3    	vaddps zmm14,zmm9,zmm11
  a627de:	62 71 7c 48 5c ca    	vsubps zmm9,zmm0,zmm2
  a627e4:	62 f1 6c 48 58 c8    	vaddps zmm1,zmm2,zmm0
  a627ea:	62 e1 64 48 58 c6    	vaddps zmm16,zmm3,zmm6
  a627f0:	62 f1 64 48 5c c6    	vsubps zmm0,zmm3,zmm6
  a627f6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a627fd:	03 
  a627fe:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a62805:	ff 
  a62806:	62 71 7c 48 58 dc    	vaddps zmm11,zmm0,zmm4
  a6280c:	62 f2 7d 48 18 2d 4a 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff612c4a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a62813:	2c 61 ff 
  a62816:	62 f2 55 48 ac e0    	vfnmadd213ps zmm4,zmm5,zmm0
  a6281c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a62823:	fe 
  a62824:	62 d1 7c 48 58 f0    	vaddps zmm6,zmm0,zmm8
  a6282a:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a62830:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a62837:	fe 
  a62838:	62 61 64 40 58 ee    	vaddps zmm29,zmm19,zmm6
  a6283e:	62 b2 55 48 ac f3    	vfnmadd213ps zmm6,zmm5,zmm19
  a62844:	62 e1 7c 48 28 dd    	vmovaps zmm19,zmm5
  a6284a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x340]
  a62851:	0d 
  a62852:	62 c2 6d 48 ac da    	vfnmadd213ps zmm19,zmm2,zmm10
  a62858:	62 41 1c 48 5c dd    	vsubps zmm27,zmm12,zmm13
  a6285e:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a62864:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a6286b:	05 
  a6286c:	62 d2 1d 48 ac c1    	vfnmadd213ps zmm0,zmm12,zmm9
  a62872:	62 71 2c 48 58 fa    	vaddps zmm15,zmm10,zmm2
  a62878:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a6287e:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x200]
  a62885:	08 
  a62886:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a6288c:	62 b2 45 40 ac d5    	vfnmadd213ps zmm2,zmm23,zmm21
  a62892:	62 e2 7d 48 18 0d 38 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff612a38]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a62899:	2a 61 ff 
  a6289c:	62 71 74 40 59 44 24 	vmulps zmm8,zmm17,ZMMWORD PTR [rsp+0x40]
  a628a3:	01 
  a628a4:	62 d1 34 48 58 dc    	vaddps zmm3,zmm9,zmm12
  a628aa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a628b1:	ff 
  a628b2:	62 51 6c 48 5c e0    	vsubps zmm12,zmm2,zmm8
  a628b8:	62 51 6c 48 58 c0    	vaddps zmm8,zmm2,zmm8
  a628be:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a628c4:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x240]
  a628cb:	09 
  a628cc:	62 92 6d 40 ac d7    	vfnmadd213ps zmm2,zmm18,zmm31
  a628d2:	62 71 74 40 59 54 24 	vmulps zmm10,zmm17,ZMMWORD PTR [rsp+0x80]
  a628d9:	02 
  a628da:	62 51 6c 48 58 ca    	vaddps zmm9,zmm2,zmm10
  a628e0:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a628e6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm2
  a628ed:	0c 
  a628ee:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x2c0]
  a628f5:	0b 
  a628f6:	62 11 44 48 58 d4    	vaddps zmm10,zmm7,zmm28
  a628fc:	62 d1 0c 40 58 d2    	vaddps zmm2,zmm30,zmm10
  a62902:	62 12 55 48 ac d6    	vfnmadd213ps zmm10,zmm5,zmm30
  a62908:	62 a1 4c 40 58 ec    	vaddps zmm21,zmm22,zmm20
  a6290e:	62 b1 4c 40 5c dc    	vsubps zmm3,zmm22,zmm20
  a62914:	62 21 2c 40 58 c5    	vaddps zmm24,zmm26,zmm21
  a6291a:	62 82 55 48 ac ea    	vfnmadd213ps zmm21,zmm5,zmm26
  a62920:	62 81 44 48 5c f4    	vsubps zmm22,zmm7,zmm28
  a62926:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a6292c:	62 02 7d 40 ac d1    	vfnmadd213ps zmm26,zmm16,zmm25
  a62932:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a62938:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a6293e:	62 62 0d 48 ac f1    	vfnmadd213ps zmm30,zmm14,zmm1
  a62944:	62 d1 74 48 58 ee    	vaddps zmm5,zmm1,zmm14
  a6294a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a62951:	01 
  a62952:	62 f1 74 40 59 7c 24 	vmulps zmm7,zmm17,ZMMWORD PTR [rsp-0x80]
  a62959:	fe 
  a6295a:	62 71 5c 48 5c f7    	vsubps zmm14,zmm4,zmm7
  a62960:	62 f1 5c 48 58 ef    	vaddps zmm5,zmm4,zmm7
  a62966:	62 b1 24 40 59 e1    	vmulps zmm4,zmm27,zmm17
  a6296c:	62 f1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm6
  a62972:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a62979:	fe 
  a6297a:	62 f1 4c 48 5c cc    	vsubps zmm1,zmm6,zmm4
  a62980:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a62987:	62 f1 74 40 59 64 24 	vmulps zmm4,zmm17,ZMMWORD PTR [rsp+0x180]
  a6298e:	06 
  a6298f:	62 b1 5c 48 58 f3    	vaddps zmm6,zmm4,zmm19
  a62995:	62 e1 64 40 5c dc    	vsubps zmm19,zmm19,zmm4
  a6299b:	62 f1 74 40 59 64 24 	vmulps zmm4,zmm17,ZMMWORD PTR [rsp+0x1c0]
  a629a2:	07 
  a629a3:	62 e1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm4
  a629a9:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a629af:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a629b6:	0b 
  a629b7:	62 f1 74 40 59 44 24 	vmulps zmm0,zmm17,ZMMWORD PTR [rsp+0x100]
  a629be:	04 
  a629bf:	62 21 14 48 58 df    	vaddps zmm27,zmm13,zmm23
  a629c5:	62 01 7c 48 58 e2    	vaddps zmm28,zmm0,zmm26
  a629cb:	62 e1 74 40 59 7c 24 	vmulps zmm23,zmm17,ZMMWORD PTR [rsp+0xc0]
  a629d2:	03 
  a629d3:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a629d9:	62 b1 04 40 58 ca    	vaddps zmm1,zmm31,zmm18
  a629df:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a629e6:	0a 
  a629e7:	62 61 2c 48 5c fb    	vsubps zmm31,zmm10,zmm3
  a629ed:	62 b1 4c 40 59 e1    	vmulps zmm4,zmm22,zmm17
  a629f3:	62 f1 2c 48 58 cb    	vaddps zmm1,zmm10,zmm3
  a629f9:	62 e1 54 40 58 c4    	vaddps zmm16,zmm21,zmm4
  a629ff:	62 e1 54 40 5c f4    	vsubps zmm22,zmm21,zmm4
  a62a05:	62 a1 0c 40 5c ef    	vsubps zmm21,zmm30,zmm23
  a62a0b:	62 f1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm0
  a62a11:	62 b1 0c 40 58 df    	vaddps zmm3,zmm30,zmm23
  a62a17:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a62a1e:	08 
  a62a1f:	62 d1 7c 48 28 db    	vmovaps zmm3,zmm11
  a62a25:	62 f1 7c 48 28 25 51 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff664551]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a62a2c:	45 66 ff 
  a62a2f:	62 92 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm31
  a62a35:	62 f1 7c 48 28 3d 81 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff664581]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a62a3c:	45 66 ff 
  a62a3f:	62 12 45 48 7f df    	vpermt2ps zmm11,zmm7,zmm31
  a62a45:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a62a4b:	62 12 5d 48 7f d1    	vpermt2ps zmm10,zmm4,zmm25
  a62a51:	62 92 45 48 7f f1    	vpermt2ps zmm6,zmm7,zmm25
  a62a57:	62 c1 7c 48 28 fc    	vmovaps zmm23,zmm12
  a62a5d:	62 e2 5d 48 7f fd    	vpermt2ps zmm23,zmm4,zmm5
  a62a63:	62 72 45 48 7f e5    	vpermt2ps zmm12,zmm7,zmm5
  a62a69:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a62a6f:	62 b2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm19
  a62a75:	62 b2 45 48 7f d3    	vpermt2ps zmm2,zmm7,zmm19
  a62a7b:	62 81 7c 48 28 dc    	vmovaps zmm19,zmm28
  a62a81:	62 82 5d 48 7f db    	vpermt2ps zmm19,zmm4,zmm27
  a62a87:	62 02 45 48 7f e3    	vpermt2ps zmm28,zmm7,zmm27
  a62a8d:	62 41 7c 48 28 ce    	vmovaps zmm25,zmm14
  a62a93:	62 62 5d 48 7f c9    	vpermt2ps zmm25,zmm4,zmm1
  a62a99:	62 72 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm1
  a62a9f:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a62aa5:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a62aab:	62 72 45 48 7f f8    	vpermt2ps zmm15,zmm7,zmm0
  a62ab1:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a62ab7:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a62abd:	62 b2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm17
  a62ac3:	62 01 04 00 57 ff    	vxorps xmm31,xmm31,xmm31
  a62ac9:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a62acf:	62 e1 7c 48 28 0d 27 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff664427]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a62ad6:	44 66 ff 
  a62ad9:	62 22 75 40 7f d3    	vpermt2ps zmm26,zmm17,zmm19
  a62adf:	62 e1 7c 48 28 15 57 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff664457]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a62ae6:	44 66 ff 
  a62ae9:	62 b2 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm19
  a62aef:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a62af5:	62 82 75 40 7f d9    	vpermt2ps zmm19,zmm17,zmm25
  a62afb:	62 12 6d 40 7f d1    	vpermt2ps zmm10,zmm18,zmm25
  a62b01:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a62b07:	62 62 75 40 7f c9    	vpermt2ps zmm25,zmm17,zmm1
  a62b0d:	62 e2 6d 40 7f f9    	vpermt2ps zmm23,zmm18,zmm1
  a62b13:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a62b19:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a62b1f:	62 f2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm0
  a62b25:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a62b2b:	62 92 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm28
  a62b31:	62 12 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm28
  a62b37:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a62b3d:	62 42 75 40 7f de    	vpermt2ps zmm27,zmm17,zmm14
  a62b43:	62 d2 6d 40 7f f6    	vpermt2ps zmm6,zmm18,zmm14
  a62b49:	62 41 7c 48 28 e4    	vmovaps zmm28,zmm12
  a62b4f:	62 42 75 40 7f e7    	vpermt2ps zmm28,zmm17,zmm15
  a62b55:	62 52 6d 40 7f e7    	vpermt2ps zmm12,zmm18,zmm15
  a62b5b:	62 12 45 48 7f c7    	vpermt2ps zmm8,zmm7,zmm31
  a62b61:	62 51 a5 48 14 f4    	vunpcklpd zmm14,zmm11,zmm12
  a62b67:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a62b6d:	62 52 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm8
  a62b73:	62 d2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm8
  a62b79:	62 f1 cd 48 14 d2    	vunpcklpd zmm2,zmm6,zmm2
  a62b7f:	62 11 ad 40 14 e9    	vunpcklpd zmm13,zmm26,zmm25
  a62b85:	62 01 ad 40 15 c9    	vunpckhpd zmm25,zmm26,zmm25
  a62b8b:	62 f1 e5 40 14 f1    	vunpcklpd zmm6,zmm19,zmm1
  a62b91:	62 f1 e5 40 15 c9    	vunpckhpd zmm1,zmm19,zmm1
  a62b97:	62 21 e5 48 14 d7    	vunpcklpd zmm26,zmm3,zmm23
  a62b9d:	62 a1 e5 48 15 df    	vunpckhpd zmm19,zmm3,zmm23
  a62ba3:	62 71 ad 48 14 c5    	vunpcklpd zmm8,zmm10,zmm5
  a62ba9:	62 f1 ad 48 15 ed    	vunpckhpd zmm5,zmm10,zmm5
  a62baf:	62 01 fd 48 14 f4    	vunpcklpd zmm30,zmm0,zmm28
  a62bb5:	62 81 fd 48 15 fc    	vunpckhpd zmm23,zmm0,zmm28
  a62bbb:	62 d1 a5 40 14 c3    	vunpcklpd zmm0,zmm27,zmm11
  a62bc1:	62 51 a5 40 15 d3    	vunpckhpd zmm10,zmm27,zmm11
  a62bc7:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a62bcd:	62 f1 7c 48 28 1d 29 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff664229]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a62bd4:	42 66 ff 
  a62bd7:	62 72 65 48 7f de    	vpermt2ps zmm11,zmm3,zmm6
  a62bdd:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm11
  a62be4:	07 
  a62be5:	62 71 7c 48 28 25 51 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff664251]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a62bec:	42 66 ff 
  a62bef:	62 72 1d 48 7f ee    	vpermt2ps zmm13,zmm12,zmm6
  a62bf5:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm13
  a62bfc:	06 
  a62bfd:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a62c03:	62 62 65 48 7f d9    	vpermt2ps zmm27,zmm3,zmm1
  a62c09:	62 62 1d 48 7f c9    	vpermt2ps zmm25,zmm12,zmm1
  a62c0f:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm25
  a62c16:	05 
  a62c17:	62 01 7c 48 28 ca    	vmovaps zmm25,zmm26
  a62c1d:	62 42 65 48 7f c8    	vpermt2ps zmm25,zmm3,zmm8
  a62c23:	62 42 1d 48 7f d0    	vpermt2ps zmm26,zmm12,zmm8
  a62c29:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm26
  a62c30:	03 
  a62c31:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a62c37:	62 62 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm5
  a62c3d:	62 e2 1d 48 7f dd    	vpermt2ps zmm19,zmm12,zmm5
  a62c43:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a62c49:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a62c4f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a62c56:	09 
  a62c57:	62 62 1d 48 7f f0    	vpermt2ps zmm30,zmm12,zmm0
  a62c5d:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm30
  a62c64:	02 
  a62c65:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a62c6b:	62 42 65 48 7f f2    	vpermt2ps zmm30,zmm3,zmm10
  a62c71:	62 c2 1d 48 7f fa    	vpermt2ps zmm23,zmm12,zmm10
  a62c77:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm23
  a62c7e:	0d 
  a62c7f:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a62c85:	62 62 65 48 7f d2    	vpermt2ps zmm26,zmm3,zmm2
  a62c8b:	62 72 1d 48 7f f2    	vpermt2ps zmm14,zmm12,zmm2
  a62c91:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm14
  a62c98:	04 
  a62c99:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a62c9f:	62 b2 5d 48 7f c0    	vpermt2ps zmm0,zmm4,zmm16
  a62ca5:	62 22 45 48 7f e8    	vpermt2ps zmm29,zmm7,zmm16
  a62cab:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a62cb1:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a62cb8:	01 
  a62cb9:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a62cbf:	62 e2 45 48 7f e2    	vpermt2ps zmm20,zmm7,zmm2
  a62cc5:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a62ccb:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a62cd2:	62 f2 5d 48 7f d5    	vpermt2ps zmm2,zmm4,zmm5
  a62cd8:	62 72 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm5
  a62cde:	62 91 7c 48 28 e8    	vmovaps zmm5,zmm24
  a62ce4:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x2c0]
  a62ceb:	0b 
  a62cec:	62 f2 5d 48 7f ee    	vpermt2ps zmm5,zmm4,zmm6
  a62cf2:	62 62 45 48 7f c6    	vpermt2ps zmm24,zmm7,zmm6
  a62cf8:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a62cfe:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x280]
  a62d05:	0a 
  a62d06:	62 d2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm8
  a62d0c:	62 c2 45 48 7f e8    	vpermt2ps zmm21,zmm7,zmm8
  a62d12:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x80]
  a62d19:	fe 
  a62d1a:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a62d20:	62 32 5d 48 7f c6    	vpermt2ps zmm8,zmm4,zmm22
  a62d26:	62 32 45 48 7f d6    	vpermt2ps zmm10,zmm7,zmm22
  a62d2c:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a62d32:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x40]
  a62d39:	ff 
  a62d3a:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a62d40:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x200]
  a62d47:	08 
  a62d48:	62 52 5d 48 7f d5    	vpermt2ps zmm10,zmm4,zmm13
  a62d4e:	62 52 45 48 7f dd    	vpermt2ps zmm11,zmm7,zmm13
  a62d54:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a62d5a:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x300]
  a62d61:	0c 
  a62d62:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a62d68:	62 12 5d 48 7f df    	vpermt2ps zmm11,zmm4,zmm31
  a62d6e:	62 12 45 48 7f ef    	vpermt2ps zmm13,zmm7,zmm31
  a62d74:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a62d7a:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a62d80:	62 72 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm6
  a62d86:	62 f2 6d 40 7f c6    	vpermt2ps zmm0,zmm18,zmm6
  a62d8c:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a62d92:	62 c2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm8
  a62d98:	62 d2 6d 40 7f c8    	vpermt2ps zmm1,zmm18,zmm8
  a62d9e:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a62da4:	62 d2 75 40 7f f2    	vpermt2ps zmm6,zmm17,zmm10
  a62daa:	62 d2 6d 40 7f d2    	vpermt2ps zmm2,zmm18,zmm10
  a62db0:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a62db6:	62 52 75 40 7f c3    	vpermt2ps zmm8,zmm17,zmm11
  a62dbc:	62 d2 6d 40 7f eb    	vpermt2ps zmm5,zmm18,zmm11
  a62dc2:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a62dc8:	62 32 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm21
  a62dce:	62 22 6d 40 7f ed    	vpermt2ps zmm29,zmm18,zmm21
  a62dd4:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a62dda:	62 a2 75 40 7f ee    	vpermt2ps zmm21,zmm17,zmm22
  a62de0:	62 a2 6d 40 7f e6    	vpermt2ps zmm20,zmm18,zmm22
  a62de6:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a62dec:	62 52 75 40 7f fe    	vpermt2ps zmm15,zmm17,zmm14
  a62df2:	62 52 6d 40 7f ce    	vpermt2ps zmm9,zmm18,zmm14
  a62df8:	62 c1 95 40 14 f9    	vunpcklpd zmm23,zmm29,zmm9
  a62dfe:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a62e04:	62 72 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm4
  a62e0a:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a62e10:	62 91 dd 40 14 f8    	vunpcklpd zmm7,zmm20,zmm24
  a62e16:	62 71 95 48 14 f6    	vunpcklpd zmm14,zmm13,zmm6
  a62e1c:	62 71 95 48 15 de    	vunpckhpd zmm11,zmm13,zmm6
  a62e22:	62 51 fd 40 14 e8    	vunpcklpd zmm13,zmm16,zmm8
  a62e28:	62 c1 fd 40 15 c8    	vunpckhpd zmm17,zmm16,zmm8
  a62e2e:	62 e1 fd 48 14 c2    	vunpcklpd zmm16,zmm0,zmm2
  a62e34:	62 f1 fd 48 15 f2    	vunpckhpd zmm6,zmm0,zmm2
  a62e3a:	62 e1 f5 48 14 d5    	vunpcklpd zmm18,zmm1,zmm5
  a62e40:	62 f1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm5
  a62e46:	62 51 ad 48 14 c7    	vunpcklpd zmm8,zmm10,zmm15
  a62e4c:	62 c1 ad 48 15 e7    	vunpckhpd zmm20,zmm10,zmm15
  a62e52:	62 d1 d5 40 14 e9    	vunpcklpd zmm5,zmm21,zmm9
  a62e58:	62 51 d5 40 15 c9    	vunpckhpd zmm9,zmm21,zmm9
  a62e5e:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a62e64:	62 d2 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm13
  a62e6a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a62e71:	ff 
  a62e72:	62 52 1d 48 7f f5    	vpermt2ps zmm14,zmm12,zmm13
  a62e78:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a62e7e:	62 b2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm17
  a62e84:	62 32 1d 48 7f d9    	vpermt2ps zmm11,zmm12,zmm17
  a62e8a:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a62e90:	62 b2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm18
  a62e96:	62 a2 1d 48 7f c2    	vpermt2ps zmm16,zmm12,zmm18
  a62e9c:	62 e1 7c 48 28 f6    	vmovaps zmm22,zmm6
  a62ea2:	62 e2 65 48 7f f1    	vpermt2ps zmm22,zmm3,zmm1
  a62ea8:	62 f2 1d 48 7f f1    	vpermt2ps zmm6,zmm12,zmm1
  a62eae:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a62eb4:	62 62 65 48 7f ed    	vpermt2ps zmm29,zmm3,zmm5
  a62eba:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  a62ec0:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a62ec6:	62 d2 65 48 7f c9    	vpermt2ps zmm1,zmm3,zmm9
  a62ecc:	62 c2 1d 48 7f e1    	vpermt2ps zmm20,zmm12,zmm9
  a62ed2:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a62ed8:	62 f2 65 48 7f ef    	vpermt2ps zmm5,zmm3,zmm7
  a62ede:	62 e2 1d 48 7f ff    	vpermt2ps zmm23,zmm12,zmm7
  a62ee4:	62 71 7c 48 10 69 04 	vmovups zmm13,ZMMWORD PTR [rcx+0x100]
  a62eeb:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a62ef2:	62 41 24 40 59 c5    	vmulps zmm24,zmm27,zmm13
  a62ef8:	62 42 6d 48 bc c1    	vfnmadd231ps zmm24,zmm2,zmm9
  a62efe:	62 c1 6c 48 59 cd    	vmulps zmm17,zmm2,zmm13
  a62f04:	62 f1 7c 48 10 51 18 	vmovups zmm2,ZMMWORD PTR [rcx+0x600]
  a62f0b:	62 82 35 48 b8 cb    	vfmadd231ps zmm17,zmm9,zmm27
  a62f11:	62 f1 7c 48 10 79 19 	vmovups zmm7,ZMMWORD PTR [rcx+0x640]
  a62f18:	62 e1 2c 40 59 ea    	vmulps zmm21,zmm26,zmm2
  a62f1e:	62 e2 55 48 bc ef    	vfnmadd231ps zmm21,zmm5,zmm7
  a62f24:	62 61 54 48 59 da    	vmulps zmm27,zmm5,zmm2
  a62f2a:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a62f31:	62 02 45 48 b8 da    	vfmadd231ps zmm27,zmm7,zmm26
  a62f37:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a62f3e:	62 71 34 40 59 fa    	vmulps zmm15,zmm25,zmm2
  a62f44:	62 72 7d 48 bc fd    	vfnmadd231ps zmm15,zmm0,zmm5
  a62f4a:	62 71 7c 48 59 ea    	vmulps zmm13,zmm0,zmm2
  a62f50:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a62f57:	62 12 55 48 b8 e9    	vfmadd231ps zmm13,zmm5,zmm25
  a62f5d:	62 f1 7c 48 10 59 15 	vmovups zmm3,ZMMWORD PTR [rcx+0x540]
  a62f64:	62 61 0c 40 59 d0    	vmulps zmm26,zmm30,zmm0
  a62f6a:	62 62 75 48 bc d3    	vfnmadd231ps zmm26,zmm1,zmm3
  a62f70:	62 f1 74 48 59 e0    	vmulps zmm4,zmm1,zmm0
  a62f76:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a62f7d:	62 92 65 48 b8 e6    	vfmadd231ps zmm4,zmm3,zmm30
  a62f83:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a62f8a:	62 71 1c 40 59 c8    	vmulps zmm9,zmm28,zmm0
  a62f90:	62 72 4d 40 bc c9    	vfnmadd231ps zmm9,zmm22,zmm1
  a62f96:	62 e1 4c 40 59 f0    	vmulps zmm22,zmm22,zmm0
  a62f9c:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a62fa3:	62 82 75 48 b8 f4    	vfmadd231ps zmm22,zmm1,zmm28
  a62fa9:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a62fb0:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a62fb7:	09 
  a62fb8:	62 f1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm0
  a62fbe:	62 f2 15 40 bc e9    	vfnmadd231ps zmm5,zmm29,zmm1
  a62fc4:	62 e1 14 40 59 d0    	vmulps zmm18,zmm29,zmm0
  a62fca:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a62fd1:	62 e2 75 48 b8 d2    	vfmadd231ps zmm18,zmm1,zmm2
  a62fd7:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a62fde:	62 61 64 40 59 e8    	vmulps zmm29,zmm19,zmm0
  a62fe4:	62 62 4d 48 bc e9    	vfnmadd231ps zmm29,zmm6,zmm1
  a62fea:	62 61 4c 48 59 e0    	vmulps zmm28,zmm6,zmm0
  a62ff0:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a62ff7:	62 22 75 48 b8 e3    	vfmadd231ps zmm28,zmm1,zmm19
  a62ffd:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a63004:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a6300b:	02 
  a6300c:	62 71 6c 48 59 d0    	vmulps zmm10,zmm2,zmm0
  a63012:	62 72 3d 48 bc d1    	vfnmadd231ps zmm10,zmm8,zmm1
  a63018:	62 71 3c 48 59 e0    	vmulps zmm12,zmm8,zmm0
  a6301e:	62 f1 7c 48 10 41 0a 	vmovups zmm0,ZMMWORD PTR [rcx+0x280]
  a63025:	62 72 75 48 b8 e2    	vfmadd231ps zmm12,zmm1,zmm2
  a6302b:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a63032:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a63039:	03 
  a6303a:	62 f1 6c 48 59 f8    	vmulps zmm7,zmm2,zmm0
  a63040:	62 f2 7d 40 bc f9    	vfnmadd231ps zmm7,zmm16,zmm1
  a63046:	62 61 7c 40 59 f0    	vmulps zmm30,zmm16,zmm0
  a6304c:	62 f1 7c 48 10 41 16 	vmovups zmm0,ZMMWORD PTR [rcx+0x580]
  a63053:	62 62 75 48 b8 f2    	vfmadd231ps zmm30,zmm1,zmm2
  a63059:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  a63060:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a63067:	0d 
  a63068:	62 e1 64 48 59 c0    	vmulps zmm16,zmm3,zmm0
  a6306e:	62 e2 5d 40 bc c1    	vfnmadd231ps zmm16,zmm20,zmm1
  a63074:	62 f1 5c 40 59 d0    	vmulps zmm2,zmm20,zmm0
  a6307a:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a63081:	62 f2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm3
  a63087:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a6308e:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x140]
  a63095:	05 
  a63096:	62 d1 64 40 59 d8    	vmulps zmm3,zmm19,zmm8
  a6309c:	62 f2 25 48 bc d9    	vfnmadd231ps zmm3,zmm11,zmm1
  a630a2:	62 d1 24 48 59 c0    	vmulps zmm0,zmm11,zmm8
  a630a8:	62 f1 7c 48 10 71 1a 	vmovups zmm6,ZMMWORD PTR [rcx+0x680]
  a630af:	62 b2 75 48 b8 c3    	vfmadd231ps zmm0,zmm1,zmm19
  a630b5:	62 71 7c 48 10 41 1b 	vmovups zmm8,ZMMWORD PTR [rcx+0x6c0]
  a630bc:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x100]
  a630c3:	04 
  a630c4:	62 f1 5c 40 59 ce    	vmulps zmm1,zmm20,zmm6
  a630ca:	62 d2 45 40 bc c8    	vfnmadd231ps zmm1,zmm23,zmm8
  a630d0:	62 71 44 40 59 de    	vmulps zmm11,zmm23,zmm6
  a630d6:	62 e1 7c 48 10 59 02 	vmovups zmm19,ZMMWORD PTR [rcx+0x80]
  a630dd:	62 32 3d 48 b8 dc    	vfmadd231ps zmm11,zmm8,zmm20
  a630e3:	62 e1 7c 48 10 61 03 	vmovups zmm20,ZMMWORD PTR [rcx+0xc0]
  a630ea:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x180]
  a630f1:	06 
  a630f2:	62 b1 44 40 59 f3    	vmulps zmm6,zmm23,zmm19
  a630f8:	62 b2 0d 48 bc f4    	vfnmadd231ps zmm6,zmm14,zmm20
  a630fe:	62 a1 0c 48 59 db    	vmulps zmm19,zmm14,zmm19
  a63104:	62 31 3c 40 58 c5    	vaddps zmm8,zmm24,zmm21
  a6310a:	62 a2 5d 40 b8 df    	vfmadd231ps zmm19,zmm20,zmm23
  a63110:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x1c0]
  a63117:	07 
  a63118:	62 41 44 40 58 c8    	vaddps zmm25,zmm23,zmm8
  a6311e:	62 31 4c 40 58 f2    	vaddps zmm14,zmm22,zmm18
  a63124:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm14
  a6312b:	0d 
  a6312c:	62 31 4c 40 5c f2    	vsubps zmm14,zmm22,zmm18
  a63132:	62 71 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm14
  a63139:	62 81 74 40 58 d3    	vaddps zmm18,zmm17,zmm27
  a6313f:	62 11 74 40 5c f3    	vsubps zmm14,zmm17,zmm27
  a63145:	62 e1 14 48 58 e4    	vaddps zmm20,zmm13,zmm4
  a6314b:	62 71 14 48 5c ec    	vsubps zmm13,zmm13,zmm4
  a63151:	62 b1 24 48 58 e3    	vaddps zmm4,zmm11,zmm19
  a63157:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a6315e:	05 
  a6315f:	62 b1 24 48 5c e3    	vsubps zmm4,zmm11,zmm19
  a63165:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a6316c:	01 
  a6316d:	62 01 1c 48 58 de    	vaddps zmm27,zmm12,zmm30
  a63173:	62 11 1c 48 5c e6    	vsubps zmm12,zmm12,zmm30
  a63179:	62 f1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm0
  a6317f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a63186:	04 
  a63187:	62 61 6c 48 5c f0    	vsubps zmm30,zmm2,zmm0
  a6318d:	62 f1 34 48 58 e5    	vaddps zmm4,zmm9,zmm5
  a63193:	62 f1 34 48 5c c5    	vsubps zmm0,zmm9,zmm5
  a63199:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a631a0:	fe 
  a631a1:	62 91 04 48 58 ea    	vaddps zmm5,zmm15,zmm26
  a631a7:	62 f1 34 40 58 c5    	vaddps zmm0,zmm25,zmm5
  a631ad:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a631b3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a631ba:	06 
  a631bb:	62 21 3c 40 5c cd    	vsubps zmm25,zmm24,zmm21
  a631c1:	62 71 2c 48 58 cf    	vaddps zmm9,zmm10,zmm7
  a631c7:	62 01 04 48 5c d2    	vsubps zmm26,zmm15,zmm26
  a631cd:	62 71 74 48 58 de    	vaddps zmm11,zmm1,zmm6
  a631d3:	62 f1 74 48 5c c6    	vsubps zmm0,zmm1,zmm6
  a631d9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a631e0:	03 
  a631e1:	62 e1 7c 40 58 eb    	vaddps zmm21,zmm16,zmm3
  a631e7:	62 f1 2c 48 5c c7    	vsubps zmm0,zmm10,zmm7
  a631ed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a631f4:	02 
  a631f5:	62 62 7d 48 18 05 f5 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6123f5]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a631fc:	23 61 ff 
  a631ff:	62 01 7c 48 28 f8    	vmovaps zmm31,zmm24
  a63205:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a6320b:	62 22 3d 48 a8 ff    	vfmadd213ps zmm31,zmm8,zmm23
  a63211:	62 f1 7c 40 5c c3    	vsubps zmm0,zmm16,zmm3
  a63217:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a6321e:	0c 
  a6321f:	62 e2 7d 48 18 0d a3 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff6120a3]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a63226:	20 61 ff 
  a63229:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a6322f:	62 a2 3d 48 ac fb    	vfnmadd213ps zmm23,zmm8,zmm19
  a63235:	62 f2 7d 48 18 15 99 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff612399]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a6323c:	23 61 ff 
  a6323f:	62 c2 6d 48 bc d8    	vfnmadd231ps zmm19,zmm2,zmm8
  a63245:	62 d1 14 40 58 c1    	vaddps zmm0,zmm29,zmm9
  a6324b:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a63251:	62 d1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm11
  a63257:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a6325e:	07 
  a6325f:	62 22 55 48 bc f9    	vfnmadd231ps zmm31,zmm5,zmm17
  a63265:	62 62 5d 48 bc fa    	vfnmadd231ps zmm31,zmm4,zmm2
  a6326b:	62 e2 55 48 bc fa    	vfnmadd231ps zmm23,zmm5,zmm2
  a63271:	62 e2 3d 40 b8 dd    	vfmadd231ps zmm19,zmm24,zmm5
  a63277:	62 e2 7d 48 18 05 0f 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff61220f]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a6327e:	22 61 ff 
  a63281:	62 a1 14 48 59 f0    	vmulps zmm22,zmm13,zmm16
  a63287:	62 f2 7d 48 18 1d cf 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6123cf]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a6328e:	23 61 ff 
  a63291:	62 e2 0d 48 b8 f3    	vfmadd231ps zmm22,zmm14,zmm3
  a63297:	62 f2 7d 48 18 05 47 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff612347]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a6329e:	23 61 ff 
  a632a1:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a632a8:	62 e2 55 48 b8 f0    	vfmadd231ps zmm22,zmm5,zmm0
  a632ae:	62 82 5d 48 b8 f8    	vfmadd231ps zmm23,zmm4,zmm24
  a632b4:	62 e2 75 40 bc dc    	vfnmadd231ps zmm19,zmm17,zmm4
  a632ba:	62 31 0c 48 59 d0    	vmulps zmm10,zmm14,zmm16
  a632c0:	62 72 15 48 bc d0    	vfnmadd231ps zmm10,zmm13,zmm0
  a632c6:	62 f1 0c 48 59 f8    	vmulps zmm7,zmm14,zmm0
  a632cc:	62 d2 65 48 bc fd    	vfnmadd231ps zmm7,zmm3,zmm13
  a632d2:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a632d8:	62 92 35 48 a8 cd    	vfmadd213ps zmm1,zmm9,zmm29
  a632de:	62 72 55 48 bc d3    	vfnmadd231ps zmm10,zmm5,zmm3
  a632e4:	62 f2 7d 40 b8 fd    	vfmadd231ps zmm7,zmm16,zmm5
  a632ea:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a632f0:	62 92 35 48 ac ed    	vfnmadd213ps zmm5,zmm9,zmm29
  a632f6:	62 42 6d 48 bc e9    	vfnmadd231ps zmm29,zmm2,zmm9
  a632fc:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x40]
  a63303:	ff 
  a63304:	62 d1 6c 40 58 e6    	vaddps zmm4,zmm18,zmm14
  a6330a:	62 f1 5c 40 58 e4    	vaddps zmm4,zmm20,zmm4
  a63310:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x340]
  a63317:	0d 
  a63318:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a6331e:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a63325:	62 b2 55 40 bc c9    	vfnmadd231ps zmm1,zmm21,zmm17
  a6332b:	62 f2 25 48 bc ca    	vfnmadd231ps zmm1,zmm11,zmm2
  a63331:	62 f2 55 40 bc ea    	vfnmadd231ps zmm5,zmm21,zmm2
  a63337:	62 22 3d 40 b8 ed    	vfmadd231ps zmm29,zmm24,zmm21
  a6333d:	62 31 0c 40 59 e8    	vmulps zmm13,zmm30,zmm16
  a63343:	62 72 1d 48 b8 eb    	vfmadd231ps zmm13,zmm12,zmm3
  a63349:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x40]
  a63350:	01 
  a63351:	62 72 4d 48 b8 e8    	vfmadd231ps zmm13,zmm6,zmm0
  a63357:	62 92 25 48 b8 e8    	vfmadd231ps zmm5,zmm11,zmm24
  a6335d:	62 42 75 40 bc eb    	vfnmadd231ps zmm29,zmm17,zmm11
  a63363:	62 31 1c 48 59 c8    	vmulps zmm9,zmm12,zmm16
  a63369:	62 72 0d 40 bc c8    	vfnmadd231ps zmm9,zmm30,zmm0
  a6336f:	62 71 1c 48 59 d8    	vmulps zmm11,zmm12,zmm0
  a63375:	62 12 65 48 bc de    	vfnmadd231ps zmm11,zmm3,zmm30
  a6337b:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a63381:	62 d2 6d 40 a8 e6    	vfmadd213ps zmm4,zmm18,zmm14
  a63387:	62 72 4d 48 bc cb    	vfnmadd231ps zmm9,zmm6,zmm3
  a6338d:	62 72 7d 40 b8 de    	vfmadd231ps zmm11,zmm16,zmm6
  a63393:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a63399:	62 d2 6d 40 ac f6    	vfnmadd213ps zmm6,zmm18,zmm14
  a6339f:	62 32 6d 48 bc f2    	vfnmadd231ps zmm14,zmm2,zmm18
  a633a5:	62 11 1c 40 58 fb    	vaddps zmm15,zmm28,zmm27
  a633ab:	62 b2 5d 40 bc e1    	vfnmadd231ps zmm4,zmm20,zmm17
  a633b1:	62 f2 3d 48 bc e2    	vfnmadd231ps zmm4,zmm8,zmm2
  a633b7:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a633bd:	62 f2 5d 40 bc f2    	vfnmadd231ps zmm6,zmm20,zmm2
  a633c3:	62 32 3d 40 b8 f4    	vfmadd231ps zmm14,zmm24,zmm20
  a633c9:	62 31 2c 40 59 c0    	vmulps zmm8,zmm26,zmm16
  a633cf:	62 72 35 40 b8 c3    	vfmadd231ps zmm8,zmm25,zmm3
  a633d5:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp-0x80]
  a633dc:	fe 
  a633dd:	62 72 55 40 b8 c0    	vfmadd231ps zmm8,zmm21,zmm0
  a633e3:	62 92 1d 48 b8 f0    	vfmadd231ps zmm6,zmm12,zmm24
  a633e9:	62 52 75 40 bc f4    	vfnmadd231ps zmm14,zmm17,zmm12
  a633ef:	62 41 7c 48 28 f6    	vmovaps zmm30,zmm14
  a633f5:	62 31 34 40 59 f0    	vmulps zmm14,zmm25,zmm16
  a633fb:	62 72 2d 40 bc f0    	vfnmadd231ps zmm14,zmm26,zmm0
  a63401:	62 e1 34 40 59 d0    	vmulps zmm18,zmm25,zmm0
  a63407:	62 82 65 48 bc d2    	vfnmadd231ps zmm18,zmm3,zmm26
  a6340d:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a63413:	62 82 25 40 a8 e4    	vfmadd213ps zmm20,zmm27,zmm28
  a63419:	62 72 55 40 bc f3    	vfnmadd231ps zmm14,zmm21,zmm3
  a6341f:	62 a2 7d 40 b8 d5    	vfmadd231ps zmm18,zmm16,zmm21
  a63425:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a6342b:	62 82 25 40 ac ec    	vfnmadd213ps zmm21,zmm27,zmm28
  a63431:	62 02 6d 48 bc e3    	vfnmadd231ps zmm28,zmm2,zmm27
  a63437:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x100]
  a6343e:	04 
  a6343f:	62 51 04 48 58 fc    	vaddps zmm15,zmm15,zmm12
  a63445:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x140]
  a6344c:	05 
  a6344d:	62 11 04 48 58 f9    	vaddps zmm15,zmm15,zmm25
  a63453:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm15
  a6345a:	ff 
  a6345b:	62 a2 1d 48 bc e1    	vfnmadd231ps zmm20,zmm12,zmm17
  a63461:	62 e2 35 40 bc e2    	vfnmadd231ps zmm20,zmm25,zmm2
  a63467:	62 e2 1d 48 bc ea    	vfnmadd231ps zmm21,zmm12,zmm2
  a6346d:	62 42 3d 40 b8 e4    	vfmadd231ps zmm28,zmm24,zmm12
  a63473:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x300]
  a6347a:	0c 
  a6347b:	62 31 2c 40 59 e0    	vmulps zmm12,zmm26,zmm16
  a63481:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a63488:	02 
  a63489:	62 72 6d 48 b8 e3    	vfmadd231ps zmm12,zmm2,zmm3
  a6348f:	62 82 35 40 b8 e8    	vfmadd231ps zmm21,zmm25,zmm24
  a63495:	62 02 75 40 bc e1    	vfnmadd231ps zmm28,zmm17,zmm25
  a6349b:	62 31 6c 48 59 f8    	vmulps zmm15,zmm2,zmm16
  a634a1:	62 72 2d 40 bc f8    	vfnmadd231ps zmm15,zmm26,zmm0
  a634a7:	62 e1 6c 48 59 c8    	vmulps zmm17,zmm2,zmm0
  a634ad:	62 82 65 48 bc ca    	vfnmadd231ps zmm17,zmm3,zmm26
  a634b3:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a634ba:	03 
  a634bb:	62 72 6d 48 b8 e0    	vfmadd231ps zmm12,zmm2,zmm0
  a634c1:	62 72 6d 48 bc fb    	vfnmadd231ps zmm15,zmm2,zmm3
  a634c7:	62 e2 7d 40 b8 ca    	vfmadd231ps zmm17,zmm16,zmm2
  a634cd:	62 f1 64 40 58 c7    	vaddps zmm0,zmm19,zmm7
  a634d3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a634da:	05 
  a634db:	62 f1 64 40 5c ff    	vsubps zmm7,zmm19,zmm7
  a634e1:	62 41 14 40 58 cb    	vaddps zmm25,zmm29,zmm11
  a634e7:	62 51 14 40 5c db    	vsubps zmm11,zmm29,zmm11
  a634ed:	62 21 0c 40 5c d2    	vsubps zmm26,zmm30,zmm18
  a634f3:	62 01 6c 40 58 c6    	vaddps zmm24,zmm18,zmm30
  a634f9:	62 21 1c 40 5c d9    	vsubps zmm27,zmm28,zmm17
  a634ff:	62 21 1c 40 58 e1    	vaddps zmm28,zmm28,zmm17
  a63505:	62 d1 44 40 58 da    	vaddps zmm3,zmm23,zmm10
  a6350b:	62 d1 44 40 5c d2    	vsubps zmm2,zmm23,zmm10
  a63511:	62 c1 54 48 58 c1    	vaddps zmm16,zmm5,zmm9
  a63517:	62 51 54 48 5c c9    	vsubps zmm9,zmm5,zmm9
  a6351d:	62 d1 4c 48 5c ee    	vsubps zmm5,zmm6,zmm14
  a63523:	62 61 0c 48 58 ee    	vaddps zmm29,zmm14,zmm6
  a63529:	62 51 54 40 5c f7    	vsubps zmm14,zmm21,zmm15
  a6352f:	62 41 54 40 58 f7    	vaddps zmm30,zmm21,zmm15
  a63535:	62 b1 04 40 58 f6    	vaddps zmm6,zmm31,zmm22
  a6353b:	62 b1 04 40 5c c6    	vsubps zmm0,zmm31,zmm22
  a63541:	62 51 74 48 58 d5    	vaddps zmm10,zmm1,zmm13
  a63547:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a6354d:	62 51 5c 48 5c e8    	vsubps zmm13,zmm4,zmm8
  a63553:	62 71 3c 48 58 c4    	vaddps zmm8,zmm8,zmm4
  a63559:	62 d1 5c 40 5c e4    	vsubps zmm4,zmm20,zmm12
  a6355f:	62 41 5c 40 58 fc    	vaddps zmm31,zmm20,zmm12
  a63565:	62 51 4c 48 5c fa    	vsubps zmm15,zmm6,zmm10
  a6356b:	62 c1 4c 48 58 d2    	vaddps zmm18,zmm6,zmm10
  a63571:	62 71 14 48 5c d4    	vsubps zmm10,zmm13,zmm4
  a63577:	62 f1 14 48 58 f4    	vaddps zmm6,zmm13,zmm4
  a6357d:	62 31 64 48 58 e0    	vaddps zmm12,zmm3,zmm16
  a63583:	62 a1 64 48 5c c0    	vsubps zmm16,zmm3,zmm16
  a63589:	62 51 54 48 58 ee    	vaddps zmm13,zmm5,zmm14
  a6358f:	62 c1 54 48 5c ce    	vsubps zmm17,zmm5,zmm14
  a63595:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a6359c:	05 
  a6359d:	62 91 5c 48 5c d9    	vsubps zmm3,zmm4,zmm25
  a635a3:	62 01 5c 48 58 c9    	vaddps zmm25,zmm4,zmm25
  a635a9:	62 81 2c 40 5c fb    	vsubps zmm23,zmm26,zmm27
  a635af:	62 91 2c 40 58 eb    	vaddps zmm5,zmm26,zmm27
  a635b5:	62 c1 44 48 58 e3    	vaddps zmm20,zmm7,zmm11
  a635bb:	62 51 44 48 5c db    	vsubps zmm11,zmm7,zmm11
  a635c1:	62 81 3c 40 58 ec    	vaddps zmm21,zmm24,zmm28
  a635c7:	62 11 3c 40 5c f4    	vsubps zmm14,zmm24,zmm28
  a635cd:	62 d1 6c 48 5c e1    	vsubps zmm4,zmm2,zmm9
  a635d3:	62 51 6c 48 58 c9    	vaddps zmm9,zmm2,zmm9
  a635d9:	62 01 14 40 5c de    	vsubps zmm27,zmm29,zmm30
  a635df:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a635e5:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a635eb:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a635f1:	62 01 3c 48 58 d7    	vaddps zmm26,zmm8,zmm31
  a635f7:	62 11 3c 48 5c c7    	vsubps zmm8,zmm8,zmm31
  a635fd:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a63604:	06 
  a63605:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x1c0]
  a6360c:	07 
  a6360d:	62 b1 74 48 5c c3    	vsubps zmm0,zmm1,zmm19
  a63613:	62 21 74 48 58 e3    	vaddps zmm28,zmm1,zmm19
  a63619:	62 e1 7c 48 10 1c 24 	vmovups zmm19,ZMMWORD PTR [rsp]
  a63620:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x40]
  a63627:	ff 
  a63628:	62 b1 64 40 5c ce    	vsubps zmm1,zmm19,zmm22
  a6362e:	62 a1 64 40 58 de    	vaddps zmm19,zmm19,zmm22
  a63634:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a6363a:	62 61 7c 48 28 2d fc 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6308fc]        # 93f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x213f0>
  a63641:	08 63 ff 
  a63644:	62 a2 15 40 7f f3    	vpermt2ps zmm22,zmm29,zmm19
  a6364a:	62 e1 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm22
  a63651:	62 a1 1c 40 14 f3    	vunpcklps zmm22,zmm28,zmm19
  a63657:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm22,0x3
  a6365e:	06 03 
  a63660:	62 a1 1c 40 15 f3    	vunpckhps zmm22,zmm28,zmm19
  a63666:	62 a3 7d 48 19 f6 03 	vextractf32x4 xmm22,zmm22,0x3
  a6366d:	62 e1 7c 08 13 74 16 	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm22
  a63674:	0e 
  a63675:	62 e1 7c 28 28 35 01 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff630901]        # 93f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21430>
  a6367c:	09 63 ff 
  a6367f:	62 22 4d 40 7f e3    	vpermt2ps zmm28,zmm22,zmm19
  a63685:	62 61 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm28
  a6368c:	02 
  a6368d:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a63693:	62 c2 15 40 7f da    	vpermt2ps zmm19,zmm29,zmm10
  a63699:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm19
  a636a0:	78 00 00 00 
  a636a4:	62 c1 04 48 14 da    	vunpcklps zmm19,zmm15,zmm10
  a636aa:	62 e3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm19,0x3
  a636b1:	d8 00 00 00 03 
  a636b6:	62 c1 04 48 15 da    	vunpckhps zmm19,zmm15,zmm10
  a636bc:	62 a3 7d 48 19 db 03 	vextractf32x4 xmm19,zmm19,0x3
  a636c3:	62 e1 7c 08 13 5c 16 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm19
  a636ca:	1d 
  a636cb:	62 52 4d 40 7f fa    	vpermt2ps zmm15,zmm22,zmm10
  a636d1:	c5 7c 11 bc 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm15
  a636d8:	00 00 
  a636da:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a636e0:	62 52 15 40 7f d5    	vpermt2ps zmm10,zmm29,zmm13
  a636e6:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm10
  a636ed:	f0 00 00 00 
  a636f1:	62 51 1c 48 14 d5    	vunpcklps zmm10,zmm12,zmm13
  a636f7:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm10,0x3
  a636fe:	15 03 
  a63700:	62 51 1c 48 15 d5    	vunpckhps zmm10,zmm12,zmm13
  a63706:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a6370d:	c5 78 13 94 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm10
  a63714:	00 00 
  a63716:	62 52 4d 40 7f e5    	vpermt2ps zmm12,zmm22,zmm13
  a6371c:	c5 7c 11 a4 16 30 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm12
  a63723:	00 00 
  a63725:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a6372b:	62 32 15 40 7f d7    	vpermt2ps zmm10,zmm29,zmm23
  a63731:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm10
  a63738:	68 01 00 00 
  a6373c:	62 31 64 48 14 d7    	vunpcklps zmm10,zmm3,zmm23
  a63742:	62 73 7d 48 19 94 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm10,0x3
  a63749:	c8 01 00 00 03 
  a6374e:	62 31 64 48 15 d7    	vunpckhps zmm10,zmm3,zmm23
  a63754:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a6375b:	c5 78 13 94 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm10
  a63762:	00 00 
  a63764:	62 b2 4d 40 7f df    	vpermt2ps zmm3,zmm22,zmm23
  a6376a:	c5 fc 11 9c 16 a8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm3
  a63771:	00 00 
  a63773:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a63779:	62 b2 15 40 7f dd    	vpermt2ps zmm3,zmm29,zmm21
  a6377f:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm3
  a63786:	e0 01 00 00 
  a6378a:	62 b1 5c 40 14 dd    	vunpcklps zmm3,zmm20,zmm21
  a63790:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm3,0x3
  a63797:	24 03 
  a63799:	62 b1 5c 40 15 dd    	vunpckhps zmm3,zmm20,zmm21
  a6379f:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a637a6:	c5 f8 13 9c 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm3
  a637ad:	00 00 
  a637af:	62 a2 4d 40 7f e5    	vpermt2ps zmm20,zmm22,zmm21
  a637b5:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm20
  a637bc:	11 
  a637bd:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a637c3:	62 92 15 40 7f db    	vpermt2ps zmm3,zmm29,zmm27
  a637c9:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm3
  a637d0:	58 02 00 00 
  a637d4:	62 91 5c 48 14 db    	vunpcklps zmm3,zmm4,zmm27
  a637da:	62 f3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm3,0x3
  a637e1:	b8 02 00 00 03 
  a637e6:	62 91 5c 48 15 db    	vunpckhps zmm3,zmm4,zmm27
  a637ec:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a637f3:	c5 f8 13 9c 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm3
  a637fa:	00 00 
  a637fc:	62 92 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm27
  a63802:	c5 fc 11 a4 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm4
  a63809:	00 00 
  a6380b:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a63811:	62 92 15 40 7f da    	vpermt2ps zmm3,zmm29,zmm26
  a63817:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm3
  a6381e:	d0 02 00 00 
  a63822:	62 91 6c 48 14 da    	vunpcklps zmm3,zmm2,zmm26
  a63828:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm3,0x3
  a6382f:	33 03 
  a63831:	62 91 6c 48 15 da    	vunpckhps zmm3,zmm2,zmm26
  a63837:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a6383e:	c5 f8 13 9c 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm3
  a63845:	00 00 
  a63847:	62 92 4d 40 7f d2    	vpermt2ps zmm2,zmm22,zmm26
  a6384d:	c5 fc 11 94 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm2
  a63854:	00 00 
  a63856:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a6385c:	62 f2 15 40 7f d1    	vpermt2ps zmm2,zmm29,zmm1
  a63862:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm2
  a63869:	48 03 00 00 
  a6386d:	62 f1 7c 48 14 d1    	vunpcklps zmm2,zmm0,zmm1
  a63873:	62 f3 7d 48 19 94 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm2,0x3
  a6387a:	a8 03 00 00 03 
  a6387f:	62 f1 7c 48 15 d1    	vunpckhps zmm2,zmm0,zmm1
  a63885:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a6388c:	c5 f8 13 94 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm2
  a63893:	00 00 
  a63895:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a6389b:	c5 fc 11 84 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm0
  a638a2:	00 00 
  a638a4:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a638aa:	62 f2 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm6
  a638b0:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a638b7:	0f 
  a638b8:	62 f1 6c 40 14 c6    	vunpcklps zmm0,zmm18,zmm6
  a638be:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm0,0x3
  a638c5:	42 03 
  a638c7:	62 f1 6c 40 15 c6    	vunpckhps zmm0,zmm18,zmm6
  a638cd:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a638d4:	c5 f8 13 84 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm0
  a638db:	00 00 
  a638dd:	62 e2 4d 40 7f d6    	vpermt2ps zmm18,zmm22,zmm6
  a638e3:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm18
  a638ea:	20 
  a638eb:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a638f1:	62 b2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm17
  a638f7:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm0
  a638fe:	38 04 00 00 
  a63902:	62 b1 7c 40 14 c1    	vunpcklps zmm0,zmm16,zmm17
  a63908:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm0,0x3
  a6390f:	98 04 00 00 03 
  a63914:	62 b1 7c 40 15 c1    	vunpckhps zmm0,zmm16,zmm17
  a6391a:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a63921:	c5 f8 13 84 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm0
  a63928:	00 00 
  a6392a:	62 a2 4d 40 7f c1    	vpermt2ps zmm16,zmm22,zmm17
  a63930:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm16
  a63937:	78 04 00 00 
  a6393b:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a63941:	62 f2 15 40 7f c5    	vpermt2ps zmm0,zmm29,zmm5
  a63947:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm0
  a6394e:	b0 04 00 00 
  a63952:	62 f1 34 40 14 c5    	vunpcklps zmm0,zmm25,zmm5
  a63958:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm0,0x3
  a6395f:	51 03 
  a63961:	62 f1 34 40 15 c5    	vunpckhps zmm0,zmm25,zmm5
  a63967:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6396e:	c5 f8 13 84 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm0
  a63975:	00 00 
  a63977:	62 62 4d 40 7f cd    	vpermt2ps zmm25,zmm22,zmm5
  a6397d:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm25
  a63984:	f0 04 00 00 
  a63988:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a6398e:	62 d2 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm14
  a63994:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a6399b:	28 05 00 00 
  a6399f:	62 d1 24 48 14 c6    	vunpcklps zmm0,zmm11,zmm14
  a639a5:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a639ac:	88 05 00 00 03 
  a639b1:	62 d1 24 48 15 c6    	vunpckhps zmm0,zmm11,zmm14
  a639b7:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a639be:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a639c5:	00 00 
  a639c7:	62 52 4d 40 7f de    	vpermt2ps zmm11,zmm22,zmm14
  a639cd:	c5 7c 11 9c 16 68 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm11
  a639d4:	00 00 
  a639d6:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a639dc:	62 92 15 40 7f c0    	vpermt2ps zmm0,zmm29,zmm24
  a639e2:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a639e9:	a0 05 00 00 
  a639ed:	62 91 34 48 14 c0    	vunpcklps zmm0,zmm9,zmm24
  a639f3:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a639fa:	60 03 
  a639fc:	62 91 34 48 15 c0    	vunpckhps zmm0,zmm9,zmm24
  a63a02:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a63a09:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a63a10:	00 00 
  a63a12:	62 12 4d 40 7f c8    	vpermt2ps zmm9,zmm22,zmm24
  a63a18:	c5 7c 11 8c 16 e0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm9
  a63a1f:	00 00 
  a63a21:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a63a27:	62 d2 15 40 7f c0    	vpermt2ps zmm0,zmm29,zmm8
  a63a2d:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a63a34:	18 06 00 00 
  a63a38:	62 d1 44 48 14 c0    	vunpcklps zmm0,zmm7,zmm8
  a63a3e:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a63a45:	78 06 00 00 03 
  a63a4a:	62 d1 44 48 15 c0    	vunpckhps zmm0,zmm7,zmm8
  a63a50:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a63a57:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a63a5e:	00 00 
  a63a60:	62 d2 4d 40 7f f8    	vpermt2ps zmm7,zmm22,zmm8
  a63a66:	c5 fc 11 bc 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm7
  a63a6d:	00 00 
  a63a6f:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a63a76:	48 39 d0             	cmp    rax,rdx
  a63a79:	0f 85 21 e3 ff ff    	jne    a61da0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a63a7f:	48 81 c4 48 04 00 00 	add    rsp,0x448
  a63a86:	c5 f8 77             	vzeroupper
  a63a89:	c3                   	ret
