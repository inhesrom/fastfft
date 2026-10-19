
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a47340 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a47340:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a47344:	c5 7c 10 6f 20       	vmovups ymm13,YMMWORD PTR [rdi+0x20]
  a47349:	c5 7c 10 4f 40       	vmovups ymm9,YMMWORD PTR [rdi+0x40]
  a4734e:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  a47353:	62 e1 7c 48 28 0d 63 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff64b163]        # 924c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f970>
  a4735a:	b1 64 ff 
  a4735d:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a47361:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a47367:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a4736d:	62 f1 7c 48 28 25 89 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64b189]        # 92500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f9b0>
  a47374:	b1 64 ff 
  a47377:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a4737d:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a47383:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a47389:	62 72 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm0
  a4738f:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a47395:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a4739b:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a473a1:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a473a7:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a473ad:	62 f2 5d 48 7f d8    	vpermt2ps zmm3,zmm4,zmm0
  a473b3:	62 e1 7c 28 10 5f 04 	vmovups ymm19,YMMWORD PTR [rdi+0x80]
  a473ba:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a473c0:	62 e2 75 40 7f e0    	vpermt2ps zmm20,zmm17,zmm0
  a473c6:	62 e2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm0
  a473cc:	62 e1 7c 28 10 57 05 	vmovups ymm18,YMMWORD PTR [rdi+0xa0]
  a473d3:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a473d9:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a473df:	62 e2 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm0
  a473e5:	c5 7c 10 a7 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0xc0]
  a473ec:	00 
  a473ed:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a473f3:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a473f9:	62 72 5d 48 7f e0    	vpermt2ps zmm12,zmm4,zmm0
  a473ff:	62 e1 7c 28 10 77 07 	vmovups ymm22,YMMWORD PTR [rdi+0xe0]
  a47406:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a4740c:	62 e2 75 40 7f f8    	vpermt2ps zmm23,zmm17,zmm0
  a47412:	62 e2 5d 48 7f f0    	vpermt2ps zmm22,zmm4,zmm0
  a47418:	62 61 7c 28 10 47 08 	vmovups ymm24,YMMWORD PTR [rdi+0x100]
  a4741f:	62 e2 3d 40 77 c8    	vpermi2ps zmm17,zmm24,zmm0
  a47425:	62 62 5d 48 7f c0    	vpermt2ps zmm24,zmm4,zmm0
  a4742b:	62 31 64 40 58 de    	vaddps zmm11,zmm19,zmm22
  a47431:	62 d1 14 48 58 f3    	vaddps zmm6,zmm13,zmm11
  a47437:	62 01 6c 40 58 c8    	vaddps zmm25,zmm18,zmm24
  a4743d:	62 91 34 48 58 f9    	vaddps zmm7,zmm9,zmm25
  a47443:	62 21 5c 40 58 d7    	vaddps zmm26,zmm20,zmm23
  a47449:	62 11 7c 40 58 c2    	vaddps zmm8,zmm16,zmm26
  a4744f:	62 21 54 40 58 d9    	vaddps zmm27,zmm21,zmm17
  a47455:	62 11 04 48 58 d3    	vaddps zmm10,zmm15,zmm27
  a4745b:	62 f2 7d 48 18 25 fb 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62dffb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a47462:	df 62 ff 
  a47465:	62 52 5d 48 bc eb    	vfnmadd231ps zmm13,zmm4,zmm11
  a4746b:	62 72 7d 48 18 1d 5f 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62de5f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a47472:	de 62 ff 
  a47475:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a4747b:	62 c1 5c 40 59 fb    	vmulps zmm23,zmm20,zmm11
  a47481:	62 a1 14 48 58 e7    	vaddps zmm20,zmm13,zmm23
  a47487:	62 82 5d 48 bc c2    	vfnmadd231ps zmm16,zmm4,zmm26
  a4748d:	62 a1 64 40 5c de    	vsubps zmm19,zmm19,zmm22
  a47493:	62 c1 64 40 59 f3    	vmulps zmm22,zmm19,zmm11
  a47499:	62 a1 7c 40 5c de    	vsubps zmm19,zmm16,zmm22
  a4749f:	62 62 7d 48 18 15 bf 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62e1bf]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a474a6:	e1 62 ff 
  a474a9:	62 12 5d 48 bc c9    	vfnmadd231ps zmm9,zmm4,zmm25
  a474af:	62 62 7d 48 18 0d 1f 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62e01f]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a474b6:	e0 62 ff 
  a474b9:	62 a1 54 40 5c e9    	vsubps zmm21,zmm21,zmm17
  a474bf:	62 81 64 40 59 ca    	vmulps zmm17,zmm19,zmm26
  a474c5:	62 82 5d 40 b8 c9    	vfmadd231ps zmm17,zmm20,zmm25
  a474cb:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a474d1:	62 12 5d 48 bc fb    	vfnmadd231ps zmm15,zmm4,zmm27
  a474d7:	62 21 34 48 58 dd    	vaddps zmm27,zmm9,zmm21
  a474dd:	62 81 6c 40 5c d0    	vsubps zmm18,zmm18,zmm24
  a474e3:	62 41 6c 40 59 c3    	vmulps zmm24,zmm18,zmm11
  a474e9:	62 01 04 48 5c e0    	vsubps zmm28,zmm15,zmm24
  a474ef:	62 81 64 40 59 d1    	vmulps zmm18,zmm19,zmm25
  a474f5:	62 62 7d 48 18 0d 19 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62de19]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a474fc:	de 62 ff 
  a474ff:	62 82 5d 40 bc d2    	vfnmadd231ps zmm18,zmm20,zmm26
  a47505:	62 81 1c 40 59 d9    	vmulps zmm19,zmm28,zmm25
  a4750b:	62 62 7d 48 18 15 c7 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62dfc7]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a47512:	df 62 ff 
  a47515:	62 82 25 40 b8 da    	vfmadd231ps zmm19,zmm27,zmm26
  a4751b:	62 81 1c 40 59 e2    	vmulps zmm20,zmm28,zmm26
  a47521:	62 82 35 40 bc e3    	vfnmadd231ps zmm20,zmm25,zmm27
  a47527:	62 a1 14 48 5c ff    	vsubps zmm23,zmm13,zmm23
  a4752d:	62 41 64 48 58 dc    	vaddps zmm27,zmm3,zmm12
  a47533:	62 a1 4c 40 58 c0    	vaddps zmm16,zmm22,zmm16
  a47539:	62 81 74 48 58 f3    	vaddps zmm22,zmm1,zmm27
  a4753f:	62 a1 34 48 5c ed    	vsubps zmm21,zmm9,zmm21
  a47545:	62 71 4c 48 58 ef    	vaddps zmm13,zmm6,zmm7
  a4754b:	62 51 3c 40 58 cf    	vaddps zmm9,zmm24,zmm15
  a47551:	62 11 7c 40 59 f9    	vmulps zmm15,zmm16,zmm25
  a47557:	62 12 45 40 b8 fa    	vfmadd231ps zmm15,zmm23,zmm26
  a4755d:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a47563:	62 62 7d 48 18 05 83 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff62df83]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a4756a:	df 62 ff 
  a4756d:	62 82 45 40 bc c1    	vfnmadd231ps zmm16,zmm23,zmm25
  a47573:	62 81 34 48 59 f8    	vmulps zmm23,zmm9,zmm24
  a47579:	62 62 7d 48 18 0d 75 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62e075]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a47580:	e0 62 ff 
  a47583:	62 82 55 40 bc f9    	vfnmadd231ps zmm23,zmm21,zmm25
  a47589:	62 01 34 48 59 c9    	vmulps zmm25,zmm9,zmm25
  a4758f:	62 51 4c 40 58 cd    	vaddps zmm9,zmm22,zmm13
  a47595:	62 02 55 40 b8 c8    	vfmadd231ps zmm25,zmm21,zmm24
  a4759b:	62 c1 54 48 58 ee    	vaddps zmm21,zmm5,zmm14
  a475a1:	62 21 6c 48 58 c5    	vaddps zmm24,zmm2,zmm21
  a475a7:	62 92 5d 48 bc cb    	vfnmadd231ps zmm1,zmm4,zmm27
  a475ad:	62 41 3c 48 58 d2    	vaddps zmm26,zmm8,zmm10
  a475b3:	62 51 54 48 5c f6    	vsubps zmm14,zmm5,zmm14
  a475b9:	62 91 3c 40 58 ea    	vaddps zmm5,zmm24,zmm26
  a475bf:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a475c5:	62 b2 5d 48 bc d5    	vfnmadd231ps zmm2,zmm4,zmm21
  a475cb:	62 c1 74 48 58 ee    	vaddps zmm21,zmm1,zmm14
  a475d1:	62 d1 64 48 5c dc    	vsubps zmm3,zmm3,zmm12
  a475d7:	62 21 74 40 58 db    	vaddps zmm27,zmm17,zmm19
  a475dd:	62 d1 64 48 59 db    	vmulps zmm3,zmm3,zmm11
  a475e3:	62 51 74 48 5c f6    	vsubps zmm14,zmm1,zmm14
  a475e9:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a475ef:	62 f1 64 48 58 da    	vaddps zmm3,zmm3,zmm2
  a475f5:	62 91 54 40 58 d3    	vaddps zmm2,zmm21,zmm27
  a475fb:	62 32 5d 48 ac ee    	vfnmadd213ps zmm13,zmm4,zmm22
  a47601:	62 a1 6c 40 58 f4    	vaddps zmm22,zmm18,zmm20
  a47607:	62 02 5d 48 ac d0    	vfnmadd213ps zmm26,zmm4,zmm24
  a4760d:	62 b1 1c 48 58 ce    	vaddps zmm1,zmm12,zmm22
  a47613:	62 22 5d 48 ac dd    	vfnmadd213ps zmm27,zmm4,zmm21
  a47619:	62 a1 04 48 58 ef    	vaddps zmm21,zmm15,zmm23
  a4761f:	62 c2 5d 48 ac f4    	vfnmadd213ps zmm22,zmm4,zmm12
  a47625:	62 31 0c 48 58 e5    	vaddps zmm12,zmm14,zmm21
  a4762b:	62 c2 5d 48 ac ee    	vfnmadd213ps zmm21,zmm4,zmm14
  a47631:	62 11 7c 40 5c f1    	vsubps zmm14,zmm16,zmm25
  a47637:	62 f2 0d 48 ac e3    	vfnmadd213ps zmm4,zmm14,zmm3
  a4763d:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a47643:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a47649:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a4764f:	62 b1 6c 40 5c fc    	vsubps zmm7,zmm18,zmm20
  a47655:	62 31 74 40 5c d3    	vsubps zmm10,zmm17,zmm19
  a4765b:	62 11 7c 40 58 f1    	vaddps zmm14,zmm16,zmm25
  a47661:	62 31 04 48 5c ff    	vsubps zmm15,zmm15,zmm23
  a47667:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a4766d:	62 c1 4c 48 59 c3    	vmulps zmm16,zmm6,zmm11
  a47673:	62 c1 44 48 59 cb    	vmulps zmm17,zmm7,zmm11
  a47679:	62 c1 2c 48 59 d3    	vmulps zmm18,zmm10,zmm11
  a4767f:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a47685:	62 c1 04 48 59 db    	vmulps zmm19,zmm15,zmm11
  a4768b:	62 51 14 48 58 d0    	vaddps zmm10,zmm13,zmm8
  a47691:	62 51 14 48 5c e8    	vsubps zmm13,zmm13,zmm8
  a47697:	62 b1 2c 40 5c f0    	vsubps zmm6,zmm26,zmm16
  a4769d:	62 91 7c 40 58 fa    	vaddps zmm7,zmm16,zmm26
  a476a3:	62 a1 24 40 58 c1    	vaddps zmm16,zmm27,zmm17
  a476a9:	62 31 24 40 5c f9    	vsubps zmm15,zmm27,zmm17
  a476af:	62 31 4c 40 5c da    	vsubps zmm11,zmm22,zmm18
  a476b5:	62 31 4c 40 58 c2    	vaddps zmm8,zmm22,zmm18
  a476bb:	62 c1 54 40 58 ce    	vaddps zmm17,zmm21,zmm14
  a476c1:	62 c1 54 40 5c d6    	vsubps zmm18,zmm21,zmm14
  a476c7:	62 31 5c 48 5c f3    	vsubps zmm14,zmm4,zmm19
  a476cd:	62 b1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm19
  a476d3:	62 e1 7c 48 28 1d a3 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff67f8a3]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a476da:	f8 67 ff 
  a476dd:	62 32 65 40 7f ca    	vpermt2ps zmm9,zmm19,zmm18
  a476e3:	62 f2 65 40 7f ec    	vpermt2ps zmm5,zmm19,zmm4
  a476e9:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a476ef:	62 72 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm0
  a476f5:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a476fb:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a47701:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a47707:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a4770d:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a47713:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a47719:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a4771f:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a47725:	62 72 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm0
  a4772b:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a47731:	62 f2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm0
  a47737:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a4773d:	62 f1 7c 48 28 25 b9 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff67f7b9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a47744:	f7 67 ff 
  a47747:	62 32 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm16
  a4774d:	62 b2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm17
  a47753:	62 52 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm13
  a47759:	62 52 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm15
  a4775f:	62 51 b5 48 14 ec    	vunpcklpd zmm13,zmm9,zmm12
  a47765:	62 d1 b5 48 15 c4    	vunpckhpd zmm0,zmm9,zmm12
  a4776b:	62 51 ed 48 14 ca    	vunpcklpd zmm9,zmm2,zmm10
  a47771:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  a47777:	62 d2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm11
  a4777d:	62 d2 5d 48 7f ce    	vpermt2ps zmm1,zmm4,zmm14
  a47783:	62 f2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm7
  a47789:	62 f1 7c 48 28 3d 6d 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67f66d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a47790:	f6 67 ff 
  a47793:	62 d2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm8
  a47799:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a4779f:	62 d2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm9
  a477a5:	62 71 7c 48 28 05 91 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67f691]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a477ac:	f6 67 ff 
  a477af:	62 52 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm9
  a477b5:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a477bb:	62 72 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm2
  a477c1:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a477c7:	62 f1 d5 48 14 d3    	vunpcklpd zmm2,zmm5,zmm3
  a477cd:	62 f1 d5 48 15 db    	vunpckhpd zmm3,zmm5,zmm3
  a477d3:	62 f1 f5 48 14 ee    	vunpcklpd zmm5,zmm1,zmm6
  a477d9:	62 f1 f5 48 15 ce    	vunpckhpd zmm1,zmm1,zmm6
  a477df:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a477e5:	62 f2 45 48 7f f5    	vpermt2ps zmm6,zmm7,zmm5
  a477eb:	62 f2 3d 48 7f d5    	vpermt2ps zmm2,zmm8,zmm5
  a477f1:	62 f2 65 48 77 f9    	vpermi2ps zmm7,zmm3,zmm1
  a477f7:	62 f2 3d 48 7f d9    	vpermt2ps zmm3,zmm8,zmm1
  a477fd:	62 f1 7c 48 10 4a 04 	vmovups zmm1,ZMMWORD PTR [rdx+0x100]
  a47804:	62 f1 7c 48 10 6a 05 	vmovups zmm5,ZMMWORD PTR [rdx+0x140]
  a4780b:	62 71 34 48 59 c1    	vmulps zmm8,zmm9,zmm1
  a47811:	62 72 45 48 bc c5    	vfnmadd231ps zmm8,zmm7,zmm5
  a47817:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a4781d:	62 f1 7c 48 10 7a 02 	vmovups zmm7,ZMMWORD PTR [rdx+0x80]
  a47824:	62 d2 55 48 b8 c9    	vfmadd231ps zmm1,zmm5,zmm9
  a4782a:	62 f1 7c 48 10 6a 03 	vmovups zmm5,ZMMWORD PTR [rdx+0xc0]
  a47831:	62 71 14 48 59 cf    	vmulps zmm9,zmm13,zmm7
  a47837:	62 72 6d 48 bc cd    	vfnmadd231ps zmm9,zmm2,zmm5
  a4783d:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a47843:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a4784a:	62 d2 55 48 b8 d5    	vfmadd231ps zmm2,zmm5,zmm13
  a47850:	62 f1 7c 48 10 6a 07 	vmovups zmm5,ZMMWORD PTR [rdx+0x1c0]
  a47857:	62 71 7c 48 59 d7    	vmulps zmm10,zmm0,zmm7
  a4785d:	62 72 65 48 bc d5    	vfnmadd231ps zmm10,zmm3,zmm5
  a47863:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a47869:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a4786f:	62 d1 5c 48 58 c0    	vaddps zmm0,zmm4,zmm8
  a47875:	62 d1 34 48 58 ea    	vaddps zmm5,zmm9,zmm10
  a4787b:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a47881:	62 f1 6c 48 58 fb    	vaddps zmm7,zmm2,zmm3
  a47887:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a4788d:	62 f1 74 48 58 de    	vaddps zmm3,zmm1,zmm6
  a47893:	62 f1 4c 48 5c c9    	vsubps zmm1,zmm6,zmm1
  a47899:	62 f1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm2
  a4789f:	62 51 2c 48 5c c1    	vsubps zmm8,zmm10,zmm9
  a478a5:	62 51 74 48 58 c8    	vaddps zmm9,zmm1,zmm8
  a478ab:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a478b1:	62 f1 7c 48 5c e5    	vsubps zmm4,zmm0,zmm5
  a478b7:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a478bd:	62 71 64 48 5c c7    	vsubps zmm8,zmm3,zmm7
  a478c3:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a478c9:	62 f1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm5
  a478cf:	62 f1 7c 48 28 2d 67 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff64ac67]        # 92540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f9f0>
  a478d6:	ac 64 ff 
  a478d9:	62 f3 7d 48 19 df 02 	vextractf32x4 xmm7,zmm3,0x2
  a478e0:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a478e6:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a478ec:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a478f3:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  a478f7:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a478fc:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a47903:	62 72 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm6
  a47909:	62 71 7c 48 11 8e 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm9
  a47910:	00 00 00 
  a47913:	62 f3 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm6,0x2
  a4791a:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a4791e:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a47925:	00 
  a47926:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a4792d:	62 72 55 48 7f c4    	vpermt2ps zmm8,zmm5,zmm4
  a47933:	62 71 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm8
  a4793a:	00 00 00 
  a4793d:	62 f3 7d 48 19 e3 02 	vextractf32x4 xmm3,zmm4,0x2
  a47944:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a47948:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a4794f:	00 
  a47950:	62 f2 75 48 77 ea    	vpermi2ps zmm5,zmm1,zmm2
  a47956:	62 f1 7c 48 11 ae d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm5
  a4795d:	00 00 00 
  a47960:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a47967:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a4796e:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a47972:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a47979:	00 
  a4797a:	c5 f8 77             	vzeroupper
  a4797d:	c3                   	ret
