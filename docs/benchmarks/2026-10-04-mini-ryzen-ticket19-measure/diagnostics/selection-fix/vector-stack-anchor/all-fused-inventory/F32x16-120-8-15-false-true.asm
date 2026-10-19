
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fe440 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fe440:	48 81 ec c8 08 00 00 	sub    rsp,0x8c8
  9fe447:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  9fe44e:	31 d2                	xor    edx,edx
  9fe450:	41 b0 7f             	mov    r8b,0x7f
  9fe453:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  9fe458:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  9fe45f:	00 
  9fe460:	62 61 7c 48 10 1c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1]
  9fe467:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  9fe46d:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  9fe474:	10 
  9fe475:	c4 e2 79 18 54 17 68 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x68]
  9fe47c:	c5 fc 10 5c 17 40    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x40]
  9fe482:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  9fe488:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  9fe48f:	30 
  9fe490:	c5 fb 10 54 17 70    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x70]
  9fe496:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  9fe49c:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  9fe4a3:	62 f2 fd c9 88 c1    	vexpandpd zmm0{k1}{z},zmm1
  9fe4a9:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp-0x80],zmm0
  9fe4b0:	fe 
  9fe4b1:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  9fe4b7:	62 61 7c 48 28 25 3f 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff68f83f]        # 8dd00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b1b0>
  9fe4be:	f8 68 ff 
  9fe4c1:	62 f2 1d 40 7f f8    	vpermt2ps zmm7,zmm28,zmm0
  9fe4c7:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  9fe4ce:	e0 01 00 00 
  9fe4d2:	c5 f8 10 9c 17 40 02 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x240]
  9fe4d9:	00 00 
  9fe4db:	c4 e3 61 21 9c 17 44 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x244],0x10
  9fe4e2:	02 00 00 10 
  9fe4e6:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x248]
  9fe4ed:	02 00 00 
  9fe4f0:	c5 fc 10 ac 17 20 02 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x220]
  9fe4f7:	00 00 
  9fe4f9:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  9fe4ff:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x24c],0x30
  9fe506:	02 00 00 30 
  9fe50a:	c5 fb 10 a4 17 50 02 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x250]
  9fe511:	00 00 
  9fe513:	c4 e3 65 18 dc 01    	vinsertf128 ymm3,ymm3,xmm4,0x1
  9fe519:	62 f3 d5 48 1a db 01 	vinsertf64x4 zmm3,zmm5,ymm3,0x1
  9fe520:	62 62 fd c9 88 d3    	vexpandpd zmm26{k1}{z},zmm3
  9fe526:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  9fe52c:	62 12 1d 40 7f d2    	vpermt2ps zmm10,zmm28,zmm26
  9fe532:	62 d1 44 48 58 c2    	vaddps zmm0,zmm7,zmm10
  9fe538:	c5 f8 10 a4 17 50 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x150]
  9fe53f:	00 00 
  9fe541:	c4 e3 59 21 a4 17 54 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x154],0x10
  9fe548:	01 00 00 10 
  9fe54c:	c4 e2 79 18 b4 17 58 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x158]
  9fe553:	01 00 00 
  9fe556:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0xf0]
  9fe55d:	f0 00 00 00 
  9fe561:	c4 e3 49 0c e4 03    	vblendps xmm4,xmm6,xmm4,0x3
  9fe567:	c4 e3 59 21 a4 17 5c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x15c],0x30
  9fe56e:	01 00 00 30 
  9fe572:	c5 fc 10 b4 17 30 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x130]
  9fe579:	00 00 
  9fe57b:	c5 7b 10 84 17 60 01 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x160]
  9fe582:	00 00 
  9fe584:	c4 c3 5d 18 e0 01    	vinsertf128 ymm4,ymm4,xmm8,0x1
  9fe58a:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  9fe591:	62 72 fd c9 88 dc    	vexpandpd zmm11{k1}{z},zmm4
  9fe597:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  9fe59d:	62 d2 1d 40 7f e3    	vpermt2ps zmm4,zmm28,zmm11
  9fe5a3:	c5 f8 10 b4 17 30 03 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x330]
  9fe5aa:	00 00 
  9fe5ac:	c4 e3 49 21 b4 17 34 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x334],0x10
  9fe5b3:	03 00 00 10 
  9fe5b7:	c4 62 79 18 84 17 38 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x338]
  9fe5be:	03 00 00 
  9fe5c1:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  9fe5c8:	d0 02 00 00 
  9fe5cc:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  9fe5d2:	c4 e3 49 21 b4 17 3c 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x33c],0x30
  9fe5d9:	03 00 00 30 
  9fe5dd:	c5 7c 10 84 17 10 03 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x310]
  9fe5e4:	00 00 
  9fe5e6:	c5 7b 10 ac 17 40 03 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x340]
  9fe5ed:	00 00 
  9fe5ef:	c4 c3 4d 18 f5 01    	vinsertf128 ymm6,ymm6,xmm13,0x1
  9fe5f5:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  9fe5fc:	62 72 fd c9 88 ee    	vexpandpd zmm13{k1}{z},zmm6
  9fe602:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  9fe608:	62 42 1d 40 7f fd    	vpermt2ps zmm31,zmm28,zmm13
  9fe60e:	62 81 5c 48 58 e7    	vaddps zmm20,zmm4,zmm31
  9fe614:	62 a1 7c 48 58 ec    	vaddps zmm21,zmm0,zmm20
  9fe61a:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x78]
  9fe621:	78 00 00 00 
  9fe625:	c5 7c 10 84 17 b8 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xb8]
  9fe62c:	00 00 
  9fe62e:	c5 78 10 bc 17 d8 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xd8]
  9fe635:	00 00 
  9fe637:	c4 63 01 21 bc 17 dc 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0xdc],0x10
  9fe63e:	00 00 00 10 
  9fe642:	c4 e2 79 18 94 17 e0 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0xe0]
  9fe649:	00 00 00 
  9fe64c:	c4 c3 69 0c d7 03    	vblendps xmm2,xmm2,xmm15,0x3
  9fe652:	c4 e3 69 21 94 17 e4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xe4],0x30
  9fe659:	00 00 00 30 
  9fe65d:	c5 7b 10 bc 17 e8 00 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0xe8]
  9fe664:	00 00 
  9fe666:	c4 c3 6d 18 d7 01    	vinsertf128 ymm2,ymm2,xmm15,0x1
  9fe66c:	62 f3 bd 48 1a d2 01 	vinsertf64x4 zmm2,zmm8,ymm2,0x1
  9fe673:	62 e2 fd c9 88 fa    	vexpandpd zmm23{k1}{z},zmm2
  9fe679:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  9fe67f:	62 a2 1d 40 7f c7    	vpermt2ps zmm16,zmm28,zmm23
  9fe685:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x258]
  9fe68c:	58 02 00 00 
  9fe690:	c5 fc 10 94 17 98 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x298]
  9fe697:	00 00 
  9fe699:	c5 78 10 84 17 b8 02 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x2b8]
  9fe6a0:	00 00 
  9fe6a2:	c4 63 39 21 84 17 bc 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  9fe6a9:	02 00 00 10 
  9fe6ad:	c4 62 79 18 bc 17 c0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x2c0]
  9fe6b4:	02 00 00 
  9fe6b7:	c4 43 01 0c c0 03    	vblendps xmm8,xmm15,xmm8,0x3
  9fe6bd:	c4 63 39 21 84 17 c4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  9fe6c4:	02 00 00 30 
  9fe6c8:	c5 7b 10 bc 17 c8 02 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x2c8]
  9fe6cf:	00 00 
  9fe6d1:	c4 43 3d 18 c7 01    	vinsertf128 ymm8,ymm8,xmm15,0x1
  9fe6d7:	62 d3 ed 48 1a d0 01 	vinsertf64x4 zmm2,zmm2,ymm8,0x1
  9fe6de:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  9fe6e4:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  9fe6ea:	62 e2 1d 40 7f da    	vpermt2ps zmm19,zmm28,zmm2
  9fe6f0:	62 21 7c 40 58 f3    	vaddps zmm30,zmm16,zmm19
  9fe6f6:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x168]
  9fe6fd:	68 01 00 00 
  9fe701:	c5 78 10 bc 17 c8 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x1c8]
  9fe708:	00 00 
  9fe70a:	c4 63 01 21 bc 17 cc 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  9fe711:	01 00 00 10 
  9fe715:	c4 e2 79 18 9c 17 d0 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x1d0]
  9fe71c:	01 00 00 
  9fe71f:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x1a8]
  9fe726:	a8 01 00 00 
  9fe72a:	c4 c3 61 0c df 03    	vblendps xmm3,xmm3,xmm15,0x3
  9fe730:	c4 e3 61 21 9c 17 d4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  9fe737:	01 00 00 30 
  9fe73b:	c5 7b 10 bc 17 d8 01 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x1d8]
  9fe742:	00 00 
  9fe744:	c4 c3 65 18 df 01    	vinsertf128 ymm3,ymm3,xmm15,0x1
  9fe74a:	62 f3 cd 40 1a db 01 	vinsertf64x4 zmm3,zmm22,ymm3,0x1
  9fe751:	62 f2 fd c9 88 db    	vexpandpd zmm3{k1}{z},zmm3
  9fe757:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  9fe75d:	62 e2 1d 40 7f f3    	vpermt2ps zmm22,zmm28,zmm3
  9fe763:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x348]
  9fe76a:	48 03 00 00 
  9fe76e:	c5 78 10 bc 17 a8 03 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x3a8]
  9fe775:	00 00 
  9fe777:	c4 63 01 21 bc 17 ac 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  9fe77e:	03 00 00 10 
  9fe782:	c4 62 79 18 84 17 b0 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x3b0]
  9fe789:	03 00 00 
  9fe78c:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0x388]
  9fe793:	88 03 00 00 
  9fe797:	c4 43 39 0c c7 03    	vblendps xmm8,xmm8,xmm15,0x3
  9fe79d:	c4 63 39 21 84 17 b4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  9fe7a4:	03 00 00 30 
  9fe7a8:	c5 7b 10 bc 17 b8 03 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x3b8]
  9fe7af:	00 00 
  9fe7b1:	c4 43 3d 18 c7 01    	vinsertf128 ymm8,ymm8,xmm15,0x1
  9fe7b7:	62 53 bd 40 1a c0 01 	vinsertf64x4 zmm8,zmm24,ymm8,0x1
  9fe7be:	62 52 fd c9 88 c0    	vexpandpd zmm8{k1}{z},zmm8
  9fe7c4:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  9fe7ca:	62 42 1d 40 7f e8    	vpermt2ps zmm29,zmm28,zmm8
  9fe7d0:	62 11 4c 40 58 fd    	vaddps zmm15,zmm22,zmm29
  9fe7d6:	62 41 0c 40 58 c7    	vaddps zmm24,zmm30,zmm15
  9fe7dc:	62 01 54 40 58 e0    	vaddps zmm28,zmm21,zmm24
  9fe7e2:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm28
  9fe7e9:	05 
  9fe7ea:	62 f1 7c 48 28 35 cc 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6c87cc]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fe7f1:	87 6c ff 
  9fe7f4:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  9fe7f9:	62 42 4d 48 7f e4    	vpermt2ps zmm28,zmm6,zmm12
  9fe7ff:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm28
  9fe806:	06 
  9fe807:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  9fe80d:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm21
  9fe814:	ff 
  9fe815:	62 c2 4d 48 7f ec    	vpermt2ps zmm21,zmm6,zmm12
  9fe81b:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm21
  9fe822:	11 
  9fe823:	62 a1 7c 48 5c e4    	vsubps zmm20,zmm0,zmm20
  9fe829:	62 61 7c 48 28 05 cd 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6c86cd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fe830:	86 6c ff 
  9fe833:	62 22 3d 40 7f e5    	vpermt2ps zmm28,zmm24,zmm21
  9fe839:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm28
  9fe840:	07 
  9fe841:	62 f1 7c 48 28 05 f5 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68f4f5]        # 8dd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b1f0>
  9fe848:	f4 68 ff 
  9fe84b:	62 32 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm23
  9fe851:	62 e2 7d 48 7f ca    	vpermt2ps zmm17,zmm0,zmm2
  9fe857:	62 a1 0c 48 58 f9    	vaddps zmm23,zmm14,zmm17
  9fe85d:	62 e2 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm3
  9fe863:	62 42 7d 48 7f c8    	vpermt2ps zmm25,zmm0,zmm8
  9fe869:	62 81 6c 40 58 e9    	vaddps zmm21,zmm18,zmm25
  9fe86f:	62 b1 44 40 5c d5    	vsubps zmm2,zmm23,zmm21
  9fe875:	62 f1 5c 40 58 da    	vaddps zmm3,zmm20,zmm2
  9fe87b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  9fe882:	0e 
  9fe883:	62 71 5c 40 5c c2    	vsubps zmm8,zmm20,zmm2
  9fe889:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  9fe890:	01 
  9fe891:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  9fe897:	62 d2 4d 48 7f d4    	vpermt2ps zmm2,zmm6,zmm12
  9fe89d:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  9fe8a3:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  9fe8aa:	10 
  9fe8ab:	62 d1 44 48 5c d2    	vsubps zmm2,zmm7,zmm10
  9fe8b1:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  9fe8b7:	62 d2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm12
  9fe8bd:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  9fe8c3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm3
  9fe8ca:	0f 
  9fe8cb:	62 d2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm11
  9fe8d1:	62 52 7d 48 7f cd    	vpermt2ps zmm9,zmm0,zmm13
  9fe8d7:	62 d1 54 48 5c d9    	vsubps zmm3,zmm5,zmm9
  9fe8dd:	62 71 6c 48 58 c3    	vaddps zmm8,zmm2,zmm3
  9fe8e3:	62 31 7c 40 5c db    	vsubps zmm11,zmm16,zmm19
  9fe8e9:	62 31 0c 48 5c e9    	vsubps zmm13,zmm14,zmm17
  9fe8ef:	62 d1 24 48 58 fd    	vaddps zmm7,zmm11,zmm13
  9fe8f5:	62 e2 7d 48 18 1d 9d 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff676a9d]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  9fe8fc:	6a 67 ff 
  9fe8ff:	62 b1 44 48 59 fb    	vmulps zmm7,zmm7,zmm19
  9fe905:	62 11 6c 40 5c f1    	vsubps zmm14,zmm18,zmm25
  9fe90b:	62 81 4c 40 5c c5    	vsubps zmm16,zmm22,zmm29
  9fe911:	62 31 0c 48 5c d0    	vsubps zmm10,zmm14,zmm16
  9fe917:	62 31 2c 48 59 d3    	vmulps zmm10,zmm10,zmm19
  9fe91d:	62 c1 44 48 58 ca    	vaddps zmm17,zmm7,zmm10
  9fe923:	62 a1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm17
  9fe929:	62 21 3c 48 5c e9    	vsubps zmm29,zmm8,zmm17
  9fe92f:	62 82 3d 40 7f e4    	vpermt2ps zmm20,zmm24,zmm28
  9fe935:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  9fe93b:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm20
  9fe942:	02 
  9fe943:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  9fe949:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  9fe94f:	62 d2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm12
  9fe955:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  9fe95b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm3
  9fe962:	21 
  9fe963:	62 d1 14 48 5c db    	vsubps zmm3,zmm13,zmm11
  9fe969:	62 b1 64 48 59 db    	vmulps zmm3,zmm3,zmm19
  9fe96f:	62 51 7c 40 58 c6    	vaddps zmm8,zmm16,zmm14
  9fe975:	62 31 3c 48 59 db    	vmulps zmm11,zmm8,zmm19
  9fe97b:	62 51 64 48 58 c3    	vaddps zmm8,zmm3,zmm11
  9fe981:	62 c1 6c 48 58 d8    	vaddps zmm19,zmm2,zmm8
  9fe987:	62 51 6c 48 5c e8    	vsubps zmm13,zmm2,zmm8
  9fe98d:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  9fe993:	62 d2 4d 48 7f d4    	vpermt2ps zmm2,zmm6,zmm12
  9fe999:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  9fe9a0:	04 
  9fe9a1:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp-0x80]
  9fe9a8:	fe 
  9fe9a9:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  9fe9af:	62 72 3d 40 7f c2    	vpermt2ps zmm8,zmm24,zmm2
  9fe9b5:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  9fe9bb:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm8
  9fe9c2:	0b 
  9fe9c3:	62 92 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm26
  9fe9c9:	62 f1 24 40 58 d1    	vaddps zmm2,zmm27,zmm1
  9fe9cf:	62 d1 54 48 58 e9    	vaddps zmm5,zmm5,zmm9
  9fe9d5:	62 71 6c 48 58 c5    	vaddps zmm8,zmm2,zmm5
  9fe9db:	62 31 44 40 58 cd    	vaddps zmm9,zmm23,zmm21
  9fe9e1:	62 41 3c 48 58 d1    	vaddps zmm26,zmm8,zmm9
  9fe9e7:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm26
  9fe9ee:	0d 
  9fe9ef:	62 51 3c 48 5c f1    	vsubps zmm14,zmm8,zmm9
  9fe9f5:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm14
  9fe9fc:	fe 
  9fe9fd:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  9fea03:	62 c2 4d 48 7f e4    	vpermt2ps zmm20,zmm6,zmm12
  9fea09:	62 11 04 48 5c ce    	vsubps zmm9,zmm15,zmm30
  9fea0f:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  9fea15:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  9fea1b:	62 d2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm12
  9fea21:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  9fea28:	03 
  9fea29:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  9fea2f:	62 71 34 48 58 ea    	vaddps zmm13,zmm9,zmm2
  9fea35:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm13
  9fea3c:	0c 
  9fea3d:	62 51 6c 48 5c c9    	vsubps zmm9,zmm2,zmm9
  9fea43:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  9fea49:	62 f2 3d 40 7f d0    	vpermt2ps zmm2,zmm24,zmm0
  9fea4f:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  9fea55:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  9fea5c:	0a 
  9fea5d:	62 f1 04 40 5c e4    	vsubps zmm4,zmm31,zmm4
  9fea63:	62 42 4d 48 7f d4    	vpermt2ps zmm26,zmm6,zmm12
  9fea69:	62 f1 24 40 5c c1    	vsubps zmm0,zmm27,zmm1
  9fea6f:	62 f1 5c 48 58 c8    	vaddps zmm1,zmm4,zmm0
  9fea75:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  9fea7b:	62 61 74 48 58 fb    	vaddps zmm31,zmm1,zmm3
  9fea81:	62 71 74 48 5c db    	vsubps zmm11,zmm1,zmm3
  9fea87:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  9fea8e:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  9fea94:	62 d2 4d 48 7f d4    	vpermt2ps zmm2,zmm6,zmm12
  9fea9a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  9feaa1:	09 
  9feaa2:	62 f1 7c 48 5c cc    	vsubps zmm1,zmm0,zmm4
  9feaa8:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  9feaae:	62 72 3d 40 7f f2    	vpermt2ps zmm14,zmm24,zmm2
  9feab4:	62 f1 2c 48 5c df    	vsubps zmm3,zmm10,zmm7
  9feaba:	62 61 74 48 58 e3    	vaddps zmm28,zmm1,zmm3
  9feac0:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  9feac6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  9feacd:	08 
  9feace:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  9fead4:	62 42 4d 48 7f dc    	vpermt2ps zmm27,zmm6,zmm12
  9feada:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  9feae0:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  9feae6:	62 d2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm12
  9feaec:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  9feaf3:	15 
  9feaf4:	62 11 7c 48 28 eb    	vmovaps zmm13,zmm27
  9feafa:	62 72 3d 40 7f e8    	vpermt2ps zmm13,zmm24,zmm0
  9feb00:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  9feb06:	62 42 4d 48 7f f4    	vpermt2ps zmm30,zmm6,zmm12
  9feb0c:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  9feb12:	62 d2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm12
  9feb18:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  9feb1f:	12 
  9feb20:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  9feb26:	62 72 3d 40 7f d8    	vpermt2ps zmm11,zmm24,zmm0
  9feb2c:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  9feb32:	62 52 4d 48 7f fc    	vpermt2ps zmm15,zmm6,zmm12
  9feb38:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  9feb3e:	62 d2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm12
  9feb44:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm0
  9feb4b:	22 
  9feb4c:	62 d1 7c 48 28 f7    	vmovaps zmm6,zmm15
  9feb52:	62 f2 3d 40 7f f0    	vpermt2ps zmm6,zmm24,zmm0
  9feb58:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  9feb5f:	07 
  9feb60:	62 b1 fd 48 14 d9    	vunpcklpd zmm3,zmm0,zmm17
  9feb66:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  9feb6d:	1c 
  9feb6e:	62 f1 ed 40 14 cd    	vunpcklpd zmm1,zmm18,zmm5
  9feb74:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  9feb7b:	1b 
  9feb7c:	62 f1 7c 48 28 25 7a 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c827a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9feb83:	82 6c ff 
  9feb86:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  9feb8c:	62 d1 8d 48 14 ed    	vunpcklpd zmm5,zmm14,zmm13
  9feb92:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm5
  9feb99:	1a 
  9feb9a:	62 f1 a5 48 14 c6    	vunpcklpd zmm0,zmm11,zmm6
  9feba0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  9feba7:	19 
  9feba8:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  9febae:	62 f1 7c 48 10 79 11 	vmovups zmm7,ZMMWORD PTR [rcx+0x440]
  9febb5:	62 71 7c 48 10 49 10 	vmovups zmm9,ZMMWORD PTR [rcx+0x400]
  9febbc:	62 d1 54 48 59 c1    	vmulps zmm0,zmm5,zmm9
  9febc2:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  9febc8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  9febcf:	1d 
  9febd0:	62 d1 64 48 59 c1    	vmulps zmm0,zmm3,zmm9
  9febd6:	62 f2 45 48 bc c5    	vfnmadd231ps zmm0,zmm7,zmm5
  9febdc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  9febe3:	18 
  9febe4:	62 f1 7c 48 28 05 92 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c8392]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9febeb:	83 6c ff 
  9febee:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x140]
  9febf5:	05 
  9febf6:	62 42 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm12
  9febfc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  9fec03:	ff 
  9fec04:	62 d2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm12
  9fec0a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  9fec11:	ff 
  9fec12:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  9fec18:	62 e2 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm2
  9fec1e:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x380]
  9fec25:	0e 
  9fec26:	62 c2 7d 48 7f fc    	vpermt2ps zmm23,zmm0,zmm12
  9fec2c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  9fec33:	01 
  9fec34:	62 d2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm12
  9fec3a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  9fec41:	01 
  9fec42:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  9fec48:	62 e2 3d 40 7f d2    	vpermt2ps zmm18,zmm24,zmm2
  9fec4e:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  9fec54:	62 c2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm12
  9fec5a:	62 42 7d 48 7f ec    	vpermt2ps zmm29,zmm0,zmm12
  9fec60:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm29
  9fec67:	20 
  9fec68:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  9fec6e:	62 12 3d 40 7f cd    	vpermt2ps zmm9,zmm24,zmm29
  9fec74:	62 c2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm12
  9fec7a:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  9fec80:	62 d2 7d 48 7f cc    	vpermt2ps zmm1,zmm0,zmm12
  9fec86:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm1
  9fec8d:	1f 
  9fec8e:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  9fec94:	62 f2 3d 40 7f f9    	vpermt2ps zmm7,zmm24,zmm1
  9fec9a:	62 b1 f5 40 15 da    	vunpckhpd zmm3,zmm17,zmm18
  9feca0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm3
  9feca7:	17 
  9feca8:	62 f1 b5 48 15 cf    	vunpckhpd zmm1,zmm9,zmm7
  9fecae:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  9fecb5:	16 
  9fecb6:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  9fecbc:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x340]
  9fecc3:	0d 
  9fecc4:	62 52 7d 48 7f c4    	vpermt2ps zmm8,zmm0,zmm12
  9fecca:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  9fecd1:	fe 
  9fecd2:	62 d2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm12
  9fecd8:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  9fecdf:	fe 
  9fece0:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  9fece6:	62 f2 3d 40 7f ea    	vpermt2ps zmm5,zmm24,zmm2
  9fecec:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x300]
  9fecf3:	0c 
  9fecf4:	62 d2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm12
  9fecfa:	62 52 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm12
  9fed00:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm10
  9fed07:	1e 
  9fed08:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  9fed0e:	62 c2 3d 40 7f f2    	vpermt2ps zmm22,zmm24,zmm10
  9fed14:	62 42 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm12
  9fed1a:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  9fed21:	62 d2 7d 48 7f cc    	vpermt2ps zmm1,zmm0,zmm12
  9fed27:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  9fed2e:	62 81 7c 48 28 c7    	vmovaps zmm16,zmm31
  9fed34:	62 e2 3d 40 7f c1    	vpermt2ps zmm16,zmm24,zmm1
  9fed3a:	62 42 7d 48 7f e4    	vpermt2ps zmm28,zmm0,zmm12
  9fed40:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  9fed47:	08 
  9fed48:	62 d2 7d 48 7f cc    	vpermt2ps zmm1,zmm0,zmm12
  9fed4e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  9fed55:	08 
  9fed56:	62 11 7c 48 28 d4    	vmovaps zmm10,zmm28
  9fed5c:	62 72 3d 40 7f d1    	vpermt2ps zmm10,zmm24,zmm1
  9fed62:	62 21 d5 48 15 ee    	vunpckhpd zmm29,zmm5,zmm22
  9fed68:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm29
  9fed6f:	14 
  9fed70:	62 d1 fd 40 15 c2    	vunpckhpd zmm0,zmm16,zmm10
  9fed76:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  9fed7d:	13 
  9fed7e:	62 62 5d 48 7f e8    	vpermt2ps zmm29,zmm4,zmm0
  9fed84:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  9fed8b:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  9fed92:	62 71 14 40 59 e0    	vmulps zmm12,zmm29,zmm0
  9fed98:	62 72 65 48 b8 e1    	vfmadd231ps zmm12,zmm3,zmm1
  9fed9e:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm12
  9feda5:	05 
  9feda6:	62 f1 64 48 59 c0    	vmulps zmm0,zmm3,zmm0
  9fedac:	62 92 75 48 bc c5    	vfnmadd231ps zmm0,zmm1,zmm29
  9fedb2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  9fedb9:	0e 
  9fedba:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  9fedc1:	07 
  9fedc2:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x80]
  9fedc9:	02 
  9fedca:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  9fedd1:	0c 
  9fedd2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  9fedd9:	0b 
  9fedda:	62 f1 f5 48 15 4c 24 	vunpckhpd zmm1,zmm1,ZMMWORD PTR [rsp+0x280]
  9fede1:	0a 
  9fede2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  9fede9:	0b 
  9fedea:	62 d1 8d 48 15 dd    	vunpckhpd zmm3,zmm14,zmm13
  9fedf0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  9fedf7:	0a 
  9fedf8:	62 f1 a5 48 15 f6    	vunpckhpd zmm6,zmm11,zmm6
  9fedfe:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  9fee05:	02 
  9fee06:	62 61 7c 48 28 2d 30 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6c8030]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fee0d:	80 6c ff 
  9fee10:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  9fee16:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  9fee1c:	62 f2 15 40 7f ce    	vpermt2ps zmm1,zmm29,zmm6
  9fee22:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  9fee29:	62 f1 7c 48 10 71 16 	vmovups zmm6,ZMMWORD PTR [rcx+0x580]
  9fee30:	62 71 74 48 59 de    	vmulps zmm11,zmm1,zmm6
  9fee36:	62 72 7d 48 b8 db    	vfmadd231ps zmm11,zmm0,zmm3
  9fee3c:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm11
  9fee43:	07 
  9fee44:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  9fee4a:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  9fee50:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  9fee57:	0d 
  9fee58:	62 61 7c 48 28 05 de 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6c80de]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fee5f:	80 6c ff 
  9fee62:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  9fee69:	06 
  9fee6a:	62 f2 3d 40 7f 4c 24 	vpermt2ps zmm1,zmm24,ZMMWORD PTR [rsp+0x440]
  9fee71:	11 
  9fee72:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x400]
  9fee79:	10 
  9fee7a:	62 f2 3d 40 7f 5c 24 	vpermt2ps zmm3,zmm24,ZMMWORD PTR [rsp+0x3c0]
  9fee81:	0f 
  9fee82:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x840]
  9fee89:	21 
  9fee8a:	62 f2 3d 40 7f 64 24 	vpermt2ps zmm4,zmm24,ZMMWORD PTR [rsp+0x100]
  9fee91:	04 
  9fee92:	62 e2 3d 40 7f 64 24 	vpermt2ps zmm20,zmm24,ZMMWORD PTR [rsp+0xc0]
  9fee99:	03 
  9fee9a:	62 f1 f5 48 15 c3    	vunpckhpd zmm0,zmm1,zmm3
  9feea0:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  9feea6:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  9feeac:	62 b1 dd 48 15 cc    	vunpckhpd zmm1,zmm4,zmm20
  9feeb2:	62 f1 7c 48 28 35 44 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6c7f44]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9feeb9:	7f 6c ff 
  9feebc:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  9feec2:	62 62 3d 40 7f 54 24 	vpermt2ps zmm26,zmm24,ZMMWORD PTR [rsp+0x240]
  9feec9:	09 
  9feeca:	62 62 3d 40 7f 5c 24 	vpermt2ps zmm27,zmm24,ZMMWORD PTR [rsp+0x540]
  9feed1:	15 
  9feed2:	62 62 3d 40 7f 74 24 	vpermt2ps zmm30,zmm24,ZMMWORD PTR [rsp+0x480]
  9feed9:	12 
  9feeda:	62 72 3d 40 7f 7c 24 	vpermt2ps zmm15,zmm24,ZMMWORD PTR [rsp+0x880]
  9feee1:	22 
  9feee2:	62 91 ad 40 15 cb    	vunpckhpd zmm1,zmm26,zmm27
  9feee8:	62 d1 8d 40 15 df    	vunpckhpd zmm3,zmm30,zmm15
  9feeee:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  9feef4:	62 f1 7c 48 10 59 1d 	vmovups zmm3,ZMMWORD PTR [rcx+0x740]
  9feefb:	62 f1 7c 48 10 71 1c 	vmovups zmm6,ZMMWORD PTR [rcx+0x700]
  9fef02:	62 71 74 48 59 ee    	vmulps zmm13,zmm1,zmm6
  9fef08:	62 72 7d 48 b8 eb    	vfmadd231ps zmm13,zmm0,zmm3
  9fef0e:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm13
  9fef15:	06 
  9fef16:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  9fef1c:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  9fef22:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  9fef29:	11 
  9fef2a:	62 d1 a5 48 14 dc    	vunpcklpd zmm3,zmm11,zmm12
  9fef30:	62 b1 dd 48 14 cc    	vunpcklpd zmm1,zmm4,zmm20
  9fef36:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  9fef3d:	0f 
  9fef3e:	62 91 ad 40 14 f3    	vunpcklpd zmm6,zmm26,zmm27
  9fef44:	62 d1 8d 40 14 e7    	vunpcklpd zmm4,zmm30,zmm15
  9fef4a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  9fef51:	04 
  9fef52:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  9fef58:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  9fef5e:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  9fef64:	62 f2 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm4
  9fef6a:	62 71 7c 48 10 59 1b 	vmovups zmm11,ZMMWORD PTR [rcx+0x6c0]
  9fef71:	62 71 7c 48 10 69 1a 	vmovups zmm13,ZMMWORD PTR [rcx+0x680]
  9fef78:	62 d1 74 48 59 e5    	vmulps zmm4,zmm1,zmm13
  9fef7e:	62 d2 7d 48 b8 e3    	vfmadd231ps zmm4,zmm0,zmm11
  9fef84:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  9fef8b:	03 
  9fef8c:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  9fef92:	62 f2 25 48 bc c1    	vfnmadd231ps zmm0,zmm11,zmm1
  9fef98:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  9fef9f:	09 
  9fefa0:	62 62 3d 40 7f 4c 24 	vpermt2ps zmm25,zmm24,ZMMWORD PTR [rsp-0x40]
  9fefa7:	ff 
  9fefa8:	62 e2 3d 40 7f 7c 24 	vpermt2ps zmm23,zmm24,ZMMWORD PTR [rsp+0x40]
  9fefaf:	01 
  9fefb0:	62 e2 3d 40 7f 6c 24 	vpermt2ps zmm21,zmm24,ZMMWORD PTR [rsp+0x800]
  9fefb7:	20 
  9fefb8:	62 e2 3d 40 7f 5c 24 	vpermt2ps zmm19,zmm24,ZMMWORD PTR [rsp+0x7c0]
  9fefbf:	1f 
  9fefc0:	62 72 3d 40 7f 44 24 	vpermt2ps zmm8,zmm24,ZMMWORD PTR [rsp-0x80]
  9fefc7:	fe 
  9fefc8:	62 f2 3d 40 7f 54 24 	vpermt2ps zmm2,zmm24,ZMMWORD PTR [rsp+0x780]
  9fefcf:	1e 
  9fefd0:	62 62 3d 40 7f 3c 24 	vpermt2ps zmm31,zmm24,ZMMWORD PTR [rsp]
  9fefd7:	62 62 3d 40 7f 64 24 	vpermt2ps zmm28,zmm24,ZMMWORD PTR [rsp+0x200]
  9fefde:	08 
  9fefdf:	62 21 b5 40 15 f7    	vunpckhpd zmm30,zmm25,zmm23
  9fefe5:	62 31 d5 40 15 eb    	vunpckhpd zmm13,zmm21,zmm19
  9fefeb:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  9feff1:	62 d2 15 40 7f c5    	vpermt2ps zmm0,zmm29,zmm13
  9feff7:	62 f1 bd 48 15 ca    	vunpckhpd zmm1,zmm8,zmm2
  9feffd:	62 11 85 40 15 f4    	vunpckhpd zmm14,zmm31,zmm28
  9ff003:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  9ff009:	62 52 15 40 7f de    	vpermt2ps zmm11,zmm29,zmm14
  9ff00f:	62 71 7c 48 10 79 0f 	vmovups zmm15,ZMMWORD PTR [rcx+0x3c0]
  9ff016:	62 61 7c 48 10 41 0e 	vmovups zmm24,ZMMWORD PTR [rcx+0x380]
  9ff01d:	62 01 24 48 59 d0    	vmulps zmm26,zmm11,zmm24
  9ff023:	62 42 7d 48 b8 d7    	vfmadd231ps zmm26,zmm0,zmm15
  9ff029:	62 81 7c 48 59 e0    	vmulps zmm20,zmm0,zmm24
  9ff02f:	62 c2 05 48 bc e3    	vfnmadd231ps zmm20,zmm15,zmm11
  9ff035:	62 b1 f5 40 14 c2    	vunpcklpd zmm0,zmm17,zmm18
  9ff03b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  9ff042:	ff 
  9ff043:	62 71 b5 48 14 cf    	vunpcklpd zmm9,zmm9,zmm7
  9ff049:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm9
  9ff050:	10 
  9ff051:	62 b1 d5 48 14 fe    	vunpcklpd zmm7,zmm5,zmm22
  9ff057:	62 c1 fd 40 14 d2    	vunpcklpd zmm18,zmm16,zmm10
  9ff05d:	62 d2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm9
  9ff063:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  9ff069:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  9ff06f:	62 b2 15 40 7f ea    	vpermt2ps zmm5,zmm29,zmm18
  9ff075:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  9ff07c:	62 71 7c 48 10 51 03 	vmovups zmm10,ZMMWORD PTR [rcx+0xc0]
  9ff083:	62 61 54 48 59 c7    	vmulps zmm24,zmm5,zmm7
  9ff089:	62 42 7d 48 b8 c2    	vfmadd231ps zmm24,zmm0,zmm10
  9ff08f:	62 e1 7c 48 59 f7    	vmulps zmm22,zmm0,zmm7
  9ff095:	62 e2 2d 48 bc f5    	vfnmadd231ps zmm22,zmm10,zmm5
  9ff09b:	62 b1 b5 40 14 c7    	vunpcklpd zmm0,zmm25,zmm23
  9ff0a1:	62 31 d5 40 14 fb    	vunpcklpd zmm15,zmm21,zmm19
  9ff0a7:	62 71 bd 48 14 da    	vunpcklpd zmm11,zmm8,zmm2
  9ff0ad:	62 81 85 40 14 ec    	vunpcklpd zmm21,zmm31,zmm28
  9ff0b3:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  9ff0b9:	62 e1 7c 48 28 1d 3d 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6c7d3d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9ff0c0:	7d 6c ff 
  9ff0c3:	62 d2 65 40 7f c7    	vpermt2ps zmm0,zmm19,zmm15
  9ff0c9:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  9ff0cf:	62 32 65 40 7f dd    	vpermt2ps zmm11,zmm19,zmm21
  9ff0d5:	62 f1 7c 48 10 51 09 	vmovups zmm2,ZMMWORD PTR [rcx+0x240]
  9ff0dc:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  9ff0e3:	62 51 24 48 59 e0    	vmulps zmm12,zmm11,zmm8
  9ff0e9:	62 72 7d 48 b8 e2    	vfmadd231ps zmm12,zmm0,zmm2
  9ff0ef:	62 51 7c 48 59 c0    	vmulps zmm8,zmm0,zmm8
  9ff0f5:	62 52 6d 48 bc c3    	vfnmadd231ps zmm8,zmm2,zmm11
  9ff0fb:	62 d2 65 40 7f ce    	vpermt2ps zmm1,zmm19,zmm14
  9ff101:	62 42 65 40 7f f5    	vpermt2ps zmm30,zmm19,zmm13
  9ff107:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  9ff10e:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  9ff115:	62 e1 0c 40 59 ca    	vmulps zmm17,zmm30,zmm2
  9ff11b:	62 e2 75 48 bc c8    	vfnmadd231ps zmm17,zmm1,zmm0
  9ff121:	62 61 74 48 59 ca    	vmulps zmm25,zmm1,zmm2
  9ff127:	62 02 7d 48 b8 ce    	vfmadd231ps zmm25,zmm0,zmm30
  9ff12d:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x680]
  9ff134:	1a 
  9ff135:	62 f2 15 40 7f 64 24 	vpermt2ps zmm4,zmm29,ZMMWORD PTR [rsp+0x640]
  9ff13c:	19 
  9ff13d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  9ff144:	1c 
  9ff145:	62 f2 15 40 7f 54 24 	vpermt2ps zmm2,zmm29,ZMMWORD PTR [rsp+0x6c0]
  9ff14c:	1b 
  9ff14d:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  9ff154:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  9ff15b:	62 61 6c 48 59 f1    	vmulps zmm30,zmm2,zmm1
  9ff161:	62 62 5d 48 bc f0    	vfnmadd231ps zmm30,zmm4,zmm0
  9ff167:	62 61 5c 48 59 e1    	vmulps zmm28,zmm4,zmm1
  9ff16d:	62 62 7d 48 b8 e2    	vfmadd231ps zmm28,zmm0,zmm2
  9ff173:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x500]
  9ff17a:	14 
  9ff17b:	62 f2 15 40 7f 7c 24 	vpermt2ps zmm7,zmm29,ZMMWORD PTR [rsp+0x4c0]
  9ff182:	13 
  9ff183:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x5c0]
  9ff18a:	17 
  9ff18b:	62 f2 15 40 7f 54 24 	vpermt2ps zmm2,zmm29,ZMMWORD PTR [rsp+0x580]
  9ff192:	16 
  9ff193:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  9ff19a:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  9ff1a1:	62 71 6c 48 59 c9    	vmulps zmm9,zmm2,zmm1
  9ff1a7:	62 72 45 48 bc c8    	vfnmadd231ps zmm9,zmm7,zmm0
  9ff1ad:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  9ff1b3:	62 f2 7d 48 b8 fa    	vfmadd231ps zmm7,zmm0,zmm2
  9ff1b9:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  9ff1bf:	62 f2 65 40 7f 74 24 	vpermt2ps zmm6,zmm19,ZMMWORD PTR [rsp+0x100]
  9ff1c6:	04 
  9ff1c7:	62 f2 65 40 7f 5c 24 	vpermt2ps zmm3,zmm19,ZMMWORD PTR [rsp+0x3c0]
  9ff1ce:	0f 
  9ff1cf:	62 71 7c 48 10 59 19 	vmovups zmm11,ZMMWORD PTR [rcx+0x640]
  9ff1d6:	62 f1 7c 48 10 49 18 	vmovups zmm1,ZMMWORD PTR [rcx+0x600]
  9ff1dd:	62 f1 64 48 59 e1    	vmulps zmm4,zmm3,zmm1
  9ff1e3:	62 d2 4d 48 bc e3    	vfnmadd231ps zmm4,zmm6,zmm11
  9ff1e9:	62 e1 4c 48 59 d9    	vmulps zmm19,zmm6,zmm1
  9ff1ef:	62 e2 25 48 b8 db    	vfmadd231ps zmm19,zmm11,zmm3
  9ff1f5:	62 52 15 40 7f d7    	vpermt2ps zmm10,zmm29,zmm15
  9ff1fb:	62 b2 15 40 7f ed    	vpermt2ps zmm5,zmm29,zmm21
  9ff201:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  9ff208:	62 f1 7c 48 10 71 0a 	vmovups zmm6,ZMMWORD PTR [rcx+0x280]
  9ff20f:	62 71 54 48 59 de    	vmulps zmm11,zmm5,zmm6
  9ff215:	62 72 2d 48 b8 db    	vfmadd231ps zmm11,zmm10,zmm3
  9ff21b:	62 41 7c 48 28 fb    	vmovaps zmm31,zmm11
  9ff221:	62 f1 2c 48 59 f6    	vmulps zmm6,zmm10,zmm6
  9ff227:	62 f2 65 48 bc f5    	vfnmadd231ps zmm6,zmm3,zmm5
  9ff22d:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  9ff233:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm6
  9ff23a:	17 
  9ff23b:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x300]
  9ff242:	0c 
  9ff243:	62 f2 6d 48 7f 74 24 	vpermt2ps zmm6,zmm2,ZMMWORD PTR [rsp+0x2c0]
  9ff24a:	0b 
  9ff24b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x280]
  9ff252:	0a 
  9ff253:	62 72 6d 48 7f 54 24 	vpermt2ps zmm10,zmm2,ZMMWORD PTR [rsp+0x80]
  9ff25a:	02 
  9ff25b:	62 f1 7c 48 10 59 15 	vmovups zmm3,ZMMWORD PTR [rcx+0x540]
  9ff262:	62 f1 7c 48 10 69 14 	vmovups zmm5,ZMMWORD PTR [rcx+0x500]
  9ff269:	62 71 2c 48 59 ed    	vmulps zmm13,zmm10,zmm5
  9ff26f:	62 72 4d 48 b8 eb    	vfmadd231ps zmm13,zmm6,zmm3
  9ff275:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm13
  9ff27c:	0c 
  9ff27d:	62 f1 4c 48 59 cd    	vmulps zmm1,zmm6,zmm5
  9ff283:	62 d2 65 48 bc ca    	vfnmadd231ps zmm1,zmm3,zmm10
  9ff289:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  9ff28f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  9ff296:	fe 
  9ff297:	62 a2 6d 48 7f c2    	vpermt2ps zmm16,zmm2,zmm18
  9ff29d:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm16
  9ff2a4:	19 
  9ff2a5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x340]
  9ff2ac:	0d 
  9ff2ad:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x440]
  9ff2b4:	11 
  9ff2b5:	62 61 6c 48 5c db    	vsubps zmm27,zmm2,zmm3
  9ff2bb:	62 71 6c 48 58 d3    	vaddps zmm10,zmm2,zmm3
  9ff2c1:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm10
  9ff2c8:	08 
  9ff2c9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x600]
  9ff2d0:	18 
  9ff2d1:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x380]
  9ff2d8:	0e 
  9ff2d9:	62 71 6c 48 5c fb    	vsubps zmm15,zmm2,zmm3
  9ff2df:	62 71 6c 48 58 db    	vaddps zmm11,zmm2,zmm3
  9ff2e5:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  9ff2ec:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x740]
  9ff2f3:	1d 
  9ff2f4:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  9ff2fb:	05 
  9ff2fc:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  9ff302:	62 e1 6c 48 5c c3    	vsubps zmm16,zmm2,zmm3
  9ff308:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm16
  9ff30f:	02 
  9ff310:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  9ff317:	07 
  9ff318:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x180]
  9ff31f:	06 
  9ff320:	62 f1 6c 48 58 eb    	vaddps zmm5,zmm2,zmm3
  9ff326:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm5
  9ff32d:	0d 
  9ff32e:	62 e1 6c 48 5c eb    	vsubps zmm21,zmm2,zmm3
  9ff334:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm21
  9ff33b:	04 
  9ff33c:	62 c1 4c 40 5c f8    	vsubps zmm23,zmm22,zmm8
  9ff342:	62 d1 4c 40 58 d8    	vaddps zmm3,zmm22,zmm8
  9ff348:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  9ff34f:	07 
  9ff350:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  9ff357:	09 
  9ff358:	62 a1 74 48 5c d4    	vsubps zmm18,zmm1,zmm20
  9ff35e:	62 31 74 48 58 c4    	vaddps zmm8,zmm1,zmm20
  9ff364:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  9ff36b:	01 
  9ff36c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  9ff373:	03 
  9ff374:	62 91 6c 48 58 ca    	vaddps zmm1,zmm2,zmm26
  9ff37a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  9ff381:	0b 
  9ff382:	62 81 6c 48 5c f2    	vsubps zmm22,zmm2,zmm26
  9ff388:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm22
  9ff38f:	03 
  9ff390:	62 41 3c 40 58 d4    	vaddps zmm26,zmm24,zmm12
  9ff396:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm26
  9ff39d:	0a 
  9ff39e:	62 d1 3c 40 5c c4    	vsubps zmm0,zmm24,zmm12
  9ff3a4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  9ff3ab:	05 
  9ff3ac:	62 72 7d 48 18 25 32 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff676332]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  9ff3b3:	63 67 ff 
  9ff3b6:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  9ff3bc:	62 c2 25 48 a8 e6    	vfmadd213ps zmm20,zmm11,zmm14
  9ff3c2:	62 62 7d 48 18 05 78 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff676278]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  9ff3c9:	62 67 ff 
  9ff3cc:	62 82 2d 48 bc e0    	vfnmadd231ps zmm20,zmm10,zmm24
  9ff3d2:	62 72 7d 48 18 15 7c 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff67637c]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  9ff3d9:	63 67 ff 
  9ff3dc:	62 51 54 40 59 da    	vmulps zmm11,zmm21,zmm10
  9ff3e2:	62 f2 7d 48 18 15 b4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff675fb4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  9ff3e9:	5f 67 ff 
  9ff3ec:	62 72 7d 40 b8 da    	vfmadd231ps zmm11,zmm16,zmm2
  9ff3f2:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm11
  9ff3f9:	06 
  9ff3fa:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  9ff400:	62 82 3d 48 a8 ed    	vfmadd213ps zmm21,zmm8,zmm29
  9ff406:	62 82 65 48 bc e8    	vfnmadd231ps zmm21,zmm3,zmm24
  9ff40c:	62 d1 7c 48 59 da    	vmulps zmm3,zmm0,zmm10
  9ff412:	62 f2 4d 40 b8 da    	vfmadd231ps zmm3,zmm22,zmm2
  9ff418:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  9ff41f:	11 
  9ff420:	62 51 5c 40 5c c3    	vsubps zmm8,zmm20,zmm11
  9ff426:	62 e1 54 40 5c c3    	vsubps zmm16,zmm21,zmm3
  9ff42c:	62 b1 3c 48 5c d8    	vsubps zmm3,zmm8,zmm16
  9ff432:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm3
  9ff439:	1d 
  9ff43a:	62 b1 3c 48 58 d8    	vaddps zmm3,zmm8,zmm16
  9ff440:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm3
  9ff447:	1b 
  9ff448:	62 01 74 40 5c ee    	vsubps zmm29,zmm17,zmm30
  9ff44e:	62 91 74 40 58 de    	vaddps zmm3,zmm17,zmm30
  9ff454:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  9ff45b:	18 
  9ff45c:	62 f1 34 48 5c dc    	vsubps zmm3,zmm9,zmm4
  9ff462:	62 f1 34 48 58 c4    	vaddps zmm0,zmm9,zmm4
  9ff468:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  9ff46f:	0f 
  9ff470:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  9ff477:	ff 
  9ff478:	62 f1 7c 48 28 25 7e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c797e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9ff47f:	79 6c ff 
  9ff482:	62 f2 5d 48 7f 44 24 	vpermt2ps zmm0,zmm4,ZMMWORD PTR [rsp+0x400]
  9ff489:	10 
  9ff48a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  9ff491:	ff 
  9ff492:	62 b1 44 48 58 c3    	vaddps zmm0,zmm7,zmm19
  9ff498:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  9ff49f:	10 
  9ff4a0:	62 b1 44 48 5c e3    	vsubps zmm4,zmm7,zmm19
  9ff4a6:	62 91 34 40 58 c4    	vaddps zmm0,zmm25,zmm28
  9ff4ac:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  9ff4b3:	0e 
  9ff4b4:	62 81 34 40 5c dc    	vsubps zmm19,zmm25,zmm28
  9ff4ba:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  9ff4c0:	62 41 7c 48 28 e4    	vmovaps zmm28,zmm12
  9ff4c6:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  9ff4cc:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm31
  9ff4d3:	12 
  9ff4d4:	62 02 4d 48 a8 e7    	vfmadd213ps zmm28,zmm6,zmm31
  9ff4da:	62 71 7c 48 28 e6    	vmovaps zmm12,zmm6
  9ff4e0:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm6
  9ff4e7:	13 
  9ff4e8:	62 02 55 48 bc e0    	vfnmadd231ps zmm28,zmm5,zmm24
  9ff4ee:	62 41 24 40 59 f2    	vmulps zmm30,zmm27,zmm10
  9ff4f4:	62 62 05 48 b8 f2    	vfmadd231ps zmm30,zmm15,zmm2
  9ff4fa:	62 21 7c 48 28 f8    	vmovaps zmm31,zmm16
  9ff500:	62 42 75 48 a8 fd    	vfmadd213ps zmm31,zmm1,zmm13
  9ff506:	62 02 2d 40 bc f8    	vfnmadd231ps zmm31,zmm26,zmm24
  9ff50c:	62 41 44 40 59 ca    	vmulps zmm25,zmm23,zmm10
  9ff512:	62 62 6d 40 b8 ca    	vfmadd231ps zmm25,zmm18,zmm2
  9ff518:	62 91 1c 40 58 c6    	vaddps zmm0,zmm28,zmm30
  9ff51e:	62 11 04 40 58 c1    	vaddps zmm8,zmm31,zmm25
  9ff524:	62 d1 7c 48 58 c8    	vaddps zmm1,zmm0,zmm8
  9ff52a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  9ff531:	1a 
  9ff532:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  9ff538:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  9ff53f:	1c 
  9ff540:	62 51 04 48 59 da    	vmulps zmm11,zmm15,zmm10
  9ff546:	62 12 6d 48 bc db    	vfnmadd231ps zmm11,zmm2,zmm27
  9ff54c:	62 51 6c 40 59 c2    	vmulps zmm8,zmm18,zmm10
  9ff552:	62 32 6d 48 bc c7    	vfnmadd231ps zmm8,zmm2,zmm23
  9ff558:	62 51 14 40 59 f2    	vmulps zmm14,zmm29,zmm10
  9ff55e:	62 72 65 48 b8 f2    	vfmadd231ps zmm14,zmm3,zmm2
  9ff564:	62 d1 64 48 59 f2    	vmulps zmm6,zmm3,zmm10
  9ff56a:	62 92 6d 48 bc f5    	vfnmadd231ps zmm6,zmm2,zmm29
  9ff570:	62 f1 2c 48 59 7c 24 	vmulps zmm7,zmm10,ZMMWORD PTR [rsp+0x80]
  9ff577:	02 
  9ff578:	62 f2 6d 48 bc 7c 24 	vfnmadd231ps zmm7,zmm2,ZMMWORD PTR [rsp+0x100]
  9ff57f:	04 
  9ff580:	62 71 2c 48 59 6c 24 	vmulps zmm13,zmm10,ZMMWORD PTR [rsp+0xc0]
  9ff587:	03 
  9ff588:	62 72 6d 48 bc 6c 24 	vfnmadd231ps zmm13,zmm2,ZMMWORD PTR [rsp+0x140]
  9ff58f:	05 
  9ff590:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  9ff596:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  9ff59c:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x5c0]
  9ff5a3:	17 
  9ff5a4:	62 72 15 40 9c 0c 24 	vfnmadd132ps zmm9,zmm29,ZMMWORD PTR [rsp]
  9ff5ab:	62 72 7d 40 b8 4c 24 	vfmadd231ps zmm9,zmm16,ZMMWORD PTR [rsp+0x200]
  9ff5b2:	08 
  9ff5b3:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  9ff5b9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  9ff5c0:	fe 
  9ff5c1:	62 62 7d 48 9c 54 24 	vfnmadd132ps zmm26,zmm0,ZMMWORD PTR [rsp+0x40]
  9ff5c8:	01 
  9ff5c9:	62 62 7d 40 b8 54 24 	vfmadd231ps zmm26,zmm16,ZMMWORD PTR [rsp+0x1c0]
  9ff5d0:	07 
  9ff5d1:	62 f1 34 48 5c df    	vsubps zmm3,zmm9,zmm7
  9ff5d7:	62 51 2c 40 5c fd    	vsubps zmm15,zmm26,zmm13
  9ff5dd:	62 d1 64 48 5c c7    	vsubps zmm0,zmm3,zmm15
  9ff5e3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  9ff5ea:	04 
  9ff5eb:	62 d1 64 48 58 c7    	vaddps zmm0,zmm3,zmm15
  9ff5f1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  9ff5f8:	05 
  9ff5f9:	62 d1 64 40 59 ea    	vmulps zmm5,zmm19,zmm10
  9ff5ff:	62 f2 5d 48 b8 ea    	vfmadd231ps zmm5,zmm4,zmm2
  9ff605:	62 51 5c 48 59 d2    	vmulps zmm10,zmm4,zmm10
  9ff60b:	62 32 6d 48 bc d3    	vfnmadd231ps zmm10,zmm2,zmm19
  9ff611:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  9ff617:	62 b2 1d 48 ac e6    	vfnmadd213ps zmm4,zmm12,zmm22
  9ff61d:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x340]
  9ff624:	0d 
  9ff625:	62 b2 3d 40 b8 e0    	vfmadd231ps zmm4,zmm24,zmm16
  9ff62b:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  9ff631:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x300]
  9ff638:	0c 
  9ff639:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x2c0]
  9ff640:	0b 
  9ff641:	62 32 6d 40 ac fb    	vfnmadd213ps zmm15,zmm18,zmm19
  9ff647:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x280]
  9ff64e:	0a 
  9ff64f:	62 32 4d 40 b8 f8    	vfmadd231ps zmm15,zmm22,zmm16
  9ff655:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  9ff65b:	62 41 04 48 58 d8    	vaddps zmm27,zmm15,zmm8
  9ff661:	62 91 64 48 58 c3    	vaddps zmm0,zmm3,zmm27
  9ff667:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  9ff66e:	02 
  9ff66f:	62 91 64 48 5c c3    	vsubps zmm0,zmm3,zmm27
  9ff675:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  9ff67c:	03 
  9ff67d:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  9ff683:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  9ff68a:	19 
  9ff68b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  9ff692:	10 
  9ff693:	62 f2 75 48 ac c2    	vfnmadd213ps zmm0,zmm1,zmm2
  9ff699:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x380]
  9ff6a0:	0e 
  9ff6a1:	62 b2 45 40 b8 c0    	vfmadd231ps zmm0,zmm23,zmm16
  9ff6a7:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  9ff6ad:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  9ff6b4:	15 
  9ff6b5:	62 61 7c 48 5c de    	vsubps zmm27,zmm0,zmm6
  9ff6bb:	62 d1 5c 48 5c c3    	vsubps zmm0,zmm4,zmm11
  9ff6c1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  9ff6c8:	16 
  9ff6c9:	62 d1 04 48 5c c0    	vsubps zmm0,zmm15,zmm8
  9ff6cf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  9ff6d6:	09 
  9ff6d7:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  9ff6dd:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  9ff6e4:	ff 
  9ff6e5:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x3c0]
  9ff6ec:	0f 
  9ff6ed:	62 f2 1d 48 ac c3    	vfnmadd213ps zmm0,zmm12,zmm3
  9ff6f3:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x600]
  9ff6fa:	18 
  9ff6fb:	62 b2 3d 48 b8 c0    	vfmadd231ps zmm0,zmm8,zmm16
  9ff701:	62 d1 7c 48 5c e2    	vsubps zmm4,zmm0,zmm10
  9ff707:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  9ff70e:	14 
  9ff70f:	62 d1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm10
  9ff715:	62 71 34 48 58 cf    	vaddps zmm9,zmm9,zmm7
  9ff71b:	62 41 2c 40 58 d5    	vaddps zmm26,zmm26,zmm13
  9ff721:	62 91 1c 40 5c c6    	vsubps zmm0,zmm28,zmm30
  9ff727:	62 91 04 40 5c f9    	vsubps zmm7,zmm31,zmm25
  9ff72d:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  9ff733:	62 72 75 48 a8 d2    	vfmadd213ps zmm10,zmm1,zmm2
  9ff739:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  9ff73f:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  9ff745:	62 32 45 40 bc d1    	vfnmadd231ps zmm10,zmm23,zmm17
  9ff74b:	62 21 7c 48 28 ff    	vmovaps zmm31,zmm23
  9ff751:	62 51 0c 48 58 ea    	vaddps zmm13,zmm14,zmm10
  9ff757:	62 41 2c 48 5c e6    	vsubps zmm28,zmm10,zmm14
  9ff75d:	62 f1 5c 40 58 54 24 	vaddps zmm2,zmm20,ZMMWORD PTR [rsp+0x180]
  9ff764:	06 
  9ff765:	62 71 54 40 58 54 24 	vaddps zmm10,zmm21,ZMMWORD PTR [rsp+0x440]
  9ff76c:	11 
  9ff76d:	62 d1 6c 48 5c ca    	vsubps zmm1,zmm2,zmm10
  9ff773:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  9ff77a:	06 
  9ff77b:	62 c1 6c 48 58 e2    	vaddps zmm20,zmm2,zmm10
  9ff781:	62 e2 1d 48 a8 c3    	vfmadd213ps zmm16,zmm12,zmm3
  9ff787:	62 a2 3d 48 bc c1    	vfnmadd231ps zmm16,zmm8,zmm17
  9ff78d:	62 71 7c 40 5c d5    	vsubps zmm10,zmm16,zmm5
  9ff793:	62 e1 7c 40 58 ed    	vaddps zmm21,zmm16,zmm5
  9ff799:	62 61 7c 48 58 f7    	vaddps zmm30,zmm0,zmm7
  9ff79f:	62 e1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm7
  9ff7a5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  9ff7ac:	12 
  9ff7ad:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x4c0]
  9ff7b4:	13 
  9ff7b5:	62 91 7c 48 58 c0    	vaddps zmm0,zmm0,zmm24
  9ff7bb:	62 b1 64 40 58 ca    	vaddps zmm1,zmm19,zmm18
  9ff7c1:	62 b1 74 48 58 ce    	vaddps zmm1,zmm1,zmm22
  9ff7c7:	62 f1 24 48 58 d4    	vaddps zmm2,zmm11,zmm4
  9ff7cd:	62 71 04 40 58 da    	vaddps zmm11,zmm31,zmm2
  9ff7d3:	62 f1 14 40 58 14 24 	vaddps zmm2,zmm29,ZMMWORD PTR [rsp]
  9ff7da:	62 f1 6c 48 58 54 24 	vaddps zmm2,zmm2,ZMMWORD PTR [rsp+0x200]
  9ff7e1:	08 
  9ff7e2:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  9ff7e9:	fe 
  9ff7ea:	62 f1 5c 48 58 7c 24 	vaddps zmm7,zmm4,ZMMWORD PTR [rsp+0x40]
  9ff7f1:	01 
  9ff7f2:	62 f1 44 48 58 7c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x1c0]
  9ff7f9:	07 
  9ff7fa:	62 e1 6c 48 5c f7    	vsubps zmm22,zmm2,zmm7
  9ff800:	62 e1 6c 48 58 cf    	vaddps zmm17,zmm2,zmm7
  9ff806:	62 d1 64 48 58 d4    	vaddps zmm2,zmm3,zmm12
  9ff80c:	62 62 7d 48 18 2d 4a 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff675c4a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9ff813:	5c 67 ff 
  9ff816:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  9ff81c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x680]
  9ff823:	1a 
  9ff824:	62 d2 65 48 ac e5    	vfnmadd213ps zmm4,zmm3,zmm13
  9ff82a:	62 c1 6c 48 58 d0    	vaddps zmm18,zmm2,zmm8
  9ff830:	62 e1 7c 48 58 d9    	vaddps zmm19,zmm0,zmm1
  9ff836:	62 f1 7c 48 5c c9    	vsubps zmm1,zmm0,zmm1
  9ff83c:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  9ff842:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x6c0]
  9ff849:	1b 
  9ff84a:	62 42 45 48 ac fa    	vfnmadd213ps zmm31,zmm7,zmm10
  9ff850:	62 f1 14 48 58 c3    	vaddps zmm0,zmm13,zmm3
  9ff856:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  9ff85d:	01 
  9ff85e:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  9ff864:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x80]
  9ff86b:	02 
  9ff86c:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x540]
  9ff873:	15 
  9ff874:	62 d2 35 40 ac d7    	vfnmadd213ps zmm2,zmm25,zmm15
  9ff87a:	62 f2 7d 48 18 1d 50 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff675a50]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9ff881:	5a 67 ff 
  9ff884:	62 71 64 48 59 6c 24 	vmulps zmm13,zmm3,ZMMWORD PTR [rsp+0x100]
  9ff88b:	04 
  9ff88c:	62 71 2c 48 58 d7    	vaddps zmm10,zmm10,zmm7
  9ff892:	62 d1 6c 48 5c c5    	vsubps zmm0,zmm2,zmm13
  9ff898:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  9ff89f:	ff 
  9ff8a0:	62 d1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm13
  9ff8a6:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  9ff8ad:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  9ff8b3:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x140]
  9ff8ba:	05 
  9ff8bb:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x500]
  9ff8c2:	14 
  9ff8c3:	62 d2 3d 40 ac d0    	vfnmadd213ps zmm2,zmm24,zmm8
  9ff8c9:	62 71 64 48 59 74 24 	vmulps zmm14,zmm3,ZMMWORD PTR [rsp+0xc0]
  9ff8d0:	03 
  9ff8d1:	62 51 6c 48 58 e6    	vaddps zmm12,zmm2,zmm14
  9ff8d7:	62 51 6c 48 5c f6    	vsubps zmm14,zmm2,zmm14
  9ff8dd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x580]
  9ff8e4:	16 
  9ff8e5:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x240]
  9ff8ec:	09 
  9ff8ed:	62 d1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm13
  9ff8f3:	62 f1 24 40 58 e8    	vaddps zmm5,zmm27,zmm0
  9ff8f9:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  9ff900:	fe 
  9ff901:	62 92 15 40 ac c3    	vfnmadd213ps zmm0,zmm29,zmm27
  9ff907:	62 91 34 48 58 ea    	vaddps zmm5,zmm9,zmm26
  9ff90d:	62 11 34 48 5c ca    	vsubps zmm9,zmm9,zmm26
  9ff913:	62 f1 4c 48 58 fd    	vaddps zmm7,zmm6,zmm5
  9ff919:	62 f2 15 40 ac ee    	vfnmadd213ps zmm5,zmm29,zmm6
  9ff91f:	62 41 6c 48 5c dd    	vsubps zmm27,zmm2,zmm13
  9ff925:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  9ff92b:	62 92 0d 40 ac f4    	vfnmadd213ps zmm6,zmm30,zmm28
  9ff931:	62 81 1c 40 58 c6    	vaddps zmm16,zmm28,zmm30
  9ff937:	62 01 7c 48 28 d5    	vmovaps zmm26,zmm29
  9ff93d:	62 22 5d 40 ac d5    	vfnmadd213ps zmm26,zmm20,zmm21
  9ff943:	62 a1 54 40 58 e4    	vaddps zmm20,zmm21,zmm20
  9ff949:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  9ff94f:	62 c2 65 40 ac eb    	vfnmadd213ps zmm21,zmm19,zmm11
  9ff955:	62 e1 4c 40 59 f3    	vmulps zmm22,zmm22,zmm3
  9ff95b:	62 21 54 40 5c e6    	vsubps zmm28,zmm21,zmm22
  9ff961:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  9ff967:	62 22 75 40 ac ea    	vfnmadd213ps zmm29,zmm17,zmm18
  9ff96d:	62 f1 74 48 59 cb    	vmulps zmm1,zmm1,zmm3
  9ff973:	62 61 14 40 58 f1    	vaddps zmm30,zmm29,zmm1
  9ff979:	62 f1 14 40 5c c9    	vsubps zmm1,zmm29,zmm1
  9ff97f:	62 e1 64 48 59 74 24 	vmulps zmm22,zmm3,ZMMWORD PTR [rsp+0x740]
  9ff986:	1d 
  9ff987:	62 31 5c 48 58 ee    	vaddps zmm13,zmm4,zmm22
  9ff98d:	62 a1 5c 48 5c f6    	vsubps zmm22,zmm4,zmm22
  9ff993:	62 61 64 48 59 6c 24 	vmulps zmm29,zmm3,ZMMWORD PTR [rsp+0x700]
  9ff99a:	1c 
  9ff99b:	62 91 04 40 5c d5    	vsubps zmm2,zmm31,zmm29
  9ff9a1:	62 01 04 40 58 ed    	vaddps zmm29,zmm31,zmm29
  9ff9a7:	62 01 04 48 58 c9    	vaddps zmm25,zmm15,zmm25
  9ff9ad:	62 11 3c 48 58 f8    	vaddps zmm15,zmm8,zmm24
  9ff9b3:	62 71 34 48 59 cb    	vmulps zmm9,zmm9,zmm3
  9ff9b9:	62 41 7c 48 5c f9    	vsubps zmm31,zmm0,zmm9
  9ff9bf:	62 d1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm9
  9ff9c5:	62 f1 24 40 59 e3    	vmulps zmm4,zmm27,zmm3
  9ff9cb:	62 71 54 48 58 cc    	vaddps zmm9,zmm5,zmm4
  9ff9d1:	62 f1 54 48 5c e4    	vsubps zmm4,zmm5,zmm4
  9ff9d7:	62 f1 64 48 59 6c 24 	vmulps zmm5,zmm3,ZMMWORD PTR [rsp+0x180]
  9ff9de:	06 
  9ff9df:	62 61 4c 48 58 dd    	vaddps zmm27,zmm6,zmm5
  9ff9e5:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  9ff9eb:	62 f1 44 40 59 f3    	vmulps zmm6,zmm23,zmm3
  9ff9f1:	62 e1 2c 40 5c fe    	vsubps zmm23,zmm26,zmm6
  9ff9f7:	62 f1 2c 40 58 f6    	vaddps zmm6,zmm26,zmm6
  9ff9fd:	62 31 24 48 58 db    	vaddps zmm11,zmm11,zmm19
  9ffa03:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  9ffa09:	62 f1 7c 48 28 1d 6d 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68e36d]        # 8dd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b230>
  9ffa10:	e3 68 ff 
  9ffa13:	62 c2 65 48 7f cb    	vpermt2ps zmm17,zmm3,zmm11
  9ffa19:	62 e1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm17
  9ffa20:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  9ffa26:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm6
  9ffa2d:	01 
  9ffa2e:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  9ffa34:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm4
  9ffa3b:	02 
  9ffa3c:	62 12 65 48 7f f9    	vpermt2ps zmm15,zmm3,zmm25
  9ffa42:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm15
  9ffa49:	03 
  9ffa4a:	62 22 65 48 7f ee    	vpermt2ps zmm29,zmm3,zmm22
  9ffa50:	62 61 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm29
  9ffa57:	04 
  9ffa58:	62 b2 65 48 7f cd    	vpermt2ps zmm1,zmm3,zmm21
  9ffa5e:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm1
  9ffa65:	05 
  9ffa66:	62 a2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm16
  9ffa6c:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm20
  9ffa73:	06 
  9ffa74:	62 12 65 48 7f cf    	vpermt2ps zmm9,zmm3,zmm31
  9ffa7a:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm9
  9ffa81:	07 
  9ffa82:	62 72 65 48 7f 34 24 	vpermt2ps zmm14,zmm3,ZMMWORD PTR [rsp]
  9ffa89:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm14
  9ffa90:	08 
  9ffa91:	62 72 65 48 7f 54 24 	vpermt2ps zmm10,zmm3,ZMMWORD PTR [rsp+0x40]
  9ffa98:	01 
  9ffa99:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm10
  9ffaa0:	09 
  9ffaa1:	62 02 65 48 7f f4    	vpermt2ps zmm30,zmm3,zmm28
  9ffaa7:	62 61 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm30
  9ffaae:	0a 
  9ffaaf:	62 82 65 48 7f fb    	vpermt2ps zmm23,zmm3,zmm27
  9ffab5:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm23
  9ffabc:	0b 
  9ffabd:	62 f2 65 48 7f 7c 24 	vpermt2ps zmm7,zmm3,ZMMWORD PTR [rsp-0x80]
  9ffac4:	fe 
  9ffac5:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm7
  9ffacc:	0c 
  9ffacd:	62 72 65 48 7f 64 24 	vpermt2ps zmm12,zmm3,ZMMWORD PTR [rsp-0x40]
  9ffad4:	ff 
  9ffad5:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm12
  9ffadc:	0d 
  9ffadd:	62 d2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm13
  9ffae3:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm2
  9ffaea:	0e 
  9ffaeb:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  9ffaf2:	48 39 d0             	cmp    rax,rdx
  9ffaf5:	0f 85 65 e9 ff ff    	jne    9fe460 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  9ffafb:	48 81 c4 c8 08 00 00 	add    rsp,0x8c8
  9ffb02:	c5 f8 77             	vzeroupper
  9ffb05:	c3                   	ret
