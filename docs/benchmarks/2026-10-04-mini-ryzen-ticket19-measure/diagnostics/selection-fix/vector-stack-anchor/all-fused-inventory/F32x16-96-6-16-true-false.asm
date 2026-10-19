
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4e480 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4e480:	48 81 ec 88 09 00 00 	sub    rsp,0x988
  a4e487:	62 f1 7c 48 28 15 af 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6444af]        # 92940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fdf0>
  a4e48e:	44 64 ff 
  a4e491:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a4e497:	62 71 7c 48 10 47 01 	vmovups zmm8,ZMMWORD PTR [rdi+0x40]
  a4e49e:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a4e4a5:	62 71 7c 48 10 57 03 	vmovups zmm10,ZMMWORD PTR [rdi+0xc0]
  a4e4ac:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a4e4b2:	62 52 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm8
  a4e4b8:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a4e4bf:	62 e1 7c 48 10 57 05 	vmovups zmm18,ZMMWORD PTR [rdi+0x140]
  a4e4c6:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a4e4cc:	62 b2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm18
  a4e4d2:	62 71 7c 48 10 77 08 	vmovups zmm14,ZMMWORD PTR [rdi+0x200]
  a4e4d9:	62 e1 7c 48 10 5f 09 	vmovups zmm19,ZMMWORD PTR [rdi+0x240]
  a4e4e0:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a4e4e6:	62 b2 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm19
  a4e4ec:	62 e1 54 48 58 e7    	vaddps zmm20,zmm5,zmm7
  a4e4f2:	62 31 14 48 58 dc    	vaddps zmm11,zmm13,zmm20
  a4e4f8:	62 f1 7c 48 10 67 06 	vmovups zmm4,ZMMWORD PTR [rdi+0x180]
  a4e4ff:	62 71 7c 48 10 7f 07 	vmovups zmm15,ZMMWORD PTR [rdi+0x1c0]
  a4e506:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a4e50c:	62 c2 6d 48 7f ef    	vpermt2ps zmm21,zmm2,zmm15
  a4e512:	62 e1 7c 48 10 47 0a 	vmovups zmm16,ZMMWORD PTR [rdi+0x280]
  a4e519:	62 e1 7c 48 10 77 0b 	vmovups zmm22,ZMMWORD PTR [rdi+0x2c0]
  a4e520:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a4e526:	62 32 6d 48 7f ce    	vpermt2ps zmm9,zmm2,zmm22
  a4e52c:	62 d2 4d 48 77 d2    	vpermi2ps zmm2,zmm6,zmm10
  a4e532:	62 e1 34 48 58 fa    	vaddps zmm23,zmm9,zmm2
  a4e538:	62 21 54 40 58 cf    	vaddps zmm25,zmm21,zmm23
  a4e53e:	62 01 24 48 58 d1    	vaddps zmm26,zmm11,zmm25
  a4e544:	62 f1 7c 48 28 05 32 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff678a32]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4e54b:	8a 67 ff 
  a4e54e:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a4e552:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a4e558:	62 e2 7d 48 18 0d fe 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff626efe]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4e55f:	6e 62 ff 
  a4e562:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a4e568:	62 61 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm24
  a4e56f:	62 32 75 40 bc ec    	vfnmadd231ps zmm13,zmm17,zmm20
  a4e575:	62 61 7c 48 28 1d 01 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff644401]        # 92980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fe30>
  a4e57c:	44 64 ff 
  a4e57f:	62 32 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm18
  a4e585:	62 32 25 40 7f f3    	vpermt2ps zmm14,zmm27,zmm19
  a4e58b:	62 c1 1c 48 5c d6    	vsubps zmm18,zmm12,zmm14
  a4e591:	62 e2 7d 48 18 1d 39 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff626d39]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4e598:	6d 62 ff 
  a4e59b:	62 a1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm19
  a4e5a1:	62 a1 14 48 5c e2    	vsubps zmm20,zmm13,zmm18
  a4e5a7:	62 a2 75 40 bc ef    	vfnmadd231ps zmm21,zmm17,zmm23
  a4e5ad:	62 a2 25 40 7f c6    	vpermt2ps zmm16,zmm27,zmm22
  a4e5b3:	62 d2 25 40 7f f2    	vpermt2ps zmm6,zmm27,zmm10
  a4e5b9:	62 71 7c 40 5c d6    	vsubps zmm10,zmm16,zmm6
  a4e5bf:	62 31 2c 48 59 d3    	vmulps zmm10,zmm10,zmm19
  a4e5c5:	62 c1 54 40 5c f2    	vsubps zmm22,zmm21,zmm10
  a4e5cb:	62 21 5c 40 58 c6    	vaddps zmm24,zmm20,zmm22
  a4e5d1:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm24
  a4e5d8:	fe 
  a4e5d9:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a4e5df:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm24
  a4e5e6:	07 
  a4e5e7:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a4e5ed:	62 a1 2c 48 58 ed    	vaddps zmm21,zmm10,zmm21
  a4e5f3:	62 21 6c 40 58 fd    	vaddps zmm31,zmm18,zmm21
  a4e5f9:	62 11 7c 48 28 d7    	vmovaps zmm10,zmm31
  a4e5ff:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4e605:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  a4e60c:	02 
  a4e60d:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a4e612:	62 52 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm13
  a4e618:	62 21 5c 40 5c ee    	vsubps zmm29,zmm20,zmm22
  a4e61e:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a4e624:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4e62a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm10
  a4e631:	01 
  a4e632:	62 a1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm21
  a4e638:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a4e63e:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a4e644:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4e64a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm10
  a4e651:	05 
  a4e652:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a4e658:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a4e65e:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4e664:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm10
  a4e66b:	04 
  a4e66c:	62 d2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm8
  a4e672:	62 51 1c 48 58 c6    	vaddps zmm8,zmm12,zmm14
  a4e678:	62 51 74 48 58 f0    	vaddps zmm14,zmm1,zmm8
  a4e67e:	62 d2 25 40 7f e7    	vpermt2ps zmm4,zmm27,zmm15
  a4e684:	62 f1 7c 40 58 f6    	vaddps zmm6,zmm16,zmm6
  a4e68a:	62 e1 5c 48 58 d6    	vaddps zmm18,zmm4,zmm6
  a4e690:	62 21 0c 48 58 da    	vaddps zmm27,zmm14,zmm18
  a4e696:	62 e1 7c 48 28 2d 20 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff678920]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4e69d:	89 67 ff 
  a4e6a0:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a4e6a6:	62 e2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm3
  a4e6ac:	62 d2 75 40 bc c8    	vfnmadd231ps zmm1,zmm17,zmm8
  a4e6b2:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a4e6b8:	62 b1 54 48 59 eb    	vmulps zmm5,zmm5,zmm19
  a4e6be:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a4e6c4:	62 b2 4d 48 bc e1    	vfnmadd231ps zmm4,zmm6,zmm17
  a4e6ca:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a4e6d0:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a4e6d6:	62 f1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm2
  a4e6dc:	62 71 44 48 58 c6    	vaddps zmm8,zmm7,zmm6
  a4e6e2:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a4e6e8:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a4e6ee:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a4e6f4:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a4e6fa:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm12
  a4e701:	0a 
  a4e702:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm16
  a4e709:	03 
  a4e70a:	62 f1 74 48 5c ed    	vsubps zmm5,zmm1,zmm5
  a4e710:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a4e716:	62 e1 54 48 58 fa    	vaddps zmm23,zmm5,zmm2
  a4e71c:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a4e722:	62 72 55 40 7f fb    	vpermt2ps zmm15,zmm21,zmm3
  a4e728:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a4e72d:	62 52 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm8
  a4e733:	62 61 44 48 5c ce    	vsubps zmm25,zmm7,zmm6
  a4e739:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a4e73f:	62 f2 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm3
  a4e745:	62 61 54 48 5c e2    	vsubps zmm28,zmm5,zmm2
  a4e74b:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a4e751:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a4e757:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a4e75d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a4e764:	08 
  a4e765:	62 21 0c 48 5c f2    	vsubps zmm30,zmm14,zmm18
  a4e76b:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a4e771:	62 e2 55 40 7f e3    	vpermt2ps zmm20,zmm21,zmm3
  a4e777:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a4e77d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a4e784:	fe 
  a4e785:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a4e78b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4e792:	fe 
  a4e793:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm26
  a4e79a:	06 
  a4e79b:	62 62 55 40 7f fb    	vpermt2ps zmm31,zmm21,zmm3
  a4e7a1:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm31
  a4e7a8:	ff 
  a4e7a9:	62 11 7c 48 28 e5    	vmovaps zmm12,zmm29
  a4e7af:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a4e7b5:	62 e2 55 40 7f f3    	vpermt2ps zmm22,zmm21,zmm3
  a4e7bb:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm22
  a4e7c2:	14 
  a4e7c3:	62 72 55 40 7f db    	vpermt2ps zmm11,zmm21,zmm3
  a4e7c9:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm12
  a4e7d0:	17 
  a4e7d1:	62 62 7d 48 7f db    	vpermt2ps zmm27,zmm0,zmm3
  a4e7d7:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a4e7dd:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a4e7e3:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm14
  a4e7ea:	15 
  a4e7eb:	62 e2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm3
  a4e7f1:	62 62 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm3
  a4e7f7:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a4e7fd:	62 62 7d 48 7f f3    	vpermt2ps zmm30,zmm0,zmm3
  a4e803:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a4e809:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm11
  a4e810:	16 
  a4e811:	62 f1 7c 48 28 25 25 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff678725]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4e818:	87 67 ff 
  a4e81b:	62 62 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm1
  a4e821:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a4e827:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm26
  a4e82e:	1c 
  a4e82f:	62 42 5d 48 7f f8    	vpermt2ps zmm31,zmm4,zmm8
  a4e835:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a4e83b:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm31
  a4e842:	1d 
  a4e843:	62 32 5d 48 7f e6    	vpermt2ps zmm12,zmm4,zmm22
  a4e849:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm12
  a4e850:	1b 
  a4e851:	62 52 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm8
  a4e857:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm10
  a4e85e:	1a 
  a4e85f:	62 a2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm17
  a4e865:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm16
  a4e86c:	20 
  a4e86d:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a4e873:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm15
  a4e87a:	0b 
  a4e87b:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a4e881:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm11
  a4e888:	1f 
  a4e889:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a4e890:	09 
  a4e891:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a4e897:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm6
  a4e89e:	1e 
  a4e89f:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a4e8a5:	62 c2 5d 48 7f e0    	vpermt2ps zmm20,zmm4,zmm8
  a4e8ab:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a4e8b2:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a4e8b8:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x1c0]
  a4e8bf:	07 
  a4e8c0:	62 d2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm15
  a4e8c6:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a4e8cd:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a4e8d4:	02 
  a4e8d5:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a4e8db:	62 d2 5d 48 7f dd    	vpermt2ps zmm3,zmm4,zmm13
  a4e8e1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a4e8e8:	02 
  a4e8e9:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x40]
  a4e8f0:	01 
  a4e8f1:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a4e8f7:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x140]
  a4e8fe:	05 
  a4e8ff:	62 62 5d 48 7f ef    	vpermt2ps zmm29,zmm4,zmm7
  a4e905:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm29
  a4e90c:	01 
  a4e90d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a4e914:	04 
  a4e915:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a4e91b:	62 d2 5d 48 7f d5    	vpermt2ps zmm2,zmm4,zmm13
  a4e921:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a4e928:	04 
  a4e929:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a4e92f:	62 d2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm14
  a4e935:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a4e93c:	0d 
  a4e93d:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a4e943:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a4e949:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm14
  a4e950:	0c 
  a4e951:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a4e957:	62 92 5d 48 7f cc    	vpermt2ps zmm1,zmm4,zmm28
  a4e95d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm1
  a4e964:	21 
  a4e965:	62 d2 0d 40 77 e5    	vpermi2ps zmm4,zmm30,zmm13
  a4e96b:	62 e1 7c 48 28 0d 8b 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff67848b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4e972:	84 67 ff 
  a4e975:	62 51 fd 48 15 f6    	vunpckhpd zmm14,zmm0,zmm14
  a4e97b:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm14
  a4e982:	13 
  a4e983:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a4e989:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a4e990:	12 
  a4e991:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a4e997:	62 61 d5 48 15 fb    	vunpckhpd zmm31,zmm5,zmm3
  a4e99d:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm31
  a4e9a4:	11 
  a4e9a5:	62 f1 95 40 15 c2    	vunpckhpd zmm0,zmm29,zmm2
  a4e9ab:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a4e9b2:	10 
  a4e9b3:	62 62 75 40 7f f8    	vpermt2ps zmm31,zmm17,zmm0
  a4e9b9:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a4e9c0:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a4e9c7:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a4e9cd:	62 f2 0d 48 b8 c2    	vfmadd231ps zmm0,zmm14,zmm2
  a4e9d3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a4e9da:	25 
  a4e9db:	62 f1 0c 48 59 c1    	vmulps zmm0,zmm14,zmm1
  a4e9e1:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a4e9e7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm0
  a4e9ee:	24 
  a4e9ef:	62 d1 fd 40 15 cb    	vunpckhpd zmm1,zmm16,zmm11
  a4e9f5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a4e9fc:	0f 
  a4e9fd:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a4ea03:	62 b1 cd 48 15 c4    	vunpckhpd zmm0,zmm6,zmm20
  a4ea09:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a4ea10:	0e 
  a4ea11:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a4ea17:	62 41 e5 40 15 f9    	vunpckhpd zmm31,zmm19,zmm9
  a4ea1d:	62 d1 9d 48 15 c2    	vunpckhpd zmm0,zmm12,zmm10
  a4ea23:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a4ea2a:	19 
  a4ea2b:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a4ea31:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a4ea37:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a4ea3d:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a4ea44:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a4ea4b:	62 61 6c 48 59 e8    	vmulps zmm29,zmm2,zmm0
  a4ea51:	62 62 75 48 b8 eb    	vfmadd231ps zmm29,zmm1,zmm3
  a4ea57:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm29
  a4ea5e:	23 
  a4ea5f:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a4ea65:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a4ea6b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm0
  a4ea72:	22 
  a4ea73:	62 f1 7c 48 28 05 83 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff678483]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4ea7a:	84 67 ff 
  a4ea7d:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a4ea83:	62 e2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm7
  a4ea89:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0xc0]
  a4ea90:	03 
  a4ea91:	62 62 7d 48 7f 6c 24 	vpermt2ps zmm29,zmm0,ZMMWORD PTR [rsp+0x280]
  a4ea98:	0a 
  a4ea99:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x240]
  a4eaa0:	09 
  a4eaa1:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x200]
  a4eaa8:	08 
  a4eaa9:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a4eab0:	06 
  a4eab1:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp-0x80]
  a4eab8:	fe 
  a4eab9:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x5c0]
  a4eac0:	17 
  a4eac1:	62 e2 7d 48 7f 64 24 	vpermt2ps zmm20,zmm0,ZMMWORD PTR [rsp+0x500]
  a4eac8:	14 
  a4eac9:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x2c0]
  a4ead0:	0b 
  a4ead1:	62 52 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm8
  a4ead7:	62 42 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm8
  a4eadd:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a4eae4:	ff 
  a4eae5:	62 52 7d 48 7f d0    	vpermt2ps zmm10,zmm0,zmm8
  a4eaeb:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a4eaf2:	ff 
  a4eaf3:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x580]
  a4eafa:	16 
  a4eafb:	62 52 7d 48 7f d8    	vpermt2ps zmm11,zmm0,zmm8
  a4eb01:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x540]
  a4eb08:	15 
  a4eb09:	62 02 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm28
  a4eb0f:	62 c2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm13
  a4eb15:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a4eb1b:	62 c2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm13
  a4eb21:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a4eb27:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  a4eb2d:	62 b1 d5 40 15 ca    	vunpckhpd zmm1,zmm21,zmm18
  a4eb33:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a4eb3a:	09 
  a4eb3b:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a4eb41:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4eb47:	62 31 a5 40 15 f7    	vunpckhpd zmm14,zmm27,zmm23
  a4eb4d:	62 91 b5 40 15 d6    	vunpckhpd zmm2,zmm25,zmm30
  a4eb53:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a4eb5a:	08 
  a4eb5b:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a4eb61:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4eb67:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a4eb6e:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a4eb75:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a4eb7b:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a4eb81:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm8
  a4eb88:	17 
  a4eb89:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a4eb8f:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a4eb95:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a4eb9c:	16 
  a4eb9d:	62 d1 f5 40 15 d2    	vunpckhpd zmm2,zmm17,zmm10
  a4eba3:	62 d1 dd 40 15 cb    	vunpckhpd zmm1,zmm20,zmm11
  a4eba9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a4ebb0:	18 
  a4ebb1:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a4ebb7:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4ebbd:	62 d1 95 40 15 cf    	vunpckhpd zmm1,zmm29,zmm15
  a4ebc3:	62 11 c5 48 15 e2    	vunpckhpd zmm12,zmm7,zmm26
  a4ebc9:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a4ebcf:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a4ebd5:	62 d2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm12
  a4ebdb:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a4ebe2:	62 71 7c 48 10 52 14 	vmovups zmm10,ZMMWORD PTR [rdx+0x500]
  a4ebe9:	62 51 64 48 59 ea    	vmulps zmm13,zmm3,zmm10
  a4ebef:	62 52 7d 48 bc e8    	vfnmadd231ps zmm13,zmm0,zmm8
  a4ebf5:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm13
  a4ebfc:	15 
  a4ebfd:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a4ec03:	62 f2 3d 48 b8 c3    	vfmadd231ps zmm0,zmm8,zmm3
  a4ec09:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a4ec10:	14 
  a4ec11:	62 b1 bd 40 14 c6    	vunpcklpd zmm0,zmm24,zmm22
  a4ec17:	62 21 d5 40 14 e2    	vunpcklpd zmm28,zmm21,zmm18
  a4ec1d:	62 b1 a5 40 14 df    	vunpcklpd zmm3,zmm27,zmm23
  a4ec23:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a4ec2a:	fe 
  a4ec2b:	62 01 b5 40 14 de    	vunpcklpd zmm27,zmm25,zmm30
  a4ec31:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a4ec38:	0a 
  a4ec39:	62 f1 7c 48 28 2d fd 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6781fd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4ec40:	81 67 ff 
  a4ec43:	62 92 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm28
  a4ec49:	62 92 55 48 7f db    	vpermt2ps zmm3,zmm5,zmm27
  a4ec4f:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a4ec56:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a4ec5d:	62 71 64 48 59 c6    	vmulps zmm8,zmm3,zmm6
  a4ec63:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a4ec69:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm8
  a4ec70:	0b 
  a4ec71:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a4ec77:	62 f2 45 48 b8 c3    	vfmadd231ps zmm0,zmm7,zmm3
  a4ec7d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a4ec84:	03 
  a4ec85:	62 d1 95 40 14 c7    	vunpcklpd zmm0,zmm29,zmm15
  a4ec8b:	62 81 b5 48 14 ea    	vunpcklpd zmm21,zmm9,zmm26
  a4ec91:	62 f1 f5 40 14 5c 24 	vunpcklpd zmm3,zmm17,ZMMWORD PTR [rsp-0x40]
  a4ec98:	ff 
  a4ec99:	62 c1 dd 40 14 cb    	vunpcklpd zmm17,zmm20,zmm11
  a4ec9f:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a4eca5:	62 b2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm17
  a4ecab:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a4ecb1:	62 b2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm21
  a4ecb7:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a4ecbe:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a4ecc5:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a4eccb:	62 72 65 48 bc ce    	vfnmadd231ps zmm9,zmm3,zmm6
  a4ecd1:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm9
  a4ecd8:	07 
  a4ecd9:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a4ecdf:	62 f2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm0
  a4ece5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a4ecec:	ff 
  a4eced:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a4ecf4:	1c 
  a4ecf5:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x740]
  a4ecfc:	1d 
  a4ecfd:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x6c0]
  a4ed04:	1b 
  a4ed05:	62 71 e5 48 14 54 24 	vunpcklpd zmm10,zmm3,ZMMWORD PTR [rsp+0x680]
  a4ed0c:	1a 
  a4ed0d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x800]
  a4ed14:	20 
  a4ed15:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a4ed1c:	1f 
  a4ed1d:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x780]
  a4ed24:	1e 
  a4ed25:	62 a1 cd 48 14 e0    	vunpcklpd zmm20,zmm6,zmm16
  a4ed2b:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a4ed31:	62 b2 55 48 7f dc    	vpermt2ps zmm3,zmm5,zmm20
  a4ed37:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a4ed3d:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a4ed43:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a4ed4a:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a4ed51:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a4ed57:	62 72 65 48 b8 ce    	vfmadd231ps zmm9,zmm3,zmm6
  a4ed5d:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm9
  a4ed64:	05 
  a4ed65:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a4ed6b:	62 f2 4d 48 bc d8    	vfnmadd231ps zmm3,zmm6,zmm0
  a4ed71:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a4ed78:	06 
  a4ed79:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a4ed80:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x80]
  a4ed87:	02 
  a4ed88:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a4ed8f:	01 
  a4ed90:	62 71 fd 48 14 4c 24 	vunpcklpd zmm9,zmm0,ZMMWORD PTR [rsp+0x100]
  a4ed97:	04 
  a4ed98:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a4ed9f:	0d 
  a4eda0:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x300]
  a4eda7:	0c 
  a4eda8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x840]
  a4edaf:	21 
  a4edb0:	62 f1 fd 48 14 dc    	vunpcklpd zmm3,zmm0,zmm4
  a4edb6:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a4edbc:	62 f2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm3
  a4edc2:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a4edc8:	62 d2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm9
  a4edce:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a4edd5:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a4eddc:	62 51 4c 48 59 ef    	vmulps zmm13,zmm6,zmm15
  a4ede2:	62 72 45 48 b8 ec    	vfmadd231ps zmm13,zmm7,zmm4
  a4ede8:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm13
  a4edef:	0d 
  a4edf0:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a4edf6:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a4edfc:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a4ee03:	62 e2 55 48 7f 5c 24 	vpermt2ps zmm19,zmm5,ZMMWORD PTR [rsp+0x240]
  a4ee0a:	09 
  a4ee0b:	62 72 55 48 7f 74 24 	vpermt2ps zmm14,zmm5,ZMMWORD PTR [rsp+0x200]
  a4ee12:	08 
  a4ee13:	62 f2 55 48 7f 54 24 	vpermt2ps zmm2,zmm5,ZMMWORD PTR [rsp+0x600]
  a4ee1a:	18 
  a4ee1b:	62 d2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm12
  a4ee21:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x4c0]
  a4ee28:	13 
  a4ee29:	62 72 55 48 7f 7c 24 	vpermt2ps zmm15,zmm5,ZMMWORD PTR [rsp+0x480]
  a4ee30:	12 
  a4ee31:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x440]
  a4ee38:	11 
  a4ee39:	62 f2 55 48 7f 74 24 	vpermt2ps zmm6,zmm5,ZMMWORD PTR [rsp+0x400]
  a4ee40:	10 
  a4ee41:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x3c0]
  a4ee48:	0f 
  a4ee49:	62 e2 55 48 7f 44 24 	vpermt2ps zmm16,zmm5,ZMMWORD PTR [rsp+0x380]
  a4ee50:	0e 
  a4ee51:	62 62 55 48 7f 7c 24 	vpermt2ps zmm31,zmm5,ZMMWORD PTR [rsp+0x640]
  a4ee58:	19 
  a4ee59:	62 f1 7c 48 10 62 07 	vmovups zmm4,ZMMWORD PTR [rdx+0x1c0]
  a4ee60:	62 f1 7c 48 10 6a 06 	vmovups zmm5,ZMMWORD PTR [rdx+0x180]
  a4ee67:	62 61 0c 48 59 f5    	vmulps zmm30,zmm14,zmm5
  a4ee6d:	62 62 65 40 bc f4    	vfnmadd231ps zmm30,zmm19,zmm4
  a4ee73:	62 61 64 40 59 cd    	vmulps zmm25,zmm19,zmm5
  a4ee79:	62 42 5d 48 b8 ce    	vfmadd231ps zmm25,zmm4,zmm14
  a4ee7f:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a4ee86:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a4ee8d:	62 e1 74 48 59 ff    	vmulps zmm23,zmm1,zmm7
  a4ee93:	62 e2 6d 48 bc fc    	vfnmadd231ps zmm23,zmm2,zmm4
  a4ee99:	62 e1 6c 48 59 f7    	vmulps zmm22,zmm2,zmm7
  a4ee9f:	62 e2 5d 48 b8 f1    	vfmadd231ps zmm22,zmm4,zmm1
  a4eea5:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a4eeac:	62 f1 7c 48 10 62 1e 	vmovups zmm4,ZMMWORD PTR [rdx+0x780]
  a4eeb3:	62 71 04 40 59 dc    	vmulps zmm11,zmm31,zmm4
  a4eeb9:	62 72 7d 40 b8 d9    	vfmadd231ps zmm11,zmm16,zmm1
  a4eebf:	62 71 7c 40 59 e4    	vmulps zmm12,zmm16,zmm4
  a4eec5:	62 12 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm31
  a4eecb:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a4eed2:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a4eed9:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a4eedf:	62 f1 4c 48 59 f4    	vmulps zmm6,zmm6,zmm4
  a4eee5:	62 f2 05 48 b8 f1    	vfmadd231ps zmm6,zmm15,zmm1
  a4eeeb:	62 71 04 48 59 fc    	vmulps zmm15,zmm15,zmm4
  a4eef1:	62 72 75 48 bc fd    	vfnmadd231ps zmm15,zmm1,zmm5
  a4eef7:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x280]
  a4eefe:	0a 
  a4eeff:	62 f1 7c 48 28 15 f7 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff677ef7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4ef06:	7e 67 ff 
  a4ef09:	62 82 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm28
  a4ef0f:	62 22 6d 48 7f d5    	vpermt2ps zmm26,zmm2,zmm21
  a4ef15:	62 32 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm17
  a4ef1b:	62 42 6d 48 7f c2    	vpermt2ps zmm24,zmm2,zmm10
  a4ef21:	62 a2 6d 48 7f d4    	vpermt2ps zmm18,zmm2,zmm20
  a4ef27:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a4ef2d:	62 62 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm3
  a4ef33:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a4ef3a:	fe 
  a4ef3b:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a4ef41:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a4ef48:	fe 
  a4ef49:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a4ef50:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a4ef57:	62 61 3c 48 59 db    	vmulps zmm27,zmm8,zmm3
  a4ef5d:	62 62 2d 40 b8 d9    	vfmadd231ps zmm27,zmm26,zmm1
  a4ef63:	62 e1 2c 40 59 db    	vmulps zmm19,zmm26,zmm3
  a4ef69:	62 c2 75 48 bc d8    	vfnmadd231ps zmm19,zmm1,zmm8
  a4ef6f:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a4ef76:	62 f1 7c 48 10 5a 08 	vmovups zmm3,ZMMWORD PTR [rdx+0x200]
  a4ef7d:	62 e1 14 40 59 e3    	vmulps zmm20,zmm29,zmm3
  a4ef83:	62 e2 7d 48 bc e1    	vfnmadd231ps zmm20,zmm0,zmm1
  a4ef89:	62 f1 7c 48 59 db    	vmulps zmm3,zmm0,zmm3
  a4ef8f:	62 92 75 48 b8 dd    	vfmadd231ps zmm3,zmm1,zmm29
  a4ef95:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a4ef9c:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a4efa3:	62 e1 6c 40 59 e8    	vmulps zmm21,zmm18,zmm0
  a4efa9:	62 e2 3d 40 bc e9    	vfnmadd231ps zmm21,zmm24,zmm1
  a4efaf:	62 f1 3c 40 59 d0    	vmulps zmm2,zmm24,zmm0
  a4efb5:	62 b2 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm18
  a4efbb:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x2c0]
  a4efc2:	0b 
  a4efc3:	62 f1 1c 40 5c 64 24 	vsubps zmm4,zmm28,ZMMWORD PTR [rsp+0x1c0]
  a4efca:	07 
  a4efcb:	62 e1 14 48 5c 54 24 	vsubps zmm18,zmm13,ZMMWORD PTR [rsp+0x140]
  a4efd2:	05 
  a4efd3:	62 31 5c 48 5c c2    	vsubps zmm8,zmm4,zmm18
  a4efd9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a4efe0:	03 
  a4efe1:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp-0x40]
  a4efe8:	ff 
  a4efe9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a4eff0:	06 
  a4eff1:	62 61 7c 48 5c 2c 24 	vsubps zmm29,zmm0,ZMMWORD PTR [rsp]
  a4eff8:	62 72 7d 48 18 15 fe 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6266fe]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a4efff:	66 62 ff 
  a4f002:	62 11 3c 40 5c cd    	vsubps zmm9,zmm24,zmm29
  a4f008:	62 d1 34 48 59 c2    	vmulps zmm0,zmm9,zmm10
  a4f00e:	62 62 7d 48 18 15 4c 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62664c]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a4f015:	66 62 ff 
  a4f018:	62 92 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm26
  a4f01e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a4f025:	02 
  a4f026:	62 91 34 48 59 c2    	vmulps zmm0,zmm9,zmm26
  a4f02c:	62 d2 2d 48 bc c0    	vfnmadd231ps zmm0,zmm10,zmm8
  a4f032:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a4f039:	01 
  a4f03a:	62 31 0c 40 5c cf    	vsubps zmm9,zmm30,zmm23
  a4f040:	62 c1 4c 48 5c cb    	vsubps zmm17,zmm6,zmm11
  a4f046:	62 31 34 48 5c f1    	vsubps zmm14,zmm9,zmm17
  a4f04c:	62 21 34 40 5c fe    	vsubps zmm31,zmm25,zmm22
  a4f052:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a4f058:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a4f05e:	62 91 7c 48 59 ea    	vmulps zmm5,zmm0,zmm26
  a4f064:	62 d2 0d 48 b8 ea    	vfmadd231ps zmm5,zmm14,zmm10
  a4f06a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm5
  a4f071:	04 
  a4f072:	62 91 0c 48 59 ea    	vmulps zmm5,zmm14,zmm26
  a4f078:	62 f2 2d 48 bc e8    	vfnmadd231ps zmm5,zmm10,zmm0
  a4f07e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm5
  a4f085:	13 
  a4f086:	62 b1 34 48 58 c1    	vaddps zmm0,zmm9,zmm17
  a4f08c:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a4f092:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a4f098:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a4f09e:	62 91 34 48 59 ea    	vmulps zmm5,zmm9,zmm26
  a4f0a4:	62 d2 5d 48 b8 ea    	vfmadd231ps zmm5,zmm4,zmm10
  a4f0aa:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a4f0b1:	12 
  a4f0b2:	62 d1 34 48 59 ea    	vmulps zmm5,zmm9,zmm10
  a4f0b8:	62 f2 2d 40 bc ec    	vfnmadd231ps zmm5,zmm26,zmm4
  a4f0be:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a4f0c5:	10 
  a4f0c6:	62 d1 74 48 59 e2    	vmulps zmm4,zmm1,zmm10
  a4f0cc:	62 92 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm26
  a4f0d2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm4
  a4f0d9:	11 
  a4f0da:	62 01 74 48 59 d2    	vmulps zmm26,zmm1,zmm26
  a4f0e0:	62 42 7d 48 bc d2    	vfnmadd231ps zmm26,zmm0,zmm10
  a4f0e6:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x5c0]
  a4f0ed:	17 
  a4f0ee:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x540]
  a4f0f5:	15 
  a4f0f6:	62 d1 3c 48 5c c6    	vsubps zmm0,zmm8,zmm14
  a4f0fc:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x580]
  a4f103:	16 
  a4f104:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x500]
  a4f10b:	14 
  a4f10c:	62 91 14 48 5c c8    	vsubps zmm1,zmm13,zmm24
  a4f112:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a4f118:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a4f11f:	0f 
  a4f120:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a4f126:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a4f12d:	0e 
  a4f12e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x940]
  a4f135:	25 
  a4f136:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x8c0]
  a4f13d:	23 
  a4f13e:	62 f1 7c 48 5c cc    	vsubps zmm1,zmm0,zmm4
  a4f144:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x900]
  a4f14b:	24 
  a4f14c:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x880]
  a4f153:	22 
  a4f154:	62 71 54 48 5c d7    	vsubps zmm10,zmm5,zmm7
  a4f15a:	62 c1 74 48 5c ca    	vsubps zmm17,zmm1,zmm10
  a4f160:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a4f166:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a4f16d:	0c 
  a4f16e:	62 11 7c 40 5c d3    	vsubps zmm10,zmm16,zmm27
  a4f174:	62 21 24 40 58 d8    	vaddps zmm27,zmm27,zmm16
  a4f17a:	62 61 64 48 5c ea    	vsubps zmm29,zmm3,zmm2
  a4f180:	62 71 64 48 58 ca    	vaddps zmm9,zmm3,zmm2
  a4f186:	62 e1 54 48 58 c7    	vaddps zmm16,zmm5,zmm7
  a4f18c:	62 41 3c 48 58 fe    	vaddps zmm31,zmm8,zmm14
  a4f192:	62 a1 34 40 58 d6    	vaddps zmm18,zmm25,zmm22
  a4f198:	62 51 4c 48 58 f3    	vaddps zmm14,zmm6,zmm11
  a4f19e:	62 31 0c 40 58 c7    	vaddps zmm8,zmm30,zmm23
  a4f1a4:	62 51 04 48 58 dc    	vaddps zmm11,zmm15,zmm12
  a4f1aa:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x1c0]
  a4f1b1:	07 
  a4f1b2:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a4f1b9:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x180]
  a4f1c0:	06 
  a4f1c1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a4f1c8:	ff 
  a4f1c9:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0xc0]
  a4f1d0:	03 
  a4f1d1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a4f1d8:	0d 
  a4f1d9:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x140]
  a4f1e0:	05 
  a4f1e1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a4f1e8:	fe 
  a4f1e9:	62 21 74 48 5c cb    	vsubps zmm25,zmm1,zmm19
  a4f1ef:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a4f1f5:	62 21 54 40 5c e4    	vsubps zmm28,zmm21,zmm20
  a4f1fb:	62 a1 5c 40 58 e5    	vaddps zmm20,zmm20,zmm21
  a4f201:	62 81 14 48 58 e8    	vaddps zmm21,zmm13,zmm24
  a4f207:	62 61 7c 48 58 f4    	vaddps zmm30,zmm0,zmm4
  a4f20d:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a4f213:	62 b1 4c 40 5c c7    	vsubps zmm0,zmm22,zmm23
  a4f219:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a4f21f:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a4f225:	62 d1 6c 40 5c ce    	vsubps zmm1,zmm18,zmm14
  a4f22b:	62 d1 3c 48 5c c3    	vsubps zmm0,zmm8,zmm11
  a4f231:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a4f237:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a4f23d:	62 f2 7d 48 18 0d 55 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff626155]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a4f244:	61 62 ff 
  a4f247:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a4f24d:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a4f254:	0f 
  a4f255:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x380]
  a4f25c:	0e 
  a4f25d:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x300]
  a4f264:	0c 
  a4f265:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a4f26b:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a4f271:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a4f277:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a4f27d:	62 91 2c 48 5c ec    	vsubps zmm5,zmm10,zmm28
  a4f283:	62 51 1c 40 58 d2    	vaddps zmm10,zmm28,zmm10
  a4f289:	62 61 6c 48 58 e0    	vaddps zmm28,zmm2,zmm0
  a4f28f:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a4f295:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a4f29b:	62 01 34 40 58 cd    	vaddps zmm25,zmm25,zmm29
  a4f2a1:	62 61 74 40 5c eb    	vsubps zmm29,zmm17,zmm3
  a4f2a7:	62 31 64 48 58 e9    	vaddps zmm13,zmm3,zmm17
  a4f2ad:	62 c1 24 40 5c c9    	vsubps zmm17,zmm27,zmm9
  a4f2b3:	62 01 34 48 58 c3    	vaddps zmm24,zmm9,zmm27
  a4f2b9:	62 01 54 40 5c de    	vsubps zmm27,zmm21,zmm30
  a4f2bf:	62 81 54 40 58 ee    	vaddps zmm21,zmm21,zmm30
  a4f2c5:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a4f2cb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a4f2d2:	fe 
  a4f2d3:	62 41 1c 48 58 f7    	vaddps zmm30,zmm12,zmm15
  a4f2d9:	62 31 64 40 5c e4    	vsubps zmm12,zmm19,zmm20
  a4f2df:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a4f2e5:	62 81 7c 40 5c df    	vsubps zmm19,zmm16,zmm31
  a4f2eb:	62 b1 04 40 58 d8    	vaddps zmm3,zmm31,zmm16
  a4f2f1:	62 a1 4c 40 58 e7    	vaddps zmm20,zmm22,zmm23
  a4f2f7:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a4f2fd:	62 81 54 48 5c d5    	vsubps zmm18,zmm5,zmm29
  a4f303:	62 f1 14 40 58 ed    	vaddps zmm5,zmm29,zmm5
  a4f309:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a4f310:	ff 
  a4f311:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x40]
  a4f318:	01 
  a4f319:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x4c0]
  a4f320:	13 
  a4f321:	62 d1 3c 48 5c e9    	vsubps zmm5,zmm8,zmm9
  a4f327:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a4f32d:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm8
  a4f334:	03 
  a4f335:	62 81 6c 48 5c f4    	vsubps zmm22,zmm2,zmm28
  a4f33b:	62 01 6c 48 58 ec    	vaddps zmm29,zmm2,zmm28
  a4f341:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a4f348:	02 
  a4f349:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x100]
  a4f350:	04 
  a4f351:	62 c1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm8
  a4f357:	62 41 6c 48 5c e0    	vsubps zmm28,zmm2,zmm8
  a4f35d:	62 21 74 40 5c fb    	vsubps zmm31,zmm17,zmm19
  a4f363:	62 a1 64 40 58 f9    	vaddps zmm23,zmm19,zmm17
  a4f369:	62 e1 44 48 58 d9    	vaddps zmm19,zmm7,zmm1
  a4f36f:	62 e1 44 48 5c c9    	vsubps zmm17,zmm7,zmm1
  a4f375:	62 91 1c 48 5c fb    	vsubps zmm7,zmm12,zmm27
  a4f37b:	62 01 1c 48 58 db    	vaddps zmm27,zmm12,zmm27
  a4f381:	62 71 5c 48 5c e6    	vsubps zmm12,zmm4,zmm6
  a4f387:	62 71 4c 48 58 dc    	vaddps zmm11,zmm6,zmm4
  a4f38d:	62 f1 2c 48 5c f0    	vsubps zmm6,zmm10,zmm0
  a4f393:	62 51 7c 48 58 ca    	vaddps zmm9,zmm0,zmm10
  a4f399:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a4f3a0:	10 
  a4f3a1:	62 11 7c 48 5c d2    	vsubps zmm10,zmm0,zmm26
  a4f3a7:	62 11 7c 48 58 c2    	vaddps zmm8,zmm0,zmm26
  a4f3ad:	62 d1 34 40 5c d5    	vsubps zmm2,zmm25,zmm13
  a4f3b3:	62 51 34 40 58 ed    	vaddps zmm13,zmm25,zmm13
  a4f3b9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a4f3c0:	12 
  a4f3c1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x440]
  a4f3c8:	11 
  a4f3c9:	62 61 74 48 5c c8    	vsubps zmm25,zmm1,zmm0
  a4f3cf:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a4f3d5:	62 b1 3c 40 5c cd    	vsubps zmm1,zmm24,zmm21
  a4f3db:	62 81 54 40 58 e8    	vaddps zmm21,zmm21,zmm24
  a4f3e1:	62 41 5c 40 5c d6    	vsubps zmm26,zmm20,zmm14
  a4f3e7:	62 c1 5c 40 58 e6    	vaddps zmm20,zmm20,zmm14
  a4f3ed:	62 f1 04 48 5c c3    	vsubps zmm0,zmm15,zmm3
  a4f3f3:	62 61 04 48 58 c3    	vaddps zmm24,zmm15,zmm3
  a4f3f9:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a4f400:	fe 
  a4f401:	62 11 64 48 5c fe    	vsubps zmm15,zmm3,zmm30
  a4f407:	62 f1 0c 40 58 db    	vaddps zmm3,zmm30,zmm3
  a4f40d:	62 21 6c 40 58 f0    	vaddps zmm30,zmm18,zmm16
  a4f413:	62 31 6c 40 5c f0    	vsubps zmm14,zmm18,zmm16
  a4f419:	62 e1 4c 40 5c c5    	vsubps zmm16,zmm22,zmm5
  a4f41f:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm16
  a4f426:	fe 
  a4f427:	62 f1 4c 40 58 ed    	vaddps zmm5,zmm22,zmm5
  a4f42d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a4f434:	01 
  a4f435:	62 c1 04 40 5c f4    	vsubps zmm22,zmm31,zmm12
  a4f43b:	62 d1 04 40 58 ec    	vaddps zmm5,zmm31,zmm12
  a4f441:	62 31 44 48 5c e3    	vsubps zmm12,zmm7,zmm19
  a4f447:	62 71 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm12
  a4f44e:	62 a1 44 48 58 db    	vaddps zmm19,zmm7,zmm19
  a4f454:	62 81 4c 48 5c c1    	vsubps zmm16,zmm6,zmm25
  a4f45a:	62 91 4c 48 58 f9    	vaddps zmm7,zmm6,zmm25
  a4f460:	62 d1 6c 48 5c f2    	vsubps zmm6,zmm2,zmm10
  a4f466:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  a4f46d:	02 
  a4f46e:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a4f474:	62 41 74 48 5c cf    	vsubps zmm25,zmm1,zmm15
  a4f47a:	62 51 74 48 58 d7    	vaddps zmm10,zmm1,zmm15
  a4f480:	62 01 7c 48 5c fa    	vsubps zmm31,zmm0,zmm26
  a4f486:	62 01 7c 48 58 d2    	vaddps zmm26,zmm0,zmm26
  a4f48c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a4f493:	ff 
  a4f494:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a4f49b:	03 
  a4f49c:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a4f4a2:	62 71 7c 48 58 e1    	vaddps zmm12,zmm0,zmm1
  a4f4a8:	62 91 14 40 5c c4    	vsubps zmm0,zmm29,zmm28
  a4f4ae:	62 01 14 40 58 e4    	vaddps zmm28,zmm29,zmm28
  a4f4b4:	62 b1 44 40 5c c9    	vsubps zmm1,zmm23,zmm17
  a4f4ba:	62 31 44 40 58 f9    	vaddps zmm15,zmm23,zmm17
  a4f4c0:	62 c1 24 40 5c fb    	vsubps zmm23,zmm27,zmm11
  a4f4c6:	62 41 24 40 58 db    	vaddps zmm27,zmm27,zmm11
  a4f4cc:	62 51 34 48 5c d8    	vsubps zmm11,zmm9,zmm8
  a4f4d2:	62 c1 34 48 58 c8    	vaddps zmm17,zmm9,zmm8
  a4f4d8:	62 71 14 48 5c c4    	vsubps zmm8,zmm13,zmm4
  a4f4de:	62 f1 14 48 58 e4    	vaddps zmm4,zmm13,zmm4
  a4f4e4:	62 31 54 40 5c ec    	vsubps zmm13,zmm21,zmm20
  a4f4ea:	62 a1 54 40 58 d4    	vaddps zmm18,zmm21,zmm20
  a4f4f0:	62 71 3c 40 5c cb    	vsubps zmm9,zmm24,zmm3
  a4f4f6:	62 f1 3c 40 58 db    	vaddps zmm3,zmm24,zmm3
  a4f4fc:	62 e1 7c 48 28 25 ba 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6434ba]        # 929c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fe70>
  a4f503:	34 64 ff 
  a4f506:	62 e2 5d 40 7f d3    	vpermt2ps zmm18,zmm20,zmm3
  a4f50c:	62 e2 5d 40 7f cc    	vpermt2ps zmm17,zmm20,zmm4
  a4f512:	62 12 5d 40 7f fb    	vpermt2ps zmm15,zmm20,zmm27
  a4f518:	62 12 5d 40 7f e4    	vpermt2ps zmm12,zmm20,zmm28
  a4f51e:	62 12 5d 40 7f d2    	vpermt2ps zmm10,zmm20,zmm26
  a4f524:	62 f2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm2
  a4f52a:	62 b2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm19
  a4f530:	62 72 5d 40 7f 74 24 	vpermt2ps zmm14,zmm20,ZMMWORD PTR [rsp+0x40]
  a4f537:	01 
  a4f538:	62 52 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm9
  a4f53e:	62 52 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm8
  a4f544:	62 b2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm23
  a4f54a:	62 f2 5d 40 7f f0    	vpermt2ps zmm6,zmm20,zmm0
  a4f550:	62 02 5d 40 7f cf    	vpermt2ps zmm25,zmm20,zmm31
  a4f556:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp+0x80]
  a4f55d:	02 
  a4f55e:	62 e2 5d 40 7f 34 24 	vpermt2ps zmm22,zmm20,ZMMWORD PTR [rsp]
  a4f565:	62 62 5d 40 7f 74 24 	vpermt2ps zmm30,zmm20,ZMMWORD PTR [rsp-0x80]
  a4f56c:	fe 
  a4f56d:	62 e3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm18,0x2
  a4f574:	02 
  a4f575:	62 e1 7c 28 11 16    	vmovups YMMWORD PTR [rsi],ymm18
  a4f57b:	62 e3 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm17,0x2
  a4f582:	02 
  a4f583:	62 e1 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x30],ymm17
  a4f58a:	00 00 00 
  a4f58d:	62 73 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm15,0x2
  a4f594:	02 
  a4f595:	c5 7c 11 7e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm15
  a4f59a:	62 73 7d 48 19 66 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm12,0x2
  a4f5a1:	02 
  a4f5a2:	c5 7c 11 a6 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm12
  a4f5a9:	00 
  a4f5aa:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  a4f5b1:	02 
  a4f5b2:	c5 7c 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm10
  a4f5b9:	00 
  a4f5ba:	62 f3 7d 48 19 7e 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm7,0x2
  a4f5c1:	02 
  a4f5c2:	c5 fc 11 be f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm7
  a4f5c9:	00 
  a4f5ca:	62 f3 7d 48 19 6e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm5,0x2
  a4f5d1:	02 
  a4f5d2:	c5 fc 11 ae 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm5
  a4f5d9:	00 
  a4f5da:	62 73 7d 48 19 76 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm14,0x2
  a4f5e1:	02 
  a4f5e2:	c5 7c 11 b6 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm14
  a4f5e9:	00 
  a4f5ea:	62 73 7d 48 19 6e 1a 	vextractf32x4 XMMWORD PTR [rsi+0x1a0],zmm13,0x2
  a4f5f1:	02 
  a4f5f2:	c5 7c 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm13
  a4f5f9:	00 
  a4f5fa:	62 73 7d 48 19 5e 1d 	vextractf32x4 XMMWORD PTR [rsi+0x1d0],zmm11,0x2
  a4f601:	02 
  a4f602:	c5 7c 11 9e b0 01 00 	vmovups YMMWORD PTR [rsi+0x1b0],ymm11
  a4f609:	00 
  a4f60a:	62 f3 7d 48 19 4e 20 	vextractf32x4 XMMWORD PTR [rsi+0x200],zmm1,0x2
  a4f611:	02 
  a4f612:	c5 fc 11 8e e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm1
  a4f619:	00 
  a4f61a:	62 f3 7d 48 19 76 23 	vextractf32x4 XMMWORD PTR [rsi+0x230],zmm6,0x2
  a4f621:	02 
  a4f622:	c5 fc 11 b6 10 02 00 	vmovups YMMWORD PTR [rsi+0x210],ymm6
  a4f629:	00 
  a4f62a:	62 63 7d 48 19 4e 26 	vextractf32x4 XMMWORD PTR [rsi+0x260],zmm25,0x2
  a4f631:	02 
  a4f632:	62 61 7c 28 11 4e 12 	vmovups YMMWORD PTR [rsi+0x240],ymm25
  a4f639:	62 e3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm16,0x2
  a4f640:	02 
  a4f641:	62 e1 7c 28 11 86 70 	vmovups YMMWORD PTR [rsi+0x270],ymm16
  a4f648:	02 00 00 
  a4f64b:	62 e3 7d 48 19 76 2c 	vextractf32x4 XMMWORD PTR [rsi+0x2c0],zmm22,0x2
  a4f652:	02 
  a4f653:	62 e1 7c 28 11 76 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm22
  a4f65a:	62 63 7d 48 19 76 2f 	vextractf32x4 XMMWORD PTR [rsi+0x2f0],zmm30,0x2
  a4f661:	02 
  a4f662:	62 61 7c 28 11 b6 d0 	vmovups YMMWORD PTR [rsi+0x2d0],ymm30
  a4f669:	02 00 00 
  a4f66c:	48 81 c4 88 09 00 00 	add    rsp,0x988
  a4f673:	c5 f8 77             	vzeroupper
  a4f676:	c3                   	ret
