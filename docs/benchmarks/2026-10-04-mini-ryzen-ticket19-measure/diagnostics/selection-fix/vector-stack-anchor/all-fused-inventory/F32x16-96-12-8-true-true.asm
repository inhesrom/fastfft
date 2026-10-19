
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1a5c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1a5c0:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  a1a5c7:	48 c1 e2 08          	shl    rdx,0x8
  a1a5cb:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a1a5cf:	31 d2                	xor    edx,edx
  a1a5d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a1a5d8:	0f 1f 84 00 00 00 00 
  a1a5df:	00 
  a1a5e0:	62 e1 7c 48 10 04 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1]
  a1a5e7:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1a5ee:	01 
  a1a5ef:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x80]
  a1a5f6:	02 
  a1a5f7:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1a5fe:	03 
  a1a5ff:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a1a605:	62 f1 7c 48 28 05 b1 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6753b1]        # 8f9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ce70>
  a1a60c:	53 67 ff 
  a1a60f:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a1a614:	62 52 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm13
  a1a61a:	62 f1 7c 48 28 2d dc 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6753dc]        # 8fa00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ceb0>
  a1a621:	53 67 ff 
  a1a624:	62 c2 55 48 7f c5    	vpermt2ps zmm16,zmm5,zmm13
  a1a62a:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a1a630:	62 c2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm13
  a1a636:	62 52 55 48 7f fd    	vpermt2ps zmm15,zmm5,zmm13
  a1a63c:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a1a642:	62 c2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm13
  a1a648:	62 c2 55 48 7f d5    	vpermt2ps zmm18,zmm5,zmm13
  a1a64e:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a1a654:	62 c2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm13
  a1a65a:	62 d2 55 48 7f f5    	vpermt2ps zmm6,zmm5,zmm13
  a1a660:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x100]
  a1a667:	04 
  a1a668:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a1a66e:	62 c2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm13
  a1a674:	62 d2 55 48 7f cd    	vpermt2ps zmm1,zmm5,zmm13
  a1a67a:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1a681:	05 
  a1a682:	62 21 7c 48 28 e4    	vmovaps zmm28,zmm20
  a1a688:	62 42 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm13
  a1a68e:	62 c2 55 48 7f e5    	vpermt2ps zmm20,zmm5,zmm13
  a1a694:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x180]
  a1a69b:	06 
  a1a69c:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a1a6a2:	62 c2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm13
  a1a6a8:	62 42 55 48 7f ed    	vpermt2ps zmm29,zmm5,zmm13
  a1a6ae:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a1a6b5:	07 
  a1a6b6:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a1a6bc:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a1a6c2:	62 42 55 48 7f cd    	vpermt2ps zmm25,zmm5,zmm13
  a1a6c8:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1a6cf:	08 
  a1a6d0:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a1a6d6:	62 d2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm13
  a1a6dc:	62 42 55 48 7f fd    	vpermt2ps zmm31,zmm5,zmm13
  a1a6e2:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x240]
  a1a6e9:	09 
  a1a6ea:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a1a6f0:	62 42 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm13
  a1a6f6:	62 d2 55 48 7f dd    	vpermt2ps zmm3,zmm5,zmm13
  a1a6fc:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x280]
  a1a703:	0a 
  a1a704:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a1a70a:	62 d2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm13
  a1a710:	62 42 55 48 7f dd    	vpermt2ps zmm27,zmm5,zmm13
  a1a716:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a1a71d:	0b 
  a1a71e:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a1a724:	62 52 7d 48 7f cd    	vpermt2ps zmm9,zmm0,zmm13
  a1a72a:	62 52 55 48 7f dd    	vpermt2ps zmm11,zmm5,zmm13
  a1a730:	62 11 7c 40 58 d5    	vaddps zmm10,zmm16,zmm29
  a1a736:	62 61 4c 48 58 d3    	vaddps zmm26,zmm6,zmm3
  a1a73c:	62 11 74 48 58 e3    	vaddps zmm12,zmm1,zmm27
  a1a742:	62 51 34 40 58 c7    	vaddps zmm8,zmm25,zmm15
  a1a748:	62 b1 04 40 58 ea    	vaddps zmm5,zmm31,zmm18
  a1a74e:	62 01 74 48 5c db    	vsubps zmm27,zmm1,zmm27
  a1a754:	62 b1 0c 40 58 ff    	vaddps zmm7,zmm30,zmm23
  a1a75a:	62 b1 0c 40 5c c7    	vsubps zmm0,zmm30,zmm23
  a1a760:	62 a1 24 48 58 fc    	vaddps zmm23,zmm11,zmm20
  a1a766:	62 21 04 40 5c f2    	vsubps zmm30,zmm31,zmm18
  a1a76c:	62 81 34 48 58 d4    	vaddps zmm18,zmm9,zmm28
  a1a772:	62 11 34 48 5c cc    	vsubps zmm9,zmm9,zmm28
  a1a778:	62 21 0c 48 58 e3    	vaddps zmm28,zmm14,zmm19
  a1a77e:	62 81 7c 40 5c c5    	vsubps zmm16,zmm16,zmm29
  a1a784:	62 01 54 40 58 e8    	vaddps zmm29,zmm21,zmm24
  a1a78a:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a1a790:	62 61 4c 40 58 c4    	vaddps zmm24,zmm22,zmm4
  a1a796:	62 f1 4c 40 5c e4    	vsubps zmm4,zmm22,zmm4
  a1a79c:	62 a1 6c 48 58 f1    	vaddps zmm22,zmm2,zmm17
  a1a7a2:	62 01 04 48 5c c9    	vsubps zmm25,zmm15,zmm25
  a1a7a8:	62 71 34 40 58 fc    	vaddps zmm15,zmm25,zmm4
  a1a7ae:	62 b1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm17
  a1a7b4:	62 51 5c 40 5c db    	vsubps zmm11,zmm20,zmm11
  a1a7ba:	62 e1 24 48 58 ca    	vaddps zmm17,zmm11,zmm2
  a1a7c0:	62 a1 04 48 5c e1    	vsubps zmm20,zmm15,zmm17
  a1a7c6:	62 b1 04 48 58 c9    	vaddps zmm1,zmm15,zmm17
  a1a7cc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1a7d3:	ff 
  a1a7d4:	62 e1 24 40 58 c8    	vaddps zmm17,zmm27,zmm0
  a1a7da:	62 31 0c 48 5c f3    	vsubps zmm14,zmm14,zmm19
  a1a7e0:	62 c1 0c 40 58 d9    	vaddps zmm19,zmm30,zmm9
  a1a7e6:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a1a7ec:	62 b1 74 40 58 cb    	vaddps zmm1,zmm17,zmm19
  a1a7f2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a1a7f9:	fe 
  a1a7fa:	62 21 74 40 5c fb    	vsubps zmm31,zmm17,zmm19
  a1a800:	62 d1 1c 48 58 f0    	vaddps zmm6,zmm12,zmm8
  a1a806:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a1a80c:	62 31 54 48 58 e7    	vaddps zmm12,zmm5,zmm23
  a1a812:	62 b1 54 48 5c ef    	vsubps zmm5,zmm5,zmm23
  a1a818:	62 81 2c 48 58 ca    	vaddps zmm17,zmm10,zmm26
  a1a81e:	62 11 2c 48 5c d2    	vsubps zmm10,zmm10,zmm26
  a1a824:	62 e1 3c 40 58 ff    	vaddps zmm23,zmm24,zmm7
  a1a82a:	62 f1 3c 40 5c ff    	vsubps zmm7,zmm24,zmm7
  a1a830:	62 21 4c 40 58 c2    	vaddps zmm24,zmm22,zmm18
  a1a836:	62 a1 4c 40 5c da    	vsubps zmm19,zmm22,zmm18
  a1a83c:	62 31 44 48 5c fb    	vsubps zmm15,zmm7,zmm19
  a1a842:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm15
  a1a849:	01 
  a1a84a:	62 b1 44 48 58 fb    	vaddps zmm7,zmm7,zmm19
  a1a850:	62 81 1c 40 58 f5    	vaddps zmm22,zmm28,zmm29
  a1a856:	62 01 1c 40 5c d5    	vsubps zmm26,zmm28,zmm29
  a1a85c:	62 61 3c 48 58 e5    	vaddps zmm28,zmm8,zmm5
  a1a862:	62 f1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm5
  a1a868:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a1a86f:	62 a1 7c 40 58 dd    	vaddps zmm19,zmm16,zmm21
  a1a875:	62 31 7c 40 5c c5    	vsubps zmm8,zmm16,zmm21
  a1a87b:	62 71 24 40 5c f8    	vsubps zmm15,zmm27,zmm0
  a1a881:	62 41 4c 48 58 dc    	vaddps zmm27,zmm6,zmm12
  a1a887:	62 51 0c 40 5c c9    	vsubps zmm9,zmm30,zmm9
  a1a88d:	62 41 64 48 58 ee    	vaddps zmm29,zmm3,zmm14
  a1a893:	62 f1 0c 48 5c db    	vsubps zmm3,zmm14,zmm3
  a1a899:	62 11 74 40 58 f3    	vaddps zmm14,zmm17,zmm27
  a1a89f:	62 91 5c 48 5c e1    	vsubps zmm4,zmm4,zmm25
  a1a8a5:	62 01 44 40 58 f0    	vaddps zmm30,zmm23,zmm24
  a1a8ab:	62 d1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm11
  a1a8b1:	62 81 4c 40 58 c6    	vaddps zmm16,zmm22,zmm30
  a1a8b7:	62 f2 7d 48 18 05 9f 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff65ab9f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1a8be:	ab 65 ff 
  a1a8c1:	62 22 7d 48 ac d9    	vfnmadd213ps zmm27,zmm0,zmm17
  a1a8c7:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a1a8cd:	62 32 75 48 ac db    	vfnmadd213ps zmm11,zmm1,zmm19
  a1a8d3:	62 f2 7d 48 18 0d f7 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65a9f7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1a8da:	a9 65 ff 
  a1a8dd:	62 e1 5c 40 59 e9    	vmulps zmm21,zmm20,zmm1
  a1a8e3:	62 81 44 40 5c d0    	vsubps zmm18,zmm23,zmm24
  a1a8e9:	62 c1 54 40 58 cb    	vaddps zmm17,zmm21,zmm11
  a1a8ef:	62 22 7d 48 ac f6    	vfnmadd213ps zmm30,zmm0,zmm22
  a1a8f5:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a1a8fb:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a1a902:	ff 
  a1a903:	62 82 55 48 ac f5    	vfnmadd213ps zmm22,zmm5,zmm29
  a1a909:	62 61 04 40 59 c1    	vmulps zmm24,zmm31,zmm1
  a1a90f:	62 d1 4c 48 5c f4    	vsubps zmm6,zmm6,zmm12
  a1a915:	62 81 4c 40 5c e0    	vsubps zmm20,zmm22,zmm24
  a1a91b:	62 a1 24 48 5c fd    	vsubps zmm23,zmm11,zmm21
  a1a921:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a1a927:	62 52 1d 40 ac da    	vfnmadd213ps zmm11,zmm28,zmm10
  a1a92d:	62 01 4c 40 58 c0    	vaddps zmm24,zmm22,zmm24
  a1a933:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a1a939:	62 12 45 48 ac e2    	vfnmadd213ps zmm12,zmm7,zmm26
  a1a93f:	62 01 2c 48 58 fc    	vaddps zmm31,zmm10,zmm28
  a1a945:	62 51 04 48 58 d1    	vaddps zmm10,zmm15,zmm9
  a1a94b:	62 61 2c 40 58 cf    	vaddps zmm25,zmm26,zmm7
  a1a951:	62 c1 3c 48 58 f2    	vaddps zmm22,zmm8,zmm10
  a1a957:	62 52 7d 48 ac d0    	vfnmadd213ps zmm10,zmm0,zmm8
  a1a95d:	62 f1 5c 48 58 fa    	vaddps zmm7,zmm4,zmm2
  a1a963:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a1a969:	62 e1 64 48 58 ef    	vaddps zmm21,zmm3,zmm7
  a1a96f:	62 f2 7d 48 ac fb    	vfnmadd213ps zmm7,zmm0,zmm3
  a1a975:	62 f1 6c 40 59 d9    	vmulps zmm3,zmm18,zmm1
  a1a97b:	62 51 04 48 5c f9    	vsubps zmm15,zmm15,zmm9
  a1a981:	62 f1 24 40 58 e3    	vaddps zmm4,zmm27,zmm3
  a1a987:	62 f1 4c 48 59 c1    	vmulps zmm0,zmm6,zmm1
  a1a98d:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a1a993:	62 61 0c 40 5c e0    	vsubps zmm28,zmm30,zmm0
  a1a999:	62 01 7c 48 58 f6    	vaddps zmm30,zmm0,zmm30
  a1a99f:	62 e1 64 40 58 54 24 	vaddps zmm18,zmm19,ZMMWORD PTR [rsp-0x80]
  a1a9a6:	fe 
  a1a9a7:	62 f1 74 48 59 74 24 	vmulps zmm6,zmm1,ZMMWORD PTR [rsp+0x40]
  a1a9ae:	01 
  a1a9af:	62 f1 14 40 58 c5    	vaddps zmm0,zmm29,zmm5
  a1a9b5:	62 71 24 48 5c c6    	vsubps zmm8,zmm11,zmm6
  a1a9bb:	62 71 74 48 59 0c 24 	vmulps zmm9,zmm1,ZMMWORD PTR [rsp]
  a1a9c2:	62 f1 24 48 58 f6    	vaddps zmm6,zmm11,zmm6
  a1a9c8:	62 41 34 48 58 dc    	vaddps zmm27,zmm9,zmm12
  a1a9ce:	62 71 6c 48 59 d9    	vmulps zmm11,zmm2,zmm1
  a1a9d4:	62 d1 1c 48 5c d1    	vsubps zmm2,zmm12,zmm9
  a1a9da:	62 51 24 48 58 ca    	vaddps zmm9,zmm11,zmm10
  a1a9e0:	62 f1 04 48 59 c9    	vmulps zmm1,zmm15,zmm1
  a1a9e6:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a1a9ec:	62 61 44 48 5c e9    	vsubps zmm29,zmm7,zmm1
  a1a9f2:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a1a9f8:	62 f1 7c 48 28 3d 7e 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6ac57e]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1a9ff:	c5 6a ff 
  a1aa02:	62 72 45 48 7f f3    	vpermt2ps zmm14,zmm7,zmm3
  a1aa08:	62 a2 45 48 7f ca    	vpermt2ps zmm17,zmm7,zmm18
  a1aa0e:	62 72 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm6
  a1aa14:	62 c2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm10
  a1aa1a:	62 d2 45 48 7f e5    	vpermt2ps zmm4,zmm7,zmm13
  a1aa20:	62 c2 45 48 7f fd    	vpermt2ps zmm23,zmm7,zmm13
  a1aa26:	62 42 45 48 7f fd    	vpermt2ps zmm31,zmm7,zmm13
  a1aa2c:	62 52 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm13
  a1aa32:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a1aa38:	62 71 7c 48 28 15 be 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6ac4be]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1aa3f:	c4 6a ff 
  a1aa42:	62 f2 2d 48 7f dc    	vpermt2ps zmm3,zmm10,zmm4
  a1aa48:	62 71 7c 48 28 1d ee 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6ac4ee]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1aa4f:	c4 6a ff 
  a1aa52:	62 72 25 48 7f f4    	vpermt2ps zmm14,zmm11,zmm4
  a1aa58:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a1aa5e:	62 b2 2d 48 7f e7    	vpermt2ps zmm4,zmm10,zmm23
  a1aa64:	62 a2 25 48 7f cf    	vpermt2ps zmm17,zmm11,zmm23
  a1aa6a:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a1aa70:	62 92 2d 48 7f ef    	vpermt2ps zmm5,zmm10,zmm31
  a1aa76:	62 12 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm31
  a1aa7c:	62 b1 7c 48 28 f6    	vmovaps zmm6,zmm22
  a1aa82:	62 d2 2d 48 7f f1    	vpermt2ps zmm6,zmm10,zmm9
  a1aa88:	62 c2 25 48 7f f1    	vpermt2ps zmm22,zmm11,zmm9
  a1aa8e:	62 e1 e5 48 14 dd    	vunpcklpd zmm19,zmm3,zmm5
  a1aa94:	62 71 e5 48 15 fd    	vunpckhpd zmm15,zmm3,zmm5
  a1aa9a:	62 61 dd 48 14 fe    	vunpcklpd zmm31,zmm4,zmm6
  a1aaa0:	62 f1 dd 48 15 de    	vunpckhpd zmm3,zmm4,zmm6
  a1aaa6:	62 c1 8d 48 14 d0    	vunpcklpd zmm18,zmm14,zmm8
  a1aaac:	62 51 8d 48 15 f0    	vunpckhpd zmm14,zmm14,zmm8
  a1aab2:	62 b1 f5 40 14 e6    	vunpcklpd zmm4,zmm17,zmm22
  a1aab8:	62 b1 f5 40 15 ee    	vunpckhpd zmm5,zmm17,zmm22
  a1aabe:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a1aac4:	62 71 7c 48 28 25 32 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6ac332]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1aacb:	c3 6a ff 
  a1aace:	62 e2 1d 48 7f f3    	vpermt2ps zmm22,zmm12,zmm3
  a1aad4:	62 f1 7c 48 28 35 62 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6ac362]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1aadb:	c3 6a ff 
  a1aade:	62 72 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm3
  a1aae4:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a1aaea:	62 62 1d 48 7f d4    	vpermt2ps zmm26,zmm12,zmm4
  a1aaf0:	62 e2 4d 48 7f d4    	vpermt2ps zmm18,zmm6,zmm4
  a1aaf6:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a1aafc:	62 e2 1d 48 7f fd    	vpermt2ps zmm23,zmm12,zmm5
  a1ab02:	62 72 4d 48 7f f5    	vpermt2ps zmm14,zmm6,zmm5
  a1ab08:	62 a1 7c 48 28 cb    	vmovaps zmm17,zmm19
  a1ab0e:	62 82 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm31
  a1ab14:	62 82 45 48 7f c6    	vpermt2ps zmm16,zmm7,zmm30
  a1ab1a:	62 e2 45 48 7f e0    	vpermt2ps zmm20,zmm7,zmm0
  a1ab20:	62 62 45 48 7f da    	vpermt2ps zmm27,zmm7,zmm2
  a1ab26:	62 e2 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm1
  a1ab2c:	62 42 45 48 7f e5    	vpermt2ps zmm28,zmm7,zmm13
  a1ab32:	62 42 45 48 7f c5    	vpermt2ps zmm24,zmm7,zmm13
  a1ab38:	62 42 45 48 7f cd    	vpermt2ps zmm25,zmm7,zmm13
  a1ab3e:	62 42 45 48 7f ed    	vpermt2ps zmm29,zmm7,zmm13
  a1ab44:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a1ab4a:	62 92 2d 48 7f c4    	vpermt2ps zmm0,zmm10,zmm28
  a1ab50:	62 82 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm28
  a1ab56:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a1ab5c:	62 92 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm24
  a1ab62:	62 82 25 48 7f e0    	vpermt2ps zmm20,zmm11,zmm24
  a1ab68:	62 91 7c 48 28 d3    	vmovaps zmm2,zmm27
  a1ab6e:	62 92 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm25
  a1ab74:	62 02 25 48 7f d9    	vpermt2ps zmm27,zmm11,zmm25
  a1ab7a:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a1ab80:	62 92 2d 48 7f dd    	vpermt2ps zmm3,zmm10,zmm29
  a1ab86:	62 82 25 48 7f ed    	vpermt2ps zmm21,zmm11,zmm29
  a1ab8c:	62 61 fd 48 14 f2    	vunpcklpd zmm30,zmm0,zmm2
  a1ab92:	62 61 fd 48 15 e2    	vunpckhpd zmm28,zmm0,zmm2
  a1ab98:	62 61 f5 48 14 c3    	vunpcklpd zmm24,zmm1,zmm3
  a1ab9e:	62 f1 f5 48 15 c3    	vunpckhpd zmm0,zmm1,zmm3
  a1aba4:	62 01 fd 40 14 eb    	vunpcklpd zmm29,zmm16,zmm27
  a1abaa:	62 01 fd 40 15 cb    	vunpckhpd zmm25,zmm16,zmm27
  a1abb0:	62 b1 dd 40 14 cd    	vunpcklpd zmm1,zmm20,zmm21
  a1abb6:	62 b1 dd 40 15 d5    	vunpckhpd zmm2,zmm20,zmm21
  a1abbc:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a1abc2:	62 02 4d 48 7f f0    	vpermt2ps zmm30,zmm6,zmm24
  a1abc8:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a1abce:	62 f2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm0
  a1abd4:	62 62 4d 48 7f e0    	vpermt2ps zmm28,zmm6,zmm0
  a1abda:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a1abe0:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a1abe6:	62 62 4d 48 7f e9    	vpermt2ps zmm29,zmm6,zmm1
  a1abec:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a1abf2:	62 f2 1d 48 7f ca    	vpermt2ps zmm1,zmm12,zmm2
  a1abf8:	62 62 4d 48 7f ca    	vpermt2ps zmm25,zmm6,zmm2
  a1abfe:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a1ac05:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a1ac0c:	62 e1 2c 40 59 e2    	vmulps zmm20,zmm26,zmm2
  a1ac12:	62 e2 7d 48 bc e4    	vfnmadd231ps zmm20,zmm0,zmm4
  a1ac18:	62 e1 7c 48 59 ea    	vmulps zmm21,zmm0,zmm2
  a1ac1e:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a1ac25:	62 82 5d 48 b8 ea    	vfmadd231ps zmm21,zmm4,zmm26
  a1ac2b:	62 f1 7c 48 10 51 05 	vmovups zmm2,ZMMWORD PTR [rcx+0x140]
  a1ac32:	62 61 4c 40 59 d0    	vmulps zmm26,zmm22,zmm0
  a1ac38:	62 62 65 48 bc d2    	vfnmadd231ps zmm26,zmm3,zmm2
  a1ac3e:	62 f1 64 48 59 c0    	vmulps zmm0,zmm3,zmm0
  a1ac44:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a1ac4b:	62 b2 6d 48 b8 c6    	vfmadd231ps zmm0,zmm2,zmm22
  a1ac51:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a1ac58:	62 f1 44 40 59 e3    	vmulps zmm4,zmm23,zmm3
  a1ac5e:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a1ac64:	62 f1 74 48 59 cb    	vmulps zmm1,zmm1,zmm3
  a1ac6a:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a1ac71:	62 b2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm23
  a1ac77:	62 f1 7c 48 10 51 03 	vmovups zmm2,ZMMWORD PTR [rcx+0xc0]
  a1ac7e:	62 f1 64 40 59 eb    	vmulps zmm5,zmm19,zmm3
  a1ac84:	62 f2 0d 40 bc ea    	vfnmadd231ps zmm5,zmm30,zmm2
  a1ac8a:	62 f1 0c 40 59 db    	vmulps zmm3,zmm30,zmm3
  a1ac90:	62 f1 7c 48 10 71 0a 	vmovups zmm6,ZMMWORD PTR [rcx+0x280]
  a1ac97:	62 b2 6d 48 b8 db    	vfmadd231ps zmm3,zmm2,zmm19
  a1ac9d:	62 f1 7c 48 10 51 0b 	vmovups zmm2,ZMMWORD PTR [rcx+0x2c0]
  a1aca4:	62 f1 6c 40 59 fe    	vmulps zmm7,zmm18,zmm6
  a1acaa:	62 f2 15 40 bc fa    	vfnmadd231ps zmm7,zmm29,zmm2
  a1acb0:	62 f1 14 40 59 f6    	vmulps zmm6,zmm29,zmm6
  a1acb6:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a1acbd:	62 b2 6d 48 b8 f2    	vfmadd231ps zmm6,zmm2,zmm18
  a1acc3:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a1acca:	62 51 04 48 59 c8    	vmulps zmm9,zmm15,zmm8
  a1acd0:	62 72 1d 40 bc ca    	vfnmadd231ps zmm9,zmm28,zmm2
  a1acd6:	62 51 1c 40 59 c0    	vmulps zmm8,zmm28,zmm8
  a1acdc:	62 71 7c 48 10 51 0e 	vmovups zmm10,ZMMWORD PTR [rcx+0x380]
  a1ace3:	62 52 6d 48 b8 c7    	vfmadd231ps zmm8,zmm2,zmm15
  a1ace9:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a1acf0:	62 51 0c 48 59 da    	vmulps zmm11,zmm14,zmm10
  a1acf6:	62 72 35 40 bc da    	vfnmadd231ps zmm11,zmm25,zmm2
  a1acfc:	62 51 34 40 59 d2    	vmulps zmm10,zmm25,zmm10
  a1ad02:	62 52 6d 48 b8 d6    	vfmadd231ps zmm10,zmm2,zmm14
  a1ad08:	62 82 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm31
  a1ad0e:	62 82 1d 48 7f c0    	vpermt2ps zmm16,zmm12,zmm24
  a1ad14:	62 b1 74 40 58 d4    	vaddps zmm2,zmm17,zmm20
  a1ad1a:	62 31 74 40 5c e4    	vsubps zmm12,zmm17,zmm20
  a1ad20:	62 71 7c 48 58 e9    	vaddps zmm13,zmm0,zmm1
  a1ad26:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a1ad2c:	62 f1 54 48 58 cf    	vaddps zmm1,zmm5,zmm7
  a1ad32:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a1ad38:	62 f1 64 48 58 fe    	vaddps zmm7,zmm3,zmm6
  a1ad3e:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a1ad44:	62 d1 3c 48 58 f2    	vaddps zmm6,zmm8,zmm10
  a1ad4a:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a1ad50:	62 51 34 48 58 d3    	vaddps zmm10,zmm9,zmm11
  a1ad56:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a1ad5c:	62 31 54 40 58 d8    	vaddps zmm11,zmm21,zmm16
  a1ad62:	62 31 7c 40 5c f5    	vsubps zmm14,zmm16,zmm21
  a1ad68:	62 71 2c 40 58 fc    	vaddps zmm15,zmm26,zmm4
  a1ad6e:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a1ad74:	62 e1 54 48 58 c3    	vaddps zmm16,zmm5,zmm3
  a1ad7a:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a1ad80:	62 d1 3c 48 5c e9    	vsubps zmm5,zmm8,zmm9
  a1ad86:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a1ad8c:	62 51 6c 48 58 cf    	vaddps zmm9,zmm2,zmm15
  a1ad92:	62 d1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm15
  a1ad98:	62 71 44 48 58 fe    	vaddps zmm15,zmm7,zmm6
  a1ad9e:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a1ada4:	62 d1 14 48 58 fb    	vaddps zmm7,zmm13,zmm11
  a1adaa:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a1adb0:	62 51 74 48 58 ea    	vaddps zmm13,zmm1,zmm10
  a1adb6:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a1adbc:	62 71 1c 48 58 d0    	vaddps zmm10,zmm12,zmm0
  a1adc2:	62 e2 7d 48 18 0d d0 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff65a5d0]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1adc9:	a5 65 ff 
  a1adcc:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a1add2:	62 b1 54 48 59 e9    	vmulps zmm5,zmm5,zmm17
  a1add8:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a1adde:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a1ade4:	62 f1 1c 48 5c c0    	vsubps zmm0,zmm12,zmm0
  a1adea:	62 51 64 48 5c e0    	vsubps zmm12,zmm3,zmm8
  a1adf0:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a1adf6:	62 51 5c 48 58 c6    	vaddps zmm8,zmm4,zmm14
  a1adfc:	62 f1 0c 48 5c e4    	vsubps zmm4,zmm14,zmm4
  a1ae02:	62 71 7c 40 58 f5    	vaddps zmm14,zmm16,zmm5
  a1ae08:	62 b1 54 48 5c e8    	vsubps zmm5,zmm5,zmm16
  a1ae0e:	62 c1 2c 48 58 c6    	vaddps zmm16,zmm10,zmm14
  a1ae14:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a1ae1a:	62 51 3c 48 58 f4    	vaddps zmm14,zmm8,zmm12
  a1ae20:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a1ae26:	62 71 6c 48 58 e6    	vaddps zmm12,zmm2,zmm6
  a1ae2c:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a1ae32:	62 f1 24 48 58 f1    	vaddps zmm6,zmm11,zmm1
  a1ae38:	62 f1 24 48 5c c9    	vsubps zmm1,zmm11,zmm1
  a1ae3e:	62 71 7c 48 58 db    	vaddps zmm11,zmm0,zmm3
  a1ae44:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a1ae4a:	62 f1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm5
  a1ae50:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a1ae56:	62 d1 44 48 5c ef    	vsubps zmm5,zmm7,zmm15
  a1ae5c:	62 d1 44 48 58 ff    	vaddps zmm7,zmm7,zmm15
  a1ae62:	62 51 34 48 5c fd    	vsubps zmm15,zmm9,zmm13
  a1ae68:	62 51 34 48 58 cd    	vaddps zmm9,zmm9,zmm13
  a1ae6e:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a1ae74:	62 e1 7c 28 28 0d c2 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff65bdc2]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a1ae7b:	bd 65 ff 
  a1ae7e:	62 52 75 40 7f e9    	vpermt2ps zmm13,zmm17,zmm9
  a1ae84:	62 e1 7c 48 28 15 b2 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff674bb2]        # 8fa40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cef0>
  a1ae8b:	4b 67 ff 
  a1ae8e:	62 d2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm9
  a1ae94:	62 f1 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm7
  a1ae9b:	c5 7c 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  a1aea1:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a1aea7:	62 b2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm16
  a1aead:	62 32 6d 40 7f f0    	vpermt2ps zmm14,zmm18,zmm16
  a1aeb3:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm14
  a1aeba:	60 00 00 00 
  a1aebe:	c5 fc 11 bc 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm7
  a1aec5:	00 00 
  a1aec7:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a1aecd:	62 d2 75 40 7f fc    	vpermt2ps zmm7,zmm17,zmm12
  a1aed3:	62 d2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm12
  a1aed9:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm6
  a1aee0:	03 
  a1aee1:	c5 fc 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm7
  a1aee8:	00 00 
  a1aeea:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a1aef0:	62 d2 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm11
  a1aef6:	62 d2 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm11
  a1aefc:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm3
  a1af03:	20 01 00 00 
  a1af07:	c5 fc 11 b4 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm6
  a1af0e:	00 00 
  a1af10:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a1af16:	62 d2 75 40 7f df    	vpermt2ps zmm3,zmm17,zmm15
  a1af1c:	62 d2 6d 40 7f ef    	vpermt2ps zmm5,zmm18,zmm15
  a1af22:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm5
  a1af29:	06 
  a1af2a:	c5 fc 11 9c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm3
  a1af31:	00 00 
  a1af33:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a1af39:	62 d2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm10
  a1af3f:	62 52 6d 40 7f c2    	vpermt2ps zmm8,zmm18,zmm10
  a1af45:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm8
  a1af4c:	e0 01 00 00 
  a1af50:	c5 fc 11 9c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm3
  a1af57:	00 00 
  a1af59:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a1af5f:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a1af65:	62 f2 6d 40 7f ca    	vpermt2ps zmm1,zmm18,zmm2
  a1af6b:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a1af72:	09 
  a1af73:	c5 fc 11 9c 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm3
  a1af7a:	00 00 
  a1af7c:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a1af82:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a1af88:	62 f2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm0
  a1af8e:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm4
  a1af95:	a0 02 00 00 
  a1af99:	c5 fc 11 8c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm1
  a1afa0:	00 00 
  a1afa2:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a1afa9:	48 39 d0             	cmp    rax,rdx
  a1afac:	0f 85 2e f6 ff ff    	jne    a1a5e0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a1afb2:	48 81 c4 88 00 00 00 	add    rsp,0x88
  a1afb9:	c5 f8 77             	vzeroupper
  a1afbc:	c3                   	ret
