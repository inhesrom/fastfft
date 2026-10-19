
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a46580 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a46580:	62 e1 7c 48 28 15 f6 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff64bdf6]        # 92380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f830>
  a46587:	bd 64 ff 
  a4658a:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a46590:	62 71 7c 48 10 4f 01 	vmovups zmm9,ZMMWORD PTR [rdi+0x40]
  a46597:	62 71 7c 48 10 7f 02 	vmovups zmm15,ZMMWORD PTR [rdi+0x80]
  a4659e:	62 71 7c 48 10 67 03 	vmovups zmm12,ZMMWORD PTR [rdi+0xc0]
  a465a5:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a465a9:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a465af:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a465b5:	62 f1 7c 48 28 2d 01 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff64be01]        # 923c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f870>
  a465bc:	be 64 ff 
  a465bf:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a465c5:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a465cb:	62 e2 6d 40 7f e0    	vpermt2ps zmm20,zmm18,zmm0
  a465d1:	62 72 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm0
  a465d7:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a465dd:	62 72 6d 40 7f f0    	vpermt2ps zmm14,zmm18,zmm0
  a465e3:	62 72 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm0
  a465e9:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a465ef:	62 e2 6d 40 7f c8    	vpermt2ps zmm17,zmm18,zmm0
  a465f5:	62 72 55 48 7f e0    	vpermt2ps zmm12,zmm5,zmm0
  a465fb:	62 e1 7c 48 10 5f 04 	vmovups zmm19,ZMMWORD PTR [rdi+0x100]
  a46602:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a46608:	62 e2 6d 40 7f c0    	vpermt2ps zmm16,zmm18,zmm0
  a4660e:	62 e2 55 48 7f d8    	vpermt2ps zmm19,zmm5,zmm0
  a46614:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a4661b:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a46621:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a46627:	62 f2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm0
  a4662d:	62 e1 7c 48 10 77 06 	vmovups zmm22,ZMMWORD PTR [rdi+0x180]
  a46634:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a4663a:	62 62 6d 40 7f c0    	vpermt2ps zmm24,zmm18,zmm0
  a46640:	62 e2 55 48 7f f0    	vpermt2ps zmm22,zmm5,zmm0
  a46646:	62 e1 7c 48 10 6f 07 	vmovups zmm21,ZMMWORD PTR [rdi+0x1c0]
  a4664d:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a46653:	62 62 6d 40 7f c8    	vpermt2ps zmm25,zmm18,zmm0
  a46659:	62 e2 55 48 7f e8    	vpermt2ps zmm21,zmm5,zmm0
  a4665f:	62 61 7c 48 10 57 08 	vmovups zmm26,ZMMWORD PTR [rdi+0x200]
  a46666:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a4666c:	62 62 6d 40 7f d8    	vpermt2ps zmm27,zmm18,zmm0
  a46672:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a46678:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a4667f:	62 e2 45 40 77 d0    	vpermi2ps zmm18,zmm23,zmm0
  a46685:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a4668b:	62 11 04 48 58 d2    	vaddps zmm10,zmm15,zmm26
  a46691:	62 d1 74 48 58 ea    	vaddps zmm5,zmm1,zmm10
  a46697:	62 b1 64 40 58 f6    	vaddps zmm6,zmm19,zmm22
  a4669d:	62 51 54 40 58 dc    	vaddps zmm11,zmm21,zmm12
  a466a3:	62 d1 5c 48 58 fb    	vaddps zmm7,zmm4,zmm11
  a466a9:	62 51 44 40 58 c1    	vaddps zmm8,zmm23,zmm9
  a466af:	62 11 0c 48 58 eb    	vaddps zmm13,zmm14,zmm27
  a466b5:	62 01 0c 48 5c db    	vsubps zmm27,zmm14,zmm27
  a466bb:	62 11 7c 40 58 f0    	vaddps zmm14,zmm16,zmm24
  a466c1:	62 01 7c 40 5c c0    	vsubps zmm24,zmm16,zmm24
  a466c7:	62 a1 34 40 58 c1    	vaddps zmm16,zmm25,zmm17
  a466cd:	62 21 34 40 5c c9    	vsubps zmm25,zmm25,zmm17
  a466d3:	62 a1 6c 40 58 cc    	vaddps zmm17,zmm18,zmm20
  a466d9:	62 a1 6c 40 5c e4    	vsubps zmm20,zmm18,zmm20
  a466df:	62 e2 7d 48 18 15 ff 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff62efff]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a466e6:	ef 62 ff 
  a466e9:	62 01 04 48 5c d2    	vsubps zmm26,zmm15,zmm26
  a466ef:	62 62 7d 48 18 25 5f 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff62f05f]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a466f6:	f0 62 ff 
  a466f9:	62 a1 64 40 5c f6    	vsubps zmm22,zmm19,zmm22
  a466ff:	62 51 6c 48 58 fd    	vaddps zmm15,zmm2,zmm13
  a46705:	62 c1 54 40 5c ec    	vsubps zmm21,zmm21,zmm12
  a4670b:	62 11 3c 40 59 e4    	vmulps zmm12,zmm24,zmm28
  a46711:	62 c1 44 40 5c f9    	vsubps zmm23,zmm23,zmm9
  a46717:	62 62 7d 48 18 2d 7f 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff62ec7f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a4671e:	ec 62 ff 
  a46721:	62 12 25 40 b8 e5    	vfmadd231ps zmm12,zmm27,zmm29
  a46727:	62 01 24 40 59 dc    	vmulps zmm27,zmm27,zmm28
  a4672d:	62 02 15 40 bc d8    	vfnmadd231ps zmm27,zmm29,zmm24
  a46733:	62 11 5c 40 59 cc    	vmulps zmm9,zmm20,zmm28
  a46739:	62 12 35 40 b8 cd    	vfmadd231ps zmm9,zmm25,zmm29
  a4673f:	62 01 34 40 59 c4    	vmulps zmm24,zmm25,zmm28
  a46745:	62 22 15 40 bc c4    	vfnmadd231ps zmm24,zmm29,zmm20
  a4674b:	62 81 4c 40 59 dc    	vmulps zmm19,zmm22,zmm28
  a46751:	62 82 2d 40 b8 dd    	vfmadd231ps zmm19,zmm26,zmm29
  a46757:	62 81 2c 40 59 e4    	vmulps zmm20,zmm26,zmm28
  a4675d:	62 a2 15 40 bc e6    	vfnmadd231ps zmm20,zmm29,zmm22
  a46763:	62 81 44 40 59 f4    	vmulps zmm22,zmm23,zmm28
  a46769:	62 82 55 40 b8 f5    	vfmadd231ps zmm22,zmm21,zmm29
  a4676f:	62 81 54 40 59 ec    	vmulps zmm21,zmm21,zmm28
  a46775:	62 21 64 48 58 c8    	vaddps zmm25,zmm3,zmm16
  a4677b:	62 82 45 40 bc ed    	vfnmadd231ps zmm21,zmm23,zmm29
  a46781:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a46787:	62 e2 2d 48 a8 f9    	vfmadd213ps zmm23,zmm10,zmm1
  a4678d:	62 62 7d 48 18 15 ad 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62eead]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a46794:	ee 62 ff 
  a46797:	62 d2 2d 40 bc ca    	vfnmadd231ps zmm1,zmm26,zmm10
  a4679d:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a467a3:	62 72 25 48 a8 d4    	vfmadd213ps zmm10,zmm11,zmm4
  a467a9:	62 d2 2d 40 bc e3    	vfnmadd231ps zmm4,zmm26,zmm11
  a467af:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a467b5:	62 72 15 48 a8 da    	vfmadd213ps zmm11,zmm13,zmm2
  a467bb:	62 d2 2d 40 bc d5    	vfnmadd231ps zmm2,zmm26,zmm13
  a467c1:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a467c7:	62 72 7d 40 a8 eb    	vfmadd213ps zmm13,zmm16,zmm3
  a467cd:	62 92 7d 40 bc da    	vfnmadd231ps zmm3,zmm16,zmm26
  a467d3:	62 82 4d 48 bc fa    	vfnmadd231ps zmm23,zmm6,zmm26
  a467d9:	62 12 3d 48 bc d2    	vfnmadd231ps zmm10,zmm8,zmm26
  a467df:	62 12 0d 48 bc da    	vfnmadd231ps zmm11,zmm14,zmm26
  a467e5:	62 12 75 40 bc ea    	vfnmadd231ps zmm13,zmm17,zmm26
  a467eb:	62 f1 54 48 58 ee    	vaddps zmm5,zmm5,zmm6
  a467f1:	62 f2 6d 40 b8 ce    	vfmadd231ps zmm1,zmm18,zmm6
  a467f7:	62 d1 44 48 58 f0    	vaddps zmm6,zmm7,zmm8
  a467fd:	62 d2 6d 40 b8 e0    	vfmadd231ps zmm4,zmm18,zmm8
  a46803:	62 d1 04 48 58 fe    	vaddps zmm7,zmm15,zmm14
  a46809:	62 d2 6d 40 b8 d6    	vfmadd231ps zmm2,zmm18,zmm14
  a4680f:	62 b2 75 40 b8 da    	vfmadd231ps zmm3,zmm17,zmm18
  a46815:	62 31 34 40 58 c1    	vaddps zmm8,zmm25,zmm17
  a4681b:	62 11 74 48 58 f3    	vaddps zmm14,zmm1,zmm27
  a46821:	62 11 74 48 5c fb    	vsubps zmm15,zmm1,zmm27
  a46827:	62 81 5c 48 58 c0    	vaddps zmm16,zmm4,zmm24
  a4682d:	62 91 5c 48 5c e0    	vsubps zmm4,zmm4,zmm24
  a46833:	62 a1 6c 48 5c cc    	vsubps zmm17,zmm2,zmm20
  a46839:	62 e1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm2
  a4683f:	62 a1 64 48 5c e5    	vsubps zmm20,zmm3,zmm21
  a46845:	62 e1 54 40 58 eb    	vaddps zmm21,zmm21,zmm3
  a4684b:	62 d1 44 40 58 d4    	vaddps zmm2,zmm23,zmm12
  a46851:	62 c1 44 40 5c fc    	vsubps zmm23,zmm23,zmm12
  a46857:	62 d1 2c 48 58 d9    	vaddps zmm3,zmm10,zmm9
  a4685d:	62 41 2c 48 5c c1    	vsubps zmm24,zmm10,zmm9
  a46863:	62 31 24 48 5c d3    	vsubps zmm10,zmm11,zmm19
  a46869:	62 41 64 40 58 cb    	vaddps zmm25,zmm19,zmm11
  a4686f:	62 a1 14 48 5c de    	vsubps zmm19,zmm13,zmm22
  a46875:	62 c1 4c 40 58 f5    	vaddps zmm22,zmm22,zmm13
  a4687b:	62 71 54 48 58 de    	vaddps zmm11,zmm5,zmm6
  a46881:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a46887:	62 d1 44 48 58 c8    	vaddps zmm1,zmm7,zmm8
  a4688d:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a46893:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a46899:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a4689f:	62 b1 2c 48 5c d3    	vsubps zmm2,zmm10,zmm19
  a468a5:	62 31 2c 48 58 d3    	vaddps zmm10,zmm10,zmm19
  a468ab:	62 31 0c 48 58 e8    	vaddps zmm13,zmm14,zmm16
  a468b1:	62 31 0c 48 5c c0    	vsubps zmm8,zmm14,zmm16
  a468b7:	62 b1 74 40 58 dc    	vaddps zmm3,zmm17,zmm20
  a468bd:	62 b1 74 40 5c fc    	vsubps zmm7,zmm17,zmm20
  a468c3:	62 71 04 48 5c f4    	vsubps zmm14,zmm15,zmm4
  a468c9:	62 e1 04 48 58 e4    	vaddps zmm20,zmm15,zmm4
  a468cf:	62 b1 6c 40 5c e5    	vsubps zmm4,zmm18,zmm21
  a468d5:	62 a1 6c 40 58 dd    	vaddps zmm19,zmm18,zmm21
  a468db:	62 81 44 40 58 c0    	vaddps zmm16,zmm23,zmm24
  a468e1:	62 81 44 40 5c e8    	vsubps zmm21,zmm23,zmm24
  a468e7:	62 31 34 40 58 fe    	vaddps zmm15,zmm25,zmm22
  a468ed:	62 a1 34 40 5c d6    	vsubps zmm18,zmm25,zmm22
  a468f3:	62 e1 7c 48 28 0d 83 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff680683]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a468fa:	06 68 ff 
  a468fd:	62 32 75 40 7f dc    	vpermt2ps zmm11,zmm17,zmm20
  a46903:	62 32 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm21
  a46909:	62 b2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm19
  a4690f:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a46915:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a4691b:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a46921:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a46927:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a4692d:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a46933:	62 b2 75 40 7f d2    	vpermt2ps zmm2,zmm17,zmm18
  a46939:	62 e1 7c 48 28 15 bd 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6805bd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a46940:	05 68 ff 
  a46943:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a46949:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a4694f:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a46955:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a4695b:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a46961:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a46967:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a4696d:	62 b2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm16
  a46973:	62 e1 7c 48 28 0d c3 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6805c3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4697a:	05 68 ff 
  a4697d:	62 32 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm16
  a46983:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a46989:	62 e2 6d 40 7f c5    	vpermt2ps zmm16,zmm18,zmm5
  a4698f:	62 72 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm5
  a46995:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a4699b:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a469a1:	62 72 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm6
  a469a7:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a469ad:	62 d2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm8
  a469b3:	62 52 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm8
  a469b9:	62 71 fd 48 14 c5    	vunpcklpd zmm8,zmm0,zmm5
  a469bf:	62 f1 fd 48 15 ed    	vunpckhpd zmm5,zmm0,zmm5
  a469c5:	62 e1 fd 40 14 de    	vunpcklpd zmm19,zmm16,zmm6
  a469cb:	62 e1 fd 40 15 c6    	vunpckhpd zmm16,zmm16,zmm6
  a469d1:	62 d1 a5 48 14 f5    	vunpcklpd zmm6,zmm11,zmm13
  a469d7:	62 d1 a5 48 15 c5    	vunpckhpd zmm0,zmm11,zmm13
  a469dd:	62 51 9d 48 14 de    	vunpcklpd zmm11,zmm12,zmm14
  a469e3:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  a469e9:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a469ef:	62 c2 6d 40 7f e7    	vpermt2ps zmm20,zmm18,zmm15
  a469f5:	62 d2 75 40 7f cf    	vpermt2ps zmm1,zmm17,zmm15
  a469fb:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a46a01:	62 c2 6d 40 7f e9    	vpermt2ps zmm21,zmm18,zmm9
  a46a07:	62 d2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm9
  a46a0d:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a46a13:	62 52 6d 40 7f ca    	vpermt2ps zmm9,zmm18,zmm10
  a46a19:	62 d2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm10
  a46a1f:	62 71 7c 48 28 15 d7 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6803d7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a46a26:	03 68 ff 
  a46a29:	62 e2 5d 48 77 d7    	vpermi2ps zmm18,zmm4,zmm7
  a46a2f:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a46a35:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a46a3b:	62 b2 2d 48 7f fb    	vpermt2ps zmm7,zmm10,zmm19
  a46a41:	62 e1 7c 48 28 0d f5 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6803f5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a46a48:	03 68 ff 
  a46a4b:	62 32 75 40 7f c3    	vpermt2ps zmm8,zmm17,zmm19
  a46a51:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a46a57:	62 32 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm16
  a46a5d:	62 b2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm16
  a46a63:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a46a69:	62 52 2d 48 7f fb    	vpermt2ps zmm15,zmm10,zmm11
  a46a6f:	62 d2 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm11
  a46a75:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a46a7b:	62 52 2d 48 7f ec    	vpermt2ps zmm13,zmm10,zmm12
  a46a81:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a46a87:	62 51 dd 40 14 e1    	vunpcklpd zmm12,zmm20,zmm9
  a46a8d:	62 51 dd 40 15 c9    	vunpckhpd zmm9,zmm20,zmm9
  a46a93:	62 a1 d5 40 14 c2    	vunpcklpd zmm16,zmm21,zmm18
  a46a99:	62 a1 d5 40 15 d2    	vunpckhpd zmm18,zmm21,zmm18
  a46a9f:	62 71 f5 48 14 db    	vunpcklpd zmm11,zmm1,zmm3
  a46aa5:	62 f1 f5 48 15 db    	vunpckhpd zmm3,zmm1,zmm3
  a46aab:	62 e1 ed 48 14 dc    	vunpcklpd zmm19,zmm2,zmm4
  a46ab1:	62 f1 ed 48 15 d4    	vunpckhpd zmm2,zmm2,zmm4
  a46ab7:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a46abd:	62 b2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm16
  a46ac3:	62 32 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm16
  a46ac9:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a46acf:	62 a2 2d 48 7f c2    	vpermt2ps zmm16,zmm10,zmm18
  a46ad5:	62 32 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm18
  a46adb:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a46ae1:	62 b2 2d 48 7f e3    	vpermt2ps zmm4,zmm10,zmm19
  a46ae7:	62 32 75 40 7f db    	vpermt2ps zmm11,zmm17,zmm19
  a46aed:	62 72 65 48 77 d2    	vpermi2ps zmm10,zmm3,zmm2
  a46af3:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a46af9:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a46b00:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a46b07:	62 b1 04 48 59 d1    	vmulps zmm2,zmm15,zmm17
  a46b0d:	62 b2 5d 48 bc d2    	vfnmadd231ps zmm2,zmm4,zmm18
  a46b13:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a46b19:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a46b20:	62 d2 6d 40 b8 e7    	vfmadd231ps zmm4,zmm18,zmm15
  a46b26:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a46b2d:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a46b33:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a46b39:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a46b3f:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a46b46:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a46b4c:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a46b53:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a46b59:	62 c2 2d 48 bc d6    	vfnmadd231ps zmm18,zmm10,zmm14
  a46b5f:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a46b65:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a46b6c:	62 52 0d 48 b8 d5    	vfmadd231ps zmm10,zmm14,zmm13
  a46b72:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a46b79:	62 31 3c 48 59 f1    	vmulps zmm14,zmm8,zmm17
  a46b7f:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a46b85:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a46b8b:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a46b92:	62 52 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm8
  a46b98:	62 71 7c 48 10 42 0b 	vmovups zmm8,ZMMWORD PTR [rdx+0x2c0]
  a46b9f:	62 31 4c 48 59 e9    	vmulps zmm13,zmm6,zmm17
  a46ba5:	62 52 25 48 bc e8    	vfnmadd231ps zmm13,zmm11,zmm8
  a46bab:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a46bb1:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a46bb8:	62 72 3d 48 b8 de    	vfmadd231ps zmm11,zmm8,zmm6
  a46bbe:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a46bc5:	62 31 54 48 59 c1    	vmulps zmm8,zmm5,zmm17
  a46bcb:	62 72 35 48 bc c6    	vfnmadd231ps zmm8,zmm9,zmm6
  a46bd1:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a46bd7:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a46bde:	62 72 4d 48 b8 cd    	vfmadd231ps zmm9,zmm6,zmm5
  a46be4:	62 f1 7c 48 10 6a 0f 	vmovups zmm5,ZMMWORD PTR [rdx+0x3c0]
  a46beb:	62 b1 7c 48 59 f1    	vmulps zmm6,zmm0,zmm17
  a46bf1:	62 f2 65 48 bc f5    	vfnmadd231ps zmm6,zmm3,zmm5
  a46bf7:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a46bfd:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a46c03:	62 f1 44 48 58 c2    	vaddps zmm0,zmm7,zmm2
  a46c09:	62 b1 04 48 58 ea    	vaddps zmm5,zmm15,zmm18
  a46c0f:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a46c15:	62 d1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm10
  a46c1b:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a46c21:	62 c1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm13
  a46c27:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a46c2d:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a46c33:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a46c39:	62 71 34 48 58 e3    	vaddps zmm12,zmm9,zmm3
  a46c3f:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a46c45:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a46c4b:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a46c51:	62 71 5c 48 58 c1    	vaddps zmm8,zmm4,zmm1
  a46c57:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a46c5d:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  a46c63:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a46c69:	62 c1 14 48 58 cb    	vaddps zmm17,zmm13,zmm11
  a46c6f:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a46c75:	62 71 64 48 5c ee    	vsubps zmm13,zmm3,zmm6
  a46c7b:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a46c81:	62 f2 7d 48 18 35 11 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff62e711]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a46c88:	e7 62 ff 
  a46c8b:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a46c91:	62 71 14 48 59 ee    	vmulps zmm13,zmm13,zmm6
  a46c97:	62 71 24 48 59 de    	vmulps zmm11,zmm11,zmm6
  a46c9d:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a46ca3:	62 d1 7c 40 58 f1    	vaddps zmm6,zmm16,zmm9
  a46ca9:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a46caf:	62 d1 0c 48 58 ec    	vaddps zmm5,zmm14,zmm12
  a46cb5:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a46cbb:	62 51 44 48 58 f0    	vaddps zmm14,zmm7,zmm8
  a46cc1:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a46cc7:	62 51 6c 48 58 c2    	vaddps zmm8,zmm2,zmm10
  a46ccd:	62 31 34 48 5c c8    	vsubps zmm9,zmm9,zmm16
  a46cd3:	62 c1 74 40 58 c5    	vaddps zmm16,zmm17,zmm13
  a46cd9:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a46cdf:	62 71 24 48 5c d3    	vsubps zmm10,zmm11,zmm3
  a46ce5:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a46ceb:	62 71 04 48 58 d9    	vaddps zmm11,zmm15,zmm1
  a46cf1:	62 d1 74 48 5c cf    	vsubps zmm1,zmm1,zmm15
  a46cf7:	62 31 3c 48 58 f8    	vaddps zmm15,zmm8,zmm16
  a46cfd:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a46d03:	62 c1 24 48 58 ca    	vaddps zmm17,zmm11,zmm10
  a46d09:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a46d0f:	62 c1 7c 48 58 c4    	vaddps zmm16,zmm0,zmm12
  a46d15:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a46d1b:	62 51 44 48 58 d9    	vaddps zmm11,zmm7,zmm9
  a46d21:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a46d27:	62 71 6c 48 58 e3    	vaddps zmm12,zmm2,zmm3
  a46d2d:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a46d33:	62 51 74 48 58 cd    	vaddps zmm9,zmm1,zmm13
  a46d39:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a46d3f:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a46d45:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a46d4b:	62 71 0c 48 5c ed    	vsubps zmm13,zmm14,zmm5
  a46d51:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a46d57:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a46d5d:	62 f1 7c 48 28 35 99 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff64b699]        # 92400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f8b0>
  a46d64:	b6 64 ff 
  a46d67:	62 d3 7d 48 19 ee 02 	vextractf32x4 xmm14,zmm5,0x2
  a46d6e:	62 f2 4d 48 7f ec    	vpermt2ps zmm5,zmm6,zmm4
  a46d74:	62 f1 7c 48 11 2e    	vmovups ZMMWORD PTR [rsi],zmm5
  a46d7a:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a46d81:	c5 88 14 e4          	vunpcklps xmm4,xmm14,xmm4
  a46d85:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  a46d8a:	62 e3 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm17,0x2
  a46d91:	62 c2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm15
  a46d97:	62 e1 7c 48 11 8e 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm17
  a46d9e:	00 00 00 
  a46da1:	62 73 7d 48 19 fd 02 	vextractf32x4 xmm5,zmm15,0x2
  a46da8:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a46dac:	c5 f8 11 a6 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm4
  a46db3:	00 
  a46db4:	62 73 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm11,0x2
  a46dbb:	62 32 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm16
  a46dc1:	62 71 7c 48 11 9e a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm11
  a46dc8:	00 00 00 
  a46dcb:	62 e3 7d 48 19 c5 02 	vextractf32x4 xmm5,zmm16,0x2
  a46dd2:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a46dd6:	c5 f8 11 a6 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm4
  a46ddd:	00 
  a46dde:	62 73 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm9,0x2
  a46de5:	62 52 4d 48 7f cc    	vpermt2ps zmm9,zmm6,zmm12
  a46deb:	62 71 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm9
  a46df2:	00 00 00 
  a46df5:	62 73 7d 48 19 e5 02 	vextractf32x4 xmm5,zmm12,0x2
  a46dfc:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a46e00:	c5 f8 11 a6 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm4
  a46e07:	00 
  a46e08:	62 73 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm13,0x2
  a46e0f:	62 72 4d 48 7f eb    	vpermt2ps zmm13,zmm6,zmm3
  a46e15:	62 71 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm13
  a46e1c:	62 f3 7d 48 19 db 02 	vextractf32x4 xmm3,zmm3,0x2
  a46e23:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  a46e27:	c5 f8 11 9e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm3
  a46e2e:	00 
  a46e2f:	62 73 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm10,0x2
  a46e36:	62 52 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm8
  a46e3c:	62 71 7c 48 11 96 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm10
  a46e43:	01 00 00 
  a46e46:	62 73 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm8,0x2
  a46e4d:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  a46e51:	c5 f8 11 9e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm3
  a46e58:	00 
  a46e59:	62 f3 7d 48 19 fb 02 	vextractf32x4 xmm3,zmm7,0x2
  a46e60:	62 f2 4d 48 7f f8    	vpermt2ps zmm7,zmm6,zmm0
  a46e66:	62 f1 7c 48 11 be e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm7
  a46e6d:	01 00 00 
  a46e70:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a46e77:	c5 e0 14 c0          	vunpcklps xmm0,xmm3,xmm0
  a46e7b:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a46e82:	00 
  a46e83:	62 f2 75 48 77 f2    	vpermi2ps zmm6,zmm1,zmm2
  a46e89:	62 f1 7c 48 11 b6 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm6
  a46e90:	02 00 00 
  a46e93:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a46e9a:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a46ea1:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a46ea5:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a46eac:	00 
  a46ead:	c5 f8 77             	vzeroupper
  a46eb0:	c3                   	ret
