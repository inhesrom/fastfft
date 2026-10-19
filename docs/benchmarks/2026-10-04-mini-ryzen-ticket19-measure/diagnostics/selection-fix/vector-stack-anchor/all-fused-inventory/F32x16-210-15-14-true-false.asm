
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0c4c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0c4c0:	48 81 ec c8 06 00 00 	sub    rsp,0x6c8
  a0c4c7:	62 61 7c 48 10 0f    	vmovups zmm25,ZMMWORD PTR [rdi]
  a0c4cd:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a0c4d2:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a0c4d7:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a0c4de:	c4 e2 79 18 57 68    	vbroadcastss xmm2,DWORD PTR [rdi+0x68]
  a0c4e4:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0c4ea:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a0c4f1:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c4f8:	b0 3f                	mov    al,0x3f
  a0c4fa:	c5 fb 92 c8          	kmovd  k1,eax
  a0c4fe:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c504:	62 e1 7c 48 28 1d b2 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6827b2]        # 8ecc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c170>
  a0c50b:	27 68 ff 
  a0c50e:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a0c514:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a0c51a:	62 e1 7c 48 28 2d dc 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6827dc]        # 8ed00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1b0>
  a0c521:	27 68 ff 
  a0c524:	62 62 55 40 7f c8    	vpermt2ps zmm25,zmm21,zmm0
  a0c52a:	62 f1 7c 48 10 a7 70 	vmovups zmm4,ZMMWORD PTR [rdi+0x70]
  a0c531:	00 00 00 
  a0c534:	c5 f8 10 87 d0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd0]
  a0c53b:	00 
  a0c53c:	c4 e3 79 21 87 d4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xd4],0x10
  a0c543:	00 00 10 
  a0c546:	c5 fc 10 8f b0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb0]
  a0c54d:	00 
  a0c54e:	c4 e2 79 18 97 d8 00 	vbroadcastss xmm2,DWORD PTR [rdi+0xd8]
  a0c555:	00 00 
  a0c557:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0c55d:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x30
  a0c564:	00 00 30 
  a0c567:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c56e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c574:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0c57a:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0c580:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0c587:	ff 
  a0c588:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0c58e:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a0c595:	03 
  a0c596:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a0c59d:	00 
  a0c59e:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a0c5a5:	00 00 10 
  a0c5a8:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a0c5af:	00 00 
  a0c5b1:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0xe0]
  a0c5b8:	00 00 00 
  a0c5bb:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0c5c1:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a0c5c8:	00 00 30 
  a0c5cb:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a0c5d2:	00 
  a0c5d3:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c5da:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c5e0:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a0c5e6:	62 62 65 40 7f f8    	vpermt2ps zmm31,zmm19,zmm0
  a0c5ec:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a0c5f2:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a0c5f8:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a0c5ff:	12 
  a0c600:	62 f1 7c 48 10 a7 50 	vmovups zmm4,ZMMWORD PTR [rdi+0x150]
  a0c607:	01 00 00 
  a0c60a:	c5 f8 10 87 b0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1b0]
  a0c611:	00 
  a0c612:	c4 e3 79 21 87 b4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1b4],0x10
  a0c619:	00 00 10 
  a0c61c:	c4 e2 79 18 8f b8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1b8]
  a0c623:	00 00 
  a0c625:	c5 fc 10 97 90 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x190]
  a0c62c:	00 
  a0c62d:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0c633:	c4 e3 79 21 87 bc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1bc],0x30
  a0c63a:	00 00 30 
  a0c63d:	62 f3 6d 48 18 c0 02 	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a0c644:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c64a:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0c650:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0c656:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a0c65c:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0c662:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a0c668:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a0c66f:	10 
  a0c670:	62 f1 7c 48 10 67 07 	vmovups zmm4,ZMMWORD PTR [rdi+0x1c0]
  a0c677:	c5 f8 10 87 20 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x220]
  a0c67e:	00 
  a0c67f:	c5 fc 10 8f 00 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  a0c686:	00 
  a0c687:	c4 e3 79 21 87 24 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x224],0x10
  a0c68e:	00 00 10 
  a0c691:	c4 e2 79 18 97 28 02 	vbroadcastss xmm2,DWORD PTR [rdi+0x228]
  a0c698:	00 00 
  a0c69a:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a0c6a0:	c4 e3 79 21 87 2c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x22c],0x30
  a0c6a7:	00 00 30 
  a0c6aa:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c6b1:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c6b7:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0c6bd:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0c6c3:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a0c6ca:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0c6d0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a0c6d7:	01 
  a0c6d8:	62 71 7c 48 10 87 30 	vmovups zmm8,ZMMWORD PTR [rdi+0x230]
  a0c6df:	02 00 00 
  a0c6e2:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a0c6e9:	00 
  a0c6ea:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a0c6f1:	00 00 10 
  a0c6f4:	c5 fc 10 8f 70 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x270]
  a0c6fb:	00 
  a0c6fc:	c4 e2 79 18 a7 98 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x298]
  a0c703:	00 00 
  a0c705:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0c70b:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a0c712:	00 00 30 
  a0c715:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c71c:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c722:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a0c728:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a0c72e:	62 72 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm0
  a0c734:	c5 f8 10 87 00 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x300]
  a0c73b:	00 
  a0c73c:	c4 e3 79 21 87 04 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x304],0x10
  a0c743:	00 00 10 
  a0c746:	c4 e2 79 18 8f 08 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x308]
  a0c74d:	00 00 
  a0c74f:	62 f1 7c 48 10 a7 a0 	vmovups zmm4,ZMMWORD PTR [rdi+0x2a0]
  a0c756:	02 00 00 
  a0c759:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0c75f:	c4 e3 79 21 87 0c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x30c],0x30
  a0c766:	00 00 30 
  a0c769:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a0c770:	00 
  a0c771:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c778:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c77e:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0c784:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0c78a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a0c791:	fe 
  a0c792:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a0c798:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a0c79f:	0c 
  a0c7a0:	62 71 7c 48 10 b7 10 	vmovups zmm14,ZMMWORD PTR [rdi+0x310]
  a0c7a7:	03 00 00 
  a0c7aa:	c5 f8 10 87 70 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x370]
  a0c7b1:	00 
  a0c7b2:	c4 e3 79 21 87 74 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x374],0x10
  a0c7b9:	00 00 10 
  a0c7bc:	c4 e2 79 18 8f 78 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x378]
  a0c7c3:	00 00 
  a0c7c5:	c5 fc 10 a7 50 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x350]
  a0c7cc:	00 
  a0c7cd:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0c7d3:	c4 e3 79 21 87 7c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x37c],0x30
  a0c7da:	00 00 30 
  a0c7dd:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0c7e4:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c7ea:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a0c7f0:	62 62 65 40 7f e8    	vpermt2ps zmm29,zmm19,zmm0
  a0c7f6:	62 72 55 40 7f f0    	vpermt2ps zmm14,zmm21,zmm0
  a0c7fc:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm14
  a0c803:	06 
  a0c804:	62 71 7c 48 10 7f 0e 	vmovups zmm15,ZMMWORD PTR [rdi+0x380]
  a0c80b:	c5 f8 10 87 e0 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3e0]
  a0c812:	00 
  a0c813:	c5 fc 10 8f c0 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x3c0]
  a0c81a:	00 
  a0c81b:	c4 e3 79 21 87 e4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3e4],0x10
  a0c822:	00 00 10 
  a0c825:	c4 e2 79 18 a7 e8 03 	vbroadcastss xmm4,DWORD PTR [rdi+0x3e8]
  a0c82c:	00 00 
  a0c82e:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0c834:	c4 e3 79 21 87 ec 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ec],0x30
  a0c83b:	00 00 30 
  a0c83e:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c845:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c84b:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0c851:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0c857:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a0c85d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a0c864:	0e 
  a0c865:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0c86b:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a0c871:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm15
  a0c878:	0b 
  a0c879:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0x3f0]
  a0c880:	03 00 00 
  a0c883:	c5 f8 10 87 50 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x450]
  a0c88a:	00 
  a0c88b:	c4 e3 79 21 87 54 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x454],0x10
  a0c892:	00 00 10 
  a0c895:	c5 fc 10 8f 30 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x430]
  a0c89c:	00 
  a0c89d:	c4 e2 79 18 a7 58 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x458]
  a0c8a4:	00 00 
  a0c8a6:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0c8ac:	c4 e3 79 21 87 5c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x45c],0x30
  a0c8b3:	00 00 30 
  a0c8b6:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c8bd:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c8c3:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0c8c9:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0c8cf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0c8d6:	02 
  a0c8d7:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0c8dd:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm15
  a0c8e4:	0a 
  a0c8e5:	c5 f8 10 87 c0 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x4c0]
  a0c8ec:	00 
  a0c8ed:	c4 e3 79 21 87 c4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4c4],0x10
  a0c8f4:	00 00 10 
  a0c8f7:	c4 e2 79 18 8f c8 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4c8]
  a0c8fe:	00 00 
  a0c900:	62 61 7c 48 10 97 60 	vmovups zmm26,ZMMWORD PTR [rdi+0x460]
  a0c907:	04 00 00 
  a0c90a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0c910:	c4 e3 79 21 87 cc 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4cc],0x30
  a0c917:	00 00 30 
  a0c91a:	c5 fc 10 8f a0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4a0]
  a0c921:	00 
  a0c922:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c929:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c92f:	62 81 7c 48 28 c2    	vmovaps zmm16,zmm26
  a0c935:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a0c93b:	62 62 55 40 7f d0    	vpermt2ps zmm26,zmm21,zmm0
  a0c941:	62 71 7c 48 10 8f d0 	vmovups zmm9,ZMMWORD PTR [rdi+0x4d0]
  a0c948:	04 00 00 
  a0c94b:	c5 f8 10 87 30 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x530]
  a0c952:	00 
  a0c953:	c4 e3 79 21 87 34 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x534],0x10
  a0c95a:	00 00 10 
  a0c95d:	c4 e2 79 18 8f 38 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x538]
  a0c964:	00 00 
  a0c966:	c5 fc 10 a7 10 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x510]
  a0c96d:	00 
  a0c96e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0c974:	c4 e3 79 21 87 3c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x53c],0x30
  a0c97b:	00 00 30 
  a0c97e:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0c985:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c98b:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a0c991:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a0c997:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a0c99d:	62 71 7c 48 10 7f 15 	vmovups zmm15,ZMMWORD PTR [rdi+0x540]
  a0c9a4:	c5 f8 10 87 a0 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x5a0]
  a0c9ab:	00 
  a0c9ac:	c5 fc 10 8f 80 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x580]
  a0c9b3:	00 
  a0c9b4:	c4 e3 79 21 87 a4 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5a4],0x10
  a0c9bb:	00 00 10 
  a0c9be:	c4 e2 79 18 a7 a8 05 	vbroadcastss xmm4,DWORD PTR [rdi+0x5a8]
  a0c9c5:	00 00 
  a0c9c7:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0c9cd:	c4 e3 79 21 87 ac 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5ac],0x30
  a0c9d4:	00 00 30 
  a0c9d7:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c9de:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0c9e4:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a0c9ea:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a0c9f0:	62 72 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm0
  a0c9f6:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm15
  a0c9fd:	11 
  a0c9fe:	62 e1 7c 48 10 bf b0 	vmovups zmm23,ZMMWORD PTR [rdi+0x5b0]
  a0ca05:	05 00 00 
  a0ca08:	c5 f8 10 87 10 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x610]
  a0ca0f:	00 
  a0ca10:	c4 e3 79 21 87 14 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x614],0x10
  a0ca17:	00 00 10 
  a0ca1a:	c5 fc 10 8f f0 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x5f0]
  a0ca21:	00 
  a0ca22:	c4 e2 79 18 a7 18 06 	vbroadcastss xmm4,DWORD PTR [rdi+0x618]
  a0ca29:	00 00 
  a0ca2b:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a0ca31:	c4 e3 79 21 87 1c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x61c],0x30
  a0ca38:	00 00 30 
  a0ca3b:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0ca42:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0ca48:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a0ca4e:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a0ca54:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0ca5a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm1
  a0ca61:	14 
  a0ca62:	62 e2 55 40 7f f8    	vpermt2ps zmm23,zmm21,zmm0
  a0ca68:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a0ca6e:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm23
  a0ca75:	04 
  a0ca76:	c5 f8 10 87 80 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x680]
  a0ca7d:	00 
  a0ca7e:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x10
  a0ca85:	00 00 10 
  a0ca88:	c4 e2 79 18 8f 88 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x688]
  a0ca8f:	00 00 
  a0ca91:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a0ca97:	c5 fc 10 8f 60 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x660]
  a0ca9e:	00 
  a0ca9f:	c4 e3 79 21 87 8c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x68c],0x30
  a0caa6:	00 00 30 
  a0caa9:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0cab0:	62 f1 7c 48 10 97 20 	vmovups zmm2,ZMMWORD PTR [rdi+0x620]
  a0cab7:	06 00 00 
  a0caba:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a0cac0:	62 e2 6d 48 77 d8    	vpermi2ps zmm19,zmm2,zmm0
  a0cac6:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a0cacc:	62 f1 74 40 58 cf    	vaddps zmm1,zmm17,zmm7
  a0cad2:	62 62 7d 48 18 25 0c 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff668c0c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0cad9:	8c 66 ff 
  a0cadc:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0cae2:	62 d2 75 48 a8 c0    	vfmadd213ps zmm0,zmm1,zmm8
  a0cae8:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a0caee:	62 e2 7d 48 18 3d 4c 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff668b4c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0caf5:	8b 66 ff 
  a0caf8:	62 f1 3c 48 58 c1    	vaddps zmm0,zmm8,zmm1
  a0cafe:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a0cb05:	09 
  a0cb06:	62 72 45 40 bc c1    	vfnmadd231ps zmm8,zmm23,zmm1
  a0cb0c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm8
  a0cb13:	07 
  a0cb14:	62 d1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm14
  a0cb1a:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0cb20:	62 92 75 48 a8 c2    	vfmadd213ps zmm0,zmm1,zmm26
  a0cb26:	62 f1 2c 40 58 e1    	vaddps zmm4,zmm26,zmm1
  a0cb2c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a0cb33:	05 
  a0cb34:	62 62 45 40 bc d1    	vfnmadd231ps zmm26,zmm23,zmm1
  a0cb3a:	62 d1 2c 48 58 cf    	vaddps zmm1,zmm10,zmm15
  a0cb40:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0cb46:	62 92 75 48 a8 e1    	vfmadd213ps zmm4,zmm1,zmm25
  a0cb4c:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a0cb52:	62 f1 34 40 58 e1    	vaddps zmm4,zmm25,zmm1
  a0cb58:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a0cb5f:	0f 
  a0cb60:	62 62 45 40 bc c9    	vfnmadd231ps zmm25,zmm23,zmm1
  a0cb66:	62 91 24 48 58 cf    	vaddps zmm1,zmm11,zmm31
  a0cb6c:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a0cb72:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a0cb78:	62 42 75 48 a8 f5    	vfmadd213ps zmm30,zmm1,zmm13
  a0cb7e:	62 f1 14 48 58 e1    	vaddps zmm4,zmm13,zmm1
  a0cb84:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a0cb8b:	0d 
  a0cb8c:	62 e2 45 40 bc f1    	vfnmadd231ps zmm22,zmm23,zmm1
  a0cb92:	62 91 4c 48 58 cd    	vaddps zmm1,zmm6,zmm29
  a0cb98:	62 11 7c 48 28 dc    	vmovaps zmm11,zmm28
  a0cb9e:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a0cba4:	62 32 75 48 a8 d8    	vfmadd213ps zmm11,zmm1,zmm16
  a0cbaa:	62 f1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm1
  a0cbb0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm4
  a0cbb7:	1a 
  a0cbb8:	62 e2 45 40 bc e9    	vfnmadd231ps zmm21,zmm23,zmm1
  a0cbbe:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a0cbc4:	62 91 24 40 58 c8    	vaddps zmm1,zmm27,zmm24
  a0cbca:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0cbd0:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a0cbd6:	62 f2 75 48 a8 f3    	vfmadd213ps zmm6,zmm1,zmm3
  a0cbdc:	62 61 64 48 58 d9    	vaddps zmm27,zmm3,zmm1
  a0cbe2:	62 32 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm23
  a0cbe8:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a0cbee:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a0cbf4:	62 f1 34 48 58 ca    	vaddps zmm1,zmm9,zmm2
  a0cbfa:	62 a2 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm23
  a0cc00:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm17
  a0cc07:	16 
  a0cc08:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0xc0]
  a0cc0f:	03 
  a0cc10:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x40]
  a0cc17:	01 
  a0cc18:	62 d1 74 40 58 e5    	vaddps zmm4,zmm17,zmm13
  a0cc1e:	62 b2 5d 48 bc c7    	vfnmadd231ps zmm0,zmm4,zmm23
  a0cc24:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a0cc2b:	15 
  a0cc2c:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x300]
  a0cc33:	0c 
  a0cc34:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x280]
  a0cc3b:	0a 
  a0cc3c:	62 b1 5c 40 58 d2    	vaddps zmm2,zmm20,zmm18
  a0cc42:	62 32 6d 48 bc c7    	vfnmadd231ps zmm8,zmm2,zmm23
  a0cc48:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm8
  a0cc4f:	08 
  a0cc50:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0cc56:	62 b1 54 48 58 db    	vaddps zmm3,zmm5,zmm19
  a0cc5c:	62 22 65 48 bc f7    	vfnmadd231ps zmm30,zmm3,zmm23
  a0cc62:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a0cc69:	ff 
  a0cc6a:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a0cc71:	62 d1 34 48 58 e8    	vaddps zmm5,zmm9,zmm8
  a0cc77:	62 32 55 48 bc df    	vfnmadd231ps zmm11,zmm5,zmm23
  a0cc7d:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm11
  a0cc84:	13 
  a0cc85:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a0cc8c:	fe 
  a0cc8d:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a0cc94:	02 
  a0cc95:	62 f1 24 48 58 c7    	vaddps zmm0,zmm11,zmm7
  a0cc9b:	62 b2 7d 48 bc f7    	vfnmadd231ps zmm6,zmm0,zmm23
  a0cca1:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm6
  a0cca8:	19 
  a0cca9:	62 f1 74 48 58 74 24 	vaddps zmm6,zmm1,ZMMWORD PTR [rsp+0x240]
  a0ccb0:	09 
  a0ccb1:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm6
  a0ccb8:	18 
  a0ccb9:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x1c0]
  a0ccc0:	07 
  a0ccc1:	62 e2 1d 40 b8 f9    	vfmadd231ps zmm23,zmm28,zmm1
  a0ccc7:	62 f1 5c 48 58 4c 24 	vaddps zmm1,zmm4,ZMMWORD PTR [rsp+0x140]
  a0ccce:	05 
  a0cccf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a0ccd6:	17 
  a0ccd7:	62 62 1d 40 b8 d4    	vfmadd231ps zmm26,zmm28,zmm4
  a0ccdd:	62 f1 6c 48 58 4c 24 	vaddps zmm1,zmm2,ZMMWORD PTR [rsp+0x3c0]
  a0cce4:	0f 
  a0cce5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a0ccec:	0f 
  a0cced:	62 62 1d 40 b8 ca    	vfmadd231ps zmm25,zmm28,zmm2
  a0ccf3:	62 f1 64 48 58 4c 24 	vaddps zmm1,zmm3,ZMMWORD PTR [rsp+0x340]
  a0ccfa:	0d 
  a0ccfb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a0cd02:	09 
  a0cd03:	62 e2 1d 40 b8 f3    	vfmadd231ps zmm22,zmm28,zmm3
  a0cd09:	62 f1 24 40 58 c8    	vaddps zmm1,zmm27,zmm0
  a0cd0f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a0cd16:	07 
  a0cd17:	62 12 7d 48 b8 e4    	vfmadd231ps zmm12,zmm0,zmm28
  a0cd1d:	62 e2 1d 40 b8 ed    	vfmadd231ps zmm21,zmm28,zmm5
  a0cd23:	62 f1 54 48 58 44 24 	vaddps zmm0,zmm5,ZMMWORD PTR [rsp+0x680]
  a0cd2a:	1a 
  a0cd2b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0cd32:	05 
  a0cd33:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a0cd3a:	0e 
  a0cd3b:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a0cd41:	62 b1 2c 48 5c d3    	vsubps zmm2,zmm10,zmm19
  a0cd47:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a0cd4e:	14 
  a0cd4f:	62 91 74 48 5c e5    	vsubps zmm4,zmm1,zmm29
  a0cd55:	62 d1 34 48 5c e8    	vsubps zmm5,zmm9,zmm8
  a0cd5b:	62 01 7c 40 5c d8    	vsubps zmm27,zmm16,zmm24
  a0cd61:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a0cd67:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a0cd6e:	0b 
  a0cd6f:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x480]
  a0cd76:	12 
  a0cd77:	62 51 04 48 5c de    	vsubps zmm11,zmm15,zmm14
  a0cd7d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a0cd84:	04 
  a0cd85:	62 e1 74 48 5c 44 24 	vsubps zmm16,zmm1,ZMMWORD PTR [rsp+0x180]
  a0cd8c:	06 
  a0cd8d:	62 c1 74 40 5c dd    	vsubps zmm19,zmm17,zmm13
  a0cd93:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a0cd9a:	10 
  a0cd9b:	62 61 74 48 5c 44 24 	vsubps zmm24,zmm1,ZMMWORD PTR [rsp+0x440]
  a0cda2:	11 
  a0cda3:	62 62 7d 48 18 25 ab 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6689ab]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0cdaa:	89 66 ff 
  a0cdad:	62 21 5c 40 5c ea    	vsubps zmm29,zmm20,zmm18
  a0cdb3:	62 11 6c 48 59 cc    	vmulps zmm9,zmm2,zmm28
  a0cdb9:	62 f2 7d 48 18 35 dd 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6685dd]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0cdc0:	85 66 ff 
  a0cdc3:	62 72 7d 48 b8 ce    	vfmadd231ps zmm9,zmm0,zmm6
  a0cdc9:	62 91 7c 48 59 dc    	vmulps zmm3,zmm0,zmm28
  a0cdcf:	62 f2 4d 48 bc da    	vfnmadd231ps zmm3,zmm6,zmm2
  a0cdd5:	62 11 54 48 59 fc    	vmulps zmm15,zmm5,zmm28
  a0cddb:	62 72 5d 48 b8 fe    	vfmadd231ps zmm15,zmm4,zmm6
  a0cde1:	62 91 5c 48 59 d4    	vmulps zmm2,zmm4,zmm28
  a0cde7:	62 f2 4d 48 bc d5    	vfnmadd231ps zmm2,zmm6,zmm5
  a0cded:	62 81 44 48 59 cc    	vmulps zmm17,zmm7,zmm28
  a0cdf3:	62 e2 25 40 b8 ce    	vfmadd231ps zmm17,zmm27,zmm6
  a0cdf9:	62 91 24 40 59 ec    	vmulps zmm5,zmm27,zmm28
  a0cdff:	62 f2 4d 48 bc ef    	vfnmadd231ps zmm5,zmm6,zmm7
  a0ce05:	62 01 24 48 59 dc    	vmulps zmm27,zmm11,zmm28
  a0ce0b:	62 62 3d 48 b8 de    	vfmadd231ps zmm27,zmm8,zmm6
  a0ce11:	62 91 3c 48 59 cc    	vmulps zmm1,zmm8,zmm28
  a0ce17:	62 d2 4d 48 bc cb    	vfnmadd231ps zmm1,zmm6,zmm11
  a0ce1d:	62 01 64 40 59 fc    	vmulps zmm31,zmm19,zmm28
  a0ce23:	62 62 7d 40 b8 fe    	vfmadd231ps zmm31,zmm16,zmm6
  a0ce29:	62 91 7c 40 59 c4    	vmulps zmm0,zmm16,zmm28
  a0ce2f:	62 b2 4d 48 bc c3    	vfnmadd231ps zmm0,zmm6,zmm19
  a0ce35:	62 11 14 40 59 f4    	vmulps zmm14,zmm29,zmm28
  a0ce3b:	62 72 3d 40 b8 f6    	vfmadd231ps zmm14,zmm24,zmm6
  a0ce41:	62 91 3c 40 59 fc    	vmulps zmm7,zmm24,zmm28
  a0ce47:	62 f2 15 40 bc fe    	vfnmadd231ps zmm7,zmm29,zmm6
  a0ce4d:	62 91 0c 40 5c e3    	vsubps zmm4,zmm30,zmm27
  a0ce53:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x4c0]
  a0ce5a:	13 
  a0ce5b:	62 91 3c 40 5c f7    	vsubps zmm6,zmm24,zmm31
  a0ce61:	62 71 5c 48 5c c6    	vsubps zmm8,zmm4,zmm6
  a0ce67:	62 71 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm8
  a0ce6e:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a0ce74:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a0ce7b:	fe 
  a0ce7c:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x580]
  a0ce83:	16 
  a0ce84:	62 d1 2c 48 58 f1    	vaddps zmm6,zmm10,zmm9
  a0ce8a:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x540]
  a0ce91:	15 
  a0ce92:	62 c1 5c 40 58 c7    	vaddps zmm16,zmm20,zmm15
  a0ce98:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0ce9e:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a0cea5:	0b 
  a0cea6:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0ceac:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a0ceb3:	01 
  a0ceb4:	62 f1 4c 40 5c f1    	vsubps zmm6,zmm22,zmm1
  a0ceba:	62 e1 54 40 5c c0    	vsubps zmm16,zmm21,zmm0
  a0cec0:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0cec6:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a0cecd:	02 
  a0cece:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0ced4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a0cedb:	0c 
  a0cedc:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a0cee2:	62 e1 2c 40 58 c2    	vaddps zmm16,zmm26,zmm2
  a0cee8:	62 b1 4c 48 58 e0    	vaddps zmm4,zmm6,zmm16
  a0ceee:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a0cef5:	06 
  a0cef6:	62 b1 4c 48 5c e0    	vsubps zmm4,zmm6,zmm16
  a0cefc:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a0cf03:	04 
  a0cf04:	62 f1 34 40 58 e5    	vaddps zmm4,zmm25,zmm5
  a0cf0a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm4
  a0cf11:	11 
  a0cf12:	62 f1 34 40 5c e5    	vsubps zmm4,zmm25,zmm5
  a0cf18:	62 f1 44 40 5c f3    	vsubps zmm6,zmm23,zmm3
  a0cf1e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm6
  a0cf25:	0d 
  a0cf26:	62 71 2c 40 5c c2    	vsubps zmm8,zmm26,zmm2
  a0cf2c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a0cf33:	0e 
  a0cf34:	62 f1 1c 48 5c d7    	vsubps zmm2,zmm12,zmm7
  a0cf3a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a0cf41:	10 
  a0cf42:	62 d1 44 48 58 fc    	vaddps zmm7,zmm7,zmm12
  a0cf48:	62 21 74 48 58 ee    	vaddps zmm29,zmm1,zmm22
  a0cf4e:	62 a1 7c 48 58 dd    	vaddps zmm19,zmm0,zmm21
  a0cf54:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x600]
  a0cf5b:	18 
  a0cf5c:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x5c0]
  a0cf63:	17 
  a0cf64:	62 31 4c 40 58 d8    	vaddps zmm11,zmm22,zmm16
  a0cf6a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a0cf71:	0f 
  a0cf72:	62 d1 74 48 58 c3    	vaddps zmm0,zmm1,zmm11
  a0cf78:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a0cf7f:	0a 
  a0cf80:	62 62 7d 48 18 25 d6 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6684d6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0cf87:	84 66 ff 
  a0cf8a:	62 72 1d 40 ac d9    	vfnmadd213ps zmm11,zmm28,zmm1
  a0cf90:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x240]
  a0cf97:	09 
  a0cf98:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a0cf9f:	05 
  a0cfa0:	62 f1 54 48 58 d3    	vaddps zmm2,zmm5,zmm3
  a0cfa6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0cfad:	07 
  a0cfae:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a0cfb4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0cfbb:	ff 
  a0cfbc:	62 f2 1d 40 ac d1    	vfnmadd213ps zmm2,zmm28,zmm1
  a0cfc2:	62 51 4c 48 58 e8    	vaddps zmm13,zmm6,zmm8
  a0cfc8:	62 d1 5c 48 58 c5    	vaddps zmm0,zmm4,zmm13
  a0cfce:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a0cfd5:	07 
  a0cfd6:	62 72 1d 40 ac ec    	vfnmadd213ps zmm13,zmm28,zmm4
  a0cfdc:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0cfe2:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a0cfe8:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a0cfee:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a0cff4:	62 21 14 40 58 d3    	vaddps zmm26,zmm29,zmm19
  a0cffa:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0d000:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a0d006:	62 62 2d 40 ac e7    	vfnmadd213ps zmm28,zmm26,zmm7
  a0d00c:	62 91 44 48 58 fa    	vaddps zmm7,zmm7,zmm26
  a0d012:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a0d019:	03 
  a0d01a:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a0d020:	62 51 5c 40 5c cf    	vsubps zmm9,zmm20,zmm15
  a0d026:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x200]
  a0d02d:	08 
  a0d02e:	62 a1 2c 48 58 e1    	vaddps zmm20,zmm10,zmm17
  a0d034:	62 21 2c 48 5c c9    	vsubps zmm25,zmm10,zmm17
  a0d03a:	62 11 24 40 58 d6    	vaddps zmm10,zmm27,zmm30
  a0d040:	62 11 04 40 58 e0    	vaddps zmm12,zmm31,zmm24
  a0d046:	62 c1 2c 48 5c d4    	vsubps zmm18,zmm10,zmm12
  a0d04c:	62 41 2c 48 58 f4    	vaddps zmm30,zmm10,zmm12
  a0d052:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x640]
  a0d059:	19 
  a0d05a:	62 51 1c 48 5c d6    	vsubps zmm10,zmm12,zmm14
  a0d060:	62 c1 0c 48 58 ec    	vaddps zmm21,zmm14,zmm12
  a0d066:	62 41 44 48 58 f9    	vaddps zmm31,zmm7,zmm9
  a0d06c:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a0d072:	62 71 54 48 5c cb    	vsubps zmm9,zmm5,zmm3
  a0d078:	62 a1 4c 40 5c c8    	vsubps zmm17,zmm22,zmm16
  a0d07e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a0d085:	0b 
  a0d086:	62 b2 65 48 ac e4    	vfnmadd213ps zmm4,zmm3,zmm20
  a0d08c:	62 61 5c 40 58 db    	vaddps zmm27,zmm20,zmm3
  a0d092:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a0d099:	fe 
  a0d09a:	62 c2 65 48 ac fa    	vfnmadd213ps zmm23,zmm3,zmm10
  a0d0a0:	62 71 2c 48 58 d3    	vaddps zmm10,zmm10,zmm3
  a0d0a6:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  a0d0ad:	fe 
  a0d0ae:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a0d0b5:	06 
  a0d0b6:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x440]
  a0d0bd:	11 
  a0d0be:	62 d2 05 48 ac c6    	vfnmadd213ps zmm0,zmm15,zmm14
  a0d0c4:	62 62 7d 48 18 05 06 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff668206]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0d0cb:	82 66 ff 
  a0d0ce:	62 71 3c 40 59 54 24 	vmulps zmm10,zmm24,ZMMWORD PTR [rsp+0x80]
  a0d0d5:	02 
  a0d0d6:	62 c1 7c 48 5c e2    	vsubps zmm20,zmm0,zmm10
  a0d0dc:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a0d0e2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a0d0e9:	12 
  a0d0ea:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x300]
  a0d0f1:	0c 
  a0d0f2:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x400]
  a0d0f9:	10 
  a0d0fa:	62 f2 1d 48 ac cd    	vfnmadd213ps zmm1,zmm12,zmm5
  a0d100:	62 f1 3c 40 59 44 24 	vmulps zmm0,zmm24,ZMMWORD PTR [rsp+0x100]
  a0d107:	04 
  a0d108:	62 61 74 48 58 d0    	vaddps zmm26,zmm1,zmm0
  a0d10e:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a0d114:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a0d11b:	02 
  a0d11c:	62 b1 14 40 5c c3    	vsubps zmm0,zmm29,zmm19
  a0d122:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a0d129:	0d 
  a0d12a:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x380]
  a0d131:	0e 
  a0d132:	62 e1 3c 40 59 04 24 	vmulps zmm16,zmm24,ZMMWORD PTR [rsp]
  a0d139:	62 e1 3c 40 59 5c 24 	vmulps zmm19,zmm24,ZMMWORD PTR [rsp+0x40]
  a0d140:	01 
  a0d141:	62 81 6c 40 59 f0    	vmulps zmm22,zmm18,zmm24
  a0d147:	62 91 44 48 59 d8    	vmulps zmm3,zmm7,zmm24
  a0d14d:	62 91 34 48 59 f8    	vmulps zmm7,zmm9,zmm24
  a0d153:	62 11 74 40 59 c8    	vmulps zmm9,zmm17,zmm24
  a0d159:	62 91 7c 48 59 c0    	vmulps zmm0,zmm0,zmm24
  a0d15f:	62 91 74 48 59 c8    	vmulps zmm1,zmm1,zmm24
  a0d165:	62 92 05 40 ac f1    	vfnmadd213ps zmm6,zmm31,zmm25
  a0d16b:	62 01 34 40 58 ff    	vaddps zmm31,zmm25,zmm31
  a0d171:	62 32 0d 40 ac c5    	vfnmadd213ps zmm8,zmm30,zmm21
  a0d177:	62 01 54 40 58 c6    	vaddps zmm24,zmm21,zmm30
  a0d17d:	62 61 24 48 5c cf    	vsubps zmm25,zmm11,zmm7
  a0d183:	62 61 24 48 58 f7    	vaddps zmm30,zmm11,zmm7
  a0d189:	62 f1 34 48 58 fa    	vaddps zmm7,zmm9,zmm2
  a0d18f:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a0d196:	62 c1 6c 48 5c c9    	vsubps zmm17,zmm2,zmm9
  a0d19c:	62 71 7c 40 58 d4    	vaddps zmm10,zmm16,zmm4
  a0d1a2:	62 31 5c 48 5c c8    	vsubps zmm9,zmm4,zmm16
  a0d1a8:	62 31 44 40 5c db    	vsubps zmm11,zmm23,zmm19
  a0d1ae:	62 b1 44 40 58 d3    	vaddps zmm2,zmm23,zmm19
  a0d1b4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a0d1bb:	0b 
  a0d1bc:	62 d1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm15
  a0d1c2:	62 71 4c 40 58 fe    	vaddps zmm15,zmm22,zmm6
  a0d1c8:	62 d1 54 48 58 e4    	vaddps zmm4,zmm5,zmm12
  a0d1ce:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a0d1d5:	01 
  a0d1d6:	62 e1 14 48 5c d8    	vsubps zmm19,zmm13,zmm0
  a0d1dc:	62 f1 14 48 58 e0    	vaddps zmm4,zmm13,zmm0
  a0d1e2:	62 61 1c 40 58 e9    	vaddps zmm29,zmm28,zmm1
  a0d1e8:	62 f1 1c 40 5c c1    	vsubps zmm0,zmm28,zmm1
  a0d1ee:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a0d1f5:	0c 
  a0d1f6:	62 71 3c 48 5c e3    	vsubps zmm12,zmm8,zmm3
  a0d1fc:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a0d202:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a0d208:	62 f1 7c 48 28 05 6e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b9d6e]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0d20f:	9d 6b ff 
  a0d212:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x280]
  a0d219:	0a 
  a0d21a:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a0d220:	62 32 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm19
  a0d226:	62 e1 7c 48 28 05 90 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b9d90]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0d22d:	9d 6b ff 
  a0d230:	62 22 7d 40 7f e3    	vpermt2ps zmm28,zmm16,zmm19
  a0d236:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a0d23c:	62 82 7d 48 7f df    	vpermt2ps zmm19,zmm0,zmm31
  a0d242:	62 12 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm31
  a0d248:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a0d24e:	62 82 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm30
  a0d254:	62 82 7d 40 7f e6    	vpermt2ps zmm20,zmm16,zmm30
  a0d25a:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x1c0]
  a0d261:	07 
  a0d262:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a0d268:	62 c2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm9
  a0d26e:	62 c2 7d 40 7f d1    	vpermt2ps zmm18,zmm16,zmm9
  a0d274:	62 41 7c 48 28 f7    	vmovaps zmm30,zmm15
  a0d27a:	62 62 7d 48 7f f2    	vpermt2ps zmm30,zmm0,zmm2
  a0d280:	62 72 7d 40 7f fa    	vpermt2ps zmm15,zmm16,zmm2
  a0d286:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a0d28c:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a0d292:	62 62 7d 40 7f cc    	vpermt2ps zmm25,zmm16,zmm4
  a0d298:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a0d29e:	62 72 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm1
  a0d2a4:	62 62 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm1
  a0d2aa:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp-0x40]
  a0d2b1:	ff 
  a0d2b2:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a0d2b8:	62 92 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm29
  a0d2be:	62 12 7d 40 7f ed    	vpermt2ps zmm13,zmm16,zmm29
  a0d2c4:	62 41 7c 48 28 eb    	vmovaps zmm29,zmm11
  a0d2ca:	62 02 7d 48 7f e8    	vpermt2ps zmm29,zmm0,zmm24
  a0d2d0:	62 12 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm24
  a0d2d6:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm11
  a0d2dd:	09 
  a0d2de:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a0d2e4:	62 22 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm17
  a0d2ea:	62 b2 7d 40 7f c9    	vpermt2ps zmm1,zmm16,zmm17
  a0d2f0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a0d2f7:	0a 
  a0d2f8:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a0d2ff:	03 
  a0d300:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a0d306:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0d30d:	0b 
  a0d30e:	62 e2 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm2
  a0d314:	62 f2 7d 40 7f ca    	vpermt2ps zmm1,zmm16,zmm2
  a0d31a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a0d321:	03 
  a0d322:	62 d1 7c 48 28 d4    	vmovaps zmm2,zmm12
  a0d328:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a0d32f:	01 
  a0d330:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a0d336:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a0d33c:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a0d343:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a0d349:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a0d350:	0c 
  a0d351:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  a0d357:	62 f2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm5
  a0d35d:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a0d364:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a0d36b:	fe 
  a0d36c:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0d372:	62 f2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm3
  a0d378:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a0d37e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a0d385:	fe 
  a0d386:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0d38a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a0d391:	12 
  a0d392:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a0d398:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0d39e:	62 f2 7d 40 7f d9    	vpermt2ps zmm3,zmm16,zmm1
  a0d3a4:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a0d3aa:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x80]
  a0d3b1:	02 
  a0d3b2:	62 f2 3d 40 77 c1    	vpermi2ps zmm0,zmm24,zmm1
  a0d3b8:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a0d3be:	62 e1 7c 48 28 05 38 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b9b38]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0d3c5:	9b 6b ff 
  a0d3c8:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a0d3ce:	62 92 7d 40 7f de    	vpermt2ps zmm3,zmm16,zmm30
  a0d3d4:	62 f1 7c 48 28 2d 62 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b9b62]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0d3db:	9b 6b ff 
  a0d3de:	62 12 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm30
  a0d3e4:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a0d3ea:	62 02 7d 40 7f f7    	vpermt2ps zmm30,zmm16,zmm31
  a0d3f0:	62 82 55 48 7f df    	vpermt2ps zmm19,zmm5,zmm31
  a0d3f6:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a0d3fc:	62 42 7d 40 7f f9    	vpermt2ps zmm31,zmm16,zmm9
  a0d402:	62 c2 55 48 7f e9    	vpermt2ps zmm21,zmm5,zmm9
  a0d408:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a0d40e:	62 32 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm22
  a0d414:	62 a2 55 48 7f fe    	vpermt2ps zmm23,zmm5,zmm22
  a0d41a:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a0d420:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a0d426:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a0d42c:	62 c2 55 48 7f f7    	vpermt2ps zmm22,zmm5,zmm15
  a0d432:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a0d438:	62 12 7d 40 7f c1    	vpermt2ps zmm8,zmm16,zmm25
  a0d43e:	62 12 55 48 7f d1    	vpermt2ps zmm10,zmm5,zmm25
  a0d444:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a0d44a:	62 12 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm27
  a0d450:	62 82 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm27
  a0d456:	62 a1 cd 40 14 e4    	vunpcklpd zmm20,zmm22,zmm20
  a0d45c:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm20
  a0d463:	ff 
  a0d464:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a0d46a:	62 42 7d 40 7f db    	vpermt2ps zmm27,zmm16,zmm11
  a0d470:	62 c2 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm11
  a0d476:	62 31 ad 48 14 da    	vunpcklpd zmm11,zmm10,zmm18
  a0d47c:	62 81 e5 48 14 d7    	vunpcklpd zmm18,zmm3,zmm31
  a0d482:	62 81 e5 48 15 f7    	vunpckhpd zmm22,zmm3,zmm31
  a0d488:	62 d1 8d 40 14 d9    	vunpcklpd zmm3,zmm30,zmm9
  a0d48e:	62 51 8d 40 15 c9    	vunpckhpd zmm9,zmm30,zmm9
  a0d494:	62 21 8d 48 14 fd    	vunpcklpd zmm31,zmm14,zmm21
  a0d49a:	62 a1 8d 48 15 ed    	vunpckhpd zmm21,zmm14,zmm21
  a0d4a0:	62 31 e5 40 14 f7    	vunpcklpd zmm14,zmm19,zmm23
  a0d4a6:	62 a1 e5 40 15 e7    	vunpckhpd zmm20,zmm19,zmm23
  a0d4ac:	62 c1 f5 48 14 ff    	vunpcklpd zmm23,zmm1,zmm15
  a0d4b2:	62 d1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm15
  a0d4b8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0d4bf:	02 
  a0d4c0:	62 81 bd 48 14 db    	vunpcklpd zmm19,zmm8,zmm27
  a0d4c6:	62 11 bd 48 15 d3    	vunpckhpd zmm10,zmm8,zmm27
  a0d4cc:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a0d4d2:	62 62 7d 40 7f e2    	vpermt2ps zmm28,zmm16,zmm2
  a0d4d8:	62 f2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm2
  a0d4de:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a0d4e4:	62 f2 7d 40 7f d4    	vpermt2ps zmm2,zmm16,zmm4
  a0d4ea:	62 62 55 48 7f ec    	vpermt2ps zmm29,zmm5,zmm4
  a0d4f0:	62 01 7c 48 28 ca    	vmovaps zmm25,zmm26
  a0d4f6:	62 62 7d 40 7f ce    	vpermt2ps zmm25,zmm16,zmm6
  a0d4fc:	62 62 55 48 7f d6    	vpermt2ps zmm26,zmm5,zmm6
  a0d502:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a0d508:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a0d50e:	62 e2 55 48 7f c8    	vpermt2ps zmm17,zmm5,zmm0
  a0d514:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a0d51a:	62 d2 7d 40 7f e4    	vpermt2ps zmm4,zmm16,zmm12
  a0d520:	62 52 55 48 7f ec    	vpermt2ps zmm13,zmm5,zmm12
  a0d526:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x240]
  a0d52d:	09 
  a0d52e:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a0d534:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a0d53b:	62 72 7d 40 7f e1    	vpermt2ps zmm12,zmm16,zmm1
  a0d541:	62 62 55 48 7f f1    	vpermt2ps zmm30,zmm5,zmm1
  a0d547:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a0d54e:	0a 
  a0d54f:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a0d555:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a0d55c:	fe 
  a0d55d:	62 d2 7d 40 7f c0    	vpermt2ps zmm0,zmm16,zmm8
  a0d563:	62 d2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm8
  a0d569:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a0d56f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a0d576:	03 
  a0d577:	62 82 75 48 77 c0    	vpermi2ps zmm16,zmm1,zmm24
  a0d57d:	62 92 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm24
  a0d583:	62 f1 7c 48 28 2d 73 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b9873]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0d58a:	98 6b ff 
  a0d58d:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a0d593:	62 72 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm3
  a0d599:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm8
  a0d5a0:	08 
  a0d5a1:	62 71 7c 48 28 3d 95 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b9895]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0d5a8:	98 6b ff 
  a0d5ab:	62 e2 05 48 7f d3    	vpermt2ps zmm18,zmm15,zmm3
  a0d5b1:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm18
  a0d5b8:	04 
  a0d5b9:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a0d5bf:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a0d5c5:	62 c2 05 48 7f f1    	vpermt2ps zmm22,zmm15,zmm9
  a0d5cb:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm22
  a0d5d2:	06 
  a0d5d3:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a0d5d9:	62 52 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm14
  a0d5df:	62 42 05 48 7f fe    	vpermt2ps zmm31,zmm15,zmm14
  a0d5e5:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm31
  a0d5ec:	fe 
  a0d5ed:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a0d5f3:	62 a2 55 48 7f ec    	vpermt2ps zmm21,zmm5,zmm20
  a0d5f9:	62 22 05 48 7f c4    	vpermt2ps zmm24,zmm15,zmm20
  a0d5ff:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a0d605:	62 a2 55 48 7f f3    	vpermt2ps zmm22,zmm5,zmm19
  a0d60b:	62 a2 05 48 7f fb    	vpermt2ps zmm23,zmm15,zmm19
  a0d611:	62 21 7c 48 28 ff    	vmovaps zmm31,zmm23
  a0d617:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a0d61e:	02 
  a0d61f:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a0d625:	62 c2 55 48 7f da    	vpermt2ps zmm19,zmm5,zmm10
  a0d62b:	62 d2 05 48 7f da    	vpermt2ps zmm3,zmm15,zmm10
  a0d631:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a0d637:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a0d63e:	ff 
  a0d63f:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a0d645:	62 52 55 48 7f d3    	vpermt2ps zmm10,zmm5,zmm11
  a0d64b:	62 d2 05 48 7f db    	vpermt2ps zmm3,zmm15,zmm11
  a0d651:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a0d658:	ff 
  a0d659:	62 01 95 48 14 db    	vunpcklpd zmm27,zmm13,zmm27
  a0d65f:	62 e1 8d 40 14 e1    	vunpcklpd zmm20,zmm30,zmm1
  a0d665:	62 11 9d 40 14 e9    	vunpcklpd zmm13,zmm28,zmm25
  a0d66b:	62 81 9d 40 15 d1    	vunpckhpd zmm18,zmm28,zmm25
  a0d671:	62 71 ed 48 14 de    	vunpcklpd zmm11,zmm2,zmm6
  a0d677:	62 f1 ed 48 15 f6    	vunpckhpd zmm6,zmm2,zmm6
  a0d67d:	62 91 c5 48 14 ca    	vunpcklpd zmm1,zmm7,zmm26
  a0d683:	62 91 c5 48 15 da    	vunpckhpd zmm3,zmm7,zmm26
  a0d689:	62 b1 95 40 14 f9    	vunpcklpd zmm7,zmm29,zmm17
  a0d68f:	62 a1 95 40 15 c9    	vunpckhpd zmm17,zmm29,zmm17
  a0d695:	62 f1 dd 48 14 d0    	vunpcklpd zmm2,zmm4,zmm0
  a0d69b:	62 61 dd 48 15 c8    	vunpckhpd zmm25,zmm4,zmm0
  a0d6a1:	62 b1 9d 48 14 c0    	vunpcklpd zmm0,zmm12,zmm16
  a0d6a7:	62 b1 9d 48 15 e0    	vunpckhpd zmm4,zmm12,zmm16
  a0d6ad:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0d6b3:	62 52 55 48 7f e3    	vpermt2ps zmm12,zmm5,zmm11
  a0d6b9:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm12
  a0d6c0:	01 
  a0d6c1:	62 52 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm11
  a0d6c7:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a0d6cd:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a0d6d3:	62 e2 05 48 7f d6    	vpermt2ps zmm18,zmm15,zmm6
  a0d6d9:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a0d6df:	62 72 55 48 7f df    	vpermt2ps zmm11,zmm5,zmm7
  a0d6e5:	62 f2 05 48 7f cf    	vpermt2ps zmm1,zmm15,zmm7
  a0d6eb:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a0d6f1:	62 32 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm17
  a0d6f7:	62 b2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm17
  a0d6fd:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a0d703:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a0d709:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a0d70f:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a0d715:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a0d71b:	62 62 05 48 7f cc    	vpermt2ps zmm25,zmm15,zmm4
  a0d721:	62 b2 25 40 77 ec    	vpermi2ps zmm5,zmm27,zmm20
  a0d727:	62 22 05 48 7f dc    	vpermt2ps zmm27,zmm15,zmm20
  a0d72d:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a0d734:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a0d73b:	62 e1 7c 48 10 4a 05 	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  a0d742:	62 b1 3c 48 59 e4    	vmulps zmm4,zmm8,zmm20
  a0d748:	62 b2 7d 40 bc e1    	vfnmadd231ps zmm4,zmm16,zmm17
  a0d74e:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a0d754:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm4
  a0d75b:	07 
  a0d75c:	62 b1 7c 40 59 fc    	vmulps zmm7,zmm16,zmm20
  a0d762:	62 f1 7c 48 10 62 18 	vmovups zmm4,ZMMWORD PTR [rdx+0x600]
  a0d769:	62 d2 75 40 b8 f8    	vfmadd231ps zmm7,zmm17,zmm8
  a0d76f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a0d776:	03 
  a0d777:	62 f1 7c 48 10 7a 19 	vmovups zmm7,ZMMWORD PTR [rdx+0x640]
  a0d77e:	62 71 2c 48 59 c4    	vmulps zmm8,zmm10,zmm4
  a0d784:	62 72 55 48 bc c7    	vfnmadd231ps zmm8,zmm5,zmm7
  a0d78a:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm8
  a0d791:	19 
  a0d792:	62 f1 54 48 59 ec    	vmulps zmm5,zmm5,zmm4
  a0d798:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a0d79f:	62 d2 45 48 b8 ea    	vfmadd231ps zmm5,zmm7,zmm10
  a0d7a5:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0d7ab:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm5
  a0d7b2:	0e 
  a0d7b3:	62 f1 7c 48 10 6a 09 	vmovups zmm5,ZMMWORD PTR [rdx+0x240]
  a0d7ba:	62 f1 34 48 59 fc    	vmulps zmm7,zmm9,zmm4
  a0d7c0:	62 f2 25 48 bc fd    	vfnmadd231ps zmm7,zmm11,zmm5
  a0d7c6:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a0d7cd:	62 f1 24 48 59 fc    	vmulps zmm7,zmm11,zmm4
  a0d7d3:	62 f1 7c 48 10 62 14 	vmovups zmm4,ZMMWORD PTR [rdx+0x500]
  a0d7da:	62 d2 55 48 b8 f9    	vfmadd231ps zmm7,zmm5,zmm9
  a0d7e0:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a0d7e7:	0c 
  a0d7e8:	62 f1 7c 48 10 6a 15 	vmovups zmm5,ZMMWORD PTR [rdx+0x540]
  a0d7ef:	62 f1 64 40 59 fc    	vmulps zmm7,zmm19,zmm4
  a0d7f5:	62 f2 7d 48 bc fd    	vfnmadd231ps zmm7,zmm0,zmm5
  a0d7fb:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a0d802:	02 
  a0d803:	62 f1 7c 48 59 e4    	vmulps zmm4,zmm0,zmm4
  a0d809:	62 f1 7c 48 10 42 0c 	vmovups zmm0,ZMMWORD PTR [rdx+0x300]
  a0d810:	62 b2 55 48 b8 e3    	vfmadd231ps zmm4,zmm5,zmm19
  a0d816:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a0d81d:	0b 
  a0d81e:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a0d825:	62 f1 54 40 59 e8    	vmulps zmm5,zmm21,zmm0
  a0d82b:	62 f2 0d 48 bc ec    	vfnmadd231ps zmm5,zmm14,zmm4
  a0d831:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a0d838:	0a 
  a0d839:	62 f1 0c 48 59 e8    	vmulps zmm5,zmm14,zmm0
  a0d83f:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a0d846:	62 b2 5d 48 b8 ed    	vfmadd231ps zmm5,zmm4,zmm21
  a0d84c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a0d853:	12 
  a0d854:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a0d85b:	62 61 4c 40 59 d0    	vmulps zmm26,zmm22,zmm0
  a0d861:	62 62 4d 48 bc d4    	vfnmadd231ps zmm26,zmm6,zmm4
  a0d867:	62 f1 4c 48 59 e8    	vmulps zmm5,zmm6,zmm0
  a0d86d:	62 f1 7c 48 10 42 0e 	vmovups zmm0,ZMMWORD PTR [rdx+0x380]
  a0d874:	62 b2 5d 48 b8 ee    	vfmadd231ps zmm5,zmm4,zmm22
  a0d87a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm5
  a0d881:	09 
  a0d882:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a0d889:	62 61 3c 40 59 e0    	vmulps zmm28,zmm24,zmm0
  a0d88f:	62 62 65 48 bc e6    	vfnmadd231ps zmm28,zmm3,zmm6
  a0d895:	62 e1 64 48 59 e8    	vmulps zmm21,zmm3,zmm0
  a0d89b:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a0d8a2:	62 82 4d 48 b8 e8    	vfmadd231ps zmm21,zmm6,zmm24
  a0d8a8:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a0d8af:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a0d8b5:	62 f2 6d 48 bc e3    	vfnmadd231ps zmm4,zmm2,zmm3
  a0d8bb:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm4
  a0d8c2:	17 
  a0d8c3:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a0d8c9:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a0d8d0:	62 92 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm31
  a0d8d6:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a0d8dc:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a0d8e3:	15 
  a0d8e4:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a0d8eb:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a0d8f2:	fe 
  a0d8f3:	62 f1 4c 48 59 d8    	vmulps zmm3,zmm6,zmm0
  a0d8f9:	62 f2 75 48 bc da    	vfnmadd231ps zmm3,zmm1,zmm2
  a0d8ff:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a0d906:	18 
  a0d907:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a0d90d:	62 f1 7c 48 10 42 16 	vmovups zmm0,ZMMWORD PTR [rdx+0x580]
  a0d914:	62 f2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm6
  a0d91a:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a0d920:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a0d927:	16 
  a0d928:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a0d92f:	62 f1 44 40 59 d0    	vmulps zmm2,zmm23,zmm0
  a0d935:	62 f2 35 40 bc d1    	vfnmadd231ps zmm2,zmm25,zmm1
  a0d93b:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a0d941:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a0d948:	0d 
  a0d949:	62 e1 34 40 59 c8    	vmulps zmm17,zmm25,zmm0
  a0d94f:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a0d956:	62 a2 75 48 b8 cf    	vfmadd231ps zmm17,zmm1,zmm23
  a0d95c:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a0d963:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x180]
  a0d96a:	06 
  a0d96b:	62 f1 34 48 59 d0    	vmulps zmm2,zmm9,zmm0
  a0d971:	62 f2 6d 40 bc d1    	vfnmadd231ps zmm2,zmm18,zmm1
  a0d977:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0d97e:	fe 
  a0d97f:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a0d985:	62 f1 7c 48 10 42 1a 	vmovups zmm0,ZMMWORD PTR [rdx+0x680]
  a0d98c:	62 d2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm9
  a0d992:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a0d999:	11 
  a0d99a:	62 f1 7c 48 10 4a 1b 	vmovups zmm1,ZMMWORD PTR [rdx+0x6c0]
  a0d9a1:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a0d9a8:	ff 
  a0d9a9:	62 e1 34 48 59 c0    	vmulps zmm16,zmm9,zmm0
  a0d9af:	62 e2 25 40 bc c1    	vfnmadd231ps zmm16,zmm27,zmm1
  a0d9b5:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm16
  a0d9bc:	13 
  a0d9bd:	62 f1 24 40 59 c0    	vmulps zmm0,zmm27,zmm0
  a0d9c3:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a0d9ca:	62 d2 75 48 b8 c1    	vfmadd231ps zmm0,zmm1,zmm9
  a0d9d0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a0d9d7:	06 
  a0d9d8:	62 d1 1c 48 58 c0    	vaddps zmm0,zmm12,zmm8
  a0d9de:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x100]
  a0d9e5:	04 
  a0d9e6:	62 d1 34 48 59 cf    	vmulps zmm1,zmm9,zmm15
  a0d9ec:	62 f2 15 48 bc ca    	vfnmadd231ps zmm1,zmm13,zmm2
  a0d9f2:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a0d9f8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm1
  a0d9ff:	14 
  a0da00:	62 d1 14 48 59 cf    	vmulps zmm1,zmm13,zmm15
  a0da06:	62 d2 6d 48 b8 c9    	vfmadd231ps zmm1,zmm2,zmm9
  a0da0c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a0da13:	04 
  a0da14:	62 72 7d 48 18 35 d6 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff667bd6]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a0da1b:	7b 66 ff 
  a0da1e:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a0da24:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x200]
  a0da2b:	08 
  a0da2c:	62 b2 7d 48 a8 d7    	vfmadd213ps zmm2,zmm0,zmm23
  a0da32:	62 72 7d 48 18 2d 90 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff667890]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a0da39:	78 66 ff 
  a0da3c:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a0da42:	62 b2 7d 48 ac cf    	vfnmadd213ps zmm1,zmm0,zmm23
  a0da48:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0da4f:	ff 
  a0da50:	62 f1 44 40 58 c8    	vaddps zmm1,zmm23,zmm0
  a0da56:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0da5d:	05 
  a0da5e:	62 72 7d 48 18 3d 70 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff667b70]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a0da65:	7b 66 ff 
  a0da68:	62 e2 05 48 bc f8    	vfnmadd231ps zmm23,zmm15,zmm0
  a0da6e:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a0da74:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a0da7a:	62 02 7d 48 a8 fc    	vfmadd213ps zmm31,zmm0,zmm28
  a0da80:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a0da86:	62 02 7d 48 ac f4    	vfnmadd213ps zmm30,zmm0,zmm28
  a0da8c:	62 f1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm0
  a0da92:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a0da99:	08 
  a0da9a:	62 62 05 48 bc e0    	vfnmadd231ps zmm28,zmm15,zmm0
  a0daa0:	62 f1 2c 48 58 4c 24 	vaddps zmm1,zmm10,ZMMWORD PTR [rsp+0xc0]
  a0daa7:	03 
  a0daa8:	62 41 7c 48 28 ee    	vmovaps zmm29,zmm14
  a0daae:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x40]
  a0dab5:	01 
  a0dab6:	62 42 75 48 a8 e9    	vfmadd213ps zmm29,zmm1,zmm9
  a0dabc:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a0dac2:	62 c2 75 48 ac e1    	vfnmadd213ps zmm20,zmm1,zmm9
  a0dac8:	62 c1 74 48 58 d1    	vaddps zmm18,zmm1,zmm9
  a0dace:	62 72 05 48 bc c9    	vfnmadd231ps zmm9,zmm15,zmm1
  a0dad4:	62 e1 54 48 58 df    	vaddps zmm19,zmm5,zmm7
  a0dada:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a0dae0:	62 32 65 40 a8 f5    	vfmadd213ps zmm14,zmm19,zmm21
  a0dae6:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a0daec:	62 32 65 40 ac d5    	vfnmadd213ps zmm10,zmm19,zmm21
  a0daf2:	62 b1 54 40 58 c3    	vaddps zmm0,zmm21,zmm19
  a0daf8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0daff:	01 
  a0db00:	62 d2 65 40 bc ff    	vfnmadd231ps zmm7,zmm19,zmm15
  a0db06:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a0db0d:	02 
  a0db0e:	62 e1 7c 48 58 1c 24 	vaddps zmm19,zmm0,ZMMWORD PTR [rsp]
  a0db15:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a0db1b:	62 d2 65 40 bc d5    	vfnmadd231ps zmm2,zmm19,zmm13
  a0db21:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x280]
  a0db28:	0a 
  a0db29:	62 01 3c 40 58 da    	vaddps zmm27,zmm24,zmm26
  a0db2f:	62 d2 25 40 bc d7    	vfnmadd231ps zmm2,zmm27,zmm15
  a0db35:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a0db3c:	0f 
  a0db3d:	62 61 4c 48 58 4c 24 	vaddps zmm25,zmm6,ZMMWORD PTR [rsp-0x80]
  a0db44:	fe 
  a0db45:	62 42 35 40 bc fd    	vfnmadd231ps zmm31,zmm25,zmm13
  a0db4b:	62 d1 7c 40 58 e8    	vaddps zmm5,zmm16,zmm8
  a0db51:	62 42 55 48 bc ff    	vfnmadd231ps zmm31,zmm5,zmm15
  a0db57:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x300]
  a0db5e:	0c 
  a0db5f:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x2c0]
  a0db66:	0b 
  a0db67:	62 b1 4c 40 58 d5    	vaddps zmm2,zmm22,zmm21
  a0db6d:	62 42 6d 48 bc ed    	vfnmadd231ps zmm29,zmm2,zmm13
  a0db73:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x480]
  a0db7a:	12 
  a0db7b:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x240]
  a0db82:	09 
  a0db83:	62 d1 14 48 58 e3    	vaddps zmm4,zmm13,zmm11
  a0db89:	62 42 5d 48 bc ef    	vfnmadd231ps zmm29,zmm4,zmm15
  a0db8f:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x440]
  a0db96:	11 
  a0db97:	62 b1 74 40 58 c8    	vaddps zmm1,zmm17,zmm16
  a0db9d:	62 72 75 48 bc f0    	vfnmadd231ps zmm14,zmm1,zmm0
  a0dba3:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x180]
  a0dbaa:	06 
  a0dbab:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a0dbb2:	04 
  a0dbb3:	62 f1 3c 48 58 de    	vaddps zmm3,zmm8,zmm6
  a0dbb9:	62 52 65 48 bc f7    	vfnmadd231ps zmm14,zmm3,zmm15
  a0dbbf:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a0dbc6:	ff 
  a0dbc7:	62 d2 65 40 bc c7    	vfnmadd231ps zmm0,zmm19,zmm15
  a0dbcd:	62 42 35 40 bc f7    	vfnmadd231ps zmm30,zmm25,zmm15
  a0dbd3:	62 c2 6d 48 bc e7    	vfnmadd231ps zmm20,zmm2,zmm15
  a0dbd9:	62 52 75 48 bc d7    	vfnmadd231ps zmm10,zmm1,zmm15
  a0dbdf:	62 71 64 40 58 64 24 	vaddps zmm12,zmm19,ZMMWORD PTR [rsp+0x140]
  a0dbe6:	05 
  a0dbe7:	62 72 7d 48 18 3d 03 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff667a03]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a0dbee:	7a 66 ff 
  a0dbf1:	62 a2 05 48 b8 fb    	vfmadd231ps zmm23,zmm15,zmm19
  a0dbf7:	62 e1 34 40 58 5c 24 	vaddps zmm19,zmm25,ZMMWORD PTR [rsp+0x200]
  a0dbfe:	08 
  a0dbff:	62 02 05 48 b8 e1    	vfmadd231ps zmm28,zmm15,zmm25
  a0dc05:	62 a1 6c 48 58 d2    	vaddps zmm18,zmm2,zmm18
  a0dc0b:	62 72 05 48 b8 ca    	vfmadd231ps zmm9,zmm15,zmm2
  a0dc11:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x40]
  a0dc18:	01 
  a0dc19:	62 d2 75 48 b8 ff    	vfmadd231ps zmm7,zmm1,zmm15
  a0dc1f:	62 d2 25 40 b8 c7    	vfmadd231ps zmm0,zmm27,zmm15
  a0dc25:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0dc2c:	ff 
  a0dc2d:	62 42 55 48 b8 f7    	vfmadd231ps zmm30,zmm5,zmm15
  a0dc33:	62 c2 5d 48 b8 e7    	vfmadd231ps zmm20,zmm4,zmm15
  a0dc39:	62 52 65 48 b8 d7    	vfmadd231ps zmm10,zmm3,zmm15
  a0dc3f:	62 91 1c 48 58 c3    	vaddps zmm0,zmm12,zmm27
  a0dc45:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0dc4c:	01 
  a0dc4d:	62 f2 7d 48 18 05 75 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff667675]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a0dc54:	76 66 ff 
  a0dc57:	62 82 7d 48 bc fb    	vfnmadd231ps zmm23,zmm0,zmm27
  a0dc5d:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a0dc63:	62 f1 64 40 58 cd    	vaddps zmm1,zmm19,zmm5
  a0dc69:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a0dc70:	08 
  a0dc71:	62 62 7d 48 bc e5    	vfnmadd231ps zmm28,zmm0,zmm5
  a0dc77:	62 b1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm18
  a0dc7d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0dc84:	05 
  a0dc85:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a0dc8b:	62 f2 65 48 bc f8    	vfnmadd231ps zmm7,zmm3,zmm0
  a0dc91:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a0dc97:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a0dc9e:	10 
  a0dc9f:	62 c1 14 48 5c fb    	vsubps zmm23,zmm13,zmm11
  a0dca5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a0dcac:	03 
  a0dcad:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x380]
  a0dcb4:	0e 
  a0dcb5:	62 b1 4c 40 5c d5    	vsubps zmm2,zmm22,zmm21
  a0dcbb:	62 71 3c 48 5c c6    	vsubps zmm8,zmm8,zmm6
  a0dcc1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a0dcc8:	15 
  a0dcc9:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x580]
  a0dcd0:	16 
  a0dcd1:	62 31 74 40 5c e8    	vsubps zmm13,zmm17,zmm16
  a0dcd7:	62 11 3c 40 5c fa    	vsubps zmm15,zmm24,zmm26
  a0dcdd:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a0dce4:	07 
  a0dce5:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x640]
  a0dcec:	19 
  a0dced:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a0dcf4:	62 e1 7c 48 5c 54 24 	vsubps zmm18,zmm0,ZMMWORD PTR [rsp+0x80]
  a0dcfb:	02 
  a0dcfc:	62 e2 7d 48 18 1d 8a 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff66778a]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a0dd03:	77 66 ff 
  a0dd06:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a0dd0d:	13 
  a0dd0e:	62 e1 7c 48 5c 4c 24 	vsubps zmm17,zmm0,ZMMWORD PTR [rsp+0x500]
  a0dd15:	14 
  a0dd16:	62 e2 7d 48 18 2d 40 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff667940]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a0dd1d:	79 66 ff 
  a0dd20:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a0dd27:	17 
  a0dd28:	62 e1 7c 48 5c 74 24 	vsubps zmm22,zmm0,ZMMWORD PTR [rsp+0x600]
  a0dd2f:	18 
  a0dd30:	62 b1 6c 48 59 f3    	vmulps zmm6,zmm2,zmm19
  a0dd36:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a0dd3d:	0d 
  a0dd3e:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp-0x80]
  a0dd45:	fe 
  a0dd46:	62 62 7d 48 18 15 98 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff667898]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a0dd4d:	78 66 ff 
  a0dd50:	62 b2 75 48 b8 f5    	vfmadd231ps zmm6,zmm1,zmm21
  a0dd56:	62 b1 74 48 59 db    	vmulps zmm3,zmm1,zmm19
  a0dd5c:	62 92 6d 48 bc da    	vfnmadd231ps zmm3,zmm2,zmm26
  a0dd62:	62 91 74 48 59 ca    	vmulps zmm1,zmm1,zmm26
  a0dd68:	62 f2 55 40 bc ca    	vfnmadd231ps zmm1,zmm21,zmm2
  a0dd6e:	62 b1 14 48 59 e3    	vmulps zmm4,zmm13,zmm19
  a0dd74:	62 b2 55 48 b8 e5    	vfmadd231ps zmm4,zmm5,zmm21
  a0dd7a:	62 21 54 48 59 db    	vmulps zmm27,zmm5,zmm19
  a0dd80:	62 02 15 48 bc da    	vfnmadd231ps zmm27,zmm13,zmm26
  a0dd86:	62 91 54 48 59 ea    	vmulps zmm5,zmm5,zmm26
  a0dd8c:	62 d2 55 40 bc ed    	vfnmadd231ps zmm5,zmm21,zmm13
  a0dd92:	62 31 6c 40 59 eb    	vmulps zmm13,zmm18,zmm19
  a0dd98:	62 32 7d 40 b8 ed    	vfmadd231ps zmm13,zmm16,zmm21
  a0dd9e:	62 b1 7c 40 59 d3    	vmulps zmm2,zmm16,zmm19
  a0dda4:	62 92 6d 40 bc d2    	vfnmadd231ps zmm2,zmm18,zmm26
  a0ddaa:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a0ddb0:	62 a2 55 40 bc c2    	vfnmadd231ps zmm16,zmm21,zmm18
  a0ddb6:	62 92 45 40 b8 f2    	vfmadd231ps zmm6,zmm23,zmm26
  a0ddbc:	62 92 3d 48 b8 e2    	vfmadd231ps zmm4,zmm8,zmm26
  a0ddc2:	62 12 05 48 b8 ea    	vfmadd231ps zmm13,zmm15,zmm26
  a0ddc8:	62 a1 3c 40 59 d3    	vmulps zmm18,zmm24,zmm19
  a0ddce:	62 a2 4d 40 b8 d5    	vfmadd231ps zmm18,zmm22,zmm21
  a0ddd4:	62 82 75 40 b8 d2    	vfmadd231ps zmm18,zmm17,zmm26
  a0ddda:	62 b1 4c 40 59 c3    	vmulps zmm0,zmm22,zmm19
  a0dde0:	62 92 3d 40 bc c2    	vfnmadd231ps zmm0,zmm24,zmm26
  a0dde6:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a0ddec:	62 a2 3d 40 bc f5    	vfnmadd231ps zmm22,zmm24,zmm21
  a0ddf2:	62 b2 45 40 bc dd    	vfnmadd231ps zmm3,zmm23,zmm21
  a0ddf8:	62 22 3d 48 bc dd    	vfnmadd231ps zmm27,zmm8,zmm21
  a0ddfe:	62 b2 05 48 bc d5    	vfnmadd231ps zmm2,zmm15,zmm21
  a0de04:	62 b2 75 40 bc c5    	vfnmadd231ps zmm0,zmm17,zmm21
  a0de0a:	62 b2 65 40 b8 cf    	vfmadd231ps zmm1,zmm19,zmm23
  a0de10:	62 d2 65 40 b8 e8    	vfmadd231ps zmm5,zmm19,zmm8
  a0de16:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x3c0]
  a0de1d:	0f 
  a0de1e:	62 e1 1c 48 58 fe    	vaddps zmm23,zmm12,zmm6
  a0de24:	62 c2 65 40 b8 c7    	vfmadd231ps zmm16,zmm19,zmm15
  a0de2a:	62 71 04 40 58 fc    	vaddps zmm15,zmm31,zmm4
  a0de30:	62 a2 75 40 b8 f3    	vfmadd231ps zmm22,zmm17,zmm19
  a0de36:	62 41 44 40 5c d7    	vsubps zmm26,zmm23,zmm15
  a0de3c:	62 71 34 40 58 d9    	vaddps zmm11,zmm25,zmm1
  a0de42:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm11
  a0de49:	fe 
  a0de4a:	62 f1 34 40 5c c9    	vsubps zmm1,zmm25,zmm1
  a0de50:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a0de57:	03 
  a0de58:	62 e1 1c 40 58 ed    	vaddps zmm21,zmm28,zmm5
  a0de5e:	62 f1 1c 40 5c cd    	vsubps zmm1,zmm28,zmm5
  a0de64:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a0de6b:	62 a1 34 48 5c d8    	vsubps zmm19,zmm9,zmm16
  a0de71:	62 41 7c 40 58 c1    	vaddps zmm24,zmm16,zmm9
  a0de77:	62 21 44 48 5c ce    	vsubps zmm25,zmm7,zmm22
  a0de7d:	62 a1 44 48 58 ce    	vaddps zmm17,zmm7,zmm22
  a0de83:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a0de8a:	ff 
  a0de8b:	62 e1 74 48 58 c3    	vaddps zmm16,zmm1,zmm3
  a0de91:	62 e1 74 48 5c f3    	vsubps zmm22,zmm1,zmm3
  a0de97:	62 01 0c 40 58 e3    	vaddps zmm28,zmm30,zmm27
  a0de9d:	62 01 0c 40 5c f3    	vsubps zmm30,zmm30,zmm27
  a0dea3:	62 71 5c 40 5c ca    	vsubps zmm9,zmm20,zmm2
  a0dea9:	62 31 6c 48 58 c4    	vaddps zmm8,zmm2,zmm20
  a0deaf:	62 71 2c 48 5c d8    	vsubps zmm11,zmm10,zmm0
  a0deb5:	62 f1 2c 48 58 f8    	vaddps zmm7,zmm10,zmm0
  a0debb:	62 d1 14 40 5c dd    	vsubps zmm3,zmm29,zmm13
  a0dec1:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a0dec7:	62 b1 0c 48 5c c2    	vsubps zmm0,zmm14,zmm18
  a0decd:	62 f1 04 40 5c e4    	vsubps zmm4,zmm31,zmm4
  a0ded3:	62 61 64 48 5c d8    	vsubps zmm27,zmm3,zmm0
  a0ded9:	62 91 14 48 58 d5    	vaddps zmm2,zmm13,zmm29
  a0dedf:	62 01 7c 40 58 ec    	vaddps zmm29,zmm16,zmm28
  a0dee5:	62 b1 0c 48 58 ca    	vaddps zmm1,zmm14,zmm18
  a0deeb:	62 c1 34 48 58 d3    	vaddps zmm18,zmm9,zmm11
  a0def1:	62 51 44 40 58 e7    	vaddps zmm12,zmm23,zmm15
  a0def7:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a0defe:	fe 
  a0deff:	62 b1 0c 48 5c ed    	vsubps zmm5,zmm14,zmm21
  a0df05:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a0df0b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0df12:	ff 
  a0df13:	62 11 64 40 5c e9    	vsubps zmm13,zmm19,zmm25
  a0df19:	62 81 7c 40 5c fc    	vsubps zmm23,zmm16,zmm28
  a0df1f:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0xc0]
  a0df26:	03 
  a0df27:	62 e1 7c 48 10 04 24 	vmovups zmm16,ZMMWORD PTR [rsp]
  a0df2e:	62 21 2c 48 58 f8    	vaddps zmm31,zmm10,zmm16
  a0df34:	62 d1 34 48 5c c3    	vsubps zmm0,zmm9,zmm11
  a0df3a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a0df41:	04 
  a0df42:	62 31 3c 40 58 d9    	vaddps zmm11,zmm24,zmm17
  a0df48:	62 21 0c 48 58 e5    	vaddps zmm28,zmm14,zmm21
  a0df4e:	62 91 4c 40 5c de    	vsubps zmm3,zmm22,zmm30
  a0df54:	62 81 64 40 58 e9    	vaddps zmm21,zmm19,zmm25
  a0df5a:	62 71 3c 48 5c ff    	vsubps zmm15,zmm8,zmm7
  a0df60:	62 a1 2c 48 5c d8    	vsubps zmm19,zmm10,zmm16
  a0df66:	62 71 4c 48 58 cc    	vaddps zmm9,zmm6,zmm4
  a0df6c:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a0df72:	62 e1 6c 48 58 c1    	vaddps zmm16,zmm2,zmm1
  a0df78:	62 81 4c 40 58 f6    	vaddps zmm22,zmm22,zmm30
  a0df7e:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x40]
  a0df85:	01 
  a0df86:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a0df8d:	08 
  a0df8e:	62 71 5c 40 5c d0    	vsubps zmm10,zmm20,zmm0
  a0df94:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a0df9a:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x140]
  a0dfa1:	05 
  a0dfa2:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x400]
  a0dfa9:	10 
  a0dfaa:	62 41 3c 48 5c f6    	vsubps zmm30,zmm8,zmm14
  a0dfb0:	62 61 4c 48 5c cc    	vsubps zmm25,zmm6,zmm4
  a0dfb6:	62 61 6c 48 5c c1    	vsubps zmm24,zmm2,zmm1
  a0dfbc:	62 51 3c 48 58 f6    	vaddps zmm14,zmm8,zmm14
  a0dfc2:	62 f1 5c 40 58 c8    	vaddps zmm1,zmm20,zmm0
  a0dfc8:	62 f1 7c 48 28 35 6e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff680d6e]        # 8ed40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1f0>
  a0dfcf:	0d 68 ff 
  a0dfd2:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a0dfd8:	62 f2 4d 48 7f d1    	vpermt2ps zmm2,zmm6,zmm1
  a0dfde:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0dfe5:	fe 
  a0dfe6:	62 f1 0c 48 15 d1    	vunpckhps zmm2,zmm14,zmm1
  a0dfec:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a0dff3:	03 
  a0dff4:	62 f1 0c 48 14 d1    	vunpcklps zmm2,zmm14,zmm1
  a0dffa:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a0e001:	62 e1 7c 28 28 25 75 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff680d75]        # 8ed80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c230>
  a0e008:	0d 68 ff 
  a0e00b:	62 72 5d 40 7f f1    	vpermt2ps zmm14,zmm20,zmm1
  a0e011:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a0e017:	62 92 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm26
  a0e01d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a0e024:	01 
  a0e025:	62 91 24 40 15 ca    	vunpckhps zmm1,zmm27,zmm26
  a0e02b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0e032:	02 
  a0e033:	62 91 24 40 14 ca    	vunpcklps zmm1,zmm27,zmm26
  a0e039:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a0e040:	0c 
  a0e041:	62 02 5d 40 7f da    	vpermt2ps zmm27,zmm20,zmm26
  a0e047:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a0e04d:	62 92 4d 48 7f d5    	vpermt2ps zmm2,zmm6,zmm29
  a0e053:	62 91 6c 40 15 cd    	vunpckhps zmm1,zmm18,zmm29
  a0e059:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a0e060:	0b 
  a0e061:	62 91 6c 40 14 cd    	vunpcklps zmm1,zmm18,zmm29
  a0e067:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm1
  a0e06e:	12 
  a0e06f:	62 82 5d 40 7f d5    	vpermt2ps zmm18,zmm20,zmm29
  a0e075:	62 41 7c 48 28 ed    	vmovaps zmm29,zmm13
  a0e07b:	62 62 4d 48 7f ed    	vpermt2ps zmm29,zmm6,zmm5
  a0e081:	62 f1 14 48 15 cd    	vunpckhps zmm1,zmm13,zmm5
  a0e087:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a0e08e:	0a 
  a0e08f:	62 f1 14 48 14 cd    	vunpcklps zmm1,zmm13,zmm5
  a0e095:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a0e09c:	09 
  a0e09d:	62 72 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm5
  a0e0a3:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a0e0a9:	62 02 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm31
  a0e0af:	62 91 24 48 15 cf    	vunpckhps zmm1,zmm11,zmm31
  a0e0b5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a0e0bc:	08 
  a0e0bd:	62 91 24 48 14 cf    	vunpcklps zmm1,zmm11,zmm31
  a0e0c3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a0e0ca:	19 
  a0e0cb:	62 12 5d 40 7f df    	vpermt2ps zmm11,zmm20,zmm31
  a0e0d1:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a0e0d7:	62 62 4d 48 7f fb    	vpermt2ps zmm31,zmm6,zmm3
  a0e0dd:	62 f1 04 48 15 cb    	vunpckhps zmm1,zmm15,zmm3
  a0e0e3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a0e0ea:	07 
  a0e0eb:	62 f1 04 48 14 cb    	vunpcklps zmm1,zmm15,zmm3
  a0e0f1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a0e0f8:	06 
  a0e0f9:	62 72 5d 40 7f fb    	vpermt2ps zmm15,zmm20,zmm3
  a0e0ff:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a0e105:	62 d2 4d 48 7f e1    	vpermt2ps zmm4,zmm6,zmm9
  a0e10b:	62 d1 7c 40 15 c1    	vunpckhps zmm0,zmm16,zmm9
  a0e111:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0e118:	05 
  a0e119:	62 d1 7c 40 14 c1    	vunpcklps zmm0,zmm16,zmm9
  a0e11f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a0e126:	11 
  a0e127:	62 c2 5d 40 7f c1    	vpermt2ps zmm16,zmm20,zmm9
  a0e12d:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a0e133:	62 d2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm10
  a0e139:	62 d1 0c 40 15 c2    	vunpckhps zmm0,zmm30,zmm10
  a0e13f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a0e146:	10 
  a0e147:	62 d1 0c 40 14 c2    	vunpcklps zmm0,zmm30,zmm10
  a0e14d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a0e154:	18 
  a0e155:	62 42 5d 40 7f f2    	vpermt2ps zmm30,zmm20,zmm10
  a0e15b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a0e162:	ff 
  a0e163:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a0e169:	62 d2 4d 48 7f ec    	vpermt2ps zmm5,zmm6,zmm12
  a0e16f:	62 d1 7c 48 15 cc    	vunpckhps zmm1,zmm0,zmm12
  a0e175:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a0e17c:	17 
  a0e17d:	62 d1 7c 48 14 cc    	vunpcklps zmm1,zmm0,zmm12
  a0e183:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a0e18a:	0f 
  a0e18b:	62 d2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm12
  a0e191:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0e198:	ff 
  a0e199:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a0e1a0:	04 
  a0e1a1:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a0e1a7:	62 b2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm23
  a0e1ad:	62 31 74 48 15 c7    	vunpckhps zmm8,zmm1,zmm23
  a0e1b3:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a0e1ba:	0e 
  a0e1bb:	62 31 74 48 14 c7    	vunpcklps zmm8,zmm1,zmm23
  a0e1c1:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm8
  a0e1c8:	16 
  a0e1c9:	62 b2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm23
  a0e1cf:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a0e1d5:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a0e1db:	62 92 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm28
  a0e1e1:	62 11 54 40 15 c4    	vunpckhps zmm8,zmm21,zmm28
  a0e1e7:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm8
  a0e1ee:	04 
  a0e1ef:	62 11 54 40 14 c4    	vunpcklps zmm8,zmm21,zmm28
  a0e1f5:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm8
  a0e1fc:	15 
  a0e1fd:	62 82 5d 40 7f ec    	vpermt2ps zmm21,zmm20,zmm28
  a0e203:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a0e209:	62 22 4d 48 7f e3    	vpermt2ps zmm28,zmm6,zmm19
  a0e20f:	62 31 74 40 15 c3    	vunpckhps zmm8,zmm17,zmm19
  a0e215:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm8
  a0e21c:	0d 
  a0e21d:	62 31 74 40 14 c3    	vunpcklps zmm8,zmm17,zmm19
  a0e223:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm8
  a0e22a:	14 
  a0e22b:	62 a2 5d 40 7f cb    	vpermt2ps zmm17,zmm20,zmm19
  a0e231:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a0e237:	62 a2 4d 48 7f fe    	vpermt2ps zmm23,zmm6,zmm22
  a0e23d:	62 a1 44 48 15 de    	vunpckhps zmm19,zmm7,zmm22
  a0e243:	62 31 44 48 14 c6    	vunpcklps zmm8,zmm7,zmm22
  a0e249:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm8
  a0e250:	13 
  a0e251:	62 b2 5d 40 7f fe    	vpermt2ps zmm7,zmm20,zmm22
  a0e257:	62 92 3d 40 77 f1    	vpermi2ps zmm6,zmm24,zmm25
  a0e25d:	62 11 3c 40 15 e1    	vunpckhps zmm12,zmm24,zmm25
  a0e263:	62 11 3c 40 14 c1    	vunpcklps zmm8,zmm24,zmm25
  a0e269:	62 02 5d 40 7f c1    	vpermt2ps zmm24,zmm20,zmm25
  a0e26f:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x80]
  a0e276:	fe 
  a0e277:	62 71 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm9
  a0e27d:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a0e284:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a0e28b:	03 
  a0e28c:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0xc0]
  a0e293:	03 
  a0e294:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a0e29b:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a0e2a0:	c5 7c 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm14
  a0e2a5:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x40]
  a0e2ac:	01 
  a0e2ad:	62 71 7c 48 11 8e 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm9
  a0e2b4:	00 00 00 
  a0e2b7:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x300]
  a0e2be:	0c 
  a0e2bf:	62 73 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm9,0x3
  a0e2c6:	00 00 00 03 
  a0e2ca:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x80]
  a0e2d1:	02 
  a0e2d2:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a0e2d9:	c5 78 13 8e e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm9
  a0e2e0:	00 
  a0e2e1:	62 61 7c 28 11 9e b8 	vmovups YMMWORD PTR [rsi+0xb8],ymm27
  a0e2e8:	00 00 00 
  a0e2eb:	62 f1 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm2
  a0e2f2:	00 00 00 
  a0e2f5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x480]
  a0e2fc:	12 
  a0e2fd:	62 f3 7d 48 19 56 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm2,0x3
  a0e304:	03 
  a0e305:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0e30c:	0b 
  a0e30d:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e314:	c5 f8 13 96 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm2
  a0e31b:	00 
  a0e31c:	62 e1 7c 28 11 96 30 	vmovups YMMWORD PTR [rsi+0x130],ymm18
  a0e323:	01 00 00 
  a0e326:	62 61 7c 48 11 ae 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm29
  a0e32d:	01 00 00 
  a0e330:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a0e337:	09 
  a0e338:	62 f3 7d 48 19 96 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm2,0x3
  a0e33f:	01 00 00 03 
  a0e343:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a0e34a:	0a 
  a0e34b:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e352:	c5 f8 13 96 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm2
  a0e359:	00 
  a0e35a:	c5 7c 11 ae a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm13
  a0e361:	00 
  a0e362:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a0e369:	01 00 00 
  a0e36c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  a0e373:	19 
  a0e374:	62 f3 7d 48 19 56 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm2,0x3
  a0e37b:	03 
  a0e37c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a0e383:	08 
  a0e384:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e38b:	c5 f8 13 96 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm2
  a0e392:	00 
  a0e393:	c5 7c 11 9e 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm11
  a0e39a:	00 
  a0e39b:	62 61 7c 48 11 be 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm31
  a0e3a2:	02 00 00 
  a0e3a5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a0e3ac:	06 
  a0e3ad:	62 f3 7d 48 19 96 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm2,0x3
  a0e3b4:	02 00 00 03 
  a0e3b8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a0e3bf:	07 
  a0e3c0:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e3c7:	c5 f8 13 96 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm2
  a0e3ce:	00 
  a0e3cf:	c5 7c 11 be 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm15
  a0e3d6:	00 
  a0e3d7:	62 f1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm4
  a0e3de:	02 00 00 
  a0e3e1:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x440]
  a0e3e8:	11 
  a0e3e9:	62 f3 7d 48 19 56 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm2,0x3
  a0e3f0:	03 
  a0e3f1:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a0e3f8:	05 
  a0e3f9:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e400:	c5 f8 13 96 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm2
  a0e407:	00 
  a0e408:	62 e1 7c 28 11 86 10 	vmovups YMMWORD PTR [rsi+0x310],ymm16
  a0e40f:	03 00 00 
  a0e412:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm3
  a0e419:	03 00 00 
  a0e41c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x600]
  a0e423:	18 
  a0e424:	62 f3 7d 48 19 96 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm2,0x3
  a0e42b:	03 00 00 03 
  a0e42f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x400]
  a0e436:	10 
  a0e437:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e43e:	c5 f8 13 96 b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm2
  a0e445:	00 
  a0e446:	62 61 7c 28 11 b6 88 	vmovups YMMWORD PTR [rsi+0x388],ymm30
  a0e44d:	03 00 00 
  a0e450:	62 f1 7c 48 11 6e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm5
  a0e457:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a0e45e:	0f 
  a0e45f:	62 f3 7d 48 19 56 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm2,0x3
  a0e466:	03 
  a0e467:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x5c0]
  a0e46e:	17 
  a0e46f:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a0e476:	c5 f8 13 96 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm2
  a0e47d:	00 
  a0e47e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a0e485:	ff 
  a0e486:	c5 fc 11 96 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm2
  a0e48d:	00 
  a0e48e:	62 f1 7c 48 11 86 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm0
  a0e495:	04 00 00 
  a0e498:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a0e49f:	16 
  a0e4a0:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a0e4a7:	04 00 00 03 
  a0e4ab:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a0e4b2:	0e 
  a0e4b3:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a0e4ba:	c5 f8 13 86 a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm0
  a0e4c1:	00 
  a0e4c2:	c5 7c 11 96 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm10
  a0e4c9:	00 
  a0e4ca:	62 f1 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm1
  a0e4d1:	04 00 00 
  a0e4d4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a0e4db:	15 
  a0e4dc:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a0e4e3:	03 
  a0e4e4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a0e4eb:	04 
  a0e4ec:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a0e4f3:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a0e4fa:	00 
  a0e4fb:	62 e1 7c 28 11 ae f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm21
  a0e502:	04 00 00 
  a0e505:	62 61 7c 48 11 a6 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm28
  a0e50c:	05 00 00 
  a0e50f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a0e516:	14 
  a0e517:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a0e51e:	05 00 00 03 
  a0e522:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a0e529:	0d 
  a0e52a:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a0e531:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a0e538:	00 
  a0e539:	62 e1 7c 28 11 8e 68 	vmovups YMMWORD PTR [rsi+0x568],ymm17
  a0e540:	05 00 00 
  a0e543:	62 e1 7c 48 11 be a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm23
  a0e54a:	05 00 00 
  a0e54d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a0e554:	13 
  a0e555:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a0e55c:	03 
  a0e55d:	62 e3 7d 48 19 d8 03 	vextractf32x4 xmm0,zmm19,0x3
  a0e564:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a0e56b:	00 
  a0e56c:	c5 fc 11 be e0 05 00 	vmovups YMMWORD PTR [rsi+0x5e0],ymm7
  a0e573:	00 
  a0e574:	62 f1 7c 48 11 b6 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm6
  a0e57b:	06 00 00 
  a0e57e:	62 73 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm8,0x3
  a0e585:	06 00 00 03 
  a0e589:	62 73 7d 48 19 e0 03 	vextractf32x4 xmm0,zmm12,0x3
  a0e590:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a0e597:	00 
  a0e598:	62 61 7c 28 11 86 58 	vmovups YMMWORD PTR [rsi+0x658],ymm24
  a0e59f:	06 00 00 
  a0e5a2:	48 81 c4 c8 06 00 00 	add    rsp,0x6c8
  a0e5a9:	c5 f8 77             	vzeroupper
  a0e5ac:	c3                   	ret
