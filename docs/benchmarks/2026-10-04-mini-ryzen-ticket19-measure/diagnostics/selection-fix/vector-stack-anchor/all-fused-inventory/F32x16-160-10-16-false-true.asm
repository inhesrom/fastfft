
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0e5c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0e5c0:	48 81 ec 88 09 00 00 	sub    rsp,0x988
  a0e5c7:	48 c1 e2 08          	shl    rdx,0x8
  a0e5cb:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a0e5cf:	31 d2                	xor    edx,edx
  a0e5d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a0e5d8:	0f 1f 84 00 00 00 00 
  a0e5df:	00 
  a0e5e0:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a0e5e7:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x40]
  a0e5ee:	01 
  a0e5ef:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a0e5f6:	01 
  a0e5f7:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x80]
  a0e5fe:	02 
  a0e5ff:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a0e606:	03 
  a0e607:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a0e60d:	62 f1 7c 48 28 05 a9 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6807a9]        # 8edc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c270>
  a0e614:	07 68 ff 
  a0e617:	62 e2 7d 48 7f e2    	vpermt2ps zmm20,zmm0,zmm2
  a0e61d:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x100]
  a0e624:	04 
  a0e625:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  a0e62c:	05 
  a0e62d:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a0e633:	62 b2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm18
  a0e639:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0e640:	05 
  a0e641:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x400]
  a0e648:	10 
  a0e649:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x440]
  a0e650:	11 
  a0e651:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a0e657:	62 92 7d 48 7f d0    	vpermt2ps zmm2,zmm0,zmm24
  a0e65d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a0e664:	07 
  a0e665:	62 e1 74 48 58 fa    	vaddps zmm23,zmm1,zmm2
  a0e66b:	62 b1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm23
  a0e671:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x200]
  a0e678:	08 
  a0e679:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  a0e680:	09 
  a0e681:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a0e687:	62 d2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm14
  a0e68d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a0e694:	04 
  a0e695:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x300]
  a0e69c:	0c 
  a0e69d:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x340]
  a0e6a4:	0d 
  a0e6a5:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a0e6ab:	62 92 7d 48 7f fc    	vpermt2ps zmm7,zmm0,zmm28
  a0e6b1:	62 61 6c 48 58 cf    	vaddps zmm25,zmm2,zmm7
  a0e6b7:	62 11 74 48 58 c9    	vaddps zmm9,zmm1,zmm25
  a0e6bd:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x280]
  a0e6c4:	0a 
  a0e6c5:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a0e6cc:	0b 
  a0e6cd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a0e6d4:	0a 
  a0e6d5:	62 c1 7c 48 28 f4    	vmovaps zmm22,zmm12
  a0e6db:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0e6e1:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x380]
  a0e6e8:	0e 
  a0e6e9:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a0e6f0:	0f 
  a0e6f1:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a0e6f7:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a0e6fd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a0e704:	0b 
  a0e705:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x180]
  a0e70c:	06 
  a0e70d:	62 61 7c 48 10 74 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a0e714:	07 
  a0e715:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a0e71b:	62 92 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm30
  a0e721:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm2
  a0e728:	0c 
  a0e729:	62 61 74 48 58 d2    	vaddps zmm26,zmm1,zmm2
  a0e72f:	62 01 4c 40 58 fa    	vaddps zmm31,zmm22,zmm26
  a0e735:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x480]
  a0e73c:	12 
  a0e73d:	62 f1 7c 48 28 25 b9 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6806b9]        # 8ee00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c2b0>
  a0e744:	06 68 ff 
  a0e747:	62 d2 5d 48 7f f6    	vpermt2ps zmm6,zmm4,zmm14
  a0e74d:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a0e754:	13 
  a0e755:	62 12 5d 48 7f c4    	vpermt2ps zmm8,zmm4,zmm28
  a0e75b:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a0e761:	62 42 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm14
  a0e767:	62 32 5d 48 7f d2    	vpermt2ps zmm10,zmm4,zmm18
  a0e76d:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a0e773:	62 82 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm27
  a0e779:	62 12 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm24
  a0e77f:	62 21 1c 40 58 c2    	vaddps zmm24,zmm28,zmm18
  a0e785:	62 01 04 40 58 f8    	vaddps zmm31,zmm31,zmm24
  a0e78b:	62 c2 5d 48 7f de    	vpermt2ps zmm19,zmm4,zmm14
  a0e791:	62 51 4c 48 5c f0    	vsubps zmm14,zmm6,zmm8
  a0e797:	62 92 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm27
  a0e79d:	62 41 2c 48 5c db    	vsubps zmm27,zmm10,zmm11
  a0e7a3:	62 82 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm29
  a0e7a9:	62 f2 7d 48 18 15 a5 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff666fa5]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0e7b0:	6f 66 ff 
  a0e7b3:	62 61 24 40 59 ea    	vmulps zmm29,zmm27,zmm2
  a0e7b9:	62 f2 7d 48 18 0d dd 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff666bdd]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0e7c0:	6b 66 ff 
  a0e7c3:	62 62 0d 48 bc e9    	vfnmadd231ps zmm29,zmm14,zmm1
  a0e7c9:	62 82 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm30
  a0e7cf:	62 e2 7d 48 18 2d 6b 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff666e6b]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0e7d6:	6e 66 ff 
  a0e7d9:	62 21 7c 48 28 f5    	vmovaps zmm30,zmm21
  a0e7df:	62 22 45 40 ac f4    	vfnmadd213ps zmm30,zmm23,zmm20
  a0e7e5:	62 72 7d 48 18 3d f9 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff666ef9]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0e7ec:	6e 66 ff 
  a0e7ef:	62 42 35 40 b8 f7    	vfmadd231ps zmm30,zmm25,zmm15
  a0e7f5:	62 71 0c 48 59 f2    	vmulps zmm14,zmm14,zmm2
  a0e7fb:	62 12 75 48 b8 f3    	vfmadd231ps zmm14,zmm1,zmm27
  a0e801:	62 61 64 40 5c dd    	vsubps zmm27,zmm19,zmm5
  a0e807:	62 a2 05 48 b8 e7    	vfmadd231ps zmm20,zmm15,zmm23
  a0e80d:	62 a1 7c 40 5c f9    	vsubps zmm23,zmm16,zmm17
  a0e813:	62 82 55 40 bc e1    	vfnmadd231ps zmm20,zmm21,zmm25
  a0e819:	62 61 44 40 59 ca    	vmulps zmm25,zmm23,zmm2
  a0e81f:	62 62 25 40 bc c9    	vfnmadd231ps zmm25,zmm27,zmm1
  a0e825:	62 61 24 40 59 da    	vmulps zmm27,zmm27,zmm2
  a0e82b:	62 22 75 48 b8 df    	vfmadd231ps zmm27,zmm1,zmm23
  a0e831:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a0e837:	62 a2 2d 40 ac fe    	vfnmadd213ps zmm23,zmm26,zmm22
  a0e83d:	62 82 05 48 b8 f2    	vfmadd231ps zmm22,zmm15,zmm26
  a0e843:	62 91 34 48 58 c7    	vaddps zmm0,zmm9,zmm31
  a0e849:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a0e850:	62 c2 3d 40 b8 ff    	vfmadd231ps zmm23,zmm24,zmm15
  a0e856:	62 82 55 40 bc f0    	vfnmadd231ps zmm22,zmm21,zmm24
  a0e85c:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a0e862:	62 01 0c 40 5c f5    	vsubps zmm30,zmm30,zmm29
  a0e868:	62 21 34 40 58 d7    	vaddps zmm26,zmm25,zmm23
  a0e86e:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a0e874:	62 21 0c 48 58 cc    	vaddps zmm25,zmm14,zmm20
  a0e87a:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a0e880:	62 a1 24 40 58 e6    	vaddps zmm20,zmm27,zmm22
  a0e886:	62 81 4c 40 5c f3    	vsubps zmm22,zmm22,zmm27
  a0e88c:	62 b1 0c 48 58 d6    	vaddps zmm2,zmm14,zmm22
  a0e892:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a0e899:	03 
  a0e89a:	62 21 0c 48 5c de    	vsubps zmm27,zmm14,zmm22
  a0e8a0:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm27
  a0e8a7:	ff 
  a0e8a8:	62 a1 34 40 58 f4    	vaddps zmm22,zmm25,zmm20
  a0e8ae:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a0e8b5:	fe 
  a0e8b6:	62 b1 34 40 5c dc    	vsubps zmm3,zmm25,zmm20
  a0e8bc:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a0e8c3:	08 
  a0e8c4:	62 81 3c 40 58 e2    	vaddps zmm20,zmm24,zmm26
  a0e8ca:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm20
  a0e8d1:	23 
  a0e8d2:	62 91 34 48 5c cf    	vsubps zmm1,zmm9,zmm31
  a0e8d8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0e8df:	02 
  a0e8e0:	62 71 7c 48 28 35 96 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6b8696]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0e8e7:	86 6b ff 
  a0e8ea:	62 b2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm20
  a0e8f0:	62 01 3c 40 5c c2    	vsubps zmm24,zmm24,zmm26
  a0e8f6:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm24
  a0e8fd:	06 
  a0e8fe:	62 21 0c 40 58 ef    	vaddps zmm29,zmm30,zmm23
  a0e904:	62 21 0c 40 5c ff    	vsubps zmm31,zmm30,zmm23
  a0e90a:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a0e910:	62 a1 4c 00 57 f6    	vxorps xmm22,xmm22,xmm22
  a0e916:	62 a2 0d 48 7f e6    	vpermt2ps zmm20,zmm14,zmm22
  a0e91c:	62 21 7c 48 28 cc    	vmovaps zmm25,zmm20
  a0e922:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm20
  a0e929:	14 
  a0e92a:	62 72 5d 48 7f 6c 24 	vpermt2ps zmm13,zmm4,ZMMWORD PTR [rsp+0x40]
  a0e931:	01 
  a0e932:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0e939:	01 
  a0e93a:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a0e940:	62 51 2c 48 58 cb    	vaddps zmm9,zmm10,zmm11
  a0e946:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a0e94c:	62 32 0d 48 7f de    	vpermt2ps zmm11,zmm14,zmm22
  a0e952:	62 51 4c 48 58 d0    	vaddps zmm10,zmm6,zmm8
  a0e958:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a0e95e:	62 a2 0d 48 7f fe    	vpermt2ps zmm23,zmm14,zmm22
  a0e964:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm23
  a0e96b:	13 
  a0e96c:	62 72 5d 48 7f 64 24 	vpermt2ps zmm12,zmm4,ZMMWORD PTR [rsp+0x280]
  a0e973:	0a 
  a0e974:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm11
  a0e97b:	09 
  a0e97c:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a0e982:	62 31 7c 40 58 d9    	vaddps zmm11,zmm16,zmm17
  a0e988:	62 62 0d 48 7f db    	vpermt2ps zmm27,zmm14,zmm3
  a0e98e:	62 f1 64 40 58 e5    	vaddps zmm4,zmm19,zmm5
  a0e994:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a0e99a:	62 a2 0d 48 7f ce    	vpermt2ps zmm17,zmm14,zmm22
  a0e9a0:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm17
  a0e9a7:	12 
  a0e9a8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a0e9af:	04 
  a0e9b0:	62 f1 7c 48 5c f7    	vsubps zmm6,zmm0,zmm7
  a0e9b6:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm27
  a0e9bd:	22 
  a0e9be:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a0e9c5:	05 
  a0e9c6:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a0e9cd:	07 
  a0e9ce:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a0e9d4:	62 b2 0d 48 7f d6    	vpermt2ps zmm2,zmm14,zmm22
  a0e9da:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a0e9e0:	62 31 1c 40 5c c2    	vsubps zmm8,zmm28,zmm18
  a0e9e6:	62 d1 14 48 58 d1    	vaddps zmm2,zmm13,zmm9
  a0e9ec:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a0e9f2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a0e9f9:	0b 
  a0e9fa:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x300]
  a0ea01:	0c 
  a0ea02:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a0ea08:	62 d2 35 48 ac fd    	vfnmadd213ps zmm7,zmm9,zmm13
  a0ea0e:	62 52 05 48 b8 e9    	vfmadd231ps zmm13,zmm15,zmm9
  a0ea14:	62 51 1c 48 58 cb    	vaddps zmm9,zmm12,zmm11
  a0ea1a:	62 d2 2d 48 b8 ff    	vfmadd231ps zmm7,zmm10,zmm15
  a0ea20:	62 52 55 40 bc ea    	vfnmadd231ps zmm13,zmm21,zmm10
  a0ea26:	62 e2 7d 48 18 05 28 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff666d28]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0ea2d:	6d 66 ff 
  a0ea30:	62 31 64 48 59 d0    	vmulps zmm10,zmm3,zmm16
  a0ea36:	62 f2 7d 48 18 0d 60 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff666960]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0ea3d:	69 66 ff 
  a0ea40:	62 72 4d 48 bc d1    	vfnmadd231ps zmm10,zmm6,zmm1
  a0ea46:	62 b1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm16
  a0ea4c:	62 f2 75 48 b8 f3    	vfmadd231ps zmm6,zmm1,zmm3
  a0ea52:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a0ea58:	62 d2 25 48 ac dc    	vfnmadd213ps zmm3,zmm11,zmm12
  a0ea5e:	62 52 05 48 b8 e3    	vfmadd231ps zmm12,zmm15,zmm11
  a0ea64:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a0ea6a:	62 b2 0d 48 7f c6    	vpermt2ps zmm0,zmm14,zmm22
  a0ea70:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a0ea76:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a0ea7d:	11 
  a0ea7e:	62 71 34 48 58 cc    	vaddps zmm9,zmm9,zmm4
  a0ea84:	62 d2 5d 48 b8 df    	vfmadd231ps zmm3,zmm4,zmm15
  a0ea8a:	62 72 55 40 bc e4    	vfnmadd231ps zmm12,zmm21,zmm4
  a0ea90:	62 b1 54 48 59 e0    	vmulps zmm4,zmm5,zmm16
  a0ea96:	62 f2 3d 48 bc e1    	vfnmadd231ps zmm4,zmm8,zmm1
  a0ea9c:	62 31 3c 48 59 c0    	vmulps zmm8,zmm8,zmm16
  a0eaa2:	62 72 75 48 b8 c5    	vfmadd231ps zmm8,zmm1,zmm5
  a0eaa8:	62 d1 44 48 5c ea    	vsubps zmm5,zmm7,zmm10
  a0eaae:	62 d1 44 48 58 fa    	vaddps zmm7,zmm7,zmm10
  a0eab4:	62 71 64 48 5c dc    	vsubps zmm11,zmm3,zmm4
  a0eaba:	62 f1 64 48 58 e4    	vaddps zmm4,zmm3,zmm4
  a0eac0:	62 f1 14 48 5c de    	vsubps zmm3,zmm13,zmm6
  a0eac6:	62 f1 14 48 58 c6    	vaddps zmm0,zmm13,zmm6
  a0eacc:	62 d1 1c 48 5c f0    	vsubps zmm6,zmm12,zmm8
  a0ead2:	62 d1 1c 48 58 c8    	vaddps zmm1,zmm12,zmm8
  a0ead8:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a0eade:	62 e1 7c 48 5c c1    	vsubps zmm16,zmm0,zmm1
  a0eae4:	62 e1 64 48 58 d6    	vaddps zmm18,zmm3,zmm6
  a0eaea:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a0eaf0:	62 51 6c 48 58 d1    	vaddps zmm10,zmm2,zmm9
  a0eaf6:	62 41 6c 48 5c e1    	vsubps zmm28,zmm2,zmm9
  a0eafc:	62 d1 54 48 58 d3    	vaddps zmm2,zmm5,zmm11
  a0eb02:	62 41 54 48 5c c3    	vsubps zmm24,zmm5,zmm11
  a0eb08:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a0eb0e:	62 71 44 48 5c fc    	vsubps zmm15,zmm7,zmm4
  a0eb14:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a0eb1a:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm19
  a0eb21:	15 
  a0eb22:	62 f1 7c 48 28 2d 14 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b8414]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0eb29:	84 6b ff 
  a0eb2c:	62 82 55 48 7f e1    	vpermt2ps zmm20,zmm5,zmm25
  a0eb32:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm20
  a0eb39:	18 
  a0eb3a:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a0eb40:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a0eb46:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a0eb4d:	19 
  a0eb4e:	62 81 7c 48 28 db    	vmovaps zmm19,zmm27
  a0eb54:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a0eb5a:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm19
  a0eb61:	17 
  a0eb62:	62 92 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm26
  a0eb68:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a0eb6e:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm4
  a0eb75:	16 
  a0eb76:	62 41 7c 48 28 ca    	vmovaps zmm25,zmm10
  a0eb7c:	62 72 0d 48 7f d2    	vpermt2ps zmm10,zmm14,zmm2
  a0eb82:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a0eb88:	62 a2 0d 48 7f d6    	vpermt2ps zmm18,zmm14,zmm22
  a0eb8e:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a0eb94:	62 b2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm18
  a0eb9a:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a0eba0:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm4
  a0eba7:	1d 
  a0eba8:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a0ebae:	62 32 0d 48 7f ce    	vpermt2ps zmm9,zmm14,zmm22
  a0ebb4:	62 41 7c 48 28 d0    	vmovaps zmm26,zmm8
  a0ebba:	62 32 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm22
  a0ebc0:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm8
  a0ebc7:	10 
  a0ebc8:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a0ebce:	62 d2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm8
  a0ebd4:	62 e1 7c 48 28 fc    	vmovaps zmm23,zmm4
  a0ebda:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm4
  a0ebe1:	1c 
  a0ebe2:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a0ebe8:	62 e2 0d 48 7f c3    	vpermt2ps zmm16,zmm14,zmm3
  a0ebee:	62 11 7c 48 28 ec    	vmovaps zmm13,zmm28
  a0ebf4:	62 22 0d 48 7f e6    	vpermt2ps zmm28,zmm14,zmm22
  a0ebfa:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a0ec00:	62 92 55 48 7f e4    	vpermt2ps zmm4,zmm5,zmm28
  a0ec06:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a0ec0c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm4
  a0ec13:	1b 
  a0ec14:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a0ec1a:	62 22 0d 48 7f c6    	vpermt2ps zmm24,zmm14,zmm22
  a0ec20:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a0ec26:	62 32 0d 48 7f fe    	vpermt2ps zmm15,zmm14,zmm22
  a0ec2c:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a0ec32:	62 d2 55 48 7f f7    	vpermt2ps zmm6,zmm5,zmm15
  a0ec38:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a0ec3e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm6
  a0ec45:	1a 
  a0ec46:	62 b1 d5 40 15 f7    	vunpckhpd zmm6,zmm21,zmm23
  a0ec4c:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm6
  a0ec53:	0c 
  a0ec54:	62 51 a5 40 15 f6    	vunpckhpd zmm14,zmm27,zmm14
  a0ec5a:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm14
  a0ec61:	0b 
  a0ec62:	62 61 7c 48 28 35 94 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6b8194]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0ec69:	81 6b ff 
  a0ec6c:	62 d2 0d 40 7f f6    	vpermt2ps zmm6,zmm30,zmm14
  a0ec72:	62 71 dd 40 15 f0    	vunpckhpd zmm14,zmm20,zmm0
  a0ec78:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm14
  a0ec7f:	04 
  a0ec80:	62 b1 e5 40 15 c1    	vunpckhpd zmm0,zmm19,zmm17
  a0ec86:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a0ec8d:	0a 
  a0ec8e:	62 72 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm0
  a0ec94:	62 e1 7c 48 10 59 0d 	vmovups zmm19,ZMMWORD PTR [rcx+0x340]
  a0ec9b:	62 e1 7c 48 10 61 0c 	vmovups zmm20,ZMMWORD PTR [rcx+0x300]
  a0eca2:	62 b1 0c 48 59 c4    	vmulps zmm0,zmm14,zmm20
  a0eca8:	62 b2 4d 48 b8 c3    	vfmadd231ps zmm0,zmm6,zmm19
  a0ecae:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a0ecb5:	07 
  a0ecb6:	62 b1 4c 48 59 c4    	vmulps zmm0,zmm6,zmm20
  a0ecbc:	62 d2 65 40 bc c6    	vfnmadd231ps zmm0,zmm19,zmm14
  a0ecc2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0ecc9:	05 
  a0ecca:	62 f1 7c 48 28 05 ec 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b82ec]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0ecd1:	82 6b ff 
  a0ecd4:	62 62 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm2
  a0ecda:	62 72 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm3
  a0ece0:	62 f1 7c 48 10 34 24 	vmovups zmm6,ZMMWORD PTR [rsp]
  a0ece7:	62 f2 7d 48 7f 74 24 	vpermt2ps zmm6,zmm0,ZMMWORD PTR [rsp+0x8c0]
  a0ecee:	23 
  a0ecef:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x40]
  a0ecf6:	ff 
  a0ecf7:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x200]
  a0ecfe:	08 
  a0ecff:	62 b2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm22
  a0ed05:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a0ed0c:	0d 
  a0ed0d:	62 32 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm22
  a0ed13:	62 22 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm22
  a0ed19:	62 32 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm22
  a0ed1f:	62 b2 7d 48 7f e6    	vpermt2ps zmm4,zmm0,zmm22
  a0ed25:	62 b2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm22
  a0ed2b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a0ed32:	fe 
  a0ed33:	62 b2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm22
  a0ed39:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0ed40:	fe 
  a0ed41:	62 22 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm22
  a0ed47:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0xc0]
  a0ed4e:	03 
  a0ed4f:	62 32 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm22
  a0ed55:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a0ed5c:	03 
  a0ed5d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a0ed64:	02 
  a0ed65:	62 b2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm22
  a0ed6b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a0ed72:	02 
  a0ed73:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a0ed7a:	06 
  a0ed7b:	62 a2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm22
  a0ed81:	62 81 7c 48 28 ff    	vmovaps zmm23,zmm31
  a0ed87:	62 a2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm22
  a0ed8d:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm23
  a0ed94:	0f 
  a0ed95:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a0ed9b:	62 61 7c 48 28 fe    	vmovaps zmm31,zmm6
  a0eda1:	62 f2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm2
  a0eda7:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a0edad:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a0edb4:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a0edba:	62 42 55 48 7f eb    	vpermt2ps zmm29,zmm5,zmm11
  a0edc0:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm29
  a0edc7:	0e 
  a0edc8:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a0edce:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a0edd4:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a0edda:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a0ede0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0ede7:	ff 
  a0ede8:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a0edee:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a0edf4:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a0edfa:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a0ee00:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a0ee07:	06 
  a0ee08:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a0ee0e:	62 62 55 48 7f c9    	vpermt2ps zmm25,zmm5,zmm1
  a0ee14:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a0ee1a:	62 12 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm26
  a0ee20:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a0ee26:	62 52 55 48 7f c5    	vpermt2ps zmm8,zmm5,zmm13
  a0ee2c:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a0ee32:	62 f2 55 48 7f e7    	vpermt2ps zmm4,zmm5,zmm7
  a0ee38:	62 c1 b5 40 15 fc    	vunpckhpd zmm23,zmm25,zmm12
  a0ee3e:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm23
  a0ee45:	21 
  a0ee46:	62 f1 bd 48 15 c4    	vunpckhpd zmm0,zmm8,zmm4
  a0ee4c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm0
  a0ee53:	20 
  a0ee54:	62 e2 0d 40 7f f8    	vpermt2ps zmm23,zmm30,zmm0
  a0ee5a:	62 81 ed 48 15 f5    	vunpckhpd zmm22,zmm2,zmm29
  a0ee60:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm22
  a0ee67:	1f 
  a0ee68:	62 b1 a5 40 15 c1    	vunpckhpd zmm0,zmm27,zmm17
  a0ee6e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a0ee75:	1e 
  a0ee76:	62 e2 0d 40 7f f0    	vpermt2ps zmm22,zmm30,zmm0
  a0ee7c:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a0ee83:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a0ee8a:	62 e1 4c 40 59 c8    	vmulps zmm17,zmm22,zmm0
  a0ee90:	62 e2 45 40 b8 c9    	vfmadd231ps zmm17,zmm23,zmm1
  a0ee96:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm17
  a0ee9d:	23 
  a0ee9e:	62 f1 44 40 59 c0    	vmulps zmm0,zmm23,zmm0
  a0eea4:	62 b2 75 48 bc c6    	vfnmadd231ps zmm0,zmm1,zmm22
  a0eeaa:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a0eeb1:	08 
  a0eeb2:	62 e1 7c 48 28 3d 44 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6b8044]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0eeb9:	80 6b ff 
  a0eebc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a0eec3:	01 
  a0eec4:	62 f2 45 40 7f 44 24 	vpermt2ps zmm0,zmm23,ZMMWORD PTR [rsp+0x500]
  a0eecb:	14 
  a0eecc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a0eed3:	09 
  a0eed4:	62 f2 45 40 7f 54 24 	vpermt2ps zmm2,zmm23,ZMMWORD PTR [rsp+0x4c0]
  a0eedb:	13 
  a0eedc:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x880]
  a0eee3:	22 
  a0eee4:	62 e2 45 40 7f 74 24 	vpermt2ps zmm22,zmm23,ZMMWORD PTR [rsp+0x480]
  a0eeeb:	12 
  a0eeec:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x540]
  a0eef3:	15 
  a0eef4:	62 e2 45 40 7f 4c 24 	vpermt2ps zmm17,zmm23,ZMMWORD PTR [rsp+0x440]
  a0eefb:	11 
  a0eefc:	62 32 45 40 7f d2    	vpermt2ps zmm10,zmm23,zmm18
  a0ef02:	62 72 45 40 7f 4c 24 	vpermt2ps zmm9,zmm23,ZMMWORD PTR [rsp+0x400]
  a0ef09:	10 
  a0ef0a:	62 82 45 40 7f c4    	vpermt2ps zmm16,zmm23,zmm28
  a0ef10:	62 42 45 40 7f c7    	vpermt2ps zmm24,zmm23,zmm15
  a0ef16:	62 e1 fd 48 15 d2    	vunpckhpd zmm18,zmm0,zmm2
  a0ef1c:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a0ef22:	62 b1 cd 40 15 c9    	vunpckhpd zmm1,zmm22,zmm17
  a0ef28:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm1
  a0ef2f:	25 
  a0ef30:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a0ef36:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a0ef3c:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a0ef42:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a0ef48:	62 41 ad 48 15 d9    	vunpckhpd zmm27,zmm10,zmm9
  a0ef4e:	62 11 fd 40 15 f8    	vunpckhpd zmm15,zmm16,zmm24
  a0ef54:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm15
  a0ef5b:	24 
  a0ef5c:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a0ef62:	62 d2 0d 40 7f cf    	vpermt2ps zmm1,zmm30,zmm15
  a0ef68:	62 71 7c 48 10 79 04 	vmovups zmm15,ZMMWORD PTR [rcx+0x100]
  a0ef6f:	62 e1 7c 48 10 71 05 	vmovups zmm22,ZMMWORD PTR [rcx+0x140]
  a0ef76:	62 41 74 48 59 ef    	vmulps zmm29,zmm1,zmm15
  a0ef7c:	62 22 7d 48 bc ee    	vfnmadd231ps zmm29,zmm0,zmm22
  a0ef82:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm29
  a0ef89:	09 
  a0ef8a:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a0ef90:	62 f2 4d 40 b8 c1    	vfmadd231ps zmm0,zmm22,zmm1
  a0ef96:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0ef9d:	01 
  a0ef9e:	62 72 45 40 7f 74 24 	vpermt2ps zmm14,zmm23,ZMMWORD PTR [rsp+0x340]
  a0efa5:	0d 
  a0efa6:	62 12 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm26
  a0efac:	62 d2 45 40 7f f5    	vpermt2ps zmm6,zmm23,zmm13
  a0efb2:	62 f2 45 40 7f df    	vpermt2ps zmm3,zmm23,zmm7
  a0efb8:	62 62 45 40 7f 7c 24 	vpermt2ps zmm31,zmm23,ZMMWORD PTR [rsp-0x80]
  a0efbf:	fe 
  a0efc0:	62 e2 45 40 7f 6c 24 	vpermt2ps zmm21,zmm23,ZMMWORD PTR [rsp+0xc0]
  a0efc7:	03 
  a0efc8:	62 e2 45 40 7f 5c 24 	vpermt2ps zmm19,zmm23,ZMMWORD PTR [rsp+0x80]
  a0efcf:	02 
  a0efd0:	62 e2 45 40 7f 64 24 	vpermt2ps zmm20,zmm23,ZMMWORD PTR [rsp+0x3c0]
  a0efd7:	0f 
  a0efd8:	62 b1 85 40 15 cd    	vunpckhpd zmm1,zmm31,zmm21
  a0efde:	62 b1 e5 40 15 c4    	vunpckhpd zmm0,zmm19,zmm20
  a0efe4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a0efeb:	0f 
  a0efec:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a0eff2:	62 f2 0d 40 7f f8    	vpermt2ps zmm7,zmm30,zmm0
  a0eff8:	62 d1 8d 48 15 c3    	vunpckhpd zmm0,zmm14,zmm11
  a0effe:	62 71 cd 48 15 fb    	vunpckhpd zmm15,zmm6,zmm3
  a0f004:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm15
  a0f00b:	0d 
  a0f00c:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a0f012:	62 52 0d 40 7f ef    	vpermt2ps zmm13,zmm30,zmm15
  a0f018:	62 71 7c 48 10 79 15 	vmovups zmm15,ZMMWORD PTR [rcx+0x540]
  a0f01f:	62 e1 7c 48 10 71 14 	vmovups zmm22,ZMMWORD PTR [rcx+0x500]
  a0f026:	62 a1 14 48 59 fe    	vmulps zmm23,zmm13,zmm22
  a0f02c:	62 c2 45 48 bc ff    	vfnmadd231ps zmm23,zmm7,zmm15
  a0f032:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm23
  a0f039:	22 
  a0f03a:	62 b1 44 48 59 fe    	vmulps zmm7,zmm7,zmm22
  a0f040:	62 d2 05 48 b8 fd    	vfmadd231ps zmm7,zmm15,zmm13
  a0f046:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a0f04d:	03 
  a0f04e:	62 f1 d5 48 14 fa    	vunpcklpd zmm7,zmm5,zmm2
  a0f054:	62 11 f5 40 14 ec    	vunpcklpd zmm13,zmm17,zmm28
  a0f05a:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm13
  a0f061:	14 
  a0f062:	62 d1 ad 48 14 e9    	vunpcklpd zmm5,zmm10,zmm9
  a0f068:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a0f06f:	fe 
  a0f070:	62 81 fd 40 14 c0    	vunpcklpd zmm16,zmm16,zmm24
  a0f076:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm16
  a0f07d:	13 
  a0f07e:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a0f085:	15 
  a0f086:	62 71 7c 48 28 3d b0 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b7db0]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0f08d:	7d 6b ff 
  a0f090:	62 d2 05 48 7f fd    	vpermt2ps zmm7,zmm15,zmm13
  a0f096:	62 b2 05 48 7f e8    	vpermt2ps zmm5,zmm15,zmm16
  a0f09c:	62 71 7c 48 10 51 02 	vmovups zmm10,ZMMWORD PTR [rcx+0x80]
  a0f0a3:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a0f0aa:	62 51 54 48 59 ca    	vmulps zmm9,zmm5,zmm10
  a0f0b0:	62 52 45 48 bc cd    	vfnmadd231ps zmm9,zmm7,zmm13
  a0f0b6:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm9
  a0f0bd:	11 
  a0f0be:	62 d1 44 48 59 fa    	vmulps zmm7,zmm7,zmm10
  a0f0c4:	62 f2 15 48 b8 fd    	vfmadd231ps zmm7,zmm13,zmm5
  a0f0ca:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm7
  a0f0d1:	12 
  a0f0d2:	62 d1 8d 48 14 eb    	vunpcklpd zmm5,zmm14,zmm11
  a0f0d8:	62 61 cd 48 14 eb    	vunpcklpd zmm29,zmm6,zmm3
  a0f0de:	62 b1 85 40 14 d5    	vunpcklpd zmm2,zmm31,zmm21
  a0f0e4:	62 a1 e5 40 14 c4    	vunpcklpd zmm16,zmm19,zmm20
  a0f0ea:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a0f0f0:	62 b2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm16
  a0f0f6:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a0f0fc:	62 92 05 48 7f ed    	vpermt2ps zmm5,zmm15,zmm29
  a0f102:	62 f1 7c 48 10 59 13 	vmovups zmm3,ZMMWORD PTR [rcx+0x4c0]
  a0f109:	62 f1 7c 48 10 71 12 	vmovups zmm6,ZMMWORD PTR [rcx+0x480]
  a0f110:	62 f1 54 48 59 fe    	vmulps zmm7,zmm5,zmm6
  a0f116:	62 f2 6d 48 bc fb    	vfnmadd231ps zmm7,zmm2,zmm3
  a0f11c:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a0f123:	02 
  a0f124:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a0f12a:	62 f2 65 48 b8 d5    	vfmadd231ps zmm2,zmm3,zmm5
  a0f130:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a0f137:	10 
  a0f138:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a0f13f:	62 f1 ed 48 14 5c 24 	vunpcklpd zmm3,zmm2,ZMMWORD PTR [rsp+0x380]
  a0f146:	0e 
  a0f147:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a0f14e:	ff 
  a0f14f:	62 e1 ed 48 14 4c 24 	vunpcklpd zmm17,zmm2,ZMMWORD PTR [rsp+0x180]
  a0f156:	06 
  a0f157:	62 d1 b5 40 14 ec    	vunpcklpd zmm5,zmm25,zmm12
  a0f15d:	62 f1 bd 48 14 d4    	vunpcklpd zmm2,zmm8,zmm4
  a0f163:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a0f169:	62 f2 05 48 7f ea    	vpermt2ps zmm5,zmm15,zmm2
  a0f16f:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a0f175:	62 b2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm17
  a0f17b:	62 f1 7c 48 10 61 1b 	vmovups zmm4,ZMMWORD PTR [rcx+0x6c0]
  a0f182:	62 f1 7c 48 10 79 1a 	vmovups zmm7,ZMMWORD PTR [rcx+0x680]
  a0f189:	62 71 64 48 59 c7    	vmulps zmm8,zmm3,zmm7
  a0f18f:	62 72 55 48 b8 c4    	vfmadd231ps zmm8,zmm5,zmm4
  a0f195:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a0f19c:	0e 
  a0f19d:	62 f1 54 48 59 ef    	vmulps zmm5,zmm5,zmm7
  a0f1a3:	62 f2 5d 48 bc eb    	vfnmadd231ps zmm5,zmm4,zmm3
  a0f1a9:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a0f1b0:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x600]
  a0f1b7:	18 
  a0f1b8:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x640]
  a0f1bf:	19 
  a0f1c0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x5c0]
  a0f1c7:	17 
  a0f1c8:	62 71 dd 48 14 5c 24 	vunpcklpd zmm11,zmm4,ZMMWORD PTR [rsp+0x580]
  a0f1cf:	16 
  a0f1d0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x740]
  a0f1d7:	1d 
  a0f1d8:	62 f1 dd 48 14 64 24 	vunpcklpd zmm4,zmm4,ZMMWORD PTR [rsp+0x700]
  a0f1df:	1c 
  a0f1e0:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x6c0]
  a0f1e7:	1b 
  a0f1e8:	62 71 d5 48 14 6c 24 	vunpcklpd zmm13,zmm5,ZMMWORD PTR [rsp+0x680]
  a0f1ef:	1a 
  a0f1f0:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a0f1f6:	62 d2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm13
  a0f1fc:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a0f202:	62 d2 05 48 7f db    	vpermt2ps zmm3,zmm15,zmm11
  a0f208:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a0f20f:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a0f216:	62 e1 64 48 59 df    	vmulps zmm19,zmm3,zmm7
  a0f21c:	62 e2 5d 48 b8 dd    	vfmadd231ps zmm19,zmm4,zmm5
  a0f222:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a0f228:	62 f2 55 48 bc e3    	vfnmadd231ps zmm4,zmm5,zmm3
  a0f22e:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a0f235:	ff 
  a0f236:	62 e2 05 48 7f 54 24 	vpermt2ps zmm18,zmm15,ZMMWORD PTR [rsp+0x940]
  a0f23d:	25 
  a0f23e:	62 62 05 48 7f 5c 24 	vpermt2ps zmm27,zmm15,ZMMWORD PTR [rsp+0x900]
  a0f245:	24 
  a0f246:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a0f24d:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  a0f254:	62 f1 24 40 59 ec    	vmulps zmm5,zmm27,zmm4
  a0f25a:	62 f2 6d 40 bc eb    	vfnmadd231ps zmm5,zmm18,zmm3
  a0f260:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm5
  a0f267:	1d 
  a0f268:	62 61 6c 40 59 c4    	vmulps zmm24,zmm18,zmm4
  a0f26e:	62 02 65 48 b8 c3    	vfmadd231ps zmm24,zmm3,zmm27
  a0f274:	62 f2 05 48 7f 4c 24 	vpermt2ps zmm1,zmm15,ZMMWORD PTR [rsp+0x3c0]
  a0f27b:	0f 
  a0f27c:	62 f2 05 48 7f 44 24 	vpermt2ps zmm0,zmm15,ZMMWORD PTR [rsp+0x340]
  a0f283:	0d 
  a0f284:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a0f28b:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a0f292:	62 e1 7c 48 59 ec    	vmulps zmm21,zmm0,zmm4
  a0f298:	62 e2 75 48 bc eb    	vfnmadd231ps zmm21,zmm1,zmm3
  a0f29e:	62 61 74 48 59 e4    	vmulps zmm28,zmm1,zmm4
  a0f2a4:	62 62 65 48 b8 e0    	vfmadd231ps zmm28,zmm3,zmm0
  a0f2aa:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x840]
  a0f2b1:	21 
  a0f2b2:	62 f2 05 48 7f 5c 24 	vpermt2ps zmm3,zmm15,ZMMWORD PTR [rsp+0x800]
  a0f2b9:	20 
  a0f2ba:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x7c0]
  a0f2c1:	1f 
  a0f2c2:	62 f2 05 48 7f 64 24 	vpermt2ps zmm4,zmm15,ZMMWORD PTR [rsp+0x780]
  a0f2c9:	1e 
  a0f2ca:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a0f2d1:	62 f1 7c 48 10 49 1e 	vmovups zmm1,ZMMWORD PTR [rcx+0x780]
  a0f2d8:	62 61 5c 48 59 f9    	vmulps zmm31,zmm4,zmm1
  a0f2de:	62 62 65 48 b8 f8    	vfmadd231ps zmm31,zmm3,zmm0
  a0f2e4:	62 e1 64 48 59 f9    	vmulps zmm23,zmm3,zmm1
  a0f2ea:	62 e2 7d 48 bc fc    	vfnmadd231ps zmm23,zmm0,zmm4
  a0f2f0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a0f2f7:	0c 
  a0f2f8:	62 f2 05 48 7f 4c 24 	vpermt2ps zmm1,zmm15,ZMMWORD PTR [rsp+0x2c0]
  a0f2ff:	0b 
  a0f300:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a0f307:	04 
  a0f308:	62 f2 05 48 7f 64 24 	vpermt2ps zmm4,zmm15,ZMMWORD PTR [rsp+0x280]
  a0f30f:	0a 
  a0f310:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a0f317:	62 f1 7c 48 10 59 0e 	vmovups zmm3,ZMMWORD PTR [rcx+0x380]
  a0f31e:	62 e1 5c 48 59 d3    	vmulps zmm18,zmm4,zmm3
  a0f324:	62 e2 75 48 b8 d0    	vfmadd231ps zmm18,zmm1,zmm0
  a0f32a:	62 e1 74 48 59 f3    	vmulps zmm22,zmm1,zmm3
  a0f330:	62 e2 7d 48 bc f4    	vfnmadd231ps zmm22,zmm0,zmm4
  a0f336:	62 82 0d 40 7f e5    	vpermt2ps zmm20,zmm30,zmm29
  a0f33c:	62 32 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm16
  a0f342:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a0f349:	62 f1 7c 48 10 61 10 	vmovups zmm4,ZMMWORD PTR [rcx+0x400]
  a0f350:	62 f1 0c 48 59 dc    	vmulps zmm3,zmm14,zmm4
  a0f356:	62 f2 5d 40 b8 d8    	vfmadd231ps zmm3,zmm20,zmm0
  a0f35c:	62 e1 5c 40 59 e4    	vmulps zmm20,zmm20,zmm4
  a0f362:	62 c2 7d 48 bc e6    	vfnmadd231ps zmm20,zmm0,zmm14
  a0f368:	62 42 0d 40 7f d3    	vpermt2ps zmm26,zmm30,zmm11
  a0f36e:	62 42 0d 40 7f cd    	vpermt2ps zmm25,zmm30,zmm13
  a0f374:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a0f37b:	62 f1 7c 48 10 61 08 	vmovups zmm4,ZMMWORD PTR [rcx+0x200]
  a0f382:	62 61 34 40 59 dc    	vmulps zmm27,zmm25,zmm4
  a0f388:	62 62 2d 40 bc d8    	vfnmadd231ps zmm27,zmm26,zmm0
  a0f38e:	62 71 2c 40 59 ec    	vmulps zmm13,zmm26,zmm4
  a0f394:	62 12 7d 48 b8 e9    	vfmadd231ps zmm13,zmm0,zmm25
  a0f39a:	62 32 0d 40 7f c9    	vpermt2ps zmm9,zmm30,zmm17
  a0f3a0:	62 f2 0d 40 7f f2    	vpermt2ps zmm6,zmm30,zmm2
  a0f3a6:	62 f1 7c 48 10 51 19 	vmovups zmm2,ZMMWORD PTR [rcx+0x640]
  a0f3ad:	62 f1 7c 48 10 61 18 	vmovups zmm4,ZMMWORD PTR [rcx+0x600]
  a0f3b4:	62 f1 4c 48 59 ec    	vmulps zmm5,zmm6,zmm4
  a0f3ba:	62 f2 35 48 bc ea    	vfnmadd231ps zmm5,zmm9,zmm2
  a0f3c0:	62 71 34 48 59 f4    	vmulps zmm14,zmm9,zmm4
  a0f3c6:	62 72 6d 48 b8 f6    	vfmadd231ps zmm14,zmm2,zmm6
  a0f3cc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a0f3d3:	15 
  a0f3d4:	62 f2 0d 40 7f 44 24 	vpermt2ps zmm0,zmm30,ZMMWORD PTR [rsp+0x500]
  a0f3db:	14 
  a0f3dc:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a0f3e3:	fe 
  a0f3e4:	62 f2 0d 40 7f 54 24 	vpermt2ps zmm2,zmm30,ZMMWORD PTR [rsp+0x4c0]
  a0f3eb:	13 
  a0f3ec:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0f3f3:	fe 
  a0f3f4:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x240]
  a0f3fb:	09 
  a0f3fc:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x880]
  a0f403:	22 
  a0f404:	62 d1 04 48 5c d4    	vsubps zmm2,zmm15,zmm12
  a0f40a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a0f411:	01 
  a0f412:	62 f1 5c 48 5c 64 24 	vsubps zmm4,zmm4,ZMMWORD PTR [rsp+0xc0]
  a0f419:	03 
  a0f41a:	62 f1 6c 48 58 cc    	vaddps zmm1,zmm2,zmm4
  a0f420:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a0f427:	04 
  a0f428:	62 f1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm2
  a0f42e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm1
  a0f435:	1f 
  a0f436:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x8c0]
  a0f43d:	23 
  a0f43e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0f445:	07 
  a0f446:	62 91 74 48 5c d2    	vsubps zmm2,zmm1,zmm26
  a0f44c:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x140]
  a0f453:	05 
  a0f454:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x200]
  a0f45b:	08 
  a0f45c:	62 f1 14 40 5c e7    	vsubps zmm4,zmm29,zmm7
  a0f462:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a0f468:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a0f46f:	0a 
  a0f470:	62 f1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm2
  a0f476:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a0f47d:	1a 
  a0f47e:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x440]
  a0f485:	11 
  a0f486:	62 f1 74 40 5c 4c 24 	vsubps zmm1,zmm17,ZMMWORD PTR [rsp+0x80]
  a0f48d:	02 
  a0f48e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm1
  a0f495:	21 
  a0f496:	62 d1 64 40 5c d0    	vsubps zmm2,zmm19,zmm8
  a0f49c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm2
  a0f4a3:	20 
  a0f4a4:	62 f1 74 48 5c e2    	vsubps zmm4,zmm1,zmm2
  a0f4aa:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x480]
  a0f4b1:	12 
  a0f4b2:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x400]
  a0f4b9:	10 
  a0f4ba:	62 d1 7c 40 5c cb    	vsubps zmm1,zmm16,zmm11
  a0f4c0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a0f4c7:	1c 
  a0f4c8:	62 71 7c 48 10 14 24 	vmovups zmm10,ZMMWORD PTR [rsp]
  a0f4cf:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a0f4d6:	ff 
  a0f4d7:	62 d1 2c 48 5c d0    	vsubps zmm2,zmm10,zmm8
  a0f4dd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm2
  a0f4e4:	1b 
  a0f4e5:	62 f1 74 48 5c d2    	vsubps zmm2,zmm1,zmm2
  a0f4eb:	62 62 7d 48 18 35 0b 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff66620b]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a0f4f2:	62 66 ff 
  a0f4f5:	62 91 6c 48 59 ce    	vmulps zmm1,zmm2,zmm30
  a0f4fb:	62 f2 7d 48 18 35 5f 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66615f]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a0f502:	61 66 ff 
  a0f505:	62 f2 5d 48 b8 ce    	vfmadd231ps zmm1,zmm4,zmm6
  a0f50b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a0f512:	06 
  a0f513:	62 f1 6c 48 59 ce    	vmulps zmm1,zmm2,zmm6
  a0f519:	62 f2 0d 40 bc cc    	vfnmadd231ps zmm1,zmm30,zmm4
  a0f51f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a0f526:	0c 
  a0f527:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a0f52e:	1d 
  a0f52f:	62 b1 74 48 5c d5    	vsubps zmm2,zmm1,zmm21
  a0f535:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm2
  a0f53c:	19 
  a0f53d:	62 91 6c 40 5c e7    	vsubps zmm4,zmm18,zmm31
  a0f543:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm4
  a0f54a:	18 
  a0f54b:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a0f551:	62 91 3c 40 5c d4    	vsubps zmm2,zmm24,zmm28
  a0f557:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm2
  a0f55e:	17 
  a0f55f:	62 b1 44 40 5c e6    	vsubps zmm4,zmm23,zmm22
  a0f565:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm4
  a0f56c:	16 
  a0f56d:	62 61 6c 48 5c cc    	vsubps zmm25,zmm2,zmm4
  a0f573:	62 f1 34 40 59 d6    	vmulps zmm2,zmm25,zmm6
  a0f579:	62 92 35 48 b8 d6    	vfmadd231ps zmm2,zmm9,zmm30
  a0f57f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a0f586:	0b 
  a0f587:	62 f1 34 48 59 e6    	vmulps zmm4,zmm9,zmm6
  a0f58d:	62 92 0d 40 bc e1    	vfnmadd231ps zmm4,zmm30,zmm25
  a0f593:	62 f1 7c 48 5c d3    	vsubps zmm2,zmm0,zmm3
  a0f599:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a0f59f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a0f5a6:	1e 
  a0f5a7:	62 51 14 48 5c ce    	vsubps zmm9,zmm13,zmm14
  a0f5ad:	62 41 14 48 58 ce    	vaddps zmm25,zmm13,zmm14
  a0f5b3:	62 f1 14 40 58 c7    	vaddps zmm0,zmm29,zmm7
  a0f5b9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0f5c0:	05 
  a0f5c1:	62 d1 04 48 58 c4    	vaddps zmm0,zmm15,zmm12
  a0f5c7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a0f5ce:	09 
  a0f5cf:	62 91 3c 40 58 fc    	vaddps zmm7,zmm24,zmm28
  a0f5d5:	62 11 6c 40 58 ff    	vaddps zmm15,zmm18,zmm31
  a0f5db:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm15
  a0f5e2:	08 
  a0f5e3:	62 21 74 48 58 ed    	vaddps zmm29,zmm1,zmm21
  a0f5e9:	62 31 4c 40 58 ef    	vaddps zmm13,zmm22,zmm23
  a0f5ef:	62 e1 74 40 58 74 24 	vaddps zmm22,zmm17,ZMMWORD PTR [rsp+0x80]
  a0f5f6:	02 
  a0f5f7:	62 c1 3c 48 58 fa    	vaddps zmm23,zmm8,zmm10
  a0f5fd:	62 d1 7c 40 58 cb    	vaddps zmm1,zmm16,zmm11
  a0f603:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0f60a:	ff 
  a0f60b:	62 71 64 40 58 74 24 	vaddps zmm14,zmm19,ZMMWORD PTR [rsp+0x380]
  a0f612:	0e 
  a0f613:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a0f61a:	fe 
  a0f61b:	62 31 64 48 5c d4    	vsubps zmm10,zmm3,zmm20
  a0f621:	62 21 64 48 58 e4    	vaddps zmm28,zmm3,zmm20
  a0f627:	62 11 54 48 5c db    	vsubps zmm11,zmm5,zmm27
  a0f62d:	62 71 24 40 58 c5    	vaddps zmm8,zmm27,zmm5
  a0f633:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a0f63a:	03 
  a0f63b:	62 61 7c 48 58 5c 24 	vaddps zmm27,zmm0,ZMMWORD PTR [rsp+0x40]
  a0f642:	01 
  a0f643:	62 71 2c 40 58 64 24 	vaddps zmm12,zmm26,ZMMWORD PTR [rsp+0x1c0]
  a0f64a:	07 
  a0f64b:	62 a1 4c 40 5c e7    	vsubps zmm20,zmm22,zmm23
  a0f651:	62 41 74 48 5c fe    	vsubps zmm31,zmm1,zmm14
  a0f657:	62 91 5c 40 58 c7    	vaddps zmm0,zmm20,zmm31
  a0f65d:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a0f664:	62 b1 04 40 5c c4    	vsubps zmm0,zmm31,zmm20
  a0f66a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a0f671:	02 
  a0f672:	62 c1 44 48 5c e7    	vsubps zmm20,zmm7,zmm15
  a0f678:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a0f67e:	62 d1 14 40 5c c5    	vsubps zmm0,zmm29,zmm13
  a0f684:	62 f1 5c 40 5c c8    	vsubps zmm1,zmm20,zmm0
  a0f68a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a0f691:	fe 
  a0f692:	62 a1 7c 48 58 e4    	vaddps zmm20,zmm0,zmm20
  a0f698:	62 d1 6c 48 5c eb    	vsubps zmm5,zmm2,zmm11
  a0f69e:	62 f1 24 48 58 c2    	vaddps zmm0,zmm11,zmm2
  a0f6a4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a0f6ab:	03 
  a0f6ac:	62 f2 7d 48 18 1d e6 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff665ce6]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a0f6b3:	5c 66 ff 
  a0f6b6:	62 71 64 48 59 5c 24 	vmulps zmm11,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a0f6bd:	1f 
  a0f6be:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp+0x680]
  a0f6c5:	1a 
  a0f6c6:	62 f1 24 48 58 d0    	vaddps zmm2,zmm11,zmm0
  a0f6cc:	62 e1 24 48 5c d0    	vsubps zmm18,zmm11,zmm0
  a0f6d2:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a0f6d9:	18 
  a0f6da:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x640]
  a0f6e1:	19 
  a0f6e2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x580]
  a0f6e9:	16 
  a0f6ea:	62 f1 74 48 58 7c 24 	vaddps zmm7,zmm1,ZMMWORD PTR [rsp+0x5c0]
  a0f6f1:	17 
  a0f6f2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x800]
  a0f6f9:	20 
  a0f6fa:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x840]
  a0f701:	21 
  a0f702:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a0f709:	1b 
  a0f70a:	62 e1 74 48 58 44 24 	vaddps zmm16,zmm1,ZMMWORD PTR [rsp+0x700]
  a0f711:	1c 
  a0f712:	62 c1 2c 48 5c c9    	vsubps zmm17,zmm10,zmm9
  a0f718:	62 d1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm9
  a0f71e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a0f725:	07 
  a0f726:	62 71 64 48 59 54 24 	vmulps zmm10,zmm3,ZMMWORD PTR [rsp+0x280]
  a0f72d:	0a 
  a0f72e:	62 61 64 48 59 44 24 	vmulps zmm24,zmm3,ZMMWORD PTR [rsp+0x100]
  a0f735:	04 
  a0f736:	62 01 2c 48 5c d0    	vsubps zmm26,zmm10,zmm24
  a0f73c:	62 51 3c 40 58 da    	vaddps zmm11,zmm24,zmm10
  a0f742:	62 61 7c 40 59 c6    	vmulps zmm24,zmm16,zmm6
  a0f748:	62 02 05 48 b8 c6    	vfmadd231ps zmm24,zmm15,zmm30
  a0f74e:	62 81 7c 40 59 c6    	vmulps zmm16,zmm16,zmm30
  a0f754:	62 c2 4d 48 bc c7    	vfnmadd231ps zmm16,zmm6,zmm15
  a0f75a:	62 11 44 48 59 fe    	vmulps zmm15,zmm7,zmm30
  a0f760:	62 72 7d 48 b8 fe    	vfmadd231ps zmm15,zmm0,zmm6
  a0f766:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a0f76c:	62 f2 0d 40 bc f8    	vfnmadd231ps zmm7,zmm30,zmm0
  a0f772:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x780]
  a0f779:	1e 
  a0f77a:	62 91 74 48 5c c1    	vsubps zmm0,zmm1,zmm25
  a0f780:	62 e1 34 40 58 e9    	vaddps zmm21,zmm25,zmm1
  a0f786:	62 41 24 40 5c cc    	vsubps zmm25,zmm27,zmm12
  a0f78c:	62 51 24 40 58 e4    	vaddps zmm12,zmm27,zmm12
  a0f792:	62 d1 14 40 58 cd    	vaddps zmm1,zmm29,zmm13
  a0f798:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a0f79f:	04 
  a0f7a0:	62 21 4c 40 58 f7    	vaddps zmm30,zmm22,zmm23
  a0f7a6:	62 c1 1c 40 5c f0    	vsubps zmm22,zmm28,zmm8
  a0f7ac:	62 c1 1c 40 58 d8    	vaddps zmm19,zmm28,zmm8
  a0f7b2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a0f7b9:	05 
  a0f7ba:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a0f7c1:	09 
  a0f7c2:	62 e1 74 48 5c fe    	vsubps zmm23,zmm1,zmm6
  a0f7c8:	62 61 4c 48 58 d9    	vaddps zmm27,zmm6,zmm1
  a0f7ce:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp-0x40]
  a0f7d5:	ff 
  a0f7d6:	62 61 04 40 58 64 24 	vaddps zmm28,zmm31,ZMMWORD PTR [rsp+0x200]
  a0f7dd:	08 
  a0f7de:	62 01 54 48 5c ea    	vsubps zmm29,zmm5,zmm26
  a0f7e4:	62 f1 2c 40 58 cd    	vaddps zmm1,zmm26,zmm5
  a0f7ea:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0f7f1:	ff 
  a0f7f2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a0f7f9:	0c 
  a0f7fa:	62 61 74 48 5c d4    	vsubps zmm26,zmm1,zmm4
  a0f800:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a0f806:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a0f80d:	01 
  a0f80e:	62 71 74 40 5c ea    	vsubps zmm13,zmm17,zmm2
  a0f814:	62 f1 74 40 58 ca    	vaddps zmm1,zmm17,zmm2
  a0f81a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0f821:	05 
  a0f822:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a0f829:	06 
  a0f82a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0f831:	0b 
  a0f832:	62 71 74 48 58 ca    	vaddps zmm9,zmm1,zmm2
  a0f838:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a0f83e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a0f845:	06 
  a0f846:	62 31 7c 48 5c d7    	vsubps zmm10,zmm0,zmm23
  a0f84c:	62 e1 44 40 58 f8    	vaddps zmm23,zmm23,zmm0
  a0f852:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp+0x80]
  a0f859:	02 
  a0f85a:	62 e1 5c 40 59 cb    	vmulps zmm17,zmm20,zmm3
  a0f860:	62 a1 7c 48 58 e1    	vaddps zmm20,zmm0,zmm17
  a0f866:	62 21 7c 48 5c f9    	vsubps zmm31,zmm0,zmm17
  a0f86c:	62 81 4c 40 5c c9    	vsubps zmm17,zmm22,zmm25
  a0f872:	62 81 4c 40 58 f1    	vaddps zmm22,zmm22,zmm25
  a0f878:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp-0x80]
  a0f87f:	fe 
  a0f880:	62 61 64 48 59 0c 24 	vmulps zmm25,zmm3,ZMMWORD PTR [rsp]
  a0f887:	62 91 7c 48 5c e1    	vsubps zmm4,zmm0,zmm25
  a0f88d:	62 61 34 40 58 c8    	vaddps zmm25,zmm25,zmm0
  a0f893:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a0f89a:	03 
  a0f89b:	62 b1 7c 48 5c f2    	vsubps zmm6,zmm0,zmm18
  a0f8a1:	62 e1 6c 40 58 d0    	vaddps zmm18,zmm18,zmm0
  a0f8a7:	62 f1 7c 40 5c ef    	vsubps zmm5,zmm16,zmm7
  a0f8ad:	62 e1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm7
  a0f8b3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a0f8ba:	07 
  a0f8bb:	62 d1 7c 48 5c fb    	vsubps zmm7,zmm0,zmm11
  a0f8c1:	62 51 7c 48 58 db    	vaddps zmm11,zmm0,zmm11
  a0f8c7:	62 91 04 48 5c d0    	vsubps zmm2,zmm15,zmm24
  a0f8cd:	62 51 3c 40 58 ff    	vaddps zmm15,zmm24,zmm15
  a0f8d3:	62 d1 54 40 5c dc    	vsubps zmm3,zmm21,zmm12
  a0f8d9:	62 a1 1c 48 58 ed    	vaddps zmm21,zmm12,zmm21
  a0f8df:	62 11 0c 48 5c e4    	vsubps zmm12,zmm14,zmm28
  a0f8e5:	62 11 0c 48 58 f4    	vaddps zmm14,zmm14,zmm28
  a0f8eb:	62 91 64 40 5c cb    	vsubps zmm1,zmm19,zmm27
  a0f8f1:	62 81 64 40 58 db    	vaddps zmm19,zmm19,zmm27
  a0f8f7:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x100]
  a0f8fe:	04 
  a0f8ff:	62 91 3c 48 5c c6    	vsubps zmm0,zmm8,zmm30
  a0f905:	62 51 0c 40 58 c0    	vaddps zmm8,zmm30,zmm8
  a0f90b:	62 41 14 40 58 c1    	vaddps zmm24,zmm29,zmm9
  a0f911:	62 61 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm24
  a0f918:	62 41 14 40 5c e1    	vsubps zmm28,zmm29,zmm9
  a0f91e:	62 01 14 48 5c c2    	vsubps zmm24,zmm13,zmm26
  a0f924:	62 11 14 48 58 ea    	vaddps zmm13,zmm13,zmm26
  a0f92a:	62 71 2c 48 5c cc    	vsubps zmm9,zmm10,zmm4
  a0f930:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a0f937:	fe 
  a0f938:	62 61 2c 48 58 ec    	vaddps zmm29,zmm10,zmm4
  a0f93e:	62 31 74 40 5c d4    	vsubps zmm10,zmm17,zmm20
  a0f944:	62 a1 74 40 58 cc    	vaddps zmm17,zmm17,zmm20
  a0f94a:	62 61 4c 48 5c f2    	vsubps zmm30,zmm6,zmm2
  a0f950:	62 f1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm2
  a0f956:	62 f1 44 48 5c e5    	vsubps zmm4,zmm7,zmm5
  a0f95c:	62 61 44 48 58 d5    	vaddps zmm26,zmm7,zmm5
  a0f962:	62 61 64 48 5c d8    	vsubps zmm27,zmm3,zmm0
  a0f968:	62 f1 64 48 58 d8    	vaddps zmm3,zmm3,zmm0
  a0f96e:	62 d1 74 48 5c fc    	vsubps zmm7,zmm1,zmm12
  a0f974:	62 d1 74 48 58 c4    	vaddps zmm0,zmm1,zmm12
  a0f97a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a0f981:	ff 
  a0f982:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a0f989:	01 
  a0f98a:	62 e1 74 48 5c e2    	vsubps zmm20,zmm1,zmm2
  a0f990:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a0f996:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a0f99d:	05 
  a0f99e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a0f9a5:	06 
  a0f9a6:	62 71 6c 48 5c cd    	vsubps zmm9,zmm2,zmm5
  a0f9ac:	62 71 6c 48 58 e5    	vaddps zmm12,zmm2,zmm5
  a0f9b2:	62 91 44 40 5c ef    	vsubps zmm5,zmm23,zmm31
  a0f9b8:	62 01 44 40 58 ff    	vaddps zmm31,zmm23,zmm31
  a0f9be:	62 81 4c 40 5c f9    	vsubps zmm23,zmm22,zmm25
  a0f9c4:	62 01 4c 40 58 c9    	vaddps zmm25,zmm22,zmm25
  a0f9ca:	62 a1 6c 40 5c f0    	vsubps zmm22,zmm18,zmm16
  a0f9d0:	62 a1 6c 40 58 d0    	vaddps zmm18,zmm18,zmm16
  a0f9d6:	62 c1 24 48 5c c7    	vsubps zmm16,zmm11,zmm15
  a0f9dc:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a0f9e2:	62 51 54 40 5c fe    	vsubps zmm15,zmm21,zmm14
  a0f9e8:	62 51 54 40 58 f6    	vaddps zmm14,zmm21,zmm14
  a0f9ee:	62 c1 64 40 5c e8    	vsubps zmm21,zmm19,zmm8
  a0f9f4:	62 51 64 40 58 c0    	vaddps zmm8,zmm19,zmm8
  a0f9fa:	62 33 7d 48 19 c3 02 	vextractf32x4 xmm19,zmm8,0x2
  a0fa01:	62 f1 7c 48 28 15 35 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff67f435]        # 8ee40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c2f0>
  a0fa08:	f4 67 ff 
  a0fa0b:	62 52 6d 48 7f c6    	vpermt2ps zmm8,zmm2,zmm14
  a0fa11:	62 71 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm8
  a0fa18:	62 53 7d 48 19 f0 02 	vextractf32x4 xmm8,zmm14,0x2
  a0fa1f:	62 51 64 00 14 c0    	vunpcklps xmm8,xmm19,xmm8
  a0fa25:	c5 78 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm8
  a0fa2b:	62 53 7d 48 19 d8 02 	vextractf32x4 xmm8,zmm11,0x2
  a0fa32:	62 32 6d 48 7f da    	vpermt2ps zmm11,zmm2,zmm18
  a0fa38:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm11
  a0fa3f:	50 00 00 00 
  a0fa43:	62 c3 7d 48 19 d3 02 	vextractf32x4 xmm11,zmm18,0x2
  a0fa4a:	c4 41 38 14 c3       	vunpcklps xmm8,xmm8,xmm11
  a0fa4f:	c5 78 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm8
  a0fa56:	00 00 
  a0fa58:	62 43 7d 48 19 c8 02 	vextractf32x4 xmm8,zmm25,0x2
  a0fa5f:	62 02 6d 48 7f cf    	vpermt2ps zmm25,zmm2,zmm31
  a0fa65:	62 61 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm25
  a0fa6c:	a0 00 00 00 
  a0fa70:	62 43 7d 48 19 fb 02 	vextractf32x4 xmm11,zmm31,0x2
  a0fa77:	c4 41 38 14 c3       	vunpcklps xmm8,xmm8,xmm11
  a0fa7c:	c5 78 11 84 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm8
  a0fa83:	00 00 
  a0fa85:	62 53 7d 48 19 e0 02 	vextractf32x4 xmm8,zmm12,0x2
  a0fa8c:	62 72 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm1
  a0fa92:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm12
  a0fa99:	f0 00 00 00 
  a0fa9d:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a0faa4:	c5 b8 14 c9          	vunpcklps xmm1,xmm8,xmm1
  a0faa8:	c5 f8 11 8c 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm1
  a0faaf:	00 00 
  a0fab1:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a0fab8:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a0fabe:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm0
  a0fac5:	05 
  a0fac6:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a0facd:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a0fad1:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a0fad8:	00 00 
  a0fada:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a0fae1:	62 62 6d 48 7f d6    	vpermt2ps zmm26,zmm2,zmm6
  a0fae7:	62 61 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm26
  a0faee:	90 01 00 00 
  a0faf2:	62 f3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm6,0x2
  a0faf9:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fafd:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a0fb04:	00 00 
  a0fb06:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a0fb0d:	62 82 6d 48 7f cd    	vpermt2ps zmm17,zmm2,zmm29
  a0fb13:	62 e1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm17
  a0fb1a:	e0 01 00 00 
  a0fb1e:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a0fb25:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fb29:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a0fb30:	00 00 
  a0fb32:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a0fb39:	62 12 6d 48 7f ec    	vpermt2ps zmm13,zmm2,zmm28
  a0fb3f:	62 71 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm13
  a0fb46:	30 02 00 00 
  a0fb4a:	62 63 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm28,0x2
  a0fb51:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fb55:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a0fb5c:	00 00 
  a0fb5e:	62 e3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm21,0x2
  a0fb65:	62 c2 6d 48 7f ef    	vpermt2ps zmm21,zmm2,zmm15
  a0fb6b:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm21
  a0fb72:	0a 
  a0fb73:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a0fb7a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fb7e:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a0fb85:	00 00 
  a0fb87:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a0fb8e:	62 a2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm22
  a0fb94:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm16
  a0fb9b:	d0 02 00 00 
  a0fb9f:	62 e3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm22,0x2
  a0fba6:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fbaa:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a0fbb1:	00 00 
  a0fbb3:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a0fbba:	62 e2 6d 48 7f fd    	vpermt2ps zmm23,zmm2,zmm5
  a0fbc0:	62 e1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm23
  a0fbc7:	20 03 00 00 
  a0fbcb:	62 f3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm5,0x2
  a0fbd2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fbd6:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a0fbdd:	00 00 
  a0fbdf:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a0fbe6:	62 32 6d 48 7f cc    	vpermt2ps zmm9,zmm2,zmm20
  a0fbec:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm9
  a0fbf3:	70 03 00 00 
  a0fbf7:	62 e3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm20,0x2
  a0fbfe:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fc02:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a0fc09:	00 00 
  a0fc0b:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a0fc12:	62 92 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm27
  a0fc18:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm7
  a0fc1f:	0f 
  a0fc20:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a0fc27:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fc2b:	c5 f8 11 84 16 00 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x400],xmm0
  a0fc32:	00 00 
  a0fc34:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a0fc3b:	62 92 6d 48 7f e6    	vpermt2ps zmm4,zmm2,zmm30
  a0fc41:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x410],zmm4
  a0fc48:	10 04 00 00 
  a0fc4c:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a0fc53:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fc57:	c5 f8 11 84 16 50 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x450],xmm0
  a0fc5e:	00 00 
  a0fc60:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a0fc67:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a0fc6e:	fe 
  a0fc6f:	62 72 6d 48 7f d1    	vpermt2ps zmm10,zmm2,zmm1
  a0fc75:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm10
  a0fc7c:	60 04 00 00 
  a0fc80:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a0fc87:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fc8b:	c5 f8 11 84 16 a0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4a0],xmm0
  a0fc92:	00 00 
  a0fc94:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a0fc9b:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a0fca2:	62 62 6d 48 7f c1    	vpermt2ps zmm24,zmm2,zmm1
  a0fca8:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm24
  a0fcaf:	b0 04 00 00 
  a0fcb3:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a0fcba:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a0fcbe:	c5 f8 11 84 16 f0 04 	vmovups XMMWORD PTR [rsi+rdx*1+0x4f0],xmm0
  a0fcc5:	00 00 
  a0fcc7:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a0fcce:	48 39 d0             	cmp    rax,rdx
  a0fcd1:	0f 85 09 e9 ff ff    	jne    a0e5e0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a0fcd7:	48 81 c4 88 09 00 00 	add    rsp,0x988
  a0fcde:	c5 f8 77             	vzeroupper
  a0fce1:	c3                   	ret
