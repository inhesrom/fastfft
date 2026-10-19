
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4f680 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4f680:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  a4f687:	48 c1 e2 08          	shl    rdx,0x8
  a4f68b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a4f68f:	31 d2                	xor    edx,edx
  a4f691:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a4f698:	0f 1f 84 00 00 00 00 
  a4f69f:	00 
  a4f6a0:	62 f1 7c 48 10 24 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1]
  a4f6a7:	c5 fc 10 6c 17 40    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x40]
  a4f6ad:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a4f6b3:	62 f1 7c 48 28 05 43 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff643343]        # 92a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1feb0>
  a4f6ba:	33 64 ff 
  a4f6bd:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a4f6c3:	62 f1 7c 48 28 0d 73 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff643373]        # 92a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fef0>
  a4f6ca:	33 64 ff 
  a4f6cd:	62 f2 75 48 7f e5    	vpermt2ps zmm4,zmm1,zmm5
  a4f6d3:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x60]
  a4f6da:	60 00 00 00 
  a4f6de:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  a4f6e5:	00 00 
  a4f6e7:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a4f6ed:	62 f2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm5
  a4f6f3:	62 f2 75 48 7f f5    	vpermt2ps zmm6,zmm1,zmm5
  a4f6f9:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a4f700:	03 
  a4f701:	c5 7c 10 84 17 00 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x100]
  a4f708:	00 00 
  a4f70a:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a4f710:	62 52 7d 48 7f c8    	vpermt2ps zmm9,zmm0,zmm8
  a4f716:	62 d2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm8
  a4f71c:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x120]
  a4f723:	20 01 00 00 
  a4f727:	c5 7c 10 9c 17 60 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x160]
  a4f72e:	00 00 
  a4f730:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a4f736:	62 52 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm11
  a4f73c:	62 52 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm11
  a4f742:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x180]
  a4f749:	06 
  a4f74a:	c5 7c 10 ac 17 c0 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a4f751:	00 00 
  a4f753:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a4f759:	62 52 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm13
  a4f75f:	62 52 75 48 7f dd    	vpermt2ps zmm11,zmm1,zmm13
  a4f765:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a4f76c:	e0 01 00 00 
  a4f770:	c5 7c 10 ac 17 20 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x220]
  a4f777:	00 00 
  a4f779:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a4f77f:	62 c2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm13
  a4f785:	62 52 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm13
  a4f78b:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x240]
  a4f792:	09 
  a4f793:	c5 7c 10 ac 17 80 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x280]
  a4f79a:	00 00 
  a4f79c:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a4f7a2:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a4f7a8:	62 c2 75 48 7f cd    	vpermt2ps zmm17,zmm1,zmm13
  a4f7ae:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a4f7b5:	a0 02 00 00 
  a4f7b9:	c5 7c 10 ac 17 e0 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a4f7c0:	00 00 
  a4f7c2:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  a4f7c8:	62 c2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm13
  a4f7ce:	62 c2 75 48 7f dd    	vpermt2ps zmm19,zmm1,zmm13
  a4f7d4:	62 c1 5c 48 58 f3    	vaddps zmm22,zmm4,zmm11
  a4f7da:	62 a1 54 48 58 f9    	vaddps zmm23,zmm5,zmm17
  a4f7e0:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a4f7e6:	62 41 4c 48 58 cf    	vaddps zmm25,zmm6,zmm15
  a4f7ec:	62 21 3c 48 58 d3    	vaddps zmm26,zmm8,zmm19
  a4f7f2:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a4f7f8:	62 11 3c 40 58 eb    	vaddps zmm13,zmm24,zmm27
  a4f7fe:	62 41 64 48 58 e6    	vaddps zmm28,zmm3,zmm14
  a4f804:	62 21 34 48 58 ea    	vaddps zmm29,zmm9,zmm18
  a4f80a:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a4f810:	62 21 44 48 58 f8    	vaddps zmm31,zmm7,zmm16
  a4f816:	62 b1 1c 48 58 c5    	vaddps zmm0,zmm12,zmm21
  a4f81c:	62 f1 04 40 58 c8    	vaddps zmm1,zmm31,zmm0
  a4f822:	62 51 5c 48 5c db    	vsubps zmm11,zmm4,zmm11
  a4f828:	62 e1 0c 40 58 e1    	vaddps zmm20,zmm30,zmm1
  a4f82e:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a4f834:	62 c1 24 48 58 d1    	vaddps zmm18,zmm11,zmm9
  a4f83a:	62 d1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm15
  a4f840:	62 b1 44 48 5c f8    	vsubps zmm7,zmm7,zmm16
  a4f846:	62 f1 4c 48 58 e7    	vaddps zmm4,zmm6,zmm7
  a4f84c:	62 f2 7d 48 18 15 46 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff625b46]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a4f853:	5b 62 ff 
  a4f856:	62 71 5c 48 59 fa    	vmulps zmm15,zmm4,zmm2
  a4f85c:	62 31 1c 48 5c e5    	vsubps zmm12,zmm12,zmm21
  a4f862:	62 31 3c 48 5c c3    	vsubps zmm8,zmm8,zmm19
  a4f868:	62 d1 1c 48 5c e0    	vsubps zmm4,zmm12,zmm8
  a4f86e:	62 e1 5c 48 59 c2    	vmulps zmm16,zmm4,zmm2
  a4f874:	62 a1 04 48 58 d8    	vaddps zmm19,zmm15,zmm16
  a4f87a:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a4f880:	62 51 64 48 5c f6    	vsubps zmm14,zmm3,zmm14
  a4f886:	62 e1 74 40 5c cd    	vsubps zmm17,zmm17,zmm5
  a4f88c:	62 c1 74 40 58 ee    	vaddps zmm21,zmm17,zmm14
  a4f892:	62 f1 44 48 5c de    	vsubps zmm3,zmm7,zmm6
  a4f898:	62 f1 64 48 59 f2    	vmulps zmm6,zmm3,zmm2
  a4f89e:	62 d1 3c 48 58 dc    	vaddps zmm3,zmm8,zmm12
  a4f8a4:	62 f1 64 48 59 fa    	vmulps zmm7,zmm3,zmm2
  a4f8aa:	62 71 4c 48 5c c7    	vsubps zmm8,zmm6,zmm7
  a4f8b0:	62 d1 54 40 58 d0    	vaddps zmm2,zmm21,zmm8
  a4f8b6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a4f8bd:	fe 
  a4f8be:	62 31 4c 40 5c e7    	vsubps zmm12,zmm22,zmm23
  a4f8c4:	62 f1 04 40 5c c0    	vsubps zmm0,zmm31,zmm0
  a4f8ca:	62 f1 1c 48 58 e8    	vaddps zmm5,zmm12,zmm0
  a4f8d0:	62 81 1c 40 5c f5    	vsubps zmm22,zmm28,zmm29
  a4f8d6:	62 81 2c 40 5c f9    	vsubps zmm23,zmm26,zmm25
  a4f8dc:	62 21 44 40 58 e6    	vaddps zmm28,zmm23,zmm22
  a4f8e2:	62 51 24 48 5c c9    	vsubps zmm9,zmm11,zmm9
  a4f8e8:	62 f1 4c 48 58 ff    	vaddps zmm7,zmm6,zmm7
  a4f8ee:	62 f1 34 48 58 f7    	vaddps zmm6,zmm9,zmm7
  a4f8f4:	62 31 0c 48 5c d9    	vsubps zmm11,zmm14,zmm17
  a4f8fa:	62 51 7c 40 5c f7    	vsubps zmm14,zmm16,zmm15
  a4f900:	62 41 24 48 58 ee    	vaddps zmm29,zmm11,zmm14
  a4f906:	62 11 3c 40 5c fb    	vsubps zmm15,zmm24,zmm27
  a4f90c:	62 61 0c 40 5c d1    	vsubps zmm26,zmm30,zmm1
  a4f912:	62 b1 6c 40 5c cb    	vsubps zmm1,zmm18,zmm19
  a4f918:	62 41 54 40 5c f0    	vsubps zmm30,zmm21,zmm8
  a4f91e:	62 61 1c 48 5c d8    	vsubps zmm27,zmm12,zmm0
  a4f924:	62 21 4c 40 5c ff    	vsubps zmm31,zmm22,zmm23
  a4f92a:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a4f930:	62 41 24 48 5c c6    	vsubps zmm24,zmm11,zmm14
  a4f936:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a4f93c:	62 f1 7c 48 28 1d 3a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67763a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4f943:	76 67 ff 
  a4f946:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a4f94a:	62 72 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm0
  a4f950:	62 61 7c 48 28 0d 66 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff677666]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4f957:	76 67 ff 
  a4f95a:	62 72 35 40 7f e8    	vpermt2ps zmm13,zmm25,zmm0
  a4f960:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a4f966:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a4f96c:	62 f2 35 40 7f e0    	vpermt2ps zmm4,zmm25,zmm0
  a4f972:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a4f978:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  a4f97e:	62 f2 35 40 7f e8    	vpermt2ps zmm5,zmm25,zmm0
  a4f984:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a4f98a:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a4f990:	62 f2 35 40 7f f0    	vpermt2ps zmm6,zmm25,zmm0
  a4f996:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a4f99c:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a4f9a2:	62 72 35 40 7f f8    	vpermt2ps zmm15,zmm25,zmm0
  a4f9a8:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a4f9ae:	62 e2 65 48 7f c0    	vpermt2ps zmm16,zmm3,zmm0
  a4f9b4:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a4f9ba:	62 81 7c 48 28 d3    	vmovaps zmm18,zmm27
  a4f9c0:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  a4f9c6:	62 62 35 40 7f d8    	vpermt2ps zmm27,zmm25,zmm0
  a4f9cc:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a4f9d2:	62 e2 65 48 7f d8    	vpermt2ps zmm19,zmm3,zmm0
  a4f9d8:	62 f2 35 40 7f f8    	vpermt2ps zmm7,zmm25,zmm0
  a4f9de:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a4f9e4:	62 71 7c 48 28 15 12 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff677512]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4f9eb:	75 67 ff 
  a4f9ee:	62 c2 2d 48 7f ee    	vpermt2ps zmm21,zmm10,zmm14
  a4f9f4:	62 e1 7c 48 28 3d 42 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff677542]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4f9fb:	75 67 ff 
  a4f9fe:	62 52 45 40 7f ce    	vpermt2ps zmm9,zmm23,zmm14
  a4fa04:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a4fa0a:	62 32 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm16
  a4fa10:	62 32 45 40 7f d8    	vpermt2ps zmm11,zmm23,zmm16
  a4fa16:	62 c1 7c 48 28 f4    	vmovaps zmm22,zmm12
  a4fa1c:	62 a2 2d 48 7f f2    	vpermt2ps zmm22,zmm10,zmm18
  a4fa22:	62 32 45 40 7f e2    	vpermt2ps zmm12,zmm23,zmm18
  a4fa28:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a4fa2e:	62 a2 2d 48 7f d3    	vpermt2ps zmm18,zmm10,zmm19
  a4fa34:	62 a2 45 40 7f cb    	vpermt2ps zmm17,zmm23,zmm19
  a4fa3a:	62 52 2d 48 7f ef    	vpermt2ps zmm13,zmm10,zmm15
  a4fa40:	62 f2 2d 48 7f e1    	vpermt2ps zmm4,zmm10,zmm1
  a4fa46:	62 92 2d 48 7f eb    	vpermt2ps zmm5,zmm10,zmm27
  a4fa4c:	62 f2 2d 48 7f f7    	vpermt2ps zmm6,zmm10,zmm7
  a4fa52:	62 a1 d5 40 14 de    	vunpcklpd zmm19,zmm21,zmm22
  a4fa58:	62 a1 d5 40 15 ee    	vunpckhpd zmm21,zmm21,zmm22
  a4fa5e:	62 31 8d 48 14 fa    	vunpcklpd zmm15,zmm14,zmm18
  a4fa64:	62 b1 8d 48 15 ca    	vunpckhpd zmm1,zmm14,zmm18
  a4fa6a:	62 51 b5 48 14 f4    	vunpcklpd zmm14,zmm9,zmm12
  a4fa70:	62 c1 b5 48 15 d4    	vunpckhpd zmm18,zmm9,zmm12
  a4fa76:	62 b1 a5 48 14 f9    	vunpcklpd zmm7,zmm11,zmm17
  a4fa7c:	62 31 a5 48 15 c9    	vunpckhpd zmm9,zmm11,zmm17
  a4fa82:	62 e1 95 48 14 f5    	vunpcklpd zmm22,zmm13,zmm5
  a4fa88:	62 71 95 48 15 dd    	vunpckhpd zmm11,zmm13,zmm5
  a4fa8e:	62 f1 dd 48 14 ee    	vunpcklpd zmm5,zmm4,zmm6
  a4fa94:	62 f1 dd 48 15 e6    	vunpckhpd zmm4,zmm4,zmm6
  a4fa9a:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a4faa0:	62 e1 7c 48 28 05 56 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff677356]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4faa7:	73 67 ff 
  a4faaa:	62 d2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm15
  a4fab0:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  a4fab7:	02 
  a4fab8:	62 71 7c 48 28 2d 7e 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67737e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4fabf:	73 67 ff 
  a4fac2:	62 c2 15 48 7f df    	vpermt2ps zmm19,zmm13,zmm15
  a4fac8:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a4face:	62 f2 7d 40 7f d1    	vpermt2ps zmm2,zmm16,zmm1
  a4fad4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a4fadb:	ff 
  a4fadc:	62 e2 15 48 7f e9    	vpermt2ps zmm21,zmm13,zmm1
  a4fae2:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a4fae8:	62 72 7d 40 7f f7    	vpermt2ps zmm14,zmm16,zmm7
  a4faee:	62 f2 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm7
  a4faf4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a4fafb:	01 
  a4fafc:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a4fb02:	62 42 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm9
  a4fb08:	62 c2 15 48 7f d1    	vpermt2ps zmm18,zmm13,zmm9
  a4fb0e:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a4fb14:	62 e2 7d 40 7f cd    	vpermt2ps zmm17,zmm16,zmm5
  a4fb1a:	62 e2 15 48 7f f5    	vpermt2ps zmm22,zmm13,zmm5
  a4fb20:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a4fb26:	62 72 7d 40 7f fc    	vpermt2ps zmm15,zmm16,zmm4
  a4fb2c:	62 72 15 48 7f dc    	vpermt2ps zmm11,zmm13,zmm4
  a4fb32:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  a4fb39:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a4fb3f:	62 e2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm0
  a4fb45:	62 72 35 40 7f c0    	vpermt2ps zmm8,zmm25,zmm0
  a4fb4b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a4fb52:	fe 
  a4fb53:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4fb59:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a4fb5f:	62 f2 35 40 7f d0    	vpermt2ps zmm2,zmm25,zmm0
  a4fb65:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a4fb6b:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a4fb71:	62 62 35 40 7f e0    	vpermt2ps zmm28,zmm25,zmm0
  a4fb77:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  a4fb7d:	62 f2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm0
  a4fb83:	62 62 35 40 7f e8    	vpermt2ps zmm29,zmm25,zmm0
  a4fb89:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a4fb8f:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a4fb95:	62 62 35 40 7f d0    	vpermt2ps zmm26,zmm25,zmm0
  a4fb9b:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a4fba1:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a4fba7:	62 62 35 40 7f f0    	vpermt2ps zmm30,zmm25,zmm0
  a4fbad:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a4fbb3:	62 72 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm0
  a4fbb9:	62 62 35 40 7f f8    	vpermt2ps zmm31,zmm25,zmm0
  a4fbbf:	62 11 7c 48 28 d8    	vmovaps zmm11,zmm24
  a4fbc5:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a4fbcb:	62 62 35 40 7f c0    	vpermt2ps zmm24,zmm25,zmm0
  a4fbd1:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a4fbd7:	62 72 2d 48 7f e4    	vpermt2ps zmm12,zmm10,zmm4
  a4fbdd:	62 e2 45 40 7f e4    	vpermt2ps zmm20,zmm23,zmm4
  a4fbe3:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a4fbe9:	62 f2 2d 48 7f e7    	vpermt2ps zmm4,zmm10,zmm7
  a4fbef:	62 f2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm7
  a4fbf5:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a4fbfb:	62 d2 2d 48 7f f9    	vpermt2ps zmm7,zmm10,zmm9
  a4fc01:	62 d2 45 40 7f e9    	vpermt2ps zmm5,zmm23,zmm9
  a4fc07:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a4fc0d:	62 52 2d 48 7f cb    	vpermt2ps zmm9,zmm10,zmm11
  a4fc13:	62 d2 45 40 7f f3    	vpermt2ps zmm6,zmm23,zmm11
  a4fc19:	62 12 2d 48 7f c2    	vpermt2ps zmm8,zmm10,zmm26
  a4fc1f:	62 92 2d 48 7f d6    	vpermt2ps zmm2,zmm10,zmm30
  a4fc25:	62 02 2d 48 7f e7    	vpermt2ps zmm28,zmm10,zmm31
  a4fc2b:	62 02 2d 48 7f e8    	vpermt2ps zmm29,zmm10,zmm24
  a4fc31:	62 71 9d 48 14 d7    	vunpcklpd zmm10,zmm12,zmm7
  a4fc37:	62 61 9d 48 15 cf    	vunpckhpd zmm25,zmm12,zmm7
  a4fc3d:	62 d1 dd 48 14 f9    	vunpcklpd zmm7,zmm4,zmm9
  a4fc43:	62 51 dd 48 15 c9    	vunpckhpd zmm9,zmm4,zmm9
  a4fc49:	62 f1 dd 40 14 e5    	vunpcklpd zmm4,zmm20,zmm5
  a4fc4f:	62 61 dd 40 15 f5    	vunpckhpd zmm30,zmm20,zmm5
  a4fc55:	62 f1 f5 48 14 c6    	vunpcklpd zmm0,zmm1,zmm6
  a4fc5b:	62 f1 f5 48 15 ce    	vunpckhpd zmm1,zmm1,zmm6
  a4fc61:	62 01 bd 48 14 fc    	vunpcklpd zmm31,zmm8,zmm28
  a4fc67:	62 91 bd 48 15 ec    	vunpckhpd zmm5,zmm8,zmm28
  a4fc6d:	62 91 ed 48 14 f5    	vunpcklpd zmm6,zmm2,zmm29
  a4fc73:	62 11 ed 48 15 e5    	vunpckhpd zmm12,zmm2,zmm29
  a4fc79:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a4fc7f:	62 e2 7d 40 7f e7    	vpermt2ps zmm20,zmm16,zmm7
  a4fc85:	62 72 15 48 7f d7    	vpermt2ps zmm10,zmm13,zmm7
  a4fc8b:	62 11 7c 48 28 d9    	vmovaps zmm11,zmm25
  a4fc91:	62 52 7d 40 7f d9    	vpermt2ps zmm11,zmm16,zmm9
  a4fc97:	62 42 15 48 7f c9    	vpermt2ps zmm25,zmm13,zmm9
  a4fc9d:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a4fca3:	62 62 7d 40 7f d0    	vpermt2ps zmm26,zmm16,zmm0
  a4fca9:	62 f2 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm0
  a4fcaf:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a4fcb5:	62 f2 7d 40 7f d9    	vpermt2ps zmm3,zmm16,zmm1
  a4fcbb:	62 62 15 48 7f f1    	vpermt2ps zmm30,zmm13,zmm1
  a4fcc1:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a4fcc7:	62 72 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm6
  a4fccd:	62 62 15 48 7f fe    	vpermt2ps zmm31,zmm13,zmm6
  a4fcd3:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a4fcd9:	62 42 7d 40 7f e4    	vpermt2ps zmm28,zmm16,zmm12
  a4fcdf:	62 d2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm12
  a4fce5:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a4fcec:	62 f1 7c 48 10 71 03 	vmovups zmm6,ZMMWORD PTR [rcx+0xc0]
  a4fcf3:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a4fcfa:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a4fd01:	62 61 24 40 59 e8    	vmulps zmm29,zmm27,zmm0
  a4fd07:	62 62 65 48 bc e9    	vfnmadd231ps zmm29,zmm3,zmm1
  a4fd0d:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a4fd13:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a4fd1a:	62 92 75 48 b8 db    	vfmadd231ps zmm3,zmm1,zmm27
  a4fd20:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a4fd27:	62 61 54 40 59 d8    	vmulps zmm27,zmm21,zmm0
  a4fd2d:	62 62 35 40 bc d9    	vfnmadd231ps zmm27,zmm25,zmm1
  a4fd33:	62 61 34 40 59 c8    	vmulps zmm25,zmm25,zmm0
  a4fd39:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a4fd40:	62 22 75 48 b8 cd    	vfmadd231ps zmm25,zmm1,zmm21
  a4fd46:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a4fd4d:	62 e1 4c 40 59 e8    	vmulps zmm21,zmm22,zmm0
  a4fd53:	62 e2 05 40 bc e9    	vfnmadd231ps zmm21,zmm31,zmm1
  a4fd59:	62 61 04 40 59 f8    	vmulps zmm31,zmm31,zmm0
  a4fd5f:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a4fd66:	62 22 75 48 b8 fe    	vfmadd231ps zmm31,zmm1,zmm22
  a4fd6c:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a4fd73:	62 71 0c 48 59 e0    	vmulps zmm12,zmm14,zmm0
  a4fd79:	62 72 2d 40 bc e1    	vfnmadd231ps zmm12,zmm26,zmm1
  a4fd7f:	62 e1 2c 40 59 f0    	vmulps zmm22,zmm26,zmm0
  a4fd85:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a4fd8c:	62 c2 75 48 b8 f6    	vfmadd231ps zmm22,zmm1,zmm14
  a4fd92:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a4fd99:	62 61 04 48 59 d0    	vmulps zmm26,zmm15,zmm0
  a4fd9f:	62 62 1d 40 bc d1    	vfnmadd231ps zmm26,zmm28,zmm1
  a4fda5:	62 e1 1c 40 59 f8    	vmulps zmm23,zmm28,zmm0
  a4fdab:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a4fdb2:	62 c2 75 48 b8 ff    	vfmadd231ps zmm23,zmm1,zmm15
  a4fdb8:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a4fdbf:	62 61 6c 40 59 c0    	vmulps zmm24,zmm18,zmm0
  a4fdc5:	62 62 0d 40 bc c1    	vfnmadd231ps zmm24,zmm30,zmm1
  a4fdcb:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a4fdd1:	62 61 7c 48 10 61 04 	vmovups zmm28,ZMMWORD PTR [rcx+0x100]
  a4fdd8:	62 b2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm18
  a4fdde:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a4fde5:	62 e1 64 40 59 d7    	vmulps zmm18,zmm19,zmm7
  a4fdeb:	62 e2 2d 48 bc d6    	vfnmadd231ps zmm18,zmm10,zmm6
  a4fdf1:	62 f1 2c 48 59 ff    	vmulps zmm7,zmm10,zmm7
  a4fdf7:	62 71 7c 48 10 41 10 	vmovups zmm8,ZMMWORD PTR [rcx+0x400]
  a4fdfe:	62 b2 4d 48 b8 fb    	vfmadd231ps zmm7,zmm6,zmm19
  a4fe04:	62 f1 7c 48 10 71 11 	vmovups zmm6,ZMMWORD PTR [rcx+0x440]
  a4fe0b:	62 c1 74 40 59 c0    	vmulps zmm16,zmm17,zmm8
  a4fe11:	62 e2 35 48 bc c6    	vfnmadd231ps zmm16,zmm9,zmm6
  a4fe17:	62 51 34 48 59 c0    	vmulps zmm8,zmm9,zmm8
  a4fe1d:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a4fe24:	62 32 4d 48 b8 c1    	vfmadd231ps zmm8,zmm6,zmm17
  a4fe2a:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a4fe31:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a4fe38:	ff 
  a4fe39:	62 81 6c 48 59 dc    	vmulps zmm19,zmm2,zmm28
  a4fe3f:	62 e2 25 48 bc d9    	vfnmadd231ps zmm19,zmm11,zmm1
  a4fe45:	62 11 24 48 59 dc    	vmulps zmm11,zmm11,zmm28
  a4fe4b:	62 61 7c 48 10 61 16 	vmovups zmm28,ZMMWORD PTR [rcx+0x580]
  a4fe52:	62 72 75 48 b8 da    	vfmadd231ps zmm11,zmm1,zmm2
  a4fe58:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  a4fe5f:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a4fe66:	62 81 6c 48 59 cc    	vmulps zmm17,zmm2,zmm28
  a4fe6c:	62 e2 55 48 bc c9    	vfnmadd231ps zmm17,zmm5,zmm1
  a4fe72:	62 91 54 48 59 ec    	vmulps zmm5,zmm5,zmm28
  a4fe78:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x80]
  a4fe7f:	02 
  a4fe80:	62 01 2c 48 58 e5    	vaddps zmm28,zmm10,zmm29
  a4fe86:	62 f2 75 48 b8 ea    	vfmadd231ps zmm5,zmm1,zmm2
  a4fe8c:	62 b1 24 40 58 cd    	vaddps zmm1,zmm27,zmm21
  a4fe92:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x40]
  a4fe99:	01 
  a4fe9a:	62 41 14 48 59 f1    	vmulps zmm30,zmm13,zmm9
  a4fea0:	62 62 5d 48 bc f6    	vfnmadd231ps zmm30,zmm4,zmm6
  a4fea6:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a4feac:	62 91 1c 48 58 d2    	vaddps zmm2,zmm12,zmm26
  a4feb2:	62 d2 4d 48 b8 e5    	vfmadd231ps zmm4,zmm6,zmm13
  a4feb8:	62 b1 3c 40 58 f2    	vaddps zmm6,zmm24,zmm18
  a4febe:	62 31 7c 40 58 f3    	vaddps zmm14,zmm16,zmm19
  a4fec4:	62 11 1c 48 5c ca    	vsubps zmm9,zmm12,zmm26
  a4feca:	62 61 7c 48 58 d7    	vaddps zmm26,zmm0,zmm7
  a4fed0:	62 71 7c 48 5c e7    	vsubps zmm12,zmm0,zmm7
  a4fed6:	62 91 74 40 58 c6    	vaddps zmm0,zmm17,zmm30
  a4fedc:	62 31 7c 40 5c fb    	vsubps zmm15,zmm16,zmm19
  a4fee2:	62 f1 54 48 58 fc    	vaddps zmm7,zmm5,zmm4
  a4fee8:	62 e1 54 48 5c c4    	vsubps zmm16,zmm5,zmm4
  a4feee:	62 a1 64 48 58 dc    	vaddps zmm19,zmm3,zmm20
  a4fef4:	62 11 2c 48 5c ed    	vsubps zmm13,zmm10,zmm29
  a4fefa:	62 01 34 40 58 ef    	vaddps zmm29,zmm25,zmm31
  a4ff00:	62 01 34 40 5c cf    	vsubps zmm25,zmm25,zmm31
  a4ff06:	62 21 4c 40 58 ff    	vaddps zmm31,zmm22,zmm23
  a4ff0c:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  a4ff12:	62 c1 3c 48 58 fb    	vaddps zmm23,zmm8,zmm11
  a4ff18:	62 81 6c 40 5c d0    	vsubps zmm18,zmm18,zmm24
  a4ff1e:	62 b1 4c 40 58 e2    	vaddps zmm4,zmm22,zmm18
  a4ff24:	62 41 3c 48 5c c3    	vsubps zmm24,zmm8,zmm11
  a4ff2a:	62 a1 0c 40 5c c9    	vsubps zmm17,zmm30,zmm17
  a4ff30:	62 b1 3c 40 58 e9    	vaddps zmm5,zmm24,zmm17
  a4ff36:	62 61 5c 48 5c f5    	vsubps zmm30,zmm4,zmm5
  a4ff3c:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a4ff42:	62 51 34 48 58 c4    	vaddps zmm8,zmm9,zmm12
  a4ff48:	62 e1 5c 40 5c e3    	vsubps zmm20,zmm20,zmm3
  a4ff4e:	62 b1 04 48 58 d8    	vaddps zmm3,zmm15,zmm16
  a4ff54:	62 81 54 40 5c eb    	vsubps zmm21,zmm21,zmm27
  a4ff5a:	62 f1 3c 48 58 eb    	vaddps zmm5,zmm8,zmm3
  a4ff60:	62 61 3c 48 5c db    	vsubps zmm27,zmm8,zmm3
  a4ff66:	62 71 6c 48 58 c6    	vaddps zmm8,zmm2,zmm6
  a4ff6c:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a4ff72:	62 71 0c 48 58 d8    	vaddps zmm11,zmm14,zmm0
  a4ff78:	62 71 0c 48 5c f0    	vsubps zmm14,zmm14,zmm0
  a4ff7e:	62 f1 1c 40 58 d9    	vaddps zmm3,zmm28,zmm1
  a4ff84:	62 61 1c 40 5c e1    	vsubps zmm28,zmm28,zmm1
  a4ff8a:	62 91 04 40 58 c2    	vaddps zmm0,zmm31,zmm26
  a4ff90:	62 91 04 40 5c ca    	vsubps zmm1,zmm31,zmm26
  a4ff96:	62 61 44 40 58 d7    	vaddps zmm26,zmm23,zmm7
  a4ff9c:	62 f1 44 40 5c f7    	vsubps zmm6,zmm23,zmm7
  a4ffa2:	62 e1 74 48 5c fe    	vsubps zmm23,zmm1,zmm6
  a4ffa8:	62 61 74 48 58 fe    	vaddps zmm31,zmm1,zmm6
  a4ffae:	62 b1 14 40 58 f3    	vaddps zmm6,zmm29,zmm19
  a4ffb4:	62 81 64 40 5c dd    	vsubps zmm19,zmm19,zmm29
  a4ffba:	62 41 6c 48 58 ee    	vaddps zmm29,zmm2,zmm14
  a4ffc0:	62 d1 6c 48 5c ce    	vsubps zmm1,zmm2,zmm14
  a4ffc6:	62 11 14 48 58 f1    	vaddps zmm14,zmm13,zmm25
  a4ffcc:	62 91 14 48 5c d1    	vsubps zmm2,zmm13,zmm25
  a4ffd2:	62 d1 3c 48 58 fb    	vaddps zmm7,zmm8,zmm11
  a4ffd8:	62 51 34 48 5c e4    	vsubps zmm12,zmm9,zmm12
  a4ffde:	62 11 7c 48 58 ca    	vaddps zmm9,zmm0,zmm26
  a4ffe4:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a4ffea:	62 a1 54 40 58 c4    	vaddps zmm16,zmm21,zmm20
  a4fff0:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a4fff6:	62 72 7d 48 18 15 60 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff625460]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4fffd:	54 62 ff 
  a50000:	62 c1 7c 48 28 ea    	vmovaps zmm21,zmm10
  a50006:	62 c2 55 48 ac ee    	vfnmadd213ps zmm21,zmm5,zmm14
  a5000c:	62 72 7d 48 18 2d be 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6252be]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a50013:	52 62 ff 
  a50016:	62 41 0c 40 59 cd    	vmulps zmm25,zmm30,zmm13
  a5001c:	62 a1 4c 40 5c d2    	vsubps zmm18,zmm22,zmm18
  a50022:	62 01 54 40 58 f1    	vaddps zmm30,zmm21,zmm25
  a50028:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a5002e:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a50034:	62 a2 5d 48 ac f0    	vfnmadd213ps zmm22,zmm4,zmm16
  a5003a:	62 41 24 40 59 c5    	vmulps zmm24,zmm27,zmm13
  a50040:	62 91 7c 48 5c c2    	vsubps zmm0,zmm0,zmm26
  a50046:	62 01 4c 40 5c d0    	vsubps zmm26,zmm22,zmm24
  a5004c:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a50052:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a50058:	62 12 15 40 ac dc    	vfnmadd213ps zmm11,zmm29,zmm28
  a5005e:	62 81 54 40 5c e9    	vsubps zmm21,zmm21,zmm25
  a50064:	62 41 7c 48 28 ca    	vmovaps zmm25,zmm10
  a5006a:	62 22 05 40 ac cb    	vfnmadd213ps zmm25,zmm31,zmm19
  a50070:	62 81 4c 40 58 f0    	vaddps zmm22,zmm22,zmm24
  a50076:	62 41 1c 48 58 c7    	vaddps zmm24,zmm12,zmm15
  a5007c:	62 01 1c 40 58 dd    	vaddps zmm27,zmm28,zmm29
  a50082:	62 01 6c 48 58 e0    	vaddps zmm28,zmm2,zmm24
  a50088:	62 81 64 40 58 df    	vaddps zmm19,zmm19,zmm31
  a5008e:	62 21 6c 40 58 e9    	vaddps zmm29,zmm18,zmm17
  a50094:	62 62 2d 48 ac c2    	vfnmadd213ps zmm24,zmm10,zmm2
  a5009a:	62 91 5c 40 58 d5    	vaddps zmm2,zmm20,zmm29
  a500a0:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a500a6:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a500ac:	62 e2 45 48 ac d3    	vfnmadd213ps zmm18,zmm7,zmm3
  a500b2:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a500b8:	62 22 2d 48 ac ec    	vfnmadd213ps zmm29,zmm10,zmm20
  a500be:	62 e1 6c 40 58 e0    	vaddps zmm20,zmm18,zmm0
  a500c4:	62 51 1c 48 5c e7    	vsubps zmm12,zmm12,zmm15
  a500ca:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a500d0:	62 72 35 48 ac fe    	vfnmadd213ps zmm15,zmm9,zmm6
  a500d6:	62 51 3c 48 59 c5    	vmulps zmm8,zmm8,zmm13
  a500dc:	62 f1 6c 40 5c c0    	vsubps zmm0,zmm18,zmm0
  a500e2:	62 c1 04 48 5c d0    	vsubps zmm18,zmm15,zmm8
  a500e8:	62 51 04 48 58 c0    	vaddps zmm8,zmm15,zmm8
  a500ee:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a500f4:	62 51 44 40 59 f5    	vmulps zmm14,zmm23,zmm13
  a500fa:	62 f1 7c 40 58 e4    	vaddps zmm4,zmm16,zmm4
  a50100:	62 51 24 48 5c fe    	vsubps zmm15,zmm11,zmm14
  a50106:	62 d1 74 48 59 cd    	vmulps zmm1,zmm1,zmm13
  a5010c:	62 51 24 48 58 de    	vaddps zmm11,zmm11,zmm14
  a50112:	62 71 34 40 58 f1    	vaddps zmm14,zmm25,zmm1
  a50118:	62 c1 74 40 59 c5    	vmulps zmm16,zmm17,zmm13
  a5011e:	62 f1 34 40 5c c9    	vsubps zmm1,zmm25,zmm1
  a50124:	62 a1 3c 40 58 c8    	vaddps zmm17,zmm24,zmm16
  a5012a:	62 51 1c 48 59 e5    	vmulps zmm12,zmm12,zmm13
  a50130:	62 a1 3c 40 5c c0    	vsubps zmm16,zmm24,zmm16
  a50136:	62 c1 14 40 5c fc    	vsubps zmm23,zmm29,zmm12
  a5013c:	62 51 14 40 58 e4    	vaddps zmm12,zmm29,zmm12
  a50142:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  a50148:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a5014e:	62 f1 7c 48 28 3d 28 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff642928]        # 92a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ff30>
  a50155:	29 64 ff 
  a50158:	62 f2 45 48 7f f3    	vpermt2ps zmm6,zmm7,zmm3
  a5015e:	62 f1 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm6
  a50165:	62 02 45 48 7f d6    	vpermt2ps zmm26,zmm7,zmm30
  a5016b:	62 61 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm26
  a50172:	01 
  a50173:	62 52 45 48 7f f7    	vpermt2ps zmm14,zmm7,zmm15
  a50179:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm14
  a50180:	02 
  a50181:	62 92 45 48 7f d4    	vpermt2ps zmm2,zmm7,zmm28
  a50187:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm2
  a5018e:	03 
  a5018f:	62 a2 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm20
  a50195:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm18
  a5019c:	04 
  a5019d:	62 a2 45 48 7f f5    	vpermt2ps zmm22,zmm7,zmm21
  a501a3:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm22
  a501aa:	05 
  a501ab:	62 82 45 48 7f db    	vpermt2ps zmm19,zmm7,zmm27
  a501b1:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  a501b8:	06 
  a501b9:	62 a2 45 48 7f f9    	vpermt2ps zmm23,zmm7,zmm17
  a501bf:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm23
  a501c6:	07 
  a501c7:	62 72 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm0
  a501cd:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm8
  a501d4:	08 
  a501d5:	62 f2 45 48 7f e5    	vpermt2ps zmm4,zmm7,zmm5
  a501db:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm4
  a501e2:	09 
  a501e3:	62 d2 45 48 7f cb    	vpermt2ps zmm1,zmm7,zmm11
  a501e9:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm1
  a501f0:	0a 
  a501f1:	62 32 45 48 7f e0    	vpermt2ps zmm12,zmm7,zmm16
  a501f7:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm12
  a501fe:	0b 
  a501ff:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a50206:	48 39 d0             	cmp    rax,rdx
  a50209:	0f 85 91 f4 ff ff    	jne    a4f6a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a5020f:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  a50216:	c5 f8 77             	vzeroupper
  a50219:	c3                   	ret
