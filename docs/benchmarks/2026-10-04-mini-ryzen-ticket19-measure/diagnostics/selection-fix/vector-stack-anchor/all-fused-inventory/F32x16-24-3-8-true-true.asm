
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a02ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a02ac0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c44b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a02ac7:	44 6c ff 
  a02aca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a02ace:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a02ad2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a02ad8:	62 f1 7c 48 28 05 1e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c441e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a02adf:	44 6c ff 
  a02ae2:	62 f1 7c 48 28 1d 54 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c4454]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a02ae9:	44 6c ff 
  a02aec:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a02af2:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a02af8:	62 f1 7c 48 11 a4 24 	vmovups ZMMWORD PTR [rsp-0x48],zmm4
  a02aff:	b8 ff ff ff 
  a02b03:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a02b09:	62 f2 65 48 7f f2    	vpermt2ps zmm6,zmm3,zmm2
  a02b0f:	48 c1 e2 06          	shl    rdx,0x6
  a02b13:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a02b17:	31 d2                	xor    edx,edx
  a02b19:	c5 7c 28 35 9f 57 67 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff67579f]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a02b20:	ff 
  a02b21:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a02b28:	0f 1f 84 00 00 00 00 
  a02b2f:	00 
  a02b30:	62 71 7c 48 10 14 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1]
  a02b37:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x40]
  a02b3e:	01 
  a02b3f:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x80]
  a02b46:	02 
  a02b47:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a02b4d:	62 f1 7c 48 28 05 a9 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68b6a9]        # 8e200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b6b0>
  a02b54:	b6 68 ff 
  a02b57:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a02b5d:	62 f1 7c 48 28 1d d9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68b6d9]        # 8e240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b6f0>
  a02b64:	b6 68 ff 
  a02b67:	62 72 65 48 7f d1    	vpermt2ps zmm10,zmm3,zmm1
  a02b6d:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a02b73:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a02b79:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  a02b7f:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a02b85:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a02b8b:	62 e2 65 48 7f c9    	vpermt2ps zmm17,zmm3,zmm1
  a02b91:	62 a1 7c 40 58 e9    	vaddps zmm21,zmm16,zmm17
  a02b97:	62 a1 2c 48 58 f5    	vaddps zmm22,zmm10,zmm21
  a02b9d:	62 a1 64 40 58 fc    	vaddps zmm23,zmm19,zmm20
  a02ba3:	62 31 6c 40 58 ff    	vaddps zmm15,zmm18,zmm23
  a02ba9:	62 f2 7d 48 18 05 ad 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6728ad]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a02bb0:	28 67 ff 
  a02bb3:	62 32 7d 48 bc d5    	vfnmadd231ps zmm10,zmm0,zmm21
  a02bb9:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a02bbf:	62 f2 7d 48 18 1d 0b 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff67270b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a02bc6:	27 67 ff 
  a02bc9:	62 e1 64 40 59 db    	vmulps zmm19,zmm19,zmm3
  a02bcf:	62 a1 2c 48 58 eb    	vaddps zmm21,zmm10,zmm19
  a02bd5:	62 a2 7d 48 bc d7    	vfnmadd231ps zmm18,zmm0,zmm23
  a02bdb:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a02be1:	62 e1 7c 40 59 c3    	vmulps zmm16,zmm16,zmm3
  a02be7:	62 a1 6c 40 5c f8    	vsubps zmm23,zmm18,zmm16
  a02bed:	62 31 2c 48 5c d3    	vsubps zmm10,zmm10,zmm19
  a02bf3:	62 21 7c 40 58 ca    	vaddps zmm25,zmm16,zmm18
  a02bf9:	62 f1 7c 48 28 05 7d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c437d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a02c00:	43 6c ff 
  a02c03:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a02c09:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a02c0f:	62 72 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm1
  a02c15:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a02c1b:	62 f1 7c 48 28 1d db 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c42db]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a02c22:	42 6c ff 
  a02c25:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a02c2b:	62 f1 7c 48 28 25 0b 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c430b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a02c32:	43 6c ff 
  a02c35:	62 e2 5d 48 7f f2    	vpermt2ps zmm22,zmm4,zmm2
  a02c3b:	62 a1 7c 48 28 cd    	vmovaps zmm17,zmm21
  a02c41:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a02c47:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a02c4d:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a02c53:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a02c59:	62 72 5d 48 7f d2    	vpermt2ps zmm10,zmm4,zmm2
  a02c5f:	62 a1 fd 40 14 e2    	vunpcklpd zmm20,zmm16,zmm18
  a02c65:	62 a1 fd 40 15 c2    	vunpckhpd zmm16,zmm16,zmm18
  a02c6b:	62 f1 7c 48 10 ac 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x48]
  a02c72:	b8 ff ff ff 
  a02c76:	62 61 f5 40 14 c5    	vunpcklpd zmm24,zmm17,zmm5
  a02c7c:	62 61 f5 40 15 d5    	vunpckhpd zmm26,zmm17,zmm5
  a02c82:	62 c1 cd 40 14 da    	vunpcklpd zmm19,zmm22,zmm10
  a02c88:	62 c1 cd 40 15 ca    	vunpckhpd zmm17,zmm22,zmm10
  a02c8e:	62 71 d5 40 14 d6    	vunpcklpd zmm10,zmm21,zmm6
  a02c94:	62 61 d5 40 15 de    	vunpckhpd zmm27,zmm21,zmm6
  a02c9a:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a02ca0:	62 f1 7c 48 28 3d 56 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6c4156]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a02ca7:	41 6c ff 
  a02caa:	62 82 45 48 7f d0    	vpermt2ps zmm18,zmm7,zmm24
  a02cb0:	62 71 7c 48 28 05 86 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c4186]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a02cb7:	41 6c ff 
  a02cba:	62 82 3d 48 7f e0    	vpermt2ps zmm20,zmm8,zmm24
  a02cc0:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a02cc6:	62 82 45 48 7f ea    	vpermt2ps zmm21,zmm7,zmm26
  a02ccc:	62 82 3d 48 7f c2    	vpermt2ps zmm16,zmm8,zmm26
  a02cd2:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a02cd8:	62 42 45 48 7f d2    	vpermt2ps zmm26,zmm7,zmm10
  a02cde:	62 c2 3d 48 7f da    	vpermt2ps zmm19,zmm8,zmm10
  a02ce4:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a02cea:	62 82 45 48 7f f3    	vpermt2ps zmm22,zmm7,zmm27
  a02cf0:	62 82 3d 48 7f cb    	vpermt2ps zmm17,zmm8,zmm27
  a02cf6:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a02cfc:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a02d02:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a02d08:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a02d0e:	62 72 65 48 7f d2    	vpermt2ps zmm10,zmm3,zmm2
  a02d14:	62 72 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm2
  a02d1a:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a02d20:	62 62 65 48 7f da    	vpermt2ps zmm27,zmm3,zmm2
  a02d26:	62 e2 5d 48 7f fa    	vpermt2ps zmm23,zmm4,zmm2
  a02d2c:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a02d32:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a02d38:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a02d3e:	62 01 ad 48 14 e8    	vunpcklpd zmm29,zmm10,zmm24
  a02d44:	62 11 ad 48 15 d8    	vunpckhpd zmm11,zmm10,zmm24
  a02d4a:	62 71 a5 40 14 d5    	vunpcklpd zmm10,zmm27,zmm5
  a02d50:	62 61 a5 40 15 dd    	vunpckhpd zmm27,zmm27,zmm5
  a02d56:	62 01 85 48 14 e1    	vunpcklpd zmm28,zmm15,zmm25
  a02d5c:	62 11 85 48 15 c9    	vunpckhpd zmm9,zmm15,zmm25
  a02d62:	62 61 c5 40 14 f6    	vunpcklpd zmm30,zmm23,zmm6
  a02d68:	62 e1 c5 40 15 fe    	vunpckhpd zmm23,zmm23,zmm6
  a02d6e:	62 11 7c 48 28 fd    	vmovaps zmm15,zmm29
  a02d74:	62 52 45 48 7f fa    	vpermt2ps zmm15,zmm7,zmm10
  a02d7a:	62 42 3d 48 7f ea    	vpermt2ps zmm29,zmm8,zmm10
  a02d80:	62 41 7c 48 28 c3    	vmovaps zmm24,zmm11
  a02d86:	62 02 45 48 7f c3    	vpermt2ps zmm24,zmm7,zmm27
  a02d8c:	62 12 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm27
  a02d92:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a02d98:	62 02 45 48 7f de    	vpermt2ps zmm27,zmm7,zmm30
  a02d9e:	62 02 3d 48 7f e6    	vpermt2ps zmm28,zmm8,zmm30
  a02da4:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a02daa:	62 22 45 48 7f cf    	vpermt2ps zmm25,zmm7,zmm23
  a02db0:	62 32 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm23
  a02db6:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a02dbd:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a02dc4:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a02dcb:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a02dd2:	62 61 7c 48 10 79 06 	vmovups zmm31,ZMMWORD PTR [rcx+0x180]
  a02dd9:	62 61 7c 48 10 71 07 	vmovups zmm30,ZMMWORD PTR [rcx+0x1c0]
  a02de0:	62 e1 7c 48 10 79 08 	vmovups zmm23,ZMMWORD PTR [rcx+0x200]
  a02de7:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a02dee:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a02df5:	62 31 2c 40 59 d7    	vmulps zmm10,zmm26,zmm23
  a02dfb:	62 72 25 40 bc d4    	vfnmadd231ps zmm10,zmm27,zmm4
  a02e01:	62 a1 24 40 59 ff    	vmulps zmm23,zmm27,zmm23
  a02e07:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a02e0e:	62 82 5d 48 b8 fa    	vfmadd231ps zmm23,zmm4,zmm26
  a02e14:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a02e1b:	62 61 54 40 59 d0    	vmulps zmm26,zmm21,zmm0
  a02e21:	62 62 3d 40 bc d3    	vfnmadd231ps zmm26,zmm24,zmm3
  a02e27:	62 f1 3c 40 59 c0    	vmulps zmm0,zmm24,zmm0
  a02e2d:	62 61 7c 48 10 41 0d 	vmovups zmm24,ZMMWORD PTR [rcx+0x340]
  a02e34:	62 b2 65 48 b8 c5    	vfmadd231ps zmm0,zmm3,zmm21
  a02e3a:	62 f1 7c 48 10 59 0e 	vmovups zmm3,ZMMWORD PTR [rcx+0x380]
  a02e41:	62 61 4c 40 59 dc    	vmulps zmm27,zmm22,zmm4
  a02e47:	62 02 35 40 bc d8    	vfnmadd231ps zmm27,zmm25,zmm24
  a02e4d:	62 f1 34 40 59 e4    	vmulps zmm4,zmm25,zmm4
  a02e53:	62 61 7c 48 10 49 0f 	vmovups zmm25,ZMMWORD PTR [rcx+0x3c0]
  a02e5a:	62 b2 3d 40 b8 e6    	vfmadd231ps zmm4,zmm24,zmm22
  a02e60:	62 c1 6c 40 58 ea    	vaddps zmm21,zmm18,zmm10
  a02e66:	62 d1 5c 40 59 ec    	vmulps zmm5,zmm20,zmm12
  a02e6c:	62 d2 15 40 bc ed    	vfnmadd231ps zmm5,zmm29,zmm13
  a02e72:	62 51 14 40 59 e4    	vmulps zmm12,zmm29,zmm12
  a02e78:	62 81 2c 40 58 f3    	vaddps zmm22,zmm26,zmm27
  a02e7e:	62 32 15 48 b8 e4    	vfmadd231ps zmm12,zmm13,zmm20
  a02e84:	62 71 64 40 59 ef    	vmulps zmm13,zmm19,zmm7
  a02e8a:	62 52 1d 40 bc e8    	vfnmadd231ps zmm13,zmm28,zmm8
  a02e90:	62 81 7c 40 59 e7    	vmulps zmm20,zmm16,zmm31
  a02e96:	62 82 25 48 bc e6    	vfnmadd231ps zmm20,zmm11,zmm30
  a02e9c:	62 f1 1c 40 59 ff    	vmulps zmm7,zmm28,zmm7
  a02ea2:	62 61 74 40 59 eb    	vmulps zmm29,zmm17,zmm3
  a02ea8:	62 02 35 48 bc e9    	vfnmadd231ps zmm29,zmm9,zmm25
  a02eae:	62 b2 3d 48 b8 fb    	vfmadd231ps zmm7,zmm8,zmm19
  a02eb4:	62 61 1c 48 58 e7    	vaddps zmm28,zmm12,zmm7
  a02eba:	62 11 24 48 59 c7    	vmulps zmm8,zmm11,zmm31
  a02ec0:	62 32 0d 40 b8 c0    	vfmadd231ps zmm8,zmm30,zmm16
  a02ec6:	62 f1 34 48 59 db    	vmulps zmm3,zmm9,zmm3
  a02ecc:	62 b2 35 40 b8 d9    	vfmadd231ps zmm3,zmm25,zmm17
  a02ed2:	62 61 3c 48 58 f3    	vaddps zmm30,zmm8,zmm3
  a02ed8:	62 c1 6c 40 5c c2    	vsubps zmm16,zmm18,zmm10
  a02ede:	62 e1 7c 48 5c cc    	vsubps zmm17,zmm0,zmm4
  a02ee4:	62 51 54 48 5c cd    	vsubps zmm9,zmm5,zmm13
  a02eea:	62 f1 1c 48 5c ff    	vsubps zmm7,zmm12,zmm7
  a02ef0:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a02ef6:	62 11 5c 40 5c c5    	vsubps zmm8,zmm20,zmm29
  a02efc:	62 51 44 48 5c d1    	vsubps zmm10,zmm7,zmm9
  a02f02:	62 62 7d 48 18 3d 90 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff672490]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a02f09:	24 67 ff 
  a02f0c:	62 01 2c 48 59 c7    	vmulps zmm24,zmm10,zmm31
  a02f12:	62 71 3c 48 58 d3    	vaddps zmm10,zmm8,zmm3
  a02f18:	62 01 2c 48 59 cf    	vmulps zmm25,zmm10,zmm31
  a02f1e:	62 11 5c 20 58 d5    	vaddps ymm10,ymm20,ymm29
  a02f24:	c5 94 58 ed          	vaddps ymm5,ymm13,ymm5
  a02f28:	62 c1 54 28 58 d2    	vaddps ymm18,ymm5,ymm10
  a02f2e:	62 a1 54 20 58 de    	vaddps ymm19,ymm21,ymm22
  a02f34:	62 31 64 20 58 da    	vaddps ymm11,ymm19,ymm18
  a02f3a:	62 81 1c 00 58 e6    	vaddps xmm20,xmm28,xmm30
  a02f40:	c5 f8 58 c4          	vaddps xmm0,xmm0,xmm4
  a02f44:	62 d1 44 00 58 e7    	vaddps xmm4,xmm23,xmm15
  a02f4a:	62 61 7c 08 58 ec    	vaddps xmm29,xmm0,xmm4
  a02f50:	62 31 14 00 58 e4    	vaddps xmm12,xmm29,xmm20
  a02f56:	62 52 0d 28 7f e3    	vpermt2ps ymm12,ymm14,ymm11
  a02f5c:	c4 43 7d 19 e3 01    	vextractf128 xmm11,ymm12,0x1
  a02f62:	c5 78 13 5c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm11
  a02f68:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  a02f6d:	c4 c1 64 5c d8       	vsubps ymm3,ymm3,ymm8
  a02f72:	62 91 64 28 59 df    	vmulps ymm3,ymm3,ymm31
  a02f78:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  a02f7c:	62 91 44 28 59 ff    	vmulps ymm7,ymm7,ymm31
  a02f82:	62 61 44 28 58 fb    	vaddps ymm31,ymm7,ymm3
  a02f88:	62 31 7c 20 58 c1    	vaddps ymm8,ymm16,ymm17
  a02f8e:	62 11 3c 28 58 cf    	vaddps ymm9,ymm8,ymm31
  a02f94:	62 11 3c 00 5c d9    	vsubps xmm11,xmm24,xmm25
  a02f9a:	62 11 24 00 5c e2    	vsubps xmm12,xmm27,xmm26
  a02fa0:	62 31 04 08 5c ef    	vsubps xmm13,xmm15,xmm23
  a02fa6:	c4 41 18 58 fd       	vaddps xmm15,xmm12,xmm13
  a02fab:	62 c1 04 08 58 fb    	vaddps xmm23,xmm15,xmm11
  a02fb1:	62 c2 0d 28 7f f9    	vpermt2ps ymm23,ymm14,ymm9
  a02fb7:	62 c3 7d 28 19 f9 01 	vextractf32x4 xmm9,ymm23,0x1
  a02fbe:	c5 78 13 4c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm9
  a02fc4:	62 e1 7c 08 11 bc 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm23
  a02fcb:	18 00 00 00 
  a02fcf:	62 11 1c 20 5c ce    	vsubps ymm9,ymm28,ymm30
  a02fd5:	62 a1 54 20 5c ee    	vsubps ymm21,ymm21,ymm22
  a02fdb:	c5 a8 5c ed          	vsubps xmm5,xmm10,xmm5
  a02fdf:	62 51 54 20 58 d1    	vaddps ymm10,ymm21,ymm9
  a02fe5:	c5 d8 5c c0          	vsubps xmm0,xmm4,xmm0
  a02fe9:	c5 f8 58 e5          	vaddps xmm4,xmm0,xmm5
  a02fed:	62 d2 0d 28 7f e2    	vpermt2ps ymm4,ymm14,ymm10
  a02ff3:	c4 c3 7d 19 e2 01    	vextractf128 xmm10,ymm4,0x1
  a02ff9:	c5 78 13 54 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm10
  a02fff:	c5 f8 11 64 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm4
  a03005:	62 91 3c 20 58 e1    	vaddps ymm4,ymm24,ymm25
  a0300b:	62 31 7c 20 5c d1    	vsubps ymm10,ymm16,ymm17
  a03011:	c5 e0 5c df          	vsubps xmm3,xmm3,xmm7
  a03015:	c5 ac 58 fc          	vaddps ymm7,ymm10,ymm4
  a03019:	c4 41 10 5c e4       	vsubps xmm12,xmm13,xmm12
  a0301e:	c5 18 58 eb          	vaddps xmm13,xmm12,xmm3
  a03022:	62 72 0d 28 7f ef    	vpermt2ps ymm13,ymm14,ymm7
  a03028:	c4 63 7d 19 ef 01    	vextractf128 xmm7,ymm13,0x1
  a0302e:	c5 f8 13 7c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm7
  a03034:	c5 78 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm13
  a0303a:	62 b1 64 20 5c fa    	vsubps ymm7,ymm19,ymm18
  a03040:	62 31 14 00 5c ec    	vsubps xmm13,xmm29,xmm20
  a03046:	62 72 0d 28 7f ef    	vpermt2ps ymm13,ymm14,ymm7
  a0304c:	c4 63 7d 19 ef 01    	vextractf128 xmm7,ymm13,0x1
  a03052:	c5 f8 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm7
  a03058:	c5 78 11 6c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm13
  a0305e:	62 91 3c 28 5c ff    	vsubps ymm7,ymm8,ymm31
  a03064:	c4 41 00 5c c3       	vsubps xmm8,xmm15,xmm11
  a03069:	62 72 0d 28 7f c7    	vpermt2ps ymm8,ymm14,ymm7
  a0306f:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  a03075:	c5 f8 13 bc 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm7
  a0307c:	00 00 
  a0307e:	c5 78 11 44 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm8
  a03084:	62 d1 54 20 5c f9    	vsubps ymm7,ymm21,ymm9
  a0308a:	c5 f8 5c c5          	vsubps xmm0,xmm0,xmm5
  a0308e:	62 f2 0d 28 7f c7    	vpermt2ps ymm0,ymm14,ymm7
  a03094:	c4 e3 7d 19 c5 01    	vextractf128 xmm5,ymm0,0x1
  a0309a:	c5 f8 13 ac 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm5
  a030a1:	00 00 
  a030a3:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a030aa:	00 00 
  a030ac:	c5 ac 5c c4          	vsubps ymm0,ymm10,ymm4
  a030b0:	c5 98 5c db          	vsubps xmm3,xmm12,xmm3
  a030b4:	62 f2 0d 28 7f d8    	vpermt2ps ymm3,ymm14,ymm0
  a030ba:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  a030c0:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  a030c7:	00 00 
  a030c9:	c5 f8 11 9c 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm3
  a030d0:	00 00 
  a030d2:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a030d9:	48 39 d0             	cmp    rax,rdx
  a030dc:	0f 85 4e fa ff ff    	jne    a02b30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a030e2:	c5 f8 77             	vzeroupper
  a030e5:	c3                   	ret
