
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a54a80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a54a80:	55                   	push   rbp
  a54a81:	48 89 e5             	mov    rbp,rsp
  a54a84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a54a88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a54a8f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a54a94:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a54a99:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a54a9e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a54aa3:	62 71 7c 48 28 0d 93 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff63e293]        # 92d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x201f0>
  a54aaa:	e2 63 ff 
  a54aad:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a54ab3:	62 e1 7c 48 10 57 01 	vmovups zmm18,ZMMWORD PTR [rdi+0x40]
  a54aba:	62 71 7c 48 10 6f 02 	vmovups zmm13,ZMMWORD PTR [rdi+0x80]
  a54ac1:	62 e1 7c 48 10 4f 03 	vmovups zmm17,ZMMWORD PTR [rdi+0xc0]
  a54ac8:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a54acc:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a54ad2:	62 f2 35 48 7f d0    	vpermt2ps zmm2,zmm9,zmm0
  a54ad8:	62 f1 7c 48 28 2d 9e 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff63e29e]        # 92d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20230>
  a54adf:	e2 63 ff 
  a54ae2:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a54ae8:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a54aee:	62 72 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm0
  a54af4:	62 e2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm0
  a54afa:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a54b00:	62 e2 35 48 7f d8    	vpermt2ps zmm19,zmm9,zmm0
  a54b06:	62 72 55 48 7f e8    	vpermt2ps zmm13,zmm5,zmm0
  a54b0c:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a54b12:	62 72 35 48 7f f8    	vpermt2ps zmm15,zmm9,zmm0
  a54b18:	62 e2 55 48 7f c8    	vpermt2ps zmm17,zmm5,zmm0
  a54b1e:	62 e1 7c 48 10 47 04 	vmovups zmm16,ZMMWORD PTR [rdi+0x100]
  a54b25:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a54b2b:	62 e2 35 48 7f e0    	vpermt2ps zmm20,zmm9,zmm0
  a54b31:	62 e2 55 48 7f c0    	vpermt2ps zmm16,zmm5,zmm0
  a54b37:	62 f1 7c 48 10 5f 05 	vmovups zmm3,ZMMWORD PTR [rdi+0x140]
  a54b3e:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a54b44:	62 f2 35 48 7f e0    	vpermt2ps zmm4,zmm9,zmm0
  a54b4a:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a54b50:	62 e1 7c 48 10 7f 06 	vmovups zmm23,ZMMWORD PTR [rdi+0x180]
  a54b57:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a54b5d:	62 e2 35 48 7f f0    	vpermt2ps zmm22,zmm9,zmm0
  a54b63:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a54b69:	62 61 7c 48 10 47 07 	vmovups zmm24,ZMMWORD PTR [rdi+0x1c0]
  a54b70:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a54b76:	62 e2 35 48 7f e8    	vpermt2ps zmm21,zmm9,zmm0
  a54b7c:	62 62 55 48 7f c0    	vpermt2ps zmm24,zmm5,zmm0
  a54b82:	62 61 7c 48 10 4f 08 	vmovups zmm25,ZMMWORD PTR [rdi+0x200]
  a54b89:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a54b8f:	62 62 35 48 7f d0    	vpermt2ps zmm26,zmm9,zmm0
  a54b95:	62 62 55 48 7f c8    	vpermt2ps zmm25,zmm5,zmm0
  a54b9b:	62 61 7c 48 10 5f 09 	vmovups zmm27,ZMMWORD PTR [rdi+0x240]
  a54ba2:	62 72 25 40 77 c8    	vpermi2ps zmm9,zmm27,zmm0
  a54ba8:	62 62 55 48 7f d8    	vpermt2ps zmm27,zmm5,zmm0
  a54bae:	62 11 64 40 58 d2    	vaddps zmm10,zmm19,zmm26
  a54bb4:	62 d1 6c 48 58 ea    	vaddps zmm5,zmm2,zmm10
  a54bba:	62 b1 5c 40 58 f6    	vaddps zmm6,zmm20,zmm22
  a54bc0:	62 51 54 40 58 df    	vaddps zmm11,zmm21,zmm15
  a54bc6:	62 d1 5c 48 58 fb    	vaddps zmm7,zmm4,zmm11
  a54bcc:	62 51 34 48 58 c6    	vaddps zmm8,zmm9,zmm14
  a54bd2:	62 11 14 48 58 e1    	vaddps zmm12,zmm13,zmm25
  a54bd8:	62 01 14 48 5c c9    	vsubps zmm25,zmm13,zmm25
  a54bde:	62 31 7c 40 58 ef    	vaddps zmm13,zmm16,zmm23
  a54be4:	62 a1 7c 40 5c ff    	vsubps zmm23,zmm16,zmm23
  a54bea:	62 a1 3c 40 58 c1    	vaddps zmm16,zmm24,zmm17
  a54bf0:	62 21 3c 40 5c c1    	vsubps zmm24,zmm24,zmm17
  a54bf6:	62 a1 24 40 58 ca    	vaddps zmm17,zmm27,zmm18
  a54bfc:	62 21 24 40 5c da    	vsubps zmm27,zmm27,zmm18
  a54c02:	62 e2 7d 48 18 15 dc 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff620adc]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a54c09:	0a 62 ff 
  a54c0c:	62 01 64 40 5c d2    	vsubps zmm26,zmm19,zmm26
  a54c12:	62 62 7d 48 18 25 3c 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff620b3c]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a54c19:	0b 62 ff 
  a54c1c:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a54c22:	62 c1 74 48 58 dc    	vaddps zmm19,zmm1,zmm12
  a54c28:	62 c1 54 40 5c ef    	vsubps zmm21,zmm21,zmm15
  a54c2e:	62 11 44 40 59 fc    	vmulps zmm15,zmm23,zmm28
  a54c34:	62 c1 34 48 5c f6    	vsubps zmm22,zmm9,zmm14
  a54c3a:	62 62 7d 48 18 2d 5c 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff62075c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a54c41:	07 62 ff 
  a54c44:	62 12 35 40 b8 fd    	vfmadd231ps zmm15,zmm25,zmm29
  a54c4a:	62 01 34 40 59 cc    	vmulps zmm25,zmm25,zmm28
  a54c50:	62 22 15 40 bc cf    	vfnmadd231ps zmm25,zmm29,zmm23
  a54c56:	62 11 24 40 59 cc    	vmulps zmm9,zmm27,zmm28
  a54c5c:	62 12 3d 40 b8 cd    	vfmadd231ps zmm9,zmm24,zmm29
  a54c62:	62 81 3c 40 59 fc    	vmulps zmm23,zmm24,zmm28
  a54c68:	62 82 15 40 bc fb    	vfnmadd231ps zmm23,zmm29,zmm27
  a54c6e:	62 11 5c 40 59 f4    	vmulps zmm14,zmm20,zmm28
  a54c74:	62 12 2d 40 b8 f5    	vfmadd231ps zmm14,zmm26,zmm29
  a54c7a:	62 01 2c 40 59 c4    	vmulps zmm24,zmm26,zmm28
  a54c80:	62 22 15 40 bc c4    	vfnmadd231ps zmm24,zmm29,zmm20
  a54c86:	62 81 4c 40 59 e4    	vmulps zmm20,zmm22,zmm28
  a54c8c:	62 82 55 40 b8 e5    	vfmadd231ps zmm20,zmm21,zmm29
  a54c92:	62 81 54 40 59 ec    	vmulps zmm21,zmm21,zmm28
  a54c98:	62 21 64 48 58 d0    	vaddps zmm26,zmm3,zmm16
  a54c9e:	62 82 4d 40 bc ed    	vfnmadd231ps zmm21,zmm22,zmm29
  a54ca4:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a54caa:	62 e2 2d 48 a8 f2    	vfmadd213ps zmm22,zmm10,zmm2
  a54cb0:	62 62 7d 48 18 1d 8a 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff62098a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a54cb7:	09 62 ff 
  a54cba:	62 d2 25 40 bc d2    	vfnmadd231ps zmm2,zmm27,zmm10
  a54cc0:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a54cc6:	62 72 25 48 a8 d4    	vfmadd213ps zmm10,zmm11,zmm4
  a54ccc:	62 d2 25 40 bc e3    	vfnmadd231ps zmm4,zmm27,zmm11
  a54cd2:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a54cd8:	62 72 1d 48 a8 d9    	vfmadd213ps zmm11,zmm12,zmm1
  a54cde:	62 d2 25 40 bc cc    	vfnmadd231ps zmm1,zmm27,zmm12
  a54ce4:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a54cea:	62 72 7d 40 a8 e3    	vfmadd213ps zmm12,zmm16,zmm3
  a54cf0:	62 92 7d 40 bc db    	vfnmadd231ps zmm3,zmm16,zmm27
  a54cf6:	62 82 4d 48 bc f3    	vfnmadd231ps zmm22,zmm6,zmm27
  a54cfc:	62 12 3d 48 bc d3    	vfnmadd231ps zmm10,zmm8,zmm27
  a54d02:	62 12 15 48 bc db    	vfnmadd231ps zmm11,zmm13,zmm27
  a54d08:	62 12 75 40 bc e3    	vfnmadd231ps zmm12,zmm17,zmm27
  a54d0e:	62 f1 54 48 58 ee    	vaddps zmm5,zmm5,zmm6
  a54d14:	62 f2 6d 40 b8 d6    	vfmadd231ps zmm2,zmm18,zmm6
  a54d1a:	62 d1 44 48 58 f0    	vaddps zmm6,zmm7,zmm8
  a54d20:	62 d2 6d 40 b8 e0    	vfmadd231ps zmm4,zmm18,zmm8
  a54d26:	62 d1 64 40 58 fd    	vaddps zmm7,zmm19,zmm13
  a54d2c:	62 d2 6d 40 b8 cd    	vfmadd231ps zmm1,zmm18,zmm13
  a54d32:	62 b2 75 40 b8 da    	vfmadd231ps zmm3,zmm17,zmm18
  a54d38:	62 31 2c 40 58 c1    	vaddps zmm8,zmm26,zmm17
  a54d3e:	62 81 6c 48 58 c1    	vaddps zmm16,zmm2,zmm25
  a54d44:	62 81 6c 48 5c c9    	vsubps zmm17,zmm2,zmm25
  a54d4a:	62 a1 5c 48 58 d7    	vaddps zmm18,zmm4,zmm23
  a54d50:	62 b1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm23
  a54d56:	62 81 74 48 5c d8    	vsubps zmm19,zmm1,zmm24
  a54d5c:	62 e1 3c 40 58 f9    	vaddps zmm23,zmm24,zmm1
  a54d62:	62 21 64 48 5c c5    	vsubps zmm24,zmm3,zmm21
  a54d68:	62 e1 54 40 58 eb    	vaddps zmm21,zmm21,zmm3
  a54d6e:	62 d1 4c 40 58 d7    	vaddps zmm2,zmm22,zmm15
  a54d74:	62 51 4c 40 5c ff    	vsubps zmm15,zmm22,zmm15
  a54d7a:	62 d1 2c 48 58 d9    	vaddps zmm3,zmm10,zmm9
  a54d80:	62 c1 2c 48 5c f1    	vsubps zmm22,zmm10,zmm9
  a54d86:	62 51 24 48 5c d6    	vsubps zmm10,zmm11,zmm14
  a54d8c:	62 41 0c 48 58 cb    	vaddps zmm25,zmm14,zmm11
  a54d92:	62 31 1c 48 5c ec    	vsubps zmm13,zmm12,zmm20
  a54d98:	62 c1 5c 40 58 e4    	vaddps zmm20,zmm20,zmm12
  a54d9e:	62 71 54 48 58 de    	vaddps zmm11,zmm5,zmm6
  a54da4:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a54daa:	62 d1 44 48 58 c8    	vaddps zmm1,zmm7,zmm8
  a54db0:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a54db6:	62 71 6c 48 5c e3    	vsubps zmm12,zmm2,zmm3
  a54dbc:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a54dc2:	62 d1 2c 48 5c d5    	vsubps zmm2,zmm10,zmm13
  a54dc8:	62 51 2c 48 58 d5    	vaddps zmm10,zmm10,zmm13
  a54dce:	62 31 7c 40 58 ea    	vaddps zmm13,zmm16,zmm18
  a54dd4:	62 31 7c 40 5c c2    	vsubps zmm8,zmm16,zmm18
  a54dda:	62 91 64 40 58 d8    	vaddps zmm3,zmm19,zmm24
  a54de0:	62 91 64 40 5c f8    	vsubps zmm7,zmm19,zmm24
  a54de6:	62 71 74 40 5c f4    	vsubps zmm14,zmm17,zmm4
  a54dec:	62 61 74 40 58 c4    	vaddps zmm24,zmm17,zmm4
  a54df2:	62 b1 44 40 5c e5    	vsubps zmm4,zmm23,zmm21
  a54df8:	62 a1 44 40 58 dd    	vaddps zmm19,zmm23,zmm21
  a54dfe:	62 a1 04 48 58 c6    	vaddps zmm16,zmm15,zmm22
  a54e04:	62 a1 04 48 5c ee    	vsubps zmm21,zmm15,zmm22
  a54e0a:	62 31 34 40 58 fc    	vaddps zmm15,zmm25,zmm20
  a54e10:	62 a1 34 40 5c d4    	vsubps zmm18,zmm25,zmm20
  a54e16:	62 e1 7c 48 28 0d 60 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff672160]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a54e1d:	21 67 ff 
  a54e20:	62 12 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm24
  a54e26:	62 32 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm21
  a54e2c:	62 b2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm19
  a54e32:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a54e38:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a54e3e:	62 e2 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm0
  a54e44:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a54e4a:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a54e50:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a54e56:	62 b2 75 40 7f d2    	vpermt2ps zmm2,zmm17,zmm18
  a54e5c:	62 e1 7c 48 28 15 9a 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff67209a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a54e63:	20 67 ff 
  a54e66:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a54e6c:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a54e72:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a54e78:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a54e7e:	62 72 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm0
  a54e84:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a54e8a:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a54e90:	62 b2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm16
  a54e96:	62 e1 7c 48 28 0d a0 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6720a0]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a54e9d:	20 67 ff 
  a54ea0:	62 32 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm16
  a54ea6:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a54eac:	62 e2 6d 40 7f c5    	vpermt2ps zmm16,zmm18,zmm5
  a54eb2:	62 72 75 40 7f e5    	vpermt2ps zmm12,zmm17,zmm5
  a54eb8:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a54ebe:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a54ec4:	62 72 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm6
  a54eca:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a54ed0:	62 d2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm8
  a54ed6:	62 52 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm8
  a54edc:	62 71 fd 48 14 c5    	vunpcklpd zmm8,zmm0,zmm5
  a54ee2:	62 f1 fd 48 15 ed    	vunpckhpd zmm5,zmm0,zmm5
  a54ee8:	62 e1 fd 40 14 de    	vunpcklpd zmm19,zmm16,zmm6
  a54eee:	62 e1 fd 40 15 c6    	vunpckhpd zmm16,zmm16,zmm6
  a54ef4:	62 d1 a5 48 14 f5    	vunpcklpd zmm6,zmm11,zmm13
  a54efa:	62 d1 a5 48 15 c5    	vunpckhpd zmm0,zmm11,zmm13
  a54f00:	62 51 9d 48 14 de    	vunpcklpd zmm11,zmm12,zmm14
  a54f06:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  a54f0c:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a54f12:	62 c2 6d 40 7f e7    	vpermt2ps zmm20,zmm18,zmm15
  a54f18:	62 d2 75 40 7f cf    	vpermt2ps zmm1,zmm17,zmm15
  a54f1e:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a54f24:	62 c2 6d 40 7f e9    	vpermt2ps zmm21,zmm18,zmm9
  a54f2a:	62 d2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm9
  a54f30:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a54f36:	62 52 6d 40 7f ca    	vpermt2ps zmm9,zmm18,zmm10
  a54f3c:	62 d2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm10
  a54f42:	62 71 7c 48 28 15 b4 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff671eb4]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a54f49:	1e 67 ff 
  a54f4c:	62 e2 5d 48 77 d7    	vpermi2ps zmm18,zmm4,zmm7
  a54f52:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a54f58:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a54f5e:	62 b2 2d 48 7f fb    	vpermt2ps zmm7,zmm10,zmm19
  a54f64:	62 e1 7c 48 28 0d d2 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff671ed2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a54f6b:	1e 67 ff 
  a54f6e:	62 32 75 40 7f c3    	vpermt2ps zmm8,zmm17,zmm19
  a54f74:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a54f7a:	62 32 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm16
  a54f80:	62 b2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm16
  a54f86:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a54f8c:	62 52 2d 48 7f fb    	vpermt2ps zmm15,zmm10,zmm11
  a54f92:	62 d2 75 40 7f f3    	vpermt2ps zmm6,zmm17,zmm11
  a54f98:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a54f9e:	62 52 2d 48 7f ec    	vpermt2ps zmm13,zmm10,zmm12
  a54fa4:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a54faa:	62 51 dd 40 14 e1    	vunpcklpd zmm12,zmm20,zmm9
  a54fb0:	62 51 dd 40 15 c9    	vunpckhpd zmm9,zmm20,zmm9
  a54fb6:	62 a1 d5 40 14 c2    	vunpcklpd zmm16,zmm21,zmm18
  a54fbc:	62 a1 d5 40 15 d2    	vunpckhpd zmm18,zmm21,zmm18
  a54fc2:	62 71 f5 48 14 db    	vunpcklpd zmm11,zmm1,zmm3
  a54fc8:	62 f1 f5 48 15 db    	vunpckhpd zmm3,zmm1,zmm3
  a54fce:	62 e1 ed 48 14 dc    	vunpcklpd zmm19,zmm2,zmm4
  a54fd4:	62 f1 ed 48 15 d4    	vunpckhpd zmm2,zmm2,zmm4
  a54fda:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a54fe0:	62 b2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm16
  a54fe6:	62 32 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm16
  a54fec:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a54ff2:	62 a2 2d 48 7f c2    	vpermt2ps zmm16,zmm10,zmm18
  a54ff8:	62 32 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm18
  a54ffe:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a55004:	62 b2 2d 48 7f e3    	vpermt2ps zmm4,zmm10,zmm19
  a5500a:	62 32 75 40 7f db    	vpermt2ps zmm11,zmm17,zmm19
  a55010:	62 72 65 48 77 d2    	vpermi2ps zmm10,zmm3,zmm2
  a55016:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a5501c:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a55023:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a5502a:	62 b1 04 48 59 d1    	vmulps zmm2,zmm15,zmm17
  a55030:	62 b2 5d 48 bc d2    	vfnmadd231ps zmm2,zmm4,zmm18
  a55036:	62 b1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm17
  a5503c:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a55043:	62 d2 6d 40 b8 e7    	vfmadd231ps zmm4,zmm18,zmm15
  a55049:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a55050:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a55056:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a5505c:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a55062:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a55069:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a5506f:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a55076:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a5507c:	62 c2 2d 48 bc d6    	vfnmadd231ps zmm18,zmm10,zmm14
  a55082:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a55088:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a5508f:	62 52 0d 48 b8 d5    	vfmadd231ps zmm10,zmm14,zmm13
  a55095:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a5509c:	62 31 3c 48 59 f1    	vmulps zmm14,zmm8,zmm17
  a550a2:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a550a8:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a550ae:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a550b5:	62 52 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm8
  a550bb:	62 71 7c 48 10 42 0b 	vmovups zmm8,ZMMWORD PTR [rdx+0x2c0]
  a550c2:	62 31 4c 48 59 e9    	vmulps zmm13,zmm6,zmm17
  a550c8:	62 52 25 48 bc e8    	vfnmadd231ps zmm13,zmm11,zmm8
  a550ce:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a550d4:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a550db:	62 72 3d 48 b8 de    	vfmadd231ps zmm11,zmm8,zmm6
  a550e1:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a550e8:	62 31 54 48 59 c1    	vmulps zmm8,zmm5,zmm17
  a550ee:	62 72 35 48 bc c6    	vfnmadd231ps zmm8,zmm9,zmm6
  a550f4:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a550fa:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a55101:	62 72 4d 48 b8 cd    	vfmadd231ps zmm9,zmm6,zmm5
  a55107:	62 f1 7c 48 10 6a 0f 	vmovups zmm5,ZMMWORD PTR [rdx+0x3c0]
  a5510e:	62 b1 7c 48 59 f1    	vmulps zmm6,zmm0,zmm17
  a55114:	62 f2 65 48 bc f5    	vfnmadd231ps zmm6,zmm3,zmm5
  a5511a:	62 b1 64 48 59 d9    	vmulps zmm3,zmm3,zmm17
  a55120:	62 f2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm0
  a55126:	62 f1 44 48 58 c2    	vaddps zmm0,zmm7,zmm2
  a5512c:	62 b1 04 48 58 ea    	vaddps zmm5,zmm15,zmm18
  a55132:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a55138:	62 d1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm10
  a5513e:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a55144:	62 c1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm13
  a5514a:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a55150:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a55156:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a5515c:	62 71 34 48 58 e3    	vaddps zmm12,zmm9,zmm3
  a55162:	62 f1 34 48 5c db    	vsubps zmm3,zmm9,zmm3
  a55168:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a5516e:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a55174:	62 71 5c 48 58 c1    	vaddps zmm8,zmm4,zmm1
  a5517a:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a55180:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  a55186:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a5518c:	62 c1 14 48 58 cb    	vaddps zmm17,zmm13,zmm11
  a55192:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a55198:	62 71 64 48 5c ee    	vsubps zmm13,zmm3,zmm6
  a5519e:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a551a4:	62 f2 7d 48 18 35 ee 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6201ee]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a551ab:	01 62 ff 
  a551ae:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a551b4:	62 71 14 48 59 ee    	vmulps zmm13,zmm13,zmm6
  a551ba:	62 71 24 48 59 de    	vmulps zmm11,zmm11,zmm6
  a551c0:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a551c6:	62 d1 7c 40 58 f1    	vaddps zmm6,zmm16,zmm9
  a551cc:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a551d2:	62 d1 0c 48 58 ec    	vaddps zmm5,zmm14,zmm12
  a551d8:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a551de:	62 51 44 48 58 f0    	vaddps zmm14,zmm7,zmm8
  a551e4:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a551ea:	62 51 6c 48 58 c2    	vaddps zmm8,zmm2,zmm10
  a551f0:	62 31 34 48 5c c8    	vsubps zmm9,zmm9,zmm16
  a551f6:	62 c1 74 40 58 c5    	vaddps zmm16,zmm17,zmm13
  a551fc:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a55202:	62 71 24 48 5c d3    	vsubps zmm10,zmm11,zmm3
  a55208:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a5520e:	62 71 04 48 58 d9    	vaddps zmm11,zmm15,zmm1
  a55214:	62 d1 74 48 5c cf    	vsubps zmm1,zmm1,zmm15
  a5521a:	62 31 3c 48 58 f8    	vaddps zmm15,zmm8,zmm16
  a55220:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a55226:	62 c1 24 48 58 ca    	vaddps zmm17,zmm11,zmm10
  a5522c:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a55232:	62 c1 7c 48 58 c4    	vaddps zmm16,zmm0,zmm12
  a55238:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a5523e:	62 51 44 48 58 d9    	vaddps zmm11,zmm7,zmm9
  a55244:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a5524a:	62 71 6c 48 58 e3    	vaddps zmm12,zmm2,zmm3
  a55250:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a55256:	62 51 74 48 58 cd    	vaddps zmm9,zmm1,zmm13
  a5525c:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a55262:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a55268:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a5526e:	62 71 0c 48 5c ed    	vsubps zmm13,zmm14,zmm5
  a55274:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a5527a:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  a55280:	62 f1 7c 48 28 35 36 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63db36]        # 92dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20270>
  a55287:	db 63 ff 
  a5528a:	62 d3 7d 48 19 e6 02 	vextractf32x4 xmm14,zmm4,0x2
  a55291:	62 f2 4d 48 7f e5    	vpermt2ps zmm4,zmm6,zmm5
  a55297:	62 f1 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm4
  a5529d:	62 f3 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm5,0x2
  a552a4:	c5 88 14 e4          	vunpcklps xmm4,xmm14,xmm4
  a552a8:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  a552ad:	62 73 7d 48 19 fc 02 	vextractf32x4 xmm4,zmm15,0x2
  a552b4:	62 32 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm17
  a552ba:	62 71 7c 48 11 be 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm15
  a552c1:	00 00 00 
  a552c4:	62 e3 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm17,0x2
  a552cb:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a552cf:	c5 f8 11 a6 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm4
  a552d6:	00 
  a552d7:	62 e3 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm16,0x2
  a552de:	62 c2 4d 48 7f c3    	vpermt2ps zmm16,zmm6,zmm11
  a552e4:	62 e1 7c 48 11 86 a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm16
  a552eb:	00 00 00 
  a552ee:	62 73 7d 48 19 dd 02 	vextractf32x4 xmm5,zmm11,0x2
  a552f5:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a552f9:	c5 f8 11 a6 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm4
  a55300:	00 
  a55301:	62 73 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm12,0x2
  a55308:	62 52 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm9
  a5530e:	62 71 7c 48 11 a6 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm12
  a55315:	00 00 00 
  a55318:	62 73 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm9,0x2
  a5531f:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  a55323:	c5 f8 11 a6 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm4
  a5532a:	00 
  a5532b:	62 f3 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm3,0x2
  a55332:	62 d2 4d 48 7f dd    	vpermt2ps zmm3,zmm6,zmm13
  a55338:	62 f1 7c 48 11 5e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm3
  a5533f:	62 73 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm13,0x2
  a55346:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  a5534a:	c5 f8 11 9e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm3
  a55351:	00 
  a55352:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a55359:	62 52 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm10
  a5535f:	62 71 7c 48 11 86 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm8
  a55366:	01 00 00 
  a55369:	62 73 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm10,0x2
  a55370:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  a55374:	c5 f8 11 9e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm3
  a5537b:	00 
  a5537c:	62 f3 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm0,0x2
  a55383:	62 f2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm7
  a55389:	62 f1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm0
  a55390:	01 00 00 
  a55393:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a5539a:	c5 e0 14 c0          	vunpcklps xmm0,xmm3,xmm0
  a5539e:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a553a5:	00 
  a553a6:	62 f2 6d 48 77 f1    	vpermi2ps zmm6,zmm2,zmm1
  a553ac:	62 f1 7c 48 11 b6 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm6
  a553b3:	02 00 00 
  a553b6:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a553bd:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a553c4:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a553c8:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a553cf:	00 
  a553d0:	48 89 ec             	mov    rsp,rbp
  a553d3:	5d                   	pop    rbp
  a553d4:	c5 f8 77             	vzeroupper
  a553d7:	c3                   	ret
