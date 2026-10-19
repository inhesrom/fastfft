
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a67140 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a67140:	48 81 ec 88 04 00 00 	sub    rsp,0x488
  a67147:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a6714e:	31 d2                	xor    edx,edx
  a67150:	41 b0 3f             	mov    r8b,0x3f
  a67153:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a67158:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a6715f:	00 
  a67160:	c5 f8 10 44 17 60    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x60]
  a67166:	c4 e3 79 21 44 17 64 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x64],0x10
  a6716d:	10 
  a6716e:	c4 e2 79 18 4c 17 68 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x68]
  a67175:	62 f1 7c 48 10 14 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1]
  a6717c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a67182:	c4 e3 79 21 44 17 6c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a67189:	30 
  a6718a:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  a67190:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a67197:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a6719d:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a671a3:	62 e1 7c 48 28 2d d3 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff62d0d3]        # 94280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21730>
  a671aa:	d0 62 ff 
  a671ad:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a671b3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a671ba:	05 
  a671bb:	62 71 7c 48 28 1d fb 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff62d0fb]        # 942c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21770>
  a671c2:	d0 62 ff 
  a671c5:	62 f2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm0
  a671cb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a671d2:	04 
  a671d3:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x70]
  a671da:	70 00 00 00 
  a671de:	c5 f8 10 84 17 d0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xd0]
  a671e5:	00 00 
  a671e7:	c4 e3 79 21 84 17 d4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xd4],0x10
  a671ee:	00 00 00 10 
  a671f2:	c4 e2 79 18 8c 17 d8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0xd8]
  a671f9:	00 00 00 
  a671fc:	c5 fc 10 94 17 b0 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xb0]
  a67203:	00 00 
  a67205:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a6720b:	c4 e3 79 21 84 17 dc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xdc],0x30
  a67212:	00 00 00 30 
  a67216:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a6721d:	62 f2 fd c9 88 c8    	vexpandpd zmm1{k1}{z},zmm0
  a67223:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a67229:	62 72 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm1
  a6722f:	62 f2 25 48 7f d9    	vpermt2ps zmm3,zmm11,zmm1
  a67235:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a6723c:	02 
  a6723d:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0xe0]
  a67244:	e0 00 00 00 
  a67248:	c5 fc 10 8c 17 20 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x120]
  a6724f:	00 00 
  a67251:	c5 f8 10 94 17 40 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x140]
  a67258:	00 00 
  a6725a:	c4 e3 69 21 94 17 44 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x144],0x10
  a67261:	01 00 00 10 
  a67265:	c4 e2 79 18 9c 17 48 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x148]
  a6726c:	01 00 00 
  a6726f:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a67275:	c4 e3 69 21 94 17 4c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a6727c:	01 00 00 30 
  a67280:	62 f3 75 48 18 ca 02 	vinsertf32x4 zmm1,zmm1,xmm2,0x2
  a67287:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a6728d:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a67293:	62 72 55 40 7f c9    	vpermt2ps zmm9,zmm21,zmm1
  a67299:	62 62 25 48 7f c1    	vpermt2ps zmm24,zmm11,zmm1
  a6729f:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x150]
  a672a6:	50 01 00 00 
  a672aa:	c5 f8 10 8c 17 b0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1b0]
  a672b1:	00 00 
  a672b3:	c4 e3 71 21 8c 17 b4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x1b4],0x10
  a672ba:	01 00 00 10 
  a672be:	c5 fc 10 94 17 90 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x190]
  a672c5:	00 00 
  a672c7:	c4 e2 79 18 9c 17 b8 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x1b8]
  a672ce:	01 00 00 
  a672d1:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a672d7:	c4 e3 71 21 8c 17 bc 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x1bc],0x30
  a672de:	01 00 00 30 
  a672e2:	62 f3 6d 48 18 c9 02 	vinsertf32x4 zmm1,zmm2,xmm1,0x2
  a672e9:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a672ef:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a672f5:	62 62 55 40 7f f9    	vpermt2ps zmm31,zmm21,zmm1
  a672fb:	62 f2 25 48 7f c1    	vpermt2ps zmm0,zmm11,zmm1
  a67301:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a67308:	03 
  a67309:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  a67310:	00 00 
  a67312:	c4 e3 71 21 8c 17 24 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x224],0x10
  a67319:	02 00 00 10 
  a6731d:	c4 e2 79 18 94 17 28 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x228]
  a67324:	02 00 00 
  a67327:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a6732e:	07 
  a6732f:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a67335:	c4 e3 71 21 8c 17 2c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x22c],0x30
  a6733c:	02 00 00 30 
  a67340:	c5 fc 10 94 17 00 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x200]
  a67347:	00 00 
  a67349:	62 f3 6d 48 18 c9 02 	vinsertf32x4 zmm1,zmm2,xmm1,0x2
  a67350:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a67356:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a6735c:	62 e2 55 40 7f c9    	vpermt2ps zmm17,zmm21,zmm1
  a67362:	62 72 25 48 7f f1    	vpermt2ps zmm14,zmm11,zmm1
  a67368:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x230]
  a6736f:	30 02 00 00 
  a67373:	c5 f8 10 8c 17 90 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x290]
  a6737a:	00 00 
  a6737c:	c4 e3 71 21 8c 17 94 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x294],0x10
  a67383:	02 00 00 10 
  a67387:	c4 e2 79 18 94 17 98 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x298]
  a6738e:	02 00 00 
  a67391:	c5 fc 10 9c 17 70 02 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x270]
  a67398:	00 00 
  a6739a:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a673a0:	c4 e3 71 21 8c 17 9c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a673a7:	02 00 00 30 
  a673ab:	62 f3 65 48 18 c9 02 	vinsertf32x4 zmm1,zmm3,xmm1,0x2
  a673b2:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a673b8:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a673be:	62 62 55 40 7f f1    	vpermt2ps zmm30,zmm21,zmm1
  a673c4:	62 62 25 48 7f d1    	vpermt2ps zmm26,zmm11,zmm1
  a673ca:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a673d1:	a0 02 00 00 
  a673d5:	c5 fc 10 8c 17 e0 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a673dc:	00 00 
  a673de:	c5 f8 10 94 17 00 03 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x300]
  a673e5:	00 00 
  a673e7:	c4 e3 69 21 94 17 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x304],0x10
  a673ee:	03 00 00 10 
  a673f2:	c4 e2 79 18 9c 17 08 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x308]
  a673f9:	03 00 00 
  a673fc:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a67402:	c4 e3 69 21 94 17 0c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x30c],0x30
  a67409:	03 00 00 30 
  a6740d:	62 f3 75 48 18 ca 02 	vinsertf32x4 zmm1,zmm1,xmm2,0x2
  a67414:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a6741a:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a67420:	62 62 55 40 7f c9    	vpermt2ps zmm25,zmm21,zmm1
  a67426:	62 e2 25 48 7f f9    	vpermt2ps zmm23,zmm11,zmm1
  a6742c:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x310]
  a67433:	10 03 00 00 
  a67437:	c5 f8 10 8c 17 70 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x370]
  a6743e:	00 00 
  a67440:	c4 e3 71 21 8c 17 74 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x374],0x10
  a67447:	03 00 00 10 
  a6744b:	c5 fc 10 94 17 50 03 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x350]
  a67452:	00 00 
  a67454:	c4 e2 79 18 9c 17 78 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x378]
  a6745b:	03 00 00 
  a6745e:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a67464:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x37c],0x30
  a6746b:	03 00 00 30 
  a6746f:	62 f3 6d 48 18 c9 02 	vinsertf32x4 zmm1,zmm2,xmm1,0x2
  a67476:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a6747c:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a67482:	62 72 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm1
  a67488:	62 72 25 48 7f d1    	vpermt2ps zmm10,zmm11,zmm1
  a6748e:	c5 f8 10 8c 17 e0 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x3e0]
  a67495:	00 00 
  a67497:	c4 e3 71 21 8c 17 e4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x3e4],0x10
  a6749e:	03 00 00 10 
  a674a2:	c4 e2 79 18 94 17 e8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x3e8]
  a674a9:	03 00 00 
  a674ac:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x380]
  a674b3:	0e 
  a674b4:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a674ba:	c4 e3 71 21 8c 17 ec 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x3ec],0x30
  a674c1:	03 00 00 30 
  a674c5:	c5 fc 10 94 17 c0 03 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x3c0]
  a674cc:	00 00 
  a674ce:	62 f3 6d 48 18 c9 02 	vinsertf32x4 zmm1,zmm2,xmm1,0x2
  a674d5:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a674db:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a674e1:	62 e2 55 40 7f c1    	vpermt2ps zmm16,zmm21,zmm1
  a674e7:	62 72 25 48 7f f9    	vpermt2ps zmm15,zmm11,zmm1
  a674ed:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x3f0]
  a674f4:	f0 03 00 00 
  a674f8:	c5 f8 10 8c 17 50 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x450]
  a674ff:	00 00 
  a67501:	c4 e3 71 21 8c 17 54 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x454],0x10
  a67508:	04 00 00 10 
  a6750c:	c4 e2 79 18 94 17 58 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x458]
  a67513:	04 00 00 
  a67516:	c5 fc 10 9c 17 30 04 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x430]
  a6751d:	00 00 
  a6751f:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a67525:	c4 e3 71 21 8c 17 5c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x45c],0x30
  a6752c:	04 00 00 30 
  a67530:	62 f3 65 48 18 c9 02 	vinsertf32x4 zmm1,zmm3,xmm1,0x2
  a67537:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a6753d:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a67543:	62 e2 55 40 7f d1    	vpermt2ps zmm18,zmm21,zmm1
  a67549:	62 f2 25 48 7f f9    	vpermt2ps zmm7,zmm11,zmm1
  a6754f:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x460]
  a67556:	60 04 00 00 
  a6755a:	c5 fc 10 8c 17 a0 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x4a0]
  a67561:	00 00 
  a67563:	c5 f8 10 94 17 c0 04 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x4c0]
  a6756a:	00 00 
  a6756c:	c4 e3 69 21 94 17 c4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x4c4],0x10
  a67573:	04 00 00 10 
  a67577:	c4 e2 79 18 9c 17 c8 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x4c8]
  a6757e:	04 00 00 
  a67581:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a67587:	c4 e3 69 21 94 17 cc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x4cc],0x30
  a6758e:	04 00 00 30 
  a67592:	62 f3 75 48 18 ca 02 	vinsertf32x4 zmm1,zmm1,xmm2,0x2
  a67599:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a6759f:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a675a5:	62 62 55 40 7f e9    	vpermt2ps zmm29,zmm21,zmm1
  a675ab:	62 62 25 48 7f e1    	vpermt2ps zmm28,zmm11,zmm1
  a675b1:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x4d0]
  a675b8:	d0 04 00 00 
  a675bc:	c5 f8 10 8c 17 30 05 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x530]
  a675c3:	00 00 
  a675c5:	c4 e3 71 21 8c 17 34 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x534],0x10
  a675cc:	05 00 00 10 
  a675d0:	c5 fc 10 94 17 10 05 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x510]
  a675d7:	00 00 
  a675d9:	c4 e2 79 18 9c 17 38 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x538]
  a675e0:	05 00 00 
  a675e3:	c4 e3 61 0c c9 03    	vblendps xmm1,xmm3,xmm1,0x3
  a675e9:	c4 e3 71 21 8c 17 3c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x53c],0x30
  a675f0:	05 00 00 30 
  a675f4:	62 f3 6d 48 18 c9 02 	vinsertf32x4 zmm1,zmm2,xmm1,0x2
  a675fb:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a67601:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a67607:	62 e2 55 40 7f e1    	vpermt2ps zmm20,zmm21,zmm1
  a6760d:	62 f2 25 48 7f e1    	vpermt2ps zmm4,zmm11,zmm1
  a67613:	c5 f8 10 8c 17 a0 05 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x5a0]
  a6761a:	00 00 
  a6761c:	c4 e3 71 21 8c 17 a4 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x5a4],0x10
  a67623:	05 00 00 10 
  a67627:	c4 e2 79 18 94 17 a8 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x5a8]
  a6762e:	05 00 00 
  a67631:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x540]
  a67638:	15 
  a67639:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a6763f:	c4 e3 71 21 8c 17 ac 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x5ac],0x30
  a67646:	05 00 00 30 
  a6764a:	c5 fc 10 94 17 80 05 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x580]
  a67651:	00 00 
  a67653:	62 f3 6d 48 18 c9 02 	vinsertf32x4 zmm1,zmm2,xmm1,0x2
  a6765a:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a67660:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a67666:	62 f2 55 40 7f d9    	vpermt2ps zmm3,zmm21,zmm1
  a6766c:	62 e2 25 48 7f d9    	vpermt2ps zmm19,zmm11,zmm1
  a67672:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x5b0]
  a67679:	b0 05 00 00 
  a6767d:	c5 f8 10 94 17 10 06 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x610]
  a67684:	00 00 
  a67686:	c4 e3 69 21 94 17 14 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x614],0x10
  a6768d:	06 00 00 10 
  a67691:	c4 e2 79 18 ac 17 18 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x618]
  a67698:	06 00 00 
  a6769b:	c5 7c 10 ac 17 f0 05 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x5f0]
  a676a2:	00 00 
  a676a4:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a676aa:	c4 e3 69 21 94 17 1c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x61c],0x30
  a676b1:	06 00 00 30 
  a676b5:	62 f3 15 48 18 d2 02 	vinsertf32x4 zmm2,zmm13,xmm2,0x2
  a676bc:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a676c2:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a676c8:	62 e2 55 40 7f f2    	vpermt2ps zmm22,zmm21,zmm2
  a676ce:	62 f2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm2
  a676d4:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x620]
  a676db:	20 06 00 00 
  a676df:	c5 fc 10 94 17 60 06 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x660]
  a676e6:	00 00 
  a676e8:	c5 78 10 ac 17 80 06 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x680]
  a676ef:	00 00 
  a676f1:	c4 63 11 21 ac 17 84 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x684],0x10
  a676f8:	06 00 00 10 
  a676fc:	c4 e2 79 18 84 17 88 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x688]
  a67703:	06 00 00 
  a67706:	c4 c3 79 0c c5 03    	vblendps xmm0,xmm0,xmm13,0x3
  a6770c:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x68c],0x30
  a67713:	06 00 00 30 
  a67717:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a6771e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a67724:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a6772a:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a67730:	62 f2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm0
  a67736:	62 11 04 48 58 e8    	vaddps zmm13,zmm15,zmm24
  a6773c:	62 51 7c 40 58 d9    	vaddps zmm11,zmm16,zmm9
  a67742:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm11
  a67749:	10 
  a6774a:	62 d1 7c 40 5c c1    	vsubps zmm0,zmm16,zmm9
  a67750:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a67757:	06 
  a67758:	62 e1 5c 40 58 ea    	vaddps zmm21,zmm20,zmm2
  a6775e:	62 f1 5c 40 5c c2    	vsubps zmm0,zmm20,zmm2
  a67764:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a6776b:	0f 
  a6776c:	62 d1 4c 40 58 f0    	vaddps zmm6,zmm22,zmm8
  a67772:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm6
  a67779:	0b 
  a6777a:	62 41 4c 40 5c d8    	vsubps zmm27,zmm22,zmm8
  a67780:	62 a1 1c 48 58 e1    	vaddps zmm20,zmm12,zmm17
  a67786:	62 a1 1c 48 5c f1    	vsubps zmm22,zmm12,zmm17
  a6778c:	62 f1 04 40 58 c3    	vaddps zmm0,zmm31,zmm3
  a67792:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a67799:	fe 
  a6779a:	62 f1 04 40 5c c3    	vsubps zmm0,zmm31,zmm3
  a677a0:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a677a7:	62 b1 34 40 58 c2    	vaddps zmm0,zmm25,zmm18
  a677ad:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a677b4:	01 
  a677b5:	62 b1 34 40 5c c2    	vsubps zmm0,zmm25,zmm18
  a677bb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a677c2:	ff 
  a677c3:	62 e1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm5
  a677c9:	62 91 04 48 5c d8    	vsubps zmm3,zmm15,zmm24
  a677cf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  a677d6:	11 
  a677d7:	62 d1 74 48 58 d2    	vaddps zmm2,zmm1,zmm10
  a677dd:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a677e3:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a677ea:	0c 
  a677eb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a677f2:	02 
  a677f3:	62 51 7c 48 58 e6    	vaddps zmm12,zmm0,zmm14
  a677f9:	62 d1 74 48 5c ca    	vsubps zmm1,zmm1,zmm10
  a677ff:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a67806:	0d 
  a67807:	62 72 7d 48 18 15 d7 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff60ded7]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6780e:	de 60 ff 
  a67811:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a67817:	62 82 25 48 a8 c6    	vfmadd213ps zmm16,zmm11,zmm30
  a6781d:	62 72 7d 48 18 05 1d 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff60de1d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a67824:	de 60 ff 
  a67827:	62 c2 55 40 bc c0    	vfnmadd231ps zmm16,zmm21,zmm8
  a6782d:	62 c1 7c 48 5c d6    	vsubps zmm18,zmm0,zmm14
  a67833:	62 72 7d 48 18 0d 1b 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff60df1b]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6783a:	df 60 ff 
  a6783d:	62 d1 5c 48 59 c1    	vmulps zmm0,zmm4,zmm9
  a67843:	62 72 7d 48 18 1d 53 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff60db53]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6784a:	db 60 ff 
  a6784d:	62 d2 65 48 b8 c3    	vfmadd231ps zmm0,zmm3,zmm11
  a67853:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a6785a:	08 
  a6785b:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a67861:	62 12 4d 48 a8 f5    	vfmadd213ps zmm14,zmm6,zmm29
  a67867:	62 52 5d 40 bc f0    	vfnmadd231ps zmm14,zmm20,zmm8
  a6786d:	62 41 6c 40 59 f9    	vmulps zmm31,zmm18,zmm9
  a67873:	62 42 75 48 b8 fb    	vfmadd231ps zmm31,zmm1,zmm11
  a67879:	62 f1 7c 40 5c c8    	vsubps zmm1,zmm16,zmm0
  a6787f:	62 91 0c 48 5c e7    	vsubps zmm4,zmm14,zmm31
  a67885:	62 f1 74 48 5c c4    	vsubps zmm0,zmm1,zmm4
  a6788b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a67892:	02 
  a67893:	62 f1 74 48 58 c4    	vaddps zmm0,zmm1,zmm4
  a67899:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a678a0:	0a 
  a678a1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a678a8:	03 
  a678a9:	62 b1 7c 48 58 eb    	vaddps zmm5,zmm0,zmm19
  a678af:	62 21 7c 48 5c c3    	vsubps zmm24,zmm0,zmm19
  a678b5:	62 f1 44 40 58 df    	vaddps zmm3,zmm23,zmm7
  a678bb:	62 f1 44 40 5c c7    	vsubps zmm0,zmm23,zmm7
  a678c1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a678c8:	0e 
  a678c9:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a678cf:	62 92 15 48 a8 fa    	vfmadd213ps zmm7,zmm13,zmm26
  a678d5:	62 d2 75 40 bc f8    	vfnmadd231ps zmm7,zmm17,zmm8
  a678db:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a678e2:	0f 
  a678e3:	62 41 74 48 59 c9    	vmulps zmm25,zmm1,zmm9
  a678e9:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a678f0:	06 
  a678f1:	62 42 05 48 b8 cb    	vfmadd231ps zmm25,zmm15,zmm11
  a678f7:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a678fd:	62 92 6d 48 a8 f4    	vfmadd213ps zmm6,zmm2,zmm28
  a67903:	62 d2 1d 48 bc f0    	vfnmadd231ps zmm6,zmm12,zmm8
  a67909:	62 c1 4c 40 59 f9    	vmulps zmm23,zmm22,zmm9
  a6790f:	62 c2 25 40 b8 fb    	vfmadd231ps zmm23,zmm27,zmm11
  a67915:	62 81 44 48 58 d9    	vaddps zmm19,zmm7,zmm25
  a6791b:	62 b1 4c 48 58 c7    	vaddps zmm0,zmm6,zmm23
  a67921:	62 f1 64 40 58 e0    	vaddps zmm4,zmm19,zmm0
  a67927:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a6792e:	09 
  a6792f:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a67935:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a6793c:	03 
  a6793d:	62 d1 2c 40 58 c5    	vaddps zmm0,zmm26,zmm13
  a67943:	62 42 3d 48 bc d5    	vfnmadd231ps zmm26,zmm8,zmm13
  a67949:	62 b1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm17
  a6794f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a67956:	07 
  a67957:	62 22 2d 48 b8 d1    	vfmadd231ps zmm26,zmm10,zmm17
  a6795d:	62 51 04 48 59 e9    	vmulps zmm13,zmm15,zmm9
  a67963:	62 72 25 48 bc e9    	vfnmadd231ps zmm13,zmm11,zmm1
  a67969:	62 f1 1c 40 58 c2    	vaddps zmm0,zmm28,zmm2
  a6796f:	62 62 3d 48 bc e2    	vfnmadd231ps zmm28,zmm8,zmm2
  a67975:	62 d1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm12
  a6797b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a67982:	06 
  a67983:	62 42 2d 48 b8 e4    	vfmadd231ps zmm28,zmm10,zmm12
  a67989:	62 d1 24 40 59 e1    	vmulps zmm4,zmm27,zmm9
  a6798f:	62 b2 25 48 bc e6    	vfnmadd231ps zmm4,zmm11,zmm22
  a67995:	62 41 7c 48 28 da    	vmovaps zmm27,zmm10
  a6799b:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x100]
  a679a2:	04 
  a679a3:	62 42 55 48 a8 df    	vfmadd213ps zmm27,zmm5,zmm15
  a679a9:	62 f1 04 48 58 c5    	vaddps zmm0,zmm15,zmm5
  a679af:	62 72 3d 48 bc fd    	vfnmadd231ps zmm15,zmm8,zmm5
  a679b5:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a679bb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a679c2:	04 
  a679c3:	62 42 65 48 bc d8    	vfnmadd231ps zmm27,zmm3,zmm8
  a679c9:	62 72 2d 48 b8 fb    	vfmadd231ps zmm15,zmm10,zmm3
  a679cf:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a679d6:	ff 
  a679d7:	62 d1 74 48 59 d9    	vmulps zmm3,zmm1,zmm9
  a679dd:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a679e4:	62 d2 7d 48 b8 db    	vfmadd231ps zmm3,zmm0,zmm11
  a679ea:	62 d1 7c 48 59 d1    	vmulps zmm2,zmm0,zmm9
  a679f0:	62 f2 25 48 bc d1    	vfnmadd231ps zmm2,zmm11,zmm1
  a679f6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a679fd:	10 
  a679fe:	62 f1 0c 40 58 c1    	vaddps zmm0,zmm30,zmm1
  a67a04:	62 62 3d 48 bc f1    	vfnmadd231ps zmm30,zmm8,zmm1
  a67a0a:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a67a10:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a67a17:	62 22 2d 48 b8 f5    	vfmadd231ps zmm30,zmm10,zmm21
  a67a1d:	62 e1 34 48 59 6c 24 	vmulps zmm21,zmm9,ZMMWORD PTR [rsp+0x440]
  a67a24:	11 
  a67a25:	62 e2 25 48 bc 6c 24 	vfnmadd231ps zmm21,zmm11,ZMMWORD PTR [rsp+0x300]
  a67a2c:	0c 
  a67a2d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a67a34:	0b 
  a67a35:	62 f1 14 40 58 c1    	vaddps zmm0,zmm29,zmm1
  a67a3b:	62 62 3d 48 bc e9    	vfnmadd231ps zmm29,zmm8,zmm1
  a67a41:	62 a1 7c 48 58 cc    	vaddps zmm17,zmm0,zmm20
  a67a47:	62 22 2d 48 b8 ec    	vfmadd231ps zmm29,zmm10,zmm20
  a67a4d:	62 f1 34 48 59 44 24 	vmulps zmm0,zmm9,ZMMWORD PTR [rsp+0x340]
  a67a54:	0d 
  a67a55:	62 b2 25 48 bc c2    	vfnmadd231ps zmm0,zmm11,zmm18
  a67a5b:	62 b1 0c 40 5c ed    	vsubps zmm5,zmm30,zmm21
  a67a61:	62 e1 14 40 5c d0    	vsubps zmm18,zmm29,zmm0
  a67a67:	62 b1 54 48 5c ca    	vsubps zmm1,zmm5,zmm18
  a67a6d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a67a74:	ff 
  a67a75:	62 b1 54 48 58 ca    	vaddps zmm1,zmm5,zmm18
  a67a7b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a67a82:	0c 
  a67a83:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a67a89:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a67a90:	05 
  a67a91:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp-0x80]
  a67a98:	fe 
  a67a99:	62 f2 65 40 a8 e9    	vfmadd213ps zmm5,zmm19,zmm1
  a67a9f:	62 a1 74 48 58 d3    	vaddps zmm18,zmm1,zmm19
  a67aa5:	62 b2 3d 48 bc cb    	vfnmadd231ps zmm1,zmm8,zmm19
  a67aab:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x40]
  a67ab2:	01 
  a67ab3:	62 a1 6c 40 58 dc    	vaddps zmm19,zmm18,zmm20
  a67ab9:	62 d2 5d 40 bc e8    	vfnmadd231ps zmm5,zmm20,zmm8
  a67abf:	62 b2 2d 48 b8 cc    	vfmadd231ps zmm1,zmm10,zmm20
  a67ac5:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a67acb:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x380]
  a67ad2:	0e 
  a67ad3:	62 d1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm9
  a67ad9:	62 d2 3d 40 b8 cb    	vfmadd231ps zmm1,zmm24,zmm11
  a67adf:	62 41 3c 40 59 c1    	vmulps zmm24,zmm24,zmm9
  a67ae5:	62 42 25 48 bc c2    	vfnmadd231ps zmm24,zmm11,zmm10
  a67aeb:	62 c1 2c 40 58 d5    	vaddps zmm18,zmm26,zmm13
  a67af1:	62 e1 1c 40 58 e4    	vaddps zmm20,zmm28,zmm4
  a67af7:	62 a1 6c 40 58 f4    	vaddps zmm22,zmm18,zmm20
  a67afd:	62 31 6c 40 5c cc    	vsubps zmm9,zmm18,zmm20
  a67b03:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm9
  a67b0a:	01 
  a67b0b:	62 e1 04 48 58 e2    	vaddps zmm20,zmm15,zmm2
  a67b11:	62 e1 04 48 5c d2    	vsubps zmm18,zmm15,zmm2
  a67b17:	62 51 2c 40 5c cd    	vsubps zmm9,zmm26,zmm13
  a67b1d:	62 61 1c 40 5c e4    	vsubps zmm28,zmm28,zmm4
  a67b23:	62 91 3c 48 5c d0    	vsubps zmm2,zmm8,zmm24
  a67b29:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a67b30:	0b 
  a67b31:	62 51 3c 40 58 e8    	vaddps zmm13,zmm24,zmm8
  a67b37:	62 01 54 40 58 d6    	vaddps zmm26,zmm21,zmm30
  a67b3d:	62 01 7c 48 58 f5    	vaddps zmm30,zmm0,zmm29
  a67b43:	62 91 44 48 5c c1    	vsubps zmm0,zmm7,zmm25
  a67b49:	62 b1 4c 48 5c d7    	vsubps zmm2,zmm6,zmm23
  a67b4f:	62 f1 24 40 58 f3    	vaddps zmm6,zmm27,zmm3
  a67b55:	62 f1 24 40 5c fb    	vsubps zmm7,zmm27,zmm3
  a67b5b:	62 f1 7c 40 58 5c 24 	vaddps zmm3,zmm16,ZMMWORD PTR [rsp+0x200]
  a67b62:	08 
  a67b63:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x1c0]
  a67b6a:	07 
  a67b6b:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x180]
  a67b72:	06 
  a67b73:	62 d1 2c 48 58 e4    	vaddps zmm4,zmm10,zmm12
  a67b79:	62 51 04 40 58 c6    	vaddps zmm8,zmm31,zmm14
  a67b7f:	62 51 64 48 5c d8    	vsubps zmm11,zmm3,zmm8
  a67b85:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm11
  a67b8c:	05 
  a67b8d:	62 51 64 48 58 f0    	vaddps zmm14,zmm3,zmm8
  a67b93:	62 71 54 48 5c c1    	vsubps zmm8,zmm5,zmm1
  a67b99:	62 f1 74 48 58 dd    	vaddps zmm3,zmm1,zmm5
  a67b9f:	62 f1 7c 48 58 ca    	vaddps zmm1,zmm0,zmm2
  a67ba5:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a67bab:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a67bb2:	fe 
  a67bb3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a67bba:	04 
  a67bbb:	62 71 7c 48 58 dc    	vaddps zmm11,zmm0,zmm4
  a67bc1:	62 e2 7d 48 18 3d 95 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff60d895]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a67bc8:	d8 60 ff 
  a67bcb:	62 f2 45 40 ac e0    	vfnmadd213ps zmm4,zmm23,zmm0
  a67bd1:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a67bd8:	62 a1 7c 48 58 c1    	vaddps zmm16,zmm0,zmm17
  a67bde:	62 21 7c 48 5c c9    	vsubps zmm25,zmm0,zmm17
  a67be4:	62 b1 64 40 58 c0    	vaddps zmm0,zmm19,zmm16
  a67bea:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a67bf1:	0d 
  a67bf2:	62 a2 45 40 ac c3    	vfnmadd213ps zmm16,zmm23,zmm19
  a67bf8:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a67bfe:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a67c05:	09 
  a67c06:	62 62 7d 48 ac de    	vfnmadd213ps zmm27,zmm0,zmm6
  a67c0c:	62 c1 2c 48 5c dc    	vsubps zmm19,zmm10,zmm12
  a67c12:	62 21 7c 48 28 ff    	vmovaps zmm31,zmm23
  a67c18:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x280]
  a67c1f:	0a 
  a67c20:	62 42 1d 48 ac f8    	vfnmadd213ps zmm31,zmm12,zmm8
  a67c26:	62 71 4c 48 58 f8    	vaddps zmm15,zmm6,zmm0
  a67c2c:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a67c32:	62 b2 4d 40 ac d4    	vfnmadd213ps zmm2,zmm22,zmm20
  a67c38:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a67c3e:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a67c44:	62 72 7d 48 18 15 86 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff60d686]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a67c4b:	d6 60 ff 
  a67c4e:	62 f1 2c 48 59 74 24 	vmulps zmm6,zmm10,ZMMWORD PTR [rsp-0x40]
  a67c55:	ff 
  a67c56:	62 d1 3c 48 58 c4    	vaddps zmm0,zmm8,zmm12
  a67c5c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a67c63:	09 
  a67c64:	62 71 6c 48 5c e6    	vsubps zmm12,zmm2,zmm6
  a67c6a:	62 71 6c 48 58 c6    	vaddps zmm8,zmm2,zmm6
  a67c70:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a67c76:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a67c7d:	0c 
  a67c7e:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x2c0]
  a67c85:	0b 
  a67c86:	62 92 55 48 ac d5    	vfnmadd213ps zmm2,zmm5,zmm29
  a67c8c:	62 f1 2c 48 59 74 24 	vmulps zmm6,zmm10,ZMMWORD PTR [rsp+0x40]
  a67c93:	01 
  a67c94:	62 e1 6c 48 58 ce    	vaddps zmm17,zmm2,zmm6
  a67c9a:	62 f1 6c 48 5c c6    	vsubps zmm0,zmm2,zmm6
  a67ca0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a67ca7:	08 
  a67ca8:	62 81 34 48 58 f4    	vaddps zmm22,zmm9,zmm28
  a67cae:	62 b1 6c 40 58 d6    	vaddps zmm2,zmm18,zmm22
  a67cb4:	62 a2 45 40 ac f2    	vfnmadd213ps zmm22,zmm23,zmm18
  a67cba:	62 91 2c 40 58 c6    	vaddps zmm0,zmm26,zmm30
  a67cc0:	62 91 2c 40 5c f6    	vsubps zmm6,zmm26,zmm30
  a67cc6:	62 61 14 48 58 c0    	vaddps zmm24,zmm13,zmm0
  a67ccc:	62 d2 45 40 ac c5    	vfnmadd213ps zmm0,zmm23,zmm13
  a67cd2:	62 01 34 48 5c e4    	vsubps zmm28,zmm9,zmm28
  a67cd8:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a67cde:	62 62 75 48 ac f7    	vfnmadd213ps zmm30,zmm1,zmm7
  a67ce4:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a67cea:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a67cf0:	62 62 0d 48 ac d3    	vfnmadd213ps zmm26,zmm14,zmm3
  a67cf6:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a67cfc:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a67d03:	ff 
  a67d04:	62 d1 34 40 59 da    	vmulps zmm3,zmm25,zmm10
  a67d0a:	62 71 5c 48 5c f3    	vsubps zmm14,zmm4,zmm3
  a67d10:	62 f1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm3
  a67d16:	62 d1 64 40 59 da    	vmulps zmm3,zmm19,zmm10
  a67d1c:	62 b1 64 48 58 f8    	vaddps zmm7,zmm3,zmm16
  a67d22:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a67d29:	62 f1 7c 40 5c db    	vsubps zmm3,zmm16,zmm3
  a67d2f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a67d36:	07 
  a67d37:	62 f1 2c 48 59 5c 24 	vmulps zmm3,zmm10,ZMMWORD PTR [rsp+0x80]
  a67d3e:	02 
  a67d3f:	62 01 64 48 58 cb    	vaddps zmm25,zmm3,zmm27
  a67d45:	62 61 24 40 5c db    	vsubps zmm27,zmm27,zmm3
  a67d4b:	62 f1 2c 48 59 5c 24 	vmulps zmm3,zmm10,ZMMWORD PTR [rsp+0xc0]
  a67d52:	03 
  a67d53:	62 e1 04 40 5c d3    	vsubps zmm18,zmm31,zmm3
  a67d59:	62 f1 04 40 58 db    	vaddps zmm3,zmm31,zmm3
  a67d5f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a67d66:	0e 
  a67d67:	62 f1 2c 48 59 5c 24 	vmulps zmm3,zmm10,ZMMWORD PTR [rsp+0x140]
  a67d6e:	05 
  a67d6f:	62 a1 54 40 58 dc    	vaddps zmm19,zmm21,zmm20
  a67d75:	62 81 64 48 58 e6    	vaddps zmm20,zmm3,zmm30
  a67d7b:	62 e1 2c 48 59 6c 24 	vmulps zmm21,zmm10,ZMMWORD PTR [rsp-0x80]
  a67d82:	fe 
  a67d83:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a67d89:	62 f1 14 40 58 fd    	vaddps zmm7,zmm29,zmm5
  a67d8f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm7
  a67d96:	06 
  a67d97:	62 e1 4c 40 5c fe    	vsubps zmm23,zmm22,zmm6
  a67d9d:	62 41 1c 40 59 e2    	vmulps zmm28,zmm28,zmm10
  a67da3:	62 61 4c 40 58 fe    	vaddps zmm31,zmm22,zmm6
  a67da9:	62 81 7c 48 58 c4    	vaddps zmm16,zmm0,zmm28
  a67daf:	62 81 7c 48 5c f4    	vsubps zmm22,zmm0,zmm28
  a67db5:	62 21 2c 40 5c ed    	vsubps zmm29,zmm26,zmm21
  a67dbb:	62 61 0c 40 5c e3    	vsubps zmm28,zmm30,zmm3
  a67dc1:	62 a1 2c 40 58 ed    	vaddps zmm21,zmm26,zmm21
  a67dc7:	62 d1 7c 48 28 db    	vmovaps zmm3,zmm11
  a67dcd:	62 f1 7c 48 28 05 a9 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65f1a9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a67dd4:	f1 65 ff 
  a67dd7:	62 b2 7d 48 7f df    	vpermt2ps zmm3,zmm0,zmm23
  a67ddd:	62 f1 7c 48 28 3d d9 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff65f1d9]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a67de4:	f1 65 ff 
  a67de7:	62 32 45 48 7f df    	vpermt2ps zmm11,zmm7,zmm23
  a67ded:	62 81 7c 48 28 f9    	vmovaps zmm23,zmm25
  a67df3:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a67df9:	62 62 45 48 7f c9    	vpermt2ps zmm25,zmm7,zmm1
  a67dff:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a67e05:	62 f2 7d 48 7f cc    	vpermt2ps zmm1,zmm0,zmm4
  a67e0b:	62 72 45 48 7f e4    	vpermt2ps zmm12,zmm7,zmm4
  a67e11:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a67e17:	62 92 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm27
  a67e1d:	62 92 45 48 7f d3    	vpermt2ps zmm2,zmm7,zmm27
  a67e23:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a67e29:	62 22 7d 48 7f d3    	vpermt2ps zmm26,zmm0,zmm19
  a67e2f:	62 a2 45 48 7f e3    	vpermt2ps zmm20,zmm7,zmm19
  a67e35:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a67e3b:	62 82 7d 48 7f df    	vpermt2ps zmm19,zmm0,zmm31
  a67e41:	62 12 45 48 7f f7    	vpermt2ps zmm14,zmm7,zmm31
  a67e47:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a67e4d:	62 02 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm28
  a67e53:	62 12 45 48 7f fc    	vpermt2ps zmm15,zmm7,zmm28
  a67e59:	62 41 7c 48 28 e0    	vmovaps zmm28,zmm8
  a67e5f:	62 01 04 00 57 ff    	vxorps xmm31,xmm31,xmm31
  a67e65:	62 02 7d 48 7f e7    	vpermt2ps zmm28,zmm0,zmm31
  a67e6b:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a67e71:	62 71 7c 48 28 0d 85 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff65f085]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a67e78:	f0 65 ff 
  a67e7b:	62 02 35 48 7f f2    	vpermt2ps zmm30,zmm9,zmm26
  a67e81:	62 71 7c 48 28 2d b5 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff65f0b5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a67e88:	f0 65 ff 
  a67e8b:	62 92 15 48 7f da    	vpermt2ps zmm3,zmm13,zmm26
  a67e91:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a67e97:	62 22 35 48 7f d3    	vpermt2ps zmm26,zmm9,zmm19
  a67e9d:	62 a2 15 48 7f fb    	vpermt2ps zmm23,zmm13,zmm19
  a67ea3:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a67ea9:	62 82 35 48 7f db    	vpermt2ps zmm19,zmm9,zmm27
  a67eaf:	62 92 15 48 7f cb    	vpermt2ps zmm1,zmm13,zmm27
  a67eb5:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a67ebb:	62 02 35 48 7f dc    	vpermt2ps zmm27,zmm9,zmm28
  a67ec1:	62 92 15 48 7f e4    	vpermt2ps zmm4,zmm13,zmm28
  a67ec7:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a67ecd:	62 22 35 48 7f e4    	vpermt2ps zmm28,zmm9,zmm20
  a67ed3:	62 32 15 48 7f dc    	vpermt2ps zmm11,zmm13,zmm20
  a67ed9:	62 11 7c 48 28 d1    	vmovaps zmm10,zmm25
  a67edf:	62 52 35 48 7f d6    	vpermt2ps zmm10,zmm9,zmm14
  a67ee5:	62 42 15 48 7f ce    	vpermt2ps zmm25,zmm13,zmm14
  a67eeb:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a67ef1:	62 c2 35 48 7f e7    	vpermt2ps zmm20,zmm9,zmm15
  a67ef7:	62 52 15 48 7f e7    	vpermt2ps zmm12,zmm13,zmm15
  a67efd:	62 12 45 48 7f c7    	vpermt2ps zmm8,zmm7,zmm31
  a67f03:	62 d1 a5 48 14 f4    	vunpcklpd zmm6,zmm11,zmm12
  a67f09:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a67f0f:	62 d2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm8
  a67f15:	62 d2 15 48 7f d0    	vpermt2ps zmm2,zmm13,zmm8
  a67f1b:	62 f1 b5 40 14 d2    	vunpcklpd zmm2,zmm25,zmm2
  a67f21:	62 31 8d 40 14 e3    	vunpcklpd zmm12,zmm30,zmm19
  a67f27:	62 21 8d 40 15 f3    	vunpckhpd zmm30,zmm30,zmm19
  a67f2d:	62 11 ad 40 14 c3    	vunpcklpd zmm8,zmm26,zmm27
  a67f33:	62 11 ad 40 15 db    	vunpckhpd zmm11,zmm26,zmm27
  a67f39:	62 61 e5 48 14 d1    	vunpcklpd zmm26,zmm3,zmm1
  a67f3f:	62 e1 e5 48 15 d9    	vunpckhpd zmm19,zmm3,zmm1
  a67f45:	62 f1 c5 40 14 cc    	vunpcklpd zmm1,zmm23,zmm4
  a67f4b:	62 f1 c5 40 15 dc    	vunpckhpd zmm3,zmm23,zmm4
  a67f51:	62 21 9d 40 14 cc    	vunpcklpd zmm25,zmm28,zmm20
  a67f57:	62 a1 9d 40 15 fc    	vunpckhpd zmm23,zmm28,zmm20
  a67f5d:	62 f1 ad 48 14 e5    	vunpcklpd zmm4,zmm10,zmm5
  a67f63:	62 f1 ad 48 15 ed    	vunpckhpd zmm5,zmm10,zmm5
  a67f69:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a67f6f:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a67f75:	62 71 7c 48 28 25 81 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff65ee81]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a67f7c:	ee 65 ff 
  a67f7f:	62 52 1d 48 7f d0    	vpermt2ps zmm10,zmm12,zmm8
  a67f85:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm10
  a67f8c:	05 
  a67f8d:	62 71 7c 48 28 35 a9 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff65eea9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a67f94:	ee 65 ff 
  a67f97:	62 c2 0d 48 7f e0    	vpermt2ps zmm20,zmm14,zmm8
  a67f9d:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm20
  a67fa4:	04 
  a67fa5:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a67fab:	62 42 1d 48 7f db    	vpermt2ps zmm27,zmm12,zmm11
  a67fb1:	62 42 0d 48 7f f3    	vpermt2ps zmm30,zmm14,zmm11
  a67fb7:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm30
  a67fbe:	03 
  a67fbf:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a67fc5:	62 72 1d 48 7f c1    	vpermt2ps zmm8,zmm12,zmm1
  a67fcb:	62 62 0d 48 7f d1    	vpermt2ps zmm26,zmm14,zmm1
  a67fd1:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm26
  a67fd8:	0a 
  a67fd9:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a67fdf:	62 62 1d 48 7f e3    	vpermt2ps zmm28,zmm12,zmm3
  a67fe5:	62 e2 0d 48 7f db    	vpermt2ps zmm19,zmm14,zmm3
  a67feb:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a67ff1:	62 f2 1d 48 7f cc    	vpermt2ps zmm1,zmm12,zmm4
  a67ff7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a67ffe:	01 
  a67fff:	62 62 0d 48 7f cc    	vpermt2ps zmm25,zmm14,zmm4
  a68005:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a6800b:	62 62 1d 48 7f f5    	vpermt2ps zmm30,zmm12,zmm5
  a68011:	62 e2 0d 48 7f fd    	vpermt2ps zmm23,zmm14,zmm5
  a68017:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm23
  a6801e:	fe 
  a6801f:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a68025:	62 62 1d 48 7f d2    	vpermt2ps zmm26,zmm12,zmm2
  a6802b:	62 f2 0d 48 7f f2    	vpermt2ps zmm6,zmm14,zmm2
  a68031:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  a68038:	02 
  a68039:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a68040:	0d 
  a68041:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a68047:	62 b2 7d 48 7f d0    	vpermt2ps zmm2,zmm0,zmm16
  a6804d:	62 b2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm16
  a68053:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a68059:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a6805f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a68066:	ff 
  a68067:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a6806d:	62 e2 45 48 7f d3    	vpermt2ps zmm18,zmm7,zmm3
  a68073:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a68079:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a68080:	07 
  a68081:	62 f2 7d 48 7f dc    	vpermt2ps zmm3,zmm0,zmm4
  a68087:	62 e2 45 48 7f cc    	vpermt2ps zmm17,zmm7,zmm4
  a6808d:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a68093:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x380]
  a6809a:	0e 
  a6809b:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  a680a1:	62 62 45 48 7f c5    	vpermt2ps zmm24,zmm7,zmm5
  a680a7:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a680ad:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x180]
  a680b4:	06 
  a680b5:	62 f2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm6
  a680bb:	62 62 45 48 7f ee    	vpermt2ps zmm29,zmm7,zmm6
  a680c1:	62 71 7c 48 10 14 24 	vmovups zmm10,ZMMWORD PTR [rsp]
  a680c8:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a680ce:	62 b2 7d 48 7f f6    	vpermt2ps zmm6,zmm0,zmm22
  a680d4:	62 32 45 48 7f d6    	vpermt2ps zmm10,zmm7,zmm22
  a680da:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a680e0:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x240]
  a680e7:	09 
  a680e8:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a680ee:	62 32 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm21
  a680f4:	62 32 45 48 7f dd    	vpermt2ps zmm11,zmm7,zmm21
  a680fa:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a68100:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x200]
  a68107:	08 
  a68108:	62 31 7c 48 28 d8    	vmovaps zmm11,zmm16
  a6810e:	62 12 7d 48 7f df    	vpermt2ps zmm11,zmm0,zmm31
  a68114:	62 82 45 48 7f c7    	vpermt2ps zmm16,zmm7,zmm31
  a6811a:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a68120:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a68126:	62 e2 35 48 7f c5    	vpermt2ps zmm16,zmm9,zmm5
  a6812c:	62 f2 15 48 7f d5    	vpermt2ps zmm2,zmm13,zmm5
  a68132:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a68138:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a6813e:	62 f2 15 48 7f ce    	vpermt2ps zmm1,zmm13,zmm6
  a68144:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a6814a:	62 d2 35 48 7f f2    	vpermt2ps zmm6,zmm9,zmm10
  a68150:	62 d2 15 48 7f da    	vpermt2ps zmm3,zmm13,zmm10
  a68156:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a6815c:	62 52 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm11
  a68162:	62 d2 15 48 7f e3    	vpermt2ps zmm4,zmm13,zmm11
  a68168:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a6816e:	62 12 35 48 7f dd    	vpermt2ps zmm11,zmm9,zmm29
  a68174:	62 82 15 48 7f fd    	vpermt2ps zmm23,zmm13,zmm29
  a6817a:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a68180:	62 b2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm22
  a68186:	62 a2 15 48 7f d6    	vpermt2ps zmm18,zmm13,zmm22
  a6818c:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a68192:	62 32 35 48 7f fc    	vpermt2ps zmm15,zmm9,zmm20
  a68198:	62 a2 15 48 7f cc    	vpermt2ps zmm17,zmm13,zmm20
  a6819e:	62 a1 c5 40 14 f9    	vunpcklpd zmm23,zmm23,zmm17
  a681a4:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a681aa:	62 e2 35 48 7f cf    	vpermt2ps zmm17,zmm9,zmm7
  a681b0:	62 62 15 48 7f c7    	vpermt2ps zmm24,zmm13,zmm7
  a681b6:	62 81 ed 40 14 d0    	vunpcklpd zmm18,zmm18,zmm24
  a681bc:	62 61 fd 40 14 fe    	vunpcklpd zmm31,zmm16,zmm6
  a681c2:	62 e1 fd 40 15 e6    	vunpckhpd zmm20,zmm16,zmm6
  a681c8:	62 d1 d5 48 14 f2    	vunpcklpd zmm6,zmm5,zmm10
  a681ce:	62 51 d5 48 15 d2    	vunpckhpd zmm10,zmm5,zmm10
  a681d4:	62 e1 ed 48 14 c3    	vunpcklpd zmm16,zmm2,zmm3
  a681da:	62 71 ed 48 15 cb    	vunpckhpd zmm9,zmm2,zmm3
  a681e0:	62 f1 f5 48 14 d4    	vunpcklpd zmm2,zmm1,zmm4
  a681e6:	62 e1 f5 48 15 ec    	vunpckhpd zmm21,zmm1,zmm4
  a681ec:	62 d1 a5 48 14 e7    	vunpcklpd zmm4,zmm11,zmm15
  a681f2:	62 51 a5 48 15 ff    	vunpckhpd zmm15,zmm11,zmm15
  a681f8:	62 31 fd 48 14 d9    	vunpcklpd zmm11,zmm0,zmm17
  a681fe:	62 b1 fd 48 15 c1    	vunpckhpd zmm0,zmm0,zmm17
  a68204:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a6820a:	62 62 1d 48 7f c6    	vpermt2ps zmm24,zmm12,zmm6
  a68210:	62 62 0d 48 7f fe    	vpermt2ps zmm31,zmm14,zmm6
  a68216:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a6821c:	62 d2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm10
  a68222:	62 c2 0d 48 7f e2    	vpermt2ps zmm20,zmm14,zmm10
  a68228:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a6822e:	62 f2 1d 48 7f ca    	vpermt2ps zmm1,zmm12,zmm2
  a68234:	62 e2 0d 48 7f c2    	vpermt2ps zmm16,zmm14,zmm2
  a6823a:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a68240:	62 b2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm21
  a68246:	62 32 0d 48 7f cd    	vpermt2ps zmm9,zmm14,zmm21
  a6824c:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a68252:	62 42 1d 48 7f eb    	vpermt2ps zmm29,zmm12,zmm11
  a68258:	62 d2 0d 48 7f e3    	vpermt2ps zmm4,zmm14,zmm11
  a6825e:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a68264:	62 f2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm0
  a6826a:	62 72 0d 48 7f f8    	vpermt2ps zmm15,zmm14,zmm0
  a68270:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a68276:	62 32 1d 48 7f da    	vpermt2ps zmm11,zmm12,zmm18
  a6827c:	62 a2 0d 48 7f fa    	vpermt2ps zmm23,zmm14,zmm18
  a68282:	62 e1 7c 48 10 69 04 	vmovups zmm21,ZMMWORD PTR [rcx+0x100]
  a68289:	62 e1 7c 48 10 49 05 	vmovups zmm17,ZMMWORD PTR [rcx+0x140]
  a68290:	62 b1 24 40 59 fd    	vmulps zmm7,zmm27,zmm21
  a68296:	62 b2 65 48 bc f9    	vfnmadd231ps zmm7,zmm3,zmm17
  a6829c:	62 b1 64 48 59 ed    	vmulps zmm5,zmm3,zmm21
  a682a2:	62 f1 7c 48 10 41 18 	vmovups zmm0,ZMMWORD PTR [rcx+0x600]
  a682a9:	62 92 75 40 b8 eb    	vfmadd231ps zmm5,zmm17,zmm27
  a682af:	62 71 7c 48 10 51 19 	vmovups zmm10,ZMMWORD PTR [rcx+0x640]
  a682b6:	62 e1 2c 40 59 e8    	vmulps zmm21,zmm26,zmm0
  a682bc:	62 c2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm10
  a682c2:	62 61 24 48 59 d8    	vmulps zmm27,zmm11,zmm0
  a682c8:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a682cf:	62 02 2d 48 b8 da    	vfmadd231ps zmm27,zmm10,zmm26
  a682d5:	62 71 7c 48 10 51 09 	vmovups zmm10,ZMMWORD PTR [rcx+0x240]
  a682dc:	62 e1 3c 48 59 f0    	vmulps zmm22,zmm8,zmm0
  a682e2:	62 c2 75 48 bc f2    	vfnmadd231ps zmm22,zmm1,zmm10
  a682e8:	62 71 74 48 59 d8    	vmulps zmm11,zmm1,zmm0
  a682ee:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a682f5:	62 52 2d 48 b8 d8    	vfmadd231ps zmm11,zmm10,zmm8
  a682fb:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a68302:	62 61 0c 40 59 d0    	vmulps zmm26,zmm30,zmm0
  a68308:	62 62 6d 48 bc d1    	vfnmadd231ps zmm26,zmm2,zmm1
  a6830e:	62 71 6c 48 59 c0    	vmulps zmm8,zmm2,zmm0
  a68314:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a6831b:	62 12 75 48 b8 c6    	vfmadd231ps zmm8,zmm1,zmm30
  a68321:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a68328:	62 71 1c 40 59 e8    	vmulps zmm13,zmm28,zmm0
  a6832e:	62 72 4d 48 bc ea    	vfnmadd231ps zmm13,zmm6,zmm2
  a68334:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a6833a:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a68341:	62 92 6d 48 b8 f4    	vfmadd231ps zmm6,zmm2,zmm28
  a68347:	62 f1 7c 48 10 51 11 	vmovups zmm2,ZMMWORD PTR [rcx+0x440]
  a6834e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a68355:	01 
  a68356:	62 e1 74 48 59 c8    	vmulps zmm17,zmm1,zmm0
  a6835c:	62 e2 15 40 bc ca    	vfnmadd231ps zmm17,zmm29,zmm2
  a68362:	62 f1 14 40 59 d8    	vmulps zmm3,zmm29,zmm0
  a68368:	62 71 7c 48 10 51 0e 	vmovups zmm10,ZMMWORD PTR [rcx+0x380]
  a6836f:	62 f2 6d 48 b8 d9    	vfmadd231ps zmm3,zmm2,zmm1
  a68375:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a6837c:	62 41 64 40 59 ea    	vmulps zmm29,zmm19,zmm10
  a68382:	62 62 35 48 bc ea    	vfnmadd231ps zmm29,zmm9,zmm2
  a68388:	62 41 34 48 59 e2    	vmulps zmm28,zmm9,zmm10
  a6838e:	62 71 7c 48 10 51 12 	vmovups zmm10,ZMMWORD PTR [rcx+0x480]
  a68395:	62 22 6d 48 b8 e3    	vfmadd231ps zmm28,zmm2,zmm19
  a6839b:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a683a2:	62 c1 34 40 59 d2    	vmulps zmm18,zmm25,zmm10
  a683a8:	62 e2 5d 48 bc d2    	vfnmadd231ps zmm18,zmm4,zmm2
  a683ae:	62 41 5c 48 59 f2    	vmulps zmm30,zmm4,zmm10
  a683b4:	62 71 7c 48 10 51 0a 	vmovups zmm10,ZMMWORD PTR [rcx+0x280]
  a683bb:	62 02 6d 48 b8 f1    	vfmadd231ps zmm30,zmm2,zmm25
  a683c1:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a683c8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a683cf:	0a 
  a683d0:	62 d1 7c 48 59 e2    	vmulps zmm4,zmm0,zmm10
  a683d6:	62 f2 7d 40 bc e2    	vfnmadd231ps zmm4,zmm16,zmm2
  a683dc:	62 c1 7c 40 59 da    	vmulps zmm19,zmm16,zmm10
  a683e2:	62 71 7c 48 10 51 16 	vmovups zmm10,ZMMWORD PTR [rcx+0x580]
  a683e9:	62 e2 6d 48 b8 d8    	vfmadd231ps zmm19,zmm2,zmm0
  a683ef:	62 f1 7c 48 10 51 17 	vmovups zmm2,ZMMWORD PTR [rcx+0x5c0]
  a683f6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a683fd:	fe 
  a683fe:	62 c1 7c 48 59 c2    	vmulps zmm16,zmm0,zmm10
  a68404:	62 e2 05 48 bc c2    	vfnmadd231ps zmm16,zmm15,zmm2
  a6840a:	62 d1 04 48 59 ca    	vmulps zmm1,zmm15,zmm10
  a68410:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  a68417:	62 f2 6d 48 b8 c8    	vfmadd231ps zmm1,zmm2,zmm0
  a6841d:	62 71 7c 48 10 71 07 	vmovups zmm14,ZMMWORD PTR [rcx+0x1c0]
  a68424:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a6842b:	03 
  a6842c:	62 d1 7c 48 59 d2    	vmulps zmm2,zmm0,zmm10
  a68432:	62 d2 5d 40 bc d6    	vfnmadd231ps zmm2,zmm20,zmm14
  a68438:	62 41 5c 40 59 ca    	vmulps zmm25,zmm20,zmm10
  a6843e:	62 71 7c 48 10 49 1a 	vmovups zmm9,ZMMWORD PTR [rcx+0x680]
  a68445:	62 62 0d 48 b8 c8    	vfmadd231ps zmm25,zmm14,zmm0
  a6844b:	62 71 7c 48 10 71 1b 	vmovups zmm14,ZMMWORD PTR [rcx+0x6c0]
  a68452:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x80]
  a68459:	02 
  a6845a:	62 51 1c 48 59 d1    	vmulps zmm10,zmm12,zmm9
  a68460:	62 52 45 40 bc d6    	vfnmadd231ps zmm10,zmm23,zmm14
  a68466:	62 d1 44 40 59 c1    	vmulps zmm0,zmm23,zmm9
  a6846c:	62 71 7c 48 10 49 02 	vmovups zmm9,ZMMWORD PTR [rcx+0x80]
  a68473:	62 d2 0d 48 b8 c4    	vfmadd231ps zmm0,zmm14,zmm12
  a68479:	62 71 7c 48 10 61 03 	vmovups zmm12,ZMMWORD PTR [rcx+0xc0]
  a68480:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x100]
  a68487:	04 
  a68488:	62 c1 04 48 59 e1    	vmulps zmm20,zmm15,zmm9
  a6848e:	62 c2 05 40 bc e4    	vfnmadd231ps zmm20,zmm31,zmm12
  a68494:	62 c1 04 40 59 f9    	vmulps zmm23,zmm31,zmm9
  a6849a:	62 31 44 48 58 f5    	vaddps zmm14,zmm7,zmm21
  a684a0:	62 c2 1d 48 b8 ff    	vfmadd231ps zmm23,zmm12,zmm15
  a684a6:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x140]
  a684ad:	05 
  a684ae:	62 51 34 48 58 e6    	vaddps zmm12,zmm9,zmm14
  a684b4:	62 71 4c 48 58 fb    	vaddps zmm15,zmm6,zmm3
  a684ba:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm15
  a684c1:	fe 
  a684c2:	62 61 4c 48 5c fb    	vsubps zmm31,zmm6,zmm3
  a684c8:	62 11 54 48 58 fb    	vaddps zmm15,zmm5,zmm27
  a684ce:	62 91 54 48 5c f3    	vsubps zmm6,zmm5,zmm27
  a684d4:	62 41 24 48 58 d8    	vaddps zmm27,zmm11,zmm8
  a684da:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a684e0:	62 b1 7c 48 58 df    	vaddps zmm3,zmm0,zmm23
  a684e6:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a684ed:	03 
  a684ee:	62 b1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm23
  a684f4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a684fb:	ff 
  a684fc:	62 b1 0c 40 58 c3    	vaddps zmm0,zmm30,zmm19
  a68502:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a68509:	01 
  a6850a:	62 a1 0c 40 5c db    	vsubps zmm19,zmm30,zmm19
  a68510:	62 91 74 48 58 c1    	vaddps zmm0,zmm1,zmm25
  a68516:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a6851d:	02 
  a6851e:	62 01 74 48 5c f1    	vsubps zmm30,zmm1,zmm25
  a68524:	62 b1 14 48 58 e9    	vaddps zmm5,zmm13,zmm17
  a6852a:	62 b1 14 48 5c c1    	vsubps zmm0,zmm13,zmm17
  a68530:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a68537:	62 91 4c 40 58 ca    	vaddps zmm1,zmm22,zmm26
  a6853d:	62 f1 1c 48 58 c1    	vaddps zmm0,zmm12,zmm1
  a68543:	62 f1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm5
  a68549:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a68550:	04 
  a68551:	62 21 44 48 5c cd    	vsubps zmm25,zmm7,zmm21
  a68557:	62 71 6c 40 58 e4    	vaddps zmm12,zmm18,zmm4
  a6855d:	62 01 4c 40 5c d2    	vsubps zmm26,zmm22,zmm26
  a68563:	62 a1 2c 48 58 ec    	vaddps zmm21,zmm10,zmm20
  a68569:	62 b1 2c 48 5c c4    	vsubps zmm0,zmm10,zmm20
  a6856f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a68576:	0a 
  a68577:	62 f1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm2
  a6857d:	62 f1 6c 40 5c c4    	vsubps zmm0,zmm18,zmm4
  a68583:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a6858a:	09 
  a6858b:	62 72 7d 48 18 1d 5f 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff60d05f]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a68592:	d0 60 ff 
  a68595:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a6859b:	62 c2 0d 48 a8 f9    	vfmadd213ps zmm23,zmm14,zmm9
  a685a1:	62 f1 7c 40 5c c2    	vsubps zmm0,zmm16,zmm2
  a685a7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a685ae:	08 
  a685af:	62 f2 7d 48 18 25 13 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff60cd13]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a685b6:	cd 60 ff 
  a685b9:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a685bf:	62 c2 0d 48 ac e1    	vfnmadd213ps zmm20,zmm14,zmm9
  a685c5:	62 c1 7c 48 28 c9    	vmovaps zmm17,zmm9
  a685cb:	62 f2 7d 48 18 15 03 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60d003]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a685d2:	d0 60 ff 
  a685d5:	62 c2 6d 48 bc ce    	vfnmadd231ps zmm17,zmm2,zmm14
  a685db:	62 d1 14 40 58 c4    	vaddps zmm0,zmm29,zmm12
  a685e1:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a685e7:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a685ed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a685f4:	05 
  a685f5:	62 e2 75 48 bc fc    	vfnmadd231ps zmm23,zmm1,zmm4
  a685fb:	62 e2 55 48 bc fa    	vfnmadd231ps zmm23,zmm5,zmm2
  a68601:	62 e2 75 48 bc e2    	vfnmadd231ps zmm20,zmm1,zmm2
  a68607:	62 e2 25 48 b8 c9    	vfmadd231ps zmm17,zmm11,zmm1
  a6860d:	62 e2 7d 48 18 05 79 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff60ce79]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a68614:	ce 60 ff 
  a68617:	62 a1 3c 48 59 d0    	vmulps zmm18,zmm8,zmm16
  a6861d:	62 f2 7d 48 18 1d 39 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60d039]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a68624:	d0 60 ff 
  a68627:	62 e2 4d 48 b8 d3    	vfmadd231ps zmm18,zmm6,zmm3
  a6862d:	62 f2 7d 48 18 05 b1 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60cfb1]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a68634:	cf 60 ff 
  a68637:	62 e2 05 40 b8 d0    	vfmadd231ps zmm18,zmm31,zmm0
  a6863d:	62 c2 55 48 b8 e3    	vfmadd231ps zmm20,zmm5,zmm11
  a68643:	62 e2 5d 48 bc cd    	vfnmadd231ps zmm17,zmm4,zmm5
  a68649:	62 31 4c 48 59 d0    	vmulps zmm10,zmm6,zmm16
  a6864f:	62 72 3d 48 bc d0    	vfnmadd231ps zmm10,zmm8,zmm0
  a68655:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a6865b:	62 d2 65 48 bc f0    	vfnmadd231ps zmm6,zmm3,zmm8
  a68661:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a68667:	62 92 1d 48 a8 cd    	vfmadd213ps zmm1,zmm12,zmm29
  a6866d:	62 72 05 40 bc d3    	vfnmadd231ps zmm10,zmm31,zmm3
  a68673:	62 92 7d 40 b8 f7    	vfmadd231ps zmm6,zmm16,zmm31
  a68679:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a6867f:	62 12 1d 48 ac ed    	vfnmadd213ps zmm13,zmm12,zmm29
  a68685:	62 42 6d 48 bc ec    	vfnmadd231ps zmm29,zmm2,zmm12
  a6868b:	62 91 04 48 58 e8    	vaddps zmm5,zmm15,zmm24
  a68691:	62 f1 24 40 58 ed    	vaddps zmm5,zmm27,zmm5
  a68697:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x80]
  a6869e:	fe 
  a6869f:	62 f1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm5
  a686a5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  a686ac:	07 
  a686ad:	62 f2 45 48 bc cc    	vfnmadd231ps zmm1,zmm7,zmm4
  a686b3:	62 f2 55 40 bc ca    	vfnmadd231ps zmm1,zmm21,zmm2
  a686b9:	62 72 45 48 bc ea    	vfnmadd231ps zmm13,zmm7,zmm2
  a686bf:	62 62 25 48 b8 ef    	vfmadd231ps zmm29,zmm11,zmm7
  a686c5:	62 b1 0c 40 59 e8    	vmulps zmm5,zmm30,zmm16
  a686cb:	62 f2 65 40 b8 eb    	vfmadd231ps zmm5,zmm19,zmm3
  a686d1:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a686d8:	ff 
  a686d9:	62 f2 3d 48 b8 e8    	vfmadd231ps zmm5,zmm8,zmm0
  a686df:	62 52 55 40 b8 eb    	vfmadd231ps zmm13,zmm21,zmm11
  a686e5:	62 22 5d 48 bc ed    	vfnmadd231ps zmm29,zmm4,zmm21
  a686eb:	62 21 64 40 59 f8    	vmulps zmm31,zmm19,zmm16
  a686f1:	62 62 0d 40 bc f8    	vfnmadd231ps zmm31,zmm30,zmm0
  a686f7:	62 f1 64 40 59 f8    	vmulps zmm7,zmm19,zmm0
  a686fd:	62 92 65 48 bc fe    	vfnmadd231ps zmm7,zmm3,zmm30
  a68703:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a68709:	62 82 05 48 a8 e8    	vfmadd213ps zmm21,zmm15,zmm24
  a6870f:	62 62 3d 48 bc fb    	vfnmadd231ps zmm31,zmm8,zmm3
  a68715:	62 d2 7d 40 b8 f8    	vfmadd231ps zmm7,zmm16,zmm8
  a6871b:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a68721:	62 12 05 48 ac c0    	vfnmadd213ps zmm8,zmm15,zmm24
  a68727:	62 42 6d 48 bc c7    	vfnmadd231ps zmm24,zmm2,zmm15
  a6872d:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x40]
  a68734:	01 
  a68735:	62 31 1c 40 58 ce    	vaddps zmm9,zmm28,zmm22
  a6873b:	62 e2 25 40 bc ec    	vfnmadd231ps zmm21,zmm27,zmm4
  a68741:	62 e2 1d 48 bc ea    	vfnmadd231ps zmm21,zmm12,zmm2
  a68747:	62 72 25 40 bc c2    	vfnmadd231ps zmm8,zmm27,zmm2
  a6874d:	62 02 25 48 b8 c3    	vfmadd231ps zmm24,zmm11,zmm27
  a68753:	62 31 2c 40 59 f0    	vmulps zmm14,zmm26,zmm16
  a68759:	62 72 35 40 b8 f3    	vfmadd231ps zmm14,zmm25,zmm3
  a6875f:	62 e1 7c 48 10 1c 24 	vmovups zmm19,ZMMWORD PTR [rsp]
  a68766:	62 72 65 40 b8 f0    	vfmadd231ps zmm14,zmm19,zmm0
  a6876c:	62 52 1d 48 b8 c3    	vfmadd231ps zmm8,zmm12,zmm11
  a68772:	62 42 5d 48 bc c4    	vfnmadd231ps zmm24,zmm4,zmm12
  a68778:	62 31 34 40 59 e0    	vmulps zmm12,zmm25,zmm16
  a6877e:	62 72 2d 40 bc e0    	vfnmadd231ps zmm12,zmm26,zmm0
  a68784:	62 71 34 40 59 f8    	vmulps zmm15,zmm25,zmm0
  a6878a:	62 12 65 48 bc fa    	vfnmadd231ps zmm15,zmm3,zmm26
  a68790:	62 41 7c 48 28 cb    	vmovaps zmm25,zmm11
  a68796:	62 02 4d 40 a8 cc    	vfmadd213ps zmm25,zmm22,zmm28
  a6879c:	62 72 65 40 bc e3    	vfnmadd231ps zmm12,zmm19,zmm3
  a687a2:	62 32 7d 40 b8 fb    	vfmadd231ps zmm15,zmm16,zmm19
  a687a8:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  a687ae:	62 82 4d 40 ac dc    	vfnmadd213ps zmm19,zmm22,zmm28
  a687b4:	62 22 6d 48 bc e6    	vfnmadd231ps zmm28,zmm2,zmm22
  a687ba:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x80]
  a687c1:	02 
  a687c2:	62 11 34 48 58 ca    	vaddps zmm9,zmm9,zmm26
  a687c8:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0xc0]
  a687cf:	03 
  a687d0:	62 31 34 48 58 ce    	vaddps zmm9,zmm9,zmm22
  a687d6:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a687dd:	fe 
  a687de:	62 62 2d 40 bc cc    	vfnmadd231ps zmm25,zmm26,zmm4
  a687e4:	62 62 4d 40 bc ca    	vfnmadd231ps zmm25,zmm22,zmm2
  a687ea:	62 e2 2d 40 bc da    	vfnmadd231ps zmm19,zmm26,zmm2
  a687f0:	62 02 25 48 b8 e2    	vfmadd231ps zmm28,zmm11,zmm26
  a687f6:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x200]
  a687fd:	08 
  a687fe:	62 31 2c 40 59 c8    	vmulps zmm9,zmm26,zmm16
  a68804:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a6880b:	09 
  a6880c:	62 72 6d 48 b8 cb    	vfmadd231ps zmm9,zmm2,zmm3
  a68812:	62 c2 4d 40 b8 db    	vfmadd231ps zmm19,zmm22,zmm11
  a68818:	62 22 5d 48 bc e6    	vfnmadd231ps zmm28,zmm4,zmm22
  a6881e:	62 31 6c 48 59 d8    	vmulps zmm11,zmm2,zmm16
  a68824:	62 72 2d 40 bc d8    	vfnmadd231ps zmm11,zmm26,zmm0
  a6882a:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a68830:	62 92 65 48 bc e2    	vfnmadd231ps zmm4,zmm3,zmm26
  a68836:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a6883d:	0a 
  a6883e:	62 72 6d 48 b8 c8    	vfmadd231ps zmm9,zmm2,zmm0
  a68844:	62 72 6d 48 bc db    	vfnmadd231ps zmm11,zmm2,zmm3
  a6884a:	62 f2 7d 40 b8 e2    	vfmadd231ps zmm4,zmm16,zmm2
  a68850:	62 e1 74 40 58 f6    	vaddps zmm22,zmm17,zmm6
  a68856:	62 f1 74 40 5c f6    	vsubps zmm6,zmm17,zmm6
  a6885c:	62 61 14 40 58 d7    	vaddps zmm26,zmm29,zmm7
  a68862:	62 f1 14 40 5c ff    	vsubps zmm7,zmm29,zmm7
  a68868:	62 41 3c 40 5c df    	vsubps zmm27,zmm24,zmm15
  a6886e:	62 01 04 48 58 e8    	vaddps zmm29,zmm15,zmm24
  a68874:	62 61 1c 40 5c f4    	vsubps zmm30,zmm28,zmm4
  a6887a:	62 61 1c 40 58 e4    	vaddps zmm28,zmm28,zmm4
  a68880:	62 d1 5c 40 58 e2    	vaddps zmm4,zmm20,zmm10
  a68886:	62 d1 5c 40 5c da    	vsubps zmm3,zmm20,zmm10
  a6888c:	62 11 14 48 58 ff    	vaddps zmm15,zmm13,zmm31
  a68892:	62 11 14 48 5c ef    	vsubps zmm13,zmm13,zmm31
  a68898:	62 c1 3c 48 5c c4    	vsubps zmm16,zmm8,zmm12
  a6889e:	62 51 1c 48 58 c0    	vaddps zmm8,zmm12,zmm8
  a688a4:	62 51 64 40 5c e3    	vsubps zmm12,zmm19,zmm11
  a688aa:	62 41 64 40 58 fb    	vaddps zmm31,zmm19,zmm11
  a688b0:	62 31 44 40 58 da    	vaddps zmm11,zmm23,zmm18
  a688b6:	62 b1 44 40 5c d2    	vsubps zmm2,zmm23,zmm18
  a688bc:	62 71 74 48 58 d5    	vaddps zmm10,zmm1,zmm5
  a688c2:	62 f1 74 48 5c cd    	vsubps zmm1,zmm1,zmm5
  a688c8:	62 d1 54 40 5c ee    	vsubps zmm5,zmm21,zmm14
  a688ce:	62 a1 0c 48 58 cd    	vaddps zmm17,zmm14,zmm21
  a688d4:	62 51 34 40 5c f1    	vsubps zmm14,zmm25,zmm9
  a688da:	62 51 34 40 58 c9    	vaddps zmm9,zmm25,zmm9
  a688e0:	62 d1 24 48 5c c2    	vsubps zmm0,zmm11,zmm10
  a688e6:	62 41 24 48 58 ca    	vaddps zmm25,zmm11,zmm10
  a688ec:	62 51 54 48 5c de    	vsubps zmm11,zmm5,zmm14
  a688f2:	62 c1 54 48 58 de    	vaddps zmm19,zmm5,zmm14
  a688f8:	62 51 5c 48 58 d7    	vaddps zmm10,zmm4,zmm15
  a688fe:	62 51 5c 48 5c ff    	vsubps zmm15,zmm4,zmm15
  a68904:	62 51 7c 40 58 f4    	vaddps zmm14,zmm16,zmm12
  a6890a:	62 c1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm12
  a68910:	62 81 4c 40 5c fa    	vsubps zmm23,zmm22,zmm26
  a68916:	62 91 4c 40 58 e2    	vaddps zmm4,zmm22,zmm26
  a6891c:	62 01 24 40 5c c6    	vsubps zmm24,zmm27,zmm30
  a68922:	62 91 24 40 58 ee    	vaddps zmm5,zmm27,zmm30
  a68928:	62 e1 4c 48 58 e7    	vaddps zmm20,zmm6,zmm7
  a6892e:	62 61 4c 48 5c df    	vsubps zmm27,zmm6,zmm7
  a68934:	62 81 14 40 58 ec    	vaddps zmm21,zmm29,zmm28
  a6893a:	62 01 14 40 5c ec    	vsubps zmm29,zmm29,zmm28
  a68940:	62 d1 64 48 5c f5    	vsubps zmm6,zmm3,zmm13
  a68946:	62 41 64 48 58 d5    	vaddps zmm26,zmm3,zmm13
  a6894c:	62 11 3c 48 5c ef    	vsubps zmm13,zmm8,zmm31
  a68952:	62 01 3c 48 58 e7    	vaddps zmm28,zmm8,zmm31
  a68958:	62 f1 6c 48 58 d9    	vaddps zmm3,zmm2,zmm1
  a6895e:	62 f1 6c 48 5c f9    	vsubps zmm7,zmm2,zmm1
  a68964:	62 51 74 40 58 e1    	vaddps zmm12,zmm17,zmm9
  a6896a:	62 51 74 40 5c c1    	vsubps zmm8,zmm17,zmm9
  a68970:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a68977:	07 
  a68978:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a6897f:	fe 
  a68980:	62 71 74 48 5c ca    	vsubps zmm9,zmm1,zmm2
  a68986:	62 f1 74 48 58 d2    	vaddps zmm2,zmm1,zmm2
  a6898c:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x100]
  a68993:	04 
  a68994:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x140]
  a6899b:	05 
  a6899c:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a689a2:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a689a8:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a689ae:	62 e1 7c 48 28 35 48 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff62b948]        # 94300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x217b0>
  a689b5:	b9 62 ff 
  a689b8:	62 a2 4d 40 7f d1    	vpermt2ps zmm18,zmm22,zmm17
  a689be:	62 e1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm18
  a689c5:	62 a1 6c 48 14 d1    	vunpcklps zmm18,zmm2,zmm17
  a689cb:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm18,0x3
  a689d2:	06 03 
  a689d4:	62 a1 6c 48 15 d1    	vunpckhps zmm18,zmm2,zmm17
  a689da:	62 a3 7d 48 19 d2 03 	vextractf32x4 xmm18,zmm18,0x3
  a689e1:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm18
  a689e8:	0e 
  a689e9:	62 e1 7c 28 28 15 4d 	vmovaps ymm18,YMMWORD PTR [rip+0xffffffffff62b94d]        # 94340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x217f0>
  a689f0:	b9 62 ff 
  a689f3:	62 b2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm17
  a689f9:	c5 fc 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  a689ff:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a68a05:	62 f2 4d 40 7f d0    	vpermt2ps zmm2,zmm22,zmm0
  a68a0b:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm2
  a68a12:	78 00 00 00 
  a68a16:	62 f1 24 48 14 d0    	vunpcklps zmm2,zmm11,zmm0
  a68a1c:	62 f3 7d 48 19 94 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm2,0x3
  a68a23:	d8 00 00 00 03 
  a68a28:	62 f1 24 48 15 d0    	vunpckhps zmm2,zmm11,zmm0
  a68a2e:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a68a35:	c5 f8 13 94 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm2
  a68a3c:	00 00 
  a68a3e:	62 72 6d 40 7f d8    	vpermt2ps zmm11,zmm18,zmm0
  a68a44:	c5 7c 11 9c 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm11
  a68a4b:	00 00 
  a68a4d:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a68a53:	62 d2 4d 40 7f c2    	vpermt2ps zmm0,zmm22,zmm10
  a68a59:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm0
  a68a60:	f0 00 00 00 
  a68a64:	62 d1 0c 48 14 c2    	vunpcklps zmm0,zmm14,zmm10
  a68a6a:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm0,0x3
  a68a71:	15 03 
  a68a73:	62 d1 0c 48 15 c2    	vunpckhps zmm0,zmm14,zmm10
  a68a79:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68a80:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a68a87:	00 00 
  a68a89:	62 52 6d 40 7f f2    	vpermt2ps zmm14,zmm18,zmm10
  a68a8f:	c5 7c 11 b4 16 30 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm14
  a68a96:	00 00 
  a68a98:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a68a9e:	62 b2 4d 40 7f c7    	vpermt2ps zmm0,zmm22,zmm23
  a68aa4:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm0
  a68aab:	68 01 00 00 
  a68aaf:	62 b1 3c 40 14 c7    	vunpcklps zmm0,zmm24,zmm23
  a68ab5:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm0,0x3
  a68abc:	c8 01 00 00 03 
  a68ac1:	62 b1 3c 40 15 c7    	vunpckhps zmm0,zmm24,zmm23
  a68ac7:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68ace:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a68ad5:	00 00 
  a68ad7:	62 22 6d 40 7f c7    	vpermt2ps zmm24,zmm18,zmm23
  a68add:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm24
  a68ae4:	a8 01 00 00 
  a68ae8:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a68aee:	62 b2 4d 40 7f c4    	vpermt2ps zmm0,zmm22,zmm20
  a68af4:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm0
  a68afb:	e0 01 00 00 
  a68aff:	62 b1 54 40 14 c4    	vunpcklps zmm0,zmm21,zmm20
  a68b05:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm0,0x3
  a68b0c:	24 03 
  a68b0e:	62 b1 54 40 15 c4    	vunpckhps zmm0,zmm21,zmm20
  a68b14:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68b1b:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a68b22:	00 00 
  a68b24:	62 a2 6d 40 7f ec    	vpermt2ps zmm21,zmm18,zmm20
  a68b2a:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm21
  a68b31:	11 
  a68b32:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a68b38:	62 f2 4d 40 7f c6    	vpermt2ps zmm0,zmm22,zmm6
  a68b3e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm0
  a68b45:	58 02 00 00 
  a68b49:	62 f1 14 48 14 c6    	vunpcklps zmm0,zmm13,zmm6
  a68b4f:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm0,0x3
  a68b56:	b8 02 00 00 03 
  a68b5b:	62 f1 14 48 15 c6    	vunpckhps zmm0,zmm13,zmm6
  a68b61:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68b68:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a68b6f:	00 00 
  a68b71:	62 72 6d 40 7f ee    	vpermt2ps zmm13,zmm18,zmm6
  a68b77:	c5 7c 11 ac 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm13
  a68b7e:	00 00 
  a68b80:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a68b86:	62 f2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm3
  a68b8c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm0
  a68b93:	d0 02 00 00 
  a68b97:	62 f1 1c 48 14 c3    	vunpcklps zmm0,zmm12,zmm3
  a68b9d:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm0,0x3
  a68ba4:	33 03 
  a68ba6:	62 f1 1c 48 15 c3    	vunpckhps zmm0,zmm12,zmm3
  a68bac:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68bb3:	c5 f8 13 84 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm0
  a68bba:	00 00 
  a68bbc:	62 72 6d 40 7f e3    	vpermt2ps zmm12,zmm18,zmm3
  a68bc2:	c5 7c 11 a4 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm12
  a68bc9:	00 00 
  a68bcb:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a68bd1:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a68bd7:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm0
  a68bde:	48 03 00 00 
  a68be2:	62 f1 34 48 14 c1    	vunpcklps zmm0,zmm9,zmm1
  a68be8:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm0,0x3
  a68bef:	a8 03 00 00 03 
  a68bf4:	62 f1 34 48 15 c1    	vunpckhps zmm0,zmm9,zmm1
  a68bfa:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68c01:	c5 f8 13 84 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm0
  a68c08:	00 00 
  a68c0a:	62 72 6d 40 7f c9    	vpermt2ps zmm9,zmm18,zmm1
  a68c10:	c5 7c 11 8c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm9
  a68c17:	00 00 
  a68c19:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a68c1f:	62 92 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm25
  a68c25:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a68c2c:	0f 
  a68c2d:	62 91 64 40 14 c1    	vunpcklps zmm0,zmm19,zmm25
  a68c33:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm0,0x3
  a68c3a:	42 03 
  a68c3c:	62 91 64 40 15 c1    	vunpckhps zmm0,zmm19,zmm25
  a68c42:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68c49:	c5 f8 13 84 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm0
  a68c50:	00 00 
  a68c52:	62 82 6d 40 7f d9    	vpermt2ps zmm19,zmm18,zmm25
  a68c58:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm19
  a68c5f:	20 
  a68c60:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a68c66:	62 d2 4d 40 7f c7    	vpermt2ps zmm0,zmm22,zmm15
  a68c6c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm0
  a68c73:	38 04 00 00 
  a68c77:	62 d1 7c 40 14 c7    	vunpcklps zmm0,zmm16,zmm15
  a68c7d:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm0,0x3
  a68c84:	98 04 00 00 03 
  a68c89:	62 d1 7c 40 15 c7    	vunpckhps zmm0,zmm16,zmm15
  a68c8f:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68c96:	c5 f8 13 84 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm0
  a68c9d:	00 00 
  a68c9f:	62 c2 6d 40 7f c7    	vpermt2ps zmm16,zmm18,zmm15
  a68ca5:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm16
  a68cac:	78 04 00 00 
  a68cb0:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a68cb6:	62 f2 4d 40 7f c4    	vpermt2ps zmm0,zmm22,zmm4
  a68cbc:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm0
  a68cc3:	b0 04 00 00 
  a68cc7:	62 f1 54 48 14 c4    	vunpcklps zmm0,zmm5,zmm4
  a68ccd:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm0,0x3
  a68cd4:	51 03 
  a68cd6:	62 f1 54 48 15 c4    	vunpckhps zmm0,zmm5,zmm4
  a68cdc:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68ce3:	c5 f8 13 84 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm0
  a68cea:	00 00 
  a68cec:	62 f2 6d 40 7f ec    	vpermt2ps zmm5,zmm18,zmm4
  a68cf2:	c5 fc 11 ac 16 f0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm5
  a68cf9:	00 00 
  a68cfb:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a68d01:	62 92 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm27
  a68d07:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a68d0e:	28 05 00 00 
  a68d12:	62 91 14 40 14 c3    	vunpcklps zmm0,zmm29,zmm27
  a68d18:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a68d1f:	88 05 00 00 03 
  a68d24:	62 91 14 40 15 c3    	vunpckhps zmm0,zmm29,zmm27
  a68d2a:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68d31:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a68d38:	00 00 
  a68d3a:	62 02 6d 40 7f eb    	vpermt2ps zmm29,zmm18,zmm27
  a68d40:	62 61 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm29
  a68d47:	68 05 00 00 
  a68d4b:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a68d51:	62 92 4d 40 7f c2    	vpermt2ps zmm0,zmm22,zmm26
  a68d57:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a68d5e:	a0 05 00 00 
  a68d62:	62 91 1c 40 14 c2    	vunpcklps zmm0,zmm28,zmm26
  a68d68:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a68d6f:	60 03 
  a68d71:	62 91 1c 40 15 c2    	vunpckhps zmm0,zmm28,zmm26
  a68d77:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68d7e:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a68d85:	00 00 
  a68d87:	62 02 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm26
  a68d8d:	62 61 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm28
  a68d94:	2f 
  a68d95:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a68d9b:	62 f2 4d 40 7f c7    	vpermt2ps zmm0,zmm22,zmm7
  a68da1:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a68da8:	18 06 00 00 
  a68dac:	62 f1 3c 48 14 c7    	vunpcklps zmm0,zmm8,zmm7
  a68db2:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a68db9:	78 06 00 00 03 
  a68dbe:	62 f1 3c 48 15 c7    	vunpckhps zmm0,zmm8,zmm7
  a68dc4:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a68dcb:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a68dd2:	00 00 
  a68dd4:	62 72 6d 40 7f c7    	vpermt2ps zmm8,zmm18,zmm7
  a68dda:	c5 7c 11 84 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm8
  a68de1:	00 00 
  a68de3:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a68dea:	48 39 d0             	cmp    rax,rdx
  a68ded:	0f 85 6d e3 ff ff    	jne    a67160 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a68df3:	48 81 c4 88 04 00 00 	add    rsp,0x488
  a68dfa:	c5 f8 77             	vzeroupper
  a68dfd:	c3                   	ret
