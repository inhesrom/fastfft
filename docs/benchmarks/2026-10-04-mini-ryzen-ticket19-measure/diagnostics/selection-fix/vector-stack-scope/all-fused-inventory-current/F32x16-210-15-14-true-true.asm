
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a68cc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a68cc0:	55                   	push   rbp
  a68cc1:	48 89 e5             	mov    rbp,rsp
  a68cc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a68cc8:	48 81 ec 00 04 00 00 	sub    rsp,0x400
  a68ccf:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a68cd6:	31 d2                	xor    edx,edx
  a68cd8:	4c 8d 84 24 80 03 00 	lea    r8,[rsp+0x380]
  a68cdf:	00 
  a68ce0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a68ce5:	41 b2 3f             	mov    r10b,0x3f
  a68ce8:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a68ced:	0f 1f 00             	nop    DWORD PTR [rax]
  a68cf0:	c6 84 24 80 03 00 00 	mov    BYTE PTR [rsp+0x380],0x0
  a68cf7:	00 
  a68cf8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a68cfd:	62 f1 7c 48 10 2c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1]
  a68d04:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a68d0a:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a68d10:	c4 e3 71 21 5c 17 64 	vinsertps xmm3,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a68d17:	10 
  a68d18:	c4 e2 79 18 64 17 68 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x68]
  a68d1f:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x70]
  a68d26:	70 00 00 00 
  a68d2a:	c5 fc 10 8c 17 b0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xb0]
  a68d31:	00 00 
  a68d33:	c5 f8 10 94 17 d0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xd0]
  a68d3a:	00 00 
  a68d3c:	c4 e3 69 21 94 17 d4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xd4],0x10
  a68d43:	00 00 00 10 
  a68d47:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a68d4d:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a68d53:	c4 e2 79 18 ac 17 d8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0xd8]
  a68d5a:	00 00 00 
  a68d5d:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0xe0]
  a68d64:	e0 00 00 00 
  a68d68:	62 e1 7c 48 28 f6    	vmovaps zmm22,zmm6
  a68d6e:	62 61 7c 48 28 f6    	vmovaps zmm30,zmm6
  a68d74:	c5 f8 10 b4 17 40 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x140]
  a68d7b:	00 00 
  a68d7d:	c4 e3 49 21 b4 17 44 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x144],0x10
  a68d84:	01 00 00 10 
  a68d88:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  a68d8e:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x148]
  a68d95:	01 00 00 
  a68d98:	c4 e3 61 21 5c 17 6c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a68d9f:	30 
  a68da0:	c5 fc 10 bc 17 20 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x120]
  a68da7:	00 00 
  a68da9:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a68daf:	c5 78 10 84 17 b0 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x1b0]
  a68db6:	00 00 
  a68db8:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a68dbe:	c4 e3 39 21 ac 17 b4 	vinsertps xmm5,xmm8,DWORD PTR [rdi+rdx*1+0x1b4],0x10
  a68dc5:	01 00 00 10 
  a68dc9:	c4 e3 69 21 94 17 dc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xdc],0x30
  a68dd0:	00 00 00 30 
  a68dd4:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x150]
  a68ddb:	50 01 00 00 
  a68ddf:	c4 62 79 18 94 17 b8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x1b8]
  a68de6:	01 00 00 
  a68de9:	c4 e3 59 0c e6 03    	vblendps xmm4,xmm4,xmm6,0x3
  a68def:	c5 fc 10 b4 17 90 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x190]
  a68df6:	00 00 
  a68df8:	62 41 7c 48 28 d0    	vmovaps zmm26,zmm8
  a68dfe:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a68e04:	c4 e3 59 21 a4 17 4c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a68e0b:	01 00 00 30 
  a68e0f:	c5 78 10 9c 17 20 02 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x220]
  a68e16:	00 00 
  a68e18:	c4 63 21 21 9c 17 24 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x224],0x10
  a68e1f:	02 00 00 10 
  a68e23:	c4 e3 29 0c ed 03    	vblendps xmm5,xmm10,xmm5,0x3
  a68e29:	c4 62 79 18 94 17 28 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x228]
  a68e30:	02 00 00 
  a68e33:	c4 e3 51 21 ac 17 bc 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x1bc],0x30
  a68e3a:	01 00 00 30 
  a68e3e:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a68e45:	07 
  a68e46:	c4 43 29 0c d3 03    	vblendps xmm10,xmm10,xmm11,0x3
  a68e4c:	c4 63 29 21 94 17 2c 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0x22c],0x30
  a68e53:	02 00 00 30 
  a68e57:	c5 7c 10 9c 17 00 02 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x200]
  a68e5e:	00 00 
  a68e60:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a68e66:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x230]
  a68e6d:	30 02 00 00 
  a68e71:	62 f3 7d 48 18 c3 02 	vinsertf32x4 zmm0,zmm0,xmm3,0x2
  a68e78:	c5 f8 10 9c 17 90 02 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x290]
  a68e7f:	00 00 
  a68e81:	c4 e3 61 21 9c 17 94 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x294],0x10
  a68e88:	02 00 00 10 
  a68e8c:	62 f3 75 48 18 ca 02 	vinsertf32x4 zmm1,zmm1,xmm2,0x2
  a68e93:	c5 fc 10 94 17 70 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x270]
  a68e9a:	00 00 
  a68e9c:	c4 62 79 18 ac 17 98 	vbroadcastss xmm13,DWORD PTR [rdi+rdx*1+0x298]
  a68ea3:	02 00 00 
  a68ea6:	62 f3 45 48 18 e4 02 	vinsertf32x4 zmm4,zmm7,xmm4,0x2
  a68ead:	c4 e3 11 0c db 03    	vblendps xmm3,xmm13,xmm3,0x3
  a68eb3:	c4 e3 61 21 9c 17 9c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a68eba:	02 00 00 30 
  a68ebe:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a68ec5:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a68ecb:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a68ed2:	a0 02 00 00 
  a68ed6:	c5 fc 10 b4 17 e0 02 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a68edd:	00 00 
  a68edf:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  a68ee6:	c5 f8 10 bc 17 00 03 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x300]
  a68eed:	00 00 
  a68eef:	c4 e3 41 21 bc 17 04 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x304],0x10
  a68ef6:	03 00 00 10 
  a68efa:	62 f3 6d 48 18 d3 02 	vinsertf32x4 zmm2,zmm2,xmm3,0x2
  a68f01:	c4 e2 79 18 9c 17 08 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x308]
  a68f08:	03 00 00 
  a68f0b:	c4 e3 61 0c df 03    	vblendps xmm3,xmm3,xmm7,0x3
  a68f11:	62 72 fd c9 88 e8    	vexpandpd zmm13{k1}{z},zmm0
  a68f17:	c4 e3 61 21 84 17 0c 	vinsertps xmm0,xmm3,DWORD PTR [rdi+rdx*1+0x30c],0x30
  a68f1e:	03 00 00 30 
  a68f22:	62 f3 4d 48 18 d8 02 	vinsertf32x4 zmm3,zmm6,xmm0,0x2
  a68f29:	62 72 fd c9 88 f9    	vexpandpd zmm15{k1}{z},zmm1
  a68f2f:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a68f35:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x310]
  a68f3c:	10 03 00 00 
  a68f40:	c5 fc 10 84 17 50 03 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x350]
  a68f47:	00 00 
  a68f49:	62 f2 fd c9 88 e4    	vexpandpd zmm4{k1}{z},zmm4
  a68f4f:	c5 f8 10 8c 17 70 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x370]
  a68f56:	00 00 
  a68f58:	c4 e3 71 21 8c 17 74 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x374],0x10
  a68f5f:	03 00 00 10 
  a68f63:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a68f69:	c4 e2 79 18 b4 17 78 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x378]
  a68f70:	03 00 00 
  a68f73:	c4 e3 49 0c c9 03    	vblendps xmm1,xmm6,xmm1,0x3
  a68f79:	62 52 fd c9 88 d2    	vexpandpd zmm10{k1}{z},zmm10
  a68f7f:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x37c],0x30
  a68f86:	03 00 00 30 
  a68f8a:	62 f3 7d 48 18 c9 02 	vinsertf32x4 zmm1,zmm0,xmm1,0x2
  a68f91:	62 f2 fd c9 88 c2    	vexpandpd zmm0{k1}{z},zmm2
  a68f97:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a68f9d:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x380]
  a68fa4:	0e 
  a68fa5:	c5 fc 10 94 17 c0 03 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x3c0]
  a68fac:	00 00 
  a68fae:	62 f2 fd c9 88 db    	vexpandpd zmm3{k1}{z},zmm3
  a68fb4:	c5 f8 10 b4 17 e0 03 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x3e0]
  a68fbb:	00 00 
  a68fbd:	c4 e3 49 21 b4 17 e4 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x3e4],0x10
  a68fc4:	03 00 00 10 
  a68fc8:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a68fce:	c4 62 79 18 b4 17 e8 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x3e8]
  a68fd5:	03 00 00 
  a68fd8:	c4 e3 09 0c f6 03    	vblendps xmm6,xmm14,xmm6,0x3
  a68fde:	62 e1 7c 48 28 05 98 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff62b298]        # 94280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21730>
  a68fe5:	b2 62 ff 
  a68fe8:	62 52 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm13
  a68fee:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a68ff5:	07 
  a68ff6:	c4 e3 49 21 b4 17 ec 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x3ec],0x30
  a68ffd:	03 00 00 30 
  a69001:	62 f3 6d 48 18 d6 02 	vinsertf32x4 zmm2,zmm2,xmm6,0x2
  a69008:	62 e1 7c 48 28 1d ae 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff62b2ae]        # 942c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21770>
  a6900f:	b2 62 ff 
  a69012:	62 c2 65 40 7f d5    	vpermt2ps zmm18,zmm19,zmm13
  a69018:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm18
  a6901f:	06 
  a69020:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a69026:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a6902c:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x3f0]
  a69033:	f0 03 00 00 
  a69037:	62 c2 7d 40 7f f7    	vpermt2ps zmm22,zmm16,zmm15
  a6903d:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm22
  a69044:	03 
  a69045:	c5 78 10 ac 17 50 04 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x450]
  a6904c:	00 00 
  a6904e:	c4 63 11 21 ac 17 54 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x454],0x10
  a69055:	04 00 00 10 
  a69059:	62 42 65 40 7f f7    	vpermt2ps zmm30,zmm19,zmm15
  a6905f:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm30
  a69066:	02 
  a69067:	c5 7c 10 b4 17 30 04 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x430]
  a6906e:	00 00 
  a69070:	c4 62 79 18 bc 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x458]
  a69077:	04 00 00 
  a6907a:	62 e2 7d 40 7f cc    	vpermt2ps zmm17,zmm16,zmm4
  a69080:	c4 43 01 0c ed 03    	vblendps xmm13,xmm15,xmm13,0x3
  a69086:	c4 63 11 21 ac 17 5c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x45c],0x30
  a6908d:	04 00 00 30 
  a69091:	62 62 65 40 7f e4    	vpermt2ps zmm28,zmm19,zmm4
  a69097:	62 d3 0d 48 18 e5 02 	vinsertf32x4 zmm4,zmm14,xmm13,0x2
  a6909e:	62 72 fd c9 88 ec    	vexpandpd zmm13{k1}{z},zmm4
  a690a4:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a690aa:	62 62 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm5
  a690b0:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm26
  a690b7:	01 
  a690b8:	c5 78 10 b4 17 c0 04 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x4c0]
  a690bf:	00 00 
  a690c1:	c4 63 09 21 b4 17 c4 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x4c4],0x10
  a690c8:	04 00 00 10 
  a690cc:	62 e2 65 40 7f fd    	vpermt2ps zmm23,zmm19,zmm5
  a690d2:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x460]
  a690d9:	60 04 00 00 
  a690dd:	c4 e2 79 18 ac 17 c8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x4c8]
  a690e4:	04 00 00 
  a690e7:	62 42 7d 40 7f da    	vpermt2ps zmm27,zmm16,zmm10
  a690ed:	c4 c3 51 0c ee 03    	vblendps xmm5,xmm5,xmm14,0x3
  a690f3:	c4 e3 51 21 ac 17 cc 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x4cc],0x30
  a690fa:	04 00 00 30 
  a690fe:	62 42 65 40 7f c2    	vpermt2ps zmm24,zmm19,zmm10
  a69104:	c5 7c 10 94 17 a0 04 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x4a0]
  a6910b:	00 00 
  a6910d:	62 f3 2d 48 18 ed 02 	vinsertf32x4 zmm5,zmm10,xmm5,0x2
  a69114:	62 72 fd c9 88 d5    	vexpandpd zmm10{k1}{z},zmm5
  a6911a:	62 62 7d 40 7f e8    	vpermt2ps zmm29,zmm16,zmm0
  a69120:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a69126:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x4d0]
  a6912d:	d0 04 00 00 
  a69131:	c5 fc 10 ac 17 10 05 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x510]
  a69138:	00 00 
  a6913a:	62 62 65 40 7f c8    	vpermt2ps zmm25,zmm19,zmm0
  a69140:	c5 f8 10 84 17 30 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x530]
  a69147:	00 00 
  a69149:	c4 e3 79 21 84 17 34 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x534],0x10
  a69150:	05 00 00 10 
  a69154:	62 72 7d 40 7f db    	vpermt2ps zmm11,zmm16,zmm3
  a6915a:	c4 62 79 18 b4 17 38 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x538]
  a69161:	05 00 00 
  a69164:	c4 e3 09 0c c0 03    	vblendps xmm0,xmm14,xmm0,0x3
  a6916a:	62 72 65 40 7f e3    	vpermt2ps zmm12,zmm19,zmm3
  a69170:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x53c],0x30
  a69177:	05 00 00 30 
  a6917b:	62 f3 55 48 18 c0 02 	vinsertf32x4 zmm0,zmm5,xmm0,0x2
  a69182:	62 e2 7d 40 7f e9    	vpermt2ps zmm21,zmm16,zmm1
  a69188:	62 f2 fd c9 88 d8    	vexpandpd zmm3{k1}{z},zmm0
  a6918e:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a69194:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x540]
  a6919b:	15 
  a6919c:	62 72 65 40 7f c1    	vpermt2ps zmm8,zmm19,zmm1
  a691a2:	c5 f8 10 8c 17 a0 05 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x5a0]
  a691a9:	00 00 
  a691ab:	c4 e3 71 21 8c 17 a4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x5a4],0x10
  a691b2:	05 00 00 10 
  a691b6:	62 f2 7d 40 7f f2    	vpermt2ps zmm6,zmm16,zmm2
  a691bc:	c5 7c 10 b4 17 80 05 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x580]
  a691c3:	00 00 
  a691c5:	c4 62 79 18 8c 17 a8 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x5a8]
  a691cc:	05 00 00 
  a691cf:	62 e2 65 40 7f e2    	vpermt2ps zmm20,zmm19,zmm2
  a691d5:	c4 e3 31 0c c9 03    	vblendps xmm1,xmm9,xmm1,0x3
  a691db:	c4 e3 71 21 8c 17 ac 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x5ac],0x30
  a691e2:	05 00 00 30 
  a691e6:	62 d2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm13
  a691ec:	62 f3 0d 48 18 c9 02 	vinsertf32x4 zmm1,zmm14,xmm1,0x2
  a691f3:	62 72 fd c9 88 c9    	vexpandpd zmm9{k1}{z},zmm1
  a691f9:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a691ff:	62 d2 65 40 7f fd    	vpermt2ps zmm7,zmm19,zmm13
  a69205:	c5 f8 10 8c 17 10 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x610]
  a6920c:	00 00 
  a6920e:	c4 63 71 21 ac 17 14 	vinsertps xmm13,xmm1,DWORD PTR [rdi+rdx*1+0x614],0x10
  a69215:	06 00 00 10 
  a69219:	62 42 7d 40 7f f2    	vpermt2ps zmm30,zmm16,zmm10
  a6921f:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x5b0]
  a69226:	b0 05 00 00 
  a6922a:	c4 62 79 18 b4 17 18 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x618]
  a69231:	06 00 00 
  a69234:	62 42 65 40 7f fa    	vpermt2ps zmm31,zmm19,zmm10
  a6923a:	c4 43 09 0c d5 03    	vblendps xmm10,xmm14,xmm13,0x3
  a69240:	c4 63 29 21 94 17 1c 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0x61c],0x30
  a69247:	06 00 00 30 
  a6924b:	62 f2 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm3
  a69251:	c5 7c 10 ac 17 f0 05 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x5f0]
  a69258:	00 00 
  a6925a:	62 53 15 48 18 d2 02 	vinsertf32x4 zmm10,zmm13,xmm10,0x2
  a69261:	62 52 fd c9 88 d2    	vexpandpd zmm10{k1}{z},zmm10
  a69267:	62 72 65 40 7f fb    	vpermt2ps zmm15,zmm19,zmm3
  a6926d:	c5 f8 10 9c 17 80 06 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x680]
  a69274:	00 00 
  a69276:	c4 e3 61 21 9c 17 84 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x684],0x10
  a6927d:	06 00 00 10 
  a69281:	62 d2 7d 40 7f e9    	vpermt2ps zmm5,zmm16,zmm9
  a69287:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a6928d:	c4 62 79 18 ac 17 88 	vbroadcastss xmm13,DWORD PTR [rdi+rdx*1+0x688]
  a69294:	06 00 00 
  a69297:	62 c2 65 40 7f d1    	vpermt2ps zmm18,zmm19,zmm9
  a6929d:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x620]
  a692a4:	20 06 00 00 
  a692a8:	c4 e3 11 0c db 03    	vblendps xmm3,xmm13,xmm3,0x3
  a692ae:	c5 7c 10 8c 17 60 06 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x660]
  a692b5:	00 00 
  a692b7:	62 52 7d 40 7f f2    	vpermt2ps zmm14,zmm16,zmm10
  a692bd:	c4 e3 61 21 9c 17 8c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x68c],0x30
  a692c4:	06 00 00 30 
  a692c8:	62 f3 35 48 18 db 02 	vinsertf32x4 zmm3,zmm9,xmm3,0x2
  a692cf:	62 d2 65 40 7f d2    	vpermt2ps zmm2,zmm19,zmm10
  a692d5:	62 f2 fd c9 88 db    	vexpandpd zmm3{k1}{z},zmm3
  a692db:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a692e1:	62 72 7d 40 7f d3    	vpermt2ps zmm10,zmm16,zmm3
  a692e7:	62 e2 65 40 7f f3    	vpermt2ps zmm22,zmm19,zmm3
  a692ed:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a692f3:	62 a1 44 40 58 fa    	vaddps zmm23,zmm23,zmm18
  a692f9:	62 a1 4c 48 58 c1    	vaddps zmm16,zmm6,zmm17
  a692ff:	62 b1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm17
  a69305:	62 41 7c 48 58 d2    	vaddps zmm26,zmm0,zmm10
  a6930b:	62 51 7c 48 5c d2    	vsubps zmm10,zmm0,zmm10
  a69311:	62 31 0c 48 58 cd    	vaddps zmm9,zmm14,zmm21
  a69317:	62 a1 0c 48 5c cd    	vsubps zmm17,zmm14,zmm21
  a6931d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a69324:	03 
  a69325:	62 81 7c 48 58 db    	vaddps zmm19,zmm0,zmm27
  a6932b:	62 11 7c 48 5c f3    	vsubps zmm14,zmm0,zmm27
  a69331:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a69338:	01 
  a69339:	62 f1 7c 48 58 cd    	vaddps zmm1,zmm0,zmm5
  a6933f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a69346:	0a 
  a69347:	62 61 7c 48 5c dd    	vsubps zmm27,zmm0,zmm5
  a6934d:	62 f1 24 48 58 c4    	vaddps zmm0,zmm11,zmm4
  a69353:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a6935a:	01 
  a6935b:	62 f1 24 48 5c ec    	vsubps zmm5,zmm11,zmm4
  a69361:	62 11 5c 40 58 dc    	vaddps zmm11,zmm20,zmm28
  a69367:	62 91 5c 40 5c c4    	vsubps zmm0,zmm20,zmm28
  a6936d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a69374:	05 
  a69375:	62 b1 04 48 58 c6    	vaddps zmm0,zmm15,zmm22
  a6937b:	62 21 04 48 5c e6    	vsubps zmm28,zmm15,zmm22
  a69381:	62 51 6c 48 58 f8    	vaddps zmm15,zmm2,zmm8
  a69387:	62 c1 6c 48 5c f0    	vsubps zmm22,zmm2,zmm8
  a6938d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a69394:	02 
  a69395:	62 91 6c 48 58 c8    	vaddps zmm1,zmm2,zmm24
  a6939b:	62 01 6c 48 5c c0    	vsubps zmm24,zmm2,zmm24
  a693a1:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a693a7:	62 f1 1c 48 58 e7    	vaddps zmm4,zmm12,zmm7
  a693ad:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a693b3:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a693ba:	02 
  a693bb:	62 51 34 40 58 e3    	vaddps zmm12,zmm25,zmm11
  a693c1:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  a693c7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a693ce:	04 
  a693cf:	62 f2 7d 48 18 3d 0f 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff60c30f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a693d6:	c3 60 ff 
  a693d9:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a693df:	62 12 25 48 a8 e9    	vfmadd213ps zmm13,zmm11,zmm25
  a693e5:	62 f1 1c 48 58 d0    	vaddps zmm2,zmm12,zmm0
  a693eb:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a693f2:	03 
  a693f3:	62 e2 7d 48 18 25 47 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff60c247]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a693fa:	c2 60 ff 
  a693fd:	62 42 5d 40 bc cb    	vfnmadd231ps zmm25,zmm20,zmm11
  a69403:	62 51 04 40 58 df    	vaddps zmm11,zmm31,zmm15
  a69409:	62 32 7d 48 bc ec    	vfnmadd231ps zmm13,zmm0,zmm20
  a6940f:	62 62 45 48 b8 c8    	vfmadd231ps zmm25,zmm7,zmm0
  a69415:	62 f2 7d 48 18 1d 39 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60c339]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6941c:	c3 60 ff 
  a6941f:	62 e1 2c 48 59 eb    	vmulps zmm21,zmm10,zmm3
  a69425:	62 f2 7d 48 18 15 71 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60bf71]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6942c:	bf 60 ff 
  a6942f:	62 e2 4d 48 b8 ea    	vfmadd231ps zmm21,zmm6,zmm2
  a69435:	62 e1 4c 48 59 d3    	vmulps zmm18,zmm6,zmm3
  a6943b:	62 f1 24 48 58 c1    	vaddps zmm0,zmm11,zmm1
  a69441:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a69448:	09 
  a69449:	62 c2 6d 48 bc d2    	vfnmadd231ps zmm18,zmm2,zmm10
  a6944f:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a69455:	62 12 05 48 a8 d7    	vfmadd213ps zmm10,zmm15,zmm31
  a6945b:	62 32 75 48 bc d4    	vfnmadd231ps zmm10,zmm1,zmm20
  a69461:	62 42 5d 40 bc ff    	vfnmadd231ps zmm31,zmm20,zmm15
  a69467:	62 71 0c 48 59 e3    	vmulps zmm12,zmm14,zmm3
  a6946d:	62 72 75 40 b8 e2    	vfmadd231ps zmm12,zmm17,zmm2
  a69473:	62 62 45 48 b8 f9    	vfmadd231ps zmm31,zmm7,zmm1
  a69479:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a6947f:	62 71 74 40 59 c3    	vmulps zmm8,zmm17,zmm3
  a69485:	62 52 6d 48 bc c6    	vfnmadd231ps zmm8,zmm2,zmm14
  a6948b:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x180]
  a69492:	06 
  a69493:	62 b1 04 48 58 cf    	vaddps zmm1,zmm15,zmm23
  a69499:	62 52 45 40 a8 df    	vfmadd213ps zmm11,zmm23,zmm15
  a6949f:	62 32 5d 40 bc ff    	vfnmadd231ps zmm15,zmm20,zmm23
  a694a5:	62 31 14 40 58 f0    	vaddps zmm14,zmm29,zmm16
  a694ab:	62 f1 74 48 58 c4    	vaddps zmm0,zmm1,zmm4
  a694b1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a694b8:	06 
  a694b9:	62 32 5d 48 bc dc    	vfnmadd231ps zmm11,zmm4,zmm20
  a694bf:	62 72 45 48 b8 fc    	vfmadd231ps zmm15,zmm7,zmm4
  a694c5:	62 e1 54 48 59 cb    	vmulps zmm17,zmm5,zmm3
  a694cb:	62 e2 25 40 b8 ca    	vfmadd231ps zmm17,zmm27,zmm2
  a694d1:	62 f1 24 40 59 cb    	vmulps zmm1,zmm27,zmm3
  a694d7:	62 f2 6d 48 bc cd    	vfnmadd231ps zmm1,zmm2,zmm5
  a694dd:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a694e3:	62 92 7d 40 a8 e5    	vfmadd213ps zmm4,zmm16,zmm29
  a694e9:	62 22 5d 40 bc e8    	vfnmadd231ps zmm29,zmm20,zmm16
  a694ef:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a694f5:	62 82 35 48 a8 c6    	vfmadd213ps zmm16,zmm9,zmm30
  a694fb:	62 d1 0c 40 58 f1    	vaddps zmm6,zmm30,zmm9
  a69501:	62 42 5d 40 bc f1    	vfnmadd231ps zmm30,zmm20,zmm9
  a69507:	62 91 0c 48 58 c2    	vaddps zmm0,zmm14,zmm26
  a6950d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a69514:	08 
  a69515:	62 b2 2d 40 bc e4    	vfnmadd231ps zmm4,zmm26,zmm20
  a6951b:	62 02 45 48 b8 ea    	vfmadd231ps zmm29,zmm7,zmm26
  a69521:	62 71 1c 40 59 cb    	vmulps zmm9,zmm28,zmm3
  a69527:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a6952e:	05 
  a6952f:	62 72 7d 48 b8 ca    	vfmadd231ps zmm9,zmm0,zmm2
  a69535:	62 f1 7c 48 59 eb    	vmulps zmm5,zmm0,zmm3
  a6953b:	62 92 6d 48 bc ec    	vfnmadd231ps zmm5,zmm2,zmm28
  a69541:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a69548:	07 
  a69549:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x280]
  a69550:	0a 
  a69551:	62 31 7c 48 58 f7    	vaddps zmm14,zmm0,zmm23
  a69557:	62 21 4c 48 58 d3    	vaddps zmm26,zmm6,zmm19
  a6955d:	62 a2 65 40 bc c4    	vfnmadd231ps zmm16,zmm19,zmm20
  a69563:	62 22 45 48 b8 f3    	vfmadd231ps zmm30,zmm7,zmm19
  a69569:	62 61 3c 40 59 db    	vmulps zmm27,zmm24,zmm3
  a6956f:	62 62 4d 40 b8 da    	vfmadd231ps zmm27,zmm22,zmm2
  a69575:	62 f1 4c 40 59 f3    	vmulps zmm6,zmm22,zmm3
  a6957b:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x40]
  a69582:	01 
  a69583:	62 21 0c 48 58 e3    	vaddps zmm28,zmm14,zmm19
  a69589:	62 92 6d 48 bc f0    	vfnmadd231ps zmm6,zmm2,zmm24
  a6958f:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a69595:	62 e2 45 40 a8 f0    	vfmadd213ps zmm22,zmm23,zmm0
  a6959b:	62 a2 65 40 bc f4    	vfnmadd231ps zmm22,zmm19,zmm20
  a695a1:	62 b2 5d 40 bc c7    	vfnmadd231ps zmm0,zmm20,zmm23
  a695a7:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x100]
  a695ae:	04 
  a695af:	62 61 5c 40 59 c3    	vmulps zmm24,zmm20,zmm3
  a695b5:	62 b2 45 48 b8 c3    	vfmadd231ps zmm0,zmm7,zmm19
  a695bb:	62 51 5c 48 5c f1    	vsubps zmm14,zmm4,zmm9
  a695c1:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a695c8:	02 
  a695c9:	62 62 45 48 b8 c2    	vfmadd231ps zmm24,zmm7,zmm2
  a695cf:	62 e1 44 48 59 db    	vmulps zmm19,zmm7,zmm3
  a695d5:	62 a2 6d 48 bc dc    	vfnmadd231ps zmm19,zmm2,zmm20
  a695db:	62 f1 04 48 58 d1    	vaddps zmm2,zmm15,zmm1
  a695e1:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a695e8:	0d 
  a695e9:	62 e1 04 48 5c e1    	vsubps zmm20,zmm15,zmm1
  a695ef:	62 a1 34 40 58 fa    	vaddps zmm23,zmm25,zmm18
  a695f5:	62 a1 34 40 5c d2    	vsubps zmm18,zmm25,zmm18
  a695fb:	62 41 04 40 58 c8    	vaddps zmm25,zmm31,zmm8
  a69601:	62 d1 04 40 5c d0    	vsubps zmm2,zmm31,zmm8
  a69607:	62 b1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm19
  a6960d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a69614:	04 
  a69615:	62 f1 64 40 58 d8    	vaddps zmm3,zmm19,zmm0
  a6961b:	62 f1 14 40 5c cd    	vsubps zmm1,zmm29,zmm5
  a69621:	62 91 54 48 58 ed    	vaddps zmm5,zmm5,zmm29
  a69627:	62 11 7c 40 5c fb    	vsubps zmm15,zmm16,zmm27
  a6962d:	62 d1 0c 48 5c c7    	vsubps zmm0,zmm14,zmm15
  a69633:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a6963a:	07 
  a6963b:	62 c1 0c 48 58 df    	vaddps zmm19,zmm14,zmm15
  a69641:	62 31 14 48 58 f5    	vaddps zmm14,zmm13,zmm21
  a69647:	62 51 2c 48 58 fc    	vaddps zmm15,zmm10,zmm12
  a6964d:	62 d1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm15
  a69653:	62 d1 0c 48 5c c7    	vsubps zmm0,zmm14,zmm15
  a69659:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a69660:	01 
  a69661:	62 71 0c 40 5c f6    	vsubps zmm14,zmm30,zmm6
  a69667:	62 91 4c 48 58 f6    	vaddps zmm6,zmm6,zmm30
  a6966d:	62 51 74 48 5c fe    	vsubps zmm15,zmm1,zmm14
  a69673:	62 d1 74 48 58 c6    	vaddps zmm0,zmm1,zmm14
  a69679:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a69680:	0b 
  a69681:	62 31 14 48 5c c5    	vsubps zmm8,zmm13,zmm21
  a69687:	62 51 2c 48 5c e4    	vsubps zmm12,zmm10,zmm12
  a6968d:	62 01 44 40 58 f9    	vaddps zmm31,zmm23,zmm25
  a69693:	62 91 44 40 5c c1    	vsubps zmm0,zmm23,zmm25
  a69699:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a696a0:	05 
  a696a1:	62 a1 24 48 58 f9    	vaddps zmm23,zmm11,zmm17
  a696a7:	62 21 24 48 5c c9    	vsubps zmm25,zmm11,zmm17
  a696ad:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a696b3:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0xc0]
  a696ba:	03 
  a696bb:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a696c2:	09 
  a696c3:	62 31 0c 48 58 e9    	vaddps zmm13,zmm14,zmm17
  a696c9:	62 31 24 40 58 c8    	vaddps zmm9,zmm27,zmm16
  a696cf:	62 d1 5c 48 5c c1    	vsubps zmm0,zmm4,zmm9
  a696d5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a696dc:	0c 
  a696dd:	62 d1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm9
  a696e3:	62 91 4c 40 5c c8    	vsubps zmm1,zmm22,zmm24
  a696e9:	62 a1 3c 40 58 f6    	vaddps zmm22,zmm24,zmm22
  a696ef:	62 41 3c 48 58 dc    	vaddps zmm27,zmm8,zmm12
  a696f5:	62 51 3c 48 5c e4    	vsubps zmm12,zmm8,zmm12
  a696fb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a69702:	06 
  a69703:	62 51 7c 48 58 d5    	vaddps zmm10,zmm0,zmm13
  a69709:	62 72 7d 48 18 1d 4d 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff60bd4d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a69710:	bd 60 ff 
  a69713:	62 72 25 48 ac e8    	vfnmadd213ps zmm13,zmm11,zmm0
  a69719:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a69720:	08 
  a69721:	62 11 7c 48 58 c2    	vaddps zmm8,zmm0,zmm26
  a69727:	62 01 7c 48 5c d2    	vsubps zmm26,zmm0,zmm26
  a6972d:	62 d1 1c 40 58 c0    	vaddps zmm0,zmm28,zmm8
  a69733:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a6973a:	02 
  a6973b:	62 12 25 48 ac c4    	vfnmadd213ps zmm8,zmm11,zmm28
  a69741:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a69747:	62 21 0c 48 5c e9    	vsubps zmm29,zmm14,zmm17
  a6974d:	62 22 45 48 ac e7    	vfnmadd213ps zmm28,zmm7,zmm23
  a69753:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a69759:	62 61 44 40 58 f7    	vaddps zmm30,zmm23,zmm7
  a6975f:	62 e1 6c 40 58 c2    	vaddps zmm16,zmm18,zmm2
  a69765:	62 f2 65 40 ac c1    	vfnmadd213ps zmm0,zmm19,zmm1
  a6976b:	62 b1 74 48 58 cb    	vaddps zmm1,zmm1,zmm19
  a69771:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a69778:	0a 
  a69779:	62 b1 5c 40 58 f8    	vaddps zmm7,zmm20,zmm16
  a6977f:	62 a2 25 48 ac c4    	vfnmadd213ps zmm16,zmm11,zmm20
  a69785:	62 e1 54 48 58 e6    	vaddps zmm20,zmm5,zmm6
  a6978b:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a69791:	62 21 64 48 58 c4    	vaddps zmm24,zmm3,zmm20
  a69797:	62 e2 25 48 ac e3    	vfnmadd213ps zmm20,zmm11,zmm3
  a6979d:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a697a3:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x340]
  a697aa:	0d 
  a697ab:	62 d2 05 40 ac e9    	vfnmadd213ps zmm5,zmm31,zmm9
  a697b1:	62 f1 6c 40 5c da    	vsubps zmm3,zmm18,zmm2
  a697b7:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a697bd:	62 e2 7d 48 18 15 0d 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff60bb0d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a697c4:	bb 60 ff 
  a697c7:	62 b1 04 48 59 f2    	vmulps zmm6,zmm15,zmm18
  a697cd:	62 92 25 40 ac d1    	vfnmadd213ps zmm2,zmm27,zmm25
  a697d3:	62 11 34 40 58 fb    	vaddps zmm15,zmm25,zmm27
  a697d9:	62 e1 54 48 5c ee    	vsubps zmm21,zmm5,zmm6
  a697df:	62 71 54 48 58 f6    	vaddps zmm14,zmm5,zmm6
  a697e5:	62 41 7c 48 28 cb    	vmovaps zmm25,zmm11
  a697eb:	62 22 5d 48 ac ce    	vfnmadd213ps zmm25,zmm4,zmm22
  a697f1:	62 f1 4c 40 58 e4    	vaddps zmm4,zmm22,zmm4
  a697f7:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a697fe:	03 
  a697ff:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a69805:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a6980c:	04 
  a6980d:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x2c0]
  a69814:	0b 
  a69815:	62 f2 25 48 ac e6    	vfnmadd213ps zmm4,zmm11,zmm6
  a6981b:	62 f1 6c 40 59 6c 24 	vmulps zmm5,zmm18,ZMMWORD PTR [rsp+0x140]
  a69822:	05 
  a69823:	62 e1 5c 48 58 fd    	vaddps zmm23,zmm4,zmm5
  a69829:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a6982f:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a69836:	09 
  a69837:	62 b1 2c 40 59 e2    	vmulps zmm4,zmm26,zmm18
  a6983d:	62 e1 14 48 5c f4    	vsubps zmm22,zmm13,zmm4
  a69843:	62 61 14 48 58 dc    	vaddps zmm27,zmm13,zmm4
  a69849:	62 b1 14 40 59 e2    	vmulps zmm4,zmm29,zmm18
  a6984f:	62 c1 5c 48 58 c8    	vaddps zmm17,zmm4,zmm8
  a69855:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a6985b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a69862:	05 
  a69863:	62 f1 6c 40 59 64 24 	vmulps zmm4,zmm18,ZMMWORD PTR [rsp+0x1c0]
  a6986a:	07 
  a6986b:	62 01 5c 48 58 d4    	vaddps zmm26,zmm4,zmm28
  a69871:	62 61 1c 40 5c e4    	vsubps zmm28,zmm28,zmm4
  a69877:	62 f1 6c 40 59 64 24 	vmulps zmm4,zmm18,ZMMWORD PTR [rsp+0x40]
  a6987e:	01 
  a6987f:	62 e1 7c 48 5c dc    	vsubps zmm19,zmm0,zmm4
  a69885:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a6988b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a69892:	08 
  a69893:	62 61 6c 40 59 6c 24 	vmulps zmm29,zmm18,ZMMWORD PTR [rsp+0x300]
  a6989a:	0c 
  a6989b:	62 31 1c 48 59 e2    	vmulps zmm12,zmm12,zmm18
  a698a1:	62 11 34 48 58 c7    	vaddps zmm8,zmm9,zmm31
  a698a7:	62 f1 14 40 58 c2    	vaddps zmm0,zmm29,zmm2
  a698ad:	62 b1 74 48 59 e2    	vmulps zmm4,zmm1,zmm18
  a698b3:	62 b1 64 48 59 da    	vmulps zmm3,zmm3,zmm18
  a698b9:	62 51 4c 48 58 eb    	vaddps zmm13,zmm6,zmm11
  a698bf:	62 61 7c 40 5c fc    	vsubps zmm31,zmm16,zmm4
  a698c5:	62 f1 7c 40 58 cc    	vaddps zmm1,zmm16,zmm4
  a698cb:	62 f1 5c 40 58 e3    	vaddps zmm4,zmm20,zmm3
  a698d1:	62 f1 5c 40 5c db    	vsubps zmm3,zmm20,zmm3
  a698d7:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a698de:	0d 
  a698df:	62 c1 34 40 5c e4    	vsubps zmm20,zmm25,zmm12
  a698e5:	62 91 6c 48 5c d5    	vsubps zmm2,zmm2,zmm29
  a698eb:	62 d1 34 40 58 dc    	vaddps zmm3,zmm25,zmm12
  a698f1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a698f8:	04 
  a698f9:	62 41 7c 48 28 ca    	vmovaps zmm25,zmm10
  a698ff:	62 71 7c 48 28 0d 77 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff65d677]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a69906:	d6 65 ff 
  a69909:	62 02 35 48 7f cf    	vpermt2ps zmm25,zmm9,zmm31
  a6990f:	62 f1 7c 48 28 35 a7 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff65d6a7]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a69916:	d6 65 ff 
  a69919:	62 12 4d 48 7f d7    	vpermt2ps zmm10,zmm6,zmm31
  a6991f:	62 91 7c 48 28 da    	vmovaps zmm3,zmm26
  a69925:	62 42 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm15
  a6992b:	62 d2 35 48 7f df    	vpermt2ps zmm3,zmm9,zmm15
  a69931:	62 21 7c 48 28 ed    	vmovaps zmm29,zmm21
  a69937:	62 82 4d 48 7f eb    	vpermt2ps zmm21,zmm6,zmm27
  a6993d:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a69943:	62 02 35 48 7f eb    	vpermt2ps zmm29,zmm9,zmm27
  a69949:	62 82 35 48 7f c4    	vpermt2ps zmm16,zmm9,zmm28
  a6994f:	62 92 4d 48 7f fc    	vpermt2ps zmm7,zmm6,zmm28
  a69955:	62 21 7c 48 28 fe    	vmovaps zmm31,zmm22
  a6995b:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a69961:	62 62 35 48 7f f9    	vpermt2ps zmm31,zmm9,zmm1
  a69967:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a6996d:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a69973:	62 d2 4d 48 7f c0    	vpermt2ps zmm0,zmm6,zmm8
  a69979:	62 f2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm2
  a6997f:	62 62 4d 48 7f f2    	vpermt2ps zmm30,zmm6,zmm2
  a69985:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a6998b:	62 52 35 48 7f f8    	vpermt2ps zmm15,zmm9,zmm8
  a69991:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a69995:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a6999b:	62 72 4d 48 7f f5    	vpermt2ps zmm14,zmm6,zmm5
  a699a1:	62 11 7c 48 28 e1    	vmovaps zmm12,zmm25
  a699a7:	62 71 7c 48 28 05 4f 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65d54f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a699ae:	d5 65 ff 
  a699b1:	62 52 3d 48 7f e7    	vpermt2ps zmm12,zmm8,zmm15
  a699b7:	62 71 7c 48 28 1d 7f 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff65d57f]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a699be:	d5 65 ff 
  a699c1:	62 42 25 48 7f cf    	vpermt2ps zmm25,zmm11,zmm15
  a699c7:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a699cd:	62 72 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm2
  a699d3:	62 e2 25 48 7f c2    	vpermt2ps zmm16,zmm11,zmm2
  a699d9:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a699df:	62 62 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm0
  a699e5:	62 72 25 48 7f d0    	vpermt2ps zmm10,zmm11,zmm0
  a699eb:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a699f1:	62 22 3d 48 7f de    	vpermt2ps zmm27,zmm8,zmm22
  a699f7:	62 22 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm22
  a699fd:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a69a03:	62 92 3d 48 7f d6    	vpermt2ps zmm2,zmm8,zmm30
  a69a09:	62 82 25 48 7f ee    	vpermt2ps zmm21,zmm11,zmm30
  a69a0f:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a69a15:	62 92 25 48 7f df    	vpermt2ps zmm3,zmm11,zmm31
  a69a1b:	62 92 3d 48 7f c7    	vpermt2ps zmm0,zmm8,zmm31
  a69a21:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a69a27:	62 b1 ad 48 14 ed    	vunpcklpd zmm5,zmm10,zmm21
  a69a2d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm5
  a69a34:	07 
  a69a35:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a69a3b:	62 62 25 48 7f e9    	vpermt2ps zmm29,zmm11,zmm1
  a69a41:	62 42 3d 48 7f fe    	vpermt2ps zmm31,zmm8,zmm14
  a69a47:	62 d2 25 48 7f fe    	vpermt2ps zmm7,zmm11,zmm14
  a69a4d:	62 f1 ad 40 14 ef    	vunpcklpd zmm5,zmm26,zmm7
  a69a53:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a69a5a:	0c 
  a69a5b:	62 62 3d 48 7f f1    	vpermt2ps zmm30,zmm8,zmm1
  a69a61:	62 91 b5 40 14 cd    	vunpcklpd zmm1,zmm25,zmm29
  a69a67:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a69a6e:	06 
  a69a6f:	62 91 b5 40 15 cd    	vunpckhpd zmm1,zmm25,zmm29
  a69a75:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a69a7c:	01 
  a69a7d:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a69a84:	02 
  a69a85:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a69a8b:	62 a1 e5 48 14 e8    	vunpcklpd zmm21,zmm3,zmm16
  a69a91:	62 e2 35 48 7f f4    	vpermt2ps zmm22,zmm9,zmm4
  a69a97:	62 f2 4d 48 7f ec    	vpermt2ps zmm5,zmm6,zmm4
  a69a9d:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a69aa3:	62 b1 e5 48 15 c8    	vunpckhpd zmm1,zmm3,zmm16
  a69aa9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a69ab0:	0b 
  a69ab1:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a69ab8:	03 
  a69ab9:	62 e2 35 48 7f d1    	vpermt2ps zmm18,zmm9,zmm1
  a69abf:	62 e2 4d 48 7f d9    	vpermt2ps zmm19,zmm6,zmm1
  a69ac5:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a69acb:	62 f1 9d 40 14 ca    	vunpcklpd zmm1,zmm28,zmm2
  a69ad1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a69ad8:	03 
  a69ad9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a69ae0:	05 
  a69ae1:	62 f2 35 48 7f e1    	vpermt2ps zmm4,zmm9,zmm1
  a69ae7:	62 e2 4d 48 7f f9    	vpermt2ps zmm23,zmm6,zmm1
  a69aed:	62 81 7c 48 28 c0    	vmovaps zmm16,zmm24
  a69af3:	62 f1 9d 40 15 ca    	vunpckhpd zmm1,zmm28,zmm2
  a69af9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a69b00:	02 
  a69b01:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a69b08:	08 
  a69b09:	62 e2 35 48 7f c1    	vpermt2ps zmm16,zmm9,zmm1
  a69b0f:	62 62 4d 48 7f c1    	vpermt2ps zmm24,zmm6,zmm1
  a69b15:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a69b1b:	62 01 a5 40 14 d7    	vunpcklpd zmm26,zmm27,zmm31
  a69b21:	62 d2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm13
  a69b27:	62 c2 4d 48 7f e5    	vpermt2ps zmm20,zmm6,zmm13
  a69b2d:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a69b33:	62 01 a5 40 15 df    	vunpckhpd zmm27,zmm27,zmm31
  a69b39:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a69b40:	0d 
  a69b41:	62 72 35 48 7f d1    	vpermt2ps zmm10,zmm9,zmm1
  a69b47:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a69b4d:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x280]
  a69b54:	0a 
  a69b55:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a69b5b:	62 01 9d 48 14 ce    	vunpcklpd zmm25,zmm12,zmm30
  a69b61:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a69b68:	04 
  a69b69:	62 72 35 48 7f eb    	vpermt2ps zmm13,zmm9,zmm3
  a69b6f:	62 f2 4d 48 7f fb    	vpermt2ps zmm7,zmm6,zmm3
  a69b75:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a69b7c:	09 
  a69b7d:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a69b83:	62 01 9d 48 15 ee    	vunpckhpd zmm29,zmm12,zmm30
  a69b89:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a69b8d:	62 72 35 48 7f f3    	vpermt2ps zmm14,zmm9,zmm3
  a69b93:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a69b99:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a69b9f:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  a69ba5:	62 d1 fd 48 14 f7    	vunpcklpd zmm6,zmm0,zmm15
  a69bab:	62 62 3d 48 7f e2    	vpermt2ps zmm28,zmm8,zmm2
  a69bb1:	62 e2 25 48 7f f2    	vpermt2ps zmm22,zmm11,zmm2
  a69bb7:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a69bbd:	62 51 fd 48 15 e7    	vunpckhpd zmm12,zmm0,zmm15
  a69bc3:	62 d2 3d 48 7f d2    	vpermt2ps zmm2,zmm8,zmm10
  a69bc9:	62 c2 25 48 7f d2    	vpermt2ps zmm18,zmm11,zmm10
  a69bcf:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a69bd5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a69bdc:	07 
  a69bdd:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a69be3:	62 52 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm13
  a69be9:	62 d2 25 48 7f e5    	vpermt2ps zmm4,zmm11,zmm13
  a69bef:	62 31 7c 48 28 e8    	vmovaps zmm13,zmm16
  a69bf5:	62 f1 7c 48 28 0d 41 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff65d241]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a69bfc:	d2 65 ff 
  a69bff:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x300]
  a69c06:	0c 
  a69c07:	62 f2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm3
  a69c0d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a69c14:	07 
  a69c15:	62 52 3d 48 7f ee    	vpermt2ps zmm13,zmm8,zmm14
  a69c1b:	62 c2 25 48 7f c6    	vpermt2ps zmm16,zmm11,zmm14
  a69c21:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a69c27:	62 f1 7c 48 28 05 cf 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65d1cf]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a69c2e:	d1 65 ff 
  a69c31:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a69c37:	62 32 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm20
  a69c3d:	62 b2 25 48 7f ec    	vpermt2ps zmm5,zmm11,zmm20
  a69c43:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a69c49:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a69c50:	06 
  a69c51:	62 61 7c 48 28 fb    	vmovaps zmm31,zmm3
  a69c57:	62 a2 3d 48 7f e1    	vpermt2ps zmm20,zmm8,zmm17
  a69c5d:	62 a2 25 48 7f d9    	vpermt2ps zmm19,zmm11,zmm17
  a69c63:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a69c69:	62 b2 75 48 7f dd    	vpermt2ps zmm3,zmm1,zmm21
  a69c6f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a69c76:	06 
  a69c77:	62 e2 3d 48 7f cf    	vpermt2ps zmm17,zmm8,zmm7
  a69c7d:	62 e2 25 48 7f ff    	vpermt2ps zmm23,zmm11,zmm7
  a69c83:	62 b1 d5 48 14 ef    	vunpcklpd zmm5,zmm5,zmm23
  a69c89:	62 81 7c 48 28 f9    	vmovaps zmm23,zmm25
  a69c8f:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a69c95:	62 12 3d 48 7f ce    	vpermt2ps zmm9,zmm8,zmm30
  a69c9b:	62 02 25 48 7f c6    	vpermt2ps zmm24,zmm11,zmm30
  a69ca1:	62 62 75 48 7f ce    	vpermt2ps zmm25,zmm1,zmm6
  a69ca7:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm25
  a69cae:	0a 
  a69caf:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a69cb6:	01 
  a69cb7:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a69cbd:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x2c0]
  a69cc4:	0b 
  a69cc5:	62 f2 75 48 7f df    	vpermt2ps zmm3,zmm1,zmm7
  a69ccb:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a69cd2:	01 
  a69cd3:	62 91 e5 40 14 d8    	vunpcklpd zmm3,zmm19,zmm24
  a69cd9:	62 22 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm21
  a69cdf:	62 41 9d 40 14 c7    	vunpcklpd zmm24,zmm28,zmm15
  a69ce5:	62 41 9d 40 15 cf    	vunpckhpd zmm25,zmm28,zmm15
  a69ceb:	62 51 ed 48 14 fd    	vunpcklpd zmm15,zmm2,zmm13
  a69cf1:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a69cf7:	62 41 ed 48 15 e5    	vunpckhpd zmm28,zmm2,zmm13
  a69cfd:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a69d04:	03 
  a69d05:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a69d0b:	62 92 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm26
  a69d11:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a69d18:	03 
  a69d19:	62 62 7d 48 7f f7    	vpermt2ps zmm30,zmm0,zmm7
  a69d1f:	62 71 cd 40 14 dc    	vunpcklpd zmm11,zmm22,zmm4
  a69d25:	62 e1 cd 40 15 f4    	vunpckhpd zmm22,zmm22,zmm4
  a69d2b:	62 b1 ed 40 14 d0    	vunpcklpd zmm2,zmm18,zmm16
  a69d31:	62 42 75 48 7f ec    	vpermt2ps zmm29,zmm1,zmm12
  a69d37:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm29
  a69d3e:	05 
  a69d3f:	62 a1 ed 40 15 d0    	vunpckhpd zmm18,zmm18,zmm16
  a69d45:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a69d4c:	02 
  a69d4d:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a69d53:	62 92 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm27
  a69d59:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a69d60:	02 
  a69d61:	62 82 7d 48 7f da    	vpermt2ps zmm19,zmm0,zmm26
  a69d67:	62 21 8d 48 14 e9    	vunpcklpd zmm29,zmm14,zmm17
  a69d6d:	62 31 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm17
  a69d73:	62 d1 dd 40 14 f9    	vunpcklpd zmm7,zmm20,zmm9
  a69d79:	62 82 7d 48 7f c3    	vpermt2ps zmm16,zmm0,zmm27
  a69d7f:	62 51 dd 40 15 c1    	vunpckhpd zmm8,zmm20,zmm9
  a69d85:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a69d8b:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a69d91:	62 52 75 48 7f cf    	vpermt2ps zmm9,zmm1,zmm15
  a69d97:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a69d9e:	09 
  a69d9f:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a69da5:	62 72 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm2
  a69dab:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a69db1:	62 32 7d 48 7f ea    	vpermt2ps zmm13,zmm0,zmm18
  a69db7:	62 a2 75 48 7f f2    	vpermt2ps zmm22,zmm1,zmm18
  a69dbd:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a69dc3:	62 02 75 48 7f cc    	vpermt2ps zmm25,zmm1,zmm28
  a69dc9:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a69dcf:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a69dd5:	62 f2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm7
  a69ddb:	62 62 75 48 7f ef    	vpermt2ps zmm29,zmm1,zmm7
  a69de1:	62 c2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm12
  a69de7:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a69ded:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a69df3:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a69df9:	62 52 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm8
  a69dff:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a69e05:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a69e0b:	62 f2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm3
  a69e11:	62 f2 75 48 7f f3    	vpermt2ps zmm6,zmm1,zmm3
  a69e17:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm6
  a69e1e:	08 
  a69e1f:	62 82 7d 48 7f cc    	vpermt2ps zmm17,zmm0,zmm28
  a69e25:	62 f1 7c 48 10 41 02 	vmovups zmm0,ZMMWORD PTR [rcx+0x80]
  a69e2c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a69e33:	04 
  a69e34:	62 f1 7c 48 10 49 18 	vmovups zmm1,ZMMWORD PTR [rcx+0x600]
  a69e3b:	62 f1 7c 48 10 59 19 	vmovups zmm3,ZMMWORD PTR [rcx+0x640]
  a69e42:	62 e1 2c 48 59 e9    	vmulps zmm21,zmm10,zmm1
  a69e48:	62 e2 55 48 bc eb    	vfnmadd231ps zmm21,zmm5,zmm3
  a69e4e:	62 71 54 48 59 e1    	vmulps zmm12,zmm5,zmm1
  a69e54:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a69e5b:	62 52 65 48 b8 e2    	vfmadd231ps zmm12,zmm3,zmm10
  a69e61:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a69e68:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a69e6f:	01 
  a69e70:	62 61 64 48 59 d0    	vmulps zmm26,zmm3,zmm0
  a69e76:	62 61 4c 40 59 d8    	vmulps zmm27,zmm22,zmm0
  a69e7c:	62 62 4d 40 bc d1    	vfnmadd231ps zmm26,zmm22,zmm1
  a69e82:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a69e89:	62 62 75 48 b8 db    	vfmadd231ps zmm27,zmm1,zmm3
  a69e8f:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a69e96:	62 71 04 40 59 c8    	vmulps zmm9,zmm31,zmm0
  a69e9c:	62 72 5d 48 bc c9    	vfnmadd231ps zmm9,zmm4,zmm1
  a69ea2:	62 61 5c 48 59 e0    	vmulps zmm28,zmm4,zmm0
  a69ea8:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a69eaf:	62 02 75 48 b8 e7    	vfmadd231ps zmm28,zmm1,zmm31
  a69eb5:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a69ebc:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a69ec3:	03 
  a69ec4:	62 61 64 48 59 f8    	vmulps zmm31,zmm3,zmm0
  a69eca:	62 f1 14 40 59 e8    	vmulps zmm5,zmm29,zmm0
  a69ed0:	62 62 15 40 bc f9    	vfnmadd231ps zmm31,zmm29,zmm1
  a69ed6:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a69edd:	62 f2 75 48 b8 eb    	vfmadd231ps zmm5,zmm1,zmm3
  a69ee3:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a69eea:	62 f1 7c 40 59 f0    	vmulps zmm6,zmm16,zmm0
  a69ef0:	62 f2 45 48 bc f1    	vfnmadd231ps zmm6,zmm7,zmm1
  a69ef6:	62 71 44 48 59 f8    	vmulps zmm15,zmm7,zmm0
  a69efc:	62 f1 7c 48 10 41 0a 	vmovups zmm0,ZMMWORD PTR [rcx+0x280]
  a69f03:	62 32 75 48 b8 f8    	vfmadd231ps zmm15,zmm1,zmm16
  a69f09:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a69f10:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a69f17:	06 
  a69f18:	62 71 64 48 59 c0    	vmulps zmm8,zmm3,zmm0
  a69f1e:	62 f1 24 48 59 f8    	vmulps zmm7,zmm11,zmm0
  a69f24:	62 72 25 48 bc c1    	vfnmadd231ps zmm8,zmm11,zmm1
  a69f2a:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a69f31:	62 f2 75 48 b8 fb    	vfmadd231ps zmm7,zmm1,zmm3
  a69f37:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a69f3e:	62 e1 0c 40 59 c0    	vmulps zmm16,zmm30,zmm0
  a69f44:	62 e2 15 48 bc c1    	vfnmadd231ps zmm16,zmm13,zmm1
  a69f4a:	62 71 14 48 59 d8    	vmulps zmm11,zmm13,zmm0
  a69f50:	62 f1 7c 48 10 41 16 	vmovups zmm0,ZMMWORD PTR [rcx+0x580]
  a69f57:	62 12 75 48 b8 de    	vfmadd231ps zmm11,zmm1,zmm30
  a69f5d:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a69f64:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a69f6b:	02 
  a69f6c:	62 61 5c 48 59 f0    	vmulps zmm30,zmm4,zmm0
  a69f72:	62 f1 0c 48 59 c8    	vmulps zmm1,zmm14,zmm0
  a69f78:	62 62 0d 48 bc f3    	vfnmadd231ps zmm30,zmm14,zmm3
  a69f7e:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a69f85:	62 f2 65 48 b8 cc    	vfmadd231ps zmm1,zmm3,zmm4
  a69f8b:	62 71 7c 48 10 69 11 	vmovups zmm13,ZMMWORD PTR [rcx+0x440]
  a69f92:	62 f1 64 40 59 e0    	vmulps zmm4,zmm19,zmm0
  a69f98:	62 d2 6d 48 bc e5    	vfnmadd231ps zmm4,zmm2,zmm13
  a69f9e:	62 71 6c 48 59 f0    	vmulps zmm14,zmm2,zmm0
  a69fa4:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a69fab:	62 32 15 48 b8 f3    	vfmadd231ps zmm14,zmm13,zmm19
  a69fb1:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a69fb8:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x140]
  a69fbf:	05 
  a69fc0:	62 e1 2c 48 59 d8    	vmulps zmm19,zmm10,zmm0
  a69fc6:	62 f1 34 40 59 c0    	vmulps zmm0,zmm25,zmm0
  a69fcc:	62 e2 35 40 bc da    	vfnmadd231ps zmm19,zmm25,zmm2
  a69fd2:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a69fd9:	62 d2 6d 48 b8 c2    	vfmadd231ps zmm0,zmm2,zmm10
  a69fdf:	62 f1 7c 48 10 51 05 	vmovups zmm2,ZMMWORD PTR [rcx+0x140]
  a69fe6:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a69fec:	62 e1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm3
  a69ff2:	62 e2 75 40 bc d2    	vfnmadd231ps zmm18,zmm17,zmm2
  a69ff8:	62 e1 74 40 59 e3    	vmulps zmm20,zmm17,zmm3
  a69ffe:	62 71 7c 48 10 69 1a 	vmovups zmm13,ZMMWORD PTR [rcx+0x680]
  a6a005:	62 c2 6d 48 b8 e2    	vfmadd231ps zmm20,zmm2,zmm10
  a6a00b:	62 f1 7c 48 10 51 1b 	vmovups zmm2,ZMMWORD PTR [rcx+0x6c0]
  a6a012:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x1c0]
  a6a019:	07 
  a6a01a:	62 d1 2c 48 59 dd    	vmulps zmm3,zmm10,zmm13
  a6a020:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x200]
  a6a027:	08 
  a6a028:	62 41 74 40 59 ed    	vmulps zmm29,zmm17,zmm13
  a6a02e:	62 f2 75 40 bc da    	vfnmadd231ps zmm3,zmm17,zmm2
  a6a034:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a6a03b:	62 42 6d 48 b8 ea    	vfmadd231ps zmm29,zmm2,zmm10
  a6a041:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x280]
  a6a048:	0a 
  a6a049:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x100]
  a6a050:	04 
  a6a051:	62 91 74 40 59 d1    	vmulps zmm2,zmm17,zmm25
  a6a057:	62 e1 34 48 58 f6    	vaddps zmm22,zmm9,zmm6
  a6a05d:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x240]
  a6a064:	09 
  a6a065:	62 d2 2d 48 bc d5    	vfnmadd231ps zmm2,zmm10,zmm13
  a6a06b:	62 11 2c 48 59 d1    	vmulps zmm10,zmm10,zmm25
  a6a071:	62 32 15 48 b8 d1    	vfmadd231ps zmm10,zmm13,zmm17
  a6a077:	62 71 7c 40 58 ec    	vaddps zmm13,zmm16,zmm4
  a6a07d:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm13
  a6a084:	01 
  a6a085:	62 51 04 40 58 e8    	vaddps zmm13,zmm31,zmm8
  a6a08b:	62 c1 24 48 58 ce    	vaddps zmm17,zmm11,zmm14
  a6a091:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm17
  a6a098:	02 
  a6a099:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a6a09f:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a6a0a6:	03 
  a6a0a7:	62 51 5c 40 58 dc    	vaddps zmm11,zmm20,zmm12
  a6a0ad:	62 41 5c 40 5c cc    	vsubps zmm25,zmm20,zmm12
  a6a0b3:	62 51 1c 40 58 f7    	vaddps zmm14,zmm28,zmm15
  a6a0b9:	62 41 1c 40 5c e7    	vsubps zmm28,zmm28,zmm15
  a6a0bf:	62 51 14 40 58 e2    	vaddps zmm12,zmm29,zmm10
  a6a0c5:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm12
  a6a0cc:	07 
  a6a0cd:	62 51 14 40 5c d2    	vsubps zmm10,zmm29,zmm10
  a6a0d3:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm10
  a6a0da:	0d 
  a6a0db:	62 71 54 48 58 e7    	vaddps zmm12,zmm5,zmm7
  a6a0e1:	62 f1 54 48 5c ff    	vsubps zmm7,zmm5,zmm7
  a6a0e7:	62 f1 74 48 58 e8    	vaddps zmm5,zmm1,zmm0
  a6a0ed:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm5
  a6a0f4:	06 
  a6a0f5:	62 61 74 48 5c e8    	vsubps zmm29,zmm1,zmm0
  a6a0fb:	62 b1 0c 40 58 c3    	vaddps zmm0,zmm30,zmm19
  a6a101:	62 f1 7c 40 5c cc    	vsubps zmm1,zmm16,zmm4
  a6a107:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a6a10e:	09 
  a6a10f:	62 b1 6c 40 58 cd    	vaddps zmm1,zmm18,zmm21
  a6a115:	62 b1 6c 40 5c e5    	vsubps zmm4,zmm18,zmm21
  a6a11b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a6a122:	04 
  a6a123:	62 f1 64 48 58 e2    	vaddps zmm4,zmm3,zmm2
  a6a129:	62 f1 34 48 5c ee    	vsubps zmm5,zmm9,zmm6
  a6a12f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a6a136:	08 
  a6a137:	62 d1 2c 40 58 ed    	vaddps zmm5,zmm26,zmm13
  a6a13d:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a6a143:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a6a14a:	0a 
  a6a14b:	62 e2 7d 48 18 25 9f 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff60b49f]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a6a152:	b4 60 ff 
  a6a155:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a6a15b:	62 d1 04 40 5c d0    	vsubps zmm2,zmm31,zmm8
  a6a161:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a6a168:	05 
  a6a169:	62 f1 44 40 58 d1    	vaddps zmm2,zmm23,zmm1
  a6a16f:	62 a2 75 48 a8 ef    	vfmadd213ps zmm21,zmm1,zmm23
  a6a175:	62 21 0c 40 5c fb    	vsubps zmm31,zmm30,zmm19
  a6a17b:	62 e2 7d 48 18 0d 47 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff60b147]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a6a182:	b1 60 ff 
  a6a185:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a6a18b:	62 b1 6c 48 58 f6    	vaddps zmm6,zmm2,zmm22
  a6a191:	62 a2 75 48 ac df    	vfnmadd213ps zmm19,zmm1,zmm23
  a6a197:	62 72 7d 48 18 3d 37 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff60b437]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a6a19e:	b4 60 ff 
  a6a1a1:	62 e2 05 48 bc f9    	vfnmadd231ps zmm23,zmm15,zmm1
  a6a1a7:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a6a1ad:	62 a2 4d 40 bc e9    	vfnmadd231ps zmm21,zmm22,zmm17
  a6a1b3:	62 c2 4d 40 bc df    	vfnmadd231ps zmm19,zmm22,zmm15
  a6a1b9:	62 a2 5d 40 b8 fe    	vfmadd231ps zmm23,zmm20,zmm22
  a6a1bf:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a6a1c5:	62 02 15 48 a8 f2    	vfmadd213ps zmm30,zmm13,zmm26
  a6a1cb:	62 92 15 48 ac d2    	vfnmadd213ps zmm2,zmm13,zmm26
  a6a1d1:	62 42 05 48 bc d5    	vfnmadd231ps zmm26,zmm15,zmm13
  a6a1d7:	62 e2 7d 48 18 05 af 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff60b2af]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a6a1de:	b2 60 ff 
  a6a1e1:	62 a1 1c 40 59 d0    	vmulps zmm18,zmm28,zmm16
  a6a1e7:	62 72 7d 48 18 15 6f 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff60b46f]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a6a1ee:	b4 60 ff 
  a6a1f1:	62 c2 35 40 b8 d2    	vfmadd231ps zmm18,zmm25,zmm10
  a6a1f7:	62 a1 34 40 59 f0    	vmulps zmm22,zmm25,zmm16
  a6a1fd:	62 f2 7d 48 18 1d e1 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60b3e1]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a6a204:	b3 60 ff 
  a6a207:	62 e2 1d 40 bc f3    	vfnmadd231ps zmm22,zmm28,zmm3
  a6a20d:	62 61 34 40 59 cb    	vmulps zmm25,zmm25,zmm3
  a6a213:	62 02 2d 48 bc cc    	vfnmadd231ps zmm25,zmm10,zmm28
  a6a219:	62 f1 54 48 58 c8    	vaddps zmm1,zmm5,zmm0
  a6a21f:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a6a225:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a6a22c:	0c 
  a6a22d:	62 22 7d 48 bc f1    	vfnmadd231ps zmm30,zmm0,zmm17
  a6a233:	62 42 5d 48 bc f7    	vfnmadd231ps zmm30,zmm4,zmm15
  a6a239:	62 d2 7d 48 bc d7    	vfnmadd231ps zmm2,zmm0,zmm15
  a6a23f:	62 62 5d 40 b8 d0    	vfmadd231ps zmm26,zmm20,zmm0
  a6a245:	62 b1 14 40 59 c8    	vmulps zmm1,zmm29,zmm16
  a6a24b:	62 b2 5d 48 b8 d4    	vfmadd231ps zmm2,zmm4,zmm20
  a6a251:	62 62 75 40 bc d4    	vfnmadd231ps zmm26,zmm17,zmm4
  a6a257:	62 21 44 48 59 e0    	vmulps zmm28,zmm7,zmm16
  a6a25d:	62 62 15 40 bc e3    	vfnmadd231ps zmm28,zmm29,zmm3
  a6a263:	62 d2 45 48 b8 ca    	vfmadd231ps zmm1,zmm7,zmm10
  a6a269:	62 f1 44 48 59 c3    	vmulps zmm0,zmm7,zmm3
  a6a26f:	62 92 2d 48 bc c5    	vfnmadd231ps zmm0,zmm10,zmm29
  a6a275:	62 91 24 48 58 e0    	vaddps zmm4,zmm11,zmm24
  a6a27b:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a6a282:	01 
  a6a283:	62 f1 4c 48 58 f5    	vaddps zmm6,zmm6,zmm5
  a6a289:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a6a290:	0b 
  a6a291:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x340]
  a6a298:	0d 
  a6a299:	62 f2 4d 48 b8 cb    	vfmadd231ps zmm1,zmm6,zmm3
  a6a29f:	62 42 4d 48 bc e2    	vfnmadd231ps zmm28,zmm6,zmm10
  a6a2a5:	62 f2 7d 40 b8 c6    	vfmadd231ps zmm0,zmm16,zmm6
  a6a2ab:	62 c2 55 48 bc ef    	vfnmadd231ps zmm21,zmm5,zmm15
  a6a2b1:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a6a2b7:	62 92 25 48 a8 f0    	vfmadd213ps zmm6,zmm11,zmm24
  a6a2bd:	62 a2 55 48 b8 dc    	vfmadd231ps zmm19,zmm5,zmm20
  a6a2c3:	62 e2 75 40 bc fd    	vfnmadd231ps zmm23,zmm17,zmm5
  a6a2c9:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a6a2cf:	62 92 25 48 ac e8    	vfnmadd213ps zmm5,zmm11,zmm24
  a6a2d5:	62 42 05 48 bc c3    	vfnmadd231ps zmm24,zmm15,zmm11
  a6a2db:	62 f1 0c 48 58 e4    	vaddps zmm4,zmm14,zmm4
  a6a2e1:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a6a2e8:	02 
  a6a2e9:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a6a2ef:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a6a2f6:	01 
  a6a2f7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a6a2fe:	03 
  a6a2ff:	62 e2 5d 48 b8 d3    	vfmadd231ps zmm18,zmm4,zmm3
  a6a305:	62 c2 5d 48 bc f2    	vfnmadd231ps zmm22,zmm4,zmm10
  a6a30b:	62 62 7d 40 b8 cc    	vfmadd231ps zmm25,zmm16,zmm4
  a6a311:	62 51 24 40 58 c4    	vaddps zmm8,zmm27,zmm12
  a6a317:	62 b2 0d 48 bc f1    	vfnmadd231ps zmm6,zmm14,zmm17
  a6a31d:	62 d2 0d 48 bc ef    	vfnmadd231ps zmm5,zmm14,zmm15
  a6a323:	62 d2 35 48 bc f7    	vfnmadd231ps zmm6,zmm9,zmm15
  a6a329:	62 42 5d 40 b8 c6    	vfmadd231ps zmm24,zmm20,zmm14
  a6a32f:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  a6a336:	08 
  a6a337:	62 b1 5c 48 59 f8    	vmulps zmm7,zmm4,zmm16
  a6a33d:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a6a344:	04 
  a6a345:	62 d2 25 48 b8 fa    	vfmadd231ps zmm7,zmm11,zmm10
  a6a34b:	62 b2 35 48 b8 ec    	vfmadd231ps zmm5,zmm9,zmm20
  a6a351:	62 42 75 40 bc c1    	vfnmadd231ps zmm24,zmm17,zmm9
  a6a357:	62 31 24 48 59 c8    	vmulps zmm9,zmm11,zmm16
  a6a35d:	62 71 24 48 59 db    	vmulps zmm11,zmm11,zmm3
  a6a363:	62 72 5d 48 bc cb    	vfnmadd231ps zmm9,zmm4,zmm3
  a6a369:	62 72 2d 48 bc dc    	vfnmadd231ps zmm11,zmm10,zmm4
  a6a36f:	62 31 7c 48 28 ec    	vmovaps zmm13,zmm20
  a6a375:	62 12 1d 48 a8 eb    	vfmadd213ps zmm13,zmm12,zmm27
  a6a37b:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x240]
  a6a382:	09 
  a6a383:	62 f2 5d 48 b8 fb    	vfmadd231ps zmm7,zmm4,zmm3
  a6a389:	62 52 5d 48 bc ca    	vfnmadd231ps zmm9,zmm4,zmm10
  a6a38f:	62 72 7d 40 b8 dc    	vfmadd231ps zmm11,zmm16,zmm4
  a6a395:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a6a39b:	62 12 1d 48 ac f3    	vfnmadd213ps zmm14,zmm12,zmm27
  a6a3a1:	62 42 05 48 bc dc    	vfnmadd231ps zmm27,zmm15,zmm12
  a6a3a7:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x180]
  a6a3ae:	06 
  a6a3af:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a6a3b5:	62 32 1d 48 bc e9    	vfnmadd231ps zmm13,zmm12,zmm17
  a6a3bb:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a6a3c2:	07 
  a6a3c3:	62 71 3c 48 58 c4    	vaddps zmm8,zmm8,zmm4
  a6a3c9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a6a3d0:	02 
  a6a3d1:	62 52 1d 48 bc f7    	vfnmadd231ps zmm14,zmm12,zmm15
  a6a3d7:	62 42 5d 40 b8 dc    	vfmadd231ps zmm27,zmm20,zmm12
  a6a3dd:	62 31 04 40 59 e0    	vmulps zmm12,zmm31,zmm16
  a6a3e3:	62 52 5d 48 bc ef    	vfnmadd231ps zmm13,zmm4,zmm15
  a6a3e9:	62 32 5d 48 b8 f4    	vfmadd231ps zmm14,zmm4,zmm20
  a6a3ef:	62 62 75 40 bc dc    	vfnmadd231ps zmm27,zmm17,zmm4
  a6a3f5:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a6a3fc:	05 
  a6a3fd:	62 31 5c 48 59 f8    	vmulps zmm15,zmm4,zmm16
  a6a403:	62 52 5d 48 b8 e2    	vfmadd231ps zmm12,zmm4,zmm10
  a6a409:	62 72 05 40 bc fb    	vfnmadd231ps zmm15,zmm31,zmm3
  a6a40f:	62 e1 5c 48 59 cb    	vmulps zmm17,zmm4,zmm3
  a6a415:	62 82 2d 48 bc cf    	vfnmadd231ps zmm17,zmm10,zmm31
  a6a41b:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a6a422:	0a 
  a6a423:	62 72 5d 48 b8 e3    	vfmadd231ps zmm12,zmm4,zmm3
  a6a429:	62 52 5d 48 bc fa    	vfnmadd231ps zmm15,zmm4,zmm10
  a6a42f:	62 e2 7d 40 b8 cc    	vfmadd231ps zmm17,zmm16,zmm4
  a6a435:	62 81 44 40 58 c1    	vaddps zmm16,zmm23,zmm25
  a6a43b:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a6a441:	62 61 2c 40 58 c8    	vaddps zmm25,zmm26,zmm0
  a6a447:	62 f1 2c 40 5c e0    	vsubps zmm4,zmm26,zmm0
  a6a44d:	62 41 3c 40 5c d3    	vsubps zmm26,zmm24,zmm11
  a6a453:	62 01 24 48 58 c0    	vaddps zmm24,zmm11,zmm24
  a6a459:	62 21 24 40 5c e9    	vsubps zmm29,zmm27,zmm17
  a6a45f:	62 21 24 40 58 d9    	vaddps zmm27,zmm27,zmm17
  a6a465:	62 31 64 40 58 de    	vaddps zmm11,zmm19,zmm22
  a6a46b:	62 31 64 40 5c c6    	vsubps zmm8,zmm19,zmm22
  a6a471:	62 81 6c 48 58 cc    	vaddps zmm17,zmm2,zmm28
  a6a477:	62 91 6c 48 5c d4    	vsubps zmm2,zmm2,zmm28
  a6a47d:	62 c1 54 48 5c e1    	vsubps zmm20,zmm5,zmm9
  a6a483:	62 f1 34 48 58 ed    	vaddps zmm5,zmm9,zmm5
  a6a489:	62 51 0c 48 5c cf    	vsubps zmm9,zmm14,zmm15
  a6a48f:	62 41 0c 48 58 e7    	vaddps zmm28,zmm14,zmm15
  a6a495:	62 31 54 40 58 f2    	vaddps zmm14,zmm21,zmm18
  a6a49b:	62 21 54 40 5c fa    	vsubps zmm31,zmm21,zmm18
  a6a4a1:	62 f1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm1
  a6a4a7:	62 61 0c 40 5c f1    	vsubps zmm30,zmm30,zmm1
  a6a4ad:	62 f1 4c 48 5c cf    	vsubps zmm1,zmm6,zmm7
  a6a4b3:	62 e1 44 48 58 ee    	vaddps zmm21,zmm7,zmm6
  a6a4b9:	62 d1 14 48 5c f4    	vsubps zmm6,zmm13,zmm12
  a6a4bf:	62 d1 14 48 58 fc    	vaddps zmm7,zmm13,zmm12
  a6a4c5:	62 71 0c 48 5c d3    	vsubps zmm10,zmm14,zmm3
  a6a4cb:	62 71 0c 48 58 eb    	vaddps zmm13,zmm14,zmm3
  a6a4d1:	62 71 74 48 5c e6    	vsubps zmm12,zmm1,zmm6
  a6a4d7:	62 71 74 48 58 fe    	vaddps zmm15,zmm1,zmm6
  a6a4dd:	62 b1 24 48 58 c1    	vaddps zmm0,zmm11,zmm17
  a6a4e3:	62 b1 24 48 5c f1    	vsubps zmm6,zmm11,zmm17
  a6a4e9:	62 c1 5c 40 58 c9    	vaddps zmm17,zmm20,zmm9
  a6a4ef:	62 51 5c 40 5c f1    	vsubps zmm14,zmm20,zmm9
  a6a4f5:	62 81 7c 40 5c e1    	vsubps zmm20,zmm16,zmm25
  a6a4fb:	62 11 7c 40 58 d9    	vaddps zmm11,zmm16,zmm25
  a6a501:	62 81 2c 40 5c f5    	vsubps zmm22,zmm26,zmm29
  a6a507:	62 01 2c 40 58 d5    	vaddps zmm26,zmm26,zmm29
  a6a50d:	62 61 44 40 58 ec    	vaddps zmm29,zmm23,zmm4
  a6a513:	62 71 44 40 5c cc    	vsubps zmm9,zmm23,zmm4
  a6a519:	62 81 3c 40 58 db    	vaddps zmm19,zmm24,zmm27
  a6a51f:	62 01 3c 40 5c cb    	vsubps zmm25,zmm24,zmm27
  a6a525:	62 61 3c 48 5c da    	vsubps zmm27,zmm8,zmm2
  a6a52b:	62 e1 3c 48 58 fa    	vaddps zmm23,zmm8,zmm2
  a6a531:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a6a538:	01 
  a6a539:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a6a540:	02 
  a6a541:	62 f1 6c 48 5c cb    	vsubps zmm1,zmm2,zmm3
  a6a547:	62 e1 6c 48 58 d3    	vaddps zmm18,zmm2,zmm3
  a6a54d:	62 91 54 48 5c dc    	vsubps zmm3,zmm5,zmm28
  a6a553:	62 01 54 48 58 c4    	vaddps zmm24,zmm5,zmm28
  a6a559:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x300]
  a6a560:	0c 
  a6a561:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x2c0]
  a6a568:	0b 
  a6a569:	62 f1 54 48 5c d4    	vsubps zmm2,zmm5,zmm4
  a6a56f:	62 f1 54 48 58 ec    	vaddps zmm5,zmm5,zmm4
  a6a575:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a6a57b:	62 71 7c 48 28 05 7b 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff629d7b]        # 94300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x217b0>
  a6a582:	9d 62 ff 
  a6a585:	62 f2 3d 48 7f e5    	vpermt2ps zmm4,zmm8,zmm5
  a6a58b:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a6a592:	62 f1 6c 40 14 e5    	vunpcklps zmm4,zmm18,zmm5
  a6a598:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm4,0x3
  a6a59f:	06 03 
  a6a5a1:	62 f1 6c 40 15 e5    	vunpckhps zmm4,zmm18,zmm5
  a6a5a7:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a6a5ae:	c5 f8 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm4
  a6a5b4:	62 81 04 40 58 c6    	vaddps zmm16,zmm31,zmm30
  a6a5ba:	62 91 04 40 5c e6    	vsubps zmm4,zmm31,zmm30
  a6a5c0:	62 61 7c 28 28 25 76 	vmovaps ymm28,YMMWORD PTR [rip+0xffffffffff629d76]        # 94340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x217f0>
  a6a5c7:	9d 62 ff 
  a6a5ca:	62 e2 1d 40 7f d5    	vpermt2ps zmm18,zmm28,zmm5
  a6a5d0:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm18
  a6a5d7:	02 
  a6a5d8:	62 e1 54 40 58 d7    	vaddps zmm18,zmm21,zmm7
  a6a5de:	62 f1 54 40 5c ef    	vsubps zmm5,zmm21,zmm7
  a6a5e4:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a6a5ea:	62 d2 3d 48 7f fa    	vpermt2ps zmm7,zmm8,zmm10
  a6a5f0:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm7
  a6a5f7:	78 00 00 00 
  a6a5fb:	62 d1 1c 48 14 fa    	vunpcklps zmm7,zmm12,zmm10
  a6a601:	62 f3 7d 48 19 bc 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm7,0x3
  a6a608:	d8 00 00 00 03 
  a6a60d:	62 d1 1c 48 15 fa    	vunpckhps zmm7,zmm12,zmm10
  a6a613:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a6a61a:	c5 f8 13 bc 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm7
  a6a621:	00 00 
  a6a623:	62 52 1d 40 7f e2    	vpermt2ps zmm12,zmm28,zmm10
  a6a629:	c5 7c 11 a4 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm12
  a6a630:	00 00 
  a6a632:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a6a638:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  a6a63e:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm7
  a6a645:	f0 00 00 00 
  a6a649:	62 f1 74 40 14 f8    	vunpcklps zmm7,zmm17,zmm0
  a6a64f:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm7,0x3
  a6a656:	15 03 
  a6a658:	62 f1 74 40 15 f8    	vunpckhps zmm7,zmm17,zmm0
  a6a65e:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a6a665:	c5 f8 13 bc 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm7
  a6a66c:	00 00 
  a6a66e:	62 e2 1d 40 7f c8    	vpermt2ps zmm17,zmm28,zmm0
  a6a674:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm17
  a6a67b:	30 01 00 00 
  a6a67f:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a6a685:	62 b2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm20
  a6a68b:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm0
  a6a692:	68 01 00 00 
  a6a696:	62 b1 4c 40 14 c4    	vunpcklps zmm0,zmm22,zmm20
  a6a69c:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm0,0x3
  a6a6a3:	c8 01 00 00 03 
  a6a6a8:	62 b1 4c 40 15 c4    	vunpckhps zmm0,zmm22,zmm20
  a6a6ae:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a6b5:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a6a6bc:	00 00 
  a6a6be:	62 a2 1d 40 7f f4    	vpermt2ps zmm22,zmm28,zmm20
  a6a6c4:	62 e1 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm22
  a6a6cb:	a8 01 00 00 
  a6a6cf:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a6a6d5:	62 92 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm29
  a6a6db:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm0
  a6a6e2:	e0 01 00 00 
  a6a6e6:	62 91 64 40 14 c5    	vunpcklps zmm0,zmm19,zmm29
  a6a6ec:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm0,0x3
  a6a6f3:	24 03 
  a6a6f5:	62 91 64 40 15 c5    	vunpckhps zmm0,zmm19,zmm29
  a6a6fb:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a702:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a6a709:	00 00 
  a6a70b:	62 82 1d 40 7f dd    	vpermt2ps zmm19,zmm28,zmm29
  a6a711:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm19
  a6a718:	11 
  a6a719:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a6a71f:	62 92 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm27
  a6a725:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm0
  a6a72c:	58 02 00 00 
  a6a730:	62 91 64 48 14 c3    	vunpcklps zmm0,zmm3,zmm27
  a6a736:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm0,0x3
  a6a73d:	b8 02 00 00 03 
  a6a742:	62 91 64 48 15 c3    	vunpckhps zmm0,zmm3,zmm27
  a6a748:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a74f:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a6a756:	00 00 
  a6a758:	62 92 1d 40 7f db    	vpermt2ps zmm3,zmm28,zmm27
  a6a75e:	c5 fc 11 9c 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm3
  a6a765:	00 00 
  a6a767:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a6a76d:	62 b2 3d 48 7f c0    	vpermt2ps zmm0,zmm8,zmm16
  a6a773:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm0
  a6a77a:	d0 02 00 00 
  a6a77e:	62 b1 6c 40 14 c0    	vunpcklps zmm0,zmm18,zmm16
  a6a784:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm0,0x3
  a6a78b:	33 03 
  a6a78d:	62 b1 6c 40 15 c0    	vunpckhps zmm0,zmm18,zmm16
  a6a793:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a79a:	c5 f8 13 84 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm0
  a6a7a1:	00 00 
  a6a7a3:	62 a2 1d 40 7f d0    	vpermt2ps zmm18,zmm28,zmm16
  a6a7a9:	62 e1 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm18
  a6a7b0:	10 03 00 00 
  a6a7b4:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6a7ba:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a6a7c0:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm0
  a6a7c7:	48 03 00 00 
  a6a7cb:	62 f1 74 48 14 c2    	vunpcklps zmm0,zmm1,zmm2
  a6a7d1:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm0,0x3
  a6a7d8:	a8 03 00 00 03 
  a6a7dd:	62 f1 74 48 15 c2    	vunpckhps zmm0,zmm1,zmm2
  a6a7e3:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a7ea:	c5 f8 13 84 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm0
  a6a7f1:	00 00 
  a6a7f3:	62 f2 1d 40 7f ca    	vpermt2ps zmm1,zmm28,zmm2
  a6a7f9:	c5 fc 11 8c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm1
  a6a800:	00 00 
  a6a802:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a6a808:	62 d2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm13
  a6a80e:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a6a815:	0f 
  a6a816:	62 d1 04 48 14 c5    	vunpcklps zmm0,zmm15,zmm13
  a6a81c:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm0,0x3
  a6a823:	42 03 
  a6a825:	62 d1 04 48 15 c5    	vunpckhps zmm0,zmm15,zmm13
  a6a82b:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a832:	c5 f8 13 84 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm0
  a6a839:	00 00 
  a6a83b:	62 52 1d 40 7f fd    	vpermt2ps zmm15,zmm28,zmm13
  a6a841:	c5 7c 11 bc 16 00 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm15
  a6a848:	00 00 
  a6a84a:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a6a850:	62 f2 3d 48 7f c6    	vpermt2ps zmm0,zmm8,zmm6
  a6a856:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm0
  a6a85d:	38 04 00 00 
  a6a861:	62 f1 0c 48 14 c6    	vunpcklps zmm0,zmm14,zmm6
  a6a867:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm0,0x3
  a6a86e:	98 04 00 00 03 
  a6a873:	62 f1 0c 48 15 c6    	vunpckhps zmm0,zmm14,zmm6
  a6a879:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a880:	c5 f8 13 84 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm0
  a6a887:	00 00 
  a6a889:	62 72 1d 40 7f f6    	vpermt2ps zmm14,zmm28,zmm6
  a6a88f:	c5 7c 11 b4 16 78 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm14
  a6a896:	00 00 
  a6a898:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a6a89e:	62 d2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm11
  a6a8a4:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm0
  a6a8ab:	b0 04 00 00 
  a6a8af:	62 d1 2c 40 14 c3    	vunpcklps zmm0,zmm26,zmm11
  a6a8b5:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm0,0x3
  a6a8bc:	51 03 
  a6a8be:	62 d1 2c 40 15 c3    	vunpckhps zmm0,zmm26,zmm11
  a6a8c4:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a8cb:	c5 f8 13 84 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm0
  a6a8d2:	00 00 
  a6a8d4:	62 42 1d 40 7f d3    	vpermt2ps zmm26,zmm28,zmm11
  a6a8da:	62 61 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm26
  a6a8e1:	f0 04 00 00 
  a6a8e5:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a6a8eb:	62 d2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm9
  a6a8f1:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a6a8f8:	28 05 00 00 
  a6a8fc:	62 d1 34 40 14 c1    	vunpcklps zmm0,zmm25,zmm9
  a6a902:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a6a909:	88 05 00 00 03 
  a6a90e:	62 d1 34 40 15 c1    	vunpckhps zmm0,zmm25,zmm9
  a6a914:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a91b:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a6a922:	00 00 
  a6a924:	62 42 1d 40 7f c9    	vpermt2ps zmm25,zmm28,zmm9
  a6a92a:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm25
  a6a931:	68 05 00 00 
  a6a935:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a6a93b:	62 b2 3d 48 7f c7    	vpermt2ps zmm0,zmm8,zmm23
  a6a941:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a6a948:	a0 05 00 00 
  a6a94c:	62 b1 3c 40 14 c7    	vunpcklps zmm0,zmm24,zmm23
  a6a952:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a6a959:	60 03 
  a6a95b:	62 b1 3c 40 15 c7    	vunpckhps zmm0,zmm24,zmm23
  a6a961:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a968:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a6a96f:	00 00 
  a6a971:	62 22 1d 40 7f c7    	vpermt2ps zmm24,zmm28,zmm23
  a6a977:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm24
  a6a97e:	2f 
  a6a97f:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a6a985:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a6a98b:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a6a992:	18 06 00 00 
  a6a996:	62 f1 54 48 14 c4    	vunpcklps zmm0,zmm5,zmm4
  a6a99c:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a6a9a3:	78 06 00 00 03 
  a6a9a8:	62 f1 54 48 15 c4    	vunpckhps zmm0,zmm5,zmm4
  a6a9ae:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6a9b5:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a6a9bc:	00 00 
  a6a9be:	62 f2 1d 40 7f ec    	vpermt2ps zmm5,zmm28,zmm4
  a6a9c4:	c5 fc 11 ac 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm5
  a6a9cb:	00 00 
  a6a9cd:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a6a9d4:	48 39 d0             	cmp    rax,rdx
  a6a9d7:	0f 85 13 e3 ff ff    	jne    a68cf0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a6a9dd:	48 89 ec             	mov    rsp,rbp
  a6a9e0:	5d                   	pop    rbp
  a6a9e1:	c5 f8 77             	vzeroupper
  a6a9e4:	c3                   	ret
