
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a10400 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a10400:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b6b76]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a10407:	6b 6b ff 
  a1040a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1040e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a10412:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a10418:	62 f1 7c 48 28 1d de 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b6ade]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1041f:	6a 6b ff 
  a10422:	62 f1 7c 48 28 25 14 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b6b14]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a10429:	6b 6b ff 
  a1042c:	62 f1 7c 48 28 2d ca 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b69ca]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a10433:	69 6b ff 
  a10436:	62 f1 7c 48 28 35 00 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6b6a00]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1043d:	6a 6b ff 
  a10440:	48 c1 e2 07          	shl    rdx,0x7
  a10444:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a10448:	31 d2                	xor    edx,edx
  a1044a:	62 71 7c 48 28 15 6c 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff67eb6c]        # 8efc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c470>
  a10451:	eb 67 ff 
  a10454:	62 71 7c 48 28 25 a2 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67eba2]        # 8f000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c4b0>
  a1045b:	eb 67 ff 
  a1045e:	66 90                	xchg   ax,ax
  a10460:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a10467:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1046e:	01 
  a1046f:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x80]
  a10476:	02 
  a10477:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1047e:	03 
  a1047f:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a10485:	62 f1 7c 48 28 3d f1 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67eaf1]        # 8ef80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c430>
  a1048c:	ea 67 ff 
  a1048f:	62 e2 45 48 7f d1    	vpermt2ps zmm18,zmm7,zmm1
  a10495:	62 72 2d 48 7f e9    	vpermt2ps zmm13,zmm10,zmm1
  a1049b:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a104a1:	62 e2 45 48 7f e1    	vpermt2ps zmm20,zmm7,zmm1
  a104a7:	62 72 2d 48 7f f9    	vpermt2ps zmm15,zmm10,zmm1
  a104ad:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a104b3:	62 e2 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm1
  a104b9:	62 e2 2d 48 7f c1    	vpermt2ps zmm16,zmm10,zmm1
  a104bf:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a104c5:	62 e2 45 48 7f f1    	vpermt2ps zmm22,zmm7,zmm1
  a104cb:	62 e2 2d 48 7f c9    	vpermt2ps zmm17,zmm10,zmm1
  a104d1:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x100]
  a104d8:	04 
  a104d9:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a104df:	62 62 45 48 7f c1    	vpermt2ps zmm24,zmm7,zmm1
  a104e5:	62 e2 2d 48 7f f9    	vpermt2ps zmm23,zmm10,zmm1
  a104eb:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x140]
  a104f2:	05 
  a104f3:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a104f9:	62 62 45 48 7f d1    	vpermt2ps zmm26,zmm7,zmm1
  a104ff:	62 62 2d 48 7f c9    	vpermt2ps zmm25,zmm10,zmm1
  a10505:	62 81 54 40 58 d8    	vaddps zmm19,zmm21,zmm24
  a1050b:	62 21 6c 40 58 db    	vaddps zmm27,zmm18,zmm19
  a10511:	62 21 2c 40 58 e4    	vaddps zmm28,zmm26,zmm20
  a10517:	62 01 4c 40 58 ec    	vaddps zmm29,zmm22,zmm28
  a1051d:	62 11 24 40 58 f5    	vaddps zmm14,zmm27,zmm29
  a10523:	62 21 7c 40 58 f7    	vaddps zmm30,zmm16,zmm23
  a10529:	62 01 14 48 58 fe    	vaddps zmm31,zmm13,zmm30
  a1052f:	62 51 34 40 58 c7    	vaddps zmm8,zmm25,zmm15
  a10535:	62 51 74 40 58 c8    	vaddps zmm9,zmm17,zmm8
  a1053b:	62 f2 7d 48 18 3d 1b 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff664f1b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a10542:	4f 66 ff 
  a10545:	62 a2 45 48 bc d3    	vfnmadd231ps zmm18,zmm7,zmm19
  a1054b:	62 c1 04 40 58 d9    	vaddps zmm19,zmm31,zmm9
  a10551:	62 a1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm23
  a10557:	62 e2 7d 48 18 3d 73 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff664d73]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1055e:	4d 66 ff 
  a10561:	62 a1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm23
  a10567:	62 31 6c 40 58 d8    	vaddps zmm11,zmm18,zmm16
  a1056d:	62 82 45 48 bc f4    	vfnmadd231ps zmm22,zmm7,zmm28
  a10573:	62 51 34 40 5c ff    	vsubps zmm15,zmm25,zmm15
  a10579:	62 31 04 48 59 ff    	vmulps zmm15,zmm15,zmm23
  a1057f:	62 41 4c 40 58 cf    	vaddps zmm25,zmm22,zmm15
  a10585:	62 01 24 48 5c e1    	vsubps zmm28,zmm11,zmm25
  a1058b:	62 12 45 48 bc ee    	vfnmadd231ps zmm13,zmm7,zmm30
  a10591:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a10597:	62 a1 54 40 59 ef    	vmulps zmm21,zmm21,zmm23
  a1059d:	62 21 14 48 5c c5    	vsubps zmm24,zmm13,zmm21
  a105a3:	62 c2 45 48 bc c8    	vfnmadd231ps zmm17,zmm7,zmm8
  a105a9:	62 31 2c 40 5c c4    	vsubps zmm8,zmm26,zmm20
  a105af:	62 31 3c 48 59 c7    	vmulps zmm8,zmm8,zmm23
  a105b5:	62 c1 74 40 5c e0    	vsubps zmm20,zmm17,zmm8
  a105bb:	62 21 3c 40 5c d4    	vsubps zmm26,zmm24,zmm20
  a105c1:	62 a1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm16
  a105c7:	62 51 4c 40 5c ff    	vsubps zmm15,zmm22,zmm15
  a105cd:	62 41 7c 40 58 f7    	vaddps zmm30,zmm16,zmm15
  a105d3:	62 51 54 40 58 ed    	vaddps zmm13,zmm21,zmm13
  a105d9:	62 31 3c 48 58 c1    	vaddps zmm8,zmm8,zmm17
  a105df:	62 c1 14 48 58 f8    	vaddps zmm23,zmm13,zmm8
  a105e5:	62 81 24 40 5c ed    	vsubps zmm21,zmm27,zmm29
  a105eb:	62 41 04 40 5c d9    	vsubps zmm27,zmm31,zmm9
  a105f1:	62 11 24 48 58 c9    	vaddps zmm9,zmm11,zmm25
  a105f7:	62 21 3c 40 58 cc    	vaddps zmm25,zmm24,zmm20
  a105fd:	62 51 7c 40 5c df    	vsubps zmm11,zmm16,zmm15
  a10603:	62 c1 14 48 5c f0    	vsubps zmm22,zmm13,zmm8
  a10609:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a1060f:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a10615:	62 62 7d 48 7f f1    	vpermt2ps zmm30,zmm0,zmm1
  a1061b:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a10621:	62 72 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm1
  a10627:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a1062d:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a10633:	62 52 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm9
  a10639:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a1063f:	62 11 7c 48 28 cc    	vmovaps zmm9,zmm28
  a10645:	62 52 65 48 7f cb    	vpermt2ps zmm9,zmm3,zmm11
  a1064b:	62 42 5d 48 7f e3    	vpermt2ps zmm28,zmm4,zmm11
  a10651:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  a10657:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a1065d:	62 62 5d 48 7f f2    	vpermt2ps zmm30,zmm4,zmm2
  a10663:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a10669:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a1066f:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a10675:	62 c1 bd 48 14 d3    	vunpcklpd zmm18,zmm8,zmm11
  a1067b:	62 c1 bd 48 15 c3    	vunpckhpd zmm16,zmm8,zmm11
  a10681:	62 51 b5 48 14 ef    	vunpcklpd zmm13,zmm9,zmm15
  a10687:	62 51 b5 48 15 c7    	vunpckhpd zmm8,zmm9,zmm15
  a1068d:	62 81 8d 48 14 ce    	vunpcklpd zmm17,zmm14,zmm30
  a10693:	62 11 8d 48 15 fe    	vunpckhpd zmm15,zmm14,zmm30
  a10699:	62 31 9d 40 14 cd    	vunpcklpd zmm9,zmm28,zmm21
  a1069f:	62 31 9d 40 15 dd    	vunpckhpd zmm11,zmm28,zmm21
  a106a5:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a106ab:	62 c2 4d 48 7f d5    	vpermt2ps zmm18,zmm6,zmm13
  a106b1:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a106b7:	62 c2 55 48 7f e0    	vpermt2ps zmm20,zmm5,zmm8
  a106bd:	62 c2 4d 48 7f c0    	vpermt2ps zmm16,zmm6,zmm8
  a106c3:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a106c9:	62 42 55 48 7f c1    	vpermt2ps zmm24,zmm5,zmm9
  a106cf:	62 c2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm9
  a106d5:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a106db:	62 c2 55 48 7f eb    	vpermt2ps zmm21,zmm5,zmm11
  a106e1:	62 52 4d 48 7f fb    	vpermt2ps zmm15,zmm6,zmm11
  a106e7:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a106ed:	62 62 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm1
  a106f3:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a106f9:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a106ff:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a10705:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a1070b:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a10711:	62 12 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm25
  a10717:	62 82 5d 48 7f d9    	vpermt2ps zmm19,zmm4,zmm25
  a1071d:	62 11 7c 48 28 ca    	vmovaps zmm9,zmm26
  a10723:	62 32 65 48 7f ce    	vpermt2ps zmm9,zmm3,zmm22
  a10729:	62 22 5d 48 7f d6    	vpermt2ps zmm26,zmm4,zmm22
  a1072f:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a10735:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a1073b:	62 e2 5d 48 7f fa    	vpermt2ps zmm23,zmm4,zmm2
  a10741:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a10747:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a1074d:	62 62 5d 48 7f da    	vpermt2ps zmm27,zmm4,zmm2
  a10753:	62 41 bd 48 14 eb    	vunpcklpd zmm29,zmm8,zmm11
  a10759:	62 41 bd 48 15 cb    	vunpckhpd zmm25,zmm8,zmm11
  a1075f:	62 81 b5 48 14 f4    	vunpcklpd zmm22,zmm9,zmm28
  a10765:	62 11 b5 48 15 c4    	vunpckhpd zmm8,zmm9,zmm28
  a1076b:	62 21 e5 40 14 e7    	vunpcklpd zmm28,zmm19,zmm23
  a10771:	62 a1 e5 40 15 ff    	vunpckhpd zmm23,zmm19,zmm23
  a10777:	62 11 ad 40 14 cb    	vunpcklpd zmm9,zmm26,zmm27
  a1077d:	62 11 ad 40 15 db    	vunpckhpd zmm11,zmm26,zmm27
  a10783:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a10789:	62 22 4d 48 7f ee    	vpermt2ps zmm29,zmm6,zmm22
  a1078f:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a10795:	62 42 55 48 7f f0    	vpermt2ps zmm30,zmm5,zmm8
  a1079b:	62 42 4d 48 7f c8    	vpermt2ps zmm25,zmm6,zmm8
  a107a1:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a107a7:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a107ad:	62 42 4d 48 7f e1    	vpermt2ps zmm28,zmm6,zmm9
  a107b3:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a107b9:	62 52 55 48 7f cb    	vpermt2ps zmm9,zmm5,zmm11
  a107bf:	62 c2 4d 48 7f fb    	vpermt2ps zmm23,zmm6,zmm11
  a107c5:	62 71 7c 48 10 59 08 	vmovups zmm11,ZMMWORD PTR [rcx+0x200]
  a107cc:	62 61 7c 48 10 79 09 	vmovups zmm31,ZMMWORD PTR [rcx+0x240]
  a107d3:	62 41 3c 40 59 d3    	vmulps zmm26,zmm24,zmm11
  a107d9:	62 02 3d 48 bc d7    	vfnmadd231ps zmm26,zmm8,zmm31
  a107df:	62 41 3c 48 59 db    	vmulps zmm27,zmm8,zmm11
  a107e5:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a107ec:	62 02 05 40 b8 d8    	vfmadd231ps zmm27,zmm31,zmm24
  a107f2:	62 71 7c 48 10 59 05 	vmovups zmm11,ZMMWORD PTR [rcx+0x140]
  a107f9:	62 41 5c 40 59 c0    	vmulps zmm24,zmm20,zmm8
  a107ff:	62 42 0d 40 bc c3    	vfnmadd231ps zmm24,zmm30,zmm11
  a10805:	62 51 0c 40 59 c0    	vmulps zmm8,zmm30,zmm8
  a1080b:	62 61 7c 48 10 71 0c 	vmovups zmm30,ZMMWORD PTR [rcx+0x300]
  a10812:	62 32 25 48 b8 c4    	vfmadd231ps zmm8,zmm11,zmm20
  a10818:	62 71 7c 48 10 59 0d 	vmovups zmm11,ZMMWORD PTR [rcx+0x340]
  a1081f:	62 81 54 40 59 e6    	vmulps zmm20,zmm21,zmm30
  a10825:	62 c2 35 48 bc e3    	vfnmadd231ps zmm20,zmm9,zmm11
  a1082b:	62 11 34 48 59 ce    	vmulps zmm9,zmm9,zmm30
  a10831:	62 61 7c 48 10 71 02 	vmovups zmm30,ZMMWORD PTR [rcx+0x80]
  a10838:	62 32 25 48 b8 cd    	vfmadd231ps zmm9,zmm11,zmm21
  a1083e:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a10845:	62 81 6c 40 59 ee    	vmulps zmm21,zmm18,zmm30
  a1084b:	62 c2 15 40 bc eb    	vfnmadd231ps zmm21,zmm29,zmm11
  a10851:	62 01 14 40 59 ee    	vmulps zmm29,zmm29,zmm30
  a10857:	62 61 7c 48 10 71 0a 	vmovups zmm30,ZMMWORD PTR [rcx+0x280]
  a1085e:	62 22 25 48 b8 ea    	vfmadd231ps zmm29,zmm11,zmm18
  a10864:	62 71 7c 48 10 59 0b 	vmovups zmm11,ZMMWORD PTR [rcx+0x2c0]
  a1086b:	62 81 74 40 59 d6    	vmulps zmm18,zmm17,zmm30
  a10871:	62 c2 1d 40 bc d3    	vfnmadd231ps zmm18,zmm28,zmm11
  a10877:	62 01 1c 40 59 e6    	vmulps zmm28,zmm28,zmm30
  a1087d:	62 61 7c 48 10 71 06 	vmovups zmm30,ZMMWORD PTR [rcx+0x180]
  a10884:	62 22 25 48 b8 e1    	vfmadd231ps zmm28,zmm11,zmm17
  a1088a:	62 71 7c 48 10 59 07 	vmovups zmm11,ZMMWORD PTR [rcx+0x1c0]
  a10891:	62 81 7c 40 59 ce    	vmulps zmm17,zmm16,zmm30
  a10897:	62 c2 35 40 bc cb    	vfnmadd231ps zmm17,zmm25,zmm11
  a1089d:	62 01 34 40 59 ce    	vmulps zmm25,zmm25,zmm30
  a108a3:	62 61 7c 48 10 71 0e 	vmovups zmm30,ZMMWORD PTR [rcx+0x380]
  a108aa:	62 22 25 48 b8 c8    	vfmadd231ps zmm25,zmm11,zmm16
  a108b0:	62 71 7c 48 10 59 0f 	vmovups zmm11,ZMMWORD PTR [rcx+0x3c0]
  a108b7:	62 81 04 48 59 c6    	vmulps zmm16,zmm15,zmm30
  a108bd:	62 c2 45 40 bc c3    	vfnmadd231ps zmm16,zmm23,zmm11
  a108c3:	62 81 44 40 59 fe    	vmulps zmm23,zmm23,zmm30
  a108c9:	62 c2 25 48 b8 ff    	vfmadd231ps zmm23,zmm11,zmm15
  a108cf:	62 52 55 48 7f f5    	vpermt2ps zmm14,zmm5,zmm13
  a108d5:	62 a2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm22
  a108db:	62 11 0c 48 58 da    	vaddps zmm11,zmm14,zmm26
  a108e1:	62 11 0c 48 5c ea    	vsubps zmm13,zmm14,zmm26
  a108e7:	62 51 3c 48 58 f1    	vaddps zmm14,zmm8,zmm9
  a108ed:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a108f3:	62 31 54 40 58 ca    	vaddps zmm9,zmm21,zmm18
  a108f9:	62 31 54 40 5c fa    	vsubps zmm15,zmm21,zmm18
  a108ff:	62 81 14 40 58 d4    	vaddps zmm18,zmm29,zmm28
  a10905:	62 81 14 40 5c ec    	vsubps zmm21,zmm29,zmm28
  a1090b:	62 a1 34 40 58 f7    	vaddps zmm22,zmm25,zmm23
  a10911:	62 a1 34 40 5c ff    	vsubps zmm23,zmm25,zmm23
  a10917:	62 21 74 40 58 c8    	vaddps zmm25,zmm17,zmm16
  a1091d:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a10923:	62 a1 24 40 58 cb    	vaddps zmm17,zmm27,zmm19
  a10929:	62 81 64 40 5c db    	vsubps zmm19,zmm19,zmm27
  a1092f:	62 21 3c 40 58 d4    	vaddps zmm26,zmm24,zmm20
  a10935:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a1093b:	62 21 04 48 58 c5    	vaddps zmm24,zmm15,zmm21
  a10941:	62 51 54 40 5c ff    	vsubps zmm15,zmm21,zmm15
  a10947:	62 a1 44 40 5c e8    	vsubps zmm21,zmm23,zmm16
  a1094d:	62 a1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm23
  a10953:	62 81 24 48 58 fa    	vaddps zmm23,zmm11,zmm26
  a10959:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a1095f:	62 21 6c 40 58 d6    	vaddps zmm26,zmm18,zmm22
  a10965:	62 a1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm22
  a1096b:	62 a1 0c 48 58 f1    	vaddps zmm22,zmm14,zmm17
  a10971:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a10977:	62 81 34 48 58 c9    	vaddps zmm17,zmm9,zmm25
  a1097d:	62 51 34 40 5c c9    	vsubps zmm9,zmm25,zmm9
  a10983:	62 41 14 48 58 c8    	vaddps zmm25,zmm13,zmm8
  a10989:	62 f2 7d 48 18 3d 09 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff664a09]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a10990:	4a 66 ff 
  a10993:	62 61 3c 40 59 c7    	vmulps zmm24,zmm24,zmm7
  a10999:	62 e1 54 40 59 ef    	vmulps zmm21,zmm21,zmm7
  a1099f:	62 71 04 48 59 ff    	vmulps zmm15,zmm15,zmm7
  a109a5:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a109ab:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a109b1:	62 31 04 48 5c e8    	vsubps zmm13,zmm15,zmm16
  a109b7:	62 31 04 48 58 f8    	vaddps zmm15,zmm15,zmm16
  a109bd:	62 a1 5c 40 58 c3    	vaddps zmm16,zmm20,zmm19
  a109c3:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a109c9:	62 a1 3c 40 58 e5    	vaddps zmm20,zmm24,zmm21
  a109cf:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a109d5:	62 21 34 40 58 c4    	vaddps zmm24,zmm25,zmm20
  a109db:	62 a1 34 40 5c e4    	vsubps zmm20,zmm25,zmm20
  a109e1:	62 41 7c 40 58 cd    	vaddps zmm25,zmm16,zmm13
  a109e7:	62 51 7c 40 5c ed    	vsubps zmm13,zmm16,zmm13
  a109ed:	62 a1 24 48 58 c2    	vaddps zmm16,zmm11,zmm18
  a109f3:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a109f9:	62 c1 0c 48 58 d1    	vaddps zmm18,zmm14,zmm9
  a109ff:	62 51 0c 48 5c c9    	vsubps zmm9,zmm14,zmm9
  a10a05:	62 51 3c 48 58 f7    	vaddps zmm14,zmm8,zmm15
  a10a0b:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a10a11:	62 31 64 40 58 fd    	vaddps zmm15,zmm19,zmm21
  a10a17:	62 a1 64 40 5c dd    	vsubps zmm19,zmm19,zmm21
  a10a1d:	62 a1 44 40 5c e9    	vsubps zmm21,zmm23,zmm17
  a10a23:	62 a1 44 40 58 c9    	vaddps zmm17,zmm23,zmm17
  a10a29:	62 81 4c 40 5c fa    	vsubps zmm23,zmm22,zmm26
  a10a2f:	62 81 4c 40 58 f2    	vaddps zmm22,zmm22,zmm26
  a10a35:	62 a2 1d 48 7f ce    	vpermt2ps zmm17,zmm12,zmm22
  a10a3b:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm17,0x2
  a10a42:	02 02 
  a10a44:	62 e1 7c 28 11 0c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm17
  a10a4b:	62 02 1d 48 7f c1    	vpermt2ps zmm24,zmm12,zmm25
  a10a51:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm24,0x2
  a10a58:	05 02 
  a10a5a:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm24
  a10a61:	30 00 00 00 
  a10a65:	62 a2 1d 48 7f c2    	vpermt2ps zmm16,zmm12,zmm18
  a10a6b:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm16,0x2
  a10a72:	08 02 
  a10a74:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm16
  a10a7b:	03 
  a10a7c:	62 52 1d 48 7f f7    	vpermt2ps zmm14,zmm12,zmm15
  a10a82:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm14,0x2
  a10a89:	0b 02 
  a10a8b:	c5 7c 11 b4 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm14
  a10a92:	00 00 
  a10a94:	62 a2 1d 48 7f ef    	vpermt2ps zmm21,zmm12,zmm23
  a10a9a:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm21,0x2
  a10aa1:	0e 02 
  a10aa3:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  a10aaa:	06 
  a10aab:	62 c2 1d 48 7f e5    	vpermt2ps zmm20,zmm12,zmm13
  a10ab1:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm20,0x2
  a10ab8:	11 02 
  a10aba:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm20
  a10ac1:	f0 00 00 00 
  a10ac5:	62 52 1d 48 7f d9    	vpermt2ps zmm11,zmm12,zmm9
  a10acb:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm11,0x2
  a10ad2:	14 02 
  a10ad4:	c5 7c 11 9c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm11
  a10adb:	00 00 
  a10add:	62 32 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm19
  a10ae3:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm8,0x2
  a10aea:	17 02 
  a10aec:	c5 7c 11 84 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm8
  a10af3:	00 00 
  a10af5:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a10afc:	48 39 d0             	cmp    rax,rdx
  a10aff:	0f 85 5b f9 ff ff    	jne    a10460 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a10b05:	c5 f8 77             	vzeroupper
  a10b08:	c3                   	ret
