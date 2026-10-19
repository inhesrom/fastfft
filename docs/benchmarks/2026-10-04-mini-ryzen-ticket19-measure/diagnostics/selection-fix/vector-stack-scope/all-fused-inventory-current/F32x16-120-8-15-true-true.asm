
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6fd80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6fd80:	55                   	push   rbp
  a6fd81:	48 89 e5             	mov    rbp,rsp
  a6fd84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a6fd88:	48 81 ec 40 09 00 00 	sub    rsp,0x940
  a6fd8f:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a6fd96:	31 d2                	xor    edx,edx
  a6fd98:	4c 8d 84 24 c0 08 00 	lea    r8,[rsp+0x8c0]
  a6fd9f:	00 
  a6fda0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a6fda5:	41 b2 7f             	mov    r10b,0x7f
  a6fda8:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a6fdad:	0f 1f 00             	nop    DWORD PTR [rax]
  a6fdb0:	c6 84 24 c0 08 00 00 	mov    BYTE PTR [rsp+0x8c0],0x0
  a6fdb7:	00 
  a6fdb8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a6fdbd:	62 e1 7c 48 10 3c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1]
  a6fdc4:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a6fdca:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a6fdd1:	10 
  a6fdd2:	c4 e2 79 18 5c 17 68 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x68]
  a6fdd9:	c5 7c 10 44 17 40    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x40]
  a6fddf:	c5 fb 10 64 17 70    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x70]
  a6fde5:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6fdec:	e0 01 00 00 
  a6fdf0:	c5 7c 10 8c 17 20 02 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x220]
  a6fdf7:	00 00 
  a6fdf9:	c5 f8 10 ac 17 40 02 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x240]
  a6fe00:	00 00 
  a6fe02:	c4 e3 51 21 ac 17 44 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x244],0x10
  a6fe09:	02 00 00 10 
  a6fe0d:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a6fe13:	c4 62 79 18 94 17 48 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x248]
  a6fe1a:	02 00 00 
  a6fe1d:	c5 7b 10 9c 17 50 02 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x250]
  a6fe24:	00 00 
  a6fe26:	c4 e3 61 0c d9 03    	vblendps xmm3,xmm3,xmm1,0x3
  a6fe2c:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a6fe32:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a6fe39:	f0 00 00 00 
  a6fe3d:	c4 63 61 21 64 17 6c 	vinsertps xmm12,xmm3,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a6fe44:	30 
  a6fe45:	c5 f8 10 9c 17 50 01 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x150]
  a6fe4c:	00 00 
  a6fe4e:	c4 63 61 21 ac 17 54 	vinsertps xmm13,xmm3,DWORD PTR [rdi+rdx*1+0x154],0x10
  a6fe55:	01 00 00 10 
  a6fe59:	c4 e3 29 0c dd 03    	vblendps xmm3,xmm10,xmm5,0x3
  a6fe5f:	c4 e2 79 18 ac 17 58 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x158]
  a6fe66:	01 00 00 
  a6fe69:	c4 63 61 21 94 17 4c 	vinsertps xmm10,xmm3,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a6fe70:	02 00 00 30 
  a6fe74:	c5 7c 10 b4 17 30 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x130]
  a6fe7b:	00 00 
  a6fe7d:	c5 7b 10 bc 17 60 01 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x160]
  a6fe84:	00 00 
  a6fe86:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a6fe8c:	c4 43 51 0c ed 03    	vblendps xmm13,xmm5,xmm13,0x3
  a6fe92:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a6fe99:	d0 02 00 00 
  a6fe9d:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x310]
  a6fea4:	10 03 00 00 
  a6fea8:	c4 63 11 21 ac 17 5c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a6feaf:	01 00 00 30 
  a6feb3:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x330]
  a6feba:	33 
  a6febb:	62 f3 75 00 21 84 17 	vinsertps xmm0,xmm17,DWORD PTR [rdi+rdx*1+0x334],0x10
  a6fec2:	34 03 00 00 10 
  a6fec7:	c4 63 1d 18 e4 01    	vinsertf128 ymm12,ymm12,xmm4,0x1
  a6fecd:	c4 e2 79 18 a4 17 38 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x338]
  a6fed4:	03 00 00 
  a6fed7:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a6fedd:	c4 43 2d 18 db 01    	vinsertf128 ymm11,ymm10,xmm11,0x1
  a6fee3:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a6feea:	03 00 00 30 
  a6feee:	c5 fb 10 a4 17 40 03 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x340]
  a6fef5:	00 00 
  a6fef7:	c4 43 15 18 ef 01    	vinsertf128 ymm13,ymm13,xmm15,0x1
  a6fefd:	c4 e3 7d 18 c4 01    	vinsertf128 ymm0,ymm0,xmm4,0x1
  a6ff03:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a6ff09:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x78]
  a6ff10:	78 00 00 00 
  a6ff14:	62 53 bd 48 1a c4 01 	vinsertf64x4 zmm8,zmm8,ymm12,0x1
  a6ff1b:	c5 78 10 a4 17 d8 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xd8]
  a6ff22:	00 00 
  a6ff24:	c4 63 19 21 a4 17 dc 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a6ff2b:	00 00 00 10 
  a6ff2f:	62 53 b5 48 1a cb 01 	vinsertf64x4 zmm9,zmm9,ymm11,0x1
  a6ff36:	c5 7c 10 9c 17 b8 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xb8]
  a6ff3d:	00 00 
  a6ff3f:	c4 62 79 18 bc 17 e0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0xe0]
  a6ff46:	00 00 00 
  a6ff49:	62 53 8d 48 1a f5 01 	vinsertf64x4 zmm14,zmm14,ymm13,0x1
  a6ff50:	c4 43 01 0c e4 03    	vblendps xmm12,xmm15,xmm12,0x3
  a6ff56:	c4 63 19 21 a4 17 e4 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a6ff5d:	00 00 00 30 
  a6ff61:	62 f3 fd 40 1a c0 01 	vinsertf64x4 zmm0,zmm16,ymm0,0x1
  a6ff68:	c5 7b 10 ac 17 e8 00 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0xe8]
  a6ff6f:	00 00 
  a6ff71:	c4 43 1d 18 e5 01    	vinsertf128 ymm12,ymm12,xmm13,0x1
  a6ff77:	62 53 a5 48 1a e4 01 	vinsertf64x4 zmm12,zmm11,ymm12,0x1
  a6ff7e:	62 42 fd c9 88 c0    	vexpandpd zmm24{k1}{z},zmm8
  a6ff84:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6ff8a:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x258]
  a6ff91:	58 02 00 00 
  a6ff95:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x298]
  a6ff9c:	98 02 00 00 
  a6ffa0:	62 42 fd c9 88 d1    	vexpandpd zmm26{k1}{z},zmm9
  a6ffa6:	c5 78 10 bc 17 b8 02 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a6ffad:	00 00 
  a6ffaf:	c4 63 01 21 84 17 bc 	vinsertps xmm8,xmm15,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a6ffb6:	02 00 00 10 
  a6ffba:	62 52 fd c9 88 fe    	vexpandpd zmm15{k1}{z},zmm14
  a6ffc0:	c4 62 79 18 b4 17 c0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x2c0]
  a6ffc7:	02 00 00 
  a6ffca:	c4 43 09 0c c0 03    	vblendps xmm8,xmm14,xmm8,0x3
  a6ffd0:	62 e2 fd c9 88 c0    	vexpandpd zmm16{k1}{z},zmm0
  a6ffd6:	c4 e3 39 21 84 17 c4 	vinsertps xmm0,xmm8,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a6ffdd:	02 00 00 30 
  a6ffe1:	c5 7b 10 84 17 c8 02 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x2c8]
  a6ffe8:	00 00 
  a6ffea:	62 c2 fd c9 88 e4    	vexpandpd zmm20{k1}{z},zmm12
  a6fff0:	c4 c3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm8,0x1
  a6fff6:	62 f3 f5 40 1a c0 01 	vinsertf64x4 zmm0,zmm17,ymm0,0x1
  a6fffd:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a70003:	62 61 7c 48 28 2d 33 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff624833]        # 94840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21cf0>
  a7000a:	48 62 ff 
  a7000d:	62 92 15 40 7f f0    	vpermt2ps zmm6,zmm29,zmm24
  a70013:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a70019:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x168]
  a70020:	68 01 00 00 
  a70024:	c5 7c 10 84 17 a8 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a7002b:	00 00 
  a7002d:	62 92 15 40 7f fa    	vpermt2ps zmm7,zmm29,zmm26
  a70033:	c5 78 10 a4 17 c8 01 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a7003a:	00 00 
  a7003c:	c4 63 19 21 a4 17 cc 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a70043:	01 00 00 10 
  a70047:	62 d2 15 40 7f df    	vpermt2ps zmm3,zmm29,zmm15
  a7004d:	c4 62 79 18 b4 17 d0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x1d0]
  a70054:	01 00 00 
  a70057:	c4 43 09 0c e4 03    	vblendps xmm12,xmm14,xmm12,0x3
  a7005d:	62 b2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm16
  a70063:	c4 63 19 21 a4 17 d4 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a7006a:	01 00 00 30 
  a7006e:	c5 7b 10 b4 17 d8 01 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x1d8]
  a70075:	00 00 
  a70077:	62 32 15 40 7f dc    	vpermt2ps zmm11,zmm29,zmm20
  a7007d:	c4 43 1d 18 e6 01    	vinsertf128 ymm12,ymm12,xmm14,0x1
  a70083:	62 53 bd 48 1a c4 01 	vinsertf64x4 zmm8,zmm8,ymm12,0x1
  a7008a:	62 52 fd c9 88 c0    	vexpandpd zmm8{k1}{z},zmm8
  a70090:	62 e2 15 40 7f d0    	vpermt2ps zmm18,zmm29,zmm0
  a70096:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a7009c:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x348]
  a700a3:	48 03 00 00 
  a700a7:	c5 7c 10 b4 17 88 03 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x388]
  a700ae:	00 00 
  a700b0:	62 c2 15 40 7f d8    	vpermt2ps zmm19,zmm29,zmm8
  a700b6:	c5 78 10 a4 17 a8 03 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a700bd:	00 00 
  a700bf:	c4 63 19 21 a4 17 ac 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a700c6:	03 00 00 10 
  a700ca:	62 e1 4c 48 58 ef    	vaddps zmm21,zmm6,zmm7
  a700d0:	c4 62 79 18 8c 17 b0 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x3b0]
  a700d7:	03 00 00 
  a700da:	c4 43 31 0c cc 03    	vblendps xmm9,xmm9,xmm12,0x3
  a700e0:	62 61 64 48 58 cc    	vaddps zmm25,zmm3,zmm4
  a700e6:	c4 63 31 21 8c 17 b4 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a700ed:	03 00 00 30 
  a700f1:	62 61 ff 08 10 5c 17 	vmovsd xmm27,QWORD PTR [rdi+rdx*1+0x3b8]
  a700f8:	77 
  a700f9:	62 31 24 48 58 e2    	vaddps zmm12,zmm11,zmm18
  a700ff:	62 13 35 28 18 cb 01 	vinsertf32x4 ymm9,ymm9,xmm27,0x1
  a70106:	62 53 8d 48 1a c9 01 	vinsertf64x4 zmm9,zmm14,ymm9,0x1
  a7010d:	62 52 fd c9 88 c9    	vexpandpd zmm9{k1}{z},zmm9
  a70113:	62 01 54 40 58 d9    	vaddps zmm27,zmm21,zmm25
  a70119:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  a7011f:	62 42 15 40 7f e1    	vpermt2ps zmm28,zmm29,zmm9
  a70125:	62 11 64 40 58 f4    	vaddps zmm14,zmm19,zmm28
  a7012b:	62 41 1c 48 58 ee    	vaddps zmm29,zmm12,zmm14
  a70131:	62 61 7c 48 28 35 45 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff624745]        # 94880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21d30>
  a70138:	47 62 ff 
  a7013b:	62 32 0d 40 7f d4    	vpermt2ps zmm10,zmm30,zmm20
  a70141:	62 72 0d 40 7f e8    	vpermt2ps zmm13,zmm30,zmm0
  a70147:	62 c1 2c 48 58 e5    	vaddps zmm20,zmm10,zmm13
  a7014d:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  a70153:	62 c2 0d 40 7f c8    	vpermt2ps zmm17,zmm30,zmm8
  a70159:	62 c2 0d 40 7f f1    	vpermt2ps zmm22,zmm30,zmm9
  a7015f:	62 a1 74 40 58 ee    	vaddps zmm21,zmm17,zmm22
  a70165:	62 01 24 40 58 fd    	vaddps zmm31,zmm27,zmm29
  a7016b:	62 31 5c 40 5c c5    	vsubps zmm8,zmm20,zmm21
  a70171:	62 71 4c 48 5c cf    	vsubps zmm9,zmm6,zmm7
  a70177:	62 d2 0d 40 7f cf    	vpermt2ps zmm1,zmm30,zmm15
  a7017d:	62 01 24 40 5c cd    	vsubps zmm25,zmm27,zmm29
  a70183:	62 b2 0d 40 7f e8    	vpermt2ps zmm5,zmm30,zmm16
  a70189:	62 e1 74 48 5c c5    	vsubps zmm16,zmm1,zmm5
  a7018f:	62 31 34 48 58 f8    	vaddps zmm15,zmm9,zmm16
  a70195:	62 41 7c 48 58 d8    	vaddps zmm27,zmm0,zmm8
  a7019b:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm27
  a701a2:	01 
  a701a3:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a701a9:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a701af:	62 d1 24 48 58 f2    	vaddps zmm6,zmm11,zmm10
  a701b5:	62 41 7c 48 5c e8    	vsubps zmm29,zmm0,zmm8
  a701bb:	62 e2 7d 48 18 15 d7 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff6051d7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a701c2:	51 60 ff 
  a701c5:	62 b1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm18
  a701cb:	62 b1 74 40 5c c6    	vsubps zmm0,zmm17,zmm22
  a701d1:	62 11 64 40 5c c4    	vsubps zmm8,zmm19,zmm28
  a701d7:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm31
  a701de:	03 
  a701df:	62 d1 7c 48 5c f8    	vsubps zmm7,zmm0,zmm8
  a701e5:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a701eb:	62 31 34 48 5c e8    	vsubps zmm13,zmm9,zmm16
  a701f1:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm25
  a701f8:	02 
  a701f9:	62 51 2c 48 5c cb    	vsubps zmm9,zmm10,zmm11
  a701ff:	62 31 34 48 59 d2    	vmulps zmm10,zmm9,zmm18
  a70205:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  a7020b:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm27
  a70212:	07 
  a70213:	62 b1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm18
  a70219:	62 82 0d 40 7f f8    	vpermt2ps zmm23,zmm30,zmm24
  a7021f:	62 92 0d 40 7f d2    	vpermt2ps zmm2,zmm30,zmm26
  a70225:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm29
  a7022c:	05 
  a7022d:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a70233:	62 71 44 40 58 c2    	vaddps zmm8,zmm23,zmm2
  a70239:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  a7023f:	62 f1 3c 48 58 e9    	vaddps zmm5,zmm8,zmm1
  a70245:	62 71 4c 48 58 cf    	vaddps zmm9,zmm6,zmm7
  a7024b:	62 a1 5c 40 58 c5    	vaddps zmm16,zmm20,zmm21
  a70251:	62 31 54 48 58 d8    	vaddps zmm11,zmm5,zmm16
  a70257:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a7025d:	62 e1 2c 48 58 c8    	vaddps zmm17,zmm10,zmm0
  a70263:	62 21 54 48 5c f0    	vsubps zmm30,zmm5,zmm16
  a70269:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm30
  a70270:	06 
  a70271:	62 d1 0c 48 5c ec    	vsubps zmm5,zmm14,zmm12
  a70277:	62 c1 04 48 58 f1    	vaddps zmm22,zmm15,zmm9
  a7027d:	62 f1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm1
  a70283:	62 e1 54 48 58 d9    	vaddps zmm19,zmm5,zmm1
  a70289:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a7028f:	62 41 04 48 5c d1    	vsubps zmm26,zmm15,zmm9
  a70295:	62 61 74 48 5c e5    	vsubps zmm28,zmm1,zmm5
  a7029b:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm28
  a702a2:	04 
  a702a3:	62 f1 5c 48 5c cb    	vsubps zmm1,zmm4,zmm3
  a702a9:	62 31 14 48 58 f1    	vaddps zmm14,zmm13,zmm17
  a702af:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a702b5:	62 f1 74 48 58 da    	vaddps zmm3,zmm1,zmm2
  a702bb:	62 f1 2c 48 5c c0    	vsubps zmm0,zmm10,zmm0
  a702c1:	62 31 14 48 5c c9    	vsubps zmm9,zmm13,zmm17
  a702c7:	62 61 64 48 58 e8    	vaddps zmm29,zmm3,zmm0
  a702cd:	62 71 64 48 5c c0    	vsubps zmm8,zmm3,zmm0
  a702d3:	62 f1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm1
  a702d9:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a702df:	62 f1 44 48 5c d6    	vsubps zmm2,zmm7,zmm6
  a702e5:	62 71 7c 48 58 e2    	vaddps zmm12,zmm0,zmm2
  a702eb:	62 e1 7c 48 5c ca    	vsubps zmm17,zmm0,zmm2
  a702f1:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm26
  a702f8:	13 
  a702f9:	62 f1 7c 48 28 05 7d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff656c7d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a70300:	6c 65 ff 
  a70303:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a70308:	62 42 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm15
  a7030e:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm31
  a70315:	12 
  a70316:	62 42 7d 48 7f cf    	vpermt2ps zmm25,zmm0,zmm15
  a7031c:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm25
  a70323:	18 
  a70324:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a7032a:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  a70330:	62 71 7c 48 28 15 c6 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff656bc6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a70337:	6b 65 ff 
  a7033a:	62 92 2d 48 7f c9    	vpermt2ps zmm1,zmm10,zmm25
  a70340:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a70346:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a7034d:	17 
  a7034e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a70355:	01 
  a70356:	62 d2 7d 48 7f cf    	vpermt2ps zmm1,zmm0,zmm15
  a7035c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a70363:	01 
  a70364:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a7036a:	62 d2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm15
  a70370:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm2
  a70377:	16 
  a70378:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm9
  a7037f:	0e 
  a70380:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a70386:	62 f2 2d 48 7f ea    	vpermt2ps zmm5,zmm10,zmm2
  a7038c:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a70393:	15 
  a70394:	62 c2 7d 48 7f f7    	vpermt2ps zmm22,zmm0,zmm15
  a7039a:	62 42 7d 48 7f d7    	vpermt2ps zmm26,zmm0,zmm15
  a703a0:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a703a6:	62 d2 7d 48 7f cf    	vpermt2ps zmm1,zmm0,zmm15
  a703ac:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a703b3:	14 
  a703b4:	62 42 7d 48 7f f7    	vpermt2ps zmm30,zmm0,zmm15
  a703ba:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a703c0:	62 92 2d 48 7f ce    	vpermt2ps zmm1,zmm10,zmm30
  a703c6:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a703cc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm1
  a703d3:	21 
  a703d4:	62 c2 7d 48 7f df    	vpermt2ps zmm19,zmm0,zmm15
  a703da:	62 42 7d 48 7f e7    	vpermt2ps zmm28,zmm0,zmm15
  a703e0:	62 52 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm15
  a703e6:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a703ec:	62 92 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm28
  a703f2:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a703f8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm1
  a703ff:	20 
  a70400:	62 81 7c 48 28 e5    	vmovaps zmm20,zmm29
  a70406:	62 42 7d 48 7f ef    	vpermt2ps zmm29,zmm0,zmm15
  a7040c:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a70412:	62 52 7d 48 7f c7    	vpermt2ps zmm8,zmm0,zmm15
  a70418:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a7041e:	62 12 2d 48 7f ea    	vpermt2ps zmm13,zmm10,zmm26
  a70424:	62 41 7c 48 28 fc    	vmovaps zmm31,zmm12
  a7042a:	62 52 7d 48 7f e7    	vpermt2ps zmm12,zmm0,zmm15
  a70430:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a70436:	62 52 2d 48 7f d9    	vpermt2ps zmm11,zmm10,zmm9
  a7043c:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm17
  a70443:	09 
  a70444:	62 c2 7d 48 7f cf    	vpermt2ps zmm17,zmm0,zmm15
  a7044a:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  a70450:	62 d2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm8
  a70456:	62 e1 e5 48 15 c5    	vunpckhpd zmm16,zmm3,zmm5
  a7045c:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm16
  a70463:	1d 
  a70464:	62 d1 95 48 15 cb    	vunpckhpd zmm1,zmm13,zmm11
  a7046a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a70471:	1c 
  a70472:	62 f1 7c 48 28 1d 84 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff656984]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a70479:	69 65 ff 
  a7047c:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  a70482:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a70488:	62 b2 2d 48 7f e9    	vpermt2ps zmm5,zmm10,zmm17
  a7048e:	62 e1 ed 48 15 d4    	vunpckhpd zmm18,zmm2,zmm4
  a70494:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm18
  a7049b:	1a 
  a7049c:	62 f1 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm5
  a704a2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a704a9:	19 
  a704aa:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  a704b0:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a704b7:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a704be:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a704c4:	62 f2 7d 40 b8 d1    	vfmadd231ps zmm2,zmm16,zmm1
  a704ca:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm2
  a704d1:	1e 
  a704d2:	62 f1 7c 40 59 c0    	vmulps zmm0,zmm16,zmm0
  a704d8:	62 b2 75 48 bc c2    	vfnmadd231ps zmm0,zmm1,zmm18
  a704de:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a704e5:	08 
  a704e6:	62 e1 7c 48 28 05 d0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff656ad0]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a704ed:	6a 65 ff 
  a704f0:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0xc0]
  a704f7:	03 
  a704f8:	62 42 7d 40 7f cf    	vpermt2ps zmm25,zmm16,zmm15
  a704fe:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a70505:	02 
  a70506:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a7050c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a70513:	02 
  a70514:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a7051b:	07 
  a7051c:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a70522:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a70529:	05 
  a7052a:	62 d2 7d 40 7f d7    	vpermt2ps zmm2,zmm16,zmm15
  a70530:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a70537:	05 
  a70538:	62 c2 7d 40 7f ff    	vpermt2ps zmm23,zmm16,zmm15
  a7053e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x4c0]
  a70545:	13 
  a70546:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a7054c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a70553:	13 
  a70554:	62 42 7d 40 7f df    	vpermt2ps zmm27,zmm16,zmm15
  a7055a:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm25
  a70561:	03 
  a70562:	62 f1 7c 48 28 05 d4 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6569d4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a70569:	69 65 ff 
  a7056c:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a70572:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm4
  a70579:	11 
  a7057a:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a70580:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a70587:	07 
  a70588:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a7058f:	0e 
  a70590:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a70596:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a7059d:	0e 
  a7059e:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm23
  a705a5:	0f 
  a705a6:	62 e2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm3
  a705ac:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm27
  a705b3:	10 
  a705b4:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a705ba:	62 f1 b5 40 15 d4    	vunpckhpd zmm2,zmm25,zmm4
  a705c0:	62 91 c5 40 15 cb    	vunpckhpd zmm1,zmm23,zmm27
  a705c6:	62 f1 7c 48 28 25 30 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff656830]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a705cd:	68 65 ff 
  a705d0:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a705d6:	62 c2 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm15
  a705dc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a705e3:	06 
  a705e4:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a705ea:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a705f1:	06 
  a705f2:	62 42 7d 40 7f c7    	vpermt2ps zmm24,zmm16,zmm15
  a705f8:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x100]
  a705ff:	04 
  a70600:	62 c2 7d 40 7f d7    	vpermt2ps zmm18,zmm16,zmm15
  a70606:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm18
  a7060d:	04 
  a7060e:	62 c2 7d 40 7f e7    	vpermt2ps zmm20,zmm16,zmm15
  a70614:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a7061a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm7
  a70621:	1f 
  a70622:	62 42 7d 40 7f ff    	vpermt2ps zmm31,zmm16,zmm15
  a70628:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a7062f:	09 
  a70630:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a70636:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a7063d:	09 
  a7063e:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm21
  a70645:	0d 
  a70646:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a7064c:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm24
  a70653:	0c 
  a70654:	62 22 7d 48 7f c2    	vpermt2ps zmm24,zmm0,zmm18
  a7065a:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm20
  a70661:	0b 
  a70662:	62 e2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm7
  a70668:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm31
  a7066f:	0a 
  a70670:	62 62 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm3
  a70676:	62 91 d5 40 15 c8    	vunpckhpd zmm1,zmm21,zmm24
  a7067c:	62 81 dd 40 15 c7    	vunpckhpd zmm16,zmm20,zmm31
  a70682:	62 b2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm16
  a70688:	62 e1 7c 48 10 41 1d 	vmovups zmm16,ZMMWORD PTR [rcx+0x740]
  a7068f:	62 e1 7c 48 10 51 1c 	vmovups zmm18,ZMMWORD PTR [rcx+0x700]
  a70696:	62 b1 74 48 59 da    	vmulps zmm3,zmm1,zmm18
  a7069c:	62 b2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm16
  a706a2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a706a9:	1b 
  a706aa:	62 b1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm18
  a706b0:	62 f2 7d 40 bc d1    	vfnmadd231ps zmm2,zmm16,zmm1
  a706b6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm2
  a706bd:	22 
  a706be:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a706c5:	12 
  a706c6:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x600]
  a706cd:	18 
  a706ce:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a706d5:	12 
  a706d6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a706dd:	01 
  a706de:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x580]
  a706e5:	16 
  a706e6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a706ed:	01 
  a706ee:	62 82 7d 48 7f f2    	vpermt2ps zmm22,zmm0,zmm26
  a706f4:	62 52 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm9
  a706fa:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x500]
  a70701:	14 
  a70702:	62 02 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm30
  a70708:	62 82 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm28
  a7070e:	62 42 7d 48 7f e8    	vpermt2ps zmm29,zmm0,zmm8
  a70714:	62 32 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm17
  a7071a:	62 f1 f5 48 15 fa    	vunpckhpd zmm7,zmm1,zmm2
  a70720:	62 c1 cd 40 15 d6    	vunpckhpd zmm18,zmm22,zmm14
  a70726:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a7072c:	62 71 7c 48 28 3d 0a 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff65670a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a70733:	67 65 ff 
  a70736:	62 b2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm18
  a7073c:	62 b1 ad 40 15 db    	vunpckhpd zmm3,zmm26,zmm19
  a70742:	62 c1 95 40 15 c4    	vunpckhpd zmm16,zmm29,zmm12
  a70748:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a7074e:	62 b2 05 48 7f e0    	vpermt2ps zmm4,zmm15,zmm16
  a70754:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a7075b:	62 71 7c 48 10 49 0e 	vmovups zmm9,ZMMWORD PTR [rcx+0x380]
  a70762:	62 d1 5c 48 59 c1    	vmulps zmm0,zmm4,zmm9
  a70768:	62 d2 75 48 b8 c0    	vfmadd231ps zmm0,zmm1,zmm8
  a7076e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a70775:	18 
  a70776:	62 d1 74 48 59 c1    	vmulps zmm0,zmm1,zmm9
  a7077c:	62 f2 3d 48 bc c4    	vfnmadd231ps zmm0,zmm8,zmm4
  a70782:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a70789:	16 
  a7078a:	62 f1 b5 40 14 64 24 	vunpcklpd zmm4,zmm25,ZMMWORD PTR [rsp+0x1c0]
  a70791:	07 
  a70792:	62 91 c5 40 14 c3    	vunpcklpd zmm0,zmm23,zmm27
  a70798:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a7079f:	14 
  a707a0:	62 81 d5 40 14 f8    	vunpcklpd zmm23,zmm21,zmm24
  a707a6:	62 01 dd 40 14 c7    	vunpcklpd zmm24,zmm20,zmm31
  a707ac:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a707b2:	62 f2 05 48 7f c8    	vpermt2ps zmm1,zmm15,zmm0
  a707b8:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a707be:	62 12 05 48 7f c0    	vpermt2ps zmm8,zmm15,zmm24
  a707c4:	62 71 7c 48 10 49 1b 	vmovups zmm9,ZMMWORD PTR [rcx+0x6c0]
  a707cb:	62 e1 7c 48 10 49 1a 	vmovups zmm17,ZMMWORD PTR [rcx+0x680]
  a707d2:	62 21 3c 48 59 c9    	vmulps zmm25,zmm8,zmm17
  a707d8:	62 42 75 48 b8 c9    	vfmadd231ps zmm25,zmm1,zmm9
  a707de:	62 a1 74 48 59 e9    	vmulps zmm21,zmm1,zmm17
  a707e4:	62 c2 35 48 bc e8    	vfnmadd231ps zmm21,zmm9,zmm8
  a707ea:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a707f1:	17 
  a707f2:	62 f1 fd 48 14 4c 24 	vunpcklpd zmm1,zmm0,ZMMWORD PTR [rsp+0x540]
  a707f9:	15 
  a707fa:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a70801:	07 
  a70802:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a70808:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a7080f:	17 
  a70810:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x840]
  a70817:	21 
  a70818:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x800]
  a7081f:	20 
  a70820:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a70827:	15 
  a70828:	62 61 cd 48 14 e5    	vunpcklpd zmm28,zmm6,zmm5
  a7082e:	62 f2 05 48 7f c8    	vpermt2ps zmm1,zmm15,zmm0
  a70834:	62 92 05 48 7f d4    	vpermt2ps zmm2,zmm15,zmm28
  a7083a:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a70841:	62 f1 7c 48 10 71 03 	vmovups zmm6,ZMMWORD PTR [rcx+0xc0]
  a70848:	62 e1 6c 48 59 e5    	vmulps zmm20,zmm2,zmm5
  a7084e:	62 e2 75 48 b8 e6    	vfmadd231ps zmm20,zmm1,zmm6
  a70854:	62 71 74 48 59 c5    	vmulps zmm8,zmm1,zmm5
  a7085a:	62 72 4d 48 bc c2    	vfnmadd231ps zmm8,zmm6,zmm2
  a70860:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a70867:	03 
  a70868:	62 f2 2d 48 7f 54 24 	vpermt2ps zmm2,zmm10,ZMMWORD PTR [rsp+0x80]
  a7086f:	02 
  a70870:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a70877:	03 
  a70878:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a7087f:	11 
  a70880:	62 f2 2d 48 7f 4c 24 	vpermt2ps zmm1,zmm10,ZMMWORD PTR [rsp+0x140]
  a70887:	05 
  a70888:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a7088f:	11 
  a70890:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a70897:	0f 
  a70898:	62 f2 2d 48 7f 6c 24 	vpermt2ps zmm5,zmm10,ZMMWORD PTR [rsp+0x4c0]
  a7089f:	13 
  a708a0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm5
  a708a7:	0f 
  a708a8:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x340]
  a708af:	0d 
  a708b0:	62 72 2d 48 7f 4c 24 	vpermt2ps zmm9,zmm10,ZMMWORD PTR [rsp+0x180]
  a708b7:	06 
  a708b8:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm9
  a708bf:	0d 
  a708c0:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x300]
  a708c7:	0c 
  a708c8:	62 72 2d 48 7f 5c 24 	vpermt2ps zmm11,zmm10,ZMMWORD PTR [rsp+0x100]
  a708cf:	04 
  a708d0:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm11
  a708d7:	0c 
  a708d8:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x400]
  a708df:	10 
  a708e0:	62 f2 2d 48 7f 74 24 	vpermt2ps zmm6,zmm10,ZMMWORD PTR [rsp+0x380]
  a708e7:	0e 
  a708e8:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm6
  a708ef:	10 
  a708f0:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x2c0]
  a708f7:	0b 
  a708f8:	62 e2 2d 48 7f 4c 24 	vpermt2ps zmm17,zmm10,ZMMWORD PTR [rsp+0x7c0]
  a708ff:	1f 
  a70900:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm17
  a70907:	0b 
  a70908:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a7090f:	0a 
  a70910:	62 f2 2d 48 7f 44 24 	vpermt2ps zmm0,zmm10,ZMMWORD PTR [rsp+0x240]
  a70917:	09 
  a70918:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a7091f:	0a 
  a70920:	62 f1 ed 48 14 d1    	vunpcklpd zmm2,zmm2,zmm1
  a70926:	62 61 d5 48 14 fe    	vunpcklpd zmm31,zmm5,zmm6
  a7092c:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a70932:	62 f1 7c 48 28 2d c4 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6564c4]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a70939:	64 65 ff 
  a7093c:	62 92 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm31
  a70942:	62 51 b5 48 14 eb    	vunpcklpd zmm13,zmm9,zmm11
  a70948:	62 61 f5 40 14 f0    	vunpcklpd zmm30,zmm17,zmm0
  a7094e:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a70954:	62 92 55 48 7f f6    	vpermt2ps zmm6,zmm5,zmm30
  a7095a:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a70960:	62 71 7c 48 10 59 11 	vmovups zmm11,ZMMWORD PTR [rcx+0x440]
  a70967:	62 f1 7c 48 10 69 10 	vmovups zmm5,ZMMWORD PTR [rcx+0x400]
  a7096e:	62 71 4c 48 59 cd    	vmulps zmm9,zmm6,zmm5
  a70974:	62 52 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm11
  a7097a:	62 f1 74 48 59 ed    	vmulps zmm5,zmm1,zmm5
  a70980:	62 f2 25 48 bc ee    	vfnmadd231ps zmm5,zmm11,zmm6
  a70986:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a7098d:	12 
  a7098e:	62 71 f5 48 14 5c 24 	vunpcklpd zmm11,zmm1,ZMMWORD PTR [rsp+0x40]
  a70995:	01 
  a70996:	62 d1 cd 40 14 f6    	vunpcklpd zmm6,zmm22,zmm14
  a7099c:	62 a1 ad 40 14 cb    	vunpcklpd zmm17,zmm26,zmm19
  a709a2:	62 41 95 40 14 dc    	vunpcklpd zmm27,zmm29,zmm12
  a709a8:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a709ae:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a709b4:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a709ba:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a709c0:	62 82 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm27
  a709c6:	62 71 7c 48 10 51 09 	vmovups zmm10,ZMMWORD PTR [rcx+0x240]
  a709cd:	62 e1 7c 48 10 59 08 	vmovups zmm19,ZMMWORD PTR [rcx+0x200]
  a709d4:	62 b1 74 40 59 cb    	vmulps zmm1,zmm17,zmm19
  a709da:	62 d2 25 48 b8 ca    	vfmadd231ps zmm1,zmm11,zmm10
  a709e0:	62 31 24 48 59 db    	vmulps zmm11,zmm11,zmm19
  a709e6:	62 32 2d 48 bc d9    	vfnmadd231ps zmm11,zmm10,zmm17
  a709ec:	62 b2 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm16
  a709f2:	62 b2 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm18
  a709f8:	62 71 7c 48 10 51 0d 	vmovups zmm10,ZMMWORD PTR [rcx+0x340]
  a709ff:	62 e1 7c 48 10 41 0c 	vmovups zmm16,ZMMWORD PTR [rcx+0x300]
  a70a06:	62 a1 44 48 59 c8    	vmulps zmm17,zmm7,zmm16
  a70a0c:	62 c2 65 48 bc ca    	vfnmadd231ps zmm17,zmm3,zmm10
  a70a12:	62 a1 64 48 59 d0    	vmulps zmm18,zmm3,zmm16
  a70a18:	62 e2 2d 48 b8 d7    	vfmadd231ps zmm18,zmm10,zmm7
  a70a1e:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x680]
  a70a25:	1a 
  a70a26:	62 e2 05 48 7f 44 24 	vpermt2ps zmm16,zmm15,ZMMWORD PTR [rsp+0x640]
  a70a2d:	19 
  a70a2e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x740]
  a70a35:	1d 
  a70a36:	62 72 05 48 7f 54 24 	vpermt2ps zmm10,zmm15,ZMMWORD PTR [rsp+0x700]
  a70a3d:	1c 
  a70a3e:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a70a45:	62 f1 7c 48 10 59 06 	vmovups zmm3,ZMMWORD PTR [rcx+0x180]
  a70a4c:	62 61 2c 48 59 d3    	vmulps zmm26,zmm10,zmm3
  a70a52:	62 62 7d 40 bc d0    	vfnmadd231ps zmm26,zmm16,zmm0
  a70a58:	62 e1 7c 40 59 c3    	vmulps zmm16,zmm16,zmm3
  a70a5e:	62 c2 7d 48 b8 c2    	vfmadd231ps zmm16,zmm0,zmm10
  a70a64:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a70a6a:	62 82 4d 40 7f f8    	vpermt2ps zmm23,zmm22,zmm24
  a70a70:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x500]
  a70a77:	14 
  a70a78:	62 f1 7c 48 10 41 19 	vmovups zmm0,ZMMWORD PTR [rcx+0x640]
  a70a7f:	62 f1 7c 48 10 59 18 	vmovups zmm3,ZMMWORD PTR [rcx+0x600]
  a70a86:	62 61 5c 48 59 eb    	vmulps zmm29,zmm4,zmm3
  a70a8c:	62 62 45 40 bc e8    	vfnmadd231ps zmm29,zmm23,zmm0
  a70a92:	62 f1 44 40 59 fb    	vmulps zmm7,zmm23,zmm3
  a70a98:	62 f2 7d 48 b8 fc    	vfmadd231ps zmm7,zmm0,zmm4
  a70a9e:	62 72 05 48 7f e6    	vpermt2ps zmm12,zmm15,zmm6
  a70aa4:	62 12 05 48 7f f3    	vpermt2ps zmm14,zmm15,zmm27
  a70aaa:	62 f1 7c 48 10 41 0b 	vmovups zmm0,ZMMWORD PTR [rcx+0x2c0]
  a70ab1:	62 f1 7c 48 10 59 0a 	vmovups zmm3,ZMMWORD PTR [rcx+0x280]
  a70ab8:	62 f1 0c 48 59 e3    	vmulps zmm4,zmm14,zmm3
  a70abe:	62 f2 1d 48 b8 e0    	vfmadd231ps zmm4,zmm12,zmm0
  a70ac4:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a70acb:	01 
  a70acc:	62 f1 1c 48 59 db    	vmulps zmm3,zmm12,zmm3
  a70ad2:	62 d2 7d 48 bc de    	vfnmadd231ps zmm3,zmm0,zmm14
  a70ad8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a70adf:	06 
  a70ae0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a70ae7:	03 
  a70ae8:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x440]
  a70aef:	11 
  a70af0:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x3c0]
  a70af7:	0f 
  a70af8:	62 f1 e5 48 15 5c 24 	vunpckhpd zmm3,zmm3,ZMMWORD PTR [rsp+0x400]
  a70aff:	10 
  a70b00:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x340]
  a70b07:	0d 
  a70b08:	62 71 dd 48 15 64 24 	vunpckhpd zmm12,zmm4,ZMMWORD PTR [rsp+0x300]
  a70b0f:	0c 
  a70b10:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x2c0]
  a70b17:	0b 
  a70b18:	62 f1 dd 48 15 64 24 	vunpckhpd zmm4,zmm4,ZMMWORD PTR [rsp+0x280]
  a70b1f:	0a 
  a70b20:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a70b26:	62 72 05 48 7f f3    	vpermt2ps zmm14,zmm15,zmm3
  a70b2c:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a70b32:	62 e2 05 48 7f dc    	vpermt2ps zmm19,zmm15,zmm4
  a70b38:	62 e1 7c 48 10 71 17 	vmovups zmm22,ZMMWORD PTR [rcx+0x5c0]
  a70b3f:	62 e1 7c 48 10 79 16 	vmovups zmm23,ZMMWORD PTR [rcx+0x580]
  a70b46:	62 21 64 40 59 df    	vmulps zmm27,zmm19,zmm23
  a70b4c:	62 22 0d 48 b8 de    	vfmadd231ps zmm27,zmm14,zmm22
  a70b52:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a70b58:	62 32 4d 40 bc f3    	vfnmadd231ps zmm14,zmm22,zmm19
  a70b5e:	62 12 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm30
  a70b64:	62 92 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm31
  a70b6a:	62 e1 7c 48 10 59 13 	vmovups zmm19,ZMMWORD PTR [rcx+0x4c0]
  a70b71:	62 e1 7c 48 10 71 12 	vmovups zmm22,ZMMWORD PTR [rcx+0x480]
  a70b78:	62 21 6c 48 59 fe    	vmulps zmm31,zmm2,zmm22
  a70b7e:	62 22 15 48 bc fb    	vfnmadd231ps zmm31,zmm13,zmm19
  a70b84:	62 a1 14 48 59 fe    	vmulps zmm23,zmm13,zmm22
  a70b8a:	62 e2 65 40 b8 fa    	vfmadd231ps zmm23,zmm19,zmm2
  a70b90:	62 f2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm3
  a70b96:	62 72 2d 48 7f e4    	vpermt2ps zmm12,zmm10,zmm4
  a70b9c:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a70ba3:	62 f1 7c 48 10 61 14 	vmovups zmm4,ZMMWORD PTR [rcx+0x500]
  a70baa:	62 f1 1c 48 59 f4    	vmulps zmm6,zmm12,zmm4
  a70bb0:	62 f2 7d 48 b8 f2    	vfmadd231ps zmm6,zmm0,zmm2
  a70bb6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a70bbd:	04 
  a70bbe:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a70bc4:	62 d2 6d 48 bc c4    	vfnmadd231ps zmm0,zmm2,zmm12
  a70bca:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a70bd1:	12 
  a70bd2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x540]
  a70bd9:	15 
  a70bda:	62 92 2d 48 7f e4    	vpermt2ps zmm4,zmm10,zmm28
  a70be0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x880]
  a70be7:	22 
  a70be8:	62 e1 0c 48 5c d8    	vsubps zmm19,zmm14,zmm0
  a70bee:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a70bf4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a70bfb:	05 
  a70bfc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a70c03:	08 
  a70c04:	62 61 54 48 5c c0    	vsubps zmm24,zmm5,zmm0
  a70c0a:	62 f1 54 48 58 c0    	vaddps zmm0,zmm5,zmm0
  a70c10:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a70c17:	13 
  a70c18:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a70c1f:	1e 
  a70c20:	62 71 34 48 58 f0    	vaddps zmm14,zmm9,zmm0
  a70c26:	62 61 34 48 5c f0    	vsubps zmm30,zmm9,zmm0
  a70c2c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a70c33:	1b 
  a70c34:	62 71 24 40 58 e0    	vaddps zmm12,zmm27,zmm0
  a70c3a:	62 61 24 40 5c d8    	vsubps zmm27,zmm27,zmm0
  a70c40:	62 d1 3c 48 5c d3    	vsubps zmm2,zmm8,zmm11
  a70c46:	62 d1 3c 48 58 c3    	vaddps zmm0,zmm8,zmm11
  a70c4c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a70c53:	03 
  a70c54:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a70c5b:	16 
  a70c5c:	62 71 54 40 5c c0    	vsubps zmm8,zmm21,zmm0
  a70c62:	62 f1 54 40 58 c0    	vaddps zmm0,zmm21,zmm0
  a70c68:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a70c6f:	11 
  a70c70:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a70c77:	18 
  a70c78:	62 f1 34 40 58 e8    	vaddps zmm5,zmm25,zmm0
  a70c7e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a70c85:	02 
  a70c86:	62 f1 34 40 5c c0    	vsubps zmm0,zmm25,zmm0
  a70c8c:	62 e1 5c 40 58 f1    	vaddps zmm22,zmm20,zmm1
  a70c92:	62 61 5c 40 5c c9    	vsubps zmm25,zmm20,zmm1
  a70c98:	62 81 74 40 5c ef    	vsubps zmm21,zmm17,zmm31
  a70c9e:	62 11 74 40 58 ef    	vaddps zmm13,zmm17,zmm31
  a70ca4:	62 91 2c 40 5c cd    	vsubps zmm1,zmm26,zmm29
  a70caa:	62 11 2c 40 58 dd    	vaddps zmm11,zmm26,zmm29
  a70cb0:	62 61 7c 40 58 ff    	vaddps zmm31,zmm16,zmm7
  a70cb6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a70cbd:	07 
  a70cbe:	62 f2 2d 48 7f 74 24 	vpermt2ps zmm6,zmm10,ZMMWORD PTR [rsp+0x5c0]
  a70cc5:	17 
  a70cc6:	62 f2 7d 48 18 1d 88 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff604a88]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a70ccd:	4a 60 ff 
  a70cd0:	62 e1 6c 48 59 e3    	vmulps zmm20,zmm2,zmm3
  a70cd6:	62 71 7c 40 5c cf    	vsubps zmm9,zmm16,zmm7
  a70cdc:	62 31 6c 40 58 d7    	vaddps zmm10,zmm18,zmm23
  a70ce2:	62 a1 6c 40 5c c7    	vsubps zmm16,zmm18,zmm23
  a70ce8:	62 f2 7d 48 18 2d ae 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6046ae]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a70cef:	46 60 ff 
  a70cf2:	62 e2 3d 48 b8 e5    	vfmadd231ps zmm20,zmm8,zmm5
  a70cf8:	62 e1 34 40 59 d3    	vmulps zmm18,zmm25,zmm3
  a70cfe:	62 e1 3c 48 59 fb    	vmulps zmm23,zmm8,zmm3
  a70d04:	62 e2 55 48 bc fa    	vfnmadd231ps zmm23,zmm5,zmm2
  a70d0a:	62 61 64 40 59 d3    	vmulps zmm26,zmm19,zmm3
  a70d10:	62 e2 7d 48 b8 d5    	vfmadd231ps zmm18,zmm0,zmm5
  a70d16:	62 71 7c 48 59 c3    	vmulps zmm8,zmm0,zmm3
  a70d1c:	62 12 55 48 bc c1    	vfnmadd231ps zmm8,zmm5,zmm25
  a70d22:	62 62 3d 40 b8 d5    	vfmadd231ps zmm26,zmm24,zmm5
  a70d28:	62 f1 74 48 59 d3    	vmulps zmm2,zmm1,zmm3
  a70d2e:	62 b2 55 48 bc d5    	vfnmadd231ps zmm2,zmm5,zmm21
  a70d34:	62 71 54 40 59 fb    	vmulps zmm15,zmm21,zmm3
  a70d3a:	62 72 75 48 b8 fd    	vfmadd231ps zmm15,zmm1,zmm5
  a70d40:	62 61 24 40 59 eb    	vmulps zmm29,zmm27,zmm3
  a70d46:	62 62 0d 40 b8 ed    	vfmadd231ps zmm29,zmm30,zmm5
  a70d4c:	62 f1 3c 40 59 cb    	vmulps zmm1,zmm24,zmm3
  a70d52:	62 b2 55 48 bc cb    	vfnmadd231ps zmm1,zmm5,zmm19
  a70d58:	62 61 7c 40 59 e3    	vmulps zmm28,zmm16,zmm3
  a70d5e:	62 62 35 48 b8 e5    	vfmadd231ps zmm28,zmm9,zmm5
  a70d64:	62 61 0c 40 59 cb    	vmulps zmm25,zmm30,zmm3
  a70d6a:	62 02 55 48 bc cb    	vfnmadd231ps zmm25,zmm5,zmm27
  a70d70:	62 f2 7d 48 18 3d ca 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6048ca]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a70d77:	48 60 ff 
  a70d7a:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a70d80:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a70d86:	62 e2 05 40 ac dc    	vfnmadd213ps zmm19,zmm31,zmm4
  a70d8c:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm31
  a70d93:	1b 
  a70d94:	62 61 34 48 59 c3    	vmulps zmm24,zmm9,zmm3
  a70d9a:	62 f2 7d 48 18 25 44 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff604944]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a70da1:	49 60 ff 
  a70da4:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a70daa:	62 e2 2d 48 b8 dc    	vfmadd231ps zmm19,zmm10,zmm4
  a70db0:	62 22 55 48 bc c0    	vfnmadd231ps zmm24,zmm5,zmm16
  a70db6:	62 b1 6c 48 58 db    	vaddps zmm3,zmm2,zmm19
  a70dbc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a70dc3:	07 
  a70dc4:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a70dca:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm2
  a70dd1:	0f 
  a70dd2:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a70dd8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a70ddf:	01 
  a70de0:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a70de6:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm14
  a70ded:	08 
  a70dee:	62 f2 0d 48 ac d3    	vfnmadd213ps zmm2,zmm14,zmm3
  a70df4:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm12
  a70dfb:	1a 
  a70dfc:	62 f2 1d 48 b8 d4    	vfmadd231ps zmm2,zmm12,zmm4
  a70e02:	62 f1 6c 48 58 e9    	vaddps zmm5,zmm2,zmm1
  a70e08:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm5
  a70e0f:	1d 
  a70e10:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a70e16:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a70e1d:	0e 
  a70e1e:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a70e24:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x100]
  a70e2b:	04 
  a70e2c:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x80]
  a70e33:	02 
  a70e34:	62 d2 65 40 ac ce    	vfnmadd213ps zmm1,zmm19,zmm14
  a70e3a:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a70e40:	62 f2 4d 40 b8 cc    	vfmadd231ps zmm1,zmm22,zmm4
  a70e46:	62 b1 74 48 58 d7    	vaddps zmm2,zmm1,zmm23
  a70e4c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm2
  a70e53:	1c 
  a70e54:	62 b1 74 48 5c cf    	vsubps zmm1,zmm1,zmm23
  a70e5a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a70e61:	0c 
  a70e62:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a70e68:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a70e6e:	62 f2 25 48 ac ce    	vfnmadd213ps zmm1,zmm11,zmm6
  a70e74:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a70e7a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm13
  a70e81:	19 
  a70e82:	62 f2 15 48 b8 cc    	vfmadd231ps zmm1,zmm13,zmm4
  a70e88:	62 91 74 48 5c d0    	vsubps zmm2,zmm1,zmm24
  a70e8e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a70e95:	10 
  a70e96:	62 91 74 48 58 c8    	vaddps zmm1,zmm1,zmm24
  a70e9c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a70ea3:	0d 
  a70ea4:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a70eaa:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x480]
  a70eb1:	12 
  a70eb2:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x440]
  a70eb9:	11 
  a70eba:	62 d2 4d 40 ac ca    	vfnmadd213ps zmm1,zmm22,zmm10
  a70ec0:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0xc0]
  a70ec7:	03 
  a70ec8:	62 f2 25 48 b8 cc    	vfmadd231ps zmm1,zmm11,zmm4
  a70ece:	62 41 74 48 5c d8    	vsubps zmm27,zmm1,zmm8
  a70ed4:	62 d1 74 48 58 c8    	vaddps zmm1,zmm1,zmm8
  a70eda:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a70ee1:	0b 
  a70ee2:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a70ee8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a70eef:	06 
  a70ef0:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x4c0]
  a70ef7:	13 
  a70ef8:	62 f2 15 48 ac ca    	vfnmadd213ps zmm1,zmm13,zmm2
  a70efe:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a70f05:	05 
  a70f06:	62 f2 55 48 b8 cc    	vfmadd231ps zmm1,zmm5,zmm4
  a70f0c:	62 81 74 48 5c e9    	vsubps zmm21,zmm1,zmm25
  a70f12:	62 91 74 48 58 c9    	vaddps zmm1,zmm1,zmm25
  a70f18:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a70f1f:	0a 
  a70f20:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a70f26:	62 f2 7d 40 a8 cb    	vfmadd213ps zmm1,zmm16,zmm3
  a70f2c:	62 f2 1d 48 bc cf    	vfnmadd231ps zmm1,zmm12,zmm7
  a70f32:	62 11 74 48 58 c2    	vaddps zmm8,zmm1,zmm26
  a70f38:	62 01 74 48 5c d2    	vsubps zmm26,zmm1,zmm26
  a70f3e:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a70f44:	62 d2 65 40 a8 ce    	vfmadd213ps zmm1,zmm19,zmm14
  a70f4a:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a70f50:	62 f2 0d 40 bc cf    	vfnmadd231ps zmm1,zmm30,zmm7
  a70f56:	62 b1 74 48 58 dc    	vaddps zmm3,zmm1,zmm20
  a70f5c:	62 21 74 48 5c cc    	vsubps zmm25,zmm1,zmm20
  a70f62:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a70f68:	62 a2 05 40 a8 e1    	vfmadd213ps zmm20,zmm31,zmm17
  a70f6e:	62 e2 7d 48 bc e7    	vfnmadd231ps zmm20,zmm0,zmm7
  a70f74:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a70f7a:	62 31 04 48 58 e4    	vaddps zmm12,zmm15,zmm20
  a70f80:	62 d1 5c 40 5c c7    	vsubps zmm0,zmm20,zmm15
  a70f86:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a70f8d:	1e 
  a70f8e:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a70f94:	62 f2 15 48 a8 c2    	vfmadd213ps zmm0,zmm13,zmm2
  a70f9a:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a70fa0:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a70fa6:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a70fac:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a70fb2:	62 91 7c 48 5c cd    	vsubps zmm1,zmm0,zmm29
  a70fb8:	62 91 7c 48 58 ed    	vaddps zmm5,zmm0,zmm29
  a70fbe:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a70fc4:	62 42 4d 40 a8 ea    	vfmadd213ps zmm29,zmm22,zmm10
  a70fca:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a70fd0:	62 62 25 48 bc ef    	vfnmadd231ps zmm29,zmm11,zmm7
  a70fd6:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a70fdc:	62 b1 14 40 5c c2    	vsubps zmm0,zmm29,zmm18
  a70fe2:	62 b1 14 40 58 d2    	vaddps zmm2,zmm29,zmm18
  a70fe8:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a70fee:	62 e2 45 40 a8 d6    	vfmadd213ps zmm18,zmm23,zmm6
  a70ff4:	62 f1 7c 48 28 e6    	vmovaps zmm4,zmm6
  a70ffa:	62 e2 35 48 bc d7    	vfnmadd231ps zmm18,zmm9,zmm7
  a71000:	62 11 6c 40 5c cc    	vsubps zmm9,zmm18,zmm28
  a71006:	62 01 6c 40 58 ec    	vaddps zmm29,zmm18,zmm28
  a7100c:	62 f1 74 48 5c f0    	vsubps zmm6,zmm1,zmm0
  a71012:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm6
  a71019:	09 
  a7101a:	62 71 74 48 58 d0    	vaddps zmm10,zmm1,zmm0
  a71020:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a71027:	01 
  a71028:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x200]
  a7102f:	08 
  a71030:	62 f1 74 48 58 44 24 	vaddps zmm0,zmm1,ZMMWORD PTR [rsp+0x680]
  a71037:	1a 
  a71038:	62 f1 3c 48 58 f3    	vaddps zmm6,zmm8,zmm3
  a7103e:	62 f1 3c 48 5c cb    	vsubps zmm1,zmm8,zmm3
  a71044:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a7104b:	08 
  a7104c:	62 f1 3c 40 58 5c 24 	vaddps zmm3,zmm24,ZMMWORD PTR [rsp+0x80]
  a71053:	02 
  a71054:	62 91 64 48 58 de    	vaddps zmm3,zmm3,zmm30
  a7105a:	62 11 54 40 5c fb    	vsubps zmm15,zmm21,zmm27
  a71060:	62 01 54 40 58 e3    	vaddps zmm28,zmm21,zmm27
  a71066:	62 71 74 40 58 44 24 	vaddps zmm8,zmm17,ZMMWORD PTR [rsp+0x6c0]
  a7106d:	1b 
  a7106e:	62 41 04 40 58 f0    	vaddps zmm30,zmm31,zmm8
  a71074:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x740]
  a7107b:	1d 
  a7107c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x700]
  a71083:	1c 
  a71084:	62 61 74 48 58 df    	vaddps zmm27,zmm1,zmm7
  a7108a:	62 e1 74 48 5c d7    	vsubps zmm18,zmm1,zmm7
  a71090:	62 31 64 40 58 dc    	vaddps zmm11,zmm19,zmm20
  a71096:	62 31 24 48 58 d8    	vaddps zmm11,zmm11,zmm16
  a7109c:	62 f1 54 48 5c ca    	vsubps zmm1,zmm5,zmm2
  a710a2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a710a9:	05 
  a710aa:	62 61 54 48 58 fa    	vaddps zmm31,zmm5,zmm2
  a710b0:	62 b1 14 48 58 d6    	vaddps zmm2,zmm13,zmm22
  a710b6:	62 d1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm14
  a710bc:	62 91 2c 40 58 f9    	vaddps zmm7,zmm26,zmm25
  a710c2:	62 91 2c 40 5c c9    	vsubps zmm1,zmm26,zmm25
  a710c8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a710cf:	06 
  a710d0:	62 71 24 48 5c c2    	vsubps zmm8,zmm11,zmm2
  a710d6:	62 61 24 48 58 d2    	vaddps zmm26,zmm11,zmm2
  a710dc:	62 b1 5c 48 58 d7    	vaddps zmm2,zmm4,zmm23
  a710e2:	62 f2 7d 48 18 0d 74 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff604374]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a710e9:	43 60 ff 
  a710ec:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a710f2:	62 71 6c 48 58 5c 24 	vaddps zmm11,zmm2,ZMMWORD PTR [rsp+0x640]
  a710f9:	19 
  a710fa:	62 71 7c 48 58 f3    	vaddps zmm14,zmm0,zmm3
  a71100:	62 f1 7c 48 5c d3    	vsubps zmm2,zmm0,zmm3
  a71106:	62 d2 4d 48 ac ec    	vfnmadd213ps zmm5,zmm6,zmm12
  a7110c:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a71112:	62 61 1c 48 58 ce    	vaddps zmm25,zmm12,zmm6
  a71118:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a7111f:	0e 
  a71120:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a71127:	0c 
  a71128:	62 71 7c 48 58 e6    	vaddps zmm12,zmm0,zmm6
  a7112e:	62 d2 2d 48 ac e1    	vfnmadd213ps zmm4,zmm10,zmm9
  a71134:	62 d1 34 48 58 da    	vaddps zmm3,zmm9,zmm10
  a7113a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a71141:	02 
  a71142:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x3c0]
  a71149:	0f 
  a7114a:	62 51 64 48 58 cc    	vaddps zmm9,zmm3,zmm12
  a71150:	62 72 75 48 ac e3    	vfnmadd213ps zmm12,zmm1,zmm3
  a71156:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a7115d:	0b 
  a7115e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x280]
  a71165:	0a 
  a71166:	62 e1 2c 48 58 eb    	vaddps zmm21,zmm10,zmm3
  a7116c:	62 e1 2c 48 5c cb    	vsubps zmm17,zmm10,zmm3
  a71172:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x340]
  a71179:	0d 
  a7117a:	62 31 64 48 58 d5    	vaddps zmm10,zmm3,zmm21
  a71180:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm10
  a71187:	01 
  a71188:	62 e2 75 48 ac eb    	vfnmadd213ps zmm21,zmm1,zmm3
  a7118e:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a71194:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x1c0]
  a7119b:	07 
  a7119c:	62 52 25 40 ac d5    	vfnmadd213ps zmm10,zmm27,zmm13
  a711a2:	62 e1 7c 48 5c fe    	vsubps zmm23,zmm0,zmm6
  a711a8:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a711ae:	62 f2 7d 48 18 1d 1c 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60411c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a711b5:	41 60 ff 
  a711b8:	62 71 04 48 59 fb    	vmulps zmm15,zmm15,zmm3
  a711be:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a711c5:	1e 
  a711c6:	62 62 45 48 ac c0    	vfnmadd213ps zmm24,zmm7,zmm0
  a711cc:	62 e1 7c 48 58 df    	vaddps zmm19,zmm0,zmm7
  a711d2:	62 d1 2c 48 5c f7    	vsubps zmm6,zmm10,zmm15
  a711d8:	62 51 2c 48 58 d7    	vaddps zmm10,zmm10,zmm15
  a711de:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a711e4:	62 82 05 40 ac e5    	vfnmadd213ps zmm20,zmm31,zmm29
  a711ea:	62 91 14 40 58 ff    	vaddps zmm7,zmm29,zmm31
  a711f0:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a711f6:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x400]
  a711fd:	10 
  a711fe:	62 32 1d 40 ac f8    	vfnmadd213ps zmm15,zmm28,zmm16
  a71204:	62 e1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm3
  a7120a:	62 b1 04 48 58 c2    	vaddps zmm0,zmm15,zmm18
  a71210:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a71217:	04 
  a71218:	62 a1 04 48 5c d2    	vsubps zmm18,zmm15,zmm18
  a7121e:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a71224:	62 12 0d 48 ac fe    	vfnmadd213ps zmm15,zmm14,zmm30
  a7122a:	62 71 3c 48 59 c3    	vmulps zmm8,zmm8,zmm3
  a71230:	62 41 04 48 5c e8    	vsubps zmm29,zmm15,zmm8
  a71236:	62 51 04 48 58 c0    	vaddps zmm8,zmm15,zmm8
  a7123c:	62 d2 2d 40 ac cb    	vfnmadd213ps zmm1,zmm26,zmm11
  a71242:	62 f1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm3
  a71248:	62 61 74 48 58 fa    	vaddps zmm31,zmm1,zmm2
  a7124e:	62 f1 74 48 5c d2    	vsubps zmm2,zmm1,zmm2
  a71254:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp+0x240]
  a7125b:	09 
  a7125c:	62 71 54 48 58 f8    	vaddps zmm15,zmm5,zmm0
  a71262:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a71268:	62 f1 64 48 59 4c 24 	vmulps zmm1,zmm3,ZMMWORD PTR [rsp+0x200]
  a7126f:	08 
  a71270:	62 f1 5c 48 5c e9    	vsubps zmm5,zmm4,zmm1
  a71276:	62 f1 5c 48 58 c9    	vaddps zmm1,zmm4,zmm1
  a7127c:	62 91 14 48 58 e3    	vaddps zmm4,zmm13,zmm27
  a71282:	62 11 7c 40 58 ec    	vaddps zmm13,zmm16,zmm28
  a71288:	62 e1 74 40 59 c3    	vmulps zmm16,zmm17,zmm3
  a7128e:	62 a1 1c 48 5c c8    	vsubps zmm17,zmm12,zmm16
  a71294:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a7129a:	62 e1 44 40 59 c3    	vmulps zmm16,zmm23,zmm3
  a712a0:	62 a1 54 40 58 f8    	vaddps zmm23,zmm21,zmm16
  a712a6:	62 a1 54 40 5c c0    	vsubps zmm16,zmm21,zmm16
  a712ac:	62 e1 64 48 59 6c 24 	vmulps zmm21,zmm3,ZMMWORD PTR [rsp+0x140]
  a712b3:	05 
  a712b4:	62 51 0c 40 58 f6    	vaddps zmm14,zmm30,zmm14
  a712ba:	62 21 3c 40 58 dd    	vaddps zmm27,zmm24,zmm21
  a712c0:	62 a1 3c 40 5c ed    	vsubps zmm21,zmm24,zmm21
  a712c6:	62 e1 64 48 59 74 24 	vmulps zmm22,zmm3,ZMMWORD PTR [rsp+0x180]
  a712cd:	06 
  a712ce:	62 11 24 48 58 da    	vaddps zmm11,zmm11,zmm26
  a712d4:	62 21 5c 40 5c c6    	vsubps zmm24,zmm20,zmm22
  a712da:	62 a1 5c 40 58 e6    	vaddps zmm20,zmm20,zmm22
  a712e0:	62 f1 7c 48 28 1d d6 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6235d6]        # 948c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21d70>
  a712e7:	35 62 ff 
  a712ea:	62 52 65 48 7f f3    	vpermt2ps zmm14,zmm3,zmm11
  a712f0:	62 71 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm14
  a712f7:	62 a2 65 48 7f ec    	vpermt2ps zmm21,zmm3,zmm20
  a712fd:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm21
  a71304:	01 
  a71305:	62 32 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm16
  a7130b:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm12
  a71312:	02 
  a71313:	62 d2 65 48 7f e5    	vpermt2ps zmm4,zmm3,zmm13
  a71319:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm4
  a71320:	03 
  a71321:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a71327:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm0
  a7132e:	04 
  a7132f:	62 72 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm2
  a71335:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm8
  a7133c:	05 
  a7133d:	62 e2 65 48 7f df    	vpermt2ps zmm19,zmm3,zmm7
  a71343:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  a7134a:	06 
  a7134b:	62 a2 65 48 7f cf    	vpermt2ps zmm17,zmm3,zmm23
  a71351:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm17
  a71358:	07 
  a71359:	62 32 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm18
  a7135f:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm10
  a71366:	08 
  a71367:	62 62 65 48 7f 4c 24 	vpermt2ps zmm25,zmm3,ZMMWORD PTR [rsp+0x80]
  a7136e:	02 
  a7136f:	62 61 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm25
  a71376:	09 
  a71377:	62 02 65 48 7f ef    	vpermt2ps zmm29,zmm3,zmm31
  a7137d:	62 61 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm29
  a71384:	0a 
  a71385:	62 02 65 48 7f d8    	vpermt2ps zmm27,zmm3,zmm24
  a7138b:	62 61 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm27
  a71392:	0b 
  a71393:	62 72 65 48 7f 4c 24 	vpermt2ps zmm9,zmm3,ZMMWORD PTR [rsp+0x40]
  a7139a:	01 
  a7139b:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm9
  a713a2:	0c 
  a713a3:	62 f2 65 48 7f 74 24 	vpermt2ps zmm6,zmm3,ZMMWORD PTR [rsp+0x100]
  a713aa:	04 
  a713ab:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm6
  a713b2:	0d 
  a713b3:	62 72 65 48 7f fd    	vpermt2ps zmm15,zmm3,zmm5
  a713b9:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm15
  a713c0:	0e 
  a713c1:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a713c8:	48 39 d0             	cmp    rax,rdx
  a713cb:	0f 85 df e9 ff ff    	jne    a6fdb0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a713d1:	48 89 ec             	mov    rsp,rbp
  a713d4:	5d                   	pop    rbp
  a713d5:	c5 f8 77             	vzeroupper
  a713d8:	c3                   	ret
