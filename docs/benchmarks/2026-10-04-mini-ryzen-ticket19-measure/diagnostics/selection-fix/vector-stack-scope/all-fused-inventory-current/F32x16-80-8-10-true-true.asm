
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3c480 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3c480:	55                   	push   rbp
  a3c481:	48 89 e5             	mov    rbp,rsp
  a3c484:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3c488:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  a3c48f:	48 c1 e2 07          	shl    rdx,0x7
  a3c493:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a3c497:	31 d2                	xor    edx,edx
  a3c499:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  a3c4a0:	00 
  a3c4a1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a3c4a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a3c4ad:	00 00 00 
  a3c4b0:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  a3c4b7:	00 
  a3c4b8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3c4bd:	62 71 7c 48 10 04 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1]
  a3c4c4:	c5 78 10 5c 17 40    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x40]
  a3c4ca:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a3c4d0:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x50]
  a3c4d7:	50 00 00 00 
  a3c4db:	c5 78 10 ac 17 90 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x90]
  a3c4e2:	00 00 
  a3c4e4:	62 f1 7c 48 28 0d 92 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff655292]        # 91780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ec30>
  a3c4eb:	52 65 ff 
  a3c4ee:	62 52 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm11
  a3c4f4:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a3c4fa:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a3c501:	a0 00 00 00 
  a3c505:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xe0]
  a3c50c:	0e 
  a3c50d:	62 52 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm13
  a3c513:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a3c519:	62 b2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm16
  a3c51f:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a3c526:	f0 00 00 00 
  a3c52a:	62 f1 7c 48 28 05 0c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65520c]        # 91740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ebf0>
  a3c531:	52 65 ff 
  a3c534:	62 d2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm11
  a3c53a:	c5 78 10 9c 17 30 01 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x130]
  a3c541:	00 00 
  a3c543:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a3c549:	62 52 75 48 7f d3    	vpermt2ps zmm10,zmm1,zmm11
  a3c54f:	62 d2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm13
  a3c555:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x140]
  a3c55c:	05 
  a3c55d:	62 e1 7c 08 10 5c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x180]
  a3c564:	18 
  a3c565:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a3c56b:	62 a2 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm16
  a3c571:	62 32 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm19
  a3c577:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x190]
  a3c57e:	90 01 00 00 
  a3c582:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a3c589:	1d 
  a3c58a:	62 c2 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm11
  a3c590:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a3c596:	62 a2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm16
  a3c59c:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a3c5a3:	e0 01 00 00 
  a3c5a7:	62 a2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm19
  a3c5ad:	62 e1 7c 08 10 5c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x220]
  a3c5b4:	22 
  a3c5b5:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a3c5bb:	62 a2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm19
  a3c5c1:	62 32 7d 48 7f d8    	vpermt2ps zmm11,zmm0,zmm16
  a3c5c7:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x230]
  a3c5ce:	30 02 00 00 
  a3c5d2:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x270]
  a3c5d9:	27 
  a3c5da:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a3c5e0:	62 a2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm19
  a3c5e6:	62 22 7d 48 7f c8    	vpermt2ps zmm25,zmm0,zmm16
  a3c5ec:	62 22 75 48 7f c0    	vpermt2ps zmm24,zmm1,zmm16
  a3c5f2:	62 c1 3c 48 58 dd    	vaddps zmm19,zmm8,zmm13
  a3c5f8:	62 21 4c 48 58 d6    	vaddps zmm26,zmm6,zmm22
  a3c5fe:	62 01 64 40 58 da    	vaddps zmm27,zmm19,zmm26
  a3c604:	62 21 04 48 58 e5    	vaddps zmm28,zmm15,zmm21
  a3c60a:	62 01 2c 48 58 e8    	vaddps zmm29,zmm10,zmm24
  a3c610:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a3c616:	62 21 64 48 58 fc    	vaddps zmm31,zmm3,zmm20
  a3c61c:	62 31 74 40 58 cf    	vaddps zmm9,zmm17,zmm23
  a3c622:	62 d1 44 48 58 e3    	vaddps zmm4,zmm7,zmm11
  a3c628:	62 d1 04 40 58 e9    	vaddps zmm5,zmm31,zmm9
  a3c62e:	62 11 6c 40 58 f1    	vaddps zmm14,zmm18,zmm25
  a3c634:	62 51 3c 48 5c ed    	vsubps zmm13,zmm8,zmm13
  a3c63a:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a3c640:	62 81 24 40 58 c6    	vaddps zmm16,zmm27,zmm30
  a3c646:	62 c1 5c 48 58 fe    	vaddps zmm23,zmm4,zmm14
  a3c64c:	62 31 04 48 5c c5    	vsubps zmm8,zmm15,zmm21
  a3c652:	62 d1 44 48 5c fb    	vsubps zmm7,zmm7,zmm11
  a3c658:	62 b1 54 48 58 c7    	vaddps zmm0,zmm5,zmm23
  a3c65e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a3c665:	03 
  a3c666:	62 a1 14 48 58 e9    	vaddps zmm21,zmm13,zmm17
  a3c66c:	62 11 6c 40 5c d9    	vsubps zmm11,zmm18,zmm25
  a3c672:	62 e1 3c 48 58 d7    	vaddps zmm18,zmm8,zmm7
  a3c678:	62 f2 7d 48 18 0d 1a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff638d1a]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3c67f:	8d 63 ff 
  a3c682:	62 61 6c 40 59 c9    	vmulps zmm25,zmm18,zmm1
  a3c688:	62 11 2c 48 5c d0    	vsubps zmm10,zmm10,zmm24
  a3c68e:	62 c1 24 48 5c d2    	vsubps zmm18,zmm11,zmm10
  a3c694:	62 b1 64 48 5c dc    	vsubps zmm3,zmm3,zmm20
  a3c69a:	62 e1 6c 40 59 e1    	vmulps zmm20,zmm18,zmm1
  a3c6a0:	62 e1 4c 40 5c d6    	vsubps zmm18,zmm22,zmm6
  a3c6a6:	62 e1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm3
  a3c6ac:	62 d1 44 48 5c f0    	vsubps zmm6,zmm7,zmm8
  a3c6b2:	62 21 34 40 58 c4    	vaddps zmm24,zmm25,zmm20
  a3c6b8:	62 f1 4c 48 59 c1    	vmulps zmm0,zmm6,zmm1
  a3c6be:	62 d1 2c 48 58 f3    	vaddps zmm6,zmm10,zmm11
  a3c6c4:	62 71 4c 48 59 d1    	vmulps zmm10,zmm6,zmm1
  a3c6ca:	62 d1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm10
  a3c6d0:	62 81 64 40 5c da    	vsubps zmm19,zmm19,zmm26
  a3c6d6:	62 d1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm14
  a3c6dc:	62 f1 64 40 58 f4    	vaddps zmm6,zmm19,zmm4
  a3c6e2:	62 11 54 40 58 c0    	vaddps zmm8,zmm21,zmm24
  a3c6e8:	62 51 04 40 5c c9    	vsubps zmm9,zmm31,zmm9
  a3c6ee:	62 11 14 40 5c f4    	vsubps zmm14,zmm29,zmm28
  a3c6f4:	62 51 0c 48 58 f9    	vaddps zmm15,zmm14,zmm9
  a3c6fa:	62 61 4c 40 58 f9    	vaddps zmm31,zmm22,zmm1
  a3c700:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a3c706:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a3c70c:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a3c712:	62 e1 14 48 58 d0    	vaddps zmm18,zmm13,zmm0
  a3c718:	62 01 5c 40 5c c9    	vsubps zmm25,zmm20,zmm25
  a3c71e:	62 11 24 40 5c de    	vsubps zmm11,zmm27,zmm30
  a3c724:	62 21 54 48 5c ef    	vsubps zmm29,zmm5,zmm23
  a3c72a:	62 11 64 48 58 d1    	vaddps zmm10,zmm3,zmm25
  a3c730:	62 81 54 40 5c c8    	vsubps zmm17,zmm21,zmm24
  a3c736:	62 e1 64 40 5c e4    	vsubps zmm20,zmm19,zmm4
  a3c73c:	62 41 34 48 5c d6    	vsubps zmm26,zmm9,zmm14
  a3c742:	62 61 4c 40 5c e1    	vsubps zmm28,zmm22,zmm1
  a3c748:	62 71 14 48 5c e8    	vsubps zmm13,zmm13,zmm0
  a3c74e:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a3c754:	62 f1 7c 48 28 3d 22 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68a822]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3c75b:	a8 68 ff 
  a3c75e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a3c762:	62 e2 45 48 7f da    	vpermt2ps zmm19,zmm7,zmm2
  a3c768:	62 01 64 48 5c d9    	vsubps zmm27,zmm3,zmm25
  a3c76e:	62 71 7c 48 28 25 48 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68a848]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a3c775:	a8 68 ff 
  a3c778:	62 e2 1d 48 7f c2    	vpermt2ps zmm16,zmm12,zmm2
  a3c77e:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a3c784:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a3c78a:	62 72 1d 48 7f c2    	vpermt2ps zmm8,zmm12,zmm2
  a3c790:	62 f2 45 48 7f c2    	vpermt2ps zmm0,zmm7,zmm2
  a3c796:	62 f2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm2
  a3c79c:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a3c7a2:	62 e2 1d 48 7f d2    	vpermt2ps zmm18,zmm12,zmm2
  a3c7a8:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a3c7ae:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a3c7b4:	62 72 1d 48 7f da    	vpermt2ps zmm11,zmm12,zmm2
  a3c7ba:	62 f2 45 48 7f da    	vpermt2ps zmm3,zmm7,zmm2
  a3c7c0:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a3c7c6:	62 e2 1d 48 7f ca    	vpermt2ps zmm17,zmm12,zmm2
  a3c7cc:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a3c7d2:	62 e2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm2
  a3c7d8:	62 f2 45 48 7f ea    	vpermt2ps zmm5,zmm7,zmm2
  a3c7de:	62 e2 1d 48 7f e2    	vpermt2ps zmm20,zmm12,zmm2
  a3c7e4:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a3c7ea:	62 f2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm2
  a3c7f0:	62 72 1d 48 7f ea    	vpermt2ps zmm13,zmm12,zmm2
  a3c7f6:	62 31 7c 48 28 f3    	vmovaps zmm14,zmm19
  a3c7fc:	62 e1 7c 48 28 2d fa 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff68a6fa]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3c803:	a6 68 ff 
  a3c806:	62 72 55 40 7f f1    	vpermt2ps zmm14,zmm21,zmm1
  a3c80c:	62 72 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm2
  a3c812:	62 61 7c 48 28 0d 24 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff68a724]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3c819:	a7 68 ff 
  a3c81c:	62 e2 35 40 7f d9    	vpermt2ps zmm19,zmm25,zmm1
  a3c822:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a3c828:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a3c82e:	62 f2 35 40 7f dc    	vpermt2ps zmm3,zmm25,zmm4
  a3c834:	62 f2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm5
  a3c83a:	62 f2 35 40 7f c5    	vpermt2ps zmm0,zmm25,zmm5
  a3c840:	62 c2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm11
  a3c846:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a3c84c:	62 32 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm17
  a3c852:	62 b2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm20
  a3c858:	62 f1 fd 40 14 f6    	vunpcklpd zmm6,zmm16,zmm6
  a3c85e:	62 c2 35 40 7f f1    	vpermt2ps zmm22,zmm25,zmm9
  a3c864:	62 c2 55 40 7f d5    	vpermt2ps zmm18,zmm21,zmm13
  a3c86a:	62 b1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm18
  a3c870:	62 71 8d 48 14 c1    	vunpcklpd zmm8,zmm14,zmm1
  a3c876:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm8
  a3c87d:	01 
  a3c87e:	62 62 55 40 7f f4    	vpermt2ps zmm30,zmm21,zmm4
  a3c884:	62 f1 8d 48 15 c9    	vunpckhpd zmm1,zmm14,zmm1
  a3c88a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a3c891:	02 
  a3c892:	62 e1 e5 40 14 e0    	vunpcklpd zmm20,zmm19,zmm0
  a3c898:	62 e1 e5 40 15 d8    	vunpckhpd zmm19,zmm19,zmm0
  a3c89e:	62 52 55 40 7f d9    	vpermt2ps zmm11,zmm21,zmm9
  a3c8a4:	62 31 e5 48 14 c6    	vunpcklpd zmm8,zmm3,zmm22
  a3c8aa:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a3c8b0:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a3c8b6:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a3c8bc:	62 31 e5 48 15 f6    	vunpckhpd zmm14,zmm3,zmm22
  a3c8c2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a3c8c9:	03 
  a3c8ca:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a3c8d0:	62 f2 45 48 7f f2    	vpermt2ps zmm6,zmm7,zmm2
  a3c8d6:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  a3c8dc:	62 e1 7c 48 28 0d 1a 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff68a51a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3c8e3:	a5 68 ff 
  a3c8e6:	62 e2 75 40 7f c5    	vpermt2ps zmm16,zmm17,zmm5
  a3c8ec:	62 e2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm2
  a3c8f2:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a3c8f8:	62 e2 45 48 7f fa    	vpermt2ps zmm23,zmm7,zmm2
  a3c8fe:	62 71 7c 48 28 0d 38 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff68a538]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3c905:	a5 68 ff 
  a3c908:	62 f2 35 48 7f c5    	vpermt2ps zmm0,zmm9,zmm5
  a3c90e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3c915:	04 
  a3c916:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a3c91c:	62 62 45 48 7f c2    	vpermt2ps zmm24,zmm7,zmm2
  a3c922:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a3c928:	62 51 8d 40 14 eb    	vunpcklpd zmm13,zmm30,zmm11
  a3c92e:	62 f2 45 48 7f c2    	vpermt2ps zmm0,zmm7,zmm2
  a3c934:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a3c93a:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a3c940:	62 51 8d 40 15 db    	vunpckhpd zmm11,zmm30,zmm11
  a3c946:	62 f2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm2
  a3c94c:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a3c952:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a3c958:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a3c95e:	62 f2 35 40 7f f0    	vpermt2ps zmm6,zmm25,zmm0
  a3c964:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a3c96a:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a3c970:	62 c2 75 40 7f d0    	vpermt2ps zmm18,zmm17,zmm8
  a3c976:	62 e2 35 40 7f f1    	vpermt2ps zmm22,zmm25,zmm1
  a3c97c:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a3c982:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a3c988:	62 c2 35 48 7f e0    	vpermt2ps zmm20,zmm9,zmm8
  a3c98e:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a3c994:	62 72 55 40 7f c4    	vpermt2ps zmm8,zmm21,zmm4
  a3c99a:	62 e2 35 40 7f fc    	vpermt2ps zmm23,zmm25,zmm4
  a3c9a0:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a3c9a6:	62 f2 55 40 7f e1    	vpermt2ps zmm4,zmm21,zmm1
  a3c9ac:	62 62 35 40 7f c1    	vpermt2ps zmm24,zmm25,zmm1
  a3c9b2:	62 f2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm2
  a3c9b8:	62 62 1d 48 7f ea    	vpermt2ps zmm29,zmm12,zmm2
  a3c9be:	62 92 55 40 7f dd    	vpermt2ps zmm3,zmm21,zmm29
  a3c9c4:	62 21 7c 48 28 eb    	vmovaps zmm29,zmm19
  a3c9ca:	62 42 75 40 7f ee    	vpermt2ps zmm29,zmm17,zmm14
  a3c9d0:	62 c2 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm14
  a3c9d6:	62 62 1d 48 7f fa    	vpermt2ps zmm31,zmm12,zmm2
  a3c9dc:	62 62 1d 48 7f e2    	vpermt2ps zmm28,zmm12,zmm2
  a3c9e2:	62 02 55 40 7f fc    	vpermt2ps zmm31,zmm21,zmm28
  a3c9e8:	62 72 1d 48 7f fa    	vpermt2ps zmm15,zmm12,zmm2
  a3c9ee:	62 62 1d 48 7f d2    	vpermt2ps zmm26,zmm12,zmm2
  a3c9f4:	62 12 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm26
  a3c9fa:	62 d1 e5 48 14 ff    	vunpcklpd zmm7,zmm3,zmm15
  a3ca00:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x40]
  a3ca07:	01 
  a3ca08:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a3ca0e:	62 72 1d 48 7f d2    	vpermt2ps zmm10,zmm12,zmm2
  a3ca14:	62 62 1d 48 7f da    	vpermt2ps zmm27,zmm12,zmm2
  a3ca1a:	62 12 55 40 7f d3    	vpermt2ps zmm10,zmm21,zmm27
  a3ca20:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x80]
  a3ca27:	02 
  a3ca28:	62 41 7c 48 28 f4    	vmovaps zmm30,zmm12
  a3ca2e:	62 d1 85 40 14 ca    	vunpcklpd zmm1,zmm31,zmm10
  a3ca34:	62 51 d5 48 14 d0    	vunpcklpd zmm10,zmm5,zmm8
  a3ca3a:	62 d1 d5 48 15 d8    	vunpckhpd zmm3,zmm5,zmm8
  a3ca40:	62 52 75 40 7f fd    	vpermt2ps zmm15,zmm17,zmm13
  a3ca46:	62 61 fd 48 14 d4    	vunpcklpd zmm26,zmm0,zmm4
  a3ca4c:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a3ca52:	62 31 cd 48 14 c7    	vunpcklpd zmm8,zmm6,zmm23
  a3ca58:	62 42 35 48 7f cd    	vpermt2ps zmm25,zmm9,zmm13
  a3ca5e:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a3ca64:	62 21 cd 48 15 ff    	vunpckhpd zmm31,zmm6,zmm23
  a3ca6a:	62 91 cd 40 14 e0    	vunpcklpd zmm4,zmm22,zmm24
  a3ca70:	62 91 cd 40 15 e8    	vunpckhpd zmm5,zmm22,zmm24
  a3ca76:	62 42 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm11
  a3ca7c:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a3ca82:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a3ca88:	62 f2 75 40 7f f4    	vpermt2ps zmm6,zmm17,zmm4
  a3ca8e:	62 52 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm11
  a3ca94:	62 72 35 48 7f c4    	vpermt2ps zmm8,zmm9,zmm4
  a3ca9a:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  a3caa0:	62 e2 75 40 7f f5    	vpermt2ps zmm22,zmm17,zmm5
  a3caa6:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a3caac:	62 62 35 48 7f fd    	vpermt2ps zmm31,zmm9,zmm5
  a3cab2:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a3cab8:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a3cabe:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a3cac4:	62 f2 35 48 7f f9    	vpermt2ps zmm7,zmm9,zmm1
  a3caca:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a3cad1:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a3cad8:	62 61 7c 40 59 d8    	vmulps zmm27,zmm16,zmm0
  a3cade:	62 62 5d 48 bc d9    	vfnmadd231ps zmm27,zmm4,zmm1
  a3cae4:	62 e1 5c 48 59 f8    	vmulps zmm23,zmm4,zmm0
  a3caea:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a3caf1:	62 a2 75 48 b8 f8    	vfmadd231ps zmm23,zmm1,zmm16
  a3caf7:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a3cafe:	62 61 6c 40 59 c8    	vmulps zmm25,zmm18,zmm0
  a3cb04:	62 71 4c 48 59 e8    	vmulps zmm13,zmm6,zmm0
  a3cb0a:	62 62 4d 48 bc c9    	vfnmadd231ps zmm25,zmm6,zmm1
  a3cb10:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a3cb17:	62 32 75 48 b8 ea    	vfmadd231ps zmm13,zmm1,zmm18
  a3cb1d:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a3cb24:	62 f1 14 40 59 f0    	vmulps zmm6,zmm29,zmm0
  a3cb2a:	62 f2 4d 40 bc f1    	vfnmadd231ps zmm6,zmm22,zmm1
  a3cb30:	62 f1 4c 40 59 c0    	vmulps zmm0,zmm22,zmm0
  a3cb36:	62 f1 7c 48 10 61 0a 	vmovups zmm4,ZMMWORD PTR [rcx+0x280]
  a3cb3d:	62 92 75 48 b8 c5    	vfmadd231ps zmm0,zmm1,zmm29
  a3cb43:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a3cb4a:	62 e1 5c 40 59 f4    	vmulps zmm22,zmm20,zmm4
  a3cb50:	62 e1 3c 48 59 ec    	vmulps zmm21,zmm8,zmm4
  a3cb56:	62 e2 3d 48 bc f1    	vfnmadd231ps zmm22,zmm8,zmm1
  a3cb5c:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  a3cb63:	62 a2 75 48 b8 ec    	vfmadd231ps zmm21,zmm1,zmm20
  a3cb69:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a3cb70:	62 71 0c 40 59 dc    	vmulps zmm11,zmm30,zmm4
  a3cb76:	62 72 1d 40 bc d9    	vfnmadd231ps zmm11,zmm28,zmm1
  a3cb7c:	62 f1 1c 40 59 e4    	vmulps zmm4,zmm28,zmm4
  a3cb82:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a3cb89:	62 92 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm30
  a3cb8f:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a3cb96:	62 e1 64 40 59 e5    	vmulps zmm20,zmm19,zmm5
  a3cb9c:	62 f1 04 40 59 ed    	vmulps zmm5,zmm31,zmm5
  a3cba2:	62 e2 05 40 bc e1    	vfnmadd231ps zmm20,zmm31,zmm1
  a3cba8:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a3cbaf:	62 b2 75 48 b8 eb    	vfmadd231ps zmm5,zmm1,zmm19
  a3cbb5:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a3cbbc:	62 41 1c 48 59 c0    	vmulps zmm24,zmm12,zmm8
  a3cbc2:	62 62 65 48 bc c1    	vfnmadd231ps zmm24,zmm3,zmm1
  a3cbc8:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a3cbce:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a3cbd4:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a3cbda:	62 d2 75 48 b8 dc    	vfmadd231ps zmm3,zmm1,zmm12
  a3cbe0:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a3cbe7:	62 71 7c 48 10 41 13 	vmovups zmm8,ZMMWORD PTR [rcx+0x4c0]
  a3cbee:	62 12 35 48 7f d2    	vpermt2ps zmm10,zmm9,zmm26
  a3cbf4:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x100]
  a3cbfb:	04 
  a3cbfc:	62 71 1c 48 59 c9    	vmulps zmm9,zmm12,zmm1
  a3cc02:	62 52 45 48 bc c8    	vfnmadd231ps zmm9,zmm7,zmm8
  a3cc08:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a3cc0e:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a3cc15:	62 d2 3d 48 b8 cc    	vfmadd231ps zmm1,zmm8,zmm12
  a3cc1b:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a3cc22:	62 71 6c 48 59 f7    	vmulps zmm14,zmm2,zmm7
  a3cc28:	62 52 2d 48 bc f0    	vfnmadd231ps zmm14,zmm10,zmm8
  a3cc2e:	62 f1 2c 48 59 ff    	vmulps zmm7,zmm10,zmm7
  a3cc34:	62 f2 3d 48 b8 fa    	vfmadd231ps zmm7,zmm8,zmm2
  a3cc3a:	62 71 34 40 58 d6    	vaddps zmm10,zmm25,zmm6
  a3cc40:	62 a1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm23
  a3cc46:	62 b1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm23
  a3cc4c:	62 e1 14 48 58 d0    	vaddps zmm18,zmm13,zmm0
  a3cc52:	62 f1 14 48 5c c0    	vsubps zmm0,zmm13,zmm0
  a3cc58:	62 71 54 48 58 c3    	vaddps zmm8,zmm5,zmm3
  a3cc5e:	62 f1 54 48 5c eb    	vsubps zmm5,zmm5,zmm3
  a3cc64:	62 e1 74 48 58 cf    	vaddps zmm17,zmm1,zmm7
  a3cc6a:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a3cc70:	62 91 24 48 58 db    	vaddps zmm3,zmm11,zmm27
  a3cc76:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a3cc7c:	62 91 5c 40 58 f8    	vaddps zmm7,zmm20,zmm24
  a3cc82:	62 71 34 40 5c ee    	vsubps zmm13,zmm25,zmm6
  a3cc88:	62 c1 34 48 58 fe    	vaddps zmm23,zmm9,zmm14
  a3cc8e:	62 01 5c 40 5c c0    	vsubps zmm24,zmm20,zmm24
  a3cc94:	62 f2 7d 48 18 15 4a 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff638a4a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3cc9b:	8a 63 ff 
  a3cc9e:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a3cca4:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a3ccaa:	62 f1 04 48 58 f3    	vaddps zmm6,zmm15,zmm3
  a3ccb0:	62 c2 65 48 a8 e7    	vfmadd213ps zmm20,zmm3,zmm15
  a3ccb6:	62 72 7d 48 18 25 84 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff638984]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a3ccbd:	89 63 ff 
  a3ccc0:	62 72 1d 48 bc fb    	vfnmadd231ps zmm15,zmm12,zmm3
  a3ccc6:	62 71 4c 40 58 f7    	vaddps zmm14,zmm22,zmm7
  a3cccc:	62 d1 4c 48 58 da    	vaddps zmm3,zmm6,zmm10
  a3ccd2:	62 c2 2d 48 bc e4    	vfnmadd231ps zmm20,zmm10,zmm12
  a3ccd8:	62 52 6d 48 b8 fa    	vfmadd231ps zmm15,zmm2,zmm10
  a3ccde:	62 62 7d 48 18 0d 70 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff638a70]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3cce5:	8a 63 ff 
  a3cce8:	62 11 7c 48 59 d1    	vmulps zmm10,zmm0,zmm25
  a3ccee:	62 62 7d 48 18 15 a8 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6386a8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3ccf5:	86 63 ff 
  a3ccf8:	62 12 5d 48 b8 d2    	vfmadd231ps zmm10,zmm4,zmm26
  a3ccfe:	62 91 5c 48 59 e1    	vmulps zmm4,zmm4,zmm25
  a3cd04:	62 f2 2d 40 bc e0    	vfnmadd231ps zmm4,zmm26,zmm0
  a3cd0a:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a3cd10:	62 b1 0c 48 58 f7    	vaddps zmm6,zmm14,zmm23
  a3cd16:	62 b2 45 48 a8 c6    	vfmadd213ps zmm0,zmm7,zmm22
  a3cd1c:	62 e2 1d 48 bc f7    	vfnmadd231ps zmm22,zmm12,zmm7
  a3cd22:	62 b1 7c 40 58 fb    	vaddps zmm7,zmm16,zmm19
  a3cd28:	62 d2 45 40 bc c4    	vfnmadd231ps zmm0,zmm23,zmm12
  a3cd2e:	62 a2 6d 48 b8 f7    	vfmadd231ps zmm22,zmm2,zmm23
  a3cd34:	62 11 74 48 59 f1    	vmulps zmm14,zmm1,zmm25
  a3cd3a:	62 12 55 48 b8 f2    	vfmadd231ps zmm14,zmm5,zmm26
  a3cd40:	62 91 54 48 59 e9    	vmulps zmm5,zmm5,zmm25
  a3cd46:	62 f2 2d 40 bc e9    	vfnmadd231ps zmm5,zmm26,zmm1
  a3cd4c:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a3cd52:	62 b2 7d 40 a8 cb    	vfmadd213ps zmm1,zmm16,zmm19
  a3cd58:	62 f1 6c 40 58 ff    	vaddps zmm7,zmm18,zmm7
  a3cd5e:	62 a2 1d 48 bc d8    	vfnmadd231ps zmm19,zmm12,zmm16
  a3cd64:	62 c1 54 40 58 c0    	vaddps zmm16,zmm21,zmm8
  a3cd6a:	62 d2 6d 40 bc cc    	vfnmadd231ps zmm1,zmm18,zmm12
  a3cd70:	62 a2 6d 48 b8 da    	vfmadd231ps zmm19,zmm2,zmm18
  a3cd76:	62 81 14 48 59 d1    	vmulps zmm18,zmm13,zmm25
  a3cd7c:	62 82 25 48 b8 d2    	vfmadd231ps zmm18,zmm11,zmm26
  a3cd82:	62 11 24 48 59 d9    	vmulps zmm11,zmm11,zmm25
  a3cd88:	62 52 2d 40 bc dd    	vfnmadd231ps zmm11,zmm26,zmm13
  a3cd8e:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a3cd94:	62 32 3d 48 a8 ed    	vfmadd213ps zmm13,zmm8,zmm21
  a3cd9a:	62 c2 1d 48 bc e8    	vfnmadd231ps zmm21,zmm12,zmm8
  a3cda0:	62 31 7c 40 58 c1    	vaddps zmm8,zmm16,zmm17
  a3cda6:	62 52 75 40 bc ec    	vfnmadd231ps zmm13,zmm17,zmm12
  a3cdac:	62 a2 6d 48 b8 e9    	vfmadd231ps zmm21,zmm2,zmm17
  a3cdb2:	62 81 34 48 59 c1    	vmulps zmm16,zmm9,zmm25
  a3cdb8:	62 82 3d 40 b8 c2    	vfmadd231ps zmm16,zmm24,zmm26
  a3cdbe:	62 81 3c 40 59 c9    	vmulps zmm17,zmm24,zmm25
  a3cdc4:	62 c2 2d 40 bc c9    	vfnmadd231ps zmm17,zmm26,zmm9
  a3cdca:	62 71 04 48 58 cc    	vaddps zmm9,zmm15,zmm4
  a3cdd0:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a3cdd6:	62 71 4c 40 58 fd    	vaddps zmm15,zmm22,zmm5
  a3cddc:	62 f1 4c 40 5c ed    	vsubps zmm5,zmm22,zmm5
  a3cde2:	62 c1 64 40 5c f3    	vsubps zmm22,zmm19,zmm11
  a3cde8:	62 31 24 48 58 db    	vaddps zmm11,zmm11,zmm19
  a3cdee:	62 a1 54 40 5c d9    	vsubps zmm19,zmm21,zmm17
  a3cdf4:	62 a1 54 40 58 c9    	vaddps zmm17,zmm21,zmm17
  a3cdfa:	62 c1 5c 40 58 ea    	vaddps zmm21,zmm20,zmm10
  a3ce00:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a3ce06:	62 c1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm14
  a3ce0c:	62 d1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm14
  a3ce12:	62 31 74 48 5c f2    	vsubps zmm14,zmm1,zmm18
  a3ce18:	62 f1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm1
  a3ce1e:	62 a1 14 48 5c d0    	vsubps zmm18,zmm13,zmm16
  a3ce24:	62 31 14 48 58 e8    	vaddps zmm13,zmm13,zmm16
  a3ce2a:	62 a1 54 40 5c c4    	vsubps zmm16,zmm21,zmm20
  a3ce30:	62 a1 54 40 58 e4    	vaddps zmm20,zmm21,zmm20
  a3ce36:	62 a1 0c 48 5c ea    	vsubps zmm21,zmm14,zmm18
  a3ce3c:	62 31 0c 48 58 f2    	vaddps zmm14,zmm14,zmm18
  a3ce42:	62 c1 34 48 58 d7    	vaddps zmm18,zmm9,zmm15
  a3ce48:	62 51 34 48 5c cf    	vsubps zmm9,zmm9,zmm15
  a3ce4e:	62 31 4c 40 58 fb    	vaddps zmm15,zmm22,zmm19
  a3ce54:	62 a1 4c 40 5c db    	vsubps zmm19,zmm22,zmm19
  a3ce5a:	62 e1 5c 48 5c f5    	vsubps zmm22,zmm4,zmm5
  a3ce60:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a3ce66:	62 d1 44 48 5c e8    	vsubps zmm5,zmm7,zmm8
  a3ce6c:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a3ce72:	62 31 24 48 5c c1    	vsubps zmm8,zmm11,zmm17
  a3ce78:	62 31 24 48 58 d9    	vaddps zmm11,zmm11,zmm17
  a3ce7e:	62 e1 64 48 5c ce    	vsubps zmm17,zmm3,zmm6
  a3ce84:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a3ce8a:	62 f1 2c 48 58 f0    	vaddps zmm6,zmm10,zmm0
  a3ce90:	62 f1 2c 48 5c c0    	vsubps zmm0,zmm10,zmm0
  a3ce96:	62 f1 7c 48 28 15 20 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff654920]        # 917c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ec70>
  a3ce9d:	49 65 ff 
  a3cea0:	62 f2 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm3
  a3cea6:	62 f1 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm7
  a3cead:	62 d1 74 48 58 dd    	vaddps zmm3,zmm1,zmm13
  a3ceb3:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a3ceb9:	62 a2 6d 48 7f e8    	vpermt2ps zmm21,zmm2,zmm16
  a3cebf:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm21
  a3cec6:	01 
  a3cec7:	62 32 6d 48 7f fa    	vpermt2ps zmm15,zmm2,zmm18
  a3cecd:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm15
  a3ced4:	02 
  a3ced5:	62 32 6d 48 7f c6    	vpermt2ps zmm8,zmm2,zmm22
  a3cedb:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  a3cee2:	03 
  a3cee3:	62 f2 6d 48 7f de    	vpermt2ps zmm3,zmm2,zmm6
  a3cee9:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm3
  a3cef0:	04 
  a3cef1:	62 b2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm17
  a3cef7:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm5
  a3cefe:	05 
  a3ceff:	62 32 6d 48 7f f4    	vpermt2ps zmm14,zmm2,zmm20
  a3cf05:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm14
  a3cf0c:	06 
  a3cf0d:	62 c2 6d 48 7f d9    	vpermt2ps zmm19,zmm2,zmm9
  a3cf13:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm19
  a3cf1a:	07 
  a3cf1b:	62 72 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm4
  a3cf21:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm11
  a3cf28:	08 
  a3cf29:	62 f2 6d 48 7f c8    	vpermt2ps zmm1,zmm2,zmm0
  a3cf2f:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a3cf36:	09 
  a3cf37:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a3cf3e:	48 39 d0             	cmp    rax,rdx
  a3cf41:	0f 85 69 f5 ff ff    	jne    a3c4b0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a3cf47:	48 89 ec             	mov    rsp,rbp
  a3cf4a:	5d                   	pop    rbp
  a3cf4b:	c5 f8 77             	vzeroupper
  a3cf4e:	c3                   	ret
