
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a47800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a47800:	55                   	push   rbp
  a47801:	48 89 e5             	mov    rbp,rsp
  a47804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a47808:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a4780f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a47814:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a47819:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a4781e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a47823:	62 e1 7c 48 28 15 53 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff64ab53]        # 92380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f830>
  a4782a:	ab 64 ff 
  a4782d:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a47833:	62 71 7c 48 10 4f 01 	vmovups zmm9,ZMMWORD PTR [rdi+0x40]
  a4783a:	62 71 7c 48 10 7f 02 	vmovups zmm15,ZMMWORD PTR [rdi+0x80]
  a47841:	62 71 7c 48 10 67 03 	vmovups zmm12,ZMMWORD PTR [rdi+0xc0]
  a47848:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a4784c:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a47852:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a47858:	62 f1 7c 48 28 2d 5e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff64ab5e]        # 923c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f870>
  a4785f:	ab 64 ff 
  a47862:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a47868:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a4786e:	62 e2 6d 40 7f e0    	vpermt2ps zmm20,zmm18,zmm0
  a47874:	62 72 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm0
  a4787a:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a47880:	62 72 6d 40 7f f0    	vpermt2ps zmm14,zmm18,zmm0
  a47886:	62 72 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm0
  a4788c:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a47892:	62 e2 6d 40 7f c8    	vpermt2ps zmm17,zmm18,zmm0
  a47898:	62 72 55 48 7f e0    	vpermt2ps zmm12,zmm5,zmm0
  a4789e:	62 e1 7c 48 10 5f 04 	vmovups zmm19,ZMMWORD PTR [rdi+0x100]
  a478a5:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a478ab:	62 e2 6d 40 7f c0    	vpermt2ps zmm16,zmm18,zmm0
  a478b1:	62 e2 55 48 7f d8    	vpermt2ps zmm19,zmm5,zmm0
  a478b7:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a478be:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a478c4:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a478ca:	62 f2 55 48 7f e0    	vpermt2ps zmm4,zmm5,zmm0
  a478d0:	62 e1 7c 48 10 77 06 	vmovups zmm22,ZMMWORD PTR [rdi+0x180]
  a478d7:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a478dd:	62 62 6d 40 7f c0    	vpermt2ps zmm24,zmm18,zmm0
  a478e3:	62 e2 55 48 7f f0    	vpermt2ps zmm22,zmm5,zmm0
  a478e9:	62 e1 7c 48 10 6f 07 	vmovups zmm21,ZMMWORD PTR [rdi+0x1c0]
  a478f0:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a478f6:	62 62 6d 40 7f c8    	vpermt2ps zmm25,zmm18,zmm0
  a478fc:	62 e2 55 48 7f e8    	vpermt2ps zmm21,zmm5,zmm0
  a47902:	62 61 7c 48 10 57 08 	vmovups zmm26,ZMMWORD PTR [rdi+0x200]
  a47909:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a4790f:	62 62 6d 40 7f d8    	vpermt2ps zmm27,zmm18,zmm0
  a47915:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a4791b:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a47922:	62 e2 45 40 77 d0    	vpermi2ps zmm18,zmm23,zmm0
  a47928:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a4792e:	62 11 04 48 58 d2    	vaddps zmm10,zmm15,zmm26
  a47934:	62 d1 74 48 58 ea    	vaddps zmm5,zmm1,zmm10
  a4793a:	62 b1 64 40 58 f6    	vaddps zmm6,zmm19,zmm22
  a47940:	62 51 54 40 58 dc    	vaddps zmm11,zmm21,zmm12
  a47946:	62 d1 5c 48 58 fb    	vaddps zmm7,zmm4,zmm11
  a4794c:	62 51 44 40 58 c1    	vaddps zmm8,zmm23,zmm9
  a47952:	62 11 0c 48 58 eb    	vaddps zmm13,zmm14,zmm27
  a47958:	62 01 0c 48 5c db    	vsubps zmm27,zmm14,zmm27
  a4795e:	62 11 7c 40 58 f0    	vaddps zmm14,zmm16,zmm24
  a47964:	62 01 7c 40 5c c0    	vsubps zmm24,zmm16,zmm24
  a4796a:	62 a1 34 40 58 c1    	vaddps zmm16,zmm25,zmm17
  a47970:	62 21 34 40 5c c9    	vsubps zmm25,zmm25,zmm17
  a47976:	62 a1 6c 40 58 cc    	vaddps zmm17,zmm18,zmm20
  a4797c:	62 a1 6c 40 5c e4    	vsubps zmm20,zmm18,zmm20
  a47982:	62 e2 7d 48 18 15 5c 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff62dd5c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a47989:	dd 62 ff 
  a4798c:	62 01 04 48 5c d2    	vsubps zmm26,zmm15,zmm26
  a47992:	62 62 7d 48 18 25 bc 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff62ddbc]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a47999:	dd 62 ff 
  a4799c:	62 a1 64 40 5c f6    	vsubps zmm22,zmm19,zmm22
  a479a2:	62 51 6c 48 58 fd    	vaddps zmm15,zmm2,zmm13
  a479a8:	62 c1 54 40 5c ec    	vsubps zmm21,zmm21,zmm12
  a479ae:	62 11 3c 40 59 e4    	vmulps zmm12,zmm24,zmm28
  a479b4:	62 c1 44 40 5c f9    	vsubps zmm23,zmm23,zmm9
  a479ba:	62 62 7d 48 18 2d dc 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff62d9dc]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a479c1:	d9 62 ff 
  a479c4:	62 12 25 40 b8 e5    	vfmadd231ps zmm12,zmm27,zmm29
  a479ca:	62 01 24 40 59 dc    	vmulps zmm27,zmm27,zmm28
  a479d0:	62 02 15 40 bc d8    	vfnmadd231ps zmm27,zmm29,zmm24
  a479d6:	62 11 5c 40 59 cc    	vmulps zmm9,zmm20,zmm28
  a479dc:	62 12 35 40 b8 cd    	vfmadd231ps zmm9,zmm25,zmm29
  a479e2:	62 01 34 40 59 c4    	vmulps zmm24,zmm25,zmm28
  a479e8:	62 22 15 40 bc c4    	vfnmadd231ps zmm24,zmm29,zmm20
  a479ee:	62 81 4c 40 59 dc    	vmulps zmm19,zmm22,zmm28
  a479f4:	62 82 2d 40 b8 dd    	vfmadd231ps zmm19,zmm26,zmm29
  a479fa:	62 81 2c 40 59 e4    	vmulps zmm20,zmm26,zmm28
  a47a00:	62 a2 15 40 bc e6    	vfnmadd231ps zmm20,zmm29,zmm22
  a47a06:	62 81 44 40 59 f4    	vmulps zmm22,zmm23,zmm28
  a47a0c:	62 82 55 40 b8 f5    	vfmadd231ps zmm22,zmm21,zmm29
  a47a12:	62 81 54 40 59 ec    	vmulps zmm21,zmm21,zmm28
  a47a18:	62 21 64 48 58 c8    	vaddps zmm25,zmm3,zmm16
  a47a1e:	62 82 45 40 bc ed    	vfnmadd231ps zmm21,zmm23,zmm29
  a47a24:	62 a1 7c 48 28 fa    	vmovaps zmm23,zmm18
  a47a2a:	62 e2 2d 48 a8 f9    	vfmadd213ps zmm23,zmm10,zmm1
  a47a30:	62 62 7d 48 18 15 0a 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff62dc0a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a47a37:	dc 62 ff 
  a47a3a:	62 d2 2d 40 bc ca    	vfnmadd231ps zmm1,zmm26,zmm10
  a47a40:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a47a46:	62 72 25 48 a8 d4    	vfmadd213ps zmm10,zmm11,zmm4
  a47a4c:	62 d2 2d 40 bc e3    	vfnmadd231ps zmm4,zmm26,zmm11
  a47a52:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a47a58:	62 72 15 48 a8 da    	vfmadd213ps zmm11,zmm13,zmm2
  a47a5e:	62 d2 2d 40 bc d5    	vfnmadd231ps zmm2,zmm26,zmm13
  a47a64:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a47a6a:	62 72 7d 40 a8 eb    	vfmadd213ps zmm13,zmm16,zmm3
  a47a70:	62 92 7d 40 bc da    	vfnmadd231ps zmm3,zmm16,zmm26
  a47a76:	62 82 4d 48 bc fa    	vfnmadd231ps zmm23,zmm6,zmm26
  a47a7c:	62 12 3d 48 bc d2    	vfnmadd231ps zmm10,zmm8,zmm26
  a47a82:	62 12 0d 48 bc da    	vfnmadd231ps zmm11,zmm14,zmm26
  a47a88:	62 12 75 40 bc ea    	vfnmadd231ps zmm13,zmm17,zmm26
  a47a8e:	62 f1 54 48 58 ee    	vaddps zmm5,zmm5,zmm6
  a47a94:	62 f2 6d 40 b8 ce    	vfmadd231ps zmm1,zmm18,zmm6
  a47a9a:	62 d1 44 48 58 f0    	vaddps zmm6,zmm7,zmm8
  a47aa0:	62 d2 6d 40 b8 e0    	vfmadd231ps zmm4,zmm18,zmm8
  a47aa6:	62 d1 04 48 58 fe    	vaddps zmm7,zmm15,zmm14
  a47aac:	62 d2 6d 40 b8 d6    	vfmadd231ps zmm2,zmm18,zmm14
  a47ab2:	62 b2 75 40 b8 da    	vfmadd231ps zmm3,zmm17,zmm18
  a47ab8:	62 31 34 40 58 c1    	vaddps zmm8,zmm25,zmm17
  a47abe:	62 11 74 48 58 f3    	vaddps zmm14,zmm1,zmm27
  a47ac4:	62 11 74 48 5c fb    	vsubps zmm15,zmm1,zmm27
  a47aca:	62 81 5c 48 58 c0    	vaddps zmm16,zmm4,zmm24
  a47ad0:	62 91 5c 48 5c e0    	vsubps zmm4,zmm4,zmm24
  a47ad6:	62 a1 6c 48 5c cc    	vsubps zmm17,zmm2,zmm20
  a47adc:	62 e1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm2
  a47ae2:	62 a1 64 48 5c e5    	vsubps zmm20,zmm3,zmm21
  a47ae8:	62 e1 54 40 58 eb    	vaddps zmm21,zmm21,zmm3
  a47aee:	62 d1 44 40 58 d4    	vaddps zmm2,zmm23,zmm12
  a47af4:	62 c1 44 40 5c fc    	vsubps zmm23,zmm23,zmm12
  a47afa:	62 d1 2c 48 58 d9    	vaddps zmm3,zmm10,zmm9
  a47b00:	62 41 2c 48 5c c1    	vsubps zmm24,zmm10,zmm9
  a47b06:	62 31 24 48 5c d3    	vsubps zmm10,zmm11,zmm19
  a47b0c:	62 41 64 40 58 cb    	vaddps zmm25,zmm19,zmm11
  a47b12:	62 a1 14 48 5c de    	vsubps zmm19,zmm13,zmm22
  a47b18:	62 c1 4c 40 58 f5    	vaddps zmm22,zmm22,zmm13
  a47b1e:	62 71 54 48 58 de    	vaddps zmm11,zmm5,zmm6
  a47b24:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a47b2a:	62 d1 44 48 58 c8    	vaddps zmm1,zmm7,zmm8
  a47b30:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a47b36:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a47b3c:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a47b42:	62 b1 2c 48 5c d3    	vsubps zmm2,zmm10,zmm19
  a47b48:	62 31 2c 48 58 d3    	vaddps zmm10,zmm10,zmm19
  a47b4e:	62 31 0c 48 58 e8    	vaddps zmm13,zmm14,zmm16
  a47b54:	62 31 0c 48 5c c0    	vsubps zmm8,zmm14,zmm16
  a47b5a:	62 b1 74 40 58 dc    	vaddps zmm3,zmm17,zmm20
  a47b60:	62 b1 74 40 5c fc    	vsubps zmm7,zmm17,zmm20
  a47b66:	62 71 04 48 5c f4    	vsubps zmm14,zmm15,zmm4
  a47b6c:	62 e1 04 48 58 e4    	vaddps zmm20,zmm15,zmm4
  a47b72:	62 b1 6c 40 5c e5    	vsubps zmm4,zmm18,zmm21
  a47b78:	62 a1 6c 40 58 dd    	vaddps zmm19,zmm18,zmm21
  a47b7e:	62 81 44 40 58 c0    	vaddps zmm16,zmm23,zmm24
  a47b84:	62 81 44 40 5c e8    	vsubps zmm21,zmm23,zmm24
  a47b8a:	62 31 34 40 58 fe    	vaddps zmm15,zmm25,zmm22
  a47b90:	62 a1 34 40 5c d6    	vsubps zmm18,zmm25,zmm22
  a47b96:	62 e1 7c 48 28 0d e0 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff67f3e0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a47b9d:	f3 67 ff 
  a47ba0:	62 32 75 40 7f dc    	vpermt2ps zmm11,zmm17,zmm20
  a47ba6:	62 32 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm21
  a47bac:	62 b2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm19
  a47bb2:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a47bb8:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a47bbe:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a47bc4:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a47bca:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a47bd0:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a47bd6:	62 b2 75 40 7f d2    	vpermt2ps zmm2,zmm17,zmm18
  a47bdc:	62 e1 7c 48 28 15 1a 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff67f31a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a47be3:	f3 67 ff 
  a47be6:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a47bec:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a47bf2:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a47bf8:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a47bfe:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a47c04:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a47c0a:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a47c10:	62 b2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm16
  a47c16:	62 e1 7c 48 28 0d 20 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff67f320]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a47c1d:	f3 67 ff 
  a47c20:	62 32 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm16
  a47c26:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a47c2c:	62 e2 6d 40 7f c5    	vpermt2ps zmm16,zmm18,zmm5
  a47c32:	62 72 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm5
  a47c38:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a47c3e:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a47c44:	62 72 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm6
  a47c4a:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a47c50:	62 d2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm8
  a47c56:	62 52 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm8
  a47c5c:	62 71 fd 48 14 c5    	vunpcklpd zmm8,zmm0,zmm5
  a47c62:	62 f1 fd 48 15 ed    	vunpckhpd zmm5,zmm0,zmm5
  a47c68:	62 e1 fd 40 14 de    	vunpcklpd zmm19,zmm16,zmm6
  a47c6e:	62 e1 fd 40 15 c6    	vunpckhpd zmm16,zmm16,zmm6
  a47c74:	62 d1 a5 48 14 f5    	vunpcklpd zmm6,zmm11,zmm13
  a47c7a:	62 d1 a5 48 15 c5    	vunpckhpd zmm0,zmm11,zmm13
  a47c80:	62 51 9d 48 14 de    	vunpcklpd zmm11,zmm12,zmm14
  a47c86:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  a47c8c:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a47c92:	62 c2 6d 40 7f e7    	vpermt2ps zmm20,zmm18,zmm15
  a47c98:	62 d2 75 40 7f cf    	vpermt2ps zmm1,zmm17,zmm15
  a47c9e:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a47ca4:	62 c2 6d 40 7f e9    	vpermt2ps zmm21,zmm18,zmm9
  a47caa:	62 d2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm9
  a47cb0:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a47cb6:	62 52 6d 40 7f ca    	vpermt2ps zmm9,zmm18,zmm10
  a47cbc:	62 d2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm10
  a47cc2:	62 71 7c 48 28 15 34 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff67f134]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a47cc9:	f1 67 ff 
  a47ccc:	62 e2 5d 48 77 d7    	vpermi2ps zmm18,zmm4,zmm7
  a47cd2:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a47cd8:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a47cde:	62 b2 2d 48 7f fb    	vpermt2ps zmm7,zmm10,zmm19
  a47ce4:	62 e1 7c 48 28 0d 52 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff67f152]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a47ceb:	f1 67 ff 
  a47cee:	62 32 75 40 7f c3    	vpermt2ps zmm8,zmm17,zmm19
  a47cf4:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a47cfa:	62 32 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm16
  a47d00:	62 b2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm16
  a47d06:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a47d0c:	62 52 2d 48 7f fb    	vpermt2ps zmm15,zmm10,zmm11
  a47d12:	62 d2 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm11
  a47d18:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a47d1e:	62 52 2d 48 7f ec    	vpermt2ps zmm13,zmm10,zmm12
  a47d24:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a47d2a:	62 51 dd 40 14 e1    	vunpcklpd zmm12,zmm20,zmm9
  a47d30:	62 51 dd 40 15 c9    	vunpckhpd zmm9,zmm20,zmm9
  a47d36:	62 a1 d5 40 14 c2    	vunpcklpd zmm16,zmm21,zmm18
  a47d3c:	62 a1 d5 40 15 d2    	vunpckhpd zmm18,zmm21,zmm18
  a47d42:	62 71 f5 48 14 db    	vunpcklpd zmm11,zmm1,zmm3
  a47d48:	62 f1 f5 48 15 db    	vunpckhpd zmm3,zmm1,zmm3
  a47d4e:	62 e1 ed 48 14 dc    	vunpcklpd zmm19,zmm2,zmm4
  a47d54:	62 f1 ed 48 15 d4    	vunpckhpd zmm2,zmm2,zmm4
  a47d5a:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a47d60:	62 b2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm16
  a47d66:	62 32 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm16
  a47d6c:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a47d72:	62 a2 2d 48 7f c2    	vpermt2ps zmm16,zmm10,zmm18
  a47d78:	62 32 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm18
  a47d7e:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a47d84:	62 b2 2d 48 7f e3    	vpermt2ps zmm4,zmm10,zmm19
  a47d8a:	62 32 75 40 7f db    	vpermt2ps zmm11,zmm17,zmm19
  a47d90:	62 72 65 48 77 d2    	vpermi2ps zmm10,zmm3,zmm2
  a47d96:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a47d9c:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a47da3:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a47daa:	62 b1 04 48 59 d1    	vmulps zmm2,zmm15,zmm17
  a47db0:	62 b2 5d 48 bc d2    	vfnmadd231ps zmm2,zmm4,zmm18
  a47db6:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a47dbc:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a47dc3:	62 d2 6d 40 b8 e7    	vfmadd231ps zmm4,zmm18,zmm15
  a47dc9:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a47dd0:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a47dd6:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a47ddc:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a47de2:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a47de9:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a47def:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a47df6:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a47dfc:	62 c2 2d 48 bc d6    	vfnmadd231ps zmm18,zmm10,zmm14
  a47e02:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a47e08:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a47e0f:	62 52 0d 48 b8 d5    	vfmadd231ps zmm10,zmm14,zmm13
  a47e15:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a47e1c:	62 31 3c 48 59 f1    	vmulps zmm14,zmm8,zmm17
  a47e22:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a47e28:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a47e2e:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a47e35:	62 52 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm8
  a47e3b:	62 71 7c 48 10 42 0b 	vmovups zmm8,ZMMWORD PTR [rdx+0x2c0]
  a47e42:	62 31 4c 48 59 e9    	vmulps zmm13,zmm6,zmm17
  a47e48:	62 52 25 48 bc e8    	vfnmadd231ps zmm13,zmm11,zmm8
  a47e4e:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a47e54:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a47e5b:	62 72 3d 48 b8 de    	vfmadd231ps zmm11,zmm8,zmm6
  a47e61:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a47e68:	62 31 54 48 59 c1    	vmulps zmm8,zmm5,zmm17
  a47e6e:	62 72 35 48 bc c6    	vfnmadd231ps zmm8,zmm9,zmm6
  a47e74:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a47e7a:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a47e81:	62 72 4d 48 b8 cd    	vfmadd231ps zmm9,zmm6,zmm5
  a47e87:	62 f1 7c 48 10 6a 0f 	vmovups zmm5,ZMMWORD PTR [rdx+0x3c0]
  a47e8e:	62 b1 7c 48 59 f1    	vmulps zmm6,zmm0,zmm17
  a47e94:	62 f2 65 48 bc f5    	vfnmadd231ps zmm6,zmm3,zmm5
  a47e9a:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a47ea0:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a47ea6:	62 f1 44 48 58 c2    	vaddps zmm0,zmm7,zmm2
  a47eac:	62 b1 04 48 58 ea    	vaddps zmm5,zmm15,zmm18
  a47eb2:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a47eb8:	62 d1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm10
  a47ebe:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a47ec4:	62 c1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm13
  a47eca:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a47ed0:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a47ed6:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a47edc:	62 71 34 48 58 e3    	vaddps zmm12,zmm9,zmm3
  a47ee2:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a47ee8:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a47eee:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a47ef4:	62 71 5c 48 58 c1    	vaddps zmm8,zmm4,zmm1
  a47efa:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a47f00:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  a47f06:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a47f0c:	62 c1 14 48 58 cb    	vaddps zmm17,zmm13,zmm11
  a47f12:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a47f18:	62 71 64 48 5c ee    	vsubps zmm13,zmm3,zmm6
  a47f1e:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a47f24:	62 f2 7d 48 18 35 6e 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff62d46e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a47f2b:	d4 62 ff 
  a47f2e:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a47f34:	62 71 14 48 59 ee    	vmulps zmm13,zmm13,zmm6
  a47f3a:	62 71 24 48 59 de    	vmulps zmm11,zmm11,zmm6
  a47f40:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a47f46:	62 d1 7c 40 58 f1    	vaddps zmm6,zmm16,zmm9
  a47f4c:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a47f52:	62 d1 0c 48 58 ec    	vaddps zmm5,zmm14,zmm12
  a47f58:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a47f5e:	62 51 44 48 58 f0    	vaddps zmm14,zmm7,zmm8
  a47f64:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a47f6a:	62 51 6c 48 58 c2    	vaddps zmm8,zmm2,zmm10
  a47f70:	62 31 34 48 5c c8    	vsubps zmm9,zmm9,zmm16
  a47f76:	62 c1 74 40 58 c5    	vaddps zmm16,zmm17,zmm13
  a47f7c:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a47f82:	62 71 24 48 5c d3    	vsubps zmm10,zmm11,zmm3
  a47f88:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a47f8e:	62 71 04 48 58 d9    	vaddps zmm11,zmm15,zmm1
  a47f94:	62 d1 74 48 5c cf    	vsubps zmm1,zmm1,zmm15
  a47f9a:	62 31 3c 48 58 f8    	vaddps zmm15,zmm8,zmm16
  a47fa0:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a47fa6:	62 c1 24 48 58 ca    	vaddps zmm17,zmm11,zmm10
  a47fac:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a47fb2:	62 c1 7c 48 58 c4    	vaddps zmm16,zmm0,zmm12
  a47fb8:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a47fbe:	62 51 44 48 58 d9    	vaddps zmm11,zmm7,zmm9
  a47fc4:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a47fca:	62 71 6c 48 58 e3    	vaddps zmm12,zmm2,zmm3
  a47fd0:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a47fd6:	62 51 74 48 58 cd    	vaddps zmm9,zmm1,zmm13
  a47fdc:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a47fe2:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a47fe8:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a47fee:	62 71 0c 48 5c ed    	vsubps zmm13,zmm14,zmm5
  a47ff4:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a47ffa:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a48000:	62 f1 7c 48 28 35 f6 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff64a3f6]        # 92400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f8b0>
  a48007:	a3 64 ff 
  a4800a:	62 d3 7d 48 19 ee 02 	vextractf32x4 xmm14,zmm5,0x2
  a48011:	62 f2 4d 48 7f ec    	vpermt2ps zmm5,zmm6,zmm4
  a48017:	62 f1 7c 48 11 2e    	vmovups ZMMWORD PTR [rsi],zmm5
  a4801d:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a48024:	c5 88 14 e4          	vunpcklps xmm4,xmm14,xmm4
  a48028:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  a4802d:	62 e3 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm17,0x2
  a48034:	62 c2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm15
  a4803a:	62 e1 7c 48 11 8e 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm17
  a48041:	00 00 00 
  a48044:	62 73 7d 48 19 fd 02 	vextractf32x4 xmm5,zmm15,0x2
  a4804b:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a4804f:	c5 f8 11 a6 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm4
  a48056:	00 
  a48057:	62 73 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm11,0x2
  a4805e:	62 32 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm16
  a48064:	62 71 7c 48 11 9e a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm11
  a4806b:	00 00 00 
  a4806e:	62 e3 7d 48 19 c5 02 	vextractf32x4 xmm5,zmm16,0x2
  a48075:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a48079:	c5 f8 11 a6 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm4
  a48080:	00 
  a48081:	62 73 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm9,0x2
  a48088:	62 52 4d 48 7f cc    	vpermt2ps zmm9,zmm6,zmm12
  a4808e:	62 71 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm9
  a48095:	00 00 00 
  a48098:	62 73 7d 48 19 e5 02 	vextractf32x4 xmm5,zmm12,0x2
  a4809f:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a480a3:	c5 f8 11 a6 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm4
  a480aa:	00 
  a480ab:	62 73 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm13,0x2
  a480b2:	62 72 4d 48 7f eb    	vpermt2ps zmm13,zmm6,zmm3
  a480b8:	62 71 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm13
  a480bf:	62 f3 7d 48 19 db 02 	vextractf32x4 xmm3,zmm3,0x2
  a480c6:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  a480ca:	c5 f8 11 9e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm3
  a480d1:	00 
  a480d2:	62 73 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm10,0x2
  a480d9:	62 52 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm8
  a480df:	62 71 7c 48 11 96 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm10
  a480e6:	01 00 00 
  a480e9:	62 73 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm8,0x2
  a480f0:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  a480f4:	c5 f8 11 9e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm3
  a480fb:	00 
  a480fc:	62 f3 7d 48 19 fb 02 	vextractf32x4 xmm3,zmm7,0x2
  a48103:	62 f2 4d 48 7f f8    	vpermt2ps zmm7,zmm6,zmm0
  a48109:	62 f1 7c 48 11 be e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm7
  a48110:	01 00 00 
  a48113:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a4811a:	c5 e0 14 c0          	vunpcklps xmm0,xmm3,xmm0
  a4811e:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a48125:	00 
  a48126:	62 f2 75 48 77 f2    	vpermi2ps zmm6,zmm1,zmm2
  a4812c:	62 f1 7c 48 11 b6 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm6
  a48133:	02 00 00 
  a48136:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a4813d:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a48144:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a48148:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a4814f:	00 
  a48150:	48 89 ec             	mov    rsp,rbp
  a48153:	5d                   	pop    rbp
  a48154:	c5 f8 77             	vzeroupper
  a48157:	c3                   	ret
