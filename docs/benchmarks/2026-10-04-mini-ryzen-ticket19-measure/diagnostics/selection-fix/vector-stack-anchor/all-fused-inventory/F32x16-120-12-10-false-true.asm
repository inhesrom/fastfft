
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0a440 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0a440:	48 81 ec 88 01 00 00 	sub    rsp,0x188
  a0a447:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a0a44e:	31 d2                	xor    edx,edx
  a0a450:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a0a457:	c5 f8 10 64 17 40    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x40]
  a0a45d:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a0a463:	62 f1 7c 48 28 05 53 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff684553]        # 8e9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1be70>
  a0a46a:	45 68 ff 
  a0a46d:	62 72 7d 48 7f e4    	vpermt2ps zmm12,zmm0,zmm4
  a0a473:	62 f1 7c 48 28 0d 83 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff684583]        # 8ea00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1beb0>
  a0a47a:	45 68 ff 
  a0a47d:	62 f2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm4
  a0a483:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x50]
  a0a48a:	50 00 00 00 
  a0a48e:	c5 f8 10 a4 17 90 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x90]
  a0a495:	00 00 
  a0a497:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a0a49d:	62 72 7d 48 7f c4    	vpermt2ps zmm8,zmm0,zmm4
  a0a4a3:	62 f2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm4
  a0a4a9:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a0a4b0:	a0 00 00 00 
  a0a4b4:	c5 f8 10 a4 17 e0 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0xe0]
  a0a4bb:	00 00 
  a0a4bd:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a0a4c3:	62 72 7d 48 7f f4    	vpermt2ps zmm14,zmm0,zmm4
  a0a4c9:	62 e2 75 48 7f cc    	vpermt2ps zmm17,zmm1,zmm4
  a0a4cf:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a0a4d6:	f0 00 00 00 
  a0a4da:	c5 f8 10 a4 17 30 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x130]
  a0a4e1:	00 00 
  a0a4e3:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a0a4e9:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a0a4ef:	62 72 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm4
  a0a4f5:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x140]
  a0a4fc:	05 
  a0a4fd:	c5 f8 10 a4 17 80 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x180]
  a0a504:	00 00 
  a0a506:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a0a50c:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a0a512:	62 72 75 48 7f ec    	vpermt2ps zmm13,zmm1,zmm4
  a0a518:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x190]
  a0a51f:	90 01 00 00 
  a0a523:	c5 f8 10 a4 17 d0 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a0a52a:	00 00 
  a0a52c:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a0a532:	62 e2 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm4
  a0a538:	62 e2 75 48 7f ec    	vpermt2ps zmm21,zmm1,zmm4
  a0a53e:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a0a545:	e0 01 00 00 
  a0a549:	62 e1 7c 08 10 7c 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0x220]
  a0a550:	22 
  a0a551:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a0a557:	62 b2 7d 48 7f e7    	vpermt2ps zmm4,zmm0,zmm23
  a0a55d:	62 a2 75 48 7f e7    	vpermt2ps zmm20,zmm1,zmm23
  a0a563:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x230]
  a0a56a:	30 02 00 00 
  a0a56e:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x270]
  a0a575:	27 
  a0a576:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a0a57c:	62 82 7d 48 7f f8    	vpermt2ps zmm23,zmm0,zmm24
  a0a582:	62 02 75 48 7f e0    	vpermt2ps zmm28,zmm1,zmm24
  a0a588:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  a0a58f:	0a 
  a0a590:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a0a597:	2c 
  a0a598:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a0a59e:	62 02 7d 48 7f e9    	vpermt2ps zmm29,zmm0,zmm25
  a0a5a4:	62 02 75 48 7f c1    	vpermt2ps zmm24,zmm1,zmm25
  a0a5aa:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a0a5b1:	d0 02 00 00 
  a0a5b5:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x310]
  a0a5bc:	31 
  a0a5bd:	62 01 7c 48 28 ce    	vmovaps zmm25,zmm30
  a0a5c3:	62 02 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm26
  a0a5c9:	62 02 75 48 7f f2    	vpermt2ps zmm30,zmm1,zmm26
  a0a5cf:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x320]
  a0a5d6:	20 03 00 00 
  a0a5da:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x360]
  a0a5e1:	36 
  a0a5e2:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a0a5e8:	62 02 7d 48 7f fa    	vpermt2ps zmm31,zmm0,zmm26
  a0a5ee:	62 92 75 48 7f ea    	vpermt2ps zmm5,zmm1,zmm26
  a0a5f4:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x370]
  a0a5fb:	70 03 00 00 
  a0a5ff:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a0a606:	3b 
  a0a607:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a0a60d:	62 82 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm26
  a0a613:	62 12 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm26
  a0a619:	62 61 1c 48 58 d4    	vaddps zmm26,zmm12,zmm4
  a0a61f:	62 01 6c 40 58 d9    	vaddps zmm27,zmm18,zmm25
  a0a625:	62 91 4c 40 58 f7    	vaddps zmm6,zmm22,zmm31
  a0a62b:	62 51 44 40 58 c8    	vaddps zmm9,zmm23,zmm8
  a0a631:	62 d1 14 40 58 c6    	vaddps zmm0,zmm29,zmm14
  a0a637:	62 81 4c 40 5c f7    	vsubps zmm22,zmm22,zmm31
  a0a63d:	62 61 1c 40 58 ff    	vaddps zmm31,zmm28,zmm7
  a0a643:	62 f1 1c 40 5c ff    	vsubps zmm7,zmm28,zmm7
  a0a649:	62 21 7c 40 58 e3    	vaddps zmm28,zmm16,zmm19
  a0a64f:	62 51 14 40 5c f6    	vsubps zmm14,zmm29,zmm14
  a0a655:	62 21 04 48 58 ed    	vaddps zmm29,zmm15,zmm21
  a0a65b:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a0a661:	62 a1 64 48 58 ec    	vaddps zmm21,zmm3,zmm20
  a0a667:	62 71 1c 48 5c e4    	vsubps zmm12,zmm12,zmm4
  a0a66d:	62 91 24 48 58 e6    	vaddps zmm4,zmm11,zmm30
  a0a673:	62 11 24 48 5c de    	vsubps zmm11,zmm11,zmm30
  a0a679:	62 61 14 48 58 f5    	vaddps zmm30,zmm13,zmm5
  a0a67f:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a0a685:	62 31 3c 40 58 e9    	vaddps zmm13,zmm24,zmm17
  a0a68b:	62 a1 3c 48 5c ff    	vsubps zmm23,zmm8,zmm23
  a0a691:	62 71 44 40 58 c5    	vaddps zmm8,zmm23,zmm5
  a0a697:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a0a69d:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a0a6a3:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  a0a6a9:	62 21 3c 48 5c c3    	vsubps zmm24,zmm8,zmm19
  a0a6af:	62 b1 3c 48 58 cb    	vaddps zmm1,zmm8,zmm19
  a0a6b5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a0a6bc:	01 
  a0a6bd:	62 f1 4c 40 58 cf    	vaddps zmm1,zmm22,zmm7
  a0a6c3:	62 a1 64 48 5c e4    	vsubps zmm20,zmm3,zmm20
  a0a6c9:	62 d1 0c 48 58 df    	vaddps zmm3,zmm14,zmm15
  a0a6cf:	62 a1 34 40 5c d2    	vsubps zmm18,zmm25,zmm18
  a0a6d5:	62 f1 74 48 58 d3    	vaddps zmm2,zmm1,zmm3
  a0a6db:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a0a6e2:	ff 
  a0a6e3:	62 71 74 48 5c c3    	vsubps zmm8,zmm1,zmm3
  a0a6e9:	62 41 4c 48 58 c9    	vaddps zmm25,zmm6,zmm9
  a0a6ef:	62 d1 4c 48 5c d9    	vsubps zmm3,zmm6,zmm9
  a0a6f5:	62 91 7c 48 58 f4    	vaddps zmm6,zmm0,zmm28
  a0a6fb:	62 91 7c 48 5c c4    	vsubps zmm0,zmm0,zmm28
  a0a701:	62 11 2c 40 58 cb    	vaddps zmm9,zmm26,zmm27
  a0a707:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a0a70d:	62 01 0c 40 58 df    	vaddps zmm27,zmm30,zmm31
  a0a713:	62 01 0c 40 5c e7    	vsubps zmm28,zmm30,zmm31
  a0a719:	62 01 14 48 58 f5    	vaddps zmm30,zmm13,zmm29
  a0a71f:	62 11 14 48 5c ed    	vsubps zmm13,zmm13,zmm29
  a0a725:	62 d1 1c 40 5c cd    	vsubps zmm1,zmm28,zmm13
  a0a72b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a0a732:	fe 
  a0a733:	62 51 1c 40 58 ed    	vaddps zmm13,zmm28,zmm13
  a0a739:	62 61 54 40 58 e4    	vaddps zmm28,zmm21,zmm4
  a0a73f:	62 61 54 40 5c fc    	vsubps zmm31,zmm21,zmm4
  a0a745:	62 f1 64 48 58 e0    	vaddps zmm4,zmm3,zmm0
  a0a74b:	62 e1 64 48 5c d8    	vsubps zmm19,zmm3,zmm0
  a0a751:	62 c1 1c 48 58 eb    	vaddps zmm21,zmm12,zmm11
  a0a757:	62 e1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm21
  a0a75e:	62 51 1c 48 5c e3    	vsubps zmm12,zmm12,zmm11
  a0a764:	62 71 34 40 58 d6    	vaddps zmm10,zmm25,zmm6
  a0a76a:	62 f1 4c 40 5c ff    	vsubps zmm7,zmm22,zmm7
  a0a770:	62 d1 34 48 58 da    	vaddps zmm3,zmm9,zmm10
  a0a776:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a0a77c:	62 31 6c 40 58 dc    	vaddps zmm11,zmm18,zmm20
  a0a782:	62 31 5c 40 5c fa    	vsubps zmm15,zmm20,zmm18
  a0a788:	62 91 24 40 58 c6    	vaddps zmm0,zmm27,zmm30
  a0a78e:	62 b1 54 48 5c ef    	vsubps zmm5,zmm5,zmm23
  a0a794:	62 f1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm0
  a0a79a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0a7a1:	05 
  a0a7a2:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a0a7a8:	62 62 7d 48 18 2d ae 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff66acae]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0a7af:	ac 66 ff 
  a0a7b2:	62 81 7c 48 28 e5    	vmovaps zmm20,zmm29
  a0a7b8:	62 a2 6d 48 ac e5    	vfnmadd213ps zmm20,zmm2,zmm21
  a0a7be:	62 f2 7d 48 18 0d 0c 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff66ab0c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0a7c5:	ab 66 ff 
  a0a7c8:	62 e1 3c 40 59 e9    	vmulps zmm21,zmm24,zmm1
  a0a7ce:	62 52 15 40 ac d1    	vfnmadd213ps zmm10,zmm29,zmm9
  a0a7d4:	62 a1 54 40 58 cc    	vaddps zmm17,zmm21,zmm20
  a0a7da:	62 11 24 40 5c ce    	vsubps zmm9,zmm27,zmm30
  a0a7e0:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a0a7e6:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x40]
  a0a7ed:	01 
  a0a7ee:	62 c2 6d 40 ac f3    	vfnmadd213ps zmm22,zmm18,zmm11
  a0a7f4:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a0a7fa:	62 92 15 40 ac c4    	vfnmadd213ps zmm0,zmm29,zmm28
  a0a800:	62 d1 4c 40 5c d0    	vsubps zmm2,zmm22,zmm8
  a0a806:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a0a80d:	03 
  a0a80e:	62 f1 34 40 5c f6    	vsubps zmm6,zmm25,zmm6
  a0a814:	62 01 7c 48 28 dd    	vmovaps zmm27,zmm29
  a0a81a:	62 02 5d 48 ac da    	vfnmadd213ps zmm27,zmm4,zmm26
  a0a820:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp-0x80]
  a0a827:	fe 
  a0a828:	62 a1 5c 40 5c ed    	vsubps zmm21,zmm20,zmm21
  a0a82e:	62 e1 24 40 5c e2    	vsubps zmm20,zmm27,zmm2
  a0a834:	62 51 4c 40 58 c0    	vaddps zmm8,zmm22,zmm8
  a0a83a:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm8
  a0a841:	fe 
  a0a842:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a0a848:	62 12 15 48 ac c7    	vfnmadd213ps zmm8,zmm13,zmm31
  a0a84e:	62 e1 64 40 59 d9    	vmulps zmm19,zmm19,zmm1
  a0a854:	62 e1 2c 40 58 fc    	vaddps zmm23,zmm26,zmm4
  a0a85a:	62 41 44 48 58 e6    	vaddps zmm28,zmm7,zmm14
  a0a860:	62 d1 04 40 58 e5    	vaddps zmm4,zmm31,zmm13
  a0a866:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a0a86d:	04 
  a0a86e:	62 81 1c 48 58 f4    	vaddps zmm22,zmm12,zmm28
  a0a874:	62 42 15 40 ac e4    	vfnmadd213ps zmm28,zmm29,zmm12
  a0a87a:	62 31 54 48 58 e8    	vaddps zmm13,zmm5,zmm16
  a0a880:	62 a1 54 48 5c c0    	vsubps zmm16,zmm5,zmm16
  a0a886:	62 41 04 48 58 c5    	vaddps zmm24,zmm15,zmm13
  a0a88c:	62 52 15 40 ac ef    	vfnmadd213ps zmm13,zmm29,zmm15
  a0a892:	62 41 64 40 58 f0    	vaddps zmm30,zmm19,zmm8
  a0a898:	62 71 34 48 59 c9    	vmulps zmm9,zmm9,zmm1
  a0a89e:	62 51 44 48 5c f6    	vsubps zmm14,zmm7,zmm14
  a0a8a4:	62 41 2c 48 58 e9    	vaddps zmm29,zmm10,zmm9
  a0a8aa:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a0a8b0:	62 51 2c 48 5c c9    	vsubps zmm9,zmm10,zmm9
  a0a8b6:	62 61 7c 48 5c ce    	vsubps zmm25,zmm0,zmm6
  a0a8bc:	62 71 7c 40 59 d1    	vmulps zmm10,zmm16,zmm1
  a0a8c2:	62 f1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm0
  a0a8c8:	62 01 2c 48 58 d4    	vaddps zmm26,zmm10,zmm28
  a0a8ce:	62 f1 0c 48 59 f1    	vmulps zmm6,zmm14,zmm1
  a0a8d4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a0a8db:	ff 
  a0a8dc:	62 71 7c 48 58 3c 24 	vaddps zmm15,zmm0,ZMMWORD PTR [rsp]
  a0a8e3:	62 f1 14 48 5c c6    	vsubps zmm0,zmm13,zmm6
  a0a8e9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a0a8f0:	02 
  a0a8f1:	62 31 24 48 58 da    	vaddps zmm11,zmm11,zmm18
  a0a8f7:	62 f1 24 40 58 ca    	vaddps zmm1,zmm27,zmm2
  a0a8fd:	62 31 3c 48 5c f3    	vsubps zmm14,zmm8,zmm19
  a0a903:	62 51 1c 40 5c c2    	vsubps zmm8,zmm28,zmm10
  a0a909:	62 71 14 48 58 ee    	vaddps zmm13,zmm13,zmm6
  a0a90f:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a0a915:	62 61 7c 48 28 1d 61 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6bc661]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0a91c:	c6 6b ff 
  a0a91f:	62 d2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm9
  a0a925:	62 61 7c 48 28 25 91 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6bc691]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0a92c:	c6 6b ff 
  a0a92f:	62 d2 1d 40 7f d9    	vpermt2ps zmm3,zmm28,zmm9
  a0a935:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a0a93b:	62 42 25 40 7f ff    	vpermt2ps zmm31,zmm27,zmm15
  a0a941:	62 c2 1d 40 7f cf    	vpermt2ps zmm17,zmm28,zmm15
  a0a947:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a0a94d:	62 f2 25 40 7f f1    	vpermt2ps zmm6,zmm27,zmm1
  a0a953:	62 e2 1d 40 7f e1    	vpermt2ps zmm20,zmm28,zmm1
  a0a959:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a0a95f:	62 d2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm8
  a0a965:	62 c2 1d 40 7f f0    	vpermt2ps zmm22,zmm28,zmm8
  a0a96b:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a0a971:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a0a976:	62 52 25 40 7f c4    	vpermt2ps zmm8,zmm27,zmm12
  a0a97c:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a0a982:	62 52 25 40 7f cc    	vpermt2ps zmm9,zmm27,zmm12
  a0a988:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a0a98e:	62 52 25 40 7f d4    	vpermt2ps zmm10,zmm27,zmm12
  a0a994:	62 11 7c 48 28 fa    	vmovaps zmm15,zmm26
  a0a99a:	62 52 25 40 7f fc    	vpermt2ps zmm15,zmm27,zmm12
  a0a9a0:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a0a9a6:	62 f1 7c 48 28 05 50 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6bc550]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0a9ad:	c5 6b ff 
  a0a9b0:	62 c2 7d 48 7f c0    	vpermt2ps zmm16,zmm0,zmm8
  a0a9b6:	62 e1 7c 48 28 1d 80 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6bc580]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0a9bd:	c5 6b ff 
  a0a9c0:	62 d2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm8
  a0a9c6:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a0a9cc:	62 52 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm9
  a0a9d2:	62 42 65 40 7f f9    	vpermt2ps zmm31,zmm19,zmm9
  a0a9d8:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a0a9de:	62 52 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm10
  a0a9e4:	62 d2 65 40 7f f2    	vpermt2ps zmm6,zmm19,zmm10
  a0a9ea:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a0a9f0:	62 52 7d 48 7f d7    	vpermt2ps zmm10,zmm0,zmm15
  a0a9f6:	62 d2 65 40 7f cf    	vpermt2ps zmm1,zmm19,zmm15
  a0a9fc:	62 42 1d 40 7f ec    	vpermt2ps zmm29,zmm28,zmm12
  a0aa02:	62 92 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm29
  a0aa08:	62 c2 1d 40 7f ec    	vpermt2ps zmm21,zmm28,zmm12
  a0aa0e:	62 c2 1d 40 7f fc    	vpermt2ps zmm23,zmm28,zmm12
  a0aa14:	62 42 1d 40 7f d4    	vpermt2ps zmm26,zmm28,zmm12
  a0aa1a:	62 a2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm21
  a0aa20:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a0aa26:	62 b1 e5 48 14 d4    	vunpcklpd zmm2,zmm3,zmm20
  a0aa2c:	62 82 7d 48 7f f2    	vpermt2ps zmm22,zmm0,zmm26
  a0aa32:	62 31 f5 40 14 fe    	vunpcklpd zmm15,zmm17,zmm22
  a0aa38:	62 d1 fd 40 14 d9    	vunpcklpd zmm3,zmm16,zmm9
  a0aa3e:	62 d1 fd 40 15 e9    	vunpckhpd zmm5,zmm16,zmm9
  a0aa44:	62 51 bd 48 14 ca    	vunpcklpd zmm9,zmm8,zmm10
  a0aa4a:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  a0aa50:	62 e1 dd 48 14 fe    	vunpcklpd zmm23,zmm4,zmm6
  a0aa56:	62 e1 dd 48 15 f6    	vunpckhpd zmm22,zmm4,zmm6
  a0aa5c:	62 f1 85 40 14 e1    	vunpcklpd zmm4,zmm31,zmm1
  a0aa62:	62 f1 85 40 15 c9    	vunpckhpd zmm1,zmm31,zmm1
  a0aa68:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a0aa6e:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a0aa74:	62 e1 7c 48 28 15 82 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6bc382]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0aa7b:	c3 6b ff 
  a0aa7e:	62 42 6d 40 7f e9    	vpermt2ps zmm29,zmm18,zmm9
  a0aa84:	62 e1 7c 48 28 0d b2 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6bc3b2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0aa8b:	c3 6b ff 
  a0aa8e:	62 d2 75 40 7f f1    	vpermt2ps zmm6,zmm17,zmm9
  a0aa94:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a0aa9b:	01 
  a0aa9c:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a0aaa2:	62 42 6d 40 7f f8    	vpermt2ps zmm31,zmm18,zmm8
  a0aaa8:	62 d2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm8
  a0aaae:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a0aab5:	ff 
  a0aab6:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a0aabc:	62 e2 6d 40 7f ec    	vpermt2ps zmm21,zmm18,zmm4
  a0aac2:	62 e2 75 40 7f fc    	vpermt2ps zmm23,zmm17,zmm4
  a0aac8:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a0aace:	62 62 6d 40 7f d1    	vpermt2ps zmm26,zmm18,zmm1
  a0aad4:	62 e2 75 40 7f f1    	vpermt2ps zmm22,zmm17,zmm1
  a0aada:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a0aae0:	62 c2 6d 40 7f e7    	vpermt2ps zmm20,zmm18,zmm15
  a0aae6:	62 d2 75 40 7f d7    	vpermt2ps zmm2,zmm17,zmm15
  a0aaec:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a0aaf3:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x140]
  a0aafa:	05 
  a0aafb:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a0ab01:	62 f2 25 40 7f e7    	vpermt2ps zmm4,zmm27,zmm7
  a0ab07:	62 e2 1d 40 7f c7    	vpermt2ps zmm16,zmm28,zmm7
  a0ab0d:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0xc0]
  a0ab14:	03 
  a0ab15:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a0ab1b:	62 d2 25 40 7f fb    	vpermt2ps zmm7,zmm27,zmm11
  a0ab21:	62 52 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm11
  a0ab27:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a0ab2d:	62 d2 25 40 7f ce    	vpermt2ps zmm1,zmm27,zmm14
  a0ab33:	62 42 1d 40 7f f6    	vpermt2ps zmm30,zmm28,zmm14
  a0ab39:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a0ab3f:	62 d2 25 40 7f f5    	vpermt2ps zmm6,zmm27,zmm13
  a0ab45:	62 42 1d 40 7f c5    	vpermt2ps zmm24,zmm28,zmm13
  a0ab4b:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a0ab51:	62 52 25 40 7f c4    	vpermt2ps zmm8,zmm27,zmm12
  a0ab57:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a0ab5e:	fe 
  a0ab5f:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a0ab65:	62 52 25 40 7f cc    	vpermt2ps zmm9,zmm27,zmm12
  a0ab6b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x100]
  a0ab72:	04 
  a0ab73:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a0ab79:	62 52 25 40 7f d4    	vpermt2ps zmm10,zmm27,zmm12
  a0ab7f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a0ab86:	02 
  a0ab87:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a0ab8d:	62 52 25 40 7f dc    	vpermt2ps zmm11,zmm27,zmm12
  a0ab93:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a0ab99:	62 52 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm8
  a0ab9f:	62 d2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm8
  a0aba5:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a0abab:	62 52 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm9
  a0abb1:	62 d2 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm9
  a0abb7:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a0abbd:	62 52 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm10
  a0abc3:	62 d2 65 40 7f ca    	vpermt2ps zmm1,zmm19,zmm10
  a0abc9:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a0abcf:	62 52 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm11
  a0abd5:	62 d2 65 40 7f f3    	vpermt2ps zmm6,zmm19,zmm11
  a0abdb:	62 42 1d 40 7f cc    	vpermt2ps zmm25,zmm28,zmm12
  a0abe1:	62 82 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm25
  a0abe7:	62 d2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm12
  a0abed:	62 72 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm2
  a0abf3:	62 d2 1d 40 7f ec    	vpermt2ps zmm5,zmm28,zmm12
  a0abf9:	62 62 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm5
  a0abff:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a0ac05:	62 d2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm12
  a0ac0b:	62 91 fd 40 14 de    	vunpcklpd zmm3,zmm16,zmm30
  a0ac11:	62 62 7d 48 7f c2    	vpermt2ps zmm24,zmm0,zmm2
  a0ac17:	62 91 85 48 14 c0    	vunpcklpd zmm0,zmm15,zmm24
  a0ac1d:	62 51 95 48 14 c1    	vunpcklpd zmm8,zmm13,zmm9
  a0ac23:	62 41 95 48 15 e1    	vunpckhpd zmm28,zmm13,zmm9
  a0ac29:	62 d1 8d 48 14 d2    	vunpcklpd zmm2,zmm14,zmm10
  a0ac2f:	62 d1 8d 48 15 ea    	vunpckhpd zmm5,zmm14,zmm10
  a0ac35:	62 61 dd 48 14 c1    	vunpcklpd zmm24,zmm4,zmm1
  a0ac3b:	62 61 dd 48 15 f1    	vunpckhpd zmm30,zmm4,zmm1
  a0ac41:	62 f1 c5 48 14 ce    	vunpcklpd zmm1,zmm7,zmm6
  a0ac47:	62 f1 c5 48 15 f6    	vunpckhpd zmm6,zmm7,zmm6
  a0ac4d:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a0ac53:	62 e2 6d 40 7f da    	vpermt2ps zmm19,zmm18,zmm2
  a0ac59:	62 72 75 40 7f c2    	vpermt2ps zmm8,zmm17,zmm2
  a0ac5f:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0ac65:	62 f2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm5
  a0ac6b:	62 62 75 40 7f e5    	vpermt2ps zmm28,zmm17,zmm5
  a0ac71:	62 11 7c 48 28 f0    	vmovaps zmm14,zmm24
  a0ac77:	62 72 6d 40 7f f1    	vpermt2ps zmm14,zmm18,zmm1
  a0ac7d:	62 62 75 40 7f c1    	vpermt2ps zmm24,zmm17,zmm1
  a0ac83:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  a0ac89:	62 72 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm6
  a0ac8f:	62 62 75 40 7f f6    	vpermt2ps zmm30,zmm17,zmm6
  a0ac95:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a0ac9b:	62 f2 6d 40 7f c8    	vpermt2ps zmm1,zmm18,zmm0
  a0aca1:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a0aca7:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a0acae:	62 f1 7c 48 10 51 05 	vmovups zmm2,ZMMWORD PTR [rcx+0x140]
  a0acb5:	62 61 04 40 59 d8    	vmulps zmm27,zmm31,zmm0
  a0acbb:	62 62 5d 48 bc da    	vfnmadd231ps zmm27,zmm4,zmm2
  a0acc1:	62 f1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm0
  a0acc7:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a0acce:	62 92 6d 48 b8 e7    	vfmadd231ps zmm4,zmm2,zmm31
  a0acd4:	62 f1 7c 48 10 51 11 	vmovups zmm2,ZMMWORD PTR [rcx+0x440]
  a0acdb:	62 f1 5c 40 59 f8    	vmulps zmm7,zmm20,zmm0
  a0ace1:	62 f2 75 48 bc fa    	vfnmadd231ps zmm7,zmm1,zmm2
  a0ace7:	62 61 74 48 59 f8    	vmulps zmm31,zmm1,zmm0
  a0aced:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a0acf4:	62 22 6d 48 b8 fc    	vfmadd231ps zmm31,zmm2,zmm20
  a0acfa:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a0ad01:	62 71 54 40 59 e8    	vmulps zmm13,zmm21,zmm0
  a0ad07:	62 72 0d 48 bc e9    	vfnmadd231ps zmm13,zmm14,zmm1
  a0ad0d:	62 f1 0c 48 59 c0    	vmulps zmm0,zmm14,zmm0
  a0ad13:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  a0ad1a:	62 b2 75 48 b8 c5    	vfmadd231ps zmm0,zmm1,zmm21
  a0ad20:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a0ad27:	62 e1 2c 40 59 e2    	vmulps zmm20,zmm26,zmm2
  a0ad2d:	62 e2 25 48 bc e1    	vfnmadd231ps zmm20,zmm11,zmm1
  a0ad33:	62 f1 24 48 59 d2    	vmulps zmm2,zmm11,zmm2
  a0ad39:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a0ad40:	62 92 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm26
  a0ad46:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a0ad4d:	62 61 44 40 59 cd    	vmulps zmm25,zmm23,zmm5
  a0ad53:	62 62 3d 40 bc c9    	vfnmadd231ps zmm25,zmm24,zmm1
  a0ad59:	62 61 3c 40 59 c5    	vmulps zmm24,zmm24,zmm5
  a0ad5f:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a0ad66:	62 22 75 48 b8 c7    	vfmadd231ps zmm24,zmm1,zmm23
  a0ad6c:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a0ad73:	62 e1 4c 40 59 fd    	vmulps zmm23,zmm22,zmm5
  a0ad79:	62 e2 0d 40 bc f9    	vfnmadd231ps zmm23,zmm30,zmm1
  a0ad7f:	62 f1 0c 40 59 ed    	vmulps zmm5,zmm30,zmm5
  a0ad85:	62 f1 7c 48 10 71 06 	vmovups zmm6,ZMMWORD PTR [rcx+0x180]
  a0ad8c:	62 b2 75 48 b8 ee    	vfmadd231ps zmm5,zmm1,zmm22
  a0ad92:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a0ad99:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a0ada0:	ff 
  a0ada1:	62 e1 2c 48 59 f6    	vmulps zmm22,zmm10,zmm6
  a0ada7:	62 e2 1d 40 bc f1    	vfnmadd231ps zmm22,zmm28,zmm1
  a0adad:	62 f1 1c 40 59 f6    	vmulps zmm6,zmm28,zmm6
  a0adb3:	62 71 7c 48 10 49 12 	vmovups zmm9,ZMMWORD PTR [rcx+0x480]
  a0adba:	62 d2 75 48 b8 f2    	vfmadd231ps zmm6,zmm1,zmm10
  a0adc0:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a0adc7:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a0adce:	62 51 1c 48 59 d1    	vmulps zmm10,zmm12,zmm9
  a0add4:	62 72 65 48 bc d1    	vfnmadd231ps zmm10,zmm3,zmm1
  a0adda:	62 51 64 48 59 c9    	vmulps zmm9,zmm3,zmm9
  a0ade0:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a0ade7:	62 52 75 48 b8 cc    	vfmadd231ps zmm9,zmm1,zmm12
  a0aded:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a0adf4:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x40]
  a0adfb:	01 
  a0adfc:	62 51 1c 48 59 fb    	vmulps zmm15,zmm12,zmm11
  a0ae02:	62 72 3d 48 bc f9    	vfnmadd231ps zmm15,zmm8,zmm1
  a0ae08:	62 d1 3c 48 59 db    	vmulps zmm3,zmm8,zmm11
  a0ae0e:	62 d2 75 48 b8 dc    	vfmadd231ps zmm3,zmm1,zmm12
  a0ae14:	62 f1 24 40 58 cf    	vaddps zmm1,zmm27,zmm7
  a0ae1a:	62 11 5c 48 58 e7    	vaddps zmm12,zmm4,zmm31
  a0ae20:	62 81 5c 48 5c c7    	vsubps zmm16,zmm4,zmm31
  a0ae26:	62 e1 7c 48 58 ca    	vaddps zmm17,zmm0,zmm2
  a0ae2c:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a0ae32:	62 71 54 48 58 de    	vaddps zmm11,zmm5,zmm6
  a0ae38:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a0ae3e:	62 71 34 48 58 f3    	vaddps zmm14,zmm9,zmm3
  a0ae44:	62 f1 34 48 5c eb    	vsubps zmm5,zmm9,zmm3
  a0ae4a:	62 f1 14 40 58 d9    	vaddps zmm3,zmm29,zmm1
  a0ae50:	62 f1 24 40 5c f7    	vsubps zmm6,zmm27,zmm7
  a0ae56:	62 b1 14 48 58 e4    	vaddps zmm4,zmm13,zmm20
  a0ae5c:	62 f1 64 48 58 dc    	vaddps zmm3,zmm3,zmm4
  a0ae62:	62 31 14 48 5c cc    	vsubps zmm9,zmm13,zmm20
  a0ae68:	62 b1 44 40 58 fe    	vaddps zmm7,zmm23,zmm22
  a0ae6e:	62 a1 44 40 5c ee    	vsubps zmm21,zmm23,zmm22
  a0ae74:	62 c1 2c 48 58 e7    	vaddps zmm20,zmm10,zmm15
  a0ae7a:	62 c1 2c 48 5c f7    	vsubps zmm22,zmm10,zmm15
  a0ae80:	62 e2 7d 48 18 3d 5e 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff66a85e]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0ae87:	a8 66 ff 
  a0ae8a:	62 31 7c 48 28 ef    	vmovaps zmm13,zmm23
  a0ae90:	62 12 75 48 a8 ed    	vfmadd213ps zmm13,zmm1,zmm29
  a0ae96:	62 62 7d 48 18 15 a4 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff66a7a4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0ae9d:	a7 66 ff 
  a0aea0:	62 62 2d 40 bc e9    	vfnmadd231ps zmm29,zmm26,zmm1
  a0aea6:	62 f1 34 40 58 cf    	vaddps zmm1,zmm25,zmm7
  a0aeac:	62 31 74 48 58 c4    	vaddps zmm8,zmm1,zmm20
  a0aeb2:	62 12 5d 48 bc ea    	vfnmadd231ps zmm13,zmm4,zmm26
  a0aeb8:	62 62 45 40 b8 ec    	vfmadd231ps zmm29,zmm23,zmm4
  a0aebe:	62 62 7d 48 18 1d 90 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff66a890]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0aec5:	a8 66 ff 
  a0aec8:	62 91 7c 48 59 e3    	vmulps zmm4,zmm0,zmm27
  a0aece:	62 62 7d 48 18 25 c8 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff66a4c8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0aed5:	a4 66 ff 
  a0aed8:	62 92 7d 40 b8 e4    	vfmadd231ps zmm4,zmm16,zmm28
  a0aede:	62 91 7c 40 59 cb    	vmulps zmm1,zmm16,zmm27
  a0aee4:	62 f2 1d 40 bc c8    	vfnmadd231ps zmm1,zmm28,zmm0
  a0aeea:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a0aef0:	62 92 45 48 a8 c1    	vfmadd213ps zmm0,zmm7,zmm25
  a0aef6:	62 62 2d 40 bc cf    	vfnmadd231ps zmm25,zmm26,zmm7
  a0aefc:	62 b1 1c 48 58 fb    	vaddps zmm7,zmm12,zmm19
  a0af02:	62 f1 74 40 58 ff    	vaddps zmm7,zmm17,zmm7
  a0af08:	62 92 5d 40 bc c2    	vfnmadd231ps zmm0,zmm20,zmm26
  a0af0e:	62 22 45 40 b8 cc    	vfmadd231ps zmm25,zmm23,zmm20
  a0af14:	62 11 54 48 59 d3    	vmulps zmm10,zmm5,zmm27
  a0af1a:	62 12 6d 48 b8 d4    	vfmadd231ps zmm10,zmm2,zmm28
  a0af20:	62 91 6c 48 59 d3    	vmulps zmm2,zmm2,zmm27
  a0af26:	62 f2 1d 40 bc d5    	vfnmadd231ps zmm2,zmm28,zmm5
  a0af2c:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a0af32:	62 b2 1d 48 a8 eb    	vfmadd213ps zmm5,zmm12,zmm19
  a0af38:	62 c2 2d 40 bc dc    	vfnmadd231ps zmm19,zmm26,zmm12
  a0af3e:	62 51 3c 40 58 e3    	vaddps zmm12,zmm24,zmm11
  a0af44:	62 92 75 40 bc ea    	vfnmadd231ps zmm5,zmm17,zmm26
  a0af4a:	62 a2 45 40 b8 d9    	vfmadd231ps zmm19,zmm23,zmm17
  a0af50:	62 11 34 48 59 fb    	vmulps zmm15,zmm9,zmm27
  a0af56:	62 12 4d 48 b8 fc    	vfmadd231ps zmm15,zmm6,zmm28
  a0af5c:	62 91 4c 48 59 f3    	vmulps zmm6,zmm6,zmm27
  a0af62:	62 d2 1d 40 bc f1    	vfnmadd231ps zmm6,zmm28,zmm9
  a0af68:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a0af6e:	62 12 25 48 a8 c8    	vfmadd213ps zmm9,zmm11,zmm24
  a0af74:	62 42 2d 40 bc c3    	vfnmadd231ps zmm24,zmm26,zmm11
  a0af7a:	62 c1 1c 48 58 e6    	vaddps zmm20,zmm12,zmm14
  a0af80:	62 12 0d 48 bc ca    	vfnmadd231ps zmm9,zmm14,zmm26
  a0af86:	62 42 45 40 b8 c6    	vfmadd231ps zmm24,zmm23,zmm14
  a0af8c:	62 11 4c 40 59 db    	vmulps zmm11,zmm22,zmm27
  a0af92:	62 12 55 40 b8 dc    	vfmadd231ps zmm11,zmm21,zmm28
  a0af98:	62 11 54 40 59 e3    	vmulps zmm12,zmm21,zmm27
  a0af9e:	62 32 1d 40 bc e6    	vfnmadd231ps zmm12,zmm28,zmm22
  a0afa4:	62 e1 14 40 58 c1    	vaddps zmm16,zmm29,zmm1
  a0afaa:	62 f1 14 40 5c c9    	vsubps zmm1,zmm29,zmm1
  a0afb0:	62 e1 34 40 58 ca    	vaddps zmm17,zmm25,zmm2
  a0afb6:	62 f1 34 40 5c d2    	vsubps zmm2,zmm25,zmm2
  a0afbc:	62 e1 64 40 5c ee    	vsubps zmm21,zmm19,zmm6
  a0afc2:	62 b1 4c 48 58 f3    	vaddps zmm6,zmm6,zmm19
  a0afc8:	62 c1 3c 40 5c d4    	vsubps zmm18,zmm24,zmm12
  a0afce:	62 c1 3c 40 58 f4    	vaddps zmm22,zmm24,zmm12
  a0afd4:	62 71 14 48 58 e4    	vaddps zmm12,zmm13,zmm4
  a0afda:	62 f1 14 48 5c e4    	vsubps zmm4,zmm13,zmm4
  a0afe0:	62 51 7c 48 58 ea    	vaddps zmm13,zmm0,zmm10
  a0afe6:	62 d1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm10
  a0afec:	62 51 54 48 5c d7    	vsubps zmm10,zmm5,zmm15
  a0aff2:	62 f1 04 48 58 ed    	vaddps zmm5,zmm15,zmm5
  a0aff8:	62 51 34 48 5c fb    	vsubps zmm15,zmm9,zmm11
  a0affe:	62 51 34 48 58 cb    	vaddps zmm9,zmm9,zmm11
  a0b004:	62 c1 1c 48 5c fd    	vsubps zmm23,zmm12,zmm13
  a0b00a:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a0b010:	62 41 2c 48 5c c7    	vsubps zmm24,zmm10,zmm15
  a0b016:	62 c1 2c 48 58 df    	vaddps zmm19,zmm10,zmm15
  a0b01c:	62 31 7c 40 58 d1    	vaddps zmm10,zmm16,zmm17
  a0b022:	62 31 7c 40 5c e9    	vsubps zmm13,zmm16,zmm17
  a0b028:	62 31 54 40 58 fa    	vaddps zmm15,zmm21,zmm18
  a0b02e:	62 a1 54 40 5c d2    	vsubps zmm18,zmm21,zmm18
  a0b034:	62 e1 74 48 5c c2    	vsubps zmm16,zmm1,zmm2
  a0b03a:	62 71 74 48 58 e2    	vaddps zmm12,zmm1,zmm2
  a0b040:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a0b046:	62 a1 4c 48 58 ce    	vaddps zmm17,zmm6,zmm22
  a0b04c:	62 f1 5c 48 58 d0    	vaddps zmm2,zmm4,zmm0
  a0b052:	62 71 5c 48 5c d8    	vsubps zmm11,zmm4,zmm0
  a0b058:	62 d1 54 48 58 c1    	vaddps zmm0,zmm5,zmm9
  a0b05e:	62 d1 54 48 5c e1    	vsubps zmm4,zmm5,zmm9
  a0b064:	62 d1 64 48 5c e8    	vsubps zmm5,zmm3,zmm8
  a0b06a:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a0b070:	62 b1 44 48 5c f4    	vsubps zmm6,zmm7,zmm20
  a0b076:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a0b07c:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a0b082:	c5 7c 28 0d b6 bb 66 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff66bbb6]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a0b089:	ff 
  a0b08a:	62 72 35 48 7f c7    	vpermt2ps zmm8,zmm9,zmm7
  a0b090:	62 e1 7c 48 28 25 a6 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6839a6]        # 8ea40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bef0>
  a0b097:	39 68 ff 
  a0b09a:	62 f2 5d 40 7f df    	vpermt2ps zmm3,zmm20,zmm7
  a0b0a0:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a0b0a7:	c5 7c 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm8
  a0b0ad:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a0b0b3:	62 92 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm24
  a0b0b9:	62 82 5d 40 7f f8    	vpermt2ps zmm23,zmm20,zmm24
  a0b0bf:	62 e1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm23
  a0b0c6:	60 00 00 00 
  a0b0ca:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  a0b0d1:	00 00 
  a0b0d3:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a0b0d9:	62 d2 35 48 7f df    	vpermt2ps zmm3,zmm9,zmm15
  a0b0df:	62 52 5d 40 7f d7    	vpermt2ps zmm10,zmm20,zmm15
  a0b0e5:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm10
  a0b0ec:	03 
  a0b0ed:	c5 fc 11 9c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm3
  a0b0f4:	00 00 
  a0b0f6:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a0b0fc:	62 f2 35 48 7f d9    	vpermt2ps zmm3,zmm9,zmm1
  a0b102:	62 e2 5d 40 7f c1    	vpermt2ps zmm16,zmm20,zmm1
  a0b108:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm16
  a0b10f:	20 01 00 00 
  a0b113:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  a0b11a:	00 00 
  a0b11c:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a0b122:	62 f2 35 48 7f c8    	vpermt2ps zmm1,zmm9,zmm0
  a0b128:	62 f2 5d 40 7f d0    	vpermt2ps zmm2,zmm20,zmm0
  a0b12e:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm2
  a0b135:	06 
  a0b136:	c5 fc 11 8c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm1
  a0b13d:	00 00 
  a0b13f:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a0b145:	62 f2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm6
  a0b14b:	62 f2 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm6
  a0b151:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm5
  a0b158:	e0 01 00 00 
  a0b15c:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a0b163:	00 00 
  a0b165:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a0b16b:	62 b2 35 48 7f c3    	vpermt2ps zmm0,zmm9,zmm19
  a0b171:	62 32 5d 40 7f f3    	vpermt2ps zmm14,zmm20,zmm19
  a0b177:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm14
  a0b17e:	09 
  a0b17f:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a0b186:	00 00 
  a0b188:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a0b18e:	62 b2 35 48 7f c2    	vpermt2ps zmm0,zmm9,zmm18
  a0b194:	62 32 5d 40 7f ea    	vpermt2ps zmm13,zmm20,zmm18
  a0b19a:	62 71 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm13
  a0b1a1:	a0 02 00 00 
  a0b1a5:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  a0b1ac:	00 00 
  a0b1ae:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a0b1b4:	62 b2 35 48 7f c1    	vpermt2ps zmm0,zmm9,zmm17
  a0b1ba:	62 32 5d 40 7f e1    	vpermt2ps zmm12,zmm20,zmm17
  a0b1c0:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm12
  a0b1c7:	0c 
  a0b1c8:	c5 fc 11 84 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm0
  a0b1cf:	00 00 
  a0b1d1:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a0b1d7:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a0b1dd:	62 72 5d 40 7f dc    	vpermt2ps zmm11,zmm20,zmm4
  a0b1e3:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x360],zmm11
  a0b1ea:	60 03 00 00 
  a0b1ee:	c5 fc 11 84 16 a0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3a0],ymm0
  a0b1f5:	00 00 
  a0b1f7:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a0b1fe:	48 39 d0             	cmp    rax,rdx
  a0b201:	0f 85 49 f2 ff ff    	jne    a0a450 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a0b207:	48 81 c4 88 01 00 00 	add    rsp,0x188
  a0b20e:	c5 f8 77             	vzeroupper
  a0b211:	c3                   	ret
