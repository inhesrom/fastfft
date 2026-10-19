
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2a700 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2a700:	55                   	push   rbp
  a2a701:	48 89 e5             	mov    rbp,rsp
  a2a704:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2a708:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a2a70f:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a2a716:	00 
  a2a717:	48 8d 84 24 00 02 00 	lea    rax,[rsp+0x200]
  a2a71e:	00 
  a2a71f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a2a724:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a2a729:	62 71 7c 48 28 05 0d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff665f0d]        # 90640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1daf0>
  a2a730:	5f 66 ff 
  a2a733:	62 f1 7c 48 10 37    	vmovups zmm6,ZMMWORD PTR [rdi]
  a2a739:	62 f1 7c 48 10 67 01 	vmovups zmm4,ZMMWORD PTR [rdi+0x40]
  a2a740:	62 71 7c 48 10 4f 02 	vmovups zmm9,ZMMWORD PTR [rdi+0x80]
  a2a747:	62 f1 7c 48 10 47 03 	vmovups zmm0,ZMMWORD PTR [rdi+0xc0]
  a2a74e:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a2a752:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a2a758:	62 e2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm5
  a2a75e:	62 f1 7c 48 28 1d 18 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff665f18]        # 90680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1db30>
  a2a765:	5f 66 ff 
  a2a768:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  a2a76e:	62 71 7c 48 28 f4    	vmovaps zmm14,zmm4
  a2a774:	62 72 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm5
  a2a77a:	62 f2 65 48 7f e5    	vpermt2ps zmm4,zmm3,zmm5
  a2a780:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a2a786:	62 f2 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm5
  a2a78c:	62 72 65 48 7f cd    	vpermt2ps zmm9,zmm3,zmm5
  a2a792:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a2a798:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a2a79e:	62 f2 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm5
  a2a7a4:	62 e1 7c 48 10 4f 04 	vmovups zmm17,ZMMWORD PTR [rdi+0x100]
  a2a7ab:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a2a7b1:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a2a7b7:	62 e2 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm5
  a2a7bd:	62 71 7c 48 10 5f 05 	vmovups zmm11,ZMMWORD PTR [rdi+0x140]
  a2a7c4:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a2a7ca:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a2a7d0:	62 72 65 48 7f dd    	vpermt2ps zmm11,zmm3,zmm5
  a2a7d6:	62 e1 7c 48 10 77 06 	vmovups zmm22,ZMMWORD PTR [rdi+0x180]
  a2a7dd:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a2a7e3:	62 72 3d 48 7f d5    	vpermt2ps zmm10,zmm8,zmm5
  a2a7e9:	62 e2 65 48 7f f5    	vpermt2ps zmm22,zmm3,zmm5
  a2a7ef:	62 e1 7c 48 10 5f 07 	vmovups zmm19,ZMMWORD PTR [rdi+0x1c0]
  a2a7f6:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a2a7fc:	62 e2 3d 48 7f e5    	vpermt2ps zmm20,zmm8,zmm5
  a2a802:	62 e2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm5
  a2a808:	62 e1 7c 48 10 7f 08 	vmovups zmm23,ZMMWORD PTR [rdi+0x200]
  a2a80f:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a2a815:	62 62 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm5
  a2a81b:	62 e2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm5
  a2a821:	62 71 7c 48 10 7f 09 	vmovups zmm15,ZMMWORD PTR [rdi+0x240]
  a2a828:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a2a82e:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a2a834:	62 72 65 48 7f fd    	vpermt2ps zmm15,zmm3,zmm5
  a2a83a:	62 61 7c 48 10 57 0a 	vmovups zmm26,ZMMWORD PTR [rdi+0x280]
  a2a841:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a2a847:	62 62 3d 48 7f dd    	vpermt2ps zmm27,zmm8,zmm5
  a2a84d:	62 62 65 48 7f d5    	vpermt2ps zmm26,zmm3,zmm5
  a2a853:	62 61 7c 48 10 67 0b 	vmovups zmm28,ZMMWORD PTR [rdi+0x2c0]
  a2a85a:	62 72 1d 40 77 c5    	vpermi2ps zmm8,zmm28,zmm5
  a2a860:	62 62 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm5
  a2a866:	62 b1 4c 48 58 ce    	vaddps zmm1,zmm6,zmm22
  a2a86c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a2a873:	01 
  a2a874:	62 c1 7c 48 58 d7    	vaddps zmm18,zmm0,zmm15
  a2a87a:	62 b1 74 48 58 ca    	vaddps zmm1,zmm1,zmm18
  a2a880:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2a887:	03 
  a2a888:	62 01 74 40 58 ea    	vaddps zmm29,zmm17,zmm26
  a2a88e:	62 61 64 40 58 f4    	vaddps zmm30,zmm19,zmm4
  a2a894:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a2a89a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a2a8a1:	04 
  a2a8a2:	62 41 44 40 58 f9    	vaddps zmm31,zmm23,zmm9
  a2a8a8:	62 81 74 40 5c ca    	vsubps zmm17,zmm17,zmm26
  a2a8ae:	62 41 5c 40 58 d6    	vaddps zmm26,zmm20,zmm14
  a2a8b4:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a2a8ba:	62 d1 1c 40 58 cb    	vaddps zmm1,zmm28,zmm11
  a2a8c0:	62 c1 44 40 5c e1    	vsubps zmm20,zmm23,zmm9
  a2a8c6:	62 a1 3c 48 58 fd    	vaddps zmm23,zmm8,zmm21
  a2a8cc:	62 31 3c 48 5c c5    	vsubps zmm8,zmm8,zmm21
  a2a8d2:	62 c1 7c 40 58 ea    	vaddps zmm21,zmm16,zmm10
  a2a8d8:	62 31 4c 48 5c ce    	vsubps zmm9,zmm6,zmm22
  a2a8de:	62 91 14 48 58 d1    	vaddps zmm2,zmm13,zmm25
  a2a8e4:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a2a8ea:	62 81 1c 48 58 f3    	vaddps zmm22,zmm12,zmm27
  a2a8f0:	62 01 1c 48 5c db    	vsubps zmm27,zmm12,zmm27
  a2a8f6:	62 f1 3c 40 58 f7    	vaddps zmm6,zmm24,zmm7
  a2a8fc:	62 b1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm19
  a2a902:	62 11 5c 48 58 e3    	vaddps zmm12,zmm4,zmm27
  a2a908:	62 f1 3c 40 5c ff    	vsubps zmm7,zmm24,zmm7
  a2a90e:	62 01 24 48 5c c4    	vsubps zmm24,zmm11,zmm28
  a2a914:	62 71 3c 40 58 df    	vaddps zmm11,zmm24,zmm7
  a2a91a:	62 51 1c 48 5c eb    	vsubps zmm13,zmm12,zmm11
  a2a920:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm13
  a2a927:	07 
  a2a928:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a2a92e:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a2a935:	06 
  a2a936:	62 51 74 40 58 e6    	vaddps zmm12,zmm17,zmm14
  a2a93c:	62 51 7c 40 5c ea    	vsubps zmm13,zmm16,zmm10
  a2a942:	62 51 5c 40 58 d0    	vaddps zmm10,zmm20,zmm8
  a2a948:	62 71 04 48 5c f8    	vsubps zmm15,zmm15,zmm0
  a2a94e:	62 41 1c 48 58 e2    	vaddps zmm28,zmm12,zmm10
  a2a954:	62 d1 1c 48 5c c2    	vsubps zmm0,zmm12,zmm10
  a2a95a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a2a961:	05 
  a2a962:	62 71 04 40 58 e1    	vaddps zmm12,zmm31,zmm1
  a2a968:	62 81 14 40 5c de    	vsubps zmm19,zmm29,zmm30
  a2a96e:	62 51 64 48 58 d4    	vaddps zmm10,zmm3,zmm12
  a2a974:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a2a97a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a2a981:	03 
  a2a982:	62 d1 7c 48 58 da    	vaddps zmm3,zmm0,zmm10
  a2a988:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x40]
  a2a98f:	01 
  a2a990:	62 21 24 48 5c ea    	vsubps zmm29,zmm11,zmm18
  a2a996:	62 01 4c 40 58 f2    	vaddps zmm30,zmm22,zmm26
  a2a99c:	62 81 4c 40 5c d2    	vsubps zmm18,zmm22,zmm26
  a2a9a2:	62 21 4c 48 58 d7    	vaddps zmm26,zmm6,zmm23
  a2a9a8:	62 b1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm23
  a2a9ae:	62 71 6c 40 5c de    	vsubps zmm11,zmm18,zmm6
  a2a9b4:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm11
  a2a9bb:	01 
  a2a9bc:	62 e1 6c 40 58 f6    	vaddps zmm22,zmm18,zmm6
  a2a9c2:	62 61 54 40 58 fa    	vaddps zmm31,zmm21,zmm2
  a2a9c8:	62 e1 54 40 5c fa    	vsubps zmm23,zmm21,zmm2
  a2a9ce:	62 f1 64 40 58 f1    	vaddps zmm6,zmm19,zmm1
  a2a9d4:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a2a9da:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a2a9e1:	02 
  a2a9e2:	62 11 34 48 58 d9    	vaddps zmm11,zmm9,zmm25
  a2a9e8:	62 11 34 48 5c c9    	vsubps zmm9,zmm9,zmm25
  a2a9ee:	62 81 0c 40 58 da    	vaddps zmm19,zmm30,zmm26
  a2a9f4:	62 c1 74 40 5c ce    	vsubps zmm17,zmm17,zmm14
  a2a9fa:	62 a1 04 40 58 eb    	vaddps zmm21,zmm31,zmm19
  a2aa00:	62 c1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm8
  a2aa06:	62 c1 04 48 58 c5    	vaddps zmm16,zmm15,zmm13
  a2aa0c:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a2aa12:	62 e2 7d 48 18 15 44 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff64aa44]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2aa19:	aa 64 ff 
  a2aa1c:	62 f1 24 40 5c e4    	vsubps zmm4,zmm27,zmm4
  a2aa22:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a2aa28:	62 01 44 48 5c c0    	vsubps zmm24,zmm7,zmm24
  a2aa2e:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a2aa34:	62 72 6d 40 ac d0    	vfnmadd213ps zmm10,zmm18,zmm0
  a2aa3a:	62 21 74 40 58 dc    	vaddps zmm27,zmm17,zmm20
  a2aa40:	62 82 6d 40 ac df    	vfnmadd213ps zmm19,zmm18,zmm31
  a2aa46:	62 11 34 48 58 c3    	vaddps zmm8,zmm9,zmm27
  a2aa4c:	62 42 6d 40 ac d9    	vfnmadd213ps zmm27,zmm18,zmm9
  a2aa52:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a2aa58:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a2aa5e:	62 91 5c 48 58 f8    	vaddps zmm7,zmm4,zmm24
  a2aa64:	62 c2 45 48 ac d5    	vfnmadd213ps zmm18,zmm7,zmm13
  a2aa6a:	62 f1 14 48 58 ff    	vaddps zmm7,zmm13,zmm7
  a2aa70:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a2aa76:	62 52 1d 40 ac fb    	vfnmadd213ps zmm15,zmm28,zmm11
  a2aa7c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a2aa83:	04 
  a2aa84:	62 41 74 48 5c f4    	vsubps zmm30,zmm1,zmm12
  a2aa8a:	62 72 7d 48 18 2d 40 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff64a840]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2aa91:	a8 64 ff 
  a2aa94:	62 71 14 48 59 4c 24 	vmulps zmm9,zmm13,ZMMWORD PTR [rsp+0x1c0]
  a2aa9b:	07 
  a2aa9c:	62 51 34 48 58 f7    	vaddps zmm14,zmm9,zmm15
  a2aaa2:	62 d1 04 48 5c d1    	vsubps zmm2,zmm15,zmm9
  a2aaa8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a2aaaf:	06 
  a2aab0:	62 22 75 48 ac c8    	vfnmadd213ps zmm25,zmm1,zmm16
  a2aab6:	62 71 14 48 59 64 24 	vmulps zmm12,zmm13,ZMMWORD PTR [rsp+0x140]
  a2aabd:	05 
  a2aabe:	62 51 34 40 5c cc    	vsubps zmm9,zmm25,zmm12
  a2aac4:	62 51 34 40 58 e4    	vaddps zmm12,zmm25,zmm12
  a2aaca:	62 02 4d 48 ac fd    	vfnmadd213ps zmm31,zmm6,zmm29
  a2aad0:	62 f1 14 40 58 f6    	vaddps zmm6,zmm29,zmm6
  a2aad6:	62 b2 4d 40 ac c7    	vfnmadd213ps zmm0,zmm22,zmm23
  a2aadc:	62 21 44 40 58 ee    	vaddps zmm29,zmm23,zmm22
  a2aae2:	62 91 5c 48 5c e0    	vsubps zmm4,zmm4,zmm24
  a2aae8:	62 31 74 40 5c fc    	vsubps zmm15,zmm17,zmm20
  a2aaee:	62 e1 14 48 59 74 24 	vmulps zmm22,zmm13,ZMMWORD PTR [rsp+0x40]
  a2aaf5:	01 
  a2aaf6:	62 e1 14 48 59 7c 24 	vmulps zmm23,zmm13,ZMMWORD PTR [rsp+0x80]
  a2aafd:	02 
  a2aafe:	62 c1 2c 40 59 cd    	vmulps zmm17,zmm26,zmm13
  a2ab04:	62 c1 0c 40 59 e5    	vmulps zmm20,zmm30,zmm13
  a2ab0a:	62 d1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm13
  a2ab10:	62 51 04 48 59 ed    	vmulps zmm13,zmm15,zmm13
  a2ab16:	62 21 2c 48 58 c1    	vaddps zmm24,zmm10,zmm17
  a2ab1c:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a2ab22:	62 a1 64 40 5c cc    	vsubps zmm17,zmm19,zmm20
  a2ab28:	62 a1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm19
  a2ab2e:	62 11 24 48 58 dc    	vaddps zmm11,zmm11,zmm28
  a2ab34:	62 21 04 40 5c d6    	vsubps zmm26,zmm31,zmm22
  a2ab3a:	62 61 7c 40 58 f1    	vaddps zmm30,zmm16,zmm1
  a2ab40:	62 71 44 40 58 f8    	vaddps zmm15,zmm23,zmm0
  a2ab46:	62 a1 04 40 58 f6    	vaddps zmm22,zmm31,zmm22
  a2ab4c:	62 01 5c 48 58 e3    	vaddps zmm28,zmm4,zmm27
  a2ab52:	62 a1 7c 48 5c ff    	vsubps zmm23,zmm0,zmm23
  a2ab58:	62 c1 6c 40 5c c5    	vsubps zmm16,zmm18,zmm13
  a2ab5e:	62 f1 24 40 5c c4    	vsubps zmm0,zmm27,zmm4
  a2ab64:	62 41 6c 40 58 cd    	vaddps zmm25,zmm18,zmm13
  a2ab6a:	62 e1 7c 48 28 1d 0c 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff69c40c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2ab71:	c4 69 ff 
  a2ab74:	62 d2 65 40 7f da    	vpermt2ps zmm3,zmm19,zmm10
  a2ab7a:	62 52 65 40 7f f3    	vpermt2ps zmm14,zmm19,zmm11
  a2ab80:	62 22 65 40 7f d6    	vpermt2ps zmm26,zmm19,zmm22
  a2ab86:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a2ab8c:	62 62 65 40 7f c5    	vpermt2ps zmm24,zmm19,zmm5
  a2ab92:	62 f2 65 40 7f d5    	vpermt2ps zmm2,zmm19,zmm5
  a2ab98:	62 f2 65 40 7f f5    	vpermt2ps zmm6,zmm19,zmm5
  a2ab9e:	62 62 65 40 7f e5    	vpermt2ps zmm28,zmm19,zmm5
  a2aba4:	62 e1 7c 48 28 15 52 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69c352]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2abab:	c3 69 ff 
  a2abae:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a2abb4:	62 92 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm24
  a2abba:	62 e1 7c 48 28 35 7c 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff69c37c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2abc1:	c3 69 ff 
  a2abc4:	62 92 4d 40 7f d8    	vpermt2ps zmm3,zmm22,zmm24
  a2abca:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a2abd0:	62 72 6d 40 7f d2    	vpermt2ps zmm10,zmm18,zmm2
  a2abd6:	62 72 4d 40 7f f2    	vpermt2ps zmm14,zmm22,zmm2
  a2abdc:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a2abe2:	62 f2 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm6
  a2abe8:	62 62 4d 40 7f d6    	vpermt2ps zmm26,zmm22,zmm6
  a2abee:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a2abf4:	62 12 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm28
  a2abfa:	62 12 4d 40 7f c4    	vpermt2ps zmm8,zmm22,zmm28
  a2ac00:	62 f1 fd 48 14 f1    	vunpcklpd zmm6,zmm0,zmm1
  a2ac06:	62 f1 fd 48 15 e1    	vunpckhpd zmm4,zmm0,zmm1
  a2ac0c:	62 d1 ad 48 14 c3    	vunpcklpd zmm0,zmm10,zmm11
  a2ac12:	62 d1 ad 48 15 cb    	vunpckhpd zmm1,zmm10,zmm11
  a2ac18:	62 01 e5 48 14 da    	vunpcklpd zmm27,zmm3,zmm26
  a2ac1e:	62 91 e5 48 15 da    	vunpckhpd zmm3,zmm3,zmm26
  a2ac24:	62 51 8d 48 14 d8    	vunpcklpd zmm11,zmm14,zmm8
  a2ac2a:	62 51 8d 48 15 e8    	vunpckhpd zmm13,zmm14,zmm8
  a2ac30:	62 71 7c 48 28 05 c6 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff69c1c6]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2ac37:	c1 69 ff 
  a2ac3a:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a2ac40:	62 62 3d 48 7f d0    	vpermt2ps zmm26,zmm8,zmm0
  a2ac46:	62 61 7c 48 28 05 f0 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff69c1f0]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2ac4d:	c1 69 ff 
  a2ac50:	62 f2 3d 40 7f f0    	vpermt2ps zmm6,zmm24,zmm0
  a2ac56:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a2ac5c:	62 72 3d 48 7f d1    	vpermt2ps zmm10,zmm8,zmm1
  a2ac62:	62 f2 3d 40 7f e1    	vpermt2ps zmm4,zmm24,zmm1
  a2ac68:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a2ac6e:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  a2ac74:	62 42 3d 40 7f db    	vpermt2ps zmm27,zmm24,zmm11
  a2ac7a:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a2ac80:	62 52 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm13
  a2ac86:	62 d2 3d 40 7f dd    	vpermt2ps zmm3,zmm24,zmm13
  a2ac8c:	62 a2 65 40 7f ec    	vpermt2ps zmm21,zmm19,zmm20
  a2ac92:	62 12 65 40 7f ce    	vpermt2ps zmm9,zmm19,zmm30
  a2ac98:	62 32 65 40 7f ff    	vpermt2ps zmm15,zmm19,zmm23
  a2ac9e:	62 92 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm25
  a2aca4:	62 e2 65 40 7f cd    	vpermt2ps zmm17,zmm19,zmm5
  a2acaa:	62 72 65 40 7f e5    	vpermt2ps zmm12,zmm19,zmm5
  a2acb0:	62 62 65 40 7f ed    	vpermt2ps zmm29,zmm19,zmm5
  a2acb6:	62 e2 65 40 7f c5    	vpermt2ps zmm16,zmm19,zmm5
  a2acbc:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a2acc2:	62 b2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm17
  a2acc8:	62 a2 4d 40 7f e9    	vpermt2ps zmm21,zmm22,zmm17
  a2acce:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a2acd4:	62 d2 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm12
  a2acda:	62 52 4d 40 7f cc    	vpermt2ps zmm9,zmm22,zmm12
  a2ace0:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a2ace6:	62 92 6d 40 7f d5    	vpermt2ps zmm2,zmm18,zmm29
  a2acec:	62 12 4d 40 7f fd    	vpermt2ps zmm15,zmm22,zmm29
  a2acf2:	62 a2 45 48 77 d0    	vpermi2ps zmm18,zmm7,zmm16
  a2acf8:	62 b2 4d 40 7f f8    	vpermt2ps zmm7,zmm22,zmm16
  a2acfe:	62 e1 fd 48 14 ca    	vunpcklpd zmm17,zmm0,zmm2
  a2ad04:	62 71 fd 48 15 ea    	vunpckhpd zmm13,zmm0,zmm2
  a2ad0a:	62 b1 f5 48 14 d2    	vunpcklpd zmm2,zmm1,zmm18
  a2ad10:	62 b1 f5 48 15 ca    	vunpckhpd zmm1,zmm1,zmm18
  a2ad16:	62 c1 d5 40 14 c7    	vunpcklpd zmm16,zmm21,zmm15
  a2ad1c:	62 51 d5 40 15 e7    	vunpckhpd zmm12,zmm21,zmm15
  a2ad22:	62 f1 b5 48 14 ef    	vunpcklpd zmm5,zmm9,zmm7
  a2ad28:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  a2ad2e:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a2ad34:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a2ad3a:	62 e2 3d 40 7f ca    	vpermt2ps zmm17,zmm24,zmm2
  a2ad40:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a2ad46:	62 f2 3d 48 7f d1    	vpermt2ps zmm2,zmm8,zmm1
  a2ad4c:	62 72 3d 40 7f e9    	vpermt2ps zmm13,zmm24,zmm1
  a2ad52:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a2ad58:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a2ad5e:	62 e2 3d 40 7f c5    	vpermt2ps zmm16,zmm24,zmm5
  a2ad64:	62 72 1d 48 77 c7    	vpermi2ps zmm8,zmm12,zmm7
  a2ad6a:	62 72 3d 40 7f e7    	vpermt2ps zmm12,zmm24,zmm7
  a2ad70:	62 e1 7c 48 10 5a 02 	vmovups zmm19,ZMMWORD PTR [rdx+0x80]
  a2ad77:	62 f1 7c 48 10 4a 03 	vmovups zmm1,ZMMWORD PTR [rdx+0xc0]
  a2ad7e:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a2ad85:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a2ad8c:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  a2ad93:	62 71 7c 48 10 4a 07 	vmovups zmm9,ZMMWORD PTR [rdx+0x1c0]
  a2ad9a:	62 e1 7c 48 10 6a 08 	vmovups zmm21,ZMMWORD PTR [rdx+0x200]
  a2ada1:	62 e1 7c 48 10 72 09 	vmovups zmm22,ZMMWORD PTR [rdx+0x240]
  a2ada8:	62 b1 0c 48 59 fd    	vmulps zmm7,zmm14,zmm21
  a2adae:	62 b2 05 48 bc fe    	vfnmadd231ps zmm7,zmm15,zmm22
  a2adb4:	62 31 04 48 59 fd    	vmulps zmm15,zmm15,zmm21
  a2adba:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a2adc1:	62 52 4d 40 b8 fe    	vfmadd231ps zmm15,zmm22,zmm14
  a2adc7:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a2adce:	62 71 2c 48 59 f5    	vmulps zmm14,zmm10,zmm5
  a2add4:	62 32 6d 48 bc f4    	vfnmadd231ps zmm14,zmm2,zmm20
  a2adda:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a2ade0:	62 f1 7c 48 10 6a 0c 	vmovups zmm5,ZMMWORD PTR [rdx+0x300]
  a2ade7:	62 d2 5d 40 b8 d2    	vfmadd231ps zmm2,zmm20,zmm10
  a2aded:	62 e1 7c 48 10 62 0d 	vmovups zmm20,ZMMWORD PTR [rdx+0x340]
  a2adf4:	62 71 24 48 59 d5    	vmulps zmm10,zmm11,zmm5
  a2adfa:	62 32 3d 48 bc d4    	vfnmadd231ps zmm10,zmm8,zmm20
  a2ae00:	62 f1 3c 48 59 ed    	vmulps zmm5,zmm8,zmm5
  a2ae06:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a2ae0d:	62 d2 5d 40 b8 eb    	vfmadd231ps zmm5,zmm20,zmm11
  a2ae13:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a2ae1a:	62 21 4c 48 59 c3    	vmulps zmm24,zmm6,zmm19
  a2ae20:	62 62 75 40 bc c1    	vfnmadd231ps zmm24,zmm17,zmm1
  a2ae26:	62 a1 74 40 59 db    	vmulps zmm19,zmm17,zmm19
  a2ae2c:	62 71 2c 40 58 c7    	vaddps zmm8,zmm26,zmm7
  a2ae32:	62 e2 75 48 b8 de    	vfmadd231ps zmm19,zmm1,zmm6
  a2ae38:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  a2ae3e:	62 b1 24 40 59 f5    	vmulps zmm6,zmm27,zmm21
  a2ae44:	62 b2 7d 40 bc f6    	vfnmadd231ps zmm6,zmm16,zmm22
  a2ae4a:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a2ae50:	62 b1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm17
  a2ae56:	62 82 4d 40 b8 c3    	vfmadd231ps zmm16,zmm22,zmm27
  a2ae5c:	62 71 3c 40 58 de    	vaddps zmm11,zmm24,zmm6
  a2ae62:	62 a1 5c 48 59 ea    	vmulps zmm21,zmm4,zmm18
  a2ae68:	62 c2 15 48 bc e9    	vfnmadd231ps zmm21,zmm13,zmm9
  a2ae6e:	62 31 14 48 59 ea    	vmulps zmm13,zmm13,zmm18
  a2ae74:	62 a1 64 48 59 d7    	vmulps zmm18,zmm3,zmm23
  a2ae7a:	62 a2 1d 48 bc d4    	vfnmadd231ps zmm18,zmm12,zmm20
  a2ae80:	62 72 35 48 b8 ec    	vfmadd231ps zmm13,zmm9,zmm4
  a2ae86:	62 31 54 40 58 ca    	vaddps zmm9,zmm21,zmm18
  a2ae8c:	62 d1 24 48 58 e1    	vaddps zmm4,zmm11,zmm9
  a2ae92:	62 31 1c 48 59 e7    	vmulps zmm12,zmm12,zmm23
  a2ae98:	62 e1 04 48 58 f0    	vaddps zmm22,zmm15,zmm0
  a2ae9e:	62 72 5d 40 b8 e3    	vfmadd231ps zmm12,zmm20,zmm3
  a2aea4:	62 e1 6c 48 58 e5    	vaddps zmm20,zmm2,zmm5
  a2aeaa:	62 b1 5c 40 58 de    	vaddps zmm3,zmm20,zmm22
  a2aeb0:	62 f1 2c 40 5c ff    	vsubps zmm7,zmm26,zmm7
  a2aeb6:	62 a1 64 40 58 f8    	vaddps zmm23,zmm19,zmm16
  a2aebc:	62 61 6c 48 5c cd    	vsubps zmm25,zmm2,zmm5
  a2aec2:	62 d1 14 48 58 d4    	vaddps zmm2,zmm13,zmm12
  a2aec8:	62 f1 3c 40 5c ee    	vsubps zmm5,zmm24,zmm6
  a2aece:	62 f1 44 40 58 f2    	vaddps zmm6,zmm23,zmm2
  a2aed4:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a2aeda:	62 81 44 48 58 d9    	vaddps zmm19,zmm7,zmm25
  a2aee0:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a2aee6:	62 31 54 48 58 e8    	vaddps zmm13,zmm5,zmm16
  a2aeec:	62 a1 54 40 5c d2    	vsubps zmm18,zmm21,zmm18
  a2aef2:	62 e2 7d 48 18 2d a0 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64a4a0]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2aef9:	a4 64 ff 
  a2aefc:	62 31 14 48 59 ed    	vmulps zmm13,zmm13,zmm21
  a2af02:	62 51 7c 48 5c ff    	vsubps zmm15,zmm0,zmm15
  a2af08:	62 b1 1c 48 5c c2    	vsubps zmm0,zmm12,zmm18
  a2af0e:	62 21 7c 48 59 c5    	vmulps zmm24,zmm0,zmm21
  a2af14:	62 51 2c 48 5c f6    	vsubps zmm14,zmm10,zmm14
  a2af1a:	62 01 14 48 58 d0    	vaddps zmm26,zmm13,zmm24
  a2af20:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a2af26:	62 11 64 40 58 d2    	vaddps zmm10,zmm19,zmm26
  a2af2c:	62 51 6c 40 58 e4    	vaddps zmm12,zmm18,zmm12
  a2af32:	c5 fc 28 05 06 bd 64 	vmovaps ymm0,YMMWORD PTR [rip+0xffffffffff64bd06]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a2af39:	ff 
  a2af3a:	62 a1 54 48 59 c5    	vmulps zmm16,zmm5,zmm21
  a2af40:	62 31 1c 48 59 e5    	vmulps zmm12,zmm12,zmm21
  a2af46:	62 c1 0c 48 58 d7    	vaddps zmm18,zmm14,zmm15
  a2af4c:	62 a1 3c 48 5c c9    	vsubps zmm17,zmm8,zmm17
  a2af52:	62 c1 7c 40 5c ec    	vsubps zmm21,zmm16,zmm12
  a2af58:	62 e1 44 40 5c fa    	vsubps zmm23,zmm23,zmm2
  a2af5e:	62 b1 6c 40 58 d5    	vaddps zmm2,zmm18,zmm21
  a2af64:	62 a1 4c 40 5c e4    	vsubps zmm20,zmm22,zmm20
  a2af6a:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a2af70:	62 d2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm10
  a2af76:	62 c1 34 48 5c f3    	vsubps zmm22,zmm9,zmm11
  a2af7c:	62 21 74 40 58 df    	vaddps zmm27,zmm17,zmm23
  a2af82:	62 01 44 48 5c c9    	vsubps zmm25,zmm7,zmm25
  a2af88:	62 b1 5c 40 58 fe    	vaddps zmm7,zmm20,zmm22
  a2af8e:	62 c1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm12
  a2af94:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a2af9a:	62 12 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm27
  a2afa0:	62 41 04 48 5c e6    	vsubps zmm28,zmm15,zmm14
  a2afa6:	62 21 34 40 58 e8    	vaddps zmm29,zmm25,zmm16
  a2afac:	62 41 3c 40 5c c5    	vsubps zmm24,zmm24,zmm13
  a2afb2:	62 11 1c 40 58 c8    	vaddps zmm9,zmm28,zmm24
  a2afb8:	62 81 64 40 5c da    	vsubps zmm19,zmm19,zmm26
  a2afbe:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a2afc4:	62 12 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm29
  a2afca:	62 31 6c 40 5c dd    	vsubps zmm11,zmm18,zmm21
  a2afd0:	62 e1 74 48 5c d4    	vsubps zmm18,zmm1,zmm4
  a2afd6:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a2afdc:	62 71 64 48 5c f6    	vsubps zmm14,zmm3,zmm6
  a2afe2:	62 31 5c 40 5c ee    	vsubps zmm13,zmm20,zmm22
  a2afe8:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a2afee:	62 32 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm18
  a2aff4:	62 a1 34 40 5c c0    	vsubps zmm16,zmm25,zmm16
  a2affa:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a2b000:	62 a2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm19
  a2b006:	62 81 1c 40 5c e8    	vsubps zmm21,zmm28,zmm24
  a2b00c:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a2b012:	62 a2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm17
  a2b018:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a2b01e:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a2b024:	62 b2 7d 48 7f f0    	vpermt2ps zmm6,zmm0,zmm16
  a2b02a:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a2b030:	62 f2 65 48 77 c1    	vpermi2ps zmm0,zmm3,zmm1
  a2b036:	62 f1 7c 48 28 25 80 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff665680]        # 906c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1db70>
  a2b03d:	56 66 ff 
  a2b040:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a2b046:	62 d2 5d 48 7f d2    	vpermt2ps zmm2,zmm4,zmm10
  a2b04c:	62 92 5d 48 7f fb    	vpermt2ps zmm7,zmm4,zmm27
  a2b052:	62 12 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm29
  a2b058:	62 32 5d 48 7f f2    	vpermt2ps zmm14,zmm4,zmm18
  a2b05e:	62 32 5d 48 7f db    	vpermt2ps zmm11,zmm4,zmm19
  a2b064:	62 32 5d 48 7f e9    	vpermt2ps zmm13,zmm4,zmm17
  a2b06a:	62 a2 5d 48 7f e8    	vpermt2ps zmm21,zmm4,zmm16
  a2b070:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a2b076:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  a2b07b:	62 f1 7c 48 11 96 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm2
  a2b082:	00 00 00 
  a2b085:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  a2b08c:	00 
  a2b08d:	62 f1 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm7
  a2b094:	c5 7c 11 86 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm8
  a2b09b:	00 
  a2b09c:	62 71 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm9
  a2b0a3:	01 00 00 
  a2b0a6:	c5 7c 11 a6 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm12
  a2b0ad:	00 
  a2b0ae:	62 71 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm14
  a2b0b5:	c5 7c 11 be c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm15
  a2b0bc:	00 
  a2b0bd:	62 71 7c 48 11 9e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm11
  a2b0c4:	01 00 00 
  a2b0c7:	62 e1 7c 28 11 66 11 	vmovups YMMWORD PTR [rsi+0x220],ymm20
  a2b0ce:	62 71 7c 48 11 6e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm13
  a2b0d5:	62 e1 7c 28 11 76 14 	vmovups YMMWORD PTR [rsi+0x280],ymm22
  a2b0dc:	62 e1 7c 48 11 ae a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm21
  a2b0e3:	02 00 00 
  a2b0e6:	c5 fc 11 b6 e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm6
  a2b0ed:	00 
  a2b0ee:	48 89 ec             	mov    rsp,rbp
  a2b0f1:	5d                   	pop    rbp
  a2b0f2:	c5 f8 77             	vzeroupper
  a2b0f5:	c3                   	ret
