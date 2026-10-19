
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a55400 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a55400:	55                   	push   rbp
  a55401:	48 89 e5             	mov    rbp,rsp
  a55404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a55408:	48 81 ec c0 0c 00 00 	sub    rsp,0xcc0
  a5540f:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a55416:	31 d2                	xor    edx,edx
  a55418:	4c 8d 84 24 40 0c 00 	lea    r8,[rsp+0xc40]
  a5541f:	00 
  a55420:	4c 8d 4c 24 78       	lea    r9,[rsp+0x78]
  a55425:	41 b2 7f             	mov    r10b,0x7f
  a55428:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a5542d:	0f 1f 00             	nop    DWORD PTR [rax]
  a55430:	c6 84 24 40 0c 00 00 	mov    BYTE PTR [rsp+0xc40],0x0
  a55437:	00 
  a55438:	4c 89 44 24 78       	mov    QWORD PTR [rsp+0x78],r8
  a5543d:	62 71 7c 48 10 0c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1]
  a55444:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm9
  a5544b:	02 
  a5544c:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x40]
  a55453:	02 
  a55454:	c5 f8 10 44 17 60    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x60]
  a5545a:	c4 e3 79 21 4c 17 64 	vinsertps xmm1,xmm0,DWORD PTR [rdi+rdx*1+0x64],0x10
  a55461:	10 
  a55462:	c4 e2 79 18 74 17 68 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x68]
  a55469:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  a5546f:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x78]
  a55476:	78 00 00 00 
  a5547a:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0xb8]
  a55481:	b8 00 00 00 
  a55485:	c5 f8 10 94 17 d8 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xd8]
  a5548c:	00 00 
  a5548e:	c4 e3 69 21 bc 17 dc 	vinsertps xmm7,xmm2,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a55495:	00 00 00 10 
  a55499:	c4 62 79 18 84 17 e0 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0xe0]
  a554a0:	00 00 00 
  a554a3:	c5 fb 10 94 17 e8 00 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0xe8]
  a554aa:	00 00 
  a554ac:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a554b3:	f0 00 00 00 
  a554b7:	62 61 7c 28 10 8c 17 	vmovups ymm25,YMMWORD PTR [rdi+rdx*1+0x130]
  a554be:	30 01 00 00 
  a554c2:	c5 78 10 94 17 50 01 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x150]
  a554c9:	00 00 
  a554cb:	c4 63 29 21 9c 17 54 	vinsertps xmm11,xmm10,DWORD PTR [rdi+rdx*1+0x154],0x10
  a554d2:	01 00 00 10 
  a554d6:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a554dc:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a554e2:	c4 62 79 18 a4 17 58 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x158]
  a554e9:	01 00 00 
  a554ec:	c5 7b 10 ac 17 60 01 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x160]
  a554f3:	00 00 
  a554f5:	c4 e3 49 0c c9 03    	vblendps xmm1,xmm6,xmm1,0x3
  a554fb:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm19
  a55502:	06 
  a55503:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x168]
  a5550a:	68 01 00 00 
  a5550e:	62 61 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm31
  a55515:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a5551c:	30 
  a5551d:	c5 f8 10 b4 17 c8 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a55524:	00 00 
  a55526:	c4 63 49 21 b4 17 cc 	vinsertps xmm14,xmm6,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a5552d:	01 00 00 10 
  a55531:	c4 e3 39 0c f7 03    	vblendps xmm6,xmm8,xmm7,0x3
  a55537:	c4 e2 79 18 bc 17 d0 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x1d0]
  a5553e:	01 00 00 
  a55541:	62 e3 4d 08 21 44 17 	vinsertps xmm16,xmm6,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a55548:	39 30 
  a5554a:	c5 fc 10 b4 17 a8 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a55551:	00 00 
  a55553:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x1d8]
  a5555a:	3b 
  a5555b:	c4 43 19 0c db 03    	vblendps xmm11,xmm12,xmm11,0x3
  a55561:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a55568:	e0 01 00 00 
  a5556c:	c5 7c 10 a4 17 20 02 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x220]
  a55573:	00 00 
  a55575:	c4 63 21 21 9c 17 5c 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a5557c:	01 00 00 30 
  a55580:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x240]
  a55587:	24 
  a55588:	62 f3 6d 00 21 9c 17 	vinsertps xmm3,xmm18,DWORD PTR [rdi+rdx*1+0x244],0x10
  a5558f:	44 02 00 00 10 
  a55594:	c4 c3 41 0c fe 03    	vblendps xmm7,xmm7,xmm14,0x3
  a5559a:	c4 62 79 18 b4 17 48 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x248]
  a555a1:	02 00 00 
  a555a4:	c4 e3 41 21 bc 17 d4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a555ab:	01 00 00 30 
  a555af:	c4 e3 09 0c db 03    	vblendps xmm3,xmm14,xmm3,0x3
  a555b5:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a555bc:	02 00 00 30 
  a555c0:	c4 63 75 18 f0 01    	vinsertf128 ymm14,ymm1,xmm0,0x1
  a555c6:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x250]
  a555cd:	4a 
  a555ce:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a555d4:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x258]
  a555db:	58 02 00 00 
  a555df:	62 e3 7d 20 18 c2 01 	vinsertf32x4 ymm16,ymm16,xmm2,0x1
  a555e6:	c5 f8 10 94 17 b8 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a555ed:	00 00 
  a555ef:	c4 e3 69 21 94 17 bc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a555f6:	02 00 00 10 
  a555fa:	c4 43 25 18 dd 01    	vinsertf128 ymm11,ymm11,xmm13,0x1
  a55600:	c5 7c 10 ac 17 98 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x298]
  a55607:	00 00 
  a55609:	c4 e2 79 18 a4 17 c0 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x2c0]
  a55610:	02 00 00 
  a55613:	62 b3 45 28 18 f9 01 	vinsertf32x4 ymm7,ymm7,xmm17,0x1
  a5561a:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a55620:	c4 e3 69 21 94 17 c4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a55627:	02 00 00 30 
  a5562b:	62 b3 65 28 18 da 01 	vinsertf32x4 ymm3,ymm3,xmm18,0x1
  a55632:	c5 fb 10 a4 17 c8 02 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x2c8]
  a55639:	00 00 
  a5563b:	62 e3 6d 28 18 cc 01 	vinsertf32x4 ymm17,ymm2,xmm4,0x1
  a55642:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a55649:	04 
  a5564a:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a55650:	62 53 cd 40 1a f6 01 	vinsertf64x4 zmm14,zmm22,ymm14,0x1
  a55657:	c5 f8 10 a4 17 30 03 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x330]
  a5565e:	00 00 
  a55660:	c4 e3 59 21 ac 17 34 	vinsertps xmm5,xmm4,DWORD PTR [rdi+rdx*1+0x334],0x10
  a55667:	03 00 00 10 
  a5566b:	62 a3 bd 40 1a c0 01 	vinsertf64x4 zmm16,zmm24,ymm16,0x1
  a55672:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a55679:	d0 02 00 00 
  a5567d:	c4 e2 79 18 84 17 38 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x338]
  a55684:	03 00 00 
  a55687:	62 53 b5 40 1a db 01 	vinsertf64x4 zmm11,zmm25,ymm11,0x1
  a5568e:	c4 e3 79 0c c5 03    	vblendps xmm0,xmm0,xmm5,0x3
  a55694:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a5569b:	03 00 00 30 
  a5569f:	62 e3 cd 48 1a f7 01 	vinsertf64x4 zmm22,zmm6,ymm7,0x1
  a556a6:	c5 fc 10 ac 17 10 03 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x310]
  a556ad:	00 00 
  a556af:	c5 fb 10 b4 17 40 03 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x340]
  a556b6:	00 00 
  a556b8:	c4 e3 7d 18 c6 01    	vinsertf128 ymm0,ymm0,xmm6,0x1
  a556be:	62 e3 9d 48 1a d3 01 	vinsertf64x4 zmm18,zmm12,ymm3,0x1
  a556c5:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a556cc:	03 
  a556cd:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x348]
  a556d4:	48 03 00 00 
  a556d8:	c5 7c 10 a4 17 88 03 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x388]
  a556df:	00 00 
  a556e1:	62 33 95 48 1a e9 01 	vinsertf64x4 zmm13,zmm13,ymm17,0x1
  a556e8:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a556ef:	a8 03 00 00 
  a556f3:	62 f3 75 00 21 bc 17 	vinsertps xmm7,xmm17,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a556fa:	ac 03 00 00 10 
  a556ff:	62 f3 d5 48 1a c0 01 	vinsertf64x4 zmm0,zmm5,ymm0,0x1
  a55706:	c4 e2 79 18 ac 17 b0 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x3b0]
  a5570d:	03 00 00 
  a55710:	c4 e3 51 0c ef 03    	vblendps xmm5,xmm5,xmm7,0x3
  a55716:	62 42 fd c9 88 d6    	vexpandpd zmm26{k1}{z},zmm14
  a5571c:	c4 e3 51 21 ac 17 b4 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a55723:	03 00 00 30 
  a55727:	c5 fb 10 bc 17 b8 03 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x3b8]
  a5572e:	00 00 
  a55730:	62 22 fd c9 88 d8    	vexpandpd zmm27{k1}{z},zmm16
  a55736:	c4 e3 55 18 ef 01    	vinsertf128 ymm5,ymm5,xmm7,0x1
  a5573c:	62 e3 9d 48 1a c5 01 	vinsertf64x4 zmm16,zmm12,ymm5,0x1
  a55743:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a55749:	62 42 fd c9 88 f3    	vexpandpd zmm30{k1}{z},zmm11
  a5574f:	c5 f8 10 bc 17 20 04 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x420]
  a55756:	00 00 
  a55758:	c4 e3 41 21 bc 17 24 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x424],0x10
  a5575f:	04 00 00 10 
  a55763:	62 a2 fd c9 88 f6    	vexpandpd zmm22{k1}{z},zmm22
  a55769:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a55770:	0f 
  a55771:	c4 62 79 18 9c 17 28 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x428]
  a55778:	04 00 00 
  a5577b:	62 22 fd c9 88 ea    	vexpandpd zmm29{k1}{z},zmm18
  a55781:	c4 e3 21 0c ff 03    	vblendps xmm7,xmm11,xmm7,0x3
  a55787:	c4 e3 41 21 bc 17 2c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a5578e:	04 00 00 30 
  a55792:	62 42 fd c9 88 c5    	vexpandpd zmm24{k1}{z},zmm13
  a55798:	c5 7c 10 9c 17 00 04 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x400]
  a5579f:	00 00 
  a557a1:	c5 7b 10 ac 17 30 04 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x430]
  a557a8:	00 00 
  a557aa:	c4 c3 45 18 fd 01    	vinsertf128 ymm7,ymm7,xmm13,0x1
  a557b0:	62 e2 fd c9 88 c8    	vexpandpd zmm17{k1}{z},zmm0
  a557b6:	62 f3 a5 48 1a c7 01 	vinsertf64x4 zmm0,zmm11,ymm7,0x1
  a557bd:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a557c3:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x438]
  a557ca:	38 04 00 00 
  a557ce:	62 22 fd c9 88 e0    	vexpandpd zmm28{k1}{z},zmm16
  a557d4:	c5 78 10 ac 17 98 04 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x498]
  a557db:	00 00 
  a557dd:	c4 63 11 21 ac 17 9c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a557e4:	04 00 00 10 
  a557e8:	62 62 fd c9 88 c8    	vexpandpd zmm25{k1}{z},zmm0
  a557ee:	c5 fc 10 84 17 78 04 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x478]
  a557f5:	00 00 
  a557f7:	c4 62 79 18 b4 17 a0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x4a0]
  a557fe:	04 00 00 
  a55801:	62 f1 7c 48 28 2d f5 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff63d5f5]        # 92e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x202b0>
  a55808:	d5 63 ff 
  a5580b:	62 12 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm26
  a55811:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a55818:	07 
  a55819:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a5581f:	c4 63 11 21 ac 17 a4 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a55826:	04 00 00 30 
  a5582a:	62 f1 7c 48 28 35 0c 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63d60c]        # 92e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x202f0>
  a55831:	d6 63 ff 
  a55834:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a5583b:	02 
  a5583c:	62 92 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm26
  a55842:	c5 7b 10 b4 17 a8 04 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x4a8]
  a55849:	00 00 
  a5584b:	c4 43 15 18 ee 01    	vinsertf128 ymm13,ymm13,xmm14,0x1
  a55851:	62 d3 fd 48 1a c5 01 	vinsertf64x4 zmm0,zmm0,ymm13,0x1
  a55858:	62 12 55 48 7f d3    	vpermt2ps zmm10,zmm5,zmm27
  a5585e:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a55865:	02 
  a55866:	62 62 fd c9 88 d0    	vexpandpd zmm26{k1}{z},zmm0
  a5586c:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a55872:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a55879:	b0 04 00 00 
  a5587d:	62 12 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm27
  a55883:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm15
  a5588a:	05 
  a5588b:	c5 f8 10 84 17 10 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x510]
  a55892:	00 00 
  a55894:	c4 e3 79 21 84 17 14 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x514],0x10
  a5589b:	05 00 00 10 
  a5589f:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x180]
  a558a6:	06 
  a558a7:	62 12 55 48 7f d6    	vpermt2ps zmm10,zmm5,zmm30
  a558ad:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a558b4:	f0 04 00 00 
  a558b8:	c4 62 79 18 b4 17 18 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x518]
  a558bf:	05 00 00 
  a558c2:	62 82 4d 48 7f de    	vpermt2ps zmm19,zmm6,zmm30
  a558c8:	c4 e3 09 0c c0 03    	vblendps xmm0,xmm14,xmm0,0x3
  a558ce:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a558d5:	05 00 00 30 
  a558d9:	62 22 55 48 7f fe    	vpermt2ps zmm31,zmm5,zmm22
  a558df:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm31
  a558e6:	06 
  a558e7:	c5 7b 10 b4 17 20 05 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x520]
  a558ee:	00 00 
  a558f0:	c4 c3 7d 18 c6 01    	vinsertf128 ymm0,ymm0,xmm14,0x1
  a558f6:	62 f3 ed 40 1a c0 01 	vinsertf64x4 zmm0,zmm18,ymm0,0x1
  a558fd:	62 e1 7c 48 28 3c 24 	vmovaps zmm23,ZMMWORD PTR [rsp]
  a55904:	62 a2 4d 48 7f fe    	vpermt2ps zmm23,zmm6,zmm22
  a5590a:	62 62 fd c9 88 d8    	vexpandpd zmm27{k1}{z},zmm0
  a55910:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a55916:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x528]
  a5591d:	28 05 00 00 
  a55921:	62 92 55 48 7f cd    	vpermt2ps zmm1,zmm5,zmm29
  a55927:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a5592d:	c5 f8 10 84 17 88 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x588]
  a55934:	00 00 
  a55936:	c4 e3 79 21 8c 17 8c 	vinsertps xmm1,xmm0,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a5593d:	05 00 00 10 
  a55941:	62 12 4d 48 7f c5    	vpermt2ps zmm8,zmm6,zmm29
  a55947:	62 71 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm8
  a5594e:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x568]
  a55955:	68 05 00 00 
  a55959:	c4 e2 79 18 84 17 90 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x590]
  a55960:	05 00 00 
  a55963:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a5596a:	04 
  a5596b:	62 12 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm24
  a55971:	c4 e3 79 0c c1 03    	vblendps xmm0,xmm0,xmm1,0x3
  a55977:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x594],0x30
  a5597e:	05 00 00 30 
  a55982:	62 92 4d 48 7f d0    	vpermt2ps zmm2,zmm6,zmm24
  a55988:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a5598f:	04 
  a55990:	c5 fb 10 8c 17 98 05 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x598]
  a55997:	00 00 
  a55999:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a5599f:	62 e3 cd 40 1a f0 01 	vinsertf64x4 zmm22,zmm22,ymm0,0x1
  a559a6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a559ad:	03 
  a559ae:	62 b2 55 48 7f d1    	vpermt2ps zmm2,zmm5,zmm17
  a559b4:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a559bb:	00 00 
  a559bd:	c4 e3 71 21 8c 17 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a559c4:	06 00 00 10 
  a559c8:	62 b2 4d 48 7f e1    	vpermt2ps zmm4,zmm6,zmm17
  a559ce:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a559d4:	c4 e2 79 18 84 17 08 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x608]
  a559db:	06 00 00 
  a559de:	62 82 55 48 7f e4    	vpermt2ps zmm20,zmm5,zmm28
  a559e4:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm20
  a559eb:	08 
  a559ec:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a559f3:	a0 05 00 00 
  a559f7:	c4 e3 79 0c c1 03    	vblendps xmm0,xmm0,xmm1,0x3
  a559fd:	c5 fc 10 8c 17 e0 05 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a55a04:	00 00 
  a55a06:	62 82 4d 48 7f ec    	vpermt2ps zmm21,zmm6,zmm28
  a55a0c:	c4 e3 79 21 84 17 0c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a55a13:	06 00 00 30 
  a55a17:	62 61 ff 08 10 a4 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x610]
  a55a1e:	10 06 00 00 
  a55a22:	62 a2 fd c9 88 f6    	vexpandpd zmm22{k1}{z},zmm22
  a55a28:	62 93 7d 28 18 c4 01 	vinsertf32x4 ymm0,ymm0,xmm28,0x1
  a55a2f:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a55a36:	62 62 fd c9 88 e8    	vexpandpd zmm29{k1}{z},zmm0
  a55a3c:	62 12 55 48 7f d9    	vpermt2ps zmm11,zmm5,zmm25
  a55a42:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a55a48:	c5 f8 10 8c 17 78 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x678]
  a55a4f:	00 00 
  a55a51:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a55a58:	06 00 00 10 
  a55a5c:	62 12 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm25
  a55a62:	62 21 7c 48 28 c9    	vmovaps zmm25,zmm17
  a55a68:	c4 e2 79 18 84 17 80 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x680]
  a55a6f:	06 00 00 
  a55a72:	62 12 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm26
  a55a78:	c4 e3 79 0c c1 03    	vblendps xmm0,xmm0,xmm1,0x3
  a55a7e:	c4 e3 79 21 84 17 84 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x684],0x30
  a55a85:	06 00 00 30 
  a55a89:	62 92 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm26
  a55a8f:	62 61 7c 28 10 a4 17 	vmovups ymm28,YMMWORD PTR [rdi+rdx*1+0x658]
  a55a96:	58 06 00 00 
  a55a9a:	62 61 ff 08 10 94 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x688]
  a55aa1:	88 06 00 00 
  a55aa5:	62 93 7d 28 18 c2 01 	vinsertf32x4 ymm0,ymm0,xmm26,0x1
  a55aac:	62 82 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm27
  a55ab2:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x6f0]
  a55ab9:	6f 
  a55aba:	62 f3 2d 00 21 8c 17 	vinsertps xmm1,xmm26,DWORD PTR [rdi+rdx*1+0x6f4],0x10
  a55ac1:	f4 06 00 00 10 
  a55ac6:	62 82 4d 48 7f c3    	vpermt2ps zmm16,zmm6,zmm27
  a55acc:	62 63 9d 40 1a d0 01 	vinsertf64x4 zmm26,zmm28,ymm0,0x1
  a55ad3:	c4 e2 79 18 84 17 f8 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x6f8]
  a55ada:	06 00 00 
  a55add:	62 22 55 48 7f c6    	vpermt2ps zmm24,zmm5,zmm22
  a55ae3:	62 61 7c 48 10 9c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x618]
  a55aea:	18 06 00 00 
  a55aee:	c4 e3 79 0c c1 03    	vblendps xmm0,xmm0,xmm1,0x3
  a55af4:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a55afa:	62 32 4d 48 7f f6    	vpermt2ps zmm14,zmm6,zmm22
  a55b00:	c4 e3 79 21 84 17 fc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6fc],0x30
  a55b07:	06 00 00 30 
  a55b0b:	c5 fb 10 8c 17 00 07 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x700]
  a55b12:	00 00 
  a55b14:	62 82 fd c9 88 f2    	vexpandpd zmm22{k1}{z},zmm26
  a55b1a:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a55b20:	c5 fc 10 8c 17 d0 06 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x6d0]
  a55b27:	00 00 
  a55b29:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a55b30:	62 02 55 48 7f cd    	vpermt2ps zmm25,zmm5,zmm29
  a55b36:	c5 f8 10 8c 17 68 07 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x768]
  a55b3d:	00 00 
  a55b3f:	c4 e3 71 21 8c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x76c],0x10
  a55b46:	07 00 00 10 
  a55b4a:	62 82 4d 48 7f cd    	vpermt2ps zmm17,zmm6,zmm29
  a55b50:	c4 62 79 18 bc 17 70 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x770]
  a55b57:	07 00 00 
  a55b5a:	c4 e3 01 0c c9 03    	vblendps xmm1,xmm15,xmm1,0x3
  a55b60:	62 22 55 48 7f e6    	vpermt2ps zmm28,zmm5,zmm22
  a55b66:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x690]
  a55b6d:	90 06 00 00 
  a55b71:	c4 e3 71 21 8c 17 74 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x774],0x30
  a55b78:	07 00 00 30 
  a55b7c:	62 22 4d 48 7f de    	vpermt2ps zmm27,zmm6,zmm22
  a55b82:	62 e1 ff 08 10 b4 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x778]
  a55b89:	78 07 00 00 
  a55b8d:	62 b3 75 28 18 ce 01 	vinsertf32x4 ymm1,ymm1,xmm22,0x1
  a55b94:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x748]
  a55b9b:	48 07 00 00 
  a55b9f:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a55ba5:	62 f3 cd 40 1a c9 01 	vinsertf64x4 zmm1,zmm22,ymm1,0x1
  a55bac:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a55bb2:	62 62 55 48 7f f8    	vpermt2ps zmm31,zmm5,zmm0
  a55bb8:	62 72 4d 48 7f f8    	vpermt2ps zmm15,zmm6,zmm0
  a55bbe:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x708]
  a55bc5:	08 07 00 00 
  a55bc9:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a55bcf:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a55bd5:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a55bdb:	62 62 4d 48 7f f1    	vpermt2ps zmm30,zmm6,zmm1
  a55be1:	62 41 64 48 58 d4    	vaddps zmm26,zmm3,zmm12
  a55be7:	62 d1 64 48 5c cc    	vsubps zmm1,zmm3,zmm12
  a55bed:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a55bf4:	03 
  a55bf5:	62 81 34 48 58 f1    	vaddps zmm22,zmm9,zmm25
  a55bfb:	62 91 34 48 5c c9    	vsubps zmm1,zmm9,zmm25
  a55c01:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a55c08:	09 
  a55c09:	62 b1 64 40 58 c8    	vaddps zmm1,zmm19,zmm16
  a55c0f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a55c16:	0a 
  a55c17:	62 b1 64 40 5c c8    	vsubps zmm1,zmm19,zmm16
  a55c1d:	62 21 2c 48 58 ca    	vaddps zmm25,zmm10,zmm18
  a55c23:	62 a1 2c 48 5c da    	vsubps zmm19,zmm10,zmm18
  a55c29:	62 11 6c 48 58 e7    	vaddps zmm12,zmm2,zmm31
  a55c2f:	62 01 6c 48 5c ff    	vsubps zmm31,zmm2,zmm31
  a55c35:	62 c1 5c 48 58 d7    	vaddps zmm18,zmm4,zmm15
  a55c3b:	62 d1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm15
  a55c41:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a55c48:	05 
  a55c49:	62 71 64 48 58 df    	vaddps zmm11,zmm3,zmm7
  a55c4f:	62 71 64 48 5c ff    	vsubps zmm15,zmm3,zmm7
  a55c55:	62 11 3c 48 58 d4    	vaddps zmm10,zmm8,zmm28
  a55c5b:	62 81 3c 48 5c c4    	vsubps zmm16,zmm8,zmm28
  a55c61:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a55c68:	02 
  a55c69:	62 51 64 48 58 cd    	vaddps zmm9,zmm3,zmm13
  a55c6f:	62 d1 64 48 5c f5    	vsubps zmm6,zmm3,zmm13
  a55c75:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a55c7c:	0b 
  a55c7d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a55c84:	04 
  a55c85:	62 11 6c 48 58 c3    	vaddps zmm8,zmm2,zmm27
  a55c8b:	62 f1 24 40 5c ea    	vsubps zmm5,zmm27,zmm2
  a55c91:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a55c98:	0c 
  a55c99:	62 41 44 40 58 de    	vaddps zmm27,zmm23,zmm14
  a55c9f:	62 d1 44 40 5c d6    	vsubps zmm2,zmm23,zmm14
  a55ca5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a55cac:	0e 
  a55cad:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a55cb4:	08 
  a55cb5:	62 f1 6c 48 58 d8    	vaddps zmm3,zmm2,zmm0
  a55cbb:	62 61 6c 48 5c e8    	vsubps zmm29,zmm2,zmm0
  a55cc1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a55cc8:	06 
  a55cc9:	62 91 7c 48 58 d0    	vaddps zmm2,zmm0,zmm24
  a55ccf:	62 01 7c 48 5c e0    	vsubps zmm28,zmm0,zmm24
  a55cd5:	62 91 54 40 58 c6    	vaddps zmm0,zmm21,zmm30
  a55cdb:	62 31 0c 40 5c ed    	vsubps zmm13,zmm30,zmm21
  a55ce1:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x1c0]
  a55ce8:	07 
  a55ce9:	62 21 44 48 58 f4    	vaddps zmm30,zmm7,zmm20
  a55cef:	62 a1 44 48 5c ec    	vsubps zmm21,zmm7,zmm20
  a55cf5:	62 f1 7c 48 28 3c 24 	vmovaps zmm7,ZMMWORD PTR [rsp]
  a55cfc:	62 a1 44 48 58 e1    	vaddps zmm20,zmm7,zmm17
  a55d02:	62 e1 74 40 5c ff    	vsubps zmm23,zmm17,zmm7
  a55d08:	62 b1 74 48 58 fb    	vaddps zmm7,zmm1,zmm19
  a55d0e:	62 f1 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm7
  a55d15:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a55d1b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a55d22:	0d 
  a55d23:	62 f1 04 40 5c cc    	vsubps zmm1,zmm31,zmm4
  a55d29:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a55d30:	08 
  a55d31:	62 01 5c 48 58 c7    	vaddps zmm24,zmm4,zmm31
  a55d37:	62 b1 04 48 58 e0    	vaddps zmm4,zmm15,zmm16
  a55d3d:	62 f1 54 48 58 ce    	vaddps zmm1,zmm5,zmm6
  a55d43:	62 62 7d 48 18 3d 17 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff61f917]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a55d4a:	f9 61 ff 
  a55d4d:	62 81 74 48 59 df    	vmulps zmm19,zmm1,zmm31
  a55d53:	62 f2 7d 48 18 3d a3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61f9a3]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a55d5a:	f9 61 ff 
  a55d5d:	62 e2 5d 48 b8 df    	vfmadd231ps zmm19,zmm4,zmm7
  a55d63:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a55d69:	62 f2 05 40 bc cc    	vfnmadd231ps zmm1,zmm31,zmm4
  a55d6f:	62 a1 2c 40 58 cc    	vaddps zmm17,zmm26,zmm20
  a55d75:	62 b1 2c 40 5c e4    	vsubps zmm4,zmm26,zmm20
  a55d7b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a55d82:	07 
  a55d83:	62 c1 34 40 58 e4    	vaddps zmm20,zmm25,zmm12
  a55d89:	62 d1 34 40 5c e4    	vsubps zmm4,zmm25,zmm12
  a55d8f:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a55d96:	02 
  a55d97:	62 51 24 48 58 f0    	vaddps zmm14,zmm11,zmm8
  a55d9d:	62 d1 24 48 5c e8    	vsubps zmm5,zmm11,zmm8
  a55da3:	62 41 34 48 58 d2    	vaddps zmm26,zmm9,zmm10
  a55da9:	62 d1 34 48 5c f2    	vsubps zmm6,zmm9,zmm10
  a55daf:	62 71 6c 48 58 c3    	vaddps zmm8,zmm2,zmm3
  a55db5:	62 f1 6c 48 5c db    	vsubps zmm3,zmm2,zmm3
  a55dbb:	62 f1 24 40 58 d0    	vaddps zmm2,zmm27,zmm0
  a55dc1:	62 f1 24 40 5c c0    	vsubps zmm0,zmm27,zmm0
  a55dc7:	62 21 0c 40 58 ce    	vaddps zmm25,zmm30,zmm22
  a55dcd:	62 31 0c 40 5c ce    	vsubps zmm9,zmm30,zmm22
  a55dd3:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a55dda:	0a 
  a55ddb:	62 21 5c 48 58 da    	vaddps zmm27,zmm4,zmm18
  a55de1:	62 f1 6c 40 5c e4    	vsubps zmm4,zmm18,zmm4
  a55de7:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a55dee:	04 
  a55def:	62 f1 54 48 58 e6    	vaddps zmm4,zmm5,zmm6
  a55df5:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a55dfc:	06 
  a55dfd:	62 f1 4c 48 5c e5    	vsubps zmm4,zmm6,zmm5
  a55e03:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a55e0a:	0a 
  a55e0b:	62 f1 64 48 5c e0    	vsubps zmm4,zmm3,zmm0
  a55e11:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a55e18:	05 
  a55e19:	62 f1 7c 48 58 eb    	vaddps zmm5,zmm0,zmm3
  a55e1f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a55e26:	03 
  a55e27:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x240]
  a55e2e:	09 
  a55e2f:	62 f1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm4
  a55e35:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a55e3b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a55e42:	03 
  a55e43:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a55e49:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x380]
  a55e50:	0e 
  a55e51:	62 11 4c 48 58 e5    	vaddps zmm12,zmm6,zmm29
  a55e57:	62 81 14 48 58 c4    	vaddps zmm16,zmm13,zmm28
  a55e5d:	62 61 7c 40 59 f7    	vmulps zmm30,zmm16,zmm7
  a55e63:	62 02 1d 48 b8 f7    	vfmadd231ps zmm30,zmm12,zmm31
  a55e69:	62 81 7c 40 59 c7    	vmulps zmm16,zmm16,zmm31
  a55e6f:	62 c2 45 48 bc c4    	vfnmadd231ps zmm16,zmm7,zmm12
  a55e75:	62 f2 7d 48 18 25 1d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff61f51d]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a55e7c:	f5 61 ff 
  a55e7f:	62 71 5c 48 59 64 24 	vmulps zmm12,zmm4,ZMMWORD PTR [rsp+0x340]
  a55e86:	0d 
  a55e87:	62 61 3c 40 59 c4    	vmulps zmm24,zmm24,zmm4
  a55e8d:	62 91 1c 48 5c c0    	vsubps zmm0,zmm12,zmm24
  a55e93:	62 11 1c 48 58 d0    	vaddps zmm10,zmm12,zmm24
  a55e99:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm10
  a55ea0:	09 
  a55ea1:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a55ea8:	0b 
  a55ea9:	62 e1 2c 48 5c 74 24 	vsubps zmm22,zmm10,ZMMWORD PTR [rsp+0x300]
  a55eb0:	0c 
  a55eb1:	62 11 4c 48 5c dd    	vsubps zmm11,zmm6,zmm29
  a55eb7:	62 51 1c 40 5c d5    	vsubps zmm10,zmm28,zmm13
  a55ebd:	62 31 44 40 58 ed    	vaddps zmm13,zmm23,zmm21
  a55ec3:	62 b1 54 40 5c f7    	vsubps zmm6,zmm21,zmm23
  a55ec9:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm6
  a55ed0:	0d 
  a55ed1:	62 e1 5c 48 59 3c 24 	vmulps zmm23,zmm4,ZMMWORD PTR [rsp]
  a55ed8:	62 61 5c 48 59 44 24 	vmulps zmm24,zmm4,ZMMWORD PTR [rsp+0x200]
  a55edf:	08 
  a55ee0:	62 01 44 40 58 e0    	vaddps zmm28,zmm23,zmm24
  a55ee6:	62 21 3c 40 5c ef    	vsubps zmm29,zmm24,zmm23
  a55eec:	62 61 4c 40 59 c7    	vmulps zmm24,zmm22,zmm7
  a55ef2:	62 81 4c 40 59 f7    	vmulps zmm22,zmm22,zmm31
  a55ef8:	62 02 05 48 b8 c7    	vfmadd231ps zmm24,zmm15,zmm31
  a55efe:	62 c2 45 48 bc f7    	vfnmadd231ps zmm22,zmm7,zmm15
  a55f04:	62 11 2c 48 59 ff    	vmulps zmm15,zmm10,zmm31
  a55f0a:	62 72 25 48 b8 ff    	vfmadd231ps zmm15,zmm11,zmm7
  a55f10:	62 11 24 48 59 df    	vmulps zmm11,zmm11,zmm31
  a55f16:	62 52 45 48 bc da    	vfnmadd231ps zmm11,zmm7,zmm10
  a55f1c:	62 81 74 40 58 d3    	vaddps zmm18,zmm17,zmm27
  a55f22:	62 91 74 40 5c f3    	vsubps zmm6,zmm17,zmm27
  a55f28:	62 f1 7c 48 29 34 24 	vmovaps ZMMWORD PTR [rsp],zmm6
  a55f2f:	62 41 2c 40 58 d8    	vaddps zmm27,zmm26,zmm8
  a55f35:	62 d1 2c 40 5c f0    	vsubps zmm6,zmm26,zmm8
  a55f3b:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm6
  a55f42:	08 
  a55f43:	62 21 34 40 58 d4    	vaddps zmm26,zmm25,zmm20
  a55f49:	62 b1 34 40 5c f4    	vsubps zmm6,zmm25,zmm20
  a55f4f:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm6
  a55f56:	0e 
  a55f57:	62 61 0c 48 58 fa    	vaddps zmm31,zmm14,zmm2
  a55f5d:	62 d1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm14
  a55f63:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a55f6a:	0c 
  a55f6b:	62 11 64 48 58 e4    	vaddps zmm12,zmm3,zmm28
  a55f71:	62 91 64 48 5c d4    	vsubps zmm2,zmm3,zmm28
  a55f77:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a55f7e:	0b 
  a55f7f:	62 21 74 48 58 e0    	vaddps zmm28,zmm1,zmm16
  a55f85:	62 21 74 48 5c c8    	vsubps zmm25,zmm1,zmm16
  a55f8b:	62 e1 14 48 58 c0    	vaddps zmm16,zmm13,zmm0
  a55f91:	62 e1 14 48 5c f8    	vsubps zmm23,zmm13,zmm0
  a55f97:	62 91 64 40 58 fe    	vaddps zmm7,zmm19,zmm30
  a55f9d:	62 a1 0c 40 5c e3    	vsubps zmm20,zmm30,zmm19
  a55fa3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a55faa:	07 
  a55fab:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a55fb2:	02 
  a55fb3:	62 61 7c 48 58 f1    	vaddps zmm30,zmm0,zmm1
  a55fb9:	62 e1 7c 48 5c d9    	vsubps zmm19,zmm0,zmm1
  a55fbf:	62 71 5c 48 59 6c 24 	vmulps zmm13,zmm4,ZMMWORD PTR [rsp+0x280]
  a55fc6:	0a 
  a55fc7:	62 e1 54 48 59 ec    	vmulps zmm21,zmm5,zmm4
  a55fcd:	62 b1 14 48 5c f5    	vsubps zmm6,zmm13,zmm21
  a55fd3:	62 a1 14 48 58 cd    	vaddps zmm17,zmm13,zmm21
  a55fd9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a55fe0:	04 
  a55fe1:	62 d1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm9
  a55fe7:	62 71 34 48 5c f0    	vsubps zmm14,zmm9,zmm0
  a55fed:	62 71 5c 48 59 6c 24 	vmulps zmm13,zmm4,ZMMWORD PTR [rsp+0x180]
  a55ff4:	06 
  a55ff5:	62 e1 5c 48 59 6c 24 	vmulps zmm21,zmm4,ZMMWORD PTR [rsp+0x140]
  a55ffc:	05 
  a55ffd:	62 b1 14 48 58 d5    	vaddps zmm2,zmm13,zmm21
  a56003:	62 51 54 40 5c d5    	vsubps zmm10,zmm21,zmm13
  a56009:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a56010:	03 
  a56011:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a56018:	09 
  a56019:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a5601f:	62 71 7c 48 5c c9    	vsubps zmm9,zmm0,zmm1
  a56025:	62 d1 4c 40 58 db    	vaddps zmm3,zmm22,zmm11
  a5602b:	62 51 4c 40 5c c3    	vsubps zmm8,zmm22,zmm11
  a56031:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a56038:	0d 
  a56039:	62 91 7c 48 58 cd    	vaddps zmm1,zmm0,zmm29
  a5603f:	62 01 7c 48 5c ed    	vsubps zmm29,zmm0,zmm29
  a56045:	62 d1 3c 40 5c c7    	vsubps zmm0,zmm24,zmm15
  a5604b:	62 51 3c 40 58 ff    	vaddps zmm15,zmm24,zmm15
  a56051:	62 81 6c 40 58 ef    	vaddps zmm21,zmm18,zmm31
  a56057:	62 81 6c 40 5c f7    	vsubps zmm22,zmm18,zmm31
  a5605d:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm22
  a56064:	1e 
  a56065:	62 11 2c 40 58 db    	vaddps zmm11,zmm26,zmm27
  a5606b:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm11
  a56072:	09 
  a56073:	62 11 2c 40 5c db    	vsubps zmm11,zmm26,zmm27
  a56079:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm11
  a56080:	15 
  a56081:	62 61 1c 48 58 df    	vaddps zmm27,zmm12,zmm7
  a56087:	62 f1 1c 48 5c ff    	vsubps zmm7,zmm12,zmm7
  a5608d:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm7
  a56094:	1d 
  a56095:	62 01 7c 40 58 c4    	vaddps zmm24,zmm16,zmm28
  a5609b:	62 01 7c 40 5c fc    	vsubps zmm31,zmm16,zmm28
  a560a1:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm31
  a560a8:	16 
  a560a9:	62 71 0c 40 58 da    	vaddps zmm11,zmm30,zmm2
  a560af:	62 61 0c 40 5c f2    	vsubps zmm30,zmm30,zmm2
  a560b5:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm30
  a560bc:	1c 
  a560bd:	62 e1 54 48 58 d6    	vaddps zmm18,zmm5,zmm6
  a560c3:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a560c9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a560d0:	14 
  a560d1:	62 71 5c 48 58 e8    	vaddps zmm13,zmm4,zmm0
  a560d7:	62 f1 5c 48 5c d0    	vsubps zmm2,zmm4,zmm0
  a560dd:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a560e4:	1b 
  a560e5:	62 61 74 48 58 e3    	vaddps zmm28,zmm1,zmm3
  a560eb:	62 f1 74 48 5c c3    	vsubps zmm0,zmm1,zmm3
  a560f1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm0
  a560f8:	2a 
  a560f9:	62 f1 7c 48 28 04 24 	vmovaps zmm0,ZMMWORD PTR [rsp]
  a56100:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a56107:	08 
  a56108:	62 f1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm3
  a5610e:	62 f1 7c 48 5c e3    	vsubps zmm4,zmm0,zmm3
  a56114:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm4
  a5611b:	1a 
  a5611c:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a56123:	0e 
  a56124:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a5612b:	0c 
  a5612c:	62 f1 54 48 58 c3    	vaddps zmm0,zmm5,zmm3
  a56132:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a56139:	03 
  a5613a:	62 61 64 48 5c d5    	vsubps zmm26,zmm3,zmm5
  a56140:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm26
  a56147:	29 
  a56148:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a5614f:	0b 
  a56150:	62 91 7c 48 58 f1    	vaddps zmm6,zmm0,zmm25
  a56156:	62 91 7c 48 5c e9    	vsubps zmm5,zmm0,zmm25
  a5615c:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm5
  a56163:	19 
  a56164:	62 21 44 40 58 cc    	vaddps zmm25,zmm23,zmm20
  a5616a:	62 31 44 40 5c e4    	vsubps zmm12,zmm23,zmm20
  a56170:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm12
  a56177:	28 
  a56178:	62 a1 64 40 58 e1    	vaddps zmm20,zmm19,zmm17
  a5617e:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a56184:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm19
  a5618b:	18 
  a5618c:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  a56192:	62 c1 0c 48 5c c2    	vsubps zmm16,zmm14,zmm10
  a56198:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm16
  a5619f:	26 
  a561a0:	62 51 34 48 58 f0    	vaddps zmm14,zmm9,zmm8
  a561a6:	62 51 34 48 5c d0    	vsubps zmm10,zmm9,zmm8
  a561ac:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm10
  a561b3:	17 
  a561b4:	62 51 14 40 5c cf    	vsubps zmm9,zmm29,zmm15
  a561ba:	62 51 14 40 58 ff    	vaddps zmm15,zmm29,zmm15
  a561c0:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a561c6:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm21
  a561cd:	07 
  a561ce:	62 f1 7c 48 28 1d e8 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff670de8]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a561d5:	0d 67 ff 
  a561d8:	62 b2 65 48 7f c6    	vpermt2ps zmm0,zmm3,zmm22
  a561de:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a561e4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a561eb:	13 
  a561ec:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a561f2:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm27
  a561f9:	02 
  a561fa:	62 f2 65 48 7f c7    	vpermt2ps zmm0,zmm3,zmm7
  a56200:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a56206:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a5620d:	10 
  a5620e:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a56215:	06 
  a56216:	62 12 65 48 7f de    	vpermt2ps zmm11,zmm3,zmm30
  a5621c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm11
  a56223:	1f 
  a56224:	62 71 7c 48 29 2c 24 	vmovaps ZMMWORD PTR [rsp],zmm13
  a5622b:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a56231:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a56237:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a5623d:	62 f2 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm4
  a56243:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a56249:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a56250:	12 
  a56251:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm6
  a56258:	05 
  a56259:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  a5625f:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm6
  a56266:	0f 
  a56267:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a5626d:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm20
  a56274:	04 
  a56275:	62 b2 65 48 7f c3    	vpermt2ps zmm0,zmm3,zmm19
  a5627b:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a56281:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm0
  a56288:	21 
  a56289:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a5628f:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  a56295:	62 d2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm10
  a5629b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a562a2:	20 
  a562a3:	62 e1 7c 48 28 3d 53 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff670c53]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a562aa:	0c 67 ff 
  a562ad:	62 72 45 40 7f c1    	vpermt2ps zmm8,zmm23,zmm1
  a562b3:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc00],zmm8
  a562ba:	30 
  a562bb:	62 62 45 40 7f ee    	vpermt2ps zmm29,zmm23,zmm6
  a562c1:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a562c7:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xbc0],zmm29
  a562ce:	2f 
  a562cf:	62 41 7c 48 28 eb    	vmovaps zmm29,zmm11
  a562d5:	62 62 45 40 7f ec    	vpermt2ps zmm29,zmm23,zmm4
  a562db:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a562e1:	62 e2 45 40 7f d8    	vpermt2ps zmm19,zmm23,zmm0
  a562e7:	62 91 bd 48 14 c5    	vunpcklpd zmm0,zmm8,zmm29
  a562ed:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a562f4:	0e 
  a562f5:	62 b1 f5 48 14 e3    	vunpcklpd zmm4,zmm1,zmm19
  a562fb:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm4
  a56302:	0d 
  a56303:	62 f1 7c 48 28 15 f3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff670af3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5630a:	0a 67 ff 
  a5630d:	62 f2 6d 48 7f c4    	vpermt2ps zmm0,zmm2,zmm4
  a56313:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a56319:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x240]
  a56320:	09 
  a56321:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a56327:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x540]
  a5632e:	15 
  a5632f:	62 12 65 48 7f de    	vpermt2ps zmm11,zmm3,zmm30
  a56335:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a5633b:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm24
  a56342:	09 
  a56343:	62 12 65 48 7f c7    	vpermt2ps zmm8,zmm3,zmm31
  a56349:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a5634f:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x500]
  a56356:	14 
  a56357:	62 a2 65 48 7f d4    	vpermt2ps zmm18,zmm3,zmm20
  a5635d:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xb80],zmm18
  a56364:	2e 
  a56365:	62 91 7c 48 28 fc    	vmovaps zmm7,zmm28
  a5636b:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0xa80]
  a56372:	2a 
  a56373:	62 42 65 48 7f e6    	vpermt2ps zmm28,zmm3,zmm14
  a56379:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a56380:	03 
  a56381:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a56387:	62 92 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm26
  a5638d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a56394:	03 
  a56395:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm25
  a5639c:	08 
  a5639d:	62 42 65 48 7f cc    	vpermt2ps zmm25,zmm3,zmm12
  a563a3:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xb40],zmm25
  a563aa:	2d 
  a563ab:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm17
  a563b2:	27 
  a563b3:	62 a2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm16
  a563b9:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xb00],zmm17
  a563c0:	2c 
  a563c1:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm9
  a563c8:	0a 
  a563c9:	62 52 65 48 7f cf    	vpermt2ps zmm9,zmm3,zmm15
  a563cf:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a563d5:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm9
  a563dc:	2b 
  a563dd:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a563e3:	62 e2 45 40 7f c5    	vpermt2ps zmm16,zmm23,zmm5
  a563e9:	62 41 7c 48 28 c0    	vmovaps zmm24,zmm8
  a563ef:	62 02 45 40 7f c1    	vpermt2ps zmm24,zmm23,zmm25
  a563f5:	62 a2 45 40 7f d1    	vpermt2ps zmm18,zmm23,zmm17
  a563fb:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a56401:	62 d2 45 40 7f f1    	vpermt2ps zmm6,zmm23,zmm9
  a56407:	62 b1 fd 40 14 ea    	vunpcklpd zmm5,zmm16,zmm18
  a5640d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm5
  a56414:	22 
  a56415:	62 71 bd 40 14 ce    	vunpcklpd zmm9,zmm24,zmm6
  a5641b:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm9
  a56422:	11 
  a56423:	62 d2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm9
  a56429:	62 71 7c 48 10 49 11 	vmovups zmm9,ZMMWORD PTR [rcx+0x440]
  a56430:	62 71 7c 48 10 61 10 	vmovups zmm12,ZMMWORD PTR [rcx+0x400]
  a56437:	62 c1 54 48 59 f4    	vmulps zmm22,zmm5,zmm12
  a5643d:	62 c2 7d 48 b8 f1    	vfmadd231ps zmm22,zmm0,zmm9
  a56443:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm22
  a5644a:	0c 
  a5644b:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a56451:	62 f2 35 48 bc c5    	vfnmadd231ps zmm0,zmm9,zmm5
  a56457:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a5645e:	0b 
  a5645f:	62 f1 7c 48 28 05 17 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff670b17]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a56466:	0b 67 ff 
  a56469:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x1c0]
  a56470:	07 
  a56471:	62 f2 7d 48 7f 6c 24 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rsp+0x780]
  a56478:	1e 
  a56479:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm5
  a56480:	07 
  a56481:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x80]
  a56488:	02 
  a56489:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0x740]
  a56490:	1d 
  a56491:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm15
  a56498:	02 
  a56499:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x180]
  a564a0:	06 
  a564a1:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x700]
  a564a8:	1c 
  a564a9:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm17
  a564b0:	06 
  a564b1:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x680]
  a564b8:	1a 
  a564b9:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm21
  a564c0:	25 
  a564c1:	62 71 7c 48 28 0c 24 	vmovaps zmm9,ZMMWORD PTR [rsp]
  a564c8:	62 72 7d 48 7f 4c 24 	vpermt2ps zmm9,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a564cf:	1b 
  a564d0:	62 71 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm9
  a564d7:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x140]
  a564de:	05 
  a564df:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x640]
  a564e6:	19 
  a564e7:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm25
  a564ee:	05 
  a564ef:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x100]
  a564f6:	04 
  a564f7:	62 62 7d 48 7f 54 24 	vpermt2ps zmm26,zmm0,ZMMWORD PTR [rsp+0x600]
  a564fe:	18 
  a564ff:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm26
  a56506:	04 
  a56507:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5650d:	62 92 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm30
  a56513:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm3
  a5651a:	23 
  a5651b:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a56522:	17 
  a56523:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm27
  a5652a:	24 
  a5652b:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x240]
  a56532:	09 
  a56533:	62 62 7d 48 7f 74 24 	vpermt2ps zmm30,zmm0,ZMMWORD PTR [rsp+0x580]
  a5653a:	16 
  a5653b:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm30
  a56542:	09 
  a56543:	62 32 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm20
  a56549:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a5654f:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0xa40]
  a56556:	29 
  a56557:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm12
  a5655e:	14 
  a5655f:	62 d2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm14
  a56565:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a5656c:	08 
  a5656d:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0xa00]
  a56574:	28 
  a56575:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a5657c:	08 
  a5657d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x9c0]
  a56584:	27 
  a56585:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x980]
  a5658c:	26 
  a5658d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a56594:	0a 
  a56595:	62 92 7d 48 7f e7    	vpermt2ps zmm4,zmm0,zmm31
  a5659b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a565a2:	0a 
  a565a3:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a565a9:	62 22 45 40 7f fd    	vpermt2ps zmm31,zmm23,zmm21
  a565af:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a565b5:	62 82 45 40 7f e1    	vpermt2ps zmm20,zmm23,zmm25
  a565bb:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a565c1:	62 12 45 40 7f f2    	vpermt2ps zmm14,zmm23,zmm26
  a565c7:	62 c1 7c 48 28 c9    	vmovaps zmm17,zmm9
  a565cd:	62 82 45 40 7f cb    	vpermt2ps zmm17,zmm23,zmm27
  a565d3:	62 41 85 40 15 de    	vunpckhpd zmm27,zmm31,zmm14
  a565d9:	62 b1 dd 40 15 e9    	vunpckhpd zmm5,zmm20,zmm17
  a565df:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm5
  a565e6:	16 
  a565e7:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a565ed:	62 e1 7c 48 28 2d 09 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff670809]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a565f4:	08 67 ff 
  a565f7:	62 f2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm5
  a565fd:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a56603:	62 42 45 40 7f d4    	vpermt2ps zmm26,zmm23,zmm12
  a56609:	62 62 45 40 7f f1    	vpermt2ps zmm30,zmm23,zmm1
  a5660f:	62 51 7c 48 28 ca    	vmovaps zmm9,zmm10
  a56615:	62 72 45 40 7f ca    	vpermt2ps zmm9,zmm23,zmm2
  a5661b:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a56621:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a56627:	62 72 45 40 7f fc    	vpermt2ps zmm15,zmm23,zmm4
  a5662d:	62 c1 ad 40 15 f1    	vunpckhpd zmm22,zmm26,zmm9
  a56633:	62 d1 8d 40 15 cf    	vunpckhpd zmm1,zmm30,zmm15
  a56639:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a56640:	15 
  a56641:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a56647:	62 e2 55 40 7f f9    	vpermt2ps zmm23,zmm21,zmm1
  a5664d:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a56653:	62 61 7c 48 10 49 04 	vmovups zmm25,ZMMWORD PTR [rcx+0x100]
  a5665a:	62 91 44 40 59 c9    	vmulps zmm1,zmm23,zmm25
  a56660:	62 91 7c 48 59 d1    	vmulps zmm2,zmm0,zmm25
  a56666:	62 61 7c 48 10 49 05 	vmovups zmm25,ZMMWORD PTR [rcx+0x140]
  a5666d:	62 92 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm25
  a56673:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm1
  a5667a:	1e 
  a5667b:	62 b2 35 40 bc d7    	vfnmadd231ps zmm2,zmm25,zmm23
  a56681:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm2
  a56688:	1d 
  a56689:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc00]
  a56690:	30 
  a56691:	62 91 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm29
  a56697:	62 b1 fd 40 15 e2    	vunpckhpd zmm4,zmm16,zmm18
  a5669d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xbc0]
  a566a4:	2f 
  a566a5:	62 b1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm19
  a566ab:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a566b2:	18 
  a566b3:	62 f1 bd 40 15 d6    	vunpckhpd zmm2,zmm24,zmm6
  a566b9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a566c0:	17 
  a566c1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a566c8:	1a 
  a566c9:	62 e1 7c 48 28 05 6d 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67076d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a566d0:	07 67 ff 
  a566d3:	62 f2 7d 40 7f c1    	vpermt2ps zmm0,zmm16,zmm1
  a566d9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm4
  a566e0:	19 
  a566e1:	62 f2 7d 40 7f e2    	vpermt2ps zmm4,zmm16,zmm2
  a566e7:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a566ee:	62 f1 7c 48 10 71 16 	vmovups zmm6,ZMMWORD PTR [rcx+0x580]
  a566f5:	62 f1 5c 48 59 ce    	vmulps zmm1,zmm4,zmm6
  a566fb:	62 f2 7d 48 b8 cb    	vfmadd231ps zmm1,zmm0,zmm3
  a56701:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a56708:	1c 
  a56709:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a5670f:	62 f2 65 48 bc c4    	vfnmadd231ps zmm0,zmm3,zmm4
  a56715:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a5671c:	1b 
  a5671d:	62 f1 7c 48 28 0d 19 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff670819]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a56724:	08 67 ff 
  a56727:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x4c0]
  a5672e:	13 
  a5672f:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x480]
  a56736:	12 
  a56737:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x400]
  a5673e:	10 
  a5673f:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a56746:	0f 
  a56747:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x7c0]
  a5674e:	1f 
  a5674f:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x840]
  a56756:	21 
  a56757:	62 72 75 48 7f 5c 24 	vpermt2ps zmm11,zmm1,ZMMWORD PTR [rsp+0xc0]
  a5675e:	03 
  a5675f:	62 72 75 48 7f 6c 24 	vpermt2ps zmm13,zmm1,ZMMWORD PTR [rsp+0x800]
  a56766:	20 
  a56767:	62 72 75 48 7f 44 24 	vpermt2ps zmm8,zmm1,ZMMWORD PTR [rsp+0xb40]
  a5676e:	2d 
  a5676f:	62 f1 e5 48 15 c2    	vunpckhpd zmm0,zmm3,zmm2
  a56775:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a5677b:	62 d1 dd 48 15 dd    	vunpckhpd zmm3,zmm4,zmm13
  a56781:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a56787:	62 f2 1d 48 7f c3    	vpermt2ps zmm0,zmm12,zmm3
  a5678d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xb80]
  a56794:	2e 
  a56795:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0xb00]
  a5679c:	2c 
  a5679d:	62 62 75 48 7f 64 24 	vpermt2ps zmm28,zmm1,ZMMWORD PTR [rsp+0xac0]
  a567a4:	2b 
  a567a5:	62 f1 a5 48 15 dc    	vunpckhpd zmm3,zmm11,zmm4
  a567ab:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a567b1:	62 91 bd 48 15 e4    	vunpckhpd zmm4,zmm8,zmm28
  a567b7:	62 f2 1d 48 7f dc    	vpermt2ps zmm3,zmm12,zmm4
  a567bd:	62 f1 7c 48 10 61 1d 	vmovups zmm4,ZMMWORD PTR [rcx+0x740]
  a567c4:	62 e1 7c 48 10 59 1c 	vmovups zmm19,ZMMWORD PTR [rcx+0x700]
  a567cb:	62 31 64 48 59 e3    	vmulps zmm12,zmm3,zmm19
  a567d1:	62 72 7d 48 b8 e4    	vfmadd231ps zmm12,zmm0,zmm4
  a567d7:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm12
  a567de:	03 
  a567df:	62 b1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm19
  a567e5:	62 f2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm3
  a567eb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a567f2:	13 
  a567f3:	62 f1 cd 48 14 c2    	vunpcklpd zmm0,zmm6,zmm2
  a567f9:	62 d1 d5 40 14 d5    	vunpcklpd zmm2,zmm21,zmm13
  a567ff:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm2
  a56806:	0f 
  a56807:	62 31 a5 48 14 da    	vunpcklpd zmm11,zmm11,zmm18
  a5680d:	62 01 bd 48 14 cc    	vunpcklpd zmm25,zmm8,zmm28
  a56813:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a56819:	62 f2 7d 40 7f c2    	vpermt2ps zmm0,zmm16,zmm2
  a5681f:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a56825:	62 12 7d 40 7f d9    	vpermt2ps zmm11,zmm16,zmm25
  a5682b:	62 71 7c 48 10 69 1a 	vmovups zmm13,ZMMWORD PTR [rcx+0x680]
  a56832:	62 d1 24 48 59 d5    	vmulps zmm2,zmm11,zmm13
  a56838:	62 d1 7c 48 59 dd    	vmulps zmm3,zmm0,zmm13
  a5683e:	62 71 7c 48 10 69 1b 	vmovups zmm13,ZMMWORD PTR [rcx+0x6c0]
  a56845:	62 d2 7d 48 b8 d5    	vfmadd231ps zmm2,zmm0,zmm13
  a5684b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a56852:	12 
  a56853:	62 d2 15 48 bc db    	vfnmadd231ps zmm3,zmm13,zmm11
  a56859:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a56860:	10 
  a56861:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a56868:	07 
  a56869:	62 f2 75 48 7f 44 24 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [rsp+0x940]
  a56870:	25 
  a56871:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a56878:	06 
  a56879:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x100]
  a56880:	04 
  a56881:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x80]
  a56888:	02 
  a56889:	62 72 75 48 7f 6c 24 	vpermt2ps zmm13,zmm1,ZMMWORD PTR [rsp+0x140]
  a56890:	05 
  a56891:	62 e1 7c 48 28 1c 24 	vmovaps zmm19,ZMMWORD PTR [rsp]
  a56898:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x900]
  a5689f:	24 
  a568a0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x8c0]
  a568a7:	23 
  a568a8:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x500]
  a568af:	14 
  a568b0:	62 72 75 48 7f d5    	vpermt2ps zmm10,zmm1,zmm5
  a568b6:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x240]
  a568bd:	09 
  a568be:	62 62 75 48 7f 44 24 	vpermt2ps zmm24,zmm1,ZMMWORD PTR [rsp+0x200]
  a568c5:	08 
  a568c6:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x280]
  a568cd:	0a 
  a568ce:	62 71 fd 48 15 dc    	vunpckhpd zmm11,zmm0,zmm4
  a568d4:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a568da:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a568e0:	62 a1 95 48 15 fb    	vunpckhpd zmm23,zmm13,zmm19
  a568e6:	62 b1 7c 48 28 eb    	vmovaps zmm5,zmm19
  a568ec:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a568f2:	62 32 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm23
  a568f8:	62 51 ed 48 15 ea    	vunpckhpd zmm13,zmm2,zmm10
  a568fe:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a56904:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a5690a:	62 f1 bd 40 15 cf    	vunpckhpd zmm1,zmm24,zmm7
  a56910:	62 72 7d 40 7f e9    	vpermt2ps zmm13,zmm16,zmm1
  a56916:	62 e1 7c 48 10 59 0f 	vmovups zmm19,ZMMWORD PTR [rcx+0x3c0]
  a5691d:	62 61 7c 48 10 61 0e 	vmovups zmm28,ZMMWORD PTR [rcx+0x380]
  a56924:	62 81 14 48 59 d4    	vmulps zmm18,zmm13,zmm28
  a5692a:	62 a2 25 48 b8 d3    	vfmadd231ps zmm18,zmm11,zmm19
  a56930:	62 01 24 48 59 e4    	vmulps zmm28,zmm11,zmm28
  a56936:	62 42 65 40 bc e5    	vfnmadd231ps zmm28,zmm19,zmm13
  a5693c:	62 51 85 40 14 de    	vunpcklpd zmm11,zmm31,zmm14
  a56942:	62 31 dd 40 14 e9    	vunpcklpd zmm13,zmm20,zmm17
  a56948:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm13
  a5694f:	05 
  a56950:	62 51 ad 40 14 c9    	vunpcklpd zmm9,zmm26,zmm9
  a56956:	62 41 8d 40 14 d7    	vunpcklpd zmm26,zmm30,zmm15
  a5695c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm11
  a56963:	07 
  a56964:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a5696a:	62 71 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm9
  a56971:	62 12 7d 40 7f ca    	vpermt2ps zmm9,zmm16,zmm26
  a56977:	62 71 7c 48 10 69 02 	vmovups zmm13,ZMMWORD PTR [rcx+0x80]
  a5697e:	62 c1 34 48 59 dd    	vmulps zmm19,zmm9,zmm13
  a56984:	62 41 24 48 59 ed    	vmulps zmm29,zmm11,zmm13
  a5698a:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a56991:	62 c2 25 48 b8 dd    	vfmadd231ps zmm19,zmm11,zmm13
  a56997:	62 42 15 48 bc e9    	vfnmadd231ps zmm29,zmm13,zmm9
  a5699d:	62 71 cd 48 14 ec    	vunpcklpd zmm13,zmm6,zmm4
  a569a3:	62 51 bd 48 14 c2    	vunpcklpd zmm8,zmm8,zmm10
  a569a9:	62 e1 e5 48 14 e5    	vunpcklpd zmm20,zmm3,zmm5
  a569af:	62 f1 bd 40 14 ff    	vunpcklpd zmm7,zmm24,zmm7
  a569b5:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a569bb:	62 71 7c 48 28 35 3b 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67043b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a569c2:	04 67 ff 
  a569c5:	62 32 0d 48 7f cc    	vpermt2ps zmm9,zmm14,zmm20
  a569cb:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a569d1:	62 72 0d 48 7f df    	vpermt2ps zmm11,zmm14,zmm7
  a569d7:	62 e1 7c 48 10 49 09 	vmovups zmm17,ZMMWORD PTR [rcx+0x240]
  a569de:	62 71 7c 48 10 51 08 	vmovups zmm10,ZMMWORD PTR [rcx+0x200]
  a569e5:	62 51 24 48 59 fa    	vmulps zmm15,zmm11,zmm10
  a569eb:	62 32 35 48 b8 f9    	vfmadd231ps zmm15,zmm9,zmm17
  a569f1:	62 51 34 48 59 d2    	vmulps zmm10,zmm9,zmm10
  a569f7:	62 52 75 40 bc d3    	vfnmadd231ps zmm10,zmm17,zmm11
  a569fd:	62 b2 0d 48 7f c7    	vpermt2ps zmm0,zmm14,zmm23
  a56a03:	62 f2 0d 48 7f d1    	vpermt2ps zmm2,zmm14,zmm1
  a56a09:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a56a10:	62 71 7c 48 10 49 0c 	vmovups zmm9,ZMMWORD PTR [rcx+0x300]
  a56a17:	62 51 7c 48 59 d9    	vmulps zmm11,zmm0,zmm9
  a56a1d:	62 72 6d 48 bc d9    	vfnmadd231ps zmm11,zmm2,zmm1
  a56a23:	62 41 6c 48 59 f1    	vmulps zmm30,zmm2,zmm9
  a56a29:	62 62 75 48 b8 f0    	vfmadd231ps zmm30,zmm1,zmm0
  a56a2f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a56a36:	0e 
  a56a37:	62 f2 7d 40 7f 54 24 	vpermt2ps zmm2,zmm16,ZMMWORD PTR [rsp+0x340]
  a56a3e:	0d 
  a56a3f:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x880]
  a56a46:	22 
  a56a47:	62 f2 7d 40 7f 5c 24 	vpermt2ps zmm3,zmm16,ZMMWORD PTR [rsp+0x440]
  a56a4e:	11 
  a56a4f:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a56a56:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a56a5d:	62 e1 6c 48 59 c9    	vmulps zmm17,zmm2,zmm1
  a56a63:	62 e2 65 48 bc c8    	vfnmadd231ps zmm17,zmm3,zmm0
  a56a69:	62 61 64 48 59 f9    	vmulps zmm31,zmm3,zmm1
  a56a6f:	62 62 7d 48 b8 fa    	vfmadd231ps zmm31,zmm0,zmm2
  a56a75:	62 62 7d 40 7f 5c 24 	vpermt2ps zmm27,zmm16,ZMMWORD PTR [rsp+0x580]
  a56a7c:	16 
  a56a7d:	62 e2 7d 40 7f 74 24 	vpermt2ps zmm22,zmm16,ZMMWORD PTR [rsp+0x540]
  a56a84:	15 
  a56a85:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a56a8c:	62 f1 7c 48 10 51 06 	vmovups zmm2,ZMMWORD PTR [rcx+0x180]
  a56a93:	62 f1 24 40 59 ca    	vmulps zmm1,zmm27,zmm2
  a56a99:	62 f2 4d 40 bc c8    	vfnmadd231ps zmm1,zmm22,zmm0
  a56a9f:	62 f1 4c 40 59 f2    	vmulps zmm6,zmm22,zmm2
  a56aa5:	62 92 7d 48 b8 f3    	vfmadd231ps zmm6,zmm0,zmm27
  a56aab:	62 e2 0d 48 7f 6c 24 	vpermt2ps zmm21,zmm14,ZMMWORD PTR [rsp+0x3c0]
  a56ab2:	0f 
  a56ab3:	62 12 0d 48 7f e1    	vpermt2ps zmm12,zmm14,zmm25
  a56ab9:	62 f1 7c 48 10 69 19 	vmovups zmm5,ZMMWORD PTR [rcx+0x640]
  a56ac0:	62 71 7c 48 10 49 18 	vmovups zmm9,ZMMWORD PTR [rcx+0x600]
  a56ac7:	62 d1 54 40 59 c1    	vmulps zmm0,zmm21,zmm9
  a56acd:	62 f2 1d 48 bc c5    	vfnmadd231ps zmm0,zmm12,zmm5
  a56ad3:	62 41 1c 48 59 c9    	vmulps zmm25,zmm12,zmm9
  a56ad9:	62 22 55 48 b8 cd    	vfmadd231ps zmm25,zmm5,zmm21
  a56adf:	62 32 7d 40 7f ec    	vpermt2ps zmm13,zmm16,zmm20
  a56ae5:	62 72 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm7
  a56aeb:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a56af2:	62 f1 7c 48 10 61 0a 	vmovups zmm4,ZMMWORD PTR [rcx+0x280]
  a56af9:	62 f1 3c 48 59 d4    	vmulps zmm2,zmm8,zmm4
  a56aff:	62 f2 15 48 b8 d3    	vfmadd231ps zmm2,zmm13,zmm3
  a56b05:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a56b0c:	02 
  a56b0d:	62 f1 14 48 59 d4    	vmulps zmm2,zmm13,zmm4
  a56b13:	62 d2 65 48 bc d0    	vfnmadd231ps zmm2,zmm3,zmm8
  a56b19:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a56b20:	06 
  a56b21:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a56b28:	07 
  a56b29:	62 f2 0d 48 7f 5c 24 	vpermt2ps zmm3,zmm14,ZMMWORD PTR [rsp+0x140]
  a56b30:	05 
  a56b31:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a56b38:	07 
  a56b39:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x680]
  a56b40:	1a 
  a56b41:	62 f2 0d 48 7f 6c 24 	vpermt2ps zmm5,zmm14,ZMMWORD PTR [rsp+0x600]
  a56b48:	18 
  a56b49:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x640]
  a56b50:	19 
  a56b51:	62 f2 0d 48 7f 64 24 	vpermt2ps zmm4,zmm14,ZMMWORD PTR [rsp+0x5c0]
  a56b58:	17 
  a56b59:	62 f1 7c 48 10 59 14 	vmovups zmm3,ZMMWORD PTR [rcx+0x500]
  a56b60:	62 71 7c 48 28 2c 24 	vmovaps zmm13,ZMMWORD PTR [rsp]
  a56b67:	62 12 0d 48 7f ea    	vpermt2ps zmm13,zmm14,zmm26
  a56b6d:	62 e1 5c 48 59 e3    	vmulps zmm20,zmm4,zmm3
  a56b73:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a56b79:	62 f1 54 48 59 eb    	vmulps zmm5,zmm5,zmm3
  a56b7f:	62 f1 7c 48 10 59 15 	vmovups zmm3,ZMMWORD PTR [rcx+0x540]
  a56b86:	62 e2 6d 48 b8 e3    	vfmadd231ps zmm20,zmm2,zmm3
  a56b8c:	62 f2 65 48 bc ec    	vfnmadd231ps zmm5,zmm3,zmm4
  a56b92:	62 f1 7c 48 29 2c 24 	vmovaps ZMMWORD PTR [rsp],zmm5
  a56b99:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x700]
  a56ba0:	1c 
  a56ba1:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xc0]
  a56ba8:	03 
  a56ba9:	62 e1 64 48 58 c7    	vaddps zmm16,zmm3,zmm7
  a56baf:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x6c0]
  a56bb6:	1b 
  a56bb7:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x4c0]
  a56bbe:	13 
  a56bbf:	62 f1 6c 48 5c e5    	vsubps zmm4,zmm2,zmm5
  a56bc5:	62 f1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm5
  a56bcb:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a56bd2:	05 
  a56bd3:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a56bda:	0c 
  a56bdb:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x780]
  a56be2:	1e 
  a56be3:	62 71 6c 48 58 f5    	vaddps zmm14,zmm2,zmm5
  a56be9:	62 f1 64 48 5c ff    	vsubps zmm7,zmm3,zmm7
  a56bef:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a56bf6:	0b 
  a56bf7:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x740]
  a56bfe:	1d 
  a56bff:	62 41 64 48 5c d8    	vsubps zmm27,zmm3,zmm8
  a56c05:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a56c0b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a56c12:	03 
  a56c13:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x400]
  a56c1a:	10 
  a56c1b:	62 91 3c 48 5c dc    	vsubps zmm3,zmm8,zmm28
  a56c21:	62 11 3c 48 58 c4    	vaddps zmm8,zmm8,zmm28
  a56c27:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a56c2e:	04 
  a56c2f:	62 c1 64 40 58 ff    	vaddps zmm23,zmm19,zmm15
  a56c35:	62 f1 6c 48 5c ed    	vsubps zmm5,zmm2,zmm5
  a56c3b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a56c42:	12 
  a56c43:	62 31 6c 48 58 e2    	vaddps zmm12,zmm2,zmm18
  a56c49:	62 a1 6c 48 5c ea    	vsubps zmm21,zmm2,zmm18
  a56c4f:	62 41 14 40 5c e2    	vsubps zmm28,zmm29,zmm10
  a56c55:	62 c1 14 40 58 d2    	vaddps zmm18,zmm29,zmm10
  a56c5b:	62 21 24 48 5c e9    	vsubps zmm29,zmm11,zmm17
  a56c61:	62 31 24 48 58 d9    	vaddps zmm11,zmm11,zmm17
  a56c67:	62 f1 74 48 5c d0    	vsubps zmm2,zmm1,zmm0
  a56c6d:	62 c1 64 40 5c df    	vsubps zmm19,zmm19,zmm15
  a56c73:	62 81 4c 48 58 c9    	vaddps zmm17,zmm6,zmm25
  a56c79:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm17
  a56c80:	21 
  a56c81:	62 71 74 48 58 f8    	vaddps zmm15,zmm1,zmm0
  a56c87:	62 11 4c 48 5c c1    	vsubps zmm8,zmm6,zmm25
  a56c8d:	62 72 7d 48 18 0d c1 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff61eac1]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a56c94:	ea 61 ff 
  a56c97:	62 41 5c 48 59 d1    	vmulps zmm26,zmm4,zmm9
  a56c9d:	62 81 0c 40 58 f7    	vaddps zmm22,zmm30,zmm31
  a56ca3:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm22
  a56caa:	20 
  a56cab:	62 01 0c 40 5c f7    	vsubps zmm30,zmm30,zmm31
  a56cb1:	62 41 1c 40 59 f9    	vmulps zmm31,zmm28,zmm9
  a56cb7:	62 72 7d 48 18 15 df 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff61e6df]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a56cbe:	e6 61 ff 
  a56cc1:	62 42 25 40 b8 d2    	vfmadd231ps zmm26,zmm27,zmm10
  a56cc7:	62 d1 24 40 59 c9    	vmulps zmm1,zmm27,zmm9
  a56ccd:	62 f2 2d 48 bc cc    	vfnmadd231ps zmm1,zmm10,zmm4
  a56cd3:	62 41 14 40 59 c1    	vmulps zmm24,zmm29,zmm9
  a56cd9:	62 42 65 48 b8 fa    	vfmadd231ps zmm31,zmm3,zmm10
  a56cdf:	62 41 64 48 59 c9    	vmulps zmm25,zmm3,zmm9
  a56ce5:	62 02 2d 48 bc cc    	vfnmadd231ps zmm25,zmm10,zmm28
  a56ceb:	62 41 44 48 59 d9    	vmulps zmm27,zmm7,zmm9
  a56cf1:	62 42 6d 48 b8 c2    	vfmadd231ps zmm24,zmm2,zmm10
  a56cf7:	62 d1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm9
  a56cfd:	62 92 2d 48 bc d5    	vfnmadd231ps zmm2,zmm10,zmm29
  a56d03:	62 41 64 40 59 e1    	vmulps zmm28,zmm19,zmm9
  a56d09:	62 42 55 48 b8 da    	vfmadd231ps zmm27,zmm5,zmm10
  a56d0f:	62 d1 54 48 59 f1    	vmulps zmm6,zmm5,zmm9
  a56d15:	62 f2 2d 48 bc f7    	vfnmadd231ps zmm6,zmm10,zmm7
  a56d1b:	62 41 0c 40 59 e9    	vmulps zmm29,zmm30,zmm9
  a56d21:	62 42 55 40 b8 e2    	vfmadd231ps zmm28,zmm21,zmm10
  a56d27:	62 d1 54 40 59 c1    	vmulps zmm0,zmm21,zmm9
  a56d2d:	62 b2 2d 48 bc c3    	vfnmadd231ps zmm0,zmm10,zmm19
  a56d33:	62 f2 7d 48 18 2d 07 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff61e907]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a56d3a:	e9 61 ff 
  a56d3d:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a56d43:	62 42 3d 48 b8 ea    	vfmadd231ps zmm29,zmm8,zmm10
  a56d49:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a56d4f:	62 d2 75 40 ac dd    	vfnmadd213ps zmm3,zmm17,zmm13
  a56d55:	62 f2 7d 48 18 25 89 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff61e989]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a56d5c:	e9 61 ff 
  a56d5f:	62 f2 4d 40 b8 dc    	vfmadd231ps zmm3,zmm22,zmm4
  a56d65:	62 d1 3c 48 59 f9    	vmulps zmm7,zmm8,zmm9
  a56d6b:	62 92 2d 48 bc fe    	vfnmadd231ps zmm7,zmm10,zmm30
  a56d71:	62 71 6c 48 58 c3    	vaddps zmm8,zmm2,zmm3
  a56d77:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm8
  a56d7e:	09 
  a56d7f:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a56d85:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a56d8c:	0a 
  a56d8d:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a56d93:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a56d99:	62 b2 1d 48 ac d4    	vfnmadd213ps zmm2,zmm12,zmm20
  a56d9f:	62 31 7c 48 28 ef    	vmovaps zmm13,zmm23
  a56da5:	62 f2 45 40 b8 d4    	vfmadd231ps zmm2,zmm23,zmm4
  a56dab:	62 91 6c 48 58 d9    	vaddps zmm3,zmm2,zmm25
  a56db1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a56db8:	10 
  a56db9:	62 91 6c 48 5c d1    	vsubps zmm2,zmm2,zmm25
  a56dbf:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a56dc6:	0e 
  a56dc7:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a56dcd:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x80]
  a56dd4:	02 
  a56dd5:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a56ddb:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm14
  a56de2:	1f 
  a56de3:	62 d2 0d 48 ac d4    	vfnmadd213ps zmm2,zmm14,zmm12
  a56de9:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a56def:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm16
  a56df6:	11 
  a56df7:	62 f2 7d 40 b8 d4    	vfmadd231ps zmm2,zmm16,zmm4
  a56dfd:	62 f1 6c 48 58 d9    	vaddps zmm3,zmm2,zmm1
  a56e03:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm3
  a56e0a:	0f 
  a56e0b:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a56e11:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a56e18:	0c 
  a56e19:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a56e1f:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a56e26:	07 
  a56e27:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a56e2d:	62 f2 05 48 ac cb    	vfnmadd213ps zmm1,zmm15,zmm3
  a56e33:	62 f2 25 48 b8 cc    	vfmadd231ps zmm1,zmm11,zmm4
  a56e39:	62 f1 74 48 5c d7    	vsubps zmm2,zmm1,zmm7
  a56e3f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a56e46:	08 
  a56e47:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a56e4d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a56e54:	0d 
  a56e55:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a56e5b:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x180]
  a56e62:	06 
  a56e63:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0xc0]
  a56e6a:	03 
  a56e6b:	62 d2 05 48 ac ce    	vfnmadd213ps zmm1,zmm15,zmm14
  a56e71:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a56e78:	05 
  a56e79:	62 f2 6d 48 b8 cc    	vfmadd231ps zmm1,zmm2,zmm4
  a56e7f:	62 e1 74 48 5c fe    	vsubps zmm23,zmm1,zmm6
  a56e85:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a56e8b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a56e92:	0b 
  a56e93:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a56e99:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x100]
  a56ea0:	04 
  a56ea1:	62 e1 7c 48 28 04 24 	vmovaps zmm16,ZMMWORD PTR [rsp]
  a56ea8:	62 b2 0d 40 ac c8    	vfnmadd213ps zmm1,zmm30,zmm16
  a56eae:	62 f2 6d 40 b8 cc    	vfmadd231ps zmm1,zmm18,zmm4
  a56eb4:	62 e1 74 48 5c f0    	vsubps zmm22,zmm1,zmm0
  a56eba:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a56ec0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a56ec7:	22 
  a56ec8:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a56ece:	62 d2 2d 48 a8 c4    	vfmadd213ps zmm0,zmm10,zmm12
  a56ed4:	62 f2 35 48 bc c5    	vfnmadd231ps zmm0,zmm9,zmm5
  a56eda:	62 11 7c 48 58 d2    	vaddps zmm10,zmm0,zmm26
  a56ee0:	62 81 7c 48 5c ca    	vsubps zmm17,zmm0,zmm26
  a56ee6:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a56eec:	62 b2 55 40 a8 f4    	vfmadd213ps zmm6,zmm21,zmm20
  a56ef2:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a56ef8:	62 f2 15 48 bc f5    	vfnmadd231ps zmm6,zmm13,zmm5
  a56efe:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a56f04:	62 91 4c 48 58 cf    	vaddps zmm1,zmm6,zmm31
  a56f0a:	62 11 4c 48 5c ef    	vsubps zmm13,zmm6,zmm31
  a56f10:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a56f16:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x840]
  a56f1d:	21 
  a56f1e:	62 b2 45 48 a8 f3    	vfmadd213ps zmm6,zmm7,zmm19
  a56f24:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a56f2a:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x800]
  a56f31:	20 
  a56f32:	62 f2 35 48 bc f5    	vfnmadd231ps zmm6,zmm9,zmm5
  a56f38:	62 61 3c 40 58 fe    	vaddps zmm31,zmm24,zmm6
  a56f3e:	62 91 4c 48 5c c0    	vsubps zmm0,zmm6,zmm24
  a56f44:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a56f4b:	13 
  a56f4c:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a56f52:	62 d2 05 48 a8 f6    	vfmadd213ps zmm6,zmm15,zmm14
  a56f58:	62 f2 6d 48 bc f5    	vfnmadd231ps zmm6,zmm2,zmm5
  a56f5e:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a56f64:	62 81 4c 48 5c db    	vsubps zmm19,zmm6,zmm27
  a56f6a:	62 91 4c 48 58 f3    	vaddps zmm6,zmm6,zmm27
  a56f70:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a56f76:	62 22 0d 40 a8 c0    	vfmadd213ps zmm24,zmm30,zmm16
  a56f7c:	62 62 6d 40 bc c5    	vfnmadd231ps zmm24,zmm18,zmm5
  a56f82:	62 91 3c 40 5c c4    	vsubps zmm0,zmm24,zmm28
  a56f88:	62 01 3c 40 58 e4    	vaddps zmm28,zmm24,zmm28
  a56f8e:	62 61 7c 48 28 c4    	vmovaps zmm24,zmm4
  a56f94:	62 62 3d 48 a8 c3    	vfmadd213ps zmm24,zmm8,zmm3
  a56f9a:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a56fa0:	62 62 25 48 bc c5    	vfnmadd231ps zmm24,zmm11,zmm5
  a56fa6:	62 91 3c 40 5c d5    	vsubps zmm2,zmm24,zmm29
  a56fac:	62 01 3c 40 58 dd    	vaddps zmm27,zmm24,zmm29
  a56fb2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a56fb9:	02 
  a56fba:	62 61 64 48 58 44 24 	vaddps zmm24,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a56fc1:	1f 
  a56fc2:	62 f1 64 40 5c d8    	vsubps zmm3,zmm19,zmm0
  a56fc8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a56fcf:	12 
  a56fd0:	62 f1 64 40 58 e8    	vaddps zmm5,zmm19,zmm0
  a56fd6:	62 61 3c 40 58 6c 24 	vaddps zmm29,zmm24,ZMMWORD PTR [rsp+0x440]
  a56fdd:	11 
  a56fde:	62 51 5c 40 58 e4    	vaddps zmm12,zmm20,zmm12
  a56fe4:	62 f1 2c 48 58 c1    	vaddps zmm0,zmm10,zmm1
  a56fea:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a56ff0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a56ff7:	11 
  a56ff8:	62 91 1c 48 58 c9    	vaddps zmm1,zmm12,zmm25
  a56ffe:	62 b1 44 48 58 dd    	vaddps zmm3,zmm7,zmm21
  a57004:	62 a1 44 40 5c de    	vsubps zmm19,zmm23,zmm22
  a5700a:	62 21 44 40 58 c6    	vaddps zmm24,zmm23,zmm22
  a57010:	62 e1 34 48 58 eb    	vaddps zmm21,zmm9,zmm3
  a57016:	62 d1 0c 48 58 df    	vaddps zmm3,zmm14,zmm15
  a5701c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x400]
  a57023:	10 
  a57024:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a5702b:	0f 
  a5702c:	62 71 34 48 58 e7    	vaddps zmm12,zmm9,zmm7
  a57032:	62 71 34 48 5c ff    	vsubps zmm15,zmm9,zmm7
  a57038:	62 91 64 48 58 da    	vaddps zmm3,zmm3,zmm26
  a5703e:	62 11 7c 40 58 d6    	vaddps zmm10,zmm16,zmm30
  a57044:	62 31 2c 48 58 d2    	vaddps zmm10,zmm10,zmm18
  a5704a:	62 c1 64 48 5c c2    	vsubps zmm16,zmm3,zmm10
  a57050:	62 c1 64 48 58 e2    	vaddps zmm20,zmm3,zmm10
  a57056:	62 51 5c 48 58 d0    	vaddps zmm10,zmm4,zmm8
  a5705c:	62 91 4c 48 5c dc    	vsubps zmm3,zmm6,zmm28
  a57062:	62 f1 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm3
  a57069:	62 91 4c 48 58 f4    	vaddps zmm6,zmm6,zmm28
  a5706f:	62 e2 7d 48 18 15 e7 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff61e3e7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a57076:	e3 61 ff 
  a57079:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a5707f:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a57085:	62 51 74 40 58 d5    	vaddps zmm10,zmm17,zmm13
  a5708b:	62 d1 74 40 5c dd    	vsubps zmm3,zmm17,zmm13
  a57091:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a57098:	05 
  a57099:	62 71 14 40 58 e9    	vaddps zmm13,zmm29,zmm1
  a5709f:	62 61 14 40 5c e9    	vsubps zmm29,zmm29,zmm1
  a570a5:	62 21 7c 48 28 e2    	vmovaps zmm28,zmm18
  a570ab:	62 92 7d 48 ac e7    	vfnmadd213ps zmm4,zmm0,zmm31
  a570b1:	62 62 55 48 ac e2    	vfnmadd213ps zmm28,zmm5,zmm2
  a570b7:	62 61 04 40 58 f8    	vaddps zmm31,zmm31,zmm0
  a570bd:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x380]
  a570c4:	0e 
  a570c5:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x300]
  a570cc:	0c 
  a570cd:	62 d1 0c 48 58 c3    	vaddps zmm0,zmm14,zmm11
  a570d3:	62 f1 6c 48 58 cd    	vaddps zmm1,zmm2,zmm5
  a570d9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a570e0:	07 
  a570e1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x2c0]
  a570e8:	0b 
  a570e9:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x880]
  a570f0:	22 
  a570f1:	62 f1 6c 48 58 cb    	vaddps zmm1,zmm2,zmm3
  a570f7:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a570fd:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a57104:	04 
  a57105:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a5710c:	0a 
  a5710d:	62 f1 6c 48 58 f8    	vaddps zmm7,zmm2,zmm0
  a57113:	62 f2 6d 40 ac c2    	vfnmadd213ps zmm0,zmm18,zmm2
  a57119:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a57120:	0d 
  a57121:	62 f1 6c 48 58 d9    	vaddps zmm3,zmm2,zmm1
  a57127:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a5712e:	06 
  a5712f:	62 f2 6d 40 ac ca    	vfnmadd213ps zmm1,zmm18,zmm2
  a57135:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a5713b:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a57142:	09 
  a57143:	62 32 1d 48 ac c1    	vfnmadd213ps zmm8,zmm12,zmm17
  a57149:	62 f2 7d 48 18 15 81 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff61e181]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a57150:	e1 61 ff 
  a57153:	62 71 64 40 59 ca    	vmulps zmm9,zmm19,zmm2
  a57159:	62 c1 0c 48 5c fb    	vsubps zmm23,zmm14,zmm11
  a5715f:	62 d1 3c 48 5c e9    	vsubps zmm5,zmm8,zmm9
  a57165:	62 51 3c 48 58 c9    	vaddps zmm9,zmm8,zmm9
  a5716b:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a57171:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x4c0]
  a57178:	13 
  a57179:	62 42 2d 48 ac c8    	vfnmadd213ps zmm25,zmm10,zmm8
  a5717f:	62 51 3c 48 58 da    	vaddps zmm11,zmm8,zmm10
  a57185:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a5718b:	62 82 4d 48 ac f3    	vfnmadd213ps zmm22,zmm6,zmm27
  a57191:	62 71 24 40 58 f6    	vaddps zmm14,zmm27,zmm6
  a57197:	62 b1 7c 48 28 f2    	vmovaps zmm6,zmm18
  a5719d:	62 b2 15 48 ac f5    	vfnmadd213ps zmm6,zmm13,zmm21
  a571a3:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a571a9:	62 71 7c 40 59 d2    	vmulps zmm10,zmm16,zmm2
  a571af:	62 51 4c 48 5c c2    	vsubps zmm8,zmm6,zmm10
  a571b5:	62 c1 4c 48 58 ea    	vaddps zmm21,zmm6,zmm10
  a571bb:	62 b1 7c 48 28 f2    	vmovaps zmm6,zmm18
  a571c1:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x200]
  a571c8:	08 
  a571c9:	62 b2 3d 40 ac f3    	vfnmadd213ps zmm6,zmm24,zmm19
  a571cf:	62 71 04 48 59 d2    	vmulps zmm10,zmm15,zmm2
  a571d5:	62 51 4c 48 58 fa    	vaddps zmm15,zmm6,zmm10
  a571db:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm15
  a571e2:	02 
  a571e3:	62 51 4c 48 5c fa    	vsubps zmm15,zmm6,zmm10
  a571e9:	62 82 5d 40 ac d2    	vfnmadd213ps zmm18,zmm20,zmm26
  a571ef:	62 e1 14 40 59 c2    	vmulps zmm16,zmm29,zmm2
  a571f5:	62 31 6c 40 58 d0    	vaddps zmm10,zmm18,zmm16
  a571fb:	62 a1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm16
  a57201:	62 61 6c 48 59 5c 24 	vmulps zmm27,zmm2,ZMMWORD PTR [rsp+0x480]
  a57208:	12 
  a57209:	62 91 5c 48 58 f3    	vaddps zmm6,zmm4,zmm27
  a5720f:	62 81 5c 48 5c d3    	vsubps zmm18,zmm4,zmm27
  a57215:	62 41 74 40 58 dc    	vaddps zmm27,zmm17,zmm12
  a5721b:	62 61 6c 48 59 6c 24 	vmulps zmm29,zmm2,ZMMWORD PTR [rsp+0x440]
  a57222:	11 
  a57223:	62 01 1c 40 5c f5    	vsubps zmm30,zmm28,zmm29
  a57229:	62 01 1c 40 58 e5    	vaddps zmm28,zmm28,zmm29
  a5722f:	62 01 64 40 58 c0    	vaddps zmm24,zmm19,zmm24
  a57235:	62 f1 6c 48 59 64 24 	vmulps zmm4,zmm2,ZMMWORD PTR [rsp+0x100]
  a5723c:	04 
  a5723d:	62 61 7c 48 5c ec    	vsubps zmm29,zmm0,zmm4
  a57243:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a57249:	62 d1 64 48 58 e5    	vaddps zmm4,zmm3,zmm13
  a5724f:	62 31 2c 40 58 e4    	vaddps zmm12,zmm26,zmm20
  a57255:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a5725b:	62 e1 44 40 59 e2    	vmulps zmm20,zmm23,zmm2
  a57261:	62 e1 7c 48 28 0d 15 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff63bc15]        # 92e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20330>
  a57268:	bc 63 ff 
  a5726b:	62 52 75 40 7f ec    	vpermt2ps zmm13,zmm17,zmm12
  a57271:	62 61 7c 48 28 15 45 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff63bc45]        # 92ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20370>
  a57278:	bc 63 ff 
  a5727b:	62 d2 2d 40 7f e4    	vpermt2ps zmm4,zmm26,zmm12
  a57281:	62 a1 74 48 58 fc    	vaddps zmm23,zmm1,zmm20
  a57287:	62 b1 74 48 5c cc    	vsubps zmm1,zmm1,zmm20
  a5728d:	62 e1 6c 48 59 24 24 	vmulps zmm20,zmm2,ZMMWORD PTR [rsp]
  a57294:	62 f1 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm4
  a5729b:	62 31 34 40 58 e4    	vaddps zmm12,zmm25,zmm20
  a572a1:	62 b1 34 40 5c e4    	vsubps zmm4,zmm25,zmm20
  a572a7:	62 e1 6c 48 59 5c 24 	vmulps zmm19,zmm2,ZMMWORD PTR [rsp+0x140]
  a572ae:	05 
  a572af:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  a572b6:	01 
  a572b7:	62 31 4c 40 5c eb    	vsubps zmm13,zmm22,zmm19
  a572bd:	62 a1 4c 40 58 db    	vaddps zmm19,zmm22,zmm19
  a572c3:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a572c9:	62 a2 75 40 7f e3    	vpermt2ps zmm20,zmm17,zmm19
  a572cf:	62 b2 2d 40 7f e3    	vpermt2ps zmm4,zmm26,zmm19
  a572d5:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm4
  a572dc:	02 
  a572dd:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a572e3:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a572e9:	62 f2 2d 40 7f c1    	vpermt2ps zmm0,zmm26,zmm1
  a572ef:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm20
  a572f6:	03 
  a572f7:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm0
  a572fe:	04 
  a572ff:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm4
  a57306:	05 
  a57307:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a5730d:	62 92 75 40 7f c0    	vpermt2ps zmm0,zmm17,zmm24
  a57313:	62 02 2d 40 7f d8    	vpermt2ps zmm27,zmm26,zmm24
  a57319:	62 61 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm27
  a57320:	06 
  a57321:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a57328:	07 
  a57329:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a5732f:	62 92 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm28
  a57335:	62 82 2d 40 7f d4    	vpermt2ps zmm18,zmm26,zmm28
  a5733b:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm18
  a57342:	08 
  a57343:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a5734a:	09 
  a5734b:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a57351:	62 b2 75 40 7f c0    	vpermt2ps zmm0,zmm17,zmm16
  a57357:	62 a2 2d 40 7f e8    	vpermt2ps zmm21,zmm26,zmm16
  a5735d:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm21
  a57364:	0a 
  a57365:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a5736b:	62 d2 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm14
  a57371:	62 52 2d 40 7f de    	vpermt2ps zmm11,zmm26,zmm14
  a57377:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a5737e:	0b 
  a5737f:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm11
  a57386:	0c 
  a57387:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm1
  a5738e:	0d 
  a5738f:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a57395:	62 b2 75 40 7f c7    	vpermt2ps zmm0,zmm17,zmm23
  a5739b:	62 22 2d 40 7f ef    	vpermt2ps zmm29,zmm26,zmm23
  a573a1:	62 61 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm29
  a573a8:	0e 
  a573a9:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a573b0:	0f 
  a573b1:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a573b7:	62 d2 75 40 7f c7    	vpermt2ps zmm0,zmm17,zmm15
  a573bd:	62 52 2d 40 7f cf    	vpermt2ps zmm9,zmm26,zmm15
  a573c3:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm9
  a573ca:	10 
  a573cb:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm0
  a573d2:	11 
  a573d3:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a573d9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a573e0:	07 
  a573e1:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a573e7:	62 62 2d 40 7f f9    	vpermt2ps zmm31,zmm26,zmm1
  a573ed:	62 61 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm31
  a573f4:	12 
  a573f5:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a573fb:	62 d2 75 40 7f ca    	vpermt2ps zmm1,zmm17,zmm10
  a57401:	62 52 2d 40 7f c2    	vpermt2ps zmm8,zmm26,zmm10
  a57407:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm0
  a5740e:	13 
  a5740f:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x500],zmm8
  a57416:	14 
  a57417:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm1
  a5741e:	15 
  a5741f:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a57425:	62 d2 75 40 7f c5    	vpermt2ps zmm0,zmm17,zmm13
  a5742b:	62 52 2d 40 7f e5    	vpermt2ps zmm12,zmm26,zmm13
  a57431:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x580],zmm12
  a57438:	16 
  a57439:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5c0],zmm0
  a57440:	17 
  a57441:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a57447:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a5744e:	06 
  a5744f:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a57455:	62 f2 2d 40 7f f9    	vpermt2ps zmm7,zmm26,zmm1
  a5745b:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x600],zmm7
  a57462:	18 
  a57463:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x640],zmm0
  a5746a:	19 
  a5746b:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a57471:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a57478:	02 
  a57479:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a5747f:	62 f2 2d 40 7f e9    	vpermt2ps zmm5,zmm26,zmm1
  a57485:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x680],zmm5
  a5748c:	1a 
  a5748d:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a57493:	62 92 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm30
  a57499:	62 92 2d 40 7f f6    	vpermt2ps zmm6,zmm26,zmm30
  a5749f:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x6c0],zmm0
  a574a6:	1b 
  a574a7:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x700],zmm6
  a574ae:	1c 
  a574af:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x740],zmm1
  a574b6:	1d 
  a574b7:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a574be:	48 39 d0             	cmp    rax,rdx
  a574c1:	0f 85 69 df ff ff    	jne    a55430 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a574c7:	48 89 ec             	mov    rsp,rbp
  a574ca:	5d                   	pop    rbp
  a574cb:	c5 f8 77             	vzeroupper
  a574ce:	c3                   	ret
