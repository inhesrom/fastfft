
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a53ec0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a53ec0:	48 81 ec 08 0b 00 00 	sub    rsp,0xb08
  a53ec7:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a53ece:	31 d2                	xor    edx,edx
  a53ed0:	41 b0 7f             	mov    r8b,0x7f
  a53ed3:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a53ed8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a53edf:	00 
  a53ee0:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a53ee7:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a53eed:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a53ef3:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a53efa:	10 
  a53efb:	c4 e2 79 18 54 17 68 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x68]
  a53f02:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a53f08:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a53f0f:	30 
  a53f10:	c5 fb 10 54 17 70    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x70]
  a53f16:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a53f1c:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a53f23:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a53f29:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a53f2f:	62 f1 7c 48 28 2d c7 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff63eec7]        # 92e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x202b0>
  a53f36:	ee 63 ff 
  a53f39:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a53f3f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a53f46:	ff 
  a53f47:	62 71 7c 48 28 05 ef 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63eeef]        # 92e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x202f0>
  a53f4e:	ee 63 ff 
  a53f51:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a53f57:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a53f5e:	08 
  a53f5f:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x78]
  a53f66:	78 00 00 00 
  a53f6a:	c5 f8 10 84 17 d8 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xd8]
  a53f71:	00 00 
  a53f73:	c4 e3 79 21 84 17 dc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a53f7a:	00 00 00 10 
  a53f7e:	c4 e2 79 18 8c 17 e0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0xe0]
  a53f85:	00 00 00 
  a53f88:	c5 fc 10 94 17 b8 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xb8]
  a53f8f:	00 00 
  a53f91:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a53f97:	c4 e3 79 21 84 17 e4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a53f9e:	00 00 00 30 
  a53fa2:	c5 fb 10 8c 17 e8 00 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0xe8]
  a53fa9:	00 00 
  a53fab:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a53fb1:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a53fb8:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a53fbe:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a53fc4:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a53fca:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a53fd1:	02 
  a53fd2:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a53fd8:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a53fdf:	05 
  a53fe0:	c5 f8 10 84 17 50 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x150]
  a53fe7:	00 00 
  a53fe9:	c4 e3 79 21 84 17 54 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x154],0x10
  a53ff0:	01 00 00 10 
  a53ff4:	c4 e2 79 18 8c 17 58 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x158]
  a53ffb:	01 00 00 
  a53ffe:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a54005:	f0 00 00 00 
  a54009:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5400f:	c4 e3 79 21 84 17 5c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a54016:	01 00 00 30 
  a5401a:	c5 fc 10 8c 17 30 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x130]
  a54021:	00 00 
  a54023:	c5 fb 10 9c 17 60 01 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x160]
  a5402a:	00 00 
  a5402c:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a54032:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a54039:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5403f:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a54045:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a5404b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a54052:	09 
  a54053:	62 f2 3d 48 7f d0    	vpermt2ps zmm2,zmm8,zmm0
  a54059:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x168]
  a54060:	68 01 00 00 
  a54064:	c5 f8 10 84 17 c8 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a5406b:	00 00 
  a5406d:	c4 e3 79 21 84 17 cc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a54074:	01 00 00 10 
  a54078:	c5 fc 10 8c 17 a8 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a5407f:	00 00 
  a54081:	c4 e2 79 18 9c 17 d0 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x1d0]
  a54088:	01 00 00 
  a5408b:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a54091:	c4 e3 79 21 84 17 d4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a54098:	01 00 00 30 
  a5409c:	c5 fb 10 9c 17 d8 01 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x1d8]
  a540a3:	00 00 
  a540a5:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a540ab:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a540b2:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a540b8:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a540be:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a540c4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a540cb:	fe 
  a540cc:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a540d2:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a540d9:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a540e0:	e0 01 00 00 
  a540e4:	c5 fc 10 84 17 20 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x220]
  a540eb:	00 00 
  a540ed:	c5 f8 10 8c 17 40 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x240]
  a540f4:	00 00 
  a540f6:	c4 e3 71 21 8c 17 44 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x244],0x10
  a540fd:	02 00 00 10 
  a54101:	c4 e2 79 18 9c 17 48 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x248]
  a54108:	02 00 00 
  a5410b:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a54111:	c4 e3 71 21 8c 17 4c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a54118:	02 00 00 30 
  a5411c:	c5 fb 10 9c 17 50 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x250]
  a54123:	00 00 
  a54125:	c4 e3 75 18 cb 01    	vinsertf128 ymm1,ymm1,xmm3,0x1
  a5412b:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a54132:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a54138:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a5413e:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a54144:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a5414a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a54151:	01 
  a54152:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x258]
  a54159:	58 02 00 00 
  a5415d:	c5 f8 10 84 17 b8 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a54164:	00 00 
  a54166:	c4 e3 79 21 84 17 bc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a5416d:	02 00 00 10 
  a54171:	c4 e2 79 18 8c 17 c0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x2c0]
  a54178:	02 00 00 
  a5417b:	c5 fc 10 a4 17 98 02 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x298]
  a54182:	00 00 
  a54184:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5418a:	c4 e3 79 21 84 17 c4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a54191:	02 00 00 30 
  a54195:	c5 fb 10 8c 17 c8 02 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x2c8]
  a5419c:	00 00 
  a5419e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a541a4:	62 f3 dd 48 1a c0 01 	vinsertf64x4 zmm0,zmm4,ymm0,0x1
  a541ab:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a541b1:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a541b7:	62 f2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm0
  a541bd:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a541c3:	c5 f8 10 84 17 30 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x330]
  a541ca:	00 00 
  a541cc:	c4 e3 79 21 84 17 34 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x334],0x10
  a541d3:	03 00 00 10 
  a541d7:	c4 e2 79 18 8c 17 38 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x338]
  a541de:	03 00 00 
  a541e1:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a541e8:	d0 02 00 00 
  a541ec:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a541f2:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a541f9:	03 00 00 30 
  a541fd:	c5 fc 10 8c 17 10 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x310]
  a54204:	00 00 
  a54206:	c5 fb 10 bc 17 40 03 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x340]
  a5420d:	00 00 
  a5420f:	c4 e3 7d 18 c7 01    	vinsertf128 ymm0,ymm0,xmm7,0x1
  a54215:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5421c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a54222:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a54228:	62 72 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm0
  a5422e:	62 72 3d 48 7f e0    	vpermt2ps zmm12,zmm8,zmm0
  a54234:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x348]
  a5423b:	48 03 00 00 
  a5423f:	c5 f8 10 84 17 a8 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a54246:	00 00 
  a54248:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a5424f:	03 00 00 10 
  a54253:	c5 fc 10 8c 17 88 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x388]
  a5425a:	00 00 
  a5425c:	c4 62 79 18 ac 17 b0 	vbroadcastss xmm13,DWORD PTR [rdi+rdx*1+0x3b0]
  a54263:	03 00 00 
  a54266:	c4 e3 11 0c c0 03    	vblendps xmm0,xmm13,xmm0,0x3
  a5426c:	c4 e3 79 21 84 17 b4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a54273:	03 00 00 30 
  a54277:	c5 7b 10 ac 17 b8 03 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x3b8]
  a5427e:	00 00 
  a54280:	c4 c3 7d 18 c5 01    	vinsertf128 ymm0,ymm0,xmm13,0x1
  a54286:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a5428d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a54293:	62 01 7c 48 28 e2    	vmovaps zmm28,zmm26
  a54299:	62 62 55 48 7f e0    	vpermt2ps zmm28,zmm5,zmm0
  a5429f:	62 62 3d 48 7f d0    	vpermt2ps zmm26,zmm8,zmm0
  a542a5:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a542ac:	0f 
  a542ad:	c5 fc 10 84 17 00 04 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x400]
  a542b4:	00 00 
  a542b6:	c5 f8 10 8c 17 20 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x420]
  a542bd:	00 00 
  a542bf:	c4 e3 71 21 8c 17 24 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x424],0x10
  a542c6:	04 00 00 10 
  a542ca:	c4 62 79 18 b4 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x428]
  a542d1:	04 00 00 
  a542d4:	c4 e3 09 0c c9 03    	vblendps xmm1,xmm14,xmm1,0x3
  a542da:	c4 e3 71 21 8c 17 2c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a542e1:	04 00 00 30 
  a542e5:	c5 7b 10 b4 17 30 04 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x430]
  a542ec:	00 00 
  a542ee:	c4 c3 75 18 ce 01    	vinsertf128 ymm1,ymm1,xmm14,0x1
  a542f4:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a542fb:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a54301:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a54307:	62 72 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm0
  a5430d:	62 e2 3d 48 7f c8    	vpermt2ps zmm17,zmm8,zmm0
  a54313:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x438]
  a5431a:	38 04 00 00 
  a5431e:	c5 f8 10 84 17 98 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x498]
  a54325:	00 00 
  a54327:	c4 e3 79 21 84 17 9c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a5432e:	04 00 00 10 
  a54332:	c4 e2 79 18 8c 17 a0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x4a0]
  a54339:	04 00 00 
  a5433c:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x478]
  a54343:	78 04 00 00 
  a54347:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5434d:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a54354:	04 00 00 30 
  a54358:	c5 fb 10 8c 17 a8 04 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x4a8]
  a5435f:	00 00 
  a54361:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a54367:	62 f3 ed 40 1a c0 01 	vinsertf64x4 zmm0,zmm18,ymm0,0x1
  a5436e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a54374:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a5437a:	62 e2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm0
  a54380:	62 e2 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm0
  a54386:	c5 f8 10 84 17 10 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x510]
  a5438d:	00 00 
  a5438f:	c4 e3 79 21 84 17 14 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x514],0x10
  a54396:	05 00 00 10 
  a5439a:	c4 e2 79 18 8c 17 18 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x518]
  a543a1:	05 00 00 
  a543a4:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a543ab:	b0 04 00 00 
  a543af:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a543b5:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a543bc:	05 00 00 30 
  a543c0:	c5 fc 10 8c 17 f0 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a543c7:	00 00 
  a543c9:	62 e1 ff 08 10 9c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x520]
  a543d0:	20 05 00 00 
  a543d4:	62 b3 7d 28 18 c3 01 	vinsertf32x4 ymm0,ymm0,xmm19,0x1
  a543db:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a543e2:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a543e8:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a543ee:	62 62 55 48 7f c0    	vpermt2ps zmm24,zmm5,zmm0
  a543f4:	62 e2 3d 48 7f f8    	vpermt2ps zmm23,zmm8,zmm0
  a543fa:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x528]
  a54401:	28 05 00 00 
  a54405:	c5 f8 10 84 17 88 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x588]
  a5440c:	00 00 
  a5440e:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a54415:	05 00 00 10 
  a54419:	c5 fc 10 8c 17 68 05 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x568]
  a54420:	00 00 
  a54422:	c4 62 79 18 94 17 90 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x590]
  a54429:	05 00 00 
  a5442c:	c4 e3 29 0c c0 03    	vblendps xmm0,xmm10,xmm0,0x3
  a54432:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x594],0x30
  a54439:	05 00 00 30 
  a5443d:	c5 7b 10 94 17 98 05 	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x598]
  a54444:	00 00 
  a54446:	c4 c3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm10,0x1
  a5444c:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a54453:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a54459:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a5445f:	62 e2 55 48 7f f0    	vpermt2ps zmm22,zmm5,zmm0
  a54465:	62 e2 3d 48 7f e0    	vpermt2ps zmm20,zmm8,zmm0
  a5446b:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a54472:	a0 05 00 00 
  a54476:	c5 fc 10 84 17 e0 05 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a5447d:	00 00 
  a5447f:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a54486:	00 00 
  a54488:	c4 e3 71 21 8c 17 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a5448f:	06 00 00 10 
  a54493:	c4 62 79 18 94 17 08 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x608]
  a5449a:	06 00 00 
  a5449d:	c4 e3 29 0c c9 03    	vblendps xmm1,xmm10,xmm1,0x3
  a544a3:	c4 e3 71 21 8c 17 0c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a544aa:	06 00 00 30 
  a544ae:	c5 7b 10 94 17 10 06 	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x610]
  a544b5:	00 00 
  a544b7:	c4 c3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm10,0x1
  a544bd:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a544c4:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a544ca:	62 21 7c 48 28 ed    	vmovaps zmm29,zmm21
  a544d0:	62 62 55 48 7f e8    	vpermt2ps zmm29,zmm5,zmm0
  a544d6:	62 e2 3d 48 7f e8    	vpermt2ps zmm21,zmm8,zmm0
  a544dc:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x618]
  a544e3:	18 06 00 00 
  a544e7:	c5 f8 10 84 17 78 06 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x678]
  a544ee:	00 00 
  a544f0:	c4 e3 79 21 84 17 7c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a544f7:	06 00 00 10 
  a544fb:	c4 e2 79 18 8c 17 80 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x680]
  a54502:	06 00 00 
  a54505:	c5 7c 10 94 17 58 06 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x658]
  a5450c:	00 00 
  a5450e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a54514:	c4 e3 79 21 84 17 84 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x684],0x30
  a5451b:	06 00 00 30 
  a5451f:	c5 fb 10 8c 17 88 06 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x688]
  a54526:	00 00 
  a54528:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5452e:	62 f3 ad 48 1a c0 01 	vinsertf64x4 zmm0,zmm10,ymm0,0x1
  a54535:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a5453b:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a54541:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a54547:	62 62 3d 48 7f c8    	vpermt2ps zmm25,zmm8,zmm0
  a5454d:	c5 f8 10 84 17 f0 06 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x6f0]
  a54554:	00 00 
  a54556:	c4 e3 79 21 84 17 f4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6f4],0x10
  a5455d:	06 00 00 10 
  a54561:	c4 e2 79 18 8c 17 f8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x6f8]
  a54568:	06 00 00 
  a5456b:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x690]
  a54572:	90 06 00 00 
  a54576:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5457c:	c4 e3 79 21 84 17 fc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6fc],0x30
  a54583:	06 00 00 30 
  a54587:	c5 fc 10 8c 17 d0 06 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x6d0]
  a5458e:	00 00 
  a54590:	c5 7b 10 94 17 00 07 	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x700]
  a54597:	00 00 
  a54599:	c4 c3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm10,0x1
  a5459f:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a545a6:	62 f2 fd c9 88 c8    	vexpandpd zmm1{k1}{z},zmm0
  a545ac:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a545b2:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a545b8:	c5 78 10 94 17 68 07 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x768]
  a545bf:	00 00 
  a545c1:	c4 63 29 21 94 17 6c 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0x76c],0x10
  a545c8:	07 00 00 10 
  a545cc:	c4 62 79 18 8c 17 70 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x770]
  a545d3:	07 00 00 
  a545d6:	62 62 3d 48 7f f1    	vpermt2ps zmm30,zmm8,zmm1
  a545dc:	c4 c3 31 0c ca 03    	vblendps xmm1,xmm9,xmm10,0x3
  a545e2:	c4 e3 71 21 8c 17 74 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x774],0x30
  a545e9:	07 00 00 30 
  a545ed:	c5 7b 10 8c 17 78 07 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x778]
  a545f4:	00 00 
  a545f6:	c4 c3 75 18 c9 01    	vinsertf128 ymm1,ymm1,xmm9,0x1
  a545fc:	c5 7c 10 8c 17 48 07 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x748]
  a54603:	00 00 
  a54605:	62 f3 b5 48 1a c9 01 	vinsertf64x4 zmm1,zmm9,ymm1,0x1
  a5460c:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x708]
  a54613:	08 07 00 00 
  a54617:	62 72 fd c9 88 c9    	vexpandpd zmm9{k1}{z},zmm1
  a5461d:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a54623:	62 d2 55 48 7f c9    	vpermt2ps zmm1,zmm5,zmm9
  a54629:	62 42 3d 48 7f f9    	vpermt2ps zmm31,zmm8,zmm9
  a5462f:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x200]
  a54636:	08 
  a54637:	62 b1 54 48 58 d9    	vaddps zmm3,zmm5,zmm17
  a5463d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a54644:	0e 
  a54645:	62 b1 54 48 5c d9    	vsubps zmm3,zmm5,zmm17
  a5464b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a54652:	08 
  a54653:	62 91 4c 48 58 dd    	vaddps zmm3,zmm6,zmm29
  a54659:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a54660:	0d 
  a54661:	62 91 4c 48 5c dd    	vsubps zmm3,zmm6,zmm29
  a54667:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a5466e:	07 
  a5466f:	62 b1 6c 48 58 df    	vaddps zmm3,zmm2,zmm23
  a54675:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a5467c:	06 
  a5467d:	62 b1 6c 48 5c ff    	vsubps zmm7,zmm2,zmm23
  a54683:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a5468a:	09 
  a5468b:	62 81 6c 48 58 f8    	vaddps zmm23,zmm2,zmm24
  a54691:	62 01 6c 48 5c c0    	vsubps zmm24,zmm2,zmm24
  a54697:	62 61 04 48 58 e8    	vaddps zmm29,zmm15,zmm0
  a5469d:	62 f1 04 48 5c d8    	vsubps zmm3,zmm15,zmm0
  a546a3:	62 81 1c 48 58 ce    	vaddps zmm17,zmm12,zmm30
  a546a9:	62 91 1c 48 5c d6    	vsubps zmm2,zmm12,zmm30
  a546af:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a546b6:	05 
  a546b7:	62 21 7c 48 58 f0    	vaddps zmm30,zmm0,zmm16
  a546bd:	62 b1 7c 48 5c f0    	vsubps zmm6,zmm0,zmm16
  a546c3:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a546ca:	04 
  a546cb:	62 11 5c 48 58 cb    	vaddps zmm9,zmm4,zmm27
  a546d1:	62 11 5c 48 5c d3    	vsubps zmm10,zmm4,zmm27
  a546d7:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm10
  a546de:	05 
  a546df:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a546e6:	02 
  a546e7:	62 21 5c 48 58 da    	vaddps zmm27,zmm4,zmm18
  a546ed:	62 31 5c 48 5c fa    	vsubps zmm15,zmm4,zmm18
  a546f3:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm15
  a546fa:	0c 
  a546fb:	62 11 24 48 58 c1    	vaddps zmm8,zmm11,zmm25
  a54701:	62 c1 34 40 5c db    	vsubps zmm19,zmm25,zmm11
  a54707:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a5470e:	62 21 5c 48 58 cc    	vaddps zmm25,zmm4,zmm20
  a54714:	62 b1 5c 48 5c ec    	vsubps zmm5,zmm4,zmm20
  a5471a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a54721:	0a 
  a54722:	62 71 1c 40 58 e9    	vaddps zmm13,zmm28,zmm1
  a54728:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a5472e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a54735:	0b 
  a54736:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a5473d:	fe 
  a5473e:	62 31 74 48 58 e6    	vaddps zmm12,zmm1,zmm22
  a54744:	62 21 74 48 5c e6    	vsubps zmm28,zmm1,zmm22
  a5474a:	62 91 2c 40 58 cf    	vaddps zmm1,zmm26,zmm31
  a54750:	62 01 04 40 5c d2    	vsubps zmm26,zmm31,zmm26
  a54756:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a5475d:	ff 
  a5475e:	62 c1 5c 48 58 c6    	vaddps zmm16,zmm4,zmm14
  a54764:	62 c1 5c 48 5c d6    	vsubps zmm18,zmm4,zmm14
  a5476a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a54771:	01 
  a54772:	62 31 5c 48 58 dd    	vaddps zmm11,zmm4,zmm21
  a54778:	62 e1 54 40 5c e4    	vsubps zmm20,zmm21,zmm4
  a5477e:	62 91 44 48 58 e0    	vaddps zmm4,zmm7,zmm24
  a54784:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a5478b:	fe 
  a5478c:	62 f1 3c 40 5c e7    	vsubps zmm4,zmm24,zmm7
  a54792:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a54799:	03 
  a5479a:	62 f1 64 48 5c e2    	vsubps zmm4,zmm3,zmm2
  a547a0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a547a7:	01 
  a547a8:	62 e1 6c 48 58 f3    	vaddps zmm22,zmm2,zmm3
  a547ae:	62 d1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm10
  a547b4:	62 d1 64 40 58 df    	vaddps zmm3,zmm19,zmm15
  a547ba:	62 f2 7d 48 18 25 a0 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff620ea0]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a547c1:	0e 62 ff 
  a547c4:	62 71 64 48 59 f4    	vmulps zmm14,zmm3,zmm4
  a547ca:	62 f2 7d 48 18 35 2c 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff620f2c]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a547d1:	0f 62 ff 
  a547d4:	62 72 6d 48 b8 f6    	vfmadd231ps zmm14,zmm2,zmm6
  a547da:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a547e0:	62 f2 5d 48 bc da    	vfnmadd231ps zmm3,zmm4,zmm2
  a547e6:	62 e1 54 48 58 e8    	vaddps zmm21,zmm5,zmm0
  a547ec:	62 91 2c 40 58 fc    	vaddps zmm7,zmm26,zmm28
  a547f2:	62 71 44 48 59 d6    	vmulps zmm10,zmm7,zmm6
  a547f8:	62 72 55 40 b8 d4    	vfmadd231ps zmm10,zmm21,zmm4
  a547fe:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a54804:	62 b2 4d 48 bc fd    	vfnmadd231ps zmm7,zmm6,zmm21
  a5480a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a54811:	0e 
  a54812:	62 41 7c 48 58 fb    	vaddps zmm31,zmm0,zmm11
  a54818:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a5481e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a54825:	ff 
  a54826:	62 01 44 40 58 c5    	vaddps zmm24,zmm23,zmm29
  a5482c:	62 91 44 40 5c c5    	vsubps zmm0,zmm23,zmm29
  a54832:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a54839:	02 
  a5483a:	62 51 0c 40 58 f8    	vaddps zmm15,zmm30,zmm8
  a54840:	62 51 0c 40 5c c0    	vsubps zmm8,zmm30,zmm8
  a54846:	62 41 24 40 58 e9    	vaddps zmm29,zmm27,zmm9
  a5484c:	62 51 24 40 5c c9    	vsubps zmm9,zmm27,zmm9
  a54852:	62 41 1c 48 58 dd    	vaddps zmm27,zmm12,zmm13
  a54858:	62 d1 1c 48 5c ed    	vsubps zmm5,zmm12,zmm13
  a5485e:	62 61 34 40 58 f1    	vaddps zmm30,zmm25,zmm1
  a54864:	62 f1 34 40 5c c9    	vsubps zmm1,zmm25,zmm1
  a5486a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a54871:	0d 
  a54872:	62 61 7c 40 58 c8    	vaddps zmm25,zmm16,zmm0
  a54878:	62 e1 7c 40 5c e8    	vsubps zmm21,zmm16,zmm0
  a5487e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a54885:	06 
  a54886:	62 31 7c 48 58 d9    	vaddps zmm11,zmm0,zmm17
  a5488c:	62 e1 74 40 5c c8    	vsubps zmm17,zmm17,zmm0
  a54892:	62 d1 3c 48 58 c1    	vaddps zmm0,zmm8,zmm9
  a54898:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a5489f:	62 d1 34 48 5c c0    	vsubps zmm0,zmm9,zmm8
  a548a5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a548ac:	0e 
  a548ad:	62 f1 54 48 5c c1    	vsubps zmm0,zmm5,zmm1
  a548b3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a548ba:	09 
  a548bb:	62 71 74 48 58 c5    	vaddps zmm8,zmm1,zmm5
  a548c1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a548c8:	08 
  a548c9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a548d0:	07 
  a548d1:	62 71 7c 48 58 c9    	vaddps zmm9,zmm0,zmm1
  a548d7:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a548dd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a548e4:	08 
  a548e5:	62 f2 7d 48 18 15 ad 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff620aad]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a548ec:	0a 62 ff 
  a548ef:	62 f1 6c 48 59 44 24 	vmulps zmm0,zmm2,ZMMWORD PTR [rsp+0xc0]
  a548f6:	03 
  a548f7:	62 e1 4c 40 59 f2    	vmulps zmm22,zmm22,zmm2
  a548fd:	62 b1 7c 48 5c ee    	vsubps zmm5,zmm0,zmm22
  a54903:	62 b1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm22
  a54909:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a54910:	07 
  a54911:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a54918:	04 
  a54919:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x140]
  a54920:	05 
  a54921:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a54928:	0c 
  a54929:	62 a1 74 48 5c db    	vsubps zmm19,zmm1,zmm19
  a5492f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a54936:	0a 
  a54937:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a5493e:	0b 
  a5493f:	62 11 1c 40 5c ea    	vsubps zmm13,zmm28,zmm26
  a54945:	62 a1 5c 40 58 c2    	vaddps zmm16,zmm20,zmm18
  a5494b:	62 b1 6c 40 5c cc    	vsubps zmm1,zmm18,zmm20
  a54951:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a54958:	0d 
  a54959:	62 e1 6c 48 59 54 24 	vmulps zmm18,zmm2,ZMMWORD PTR [rsp-0x80]
  a54960:	fe 
  a54961:	62 e1 6c 48 59 64 24 	vmulps zmm20,zmm2,ZMMWORD PTR [rsp+0x40]
  a54968:	01 
  a54969:	62 21 6c 40 58 e4    	vaddps zmm28,zmm18,zmm20
  a5496f:	62 a1 5c 40 5c fa    	vsubps zmm23,zmm20,zmm18
  a54975:	62 e1 64 40 59 e6    	vmulps zmm20,zmm19,zmm6
  a5497b:	62 e2 7d 48 b8 e4    	vfmadd231ps zmm20,zmm0,zmm4
  a54981:	62 e1 64 40 59 dc    	vmulps zmm19,zmm19,zmm4
  a54987:	62 e2 4d 48 bc d8    	vfnmadd231ps zmm19,zmm6,zmm0
  a5498d:	62 f1 14 48 59 cc    	vmulps zmm1,zmm13,zmm4
  a54993:	62 f2 1d 48 b8 ce    	vfmadd231ps zmm1,zmm12,zmm6
  a54999:	62 71 1c 48 59 e4    	vmulps zmm12,zmm12,zmm4
  a5499f:	62 52 4d 48 bc e5    	vfnmadd231ps zmm12,zmm6,zmm13
  a549a5:	62 51 04 40 58 eb    	vaddps zmm13,zmm31,zmm11
  a549ab:	62 d1 04 40 5c c3    	vsubps zmm0,zmm31,zmm11
  a549b1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a549b8:	fe 
  a549b9:	62 01 14 40 58 fb    	vaddps zmm31,zmm29,zmm27
  a549bf:	62 91 14 40 5c c3    	vsubps zmm0,zmm29,zmm27
  a549c5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a549cc:	01 
  a549cd:	62 01 34 40 58 e8    	vaddps zmm29,zmm25,zmm24
  a549d3:	62 91 34 40 5c c0    	vsubps zmm0,zmm25,zmm24
  a549d9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a549e0:	06 
  a549e1:	62 01 04 48 58 ce    	vaddps zmm25,zmm15,zmm30
  a549e7:	62 d1 0c 40 5c c7    	vsubps zmm0,zmm30,zmm15
  a549ed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a549f4:	05 
  a549f5:	62 01 34 48 58 f4    	vaddps zmm30,zmm9,zmm28
  a549fb:	62 01 34 48 5c dc    	vsubps zmm27,zmm9,zmm28
  a54a01:	62 71 64 48 58 cf    	vaddps zmm9,zmm3,zmm7
  a54a07:	62 61 64 48 5c c7    	vsubps zmm24,zmm3,zmm7
  a54a0d:	62 f1 7c 40 58 fd    	vaddps zmm7,zmm16,zmm5
  a54a13:	62 e1 7c 40 5c f5    	vsubps zmm22,zmm16,zmm5
  a54a19:	62 c1 0c 48 58 c2    	vaddps zmm16,zmm14,zmm10
  a54a1f:	62 c1 2c 48 5c d6    	vsubps zmm18,zmm10,zmm14
  a54a25:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a54a2c:	ff 
  a54a2d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a54a34:	02 
  a54a35:	62 71 7c 48 58 d3    	vaddps zmm10,zmm0,zmm3
  a54a3b:	62 71 7c 48 5c f3    	vsubps zmm14,zmm0,zmm3
  a54a41:	62 71 6c 48 59 7c 24 	vmulps zmm15,zmm2,ZMMWORD PTR [rsp+0x380]
  a54a48:	0e 
  a54a49:	62 71 3c 48 59 c2    	vmulps zmm8,zmm8,zmm2
  a54a4f:	62 41 04 48 5c d0    	vsubps zmm26,zmm15,zmm8
  a54a55:	62 51 04 48 58 d8    	vaddps zmm11,zmm15,zmm8
  a54a5b:	62 31 74 40 58 fd    	vaddps zmm15,zmm17,zmm21
  a54a61:	62 a1 54 40 5c e9    	vsubps zmm21,zmm21,zmm17
  a54a67:	62 e1 6c 48 59 0c 24 	vmulps zmm17,zmm2,ZMMWORD PTR [rsp]
  a54a6e:	62 61 6c 48 59 64 24 	vmulps zmm28,zmm2,ZMMWORD PTR [rsp+0x240]
  a54a75:	09 
  a54a76:	62 91 74 40 58 dc    	vaddps zmm3,zmm17,zmm28
  a54a7c:	62 31 1c 40 5c c1    	vsubps zmm8,zmm28,zmm17
  a54a82:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a54a89:	08 
  a54a8a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a54a91:	07 
  a54a92:	62 f1 7c 48 58 ea    	vaddps zmm5,zmm0,zmm2
  a54a98:	62 f1 7c 48 5c f2    	vsubps zmm6,zmm0,zmm2
  a54a9e:	62 d1 64 40 58 e4    	vaddps zmm4,zmm19,zmm12
  a54aa4:	62 51 64 40 5c e4    	vsubps zmm12,zmm19,zmm12
  a54aaa:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a54ab1:	0d 
  a54ab2:	62 b1 7c 48 58 d7    	vaddps zmm2,zmm0,zmm23
  a54ab8:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a54abe:	62 f1 5c 40 5c c1    	vsubps zmm0,zmm20,zmm1
  a54ac4:	62 f1 5c 40 58 c9    	vaddps zmm1,zmm20,zmm1
  a54aca:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a54ad0:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a54ad6:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm25
  a54add:	04 
  a54ade:	62 11 14 40 58 ef    	vaddps zmm13,zmm29,zmm31
  a54ae4:	62 81 14 40 5c cf    	vsubps zmm17,zmm29,zmm31
  a54aea:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm17
  a54af1:	1b 
  a54af2:	62 a1 0c 40 58 d8    	vaddps zmm19,zmm30,zmm16
  a54af8:	62 21 0c 40 5c f0    	vsubps zmm30,zmm30,zmm16
  a54afe:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm30
  a54b05:	03 
  a54b06:	62 41 44 48 58 e9    	vaddps zmm29,zmm7,zmm9
  a54b0c:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a54b12:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm7
  a54b19:	1e 
  a54b1a:	62 e1 2c 48 58 c3    	vaddps zmm16,zmm10,zmm3
  a54b20:	62 71 2c 48 5c d3    	vsubps zmm10,zmm10,zmm3
  a54b26:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm10
  a54b2d:	12 
  a54b2e:	62 91 04 48 58 fa    	vaddps zmm7,zmm15,zmm26
  a54b34:	62 91 04 48 5c da    	vsubps zmm3,zmm15,zmm26
  a54b3a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm3
  a54b41:	1d 
  a54b42:	62 61 54 48 58 e0    	vaddps zmm28,zmm5,zmm0
  a54b48:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a54b4e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a54b55:	10 
  a54b56:	62 f1 6c 48 58 ec    	vaddps zmm5,zmm2,zmm4
  a54b5c:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a54b62:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm2
  a54b69:	1c 
  a54b6a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a54b71:	fe 
  a54b72:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a54b79:	01 
  a54b7a:	62 f1 6c 48 58 dc    	vaddps zmm3,zmm2,zmm4
  a54b80:	62 e1 6c 48 5c cc    	vsubps zmm17,zmm2,zmm4
  a54b86:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm17
  a54b8d:	1a 
  a54b8e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a54b95:	06 
  a54b96:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a54b9d:	05 
  a54b9e:	62 61 5c 48 58 d2    	vaddps zmm26,zmm4,zmm2
  a54ba4:	62 61 6c 48 5c fc    	vsubps zmm31,zmm2,zmm4
  a54baa:	62 11 24 40 58 c8    	vaddps zmm9,zmm27,zmm24
  a54bb0:	62 01 24 40 5c d8    	vsubps zmm27,zmm27,zmm24
  a54bb6:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm27
  a54bbd:	18 
  a54bbe:	62 31 4c 40 58 fa    	vaddps zmm15,zmm22,zmm18
  a54bc4:	62 21 4c 40 5c c2    	vsubps zmm24,zmm22,zmm18
  a54bca:	62 c1 0c 48 58 f3    	vaddps zmm22,zmm14,zmm11
  a54bd0:	62 c1 0c 48 5c d3    	vsubps zmm18,zmm14,zmm11
  a54bd6:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xac0],zmm18
  a54bdd:	2b 
  a54bde:	62 51 54 40 58 d8    	vaddps zmm11,zmm21,zmm8
  a54be4:	62 c1 54 40 5c e8    	vsubps zmm21,zmm21,zmm8
  a54bea:	62 51 4c 48 58 c4    	vaddps zmm8,zmm6,zmm12
  a54bf0:	62 d1 4c 48 5c e4    	vsubps zmm4,zmm6,zmm12
  a54bf6:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xa80],zmm4
  a54bfd:	2a 
  a54bfe:	62 71 44 40 5c f1    	vsubps zmm14,zmm23,zmm1
  a54c04:	62 e1 44 40 58 f9    	vaddps zmm23,zmm23,zmm1
  a54c0a:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm20
  a54c11:	ff 
  a54c12:	62 f1 7c 48 28 15 a4 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6723a4]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a54c19:	23 67 ff 
  a54c1c:	62 82 6d 48 7f e1    	vpermt2ps zmm20,zmm2,zmm25
  a54c22:	62 e1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm20
  a54c29:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a54c2f:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm19
  a54c36:	0c 
  a54c37:	62 92 6d 48 7f f6    	vpermt2ps zmm6,zmm2,zmm30
  a54c3d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm6
  a54c44:	0e 
  a54c45:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a54c4b:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm16
  a54c52:	0b 
  a54c53:	62 52 6d 48 7f e2    	vpermt2ps zmm12,zmm2,zmm10
  a54c59:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a54c5f:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm12
  a54c66:	06 
  a54c67:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm28
  a54c6e:	11 
  a54c6f:	62 62 6d 48 7f e0    	vpermt2ps zmm28,zmm2,zmm0
  a54c75:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a54c7b:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm28
  a54c82:	29 
  a54c83:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm3
  a54c8a:	0f 
  a54c8b:	62 b2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm17
  a54c91:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a54c98:	08 
  a54c99:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm9
  a54ca0:	19 
  a54ca1:	62 12 6d 48 7f cb    	vpermt2ps zmm9,zmm2,zmm27
  a54ca7:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm9
  a54cae:	07 
  a54caf:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a54cb5:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a54cbb:	62 32 6d 48 7f d2    	vpermt2ps zmm10,zmm2,zmm18
  a54cc1:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm10
  a54cc8:	0d 
  a54cc9:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a54ccf:	62 72 6d 48 7f c4    	vpermt2ps zmm8,zmm2,zmm4
  a54cd5:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm8
  a54cdc:	05 
  a54cdd:	62 e1 7c 48 28 05 19 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff672219]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a54ce4:	22 67 ff 
  a54ce7:	62 e2 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm3
  a54ced:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm20
  a54cf4:	17 
  a54cf5:	62 d2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm9
  a54cfb:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm6
  a54d02:	15 
  a54d03:	62 c2 7d 40 7f da    	vpermt2ps zmm19,zmm16,zmm10
  a54d09:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm19
  a54d10:	16 
  a54d11:	62 d2 7d 40 7f c0    	vpermt2ps zmm0,zmm16,zmm8
  a54d17:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a54d1e:	14 
  a54d1f:	62 b1 dd 40 14 cb    	vunpcklpd zmm1,zmm20,zmm19
  a54d25:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a54d2c:	0a 
  a54d2d:	62 f1 cd 48 14 c0    	vunpcklpd zmm0,zmm6,zmm0
  a54d33:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a54d3a:	13 
  a54d3b:	62 71 7c 48 28 0d bb 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6720bb]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a54d42:	20 67 ff 
  a54d45:	62 f2 35 48 7f c8    	vpermt2ps zmm1,zmm9,zmm0
  a54d4b:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a54d51:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm13
  a54d58:	02 
  a54d59:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x6c0]
  a54d60:	1b 
  a54d61:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a54d67:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a54d6d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm3
  a54d74:	28 
  a54d75:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a54d7b:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x780]
  a54d82:	1e 
  a54d83:	62 42 6d 48 7f ed    	vpermt2ps zmm29,zmm2,zmm13
  a54d89:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm29
  a54d90:	26 
  a54d91:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a54d97:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a54d9d:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x740]
  a54da4:	1d 
  a54da5:	62 b2 6d 48 7f dc    	vpermt2ps zmm3,zmm2,zmm20
  a54dab:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a54db1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm3
  a54db8:	24 
  a54db9:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a54dbf:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a54dc5:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x700]
  a54dcc:	1c 
  a54dcd:	62 f2 6d 48 7f de    	vpermt2ps zmm3,zmm2,zmm6
  a54dd3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm3
  a54dda:	22 
  a54ddb:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm26
  a54de2:	fe 
  a54de3:	62 02 6d 48 7f d7    	vpermt2ps zmm26,zmm2,zmm31
  a54de9:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm26
  a54df0:	27 
  a54df1:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a54df7:	62 12 6d 48 7f f8    	vpermt2ps zmm15,zmm2,zmm24
  a54dfd:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm15
  a54e04:	25 
  a54e05:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a54e0b:	62 b1 7c 48 28 e5    	vmovaps zmm4,zmm21
  a54e11:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a54e17:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm11
  a54e1e:	23 
  a54e1f:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a54e25:	62 32 6d 48 7f f7    	vpermt2ps zmm14,zmm2,zmm23
  a54e2b:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm14
  a54e32:	21 
  a54e33:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a54e39:	62 92 7d 40 7f fa    	vpermt2ps zmm7,zmm16,zmm26
  a54e3f:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a54e45:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a54e4b:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a54e51:	62 d2 7d 40 7f eb    	vpermt2ps zmm5,zmm16,zmm11
  a54e57:	62 d2 7d 40 7f de    	vpermt2ps zmm3,zmm16,zmm14
  a54e5d:	62 e1 c5 48 14 d5    	vunpcklpd zmm18,zmm7,zmm5
  a54e63:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm18
  a54e6a:	20 
  a54e6b:	62 f1 bd 48 14 d3    	vunpcklpd zmm2,zmm8,zmm3
  a54e71:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a54e78:	1f 
  a54e79:	62 e2 35 48 7f d2    	vpermt2ps zmm18,zmm9,zmm2
  a54e7f:	62 e1 7c 48 10 69 11 	vmovups zmm21,ZMMWORD PTR [rcx+0x440]
  a54e86:	62 e1 7c 48 10 71 10 	vmovups zmm22,ZMMWORD PTR [rcx+0x400]
  a54e8d:	62 b1 6c 40 59 d6    	vmulps zmm2,zmm18,zmm22
  a54e93:	62 b2 75 48 b8 d5    	vfmadd231ps zmm2,zmm1,zmm21
  a54e99:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a54ea0:	01 
  a54ea1:	62 b1 74 48 59 ce    	vmulps zmm1,zmm1,zmm22
  a54ea7:	62 b2 55 40 bc ca    	vfnmadd231ps zmm1,zmm21,zmm18
  a54ead:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a54eb4:	09 
  a54eb5:	62 f1 7c 48 28 0d c1 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6720c1]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a54ebc:	20 67 ff 
  a54ebf:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a54ec6:	ff 
  a54ec7:	62 72 75 48 7f 4c 24 	vpermt2ps zmm9,zmm1,ZMMWORD PTR [rsp+0x100]
  a54ece:	04 
  a54ecf:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm9
  a54ed6:	ff 
  a54ed7:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x300]
  a54ede:	0c 
  a54edf:	62 72 75 48 7f 5c 24 	vpermt2ps zmm11,zmm1,ZMMWORD PTR [rsp+0xc0]
  a54ee6:	03 
  a54ee7:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x2c0]
  a54eee:	0b 
  a54eef:	62 e2 75 48 7f 54 24 	vpermt2ps zmm18,zmm1,ZMMWORD PTR [rsp+0x480]
  a54ef6:	12 
  a54ef7:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x440]
  a54efe:	11 
  a54eff:	62 62 75 48 7f 6c 24 	vpermt2ps zmm29,zmm1,ZMMWORD PTR [rsp+0x400]
  a54f06:	10 
  a54f07:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a54f0e:	0f 
  a54f0f:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x680]
  a54f16:	1a 
  a54f17:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x640]
  a54f1e:	19 
  a54f1f:	62 62 75 48 7f 54 24 	vpermt2ps zmm26,zmm1,ZMMWORD PTR [rsp+0x600]
  a54f26:	18 
  a54f27:	62 62 75 48 7f 5c 24 	vpermt2ps zmm27,zmm1,ZMMWORD PTR [rsp+0xac0]
  a54f2e:	2b 
  a54f2f:	62 62 75 48 7f 74 24 	vpermt2ps zmm30,zmm1,ZMMWORD PTR [rsp+0xa80]
  a54f36:	2a 
  a54f37:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x80]
  a54f3e:	02 
  a54f3f:	62 e2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm0
  a54f45:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm21
  a54f4c:	02 
  a54f4d:	62 52 75 48 7f d5    	vpermt2ps zmm10,zmm1,zmm13
  a54f53:	62 a2 75 48 7f dc    	vpermt2ps zmm19,zmm1,zmm20
  a54f59:	62 62 75 48 7f ce    	vpermt2ps zmm25,zmm1,zmm6
  a54f5f:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x80]
  a54f66:	fe 
  a54f67:	62 82 75 48 7f f7    	vpermt2ps zmm22,zmm1,zmm31
  a54f6d:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a54f74:	fe 
  a54f75:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a54f7b:	62 02 75 48 7f f8    	vpermt2ps zmm31,zmm1,zmm24
  a54f81:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm31
  a54f88:	11 
  a54f89:	62 01 7c 48 28 c4    	vmovaps zmm24,zmm28
  a54f8f:	62 62 75 48 7f c4    	vpermt2ps zmm24,zmm1,zmm4
  a54f95:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm24
  a54f9c:	10 
  a54f9d:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a54fa3:	62 b2 75 48 7f e7    	vpermt2ps zmm4,zmm1,zmm23
  a54fa9:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a54fb0:	0f 
  a54fb1:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a54fb7:	62 72 7d 40 7f fa    	vpermt2ps zmm15,zmm16,zmm2
  a54fbd:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a54fc3:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a54fc9:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a54fcf:	62 12 7d 40 7f ea    	vpermt2ps zmm13,zmm16,zmm26
  a54fd5:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a54fdb:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a54fe1:	62 12 7d 40 7f f3    	vpermt2ps zmm14,zmm16,zmm27
  a54fe7:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a54fed:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a54ff3:	62 12 7d 40 7f de    	vpermt2ps zmm11,zmm16,zmm30
  a54ff9:	62 51 85 48 15 ce    	vunpckhpd zmm9,zmm15,zmm14
  a54fff:	62 41 95 48 15 db    	vunpckhpd zmm27,zmm13,zmm11
  a55005:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a5500b:	62 f1 7c 48 28 05 eb 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff671deb]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a55012:	1d 67 ff 
  a55015:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a5501b:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a55021:	62 b2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm22
  a55027:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a5502d:	62 c1 7c 48 28 ea    	vmovaps zmm21,zmm10
  a55033:	62 82 7d 40 7f f7    	vpermt2ps zmm22,zmm16,zmm31
  a55039:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a5503f:	62 31 7c 48 28 d3    	vmovaps zmm10,zmm19
  a55045:	62 82 7d 40 7f f8    	vpermt2ps zmm23,zmm16,zmm24
  a5504b:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a55051:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a55057:	62 62 7d 40 7f c4    	vpermt2ps zmm24,zmm16,zmm4
  a5505d:	62 21 cd 48 15 cf    	vunpckhpd zmm25,zmm6,zmm23
  a55063:	62 01 cd 40 15 f8    	vunpckhpd zmm31,zmm22,zmm24
  a55069:	62 81 7c 48 28 d1    	vmovaps zmm18,zmm25
  a5506f:	62 82 7d 48 7f d7    	vpermt2ps zmm18,zmm0,zmm31
  a55075:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a5507c:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a55083:	62 e1 6c 40 59 c0    	vmulps zmm16,zmm18,zmm0
  a55089:	62 e2 5d 40 b8 c1    	vfmadd231ps zmm16,zmm20,zmm1
  a5508f:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm16
  a55096:	04 
  a55097:	62 f1 5c 40 59 c0    	vmulps zmm0,zmm20,zmm0
  a5509d:	62 b2 75 48 bc c2    	vfnmadd231ps zmm0,zmm1,zmm18
  a550a3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a550aa:	0c 
  a550ab:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a550b2:	17 
  a550b3:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x580]
  a550ba:	16 
  a550bb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x540]
  a550c2:	15 
  a550c3:	62 e1 f5 48 15 54 24 	vunpckhpd zmm18,zmm1,ZMMWORD PTR [rsp+0x500]
  a550ca:	14 
  a550cb:	62 f1 c5 48 15 fd    	vunpckhpd zmm7,zmm7,zmm5
  a550d1:	62 e1 bd 48 15 c3    	vunpckhpd zmm16,zmm8,zmm3
  a550d7:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a550dd:	62 f1 7c 48 28 0d 59 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff671d59]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a550e4:	1d 67 ff 
  a550e7:	62 b2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm18
  a550ed:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm7
  a550f4:	12 
  a550f5:	62 b2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm16
  a550fb:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a55102:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a55109:	62 71 44 48 59 c5    	vmulps zmm8,zmm7,zmm5
  a5510f:	62 72 7d 48 b8 c3    	vfmadd231ps zmm8,zmm0,zmm3
  a55115:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm8
  a5511c:	03 
  a5511d:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a55123:	62 f2 65 48 bc c7    	vfnmadd231ps zmm0,zmm3,zmm7
  a55129:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a55130:	0b 
  a55131:	62 e1 7c 48 28 25 05 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff671e05]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a55138:	1e 67 ff 
  a5513b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a55142:	ff 
  a55143:	62 92 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm28
  a55149:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a5514f:	62 92 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm26
  a55155:	62 d2 5d 40 7f d4    	vpermt2ps zmm2,zmm20,zmm12
  a5515b:	62 02 5d 40 7f ee    	vpermt2ps zmm29,zmm20,zmm30
  a55161:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a55168:	62 72 5d 40 7f 64 24 	vpermt2ps zmm12,zmm20,ZMMWORD PTR [rsp+0x200]
  a5516f:	08 
  a55170:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x380]
  a55177:	0e 
  a55178:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x1c0]
  a5517f:	07 
  a55180:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a55187:	06 
  a55188:	62 e2 5d 40 7f 4c 24 	vpermt2ps zmm17,zmm20,ZMMWORD PTR [rsp+0x340]
  a5518f:	0d 
  a55190:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0xa40]
  a55197:	29 
  a55198:	62 62 5d 40 7f 54 24 	vpermt2ps zmm26,zmm20,ZMMWORD PTR [rsp+0x140]
  a5519f:	05 
  a551a0:	62 d1 85 48 14 de    	vunpcklpd zmm3,zmm15,zmm14
  a551a6:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a551ac:	62 61 d5 48 14 e2    	vunpcklpd zmm28,zmm5,zmm2
  a551b2:	62 71 d5 48 15 f2    	vunpckhpd zmm14,zmm5,zmm2
  a551b8:	62 91 c5 48 14 ed    	vunpcklpd zmm5,zmm7,zmm29
  a551be:	62 91 c5 48 15 fd    	vunpckhpd zmm7,zmm7,zmm29
  a551c4:	62 31 9d 48 14 d9    	vunpcklpd zmm11,zmm12,zmm17
  a551ca:	62 31 9d 48 15 f9    	vunpckhpd zmm15,zmm12,zmm17
  a551d0:	62 11 bd 48 14 e2    	vunpcklpd zmm12,zmm8,zmm26
  a551d6:	62 81 bd 48 15 ca    	vunpckhpd zmm17,zmm8,zmm26
  a551dc:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a551e2:	62 61 7c 48 28 15 14 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff671c14]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a551e9:	1c 67 ff 
  a551ec:	62 72 2d 40 7f e8    	vpermt2ps zmm13,zmm26,zmm0
  a551f2:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm13
  a551f9:	08 
  a551fa:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a55200:	62 12 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm27
  a55206:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm9
  a5520d:	07 
  a5520e:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a55214:	62 62 2d 40 7f e5    	vpermt2ps zmm28,zmm26,zmm5
  a5521a:	62 f2 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm5
  a55220:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a55227:	ff 
  a55228:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a5522e:	62 72 2d 40 7f ef    	vpermt2ps zmm13,zmm26,zmm7
  a55234:	62 72 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm7
  a5523a:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x280]
  a55241:	0a 
  a55242:	62 62 75 48 7f 74 24 	vpermt2ps zmm30,zmm1,ZMMWORD PTR [rsp+0x4c0]
  a55249:	13 
  a5524a:	62 b2 2d 40 7f e2    	vpermt2ps zmm4,zmm26,zmm18
  a55250:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a55257:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a5525d:	62 d2 2d 40 7f c4    	vpermt2ps zmm0,zmm26,zmm12
  a55263:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a5526a:	06 
  a5526b:	62 52 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm12
  a55271:	62 32 2d 40 7f f9    	vpermt2ps zmm15,zmm26,zmm17
  a55277:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a5527e:	02 
  a5527f:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp-0x80]
  a55286:	fe 
  a55287:	62 b1 7c 48 28 e5    	vmovaps zmm4,zmm21
  a5528d:	62 f2 5d 40 7f 64 24 	vpermt2ps zmm4,zmm20,ZMMWORD PTR [rsp+0x440]
  a55294:	11 
  a55295:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a5529b:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x400]
  a552a2:	10 
  a552a3:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a552a9:	62 72 5d 40 7f 4c 24 	vpermt2ps zmm9,zmm20,ZMMWORD PTR [rsp+0x3c0]
  a552b0:	0f 
  a552b1:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0xa00]
  a552b8:	28 
  a552b9:	62 e2 5d 40 7f 4c 24 	vpermt2ps zmm17,zmm20,ZMMWORD PTR [rsp+0x9c0]
  a552c0:	27 
  a552c1:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x980]
  a552c8:	26 
  a552c9:	62 e2 5d 40 7f 54 24 	vpermt2ps zmm18,zmm20,ZMMWORD PTR [rsp+0x940]
  a552d0:	25 
  a552d1:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x900]
  a552d8:	24 
  a552d9:	62 62 5d 40 7f 5c 24 	vpermt2ps zmm27,zmm20,ZMMWORD PTR [rsp+0x8c0]
  a552e0:	23 
  a552e1:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x880]
  a552e8:	22 
  a552e9:	62 62 5d 40 7f 6c 24 	vpermt2ps zmm29,zmm20,ZMMWORD PTR [rsp+0x840]
  a552f0:	21 
  a552f1:	62 31 cd 48 14 e7    	vunpcklpd zmm12,zmm6,zmm23
  a552f7:	62 91 cd 40 14 c0    	vunpcklpd zmm0,zmm22,zmm24
  a552fd:	62 f1 ed 48 14 fd    	vunpcklpd zmm7,zmm2,zmm5
  a55303:	62 71 ed 48 15 c5    	vunpckhpd zmm8,zmm2,zmm5
  a55309:	62 d1 dd 48 14 d1    	vunpcklpd zmm2,zmm4,zmm9
  a5530f:	62 d1 dd 48 15 e9    	vunpckhpd zmm5,zmm4,zmm9
  a55315:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a5531b:	62 81 f5 40 14 cb    	vunpcklpd zmm17,zmm17,zmm27
  a55321:	62 11 cd 48 15 d3    	vunpckhpd zmm10,zmm6,zmm27
  a55327:	62 91 ed 40 14 f5    	vunpcklpd zmm6,zmm18,zmm29
  a5532d:	62 81 ed 40 15 d5    	vunpckhpd zmm18,zmm18,zmm29
  a55333:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a55339:	62 72 2d 40 7f c8    	vpermt2ps zmm9,zmm26,zmm0
  a5533f:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm9
  a55346:	0e 
  a55347:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a5534d:	62 02 75 48 7f cf    	vpermt2ps zmm25,zmm1,zmm31
  a55353:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a55359:	62 f2 2d 40 7f c2    	vpermt2ps zmm0,zmm26,zmm2
  a5535f:	62 f2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm2
  a55365:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a5536b:	62 72 2d 40 7f cd    	vpermt2ps zmm9,zmm26,zmm5
  a55371:	62 72 75 48 7f c5    	vpermt2ps zmm8,zmm1,zmm5
  a55377:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x800]
  a5537e:	20 
  a5537f:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a55386:	1f 
  a55387:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x480]
  a5538e:	12 
  a5538f:	62 a2 2d 40 7f e8    	vpermt2ps zmm21,zmm26,zmm16
  a55395:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a5539b:	62 f2 2d 40 7f d6    	vpermt2ps zmm2,zmm26,zmm6
  a553a1:	62 e2 75 48 7f ce    	vpermt2ps zmm17,zmm1,zmm6
  a553a7:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a553ae:	62 32 2d 40 7f d2    	vpermt2ps zmm10,zmm26,zmm18
  a553b4:	62 f1 7c 48 10 69 1c 	vmovups zmm5,ZMMWORD PTR [rcx+0x700]
  a553bb:	62 f1 2c 48 59 f5    	vmulps zmm6,zmm10,zmm5
  a553c1:	62 f2 05 48 b8 f1    	vfmadd231ps zmm6,zmm15,zmm1
  a553c7:	62 f1 04 48 59 ed    	vmulps zmm5,zmm15,zmm5
  a553cd:	62 d2 75 48 bc ea    	vfnmadd231ps zmm5,zmm1,zmm10
  a553d3:	62 f1 7c 48 10 49 1b 	vmovups zmm1,ZMMWORD PTR [rcx+0x6c0]
  a553da:	62 71 7c 48 10 51 1a 	vmovups zmm10,ZMMWORD PTR [rcx+0x680]
  a553e1:	62 51 74 40 59 fa    	vmulps zmm15,zmm17,zmm10
  a553e7:	62 72 25 48 b8 f9    	vfmadd231ps zmm15,zmm11,zmm1
  a553ed:	62 c1 24 48 59 e2    	vmulps zmm20,zmm11,zmm10
  a553f3:	62 a2 75 48 bc e1    	vfnmadd231ps zmm20,zmm1,zmm17
  a553f9:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a55400:	62 71 7c 48 10 59 0e 	vmovups zmm11,ZMMWORD PTR [rcx+0x380]
  a55407:	62 c1 3c 48 59 c3    	vmulps zmm16,zmm8,zmm11
  a5540d:	62 e2 0d 48 b8 c1    	vfmadd231ps zmm16,zmm14,zmm1
  a55413:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a55419:	62 52 75 48 bc f0    	vfnmadd231ps zmm14,zmm1,zmm8
  a5541f:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a55426:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a5542d:	62 61 1c 48 59 d9    	vmulps zmm27,zmm12,zmm1
  a55433:	62 42 65 48 b8 db    	vfmadd231ps zmm27,zmm3,zmm11
  a55439:	62 71 64 48 59 c1    	vmulps zmm8,zmm3,zmm1
  a5543f:	62 52 25 48 bc c4    	vfnmadd231ps zmm8,zmm11,zmm12
  a55445:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a5544c:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a55453:	62 71 7c 48 59 d3    	vmulps zmm10,zmm0,zmm3
  a55459:	62 72 1d 40 b8 d1    	vfmadd231ps zmm10,zmm28,zmm1
  a5545f:	62 71 1c 40 59 db    	vmulps zmm11,zmm28,zmm3
  a55465:	62 72 75 48 bc d8    	vfnmadd231ps zmm11,zmm1,zmm0
  a5546b:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a55472:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a55479:	62 e1 14 48 59 f9    	vmulps zmm23,zmm13,zmm1
  a5547f:	62 e2 35 48 bc f8    	vfnmadd231ps zmm23,zmm9,zmm0
  a55485:	62 61 34 48 59 e1    	vmulps zmm28,zmm9,zmm1
  a5548b:	62 42 7d 48 b8 e5    	vfmadd231ps zmm28,zmm0,zmm13
  a55491:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a55498:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a5549f:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a554a5:	62 61 0c 40 59 f1    	vmulps zmm30,zmm30,zmm1
  a554ab:	62 62 65 40 bc f0    	vfnmadd231ps zmm30,zmm19,zmm0
  a554b1:	62 61 64 40 59 e9    	vmulps zmm29,zmm19,zmm1
  a554b7:	62 62 7d 48 b8 eb    	vfmadd231ps zmm29,zmm0,zmm3
  a554bd:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a554c4:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a554cb:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x1c0]
  a554d2:	07 
  a554d3:	62 61 64 48 59 f8    	vmulps zmm31,zmm3,zmm0
  a554d9:	62 62 35 40 bc f9    	vfnmadd231ps zmm31,zmm25,zmm1
  a554df:	62 f1 34 40 59 c0    	vmulps zmm0,zmm25,zmm0
  a554e5:	62 f2 75 48 b8 c3    	vfmadd231ps zmm0,zmm1,zmm3
  a554eb:	62 f1 7c 48 10 59 19 	vmovups zmm3,ZMMWORD PTR [rcx+0x640]
  a554f2:	62 f1 7c 48 10 49 18 	vmovups zmm1,ZMMWORD PTR [rcx+0x600]
  a554f9:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x180]
  a55500:	06 
  a55501:	62 71 5c 48 59 e1    	vmulps zmm12,zmm4,zmm1
  a55507:	62 72 6d 48 bc e3    	vfnmadd231ps zmm12,zmm2,zmm3
  a5550d:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a55513:	62 f2 65 48 b8 cc    	vfmadd231ps zmm1,zmm3,zmm4
  a55519:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a55520:	62 f1 7c 48 10 59 0a 	vmovups zmm3,ZMMWORD PTR [rcx+0x280]
  a55527:	62 f1 44 48 59 e3    	vmulps zmm4,zmm7,zmm3
  a5552d:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a55534:	ff 
  a55535:	62 f2 35 48 b8 e2    	vfmadd231ps zmm4,zmm9,zmm2
  a5553b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm4
  a55542:	1a 
  a55543:	62 f1 34 48 59 db    	vmulps zmm3,zmm9,zmm3
  a55549:	62 f2 6d 48 bc df    	vfnmadd231ps zmm3,zmm2,zmm7
  a5554f:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a55555:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a5555c:	ff 
  a5555d:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a55564:	62 f1 7c 48 10 59 14 	vmovups zmm3,ZMMWORD PTR [rcx+0x500]
  a5556b:	62 71 54 40 59 cb    	vmulps zmm9,zmm21,zmm3
  a55571:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a55578:	62 72 5d 48 b8 ca    	vfmadd231ps zmm9,zmm4,zmm2
  a5557e:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm9
  a55585:	17 
  a55586:	62 f1 5c 48 59 db    	vmulps zmm3,zmm4,zmm3
  a5558c:	62 b2 6d 48 bc dd    	vfnmadd231ps zmm3,zmm2,zmm21
  a55592:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a55598:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a5559f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a555a6:	03 
  a555a7:	62 e1 5c 48 58 de    	vaddps zmm19,zmm4,zmm6
  a555ad:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a555b4:	0b 
  a555b5:	62 71 6c 48 5c cd    	vsubps zmm9,zmm2,zmm5
  a555bb:	62 f1 6c 48 58 ed    	vaddps zmm5,zmm2,zmm5
  a555c1:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a555c8:	02 
  a555c9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a555d0:	09 
  a555d1:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x300]
  a555d8:	0c 
  a555d9:	62 61 6c 48 5c d3    	vsubps zmm26,zmm2,zmm3
  a555df:	62 f1 6c 48 58 fb    	vaddps zmm7,zmm2,zmm3
  a555e5:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a555ec:	09 
  a555ed:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a555f4:	01 
  a555f5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a555fc:	04 
  a555fd:	62 e1 6c 48 58 cb    	vaddps zmm17,zmm2,zmm3
  a55603:	62 e1 6c 48 5c f3    	vsubps zmm22,zmm2,zmm3
  a55609:	62 d1 24 40 58 d2    	vaddps zmm2,zmm27,zmm10
  a5560f:	62 61 5c 48 5c c6    	vsubps zmm24,zmm4,zmm6
  a55615:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm24
  a5561c:	0a 
  a5561d:	62 c1 3c 48 5c d3    	vsubps zmm18,zmm8,zmm11
  a55623:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a55629:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a55630:	fe 
  a55631:	62 d1 5c 40 5c e6    	vsubps zmm4,zmm20,zmm14
  a55637:	62 d1 5c 40 58 f6    	vaddps zmm6,zmm20,zmm14
  a5563d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a55644:	01 
  a55645:	62 31 04 48 58 c0    	vaddps zmm8,zmm15,zmm16
  a5564b:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a55651:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm15
  a55658:	13 
  a55659:	62 72 7d 48 18 1d 85 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff620085]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a55660:	00 62 ff 
  a55663:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a55669:	62 c2 45 48 a8 e5    	vfmadd213ps zmm20,zmm7,zmm13
  a5566f:	62 62 7d 48 18 0d cb 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff61ffcb]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a55676:	ff 61 ff 
  a55679:	62 82 55 48 bc e1    	vfnmadd231ps zmm20,zmm5,zmm25
  a5567f:	62 51 24 40 5c d2    	vsubps zmm10,zmm27,zmm10
  a55685:	62 72 7d 48 18 35 c9 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6200c9]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5568c:	00 62 ff 
  a5568f:	62 d1 3c 40 59 ee    	vmulps zmm5,zmm24,zmm14
  a55695:	62 62 7d 48 18 1d 01 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff61fd01]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5569c:	fd 61 ff 
  a5569f:	62 92 4d 40 b8 eb    	vfmadd231ps zmm5,zmm22,zmm27
  a556a5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm5
  a556ac:	04 
  a556ad:	62 41 7c 48 28 c3    	vmovaps zmm24,zmm11
  a556b3:	62 22 4d 48 a8 c5    	vfmadd213ps zmm24,zmm6,zmm21
  a556b9:	62 02 65 48 bc c1    	vfnmadd231ps zmm24,zmm3,zmm25
  a556bf:	62 d1 2c 48 59 f6    	vmulps zmm6,zmm10,zmm14
  a556c5:	62 92 05 48 b8 f3    	vfmadd231ps zmm6,zmm15,zmm27
  a556cb:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm6
  a556d2:	03 
  a556d3:	62 f1 5c 40 5c dd    	vsubps zmm3,zmm20,zmm5
  a556d9:	62 f1 3c 40 5c fe    	vsubps zmm7,zmm24,zmm6
  a556df:	62 f1 64 48 5c ef    	vsubps zmm5,zmm3,zmm7
  a556e5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  a556ec:	07 
  a556ed:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a556f3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a556fa:	0d 
  a556fb:	62 91 44 40 5c de    	vsubps zmm3,zmm23,zmm30
  a55701:	62 91 44 40 58 ee    	vaddps zmm5,zmm23,zmm30
  a55707:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm5
  a5570e:	0c 
  a5570f:	62 d1 04 40 5c fc    	vsubps zmm7,zmm31,zmm12
  a55715:	62 d1 04 40 58 ec    	vaddps zmm5,zmm31,zmm12
  a5571b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a55722:	11 
  a55723:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a55729:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm5
  a55730:	0b 
  a55731:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a55737:	62 91 1c 40 58 c5    	vaddps zmm0,zmm28,zmm29
  a5573d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a55744:	12 
  a55745:	62 01 1c 40 5c e5    	vsubps zmm28,zmm28,zmm29
  a5574b:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a55751:	62 41 7c 48 28 eb    	vmovaps zmm29,zmm11
  a55757:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x680]
  a5575e:	1a 
  a5575f:	62 22 75 40 a8 e8    	vfmadd213ps zmm29,zmm17,zmm16
  a55765:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a5576b:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm17
  a55772:	15 
  a55773:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm19
  a5577a:	16 
  a5577b:	62 02 65 40 bc e9    	vfnmadd231ps zmm29,zmm19,zmm25
  a55781:	62 41 34 48 59 f6    	vmulps zmm30,zmm9,zmm14
  a55787:	62 02 2d 40 b8 f3    	vfmadd231ps zmm30,zmm26,zmm27
  a5578d:	62 41 7c 48 28 fb    	vmovaps zmm31,zmm11
  a55793:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x5c0]
  a5579a:	17 
  a5579b:	62 22 3d 48 a8 f9    	vfmadd213ps zmm31,zmm8,zmm17
  a557a1:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a557a7:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm8
  a557ae:	14 
  a557af:	62 02 6d 48 bc f9    	vfnmadd231ps zmm31,zmm2,zmm25
  a557b5:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a557bb:	62 d1 6c 40 59 ee    	vmulps zmm5,zmm18,zmm14
  a557c1:	62 92 5d 48 b8 eb    	vfmadd231ps zmm5,zmm4,zmm27
  a557c7:	62 91 14 40 58 c6    	vaddps zmm0,zmm29,zmm30
  a557cd:	62 71 04 40 58 c5    	vaddps zmm8,zmm31,zmm5
  a557d3:	62 d1 7c 48 58 d0    	vaddps zmm2,zmm0,zmm8
  a557d9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a557e0:	05 
  a557e1:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a557e7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a557ee:	06 
  a557ef:	62 41 2c 40 59 d6    	vmulps zmm26,zmm26,zmm14
  a557f5:	62 42 25 40 bc d1    	vfnmadd231ps zmm26,zmm27,zmm9
  a557fb:	62 51 5c 48 59 e6    	vmulps zmm12,zmm4,zmm14
  a55801:	62 32 25 40 bc e2    	vfnmadd231ps zmm12,zmm27,zmm18
  a55807:	62 51 64 48 59 fe    	vmulps zmm15,zmm3,zmm14
  a5580d:	62 12 45 48 b8 fb    	vfmadd231ps zmm15,zmm7,zmm27
  a55813:	62 d1 44 48 59 fe    	vmulps zmm7,zmm7,zmm14
  a55819:	62 f2 25 40 bc fb    	vfnmadd231ps zmm7,zmm27,zmm3
  a5581f:	62 d1 4c 40 59 e6    	vmulps zmm4,zmm22,zmm14
  a55825:	62 f2 25 40 bc 64 24 	vfnmadd231ps zmm4,zmm27,ZMMWORD PTR [rsp+0x280]
  a5582c:	0a 
  a5582d:	62 71 0c 48 59 44 24 	vmulps zmm8,zmm14,ZMMWORD PTR [rsp+0x4c0]
  a55834:	13 
  a55835:	62 52 25 40 bc c2    	vfnmadd231ps zmm8,zmm27,zmm10
  a5583b:	62 81 7c 48 28 d1    	vmovaps zmm18,zmm25
  a55841:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a55848:	09 
  a55849:	62 e2 7d 48 ac 54 24 	vfnmadd213ps zmm18,zmm0,ZMMWORD PTR [rsp-0x40]
  a55850:	ff 
  a55851:	62 e2 25 48 b8 54 24 	vfmadd231ps zmm18,zmm11,ZMMWORD PTR [rsp+0x80]
  a55858:	02 
  a55859:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a5585f:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a55866:	62 f2 7d 48 9c 54 24 	vfnmadd132ps zmm2,zmm0,ZMMWORD PTR [rsp+0x40]
  a5586d:	01 
  a5586e:	62 f2 25 48 b8 54 24 	vfmadd231ps zmm2,zmm11,ZMMWORD PTR [rsp-0x80]
  a55875:	fe 
  a55876:	62 71 6c 40 5c cc    	vsubps zmm9,zmm18,zmm4
  a5587c:	62 51 6c 48 5c d0    	vsubps zmm10,zmm2,zmm8
  a55882:	62 d1 34 48 5c c2    	vsubps zmm0,zmm9,zmm10
  a55888:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a5588f:	13 
  a55890:	62 d1 34 48 58 c2    	vaddps zmm0,zmm9,zmm10
  a55896:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a5589d:	0a 
  a5589e:	62 51 1c 40 59 de    	vmulps zmm11,zmm28,zmm14
  a558a4:	62 12 4d 48 b8 db    	vfmadd231ps zmm11,zmm6,zmm27
  a558aa:	62 d1 4c 48 59 f6    	vmulps zmm6,zmm6,zmm14
  a558b0:	62 92 25 40 bc f4    	vfnmadd231ps zmm6,zmm27,zmm28
  a558b6:	62 11 7c 48 28 d1    	vmovaps zmm10,zmm25
  a558bc:	62 32 45 40 ac d0    	vfnmadd213ps zmm10,zmm23,zmm16
  a558c2:	62 32 65 40 b8 d5    	vfmadd231ps zmm10,zmm19,zmm21
  a558c8:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a558ce:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a558d4:	62 a2 15 48 ac d9    	vfnmadd213ps zmm19,zmm13,zmm17
  a558da:	62 a2 75 48 b8 dd    	vfmadd231ps zmm19,zmm1,zmm21
  a558e0:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a558e6:	62 11 2c 48 58 ca    	vaddps zmm9,zmm10,zmm26
  a558ec:	62 c1 64 40 58 cc    	vaddps zmm17,zmm19,zmm12
  a558f2:	62 b1 34 48 58 c1    	vaddps zmm0,zmm9,zmm17
  a558f8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a558ff:	0f 
  a55900:	62 b1 34 48 5c c1    	vsubps zmm0,zmm9,zmm17
  a55906:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a5590d:	10 
  a5590e:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a55914:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a5591b:	0e 
  a5591c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a55923:	0b 
  a55924:	62 72 7d 48 ac c9    	vfnmadd213ps zmm9,zmm0,zmm1
  a5592a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a55931:	12 
  a55932:	62 32 65 48 b8 cd    	vfmadd231ps zmm9,zmm3,zmm21
  a55938:	62 51 44 48 58 e9    	vaddps zmm13,zmm7,zmm9
  a5593e:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm13
  a55945:	19 
  a55946:	62 71 34 48 5c cf    	vsubps zmm9,zmm9,zmm7
  a5594c:	62 01 2c 48 5c da    	vsubps zmm27,zmm10,zmm26
  a55952:	62 41 64 40 5c d4    	vsubps zmm26,zmm19,zmm12
  a55958:	62 91 7c 48 28 f9    	vmovaps zmm7,zmm25
  a5595e:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x200]
  a55965:	08 
  a55966:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x440]
  a5596d:	11 
  a5596e:	62 d2 15 48 ac fc    	vfnmadd213ps zmm7,zmm13,zmm12
  a55974:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x300]
  a5597b:	0c 
  a5597c:	62 b2 65 40 b8 fd    	vfmadd231ps zmm7,zmm19,zmm21
  a55982:	62 71 44 48 5c d6    	vsubps zmm10,zmm7,zmm6
  a55988:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm10
  a5598f:	18 
  a55990:	62 e1 44 48 58 fe    	vaddps zmm23,zmm7,zmm6
  a55996:	62 e1 6c 40 58 f4    	vaddps zmm22,zmm18,zmm4
  a5599c:	62 c1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm8
  a559a2:	62 91 14 40 5c d6    	vsubps zmm2,zmm29,zmm30
  a559a8:	62 e1 04 40 5c d5    	vsubps zmm18,zmm31,zmm5
  a559ae:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a559b4:	62 f2 7d 48 a8 e9    	vfmadd213ps zmm5,zmm0,zmm1
  a559ba:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a559c0:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a559c6:	62 92 65 48 bc e9    	vfnmadd231ps zmm5,zmm3,zmm25
  a559cc:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a559d2:	62 f1 04 48 58 f5    	vaddps zmm6,zmm15,zmm5
  a559d8:	62 41 54 48 5c ef    	vsubps zmm29,zmm5,zmm15
  a559de:	62 f1 5c 40 58 64 24 	vaddps zmm4,zmm20,ZMMWORD PTR [rsp+0x100]
  a559e5:	04 
  a559e6:	62 f1 3c 40 58 6c 24 	vaddps zmm5,zmm24,ZMMWORD PTR [rsp+0xc0]
  a559ed:	03 
  a559ee:	62 f1 5c 48 5c c5    	vsubps zmm0,zmm4,zmm5
  a559f4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a559fb:	04 
  a559fc:	62 61 5c 48 58 c5    	vaddps zmm24,zmm4,zmm5
  a55a02:	62 c2 15 48 a8 ec    	vfmadd213ps zmm21,zmm13,zmm12
  a55a08:	62 82 65 40 bc e9    	vfnmadd231ps zmm21,zmm19,zmm25
  a55a0e:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a55a14:	62 d1 54 40 5c eb    	vsubps zmm5,zmm21,zmm11
  a55a1a:	62 41 54 40 58 cb    	vaddps zmm25,zmm21,zmm11
  a55a20:	62 21 6c 48 58 f2    	vaddps zmm30,zmm2,zmm18
  a55a26:	62 b1 6c 48 5c c2    	vsubps zmm0,zmm2,zmm18
  a55a2c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a55a33:	03 
  a55a34:	62 f1 7c 40 58 44 24 	vaddps zmm0,zmm16,ZMMWORD PTR [rsp+0x540]
  a55a3b:	15 
  a55a3c:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x580]
  a55a43:	16 
  a55a44:	62 f1 0c 48 58 4c 24 	vaddps zmm1,zmm14,ZMMWORD PTR [rsp+0x500]
  a55a4b:	14 
  a55a4c:	62 91 74 48 58 cc    	vaddps zmm1,zmm1,zmm28
  a55a52:	62 f1 04 40 58 df    	vaddps zmm3,zmm31,zmm7
  a55a58:	62 71 3c 48 58 c3    	vaddps zmm8,zmm8,zmm3
  a55a5e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a55a65:	09 
  a55a66:	62 f1 6c 48 58 5c 24 	vaddps zmm3,zmm2,ZMMWORD PTR [rsp-0x40]
  a55a6d:	ff 
  a55a6e:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x80]
  a55a75:	02 
  a55a76:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a55a7d:	62 f1 6c 48 58 64 24 	vaddps zmm4,zmm2,ZMMWORD PTR [rsp+0x40]
  a55a84:	01 
  a55a85:	62 f1 5c 48 58 64 24 	vaddps zmm4,zmm4,ZMMWORD PTR [rsp-0x80]
  a55a8c:	fe 
  a55a8d:	62 71 64 48 5c dc    	vsubps zmm11,zmm3,zmm4
  a55a93:	62 e1 64 48 58 dc    	vaddps zmm19,zmm3,zmm4
  a55a99:	62 d1 1c 48 58 dd    	vaddps zmm3,zmm12,zmm13
  a55a9f:	62 62 7d 48 18 3d b7 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff61f9b7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a55aa6:	f9 61 ff 
  a55aa9:	62 91 7c 48 28 ff    	vmovaps zmm7,zmm31
  a55aaf:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a55ab6:	05 
  a55ab7:	62 f2 5d 48 ac fe    	vfnmadd213ps zmm7,zmm4,zmm6
  a55abd:	62 c1 64 48 58 c7    	vaddps zmm16,zmm3,zmm15
  a55ac3:	62 e1 7c 48 58 e9    	vaddps zmm21,zmm0,zmm1
  a55ac9:	62 f1 7c 48 5c c9    	vsubps zmm1,zmm0,zmm1
  a55acf:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a55ad5:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x340]
  a55adc:	0d 
  a55add:	62 f2 15 48 ac d5    	vfnmadd213ps zmm2,zmm13,zmm5
  a55ae3:	62 e1 4c 48 58 d4    	vaddps zmm18,zmm6,zmm4
  a55ae9:	62 91 7c 48 28 df    	vmovaps zmm3,zmm31
  a55aef:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x3c0]
  a55af6:	0f 
  a55af7:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x640]
  a55afe:	19 
  a55aff:	62 d2 1d 40 ac da    	vfnmadd213ps zmm3,zmm28,zmm10
  a55b05:	62 f2 7d 48 18 25 c5 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff61f7c5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a55b0c:	f7 61 ff 
  a55b0f:	62 f1 5c 48 59 74 24 	vmulps zmm6,zmm4,ZMMWORD PTR [rsp+0x4c0]
  a55b16:	13 
  a55b17:	62 d1 54 48 58 c5    	vaddps zmm0,zmm5,zmm13
  a55b1d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a55b24:	fe 
  a55b25:	62 f1 64 48 5c c6    	vsubps zmm0,zmm3,zmm6
  a55b2b:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a55b32:	62 71 64 48 58 f6    	vaddps zmm14,zmm3,zmm6
  a55b38:	62 91 7c 48 28 df    	vmovaps zmm3,zmm31
  a55b3e:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x280]
  a55b45:	0a 
  a55b46:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x600]
  a55b4d:	18 
  a55b4e:	62 f2 05 48 ac de    	vfnmadd213ps zmm3,zmm15,zmm6
  a55b54:	62 f1 5c 48 59 6c 24 	vmulps zmm5,zmm4,ZMMWORD PTR [rsp+0x400]
  a55b5b:	10 
  a55b5c:	62 f1 64 48 58 c5    	vaddps zmm0,zmm3,zmm5
  a55b62:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a55b69:	ff 
  a55b6a:	62 f1 64 48 5c c5    	vsubps zmm0,zmm3,zmm5
  a55b70:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a55b77:	01 
  a55b78:	62 91 24 40 58 ea    	vaddps zmm5,zmm27,zmm26
  a55b7e:	62 e1 34 48 58 e5    	vaddps zmm20,zmm9,zmm5
  a55b84:	62 d2 05 40 ac e9    	vfnmadd213ps zmm5,zmm31,zmm9
  a55b8a:	62 31 4c 40 58 c9    	vaddps zmm9,zmm22,zmm17
  a55b90:	62 a1 4c 40 5c c9    	vsubps zmm17,zmm22,zmm17
  a55b96:	62 d1 44 40 58 c1    	vaddps zmm0,zmm23,zmm9
  a55b9c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a55ba3:	02 
  a55ba4:	62 32 05 40 ac cf    	vfnmadd213ps zmm9,zmm31,zmm23
  a55baa:	62 81 24 40 5c fa    	vsubps zmm23,zmm27,zmm26
  a55bb0:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a55bb6:	62 12 0d 40 ac ed    	vfnmadd213ps zmm13,zmm30,zmm29
  a55bbc:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a55bc2:	62 01 7c 48 28 ef    	vmovaps zmm29,zmm31
  a55bc8:	62 02 3d 40 ac e9    	vfnmadd213ps zmm29,zmm24,zmm25
  a55bce:	62 81 34 40 58 f0    	vaddps zmm22,zmm25,zmm24
  a55bd4:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a55bda:	62 42 55 40 ac c0    	vfnmadd213ps zmm24,zmm21,zmm8
  a55be0:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a55be6:	62 61 24 48 59 cc    	vmulps zmm25,zmm11,zmm4
  a55bec:	62 11 3c 40 5c d9    	vsubps zmm11,zmm24,zmm25
  a55bf2:	62 01 3c 40 58 f1    	vaddps zmm30,zmm24,zmm25
  a55bf8:	62 22 65 40 ac f8    	vfnmadd213ps zmm31,zmm19,zmm16
  a55bfe:	62 71 74 48 59 c4    	vmulps zmm8,zmm1,zmm4
  a55c04:	62 41 04 40 58 c0    	vaddps zmm24,zmm31,zmm8
  a55c0a:	62 41 04 40 5c c8    	vsubps zmm25,zmm31,zmm8
  a55c10:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a55c17:	07 
  a55c18:	62 71 44 48 58 c0    	vaddps zmm8,zmm7,zmm0
  a55c1e:	62 f1 44 48 5c c8    	vsubps zmm1,zmm7,zmm0
  a55c24:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0x180]
  a55c2b:	06 
  a55c2c:	62 61 6c 48 5c f8    	vsubps zmm31,zmm2,zmm0
  a55c32:	62 f1 6c 48 58 f8    	vaddps zmm7,zmm2,zmm0
  a55c38:	62 91 2c 48 58 d4    	vaddps zmm2,zmm10,zmm28
  a55c3e:	62 41 4c 48 58 d7    	vaddps zmm26,zmm6,zmm15
  a55c44:	62 e1 74 40 59 cc    	vmulps zmm17,zmm17,zmm4
  a55c4a:	62 21 54 48 5c d9    	vsubps zmm27,zmm5,zmm17
  a55c50:	62 a1 54 48 58 c9    	vaddps zmm17,zmm5,zmm17
  a55c56:	62 f1 44 40 59 ec    	vmulps zmm5,zmm23,zmm4
  a55c5c:	62 61 34 48 58 e5    	vaddps zmm28,zmm9,zmm5
  a55c62:	62 71 34 48 5c cd    	vsubps zmm9,zmm9,zmm5
  a55c68:	62 71 5c 48 59 54 24 	vmulps zmm10,zmm4,ZMMWORD PTR [rsp+0x100]
  a55c6f:	04 
  a55c70:	62 d1 14 48 58 ea    	vaddps zmm5,zmm13,zmm10
  a55c76:	62 51 14 48 5c ea    	vsubps zmm13,zmm13,zmm10
  a55c7c:	62 f1 5c 48 59 44 24 	vmulps zmm0,zmm4,ZMMWORD PTR [rsp+0xc0]
  a55c83:	03 
  a55c84:	62 71 14 40 5c d0    	vsubps zmm10,zmm29,zmm0
  a55c8a:	62 f1 14 40 58 c0    	vaddps zmm0,zmm29,zmm0
  a55c90:	62 a1 1c 48 58 ed    	vaddps zmm21,zmm12,zmm21
  a55c96:	62 a1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm19
  a55c9c:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a55ca2:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63d1d4]        # 92e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20330>
  a55ca9:	d1 63 ff 
  a55cac:	62 a2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm16
  a55cb2:	62 e1 7c 48 28 3d 04 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff63d204]        # 92ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20370>
  a55cb9:	d2 63 ff 
  a55cbc:	62 a2 45 40 7f e8    	vpermt2ps zmm21,zmm23,zmm16
  a55cc2:	62 e1 7c 48 11 2c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm21
  a55cc9:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm19
  a55cd0:	01 
  a55cd1:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a55cd7:	62 e2 5d 48 7f c0    	vpermt2ps zmm16,zmm4,zmm0
  a55cdd:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a55ce3:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm13
  a55cea:	02 
  a55ceb:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm16
  a55cf2:	03 
  a55cf3:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a55cf9:	62 d2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm9
  a55cff:	62 c2 45 40 7f c9    	vpermt2ps zmm17,zmm23,zmm9
  a55d05:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm17
  a55d0c:	04 
  a55d0d:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a55d14:	05 
  a55d15:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a55d1b:	62 92 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm26
  a55d21:	62 92 45 40 7f d2    	vpermt2ps zmm2,zmm23,zmm26
  a55d27:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm2
  a55d2e:	06 
  a55d2f:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a55d36:	07 
  a55d37:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a55d3d:	62 f2 5d 48 7f c7    	vpermt2ps zmm0,zmm4,zmm7
  a55d43:	62 f2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm7
  a55d49:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm1
  a55d50:	08 
  a55d51:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a55d58:	09 
  a55d59:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a55d5f:	62 92 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm25
  a55d65:	62 02 45 40 7f f1    	vpermt2ps zmm30,zmm23,zmm25
  a55d6b:	62 61 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm30
  a55d72:	0a 
  a55d73:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a55d7a:	0b 
  a55d7b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a55d81:	62 b2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm22
  a55d87:	62 b2 45 40 7f de    	vpermt2ps zmm3,zmm23,zmm22
  a55d8d:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm3
  a55d94:	0c 
  a55d95:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm0
  a55d9c:	0d 
  a55d9d:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a55da3:	62 92 5d 48 7f c4    	vpermt2ps zmm0,zmm4,zmm28
  a55da9:	62 02 45 40 7f dc    	vpermt2ps zmm27,zmm23,zmm28
  a55daf:	62 61 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm27
  a55db6:	0e 
  a55db7:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a55dbe:	0f 
  a55dbf:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a55dc5:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a55dcc:	01 
  a55dcd:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a55dd3:	62 72 45 40 7f f1    	vpermt2ps zmm14,zmm23,zmm1
  a55dd9:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm14
  a55de0:	10 
  a55de1:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm0
  a55de8:	11 
  a55de9:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a55def:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a55df6:	fe 
  a55df7:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a55dfd:	62 e2 45 40 7f d1    	vpermt2ps zmm18,zmm23,zmm1
  a55e03:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm18
  a55e0a:	12 
  a55e0b:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm0
  a55e12:	13 
  a55e13:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a55e19:	62 92 5d 48 7f c0    	vpermt2ps zmm0,zmm4,zmm24
  a55e1f:	62 12 45 40 7f d8    	vpermt2ps zmm11,zmm23,zmm24
  a55e25:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x500],zmm11
  a55e2c:	14 
  a55e2d:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm0
  a55e34:	15 
  a55e35:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a55e3b:	62 d2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm10
  a55e41:	62 d2 45 40 7f ea    	vpermt2ps zmm5,zmm23,zmm10
  a55e47:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x580],zmm5
  a55e4e:	16 
  a55e4f:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5c0],zmm0
  a55e56:	17 
  a55e57:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a55e5d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a55e64:	02 
  a55e65:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a55e6b:	62 e2 45 40 7f e1    	vpermt2ps zmm20,zmm23,zmm1
  a55e71:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x600],zmm20
  a55e78:	18 
  a55e79:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x640],zmm0
  a55e80:	19 
  a55e81:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a55e88:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a55e8e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a55e95:	ff 
  a55e96:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a55e9c:	62 f2 45 40 7f d1    	vpermt2ps zmm2,zmm23,zmm1
  a55ea2:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x680],zmm2
  a55ea9:	1a 
  a55eaa:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x6c0],zmm0
  a55eb1:	1b 
  a55eb2:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a55eb8:	62 92 5d 48 7f c7    	vpermt2ps zmm0,zmm4,zmm31
  a55ebe:	62 12 45 40 7f c7    	vpermt2ps zmm8,zmm23,zmm31
  a55ec4:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x700],zmm8
  a55ecb:	1c 
  a55ecc:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x740],zmm0
  a55ed3:	1d 
  a55ed4:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a55edb:	48 39 d0             	cmp    rax,rdx
  a55ede:	0f 85 fc df ff ff    	jne    a53ee0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a55ee4:	48 81 c4 08 0b 00 00 	add    rsp,0xb08
  a55eeb:	c5 f8 77             	vzeroupper
  a55eee:	c3                   	ret
