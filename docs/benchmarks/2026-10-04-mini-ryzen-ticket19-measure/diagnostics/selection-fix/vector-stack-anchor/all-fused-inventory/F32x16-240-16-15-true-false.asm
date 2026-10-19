
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4c5c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4c5c0:	48 81 ec c8 08 00 00 	sub    rsp,0x8c8
  a4c5c7:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a4c5cd:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a4c5d2:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a4c5d9:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a4c5df:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a4c5e4:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4c5ea:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a4c5f1:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a4c5f6:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4c5fc:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4c603:	b0 7f                	mov    al,0x7f
  a4c605:	c5 fb 92 c8          	kmovd  k1,eax
  a4c609:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c60f:	62 f1 7c 48 28 2d 27 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff646227]        # 92840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fcf0>
  a4c616:	62 64 ff 
  a4c619:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a4c61f:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c625:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4c62c:	03 
  a4c62d:	62 e1 7c 48 28 1d 49 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff646249]        # 92880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fd30>
  a4c634:	62 64 ff 
  a4c637:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a4c63d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a4c644:	02 
  a4c645:	c5 f8 10 87 d8 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd8]
  a4c64c:	00 
  a4c64d:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x10
  a4c654:	00 00 10 
  a4c657:	c4 e2 79 18 8f e0 00 	vbroadcastss xmm1,DWORD PTR [rdi+0xe0]
  a4c65e:	00 00 
  a4c660:	62 f1 7c 48 10 97 78 	vmovups zmm2,ZMMWORD PTR [rdi+0x78]
  a4c667:	00 00 00 
  a4c66a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4c670:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x30
  a4c677:	00 00 30 
  a4c67a:	c5 fc 10 8f b8 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb8]
  a4c681:	00 
  a4c682:	c5 fb 10 9f e8 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xe8]
  a4c689:	00 
  a4c68a:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4c690:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4c697:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c69d:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4c6a3:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c6a9:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4c6af:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a4c6b6:	0c 
  a4c6b7:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4c6bd:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a4c6c3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a4c6ca:	0b 
  a4c6cb:	62 f1 7c 48 10 97 f0 	vmovups zmm2,ZMMWORD PTR [rdi+0xf0]
  a4c6d2:	00 00 00 
  a4c6d5:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a4c6dc:	00 
  a4c6dd:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a4c6e4:	00 00 10 
  a4c6e7:	c5 fc 10 8f 30 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x130]
  a4c6ee:	00 
  a4c6ef:	c4 e2 79 18 9f 58 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x158]
  a4c6f6:	00 00 
  a4c6f8:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4c6fe:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a4c705:	00 00 30 
  a4c708:	c5 fb 10 9f 60 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x160]
  a4c70f:	00 
  a4c710:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4c716:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4c71d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c723:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4c729:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c72f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a4c736:	01 
  a4c737:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4c73d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a4c744:	06 
  a4c745:	62 71 7c 48 10 bf 68 	vmovups zmm15,ZMMWORD PTR [rdi+0x168]
  a4c74c:	01 00 00 
  a4c74f:	c5 f8 10 87 c8 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1c8]
  a4c756:	00 
  a4c757:	c5 fc 10 8f a8 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1a8]
  a4c75e:	00 
  a4c75f:	c4 e3 79 21 87 cc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1cc],0x10
  a4c766:	00 00 10 
  a4c769:	c4 e2 79 18 9f d0 01 	vbroadcastss xmm3,DWORD PTR [rdi+0x1d0]
  a4c770:	00 00 
  a4c772:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4c778:	c4 e3 79 21 87 d4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1d4],0x30
  a4c77f:	00 00 30 
  a4c782:	c5 fb 10 9f d8 01 00 	vmovsd xmm3,QWORD PTR [rdi+0x1d8]
  a4c789:	00 
  a4c78a:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4c790:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4c797:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c79d:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a4c7a3:	62 72 55 48 7f e8    	vpermt2ps zmm13,zmm5,zmm0
  a4c7a9:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a4c7af:	62 f1 7c 48 10 97 e0 	vmovups zmm2,ZMMWORD PTR [rdi+0x1e0]
  a4c7b6:	01 00 00 
  a4c7b9:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a4c7c0:	00 
  a4c7c1:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a4c7c8:	00 00 10 
  a4c7cb:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a4c7d2:	00 00 
  a4c7d4:	c5 fc 10 9f 20 02 00 	vmovups ymm3,YMMWORD PTR [rdi+0x220]
  a4c7db:	00 
  a4c7dc:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4c7e2:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a4c7e9:	00 00 30 
  a4c7ec:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a4c7f3:	00 
  a4c7f4:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4c7fa:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4c801:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c807:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4c80d:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c813:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a4c81a:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4c820:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a4c827:	05 
  a4c828:	c5 f8 10 87 b8 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2b8]
  a4c82f:	00 
  a4c830:	c4 e3 79 21 87 bc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2bc],0x10
  a4c837:	00 00 10 
  a4c83a:	c4 e2 79 18 8f c0 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x2c0]
  a4c841:	00 00 
  a4c843:	62 f1 7c 48 10 97 58 	vmovups zmm2,ZMMWORD PTR [rdi+0x258]
  a4c84a:	02 00 00 
  a4c84d:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4c853:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a4c85a:	00 00 30 
  a4c85d:	c5 fc 10 8f 98 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x298]
  a4c864:	00 
  a4c865:	c5 fb 10 9f c8 02 00 	vmovsd xmm3,QWORD PTR [rdi+0x2c8]
  a4c86c:	00 
  a4c86d:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4c873:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4c87a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c880:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4c886:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c88c:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a4c892:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a4c899:	0e 
  a4c89a:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4c8a0:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4c8a6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm2
  a4c8ad:	17 
  a4c8ae:	62 f1 7c 48 10 97 d0 	vmovups zmm2,ZMMWORD PTR [rdi+0x2d0]
  a4c8b5:	02 00 00 
  a4c8b8:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a4c8bf:	00 
  a4c8c0:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a4c8c7:	00 00 10 
  a4c8ca:	c5 fc 10 8f 10 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x310]
  a4c8d1:	00 
  a4c8d2:	c4 e2 79 18 9f 38 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x338]
  a4c8d9:	00 00 
  a4c8db:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4c8e1:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a4c8e8:	00 00 30 
  a4c8eb:	c5 fb 10 9f 40 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x340]
  a4c8f2:	00 
  a4c8f3:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4c8f9:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4c900:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c906:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4c90c:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c912:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4c919:	fe 
  a4c91a:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a4c920:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a4c927:	ff 
  a4c928:	62 e1 7c 48 10 b7 48 	vmovups zmm22,ZMMWORD PTR [rdi+0x348]
  a4c92f:	03 00 00 
  a4c932:	c5 f8 10 87 a8 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3a8]
  a4c939:	00 
  a4c93a:	c5 fc 10 8f 88 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x388]
  a4c941:	00 
  a4c942:	c4 e3 79 21 87 ac 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ac],0x10
  a4c949:	00 00 10 
  a4c94c:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a4c953:	00 00 
  a4c955:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4c95b:	c4 e3 79 21 87 b4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3b4],0x30
  a4c962:	00 00 30 
  a4c965:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a4c96c:	00 
  a4c96d:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4c973:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4c97a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c980:	62 31 7c 48 28 f6    	vmovaps zmm14,zmm22
  a4c986:	62 72 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm0
  a4c98c:	62 e2 65 40 7f f0    	vpermt2ps zmm22,zmm19,zmm0
  a4c992:	62 e1 7c 48 10 57 0f 	vmovups zmm18,ZMMWORD PTR [rdi+0x3c0]
  a4c999:	c5 f8 10 87 20 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x420]
  a4c9a0:	00 
  a4c9a1:	c4 e3 79 21 87 24 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x424],0x10
  a4c9a8:	00 00 10 
  a4c9ab:	c4 e2 79 18 8f 28 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x428]
  a4c9b2:	00 00 
  a4c9b4:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a4c9bb:	00 
  a4c9bc:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4c9c2:	c4 e3 79 21 87 2c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x42c],0x30
  a4c9c9:	00 00 30 
  a4c9cc:	c5 fb 10 8f 30 04 00 	vmovsd xmm1,QWORD PTR [rdi+0x430]
  a4c9d3:	00 
  a4c9d4:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4c9da:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4c9e1:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4c9e7:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4c9ed:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4c9f3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a4c9fa:	04 
  a4c9fb:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a4ca01:	c5 f8 10 87 98 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x498]
  a4ca08:	00 
  a4ca09:	c4 e3 79 21 87 9c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x49c],0x10
  a4ca10:	00 00 10 
  a4ca13:	c4 e2 79 18 8f a0 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4a0]
  a4ca1a:	00 00 
  a4ca1c:	62 e1 7c 48 10 a7 38 	vmovups zmm20,ZMMWORD PTR [rdi+0x438]
  a4ca23:	04 00 00 
  a4ca26:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4ca2c:	c4 e3 79 21 87 a4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4a4],0x30
  a4ca33:	00 00 30 
  a4ca36:	c5 fc 10 8f 78 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x478]
  a4ca3d:	00 
  a4ca3e:	c5 fb 10 9f a8 04 00 	vmovsd xmm3,QWORD PTR [rdi+0x4a8]
  a4ca45:	00 
  a4ca46:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4ca4c:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4ca53:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4ca59:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a4ca5f:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a4ca65:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a4ca6b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a4ca72:	0d 
  a4ca73:	62 e2 65 40 7f e0    	vpermt2ps zmm20,zmm19,zmm0
  a4ca79:	62 e1 7c 48 10 af b0 	vmovups zmm21,ZMMWORD PTR [rdi+0x4b0]
  a4ca80:	04 00 00 
  a4ca83:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a4ca8a:	00 
  a4ca8b:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a4ca92:	00 00 10 
  a4ca95:	c5 fc 10 8f f0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4f0]
  a4ca9c:	00 
  a4ca9d:	c4 e2 79 18 9f 18 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x518]
  a4caa4:	00 00 
  a4caa6:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4caac:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a4cab3:	00 00 30 
  a4cab6:	c5 fb 10 9f 20 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x520]
  a4cabd:	00 
  a4cabe:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4cac4:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4cacb:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4cad1:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a4cad7:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a4cadd:	62 e2 65 40 7f e8    	vpermt2ps zmm21,zmm19,zmm0
  a4cae3:	62 61 7c 48 10 8f 28 	vmovups zmm25,ZMMWORD PTR [rdi+0x528]
  a4caea:	05 00 00 
  a4caed:	c5 f8 10 87 88 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x588]
  a4caf4:	00 
  a4caf5:	c5 fc 10 8f 68 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x568]
  a4cafc:	00 
  a4cafd:	c4 e3 79 21 87 8c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x58c],0x10
  a4cb04:	00 00 10 
  a4cb07:	c4 e2 79 18 9f 90 05 	vbroadcastss xmm3,DWORD PTR [rdi+0x590]
  a4cb0e:	00 00 
  a4cb10:	c4 e3 61 0c c0 03    	vblendps xmm0,xmm3,xmm0,0x3
  a4cb16:	c4 e3 79 21 87 94 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x594],0x30
  a4cb1d:	00 00 30 
  a4cb20:	c5 fb 10 9f 98 05 00 	vmovsd xmm3,QWORD PTR [rdi+0x598]
  a4cb27:	00 
  a4cb28:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4cb2e:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4cb35:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4cb3b:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a4cb41:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a4cb47:	62 62 65 40 7f c8    	vpermt2ps zmm25,zmm19,zmm0
  a4cb4d:	62 61 7c 48 10 87 a0 	vmovups zmm24,ZMMWORD PTR [rdi+0x5a0]
  a4cb54:	05 00 00 
  a4cb57:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a4cb5e:	00 
  a4cb5f:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a4cb66:	00 00 10 
  a4cb69:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a4cb70:	00 00 
  a4cb72:	c5 fc 10 9f e0 05 00 	vmovups ymm3,YMMWORD PTR [rdi+0x5e0]
  a4cb79:	00 
  a4cb7a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4cb80:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a4cb87:	00 00 30 
  a4cb8a:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a4cb91:	00 
  a4cb92:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4cb98:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4cb9f:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4cba5:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a4cbab:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a4cbb1:	62 62 65 40 7f c0    	vpermt2ps zmm24,zmm19,zmm0
  a4cbb7:	c5 f8 10 87 78 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x678]
  a4cbbe:	00 
  a4cbbf:	c4 e3 79 21 87 7c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x67c],0x10
  a4cbc6:	00 00 10 
  a4cbc9:	c4 e2 79 18 8f 80 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x680]
  a4cbd0:	00 00 
  a4cbd2:	62 61 7c 48 10 a7 18 	vmovups zmm28,ZMMWORD PTR [rdi+0x618]
  a4cbd9:	06 00 00 
  a4cbdc:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4cbe2:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x30
  a4cbe9:	00 00 30 
  a4cbec:	c5 fc 10 8f 58 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x658]
  a4cbf3:	00 
  a4cbf4:	c5 fb 10 9f 88 06 00 	vmovsd xmm3,QWORD PTR [rdi+0x688]
  a4cbfb:	00 
  a4cbfc:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4cc02:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4cc09:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4cc0f:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a4cc15:	62 62 55 48 7f e8    	vpermt2ps zmm29,zmm5,zmm0
  a4cc1b:	c5 f8 10 8f f0 06 00 	vmovups xmm1,XMMWORD PTR [rdi+0x6f0]
  a4cc22:	00 
  a4cc23:	c4 e3 71 21 8f f4 06 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x6f4],0x10
  a4cc2a:	00 00 10 
  a4cc2d:	c4 e2 79 18 9f f8 06 	vbroadcastss xmm3,DWORD PTR [rdi+0x6f8]
  a4cc34:	00 00 
  a4cc36:	62 62 65 40 7f e0    	vpermt2ps zmm28,zmm19,zmm0
  a4cc3c:	c4 e3 61 0c c1 03    	vblendps xmm0,xmm3,xmm1,0x3
  a4cc42:	c4 e3 79 21 87 fc 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6fc],0x30
  a4cc49:	00 00 30 
  a4cc4c:	c5 f8 10 8f 68 07 00 	vmovups xmm1,XMMWORD PTR [rdi+0x768]
  a4cc53:	00 
  a4cc54:	c4 e3 71 21 8f 6c 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x76c],0x10
  a4cc5b:	00 00 10 
  a4cc5e:	c5 fb 10 9f 00 07 00 	vmovsd xmm3,QWORD PTR [rdi+0x700]
  a4cc65:	00 
  a4cc66:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a4cc6c:	c5 fc 10 9f d0 06 00 	vmovups ymm3,YMMWORD PTR [rdi+0x6d0]
  a4cc73:	00 
  a4cc74:	c4 e2 79 18 a7 70 07 	vbroadcastss xmm4,DWORD PTR [rdi+0x770]
  a4cc7b:	00 00 
  a4cc7d:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a4cc84:	c4 e3 59 0c c9 03    	vblendps xmm1,xmm4,xmm1,0x3
  a4cc8a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4cc90:	62 61 7c 48 10 b7 90 	vmovups zmm30,ZMMWORD PTR [rdi+0x690]
  a4cc97:	06 00 00 
  a4cc9a:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a4cca0:	62 62 55 48 7f f8    	vpermt2ps zmm31,zmm5,zmm0
  a4cca6:	c4 e3 71 21 8f 74 07 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x774],0x30
  a4ccad:	00 00 30 
  a4ccb0:	62 62 65 40 7f f0    	vpermt2ps zmm30,zmm19,zmm0
  a4ccb6:	c5 fb 10 87 78 07 00 	vmovsd xmm0,QWORD PTR [rdi+0x778]
  a4ccbd:	00 
  a4ccbe:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  a4ccc4:	c5 fc 10 8f 48 07 00 	vmovups ymm1,YMMWORD PTR [rdi+0x748]
  a4cccb:	00 
  a4cccc:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4ccd3:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4ccd9:	62 71 7c 48 10 97 08 	vmovups zmm10,ZMMWORD PTR [rdi+0x708]
  a4cce0:	07 00 00 
  a4cce3:	62 f2 2d 48 77 e8    	vpermi2ps zmm5,zmm10,zmm0
  a4cce9:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a4ccef:	62 a1 44 48 5c cc    	vsubps zmm17,zmm7,zmm20
  a4ccf5:	62 81 3c 48 5c c5    	vsubps zmm16,zmm8,zmm29
  a4ccfb:	62 b1 74 40 58 f8    	vaddps zmm7,zmm17,zmm16
  a4cd01:	62 51 4c 48 5c e3    	vsubps zmm12,zmm6,zmm11
  a4cd07:	62 51 1c 40 5c d9    	vsubps zmm11,zmm28,zmm9
  a4cd0d:	62 72 7d 48 18 05 4d 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff62894d]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a4cd14:	89 62 ff 
  a4cd17:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a4cd1d:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a4cd23:	62 f2 7d 48 18 35 d3 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6289d3]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a4cd2a:	89 62 ff 
  a4cd2d:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a4cd33:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a4cd3a:	0a 
  a4cd3b:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a4cd41:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a4cd47:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a4cd4e:	09 
  a4cd4f:	62 91 04 48 5c e1    	vsubps zmm4,zmm15,zmm25
  a4cd55:	62 f1 0c 48 5c dd    	vsubps zmm3,zmm14,zmm5
  a4cd5b:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a4cd61:	62 91 14 48 5c d2    	vsubps zmm2,zmm13,zmm26
  a4cd67:	62 b1 2c 48 5c ce    	vsubps zmm1,zmm10,zmm22
  a4cd6d:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a4cd73:	62 e1 44 48 59 de    	vmulps zmm19,zmm7,zmm6
  a4cd79:	62 c2 7d 48 b8 d8    	vfmadd231ps zmm19,zmm0,zmm8
  a4cd7f:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a4cd85:	62 f2 4d 48 bc f8    	vfnmadd231ps zmm7,zmm6,zmm0
  a4cd8b:	62 b1 74 40 5c c0    	vsubps zmm0,zmm17,zmm16
  a4cd91:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a4cd97:	62 f1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm3
  a4cd9d:	62 71 6c 48 5c e1    	vsubps zmm12,zmm2,zmm1
  a4cda3:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a4cda9:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a4cdaf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a4cdb6:	08 
  a4cdb7:	62 d1 24 48 59 c8    	vmulps zmm1,zmm11,zmm8
  a4cdbd:	62 f2 4d 48 bc c8    	vfnmadd231ps zmm1,zmm6,zmm0
  a4cdc3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a4cdca:	0f 
  a4cdcb:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a4cdd1:	62 f2 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm6
  a4cdd7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a4cdde:	07 
  a4cddf:	62 51 5c 48 59 c8    	vmulps zmm9,zmm4,zmm8
  a4cde5:	62 72 1d 48 bc ce    	vfnmadd231ps zmm9,zmm12,zmm6
  a4cdeb:	62 f1 5c 40 58 64 24 	vaddps zmm4,zmm20,ZMMWORD PTR [rsp+0x2c0]
  a4cdf2:	0b 
  a4cdf3:	62 f1 1c 40 58 74 24 	vaddps zmm6,zmm28,ZMMWORD PTR [rsp+0x5c0]
  a4cdfa:	17 
  a4cdfb:	62 11 04 48 58 c1    	vaddps zmm8,zmm15,zmm25
  a4ce01:	62 51 4c 40 58 d2    	vaddps zmm10,zmm22,zmm10
  a4ce07:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a4ce0e:	0c 
  a4ce0f:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x340]
  a4ce16:	0d 
  a4ce17:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x380]
  a4ce1e:	0e 
  a4ce1f:	62 11 14 48 58 ea    	vaddps zmm13,zmm13,zmm26
  a4ce25:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a4ce2b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a4ce32:	02 
  a4ce33:	62 31 7c 48 58 f2    	vaddps zmm14,zmm0,zmm18
  a4ce39:	62 a1 7c 48 5c c2    	vsubps zmm16,zmm0,zmm18
  a4ce3f:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a4ce46:	62 81 7c 48 58 cb    	vaddps zmm17,zmm0,zmm27
  a4ce4c:	62 81 7c 48 5c d3    	vsubps zmm18,zmm0,zmm27
  a4ce52:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a4ce59:	06 
  a4ce5a:	62 a1 7c 48 58 e5    	vaddps zmm20,zmm0,zmm21
  a4ce60:	62 a1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm21
  a4ce66:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a4ce6d:	01 
  a4ce6e:	62 a1 7c 48 58 f7    	vaddps zmm22,zmm0,zmm23
  a4ce74:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a4ce7a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a4ce81:	fe 
  a4ce82:	62 01 7c 48 58 cf    	vaddps zmm25,zmm0,zmm31
  a4ce88:	62 01 7c 48 5c d7    	vsubps zmm26,zmm0,zmm31
  a4ce8e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a4ce95:	ff 
  a4ce96:	62 01 7c 48 58 de    	vaddps zmm27,zmm0,zmm30
  a4ce9c:	62 01 7c 48 5c e6    	vsubps zmm28,zmm0,zmm30
  a4cea2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a4cea9:	03 
  a4ceaa:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a4ceb1:	04 
  a4ceb2:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a4ceb8:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a4cebe:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a4cec5:	05 
  a4cec6:	62 01 7c 48 58 f8    	vaddps zmm31,zmm0,zmm24
  a4cecc:	62 61 3c 40 5c c0    	vsubps zmm24,zmm24,zmm0
  a4ced2:	62 b1 54 40 58 c7    	vaddps zmm0,zmm21,zmm23
  a4ced8:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a4cede:	62 81 2c 40 5c fc    	vsubps zmm23,zmm26,zmm28
  a4cee4:	62 01 1c 40 58 d2    	vaddps zmm26,zmm28,zmm26
  a4ceea:	62 01 0c 48 58 e7    	vaddps zmm28,zmm14,zmm31
  a4cef0:	62 91 0c 48 5c df    	vsubps zmm3,zmm14,zmm31
  a4cef6:	62 01 4c 40 58 f9    	vaddps zmm31,zmm22,zmm25
  a4cefc:	62 91 4c 40 5c c9    	vsubps zmm1,zmm22,zmm25
  a4cf02:	62 61 5c 48 58 ce    	vaddps zmm25,zmm4,zmm6
  a4cf08:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a4cf0e:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a4cf14:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a4cf1a:	62 71 14 48 58 e5    	vaddps zmm12,zmm13,zmm5
  a4cf20:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a4cf26:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a4cf2c:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a4cf32:	62 31 14 40 58 d1    	vaddps zmm10,zmm29,zmm17
  a4cf38:	62 a1 14 40 5c c9    	vsubps zmm17,zmm29,zmm17
  a4cf3e:	62 01 5c 40 58 eb    	vaddps zmm29,zmm20,zmm27
  a4cf44:	62 a1 24 40 5c e4    	vsubps zmm20,zmm27,zmm20
  a4cf4a:	62 41 5c 48 58 db    	vaddps zmm27,zmm4,zmm11
  a4cf50:	62 f1 24 48 5c e4    	vsubps zmm4,zmm11,zmm4
  a4cf56:	62 51 54 48 5c d8    	vsubps zmm11,zmm5,zmm8
  a4cf5c:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a4cf62:	62 72 7d 48 18 05 30 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff628430]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a4cf69:	84 62 ff 
  a4cf6c:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a4cf72:	62 c1 44 40 59 f8    	vmulps zmm23,zmm23,zmm8
  a4cf78:	62 c1 54 40 59 e8    	vmulps zmm21,zmm21,zmm8
  a4cf7e:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a4cf84:	62 41 24 40 59 d8    	vmulps zmm27,zmm27,zmm8
  a4cf8a:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a4cf90:	62 d1 5c 48 59 d0    	vmulps zmm2,zmm4,zmm8
  a4cf96:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a4cf9c:	62 31 7c 40 58 c2    	vaddps zmm8,zmm16,zmm18
  a4cfa2:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a4cfa8:	62 81 54 40 5c d2    	vsubps zmm18,zmm21,zmm26
  a4cfae:	62 81 54 40 58 ea    	vaddps zmm21,zmm21,zmm26
  a4cfb4:	62 01 3c 40 58 d6    	vaddps zmm26,zmm24,zmm30
  a4cfba:	62 01 0c 40 5c c0    	vsubps zmm24,zmm30,zmm24
  a4cfc0:	62 21 7c 48 58 f7    	vaddps zmm30,zmm0,zmm23
  a4cfc6:	62 e1 44 40 5c f0    	vsubps zmm22,zmm23,zmm0
  a4cfcc:	62 81 1c 40 58 fd    	vaddps zmm23,zmm28,zmm29
  a4cfd2:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a4cfd8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a4cfdf:	06 
  a4cfe0:	62 41 4c 48 58 ec    	vaddps zmm29,zmm6,zmm12
  a4cfe6:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a4cfec:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a4cff3:	05 
  a4cff4:	62 11 2c 48 58 f7    	vaddps zmm14,zmm10,zmm31
  a4cffa:	62 91 2c 48 5c c7    	vsubps zmm0,zmm10,zmm31
  a4d000:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a4d007:	ff 
  a4d008:	62 51 34 40 58 e5    	vaddps zmm12,zmm25,zmm13
  a4d00e:	62 91 14 48 5c c1    	vsubps zmm0,zmm13,zmm25
  a4d014:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a4d01b:	fe 
  a4d01c:	62 01 3c 48 58 ce    	vaddps zmm25,zmm8,zmm30
  a4d022:	62 01 3c 48 5c f6    	vsubps zmm30,zmm8,zmm30
  a4d028:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a4d02f:	09 
  a4d030:	62 71 7c 48 58 c7    	vaddps zmm8,zmm0,zmm7
  a4d036:	62 61 7c 48 5c e7    	vsubps zmm28,zmm0,zmm7
  a4d03c:	62 21 2c 40 58 fa    	vaddps zmm31,zmm26,zmm18
  a4d042:	62 a1 2c 40 5c d2    	vsubps zmm18,zmm26,zmm18
  a4d048:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a4d04f:	0a 
  a4d050:	62 21 7c 48 58 d3    	vaddps zmm26,zmm0,zmm19
  a4d056:	62 e1 64 40 5c d8    	vsubps zmm19,zmm19,zmm0
  a4d05c:	62 f1 64 48 58 e1    	vaddps zmm4,zmm3,zmm1
  a4d062:	62 71 64 48 5c f9    	vsubps zmm15,zmm3,zmm1
  a4d068:	62 f1 6c 48 5c dd    	vsubps zmm3,zmm2,zmm5
  a4d06e:	62 71 6c 48 58 ed    	vaddps zmm13,zmm2,zmm5
  a4d074:	62 b1 5c 40 58 d1    	vaddps zmm2,zmm20,zmm17
  a4d07a:	62 a1 74 40 5c e4    	vsubps zmm20,zmm17,zmm20
  a4d080:	62 c1 24 40 58 cb    	vaddps zmm17,zmm27,zmm11
  a4d086:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a4d08c:	62 b1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm21
  a4d092:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a4d098:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x3c0]
  a4d09f:	0f 
  a4d0a0:	62 d1 54 48 58 c1    	vaddps zmm0,zmm5,zmm9
  a4d0a6:	62 d1 54 48 5c f9    	vsubps zmm7,zmm5,zmm9
  a4d0ac:	62 31 3c 40 58 ce    	vaddps zmm9,zmm24,zmm22
  a4d0b2:	62 b1 3c 40 5c f6    	vsubps zmm6,zmm24,zmm22
  a4d0b8:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x200]
  a4d0bf:	08 
  a4d0c0:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x1c0]
  a4d0c7:	07 
  a4d0c8:	62 41 54 48 5c c2    	vsubps zmm24,zmm5,zmm10
  a4d0ce:	62 d1 54 48 58 ea    	vaddps zmm5,zmm5,zmm10
  a4d0d4:	62 41 44 40 58 dc    	vaddps zmm27,zmm23,zmm12
  a4d0da:	62 51 44 40 5c d4    	vsubps zmm10,zmm23,zmm12
  a4d0e0:	62 11 0c 48 58 e5    	vaddps zmm12,zmm14,zmm29
  a4d0e6:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm12
  a4d0ed:	01 
  a4d0ee:	62 81 0c 48 5c ed    	vsubps zmm21,zmm14,zmm29
  a4d0f4:	62 81 34 40 58 fa    	vaddps zmm23,zmm25,zmm26
  a4d0fa:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a4d100:	62 51 04 40 58 e0    	vaddps zmm12,zmm31,zmm8
  a4d106:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm12
  a4d10d:	03 
  a4d10e:	62 51 04 40 5c c0    	vsubps zmm8,zmm31,zmm8
  a4d114:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm8
  a4d11b:	04 
  a4d11c:	62 31 5c 48 58 e1    	vaddps zmm12,zmm4,zmm17
  a4d122:	62 b1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm17
  a4d128:	62 71 6c 48 58 c3    	vaddps zmm8,zmm2,zmm3
  a4d12e:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm8
  a4d135:	02 
  a4d136:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a4d13c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a4d143:	0a 
  a4d144:	62 81 74 48 58 f0    	vaddps zmm22,zmm1,zmm24
  a4d14a:	62 91 74 48 5c d0    	vsubps zmm2,zmm1,zmm24
  a4d150:	62 61 34 48 58 c0    	vaddps zmm24,zmm9,zmm0
  a4d156:	62 f1 34 48 5c c8    	vsubps zmm1,zmm9,zmm0
  a4d15c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a4d163:	06 
  a4d164:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a4d16b:	05 
  a4d16c:	62 61 7c 48 58 d3    	vaddps zmm26,zmm0,zmm3
  a4d172:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a4d178:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a4d17f:	ff 
  a4d180:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a4d187:	fe 
  a4d188:	62 d1 0c 48 58 d8    	vaddps zmm3,zmm14,zmm8
  a4d18e:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a4d195:	62 d1 3c 48 5c de    	vsubps zmm3,zmm8,zmm14
  a4d19b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a4d1a2:	09 
  a4d1a3:	62 81 0c 40 58 cc    	vaddps zmm17,zmm30,zmm28
  a4d1a9:	62 01 0c 40 5c f4    	vsubps zmm30,zmm30,zmm28
  a4d1af:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a4d1b5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a4d1bc:	ff 
  a4d1bd:	62 b1 6c 40 5c db    	vsubps zmm3,zmm18,zmm19
  a4d1c3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a4d1ca:	08 
  a4d1cb:	62 51 04 48 58 c5    	vaddps zmm8,zmm15,zmm13
  a4d1d1:	62 41 04 48 5c e5    	vsubps zmm28,zmm15,zmm13
  a4d1d7:	62 d1 5c 40 58 db    	vaddps zmm3,zmm20,zmm11
  a4d1dd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a4d1e4:	fe 
  a4d1e5:	62 d1 5c 40 5c db    	vsubps zmm3,zmm20,zmm11
  a4d1eb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a4d1f2:	07 
  a4d1f3:	62 71 7c 40 58 ef    	vaddps zmm13,zmm16,zmm7
  a4d1f9:	62 71 7c 40 5c df    	vsubps zmm11,zmm16,zmm7
  a4d1ff:	62 e1 4c 48 5c c5    	vsubps zmm16,zmm6,zmm5
  a4d205:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a4d20b:	62 71 7c 48 28 35 6b 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff679d6b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4d212:	9d 67 ff 
  a4d215:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a4d21b:	62 52 0d 48 7f fa    	vpermt2ps zmm15,zmm14,zmm10
  a4d221:	62 61 7c 48 28 2d 95 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff679d95]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4d228:	9d 67 ff 
  a4d22b:	62 42 15 40 7f da    	vpermt2ps zmm27,zmm29,zmm10
  a4d231:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a4d237:	62 12 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm25
  a4d23d:	62 82 15 40 7f f9    	vpermt2ps zmm23,zmm29,zmm25
  a4d243:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a4d249:	62 72 0d 48 7f e4    	vpermt2ps zmm12,zmm14,zmm4
  a4d24f:	62 f2 15 40 7f dc    	vpermt2ps zmm3,zmm29,zmm4
  a4d255:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a4d25c:	06 
  a4d25d:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a4d263:	62 e2 0d 48 7f f2    	vpermt2ps zmm22,zmm14,zmm2
  a4d269:	62 f2 15 40 7f da    	vpermt2ps zmm3,zmm29,zmm2
  a4d26f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a4d276:	05 
  a4d277:	62 01 7c 48 28 fa    	vmovaps zmm31,zmm26
  a4d27d:	62 62 0d 48 7f f8    	vpermt2ps zmm31,zmm14,zmm0
  a4d283:	62 62 15 40 7f d0    	vpermt2ps zmm26,zmm29,zmm0
  a4d289:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a4d28f:	62 82 0d 48 7f d6    	vpermt2ps zmm18,zmm14,zmm30
  a4d295:	62 82 15 40 7f ce    	vpermt2ps zmm17,zmm29,zmm30
  a4d29b:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a4d2a1:	62 82 0d 48 7f dc    	vpermt2ps zmm19,zmm14,zmm28
  a4d2a7:	62 12 15 40 7f c4    	vpermt2ps zmm8,zmm29,zmm28
  a4d2ad:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a4d2b3:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a4d2b9:	62 c2 0d 48 7f e3    	vpermt2ps zmm20,zmm14,zmm11
  a4d2bf:	62 d2 15 40 7f c3    	vpermt2ps zmm0,zmm29,zmm11
  a4d2c5:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a4d2cb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a4d2d2:	01 
  a4d2d3:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a4d2d9:	62 b2 0d 48 7f dd    	vpermt2ps zmm3,zmm14,zmm21
  a4d2df:	62 b2 15 40 7f c5    	vpermt2ps zmm0,zmm29,zmm21
  a4d2e5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a4d2ec:	01 
  a4d2ed:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a4d2f4:	03 
  a4d2f5:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a4d2fb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a4d302:	04 
  a4d303:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a4d309:	62 f2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm0
  a4d30f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a4d316:	03 
  a4d317:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a4d31e:	02 
  a4d31f:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a4d325:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a4d32c:	0a 
  a4d32d:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a4d333:	62 f2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm0
  a4d339:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a4d340:	02 
  a4d341:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a4d347:	62 62 0d 48 7f c1    	vpermt2ps zmm24,zmm14,zmm1
  a4d34d:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a4d353:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a4d35a:	04 
  a4d35b:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a4d362:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a4d368:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a4d36f:	09 
  a4d370:	62 f2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm1
  a4d376:	62 f2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm1
  a4d37c:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a4d382:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a4d389:	ff 
  a4d38a:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a4d390:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x200]
  a4d397:	08 
  a4d398:	62 f2 0d 48 7f f7    	vpermt2ps zmm6,zmm14,zmm7
  a4d39e:	62 f2 15 40 7f e7    	vpermt2ps zmm4,zmm29,zmm7
  a4d3a4:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a4d3aa:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a4d3b1:	fe 
  a4d3b2:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a4d3b8:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  a4d3bf:	07 
  a4d3c0:	62 42 0d 48 7f c9    	vpermt2ps zmm25,zmm14,zmm9
  a4d3c6:	62 d2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm9
  a4d3cc:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a4d3d2:	62 72 7d 40 77 f5    	vpermi2ps zmm14,zmm16,zmm5
  a4d3d8:	62 e2 15 40 7f c5    	vpermt2ps zmm16,zmm29,zmm5
  a4d3de:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm16
  a4d3e5:	fe 
  a4d3e6:	62 61 7c 48 28 25 10 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff679b10]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4d3ed:	9b 67 ff 
  a4d3f0:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a4d3f6:	62 92 1d 40 7f ef    	vpermt2ps zmm5,zmm28,zmm31
  a4d3fc:	62 61 7c 48 28 2d 3a 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff679b3a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4d403:	9b 67 ff 
  a4d406:	62 12 15 40 7f ff    	vpermt2ps zmm15,zmm29,zmm31
  a4d40c:	62 71 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm15
  a4d413:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a4d419:	62 32 1d 40 7f d2    	vpermt2ps zmm10,zmm28,zmm18
  a4d41f:	62 b2 15 40 7f e2    	vpermt2ps zmm4,zmm29,zmm18
  a4d425:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a4d42c:	ff 
  a4d42d:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a4d433:	62 32 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm19
  a4d439:	62 32 15 40 7f e3    	vpermt2ps zmm12,zmm29,zmm19
  a4d43f:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  a4d445:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a4d44b:	62 a2 1d 40 7f dc    	vpermt2ps zmm19,zmm28,zmm20
  a4d451:	62 a2 15 40 7f ec    	vpermt2ps zmm21,zmm29,zmm20
  a4d457:	62 81 7c 48 28 f3    	vmovaps zmm22,zmm27
  a4d45d:	62 02 1d 40 7f da    	vpermt2ps zmm27,zmm28,zmm26
  a4d463:	62 82 15 40 7f f2    	vpermt2ps zmm22,zmm29,zmm26
  a4d469:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a4d46f:	62 a2 1d 40 7f f9    	vpermt2ps zmm23,zmm28,zmm17
  a4d475:	62 22 15 40 7f d1    	vpermt2ps zmm26,zmm29,zmm17
  a4d47b:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x180]
  a4d482:	06 
  a4d483:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a4d489:	62 c2 1d 40 7f c8    	vpermt2ps zmm17,zmm28,zmm8
  a4d48f:	62 c2 15 40 7f c0    	vpermt2ps zmm16,zmm29,zmm8
  a4d495:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x140]
  a4d49c:	05 
  a4d49d:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a4d4a3:	62 12 1d 40 7f c6    	vpermt2ps zmm8,zmm28,zmm30
  a4d4a9:	62 12 15 40 7f ee    	vpermt2ps zmm13,zmm29,zmm30
  a4d4af:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a4d4b5:	62 62 1d 40 7f f0    	vpermt2ps zmm30,zmm28,zmm0
  a4d4bb:	62 f2 15 40 7f d8    	vpermt2ps zmm3,zmm29,zmm0
  a4d4c1:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a4d4c7:	62 e2 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm6
  a4d4cd:	62 f2 15 40 7f d6    	vpermt2ps zmm2,zmm29,zmm6
  a4d4d3:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a4d4d9:	62 82 1d 40 7f e1    	vpermt2ps zmm20,zmm28,zmm25
  a4d4df:	62 12 15 40 7f d9    	vpermt2ps zmm11,zmm29,zmm25
  a4d4e5:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a4d4eb:	62 d2 1d 40 7f e6    	vpermt2ps zmm4,zmm28,zmm14
  a4d4f1:	62 42 15 40 7f c6    	vpermt2ps zmm24,zmm29,zmm14
  a4d4f7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a4d4fe:	01 
  a4d4ff:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a4d505:	62 62 1d 40 7f f9    	vpermt2ps zmm31,zmm28,zmm1
  a4d50b:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a4d511:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a4d518:	01 
  a4d519:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a4d520:	03 
  a4d521:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a4d527:	62 62 1d 40 7f cf    	vpermt2ps zmm25,zmm28,zmm7
  a4d52d:	62 f2 15 40 7f c7    	vpermt2ps zmm0,zmm29,zmm7
  a4d533:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a4d53a:	03 
  a4d53b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a4d542:	02 
  a4d543:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a4d549:	62 d2 1d 40 7f c9    	vpermt2ps zmm1,zmm28,zmm9
  a4d54f:	62 d2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm9
  a4d555:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a4d55c:	02 
  a4d55d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a4d564:	04 
  a4d565:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a4d56c:	fe 
  a4d56d:	62 62 7d 48 77 e6    	vpermi2ps zmm28,zmm0,zmm6
  a4d573:	62 f2 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm6
  a4d579:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a4d57f:	62 d1 d5 48 14 c7    	vunpcklpd zmm0,zmm5,zmm15
  a4d585:	62 51 d5 48 15 cf    	vunpckhpd zmm9,zmm5,zmm15
  a4d58b:	62 b1 ad 48 14 eb    	vunpcklpd zmm5,zmm10,zmm19
  a4d591:	62 b1 ad 48 15 fb    	vunpckhpd zmm7,zmm10,zmm19
  a4d597:	62 71 7c 48 10 14 24 	vmovups zmm10,ZMMWORD PTR [rsp]
  a4d59e:	62 d1 ad 48 14 f4    	vunpcklpd zmm6,zmm10,zmm12
  a4d5a4:	62 51 ad 48 15 f4    	vunpckhpd zmm14,zmm10,zmm12
  a4d5aa:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a4d5b1:	ff 
  a4d5b2:	62 31 ad 48 14 e5    	vunpcklpd zmm12,zmm10,zmm21
  a4d5b8:	62 31 ad 48 15 fd    	vunpckhpd zmm15,zmm10,zmm21
  a4d5be:	62 31 a5 40 14 d1    	vunpcklpd zmm10,zmm27,zmm17
  a4d5c4:	62 a1 a5 40 15 c9    	vunpckhpd zmm17,zmm27,zmm17
  a4d5ca:	62 c1 c5 40 14 e8    	vunpcklpd zmm21,zmm23,zmm8
  a4d5d0:	62 41 c5 40 15 d8    	vunpckhpd zmm27,zmm23,zmm8
  a4d5d6:	62 a1 cd 40 14 d8    	vunpcklpd zmm19,zmm22,zmm16
  a4d5dc:	62 a1 cd 40 15 c0    	vunpckhpd zmm16,zmm22,zmm16
  a4d5e2:	62 c1 ad 40 14 f5    	vunpcklpd zmm22,zmm26,zmm13
  a4d5e8:	62 41 ad 40 15 d5    	vunpckhpd zmm26,zmm26,zmm13
  a4d5ee:	62 71 7c 48 28 05 08 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff679808]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4d5f5:	98 67 ff 
  a4d5f8:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a4d5fe:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a4d604:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a4d60b:	06 
  a4d60c:	62 f1 7c 48 28 05 2a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67982a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4d613:	98 67 ff 
  a4d616:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a4d61c:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm13
  a4d623:	0c 
  a4d624:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a4d62a:	62 f2 3d 48 7f ef    	vpermt2ps zmm5,zmm8,zmm7
  a4d630:	62 72 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm7
  a4d636:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a4d63d:	fe 
  a4d63e:	62 e1 7c 48 28 fe    	vmovaps zmm23,zmm6
  a4d644:	62 c2 3d 48 7f fc    	vpermt2ps zmm23,zmm8,zmm12
  a4d64a:	62 d2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm12
  a4d650:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a4d657:	ff 
  a4d658:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a4d65e:	62 52 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm15
  a4d664:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a4d66a:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a4d670:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a4d676:	62 32 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm21
  a4d67c:	62 32 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm21
  a4d682:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm10
  a4d689:	0b 
  a4d68a:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a4d690:	62 92 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm27
  a4d696:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a4d69d:	04 
  a4d69e:	62 82 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm27
  a4d6a4:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a4d6aa:	62 b2 3d 48 7f f6    	vpermt2ps zmm6,zmm8,zmm22
  a4d6b0:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm6
  a4d6b7:	0f 
  a4d6b8:	62 a2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm22
  a4d6be:	62 82 3d 48 7f c2    	vpermt2ps zmm16,zmm8,zmm26
  a4d6c4:	62 21 8d 40 14 d4    	vunpcklpd zmm26,zmm30,zmm20
  a4d6ca:	62 21 8d 40 15 dc    	vunpckhpd zmm27,zmm30,zmm20
  a4d6d0:	62 71 ed 40 14 e4    	vunpcklpd zmm12,zmm18,zmm4
  a4d6d6:	62 f1 ed 40 15 e4    	vunpckhpd zmm4,zmm18,zmm4
  a4d6dc:	62 c1 e5 48 14 d3    	vunpcklpd zmm18,zmm3,zmm11
  a4d6e2:	62 d1 e5 48 15 fb    	vunpckhpd zmm7,zmm3,zmm11
  a4d6e8:	62 91 ed 48 14 d8    	vunpcklpd zmm3,zmm2,zmm24
  a4d6ee:	62 81 ed 48 15 e8    	vunpckhpd zmm21,zmm2,zmm24
  a4d6f4:	62 61 85 40 14 f1    	vunpcklpd zmm30,zmm31,zmm1
  a4d6fa:	62 e1 85 40 15 e1    	vunpckhpd zmm20,zmm31,zmm1
  a4d700:	62 81 b5 40 14 f4    	vunpcklpd zmm22,zmm25,zmm28
  a4d706:	62 01 b5 40 15 c4    	vunpckhpd zmm24,zmm25,zmm28
  a4d70c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a4d713:	01 
  a4d714:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a4d71b:	02 
  a4d71c:	62 f1 f5 48 14 d6    	vunpcklpd zmm2,zmm1,zmm6
  a4d722:	62 71 f5 48 15 de    	vunpckhpd zmm11,zmm1,zmm6
  a4d728:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a4d72f:	03 
  a4d730:	62 01 f5 48 14 cd    	vunpcklpd zmm25,zmm1,zmm29
  a4d736:	62 01 f5 48 15 e5    	vunpckhpd zmm28,zmm1,zmm29
  a4d73c:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a4d742:	62 d2 3d 48 7f cc    	vpermt2ps zmm1,zmm8,zmm12
  a4d748:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4d74f:	03 
  a4d750:	62 42 7d 48 7f d4    	vpermt2ps zmm26,zmm0,zmm12
  a4d756:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a4d75c:	62 72 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm4
  a4d762:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a4d768:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4d76e:	62 f2 3d 48 7f cb    	vpermt2ps zmm1,zmm8,zmm3
  a4d774:	62 e2 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm3
  a4d77a:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4d780:	62 b2 3d 48 7f e5    	vpermt2ps zmm4,zmm8,zmm21
  a4d786:	62 b2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm21
  a4d78c:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a4d792:	62 b2 3d 48 7f de    	vpermt2ps zmm3,zmm8,zmm22
  a4d798:	62 22 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm22
  a4d79e:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a4d7a4:	62 82 3d 48 7f f0    	vpermt2ps zmm22,zmm8,zmm24
  a4d7aa:	62 82 7d 48 7f e0    	vpermt2ps zmm20,zmm0,zmm24
  a4d7b0:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a4d7b6:	62 92 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm25
  a4d7bc:	62 02 3d 48 7f c1    	vpermt2ps zmm24,zmm8,zmm25
  a4d7c2:	62 12 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm28
  a4d7c8:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a4d7cf:	62 71 7c 48 10 42 10 	vmovups zmm8,ZMMWORD PTR [rdx+0x400]
  a4d7d6:	62 d1 64 48 59 f0    	vmulps zmm6,zmm3,zmm8
  a4d7dc:	62 f2 05 48 b8 f0    	vfmadd231ps zmm6,zmm15,zmm0
  a4d7e2:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm6
  a4d7e9:	0a 
  a4d7ea:	62 d1 04 48 59 f0    	vmulps zmm6,zmm15,zmm8
  a4d7f0:	62 f2 7d 48 bc f3    	vfnmadd231ps zmm6,zmm0,zmm3
  a4d7f6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a4d7fd:	05 
  a4d7fe:	62 f1 7c 48 10 42 04 	vmovups zmm0,ZMMWORD PTR [rdx+0x100]
  a4d805:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a4d80c:	62 f1 1c 48 59 f0    	vmulps zmm6,zmm12,zmm0
  a4d812:	62 f2 55 48 b8 f3    	vfmadd231ps zmm6,zmm5,zmm3
  a4d818:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a4d81f:	09 
  a4d820:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a4d826:	62 d2 65 48 bc c4    	vfnmadd231ps zmm0,zmm3,zmm12
  a4d82c:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a4d833:	62 f1 7c 48 10 42 17 	vmovups zmm0,ZMMWORD PTR [rdx+0x5c0]
  a4d83a:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a4d841:	62 f1 5c 40 59 eb    	vmulps zmm5,zmm20,zmm3
  a4d847:	62 f2 75 40 b8 e8    	vfmadd231ps zmm5,zmm17,zmm0
  a4d84d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm5
  a4d854:	08 
  a4d855:	62 e1 74 40 59 cb    	vmulps zmm17,zmm17,zmm3
  a4d85b:	62 a2 7d 48 bc cc    	vfnmadd231ps zmm17,zmm0,zmm20
  a4d861:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm17
  a4d868:	15 
  a4d869:	62 f1 7c 48 10 42 1d 	vmovups zmm0,ZMMWORD PTR [rdx+0x740]
  a4d870:	62 f1 7c 48 10 5a 1c 	vmovups zmm3,ZMMWORD PTR [rdx+0x700]
  a4d877:	62 f1 24 48 59 eb    	vmulps zmm5,zmm11,zmm3
  a4d87d:	62 f2 7d 40 b8 e8    	vfmadd231ps zmm5,zmm16,zmm0
  a4d883:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  a4d88a:	07 
  a4d88b:	62 f1 7c 40 59 db    	vmulps zmm3,zmm16,zmm3
  a4d891:	62 d2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm11
  a4d897:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a4d89d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a4d8a4:	16 
  a4d8a5:	62 f1 7c 48 10 42 1b 	vmovups zmm0,ZMMWORD PTR [rdx+0x6c0]
  a4d8ac:	62 f1 7c 48 10 5a 1a 	vmovups zmm3,ZMMWORD PTR [rdx+0x680]
  a4d8b3:	62 f1 6c 48 59 eb    	vmulps zmm5,zmm2,zmm3
  a4d8b9:	62 f2 65 40 b8 e8    	vfmadd231ps zmm5,zmm19,zmm0
  a4d8bf:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a4d8c5:	62 f1 64 40 59 db    	vmulps zmm3,zmm19,zmm3
  a4d8cb:	62 f2 7d 48 bc da    	vfnmadd231ps zmm3,zmm0,zmm2
  a4d8d1:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a4d8d7:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a4d8de:	14 
  a4d8df:	62 f1 7c 48 10 42 0f 	vmovups zmm0,ZMMWORD PTR [rdx+0x3c0]
  a4d8e6:	62 f1 7c 48 10 52 0e 	vmovups zmm2,ZMMWORD PTR [rdx+0x380]
  a4d8ed:	62 f1 44 48 59 da    	vmulps zmm3,zmm7,zmm2
  a4d8f3:	62 f2 15 48 b8 d8    	vfmadd231ps zmm3,zmm13,zmm0
  a4d8f9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a4d900:	0e 
  a4d901:	62 71 14 48 59 e2    	vmulps zmm12,zmm13,zmm2
  a4d907:	62 72 7d 48 bc e7    	vfnmadd231ps zmm12,zmm0,zmm7
  a4d90d:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a4d914:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a4d91b:	62 f1 2c 40 59 d8    	vmulps zmm3,zmm26,zmm0
  a4d921:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a4d928:	0c 
  a4d929:	62 f2 55 48 b8 da    	vfmadd231ps zmm3,zmm5,zmm2
  a4d92f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a4d936:	0d 
  a4d937:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a4d93d:	62 92 6d 48 bc c2    	vfnmadd231ps zmm0,zmm2,zmm26
  a4d943:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a4d949:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a4d950:	10 
  a4d951:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a4d958:	62 f1 7c 48 10 52 08 	vmovups zmm2,ZMMWORD PTR [rdx+0x200]
  a4d95f:	62 71 74 48 59 d2    	vmulps zmm10,zmm1,zmm2
  a4d965:	62 72 45 40 b8 d0    	vfmadd231ps zmm10,zmm23,zmm0
  a4d96b:	62 f1 44 40 59 d2    	vmulps zmm2,zmm23,zmm2
  a4d971:	62 f2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm1
  a4d977:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a4d97d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a4d984:	13 
  a4d985:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a4d98c:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a4d993:	62 f1 34 48 59 d1    	vmulps zmm2,zmm9,zmm1
  a4d999:	62 f2 5d 48 bc d0    	vfnmadd231ps zmm2,zmm4,zmm0
  a4d99f:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a4d9a5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a4d9ac:	11 
  a4d9ad:	62 e1 5c 48 59 e1    	vmulps zmm20,zmm4,zmm1
  a4d9b3:	62 c2 7d 48 b8 e1    	vfmadd231ps zmm20,zmm0,zmm9
  a4d9b9:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a4d9c0:	62 f1 7c 48 10 4a 12 	vmovups zmm1,ZMMWORD PTR [rdx+0x480]
  a4d9c7:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a4d9ce:	0b 
  a4d9cf:	62 f1 6c 48 59 d9    	vmulps zmm3,zmm2,zmm1
  a4d9d5:	62 f2 0d 40 bc d8    	vfnmadd231ps zmm3,zmm30,zmm0
  a4d9db:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a4d9e1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a4d9e8:	12 
  a4d9e9:	62 61 0c 40 59 c9    	vmulps zmm25,zmm30,zmm1
  a4d9ef:	62 62 7d 48 b8 ca    	vfmadd231ps zmm25,zmm0,zmm2
  a4d9f5:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a4d9fc:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a4da03:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a4da0a:	fe 
  a4da0b:	62 61 6c 48 59 f1    	vmulps zmm30,zmm2,zmm1
  a4da11:	62 62 25 40 bc f0    	vfnmadd231ps zmm30,zmm27,zmm0
  a4da17:	62 e1 24 40 59 d9    	vmulps zmm19,zmm27,zmm1
  a4da1d:	62 e2 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm2
  a4da23:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a4da2a:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a4da31:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a4da38:	0f 
  a4da39:	62 61 6c 48 59 d1    	vmulps zmm26,zmm2,zmm1
  a4da3f:	62 62 3d 40 bc d0    	vfnmadd231ps zmm26,zmm24,zmm0
  a4da45:	62 71 3c 40 59 f9    	vmulps zmm15,zmm24,zmm1
  a4da4b:	62 72 7d 48 b8 fa    	vfmadd231ps zmm15,zmm0,zmm2
  a4da51:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a4da58:	62 f1 7c 48 10 5a 0a 	vmovups zmm3,ZMMWORD PTR [rdx+0x280]
  a4da5f:	62 f1 6c 40 59 d3    	vmulps zmm2,zmm18,zmm3
  a4da65:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a4da6c:	ff 
  a4da6d:	62 f2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm0
  a4da73:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a4da7a:	01 
  a4da7b:	62 f1 74 48 59 cb    	vmulps zmm1,zmm1,zmm3
  a4da81:	62 b2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm18
  a4da87:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4da8e:	fe 
  a4da8f:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a4da96:	62 f1 7c 48 10 5a 14 	vmovups zmm3,ZMMWORD PTR [rdx+0x500]
  a4da9d:	62 f1 4c 40 59 d3    	vmulps zmm2,zmm22,zmm3
  a4daa3:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a4daaa:	04 
  a4daab:	62 f2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm0
  a4dab1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a4dab8:	ff 
  a4dab9:	62 f1 74 48 59 db    	vmulps zmm3,zmm1,zmm3
  a4dabf:	62 b2 7d 48 bc de    	vfnmadd231ps zmm3,zmm0,zmm22
  a4dac5:	62 61 7c 48 28 fb    	vmovaps zmm31,zmm3
  a4dacb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a4dad2:	05 
  a4dad3:	62 f1 7c 48 5c 04 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp]
  a4dada:	62 d1 74 40 5c fe    	vsubps zmm7,zmm17,zmm14
  a4dae0:	62 f2 7d 48 18 1d 6e 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff627c6e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a4dae7:	7c 62 ff 
  a4daea:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a4daf0:	62 f2 7d 48 18 2d a6 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6278a6]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a4daf7:	78 62 ff 
  a4dafa:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4db00:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a4db07:	02 
  a4db08:	62 61 7c 48 59 eb    	vmulps zmm29,zmm0,zmm3
  a4db0e:	62 62 55 48 bc ef    	vfnmadd231ps zmm29,zmm5,zmm7
  a4db14:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a4db1a:	62 d1 7c 40 5c c4    	vsubps zmm0,zmm16,zmm12
  a4db20:	62 d1 4c 48 5c f8    	vsubps zmm7,zmm6,zmm8
  a4db26:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a4db2c:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4db32:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a4db39:	04 
  a4db3a:	62 61 7c 48 59 e3    	vmulps zmm28,zmm0,zmm3
  a4db40:	62 62 55 48 bc e7    	vfnmadd231ps zmm28,zmm5,zmm7
  a4db46:	62 91 0c 40 5c c2    	vsubps zmm0,zmm30,zmm26
  a4db4c:	62 f1 14 48 5c fc    	vsubps zmm7,zmm13,zmm4
  a4db52:	62 f1 44 48 59 cb    	vmulps zmm1,zmm7,zmm3
  a4db58:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4db5e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a4db65:	0f 
  a4db66:	62 e1 7c 48 59 fb    	vmulps zmm23,zmm0,zmm3
  a4db6c:	62 e2 55 48 bc ff    	vfnmadd231ps zmm23,zmm5,zmm7
  a4db72:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x240]
  a4db79:	09 
  a4db7a:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x280]
  a4db81:	0a 
  a4db82:	62 b1 3c 48 5c c0    	vsubps zmm0,zmm8,zmm16
  a4db88:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x200]
  a4db8f:	08 
  a4db90:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a4db97:	07 
  a4db98:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a4db9e:	62 71 44 48 59 e3    	vmulps zmm12,zmm7,zmm3
  a4dba4:	62 72 7d 48 b8 e5    	vfmadd231ps zmm12,zmm0,zmm5
  a4dbaa:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a4dbb1:	0b 
  a4dbb2:	62 e1 7c 48 59 f3    	vmulps zmm22,zmm0,zmm3
  a4dbb8:	62 e2 55 48 bc f7    	vfnmadd231ps zmm22,zmm5,zmm7
  a4dbbe:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a4dbc4:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x380]
  a4dbcb:	0e 
  a4dbcc:	62 f1 24 48 5c c2    	vsubps zmm0,zmm11,zmm2
  a4dbd2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a4dbd9:	0d 
  a4dbda:	62 d1 74 48 5c fa    	vsubps zmm7,zmm1,zmm10
  a4dbe0:	62 e1 44 48 59 eb    	vmulps zmm21,zmm7,zmm3
  a4dbe6:	62 e2 7d 48 b8 ed    	vfmadd231ps zmm21,zmm0,zmm5
  a4dbec:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm21
  a4dbf3:	17 
  a4dbf4:	62 e1 7c 48 59 d3    	vmulps zmm18,zmm0,zmm3
  a4dbfa:	62 e2 55 48 bc d7    	vfnmadd231ps zmm18,zmm5,zmm7
  a4dc00:	62 d1 64 40 5c c7    	vsubps zmm0,zmm19,zmm15
  a4dc06:	62 91 5c 40 5c f9    	vsubps zmm7,zmm20,zmm25
  a4dc0c:	62 71 44 48 59 db    	vmulps zmm11,zmm7,zmm3
  a4dc12:	62 72 7d 48 b8 dd    	vfmadd231ps zmm11,zmm0,zmm5
  a4dc18:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm11
  a4dc1f:	0c 
  a4dc20:	62 71 7c 48 59 f3    	vmulps zmm14,zmm0,zmm3
  a4dc26:	62 72 45 48 bc f5    	vfnmadd231ps zmm14,zmm7,zmm5
  a4dc2c:	62 61 4c 48 58 c4    	vaddps zmm24,zmm6,zmm4
  a4dc32:	62 b1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm16
  a4dc38:	62 51 74 48 58 ea    	vaddps zmm13,zmm1,zmm10
  a4dc3e:	62 71 74 40 58 da    	vaddps zmm11,zmm17,zmm2
  a4dc44:	62 01 5c 40 58 d9    	vaddps zmm27,zmm20,zmm25
  a4dc4a:	62 41 64 40 58 cf    	vaddps zmm25,zmm19,zmm15
  a4dc50:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x540]
  a4dc57:	15 
  a4dc58:	62 f1 74 48 58 74 24 	vaddps zmm6,zmm1,ZMMWORD PTR [rsp+0x580]
  a4dc5f:	16 
  a4dc60:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a4dc67:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x140]
  a4dc6e:	05 
  a4dc6f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a4dc76:	10 
  a4dc77:	62 71 74 48 58 54 24 	vaddps zmm10,zmm1,ZMMWORD PTR [rsp+0x4c0]
  a4dc7e:	13 
  a4dc7f:	62 71 34 48 58 4c 24 	vaddps zmm9,zmm9,ZMMWORD PTR [rsp+0x500]
  a4dc86:	14 
  a4dc87:	62 f2 7d 48 18 0d 57 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff627a57]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a4dc8e:	7a 62 ff 
  a4dc91:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a4dc97:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x80]
  a4dc9e:	fe 
  a4dc9f:	62 e2 65 40 a8 e7    	vfmadd213ps zmm20,zmm19,zmm7
  a4dca5:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm19
  a4dcac:	16 
  a4dcad:	62 f2 7d 48 18 15 8d 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff62798d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a4dcb4:	79 62 ff 
  a4dcb7:	62 e2 4d 48 bc e2    	vfnmadd231ps zmm20,zmm6,zmm2
  a4dcbd:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm6
  a4dcc4:	15 
  a4dcc5:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a4dccb:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a4dcd1:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm31
  a4dcd8:	22 
  a4dcd9:	62 82 35 48 a8 c7    	vfmadd213ps zmm16,zmm9,zmm31
  a4dcdf:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm9
  a4dce6:	14 
  a4dce7:	62 e2 2d 48 bc c2    	vfnmadd231ps zmm16,zmm10,zmm2
  a4dced:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm10
  a4dcf4:	13 
  a4dcf5:	62 d1 5c 40 5c dc    	vsubps zmm3,zmm20,zmm12
  a4dcfb:	62 b1 7c 40 5c e5    	vsubps zmm4,zmm16,zmm21
  a4dd01:	62 f1 64 48 5c ec    	vsubps zmm5,zmm3,zmm4
  a4dd07:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a4dd0e:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a4dd14:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a4dd1b:	09 
  a4dd1c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x440]
  a4dd23:	11 
  a4dd24:	62 e1 64 48 58 6c 24 	vaddps zmm21,zmm3,ZMMWORD PTR [rsp+0x480]
  a4dd2b:	12 
  a4dd2c:	62 01 0c 40 58 fa    	vaddps zmm31,zmm30,zmm26
  a4dd32:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a4dd38:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x40]
  a4dd3f:	01 
  a4dd40:	62 12 7d 48 a8 fa    	vfmadd213ps zmm15,zmm0,zmm26
  a4dd46:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a4dd4c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a4dd53:	1f 
  a4dd54:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a4dd5a:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm24
  a4dd61:	1d 
  a4dd62:	62 72 3d 40 bc fa    	vfnmadd231ps zmm15,zmm24,zmm2
  a4dd68:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a4dd6e:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp-0x40]
  a4dd75:	ff 
  a4dd76:	62 02 25 48 a8 c6    	vfmadd213ps zmm24,zmm11,zmm30
  a4dd7c:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm11
  a4dd83:	1b 
  a4dd84:	62 62 15 48 bc c2    	vfnmadd231ps zmm24,zmm13,zmm2
  a4dd8a:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm13
  a4dd91:	1a 
  a4dd92:	62 f1 04 48 58 5c 24 	vaddps zmm3,zmm15,ZMMWORD PTR [rsp+0x80]
  a4dd99:	02 
  a4dd9a:	62 f1 3c 40 58 64 24 	vaddps zmm4,zmm24,ZMMWORD PTR [rsp+0x100]
  a4dda1:	04 
  a4dda2:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a4dda8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a4ddaf:	07 
  a4ddb0:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a4ddb6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a4ddbd:	0a 
  a4ddbe:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a4ddc4:	62 f2 65 40 ac ef    	vfnmadd213ps zmm5,zmm19,zmm7
  a4ddca:	62 f2 4d 48 b8 e9    	vfmadd231ps zmm5,zmm6,zmm1
  a4ddd0:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a4ddd6:	62 d2 35 48 ac f0    	vfnmadd213ps zmm6,zmm9,zmm8
  a4dddc:	62 f2 2d 48 b8 f1    	vfmadd231ps zmm6,zmm10,zmm1
  a4dde2:	62 b1 54 48 5c de    	vsubps zmm3,zmm5,zmm22
  a4dde8:	62 b1 4c 48 5c e2    	vsubps zmm4,zmm6,zmm18
  a4ddee:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a4ddf4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a4ddfb:	0d 
  a4ddfc:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a4de02:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a4de09:	0e 
  a4de0a:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a4de10:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0xc0]
  a4de17:	03 
  a4de18:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a4de1e:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm25
  a4de25:	19 
  a4de26:	62 72 35 40 a8 c7    	vfmadd213ps zmm8,zmm25,zmm7
  a4de2c:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a4de32:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm27
  a4de39:	18 
  a4de3a:	62 72 25 40 bc c2    	vfnmadd231ps zmm8,zmm27,zmm2
  a4de40:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a4de46:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x180]
  a4de4d:	06 
  a4de4e:	62 62 05 40 a8 cb    	vfmadd213ps zmm25,zmm31,zmm3
  a4de54:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm21
  a4de5b:	21 
  a4de5c:	62 62 55 40 bc ca    	vfnmadd231ps zmm25,zmm21,zmm2
  a4de62:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4de68:	62 12 1d 48 ac ca    	vfnmadd213ps zmm9,zmm12,zmm26
  a4de6e:	62 72 75 40 b8 c9    	vfmadd231ps zmm9,zmm17,zmm1
  a4de74:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a4de7a:	62 02 25 48 ac de    	vfnmadd213ps zmm27,zmm11,zmm30
  a4de80:	62 62 15 48 b8 d9    	vfmadd231ps zmm27,zmm13,zmm1
  a4de86:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a4de8c:	62 62 5d 48 ac d7    	vfnmadd213ps zmm26,zmm4,zmm7
  a4de92:	62 62 7d 48 b8 d1    	vfmadd231ps zmm26,zmm0,zmm1
  a4de98:	62 f2 05 40 ac d3    	vfnmadd213ps zmm2,zmm31,zmm3
  a4de9e:	62 f2 55 40 b8 d1    	vfmadd231ps zmm2,zmm21,zmm1
  a4dea4:	62 91 34 48 58 cd    	vaddps zmm1,zmm9,zmm29
  a4deaa:	62 01 24 40 58 f4    	vaddps zmm30,zmm27,zmm28
  a4deb0:	62 91 74 48 58 c6    	vaddps zmm0,zmm1,zmm30
  a4deb6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a4debd:	11 
  a4debe:	62 91 74 48 5c c6    	vsubps zmm0,zmm1,zmm30
  a4dec4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a4decb:	12 
  a4decc:	62 91 44 40 58 c2    	vaddps zmm0,zmm23,zmm26
  a4ded2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a4ded9:	10 
  a4deda:	62 b1 2c 40 5c cf    	vsubps zmm1,zmm26,zmm23
  a4dee0:	62 91 34 48 5c fd    	vsubps zmm7,zmm9,zmm29
  a4dee6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm7
  a4deed:	1e 
  a4deee:	62 91 24 40 5c dc    	vsubps zmm3,zmm27,zmm28
  a4def4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a4defb:	1c 
  a4defc:	62 d1 6c 48 5c c6    	vsubps zmm0,zmm2,zmm14
  a4df02:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm0
  a4df09:	20 
  a4df0a:	62 51 6c 48 58 d6    	vaddps zmm10,zmm2,zmm14
  a4df10:	62 21 54 48 58 d6    	vaddps zmm26,zmm5,zmm22
  a4df16:	62 21 4c 48 58 ea    	vaddps zmm29,zmm6,zmm18
  a4df1c:	62 f2 7d 48 18 05 3a 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62753a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4df23:	75 62 ff 
  a4df26:	62 61 44 48 58 db    	vaddps zmm27,zmm7,zmm3
  a4df2c:	62 91 74 48 58 d3    	vaddps zmm2,zmm1,zmm27
  a4df32:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a4df39:	05 
  a4df3a:	62 62 7d 48 ac d9    	vfnmadd213ps zmm27,zmm0,zmm1
  a4df40:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a4df46:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a4df4c:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a4df52:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a4df58:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a4df5e:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a4df64:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a4df6a:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a4df70:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a4df76:	62 d2 75 48 ac c2    	vfnmadd213ps zmm0,zmm1,zmm10
  a4df7c:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a4df82:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a4df89:	08 
  a4df8a:	62 f1 04 48 5c 4c 24 	vsubps zmm1,zmm15,ZMMWORD PTR [rsp+0x80]
  a4df91:	02 
  a4df92:	62 71 3c 40 5c 54 24 	vsubps zmm10,zmm24,ZMMWORD PTR [rsp+0x100]
  a4df99:	04 
  a4df9a:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x3c0]
  a4dfa1:	0f 
  a4dfa2:	62 51 6c 40 58 d8    	vaddps zmm11,zmm18,zmm8
  a4dfa8:	62 a1 3c 48 5c da    	vsubps zmm19,zmm8,zmm18
  a4dfae:	62 71 5c 40 58 7c 24 	vaddps zmm15,zmm20,ZMMWORD PTR [rsp+0x2c0]
  a4dfb5:	0b 
  a4dfb6:	62 71 7c 40 58 6c 24 	vaddps zmm13,zmm16,ZMMWORD PTR [rsp+0x5c0]
  a4dfbd:	17 
  a4dfbe:	62 d1 04 48 5c e5    	vsubps zmm4,zmm15,zmm13
  a4dfc4:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a4dfca:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a4dfd1:	0c 
  a4dfd2:	62 e1 34 40 5c f5    	vsubps zmm22,zmm25,zmm5
  a4dfd8:	62 71 34 40 58 ed    	vaddps zmm13,zmm25,zmm5
  a4dfde:	62 41 74 48 58 c2    	vaddps zmm24,zmm1,zmm10
  a4dfe4:	62 c1 74 48 5c ea    	vsubps zmm21,zmm1,zmm10
  a4dfea:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a4dff1:	01 
  a4dff2:	62 71 74 48 58 54 24 	vaddps zmm10,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a4dff9:	1f 
  a4dffa:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x740]
  a4e001:	1d 
  a4e002:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a4e009:	ff 
  a4e00a:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x6c0]
  a4e011:	1b 
  a4e012:	62 71 04 48 58 7c 24 	vaddps zmm15,zmm15,ZMMWORD PTR [rsp+0x680]
  a4e019:	1a 
  a4e01a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a4e021:	03 
  a4e022:	62 e1 74 48 58 54 24 	vaddps zmm18,zmm1,ZMMWORD PTR [rsp+0x640]
  a4e029:	19 
  a4e02a:	62 61 6c 40 58 64 24 	vaddps zmm28,zmm18,ZMMWORD PTR [rsp+0x600]
  a4e031:	18 
  a4e032:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a4e039:	fe 
  a4e03a:	62 e1 74 48 58 54 24 	vaddps zmm18,zmm1,ZMMWORD PTR [rsp+0x580]
  a4e041:	16 
  a4e042:	62 e1 6c 40 58 54 24 	vaddps zmm18,zmm18,ZMMWORD PTR [rsp+0x540]
  a4e049:	15 
  a4e04a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x880]
  a4e051:	22 
  a4e052:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x500]
  a4e059:	14 
  a4e05a:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x4c0]
  a4e061:	13 
  a4e062:	62 81 6c 40 5c c1    	vsubps zmm16,zmm18,zmm25
  a4e068:	62 81 6c 40 58 d1    	vaddps zmm18,zmm18,zmm25
  a4e06e:	62 61 04 40 58 4c 24 	vaddps zmm25,zmm31,ZMMWORD PTR [rsp+0x180]
  a4e075:	06 
  a4e076:	62 e1 34 40 58 64 24 	vaddps zmm20,zmm25,ZMMWORD PTR [rsp+0x840]
  a4e07d:	21 
  a4e07e:	62 41 2c 48 58 cf    	vaddps zmm25,zmm10,zmm15
  a4e084:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a4e08a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a4e091:	07 
  a4e092:	62 52 75 48 ac cb    	vfnmadd213ps zmm9,zmm1,zmm11
  a4e098:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a4e09e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a4e0a5:	01 
  a4e0a6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a4e0ad:	09 
  a4e0ae:	62 32 75 48 ac e6    	vfnmadd213ps zmm12,zmm1,zmm22
  a4e0b4:	62 f1 4c 40 58 c9    	vaddps zmm1,zmm22,zmm1
  a4e0ba:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a4e0c1:	06 
  a4e0c2:	62 72 7d 48 18 1d 08 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff627208]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4e0c9:	72 62 ff 
  a4e0cc:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x440]
  a4e0d3:	11 
  a4e0d4:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x400]
  a4e0db:	10 
  a4e0dc:	62 d2 3d 48 ac d7    	vfnmadd213ps zmm2,zmm8,zmm15
  a4e0e2:	62 e1 24 48 59 74 24 	vmulps zmm22,zmm11,ZMMWORD PTR [rsp+0x340]
  a4e0e9:	0d 
  a4e0ea:	62 b1 6c 48 5c ce    	vsubps zmm1,zmm2,zmm22
  a4e0f0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a4e0f7:	03 
  a4e0f8:	62 b1 6c 48 58 ce    	vaddps zmm1,zmm2,zmm22
  a4e0fe:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a4e105:	ff 
  a4e106:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x380]
  a4e10d:	0e 
  a4e10e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x800]
  a4e115:	20 
  a4e116:	62 f2 4d 48 ac dd    	vfnmadd213ps zmm3,zmm6,zmm5
  a4e11c:	62 f1 24 48 59 54 24 	vmulps zmm2,zmm11,ZMMWORD PTR [rsp+0x480]
  a4e123:	12 
  a4e124:	62 f1 64 48 58 ca    	vaddps zmm1,zmm3,zmm2
  a4e12a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a4e131:	02 
  a4e132:	62 f1 64 48 5c ca    	vsubps zmm1,zmm3,zmm2
  a4e138:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4e13f:	fe 
  a4e140:	62 81 2c 40 5c f5    	vsubps zmm22,zmm26,zmm29
  a4e146:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x780]
  a4e14d:	1e 
  a4e14e:	62 61 74 48 5c 54 24 	vsubps zmm26,zmm1,ZMMWORD PTR [rsp+0x700]
  a4e155:	1c 
  a4e156:	62 f1 24 48 59 0c 24 	vmulps zmm1,zmm11,ZMMWORD PTR [rsp]
  a4e15d:	62 f1 24 48 59 54 24 	vmulps zmm2,zmm11,ZMMWORD PTR [rsp+0x280]
  a4e164:	0a 
  a4e165:	62 d1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm11
  a4e16b:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a4e171:	62 c1 7c 40 59 c3    	vmulps zmm16,zmm16,zmm11
  a4e177:	62 51 2c 48 59 d3    	vmulps zmm10,zmm10,zmm11
  a4e17d:	62 d1 4c 40 59 db    	vmulps zmm3,zmm22,zmm11
  a4e183:	62 51 2c 40 59 db    	vmulps zmm11,zmm26,zmm11
  a4e189:	62 a2 3d 40 ac fb    	vfnmadd213ps zmm23,zmm24,zmm19
  a4e18f:	62 01 64 40 58 e8    	vaddps zmm29,zmm19,zmm24
  a4e195:	62 c2 0d 48 ac cd    	vfnmadd213ps zmm17,zmm14,zmm13
  a4e19b:	62 51 14 48 58 f6    	vaddps zmm14,zmm13,zmm14
  a4e1a1:	62 02 35 40 ac f4    	vfnmadd213ps zmm30,zmm25,zmm28
  a4e1a7:	62 21 0c 40 5c f8    	vsubps zmm31,zmm30,zmm16
  a4e1ad:	62 21 0c 40 58 d0    	vaddps zmm26,zmm30,zmm16
  a4e1b3:	62 b2 6d 40 ac fc    	vfnmadd213ps zmm7,zmm18,zmm20
  a4e1b9:	62 41 44 48 58 c2    	vaddps zmm24,zmm7,zmm10
  a4e1bf:	62 c1 44 48 5c da    	vsubps zmm19,zmm7,zmm10
  a4e1c5:	62 61 34 48 58 f1    	vaddps zmm30,zmm9,zmm1
  a4e1cb:	62 71 34 48 5c d1    	vsubps zmm10,zmm9,zmm1
  a4e1d1:	62 f1 1c 48 5c ca    	vsubps zmm1,zmm12,zmm2
  a4e1d7:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a4e1de:	62 71 1c 48 58 ca    	vaddps zmm9,zmm12,zmm2
  a4e1e4:	62 d1 04 48 58 c8    	vaddps zmm1,zmm15,zmm8
  a4e1ea:	62 f1 54 48 58 fe    	vaddps zmm7,zmm5,zmm6
  a4e1f0:	62 e1 24 40 5c f3    	vsubps zmm22,zmm27,zmm3
  a4e1f6:	62 f1 24 40 58 db    	vaddps zmm3,zmm27,zmm3
  a4e1fc:	62 d1 7c 48 58 d3    	vaddps zmm2,zmm0,zmm11
  a4e202:	62 d1 7c 48 5c f3    	vsubps zmm6,zmm0,zmm11
  a4e208:	62 71 44 40 58 dc    	vaddps zmm11,zmm23,zmm4
  a4e20e:	62 e1 44 40 5c c4    	vsubps zmm16,zmm23,zmm4
  a4e214:	62 b1 74 40 5c e5    	vsubps zmm4,zmm17,zmm21
  a4e21a:	62 31 74 40 58 e5    	vaddps zmm12,zmm17,zmm21
  a4e220:	62 81 1c 40 58 c9    	vaddps zmm17,zmm28,zmm25
  a4e226:	62 31 5c 40 58 ea    	vaddps zmm13,zmm20,zmm18
  a4e22c:	62 f1 7c 48 28 05 8a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64468a]        # 928c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fd70>
  a4e233:	46 64 ff 
  a4e236:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a4e23c:	62 42 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm13
  a4e242:	62 e1 7c 48 28 25 b4 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6446b4]        # 92900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fdb0>
  a4e249:	46 64 ff 
  a4e24c:	62 c2 5d 40 7f cd    	vpermt2ps zmm17,zmm20,zmm13
  a4e252:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a4e258:	62 c2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm12
  a4e25e:	62 c2 5d 40 7f c4    	vpermt2ps zmm16,zmm20,zmm12
  a4e264:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a4e26a:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a4e270:	62 f2 5d 40 7f de    	vpermt2ps zmm3,zmm20,zmm6
  a4e276:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4e27c:	62 f2 7d 48 7f f7    	vpermt2ps zmm6,zmm0,zmm7
  a4e282:	62 f2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm7
  a4e288:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a4e28e:	62 d2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm9
  a4e294:	62 52 5d 40 7f d1    	vpermt2ps zmm10,zmm20,zmm9
  a4e29a:	62 11 7c 48 28 ea    	vmovaps zmm13,zmm26
  a4e2a0:	62 32 7d 48 7f eb    	vpermt2ps zmm13,zmm0,zmm19
  a4e2a6:	62 22 5d 40 7f d3    	vpermt2ps zmm26,zmm20,zmm19
  a4e2ac:	62 11 7c 48 28 cd    	vmovaps zmm9,zmm29
  a4e2b2:	62 52 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm14
  a4e2b8:	62 42 5d 40 7f ee    	vpermt2ps zmm29,zmm20,zmm14
  a4e2be:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a4e2c4:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a4e2ca:	62 e2 5d 40 7f f2    	vpermt2ps zmm22,zmm20,zmm2
  a4e2d0:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a4e2d7:	ff 
  a4e2d8:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a4e2de:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a4e2e5:	fe 
  a4e2e6:	62 d2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm14
  a4e2ec:	62 52 5d 40 7f c6    	vpermt2ps zmm8,zmm20,zmm14
  a4e2f2:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a4e2f8:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x40]
  a4e2ff:	01 
  a4e300:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a4e306:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a4e30d:	06 
  a4e30e:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a4e314:	62 52 5d 40 7f c7    	vpermt2ps zmm8,zmm20,zmm15
  a4e31a:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a4e320:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  a4e326:	62 12 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm24
  a4e32c:	62 02 5d 40 7f f8    	vpermt2ps zmm31,zmm20,zmm24
  a4e332:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a4e338:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a4e33e:	62 72 5d 40 7f dc    	vpermt2ps zmm11,zmm20,zmm4
  a4e344:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x140]
  a4e34b:	05 
  a4e34c:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a4e352:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x200]
  a4e359:	08 
  a4e35a:	62 d2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm8
  a4e360:	62 42 5d 40 7f c0    	vpermt2ps zmm24,zmm20,zmm8
  a4e366:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a4e36c:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0xc0]
  a4e373:	03 
  a4e374:	62 41 7c 48 28 c0    	vmovaps zmm24,zmm8
  a4e37a:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x80]
  a4e381:	02 
  a4e382:	62 02 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm28
  a4e388:	62 12 5d 40 7f c4    	vpermt2ps zmm8,zmm20,zmm28
  a4e38e:	62 61 7c 48 10 24 24 	vmovups zmm28,ZMMWORD PTR [rsp]
  a4e395:	62 92 0d 40 77 c4    	vpermi2ps zmm0,zmm30,zmm28
  a4e39b:	62 02 5d 40 7f f4    	vpermt2ps zmm30,zmm20,zmm28
  a4e3a1:	62 e1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm17
  a4e3a7:	62 61 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm27
  a4e3ae:	62 e1 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm16
  a4e3b5:	62 e1 7c 48 11 6e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm21
  a4e3bc:	62 f1 7c 48 11 5e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm3
  a4e3c3:	62 71 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm12
  a4e3ca:	62 f1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm1
  a4e3d1:	62 f1 7c 48 11 76 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm6
  a4e3d8:	62 71 7c 48 11 56 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm10
  a4e3df:	62 f1 7c 48 11 7e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm7
  a4e3e6:	62 61 7c 48 11 56 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm26
  a4e3ed:	62 71 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm13
  a4e3f4:	62 61 7c 48 11 6e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm29
  a4e3fb:	62 71 7c 48 11 4e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm9
  a4e402:	62 e1 7c 48 11 76 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm22
  a4e409:	62 f1 7c 48 11 6e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm5
  a4e410:	62 e1 7c 48 11 5e 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm19
  a4e417:	62 f1 7c 48 11 56 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm2
  a4e41e:	62 e1 7c 48 11 7e 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm23
  a4e425:	62 71 7c 48 11 76 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm14
  a4e42c:	62 61 7c 48 11 7e 14 	vmovups ZMMWORD PTR [rsi+0x500],zmm31
  a4e433:	62 71 7c 48 11 7e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm15
  a4e43a:	62 71 7c 48 11 5e 16 	vmovups ZMMWORD PTR [rsi+0x580],zmm11
  a4e441:	62 e1 7c 48 11 56 17 	vmovups ZMMWORD PTR [rsi+0x5c0],zmm18
  a4e448:	62 61 7c 48 11 4e 18 	vmovups ZMMWORD PTR [rsi+0x600],zmm25
  a4e44f:	62 f1 7c 48 11 66 19 	vmovups ZMMWORD PTR [rsi+0x640],zmm4
  a4e456:	62 71 7c 48 11 46 1a 	vmovups ZMMWORD PTR [rsi+0x680],zmm8
  a4e45d:	62 61 7c 48 11 46 1b 	vmovups ZMMWORD PTR [rsi+0x6c0],zmm24
  a4e464:	62 61 7c 48 11 76 1c 	vmovups ZMMWORD PTR [rsi+0x700],zmm30
  a4e46b:	62 f1 7c 48 11 46 1d 	vmovups ZMMWORD PTR [rsi+0x740],zmm0
  a4e472:	48 81 c4 c8 08 00 00 	add    rsp,0x8c8
  a4e479:	c5 f8 77             	vzeroupper
  a4e47c:	c3                   	ret
