
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a60800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a60800:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a60807:	c5 fc 10 2f          	vmovups ymm5,YMMWORD PTR [rdi]
  a6080b:	c5 fc 10 47 20       	vmovups ymm0,YMMWORD PTR [rdi+0x20]
  a60810:	c5 7c 10 47 40       	vmovups ymm8,YMMWORD PTR [rdi+0x40]
  a60815:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  a6081a:	62 71 7c 48 28 0d dc 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6333dc]        # 93c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x210b0>
  a60821:	33 63 ff 
  a60824:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a60828:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a6082e:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a60834:	62 f1 7c 48 28 1d 02 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff633402]        # 93c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x210f0>
  a6083b:	34 63 ff 
  a6083e:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a60844:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a6084a:	62 72 35 48 7f f4    	vpermt2ps zmm14,zmm9,zmm4
  a60850:	62 f2 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm4
  a60856:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a6085c:	62 f2 35 48 7f fc    	vpermt2ps zmm7,zmm9,zmm4
  a60862:	62 72 65 48 7f c4    	vpermt2ps zmm8,zmm3,zmm4
  a60868:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a6086e:	62 72 35 48 7f e4    	vpermt2ps zmm12,zmm9,zmm4
  a60874:	62 f2 65 48 7f cc    	vpermt2ps zmm1,zmm3,zmm4
  a6087a:	62 e1 7c 28 10 4f 04 	vmovups ymm17,YMMWORD PTR [rdi+0x80]
  a60881:	62 31 7c 48 28 e9    	vmovaps zmm13,zmm17
  a60887:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a6088d:	62 e2 65 48 7f cc    	vpermt2ps zmm17,zmm3,zmm4
  a60893:	c5 7c 10 97 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0xa0]
  a6089a:	00 
  a6089b:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a608a1:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a608a7:	62 72 65 48 7f d4    	vpermt2ps zmm10,zmm3,zmm4
  a608ad:	62 e1 7c 28 10 67 06 	vmovups ymm20,YMMWORD PTR [rdi+0xc0]
  a608b4:	62 31 7c 48 28 dc    	vmovaps zmm11,zmm20
  a608ba:	62 72 35 48 7f dc    	vpermt2ps zmm11,zmm9,zmm4
  a608c0:	62 e2 65 48 7f e4    	vpermt2ps zmm20,zmm3,zmm4
  a608c6:	62 e1 7c 28 10 47 07 	vmovups ymm16,YMMWORD PTR [rdi+0xe0]
  a608cd:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a608d3:	62 e2 35 48 7f f4    	vpermt2ps zmm22,zmm9,zmm4
  a608d9:	62 e2 65 48 7f c4    	vpermt2ps zmm16,zmm3,zmm4
  a608df:	62 61 7c 28 10 47 08 	vmovups ymm24,YMMWORD PTR [rdi+0x100]
  a608e6:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a608ec:	62 e2 35 48 7f fc    	vpermt2ps zmm23,zmm9,zmm4
  a608f2:	62 62 65 48 7f c4    	vpermt2ps zmm24,zmm3,zmm4
  a608f8:	c5 7c 10 bf 20 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x120]
  a608ff:	00 
  a60900:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  a60906:	62 62 35 48 7f d4    	vpermt2ps zmm26,zmm9,zmm4
  a6090c:	62 72 65 48 7f fc    	vpermt2ps zmm15,zmm3,zmm4
  a60912:	62 61 7c 28 10 4f 0a 	vmovups ymm25,YMMWORD PTR [rdi+0x140]
  a60919:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a6091f:	62 62 35 48 7f dc    	vpermt2ps zmm27,zmm9,zmm4
  a60925:	62 62 65 48 7f cc    	vpermt2ps zmm25,zmm3,zmm4
  a6092b:	62 61 7c 28 10 67 0b 	vmovups ymm28,YMMWORD PTR [rdi+0x160]
  a60932:	62 72 1d 40 77 cc    	vpermi2ps zmm9,zmm28,zmm4
  a60938:	62 62 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm4
  a6093e:	62 a1 54 48 58 d4    	vaddps zmm18,zmm5,zmm20
  a60944:	62 c1 74 48 58 ef    	vaddps zmm21,zmm1,zmm15
  a6094a:	62 b1 6c 40 58 dd    	vaddps zmm3,zmm18,zmm21
  a60950:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a60957:	ff 
  a60958:	62 01 74 40 58 e9    	vaddps zmm29,zmm17,zmm25
  a6095e:	62 61 7c 40 58 f0    	vaddps zmm30,zmm16,zmm0
  a60964:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a6096a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a60971:	fe 
  a60972:	62 41 3c 40 58 f8    	vaddps zmm31,zmm24,zmm8
  a60978:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a6097e:	62 d1 4c 40 58 de    	vaddps zmm3,zmm22,zmm14
  a60984:	62 c1 4c 40 5c f6    	vsubps zmm22,zmm22,zmm14
  a6098a:	62 51 1c 40 58 f2    	vaddps zmm14,zmm28,zmm10
  a60990:	62 41 3c 40 5c c0    	vsubps zmm24,zmm24,zmm8
  a60996:	62 31 34 48 58 c3    	vaddps zmm8,zmm9,zmm19
  a6099c:	62 21 34 48 5c cb    	vsubps zmm25,zmm9,zmm19
  a609a2:	62 d1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm11
  a609a8:	62 b1 54 48 5c ec    	vsubps zmm5,zmm5,zmm20
  a609ae:	62 81 1c 48 58 e2    	vaddps zmm20,zmm12,zmm26
  a609b4:	62 01 1c 48 5c d2    	vsubps zmm26,zmm12,zmm26
  a609ba:	62 81 14 48 58 db    	vaddps zmm19,zmm13,zmm27
  a609c0:	62 01 14 48 5c db    	vsubps zmm27,zmm13,zmm27
  a609c6:	62 71 44 40 58 ef    	vaddps zmm13,zmm23,zmm7
  a609cc:	62 b1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm16
  a609d2:	62 11 7c 48 58 cb    	vaddps zmm9,zmm0,zmm27
  a609d8:	62 f1 44 40 5c ff    	vsubps zmm7,zmm23,zmm7
  a609de:	62 11 2c 48 5c d4    	vsubps zmm10,zmm10,zmm28
  a609e4:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a609ea:	62 c1 34 48 5c c4    	vsubps zmm16,zmm9,zmm12
  a609f0:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm16
  a609f7:	04 
  a609f8:	62 51 34 48 58 cc    	vaddps zmm9,zmm9,zmm12
  a609fe:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm9
  a60a05:	03 
  a60a06:	62 31 74 40 58 ce    	vaddps zmm9,zmm17,zmm22
  a60a0c:	62 c1 6c 48 5c c3    	vsubps zmm16,zmm2,zmm11
  a60a12:	62 91 3c 40 58 d1    	vaddps zmm2,zmm24,zmm25
  a60a18:	62 71 04 48 5c e1    	vsubps zmm12,zmm15,zmm1
  a60a1e:	62 f1 34 48 58 ca    	vaddps zmm1,zmm9,zmm2
  a60a24:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a60a2b:	01 
  a60a2c:	62 f1 34 48 5c ca    	vsubps zmm1,zmm9,zmm2
  a60a32:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a60a39:	02 
  a60a3a:	62 c1 04 40 58 fe    	vaddps zmm23,zmm31,zmm14
  a60a40:	62 91 14 40 5c ce    	vsubps zmm1,zmm29,zmm30
  a60a46:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp-0x80]
  a60a4d:	fe 
  a60a4e:	62 31 04 48 58 cf    	vaddps zmm9,zmm15,zmm23
  a60a54:	62 41 04 40 5c f6    	vsubps zmm30,zmm31,zmm14
  a60a5a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a60a61:	ff 
  a60a62:	62 41 6c 48 58 e1    	vaddps zmm28,zmm2,zmm9
  a60a68:	62 31 6c 40 5c f5    	vsubps zmm14,zmm18,zmm21
  a60a6e:	62 61 64 40 58 fb    	vaddps zmm31,zmm19,zmm3
  a60a74:	62 f1 64 40 5c db    	vsubps zmm3,zmm19,zmm3
  a60a7a:	62 c1 14 48 58 e8    	vaddps zmm21,zmm13,zmm8
  a60a80:	62 51 14 48 5c c0    	vsubps zmm8,zmm13,zmm8
  a60a86:	62 51 64 48 5c d8    	vsubps zmm11,zmm3,zmm8
  a60a8c:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  a60a93:	62 c1 64 48 58 d8    	vaddps zmm19,zmm3,zmm8
  a60a99:	62 b1 4c 48 58 dc    	vaddps zmm3,zmm6,zmm20
  a60a9f:	62 a1 4c 48 5c e4    	vsubps zmm20,zmm6,zmm20
  a60aa5:	62 11 74 48 58 de    	vaddps zmm11,zmm1,zmm30
  a60aab:	62 01 74 48 5c f6    	vsubps zmm30,zmm1,zmm30
  a60ab1:	62 11 54 48 58 ea    	vaddps zmm13,zmm5,zmm26
  a60ab7:	62 91 54 48 5c ea    	vsubps zmm5,zmm5,zmm26
  a60abd:	62 a1 04 40 58 d5    	vaddps zmm18,zmm31,zmm21
  a60ac3:	62 a1 74 40 5c f6    	vsubps zmm22,zmm17,zmm22
  a60ac9:	62 31 64 48 58 c2    	vaddps zmm8,zmm3,zmm18
  a60acf:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a60ad5:	62 21 1c 48 58 e8    	vaddps zmm29,zmm12,zmm16
  a60adb:	62 d1 7c 40 5c f4    	vsubps zmm6,zmm16,zmm12
  a60ae1:	62 e2 7d 48 18 05 75 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff614975]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a60ae8:	49 61 ff 
  a60aeb:	62 71 24 40 5c e0    	vsubps zmm12,zmm27,zmm0
  a60af1:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a60af7:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a60afd:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a60b03:	62 72 7d 40 ac ca    	vfnmadd213ps zmm9,zmm16,zmm2
  a60b09:	62 01 4c 40 58 d8    	vaddps zmm27,zmm22,zmm24
  a60b0f:	62 e2 7d 40 ac d3    	vfnmadd213ps zmm18,zmm16,zmm3
  a60b15:	62 11 54 48 58 d3    	vaddps zmm10,zmm5,zmm27
  a60b1b:	62 62 7d 40 ac dd    	vfnmadd213ps zmm27,zmm16,zmm5
  a60b21:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a60b27:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a60b2d:	62 f1 1c 48 58 df    	vaddps zmm3,zmm12,zmm7
  a60b33:	62 e2 65 48 ac c6    	vfnmadd213ps zmm16,zmm3,zmm6
  a60b39:	62 e1 4c 48 58 cb    	vaddps zmm17,zmm6,zmm3
  a60b3f:	62 21 04 40 5c fd    	vsubps zmm31,zmm31,zmm21
  a60b45:	62 a1 04 48 5c ef    	vsubps zmm21,zmm15,zmm23
  a60b4b:	62 f2 7d 48 18 1d 7f 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff61477f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a60b52:	47 61 ff 
  a60b55:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a60b5c:	01 
  a60b5d:	62 42 6d 48 ac cd    	vfnmadd213ps zmm25,zmm2,zmm13
  a60b63:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp+0x100]
  a60b6a:	04 
  a60b6b:	62 11 7c 48 58 f9    	vaddps zmm15,zmm0,zmm25
  a60b71:	62 f1 34 40 5c f0    	vsubps zmm6,zmm25,zmm0
  a60b77:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a60b7e:	03 
  a60b7f:	62 02 7d 48 ac d5    	vfnmadd213ps zmm26,zmm0,zmm29
  a60b85:	62 e1 64 48 59 7c 24 	vmulps zmm23,zmm3,ZMMWORD PTR [rsp+0x80]
  a60b8c:	02 
  a60b8d:	62 21 2c 40 5c cf    	vsubps zmm25,zmm26,zmm23
  a60b93:	62 a1 2c 40 58 ff    	vaddps zmm23,zmm26,zmm23
  a60b99:	62 d2 25 48 ac ee    	vfnmadd213ps zmm5,zmm11,zmm14
  a60b9f:	62 41 0c 48 58 d3    	vaddps zmm26,zmm14,zmm11
  a60ba5:	62 b2 65 40 ac cc    	vfnmadd213ps zmm1,zmm19,zmm20
  a60bab:	62 a1 5c 40 58 db    	vaddps zmm19,zmm20,zmm19
  a60bb1:	62 f1 1c 48 5c ff    	vsubps zmm7,zmm12,zmm7
  a60bb7:	62 11 4c 40 5c d8    	vsubps zmm11,zmm22,zmm24
  a60bbd:	62 71 64 48 59 24 24 	vmulps zmm12,zmm3,ZMMWORD PTR [rsp]
  a60bc4:	62 71 0c 40 59 f3    	vmulps zmm14,zmm30,zmm3
  a60bca:	62 e1 04 40 59 e3    	vmulps zmm20,zmm31,zmm3
  a60bd0:	62 e1 54 40 59 eb    	vmulps zmm21,zmm21,zmm3
  a60bd6:	62 e1 44 48 59 f3    	vmulps zmm22,zmm7,zmm3
  a60bdc:	62 f1 24 48 59 db    	vmulps zmm3,zmm11,zmm3
  a60be2:	62 21 34 48 58 c4    	vaddps zmm24,zmm9,zmm20
  a60be8:	62 a1 34 48 5c e4    	vsubps zmm20,zmm9,zmm20
  a60bee:	62 31 6c 40 5c cd    	vsubps zmm9,zmm18,zmm21
  a60bf4:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a60bfa:	62 71 14 48 58 ea    	vaddps zmm13,zmm13,zmm2
  a60c00:	62 61 14 40 58 e8    	vaddps zmm29,zmm29,zmm0
  a60c06:	62 c1 54 48 5c ec    	vsubps zmm21,zmm5,zmm12
  a60c0c:	62 d1 54 48 58 ec    	vaddps zmm5,zmm5,zmm12
  a60c12:	62 f1 0c 48 58 f9    	vaddps zmm7,zmm14,zmm1
  a60c18:	62 d1 74 48 5c ce    	vsubps zmm1,zmm1,zmm14
  a60c1e:	62 11 4c 40 58 e3    	vaddps zmm12,zmm22,zmm27
  a60c24:	62 31 24 40 5c f6    	vsubps zmm14,zmm27,zmm22
  a60c2a:	62 71 7c 40 5c db    	vsubps zmm11,zmm16,zmm3
  a60c30:	62 f1 7c 40 58 db    	vaddps zmm3,zmm16,zmm3
  a60c36:	62 e1 7c 48 28 05 40 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff666340]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a60c3d:	63 66 ff 
  a60c40:	62 22 7d 40 7f e4    	vpermt2ps zmm28,zmm16,zmm20
  a60c46:	62 52 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm13
  a60c4c:	62 e2 7d 40 7f ed    	vpermt2ps zmm21,zmm16,zmm5
  a60c52:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  a60c58:	62 62 7d 40 7f c4    	vpermt2ps zmm24,zmm16,zmm4
  a60c5e:	62 71 7c 48 28 2d 98 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff666298]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a60c65:	62 66 ff 
  a60c68:	62 02 15 48 7f e0    	vpermt2ps zmm28,zmm13,zmm24
  a60c6e:	62 f2 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm4
  a60c74:	62 72 15 48 7f fe    	vpermt2ps zmm15,zmm13,zmm6
  a60c7a:	62 62 7d 40 7f d4    	vpermt2ps zmm26,zmm16,zmm4
  a60c80:	62 82 15 48 7f ea    	vpermt2ps zmm21,zmm13,zmm26
  a60c86:	62 72 7d 40 7f e4    	vpermt2ps zmm12,zmm16,zmm4
  a60c8c:	62 52 15 48 7f d4    	vpermt2ps zmm10,zmm13,zmm12
  a60c92:	62 b1 9d 40 14 ed    	vunpcklpd zmm5,zmm28,zmm21
  a60c98:	62 b1 9d 40 15 d5    	vunpckhpd zmm2,zmm28,zmm21
  a60c9e:	62 d1 85 48 14 c2    	vunpcklpd zmm0,zmm15,zmm10
  a60ca4:	62 51 85 48 15 d2    	vunpckhpd zmm10,zmm15,zmm10
  a60caa:	62 32 7d 40 7f c2    	vpermt2ps zmm8,zmm16,zmm18
  a60cb0:	62 02 7d 40 7f cd    	vpermt2ps zmm25,zmm16,zmm29
  a60cb6:	62 f2 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm1
  a60cbc:	62 e2 7d 40 7f cb    	vpermt2ps zmm17,zmm16,zmm3
  a60cc2:	62 f1 7c 48 28 0d 34 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff666134]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a60cc9:	61 66 ff 
  a60ccc:	62 72 7d 40 7f cc    	vpermt2ps zmm9,zmm16,zmm4
  a60cd2:	62 e2 7d 40 7f fc    	vpermt2ps zmm23,zmm16,zmm4
  a60cd8:	62 e2 7d 40 7f dc    	vpermt2ps zmm19,zmm16,zmm4
  a60cde:	62 72 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm4
  a60ce4:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a60cea:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a60cf0:	62 f1 7c 48 28 25 46 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff666146]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a60cf7:	61 66 ff 
  a60cfa:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a60d00:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a60d06:	62 d2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm10
  a60d0c:	62 d2 5d 48 7f d2    	vpermt2ps zmm2,zmm4,zmm10
  a60d12:	62 52 15 48 7f c1    	vpermt2ps zmm8,zmm13,zmm9
  a60d18:	62 22 15 48 7f cf    	vpermt2ps zmm25,zmm13,zmm23
  a60d1e:	62 b2 15 48 7f fb    	vpermt2ps zmm7,zmm13,zmm19
  a60d24:	62 c2 15 48 7f cb    	vpermt2ps zmm17,zmm13,zmm11
  a60d2a:	62 71 bd 48 14 cf    	vunpcklpd zmm9,zmm8,zmm7
  a60d30:	62 f1 bd 48 15 ff    	vunpckhpd zmm7,zmm8,zmm7
  a60d36:	62 31 b5 40 14 c1    	vunpcklpd zmm8,zmm25,zmm17
  a60d3c:	62 b1 b5 40 15 f1    	vunpckhpd zmm6,zmm25,zmm17
  a60d42:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a60d48:	62 52 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm8
  a60d4e:	62 52 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm8
  a60d54:	62 f2 45 48 77 ce    	vpermi2ps zmm1,zmm7,zmm6
  a60d5a:	62 f2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm6
  a60d60:	62 f1 7c 48 10 62 02 	vmovups zmm4,ZMMWORD PTR [rdx+0x80]
  a60d67:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a60d6e:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a60d75:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a60d7c:	62 51 7c 48 59 e0    	vmulps zmm12,zmm0,zmm8
  a60d82:	62 52 75 48 bc e3    	vfnmadd231ps zmm12,zmm1,zmm11
  a60d88:	62 d1 74 48 59 c8    	vmulps zmm1,zmm1,zmm8
  a60d8e:	62 71 7c 48 10 42 06 	vmovups zmm8,ZMMWORD PTR [rdx+0x180]
  a60d95:	62 f2 25 48 b8 c8    	vfmadd231ps zmm1,zmm11,zmm0
  a60d9b:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a60da2:	62 71 54 48 59 dc    	vmulps zmm11,zmm5,zmm4
  a60da8:	62 72 35 48 bc de    	vfnmadd231ps zmm11,zmm9,zmm6
  a60dae:	62 f1 34 48 59 e4    	vmulps zmm4,zmm9,zmm4
  a60db4:	62 51 64 48 58 cc    	vaddps zmm9,zmm3,zmm12
  a60dba:	62 f2 4d 48 b8 e5    	vfmadd231ps zmm4,zmm6,zmm5
  a60dc0:	62 d1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm8
  a60dc6:	62 f2 45 48 bc e8    	vfnmadd231ps zmm5,zmm7,zmm0
  a60dcc:	62 f1 24 48 58 f5    	vaddps zmm6,zmm11,zmm5
  a60dd2:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a60dd8:	62 51 74 48 58 c2    	vaddps zmm8,zmm1,zmm10
  a60dde:	62 f2 7d 48 b8 fa    	vfmadd231ps zmm7,zmm0,zmm2
  a60de4:	62 f1 5c 48 58 c7    	vaddps zmm0,zmm4,zmm7
  a60dea:	62 d1 64 48 5c d4    	vsubps zmm2,zmm3,zmm12
  a60df0:	62 f1 5c 48 5c df    	vsubps zmm3,zmm4,zmm7
  a60df6:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a60dfc:	c5 fc 28 3d 3c 5e 61 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff615e3c]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a60e03:	ff 
  a60e04:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a60e0a:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a60e10:	62 71 74 48 58 d5    	vaddps zmm10,zmm1,zmm5
  a60e16:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a60e1c:	62 72 45 48 7f dc    	vpermt2ps zmm11,zmm7,zmm4
  a60e22:	62 71 34 48 5c e6    	vsubps zmm12,zmm9,zmm6
  a60e28:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a60e2e:	62 f1 3c 48 5c d8    	vsubps zmm3,zmm8,zmm0
  a60e34:	62 f1 74 48 5c cd    	vsubps zmm1,zmm1,zmm5
  a60e3a:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a60e40:	62 d2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm12
  a60e46:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  a60e4c:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a60e52:	62 72 45 48 7f c2    	vpermt2ps zmm8,zmm7,zmm2
  a60e58:	62 f1 34 48 58 f6    	vaddps zmm6,zmm9,zmm6
  a60e5e:	62 f2 7d 48 77 fe    	vpermi2ps zmm7,zmm0,zmm6
  a60e64:	62 71 7c 48 28 0d 12 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff632e12]        # 93c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21130>
  a60e6b:	2e 63 ff 
  a60e6e:	62 f2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm6
  a60e74:	62 72 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm4
  a60e7a:	62 d2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm12
  a60e80:	62 f2 35 48 7f ca    	vpermt2ps zmm1,zmm9,zmm2
  a60e86:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a60e8c:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  a60e91:	62 71 7c 48 11 96 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm10
  a60e98:	00 00 00 
  a60e9b:	c5 7c 11 9e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm11
  a60ea2:	00 
  a60ea3:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a60eaa:	c5 fc 11 ae 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm5
  a60eb1:	00 
  a60eb2:	62 f1 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm1
  a60eb9:	01 00 00 
  a60ebc:	c5 7c 11 86 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm8
  a60ec3:	00 
  a60ec4:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a60ecb:	c5 f8 77             	vzeroupper
  a60ece:	c3                   	ret
