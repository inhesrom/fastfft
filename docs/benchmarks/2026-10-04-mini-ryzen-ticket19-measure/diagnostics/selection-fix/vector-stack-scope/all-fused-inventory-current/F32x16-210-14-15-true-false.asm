
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a15680 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a15680:	55                   	push   rbp
  a15681:	48 89 e5             	mov    rbp,rsp
  a15684:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a15688:	48 81 ec 00 0a 00 00 	sub    rsp,0xa00
  a1568f:	c6 84 24 80 09 00 00 	mov    BYTE PTR [rsp+0x980],0x0
  a15696:	00 
  a15697:	48 8d 84 24 80 09 00 	lea    rax,[rsp+0x980]
  a1569e:	00 
  a1569f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a156a4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a156a9:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a156ae:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a156b5:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a156bb:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a156c1:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a156c7:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a156ce:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a156d3:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a156d8:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a156de:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a156e5:	b0 7f                	mov    al,0x7f
  a156e7:	c5 fb 92 c8          	kmovd  k1,eax
  a156eb:	62 e2 fd c9 88 c8    	vexpandpd zmm17{k1}{z},zmm0
  a156f1:	62 71 7c 48 28 2d 45 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff679d45]        # 8f440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c8f0>
  a156f8:	9d 67 ff 
  a156fb:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a15701:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a15707:	62 b2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm17
  a1570d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a15714:	01 
  a15715:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a1571c:	00 00 00 
  a1571f:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a15726:	00 
  a15727:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a1572e:	00 00 10 
  a15731:	c4 e2 79 18 8f 58 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x158]
  a15738:	00 00 
  a1573a:	c5 fc 10 97 30 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x130]
  a15741:	00 
  a15742:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a15748:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a1574f:	00 00 30 
  a15752:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a15759:	00 
  a1575a:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a15760:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a15767:	62 e2 fd c9 88 d8    	vexpandpd zmm19{k1}{z},zmm0
  a1576d:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a15773:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a15779:	62 b2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm19
  a1577f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a15786:	02 
  a15787:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0x5a0]
  a1578e:	05 00 00 
  a15791:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a15798:	00 
  a15799:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a157a0:	00 00 10 
  a157a3:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a157aa:	00 00 
  a157ac:	c5 fc 10 97 e0 05 00 	vmovups ymm2,YMMWORD PTR [rdi+0x5e0]
  a157b3:	00 
  a157b4:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a157ba:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a157c1:	00 00 30 
  a157c4:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a157cb:	00 
  a157cc:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a157d2:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a157d9:	62 e2 fd c9 88 e0    	vexpandpd zmm20{k1}{z},zmm0
  a157df:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a157e5:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a157eb:	62 b2 15 48 7f c4    	vpermt2ps zmm0,zmm13,zmm20
  a157f1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a157f8:	05 
  a157f9:	62 f1 7c 48 10 9f e0 	vmovups zmm3,ZMMWORD PTR [rdi+0x1e0]
  a15800:	01 00 00 
  a15803:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a1580a:	00 
  a1580b:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a15812:	00 00 10 
  a15815:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a1581c:	00 00 
  a1581e:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a15825:	00 
  a15826:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a1582c:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a15833:	00 00 30 
  a15836:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a1583d:	00 
  a1583e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a15844:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a1584b:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a15851:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a15857:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a1585d:	62 b2 15 48 7f c5    	vpermt2ps zmm0,zmm13,zmm21
  a15863:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a1586a:	04 
  a1586b:	62 f1 7c 48 10 9f b0 	vmovups zmm3,ZMMWORD PTR [rdi+0x4b0]
  a15872:	04 00 00 
  a15875:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a1587c:	00 
  a1587d:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a15884:	00 00 10 
  a15887:	c4 e2 79 18 8f 18 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x518]
  a1588e:	00 00 
  a15890:	c5 fc 10 97 f0 04 00 	vmovups ymm2,YMMWORD PTR [rdi+0x4f0]
  a15897:	00 
  a15898:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a1589e:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a158a5:	00 00 30 
  a158a8:	c5 fb 10 8f 20 05 00 	vmovsd xmm1,QWORD PTR [rdi+0x520]
  a158af:	00 
  a158b0:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a158b6:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a158bd:	62 72 fd c9 88 f8    	vexpandpd zmm15{k1}{z},zmm0
  a158c3:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a158c9:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a158cf:	62 d2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm15
  a158d5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a158dc:	03 
  a158dd:	62 f1 7c 48 10 9f d0 	vmovups zmm3,ZMMWORD PTR [rdi+0x2d0]
  a158e4:	02 00 00 
  a158e7:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a158ee:	00 
  a158ef:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a158f6:	00 00 10 
  a158f9:	c4 e2 79 18 8f 38 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x338]
  a15900:	00 00 
  a15902:	c5 fc 10 97 10 03 00 	vmovups ymm2,YMMWORD PTR [rdi+0x310]
  a15909:	00 
  a1590a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a15910:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a15917:	00 00 30 
  a1591a:	c5 fb 10 8f 40 03 00 	vmovsd xmm1,QWORD PTR [rdi+0x340]
  a15921:	00 
  a15922:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a15928:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a1592f:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a15935:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a1593b:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a15941:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a15947:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a1594d:	62 61 7c 48 10 4f 0f 	vmovups zmm25,ZMMWORD PTR [rdi+0x3c0]
  a15954:	c5 f8 10 8f 20 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x420]
  a1595b:	00 
  a1595c:	c4 e3 71 21 8f 24 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x424],0x10
  a15963:	00 00 10 
  a15966:	c4 e2 79 18 97 28 04 	vbroadcastss xmm2,DWORD PTR [rdi+0x428]
  a1596d:	00 00 
  a1596f:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a15976:	00 
  a15977:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a1597d:	c4 e3 71 21 8f 2c 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x42c],0x30
  a15984:	00 00 30 
  a15987:	c5 fb 10 97 30 04 00 	vmovsd xmm2,QWORD PTR [rdi+0x430]
  a1598e:	00 
  a1598f:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a15995:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a1599c:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a159a2:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a159a8:	62 f2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm1
  a159ae:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a159b5:	07 
  a159b6:	62 e1 7c 48 10 bf 48 	vmovups zmm23,ZMMWORD PTR [rdi+0x348]
  a159bd:	03 00 00 
  a159c0:	c5 f8 10 97 a8 03 00 	vmovups xmm2,XMMWORD PTR [rdi+0x3a8]
  a159c7:	00 
  a159c8:	c4 e3 69 21 97 ac 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3ac],0x10
  a159cf:	00 00 10 
  a159d2:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a159d9:	00 00 
  a159db:	c5 fc 10 a7 88 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x388]
  a159e2:	00 
  a159e3:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a159e9:	c4 e3 69 21 97 b4 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3b4],0x30
  a159f0:	00 00 30 
  a159f3:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a159fa:	00 
  a159fb:	c4 e3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm3,0x1
  a15a01:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a15a08:	62 62 fd c9 88 fa    	vexpandpd zmm31{k1}{z},zmm2
  a15a0e:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a15a14:	62 12 15 48 7f f7    	vpermt2ps zmm14,zmm13,zmm31
  a15a1a:	c5 f8 10 97 98 04 00 	vmovups xmm2,XMMWORD PTR [rdi+0x498]
  a15a21:	00 
  a15a22:	c5 fc 10 9f 78 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x478]
  a15a29:	00 
  a15a2a:	c4 e3 69 21 97 9c 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x49c],0x10
  a15a31:	00 00 10 
  a15a34:	c4 e2 79 18 a7 a0 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x4a0]
  a15a3b:	00 00 
  a15a3d:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a15a43:	c4 e3 69 21 97 a4 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x4a4],0x30
  a15a4a:	00 00 30 
  a15a4d:	c5 fb 10 a7 a8 04 00 	vmovsd xmm4,QWORD PTR [rdi+0x4a8]
  a15a54:	00 
  a15a55:	c4 e3 6d 18 d4 01    	vinsertf128 ymm2,ymm2,xmm4,0x1
  a15a5b:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a15a62:	c5 f8 10 97 b8 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2b8]
  a15a69:	00 
  a15a6a:	c5 fc 10 a7 98 02 00 	vmovups ymm4,YMMWORD PTR [rdi+0x298]
  a15a71:	00 
  a15a72:	c4 e3 69 21 97 bc 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2bc],0x10
  a15a79:	00 00 10 
  a15a7c:	c4 e2 79 18 af c0 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x2c0]
  a15a83:	00 00 
  a15a85:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a15a8b:	c4 e3 69 21 97 c4 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2c4],0x30
  a15a92:	00 00 30 
  a15a95:	c5 fb 10 af c8 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x2c8]
  a15a9c:	00 
  a15a9d:	c4 e3 6d 18 d5 01    	vinsertf128 ymm2,ymm2,xmm5,0x1
  a15aa3:	62 f3 dd 48 1a ea 01 	vinsertf64x4 zmm5,zmm4,ymm2,0x1
  a15aaa:	c5 f8 10 97 88 05 00 	vmovups xmm2,XMMWORD PTR [rdi+0x588]
  a15ab1:	00 
  a15ab2:	c5 fc 10 a7 68 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x568]
  a15ab9:	00 
  a15aba:	c4 e3 69 21 97 8c 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x58c],0x10
  a15ac1:	00 00 10 
  a15ac4:	c4 e2 79 18 b7 90 05 	vbroadcastss xmm6,DWORD PTR [rdi+0x590]
  a15acb:	00 00 
  a15acd:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a15ad3:	c4 e3 69 21 97 94 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x594],0x30
  a15ada:	00 00 30 
  a15add:	c5 fb 10 b7 98 05 00 	vmovsd xmm6,QWORD PTR [rdi+0x598]
  a15ae4:	00 
  a15ae5:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a15aeb:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a15af2:	c5 f8 10 a7 c8 01 00 	vmovups xmm4,XMMWORD PTR [rdi+0x1c8]
  a15af9:	00 
  a15afa:	c5 fc 10 b7 a8 01 00 	vmovups ymm6,YMMWORD PTR [rdi+0x1a8]
  a15b01:	00 
  a15b02:	c4 e3 59 21 a7 cc 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1cc],0x10
  a15b09:	00 00 10 
  a15b0c:	c4 e2 79 18 bf d0 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x1d0]
  a15b13:	00 00 
  a15b15:	c4 e3 41 0c e4 03    	vblendps xmm4,xmm7,xmm4,0x3
  a15b1b:	c4 e3 59 21 a7 d4 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1d4],0x30
  a15b22:	00 00 30 
  a15b25:	c5 fb 10 bf d8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1d8]
  a15b2c:	00 
  a15b2d:	c4 e3 5d 18 e7 01    	vinsertf128 ymm4,ymm4,xmm7,0x1
  a15b33:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a15b3a:	c5 f8 10 b7 78 06 00 	vmovups xmm6,XMMWORD PTR [rdi+0x678]
  a15b41:	00 
  a15b42:	c5 fc 10 bf 58 06 00 	vmovups ymm7,YMMWORD PTR [rdi+0x658]
  a15b49:	00 
  a15b4a:	c4 e3 49 21 b7 7c 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x67c],0x10
  a15b51:	00 00 10 
  a15b54:	c4 62 79 18 87 80 06 	vbroadcastss xmm8,DWORD PTR [rdi+0x680]
  a15b5b:	00 00 
  a15b5d:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a15b63:	c4 e3 49 21 b7 84 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x684],0x30
  a15b6a:	00 00 30 
  a15b6d:	c5 7b 10 87 88 06 00 	vmovsd xmm8,QWORD PTR [rdi+0x688]
  a15b74:	00 
  a15b75:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a15b7b:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a15b82:	00 
  a15b83:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a15b8a:	00 00 10 
  a15b8d:	62 f3 c5 48 1a fe 01 	vinsertf64x4 zmm7,zmm7,ymm6,0x1
  a15b94:	c4 e2 79 18 b7 e0 00 	vbroadcastss xmm6,DWORD PTR [rdi+0xe0]
  a15b9b:	00 00 
  a15b9d:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a15ba3:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a15baa:	00 00 30 
  a15bad:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a15bb4:	00 
  a15bb5:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a15bbb:	c5 7c 10 87 b8 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xb8]
  a15bc2:	00 
  a15bc3:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a15bca:	62 61 7c 48 28 35 ac 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6798ac]        # 8f480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c930>
  a15bd1:	98 67 ff 
  a15bd4:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a15bda:	62 72 0d 40 7f c0    	vpermt2ps zmm8,zmm30,zmm0
  a15be0:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a15be7:	11 
  a15be8:	62 e1 7c 48 10 87 38 	vmovups zmm16,ZMMWORD PTR [rdi+0x438]
  a15bef:	04 00 00 
  a15bf2:	62 f2 fd c9 88 c3    	vexpandpd zmm0{k1}{z},zmm3
  a15bf8:	62 62 0d 40 7f c9    	vpermt2ps zmm25,zmm30,zmm1
  a15bfe:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm25
  a15c05:	12 
  a15c06:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a15c0c:	62 62 15 48 7f c0    	vpermt2ps zmm24,zmm13,zmm0
  a15c12:	62 32 0d 40 7f cb    	vpermt2ps zmm9,zmm30,zmm19
  a15c18:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm9
  a15c1f:	16 
  a15c20:	62 f1 7c 48 10 9f 58 	vmovups zmm3,ZMMWORD PTR [rdi+0x258]
  a15c27:	02 00 00 
  a15c2a:	62 f2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm5
  a15c30:	62 32 0d 40 7f d4    	vpermt2ps zmm10,zmm30,zmm20
  a15c36:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm10
  a15c3d:	0b 
  a15c3e:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a15c44:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a15c4a:	62 62 15 48 7f d1    	vpermt2ps zmm26,zmm13,zmm1
  a15c50:	62 32 0d 40 7f dd    	vpermt2ps zmm11,zmm30,zmm21
  a15c56:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm11
  a15c5d:	13 
  a15c5e:	62 e1 7c 48 10 9f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x618]
  a15c65:	06 00 00 
  a15c68:	62 f2 fd c9 88 df    	vexpandpd zmm3{k1}{z},zmm7
  a15c6e:	62 52 0d 40 7f e7    	vpermt2ps zmm12,zmm30,zmm15
  a15c74:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm12
  a15c7b:	0a 
  a15c7c:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a15c82:	62 62 15 48 7f db    	vpermt2ps zmm27,zmm13,zmm3
  a15c88:	62 e2 0d 40 7f db    	vpermt2ps zmm19,zmm30,zmm3
  a15c8e:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a15c94:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm19
  a15c9b:	0c 
  a15c9c:	62 f1 7c 48 10 9f 28 	vmovups zmm3,ZMMWORD PTR [rdi+0x528]
  a15ca3:	05 00 00 
  a15ca6:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a15cac:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a15cb2:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a15cb8:	62 62 15 48 7f e2    	vpermt2ps zmm28,zmm13,zmm2
  a15cbe:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a15cc4:	62 f1 7c 48 10 a7 68 	vmovups zmm4,ZMMWORD PTR [rdi+0x168]
  a15ccb:	01 00 00 
  a15cce:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a15cd4:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a15cda:	62 62 15 48 7f eb    	vpermt2ps zmm29,zmm13,zmm3
  a15ce0:	62 f2 fd c9 88 e6    	vexpandpd zmm4{k1}{z},zmm6
  a15ce6:	62 f1 7c 48 10 b7 78 	vmovups zmm6,ZMMWORD PTR [rdi+0x78]
  a15ced:	00 00 00 
  a15cf0:	62 72 4d 48 77 ec    	vpermi2ps zmm13,zmm6,zmm4
  a15cf6:	62 f2 0d 40 7f f4    	vpermt2ps zmm6,zmm30,zmm4
  a15cfc:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm6
  a15d03:	1a 
  a15d04:	62 e2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm0
  a15d0a:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm16
  a15d11:	0f 
  a15d12:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a15d18:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a15d1f:	08 
  a15d20:	62 f2 0d 40 7f fa    	vpermt2ps zmm7,zmm30,zmm2
  a15d26:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a15d2c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a15d33:	0e 
  a15d34:	62 72 0d 40 7f fb    	vpermt2ps zmm15,zmm30,zmm3
  a15d3a:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm15
  a15d41:	10 
  a15d42:	62 d1 34 48 5c d2    	vsubps zmm2,zmm9,zmm10
  a15d48:	62 a2 0d 40 7f d1    	vpermt2ps zmm18,zmm30,zmm17
  a15d4e:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm18
  a15d55:	14 
  a15d56:	62 d1 24 48 5c dc    	vsubps zmm3,zmm11,zmm12
  a15d5c:	62 82 0d 40 7f ff    	vpermt2ps zmm23,zmm30,zmm31
  a15d62:	62 e2 7d 48 18 1d 24 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff65f724]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a15d69:	f7 65 ff 
  a15d6c:	62 a1 64 48 59 cb    	vmulps zmm17,zmm3,zmm19
  a15d72:	62 f2 7d 48 18 3d e4 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff65f8e4]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a15d79:	f8 65 ff 
  a15d7c:	62 e2 6d 48 b8 cf    	vfmadd231ps zmm17,zmm2,zmm7
  a15d82:	62 f2 7d 48 18 25 5c 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff65f85c]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a15d89:	f8 65 ff 
  a15d8c:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a15d92:	62 62 65 48 bc ff    	vfnmadd231ps zmm31,zmm3,zmm7
  a15d98:	62 31 6c 48 59 db    	vmulps zmm11,zmm2,zmm19
  a15d9e:	62 72 5d 48 bc db    	vfnmadd231ps zmm11,zmm4,zmm3
  a15da4:	62 91 3c 48 5c d1    	vsubps zmm2,zmm8,zmm25
  a15daa:	62 e2 6d 48 b8 cc    	vfmadd231ps zmm17,zmm2,zmm4
  a15db0:	62 22 6d 48 b8 fb    	vfmadd231ps zmm31,zmm2,zmm19
  a15db6:	62 72 45 48 bc da    	vfnmadd231ps zmm11,zmm7,zmm2
  a15dbc:	62 f1 7c 40 5c d5    	vsubps zmm2,zmm16,zmm5
  a15dc2:	62 d1 7c 48 5c df    	vsubps zmm3,zmm0,zmm15
  a15dc8:	62 31 64 48 59 fb    	vmulps zmm15,zmm3,zmm19
  a15dce:	62 72 6d 48 b8 ff    	vfmadd231ps zmm15,zmm2,zmm7
  a15dd4:	62 71 6c 48 59 cc    	vmulps zmm9,zmm2,zmm4
  a15dda:	62 72 65 48 bc cf    	vfnmadd231ps zmm9,zmm3,zmm7
  a15de0:	62 31 6c 48 59 c3    	vmulps zmm8,zmm2,zmm19
  a15de6:	62 72 5d 48 bc c3    	vfnmadd231ps zmm8,zmm4,zmm3
  a15dec:	62 f1 5c 40 5c d6    	vsubps zmm2,zmm20,zmm6
  a15df2:	62 72 6d 48 b8 fc    	vfmadd231ps zmm15,zmm2,zmm4
  a15df8:	62 32 6d 48 b8 cb    	vfmadd231ps zmm9,zmm2,zmm19
  a15dfe:	62 72 45 48 bc c2    	vfnmadd231ps zmm8,zmm7,zmm2
  a15e04:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x80]
  a15e0b:	02 
  a15e0c:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x140]
  a15e13:	05 
  a15e14:	62 b1 5c 40 5c d2    	vsubps zmm2,zmm20,zmm18
  a15e1a:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x100]
  a15e21:	04 
  a15e22:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0xc0]
  a15e29:	03 
  a15e2a:	62 b1 54 40 5c d8    	vsubps zmm3,zmm21,zmm16
  a15e30:	62 21 64 48 59 cb    	vmulps zmm25,zmm3,zmm19
  a15e36:	62 62 6d 48 b8 cf    	vfmadd231ps zmm25,zmm2,zmm7
  a15e3c:	62 61 6c 48 59 f4    	vmulps zmm30,zmm2,zmm4
  a15e42:	62 62 65 48 bc f7    	vfnmadd231ps zmm30,zmm3,zmm7
  a15e48:	62 31 6c 48 59 e3    	vmulps zmm12,zmm2,zmm19
  a15e4e:	62 72 5d 48 bc e3    	vfnmadd231ps zmm12,zmm4,zmm3
  a15e54:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a15e5a:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x1c0]
  a15e61:	07 
  a15e62:	62 f1 4c 40 5c dd    	vsubps zmm3,zmm22,zmm5
  a15e68:	62 62 65 48 b8 cc    	vfmadd231ps zmm25,zmm3,zmm4
  a15e6e:	62 91 3c 40 5c d2    	vsubps zmm2,zmm24,zmm26
  a15e74:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a15e7a:	62 a1 7c 48 59 f3    	vmulps zmm22,zmm0,zmm19
  a15e80:	62 e2 6d 48 b8 f7    	vfmadd231ps zmm22,zmm2,zmm7
  a15e86:	62 d1 24 40 5c cd    	vsubps zmm1,zmm27,zmm13
  a15e8c:	62 e2 75 48 b8 f4    	vfmadd231ps zmm22,zmm1,zmm4
  a15e92:	62 71 6c 48 59 d4    	vmulps zmm10,zmm2,zmm4
  a15e98:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a15e9e:	62 f2 7d 48 bc d4    	vfnmadd231ps zmm2,zmm0,zmm4
  a15ea4:	62 72 7d 48 bc d7    	vfnmadd231ps zmm10,zmm0,zmm7
  a15eaa:	62 22 65 48 b8 f3    	vfmadd231ps zmm30,zmm3,zmm19
  a15eb0:	62 32 75 48 b8 d3    	vfmadd231ps zmm10,zmm1,zmm19
  a15eb6:	62 72 45 48 bc e3    	vfnmadd231ps zmm12,zmm7,zmm3
  a15ebc:	62 f2 75 48 bc d7    	vfnmadd231ps zmm2,zmm1,zmm7
  a15ec2:	62 b1 5c 40 58 da    	vaddps zmm3,zmm20,zmm18
  a15ec8:	62 b1 54 40 58 e0    	vaddps zmm4,zmm21,zmm16
  a15ece:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a15ed4:	62 81 3c 40 58 da    	vaddps zmm19,zmm24,zmm26
  a15eda:	62 01 1c 40 58 d5    	vaddps zmm26,zmm28,zmm29
  a15ee0:	62 51 24 40 58 ed    	vaddps zmm13,zmm27,zmm13
  a15ee6:	62 f2 7d 48 18 05 04 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65f704]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a15eed:	f7 65 ff 
  a15ef0:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a15ef6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a15efd:	01 
  a15efe:	62 62 65 48 a8 de    	vfmadd213ps zmm27,zmm3,zmm6
  a15f04:	62 62 7d 48 18 05 ca 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff65f6ca]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a15f0b:	f6 65 ff 
  a15f0e:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a15f14:	62 62 65 48 ac e6    	vfnmadd213ps zmm28,zmm3,zmm6
  a15f1a:	62 61 4c 48 58 eb    	vaddps zmm29,zmm6,zmm3
  a15f20:	62 f2 7d 48 18 0d a2 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65f3a2]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a15f27:	f3 65 ff 
  a15f2a:	62 f2 75 48 bc f3    	vfnmadd231ps zmm6,zmm1,zmm3
  a15f30:	62 f1 14 40 58 dc    	vaddps zmm3,zmm29,zmm4
  a15f36:	62 62 5d 48 bc d9    	vfnmadd231ps zmm27,zmm4,zmm1
  a15f3c:	62 62 5d 48 b8 e0    	vfmadd231ps zmm28,zmm4,zmm0
  a15f42:	62 f2 3d 40 bc f4    	vfnmadd231ps zmm6,zmm24,zmm4
  a15f48:	62 f1 64 48 58 e5    	vaddps zmm4,zmm3,zmm5
  a15f4e:	62 02 55 48 bc d8    	vfnmadd231ps zmm27,zmm5,zmm24
  a15f54:	62 62 55 48 bc e1    	vfnmadd231ps zmm28,zmm5,zmm1
  a15f5a:	62 f2 7d 48 b8 f5    	vfmadd231ps zmm6,zmm0,zmm5
  a15f60:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a15f66:	62 d2 65 40 a8 de    	vfmadd213ps zmm3,zmm19,zmm14
  a15f6c:	62 91 7c 48 28 e8    	vmovaps zmm5,zmm24
  a15f72:	62 d2 65 40 ac ee    	vfnmadd213ps zmm5,zmm19,zmm14
  a15f78:	62 21 0c 48 58 eb    	vaddps zmm29,zmm14,zmm19
  a15f7e:	62 32 75 48 bc f3    	vfnmadd231ps zmm14,zmm1,zmm19
  a15f84:	62 81 14 40 58 da    	vaddps zmm19,zmm29,zmm26
  a15f8a:	62 f2 2d 40 bc d9    	vfnmadd231ps zmm3,zmm26,zmm1
  a15f90:	62 f2 2d 40 b8 e8    	vfmadd231ps zmm5,zmm26,zmm0
  a15f96:	62 12 3d 40 bc f2    	vfnmadd231ps zmm14,zmm24,zmm26
  a15f9c:	62 c1 64 40 58 dd    	vaddps zmm19,zmm19,zmm13
  a15fa2:	62 92 15 48 bc d8    	vfnmadd231ps zmm3,zmm13,zmm24
  a15fa8:	62 f2 15 48 bc e9    	vfnmadd231ps zmm5,zmm13,zmm1
  a15fae:	62 52 7d 48 b8 f5    	vfmadd231ps zmm14,zmm0,zmm13
  a15fb4:	62 51 4c 48 5c eb    	vsubps zmm13,zmm6,zmm11
  a15fba:	62 51 4c 48 58 db    	vaddps zmm11,zmm6,zmm11
  a15fc0:	62 c1 0c 48 5c c0    	vsubps zmm16,zmm14,zmm8
  a15fc6:	62 d1 0c 48 58 f8    	vaddps zmm7,zmm14,zmm8
  a15fcc:	62 11 1c 40 5c f7    	vsubps zmm14,zmm28,zmm31
  a15fd2:	62 01 1c 40 58 e7    	vaddps zmm28,zmm28,zmm31
  a15fd8:	62 41 54 48 5c f9    	vsubps zmm31,zmm5,zmm9
  a15fde:	62 51 54 48 58 c9    	vaddps zmm9,zmm5,zmm9
  a15fe4:	62 b1 24 40 58 e9    	vaddps zmm5,zmm27,zmm17
  a15fea:	62 a1 24 40 5c c9    	vsubps zmm17,zmm27,zmm17
  a15ff0:	62 41 64 48 58 df    	vaddps zmm27,zmm3,zmm15
  a15ff6:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a15ffc:	62 01 54 48 58 d3    	vaddps zmm26,zmm5,zmm27
  a16002:	62 91 54 48 5c eb    	vsubps zmm5,zmm5,zmm27
  a16008:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a1600f:	05 
  a16010:	62 f1 24 48 58 ef    	vaddps zmm5,zmm11,zmm7
  a16016:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a1601d:	02 
  a1601e:	62 f1 24 48 5c ef    	vsubps zmm5,zmm11,zmm7
  a16024:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a1602b:	0d 
  a1602c:	62 b1 14 48 58 e8    	vaddps zmm5,zmm13,zmm16
  a16032:	62 b1 14 48 5c f0    	vsubps zmm6,zmm13,zmm16
  a16038:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a1603f:	04 
  a16040:	62 f1 74 40 58 f3    	vaddps zmm6,zmm17,zmm3
  a16046:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm6
  a1604d:	06 
  a1604e:	62 f1 74 40 5c db    	vsubps zmm3,zmm17,zmm3
  a16054:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a1605b:	09 
  a1605c:	62 d1 1c 40 58 d9    	vaddps zmm3,zmm28,zmm9
  a16062:	62 d1 1c 40 5c f1    	vsubps zmm6,zmm28,zmm9
  a16068:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a1606f:	01 
  a16070:	62 91 0c 48 58 f7    	vaddps zmm6,zmm14,zmm31
  a16076:	62 91 0c 48 5c ff    	vsubps zmm7,zmm14,zmm31
  a1607c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a16083:	03 
  a16084:	62 31 5c 48 58 c3    	vaddps zmm8,zmm4,zmm19
  a1608a:	62 b1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm19
  a16090:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm4
  a16097:	15 
  a16098:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x580]
  a1609f:	16 
  a160a0:	62 f1 5c 48 58 64 24 	vaddps zmm4,zmm4,ZMMWORD PTR [rsp+0x2c0]
  a160a7:	0b 
  a160a8:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x4c0]
  a160af:	13 
  a160b0:	62 f1 44 48 58 7c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x280]
  a160b7:	0a 
  a160b8:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x440]
  a160bf:	11 
  a160c0:	62 71 34 48 58 5c 24 	vaddps zmm11,zmm9,ZMMWORD PTR [rsp+0x480]
  a160c7:	12 
  a160c8:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a160cf:	0f 
  a160d0:	62 71 34 48 58 6c 24 	vaddps zmm13,zmm9,ZMMWORD PTR [rsp+0x200]
  a160d7:	08 
  a160d8:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x380]
  a160df:	0e 
  a160e0:	62 71 34 48 58 74 24 	vaddps zmm14,zmm9,ZMMWORD PTR [rsp+0x400]
  a160e7:	10 
  a160e8:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x300]
  a160ef:	0c 
  a160f0:	62 e1 34 48 58 44 24 	vaddps zmm16,zmm9,ZMMWORD PTR [rsp+0x680]
  a160f7:	1a 
  a160f8:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a160fe:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x500]
  a16105:	14 
  a16106:	62 c2 5d 48 a8 c9    	vfmadd213ps zmm17,zmm4,zmm9
  a1610c:	62 81 7c 48 28 d8    	vmovaps zmm19,zmm24
  a16112:	62 c2 5d 48 ac d9    	vfnmadd213ps zmm19,zmm4,zmm9
  a16118:	62 e1 34 48 58 e4    	vaddps zmm20,zmm9,zmm4
  a1611e:	62 72 75 48 bc cc    	vfnmadd231ps zmm9,zmm1,zmm4
  a16124:	62 f1 5c 40 58 e7    	vaddps zmm4,zmm20,zmm7
  a1612a:	62 e2 45 48 bc c9    	vfnmadd231ps zmm17,zmm7,zmm1
  a16130:	62 e2 45 48 b8 d8    	vfmadd231ps zmm19,zmm7,zmm0
  a16136:	62 72 3d 40 bc cf    	vfnmadd231ps zmm9,zmm24,zmm7
  a1613c:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a16142:	62 b2 15 48 a8 ff    	vfmadd213ps zmm7,zmm13,zmm23
  a16148:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a1614e:	62 a2 15 48 ac e7    	vfnmadd213ps zmm20,zmm13,zmm23
  a16154:	62 c1 44 40 58 ed    	vaddps zmm21,zmm23,zmm13
  a1615a:	62 e2 15 48 bc f9    	vfnmadd231ps zmm23,zmm13,zmm1
  a16160:	62 82 25 48 bc c8    	vfnmadd231ps zmm17,zmm11,zmm24
  a16166:	62 f2 0d 48 bc f9    	vfnmadd231ps zmm7,zmm14,zmm1
  a1616c:	62 92 7d 40 bc f8    	vfnmadd231ps zmm7,zmm16,zmm24
  a16172:	62 82 0d 48 bc f8    	vfnmadd231ps zmm23,zmm14,zmm24
  a16178:	62 51 54 40 58 ee    	vaddps zmm13,zmm21,zmm14
  a1617e:	62 e2 0d 48 b8 e0    	vfmadd231ps zmm20,zmm14,zmm0
  a16184:	62 e2 25 48 bc d9    	vfnmadd231ps zmm19,zmm11,zmm1
  a1618a:	62 e2 7d 40 bc e1    	vfnmadd231ps zmm20,zmm16,zmm1
  a16190:	62 f1 7c 48 28 0d 26 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b0e26]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a16197:	0e 6b ff 
  a1619a:	62 51 5c 48 58 f3    	vaddps zmm14,zmm4,zmm11
  a161a0:	62 52 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm11
  a161a6:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a161ac:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a161b2:	62 82 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm26
  a161b8:	62 e2 7d 40 b8 f8    	vfmadd231ps zmm23,zmm16,zmm0
  a161be:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  a161c4:	62 61 7c 48 28 c6    	vmovaps zmm24,zmm6
  a161ca:	62 62 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm5
  a161d0:	62 a1 14 48 58 c0    	vaddps zmm16,zmm13,zmm16
  a161d6:	62 d1 1c 48 58 c1    	vaddps zmm0,zmm12,zmm9
  a161dc:	62 d1 34 48 5c e4    	vsubps zmm4,zmm9,zmm12
  a161e2:	62 31 6c 48 58 c7    	vaddps zmm8,zmm2,zmm23
  a161e8:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a161ee:	62 31 0c 40 58 db    	vaddps zmm11,zmm30,zmm19
  a161f4:	62 11 64 40 5c fe    	vsubps zmm15,zmm19,zmm30
  a161fa:	62 a1 2c 48 58 dc    	vaddps zmm19,zmm10,zmm20
  a16200:	62 d1 5c 40 5c f2    	vsubps zmm6,zmm20,zmm10
  a16206:	62 11 74 40 5c e9    	vsubps zmm13,zmm17,zmm25
  a1620c:	62 a1 34 40 58 c9    	vaddps zmm17,zmm25,zmm17
  a16212:	62 a1 44 48 5c d6    	vsubps zmm18,zmm7,zmm22
  a16218:	62 f1 4c 40 58 ff    	vaddps zmm7,zmm22,zmm7
  a1621e:	62 a1 14 48 58 fa    	vaddps zmm23,zmm13,zmm18
  a16224:	62 21 14 48 5c f2    	vsubps zmm30,zmm13,zmm18
  a1622a:	62 e1 5c 48 58 f2    	vaddps zmm22,zmm4,zmm2
  a16230:	62 71 5c 48 5c e2    	vsubps zmm12,zmm4,zmm2
  a16236:	62 d1 7c 48 58 e0    	vaddps zmm4,zmm0,zmm8
  a1623c:	62 41 7c 48 5c e0    	vsubps zmm28,zmm0,zmm8
  a16242:	62 71 74 40 58 ef    	vaddps zmm13,zmm17,zmm7
  a16248:	62 71 74 40 5c c7    	vsubps zmm8,zmm17,zmm7
  a1624e:	62 61 04 48 58 ce    	vaddps zmm25,zmm15,zmm6
  a16254:	62 61 04 48 5c fe    	vsubps zmm31,zmm15,zmm6
  a1625a:	62 a1 24 48 58 d3    	vaddps zmm18,zmm11,zmm19
  a16260:	62 31 24 48 5c db    	vsubps zmm11,zmm11,zmm19
  a16266:	62 a1 0c 48 58 c8    	vaddps zmm17,zmm14,zmm16
  a1626c:	62 a1 0c 48 5c c0    	vsubps zmm16,zmm14,zmm16
  a16272:	62 71 7c 48 28 3d 04 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b0d04]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a16279:	0d 6b ff 
  a1627c:	62 02 05 48 7f da    	vpermt2ps zmm27,zmm15,zmm26
  a16282:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm27
  a16289:	07 
  a1628a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a16291:	02 
  a16292:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a16298:	62 72 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm3
  a1629e:	62 62 05 48 7f c5    	vpermt2ps zmm24,zmm15,zmm5
  a162a4:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm24
  a162ab:	0b 
  a162ac:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a162b2:	62 f2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm3
  a162b8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a162bf:	02 
  a162c0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a162c7:	05 
  a162c8:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a162ce:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a162d5:	0d 
  a162d6:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a162dc:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a162e2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a162e9:	05 
  a162ea:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x100]
  a162f1:	04 
  a162f2:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a162f8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a162ff:	09 
  a16300:	62 e2 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm0
  a16306:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a1630c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a16313:	01 
  a16314:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a1631a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a16321:	03 
  a16322:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a16328:	62 f2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm0
  a1632e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a16335:	01 
  a16336:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a1633c:	62 32 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm23
  a16342:	62 a2 05 48 7f cf    	vpermt2ps zmm17,zmm15,zmm23
  a16348:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a1634e:	62 72 75 48 7f d4    	vpermt2ps zmm10,zmm1,zmm4
  a16354:	62 e2 05 48 7f d4    	vpermt2ps zmm18,zmm15,zmm4
  a1635a:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a16360:	62 82 75 48 7f f1    	vpermt2ps zmm22,zmm1,zmm25
  a16366:	62 92 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm25
  a1636c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a16373:	04 
  a16374:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a1637a:	62 d2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm12
  a16380:	62 42 05 48 7f f4    	vpermt2ps zmm30,zmm15,zmm12
  a16386:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm30
  a1638d:	03 
  a1638e:	62 11 7c 48 28 e4    	vmovaps zmm12,zmm28
  a16394:	62 52 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm8
  a1639a:	62 42 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm8
  a163a0:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a163a6:	62 42 75 48 7f c3    	vpermt2ps zmm24,zmm1,zmm11
  a163ac:	62 42 05 48 7f fb    	vpermt2ps zmm31,zmm15,zmm11
  a163b2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a163b9:	06 
  a163ba:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a163c0:	62 b2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm19
  a163c6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a163cd:	15 
  a163ce:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a163d4:	62 32 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm19
  a163da:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a163e0:	62 22 75 48 7f f3    	vpermt2ps zmm30,zmm1,zmm19
  a163e6:	62 b2 7d 40 77 cb    	vpermi2ps zmm1,zmm16,zmm19
  a163ec:	62 b2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm19
  a163f2:	62 b2 05 48 7f d3    	vpermt2ps zmm2,zmm15,zmm19
  a163f8:	62 32 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm19
  a163fe:	62 a2 05 48 7f c3    	vpermt2ps zmm16,zmm15,zmm19
  a16404:	62 61 7c 48 28 0d f2 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6b0af2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1640b:	0a 6b ff 
  a1640e:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a16414:	62 82 35 40 7f fd    	vpermt2ps zmm23,zmm25,zmm29
  a1641a:	62 71 7c 48 28 1d 1c 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b0b1c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a16421:	0b 6b ff 
  a16424:	62 82 25 48 7f ed    	vpermt2ps zmm21,zmm11,zmm29
  a1642a:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm21
  a16431:	09 
  a16432:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a16438:	62 f2 35 40 7f fc    	vpermt2ps zmm7,zmm25,zmm4
  a1643e:	62 72 25 48 7f cc    	vpermt2ps zmm9,zmm11,zmm4
  a16444:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a1644a:	62 a2 35 40 7f dc    	vpermt2ps zmm19,zmm25,zmm20
  a16450:	62 b2 25 48 7f f4    	vpermt2ps zmm6,zmm11,zmm20
  a16456:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a1645c:	62 c2 35 40 7f e0    	vpermt2ps zmm20,zmm25,zmm8
  a16462:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a16468:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a1646e:	62 c2 35 40 7f ea    	vpermt2ps zmm21,zmm25,zmm10
  a16474:	62 52 25 48 7f f2    	vpermt2ps zmm14,zmm11,zmm10
  a1647a:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a16480:	62 02 35 40 7f d6    	vpermt2ps zmm26,zmm25,zmm30
  a16486:	62 82 25 48 7f f6    	vpermt2ps zmm22,zmm11,zmm30
  a1648c:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a16492:	62 d2 35 40 7f e4    	vpermt2ps zmm4,zmm25,zmm12
  a16498:	62 d2 25 48 7f dc    	vpermt2ps zmm3,zmm11,zmm12
  a1649e:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a164a4:	62 72 35 40 7f c1    	vpermt2ps zmm8,zmm25,zmm1
  a164aa:	62 62 25 48 7f c1    	vpermt2ps zmm24,zmm11,zmm1
  a164b0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a164b7:	07 
  a164b8:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a164be:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a164c5:	0b 
  a164c6:	62 52 35 40 7f e2    	vpermt2ps zmm12,zmm25,zmm10
  a164cc:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a164d3:	06 
  a164d4:	62 d2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm10
  a164da:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a164e1:	07 
  a164e2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a164e9:	02 
  a164ea:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a164f0:	62 72 35 40 7f f8    	vpermt2ps zmm15,zmm25,zmm0
  a164f6:	62 f2 25 48 7f c8    	vpermt2ps zmm1,zmm11,zmm0
  a164fc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a16503:	02 
  a16504:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a1650b:	05 
  a1650c:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a16512:	62 12 35 40 7f e3    	vpermt2ps zmm12,zmm25,zmm27
  a16518:	62 92 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm27
  a1651e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a16525:	05 
  a16526:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a1652d:	01 
  a1652e:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a16534:	62 62 35 40 7f f2    	vpermt2ps zmm30,zmm25,zmm2
  a1653a:	62 f2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm2
  a16540:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a16547:	01 
  a16548:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a1654e:	62 a2 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm18
  a16554:	62 b2 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm18
  a1655a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a16561:	0c 
  a16562:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a16569:	04 
  a1656a:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a16570:	62 52 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm13
  a16576:	62 d2 25 48 7f c5    	vpermt2ps zmm0,zmm11,zmm13
  a1657c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a16583:	04 
  a16584:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1658b:	03 
  a1658c:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a16592:	62 12 35 40 7f ec    	vpermt2ps zmm13,zmm25,zmm28
  a16598:	62 92 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm28
  a1659e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a165a5:	03 
  a165a6:	62 22 05 40 77 c8    	vpermi2ps zmm25,zmm31,zmm16
  a165ac:	62 22 25 48 7f f8    	vpermt2ps zmm31,zmm11,zmm16
  a165b2:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm31
  a165b9:	17 
  a165ba:	62 61 7c 48 28 2d 3c 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6b083c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a165c1:	08 6b ff 
  a165c4:	62 f1 c5 40 14 c7    	vunpcklpd zmm0,zmm23,zmm7
  a165ca:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a165d1:	0d 
  a165d2:	62 b1 e5 40 14 cc    	vunpcklpd zmm1,zmm19,zmm20
  a165d8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a165df:	1a 
  a165e0:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a165e6:	62 91 d5 40 14 ca    	vunpcklpd zmm1,zmm21,zmm26
  a165ec:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm1
  a165f3:	1e 
  a165f4:	62 d1 dd 48 14 d0    	vunpcklpd zmm2,zmm4,zmm8
  a165fa:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm2
  a16601:	22 
  a16602:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a16608:	62 71 7c 48 10 5a 11 	vmovups zmm11,ZMMWORD PTR [rdx+0x440]
  a1660f:	62 e1 7c 48 10 42 10 	vmovups zmm16,ZMMWORD PTR [rdx+0x400]
  a16616:	62 b1 74 48 59 d0    	vmulps zmm2,zmm1,zmm16
  a1661c:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a16622:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a16629:	15 
  a1662a:	62 b1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm16
  a16630:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  a16636:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a1663d:	0b 
  a1663e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a16645:	06 
  a16646:	62 41 fd 48 15 ff    	vunpckhpd zmm31,zmm0,zmm15
  a1664c:	62 91 9d 48 15 ce    	vunpckhpd zmm1,zmm12,zmm30
  a16652:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a16659:	19 
  a1665a:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a16660:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a16666:	62 41 f5 40 15 e2    	vunpckhpd zmm28,zmm17,zmm10
  a1666c:	62 91 95 48 15 d1    	vunpckhpd zmm2,zmm13,zmm25
  a16672:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm2
  a16679:	18 
  a1667a:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a16680:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a16686:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a1668d:	62 f1 7c 48 10 52 05 	vmovups zmm2,ZMMWORD PTR [rdx+0x140]
  a16694:	62 21 74 48 59 d8    	vmulps zmm27,zmm1,zmm16
  a1669a:	62 62 7d 48 b8 da    	vfmadd231ps zmm27,zmm0,zmm2
  a166a0:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm27
  a166a7:	14 
  a166a8:	62 b1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm16
  a166ae:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a166b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a166bb:	16 
  a166bc:	62 e1 c5 40 15 ff    	vunpckhpd zmm23,zmm23,zmm7
  a166c2:	62 b1 e5 40 15 d4    	vunpckhpd zmm2,zmm19,zmm20
  a166c8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a166cf:	08 
  a166d0:	62 81 d5 40 15 ea    	vunpckhpd zmm21,zmm21,zmm26
  a166d6:	62 d1 dd 48 15 e0    	vunpckhpd zmm4,zmm4,zmm8
  a166dc:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm4
  a166e3:	10 
  a166e4:	62 71 7c 48 28 1d 52 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6b0752]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a166eb:	07 6b ff 
  a166ee:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a166f4:	62 f2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm2
  a166fa:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a16700:	62 f2 25 48 7f d4    	vpermt2ps zmm2,zmm11,zmm4
  a16706:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a1670d:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a16714:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a1671a:	62 72 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm4
  a16720:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm8
  a16727:	0a 
  a16728:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a1672e:	62 f2 5d 48 bc ca    	vfnmadd231ps zmm1,zmm4,zmm2
  a16734:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a1673b:	12 
  a1673c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a16743:	09 
  a16744:	62 d1 fd 48 15 c9    	vunpckhpd zmm1,zmm0,zmm9
  a1674a:	62 f1 cd 48 15 d5    	vunpckhpd zmm2,zmm6,zmm5
  a16750:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a16756:	62 b1 8d 48 15 d6    	vunpckhpd zmm2,zmm14,zmm22
  a1675c:	62 91 e5 48 15 e0    	vunpckhpd zmm4,zmm3,zmm24
  a16762:	62 f2 15 40 7f d4    	vpermt2ps zmm2,zmm29,zmm4
  a16768:	62 f1 7c 48 10 62 1d 	vmovups zmm4,ZMMWORD PTR [rdx+0x740]
  a1676f:	62 f1 7c 48 10 7a 1c 	vmovups zmm7,ZMMWORD PTR [rdx+0x700]
  a16776:	62 71 6c 48 59 c7    	vmulps zmm8,zmm2,zmm7
  a1677c:	62 72 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm4
  a16782:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm8
  a16789:	13 
  a1678a:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a16790:	62 f2 5d 48 bc ca    	vfnmadd231ps zmm1,zmm4,zmm2
  a16796:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a1679d:	11 
  a1679e:	62 c1 fd 48 14 d1    	vunpcklpd zmm18,zmm0,zmm9
  a167a4:	62 f1 cd 48 14 c5    	vunpcklpd zmm0,zmm6,zmm5
  a167aa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a167b1:	1d 
  a167b2:	62 a1 8d 48 14 c6    	vunpcklpd zmm16,zmm14,zmm22
  a167b8:	62 91 e5 48 14 c8    	vunpcklpd zmm1,zmm3,zmm24
  a167be:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  a167c5:	1c 
  a167c6:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a167cc:	62 f2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm0
  a167d2:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a167d8:	62 f2 25 48 7f e1    	vpermt2ps zmm4,zmm11,zmm1
  a167de:	62 f1 7c 48 10 6a 1b 	vmovups zmm5,ZMMWORD PTR [rdx+0x6c0]
  a167e5:	62 f1 7c 48 10 72 1a 	vmovups zmm6,ZMMWORD PTR [rdx+0x680]
  a167ec:	62 f1 5c 48 59 fe    	vmulps zmm7,zmm4,zmm6
  a167f2:	62 f2 65 48 b8 fd    	vfmadd231ps zmm7,zmm3,zmm5
  a167f8:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm7
  a167ff:	09 
  a16800:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a16806:	62 f2 55 48 bc dc    	vfnmadd231ps zmm3,zmm5,zmm4
  a1680c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm3
  a16813:	20 
  a16814:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x1c0]
  a1681b:	07 
  a1681c:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x80]
  a16823:	02 
  a16824:	62 31 e5 40 15 f4    	vunpckhpd zmm14,zmm19,zmm20
  a1682a:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x140]
  a16831:	05 
  a16832:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x40]
  a16839:	01 
  a1683a:	62 81 a5 40 15 f0    	vunpckhpd zmm22,zmm27,zmm24
  a16840:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a16846:	62 b2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm22
  a1684c:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x300]
  a16853:	0c 
  a16854:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a1685b:	04 
  a1685c:	62 f1 ad 40 15 d8    	vunpckhpd zmm3,zmm26,zmm0
  a16862:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a16869:	03 
  a1686a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a16871:	17 
  a16872:	62 f1 ed 48 15 f1    	vunpckhpd zmm6,zmm2,zmm1
  a16878:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a1687e:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a16884:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a1688b:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a16892:	62 51 54 48 59 c8    	vmulps zmm9,zmm5,zmm8
  a16898:	62 72 5d 48 b8 cf    	vfmadd231ps zmm9,zmm4,zmm7
  a1689e:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm9
  a168a5:	0f 
  a168a6:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a168ac:	62 f2 45 48 bc e5    	vfnmadd231ps zmm4,zmm7,zmm5
  a168b2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm4
  a168b9:	21 
  a168ba:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a168c1:	06 
  a168c2:	62 d1 dd 48 14 ef    	vunpcklpd zmm5,zmm4,zmm15
  a168c8:	62 11 9d 48 14 e6    	vunpcklpd zmm12,zmm12,zmm30
  a168ce:	62 51 f5 40 14 ca    	vunpcklpd zmm9,zmm17,zmm10
  a168d4:	62 91 95 48 14 f9    	vunpcklpd zmm7,zmm13,zmm25
  a168da:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a168e0:	62 d2 25 48 7f e4    	vpermt2ps zmm4,zmm11,zmm12
  a168e6:	62 41 7c 48 28 cc    	vmovaps zmm25,zmm12
  a168ec:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a168f2:	62 41 7c 48 28 f1    	vmovaps zmm30,zmm9
  a168f8:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a168fe:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a16905:	62 71 7c 48 10 52 03 	vmovups zmm10,ZMMWORD PTR [rdx+0xc0]
  a1690c:	62 51 3c 48 59 e1    	vmulps zmm12,zmm8,zmm9
  a16912:	62 52 5d 48 b8 e2    	vfmadd231ps zmm12,zmm4,zmm10
  a16918:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm12
  a1691f:	0e 
  a16920:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a16926:	62 d2 2d 48 bc e0    	vfnmadd231ps zmm4,zmm10,zmm8
  a1692c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm4
  a16933:	1f 
  a16934:	62 b1 e5 40 14 e4    	vunpcklpd zmm4,zmm19,zmm20
  a1693a:	62 11 a5 40 14 c8    	vunpcklpd zmm9,zmm27,zmm24
  a16940:	62 71 ad 40 14 e0    	vunpcklpd zmm12,zmm26,zmm0
  a16946:	62 71 ed 48 14 e9    	vunpcklpd zmm13,zmm2,zmm1
  a1694c:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a16952:	62 d2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm9
  a16958:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a1695e:	62 52 15 40 7f e5    	vpermt2ps zmm12,zmm29,zmm13
  a16964:	62 71 7c 48 10 7a 09 	vmovups zmm15,ZMMWORD PTR [rdx+0x240]
  a1696b:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a16972:	62 a1 1c 48 59 d9    	vmulps zmm19,zmm12,zmm17
  a16978:	62 c2 5d 48 b8 df    	vfmadd231ps zmm19,zmm4,zmm15
  a1697e:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm19
  a16985:	0c 
  a16986:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a1698c:	62 d2 05 48 bc e4    	vfnmadd231ps zmm4,zmm15,zmm12
  a16992:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a16998:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm4
  a1699f:	23 
  a169a0:	62 52 25 48 7f c1    	vpermt2ps zmm8,zmm11,zmm9
  a169a6:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a169ac:	62 62 25 48 7f 64 24 	vpermt2ps zmm28,zmm11,ZMMWORD PTR [rsp+0x600]
  a169b3:	18 
  a169b4:	62 62 25 48 7f 7c 24 	vpermt2ps zmm31,zmm11,ZMMWORD PTR [rsp+0x640]
  a169bb:	19 
  a169bc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a169c3:	1e 
  a169c4:	62 f2 25 48 7f 4c 24 	vpermt2ps zmm1,zmm11,ZMMWORD PTR [rsp+0x880]
  a169cb:	22 
  a169cc:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x340]
  a169d3:	0d 
  a169d4:	62 72 25 48 7f 4c 24 	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x680]
  a169db:	1a 
  a169dc:	62 f2 15 40 7f de    	vpermt2ps zmm3,zmm29,zmm6
  a169e2:	62 32 15 40 7f f6    	vpermt2ps zmm14,zmm29,zmm22
  a169e8:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a169ef:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a169f6:	62 f1 0c 48 59 f4    	vmulps zmm6,zmm14,zmm4
  a169fc:	62 f2 65 48 bc f0    	vfnmadd231ps zmm6,zmm3,zmm0
  a16a02:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a16a08:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a16a0f:	1b 
  a16a10:	62 f1 64 48 59 d4    	vmulps zmm2,zmm3,zmm4
  a16a16:	62 d2 7d 48 b8 d6    	vfmadd231ps zmm2,zmm0,zmm14
  a16a1c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a16a23:	0d 
  a16a24:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a16a2b:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a16a32:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a16a38:	62 f1 34 48 59 f3    	vmulps zmm6,zmm9,zmm3
  a16a3e:	62 f2 75 48 bc f0    	vfnmadd231ps zmm6,zmm1,zmm0
  a16a44:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a16a4a:	62 e1 74 48 59 f3    	vmulps zmm22,zmm1,zmm3
  a16a50:	62 e2 7d 48 b8 f4    	vfmadd231ps zmm22,zmm0,zmm4
  a16a56:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a16a5d:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a16a64:	62 f1 04 40 59 e3    	vmulps zmm4,zmm31,zmm3
  a16a6a:	62 f2 1d 40 bc e0    	vfnmadd231ps zmm4,zmm28,zmm0
  a16a70:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a16a77:	17 
  a16a78:	62 e1 1c 40 59 e3    	vmulps zmm20,zmm28,zmm3
  a16a7e:	62 82 7d 48 b8 e7    	vfmadd231ps zmm20,zmm0,zmm31
  a16a84:	62 e2 15 40 7f 44 24 	vpermt2ps zmm16,zmm29,ZMMWORD PTR [rsp+0x700]
  a16a8b:	1c 
  a16a8c:	62 e2 15 40 7f 54 24 	vpermt2ps zmm18,zmm29,ZMMWORD PTR [rsp+0x740]
  a16a93:	1d 
  a16a94:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a16a9b:	62 f1 7c 48 10 72 18 	vmovups zmm6,ZMMWORD PTR [rdx+0x600]
  a16aa2:	62 f1 6c 40 59 ce    	vmulps zmm1,zmm18,zmm6
  a16aa8:	62 f2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm0
  a16aae:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a16ab4:	62 e1 7c 40 59 de    	vmulps zmm19,zmm16,zmm6
  a16aba:	62 a2 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm18
  a16ac0:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a16ac7:	62 f1 7c 48 10 52 0a 	vmovups zmm2,ZMMWORD PTR [rdx+0x280]
  a16ace:	62 f1 2c 48 59 ca    	vmulps zmm1,zmm10,zmm2
  a16ad4:	62 f2 3d 48 b8 c8    	vfmadd231ps zmm1,zmm8,zmm0
  a16ada:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a16ae1:	01 
  a16ae2:	62 f1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm2
  a16ae8:	62 d2 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm10
  a16aee:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a16af5:	06 
  a16af6:	62 e2 15 40 7f 7c 24 	vpermt2ps zmm23,zmm29,ZMMWORD PTR [rsp+0x200]
  a16afd:	08 
  a16afe:	62 e2 15 40 7f 6c 24 	vpermt2ps zmm21,zmm29,ZMMWORD PTR [rsp+0x400]
  a16b05:	10 
  a16b06:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a16b0d:	62 f1 7c 48 10 52 14 	vmovups zmm2,ZMMWORD PTR [rdx+0x500]
  a16b14:	62 f1 54 40 59 ca    	vmulps zmm1,zmm21,zmm2
  a16b1a:	62 f2 45 40 b8 c8    	vfmadd231ps zmm1,zmm23,zmm0
  a16b20:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a16b27:	07 
  a16b28:	62 f1 44 40 59 ca    	vmulps zmm1,zmm23,zmm2
  a16b2e:	62 b2 7d 48 bc cd    	vfnmadd231ps zmm1,zmm0,zmm21
  a16b34:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a16b3a:	62 62 15 40 7f f7    	vpermt2ps zmm30,zmm29,zmm7
  a16b40:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm30
  a16b47:	05 
  a16b48:	62 92 15 40 7f e9    	vpermt2ps zmm5,zmm29,zmm25
  a16b4e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a16b55:	03 
  a16b56:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a16b5d:	0b 
  a16b5e:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x580]
  a16b65:	16 
  a16b66:	62 f2 7d 48 18 15 e8 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65ebe8]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a16b6d:	eb 65 ff 
  a16b70:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x480]
  a16b77:	12 
  a16b78:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x440]
  a16b7f:	11 
  a16b80:	62 91 24 40 5c ff    	vsubps zmm7,zmm27,zmm31
  a16b86:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a16b8c:	62 f2 7d 48 18 2d 0a 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff65e80a]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a16b93:	e8 65 ff 
  a16b96:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a16b9c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a16ba3:	02 
  a16ba4:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a16baa:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a16bb0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a16bb7:	19 
  a16bb8:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x800]
  a16bbf:	20 
  a16bc0:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x840]
  a16bc7:	21 
  a16bc8:	62 d1 7c 40 5c c5    	vsubps zmm0,zmm16,zmm13
  a16bce:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x7c0]
  a16bd5:	1f 
  a16bd6:	62 d1 54 40 5c fc    	vsubps zmm7,zmm21,zmm12
  a16bdc:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a16be2:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a16be8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a16bef:	04 
  a16bf0:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a16bf6:	62 f2 55 48 bc c7    	vfnmadd231ps zmm0,zmm5,zmm7
  a16bfc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a16c03:	18 
  a16c04:	62 f1 5c 48 5c c3    	vsubps zmm0,zmm4,zmm3
  a16c0a:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a16c10:	62 d1 24 48 5c f9    	vsubps zmm7,zmm11,zmm9
  a16c16:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a16c1c:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a16c22:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a16c28:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a16c2f:	08 
  a16c30:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a16c36:	62 62 55 48 bc e7    	vfnmadd231ps zmm28,zmm5,zmm7
  a16c3c:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x540]
  a16c43:	15 
  a16c44:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x500]
  a16c4b:	14 
  a16c4c:	62 b1 2c 48 5c fa    	vsubps zmm7,zmm10,zmm18
  a16c52:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x280]
  a16c59:	0a 
  a16c5a:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x4c0]
  a16c61:	13 
  a16c62:	62 51 0c 40 5c c1    	vsubps zmm8,zmm30,zmm9
  a16c68:	62 71 3c 48 59 fa    	vmulps zmm15,zmm8,zmm2
  a16c6e:	62 72 45 48 b8 fd    	vfmadd231ps zmm15,zmm7,zmm5
  a16c74:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm15
  a16c7b:	1a 
  a16c7c:	62 61 44 48 59 d2    	vmulps zmm26,zmm7,zmm2
  a16c82:	62 42 55 48 bc d0    	vfnmadd231ps zmm26,zmm5,zmm8
  a16c88:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x240]
  a16c8f:	09 
  a16c90:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x3c0]
  a16c97:	0f 
  a16c98:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a16c9e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a16ca5:	0e 
  a16ca6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a16cad:	0c 
  a16cae:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a16cb4:	62 f1 3c 48 59 c2    	vmulps zmm0,zmm8,zmm2
  a16cba:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a16cc0:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a16cc6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a16ccd:	22 
  a16cce:	62 e1 44 48 59 fa    	vmulps zmm23,zmm7,zmm2
  a16cd4:	62 c2 55 48 bc f8    	vfnmadd231ps zmm23,zmm5,zmm8
  a16cda:	62 b1 5c 40 5c fb    	vsubps zmm7,zmm20,zmm19
  a16ce0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a16ce7:	0d 
  a16ce8:	62 31 7c 48 5c c6    	vsubps zmm8,zmm0,zmm22
  a16cee:	62 71 3c 48 59 e2    	vmulps zmm12,zmm8,zmm2
  a16cf4:	62 72 45 48 b8 e5    	vfmadd231ps zmm12,zmm7,zmm5
  a16cfa:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm12
  a16d01:	10 
  a16d02:	62 71 44 48 59 f2    	vmulps zmm14,zmm7,zmm2
  a16d08:	62 72 3d 48 bc f5    	vfnmadd231ps zmm14,zmm8,zmm5
  a16d0e:	62 51 0c 40 58 c9    	vaddps zmm9,zmm30,zmm9
  a16d14:	62 a1 2c 48 58 d2    	vaddps zmm18,zmm10,zmm18
  a16d1a:	62 71 64 48 58 d1    	vaddps zmm10,zmm3,zmm1
  a16d20:	62 71 4c 48 58 dc    	vaddps zmm11,zmm6,zmm4
  a16d26:	62 21 7c 48 58 f6    	vaddps zmm30,zmm0,zmm22
  a16d2c:	62 31 5c 40 58 e3    	vaddps zmm12,zmm20,zmm19
  a16d32:	62 81 24 40 58 f7    	vaddps zmm22,zmm27,zmm31
  a16d38:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a16d3f:	16 
  a16d40:	62 61 7c 48 58 5c 24 	vaddps zmm27,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a16d47:	0b 
  a16d48:	62 61 54 40 58 7c 24 	vaddps zmm31,zmm21,ZMMWORD PTR [rsp+0x8c0]
  a16d4f:	23 
  a16d50:	62 f2 7d 48 18 15 8e 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65e98e]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a16d57:	e9 65 ff 
  a16d5a:	62 51 7c 40 58 c5    	vaddps zmm8,zmm16,zmm13
  a16d60:	62 f2 7d 48 18 0d da 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65e8da]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a16d67:	e8 65 ff 
  a16d6a:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a16d70:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a16d77:	06 
  a16d78:	62 e2 25 40 a8 e8    	vfmadd213ps zmm21,zmm27,zmm0
  a16d7e:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm27
  a16d85:	11 
  a16d86:	62 e2 4d 40 bc e9    	vfnmadd231ps zmm21,zmm22,zmm1
  a16d8c:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm22
  a16d93:	0f 
  a16d94:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a16d9a:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a16da0:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm24
  a16da7:	1e 
  a16da8:	62 82 3d 48 a8 d8    	vfmadd213ps zmm19,zmm8,zmm24
  a16dae:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm8
  a16db5:	0e 
  a16db6:	62 e2 05 40 bc d9    	vfnmadd231ps zmm19,zmm31,zmm1
  a16dbc:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm31
  a16dc3:	0d 
  a16dc4:	62 d1 54 40 5c ef    	vsubps zmm5,zmm21,zmm15
  a16dca:	62 b1 64 40 5c f9    	vsubps zmm7,zmm19,zmm17
  a16dd0:	62 f1 54 48 5c df    	vsubps zmm3,zmm5,zmm7
  a16dd6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a16ddd:	15 
  a16dde:	62 f1 54 48 58 df    	vaddps zmm3,zmm5,zmm7
  a16de4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a16deb:	0a 
  a16dec:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x6c0]
  a16df3:	1b 
  a16df4:	62 61 14 40 58 44 24 	vaddps zmm24,zmm29,ZMMWORD PTR [rsp+0x5c0]
  a16dfb:	17 
  a16dfc:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a16e02:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x40]
  a16e09:	01 
  a16e0a:	62 a2 6d 40 a8 cc    	vfmadd213ps zmm17,zmm18,zmm20
  a16e10:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a16e16:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm18
  a16e1d:	1d 
  a16e1e:	62 e2 35 48 bc c9    	vfnmadd231ps zmm17,zmm9,zmm1
  a16e24:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm9
  a16e2b:	1c 
  a16e2c:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a16e32:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x1c0]
  a16e39:	07 
  a16e3a:	62 a2 25 48 a8 c2    	vfmadd213ps zmm16,zmm11,zmm18
  a16e40:	62 e2 2d 48 bc c1    	vfnmadd231ps zmm16,zmm10,zmm1
  a16e46:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a16e4c:	62 f1 74 40 58 5c 24 	vaddps zmm3,zmm17,ZMMWORD PTR [rsp+0x80]
  a16e53:	02 
  a16e54:	62 f1 7c 40 58 64 24 	vaddps zmm4,zmm16,ZMMWORD PTR [rsp+0x100]
  a16e5b:	04 
  a16e5c:	62 f1 64 48 58 ec    	vaddps zmm5,zmm3,zmm4
  a16e62:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a16e69:	13 
  a16e6a:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a16e70:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm3
  a16e77:	14 
  a16e78:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a16e7e:	62 f2 25 40 ac e8    	vfnmadd213ps zmm5,zmm27,zmm0
  a16e84:	62 f2 4d 40 b8 ea    	vfmadd231ps zmm5,zmm22,zmm2
  a16e8a:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a16e90:	62 d2 3d 48 ac f5    	vfnmadd213ps zmm6,zmm8,zmm13
  a16e96:	62 f2 05 40 b8 f2    	vfmadd231ps zmm6,zmm31,zmm2
  a16e9c:	62 91 54 48 5c da    	vsubps zmm3,zmm5,zmm26
  a16ea2:	62 b1 4c 48 5c e7    	vsubps zmm4,zmm6,zmm23
  a16ea8:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a16eae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a16eb5:	12 
  a16eb6:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a16ebc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a16ec3:	09 
  a16ec4:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a16eca:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a16ed1:	05 
  a16ed2:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a16ed8:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm12
  a16edf:	25 
  a16ee0:	62 e2 1d 48 a8 f4    	vfmadd213ps zmm22,zmm12,zmm4
  a16ee6:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a16eec:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm30
  a16ef3:	24 
  a16ef4:	62 e2 0d 40 bc f1    	vfnmadd231ps zmm22,zmm30,zmm1
  a16efa:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a16f00:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a16f07:	03 
  a16f08:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm24
  a16f0f:	20 
  a16f10:	62 72 3d 40 a8 e3    	vfmadd213ps zmm12,zmm24,zmm3
  a16f16:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm25
  a16f1d:	1f 
  a16f1e:	62 72 35 40 bc e1    	vfnmadd231ps zmm12,zmm25,zmm1
  a16f24:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a16f2a:	62 32 45 48 ac ec    	vfnmadd213ps zmm13,zmm7,zmm20
  a16f30:	62 72 35 48 b8 ea    	vfmadd231ps zmm13,zmm9,zmm2
  a16f36:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a16f3c:	62 22 25 48 ac da    	vfnmadd213ps zmm27,zmm11,zmm18
  a16f42:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a16f48:	62 62 15 40 b8 da    	vfmadd231ps zmm27,zmm29,zmm2
  a16f4e:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a16f54:	62 f2 3d 48 ac c4    	vfnmadd213ps zmm0,zmm8,zmm4
  a16f5a:	62 f2 2d 48 b8 c2    	vfmadd231ps zmm0,zmm10,zmm2
  a16f60:	62 f2 3d 40 ac cb    	vfnmadd213ps zmm1,zmm24,zmm3
  a16f66:	62 f2 35 40 b8 ca    	vfmadd231ps zmm1,zmm25,zmm2
  a16f6c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x640]
  a16f73:	19 
  a16f74:	62 f1 14 48 58 dc    	vaddps zmm3,zmm13,zmm4
  a16f7a:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x600]
  a16f81:	18 
  a16f82:	62 f1 24 40 58 d7    	vaddps zmm2,zmm27,zmm7
  a16f88:	62 71 64 48 58 c2    	vaddps zmm8,zmm3,zmm2
  a16f8e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm8
  a16f95:	21 
  a16f96:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a16f9c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a16fa3:	0c 
  a16fa4:	62 61 1c 40 58 c8    	vaddps zmm25,zmm28,zmm0
  a16faa:	62 91 7c 48 5c d4    	vsubps zmm2,zmm0,zmm28
  a16fb0:	62 f1 14 48 5c e4    	vsubps zmm4,zmm13,zmm4
  a16fb6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a16fbd:	17 
  a16fbe:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a16fc4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a16fcb:	18 
  a16fcc:	62 d1 74 48 5c c6    	vsubps zmm0,zmm1,zmm14
  a16fd2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a16fd9:	19 
  a16fda:	62 51 74 48 58 ee    	vaddps zmm13,zmm1,zmm14
  a16fe0:	62 91 54 48 58 ea    	vaddps zmm5,zmm5,zmm26
  a16fe6:	62 b1 4c 48 58 df    	vaddps zmm3,zmm6,zmm23
  a16fec:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a16ff3:	1b 
  a16ff4:	62 f2 7d 48 18 05 62 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65e462]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a16ffb:	e4 65 ff 
  a16ffe:	62 61 5c 48 58 ff    	vaddps zmm31,zmm4,zmm7
  a17004:	62 91 6c 48 58 cf    	vaddps zmm1,zmm2,zmm31
  a1700a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a17011:	0b 
  a17012:	62 62 7d 48 ac fa    	vfnmadd213ps zmm31,zmm0,zmm2
  a17018:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a1701e:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a17024:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a1702a:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a17030:	62 f1 54 48 58 cb    	vaddps zmm1,zmm5,zmm3
  a17036:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a1703c:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a17042:	62 e1 7c 48 28 d0    	vmovaps zmm18,zmm0
  a17048:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a1704e:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a17054:	62 d2 75 48 ac c5    	vfnmadd213ps zmm0,zmm1,zmm13
  a1705a:	62 f1 14 48 58 c9    	vaddps zmm1,zmm13,zmm1
  a17060:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm1
  a17067:	16 
  a17068:	62 f1 74 40 5c 4c 24 	vsubps zmm1,zmm17,ZMMWORD PTR [rsp+0x80]
  a1706f:	02 
  a17070:	62 71 7c 40 5c 44 24 	vsubps zmm8,zmm16,ZMMWORD PTR [rsp+0x100]
  a17077:	04 
  a17078:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a1707f:	08 
  a17080:	62 31 6c 48 58 ce    	vaddps zmm9,zmm2,zmm22
  a17086:	62 e1 4c 40 5c ca    	vsubps zmm17,zmm22,zmm2
  a1708c:	62 71 54 40 58 5c 24 	vaddps zmm11,zmm21,ZMMWORD PTR [rsp+0x680]
  a17093:	1a 
  a17094:	62 71 64 40 58 6c 24 	vaddps zmm13,zmm19,ZMMWORD PTR [rsp+0x880]
  a1709b:	22 
  a1709c:	62 41 24 48 5c c5    	vsubps zmm24,zmm11,zmm13
  a170a2:	62 51 24 48 58 dd    	vaddps zmm11,zmm11,zmm13
  a170a8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x400]
  a170af:	10 
  a170b0:	62 71 1c 48 5c ea    	vsubps zmm13,zmm12,zmm2
  a170b6:	62 71 1c 48 58 e2    	vaddps zmm12,zmm12,zmm2
  a170bc:	62 41 74 48 58 d0    	vaddps zmm26,zmm1,zmm8
  a170c2:	62 c1 74 48 5c f0    	vsubps zmm22,zmm1,zmm8
  a170c8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a170cf:	01 
  a170d0:	62 71 74 48 58 44 24 	vaddps zmm8,zmm1,ZMMWORD PTR [rsp+0x740]
  a170d7:	1d 
  a170d8:	62 71 3c 48 58 44 24 	vaddps zmm8,zmm8,ZMMWORD PTR [rsp+0x700]
  a170df:	1c 
  a170e0:	62 e1 0c 40 58 44 24 	vaddps zmm16,zmm30,ZMMWORD PTR [rsp+0x1c0]
  a170e7:	07 
  a170e8:	62 81 7c 40 58 c5    	vaddps zmm16,zmm16,zmm29
  a170ee:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a170f5:	05 
  a170f6:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x940]
  a170fd:	25 
  a170fe:	62 f1 64 40 58 4c 24 	vaddps zmm1,zmm19,ZMMWORD PTR [rsp+0x900]
  a17105:	24 
  a17106:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a1710d:	08 
  a1710e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a17115:	06 
  a17116:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x440]
  a1711d:	11 
  a1711e:	62 e1 64 40 58 5c 24 	vaddps zmm19,zmm19,ZMMWORD PTR [rsp+0x3c0]
  a17125:	0f 
  a17126:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a1712d:	1e 
  a1712e:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x380]
  a17135:	0e 
  a17136:	62 e1 44 40 58 7c 24 	vaddps zmm23,zmm23,ZMMWORD PTR [rsp+0x340]
  a1713d:	0d 
  a1713e:	62 21 64 40 5c e7    	vsubps zmm28,zmm19,zmm23
  a17144:	62 21 64 40 58 f7    	vaddps zmm30,zmm19,zmm23
  a1714a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a17151:	03 
  a17152:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x800]
  a17159:	20 
  a1715a:	62 e1 64 40 58 7c 24 	vaddps zmm23,zmm19,ZMMWORD PTR [rsp+0x7c0]
  a17161:	1f 
  a17162:	62 a1 3c 48 58 d8    	vaddps zmm19,zmm8,zmm16
  a17168:	62 21 3c 48 5c e8    	vsubps zmm29,zmm8,zmm16
  a1716e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a17175:	13 
  a17176:	62 52 75 48 ac d1    	vfnmadd213ps zmm10,zmm1,zmm9
  a1717c:	62 f1 34 48 58 c9    	vaddps zmm1,zmm9,zmm1
  a17182:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a17189:	02 
  a1718a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a17191:	0a 
  a17192:	62 d2 75 48 ac fd    	vfnmadd213ps zmm7,zmm1,zmm13
  a17198:	62 f1 14 48 58 c9    	vaddps zmm1,zmm13,zmm1
  a1719e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a171a5:	06 
  a171a6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x840]
  a171ad:	21 
  a171ae:	62 12 4d 48 ac f1    	vfnmadd213ps zmm14,zmm6,zmm25
  a171b4:	62 72 7d 48 18 0d 16 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65e116]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a171bb:	e1 65 ff 
  a171be:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x480]
  a171c5:	12 
  a171c6:	62 d1 0c 48 5c cd    	vsubps zmm1,zmm14,zmm13
  a171cc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a171d3:	05 
  a171d4:	62 d1 0c 48 58 cd    	vaddps zmm1,zmm14,zmm13
  a171da:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a171e1:	01 
  a171e2:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x240]
  a171e9:	09 
  a171ea:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x640]
  a171f1:	19 
  a171f2:	62 72 7d 40 ac fd    	vfnmadd213ps zmm15,zmm16,zmm5
  a171f8:	62 71 34 48 59 6c 24 	vmulps zmm13,zmm9,ZMMWORD PTR [rsp+0x300]
  a171ff:	0c 
  a17200:	62 d1 04 48 58 cd    	vaddps zmm1,zmm15,zmm13
  a17206:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a1720d:	07 
  a1720e:	62 d1 04 48 5c cd    	vsubps zmm1,zmm15,zmm13
  a17214:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a1721b:	0a 
  a1721c:	62 71 64 48 5c 6c 24 	vsubps zmm13,zmm3,ZMMWORD PTR [rsp+0x6c0]
  a17223:	1b 
  a17224:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x5c0]
  a1722b:	17 
  a1722c:	62 71 74 48 5c 74 24 	vsubps zmm14,zmm1,ZMMWORD PTR [rsp+0x600]
  a17233:	18 
  a17234:	62 71 34 48 59 7c 24 	vmulps zmm15,zmm9,ZMMWORD PTR [rsp+0x540]
  a1723b:	15 
  a1723c:	62 e1 34 48 59 6c 24 	vmulps zmm21,zmm9,ZMMWORD PTR [rsp+0x500]
  a17243:	14 
  a17244:	62 d1 3c 40 59 d9    	vmulps zmm3,zmm24,zmm9
  a1724a:	62 51 4c 40 59 c1    	vmulps zmm8,zmm22,zmm9
  a17250:	62 c1 1c 40 59 f1    	vmulps zmm22,zmm28,zmm9
  a17256:	62 41 14 40 59 c1    	vmulps zmm24,zmm29,zmm9
  a1725c:	62 d1 14 48 59 c9    	vmulps zmm1,zmm13,zmm9
  a17262:	62 d1 0c 48 59 d1    	vmulps zmm2,zmm14,zmm9
  a17268:	62 a2 2d 40 ac e1    	vfnmadd213ps zmm20,zmm26,zmm17
  a1726e:	62 11 74 40 58 ea    	vaddps zmm13,zmm17,zmm26
  a17274:	62 c2 25 48 ac d4    	vfnmadd213ps zmm18,zmm11,zmm12
  a1727a:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a17280:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x200]
  a17287:	08 
  a17288:	62 42 65 40 ac dc    	vfnmadd213ps zmm27,zmm19,zmm12
  a1728e:	62 21 24 40 5c d6    	vsubps zmm26,zmm27,zmm22
  a17294:	62 21 24 40 58 ee    	vaddps zmm29,zmm27,zmm22
  a1729a:	62 b2 0d 40 ac e7    	vfnmadd213ps zmm4,zmm30,zmm23
  a172a0:	62 01 5c 48 58 e0    	vaddps zmm28,zmm4,zmm24
  a172a6:	62 11 5c 48 5c c8    	vsubps zmm9,zmm4,zmm24
  a172ac:	62 41 2c 48 58 c7    	vaddps zmm24,zmm10,zmm15
  a172b2:	62 41 2c 48 5c df    	vsubps zmm27,zmm10,zmm15
  a172b8:	62 b1 44 48 5c e5    	vsubps zmm4,zmm7,zmm21
  a172be:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a172c5:	04 
  a172c6:	62 31 44 48 58 d5    	vaddps zmm10,zmm7,zmm21
  a172cc:	62 71 34 40 58 f6    	vaddps zmm14,zmm25,zmm6
  a172d2:	62 b1 54 48 58 e0    	vaddps zmm4,zmm5,zmm16
  a172d8:	62 f1 04 40 5c f1    	vsubps zmm6,zmm31,zmm1
  a172de:	62 71 04 40 58 f9    	vaddps zmm15,zmm31,zmm1
  a172e4:	62 e1 7c 48 58 ea    	vaddps zmm21,zmm0,zmm2
  a172ea:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a172f0:	62 e1 5c 40 58 f3    	vaddps zmm22,zmm20,zmm3
  a172f6:	62 e1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm3
  a172fc:	62 41 6c 40 5c f8    	vsubps zmm31,zmm18,zmm8
  a17302:	62 d1 6c 40 58 c8    	vaddps zmm1,zmm18,zmm8
  a17308:	62 b1 1c 48 58 d3    	vaddps zmm2,zmm12,zmm19
  a1730e:	62 91 44 40 58 de    	vaddps zmm3,zmm23,zmm30
  a17314:	62 f1 7c 48 28 3d a2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6781a2]        # 8f4c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c970>
  a1731b:	81 67 ff 
  a1731e:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a17324:	62 e2 45 48 7f fb    	vpermt2ps zmm23,zmm7,zmm3
  a1732a:	62 f1 6c 48 14 eb    	vunpcklps zmm5,zmm2,zmm3
  a17330:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a17337:	03 
  a17338:	c5 7c 28 05 00 f9 65 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff65f900]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a1733f:	ff 
  a17340:	62 f2 3d 48 7f d3    	vpermt2ps zmm2,zmm8,zmm3
  a17346:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a1734c:	62 e2 45 48 7f d9    	vpermt2ps zmm19,zmm7,zmm1
  a17352:	62 f1 74 40 14 d9    	vunpcklps zmm3,zmm17,zmm1
  a17358:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a1735f:	15 
  a17360:	62 e2 3d 48 7f c9    	vpermt2ps zmm17,zmm8,zmm1
  a17366:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a1736c:	62 e2 45 48 7f c0    	vpermt2ps zmm16,zmm7,zmm0
  a17372:	62 f1 04 48 14 c8    	vunpcklps zmm1,zmm15,zmm0
  a17378:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a1737f:	14 
  a17380:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a17386:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a1738c:	62 e2 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm4
  a17392:	62 f1 0c 48 14 c4    	vunpcklps zmm0,zmm14,zmm4
  a17398:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a1739f:	13 
  a173a0:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a173a6:	62 11 7c 48 28 e3    	vmovaps zmm12,zmm27
  a173ac:	62 52 45 48 7f e2    	vpermt2ps zmm12,zmm7,zmm10
  a173b2:	62 d1 24 40 14 c2    	vunpcklps zmm0,zmm27,zmm10
  a173b8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a173bf:	09 
  a173c0:	62 42 3d 48 7f da    	vpermt2ps zmm27,zmm8,zmm10
  a173c6:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a173cc:	62 52 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm9
  a173d2:	62 d1 14 40 14 c1    	vunpcklps zmm0,zmm29,zmm9
  a173d8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a173df:	12 
  a173e0:	62 42 3d 48 7f e9    	vpermt2ps zmm29,zmm8,zmm9
  a173e6:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a173ec:	62 42 45 48 7f f3    	vpermt2ps zmm30,zmm7,zmm11
  a173f2:	62 d1 14 48 14 c3    	vunpcklps zmm0,zmm13,zmm11
  a173f8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a173ff:	11 
  a17400:	62 52 3d 48 7f eb    	vpermt2ps zmm13,zmm8,zmm11
  a17406:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a1740c:	62 32 45 48 7f dd    	vpermt2ps zmm11,zmm7,zmm21
  a17412:	62 b1 4c 48 14 c5    	vunpcklps zmm0,zmm6,zmm21
  a17418:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a1741f:	08 
  a17420:	62 b2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm21
  a17426:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a1742d:	01 
  a1742e:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a17434:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a1743b:	0a 
  a1743c:	62 e2 45 48 7f e8    	vpermt2ps zmm21,zmm7,zmm0
  a17442:	62 f1 74 48 14 d8    	vunpcklps zmm3,zmm1,zmm0
  a17448:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a1744f:	10 
  a17450:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a17456:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a1745d:	01 
  a1745e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a17465:	02 
  a17466:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a1746c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a17473:	06 
  a17474:	62 62 45 48 7f c8    	vpermt2ps zmm25,zmm7,zmm0
  a1747a:	62 f1 74 48 14 d8    	vunpcklps zmm3,zmm1,zmm0
  a17480:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a17487:	0a 
  a17488:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a1748e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a17495:	02 
  a17496:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a1749c:	62 82 45 48 7f e4    	vpermt2ps zmm20,zmm7,zmm28
  a174a2:	62 91 2c 40 14 c4    	vunpcklps zmm0,zmm26,zmm28
  a174a8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a174af:	06 
  a174b0:	62 02 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm28
  a174b6:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a174bc:	62 92 45 48 7f df    	vpermt2ps zmm3,zmm7,zmm31
  a174c2:	62 91 4c 40 14 c7    	vunpcklps zmm0,zmm22,zmm31
  a174c8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a174cf:	0f 
  a174d0:	62 82 3d 48 7f f7    	vpermt2ps zmm22,zmm8,zmm31
  a174d6:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x2c0]
  a174dd:	0b 
  a174de:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a174e4:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x580]
  a174eb:	16 
  a174ec:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a174f2:	62 f1 1c 40 14 c4    	vunpcklps zmm0,zmm28,zmm4
  a174f8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a174ff:	0e 
  a17500:	62 62 3d 48 7f e4    	vpermt2ps zmm28,zmm8,zmm4
  a17506:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a1750d:	05 
  a1750e:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a17514:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a1751b:	07 
  a1751c:	62 62 45 48 7f fc    	vpermt2ps zmm31,zmm7,zmm4
  a17522:	62 71 74 48 14 cc    	vunpcklps zmm9,zmm1,zmm4
  a17528:	62 f2 3d 48 7f cc    	vpermt2ps zmm1,zmm8,zmm4
  a1752e:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a17534:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a1753b:	04 
  a1753c:	62 f2 3d 40 77 f8    	vpermi2ps zmm7,zmm24,zmm0
  a17542:	62 f1 3c 40 14 c8    	vunpcklps zmm1,zmm24,zmm0
  a17548:	62 62 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm0
  a1754e:	62 e1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm23
  a17554:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1755b:	03 
  a1755c:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a17563:	03 
  a17564:	c5 fc 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm2
  a17569:	62 e1 7c 48 11 9e 70 	vmovups ZMMWORD PTR [rsi+0x70],zmm19
  a17570:	00 00 00 
  a17573:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a1757a:	15 
  a1757b:	62 f3 7d 48 19 46 0d 	vextractf32x4 XMMWORD PTR [rsi+0xd0],zmm0,0x3
  a17582:	03 
  a17583:	62 e1 7c 28 11 8e b0 	vmovups YMMWORD PTR [rsi+0xb0],ymm17
  a1758a:	00 00 00 
  a1758d:	62 e1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0xe0],zmm16
  a17594:	00 00 00 
  a17597:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a1759e:	14 
  a1759f:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x3
  a175a6:	03 
  a175a7:	c5 7c 11 be 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm15
  a175ae:	00 
  a175af:	62 e1 7c 48 11 96 50 	vmovups ZMMWORD PTR [rsi+0x150],zmm18
  a175b6:	01 00 00 
  a175b9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a175c0:	13 
  a175c1:	62 f3 7d 48 19 46 1b 	vextractf32x4 XMMWORD PTR [rsi+0x1b0],zmm0,0x3
  a175c8:	03 
  a175c9:	c5 7c 11 b6 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm14
  a175d0:	00 
  a175d1:	62 71 7c 48 11 66 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm12
  a175d8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a175df:	09 
  a175e0:	62 f3 7d 48 19 46 22 	vextractf32x4 XMMWORD PTR [rsi+0x220],zmm0,0x3
  a175e7:	03 
  a175e8:	62 61 7c 28 11 5e 10 	vmovups YMMWORD PTR [rsi+0x200],ymm27
  a175ef:	62 71 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm10
  a175f6:	02 00 00 
  a175f9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a17600:	12 
  a17601:	62 f3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm0,0x3
  a17608:	03 
  a17609:	62 61 7c 28 11 ae 70 	vmovups YMMWORD PTR [rsi+0x270],ymm29
  a17610:	02 00 00 
  a17613:	62 61 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm30
  a1761a:	02 00 00 
  a1761d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a17624:	11 
  a17625:	62 f3 7d 48 19 46 30 	vextractf32x4 XMMWORD PTR [rsi+0x300],zmm0,0x3
  a1762c:	03 
  a1762d:	c5 7c 11 ae e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm13
  a17634:	00 
  a17635:	62 71 7c 48 11 9e 10 	vmovups ZMMWORD PTR [rsi+0x310],zmm11
  a1763c:	03 00 00 
  a1763f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a17646:	08 
  a17647:	62 f3 7d 48 19 46 37 	vextractf32x4 XMMWORD PTR [rsi+0x370],zmm0,0x3
  a1764e:	03 
  a1764f:	c5 fc 11 b6 50 03 00 	vmovups YMMWORD PTR [rsi+0x350],ymm6
  a17656:	00 
  a17657:	62 e1 7c 48 11 6e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm21
  a1765e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a17665:	10 
  a17666:	62 f3 7d 48 19 46 3e 	vextractf32x4 XMMWORD PTR [rsi+0x3e0],zmm0,0x3
  a1766d:	03 
  a1766e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a17675:	01 
  a17676:	c5 fc 11 86 c0 03 00 	vmovups YMMWORD PTR [rsi+0x3c0],ymm0
  a1767d:	00 
  a1767e:	62 61 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0x3f0],zmm25
  a17685:	03 00 00 
  a17688:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a1768f:	0a 
  a17690:	62 f3 7d 48 19 46 45 	vextractf32x4 XMMWORD PTR [rsi+0x450],zmm0,0x3
  a17697:	03 
  a17698:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a1769f:	02 
  a176a0:	c5 fc 11 86 30 04 00 	vmovups YMMWORD PTR [rsi+0x430],ymm0
  a176a7:	00 
  a176a8:	62 e1 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm20
  a176af:	04 00 00 
  a176b2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a176b9:	06 
  a176ba:	62 f3 7d 48 19 46 4c 	vextractf32x4 XMMWORD PTR [rsi+0x4c0],zmm0,0x3
  a176c1:	03 
  a176c2:	62 61 7c 28 11 56 25 	vmovups YMMWORD PTR [rsi+0x4a0],ymm26
  a176c9:	62 f1 7c 48 11 9e d0 	vmovups ZMMWORD PTR [rsi+0x4d0],zmm3
  a176d0:	04 00 00 
  a176d3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a176da:	0f 
  a176db:	62 f3 7d 48 19 46 53 	vextractf32x4 XMMWORD PTR [rsi+0x530],zmm0,0x3
  a176e2:	03 
  a176e3:	62 e1 7c 28 11 b6 10 	vmovups YMMWORD PTR [rsi+0x510],ymm22
  a176ea:	05 00 00 
  a176ed:	62 f1 7c 48 11 6e 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm5
  a176f4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a176fb:	0e 
  a176fc:	62 f3 7d 48 19 46 5a 	vextractf32x4 XMMWORD PTR [rsi+0x5a0],zmm0,0x3
  a17703:	03 
  a17704:	62 61 7c 28 11 66 2c 	vmovups YMMWORD PTR [rsi+0x580],ymm28
  a1770b:	62 61 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x5b0],zmm31
  a17712:	05 00 00 
  a17715:	62 73 7d 48 19 4e 61 	vextractf32x4 XMMWORD PTR [rsi+0x610],zmm9,0x3
  a1771c:	03 
  a1771d:	c5 fc 11 a6 f0 05 00 	vmovups YMMWORD PTR [rsi+0x5f0],ymm4
  a17724:	00 
  a17725:	62 f1 7c 48 11 be 20 	vmovups ZMMWORD PTR [rsi+0x620],zmm7
  a1772c:	06 00 00 
  a1772f:	62 f3 7d 48 19 4e 68 	vextractf32x4 XMMWORD PTR [rsi+0x680],zmm1,0x3
  a17736:	03 
  a17737:	62 61 7c 28 11 46 33 	vmovups YMMWORD PTR [rsi+0x660],ymm24
  a1773e:	48 89 ec             	mov    rsp,rbp
  a17741:	5d                   	pop    rbp
  a17742:	c5 f8 77             	vzeroupper
  a17745:	c3                   	ret
