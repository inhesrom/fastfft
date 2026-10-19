
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a53580 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a53580:	62 71 7c 48 28 0d b6 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff63f7b6]        # 92d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x201f0>
  a53587:	f7 63 ff 
  a5358a:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a53590:	62 e1 7c 48 10 57 01 	vmovups zmm18,ZMMWORD PTR [rdi+0x40]
  a53597:	62 71 7c 48 10 6f 02 	vmovups zmm13,ZMMWORD PTR [rdi+0x80]
  a5359e:	62 e1 7c 48 10 4f 03 	vmovups zmm17,ZMMWORD PTR [rdi+0xc0]
  a535a5:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a535a9:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a535af:	62 f2 35 48 7f d0    	vpermt2ps zmm2,zmm9,zmm0
  a535b5:	62 f1 7c 48 28 2d c1 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff63f7c1]        # 92d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20230>
  a535bc:	f7 63 ff 
  a535bf:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a535c5:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a535cb:	62 72 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm0
  a535d1:	62 e2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm0
  a535d7:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a535dd:	62 e2 35 48 7f d8    	vpermt2ps zmm19,zmm9,zmm0
  a535e3:	62 72 55 48 7f e8    	vpermt2ps zmm13,zmm5,zmm0
  a535e9:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a535ef:	62 72 35 48 7f f8    	vpermt2ps zmm15,zmm9,zmm0
  a535f5:	62 e2 55 48 7f c8    	vpermt2ps zmm17,zmm5,zmm0
  a535fb:	62 e1 7c 48 10 47 04 	vmovups zmm16,ZMMWORD PTR [rdi+0x100]
  a53602:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a53608:	62 e2 35 48 7f e0    	vpermt2ps zmm20,zmm9,zmm0
  a5360e:	62 e2 55 48 7f c0    	vpermt2ps zmm16,zmm5,zmm0
  a53614:	62 f1 7c 48 10 5f 05 	vmovups zmm3,ZMMWORD PTR [rdi+0x140]
  a5361b:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a53621:	62 f2 35 48 7f e0    	vpermt2ps zmm4,zmm9,zmm0
  a53627:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a5362d:	62 e1 7c 48 10 7f 06 	vmovups zmm23,ZMMWORD PTR [rdi+0x180]
  a53634:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a5363a:	62 e2 35 48 7f f0    	vpermt2ps zmm22,zmm9,zmm0
  a53640:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a53646:	62 61 7c 48 10 47 07 	vmovups zmm24,ZMMWORD PTR [rdi+0x1c0]
  a5364d:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a53653:	62 e2 35 48 7f e8    	vpermt2ps zmm21,zmm9,zmm0
  a53659:	62 62 55 48 7f c0    	vpermt2ps zmm24,zmm5,zmm0
  a5365f:	62 61 7c 48 10 4f 08 	vmovups zmm25,ZMMWORD PTR [rdi+0x200]
  a53666:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a5366c:	62 62 35 48 7f d0    	vpermt2ps zmm26,zmm9,zmm0
  a53672:	62 62 55 48 7f c8    	vpermt2ps zmm25,zmm5,zmm0
  a53678:	62 61 7c 48 10 5f 09 	vmovups zmm27,ZMMWORD PTR [rdi+0x240]
  a5367f:	62 72 25 40 77 c8    	vpermi2ps zmm9,zmm27,zmm0
  a53685:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a5368b:	62 11 64 40 58 d2    	vaddps zmm10,zmm19,zmm26
  a53691:	62 d1 6c 48 58 ea    	vaddps zmm5,zmm2,zmm10
  a53697:	62 b1 5c 40 58 f6    	vaddps zmm6,zmm20,zmm22
  a5369d:	62 51 54 40 58 df    	vaddps zmm11,zmm21,zmm15
  a536a3:	62 d1 5c 48 58 fb    	vaddps zmm7,zmm4,zmm11
  a536a9:	62 51 34 48 58 c6    	vaddps zmm8,zmm9,zmm14
  a536af:	62 11 14 48 58 e1    	vaddps zmm12,zmm13,zmm25
  a536b5:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a536bb:	62 31 7c 40 58 ef    	vaddps zmm13,zmm16,zmm23
  a536c1:	62 a1 7c 40 5c ff    	vsubps zmm23,zmm16,zmm23
  a536c7:	62 a1 3c 40 58 c1    	vaddps zmm16,zmm24,zmm17
  a536cd:	62 21 3c 40 5c c1    	vsubps zmm24,zmm24,zmm17
  a536d3:	62 a1 24 40 58 ca    	vaddps zmm17,zmm27,zmm18
  a536d9:	62 21 24 40 5c da    	vsubps zmm27,zmm27,zmm18
  a536df:	62 e2 7d 48 18 15 ff 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff621fff]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a536e6:	1f 62 ff 
  a536e9:	62 01 64 40 5c d2    	vsubps zmm26,zmm19,zmm26
  a536ef:	62 62 7d 48 18 25 5f 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff62205f]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a536f6:	20 62 ff 
  a536f9:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a536ff:	62 c1 74 48 58 dc    	vaddps zmm19,zmm1,zmm12
  a53705:	62 c1 54 40 5c ef    	vsubps zmm21,zmm21,zmm15
  a5370b:	62 11 44 40 59 fc    	vmulps zmm15,zmm23,zmm28
  a53711:	62 c1 34 48 5c f6    	vsubps zmm22,zmm9,zmm14
  a53717:	62 62 7d 48 18 2d 7f 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff621c7f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5371e:	1c 62 ff 
  a53721:	62 12 35 40 b8 fd    	vfmadd231ps zmm15,zmm25,zmm29
  a53727:	62 01 34 40 59 cc    	vmulps zmm25,zmm25,zmm28
  a5372d:	62 22 15 40 bc cf    	vfnmadd231ps zmm25,zmm29,zmm23
  a53733:	62 11 24 40 59 cc    	vmulps zmm9,zmm27,zmm28
  a53739:	62 12 3d 40 b8 cd    	vfmadd231ps zmm9,zmm24,zmm29
  a5373f:	62 81 3c 40 59 fc    	vmulps zmm23,zmm24,zmm28
  a53745:	62 82 15 40 bc fb    	vfnmadd231ps zmm23,zmm29,zmm27
  a5374b:	62 11 5c 40 59 f4    	vmulps zmm14,zmm20,zmm28
  a53751:	62 12 2d 40 b8 f5    	vfmadd231ps zmm14,zmm26,zmm29
  a53757:	62 01 2c 40 59 c4    	vmulps zmm24,zmm26,zmm28
  a5375d:	62 22 15 40 bc c4    	vfnmadd231ps zmm24,zmm29,zmm20
  a53763:	62 81 4c 40 59 e4    	vmulps zmm20,zmm22,zmm28
  a53769:	62 82 55 40 b8 e5    	vfmadd231ps zmm20,zmm21,zmm29
  a5376f:	62 81 54 40 59 ec    	vmulps zmm21,zmm21,zmm28
  a53775:	62 21 64 48 58 d0    	vaddps zmm26,zmm3,zmm16
  a5377b:	62 82 4d 40 bc ed    	vfnmadd231ps zmm21,zmm22,zmm29
  a53781:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a53787:	62 e2 2d 48 a8 f2    	vfmadd213ps zmm22,zmm10,zmm2
  a5378d:	62 62 7d 48 18 1d ad 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff621ead]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a53794:	1e 62 ff 
  a53797:	62 d2 25 40 bc d2    	vfnmadd231ps zmm2,zmm27,zmm10
  a5379d:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a537a3:	62 72 25 48 a8 d4    	vfmadd213ps zmm10,zmm11,zmm4
  a537a9:	62 d2 25 40 bc e3    	vfnmadd231ps zmm4,zmm27,zmm11
  a537af:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a537b5:	62 72 1d 48 a8 d9    	vfmadd213ps zmm11,zmm12,zmm1
  a537bb:	62 d2 25 40 bc cc    	vfnmadd231ps zmm1,zmm27,zmm12
  a537c1:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a537c7:	62 72 7d 40 a8 e3    	vfmadd213ps zmm12,zmm16,zmm3
  a537cd:	62 92 7d 40 bc db    	vfnmadd231ps zmm3,zmm16,zmm27
  a537d3:	62 82 4d 48 bc f3    	vfnmadd231ps zmm22,zmm6,zmm27
  a537d9:	62 12 3d 48 bc d3    	vfnmadd231ps zmm10,zmm8,zmm27
  a537df:	62 12 15 48 bc db    	vfnmadd231ps zmm11,zmm13,zmm27
  a537e5:	62 12 75 40 bc e3    	vfnmadd231ps zmm12,zmm17,zmm27
  a537eb:	62 f1 54 48 58 ee    	vaddps zmm5,zmm5,zmm6
  a537f1:	62 f2 6d 40 b8 d6    	vfmadd231ps zmm2,zmm18,zmm6
  a537f7:	62 d1 44 48 58 f0    	vaddps zmm6,zmm7,zmm8
  a537fd:	62 d2 6d 40 b8 e0    	vfmadd231ps zmm4,zmm18,zmm8
  a53803:	62 d1 64 40 58 fd    	vaddps zmm7,zmm19,zmm13
  a53809:	62 d2 6d 40 b8 cd    	vfmadd231ps zmm1,zmm18,zmm13
  a5380f:	62 b2 75 40 b8 da    	vfmadd231ps zmm3,zmm17,zmm18
  a53815:	62 31 2c 40 58 c1    	vaddps zmm8,zmm26,zmm17
  a5381b:	62 81 6c 48 58 c1    	vaddps zmm16,zmm2,zmm25
  a53821:	62 81 6c 48 5c c9    	vsubps zmm17,zmm2,zmm25
  a53827:	62 a1 5c 48 58 d7    	vaddps zmm18,zmm4,zmm23
  a5382d:	62 b1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm23
  a53833:	62 81 74 48 5c d8    	vsubps zmm19,zmm1,zmm24
  a53839:	62 e1 3c 40 58 f9    	vaddps zmm23,zmm24,zmm1
  a5383f:	62 21 64 48 5c c5    	vsubps zmm24,zmm3,zmm21
  a53845:	62 e1 54 40 58 eb    	vaddps zmm21,zmm21,zmm3
  a5384b:	62 d1 4c 40 58 d7    	vaddps zmm2,zmm22,zmm15
  a53851:	62 51 4c 40 5c ff    	vsubps zmm15,zmm22,zmm15
  a53857:	62 d1 2c 48 58 d9    	vaddps zmm3,zmm10,zmm9
  a5385d:	62 c1 2c 48 5c f1    	vsubps zmm22,zmm10,zmm9
  a53863:	62 51 24 48 5c d6    	vsubps zmm10,zmm11,zmm14
  a53869:	62 41 0c 48 58 cb    	vaddps zmm25,zmm14,zmm11
  a5386f:	62 31 1c 48 5c ec    	vsubps zmm13,zmm12,zmm20
  a53875:	62 c1 5c 40 58 e4    	vaddps zmm20,zmm20,zmm12
  a5387b:	62 71 54 48 58 de    	vaddps zmm11,zmm5,zmm6
  a53881:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a53887:	62 d1 44 48 58 c8    	vaddps zmm1,zmm7,zmm8
  a5388d:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a53893:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a53899:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a5389f:	62 d1 2c 48 5c d5    	vsubps zmm2,zmm10,zmm13
  a538a5:	62 51 2c 48 58 d5    	vaddps zmm10,zmm10,zmm13
  a538ab:	62 31 7c 40 58 ea    	vaddps zmm13,zmm16,zmm18
  a538b1:	62 31 7c 40 5c c2    	vsubps zmm8,zmm16,zmm18
  a538b7:	62 91 64 40 58 d8    	vaddps zmm3,zmm19,zmm24
  a538bd:	62 91 64 40 5c f8    	vsubps zmm7,zmm19,zmm24
  a538c3:	62 71 74 40 5c f4    	vsubps zmm14,zmm17,zmm4
  a538c9:	62 61 74 40 58 c4    	vaddps zmm24,zmm17,zmm4
  a538cf:	62 b1 44 40 5c e5    	vsubps zmm4,zmm23,zmm21
  a538d5:	62 a1 44 40 58 dd    	vaddps zmm19,zmm23,zmm21
  a538db:	62 a1 04 48 58 c6    	vaddps zmm16,zmm15,zmm22
  a538e1:	62 a1 04 48 5c ee    	vsubps zmm21,zmm15,zmm22
  a538e7:	62 31 34 40 58 fc    	vaddps zmm15,zmm25,zmm20
  a538ed:	62 a1 34 40 5c d4    	vsubps zmm18,zmm25,zmm20
  a538f3:	62 e1 7c 48 28 0d 83 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff673683]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a538fa:	36 67 ff 
  a538fd:	62 12 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm24
  a53903:	62 32 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm21
  a53909:	62 b2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm19
  a5390f:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a53915:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a5391b:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a53921:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a53927:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a5392d:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a53933:	62 b2 75 40 7f d2    	vpermt2ps zmm2,zmm17,zmm18
  a53939:	62 e1 7c 48 28 15 bd 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6735bd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a53940:	35 67 ff 
  a53943:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a53949:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a5394f:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a53955:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a5395b:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a53961:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a53967:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a5396d:	62 b2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm16
  a53973:	62 e1 7c 48 28 0d c3 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6735c3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5397a:	35 67 ff 
  a5397d:	62 32 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm16
  a53983:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a53989:	62 e2 6d 40 7f c5    	vpermt2ps zmm16,zmm18,zmm5
  a5398f:	62 72 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm5
  a53995:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a5399b:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a539a1:	62 72 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm6
  a539a7:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a539ad:	62 d2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm8
  a539b3:	62 52 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm8
  a539b9:	62 71 fd 48 14 c5    	vunpcklpd zmm8,zmm0,zmm5
  a539bf:	62 f1 fd 48 15 ed    	vunpckhpd zmm5,zmm0,zmm5
  a539c5:	62 e1 fd 40 14 de    	vunpcklpd zmm19,zmm16,zmm6
  a539cb:	62 e1 fd 40 15 c6    	vunpckhpd zmm16,zmm16,zmm6
  a539d1:	62 d1 a5 48 14 f5    	vunpcklpd zmm6,zmm11,zmm13
  a539d7:	62 d1 a5 48 15 c5    	vunpckhpd zmm0,zmm11,zmm13
  a539dd:	62 51 9d 48 14 de    	vunpcklpd zmm11,zmm12,zmm14
  a539e3:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  a539e9:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a539ef:	62 c2 6d 40 7f e7    	vpermt2ps zmm20,zmm18,zmm15
  a539f5:	62 d2 75 40 7f cf    	vpermt2ps zmm1,zmm17,zmm15
  a539fb:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a53a01:	62 c2 6d 40 7f e9    	vpermt2ps zmm21,zmm18,zmm9
  a53a07:	62 d2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm9
  a53a0d:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a53a13:	62 52 6d 40 7f ca    	vpermt2ps zmm9,zmm18,zmm10
  a53a19:	62 d2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm10
  a53a1f:	62 71 7c 48 28 15 d7 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6733d7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a53a26:	33 67 ff 
  a53a29:	62 e2 5d 48 77 d7    	vpermi2ps zmm18,zmm4,zmm7
  a53a2f:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a53a35:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a53a3b:	62 b2 2d 48 7f fb    	vpermt2ps zmm7,zmm10,zmm19
  a53a41:	62 e1 7c 48 28 0d f5 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6733f5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a53a48:	33 67 ff 
  a53a4b:	62 32 75 40 7f c3    	vpermt2ps zmm8,zmm17,zmm19
  a53a51:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a53a57:	62 32 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm16
  a53a5d:	62 b2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm16
  a53a63:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a53a69:	62 52 2d 48 7f fb    	vpermt2ps zmm15,zmm10,zmm11
  a53a6f:	62 d2 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm11
  a53a75:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a53a7b:	62 52 2d 48 7f ec    	vpermt2ps zmm13,zmm10,zmm12
  a53a81:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a53a87:	62 51 dd 40 14 e1    	vunpcklpd zmm12,zmm20,zmm9
  a53a8d:	62 51 dd 40 15 c9    	vunpckhpd zmm9,zmm20,zmm9
  a53a93:	62 a1 d5 40 14 c2    	vunpcklpd zmm16,zmm21,zmm18
  a53a99:	62 a1 d5 40 15 d2    	vunpckhpd zmm18,zmm21,zmm18
  a53a9f:	62 71 f5 48 14 db    	vunpcklpd zmm11,zmm1,zmm3
  a53aa5:	62 f1 f5 48 15 db    	vunpckhpd zmm3,zmm1,zmm3
  a53aab:	62 e1 ed 48 14 dc    	vunpcklpd zmm19,zmm2,zmm4
  a53ab1:	62 f1 ed 48 15 d4    	vunpckhpd zmm2,zmm2,zmm4
  a53ab7:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a53abd:	62 b2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm16
  a53ac3:	62 32 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm16
  a53ac9:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a53acf:	62 a2 2d 48 7f c2    	vpermt2ps zmm16,zmm10,zmm18
  a53ad5:	62 32 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm18
  a53adb:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a53ae1:	62 b2 2d 48 7f e3    	vpermt2ps zmm4,zmm10,zmm19
  a53ae7:	62 32 75 40 7f db    	vpermt2ps zmm11,zmm17,zmm19
  a53aed:	62 72 65 48 77 d2    	vpermi2ps zmm10,zmm3,zmm2
  a53af3:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a53af9:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a53b00:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a53b07:	62 b1 04 48 59 d1    	vmulps zmm2,zmm15,zmm17
  a53b0d:	62 b2 5d 48 bc d2    	vfnmadd231ps zmm2,zmm4,zmm18
  a53b13:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a53b19:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a53b20:	62 d2 6d 40 b8 e7    	vfmadd231ps zmm4,zmm18,zmm15
  a53b26:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a53b2d:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a53b33:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a53b39:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a53b3f:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a53b46:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a53b4c:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a53b53:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a53b59:	62 c2 2d 48 bc d6    	vfnmadd231ps zmm18,zmm10,zmm14
  a53b5f:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a53b65:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a53b6c:	62 52 0d 48 b8 d5    	vfmadd231ps zmm10,zmm14,zmm13
  a53b72:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a53b79:	62 31 3c 48 59 f1    	vmulps zmm14,zmm8,zmm17
  a53b7f:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a53b85:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a53b8b:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a53b92:	62 52 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm8
  a53b98:	62 71 7c 48 10 42 0b 	vmovups zmm8,ZMMWORD PTR [rdx+0x2c0]
  a53b9f:	62 31 4c 48 59 e9    	vmulps zmm13,zmm6,zmm17
  a53ba5:	62 52 25 48 bc e8    	vfnmadd231ps zmm13,zmm11,zmm8
  a53bab:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a53bb1:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a53bb8:	62 72 3d 48 b8 de    	vfmadd231ps zmm11,zmm8,zmm6
  a53bbe:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a53bc5:	62 31 54 48 59 c1    	vmulps zmm8,zmm5,zmm17
  a53bcb:	62 72 35 48 bc c6    	vfnmadd231ps zmm8,zmm9,zmm6
  a53bd1:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a53bd7:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a53bde:	62 72 4d 48 b8 cd    	vfmadd231ps zmm9,zmm6,zmm5
  a53be4:	62 f1 7c 48 10 6a 0f 	vmovups zmm5,ZMMWORD PTR [rdx+0x3c0]
  a53beb:	62 b1 7c 48 59 f1    	vmulps zmm6,zmm0,zmm17
  a53bf1:	62 f2 65 48 bc f5    	vfnmadd231ps zmm6,zmm3,zmm5
  a53bf7:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a53bfd:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a53c03:	62 f1 44 48 58 c2    	vaddps zmm0,zmm7,zmm2
  a53c09:	62 b1 04 48 58 ea    	vaddps zmm5,zmm15,zmm18
  a53c0f:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a53c15:	62 d1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm10
  a53c1b:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a53c21:	62 c1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm13
  a53c27:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a53c2d:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a53c33:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a53c39:	62 71 34 48 58 e3    	vaddps zmm12,zmm9,zmm3
  a53c3f:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a53c45:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a53c4b:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a53c51:	62 71 5c 48 58 c1    	vaddps zmm8,zmm4,zmm1
  a53c57:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a53c5d:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  a53c63:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a53c69:	62 c1 14 48 58 cb    	vaddps zmm17,zmm13,zmm11
  a53c6f:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a53c75:	62 71 64 48 5c ee    	vsubps zmm13,zmm3,zmm6
  a53c7b:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a53c81:	62 f2 7d 48 18 35 11 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff621711]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a53c88:	17 62 ff 
  a53c8b:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a53c91:	62 71 14 48 59 ee    	vmulps zmm13,zmm13,zmm6
  a53c97:	62 71 24 48 59 de    	vmulps zmm11,zmm11,zmm6
  a53c9d:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a53ca3:	62 d1 7c 40 58 f1    	vaddps zmm6,zmm16,zmm9
  a53ca9:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a53caf:	62 d1 0c 48 58 ec    	vaddps zmm5,zmm14,zmm12
  a53cb5:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a53cbb:	62 51 44 48 58 f0    	vaddps zmm14,zmm7,zmm8
  a53cc1:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a53cc7:	62 51 6c 48 58 c2    	vaddps zmm8,zmm2,zmm10
  a53ccd:	62 31 34 48 5c c8    	vsubps zmm9,zmm9,zmm16
  a53cd3:	62 c1 74 40 58 c5    	vaddps zmm16,zmm17,zmm13
  a53cd9:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a53cdf:	62 71 24 48 5c d3    	vsubps zmm10,zmm11,zmm3
  a53ce5:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a53ceb:	62 71 04 48 58 d9    	vaddps zmm11,zmm15,zmm1
  a53cf1:	62 d1 74 48 5c cf    	vsubps zmm1,zmm1,zmm15
  a53cf7:	62 31 3c 48 58 f8    	vaddps zmm15,zmm8,zmm16
  a53cfd:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a53d03:	62 c1 24 48 58 ca    	vaddps zmm17,zmm11,zmm10
  a53d09:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a53d0f:	62 c1 7c 48 58 c4    	vaddps zmm16,zmm0,zmm12
  a53d15:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a53d1b:	62 51 44 48 58 d9    	vaddps zmm11,zmm7,zmm9
  a53d21:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a53d27:	62 71 6c 48 58 e3    	vaddps zmm12,zmm2,zmm3
  a53d2d:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a53d33:	62 51 74 48 58 cd    	vaddps zmm9,zmm1,zmm13
  a53d39:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a53d3f:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a53d45:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a53d4b:	62 71 0c 48 5c ed    	vsubps zmm13,zmm14,zmm5
  a53d51:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a53d57:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a53d5d:	62 f1 7c 48 28 35 59 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63f059]        # 92dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20270>
  a53d64:	f0 63 ff 
  a53d67:	62 d3 7d 48 19 e6 02 	vextractf32x4 xmm14,zmm4,0x2
  a53d6e:	62 f2 4d 48 7f e5    	vpermt2ps zmm4,zmm6,zmm5
  a53d74:	62 f1 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm4
  a53d7a:	62 f3 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm5,0x2
  a53d81:	c5 88 14 e4          	vunpcklps xmm4,xmm14,xmm4
  a53d85:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  a53d8a:	62 73 7d 48 19 fc 02 	vextractf32x4 xmm4,zmm15,0x2
  a53d91:	62 32 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm17
  a53d97:	62 71 7c 48 11 be 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm15
  a53d9e:	00 00 00 
  a53da1:	62 e3 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm17,0x2
  a53da8:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a53dac:	c5 f8 11 a6 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm4
  a53db3:	00 
  a53db4:	62 e3 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm16,0x2
  a53dbb:	62 c2 4d 48 7f c3    	vpermt2ps zmm16,zmm6,zmm11
  a53dc1:	62 e1 7c 48 11 86 a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm16
  a53dc8:	00 00 00 
  a53dcb:	62 73 7d 48 19 dd 02 	vextractf32x4 xmm5,zmm11,0x2
  a53dd2:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a53dd6:	c5 f8 11 a6 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm4
  a53ddd:	00 
  a53dde:	62 73 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm12,0x2
  a53de5:	62 52 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm9
  a53deb:	62 71 7c 48 11 a6 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm12
  a53df2:	00 00 00 
  a53df5:	62 73 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm9,0x2
  a53dfc:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a53e00:	c5 f8 11 a6 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm4
  a53e07:	00 
  a53e08:	62 f3 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm3,0x2
  a53e0f:	62 d2 4d 48 7f dd    	vpermt2ps zmm3,zmm6,zmm13
  a53e15:	62 f1 7c 48 11 5e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm3
  a53e1c:	62 73 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm13,0x2
  a53e23:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  a53e27:	c5 f8 11 9e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm3
  a53e2e:	00 
  a53e2f:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a53e36:	62 52 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm10
  a53e3c:	62 71 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm8
  a53e43:	01 00 00 
  a53e46:	62 73 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm10,0x2
  a53e4d:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  a53e51:	c5 f8 11 9e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm3
  a53e58:	00 
  a53e59:	62 f3 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm0,0x2
  a53e60:	62 f2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm7
  a53e66:	62 f1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm0
  a53e6d:	01 00 00 
  a53e70:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a53e77:	c5 e0 14 c0          	vunpcklps xmm0,xmm3,xmm0
  a53e7b:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a53e82:	00 
  a53e83:	62 f2 6d 48 77 f1    	vpermi2ps zmm6,zmm2,zmm1
  a53e89:	62 f1 7c 48 11 b6 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm6
  a53e90:	02 00 00 
  a53e93:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a53e9a:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a53ea1:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a53ea5:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a53eac:	00 
  a53ead:	c5 f8 77             	vzeroupper
  a53eb0:	c3                   	ret
