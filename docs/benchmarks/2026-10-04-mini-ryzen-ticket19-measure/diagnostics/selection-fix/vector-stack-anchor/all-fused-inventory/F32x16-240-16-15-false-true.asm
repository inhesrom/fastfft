
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a04540 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a04540:	48 81 ec 08 0b 00 00 	sub    rsp,0xb08
  a04547:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a0454e:	31 d2                	xor    edx,edx
  a04550:	41 b0 7f             	mov    r8b,0x7f
  a04553:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a04558:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a0455f:	00 
  a04560:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a04567:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a0456d:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a04573:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a0457a:	10 
  a0457b:	c4 e2 79 18 54 17 68 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x68]
  a04582:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a04588:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a0458f:	30 
  a04590:	c5 fb 10 54 17 70    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x70]
  a04596:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a0459c:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a045a3:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a045a9:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a045af:	62 71 7c 48 28 05 c7 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff689ec7]        # 8e480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b930>
  a045b6:	9e 68 ff 
  a045b9:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a045bf:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a045c5:	62 e1 7c 48 28 0d f1 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff689ef1]        # 8e4c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b970>
  a045cc:	9e 68 ff 
  a045cf:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a045d5:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a045dc:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x78]
  a045e3:	78 00 00 00 
  a045e7:	c5 f8 10 84 17 d8 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xd8]
  a045ee:	00 00 
  a045f0:	c4 e3 79 21 84 17 dc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a045f7:	00 00 00 10 
  a045fb:	c4 e2 79 18 8c 17 e0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0xe0]
  a04602:	00 00 00 
  a04605:	c5 fc 10 94 17 b8 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xb8]
  a0460c:	00 00 
  a0460e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a04614:	c4 e3 79 21 84 17 e4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a0461b:	00 00 00 30 
  a0461f:	c5 fb 10 8c 17 e8 00 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0xe8]
  a04626:	00 00 
  a04628:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a0462e:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a04635:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0463b:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a04641:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a04647:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0464e:	ff 
  a0464f:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a04655:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a0465c:	fe 
  a0465d:	c5 f8 10 84 17 50 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x150]
  a04664:	00 00 
  a04666:	c4 e3 79 21 84 17 54 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x154],0x10
  a0466d:	01 00 00 10 
  a04671:	c4 e2 79 18 8c 17 58 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x158]
  a04678:	01 00 00 
  a0467b:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a04682:	f0 00 00 00 
  a04686:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0468c:	c4 e3 79 21 84 17 5c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a04693:	01 00 00 30 
  a04697:	c5 fc 10 8c 17 30 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x130]
  a0469e:	00 00 
  a046a0:	c5 fb 10 9c 17 60 01 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x160]
  a046a7:	00 00 
  a046a9:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a046af:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a046b6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a046bc:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a046c2:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a046c8:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a046ce:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x168]
  a046d5:	68 01 00 00 
  a046d9:	c5 f8 10 84 17 c8 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a046e0:	00 00 
  a046e2:	c4 e3 79 21 84 17 cc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a046e9:	01 00 00 10 
  a046ed:	c5 fc 10 8c 17 a8 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a046f4:	00 00 
  a046f6:	c4 e2 79 18 a4 17 d0 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x1d0]
  a046fd:	01 00 00 
  a04700:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a04706:	c4 e3 79 21 84 17 d4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a0470d:	01 00 00 30 
  a04711:	c5 fb 10 a4 17 d8 01 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x1d8]
  a04718:	00 00 
  a0471a:	c4 e3 7d 18 c4 01    	vinsertf128 ymm0,ymm0,xmm4,0x1
  a04720:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a04727:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0472d:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a04733:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a04739:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a04740:	03 
  a04741:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a04747:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a0474e:	02 
  a0474f:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a04756:	e0 01 00 00 
  a0475a:	c5 fc 10 84 17 20 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x220]
  a04761:	00 00 
  a04763:	c5 f8 10 8c 17 40 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x240]
  a0476a:	00 00 
  a0476c:	c4 e3 71 21 8c 17 44 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x244],0x10
  a04773:	02 00 00 10 
  a04777:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x248]
  a0477e:	02 00 00 
  a04781:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a04787:	c4 e3 71 21 8c 17 4c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a0478e:	02 00 00 30 
  a04792:	c5 fb 10 a4 17 50 02 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x250]
  a04799:	00 00 
  a0479b:	c4 e3 75 18 cc 01    	vinsertf128 ymm1,ymm1,xmm4,0x1
  a047a1:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a047a8:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a047ae:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a047b4:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a047ba:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a047c1:	01 
  a047c2:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a047c8:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x258]
  a047cf:	58 02 00 00 
  a047d3:	c5 f8 10 84 17 b8 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a047da:	00 00 
  a047dc:	c4 e3 79 21 84 17 bc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a047e3:	02 00 00 10 
  a047e7:	c4 e2 79 18 8c 17 c0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x2c0]
  a047ee:	02 00 00 
  a047f1:	c5 fc 10 bc 17 98 02 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x298]
  a047f8:	00 00 
  a047fa:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a04800:	c4 e3 79 21 84 17 c4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a04807:	02 00 00 30 
  a0480b:	c5 fb 10 8c 17 c8 02 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x2c8]
  a04812:	00 00 
  a04814:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a0481a:	62 f3 c5 48 1a c0 01 	vinsertf64x4 zmm0,zmm7,ymm0,0x1
  a04821:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04827:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a0482d:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a04833:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a0483a:	0b 
  a0483b:	62 62 75 40 7f e8    	vpermt2ps zmm29,zmm17,zmm0
  a04841:	c5 f8 10 84 17 30 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x330]
  a04848:	00 00 
  a0484a:	c4 e3 79 21 84 17 34 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x334],0x10
  a04851:	03 00 00 10 
  a04855:	c4 e2 79 18 8c 17 38 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x338]
  a0485c:	03 00 00 
  a0485f:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a04866:	d0 02 00 00 
  a0486a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a04870:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a04877:	03 00 00 30 
  a0487b:	c5 fc 10 8c 17 10 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x310]
  a04882:	00 00 
  a04884:	c5 7b 10 9c 17 40 03 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x340]
  a0488b:	00 00 
  a0488d:	c4 c3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm11,0x1
  a04893:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a0489a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a048a0:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a048a6:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a048ac:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a048b2:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x348]
  a048b9:	48 03 00 00 
  a048bd:	c5 f8 10 84 17 a8 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a048c4:	00 00 
  a048c6:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a048cd:	03 00 00 10 
  a048d1:	c5 fc 10 8c 17 88 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x388]
  a048d8:	00 00 
  a048da:	c4 62 79 18 a4 17 b0 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x3b0]
  a048e1:	03 00 00 
  a048e4:	c4 e3 19 0c c0 03    	vblendps xmm0,xmm12,xmm0,0x3
  a048ea:	c4 e3 79 21 84 17 b4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a048f1:	03 00 00 30 
  a048f5:	c5 7b 10 a4 17 b8 03 	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x3b8]
  a048fc:	00 00 
  a048fe:	c4 c3 7d 18 c4 01    	vinsertf128 ymm0,ymm0,xmm12,0x1
  a04904:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a0490b:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04911:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a04917:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a0491d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a04924:	0e 
  a04925:	62 72 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm0
  a0492b:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a04932:	0f 
  a04933:	c5 fc 10 84 17 00 04 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x400]
  a0493a:	00 00 
  a0493c:	c5 f8 10 8c 17 20 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x420]
  a04943:	00 00 
  a04945:	c4 e3 71 21 8c 17 24 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x424],0x10
  a0494c:	04 00 00 10 
  a04950:	c4 e2 79 18 ac 17 28 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x428]
  a04957:	04 00 00 
  a0495a:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a04960:	c4 e3 71 21 8c 17 2c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a04967:	04 00 00 30 
  a0496b:	c5 fb 10 ac 17 30 04 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x430]
  a04972:	00 00 
  a04974:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a0497a:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a04981:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04987:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a0498d:	62 e2 3d 48 7f d0    	vpermt2ps zmm18,zmm8,zmm0
  a04993:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a04999:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x438]
  a049a0:	38 04 00 00 
  a049a4:	c5 f8 10 84 17 98 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x498]
  a049ab:	00 00 
  a049ad:	c4 e3 79 21 84 17 9c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a049b4:	04 00 00 10 
  a049b8:	c4 e2 79 18 8c 17 a0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x4a0]
  a049bf:	04 00 00 
  a049c2:	c5 fc 10 ac 17 78 04 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x478]
  a049c9:	00 00 
  a049cb:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a049d1:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a049d8:	04 00 00 30 
  a049dc:	c5 fb 10 8c 17 a8 04 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x4a8]
  a049e3:	00 00 
  a049e5:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a049eb:	62 f3 d5 48 1a c0 01 	vinsertf64x4 zmm0,zmm5,ymm0,0x1
  a049f2:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a049f8:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a049fe:	62 72 3d 48 7f f0    	vpermt2ps zmm14,zmm8,zmm0
  a04a04:	62 72 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm0
  a04a0a:	c5 f8 10 84 17 10 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x510]
  a04a11:	00 00 
  a04a13:	c4 e3 79 21 84 17 14 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x514],0x10
  a04a1a:	05 00 00 10 
  a04a1e:	c4 e2 79 18 8c 17 18 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x518]
  a04a25:	05 00 00 
  a04a28:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a04a2f:	b0 04 00 00 
  a04a33:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a04a39:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a04a40:	05 00 00 30 
  a04a44:	c5 fc 10 8c 17 f0 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a04a4b:	00 00 
  a04a4d:	c5 fb 10 ac 17 20 05 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x520]
  a04a54:	00 00 
  a04a56:	c4 e3 7d 18 c5 01    	vinsertf128 ymm0,ymm0,xmm5,0x1
  a04a5c:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a04a63:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04a69:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a04a6f:	62 62 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm0
  a04a75:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a04a7b:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x528]
  a04a82:	28 05 00 00 
  a04a86:	c5 f8 10 84 17 88 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x588]
  a04a8d:	00 00 
  a04a8f:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a04a96:	05 00 00 10 
  a04a9a:	c5 fc 10 8c 17 68 05 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x568]
  a04aa1:	00 00 
  a04aa3:	c4 e2 79 18 ac 17 90 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x590]
  a04aaa:	05 00 00 
  a04aad:	c4 e3 51 0c c0 03    	vblendps xmm0,xmm5,xmm0,0x3
  a04ab3:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x594],0x30
  a04aba:	05 00 00 30 
  a04abe:	c5 fb 10 ac 17 98 05 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x598]
  a04ac5:	00 00 
  a04ac7:	c4 e3 7d 18 c5 01    	vinsertf128 ymm0,ymm0,xmm5,0x1
  a04acd:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a04ad4:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04ada:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a04ae0:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  a04ae6:	62 e2 75 40 7f e0    	vpermt2ps zmm20,zmm17,zmm0
  a04aec:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a04af3:	a0 05 00 00 
  a04af7:	c5 fc 10 84 17 e0 05 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a04afe:	00 00 
  a04b00:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a04b07:	00 00 
  a04b09:	c4 e3 71 21 8c 17 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a04b10:	06 00 00 10 
  a04b14:	c4 e2 79 18 ac 17 08 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x608]
  a04b1b:	06 00 00 
  a04b1e:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a04b24:	c4 e3 71 21 8c 17 0c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a04b2b:	06 00 00 30 
  a04b2f:	c5 fb 10 ac 17 10 06 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x610]
  a04b36:	00 00 
  a04b38:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a04b3e:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a04b45:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04b4b:	62 81 7c 48 28 fa    	vmovaps zmm23,zmm26
  a04b51:	62 e2 3d 48 7f f8    	vpermt2ps zmm23,zmm8,zmm0
  a04b57:	62 62 75 40 7f d0    	vpermt2ps zmm26,zmm17,zmm0
  a04b5d:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x618]
  a04b64:	18 06 00 00 
  a04b68:	c5 f8 10 84 17 78 06 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x678]
  a04b6f:	00 00 
  a04b71:	c4 e3 79 21 84 17 7c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a04b78:	06 00 00 10 
  a04b7c:	c4 e2 79 18 8c 17 80 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x680]
  a04b83:	06 00 00 
  a04b86:	c5 fc 10 ac 17 58 06 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x658]
  a04b8d:	00 00 
  a04b8f:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a04b95:	c4 e3 79 21 84 17 84 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x684],0x30
  a04b9c:	06 00 00 30 
  a04ba0:	c5 fb 10 8c 17 88 06 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x688]
  a04ba7:	00 00 
  a04ba9:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a04baf:	62 f3 d5 48 1a c0 01 	vinsertf64x4 zmm0,zmm5,ymm0,0x1
  a04bb6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a04bbc:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a04bc2:	62 62 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm0
  a04bc8:	62 62 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm0
  a04bce:	c5 f8 10 84 17 f0 06 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x6f0]
  a04bd5:	00 00 
  a04bd7:	c4 e3 79 21 84 17 f4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6f4],0x10
  a04bde:	06 00 00 10 
  a04be2:	c4 e2 79 18 8c 17 f8 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x6f8]
  a04be9:	06 00 00 
  a04bec:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x690]
  a04bf3:	90 06 00 00 
  a04bf7:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a04bfd:	c4 e3 79 21 84 17 fc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x6fc],0x30
  a04c04:	06 00 00 30 
  a04c08:	c5 fc 10 8c 17 d0 06 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x6d0]
  a04c0f:	00 00 
  a04c11:	c5 fb 10 ac 17 00 07 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x700]
  a04c18:	00 00 
  a04c1a:	c4 e3 7d 18 c5 01    	vinsertf128 ymm0,ymm0,xmm5,0x1
  a04c20:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a04c27:	62 f2 fd c9 88 c8    	vexpandpd zmm1{k1}{z},zmm0
  a04c2d:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a04c33:	62 f2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm1
  a04c39:	c5 f8 10 ac 17 68 07 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x768]
  a04c40:	00 00 
  a04c42:	c4 e3 51 21 ac 17 6c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x76c],0x10
  a04c49:	07 00 00 10 
  a04c4d:	c4 62 79 18 8c 17 70 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x770]
  a04c54:	07 00 00 
  a04c57:	62 62 75 40 7f f1    	vpermt2ps zmm30,zmm17,zmm1
  a04c5d:	c4 e3 31 0c cd 03    	vblendps xmm1,xmm9,xmm5,0x3
  a04c63:	c4 e3 71 21 8c 17 74 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x774],0x30
  a04c6a:	07 00 00 30 
  a04c6e:	c5 fb 10 ac 17 78 07 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x778]
  a04c75:	00 00 
  a04c77:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a04c7d:	c5 fc 10 ac 17 48 07 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x748]
  a04c84:	00 00 
  a04c86:	62 f3 d5 48 1a c9 01 	vinsertf64x4 zmm1,zmm5,ymm1,0x1
  a04c8d:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x708]
  a04c94:	08 07 00 00 
  a04c98:	62 f2 fd c9 88 e9    	vexpandpd zmm5{k1}{z},zmm1
  a04c9e:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a04ca4:	62 f2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm5
  a04caa:	62 62 75 40 7f fd    	vpermt2ps zmm31,zmm17,zmm5
  a04cb0:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a04cb6:	62 21 24 40 58 da    	vaddps zmm27,zmm27,zmm18
  a04cbc:	62 b1 5c 48 5c ea    	vsubps zmm5,zmm4,zmm18
  a04cc2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm5
  a04cc9:	06 
  a04cca:	62 91 4c 48 58 e2    	vaddps zmm4,zmm6,zmm26
  a04cd0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a04cd7:	0c 
  a04cd8:	62 91 4c 48 5c ea    	vsubps zmm5,zmm6,zmm26
  a04cde:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a04ce5:	05 
  a04ce6:	62 91 64 48 58 e0    	vaddps zmm4,zmm3,zmm24
  a04cec:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a04cf3:	0d 
  a04cf4:	62 01 64 48 5c d0    	vsubps zmm26,zmm3,zmm24
  a04cfa:	62 a1 6c 48 58 dd    	vaddps zmm19,zmm2,zmm21
  a04d00:	62 31 6c 48 5c cd    	vsubps zmm9,zmm2,zmm21
  a04d06:	62 01 14 48 58 c6    	vaddps zmm24,zmm13,zmm30
  a04d0c:	62 81 14 48 5c f6    	vsubps zmm22,zmm13,zmm30
  a04d12:	62 e1 04 48 58 e8    	vaddps zmm21,zmm15,zmm0
  a04d18:	62 f1 04 48 5c e0    	vsubps zmm4,zmm15,zmm0
  a04d1e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a04d25:	ff 
  a04d26:	62 c1 54 48 58 ce    	vaddps zmm17,zmm5,zmm14
  a04d2c:	62 d1 54 48 5c de    	vsubps zmm3,zmm5,zmm14
  a04d32:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a04d39:	15 
  a04d3a:	62 81 14 40 58 c1    	vaddps zmm16,zmm29,zmm25
  a04d40:	62 91 14 40 5c d1    	vsubps zmm2,zmm29,zmm25
  a04d46:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm2
  a04d4d:	16 
  a04d4e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a04d55:	fe 
  a04d56:	62 51 54 48 58 f4    	vaddps zmm14,zmm5,zmm12
  a04d5c:	62 d1 54 48 5c c4    	vsubps zmm0,zmm5,zmm12
  a04d62:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a04d69:	0a 
  a04d6a:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x2c0]
  a04d71:	0b 
  a04d72:	62 11 54 48 58 ec    	vaddps zmm13,zmm5,zmm28
  a04d78:	62 61 1c 40 5c cd    	vsubps zmm25,zmm28,zmm5
  a04d7e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a04d85:	03 
  a04d86:	62 71 54 48 58 ff    	vaddps zmm15,zmm5,zmm7
  a04d8c:	62 f1 54 48 5c ff    	vsubps zmm7,zmm5,zmm7
  a04d92:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a04d99:	09 
  a04d9a:	62 11 24 48 58 e7    	vaddps zmm12,zmm11,zmm31
  a04da0:	62 91 24 48 5c f7    	vsubps zmm6,zmm11,zmm31
  a04da6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a04dad:	04 
  a04dae:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x80]
  a04db5:	02 
  a04db6:	62 21 3c 48 58 fc    	vaddps zmm31,zmm8,zmm20
  a04dbc:	62 b1 3c 48 5c ec    	vsubps zmm5,zmm8,zmm20
  a04dc2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm5
  a04dc9:	08 
  a04dca:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x380]
  a04dd1:	0e 
  a04dd2:	62 e1 3c 48 58 e1    	vaddps zmm20,zmm8,zmm1
  a04dd8:	62 41 74 48 5c f0    	vsubps zmm30,zmm1,zmm8
  a04dde:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a04de5:	62 51 74 48 58 c2    	vaddps zmm8,zmm1,zmm10
  a04deb:	62 41 74 48 5c ea    	vsubps zmm29,zmm1,zmm10
  a04df1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a04df8:	01 
  a04df9:	62 a1 74 48 58 d7    	vaddps zmm18,zmm1,zmm23
  a04dff:	62 61 44 40 5c e1    	vsubps zmm28,zmm23,zmm1
  a04e05:	62 d1 2c 40 58 c9    	vaddps zmm1,zmm26,zmm9
  a04e0b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a04e12:	fe 
  a04e13:	62 91 34 48 5c ca    	vsubps zmm1,zmm9,zmm26
  a04e19:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a04e20:	0b 
  a04e21:	62 f1 4c 40 5c cc    	vsubps zmm1,zmm22,zmm4
  a04e27:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a04e2e:	ff 
  a04e2f:	62 a1 5c 48 58 f6    	vaddps zmm22,zmm4,zmm22
  a04e35:	62 f1 64 48 58 ca    	vaddps zmm1,zmm3,zmm2
  a04e3b:	62 f1 34 40 58 d0    	vaddps zmm2,zmm25,zmm0
  a04e41:	62 f2 7d 48 18 05 19 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff670819]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a04e48:	08 67 ff 
  a04e4b:	62 71 6c 48 59 d8    	vmulps zmm11,zmm2,zmm0
  a04e51:	62 f2 7d 48 18 25 a5 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6708a5]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a04e58:	08 67 ff 
  a04e5b:	62 72 75 48 b8 dc    	vfmadd231ps zmm11,zmm1,zmm4
  a04e61:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a04e67:	62 f2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm1
  a04e6d:	62 f1 44 48 58 de    	vaddps zmm3,zmm7,zmm6
  a04e73:	62 71 0c 40 58 d5    	vaddps zmm10,zmm30,zmm5
  a04e79:	62 f1 2c 48 59 cc    	vmulps zmm1,zmm10,zmm4
  a04e7f:	62 f2 65 48 b8 c8    	vfmadd231ps zmm1,zmm3,zmm0
  a04e85:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a04e8b:	62 72 5d 48 bc d3    	vfnmadd231ps zmm10,zmm4,zmm3
  a04e91:	62 21 24 40 58 d2    	vaddps zmm26,zmm27,zmm18
  a04e97:	62 b1 24 40 5c da    	vsubps zmm3,zmm27,zmm18
  a04e9d:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a04ea4:	62 01 64 40 58 d8    	vaddps zmm27,zmm19,zmm24
  a04eaa:	62 81 64 40 5c d0    	vsubps zmm18,zmm19,zmm24
  a04eb0:	62 c1 74 40 58 fd    	vaddps zmm23,zmm17,zmm13
  a04eb6:	62 d1 74 40 5c dd    	vsubps zmm3,zmm17,zmm13
  a04ebc:	62 21 0c 48 58 c0    	vaddps zmm24,zmm14,zmm16
  a04ec2:	62 b1 0c 48 5c f0    	vsubps zmm6,zmm14,zmm16
  a04ec8:	62 c1 04 40 58 cc    	vaddps zmm17,zmm31,zmm12
  a04ece:	62 d1 04 40 5c ec    	vsubps zmm5,zmm31,zmm12
  a04ed4:	62 21 04 48 58 fc    	vaddps zmm31,zmm15,zmm20
  a04eda:	62 b1 04 48 5c fc    	vsubps zmm7,zmm15,zmm20
  a04ee0:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x300]
  a04ee7:	0c 
  a04ee8:	62 51 3c 48 58 cd    	vaddps zmm9,zmm8,zmm13
  a04eee:	62 c1 3c 48 5c e5    	vsubps zmm20,zmm8,zmm13
  a04ef4:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x340]
  a04efb:	0d 
  a04efc:	62 31 14 48 58 c5    	vaddps zmm8,zmm13,zmm21
  a04f02:	62 c1 54 40 5c ed    	vsubps zmm21,zmm21,zmm13
  a04f08:	62 71 64 48 58 e6    	vaddps zmm12,zmm3,zmm6
  a04f0e:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm12
  a04f15:	02 
  a04f16:	62 71 4c 48 5c eb    	vsubps zmm13,zmm6,zmm3
  a04f1c:	62 f1 54 48 5c df    	vsubps zmm3,zmm5,zmm7
  a04f22:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a04f29:	01 
  a04f2a:	62 f1 44 48 58 dd    	vaddps zmm3,zmm7,zmm5
  a04f30:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a04f37:	0e 
  a04f38:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x180]
  a04f3f:	06 
  a04f40:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x140]
  a04f47:	05 
  a04f48:	62 f1 64 48 58 ee    	vaddps zmm5,zmm3,zmm6
  a04f4e:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a04f54:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a04f5b:	03 
  a04f5c:	62 f2 7d 48 18 3d 36 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff670436]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a04f63:	04 67 ff 
  a04f66:	62 f1 44 48 59 74 24 	vmulps zmm6,zmm7,ZMMWORD PTR [rsp+0x2c0]
  a04f6d:	0b 
  a04f6e:	62 e1 4c 40 59 f7    	vmulps zmm22,zmm22,zmm7
  a04f74:	62 b1 4c 48 5c de    	vsubps zmm3,zmm6,zmm22
  a04f7a:	62 b1 4c 48 58 f6    	vaddps zmm6,zmm6,zmm22
  a04f80:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm6
  a04f87:	06 
  a04f88:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x540]
  a04f8f:	15 
  a04f90:	62 e1 4c 48 5c 74 24 	vsubps zmm22,zmm6,ZMMWORD PTR [rsp+0x580]
  a04f97:	16 
  a04f98:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a04f9f:	0a 
  a04fa0:	62 01 4c 48 5c c9    	vsubps zmm25,zmm6,zmm25
  a04fa6:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a04fad:	09 
  a04fae:	62 71 4c 48 5c 7c 24 	vsubps zmm15,zmm6,ZMMWORD PTR [rsp+0x100]
  a04fb5:	04 
  a04fb6:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x200]
  a04fbd:	08 
  a04fbe:	62 11 4c 48 5c f6    	vsubps zmm14,zmm6,zmm30
  a04fc4:	62 81 1c 40 58 c5    	vaddps zmm16,zmm28,zmm29
  a04fca:	62 91 14 40 5c f4    	vsubps zmm6,zmm29,zmm28
  a04fd0:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm6
  a04fd7:	0d 
  a04fd8:	62 e1 44 48 59 5c 24 	vmulps zmm19,zmm7,ZMMWORD PTR [rsp-0x80]
  a04fdf:	fe 
  a04fe0:	62 61 44 48 59 64 24 	vmulps zmm28,zmm7,ZMMWORD PTR [rsp-0x40]
  a04fe7:	ff 
  a04fe8:	62 01 64 40 58 ec    	vaddps zmm29,zmm19,zmm28
  a04fee:	62 b1 1c 40 5c f3    	vsubps zmm6,zmm28,zmm19
  a04ff4:	62 61 34 40 59 e4    	vmulps zmm28,zmm25,zmm4
  a04ffa:	62 62 4d 40 b8 e0    	vfmadd231ps zmm28,zmm22,zmm0
  a05000:	62 61 34 40 59 c8    	vmulps zmm25,zmm25,zmm0
  a05006:	62 22 5d 48 bc ce    	vfnmadd231ps zmm25,zmm4,zmm22
  a0500c:	62 e1 0c 48 59 f0    	vmulps zmm22,zmm14,zmm0
  a05012:	62 e2 05 48 b8 f4    	vfmadd231ps zmm22,zmm15,zmm4
  a05018:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a0501e:	62 52 5d 48 bc fe    	vfnmadd231ps zmm15,zmm4,zmm14
  a05024:	62 51 2c 40 58 f0    	vaddps zmm14,zmm26,zmm8
  a0502a:	62 d1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm8
  a05030:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a05037:	fe 
  a05038:	62 21 3c 40 58 d1    	vaddps zmm26,zmm24,zmm17
  a0503e:	62 b1 3c 40 5c c1    	vsubps zmm0,zmm24,zmm17
  a05044:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0504b:	ff 
  a0504c:	62 01 34 48 58 c3    	vaddps zmm24,zmm9,zmm27
  a05052:	62 91 34 48 5c c3    	vsubps zmm0,zmm9,zmm27
  a05058:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0505f:	05 
  a05060:	62 01 44 40 58 df    	vaddps zmm27,zmm23,zmm31
  a05066:	62 b1 04 40 5c c7    	vsubps zmm0,zmm31,zmm23
  a0506c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a05073:	0c 
  a05074:	62 01 54 48 58 f5    	vaddps zmm30,zmm5,zmm29
  a0507a:	62 81 54 48 5c fd    	vsubps zmm23,zmm5,zmm29
  a05080:	62 41 6c 48 58 ea    	vaddps zmm29,zmm2,zmm10
  a05086:	62 c1 6c 48 5c da    	vsubps zmm19,zmm2,zmm10
  a0508c:	62 71 7c 40 58 d3    	vaddps zmm10,zmm16,zmm3
  a05092:	62 71 7c 40 5c e3    	vsubps zmm12,zmm16,zmm3
  a05098:	62 e1 24 48 58 c1    	vaddps zmm16,zmm11,zmm1
  a0509e:	62 51 74 48 5c cb    	vsubps zmm9,zmm1,zmm11
  a050a4:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a050ab:	62 b1 7c 48 58 ea    	vaddps zmm5,zmm0,zmm18
  a050b1:	62 a1 7c 48 5c d2    	vsubps zmm18,zmm0,zmm18
  a050b7:	62 71 14 48 59 ef    	vmulps zmm13,zmm13,zmm7
  a050bd:	62 71 44 48 59 5c 24 	vmulps zmm11,zmm7,ZMMWORD PTR [rsp+0x380]
  a050c4:	0e 
  a050c5:	62 41 14 48 5c fb    	vsubps zmm31,zmm13,zmm11
  a050cb:	62 51 14 48 58 db    	vaddps zmm11,zmm13,zmm11
  a050d1:	62 31 54 40 58 ec    	vaddps zmm13,zmm21,zmm20
  a050d7:	62 a1 5c 40 5c ed    	vsubps zmm21,zmm20,zmm21
  a050dd:	62 e1 44 48 59 4c 24 	vmulps zmm17,zmm7,ZMMWORD PTR [rsp+0x80]
  a050e4:	02 
  a050e5:	62 e1 44 48 59 64 24 	vmulps zmm20,zmm7,ZMMWORD PTR [rsp+0x40]
  a050ec:	01 
  a050ed:	62 b1 74 40 58 d4    	vaddps zmm2,zmm17,zmm20
  a050f3:	62 31 5c 40 5c c1    	vsubps zmm8,zmm20,zmm17
  a050f9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a05100:	03 
  a05101:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a05108:	06 
  a05109:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a0510f:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a05115:	62 d1 34 40 58 df    	vaddps zmm3,zmm25,zmm15
  a0511b:	62 51 34 40 5c ff    	vsubps zmm15,zmm25,zmm15
  a05121:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a05128:	0d 
  a05129:	62 f1 7c 48 58 ce    	vaddps zmm1,zmm0,zmm6
  a0512f:	62 f1 7c 48 5c f6    	vsubps zmm6,zmm0,zmm6
  a05135:	62 b1 1c 40 5c c6    	vsubps zmm0,zmm28,zmm22
  a0513b:	62 a1 1c 40 58 f6    	vaddps zmm22,zmm28,zmm22
  a05141:	62 01 0c 48 58 e3    	vaddps zmm28,zmm14,zmm27
  a05147:	62 01 0c 48 5c db    	vsubps zmm27,zmm14,zmm27
  a0514d:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm27
  a05154:	04 
  a05155:	62 11 3c 40 58 f2    	vaddps zmm14,zmm24,zmm26
  a0515b:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm14
  a05162:	02 
  a05163:	62 11 3c 40 5c f2    	vsubps zmm14,zmm24,zmm26
  a05169:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm14
  a05170:	1f 
  a05171:	62 21 0c 40 58 c0    	vaddps zmm24,zmm30,zmm16
  a05177:	62 21 0c 40 5c f0    	vsubps zmm30,zmm30,zmm16
  a0517d:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm30
  a05184:	08 
  a05185:	62 81 2c 48 58 c5    	vaddps zmm16,zmm10,zmm29
  a0518b:	62 11 2c 48 5c d5    	vsubps zmm10,zmm10,zmm29
  a05191:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm10
  a05198:	1e 
  a05199:	62 61 54 48 58 ca    	vaddps zmm25,zmm5,zmm2
  a0519f:	62 f1 54 48 5c ea    	vsubps zmm5,zmm5,zmm2
  a051a5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a051ac:	11 
  a051ad:	62 01 14 48 58 ef    	vaddps zmm29,zmm13,zmm31
  a051b3:	62 11 14 48 5c f7    	vsubps zmm14,zmm13,zmm31
  a051b9:	62 61 5c 48 58 d0    	vaddps zmm26,zmm4,zmm0
  a051bf:	62 61 5c 48 5c f8    	vsubps zmm31,zmm4,zmm0
  a051c5:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm31
  a051cc:	10 
  a051cd:	62 f1 74 48 58 e3    	vaddps zmm4,zmm1,zmm3
  a051d3:	62 f1 74 48 5c c3    	vsubps zmm0,zmm1,zmm3
  a051d9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a051e0:	1d 
  a051e1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a051e8:	fe 
  a051e9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a051f0:	ff 
  a051f1:	62 f1 7c 48 58 ca    	vaddps zmm1,zmm0,zmm2
  a051f7:	62 e1 7c 48 5c ca    	vsubps zmm17,zmm0,zmm2
  a051fd:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm17
  a05204:	0f 
  a05205:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a0520c:	05 
  a0520d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x300]
  a05214:	0c 
  a05215:	62 71 6c 48 58 e8    	vaddps zmm13,zmm2,zmm0
  a0521b:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a05221:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a05228:	1c 
  a05229:	62 b1 44 40 58 db    	vaddps zmm3,zmm23,zmm19
  a0522f:	62 a1 44 40 5c e3    	vsubps zmm20,zmm23,zmm19
  a05235:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xac0],zmm20
  a0523c:	2b 
  a0523d:	62 c1 1c 48 58 d9    	vaddps zmm19,zmm12,zmm9
  a05243:	62 c1 1c 48 5c f9    	vsubps zmm23,zmm12,zmm9
  a05249:	62 51 6c 40 58 cb    	vaddps zmm9,zmm18,zmm11
  a0524f:	62 d1 6c 40 5c c3    	vsubps zmm0,zmm18,zmm11
  a05255:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa80],zmm0
  a0525c:	2a 
  a0525d:	62 51 54 40 58 d8    	vaddps zmm11,zmm21,zmm8
  a05263:	62 d1 54 40 5c d0    	vsubps zmm2,zmm21,zmm8
  a05269:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm2
  a05270:	1b 
  a05271:	62 51 44 48 58 c7    	vaddps zmm8,zmm7,zmm15
  a05277:	62 51 44 48 5c ff    	vsubps zmm15,zmm7,zmm15
  a0527d:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm15
  a05284:	29 
  a05285:	62 b1 4c 48 5c fe    	vsubps zmm7,zmm6,zmm22
  a0528b:	62 a1 4c 48 58 f6    	vaddps zmm22,zmm6,zmm22
  a05291:	62 61 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm28
  a05298:	62 f1 7c 48 28 15 1e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c1d1e]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0529f:	1d 6c ff 
  a052a2:	62 02 6d 48 7f e3    	vpermt2ps zmm28,zmm2,zmm27
  a052a8:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm28
  a052af:	03 
  a052b0:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a052b6:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm24
  a052bd:	09 
  a052be:	62 12 6d 48 7f d6    	vpermt2ps zmm10,zmm2,zmm30
  a052c4:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm10
  a052cb:	0e 
  a052cc:	62 11 7c 48 28 e1    	vmovaps zmm12,zmm25
  a052d2:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm25
  a052d9:	14 
  a052da:	62 72 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm5
  a052e0:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a052e6:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a052ed:	0b 
  a052ee:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a052f4:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm26
  a052fb:	07 
  a052fc:	62 12 6d 48 7f e7    	vpermt2ps zmm12,zmm2,zmm31
  a05302:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a05308:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm12
  a0530f:	15 
  a05310:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a05317:	fe 
  a05318:	62 b2 6d 48 7f c9    	vpermt2ps zmm1,zmm2,zmm17
  a0531e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a05325:	06 
  a05326:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a0532d:	ff 
  a0532e:	62 b2 6d 48 7f dc    	vpermt2ps zmm3,zmm2,zmm20
  a05334:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a0533b:	0d 
  a0533c:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a05342:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a05348:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm9
  a0534f:	16 
  a05350:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a05356:	62 52 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm15
  a0535c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm8
  a05363:	0a 
  a05364:	62 71 7c 48 28 3d 92 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c1b92]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0536b:	1b 6c ff 
  a0536e:	62 62 05 48 7f e1    	vpermt2ps zmm28,zmm15,zmm1
  a05374:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm28
  a0537b:	1a 
  a0537c:	62 72 05 48 7f d3    	vpermt2ps zmm10,zmm15,zmm3
  a05382:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm10
  a05389:	18 
  a0538a:	62 d2 05 48 7f e9    	vpermt2ps zmm5,zmm15,zmm9
  a05390:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm5
  a05397:	19 
  a05398:	62 c2 05 48 7f d0    	vpermt2ps zmm18,zmm15,zmm8
  a0539e:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm18
  a053a5:	17 
  a053a6:	62 f1 9d 40 14 cd    	vunpcklpd zmm1,zmm28,zmm5
  a053ac:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a053b3:	13 
  a053b4:	62 b1 ad 48 14 c2    	vunpcklpd zmm0,zmm10,zmm18
  a053ba:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a053c1:	12 
  a053c2:	62 61 7c 48 28 0d 34 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6c1a34]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a053c9:	1a 6c ff 
  a053cc:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a053d2:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a053d9:	02 
  a053da:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a053e1:	01 
  a053e2:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x7c0]
  a053e9:	1f 
  a053ea:	62 d2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm8
  a053f0:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a053f6:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a053fd:	02 
  a053fe:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a05404:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x780]
  a0540b:	1e 
  a0540c:	62 c2 6d 48 7f c2    	vpermt2ps zmm16,zmm2,zmm10
  a05412:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a05418:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm16
  a0541f:	27 
  a05420:	62 01 7c 48 28 dd    	vmovaps zmm27,zmm29
  a05426:	62 42 6d 48 7f ee    	vpermt2ps zmm29,zmm2,zmm14
  a0542c:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a05432:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a05438:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm29
  a0543f:	25 
  a05440:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a05446:	62 61 7c 48 28 fc    	vmovaps zmm31,zmm4
  a0544c:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x740]
  a05453:	1d 
  a05454:	62 b2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm16
  a0545a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm3
  a05461:	23 
  a05462:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a05468:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a0546f:	1c 
  a05470:	62 72 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm0
  a05476:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm13
  a0547d:	28 
  a0547e:	62 31 7c 48 28 f3    	vmovaps zmm14,zmm19
  a05484:	62 a2 6d 48 7f df    	vpermt2ps zmm19,zmm2,zmm23
  a0548a:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm19
  a05491:	26 
  a05492:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a05498:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x6c0]
  a0549f:	1b 
  a054a0:	62 12 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm28
  a054a6:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm11
  a054ad:	24 
  a054ae:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a054b4:	62 21 7c 48 28 ee    	vmovaps zmm29,zmm22
  a054ba:	62 b2 6d 48 7f fe    	vpermt2ps zmm7,zmm2,zmm22
  a054c0:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a054c6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm7
  a054cd:	22 
  a054ce:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a054d4:	62 d2 05 48 7f fd    	vpermt2ps zmm7,zmm15,zmm13
  a054da:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a054e0:	62 b2 05 48 7f eb    	vpermt2ps zmm5,zmm15,zmm19
  a054e6:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a054ec:	62 d2 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm11
  a054f2:	62 f2 05 48 7f da    	vpermt2ps zmm3,zmm15,zmm2
  a054f8:	62 e1 c5 48 14 d4    	vunpcklpd zmm18,zmm7,zmm4
  a054fe:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm18
  a05505:	21 
  a05506:	62 f1 d5 48 14 d3    	vunpcklpd zmm2,zmm5,zmm3
  a0550c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm2
  a05513:	20 
  a05514:	62 e2 35 40 7f d2    	vpermt2ps zmm18,zmm25,zmm2
  a0551a:	62 e1 7c 48 10 59 11 	vmovups zmm19,ZMMWORD PTR [rcx+0x440]
  a05521:	62 e1 7c 48 10 69 10 	vmovups zmm21,ZMMWORD PTR [rcx+0x400]
  a05528:	62 b1 6c 40 59 d5    	vmulps zmm2,zmm18,zmm21
  a0552e:	62 b2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm19
  a05534:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a0553b:	05 
  a0553c:	62 b1 74 48 59 cd    	vmulps zmm1,zmm1,zmm21
  a05542:	62 b2 65 40 bc ca    	vfnmadd231ps zmm1,zmm19,zmm18
  a05548:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a0554f:	0c 
  a05550:	62 f1 7c 48 28 0d 26 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c1a26]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a05557:	1a 6c ff 
  a0555a:	62 e1 7c 48 10 1c 24 	vmovups zmm19,ZMMWORD PTR [rsp]
  a05561:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x100]
  a05568:	04 
  a05569:	62 e1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm19
  a05570:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x240]
  a05577:	09 
  a05578:	62 72 75 48 7f 5c 24 	vpermt2ps zmm11,zmm1,ZMMWORD PTR [rsp+0x200]
  a0557f:	08 
  a05580:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x500]
  a05587:	14 
  a05588:	62 f2 75 48 7f 74 24 	vpermt2ps zmm6,zmm1,ZMMWORD PTR [rsp+0x440]
  a0558f:	11 
  a05590:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x1c0]
  a05597:	07 
  a05598:	62 e2 75 48 7f 54 24 	vpermt2ps zmm18,zmm1,ZMMWORD PTR [rsp+0x400]
  a0559f:	10 
  a055a0:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a055a7:	fe 
  a055a8:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a055af:	0f 
  a055b0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a055b7:	fe 
  a055b8:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x40]
  a055bf:	ff 
  a055c0:	62 e2 75 48 7f 74 24 	vpermt2ps zmm22,zmm1,ZMMWORD PTR [rsp+0xac0]
  a055c7:	2b 
  a055c8:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm22
  a055cf:	ff 
  a055d0:	62 62 75 48 7f 44 24 	vpermt2ps zmm24,zmm1,ZMMWORD PTR [rsp+0xa80]
  a055d7:	2a 
  a055d8:	62 e2 75 48 7f 64 24 	vpermt2ps zmm20,zmm1,ZMMWORD PTR [rsp+0xa40]
  a055df:	29 
  a055e0:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x40]
  a055e7:	01 
  a055e8:	62 c2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm8
  a055ee:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm21
  a055f5:	01 
  a055f6:	62 42 75 48 7f d2    	vpermt2ps zmm26,zmm1,zmm10
  a055fc:	62 22 75 48 7f d9    	vpermt2ps zmm27,zmm1,zmm17
  a05602:	62 22 75 48 7f f8    	vpermt2ps zmm31,zmm1,zmm16
  a05608:	62 62 75 48 7f f0    	vpermt2ps zmm30,zmm1,zmm0
  a0560e:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm30
  a05615:	07 
  a05616:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a0561c:	62 b2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm23
  a05622:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a05629:	10 
  a0562a:	62 12 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm28
  a05630:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm9
  a05637:	0f 
  a05638:	62 12 75 48 7f e5    	vpermt2ps zmm12,zmm1,zmm29
  a0563e:	62 e2 05 48 7f da    	vpermt2ps zmm19,zmm15,zmm2
  a05644:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a0564a:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a05650:	62 32 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm22
  a05656:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a0565c:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  a05662:	62 12 05 48 7f f0    	vpermt2ps zmm14,zmm15,zmm24
  a05668:	62 81 7c 48 28 c0    	vmovaps zmm16,zmm24
  a0566e:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a05674:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a0567a:	62 32 05 48 7f dc    	vpermt2ps zmm11,zmm15,zmm20
  a05680:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a05686:	62 41 e5 40 15 ce    	vunpckhpd zmm25,zmm19,zmm14
  a0568c:	62 41 95 48 15 e3    	vunpckhpd zmm28,zmm13,zmm11
  a05692:	62 81 7c 48 28 e1    	vmovaps zmm20,zmm25
  a05698:	62 f1 7c 48 28 0d 5e 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c175e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0569f:	17 6c ff 
  a056a2:	62 82 75 48 7f e4    	vpermt2ps zmm20,zmm1,zmm28
  a056a8:	62 a1 7c 48 28 cd    	vmovaps zmm17,zmm21
  a056ae:	62 82 05 48 7f ce    	vpermt2ps zmm17,zmm15,zmm30
  a056b4:	62 81 7c 48 28 f2    	vmovaps zmm22,zmm26
  a056ba:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a056c0:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a056c6:	62 81 7c 48 28 fb    	vmovaps zmm23,zmm27
  a056cc:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a056d2:	62 c2 05 48 7f f9    	vpermt2ps zmm23,zmm15,zmm9
  a056d8:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a056de:	62 42 05 48 7f c4    	vpermt2ps zmm24,zmm15,zmm12
  a056e4:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a056ea:	62 21 f5 40 15 df    	vunpckhpd zmm27,zmm17,zmm23
  a056f0:	62 01 cd 40 15 f0    	vunpckhpd zmm30,zmm22,zmm24
  a056f6:	62 81 7c 48 28 d3    	vmovaps zmm18,zmm27
  a056fc:	62 82 75 48 7f d6    	vpermt2ps zmm18,zmm1,zmm30
  a05702:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a05709:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a05710:	62 71 6c 40 59 f8    	vmulps zmm15,zmm18,zmm0
  a05716:	62 72 5d 40 b8 f9    	vfmadd231ps zmm15,zmm20,zmm1
  a0571c:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm15
  a05723:	04 
  a05724:	62 f1 5c 40 59 c0    	vmulps zmm0,zmm20,zmm0
  a0572a:	62 b2 75 48 bc c2    	vfnmadd231ps zmm0,zmm1,zmm18
  a05730:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a05737:	09 
  a05738:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a0573f:	1a 
  a05740:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x640]
  a05747:	19 
  a05748:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x600]
  a0574f:	18 
  a05750:	62 e1 f5 48 15 54 24 	vunpckhpd zmm18,zmm1,ZMMWORD PTR [rsp+0x5c0]
  a05757:	17 
  a05758:	62 f1 c5 48 15 fc    	vunpckhpd zmm7,zmm7,zmm4
  a0575e:	62 71 d5 48 15 fb    	vunpckhpd zmm15,zmm5,zmm3
  a05764:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a0576a:	62 f1 7c 48 28 0d cc 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c16cc]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a05771:	16 6c ff 
  a05774:	62 b2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm18
  a0577a:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm7
  a05781:	11 
  a05782:	62 d2 75 48 7f ff    	vpermt2ps zmm7,zmm1,zmm15
  a05788:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a0578f:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a05796:	62 f1 44 48 59 ec    	vmulps zmm5,zmm7,zmm4
  a0579c:	62 f2 7d 48 b8 eb    	vfmadd231ps zmm5,zmm0,zmm3
  a057a2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm5
  a057a9:	08 
  a057aa:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a057b0:	62 f2 65 48 bc c7    	vfnmadd231ps zmm0,zmm3,zmm7
  a057b6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a057bd:	14 
  a057be:	62 e1 7c 48 28 25 78 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6c1778]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a057c5:	17 6c ff 
  a057c8:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a057cf:	62 f2 5d 40 7f 64 24 	vpermt2ps zmm4,zmm20,ZMMWORD PTR [rsp-0x80]
  a057d6:	fe 
  a057d7:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp-0x40]
  a057de:	ff 
  a057df:	62 22 5d 40 7f e8    	vpermt2ps zmm29,zmm20,zmm16
  a057e5:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a057eb:	62 d2 5d 40 7f f8    	vpermt2ps zmm7,zmm20,zmm8
  a057f1:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0xc0]
  a057f8:	03 
  a057f9:	62 72 5d 40 7f 64 24 	vpermt2ps zmm12,zmm20,ZMMWORD PTR [rsp+0x180]
  a05800:	06 
  a05801:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x380]
  a05808:	0e 
  a05809:	62 72 5d 40 7f 54 24 	vpermt2ps zmm10,zmm20,ZMMWORD PTR [rsp+0x340]
  a05810:	0d 
  a05811:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x2c0]
  a05818:	0b 
  a05819:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp+0x580]
  a05820:	16 
  a05821:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x540]
  a05828:	15 
  a05829:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x280]
  a05830:	0a 
  a05831:	62 d1 e5 40 14 de    	vunpcklpd zmm3,zmm19,zmm14
  a05837:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a0583d:	62 81 dd 48 14 dd    	vunpcklpd zmm19,zmm4,zmm29
  a05843:	62 11 dd 48 15 f5    	vunpckhpd zmm14,zmm4,zmm29
  a05849:	62 f1 ed 48 14 ef    	vunpcklpd zmm5,zmm2,zmm7
  a0584f:	62 f1 ed 48 15 ff    	vunpckhpd zmm7,zmm2,zmm7
  a05855:	62 31 9d 48 14 d8    	vunpcklpd zmm11,zmm12,zmm16
  a0585b:	62 a1 9d 48 15 c0    	vunpckhpd zmm16,zmm12,zmm16
  a05861:	62 51 ad 48 14 e0    	vunpcklpd zmm12,zmm10,zmm8
  a05867:	62 51 ad 48 15 c0    	vunpckhpd zmm8,zmm10,zmm8
  a0586d:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a05873:	62 f1 7c 48 28 15 83 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c1583]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0587a:	15 6c ff 
  a0587d:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a05883:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a0588a:	0e 
  a0588b:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a05891:	62 02 75 48 7f cc    	vpermt2ps zmm25,zmm1,zmm28
  a05897:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm25
  a0589e:	fe 
  a0589f:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a058a5:	62 62 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm5
  a058ab:	62 e2 75 48 7f dd    	vpermt2ps zmm19,zmm1,zmm5
  a058b1:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a058b7:	62 72 6d 48 7f ef    	vpermt2ps zmm13,zmm2,zmm7
  a058bd:	62 72 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm7
  a058c3:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a058ca:	13 
  a058cb:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x480]
  a058d2:	12 
  a058d3:	62 b2 6d 48 7f f2    	vpermt2ps zmm6,zmm2,zmm18
  a058d9:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a058e0:	62 41 7c 48 28 cb    	vmovaps zmm25,zmm11
  a058e6:	62 42 6d 48 7f cc    	vpermt2ps zmm25,zmm2,zmm12
  a058ec:	62 52 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm12
  a058f2:	62 c2 6d 48 7f c0    	vpermt2ps zmm16,zmm2,zmm8
  a058f8:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a058fe:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a05905:	01 
  a05906:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp+0x1c0]
  a0590d:	07 
  a0590e:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a05914:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x400]
  a0591b:	10 
  a0591c:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a05922:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x3c0]
  a05929:	0f 
  a0592a:	62 42 5d 40 7f f9    	vpermt2ps zmm31,zmm20,zmm9
  a05930:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a05937:	02 
  a05938:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0xa00]
  a0593f:	28 
  a05940:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x9c0]
  a05947:	27 
  a05948:	62 e2 5d 40 7f 54 24 	vpermt2ps zmm18,zmm20,ZMMWORD PTR [rsp+0x980]
  a0594f:	26 
  a05950:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x940]
  a05957:	25 
  a05958:	62 72 5d 40 7f 54 24 	vpermt2ps zmm10,zmm20,ZMMWORD PTR [rsp+0x900]
  a0595f:	24 
  a05960:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x8c0]
  a05967:	23 
  a05968:	62 62 5d 40 7f 6c 24 	vpermt2ps zmm29,zmm20,ZMMWORD PTR [rsp+0x880]
  a0596f:	22 
  a05970:	62 31 f5 40 14 e7    	vunpcklpd zmm12,zmm17,zmm23
  a05976:	62 91 cd 40 14 c0    	vunpcklpd zmm0,zmm22,zmm24
  a0597c:	62 c1 ed 48 14 e8    	vunpcklpd zmm21,zmm2,zmm8
  a05982:	62 51 ed 48 15 c0    	vunpckhpd zmm8,zmm2,zmm8
  a05988:	62 91 d5 48 14 d7    	vunpcklpd zmm2,zmm5,zmm31
  a0598e:	62 91 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm31
  a05994:	62 c1 cd 48 14 ca    	vunpcklpd zmm17,zmm6,zmm10
  a0599a:	62 51 cd 48 15 d2    	vunpckhpd zmm10,zmm6,zmm10
  a059a0:	62 91 ed 40 14 f5    	vunpcklpd zmm6,zmm18,zmm29
  a059a6:	62 81 ed 40 15 d5    	vunpckhpd zmm18,zmm18,zmm29
  a059ac:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a059b2:	62 72 45 48 7f c8    	vpermt2ps zmm9,zmm7,zmm0
  a059b8:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm9
  a059bf:	0d 
  a059c0:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a059c6:	62 02 75 48 7f de    	vpermt2ps zmm27,zmm1,zmm30
  a059cc:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a059d2:	62 f2 45 48 7f c2    	vpermt2ps zmm0,zmm7,zmm2
  a059d8:	62 e2 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm2
  a059de:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a059e4:	62 72 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm5
  a059ea:	62 72 75 48 7f c5    	vpermt2ps zmm8,zmm1,zmm5
  a059f0:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x840]
  a059f7:	21 
  a059f8:	62 e2 75 48 7f 64 24 	vpermt2ps zmm20,zmm1,ZMMWORD PTR [rsp+0x800]
  a059ff:	20 
  a05a00:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x440]
  a05a07:	11 
  a05a08:	62 42 45 48 7f d7    	vpermt2ps zmm26,zmm7,zmm15
  a05a0e:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a05a14:	62 f2 45 48 7f d6    	vpermt2ps zmm2,zmm7,zmm6
  a05a1a:	62 e2 75 48 7f ce    	vpermt2ps zmm17,zmm1,zmm6
  a05a20:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a05a27:	62 32 45 48 7f d2    	vpermt2ps zmm10,zmm7,zmm18
  a05a2d:	62 f1 7c 48 10 69 1c 	vmovups zmm5,ZMMWORD PTR [rcx+0x700]
  a05a34:	62 f1 2c 48 59 f5    	vmulps zmm6,zmm10,zmm5
  a05a3a:	62 f2 7d 40 b8 f1    	vfmadd231ps zmm6,zmm16,zmm1
  a05a40:	62 e1 7c 40 59 d5    	vmulps zmm18,zmm16,zmm5
  a05a46:	62 c2 75 48 bc d2    	vfnmadd231ps zmm18,zmm1,zmm10
  a05a4c:	62 f1 7c 48 10 49 1b 	vmovups zmm1,ZMMWORD PTR [rcx+0x6c0]
  a05a53:	62 71 7c 48 10 51 1a 	vmovups zmm10,ZMMWORD PTR [rcx+0x680]
  a05a5a:	62 51 74 40 59 fa    	vmulps zmm15,zmm17,zmm10
  a05a60:	62 72 25 48 b8 f9    	vfmadd231ps zmm15,zmm11,zmm1
  a05a66:	62 51 24 48 59 d2    	vmulps zmm10,zmm11,zmm10
  a05a6c:	62 32 75 48 bc d1    	vfnmadd231ps zmm10,zmm1,zmm17
  a05a72:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a05a79:	62 71 7c 48 10 59 0e 	vmovups zmm11,ZMMWORD PTR [rcx+0x380]
  a05a80:	62 c1 3c 48 59 c3    	vmulps zmm16,zmm8,zmm11
  a05a86:	62 e2 0d 48 b8 c1    	vfmadd231ps zmm16,zmm14,zmm1
  a05a8c:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a05a92:	62 52 75 48 bc f0    	vfnmadd231ps zmm14,zmm1,zmm8
  a05a98:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a05a9f:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a05aa6:	62 e1 1c 48 59 c9    	vmulps zmm17,zmm12,zmm1
  a05aac:	62 c2 65 48 b8 cb    	vfmadd231ps zmm17,zmm3,zmm11
  a05ab2:	62 71 64 48 59 c1    	vmulps zmm8,zmm3,zmm1
  a05ab8:	62 52 25 48 bc c4    	vfnmadd231ps zmm8,zmm11,zmm12
  a05abe:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a05ac5:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a05acc:	62 e1 7c 48 59 f3    	vmulps zmm22,zmm0,zmm3
  a05ad2:	62 e2 1d 40 b8 f1    	vfmadd231ps zmm22,zmm28,zmm1
  a05ad8:	62 61 1c 40 59 c3    	vmulps zmm24,zmm28,zmm3
  a05ade:	62 62 75 48 bc c0    	vfnmadd231ps zmm24,zmm1,zmm0
  a05ae4:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a05aeb:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a05af2:	62 e1 14 48 59 f9    	vmulps zmm23,zmm13,zmm1
  a05af8:	62 e2 35 48 bc f8    	vfnmadd231ps zmm23,zmm9,zmm0
  a05afe:	62 61 34 48 59 f9    	vmulps zmm31,zmm9,zmm1
  a05b04:	62 42 7d 48 b8 fd    	vfmadd231ps zmm31,zmm0,zmm13
  a05b0a:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a05b11:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a05b18:	62 61 5c 48 59 f1    	vmulps zmm30,zmm4,zmm1
  a05b1e:	62 62 5d 40 bc f0    	vfnmadd231ps zmm30,zmm20,zmm0
  a05b24:	62 61 5c 40 59 e9    	vmulps zmm29,zmm20,zmm1
  a05b2a:	62 62 7d 48 b8 ec    	vfmadd231ps zmm29,zmm0,zmm4
  a05b30:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a05b37:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a05b3e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a05b45:	fe 
  a05b46:	62 f1 64 48 59 e0    	vmulps zmm4,zmm3,zmm0
  a05b4c:	62 f2 25 40 bc e1    	vfnmadd231ps zmm4,zmm27,zmm1
  a05b52:	62 f1 24 40 59 c0    	vmulps zmm0,zmm27,zmm0
  a05b58:	62 f2 75 48 b8 c3    	vfmadd231ps zmm0,zmm1,zmm3
  a05b5e:	62 71 7c 48 10 49 19 	vmovups zmm9,ZMMWORD PTR [rcx+0x640]
  a05b65:	62 f1 7c 48 10 49 18 	vmovups zmm1,ZMMWORD PTR [rcx+0x600]
  a05b6c:	62 71 34 40 59 e1    	vmulps zmm12,zmm25,zmm1
  a05b72:	62 52 6d 48 bc e1    	vfnmadd231ps zmm12,zmm2,zmm9
  a05b78:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a05b7e:	62 92 35 48 b8 c9    	vfmadd231ps zmm1,zmm9,zmm25
  a05b84:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a05b8b:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a05b92:	62 d1 54 40 59 d9    	vmulps zmm3,zmm21,zmm9
  a05b98:	62 f2 65 40 b8 da    	vfmadd231ps zmm3,zmm19,zmm2
  a05b9e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a05ba5:	03 
  a05ba6:	62 d1 64 40 59 d9    	vmulps zmm3,zmm19,zmm9
  a05bac:	62 b2 6d 48 bc dd    	vfnmadd231ps zmm3,zmm2,zmm21
  a05bb2:	62 61 7c 48 28 cb    	vmovaps zmm25,zmm3
  a05bb8:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a05bbf:	06 
  a05bc0:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a05bc7:	62 f1 7c 48 10 79 14 	vmovups zmm7,ZMMWORD PTR [rcx+0x500]
  a05bce:	62 f1 2c 40 59 ef    	vmulps zmm5,zmm26,zmm7
  a05bd4:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a05bdb:	62 f2 65 48 b8 ea    	vfmadd231ps zmm5,zmm3,zmm2
  a05be1:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm5
  a05be8:	19 
  a05be9:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a05bef:	62 92 6d 48 bc da    	vfnmadd231ps zmm3,zmm2,zmm26
  a05bf5:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a05bfb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a05c02:	ff 
  a05c03:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x200]
  a05c0a:	08 
  a05c0b:	62 f1 44 48 58 ee    	vaddps zmm5,zmm7,zmm6
  a05c11:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a05c18:	14 
  a05c19:	62 21 6c 48 5c d2    	vsubps zmm26,zmm2,zmm18
  a05c1f:	62 31 6c 48 58 ca    	vaddps zmm9,zmm2,zmm18
  a05c25:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a05c2c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x300]
  a05c33:	0c 
  a05c34:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a05c3b:	09 
  a05c3c:	62 71 6c 48 5c db    	vsubps zmm11,zmm2,zmm3
  a05c42:	62 61 6c 48 58 db    	vaddps zmm27,zmm2,zmm3
  a05c48:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm27
  a05c4f:	01 
  a05c50:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a05c57:	05 
  a05c58:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a05c5f:	04 
  a05c60:	62 e1 6c 48 58 d3    	vaddps zmm18,zmm2,zmm3
  a05c66:	62 61 6c 48 5c e3    	vsubps zmm28,zmm2,zmm3
  a05c6c:	62 b1 74 40 58 d6    	vaddps zmm2,zmm17,zmm22
  a05c72:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a05c79:	05 
  a05c7a:	62 f1 44 48 5c de    	vsubps zmm3,zmm7,zmm6
  a05c80:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a05c87:	12 
  a05c88:	62 11 3c 48 5c e8    	vsubps zmm13,zmm8,zmm24
  a05c8e:	62 91 3c 48 58 f0    	vaddps zmm6,zmm8,zmm24
  a05c94:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a05c9b:	fe 
  a05c9c:	62 d1 2c 48 5c d6    	vsubps zmm2,zmm10,zmm14
  a05ca2:	62 d1 2c 48 58 fe    	vaddps zmm7,zmm10,zmm14
  a05ca8:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a05caf:	02 
  a05cb0:	62 31 04 48 58 c0    	vaddps zmm8,zmm15,zmm16
  a05cb6:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a05cbc:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm15
  a05cc3:	07 
  a05cc4:	62 e2 7d 48 18 2d 1a 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff66fa1a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a05ccb:	fa 66 ff 
  a05cce:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a05cd4:	62 82 25 40 a8 e1    	vfmadd213ps zmm20,zmm27,zmm25
  a05cda:	62 62 7d 48 18 0d 60 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff66f960]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a05ce1:	f9 66 ff 
  a05ce4:	62 82 35 48 bc e1    	vfnmadd231ps zmm20,zmm9,zmm25
  a05cea:	62 31 74 40 5c f6    	vsubps zmm14,zmm17,zmm22
  a05cf0:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm14
  a05cf7:	13 
  a05cf8:	62 72 7d 48 18 0d 56 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff66fa56]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a05cff:	fa 66 ff 
  a05d02:	62 51 64 48 59 d1    	vmulps zmm10,zmm3,zmm9
  a05d08:	62 f2 7d 48 18 1d 8e 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff66f68e]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a05d0f:	f6 66 ff 
  a05d12:	62 72 1d 40 b8 d3    	vfmadd231ps zmm10,zmm28,zmm3
  a05d18:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a05d1e:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm10
  a05d25:	0a 
  a05d26:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a05d2c:	62 22 45 48 a8 c3    	vfmadd213ps zmm24,zmm7,zmm19
  a05d32:	62 02 4d 48 bc c1    	vfnmadd231ps zmm24,zmm6,zmm25
  a05d38:	62 d1 0c 48 59 f1    	vmulps zmm6,zmm14,zmm9
  a05d3e:	62 f2 05 48 b8 f3    	vfmadd231ps zmm6,zmm15,zmm3
  a05d44:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a05d4b:	04 
  a05d4c:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a05d52:	62 71 3c 40 5c fe    	vsubps zmm15,zmm24,zmm6
  a05d58:	62 d1 2c 48 5c f7    	vsubps zmm6,zmm10,zmm15
  a05d5e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm6
  a05d65:	0c 
  a05d66:	62 d1 2c 48 58 f7    	vaddps zmm6,zmm10,zmm15
  a05d6c:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm6
  a05d73:	16 
  a05d74:	62 91 44 40 5c f6    	vsubps zmm6,zmm23,zmm30
  a05d7a:	62 91 44 40 58 fe    	vaddps zmm7,zmm23,zmm30
  a05d80:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm7
  a05d87:	09 
  a05d88:	62 41 5c 48 5c e4    	vsubps zmm28,zmm4,zmm12
  a05d8e:	62 d1 5c 48 58 e4    	vaddps zmm4,zmm4,zmm12
  a05d94:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a05d9b:	08 
  a05d9c:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a05da2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a05da9:	14 
  a05daa:	62 61 7c 48 5c d9    	vsubps zmm27,zmm0,zmm1
  a05db0:	62 91 04 40 58 c5    	vaddps zmm0,zmm31,zmm29
  a05db6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a05dbd:	11 
  a05dbe:	62 11 04 40 5c e5    	vsubps zmm12,zmm31,zmm29
  a05dc4:	62 21 7c 48 28 ed    	vmovaps zmm29,zmm21
  a05dca:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a05dd0:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm18
  a05dd7:	18 
  a05dd8:	62 62 6d 40 a8 6c 24 	vfmadd213ps zmm29,zmm18,ZMMWORD PTR [rsp+0xc0]
  a05ddf:	03 
  a05de0:	62 02 55 48 bc e9    	vfnmadd231ps zmm29,zmm5,zmm25
  a05de6:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a05dec:	62 41 2c 40 59 f1    	vmulps zmm30,zmm26,zmm9
  a05df2:	62 62 25 48 b8 f3    	vfmadd231ps zmm30,zmm11,zmm3
  a05df8:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a05dfe:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a05e04:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm8
  a05e0b:	17 
  a05e0c:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x640]
  a05e13:	19 
  a05e14:	62 42 3d 48 a8 ff    	vfmadd213ps zmm31,zmm8,zmm15
  a05e1a:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x140]
  a05e21:	05 
  a05e22:	62 02 65 40 bc f9    	vfnmadd231ps zmm31,zmm19,zmm25
  a05e28:	62 c1 14 48 59 c1    	vmulps zmm16,zmm13,zmm9
  a05e2e:	62 e2 6d 48 b8 c3    	vfmadd231ps zmm16,zmm2,zmm3
  a05e34:	62 91 14 40 58 c6    	vaddps zmm0,zmm29,zmm30
  a05e3a:	62 a1 04 40 58 c8    	vaddps zmm17,zmm31,zmm16
  a05e40:	62 b1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm17
  a05e46:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a05e4d:	15 
  a05e4e:	62 b1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm17
  a05e54:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a05e5b:	0b 
  a05e5c:	62 d1 24 48 59 f9    	vmulps zmm7,zmm11,zmm9
  a05e62:	62 92 65 48 bc fa    	vfnmadd231ps zmm7,zmm3,zmm26
  a05e68:	62 c1 6c 48 59 c9    	vmulps zmm17,zmm2,zmm9
  a05e6e:	62 c2 65 48 bc cd    	vfnmadd231ps zmm17,zmm3,zmm13
  a05e74:	62 51 4c 48 59 f1    	vmulps zmm14,zmm6,zmm9
  a05e7a:	62 72 1d 40 b8 f3    	vfmadd231ps zmm14,zmm28,zmm3
  a05e80:	62 d1 1c 40 59 e9    	vmulps zmm5,zmm28,zmm9
  a05e86:	62 f2 65 48 bc ee    	vfnmadd231ps zmm5,zmm3,zmm6
  a05e8c:	62 51 4c 40 59 d9    	vmulps zmm11,zmm22,zmm9
  a05e92:	62 72 65 48 bc 5c 24 	vfnmadd231ps zmm11,zmm3,ZMMWORD PTR [rsp+0x480]
  a05e99:	12 
  a05e9a:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x1c0]
  a05ea1:	07 
  a05ea2:	62 72 65 48 bc 6c 24 	vfnmadd231ps zmm13,zmm3,ZMMWORD PTR [rsp+0x4c0]
  a05ea9:	13 
  a05eaa:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a05eb0:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a05eb7:	06 
  a05eb8:	62 f2 7d 48 9c 4c 24 	vfnmadd132ps zmm1,zmm0,ZMMWORD PTR [rsp+0x40]
  a05ebf:	01 
  a05ec0:	62 f2 55 40 b8 0c 24 	vfmadd231ps zmm1,zmm21,ZMMWORD PTR [rsp]
  a05ec7:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a05ecd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a05ed4:	02 
  a05ed5:	62 f2 6d 48 ac 44 24 	vfnmadd213ps zmm0,zmm2,ZMMWORD PTR [rsp-0x40]
  a05edc:	ff 
  a05edd:	62 f2 55 40 b8 44 24 	vfmadd231ps zmm0,zmm21,ZMMWORD PTR [rsp-0x80]
  a05ee4:	fe 
  a05ee5:	62 d1 74 48 5c f3    	vsubps zmm6,zmm1,zmm11
  a05eeb:	62 51 7c 48 5c c5    	vsubps zmm8,zmm0,zmm13
  a05ef1:	62 d1 4c 48 5c d0    	vsubps zmm2,zmm6,zmm8
  a05ef7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a05efe:	12 
  a05eff:	62 d1 4c 48 58 d0    	vaddps zmm2,zmm6,zmm8
  a05f05:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a05f0c:	13 
  a05f0d:	62 51 1c 48 59 d1    	vmulps zmm10,zmm12,zmm9
  a05f13:	62 72 25 40 b8 d3    	vfmadd231ps zmm10,zmm27,zmm3
  a05f19:	62 51 24 40 59 c9    	vmulps zmm9,zmm27,zmm9
  a05f1f:	62 52 65 48 bc cc    	vfnmadd231ps zmm9,zmm3,zmm12
  a05f25:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a05f2b:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a05f31:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0xc0]
  a05f38:	03 
  a05f39:	62 92 5d 48 ac f1    	vfnmadd213ps zmm6,zmm4,zmm25
  a05f3f:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a05f45:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a05f4b:	62 b2 25 40 b8 f5    	vfmadd231ps zmm6,zmm27,zmm21
  a05f51:	62 11 7c 48 28 e4    	vmovaps zmm12,zmm28
  a05f57:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a05f5d:	62 52 45 40 ac e7    	vfnmadd213ps zmm12,zmm23,zmm15
  a05f63:	62 32 65 40 b8 e2    	vfmadd231ps zmm12,zmm19,zmm18
  a05f69:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a05f6f:	62 21 1c 48 58 d1    	vaddps zmm26,zmm12,zmm17
  a05f75:	62 91 3c 48 58 d2    	vaddps zmm2,zmm8,zmm26
  a05f7b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a05f82:	10 
  a05f83:	62 91 3c 48 5c d2    	vsubps zmm2,zmm8,zmm26
  a05f89:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a05f90:	07 
  a05f91:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a05f97:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a05f9e:	0d 
  a05f9f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a05fa6:	14 
  a05fa7:	62 72 6d 48 ac c3    	vfnmadd213ps zmm8,zmm2,zmm3
  a05fad:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x440]
  a05fb4:	11 
  a05fb5:	62 32 05 48 b8 c2    	vfmadd231ps zmm8,zmm15,zmm18
  a05fbb:	62 41 54 48 58 d0    	vaddps zmm26,zmm5,zmm8
  a05fc1:	62 e1 3c 48 5c fd    	vsubps zmm23,zmm8,zmm5
  a05fc7:	62 f1 4c 48 5c e7    	vsubps zmm4,zmm6,zmm7
  a05fcd:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a05fd4:	0f 
  a05fd5:	62 b1 1c 48 5c e1    	vsubps zmm4,zmm12,zmm17
  a05fdb:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm4
  a05fe2:	1a 
  a05fe3:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a05fe9:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x380]
  a05ff0:	0e 
  a05ff1:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x200]
  a05ff8:	08 
  a05ff9:	62 f2 4d 40 ac ee    	vfnmadd213ps zmm5,zmm22,zmm6
  a05fff:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x240]
  a06006:	09 
  a06007:	62 b2 5d 48 b8 ea    	vfmadd231ps zmm5,zmm4,zmm18
  a0600d:	62 c1 54 48 5c d9    	vsubps zmm19,zmm5,zmm9
  a06013:	62 51 54 48 58 e1    	vaddps zmm12,zmm5,zmm9
  a06019:	62 51 74 48 58 c3    	vaddps zmm8,zmm1,zmm11
  a0601f:	62 c1 7c 48 58 cd    	vaddps zmm17,zmm0,zmm13
  a06025:	62 91 14 40 5c c6    	vsubps zmm0,zmm29,zmm30
  a0602b:	62 b1 04 40 5c f8    	vsubps zmm7,zmm31,zmm16
  a06031:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a06037:	62 f2 6d 48 a8 cb    	vfmadd213ps zmm1,zmm2,zmm3
  a0603d:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a06043:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a06049:	62 92 05 48 bc cc    	vfnmadd231ps zmm1,zmm15,zmm28
  a0604f:	62 41 7c 48 28 ef    	vmovaps zmm29,zmm15
  a06055:	62 71 0c 48 58 c9    	vaddps zmm9,zmm14,zmm1
  a0605b:	62 d1 74 48 5c ce    	vsubps zmm1,zmm1,zmm14
  a06061:	62 f1 5c 40 58 5c 24 	vaddps zmm3,zmm20,ZMMWORD PTR [rsp+0x280]
  a06068:	0a 
  a06069:	62 71 3c 40 58 6c 24 	vaddps zmm13,zmm24,ZMMWORD PTR [rsp+0x100]
  a06070:	04 
  a06071:	62 d1 64 48 5c d5    	vsubps zmm2,zmm3,zmm13
  a06077:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a0607e:	0a 
  a0607f:	62 41 64 48 58 c5    	vaddps zmm24,zmm3,zmm13
  a06085:	62 e2 4d 40 a8 d6    	vfmadd213ps zmm18,zmm22,zmm6
  a0608b:	62 82 5d 48 bc d4    	vfnmadd231ps zmm18,zmm4,zmm28
  a06091:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a06097:	62 51 6c 40 5c ea    	vsubps zmm13,zmm18,zmm10
  a0609d:	62 41 6c 40 58 fa    	vaddps zmm31,zmm18,zmm10
  a060a3:	62 f1 7c 48 58 df    	vaddps zmm3,zmm0,zmm7
  a060a9:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a060af:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a060b6:	04 
  a060b7:	62 f1 34 40 58 44 24 	vaddps zmm0,zmm25,ZMMWORD PTR [rsp+0x600]
  a060be:	18 
  a060bf:	62 91 7c 48 58 c3    	vaddps zmm0,zmm0,zmm27
  a060c5:	62 f1 54 40 58 54 24 	vaddps zmm2,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a060cc:	17 
  a060cd:	62 f1 6c 48 58 54 24 	vaddps zmm2,zmm2,ZMMWORD PTR [rsp+0x140]
  a060d4:	05 
  a060d5:	62 f1 7c 40 58 fd    	vaddps zmm7,zmm16,zmm5
  a060db:	62 f1 14 40 58 e7    	vaddps zmm4,zmm29,zmm7
  a060e1:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a060e8:	03 
  a060e9:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x180]
  a060f0:	06 
  a060f1:	62 f1 5c 48 58 7c 24 	vaddps zmm7,zmm4,ZMMWORD PTR [rsp+0x40]
  a060f8:	01 
  a060f9:	62 f1 44 48 58 3c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp]
  a06100:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a06107:	02 
  a06108:	62 71 54 48 58 54 24 	vaddps zmm10,zmm5,ZMMWORD PTR [rsp-0x40]
  a0610f:	ff 
  a06110:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp-0x80]
  a06117:	fe 
  a06118:	62 41 44 48 5c ea    	vsubps zmm29,zmm7,zmm10
  a0611e:	62 c1 44 48 58 e2    	vaddps zmm20,zmm7,zmm10
  a06124:	62 b1 4c 48 58 fe    	vaddps zmm7,zmm6,zmm22
  a0612a:	62 62 7d 48 18 35 2c 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff66f32c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a06131:	f3 66 ff 
  a06134:	62 11 7c 48 28 f6    	vmovaps zmm14,zmm30
  a0613a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x540]
  a06141:	15 
  a06142:	62 52 5d 48 ac f1    	vfnmadd213ps zmm14,zmm4,zmm9
  a06148:	62 c1 44 48 58 c7    	vaddps zmm16,zmm7,zmm15
  a0614e:	62 e1 7c 48 58 ea    	vaddps zmm21,zmm0,zmm2
  a06154:	62 61 7c 48 5c da    	vsubps zmm27,zmm0,zmm2
  a0615a:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a06160:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x580]
  a06167:	16 
  a06168:	62 d2 45 48 ac ed    	vfnmadd213ps zmm5,zmm7,zmm13
  a0616e:	62 f1 34 48 58 c4    	vaddps zmm0,zmm9,zmm4
  a06174:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0617b:	ff 
  a0617c:	62 91 7c 48 28 d6    	vmovaps zmm2,zmm30
  a06182:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x400]
  a06189:	10 
  a0618a:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a06190:	62 92 35 40 ac d2    	vfnmadd213ps zmm2,zmm25,zmm26
  a06196:	62 f2 7d 48 18 35 34 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66f134]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0619d:	f1 66 ff 
  a061a0:	62 71 4c 48 59 4c 24 	vmulps zmm9,zmm6,ZMMWORD PTR [rsp+0x480]
  a061a7:	12 
  a061a8:	62 71 14 48 58 ef    	vaddps zmm13,zmm13,zmm7
  a061ae:	62 d1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm9
  a061b4:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a061bb:	62 d1 6c 48 58 c1    	vaddps zmm0,zmm2,zmm9
  a061c1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a061c8:	02 
  a061c9:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a061cf:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x4c0]
  a061d6:	13 
  a061d7:	62 32 1d 40 ac cb    	vfnmadd213ps zmm9,zmm28,zmm19
  a061dd:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a061e3:	62 71 4c 48 59 54 24 	vmulps zmm10,zmm6,ZMMWORD PTR [rsp+0x1c0]
  a061ea:	07 
  a061eb:	62 c1 34 48 58 f2    	vaddps zmm22,zmm9,zmm10
  a061f1:	62 51 34 48 5c d2    	vsubps zmm10,zmm9,zmm10
  a061f7:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a061fe:	0f 
  a061ff:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x680]
  a06206:	1a 
  a06207:	62 41 6c 48 58 d1    	vaddps zmm26,zmm2,zmm9
  a0620d:	62 91 44 40 58 c2    	vaddps zmm0,zmm23,zmm26
  a06213:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a0621a:	fe 
  a0621b:	62 22 0d 40 ac d7    	vfnmadd213ps zmm26,zmm30,zmm23
  a06221:	62 b1 3c 48 58 e1    	vaddps zmm4,zmm8,zmm17
  a06227:	62 a1 3c 48 5c c9    	vsubps zmm17,zmm8,zmm17
  a0622d:	62 e1 1c 48 58 dc    	vaddps zmm19,zmm12,zmm4
  a06233:	62 d2 0d 40 ac e4    	vfnmadd213ps zmm4,zmm30,zmm12
  a06239:	62 51 6c 48 5c e1    	vsubps zmm12,zmm2,zmm9
  a0623f:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a06245:	62 72 65 48 ac c1    	vfnmadd213ps zmm8,zmm3,zmm1
  a0624b:	62 e1 74 48 58 fb    	vaddps zmm23,zmm1,zmm3
  a06251:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a06257:	62 92 3d 40 ac cf    	vfnmadd213ps zmm1,zmm24,zmm31
  a0625d:	62 11 04 40 58 f8    	vaddps zmm15,zmm31,zmm24
  a06263:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a06269:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0xc0]
  a06270:	03 
  a06271:	62 f2 55 40 ac df    	vfnmadd213ps zmm3,zmm21,zmm7
  a06277:	62 71 14 40 59 ce    	vmulps zmm9,zmm29,zmm6
  a0627d:	62 d1 64 48 5c c1    	vsubps zmm0,zmm3,zmm9
  a06283:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0628a:	01 
  a0628b:	62 41 64 48 58 e9    	vaddps zmm29,zmm3,zmm9
  a06291:	62 22 5d 40 ac f0    	vfnmadd213ps zmm30,zmm20,zmm16
  a06297:	62 61 24 40 59 c6    	vmulps zmm24,zmm27,zmm6
  a0629d:	62 91 0c 40 58 d8    	vaddps zmm3,zmm30,zmm24
  a062a3:	62 01 0c 40 5c f8    	vsubps zmm31,zmm30,zmm24
  a062a9:	62 71 4c 48 59 4c 24 	vmulps zmm9,zmm6,ZMMWORD PTR [rsp+0x300]
  a062b0:	0c 
  a062b1:	62 41 0c 48 58 c1    	vaddps zmm24,zmm14,zmm9
  a062b7:	62 41 0c 48 5c f1    	vsubps zmm30,zmm14,zmm9
  a062bd:	62 f1 4c 48 59 44 24 	vmulps zmm0,zmm6,ZMMWORD PTR [rsp+0x2c0]
  a062c4:	0b 
  a062c5:	62 71 54 48 5c c8    	vsubps zmm9,zmm5,zmm0
  a062cb:	62 f1 54 48 58 d0    	vaddps zmm2,zmm5,zmm0
  a062d1:	62 01 24 48 58 d9    	vaddps zmm27,zmm11,zmm25
  a062d7:	62 01 6c 40 58 e4    	vaddps zmm28,zmm18,zmm28
  a062dd:	62 f1 74 40 59 ee    	vmulps zmm5,zmm17,zmm6
  a062e3:	62 e1 2c 40 5c cd    	vsubps zmm17,zmm26,zmm5
  a062e9:	62 61 2c 40 58 d5    	vaddps zmm26,zmm26,zmm5
  a062ef:	62 f1 1c 48 59 ee    	vmulps zmm5,zmm12,zmm6
  a062f5:	62 71 5c 48 58 f5    	vaddps zmm14,zmm4,zmm5
  a062fb:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a06301:	62 71 4c 48 59 64 24 	vmulps zmm12,zmm6,ZMMWORD PTR [rsp+0x280]
  a06308:	0a 
  a06309:	62 d1 3c 48 58 ec    	vaddps zmm5,zmm8,zmm12
  a0630f:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a06315:	62 f1 4c 48 59 44 24 	vmulps zmm0,zmm6,ZMMWORD PTR [rsp+0x100]
  a0631c:	04 
  a0631d:	62 71 74 48 5c e0    	vsubps zmm12,zmm1,zmm0
  a06323:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a06329:	62 b1 44 48 58 cd    	vaddps zmm1,zmm7,zmm21
  a0632f:	62 a1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm20
  a06335:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a0633b:	62 f1 7c 48 28 35 bb 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6881bb]        # 8e500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b9b0>
  a06342:	81 68 ff 
  a06345:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a0634b:	62 e1 7c 48 28 25 eb 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6881eb]        # 8e540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b9f0>
  a06352:	81 68 ff 
  a06355:	62 e2 5d 40 7f c1    	vpermt2ps zmm16,zmm20,zmm1
  a0635b:	62 e1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm16
  a06362:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm18
  a06369:	01 
  a0636a:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a06370:	62 d2 4d 48 7f c8    	vpermt2ps zmm1,zmm6,zmm8
  a06376:	62 d2 5d 40 7f c0    	vpermt2ps zmm0,zmm20,zmm8
  a0637c:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm0
  a06383:	02 
  a06384:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm1
  a0638b:	03 
  a0638c:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a06392:	62 92 4d 48 7f c2    	vpermt2ps zmm0,zmm6,zmm26
  a06398:	62 92 5d 40 7f e2    	vpermt2ps zmm4,zmm20,zmm26
  a0639e:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm4
  a063a5:	04 
  a063a6:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a063ad:	05 
  a063ae:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a063b4:	62 92 4d 48 7f c3    	vpermt2ps zmm0,zmm6,zmm27
  a063ba:	62 02 5d 40 7f e3    	vpermt2ps zmm28,zmm20,zmm27
  a063c0:	62 61 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm28
  a063c7:	06 
  a063c8:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a063cf:	07 
  a063d0:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a063d6:	62 92 4d 48 7f c6    	vpermt2ps zmm0,zmm6,zmm30
  a063dc:	62 92 5d 40 7f d6    	vpermt2ps zmm2,zmm20,zmm30
  a063e2:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm2
  a063e9:	08 
  a063ea:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a063f1:	09 
  a063f2:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a063f8:	62 92 4d 48 7f c5    	vpermt2ps zmm0,zmm6,zmm29
  a063fe:	62 02 5d 40 7f fd    	vpermt2ps zmm31,zmm20,zmm29
  a06404:	62 61 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm31
  a0640b:	0a 
  a0640c:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a06413:	0b 
  a06414:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a0641a:	62 b2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm23
  a06420:	62 32 5d 40 7f ff    	vpermt2ps zmm15,zmm20,zmm23
  a06426:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm15
  a0642d:	0c 
  a0642e:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm0
  a06435:	0d 
  a06436:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a0643c:	62 b2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm17
  a06442:	62 32 5d 40 7f f1    	vpermt2ps zmm14,zmm20,zmm17
  a06448:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm14
  a0644f:	0e 
  a06450:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a06457:	0f 
  a06458:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a0645e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a06465:	02 
  a06466:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a0646c:	62 72 5d 40 7f d1    	vpermt2ps zmm10,zmm20,zmm1
  a06472:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm10
  a06479:	10 
  a0647a:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm0
  a06481:	11 
  a06482:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a06488:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a0648f:	ff 
  a06490:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a06496:	62 72 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm1
  a0649c:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm13
  a064a3:	12 
  a064a4:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm0
  a064ab:	13 
  a064ac:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a064b2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a064b9:	01 
  a064ba:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a064c0:	62 f2 5d 40 7f d9    	vpermt2ps zmm3,zmm20,zmm1
  a064c6:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x500],zmm3
  a064cd:	14 
  a064ce:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm0
  a064d5:	15 
  a064d6:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a064dc:	62 f2 4d 48 7f c5    	vpermt2ps zmm0,zmm6,zmm5
  a064e2:	62 72 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm5
  a064e8:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x580],zmm12
  a064ef:	16 
  a064f0:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5c0],zmm0
  a064f7:	17 
  a064f8:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a064fe:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a06505:	fe 
  a06506:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a0650c:	62 e2 5d 40 7f d9    	vpermt2ps zmm19,zmm20,zmm1
  a06512:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x600],zmm19
  a06519:	18 
  a0651a:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x640],zmm0
  a06521:	19 
  a06522:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a06528:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a0652f:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a06535:	62 e2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm1
  a0653b:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x680],zmm22
  a06542:	1a 
  a06543:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x6c0],zmm0
  a0654a:	1b 
  a0654b:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a06551:	62 92 4d 48 7f c0    	vpermt2ps zmm0,zmm6,zmm24
  a06557:	62 12 5d 40 7f c8    	vpermt2ps zmm9,zmm20,zmm24
  a0655d:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x700],zmm9
  a06564:	1c 
  a06565:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x740],zmm0
  a0656c:	1d 
  a0656d:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a06574:	48 39 d0             	cmp    rax,rdx
  a06577:	0f 85 e3 df ff ff    	jne    a04560 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a0657d:	48 81 c4 08 0b 00 00 	add    rsp,0xb08
  a06584:	c5 f8 77             	vzeroupper
  a06587:	c3                   	ret
