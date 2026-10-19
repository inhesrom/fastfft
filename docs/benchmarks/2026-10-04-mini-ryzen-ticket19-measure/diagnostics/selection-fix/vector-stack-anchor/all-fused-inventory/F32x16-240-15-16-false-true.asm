
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2e800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2e800:	48 81 ec 48 0b 00 00 	sub    rsp,0xb48
  a2e807:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a2e80e:	31 d2                	xor    edx,edx
  a2e810:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a2e817:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a2e81e:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x80]
  a2e825:	02 
  a2e826:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2e82d:	03 
  a2e82e:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x180]
  a2e835:	06 
  a2e836:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a2e83d:	07 
  a2e83e:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a2e844:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a2e84a:	62 f1 7c 48 28 2d ec 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6622ec]        # 90b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dff0>
  a2e851:	22 66 ff 
  a2e854:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a2e85a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a2e861:	01 
  a2e862:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x600]
  a2e869:	18 
  a2e86a:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x640]
  a2e871:	19 
  a2e872:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a2e878:	62 d2 55 48 7f c0    	vpermt2ps zmm0,zmm5,zmm8
  a2e87e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a2e885:	03 
  a2e886:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x300]
  a2e88d:	0c 
  a2e88e:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x340]
  a2e895:	0d 
  a2e896:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a2e89c:	62 b2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm19
  a2e8a2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a2e8a9:	1d 
  a2e8aa:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x480]
  a2e8b1:	12 
  a2e8b2:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a2e8b9:	13 
  a2e8ba:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a2e8c0:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a2e8c6:	62 b2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm20
  a2e8cc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a2e8d3:	06 
  a2e8d4:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x280]
  a2e8db:	0a 
  a2e8dc:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a2e8e3:	0b 
  a2e8e4:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x400]
  a2e8eb:	10 
  a2e8ec:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x440]
  a2e8f3:	11 
  a2e8f4:	62 c1 7c 48 28 fc    	vmovaps zmm23,zmm12
  a2e8fa:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a2e900:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x100]
  a2e907:	04 
  a2e908:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x140]
  a2e90f:	05 
  a2e910:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a2e916:	62 12 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm24
  a2e91c:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x580]
  a2e923:	16 
  a2e924:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x5c0]
  a2e92b:	17 
  a2e92c:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a2e932:	62 82 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm26
  a2e938:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x700]
  a2e93f:	1c 
  a2e940:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x740]
  a2e947:	1d 
  a2e948:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a2e94e:	62 82 55 48 7f cc    	vpermt2ps zmm17,zmm5,zmm28
  a2e954:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x680]
  a2e95b:	1a 
  a2e95c:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x6c0]
  a2e963:	1b 
  a2e964:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a2e96a:	62 12 55 48 7f fd    	vpermt2ps zmm15,zmm5,zmm29
  a2e970:	62 61 7c 48 28 3d 06 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff662206]        # 90b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e030>
  a2e977:	22 66 ff 
  a2e97a:	62 12 05 40 7f d2    	vpermt2ps zmm10,zmm31,zmm26
  a2e980:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x380]
  a2e987:	0e 
  a2e988:	62 02 05 40 7f cc    	vpermt2ps zmm25,zmm31,zmm28
  a2e98e:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a2e994:	62 62 55 48 7f d1    	vpermt2ps zmm26,zmm5,zmm1
  a2e99a:	62 72 05 40 7f e0    	vpermt2ps zmm12,zmm31,zmm0
  a2e9a0:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x200]
  a2e9a7:	08 
  a2e9a8:	62 12 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm24
  a2e9ae:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x240]
  a2e9b5:	09 
  a2e9b6:	62 f2 05 40 7f d1    	vpermt2ps zmm2,zmm31,zmm1
  a2e9bc:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a2e9c2:	62 02 55 48 7f c4    	vpermt2ps zmm24,zmm5,zmm28
  a2e9c8:	62 92 05 40 7f c4    	vpermt2ps zmm0,zmm31,zmm28
  a2e9ce:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a2e9d5:	0f 
  a2e9d6:	62 82 05 40 7f d5    	vpermt2ps zmm18,zmm31,zmm29
  a2e9dc:	62 01 7c 48 28 eb    	vmovaps zmm29,zmm27
  a2e9e2:	62 62 55 48 7f e9    	vpermt2ps zmm29,zmm5,zmm1
  a2e9e8:	62 62 05 40 7f d9    	vpermt2ps zmm27,zmm31,zmm1
  a2e9ee:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a2e9f4:	62 f2 55 48 7f f7    	vpermt2ps zmm6,zmm5,zmm7
  a2e9fa:	62 a2 05 40 7f eb    	vpermt2ps zmm21,zmm31,zmm19
  a2ea00:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm21
  a2ea07:	1c 
  a2ea08:	62 41 44 40 58 e1    	vaddps zmm28,zmm23,zmm9
  a2ea0e:	62 22 05 40 7f f4    	vpermt2ps zmm30,zmm31,zmm20
  a2ea14:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm30
  a2ea1b:	0a 
  a2ea1c:	62 81 4c 48 58 dc    	vaddps zmm19,zmm6,zmm28
  a2ea22:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a2ea28:	62 f2 05 40 7f cb    	vpermt2ps zmm1,zmm31,zmm3
  a2ea2e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a2ea35:	1a 
  a2ea36:	62 b1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm17
  a2ea3c:	62 f1 64 40 58 dc    	vaddps zmm3,zmm19,zmm4
  a2ea42:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a2ea49:	0d 
  a2ea4a:	62 c2 05 40 7f f0    	vpermt2ps zmm22,zmm31,zmm8
  a2ea50:	62 91 7c 48 28 df    	vmovaps zmm3,zmm31
  a2ea56:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm22
  a2ea5d:	1b 
  a2ea5e:	62 81 2c 48 5c e1    	vsubps zmm20,zmm10,zmm25
  a2ea64:	62 11 2c 48 58 c1    	vaddps zmm8,zmm10,zmm25
  a2ea6a:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a2ea71:	ff 
  a2ea72:	62 41 1c 48 5c fe    	vsubps zmm31,zmm12,zmm14
  a2ea78:	62 51 1c 48 58 f6    	vaddps zmm14,zmm12,zmm14
  a2ea7e:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x500]
  a2ea85:	14 
  a2ea86:	62 72 65 48 7f ef    	vpermt2ps zmm13,zmm3,zmm7
  a2ea8c:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm13
  a2ea93:	fe 
  a2ea94:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a2ea9a:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x540]
  a2eaa1:	15 
  a2eaa2:	62 31 7c 40 5c d1    	vsubps zmm10,zmm16,zmm17
  a2eaa8:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a2eaae:	62 32 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm19
  a2eab4:	62 51 44 40 5c e9    	vsubps zmm13,zmm23,zmm9
  a2eaba:	62 71 6c 48 5c c8    	vsubps zmm9,zmm2,zmm0
  a2eac0:	62 e1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm0
  a2eac6:	62 91 6c 40 5c db    	vsubps zmm3,zmm18,zmm27
  a2eacc:	62 81 6c 40 58 d3    	vaddps zmm18,zmm18,zmm27
  a2ead2:	62 91 04 48 58 d5    	vaddps zmm2,zmm15,zmm29
  a2ead8:	62 32 45 48 7f e3    	vpermt2ps zmm12,zmm7,zmm19
  a2eade:	62 91 2c 40 58 c0    	vaddps zmm0,zmm26,zmm24
  a2eae4:	62 81 2c 40 5c c0    	vsubps zmm16,zmm26,zmm24
  a2eaea:	62 e1 3c 48 58 da    	vaddps zmm19,zmm8,zmm2
  a2eaf0:	62 f1 64 40 58 f8    	vaddps zmm7,zmm19,zmm0
  a2eaf6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a2eafd:	0b 
  a2eafe:	62 81 04 48 5c dd    	vsubps zmm19,zmm15,zmm29
  a2eb04:	62 62 7d 48 18 05 4a 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff646c4a]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2eb0b:	6c 64 ff 
  a2eb0e:	62 11 04 40 59 f8    	vmulps zmm15,zmm31,zmm24
  a2eb14:	62 72 7d 48 18 1d 82 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff646882]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2eb1b:	68 64 ff 
  a2eb1e:	62 52 5d 40 bc fb    	vfnmadd231ps zmm15,zmm20,zmm11
  a2eb24:	62 01 5c 40 59 c8    	vmulps zmm25,zmm20,zmm24
  a2eb2a:	62 02 25 48 b8 cf    	vfmadd231ps zmm25,zmm11,zmm31
  a2eb30:	62 62 7d 48 18 35 0a 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff646b0a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2eb37:	6b 64 ff 
  a2eb3a:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a2eb40:	62 e2 1d 40 ac e6    	vfnmadd213ps zmm20,zmm28,zmm6
  a2eb46:	62 e2 7d 48 18 3d 98 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff646b98]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2eb4d:	6b 64 ff 
  a2eb50:	62 a2 5d 48 b8 e7    	vfmadd231ps zmm20,zmm4,zmm23
  a2eb56:	62 92 45 40 b8 f4    	vfmadd231ps zmm6,zmm23,zmm28
  a2eb5c:	62 01 64 48 59 d8    	vmulps zmm27,zmm3,zmm24
  a2eb62:	62 42 35 48 bc db    	vfnmadd231ps zmm27,zmm9,zmm11
  a2eb68:	62 f2 0d 40 bc f4    	vfnmadd231ps zmm6,zmm30,zmm4
  a2eb6e:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a2eb74:	62 42 6d 48 ac e8    	vfnmadd213ps zmm29,zmm2,zmm8
  a2eb7a:	62 22 7d 48 b8 ef    	vfmadd231ps zmm29,zmm0,zmm23
  a2eb80:	62 01 34 48 59 d0    	vmulps zmm26,zmm9,zmm24
  a2eb86:	62 62 25 48 b8 d3    	vfmadd231ps zmm26,zmm11,zmm3
  a2eb8c:	62 f1 54 40 5c 5c 24 	vsubps zmm3,zmm21,ZMMWORD PTR [rsp+0x280]
  a2eb93:	0a 
  a2eb94:	62 72 45 40 b8 c2    	vfmadd231ps zmm8,zmm23,zmm2
  a2eb9a:	62 b1 74 48 5c d6    	vsubps zmm2,zmm1,zmm22
  a2eba0:	62 72 0d 40 bc c0    	vfnmadd231ps zmm8,zmm30,zmm0
  a2eba6:	62 91 6c 48 59 e0    	vmulps zmm4,zmm2,zmm24
  a2ebac:	62 d2 65 48 bc e3    	vfnmadd231ps zmm4,zmm3,zmm11
  a2ebb2:	62 91 64 48 59 d8    	vmulps zmm3,zmm3,zmm24
  a2ebb8:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a2ebbe:	62 f2 25 48 b8 da    	vfmadd231ps zmm3,zmm11,zmm2
  a2ebc4:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x40]
  a2ebcb:	01 
  a2ebcc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a2ebd3:	17 
  a2ebd4:	62 61 7c 48 10 04 24 	vmovups zmm24,ZMMWORD PTR [rsp]
  a2ebdb:	62 62 55 48 7f c0    	vpermt2ps zmm24,zmm5,zmm0
  a2ebe1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a2ebe8:	03 
  a2ebe9:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x40]
  a2ebf0:	01 
  a2ebf1:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a2ebf7:	62 02 7d 48 ac f8    	vfnmadd213ps zmm31,zmm0,zmm24
  a2ebfd:	62 f1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm0
  a2ec03:	62 62 45 40 b8 c0    	vfmadd231ps zmm24,zmm23,zmm0
  a2ec09:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a2ec10:	06 
  a2ec11:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x740]
  a2ec18:	1d 
  a2ec19:	62 f1 6c 48 58 e8    	vaddps zmm5,zmm2,zmm0
  a2ec1f:	62 22 7d 48 b8 ff    	vfmadd231ps zmm31,zmm0,zmm23
  a2ec25:	62 62 0d 40 bc c0    	vfnmadd231ps zmm24,zmm30,zmm0
  a2ec2b:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a2ec31:	62 f1 14 48 59 c9    	vmulps zmm1,zmm13,zmm1
  a2ec37:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a2ec3d:	62 d2 2d 48 bc cb    	vfnmadd231ps zmm1,zmm10,zmm11
  a2ec43:	62 71 2c 48 59 da    	vmulps zmm11,zmm10,zmm2
  a2ec49:	62 52 7d 48 b8 dd    	vfmadd231ps zmm11,zmm0,zmm13
  a2ec4f:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a2ec55:	62 f1 64 40 59 c2    	vmulps zmm0,zmm19,zmm2
  a2ec5b:	62 d2 7d 40 bc c1    	vfnmadd231ps zmm0,zmm16,zmm9
  a2ec61:	62 f1 7c 40 59 fa    	vmulps zmm7,zmm16,zmm2
  a2ec67:	62 b2 35 48 b8 fb    	vfmadd231ps zmm7,zmm9,zmm19
  a2ec6d:	62 01 5c 48 58 e7    	vaddps zmm28,zmm4,zmm31
  a2ec73:	62 e1 04 40 5c c4    	vsubps zmm16,zmm31,zmm4
  a2ec79:	62 b1 04 48 58 d4    	vaddps zmm2,zmm15,zmm20
  a2ec7f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a2ec86:	13 
  a2ec87:	62 d1 5c 40 5c e7    	vsubps zmm4,zmm20,zmm15
  a2ec8d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm4
  a2ec94:	18 
  a2ec95:	62 81 24 40 58 e5    	vaddps zmm20,zmm27,zmm29
  a2ec9b:	62 11 14 40 5c cb    	vsubps zmm9,zmm29,zmm27
  a2eca1:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm9
  a2eca8:	19 
  a2eca9:	62 41 5c 48 58 f9    	vaddps zmm31,zmm4,zmm9
  a2ecaf:	62 91 7c 40 58 e7    	vaddps zmm4,zmm16,zmm31
  a2ecb5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a2ecbc:	0c 
  a2ecbd:	62 72 7d 48 18 0d 99 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff646799]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2ecc4:	67 64 ff 
  a2ecc7:	62 22 35 48 ac f8    	vfnmadd213ps zmm31,zmm9,zmm16
  a2eccd:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a2ecd3:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a2ecda:	fe 
  a2ecdb:	62 72 0d 48 ac fc    	vfnmadd213ps zmm15,zmm14,zmm4
  a2ece1:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a2ece8:	ff 
  a2ece9:	62 32 2d 48 b8 ff    	vfmadd231ps zmm15,zmm10,zmm23
  a2ecef:	62 61 04 48 5c d9    	vsubps zmm27,zmm15,zmm1
  a2ecf5:	62 71 04 48 58 f9    	vaddps zmm15,zmm15,zmm1
  a2ecfb:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a2ed01:	62 d2 6d 40 ac cc    	vfnmadd213ps zmm1,zmm18,zmm12
  a2ed07:	62 b2 75 40 b8 cf    	vfmadd231ps zmm1,zmm17,zmm23
  a2ed0d:	62 61 74 48 5c e8    	vsubps zmm29,zmm1,zmm0
  a2ed13:	62 e1 74 48 58 d8    	vaddps zmm19,zmm1,zmm0
  a2ed19:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2ed20:	0b 
  a2ed21:	62 f1 7c 48 58 54 24 	vaddps zmm2,zmm0,ZMMWORD PTR [rsp+0x340]
  a2ed28:	0d 
  a2ed29:	62 f1 54 48 58 ca    	vaddps zmm1,zmm5,zmm2
  a2ed2f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a2ed36:	02 
  a2ed37:	62 f2 35 48 ac d5    	vfnmadd213ps zmm2,zmm9,zmm5
  a2ed3d:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a2ed43:	62 f2 0d 48 a8 cc    	vfmadd213ps zmm1,zmm14,zmm4
  a2ed49:	62 d1 5c 48 58 ee    	vaddps zmm5,zmm4,zmm14
  a2ed4f:	62 92 2d 48 bc ce    	vfnmadd231ps zmm1,zmm10,zmm30
  a2ed55:	62 51 54 48 58 d2    	vaddps zmm10,zmm5,zmm10
  a2ed5b:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a2ed61:	62 c2 6d 40 a8 ec    	vfmadd213ps zmm21,zmm18,zmm12
  a2ed67:	62 b1 1c 48 58 ea    	vaddps zmm5,zmm12,zmm18
  a2ed6d:	62 82 75 40 bc ee    	vfnmadd231ps zmm21,zmm17,zmm30
  a2ed73:	62 a1 54 48 58 c9    	vaddps zmm17,zmm5,zmm17
  a2ed79:	62 11 64 48 58 f0    	vaddps zmm14,zmm3,zmm24
  a2ed7f:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a2ed85:	62 71 34 40 58 e6    	vaddps zmm12,zmm25,zmm6
  a2ed8b:	62 81 4c 48 5c c1    	vsubps zmm16,zmm6,zmm25
  a2ed91:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm16
  a2ed98:	14 
  a2ed99:	62 41 2c 40 58 c8    	vaddps zmm25,zmm26,zmm8
  a2ed9f:	62 91 3c 48 5c c2    	vsubps zmm0,zmm8,zmm26
  a2eda5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a2edac:	15 
  a2edad:	62 01 1c 48 58 d1    	vaddps zmm26,zmm12,zmm25
  a2edb3:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a2edb9:	62 52 2d 40 ac c6    	vfnmadd213ps zmm8,zmm26,zmm14
  a2edbf:	62 d1 74 48 5c eb    	vsubps zmm5,zmm1,zmm11
  a2edc5:	62 e1 54 40 5c d7    	vsubps zmm18,zmm21,zmm7
  a2edcb:	62 a1 54 48 5c f2    	vsubps zmm22,zmm5,zmm18
  a2edd1:	62 f2 7d 48 18 25 f9 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6464f9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2edd8:	64 64 ff 
  a2eddb:	62 e1 4c 40 59 f4    	vmulps zmm22,zmm22,zmm4
  a2ede1:	62 31 3c 48 5c ee    	vsubps zmm13,zmm8,zmm22
  a2ede7:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a2edee:	ff 
  a2edef:	62 b1 3c 48 58 f6    	vaddps zmm6,zmm8,zmm22
  a2edf5:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm6
  a2edfc:	12 
  a2edfd:	62 e1 7c 40 58 f0    	vaddps zmm22,zmm16,zmm0
  a2ee03:	62 b1 64 48 58 f6    	vaddps zmm6,zmm3,zmm22
  a2ee09:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a2ee10:	fe 
  a2ee11:	62 e2 35 48 ac f3    	vfnmadd213ps zmm22,zmm9,zmm3
  a2ee17:	62 51 74 48 58 eb    	vaddps zmm13,zmm1,zmm11
  a2ee1d:	62 71 54 40 58 c7    	vaddps zmm8,zmm21,zmm7
  a2ee23:	62 91 0c 48 58 ca    	vaddps zmm1,zmm14,zmm26
  a2ee29:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm1
  a2ee30:	1f 
  a2ee31:	62 b1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm17
  a2ee37:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a2ee3d:	62 f1 6c 48 5c d9    	vsubps zmm3,zmm2,zmm1
  a2ee43:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a2ee4a:	09 
  a2ee4b:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a2ee51:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a2ee58:	04 
  a2ee59:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x4c0]
  a2ee60:	13 
  a2ee61:	62 b1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm20
  a2ee67:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a2ee6d:	62 92 7d 48 ac cc    	vfnmadd213ps zmm1,zmm0,zmm28
  a2ee73:	62 91 24 40 5c dd    	vsubps zmm3,zmm27,zmm29
  a2ee79:	62 f1 64 48 59 dc    	vmulps zmm3,zmm3,zmm4
  a2ee7f:	62 e1 74 48 58 c3    	vaddps zmm16,zmm1,zmm3
  a2ee85:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm16
  a2ee8c:	16 
  a2ee8d:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a2ee93:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a2ee9a:	10 
  a2ee9b:	62 61 1c 40 58 e0    	vaddps zmm28,zmm28,zmm0
  a2eea1:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm28
  a2eea8:	1e 
  a2eea9:	62 d1 14 48 5c c0    	vsubps zmm0,zmm13,zmm8
  a2eeaf:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a2eeb5:	62 61 4c 40 5c c0    	vsubps zmm24,zmm22,zmm0
  a2eebb:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm24
  a2eec2:	08 
  a2eec3:	62 f1 4c 40 58 c0    	vaddps zmm0,zmm22,zmm0
  a2eec9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a2eed0:	25 
  a2eed1:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a2eed7:	62 b1 04 48 5c c3    	vsubps zmm0,zmm15,zmm19
  a2eedd:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a2eee3:	62 61 04 40 58 d0    	vaddps zmm26,zmm31,zmm0
  a2eee9:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm26
  a2eef0:	05 
  a2eef1:	62 61 04 40 5c f8    	vsubps zmm31,zmm31,zmm0
  a2eef7:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm31
  a2eefe:	07 
  a2eeff:	62 e1 7c 48 10 2c 24 	vmovups zmm21,ZMMWORD PTR [rsp]
  a2ef06:	62 f1 7c 48 28 05 70 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff661c70]        # 90b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e030>
  a2ef0d:	1c 66 ff 
  a2ef10:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a2ef17:	17 
  a2ef18:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a2ef1f:	1a 
  a2ef20:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a2ef27:	1b 
  a2ef28:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a2ef2f:	1c 
  a2ef30:	62 f1 7c 48 58 74 24 	vaddps zmm6,zmm0,ZMMWORD PTR [rsp+0x280]
  a2ef37:	0a 
  a2ef38:	62 b1 2c 48 58 d9    	vaddps zmm3,zmm10,zmm17
  a2ef3e:	62 91 24 40 58 c5    	vaddps zmm0,zmm27,zmm29
  a2ef44:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x740]
  a2ef4b:	1d 
  a2ef4c:	62 71 2c 48 5c 54 24 	vsubps zmm10,zmm10,ZMMWORD PTR [rsp+0x180]
  a2ef53:	06 
  a2ef54:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x40]
  a2ef5b:	01 
  a2ef5c:	62 71 0c 48 5c 74 24 	vsubps zmm14,zmm14,ZMMWORD PTR [rsp+0xc0]
  a2ef63:	03 
  a2ef64:	62 a1 6c 48 5c dc    	vsubps zmm19,zmm2,zmm20
  a2ef6a:	62 11 1c 48 5c e1    	vsubps zmm12,zmm12,zmm25
  a2ef70:	62 b1 54 48 58 ea    	vaddps zmm5,zmm5,zmm18
  a2ef76:	62 81 7c 48 28 ce    	vmovaps zmm17,zmm30
  a2ef7c:	62 a2 75 48 ac cd    	vfnmadd213ps zmm17,zmm1,zmm21
  a2ef82:	62 e1 54 40 58 d1    	vaddps zmm18,zmm21,zmm1
  a2ef88:	62 e2 45 40 b8 e9    	vfmadd231ps zmm21,zmm23,zmm1
  a2ef8e:	62 f1 6c 40 58 ce    	vaddps zmm1,zmm18,zmm6
  a2ef94:	62 a2 4d 48 b8 cf    	vfmadd231ps zmm17,zmm6,zmm23
  a2ef9a:	62 e2 0d 40 bc ee    	vfnmadd231ps zmm21,zmm30,zmm6
  a2efa0:	62 f2 7d 48 18 3d ae 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6467ae]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2efa7:	67 64 ff 
  a2efaa:	62 f1 0c 48 59 f7    	vmulps zmm6,zmm14,zmm7
  a2efb0:	62 f2 7d 48 18 15 e6 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6463e6]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2efb7:	63 64 ff 
  a2efba:	62 f2 2d 48 bc f2    	vfnmadd231ps zmm6,zmm10,zmm2
  a2efc0:	62 71 2c 48 59 d7    	vmulps zmm10,zmm10,zmm7
  a2efc6:	62 52 6d 48 b8 d6    	vfmadd231ps zmm10,zmm2,zmm14
  a2efcc:	62 71 74 40 5c f6    	vsubps zmm14,zmm17,zmm6
  a2efd2:	62 f1 74 40 58 f6    	vaddps zmm6,zmm17,zmm6
  a2efd8:	62 c1 04 48 58 cb    	vaddps zmm17,zmm15,zmm11
  a2efde:	62 b1 4c 48 58 d1    	vaddps zmm2,zmm6,zmm17
  a2efe4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a2efeb:	06 
  a2efec:	62 e2 35 48 ac ce    	vfnmadd213ps zmm17,zmm9,zmm6
  a2eff2:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x600]
  a2eff9:	18 
  a2effa:	62 71 4c 48 5c 5c 24 	vsubps zmm11,zmm6,ZMMWORD PTR [rsp+0x640]
  a2f001:	19 
  a2f002:	62 e1 74 48 58 d3    	vaddps zmm18,zmm1,zmm3
  a2f008:	62 f2 35 48 ac d9    	vfnmadd213ps zmm3,zmm9,zmm1
  a2f00e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a2f015:	0d 
  a2f016:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a2f01d:	0b 
  a2f01e:	62 d1 54 40 5c f2    	vsubps zmm6,zmm21,zmm10
  a2f024:	62 d1 54 40 58 fa    	vaddps zmm7,zmm21,zmm10
  a2f02a:	62 71 1c 48 59 d4    	vmulps zmm10,zmm12,zmm4
  a2f030:	62 d1 14 48 58 d0    	vaddps zmm2,zmm13,zmm8
  a2f036:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a2f03c:	62 72 55 48 ac c6    	vfnmadd213ps zmm8,zmm5,zmm6
  a2f042:	62 c1 2c 48 58 f0    	vaddps zmm22,zmm10,zmm8
  a2f048:	62 c1 3c 48 5c fa    	vsubps zmm23,zmm8,zmm10
  a2f04e:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x500]
  a2f055:	14 
  a2f056:	62 71 3c 48 5c 44 24 	vsubps zmm8,zmm8,ZMMWORD PTR [rsp+0x540]
  a2f05d:	15 
  a2f05e:	62 e1 44 48 58 e2    	vaddps zmm20,zmm7,zmm2
  a2f064:	62 f2 35 48 ac d7    	vfnmadd213ps zmm2,zmm9,zmm7
  a2f06a:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a2f070:	62 d2 7d 48 ac fe    	vfnmadd213ps zmm7,zmm0,zmm14
  a2f076:	62 71 64 40 59 cc    	vmulps zmm9,zmm19,zmm4
  a2f07c:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a2f082:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a2f088:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a2f08f:	0f 
  a2f090:	62 71 64 48 58 e1    	vaddps zmm12,zmm3,zmm1
  a2f096:	62 f1 64 48 5c c9    	vsubps zmm1,zmm3,zmm1
  a2f09c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a2f0a3:	01 
  a2f0a4:	62 51 44 48 5c f9    	vsubps zmm15,zmm7,zmm9
  a2f0aa:	62 d1 44 48 58 c9    	vaddps zmm1,zmm7,zmm9
  a2f0b0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm1
  a2f0b7:	24 
  a2f0b8:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a2f0bf:	02 
  a2f0c0:	62 f1 7c 48 28 2d b6 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff697eb6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2f0c7:	7e 69 ff 
  a2f0ca:	62 b2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm16
  a2f0d0:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a2f0d6:	62 f1 24 48 59 cc    	vmulps zmm1,zmm11,zmm4
  a2f0dc:	62 f1 3c 48 59 dc    	vmulps zmm3,zmm8,zmm4
  a2f0e2:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a2f0e8:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a2f0ef:	62 71 64 48 58 ca    	vaddps zmm9,zmm3,zmm2
  a2f0f5:	62 f1 6c 48 5c c3    	vsubps zmm0,zmm2,zmm3
  a2f0fb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm0
  a2f102:	21 
  a2f103:	62 61 74 40 5c d9    	vsubps zmm27,zmm17,zmm1
  a2f109:	62 61 74 40 58 c9    	vaddps zmm25,zmm17,zmm1
  a2f10f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a2f116:	ff 
  a2f117:	62 f2 55 48 7f 44 24 	vpermt2ps zmm0,zmm5,ZMMWORD PTR [rsp+0x300]
  a2f11e:	0c 
  a2f11f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm0
  a2f126:	23 
  a2f127:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a2f12d:	62 f2 55 48 7f 4c 24 	vpermt2ps zmm1,zmm5,ZMMWORD PTR [rsp+0x240]
  a2f134:	09 
  a2f135:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a2f13c:	fe 
  a2f13d:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x480]
  a2f144:	12 
  a2f145:	62 92 55 48 7f d6    	vpermt2ps zmm2,zmm5,zmm30
  a2f14b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm2
  a2f152:	22 
  a2f153:	62 62 55 48 7f 44 24 	vpermt2ps zmm24,zmm5,ZMMWORD PTR [rsp+0x7c0]
  a2f15a:	1f 
  a2f15b:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x100]
  a2f162:	04 
  a2f163:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a2f169:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x400]
  a2f170:	10 
  a2f171:	62 b2 55 48 7f e3    	vpermt2ps zmm4,zmm5,zmm19
  a2f177:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xb00],zmm4
  a2f17e:	2c 
  a2f17f:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x940]
  a2f186:	25 
  a2f187:	62 22 55 48 7f e1    	vpermt2ps zmm28,zmm5,zmm17
  a2f18d:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a2f193:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a2f198:	62 52 55 48 7f c2    	vpermt2ps zmm8,zmm5,zmm10
  a2f19e:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a2f1a4:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm8
  a2f1ab:	29 
  a2f1ac:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm7
  a2f1b3:	11 
  a2f1b4:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a2f1ba:	62 71 7c 48 28 2d 7c 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff697d7c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2f1c1:	7d 69 ff 
  a2f1c4:	62 72 15 48 7f d0    	vpermt2ps zmm10,zmm13,zmm0
  a2f1ca:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm10
  a2f1d1:	15 
  a2f1d2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a2f1d9:	0e 
  a2f1da:	62 f2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm2
  a2f1e0:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a2f1e6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm1
  a2f1ed:	14 
  a2f1ee:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a2f1f4:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm24
  a2f1fb:	20 
  a2f1fc:	62 f2 15 48 7f fc    	vpermt2ps zmm7,zmm13,zmm4
  a2f202:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm7
  a2f209:	13 
  a2f20a:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a2f210:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xa80],zmm28
  a2f217:	2a 
  a2f218:	62 d2 15 48 7f f3    	vpermt2ps zmm6,zmm13,zmm11
  a2f21e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm6
  a2f225:	26 
  a2f226:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a2f22c:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a2f232:	62 d2 55 48 7f d7    	vpermt2ps zmm2,zmm5,zmm15
  a2f238:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a2f23f:	03 
  a2f240:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a2f246:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a2f24c:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x180]
  a2f253:	06 
  a2f254:	62 a2 55 48 7f f2    	vpermt2ps zmm22,zmm5,zmm18
  a2f25a:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xac0],zmm22
  a2f261:	2b 
  a2f262:	62 b2 15 48 7f d6    	vpermt2ps zmm2,zmm13,zmm22
  a2f268:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a2f26e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm2
  a2f275:	1a 
  a2f276:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a2f27c:	62 42 55 48 7f dc    	vpermt2ps zmm27,zmm5,zmm12
  a2f282:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a2f288:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a2f28e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm0
  a2f295:	28 
  a2f296:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a2f29c:	62 f2 15 48 7f d8    	vpermt2ps zmm3,zmm13,zmm0
  a2f2a2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm3
  a2f2a9:	19 
  a2f2aa:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a2f2b0:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a2f2b6:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x3c0]
  a2f2bd:	0f 
  a2f2be:	62 92 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm28
  a2f2c4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm1
  a2f2cb:	27 
  a2f2cc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a2f2d3:	01 
  a2f2d4:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a2f2da:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x900]
  a2f2e1:	24 
  a2f2e2:	62 d2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm9
  a2f2e8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a2f2ef:	01 
  a2f2f0:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a2f2f6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a2f2fd:	18 
  a2f2fe:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a2f305:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a2f30b:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x840]
  a2f312:	21 
  a2f313:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a2f319:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a2f320:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a2f326:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a2f32a:	62 62 55 48 7f ca    	vpermt2ps zmm25,zmm5,zmm2
  a2f330:	62 92 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm25
  a2f336:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a2f33d:	17 
  a2f33e:	62 f1 cd 40 15 d3    	vunpckhpd zmm2,zmm22,zmm3
  a2f344:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a2f34b:	0b 
  a2f34c:	62 f1 f5 48 15 e8    	vunpckhpd zmm5,zmm1,zmm0
  a2f352:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a2f359:	0a 
  a2f35a:	62 e1 7c 48 28 35 9c 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff697a9c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2f361:	7a 69 ff 
  a2f364:	62 f2 4d 40 7f d5    	vpermt2ps zmm2,zmm22,zmm5
  a2f36a:	62 d1 ad 48 15 e8    	vunpckhpd zmm5,zmm10,zmm8
  a2f370:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm5
  a2f377:	1c 
  a2f378:	62 f1 c5 48 15 ce    	vunpckhpd zmm1,zmm7,zmm6
  a2f37e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a2f385:	1b 
  a2f386:	62 f2 4d 40 7f e9    	vpermt2ps zmm5,zmm22,zmm1
  a2f38c:	62 f1 7c 48 10 79 0d 	vmovups zmm7,ZMMWORD PTR [rcx+0x340]
  a2f393:	62 71 7c 48 10 41 0c 	vmovups zmm8,ZMMWORD PTR [rcx+0x300]
  a2f39a:	62 d1 54 48 59 c8    	vmulps zmm1,zmm5,zmm8
  a2f3a0:	62 f2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm7
  a2f3a6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm1
  a2f3ad:	1d 
  a2f3ae:	62 d1 6c 48 59 c8    	vmulps zmm1,zmm2,zmm8
  a2f3b4:	62 f2 45 48 bc cd    	vfnmadd231ps zmm1,zmm7,zmm5
  a2f3ba:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a2f3c1:	0d 
  a2f3c2:	62 f1 7c 48 28 0d f4 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff697bf4]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2f3c9:	7b 69 ff 
  a2f3cc:	62 c2 75 48 7f eb    	vpermt2ps zmm21,zmm1,zmm11
  a2f3d2:	62 22 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm18
  a2f3d8:	62 52 75 48 7f fc    	vpermt2ps zmm15,zmm1,zmm12
  a2f3de:	62 a2 75 48 7f e7    	vpermt2ps zmm20,zmm1,zmm23
  a2f3e4:	62 02 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm28
  a2f3ea:	62 c2 75 48 7f c1    	vpermt2ps zmm16,zmm1,zmm9
  a2f3f0:	62 62 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm4
  a2f3f6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a2f3fd:	02 
  a2f3fe:	62 f2 75 48 7f 44 24 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [rsp+0x580]
  a2f405:	16 
  a2f406:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a2f40d:	ff 
  a2f40e:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x300]
  a2f415:	0c 
  a2f416:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a2f41d:	ff 
  a2f41e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a2f425:	05 
  a2f426:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x240]
  a2f42d:	09 
  a2f42e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a2f435:	fe 
  a2f436:	62 92 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm30
  a2f43c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a2f443:	fe 
  a2f444:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x200]
  a2f44b:	08 
  a2f44c:	62 72 75 48 7f 44 24 	vpermt2ps zmm8,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a2f453:	1f 
  a2f454:	62 91 7c 48 28 fd    	vmovaps zmm7,zmm29
  a2f45a:	62 b2 75 48 7f fb    	vpermt2ps zmm7,zmm1,zmm19
  a2f460:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a2f467:	04 
  a2f468:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x780]
  a2f46f:	1e 
  a2f470:	62 b2 75 48 7f f1    	vpermt2ps zmm6,zmm1,zmm17
  a2f476:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a2f47a:	62 72 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm4
  a2f480:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  a2f487:	07 
  a2f488:	62 72 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm4
  a2f48e:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm9
  a2f495:	07 
  a2f496:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a2f49c:	62 f2 15 48 7f c2    	vpermt2ps zmm0,zmm13,zmm2
  a2f4a2:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a2f4a8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a2f4af:	02 
  a2f4b0:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a2f4b6:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a2f4bc:	62 f2 15 48 7f c5    	vpermt2ps zmm0,zmm13,zmm5
  a2f4c2:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a2f4c8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a2f4cf:	05 
  a2f4d0:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a2f4d6:	62 f2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm7
  a2f4dc:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a2f4e2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a2f4e9:	08 
  a2f4ea:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a2f4f0:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a2f4f6:	62 d2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm9
  a2f4fc:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a2f502:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a2f509:	1e 
  a2f50a:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a2f510:	62 82 15 48 7f e8    	vpermt2ps zmm21,zmm13,zmm24
  a2f516:	62 41 7c 48 28 f7    	vmovaps zmm30,zmm15
  a2f51c:	62 32 15 48 7f fc    	vpermt2ps zmm15,zmm13,zmm20
  a2f522:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a2f528:	62 22 15 48 7f f8    	vpermt2ps zmm31,zmm13,zmm16
  a2f52e:	62 91 7c 48 28 ea    	vmovaps zmm5,zmm26
  a2f534:	62 42 15 48 7f d6    	vpermt2ps zmm26,zmm13,zmm14
  a2f53a:	62 c1 d5 40 15 cf    	vunpckhpd zmm17,zmm21,zmm15
  a2f540:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm17
  a2f547:	12 
  a2f548:	62 91 85 40 15 c2    	vunpckhpd zmm0,zmm31,zmm26
  a2f54e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a2f555:	0c 
  a2f556:	62 e2 4d 40 7f c8    	vpermt2ps zmm17,zmm22,zmm0
  a2f55c:	62 e1 f5 48 15 da    	vunpckhpd zmm19,zmm1,zmm2
  a2f562:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm19
  a2f569:	16 
  a2f56a:	62 f1 e5 48 15 c4    	vunpckhpd zmm0,zmm3,zmm4
  a2f570:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a2f577:	09 
  a2f578:	62 e2 4d 40 7f d8    	vpermt2ps zmm19,zmm22,zmm0
  a2f57e:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a2f585:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a2f58c:	62 f1 64 40 59 d0    	vmulps zmm2,zmm19,zmm0
  a2f592:	62 f2 75 40 b8 d1    	vfmadd231ps zmm2,zmm17,zmm1
  a2f598:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a2f59f:	06 
  a2f5a0:	62 f1 74 40 59 c0    	vmulps zmm0,zmm17,zmm0
  a2f5a6:	62 b2 75 48 bc c3    	vfnmadd231ps zmm0,zmm1,zmm19
  a2f5ac:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a2f5b3:	1f 
  a2f5b4:	62 f1 7c 48 28 15 42 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff697942]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2f5bb:	79 69 ff 
  a2f5be:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x440]
  a2f5c5:	11 
  a2f5c6:	62 e2 6d 48 7f 4c 24 	vpermt2ps zmm17,zmm2,ZMMWORD PTR [rsp+0x8c0]
  a2f5cd:	23 
  a2f5ce:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a2f5d5:	0e 
  a2f5d6:	62 f2 6d 48 7f 4c 24 	vpermt2ps zmm1,zmm2,ZMMWORD PTR [rsp+0x880]
  a2f5dd:	22 
  a2f5de:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x800]
  a2f5e5:	20 
  a2f5e6:	62 f2 6d 48 7f 5c 24 	vpermt2ps zmm3,zmm2,ZMMWORD PTR [rsp+0xb00]
  a2f5ed:	2c 
  a2f5ee:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0xa80]
  a2f5f5:	2a 
  a2f5f6:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0xa40]
  a2f5fd:	29 
  a2f5fe:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0xc0]
  a2f605:	03 
  a2f606:	62 72 6d 48 7f 6c 24 	vpermt2ps zmm13,zmm2,ZMMWORD PTR [rsp+0xac0]
  a2f60d:	2b 
  a2f60e:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm13
  a2f615:	03 
  a2f616:	62 62 6d 48 7f 5c 24 	vpermt2ps zmm27,zmm2,ZMMWORD PTR [rsp+0xa00]
  a2f61d:	28 
  a2f61e:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x9c0]
  a2f625:	27 
  a2f626:	62 72 6d 48 7f 4c 24 	vpermt2ps zmm9,zmm2,ZMMWORD PTR [rsp+0x40]
  a2f62d:	01 
  a2f62e:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a2f635:	62 12 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm25
  a2f63b:	62 61 f5 40 15 c9    	vunpckhpd zmm25,zmm17,zmm1
  a2f641:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a2f647:	62 91 e5 48 15 cc    	vunpckhpd zmm1,zmm3,zmm28
  a2f64d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm1
  a2f654:	21 
  a2f655:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a2f65b:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a2f661:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a2f667:	62 11 95 48 15 eb    	vunpckhpd zmm13,zmm13,zmm27
  a2f66d:	62 c1 b5 48 15 d4    	vunpckhpd zmm18,zmm9,zmm12
  a2f673:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm18
  a2f67a:	20 
  a2f67b:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a2f681:	62 b2 4d 40 7f ca    	vpermt2ps zmm1,zmm22,zmm18
  a2f687:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a2f68d:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a2f694:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a2f69b:	62 a1 74 48 59 f3    	vmulps zmm22,zmm1,zmm19
  a2f6a1:	62 e2 7d 48 bc f3    	vfnmadd231ps zmm22,zmm0,zmm3
  a2f6a7:	62 e1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm22
  a2f6ae:	62 b1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm19
  a2f6b4:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a2f6ba:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a2f6c1:	01 
  a2f6c2:	62 12 6d 48 7f d8    	vpermt2ps zmm11,zmm2,zmm24
  a2f6c8:	62 22 6d 48 7f f4    	vpermt2ps zmm30,zmm2,zmm20
  a2f6ce:	62 b2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm16
  a2f6d4:	62 d2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm14
  a2f6da:	62 72 6d 48 7f 54 24 	vpermt2ps zmm10,zmm2,ZMMWORD PTR [rsp-0x40]
  a2f6e1:	ff 
  a2f6e2:	62 62 6d 48 7f 6c 24 	vpermt2ps zmm29,zmm2,ZMMWORD PTR [rsp-0x80]
  a2f6e9:	fe 
  a2f6ea:	62 72 6d 48 7f 44 24 	vpermt2ps zmm8,zmm2,ZMMWORD PTR [rsp+0x100]
  a2f6f1:	04 
  a2f6f2:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x1c0]
  a2f6f9:	07 
  a2f6fa:	62 01 ad 48 15 c5    	vunpckhpd zmm24,zmm10,zmm29
  a2f700:	62 f1 bd 48 15 cf    	vunpckhpd zmm1,zmm8,zmm7
  a2f706:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a2f70d:	0e 
  a2f70e:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a2f714:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a2f71a:	62 91 a5 48 15 ce    	vunpckhpd zmm1,zmm11,zmm30
  a2f720:	62 f1 cd 48 15 dd    	vunpckhpd zmm3,zmm6,zmm5
  a2f726:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm3
  a2f72d:	22 
  a2f72e:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a2f734:	62 f2 6d 40 7f d3    	vpermt2ps zmm2,zmm18,zmm3
  a2f73a:	62 e1 7c 48 10 59 15 	vmovups zmm19,ZMMWORD PTR [rcx+0x540]
  a2f741:	62 e1 7c 48 10 61 14 	vmovups zmm20,ZMMWORD PTR [rcx+0x500]
  a2f748:	62 b1 6c 48 59 dc    	vmulps zmm3,zmm2,zmm20
  a2f74e:	62 b2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm19
  a2f754:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a2f75b:	04 
  a2f75c:	62 b1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm20
  a2f762:	62 f2 65 40 b8 c2    	vfmadd231ps zmm0,zmm19,zmm2
  a2f768:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a2f76f:	ff 
  a2f770:	62 b1 f5 40 14 c7    	vunpcklpd zmm0,zmm17,zmm23
  a2f776:	62 91 dd 48 14 e4    	vunpcklpd zmm4,zmm4,zmm28
  a2f77c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a2f783:	0f 
  a2f784:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a2f78b:	03 
  a2f78c:	62 91 ed 48 14 d3    	vunpcklpd zmm2,zmm2,zmm27
  a2f792:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a2f799:	11 
  a2f79a:	62 d1 b5 48 14 dc    	vunpcklpd zmm3,zmm9,zmm12
  a2f7a0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm3
  a2f7a7:	10 
  a2f7a8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a2f7af:	03 
  a2f7b0:	62 e1 7c 48 28 35 86 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff697686]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2f7b7:	76 69 ff 
  a2f7ba:	62 f2 4d 40 7f c4    	vpermt2ps zmm0,zmm22,zmm4
  a2f7c0:	62 f2 4d 40 7f d3    	vpermt2ps zmm2,zmm22,zmm3
  a2f7c6:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a2f7cd:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a2f7d4:	62 d1 6c 48 59 dc    	vmulps zmm3,zmm2,zmm12
  a2f7da:	62 b2 7d 48 bc d8    	vfnmadd231ps zmm3,zmm0,zmm16
  a2f7e0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a2f7e7:	07 
  a2f7e8:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a2f7ee:	62 f2 7d 40 b8 c2    	vfmadd231ps zmm0,zmm16,zmm2
  a2f7f4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a2f7fb:	25 
  a2f7fc:	62 91 a5 48 14 c6    	vunpcklpd zmm0,zmm11,zmm30
  a2f802:	62 f1 cd 48 14 ed    	vunpcklpd zmm5,zmm6,zmm5
  a2f808:	62 91 ad 48 14 d5    	vunpcklpd zmm2,zmm10,zmm29
  a2f80e:	62 61 bd 48 14 df    	vunpcklpd zmm27,zmm8,zmm7
  a2f814:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a2f81a:	62 92 4d 40 7f d3    	vpermt2ps zmm2,zmm22,zmm27
  a2f820:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a2f826:	62 f2 4d 40 7f c5    	vpermt2ps zmm0,zmm22,zmm5
  a2f82c:	62 f1 7c 48 10 71 13 	vmovups zmm6,ZMMWORD PTR [rcx+0x4c0]
  a2f833:	62 71 7c 48 10 41 12 	vmovups zmm8,ZMMWORD PTR [rcx+0x480]
  a2f83a:	62 d1 7c 48 59 d8    	vmulps zmm3,zmm0,zmm8
  a2f840:	62 f2 6d 48 bc de    	vfnmadd231ps zmm3,zmm2,zmm6
  a2f846:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm3
  a2f84d:	23 
  a2f84e:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a2f854:	62 f2 4d 48 b8 d0    	vfmadd231ps zmm2,zmm6,zmm0
  a2f85a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm2
  a2f861:	24 
  a2f862:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a2f869:	02 
  a2f86a:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x140]
  a2f871:	05 
  a2f872:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a2f879:	08 
  a2f87a:	62 71 ed 48 14 44 24 	vunpcklpd zmm8,zmm2,ZMMWORD PTR [rsp+0x780]
  a2f881:	1e 
  a2f882:	62 d1 d5 40 14 d7    	vunpcklpd zmm2,zmm21,zmm15
  a2f888:	62 81 85 40 14 e2    	vunpcklpd zmm20,zmm31,zmm26
  a2f88e:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a2f894:	62 b2 4d 40 7f d4    	vpermt2ps zmm2,zmm22,zmm20
  a2f89a:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a2f8a0:	62 d2 4d 40 7f c0    	vpermt2ps zmm0,zmm22,zmm8
  a2f8a6:	62 71 7c 48 10 59 1b 	vmovups zmm11,ZMMWORD PTR [rcx+0x6c0]
  a2f8ad:	62 71 7c 48 10 61 1a 	vmovups zmm12,ZMMWORD PTR [rcx+0x680]
  a2f8b4:	62 d1 7c 48 59 dc    	vmulps zmm3,zmm0,zmm12
  a2f8ba:	62 d2 6d 48 b8 db    	vfmadd231ps zmm3,zmm2,zmm11
  a2f8c0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a2f8c7:	02 
  a2f8c8:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a2f8ce:	62 f2 25 48 bc d0    	vfnmadd231ps zmm2,zmm11,zmm0
  a2f8d4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a2f8db:	05 
  a2f8dc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a2f8e3:	15 
  a2f8e4:	62 71 fd 48 14 5c 24 	vunpcklpd zmm11,zmm0,ZMMWORD PTR [rsp+0x500]
  a2f8eb:	14 
  a2f8ec:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2f8f3:	13 
  a2f8f4:	62 71 fd 48 14 64 24 	vunpcklpd zmm12,zmm0,ZMMWORD PTR [rsp+0x980]
  a2f8fb:	26 
  a2f8fc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a2f903:	1a 
  a2f904:	62 e1 fd 48 14 44 24 	vunpcklpd zmm16,zmm0,ZMMWORD PTR [rsp+0x640]
  a2f90b:	19 
  a2f90c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a2f913:	18 
  a2f914:	62 71 fd 48 14 54 24 	vunpcklpd zmm10,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a2f91b:	17 
  a2f91c:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a2f922:	62 c2 4d 40 7f c2    	vpermt2ps zmm16,zmm22,zmm10
  a2f928:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a2f92e:	62 52 4d 40 7f dc    	vpermt2ps zmm11,zmm22,zmm12
  a2f934:	62 e1 7c 48 10 51 0b 	vmovups zmm18,ZMMWORD PTR [rcx+0x2c0]
  a2f93b:	62 e1 7c 48 10 59 0a 	vmovups zmm19,ZMMWORD PTR [rcx+0x280]
  a2f942:	62 b1 24 48 59 db    	vmulps zmm3,zmm11,zmm19
  a2f948:	62 b2 7d 40 b8 da    	vfmadd231ps zmm3,zmm16,zmm18
  a2f94e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2f955:	fe 
  a2f956:	62 b1 7c 40 59 e3    	vmulps zmm4,zmm16,zmm19
  a2f95c:	62 d2 6d 40 bc e3    	vfnmadd231ps zmm4,zmm18,zmm11
  a2f962:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a2f969:	08 
  a2f96a:	62 62 4d 40 7f 4c 24 	vpermt2ps zmm25,zmm22,ZMMWORD PTR [rsp+0x840]
  a2f971:	21 
  a2f972:	62 72 4d 40 7f 6c 24 	vpermt2ps zmm13,zmm22,ZMMWORD PTR [rsp+0x800]
  a2f979:	20 
  a2f97a:	62 71 7c 48 10 59 07 	vmovups zmm11,ZMMWORD PTR [rcx+0x1c0]
  a2f981:	62 e1 7c 48 10 49 06 	vmovups zmm17,ZMMWORD PTR [rcx+0x180]
  a2f988:	62 b1 14 48 59 e1    	vmulps zmm4,zmm13,zmm17
  a2f98e:	62 d2 35 40 bc e3    	vfnmadd231ps zmm4,zmm25,zmm11
  a2f994:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm4
  a2f99b:	1a 
  a2f99c:	62 b1 34 40 59 e1    	vmulps zmm4,zmm25,zmm17
  a2f9a2:	62 d2 25 48 b8 e5    	vfmadd231ps zmm4,zmm11,zmm13
  a2f9a8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm4
  a2f9af:	19 
  a2f9b0:	62 62 4d 40 7f 44 24 	vpermt2ps zmm24,zmm22,ZMMWORD PTR [rsp+0x380]
  a2f9b7:	0e 
  a2f9b8:	62 f2 4d 40 7f 4c 24 	vpermt2ps zmm1,zmm22,ZMMWORD PTR [rsp+0x880]
  a2f9bf:	22 
  a2f9c0:	62 71 7c 48 10 59 17 	vmovups zmm11,ZMMWORD PTR [rcx+0x5c0]
  a2f9c7:	62 71 7c 48 10 49 16 	vmovups zmm9,ZMMWORD PTR [rcx+0x580]
  a2f9ce:	62 d1 74 48 59 d9    	vmulps zmm3,zmm1,zmm9
  a2f9d4:	62 d2 3d 40 bc db    	vfnmadd231ps zmm3,zmm24,zmm11
  a2f9da:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a2f9e1:	18 
  a2f9e2:	62 d1 3c 40 59 d9    	vmulps zmm3,zmm24,zmm9
  a2f9e8:	62 f2 25 48 b8 d9    	vfmadd231ps zmm3,zmm11,zmm1
  a2f9ee:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm3
  a2f9f5:	17 
  a2f9f6:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x480]
  a2f9fd:	12 
  a2f9fe:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x300]
  a2fa05:	0c 
  a2fa06:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x580]
  a2fa0d:	16 
  a2fa0e:	62 72 4d 40 7f 4c 24 	vpermt2ps zmm9,zmm22,ZMMWORD PTR [rsp+0x240]
  a2fa15:	09 
  a2fa16:	62 f1 7c 48 10 49 1f 	vmovups zmm1,ZMMWORD PTR [rcx+0x7c0]
  a2fa1d:	62 71 7c 48 10 59 1e 	vmovups zmm11,ZMMWORD PTR [rcx+0x780]
  a2fa24:	62 d1 34 48 59 db    	vmulps zmm3,zmm9,zmm11
  a2fa2a:	62 f2 5d 48 b8 d9    	vfmadd231ps zmm3,zmm4,zmm1
  a2fa30:	62 d1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm11
  a2fa36:	62 d2 75 48 bc e1    	vfnmadd231ps zmm4,zmm1,zmm9
  a2fa3c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm4
  a2fa43:	12 
  a2fa44:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x2c0]
  a2fa4b:	0b 
  a2fa4c:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x280]
  a2fa53:	0a 
  a2fa54:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x700]
  a2fa5b:	1c 
  a2fa5c:	62 72 4d 40 7f 6c 24 	vpermt2ps zmm13,zmm22,ZMMWORD PTR [rsp+0x6c0]
  a2fa63:	1b 
  a2fa64:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a2fa6b:	62 71 7c 48 10 59 0e 	vmovups zmm11,ZMMWORD PTR [rcx+0x380]
  a2fa72:	62 41 14 48 59 e3    	vmulps zmm28,zmm13,zmm11
  a2fa78:	62 62 5d 48 b8 e1    	vfmadd231ps zmm28,zmm4,zmm1
  a2fa7e:	62 41 5c 48 59 f3    	vmulps zmm30,zmm4,zmm11
  a2fa84:	62 42 75 48 bc f5    	vfnmadd231ps zmm30,zmm1,zmm13
  a2fa8a:	62 71 7c 48 28 1d 6c 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff69736c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2fa91:	73 69 ff 
  a2fa94:	62 62 25 48 7f ed    	vpermt2ps zmm29,zmm11,zmm5
  a2fa9a:	62 92 25 48 7f fb    	vpermt2ps zmm7,zmm11,zmm27
  a2faa0:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a2faa7:	62 f1 7c 48 10 61 10 	vmovups zmm4,ZMMWORD PTR [rcx+0x400]
  a2faae:	62 e1 44 48 59 d4    	vmulps zmm18,zmm7,zmm4
  a2fab4:	62 e2 15 40 b8 d1    	vfmadd231ps zmm18,zmm29,zmm1
  a2faba:	62 61 14 40 59 ec    	vmulps zmm29,zmm29,zmm4
  a2fac0:	62 62 75 48 bc ef    	vfnmadd231ps zmm29,zmm1,zmm7
  a2fac6:	62 d2 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm12
  a2facc:	62 d2 25 48 7f d2    	vpermt2ps zmm2,zmm11,zmm10
  a2fad2:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a2fad9:	62 f1 7c 48 10 61 08 	vmovups zmm4,ZMMWORD PTR [rcx+0x200]
  a2fae0:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a2fae6:	62 62 7d 48 bc f9    	vfnmadd231ps zmm31,zmm0,zmm1
  a2faec:	62 61 7c 48 59 dc    	vmulps zmm27,zmm0,zmm4
  a2faf2:	62 62 75 48 b8 da    	vfmadd231ps zmm27,zmm1,zmm2
  a2faf8:	62 52 25 48 7f f8    	vpermt2ps zmm15,zmm11,zmm8
  a2fafe:	62 b2 25 48 7f f4    	vpermt2ps zmm6,zmm11,zmm20
  a2fb04:	62 f1 7c 48 10 49 19 	vmovups zmm1,ZMMWORD PTR [rcx+0x640]
  a2fb0b:	62 f1 7c 48 10 51 18 	vmovups zmm2,ZMMWORD PTR [rcx+0x600]
  a2fb12:	62 71 4c 48 59 f2    	vmulps zmm14,zmm6,zmm2
  a2fb18:	62 72 05 48 bc f1    	vfnmadd231ps zmm14,zmm15,zmm1
  a2fb1e:	62 71 04 48 59 c2    	vmulps zmm8,zmm15,zmm2
  a2fb24:	62 72 75 48 b8 c6    	vfmadd231ps zmm8,zmm1,zmm6
  a2fb2a:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0xc0]
  a2fb31:	03 
  a2fb32:	62 72 25 48 7f 4c 24 	vpermt2ps zmm9,zmm11,ZMMWORD PTR [rsp+0x3c0]
  a2fb39:	0f 
  a2fb3a:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x440]
  a2fb41:	11 
  a2fb42:	62 e2 25 48 7f 4c 24 	vpermt2ps zmm17,zmm11,ZMMWORD PTR [rsp+0x400]
  a2fb49:	10 
  a2fb4a:	62 61 7c 48 10 04 24 	vmovups zmm24,ZMMWORD PTR [rsp]
  a2fb51:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x100]
  a2fb58:	04 
  a2fb59:	62 b1 3c 40 5c cf    	vsubps zmm1,zmm24,zmm23
  a2fb5f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a2fb66:	01 
  a2fb67:	62 f1 6c 48 5c 54 24 	vsubps zmm2,zmm2,ZMMWORD PTR [rsp-0x40]
  a2fb6e:	ff 
  a2fb6f:	62 f1 74 48 58 ea    	vaddps zmm5,zmm1,zmm2
  a2fb75:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm5
  a2fb7c:	0b 
  a2fb7d:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a2fb83:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a2fb8a:	1b 
  a2fb8b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a2fb92:	1d 
  a2fb93:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x180]
  a2fb9a:	06 
  a2fb9b:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x340]
  a2fba2:	0d 
  a2fba3:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x7c0]
  a2fbaa:	1f 
  a2fbab:	62 d1 7c 40 5c d7    	vsubps zmm2,zmm16,zmm15
  a2fbb1:	62 f1 74 48 5c ea    	vsubps zmm5,zmm1,zmm2
  a2fbb7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a2fbbe:	0a 
  a2fbbf:	62 f1 6c 48 58 c9    	vaddps zmm1,zmm2,zmm1
  a2fbc5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm1
  a2fbcc:	26 
  a2fbcd:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x1c0]
  a2fbd4:	07 
  a2fbd5:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x8c0]
  a2fbdc:	23 
  a2fbdd:	62 b1 34 40 5c ce    	vsubps zmm1,zmm25,zmm22
  a2fbe3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a2fbea:	09 
  a2fbeb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a2fbf2:	fe 
  a2fbf3:	62 f1 7c 48 5c 54 24 	vsubps zmm2,zmm0,ZMMWORD PTR [rsp+0x80]
  a2fbfa:	02 
  a2fbfb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm2
  a2fc02:	1c 
  a2fc03:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a2fc09:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x940]
  a2fc10:	25 
  a2fc11:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x900]
  a2fc18:	24 
  a2fc19:	62 b1 2c 40 5c d5    	vsubps zmm2,zmm26,zmm21
  a2fc1f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a2fc26:	15 
  a2fc27:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x140]
  a2fc2e:	05 
  a2fc2f:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x200]
  a2fc36:	08 
  a2fc37:	62 b1 5c 40 5c e3    	vsubps zmm4,zmm20,zmm19
  a2fc3d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm4
  a2fc44:	14 
  a2fc45:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a2fc4b:	62 72 7d 48 18 2d ab 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff645aab]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a2fc52:	5a 64 ff 
  a2fc55:	62 d1 6c 48 59 ed    	vmulps zmm5,zmm2,zmm13
  a2fc5b:	62 72 7d 48 18 25 ff 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff6459ff]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a2fc62:	59 64 ff 
  a2fc65:	62 d2 75 48 b8 ec    	vfmadd231ps zmm5,zmm1,zmm12
  a2fc6b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm5
  a2fc72:	1e 
  a2fc73:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a2fc79:	62 f2 15 48 bc d1    	vfnmadd231ps zmm2,zmm13,zmm1
  a2fc7f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a2fc86:	03 
  a2fc87:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x680]
  a2fc8e:	1a 
  a2fc8f:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x600]
  a2fc96:	18 
  a2fc97:	62 d1 24 48 5c c2    	vsubps zmm0,zmm11,zmm10
  a2fc9d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a2fca4:	11 
  a2fca5:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a2fcab:	62 f1 1c 40 5c cb    	vsubps zmm1,zmm28,zmm3
  a2fcb1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a2fcb8:	10 
  a2fcb9:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a2fcbf:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x640]
  a2fcc6:	19 
  a2fcc7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x5c0]
  a2fcce:	17 
  a2fccf:	62 f1 64 48 5c e9    	vsubps zmm5,zmm3,zmm1
  a2fcd5:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a2fcdc:	0f 
  a2fcdd:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x480]
  a2fce4:	12 
  a2fce5:	62 91 4c 48 5c c6    	vsubps zmm0,zmm6,zmm30
  a2fceb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a2fcf2:	0e 
  a2fcf3:	62 f1 54 48 5c e8    	vsubps zmm5,zmm5,zmm0
  a2fcf9:	62 d1 54 48 59 fc    	vmulps zmm7,zmm5,zmm12
  a2fcff:	62 d2 6d 48 b8 fd    	vfmadd231ps zmm7,zmm2,zmm13
  a2fd05:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a2fd0c:	0c 
  a2fd0d:	62 d1 6c 48 59 fc    	vmulps zmm7,zmm2,zmm12
  a2fd13:	62 f2 15 48 bc fd    	vfnmadd231ps zmm7,zmm13,zmm5
  a2fd19:	62 31 34 48 5c e2    	vsubps zmm12,zmm9,zmm18
  a2fd1f:	62 d1 6c 40 58 d1    	vaddps zmm2,zmm18,zmm9
  a2fd25:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm2
  a2fd2c:	16 
  a2fd2d:	62 c1 24 40 5c d0    	vsubps zmm18,zmm27,zmm8
  a2fd33:	62 d1 24 40 58 c0    	vaddps zmm0,zmm27,zmm8
  a2fd39:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a2fd40:	13 
  a2fd41:	62 d1 7c 40 58 c7    	vaddps zmm0,zmm16,zmm15
  a2fd47:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a2fd4e:	0d 
  a2fd4f:	62 b1 3c 40 58 c7    	vaddps zmm0,zmm24,zmm23
  a2fd55:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a2fd5c:	04 
  a2fd5d:	62 e1 64 48 58 c1    	vaddps zmm16,zmm3,zmm1
  a2fd63:	62 f1 1c 40 58 e4    	vaddps zmm4,zmm28,zmm4
  a2fd69:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a2fd70:	62 d1 24 48 58 da    	vaddps zmm3,zmm11,zmm10
  a2fd76:	62 71 0c 40 58 d6    	vaddps zmm10,zmm30,zmm6
  a2fd7c:	62 b1 34 40 58 f6    	vaddps zmm6,zmm25,zmm22
  a2fd82:	62 a1 64 40 58 dc    	vaddps zmm19,zmm19,zmm20
  a2fd88:	62 31 2c 40 58 cd    	vaddps zmm9,zmm26,zmm21
  a2fd8e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a2fd95:	fe 
  a2fd96:	62 61 7c 48 58 44 24 	vaddps zmm24,zmm0,ZMMWORD PTR [rsp+0x80]
  a2fd9d:	02 
  a2fd9e:	62 91 74 40 5c c5    	vsubps zmm0,zmm17,zmm29
  a2fda4:	62 81 74 40 58 fd    	vaddps zmm23,zmm17,zmm29
  a2fdaa:	62 01 0c 48 5c e7    	vsubps zmm28,zmm14,zmm31
  a2fdb0:	62 51 04 40 58 c6    	vaddps zmm8,zmm31,zmm14
  a2fdb6:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a2fdbd:	ff 
  a2fdbe:	62 61 6c 48 58 5c 24 	vaddps zmm27,zmm2,ZMMWORD PTR [rsp+0x40]
  a2fdc5:	01 
  a2fdc6:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a2fdcd:	06 
  a2fdce:	62 f1 6c 48 58 54 24 	vaddps zmm2,zmm2,ZMMWORD PTR [rsp+0x740]
  a2fdd5:	1d 
  a2fdd6:	62 21 4c 48 5c d3    	vsubps zmm26,zmm6,zmm19
  a2fddc:	62 01 34 48 5c e8    	vsubps zmm29,zmm9,zmm24
  a2fde2:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a2fde8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a2fdef:	02 
  a2fdf0:	62 91 14 40 5c ca    	vsubps zmm1,zmm29,zmm26
  a2fdf6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a2fdfd:	05 
  a2fdfe:	62 61 7c 40 5c d4    	vsubps zmm26,zmm16,zmm4
  a2fe04:	62 41 64 48 5c ea    	vsubps zmm29,zmm3,zmm10
  a2fe0a:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a2fe10:	62 91 2c 40 5c cd    	vsubps zmm1,zmm26,zmm29
  a2fe16:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a2fe1d:	ff 
  a2fe1e:	62 01 14 40 58 d2    	vaddps zmm26,zmm29,zmm26
  a2fe24:	62 91 1c 48 5c e4    	vsubps zmm4,zmm12,zmm28
  a2fe2a:	62 d1 1c 40 58 cc    	vaddps zmm1,zmm28,zmm12
  a2fe30:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a2fe37:	fe 
  a2fe38:	62 f2 7d 48 18 1d 5a 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff64555a]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2fe3f:	55 64 ff 
  a2fe42:	62 f1 64 48 59 4c 24 	vmulps zmm1,zmm3,ZMMWORD PTR [rsp+0x6c0]
  a2fe49:	1b 
  a2fe4a:	62 61 64 48 59 6c 24 	vmulps zmm29,zmm3,ZMMWORD PTR [rsp+0x980]
  a2fe51:	26 
  a2fe52:	62 91 74 48 58 ed    	vaddps zmm5,zmm1,zmm29
  a2fe58:	62 01 74 48 5c ed    	vsubps zmm29,zmm1,zmm29
  a2fe5e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a2fe65:	10 
  a2fe66:	62 71 74 48 58 74 24 	vaddps zmm14,zmm1,ZMMWORD PTR [rsp+0x440]
  a2fe6d:	11 
  a2fe6e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a2fe75:	0e 
  a2fe76:	62 71 74 48 58 5c 24 	vaddps zmm11,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a2fe7d:	0f 
  a2fe7e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x700]
  a2fe85:	1c 
  a2fe86:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x240]
  a2fe8d:	09 
  a2fe8e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a2fe95:	14 
  a2fe96:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x540]
  a2fe9d:	15 
  a2fe9e:	62 a1 7c 48 5c e2    	vsubps zmm20,zmm0,zmm18
  a2fea4:	62 b1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm18
  a2feaa:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a2feb1:	08 
  a2feb2:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp+0x280]
  a2feb9:	0a 
  a2feba:	62 71 64 48 59 64 24 	vmulps zmm12,zmm3,ZMMWORD PTR [rsp+0x2c0]
  a2fec1:	0b 
  a2fec2:	62 c1 7c 48 5c f4    	vsubps zmm22,zmm0,zmm12
  a2fec8:	62 f1 1c 48 58 c0    	vaddps zmm0,zmm12,zmm0
  a2fece:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a2fed5:	07 
  a2fed6:	62 f2 7d 48 18 0d 84 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff645784]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a2fedd:	57 64 ff 
  a2fee0:	62 71 04 48 59 e1    	vmulps zmm12,zmm15,zmm1
  a2fee6:	62 f2 7d 48 18 05 10 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff645810]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a2feed:	58 64 ff 
  a2fef0:	62 72 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm0
  a2fef6:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a2fefc:	62 52 75 48 bc fd    	vfnmadd231ps zmm15,zmm1,zmm13
  a2ff02:	62 71 24 48 59 e8    	vmulps zmm13,zmm11,zmm0
  a2ff08:	62 72 0d 48 b8 e9    	vfmadd231ps zmm13,zmm14,zmm1
  a2ff0e:	62 71 24 48 59 d9    	vmulps zmm11,zmm11,zmm1
  a2ff14:	62 52 7d 48 bc de    	vfnmadd231ps zmm11,zmm0,zmm14
  a2ff1a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a2ff21:	16 
  a2ff22:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x4c0]
  a2ff29:	13 
  a2ff2a:	62 71 7c 48 5c f1    	vsubps zmm14,zmm0,zmm1
  a2ff30:	62 e1 74 48 58 e8    	vaddps zmm21,zmm1,zmm0
  a2ff36:	62 61 24 40 5c f2    	vsubps zmm30,zmm27,zmm2
  a2ff3c:	62 f1 24 40 58 ca    	vaddps zmm1,zmm27,zmm2
  a2ff42:	62 41 74 40 58 fa    	vaddps zmm31,zmm17,zmm10
  a2ff48:	62 21 4c 48 58 db    	vaddps zmm27,zmm6,zmm19
  a2ff4e:	62 c1 44 40 5c c8    	vsubps zmm17,zmm23,zmm8
  a2ff54:	62 c1 44 40 58 d8    	vaddps zmm19,zmm23,zmm8
  a2ff5a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a2ff61:	0d 
  a2ff62:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a2ff69:	04 
  a2ff6a:	62 e1 7c 48 5c fa    	vsubps zmm23,zmm0,zmm2
  a2ff70:	62 61 6c 48 58 c8    	vaddps zmm25,zmm2,zmm0
  a2ff76:	62 11 34 48 58 d0    	vaddps zmm10,zmm9,zmm24
  a2ff7c:	62 f1 7c 40 58 04 24 	vaddps zmm0,zmm16,ZMMWORD PTR [rsp]
  a2ff83:	62 21 5c 48 5c c6    	vsubps zmm24,zmm4,zmm22
  a2ff89:	62 f1 4c 40 58 d4    	vaddps zmm2,zmm22,zmm4
  a2ff8f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a2ff96:	04 
  a2ff97:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a2ff9e:	03 
  a2ff9f:	62 e1 6c 48 5c c7    	vsubps zmm16,zmm2,zmm7
  a2ffa5:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a2ffab:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a2ffb2:	01 
  a2ffb3:	62 71 5c 40 5c cd    	vsubps zmm9,zmm20,zmm5
  a2ffb9:	62 f1 5c 40 58 d5    	vaddps zmm2,zmm20,zmm5
  a2ffbf:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a2ffc6:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x780]
  a2ffcd:	1e 
  a2ffce:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a2ffd5:	0c 
  a2ffd6:	62 f1 6c 48 58 ec    	vaddps zmm5,zmm2,zmm4
  a2ffdc:	62 61 6c 48 5c e4    	vsubps zmm28,zmm2,zmm4
  a2ffe2:	62 b1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm23
  a2ffe8:	62 51 44 40 58 f6    	vaddps zmm14,zmm23,zmm14
  a2ffee:	62 e1 64 48 59 64 24 	vmulps zmm20,zmm3,ZMMWORD PTR [rsp+0x140]
  a2fff5:	05 
  a2fff6:	62 e1 2c 40 59 f3    	vmulps zmm22,zmm26,zmm3
  a2fffc:	62 a1 5c 40 58 fe    	vaddps zmm23,zmm20,zmm22
  a30002:	62 21 5c 40 5c d6    	vsubps zmm26,zmm20,zmm22
  a30008:	62 81 74 40 5c e6    	vsubps zmm20,zmm17,zmm30
  a3000e:	62 81 74 40 58 ce    	vaddps zmm17,zmm17,zmm30
  a30014:	62 e1 64 48 59 74 24 	vmulps zmm22,zmm3,ZMMWORD PTR [rsp-0x40]
  a3001b:	ff 
  a3001c:	62 61 64 48 59 74 24 	vmulps zmm30,zmm3,ZMMWORD PTR [rsp+0x80]
  a30023:	02 
  a30024:	62 81 4c 40 5c d6    	vsubps zmm18,zmm22,zmm30
  a3002a:	62 21 0c 40 58 f6    	vaddps zmm30,zmm30,zmm22
  a30030:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a30037:	fe 
  a30038:	62 81 6c 48 5c f5    	vsubps zmm22,zmm2,zmm29
  a3003e:	62 61 14 40 58 ea    	vaddps zmm29,zmm29,zmm2
  a30044:	62 d1 04 48 5c db    	vsubps zmm3,zmm15,zmm11
  a3004a:	62 51 04 48 58 db    	vaddps zmm11,zmm15,zmm11
  a30050:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x200]
  a30057:	08 
  a30058:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x1c0]
  a3005f:	07 
  a30060:	62 f1 5c 48 5c d6    	vsubps zmm2,zmm4,zmm6
  a30066:	62 71 5c 48 58 c6    	vaddps zmm8,zmm4,zmm6
  a3006c:	62 51 14 48 5c fc    	vsubps zmm15,zmm13,zmm12
  a30072:	62 51 1c 48 58 e5    	vaddps zmm12,zmm12,zmm13
  a30078:	62 71 54 40 5c e9    	vsubps zmm13,zmm21,zmm1
  a3007e:	62 b1 74 48 58 f5    	vaddps zmm6,zmm1,zmm21
  a30084:	62 e1 2c 48 5c e8    	vsubps zmm21,zmm10,zmm0
  a3008a:	62 71 2c 48 58 d0    	vaddps zmm10,zmm10,zmm0
  a30090:	62 91 64 40 5c c9    	vsubps zmm1,zmm19,zmm25
  a30096:	62 91 64 40 58 e1    	vaddps zmm4,zmm19,zmm25
  a3009c:	62 91 04 40 5c c3    	vsubps zmm0,zmm31,zmm27
  a300a2:	62 01 24 40 58 ff    	vaddps zmm31,zmm27,zmm31
  a300a8:	62 e1 3c 40 58 dd    	vaddps zmm19,zmm24,zmm5
  a300ae:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm19
  a300b5:	02 
  a300b6:	62 61 3c 40 5c cd    	vsubps zmm25,zmm24,zmm5
  a300bc:	62 b1 34 48 5c e8    	vsubps zmm5,zmm9,zmm16
  a300c2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a300c9:	ff 
  a300ca:	62 21 34 48 58 d8    	vaddps zmm27,zmm9,zmm16
  a300d0:	62 b1 44 48 5c ea    	vsubps zmm5,zmm7,zmm18
  a300d6:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a300dd:	fe 
  a300de:	62 a1 44 48 58 d2    	vaddps zmm18,zmm7,zmm18
  a300e4:	62 21 5c 40 5c c7    	vsubps zmm24,zmm20,zmm23
  a300ea:	62 a1 5c 40 58 df    	vaddps zmm19,zmm20,zmm23
  a300f0:	62 d1 4c 40 5c ef    	vsubps zmm5,zmm22,zmm15
  a300f6:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a300fd:	05 
  a300fe:	62 c1 4c 40 58 e7    	vaddps zmm20,zmm22,zmm15
  a30104:	62 f1 6c 48 5c eb    	vsubps zmm5,zmm2,zmm3
  a3010a:	62 71 6c 48 58 fb    	vaddps zmm15,zmm2,zmm3
  a30110:	62 f1 14 48 5c d0    	vsubps zmm2,zmm13,zmm0
  a30116:	62 e1 14 48 58 f0    	vaddps zmm22,zmm13,zmm0
  a3011c:	62 b1 74 48 5c fd    	vsubps zmm7,zmm1,zmm21
  a30122:	62 a1 74 48 58 fd    	vaddps zmm23,zmm1,zmm21
  a30128:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a3012f:	04 
  a30130:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a30137:	01 
  a30138:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a3013e:	62 f1 7c 48 58 db    	vaddps zmm3,zmm0,zmm3
  a30144:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a3014b:	62 11 7c 48 5c cc    	vsubps zmm9,zmm0,zmm28
  a30151:	62 01 7c 48 58 e4    	vaddps zmm28,zmm0,zmm28
  a30157:	62 81 0c 48 5c ea    	vsubps zmm21,zmm14,zmm26
  a3015d:	62 01 0c 48 58 d2    	vaddps zmm26,zmm14,zmm26
  a30163:	62 91 74 40 5c c6    	vsubps zmm0,zmm17,zmm30
  a30169:	62 01 74 40 58 f6    	vaddps zmm30,zmm17,zmm30
  a3016f:	62 51 14 40 5c f3    	vsubps zmm14,zmm29,zmm11
  a30175:	62 51 14 40 58 db    	vaddps zmm11,zmm29,zmm11
  a3017b:	62 51 3c 48 5c ec    	vsubps zmm13,zmm8,zmm12
  a30181:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a30187:	62 c1 4c 48 5c c2    	vsubps zmm16,zmm6,zmm10
  a3018d:	62 d1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm10
  a30193:	62 81 5c 48 5c cf    	vsubps zmm17,zmm4,zmm31
  a30199:	62 91 5c 48 58 e7    	vaddps zmm4,zmm4,zmm31
  a3019f:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a301a5:	62 71 7c 48 28 25 11 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff660a11]        # 90bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e070>
  a301ac:	0a 66 ff 
  a301af:	62 72 1d 48 7f d6    	vpermt2ps zmm10,zmm12,zmm6
  a301b5:	62 71 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm10
  a301bc:	62 71 5c 48 14 d6    	vunpcklps zmm10,zmm4,zmm6
  a301c2:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm10,0x3
  a301c9:	06 03 
  a301cb:	62 71 5c 48 15 d6    	vunpckhps zmm10,zmm4,zmm6
  a301d1:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a301d8:	c5 78 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm10
  a301de:	c5 7c 28 15 1a 0a 66 	vmovaps ymm10,YMMWORD PTR [rip+0xffffffffff660a1a]        # 90c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e0b0>
  a301e5:	ff 
  a301e6:	62 f2 2d 48 7f e6    	vpermt2ps zmm4,zmm10,zmm6
  a301ec:	c5 fc 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm4
  a301f2:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a301f8:	62 d2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm11
  a301fe:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm4
  a30205:	78 00 00 00 
  a30209:	62 d1 3c 48 14 e3    	vunpcklps zmm4,zmm8,zmm11
  a3020f:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm4,0x3
  a30216:	d8 00 00 00 03 
  a3021b:	62 d1 3c 48 15 e3    	vunpckhps zmm4,zmm8,zmm11
  a30221:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a30228:	c5 f8 13 a4 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm4
  a3022f:	00 00 
  a30231:	62 52 2d 48 7f c3    	vpermt2ps zmm8,zmm10,zmm11
  a30237:	c5 7c 11 84 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm8
  a3023e:	00 00 
  a30240:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a30246:	62 92 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm26
  a3024c:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm4
  a30253:	f0 00 00 00 
  a30257:	62 91 0c 40 14 e2    	vunpcklps zmm4,zmm30,zmm26
  a3025d:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm4,0x3
  a30264:	15 03 
  a30266:	62 91 0c 40 15 e2    	vunpckhps zmm4,zmm30,zmm26
  a3026c:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a30273:	c5 f8 13 a4 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm4
  a3027a:	00 00 
  a3027c:	62 02 2d 48 7f f2    	vpermt2ps zmm30,zmm10,zmm26
  a30282:	62 61 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm30
  a30289:	30 01 00 00 
  a3028d:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a30293:	62 f2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm3
  a30299:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm4
  a302a0:	68 01 00 00 
  a302a4:	62 f1 1c 40 14 e3    	vunpcklps zmm4,zmm28,zmm3
  a302aa:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm4,0x3
  a302b1:	c8 01 00 00 03 
  a302b6:	62 f1 1c 40 15 e3    	vunpckhps zmm4,zmm28,zmm3
  a302bc:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a302c3:	c5 f8 13 a4 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm4
  a302ca:	00 00 
  a302cc:	62 62 2d 48 7f e3    	vpermt2ps zmm28,zmm10,zmm3
  a302d2:	62 61 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm28
  a302d9:	a8 01 00 00 
  a302dd:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a302e3:	62 b2 1d 48 7f de    	vpermt2ps zmm3,zmm12,zmm22
  a302e9:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm3
  a302f0:	e0 01 00 00 
  a302f4:	62 b1 44 40 14 de    	vunpcklps zmm3,zmm23,zmm22
  a302fa:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm3,0x3
  a30301:	24 03 
  a30303:	62 b1 44 40 15 de    	vunpckhps zmm3,zmm23,zmm22
  a30309:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a30310:	c5 f8 13 9c 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm3
  a30317:	00 00 
  a30319:	62 a2 2d 48 7f fe    	vpermt2ps zmm23,zmm10,zmm22
  a3031f:	62 e1 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm23
  a30326:	11 
  a30327:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a3032d:	62 b2 1d 48 7f dc    	vpermt2ps zmm3,zmm12,zmm20
  a30333:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm3
  a3033a:	58 02 00 00 
  a3033e:	62 b1 04 48 14 dc    	vunpcklps zmm3,zmm15,zmm20
  a30344:	62 f3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm3,0x3
  a3034b:	b8 02 00 00 03 
  a30350:	62 b1 04 48 15 dc    	vunpckhps zmm3,zmm15,zmm20
  a30356:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a3035d:	c5 f8 13 9c 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm3
  a30364:	00 00 
  a30366:	62 32 2d 48 7f fc    	vpermt2ps zmm15,zmm10,zmm20
  a3036c:	c5 7c 11 bc 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm15
  a30373:	00 00 
  a30375:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a3037b:	62 b2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm18
  a30381:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm3
  a30388:	d0 02 00 00 
  a3038c:	62 b1 64 40 14 da    	vunpcklps zmm3,zmm19,zmm18
  a30392:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm3,0x3
  a30399:	33 03 
  a3039b:	62 b1 64 40 15 da    	vunpckhps zmm3,zmm19,zmm18
  a303a1:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a303a8:	c5 f8 13 9c 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm3
  a303af:	00 00 
  a303b1:	62 a2 2d 48 7f da    	vpermt2ps zmm19,zmm10,zmm18
  a303b7:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm19
  a303be:	10 03 00 00 
  a303c2:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a303c8:	62 92 1d 48 7f d9    	vpermt2ps zmm3,zmm12,zmm25
  a303ce:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm3
  a303d5:	48 03 00 00 
  a303d9:	62 91 24 40 14 d9    	vunpcklps zmm3,zmm27,zmm25
  a303df:	62 f3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm3,0x3
  a303e6:	a8 03 00 00 03 
  a303eb:	62 91 24 40 15 d9    	vunpckhps zmm3,zmm27,zmm25
  a303f1:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a303f8:	c5 f8 13 9c 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm3
  a303ff:	00 00 
  a30401:	62 02 2d 48 7f d9    	vpermt2ps zmm27,zmm10,zmm25
  a30407:	62 61 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm27
  a3040e:	88 03 00 00 
  a30412:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a30418:	62 b2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm16
  a3041e:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm3
  a30425:	0f 
  a30426:	62 b1 74 40 14 d8    	vunpcklps zmm3,zmm17,zmm16
  a3042c:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm3,0x3
  a30433:	42 03 
  a30435:	62 b1 74 40 15 d8    	vunpckhps zmm3,zmm17,zmm16
  a3043b:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a30442:	c5 f8 13 9c 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm3
  a30449:	00 00 
  a3044b:	62 a2 2d 48 7f c8    	vpermt2ps zmm17,zmm10,zmm16
  a30451:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm17
  a30458:	20 
  a30459:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a3045f:	62 d2 1d 48 7f de    	vpermt2ps zmm3,zmm12,zmm14
  a30465:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm3
  a3046c:	38 04 00 00 
  a30470:	62 d1 14 48 14 de    	vunpcklps zmm3,zmm13,zmm14
  a30476:	62 f3 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm3,0x3
  a3047d:	98 04 00 00 03 
  a30482:	62 d1 14 48 15 de    	vunpckhps zmm3,zmm13,zmm14
  a30488:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a3048f:	c5 f8 13 9c 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm3
  a30496:	00 00 
  a30498:	62 52 2d 48 7f ee    	vpermt2ps zmm13,zmm10,zmm14
  a3049e:	c5 7c 11 ac 16 78 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm13
  a304a5:	00 00 
  a304a7:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a304ad:	62 b2 1d 48 7f dd    	vpermt2ps zmm3,zmm12,zmm21
  a304b3:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm3
  a304ba:	b0 04 00 00 
  a304be:	62 b1 7c 48 14 dd    	vunpcklps zmm3,zmm0,zmm21
  a304c4:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm3,0x3
  a304cb:	51 03 
  a304cd:	62 b1 7c 48 15 dd    	vunpckhps zmm3,zmm0,zmm21
  a304d3:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a304da:	c5 f8 13 9c 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm3
  a304e1:	00 00 
  a304e3:	62 b2 2d 48 7f c5    	vpermt2ps zmm0,zmm10,zmm21
  a304e9:	c5 fc 11 84 16 f0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm0
  a304f0:	00 00 
  a304f2:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a304f8:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a304fe:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a30505:	28 05 00 00 
  a30509:	62 f1 34 48 14 c1    	vunpcklps zmm0,zmm9,zmm1
  a3050f:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a30516:	88 05 00 00 03 
  a3051b:	62 f1 34 48 15 c1    	vunpckhps zmm0,zmm9,zmm1
  a30521:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a30528:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a3052f:	00 00 
  a30531:	62 72 2d 48 7f c9    	vpermt2ps zmm9,zmm10,zmm1
  a30537:	c5 7c 11 8c 16 68 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm9
  a3053e:	00 00 
  a30540:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a30546:	62 f2 1d 48 7f c2    	vpermt2ps zmm0,zmm12,zmm2
  a3054c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a30553:	a0 05 00 00 
  a30557:	62 f1 44 48 14 c2    	vunpcklps zmm0,zmm7,zmm2
  a3055d:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a30564:	60 03 
  a30566:	62 f1 44 48 15 c2    	vunpckhps zmm0,zmm7,zmm2
  a3056c:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a30573:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a3057a:	00 00 
  a3057c:	62 f2 2d 48 7f fa    	vpermt2ps zmm7,zmm10,zmm2
  a30582:	c5 fc 11 bc 16 e0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm7
  a30589:	00 00 
  a3058b:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a30591:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a30598:	05 
  a30599:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a3059f:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a305a6:	18 06 00 00 
  a305aa:	62 f1 54 48 14 c1    	vunpcklps zmm0,zmm5,zmm1
  a305b0:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a305b7:	78 06 00 00 03 
  a305bc:	62 f1 54 48 15 c1    	vunpckhps zmm0,zmm5,zmm1
  a305c2:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a305c9:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a305d0:	00 00 
  a305d2:	62 f2 2d 48 7f e9    	vpermt2ps zmm5,zmm10,zmm1
  a305d8:	c5 fc 11 ac 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm5
  a305df:	00 00 
  a305e1:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a305e7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a305ee:	fe 
  a305ef:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a305f5:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x690],zmm0
  a305fc:	90 06 00 00 
  a30600:	62 f1 3c 40 14 c1    	vunpcklps zmm0,zmm24,zmm1
  a30606:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x6f0],zmm0,0x3
  a3060d:	6f 03 
  a3060f:	62 f1 3c 40 15 c1    	vunpckhps zmm0,zmm24,zmm1
  a30615:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3061c:	c5 f8 13 84 16 00 07 	vmovlps QWORD PTR [rsi+rdx*1+0x700],xmm0
  a30623:	00 00 
  a30625:	62 62 2d 48 7f c1    	vpermt2ps zmm24,zmm10,zmm1
  a3062b:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x6d0],ymm24
  a30632:	d0 06 00 00 
  a30636:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a3063d:	ff 
  a3063e:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a30644:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a3064b:	02 
  a3064c:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a30652:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x708],zmm0
  a30659:	08 07 00 00 
  a3065d:	62 f1 6c 48 14 c1    	vunpcklps zmm0,zmm2,zmm1
  a30663:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x768],zmm0,0x3
  a3066a:	68 07 00 00 03 
  a3066f:	62 f1 6c 48 15 c1    	vunpckhps zmm0,zmm2,zmm1
  a30675:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3067c:	c5 f8 13 84 16 78 07 	vmovlps QWORD PTR [rsi+rdx*1+0x778],xmm0
  a30683:	00 00 
  a30685:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a3068b:	c5 fc 11 94 16 48 07 	vmovups YMMWORD PTR [rsi+rdx*1+0x748],ymm2
  a30692:	00 00 
  a30694:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a3069b:	48 39 d0             	cmp    rax,rdx
  a3069e:	0f 85 6c e1 ff ff    	jne    a2e810 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a306a4:	48 81 c4 48 0b 00 00 	add    rsp,0xb48
  a306ab:	c5 f8 77             	vzeroupper
  a306ae:	c3                   	ret
