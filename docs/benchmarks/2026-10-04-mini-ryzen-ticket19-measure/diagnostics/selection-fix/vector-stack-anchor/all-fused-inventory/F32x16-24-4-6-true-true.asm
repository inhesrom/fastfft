
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a40a00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a40a00:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff686576]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a40a07:	65 68 ff 
  a40a0a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a40a0e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a40a12:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a40a18:	62 f1 7c 48 28 1d de 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6864de]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a40a1f:	64 68 ff 
  a40a22:	62 f1 7c 48 28 25 14 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff686514]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a40a29:	65 68 ff 
  a40a2c:	62 f1 7c 48 28 2d ca 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6863ca]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a40a33:	63 68 ff 
  a40a36:	62 f1 7c 48 28 35 00 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff686400]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a40a3d:	64 68 ff 
  a40a40:	48 c1 e2 06          	shl    rdx,0x6
  a40a44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a40a48:	31 d2                	xor    edx,edx
  a40a4a:	62 61 7c 48 28 05 ec 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6512ec]        # 91d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f1f0>
  a40a51:	12 65 ff 
  a40a54:	62 72 7d 48 18 05 02 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff634a02]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a40a5b:	4a 63 ff 
  a40a5e:	62 61 7c 48 28 0d 18 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff651318]        # 91d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f230>
  a40a65:	13 65 ff 
  a40a68:	62 72 7d 48 18 15 62 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff634862]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a40a6f:	48 63 ff 
  a40a72:	c5 7c 28 1d 66 67 63 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff636766]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a40a79:	ff 
  a40a7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  a40a80:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a40a85:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a40a8b:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a40a92:	10 
  a40a93:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a40a9a:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a40aa0:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a40aa7:	30 
  a40aa8:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a40aaf:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a40ab5:	62 72 3d 40 7f e9    	vpermt2ps zmm13,zmm24,zmm1
  a40abb:	62 72 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm1
  a40ac1:	c5 78 10 74 17 50    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x50]
  a40ac7:	c4 63 09 21 74 17 54 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x54],0x10
  a40ace:	10 
  a40acf:	c4 62 79 18 7c 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x58]
  a40ad6:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a40add:	30 00 00 00 
  a40ae1:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a40ae7:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a40aee:	30 
  a40aef:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a40af6:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a40afc:	62 e2 3d 40 7f c1    	vpermt2ps zmm16,zmm24,zmm1
  a40b02:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a40b09:	00 00 
  a40b0b:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a40b12:	00 00 00 10 
  a40b16:	c4 e2 79 18 bc 17 88 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x88]
  a40b1d:	00 00 00 
  a40b20:	62 72 35 40 7f f1    	vpermt2ps zmm14,zmm25,zmm1
  a40b26:	c4 c3 41 0c ff 03    	vblendps xmm7,xmm7,xmm15,0x3
  a40b2c:	c4 e3 41 21 bc 17 8c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a40b33:	00 00 00 30 
  a40b37:	c5 7c 10 7c 17 60    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x60]
  a40b3d:	62 f3 05 48 18 ff 02 	vinsertf32x4 zmm7,zmm15,xmm7,0x2
  a40b44:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a40b4a:	62 e2 3d 40 7f c9    	vpermt2ps zmm17,zmm24,zmm1
  a40b50:	62 f2 35 40 7f f9    	vpermt2ps zmm7,zmm25,zmm1
  a40b56:	c5 78 10 bc 17 b0 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xb0]
  a40b5d:	00 00 
  a40b5f:	c4 63 01 21 bc 17 b4 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a40b66:	00 00 00 10 
  a40b6a:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  a40b71:	90 00 00 00 
  a40b75:	c4 62 79 18 8c 17 b8 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0xb8]
  a40b7c:	00 00 00 
  a40b7f:	c4 43 31 0c cf 03    	vblendps xmm9,xmm9,xmm15,0x3
  a40b85:	c4 63 31 21 8c 17 bc 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a40b8c:	00 00 00 30 
  a40b90:	62 53 6d 40 18 c9 02 	vinsertf32x4 zmm9,zmm18,xmm9,0x2
  a40b97:	62 c1 7c 48 28 d1    	vmovaps zmm18,zmm9
  a40b9d:	62 e2 3d 40 7f d1    	vpermt2ps zmm18,zmm24,zmm1
  a40ba3:	62 72 35 40 7f c9    	vpermt2ps zmm9,zmm25,zmm1
  a40ba9:	62 e1 1c 48 58 df    	vaddps zmm19,zmm12,zmm7
  a40baf:	62 c1 0c 48 58 e1    	vaddps zmm20,zmm14,zmm9
  a40bb5:	62 a1 64 40 58 f4    	vaddps zmm22,zmm19,zmm20
  a40bbb:	62 a1 14 48 58 e9    	vaddps zmm21,zmm13,zmm17
  a40bc1:	62 a1 7c 40 58 fa    	vaddps zmm23,zmm16,zmm18
  a40bc7:	62 31 54 40 58 ff    	vaddps zmm15,zmm21,zmm23
  a40bcd:	62 f1 1c 48 5c ff    	vsubps zmm7,zmm12,zmm7
  a40bd3:	62 31 7c 40 5c e2    	vsubps zmm12,zmm16,zmm18
  a40bd9:	62 c1 44 48 58 c4    	vaddps zmm16,zmm7,zmm12
  a40bdf:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a40be5:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a40beb:	62 c1 34 48 58 cd    	vaddps zmm17,zmm9,zmm13
  a40bf1:	62 31 64 40 5c f4    	vsubps zmm14,zmm19,zmm20
  a40bf7:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a40bfd:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a40c03:	62 c1 14 48 5c e1    	vsubps zmm20,zmm13,zmm9
  a40c09:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a40c0f:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a40c15:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a40c1b:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a40c21:	62 31 7c 48 28 ce    	vmovaps zmm9,zmm22
  a40c27:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a40c2d:	62 e2 5d 48 7f f2    	vpermt2ps zmm22,zmm4,zmm2
  a40c33:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a40c39:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a40c3f:	62 e2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm2
  a40c45:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a40c4b:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a40c51:	62 72 5d 48 7f f2    	vpermt2ps zmm14,zmm4,zmm2
  a40c57:	62 51 cd 40 14 ee    	vunpcklpd zmm13,zmm22,zmm14
  a40c5d:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a40c63:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a40c69:	62 f2 5d 48 7f fa    	vpermt2ps zmm7,zmm4,zmm2
  a40c6f:	62 f1 fd 40 14 ff    	vunpcklpd zmm7,zmm16,zmm7
  a40c75:	62 31 b5 48 14 f2    	vunpcklpd zmm14,zmm9,zmm18
  a40c7b:	62 a1 b5 48 15 c2    	vunpckhpd zmm16,zmm9,zmm18
  a40c81:	62 31 9d 48 14 cb    	vunpcklpd zmm9,zmm12,zmm19
  a40c87:	62 a1 9d 48 15 d3    	vunpckhpd zmm18,zmm12,zmm19
  a40c8d:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a40c93:	62 52 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm9
  a40c99:	62 52 4d 48 7f f1    	vpermt2ps zmm14,zmm6,zmm9
  a40c9f:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a40ca5:	62 a2 55 48 7f da    	vpermt2ps zmm19,zmm5,zmm18
  a40cab:	62 a2 4d 48 7f c2    	vpermt2ps zmm16,zmm6,zmm18
  a40cb1:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a40cb7:	62 e2 55 48 7f d7    	vpermt2ps zmm18,zmm5,zmm7
  a40cbd:	62 72 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm7
  a40cc3:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a40cc9:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a40ccf:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a40cd5:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a40cdb:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a40ce1:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a40ce7:	62 72 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm2
  a40ced:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a40cf3:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a40cf9:	62 e2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm2
  a40cff:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a40d05:	62 e2 65 48 7f fa    	vpermt2ps zmm23,zmm3,zmm2
  a40d0b:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a40d11:	62 a1 85 48 14 f5    	vunpcklpd zmm22,zmm15,zmm21
  a40d17:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a40d1d:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a40d23:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a40d29:	62 a1 f5 40 14 e4    	vunpcklpd zmm20,zmm17,zmm20
  a40d2f:	62 a1 c5 48 14 ef    	vunpcklpd zmm21,zmm7,zmm23
  a40d35:	62 b1 c5 48 15 ff    	vunpckhpd zmm7,zmm7,zmm23
  a40d3b:	62 c1 b5 48 14 ff    	vunpcklpd zmm23,zmm9,zmm15
  a40d41:	62 51 b5 48 15 cf    	vunpckhpd zmm9,zmm9,zmm15
  a40d47:	62 a1 7c 48 28 cd    	vmovaps zmm17,zmm21
  a40d4d:	62 a2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm23
  a40d53:	62 a2 4d 48 7f ef    	vpermt2ps zmm21,zmm6,zmm23
  a40d59:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a40d5f:	62 c2 55 48 7f f9    	vpermt2ps zmm23,zmm5,zmm9
  a40d65:	62 d2 4d 48 7f f9    	vpermt2ps zmm7,zmm6,zmm9
  a40d6b:	62 31 7c 48 28 ce    	vmovaps zmm9,zmm22
  a40d71:	62 32 55 48 7f cc    	vpermt2ps zmm9,zmm5,zmm20
  a40d77:	62 a2 4d 48 7f f4    	vpermt2ps zmm22,zmm6,zmm20
  a40d7d:	62 61 7c 48 10 51 02 	vmovups zmm26,ZMMWORD PTR [rcx+0x80]
  a40d84:	62 61 7c 48 10 59 03 	vmovups zmm27,ZMMWORD PTR [rcx+0xc0]
  a40d8b:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a40d92:	62 61 7c 48 10 61 05 	vmovups zmm28,ZMMWORD PTR [rcx+0x140]
  a40d99:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a40da0:	62 31 64 40 59 fc    	vmulps zmm15,zmm19,zmm20
  a40da6:	62 12 45 40 bc fc    	vfnmadd231ps zmm15,zmm23,zmm28
  a40dac:	62 a1 44 40 59 e4    	vmulps zmm20,zmm23,zmm20
  a40db2:	62 e1 7c 48 10 79 08 	vmovups zmm23,ZMMWORD PTR [rcx+0x200]
  a40db9:	62 a2 1d 40 b8 e3    	vfmadd231ps zmm20,zmm28,zmm19
  a40dbf:	62 61 7c 48 10 61 09 	vmovups zmm28,ZMMWORD PTR [rcx+0x240]
  a40dc6:	62 a1 6c 40 59 df    	vmulps zmm19,zmm18,zmm23
  a40dcc:	62 82 35 48 bc dc    	vfnmadd231ps zmm19,zmm9,zmm28
  a40dd2:	62 a1 34 48 59 ff    	vmulps zmm23,zmm9,zmm23
  a40dd8:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a40ddf:	62 a2 1d 40 b8 fa    	vfmadd231ps zmm23,zmm28,zmm18
  a40de5:	62 e1 7c 48 10 51 0a 	vmovups zmm18,ZMMWORD PTR [rcx+0x280]
  a40dec:	62 01 7c 40 59 e5    	vmulps zmm28,zmm16,zmm29
  a40df2:	62 42 45 48 bc e1    	vfnmadd231ps zmm28,zmm7,zmm9
  a40df8:	62 91 44 48 59 fd    	vmulps zmm7,zmm7,zmm29
  a40dfe:	62 61 7c 48 10 69 0b 	vmovups zmm29,ZMMWORD PTR [rcx+0x2c0]
  a40e05:	62 b2 35 48 b8 f8    	vfmadd231ps zmm7,zmm9,zmm16
  a40e0b:	62 31 04 48 58 cb    	vaddps zmm9,zmm15,zmm19
  a40e11:	62 a1 14 48 59 c2    	vmulps zmm16,zmm13,zmm18
  a40e17:	62 82 4d 40 bc c5    	vfnmadd231ps zmm16,zmm22,zmm29
  a40e1d:	62 a1 4c 40 59 d2    	vmulps zmm18,zmm22,zmm18
  a40e23:	62 81 0c 48 59 f2    	vmulps zmm22,zmm14,zmm26
  a40e29:	62 82 55 40 bc f3    	vfnmadd231ps zmm22,zmm21,zmm27
  a40e2f:	62 c2 15 40 b8 d5    	vfmadd231ps zmm18,zmm29,zmm13
  a40e35:	62 31 7c 40 58 ee    	vaddps zmm13,zmm16,zmm22
  a40e3b:	62 21 5c 40 58 ef    	vaddps zmm29,zmm20,zmm23
  a40e41:	62 81 54 40 59 ea    	vmulps zmm21,zmm21,zmm26
  a40e47:	62 c2 25 40 b8 ee    	vfmadd231ps zmm21,zmm27,zmm14
  a40e4d:	62 21 6c 40 58 d5    	vaddps zmm26,zmm18,zmm21
  a40e53:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a40e59:	62 52 35 48 ac f4    	vfnmadd213ps zmm14,zmm9,zmm12
  a40e5f:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a40e65:	62 02 15 48 ac dc    	vfnmadd213ps zmm27,zmm13,zmm28
  a40e6b:	62 51 1c 20 58 ed    	vaddps ymm13,ymm28,ymm13
  a40e71:	62 41 7c 48 28 e0    	vmovaps zmm28,zmm8
  a40e77:	62 22 15 40 ac e1    	vfnmadd213ps zmm28,zmm29,zmm17
  a40e7d:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  a40e82:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a40e88:	62 72 2d 40 ac e7    	vfnmadd213ps zmm12,zmm26,zmm7
  a40e8e:	62 91 44 28 58 fa    	vaddps ymm7,ymm7,ymm26
  a40e94:	62 41 34 28 58 d5    	vaddps ymm26,ymm9,ymm13
  a40e9a:	62 a1 14 20 58 c9    	vaddps ymm17,ymm29,ymm17
  a40ea0:	62 61 74 00 58 ef    	vaddps xmm29,xmm17,xmm7
  a40ea6:	62 02 25 28 7f ea    	vpermt2ps ymm29,ymm11,ymm26
  a40eac:	62 61 7c 28 11 2c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm29
  a40eb3:	62 a1 6c 20 5c d5    	vsubps ymm18,ymm18,ymm21
  a40eb9:	62 c1 6c 20 59 d2    	vmulps ymm18,ymm18,ymm10
  a40ebf:	62 a1 24 20 58 ea    	vaddps ymm21,ymm27,ymm18
  a40ec5:	62 a1 5c 20 5c e7    	vsubps ymm20,ymm20,ymm23
  a40ecb:	62 c1 5c 20 59 e2    	vmulps ymm20,ymm20,ymm10
  a40ed1:	62 a1 0c 28 58 fc    	vaddps ymm23,ymm14,ymm20
  a40ed7:	62 21 44 20 5c d5    	vsubps ymm26,ymm23,ymm21
  a40edd:	62 a1 7c 20 5c c6    	vsubps ymm16,ymm16,ymm22
  a40ee3:	62 c1 7c 20 59 c2    	vmulps ymm16,ymm16,ymm10
  a40ee9:	62 a1 1c 28 5c f0    	vsubps ymm22,ymm12,ymm16
  a40eef:	62 31 04 28 5c fb    	vsubps ymm15,ymm15,ymm19
  a40ef5:	c4 41 04 59 fa       	vmulps ymm15,ymm15,ymm10
  a40efa:	62 c1 1c 20 5c df    	vsubps ymm19,ymm28,ymm15
  a40f00:	62 21 64 00 5c ee    	vsubps xmm29,xmm19,xmm22
  a40f06:	62 02 25 28 7f ea    	vpermt2ps ymm29,ymm11,ymm26
  a40f0c:	62 61 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm29
  a40f13:	01 
  a40f14:	62 a1 24 20 5c d2    	vsubps ymm18,ymm27,ymm18
  a40f1a:	62 31 0c 28 5c f4    	vsubps ymm14,ymm14,ymm20
  a40f20:	62 31 1c 28 58 e0    	vaddps ymm12,ymm12,ymm16
  a40f26:	62 a1 0c 28 58 c2    	vaddps ymm16,ymm14,ymm18
  a40f2c:	62 11 04 28 58 fc    	vaddps ymm15,ymm15,ymm28
  a40f32:	62 c1 04 08 58 e4    	vaddps xmm20,xmm15,xmm12
  a40f38:	62 a2 25 28 7f e0    	vpermt2ps ymm20,ymm11,ymm16
  a40f3e:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm20
  a40f45:	02 
  a40f46:	c4 41 34 5c cd       	vsubps ymm9,ymm9,ymm13
  a40f4b:	62 f1 74 00 5c ff    	vsubps xmm7,xmm17,xmm7
  a40f51:	62 d2 25 28 7f f9    	vpermt2ps ymm7,ymm11,ymm9
  a40f57:	c5 fc 11 7c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm7
  a40f5d:	62 b1 44 20 58 fd    	vaddps ymm7,ymm23,ymm21
  a40f63:	62 31 64 00 58 ce    	vaddps xmm9,xmm19,xmm22
  a40f69:	62 72 25 28 7f cf    	vpermt2ps ymm9,ymm11,ymm7
  a40f6f:	c5 7c 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm9
  a40f76:	00 00 
  a40f78:	62 b1 0c 28 5c fa    	vsubps ymm7,ymm14,ymm18
  a40f7e:	c4 41 00 5c cc       	vsubps xmm9,xmm15,xmm12
  a40f83:	62 72 25 28 7f cf    	vpermt2ps ymm9,ymm11,ymm7
  a40f89:	c5 7c 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm9
  a40f90:	00 00 
  a40f92:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a40f99:	48 39 d0             	cmp    rax,rdx
  a40f9c:	0f 85 de fa ff ff    	jne    a40a80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a40fa2:	c5 f8 77             	vzeroupper
  a40fa5:	c3                   	ret
