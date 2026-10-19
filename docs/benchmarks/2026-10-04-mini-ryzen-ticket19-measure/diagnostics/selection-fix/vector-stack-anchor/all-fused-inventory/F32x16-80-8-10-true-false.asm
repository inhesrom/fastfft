
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5d4c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5d4c0:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a5d4c6:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a5d4cb:	62 f1 7c 48 28 1d eb 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6361eb]        # 936c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20b70>
  a5d4d2:	61 63 ff 
  a5d4d5:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a5d4db:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a5d4e1:	62 f1 7c 48 28 15 15 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff636215]        # 93700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20bb0>
  a5d4e8:	62 63 ff 
  a5d4eb:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a5d4f1:	62 f1 7c 48 10 b7 50 	vmovups zmm6,ZMMWORD PTR [rdi+0x50]
  a5d4f8:	00 00 00 
  a5d4fb:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a5d502:	00 
  a5d503:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a5d509:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  a5d50f:	62 f2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm1
  a5d515:	62 f1 7c 48 10 af a0 	vmovups zmm5,ZMMWORD PTR [rdi+0xa0]
  a5d51c:	00 00 00 
  a5d51f:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a5d526:	00 
  a5d527:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a5d52d:	62 72 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm1
  a5d533:	62 f2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm1
  a5d539:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0xf0]
  a5d540:	00 00 00 
  a5d543:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a5d54a:	00 
  a5d54b:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a5d551:	62 72 65 48 7f d1    	vpermt2ps zmm10,zmm3,zmm1
  a5d557:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a5d55d:	62 71 7c 48 10 5f 05 	vmovups zmm11,ZMMWORD PTR [rdi+0x140]
  a5d564:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a5d56b:	00 
  a5d56c:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a5d572:	62 72 65 48 7f e1    	vpermt2ps zmm12,zmm3,zmm1
  a5d578:	62 72 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm1
  a5d57e:	62 71 7c 48 10 af 90 	vmovups zmm13,ZMMWORD PTR [rdi+0x190]
  a5d585:	01 00 00 
  a5d588:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a5d58f:	00 
  a5d590:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a5d596:	62 72 65 48 7f f1    	vpermt2ps zmm14,zmm3,zmm1
  a5d59c:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a5d5a2:	62 71 7c 48 10 bf e0 	vmovups zmm15,ZMMWORD PTR [rdi+0x1e0]
  a5d5a9:	01 00 00 
  a5d5ac:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a5d5b3:	00 
  a5d5b4:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a5d5ba:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  a5d5c0:	62 72 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm1
  a5d5c6:	62 e1 7c 48 10 8f 30 	vmovups zmm17,ZMMWORD PTR [rdi+0x230]
  a5d5cd:	02 00 00 
  a5d5d0:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a5d5d7:	00 
  a5d5d8:	62 f2 75 40 77 d9    	vpermi2ps zmm3,zmm17,zmm1
  a5d5de:	62 e2 6d 48 7f c9    	vpermt2ps zmm17,zmm2,zmm1
  a5d5e4:	62 c1 5c 48 58 d3    	vaddps zmm18,zmm4,zmm11
  a5d5ea:	62 c1 54 48 58 df    	vaddps zmm19,zmm5,zmm15
  a5d5f0:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a5d5f6:	62 c1 4c 48 58 ed    	vaddps zmm21,zmm6,zmm13
  a5d5fc:	62 a1 34 48 58 f1    	vaddps zmm22,zmm9,zmm17
  a5d602:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a5d608:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  a5d60e:	62 41 7c 48 58 c4    	vaddps zmm24,zmm0,zmm12
  a5d614:	62 21 3c 48 58 c8    	vaddps zmm25,zmm8,zmm16
  a5d61a:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a5d620:	62 41 44 48 58 de    	vaddps zmm27,zmm7,zmm14
  a5d626:	62 61 2c 48 58 e3    	vaddps zmm28,zmm10,zmm3
  a5d62c:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a5d632:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a5d638:	62 51 5c 48 5c db    	vsubps zmm11,zmm4,zmm11
  a5d63e:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a5d644:	62 c1 24 48 58 c0    	vaddps zmm16,zmm11,zmm8
  a5d64a:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  a5d650:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a5d656:	62 f1 4c 48 58 e7    	vaddps zmm4,zmm6,zmm7
  a5d65c:	62 72 7d 48 18 2d 36 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff617d36]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5d663:	7d 61 ff 
  a5d666:	62 51 5c 48 59 f5    	vmulps zmm14,zmm4,zmm13
  a5d66c:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a5d672:	62 31 34 48 5c c9    	vsubps zmm9,zmm9,zmm17
  a5d678:	62 d1 64 48 5c e1    	vsubps zmm4,zmm3,zmm9
  a5d67e:	62 51 5c 48 59 d5    	vmulps zmm10,zmm4,zmm13
  a5d684:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  a5d68a:	62 b1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm17
  a5d690:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a5d696:	62 71 04 48 5c e5    	vsubps zmm12,zmm15,zmm5
  a5d69c:	62 71 1c 48 58 f8    	vaddps zmm15,zmm12,zmm0
  a5d6a2:	62 f1 44 48 5c ee    	vsubps zmm5,zmm7,zmm6
  a5d6a8:	62 d1 54 48 59 ed    	vmulps zmm5,zmm5,zmm13
  a5d6ae:	62 f1 34 48 58 db    	vaddps zmm3,zmm9,zmm3
  a5d6b4:	62 d1 64 48 59 f5    	vmulps zmm6,zmm3,zmm13
  a5d6ba:	62 71 54 48 5c ee    	vsubps zmm13,zmm5,zmm6
  a5d6c0:	62 d1 04 48 58 fd    	vaddps zmm7,zmm15,zmm13
  a5d6c6:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a5d6cc:	62 81 24 40 5c dc    	vsubps zmm19,zmm27,zmm28
  a5d6d2:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a5d6d8:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a5d6de:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a5d6e4:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a5d6ea:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a5d6f0:	62 f1 54 48 58 f6    	vaddps zmm6,zmm5,zmm6
  a5d6f6:	62 f1 3c 48 58 ee    	vaddps zmm5,zmm8,zmm6
  a5d6fc:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a5d702:	62 51 2c 48 5c de    	vsubps zmm11,zmm10,zmm14
  a5d708:	62 51 7c 48 58 d3    	vaddps zmm10,zmm0,zmm11
  a5d70e:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a5d714:	62 11 2c 40 5c e5    	vsubps zmm12,zmm26,zmm29
  a5d71a:	62 a1 7c 40 5c c9    	vsubps zmm17,zmm16,zmm17
  a5d720:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a5d726:	62 a1 6c 40 5c db    	vsubps zmm19,zmm18,zmm19
  a5d72c:	62 31 3c 40 5c f5    	vsubps zmm14,zmm24,zmm21
  a5d732:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a5d738:	62 51 7c 48 5c db    	vsubps zmm11,zmm0,zmm11
  a5d73e:	62 71 7c 48 28 3d 38 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff669838]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5d745:	98 66 ff 
  a5d748:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a5d74c:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5d752:	62 72 05 48 7f c0    	vpermt2ps zmm8,zmm15,zmm0
  a5d758:	62 e1 7c 48 28 05 5e 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff66985e]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5d75f:	98 66 ff 
  a5d762:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  a5d768:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a5d76e:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a5d774:	62 f2 7d 40 7f e0    	vpermt2ps zmm4,zmm16,zmm0
  a5d77a:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a5d780:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  a5d786:	62 f2 7d 40 7f d8    	vpermt2ps zmm3,zmm16,zmm0
  a5d78c:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a5d792:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  a5d798:	62 f2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm0
  a5d79e:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a5d7a4:	62 e2 05 48 7f f8    	vpermt2ps zmm23,zmm15,zmm0
  a5d7aa:	62 e2 7d 40 7f e0    	vpermt2ps zmm20,zmm16,zmm0
  a5d7b0:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a5d7b6:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a5d7bc:	62 e2 7d 40 7f c8    	vpermt2ps zmm17,zmm16,zmm0
  a5d7c2:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a5d7c8:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a5d7ce:	62 e2 7d 40 7f d8    	vpermt2ps zmm19,zmm16,zmm0
  a5d7d4:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a5d7da:	62 62 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm0
  a5d7e0:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a5d7e6:	62 e1 7c 48 28 15 10 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff669710]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5d7ed:	97 66 ff 
  a5d7f0:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a5d7f6:	62 22 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm23
  a5d7fc:	62 e1 7c 48 28 2d 3a 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff66973a]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5d803:	97 66 ff 
  a5d806:	62 32 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm23
  a5d80c:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a5d812:	62 02 6d 40 7f f2    	vpermt2ps zmm30,zmm18,zmm26
  a5d818:	62 82 55 40 7f f2    	vpermt2ps zmm22,zmm21,zmm26
  a5d81e:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a5d824:	62 02 6d 40 7f d3    	vpermt2ps zmm26,zmm18,zmm27
  a5d82a:	62 02 55 40 7f c3    	vpermt2ps zmm24,zmm21,zmm27
  a5d830:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a5d836:	62 02 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm28
  a5d83c:	62 02 55 40 7f cc    	vpermt2ps zmm25,zmm21,zmm28
  a5d842:	62 b2 6d 40 7f d4    	vpermt2ps zmm2,zmm18,zmm20
  a5d848:	62 b2 6d 40 7f e1    	vpermt2ps zmm4,zmm18,zmm17
  a5d84e:	62 b2 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm19
  a5d854:	62 f1 ed 48 14 db    	vunpcklpd zmm3,zmm2,zmm3
  a5d85a:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a5d860:	62 e1 dd 48 14 fd    	vunpcklpd zmm23,zmm4,zmm5
  a5d866:	62 91 95 40 14 d2    	vunpcklpd zmm2,zmm29,zmm26
  a5d86c:	62 91 95 40 15 e2    	vunpckhpd zmm4,zmm29,zmm26
  a5d872:	62 81 8d 40 14 db    	vunpcklpd zmm19,zmm30,zmm27
  a5d878:	62 81 8d 40 15 cb    	vunpckhpd zmm17,zmm30,zmm27
  a5d87e:	62 91 bd 48 14 f0    	vunpcklpd zmm6,zmm8,zmm24
  a5d884:	62 91 bd 48 15 e8    	vunpckhpd zmm5,zmm8,zmm24
  a5d88a:	62 01 cd 40 14 e1    	vunpcklpd zmm28,zmm22,zmm25
  a5d890:	62 81 cd 40 15 e1    	vunpckhpd zmm20,zmm22,zmm25
  a5d896:	62 71 7c 48 28 05 60 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff669560]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5d89d:	95 66 ff 
  a5d8a0:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a5d8a6:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a5d8ac:	62 f2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm0
  a5d8b2:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a5d8b8:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  a5d8be:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  a5d8c4:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a5d8ca:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  a5d8d0:	62 72 7d 40 7f c8    	vpermt2ps zmm9,zmm16,zmm0
  a5d8d6:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a5d8dc:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a5d8e2:	62 72 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm0
  a5d8e8:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a5d8ee:	62 62 05 48 7f e8    	vpermt2ps zmm29,zmm15,zmm0
  a5d8f4:	62 72 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm0
  a5d8fa:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a5d900:	62 62 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm0
  a5d906:	62 72 7d 40 7f e8    	vpermt2ps zmm13,zmm16,zmm0
  a5d90c:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a5d912:	62 62 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm0
  a5d918:	62 72 7d 40 7f f0    	vpermt2ps zmm14,zmm16,zmm0
  a5d91e:	62 72 25 48 77 f8    	vpermi2ps zmm15,zmm11,zmm0
  a5d924:	62 72 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm0
  a5d92a:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a5d930:	62 b2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm19
  a5d936:	62 61 7c 48 28 1d 00 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff669500]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5d93d:	95 66 ff 
  a5d940:	62 b2 25 40 7f d3    	vpermt2ps zmm2,zmm27,zmm19
  a5d946:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  a5d94c:	62 a2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm17
  a5d952:	62 b2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm17
  a5d958:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a5d95e:	62 82 3d 48 7f cc    	vpermt2ps zmm17,zmm8,zmm28
  a5d964:	62 92 25 40 7f f4    	vpermt2ps zmm6,zmm27,zmm28
  a5d96a:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a5d970:	62 a2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm20
  a5d976:	62 b2 25 40 7f ec    	vpermt2ps zmm5,zmm27,zmm20
  a5d97c:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a5d982:	62 a2 3d 48 7f e7    	vpermt2ps zmm20,zmm8,zmm23
  a5d988:	62 b2 25 40 7f df    	vpermt2ps zmm3,zmm27,zmm23
  a5d98e:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a5d994:	62 82 6d 40 7f fd    	vpermt2ps zmm23,zmm18,zmm29
  a5d99a:	62 82 55 40 7f f5    	vpermt2ps zmm22,zmm21,zmm29
  a5d9a0:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a5d9a6:	62 02 6d 40 7f e6    	vpermt2ps zmm28,zmm18,zmm30
  a5d9ac:	62 02 55 40 7f c6    	vpermt2ps zmm24,zmm21,zmm30
  a5d9b2:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a5d9b8:	62 02 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm31
  a5d9be:	62 02 55 40 7f cf    	vpermt2ps zmm25,zmm21,zmm31
  a5d9c4:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a5d9ca:	62 42 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm15
  a5d9d0:	62 42 6d 40 7f f7    	vpermt2ps zmm30,zmm18,zmm15
  a5d9d6:	62 d2 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm12
  a5d9dc:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a5d9e2:	62 52 6d 40 7f ce    	vpermt2ps zmm9,zmm18,zmm14
  a5d9e8:	62 51 f5 48 14 e1    	vunpcklpd zmm12,zmm1,zmm9
  a5d9ee:	62 52 6d 40 7f d3    	vpermt2ps zmm10,zmm18,zmm11
  a5d9f4:	62 51 c5 48 14 d2    	vunpcklpd zmm10,zmm7,zmm10
  a5d9fa:	62 11 c5 40 14 cd    	vunpcklpd zmm9,zmm23,zmm29
  a5da00:	62 11 c5 40 15 dd    	vunpckhpd zmm11,zmm23,zmm29
  a5da06:	62 11 9d 40 14 ee    	vunpcklpd zmm13,zmm28,zmm30
  a5da0c:	62 11 9d 40 15 fe    	vunpckhpd zmm15,zmm28,zmm30
  a5da12:	62 91 cd 40 14 f9    	vunpcklpd zmm7,zmm22,zmm25
  a5da18:	62 11 cd 40 15 f1    	vunpckhpd zmm14,zmm22,zmm25
  a5da1e:	62 81 bd 40 14 ea    	vunpcklpd zmm21,zmm24,zmm26
  a5da24:	62 81 bd 40 15 f2    	vunpckhpd zmm22,zmm24,zmm26
  a5da2a:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a5da30:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a5da36:	62 52 25 40 7f cd    	vpermt2ps zmm9,zmm27,zmm13
  a5da3c:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a5da42:	62 c2 3d 48 7f d7    	vpermt2ps zmm18,zmm8,zmm15
  a5da48:	62 52 25 40 7f df    	vpermt2ps zmm11,zmm27,zmm15
  a5da4e:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a5da54:	62 22 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm21
  a5da5a:	62 b2 25 40 7f fd    	vpermt2ps zmm7,zmm27,zmm21
  a5da60:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a5da66:	62 a2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm22
  a5da6c:	62 32 25 40 7f f6    	vpermt2ps zmm14,zmm27,zmm22
  a5da72:	62 52 1d 48 77 c2    	vpermi2ps zmm8,zmm12,zmm10
  a5da78:	62 52 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm10
  a5da7e:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a5da85:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a5da8c:	62 61 7c 48 10 4a 04 	vmovups zmm25,ZMMWORD PTR [rdx+0x100]
  a5da93:	62 61 7c 48 10 52 05 	vmovups zmm26,ZMMWORD PTR [rdx+0x140]
  a5da9a:	62 e1 7c 48 10 72 06 	vmovups zmm22,ZMMWORD PTR [rdx+0x180]
  a5daa1:	62 e1 7c 48 10 6a 07 	vmovups zmm21,ZMMWORD PTR [rdx+0x1c0]
  a5daa8:	62 11 64 40 59 d1    	vmulps zmm10,zmm19,zmm25
  a5daae:	62 12 6d 40 bc d2    	vfnmadd231ps zmm10,zmm18,zmm26
  a5dab4:	62 01 6c 40 59 c9    	vmulps zmm25,zmm18,zmm25
  a5daba:	62 61 7c 48 10 5a 10 	vmovups zmm27,ZMMWORD PTR [rdx+0x400]
  a5dac1:	62 22 2d 40 b8 cb    	vfmadd231ps zmm25,zmm26,zmm19
  a5dac7:	62 e1 7c 48 10 5a 11 	vmovups zmm19,ZMMWORD PTR [rdx+0x440]
  a5dace:	62 81 5c 40 59 d3    	vmulps zmm18,zmm20,zmm27
  a5dad4:	62 a2 3d 48 bc d3    	vfnmadd231ps zmm18,zmm8,zmm19
  a5dada:	62 01 3c 48 59 d3    	vmulps zmm26,zmm8,zmm27
  a5dae0:	62 71 7c 48 10 42 08 	vmovups zmm8,ZMMWORD PTR [rdx+0x200]
  a5dae7:	62 22 65 40 b8 d4    	vfmadd231ps zmm26,zmm19,zmm20
  a5daed:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a5daf4:	62 c1 74 40 59 d8    	vmulps zmm19,zmm17,zmm8
  a5dafa:	62 a2 3d 40 bc dc    	vfnmadd231ps zmm19,zmm24,zmm20
  a5db00:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a5db06:	62 71 7c 48 10 42 0c 	vmovups zmm8,ZMMWORD PTR [rdx+0x300]
  a5db0d:	62 22 5d 40 b8 c1    	vfmadd231ps zmm24,zmm20,zmm17
  a5db13:	62 e1 7c 48 10 62 0d 	vmovups zmm20,ZMMWORD PTR [rdx+0x340]
  a5db1a:	62 c1 7c 40 59 c8    	vmulps zmm17,zmm16,zmm8
  a5db20:	62 a2 45 40 bc cc    	vfnmadd231ps zmm17,zmm23,zmm20
  a5db26:	62 41 44 40 59 d8    	vmulps zmm27,zmm23,zmm8
  a5db2c:	62 e1 7c 48 10 7a 0a 	vmovups zmm23,ZMMWORD PTR [rdx+0x280]
  a5db33:	62 22 5d 40 b8 d8    	vfmadd231ps zmm27,zmm20,zmm16
  a5db39:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a5db40:	62 31 4c 48 59 c7    	vmulps zmm8,zmm6,zmm23
  a5db46:	62 32 45 48 bc c0    	vfnmadd231ps zmm8,zmm7,zmm16
  a5db4c:	62 b1 44 48 59 ff    	vmulps zmm7,zmm7,zmm23
  a5db52:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a5db59:	62 f2 7d 40 b8 fe    	vfmadd231ps zmm7,zmm16,zmm6
  a5db5f:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a5db66:	62 a1 54 48 59 e7    	vmulps zmm20,zmm5,zmm23
  a5db6c:	62 e2 0d 48 bc e6    	vfnmadd231ps zmm20,zmm14,zmm6
  a5db72:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a5db78:	62 e1 7c 48 10 42 12 	vmovups zmm16,ZMMWORD PTR [rdx+0x480]
  a5db7f:	62 72 4d 48 b8 f5    	vfmadd231ps zmm14,zmm6,zmm5
  a5db85:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a5db8c:	62 a1 5c 48 59 fe    	vmulps zmm23,zmm4,zmm22
  a5db92:	62 a2 25 48 bc fd    	vfnmadd231ps zmm23,zmm11,zmm21
  a5db98:	62 a1 24 48 59 f6    	vmulps zmm22,zmm11,zmm22
  a5db9e:	62 b1 2c 48 58 f2    	vaddps zmm6,zmm10,zmm18
  a5dba4:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a5dbaa:	62 f1 7c 48 58 e6    	vaddps zmm4,zmm0,zmm6
  a5dbb0:	62 a1 64 48 59 e8    	vmulps zmm21,zmm3,zmm16
  a5dbb6:	62 82 1d 48 bc ec    	vfnmadd231ps zmm21,zmm12,zmm28
  a5dbbc:	62 a1 1c 48 59 c0    	vmulps zmm16,zmm12,zmm16
  a5dbc2:	62 b1 64 40 58 e9    	vaddps zmm5,zmm19,zmm17
  a5dbc8:	62 e2 1d 40 b8 c3    	vfmadd231ps zmm16,zmm28,zmm3
  a5dbce:	62 31 5c 40 58 df    	vaddps zmm11,zmm20,zmm23
  a5dbd4:	62 41 6c 48 59 e7    	vmulps zmm28,zmm2,zmm15
  a5dbda:	62 42 35 48 bc e5    	vfnmadd231ps zmm28,zmm9,zmm13
  a5dbe0:	62 51 34 48 59 ff    	vmulps zmm15,zmm9,zmm15
  a5dbe6:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a5dbec:	62 72 15 48 b8 fa    	vfmadd231ps zmm15,zmm13,zmm2
  a5dbf2:	62 91 54 40 58 d4    	vaddps zmm2,zmm21,zmm28
  a5dbf8:	62 11 34 40 58 e2    	vaddps zmm12,zmm25,zmm26
  a5dbfe:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a5dc04:	62 11 3c 40 58 cb    	vaddps zmm9,zmm24,zmm27
  a5dc0a:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a5dc10:	62 31 0c 48 58 ee    	vaddps zmm13,zmm14,zmm22
  a5dc16:	62 a1 0c 48 5c f6    	vsubps zmm22,zmm14,zmm22
  a5dc1c:	62 51 7c 40 58 f7    	vaddps zmm14,zmm16,zmm15
  a5dc22:	62 41 7c 40 5c d7    	vsubps zmm26,zmm16,zmm15
  a5dc28:	62 71 1c 48 58 f9    	vaddps zmm15,zmm12,zmm1
  a5dc2e:	62 21 2c 48 5c da    	vsubps zmm27,zmm10,zmm18
  a5dc34:	62 c1 44 48 58 c5    	vaddps zmm16,zmm7,zmm13
  a5dc3a:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a5dc40:	62 62 7d 48 18 2d 0e 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff617b0e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5dc47:	7b 61 ff 
  a5dc4a:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a5dc50:	62 11 3c 40 59 d5    	vmulps zmm10,zmm24,zmm29
  a5dc56:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a5dc5c:	62 e2 7d 48 18 3d 3a 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff61773a]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5dc63:	77 61 ff 
  a5dc66:	62 32 35 40 b8 d7    	vfmadd231ps zmm10,zmm25,zmm23
  a5dc6c:	62 01 34 40 59 cd    	vmulps zmm25,zmm25,zmm29
  a5dc72:	62 02 45 40 bc c8    	vfnmadd231ps zmm25,zmm23,zmm24
  a5dc78:	62 81 2c 40 59 cd    	vmulps zmm17,zmm26,zmm29
  a5dc7e:	62 a2 4d 40 b8 cf    	vfmadd231ps zmm17,zmm22,zmm23
  a5dc84:	62 81 4c 40 59 f5    	vmulps zmm22,zmm22,zmm29
  a5dc8a:	62 82 45 40 bc f2    	vfnmadd231ps zmm22,zmm23,zmm26
  a5dc90:	62 81 64 40 59 d5    	vmulps zmm18,zmm19,zmm29
  a5dc96:	62 a2 25 40 b8 d7    	vfmadd231ps zmm18,zmm27,zmm23
  a5dc9c:	62 01 24 40 59 c5    	vmulps zmm24,zmm27,zmm29
  a5dca2:	62 22 45 40 bc c3    	vfnmadd231ps zmm24,zmm23,zmm19
  a5dca8:	62 81 54 40 59 dd    	vmulps zmm19,zmm21,zmm29
  a5dcae:	62 a2 5d 40 b8 df    	vfmadd231ps zmm19,zmm20,zmm23
  a5dcb4:	62 81 5c 40 59 e5    	vmulps zmm20,zmm20,zmm29
  a5dcba:	62 62 7d 48 18 15 24 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff617a24]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5dcc1:	7a 61 ff 
  a5dcc4:	62 a2 55 40 bc e7    	vfnmadd231ps zmm20,zmm21,zmm23
  a5dcca:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a5dcd0:	62 e2 7d 48 18 3d 6a 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff61796a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5dcd7:	79 61 ff 
  a5dcda:	62 e2 4d 48 a8 e8    	vfmadd213ps zmm21,zmm6,zmm0
  a5dce0:	62 f2 45 40 bc c6    	vfnmadd231ps zmm0,zmm23,zmm6
  a5dce6:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a5dcec:	62 d2 25 48 a8 f0    	vfmadd213ps zmm6,zmm11,zmm8
  a5dcf2:	62 52 45 40 bc c3    	vfnmadd231ps zmm8,zmm23,zmm11
  a5dcf8:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a5dcfe:	62 72 1d 48 a8 d9    	vfmadd213ps zmm11,zmm12,zmm1
  a5dd04:	62 d2 45 40 bc cc    	vfnmadd231ps zmm1,zmm23,zmm12
  a5dd0a:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a5dd10:	62 72 15 48 a8 e7    	vfmadd213ps zmm12,zmm13,zmm7
  a5dd16:	62 b2 15 48 bc ff    	vfnmadd231ps zmm7,zmm13,zmm23
  a5dd1c:	62 a2 55 48 bc ef    	vfnmadd231ps zmm21,zmm5,zmm23
  a5dd22:	62 b2 6d 48 bc f7    	vfnmadd231ps zmm6,zmm2,zmm23
  a5dd28:	62 32 35 48 bc df    	vfnmadd231ps zmm11,zmm9,zmm23
  a5dd2e:	62 32 0d 48 bc e7    	vfnmadd231ps zmm12,zmm14,zmm23
  a5dd34:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a5dd3a:	62 f2 2d 40 b8 c5    	vfmadd231ps zmm0,zmm26,zmm5
  a5dd40:	62 f1 64 48 58 da    	vaddps zmm3,zmm3,zmm2
  a5dd46:	62 72 2d 40 b8 c2    	vfmadd231ps zmm8,zmm26,zmm2
  a5dd4c:	62 d1 34 48 58 d7    	vaddps zmm2,zmm9,zmm15
  a5dd52:	62 d2 2d 40 b8 c9    	vfmadd231ps zmm1,zmm26,zmm9
  a5dd58:	62 92 0d 48 b8 fa    	vfmadd231ps zmm7,zmm14,zmm26
  a5dd5e:	62 d1 7c 40 58 ee    	vaddps zmm5,zmm16,zmm14
  a5dd64:	62 11 7c 48 58 c9    	vaddps zmm9,zmm0,zmm25
  a5dd6a:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a5dd70:	62 31 3c 48 58 ee    	vaddps zmm13,zmm8,zmm22
  a5dd76:	62 31 3c 48 5c c6    	vsubps zmm8,zmm8,zmm22
  a5dd7c:	62 11 74 48 5c f0    	vsubps zmm14,zmm1,zmm24
  a5dd82:	62 f1 3c 40 58 c9    	vaddps zmm1,zmm24,zmm1
  a5dd88:	62 31 44 48 5c fc    	vsubps zmm15,zmm7,zmm20
  a5dd8e:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a5dd94:	62 c1 54 40 58 c2    	vaddps zmm16,zmm21,zmm10
  a5dd9a:	62 51 54 40 5c d2    	vsubps zmm10,zmm21,zmm10
  a5dda0:	62 a1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm17
  a5dda6:	62 b1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm17
  a5ddac:	62 a1 24 48 5c ca    	vsubps zmm17,zmm11,zmm18
  a5ddb2:	62 51 6c 40 58 db    	vaddps zmm11,zmm18,zmm11
  a5ddb8:	62 a1 1c 48 5c d3    	vsubps zmm18,zmm12,zmm19
  a5ddbe:	62 31 1c 48 58 e3    	vaddps zmm12,zmm12,zmm19
  a5ddc4:	62 a1 7c 40 5c dc    	vsubps zmm19,zmm16,zmm20
  a5ddca:	62 a1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm20
  a5ddd0:	62 a1 74 40 5c e2    	vsubps zmm20,zmm17,zmm18
  a5ddd6:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a5dddc:	62 c1 34 48 58 d5    	vaddps zmm18,zmm9,zmm13
  a5dde2:	62 51 34 48 5c cd    	vsubps zmm9,zmm9,zmm13
  a5dde8:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a5ddee:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a5ddf4:	62 51 7c 48 5c f8    	vsubps zmm15,zmm0,zmm8
  a5ddfa:	62 d1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm8
  a5de00:	62 71 74 48 5c c7    	vsubps zmm8,zmm1,zmm7
  a5de06:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a5de0c:	62 f1 2c 48 58 fe    	vaddps zmm7,zmm10,zmm6
  a5de12:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a5de18:	62 51 24 48 58 d4    	vaddps zmm10,zmm11,zmm12
  a5de1e:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a5de24:	62 71 6c 48 5c e5    	vsubps zmm12,zmm2,zmm5
  a5de2a:	62 f1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm5
  a5de30:	62 f1 5c 48 5c eb    	vsubps zmm5,zmm4,zmm3
  a5de36:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a5de3c:	62 f1 7c 48 28 25 fa 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6358fa]        # 93740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20bf0>
  a5de43:	58 63 ff 
  a5de46:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a5de4c:	62 a2 5d 48 7f e3    	vpermt2ps zmm20,zmm4,zmm19
  a5de52:	62 32 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm18
  a5de58:	62 52 5d 48 7f c7    	vpermt2ps zmm8,zmm4,zmm15
  a5de5e:	62 72 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm7
  a5de64:	62 72 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm5
  a5de6a:	62 a2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm16
  a5de70:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a5de76:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5de7c:	62 72 5d 48 7f de    	vpermt2ps zmm11,zmm4,zmm6
  a5de82:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a5de88:	62 e1 7c 48 11 66 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm20
  a5de8f:	62 71 7c 48 11 6e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm13
  a5de96:	62 71 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm8
  a5de9d:	62 71 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm10
  a5dea4:	62 71 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm12
  a5deab:	62 e1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm17
  a5deb2:	62 71 7c 48 11 76 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm14
  a5deb9:	62 f1 7c 48 11 4e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm1
  a5dec0:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a5dec7:	c5 f8 77             	vzeroupper
  a5deca:	c3                   	ret
