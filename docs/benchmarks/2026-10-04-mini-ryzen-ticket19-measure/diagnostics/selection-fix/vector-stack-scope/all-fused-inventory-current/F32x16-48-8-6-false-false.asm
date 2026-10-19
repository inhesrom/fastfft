
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a33a80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a33a80:	55                   	push   rbp
  a33a81:	48 89 e5             	mov    rbp,rsp
  a33a84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a33a88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a33a8f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a33a94:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a33a99:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a33a9e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a33aa3:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a33aa8:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a33aaf:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a33ab5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a33abb:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a33ac2:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a33ac6:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a33acd:	62 f1 7c 48 28 1d a9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff65d3a9]        # 90e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e330>
  a33ad4:	d3 65 ff 
  a33ad7:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a33adb:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a33ae1:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a33ae7:	62 e1 7c 48 28 1d cf 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff65d3cf]        # 90ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e370>
  a33aee:	d3 65 ff 
  a33af1:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a33af6:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a33afd:	c4 e2 79 18 77 58    	vbroadcastss xmm6,DWORD PTR [rdi+0x58]
  a33b03:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a33b09:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a33b0f:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a33b16:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a33b1b:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a33b22:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a33b28:	62 f2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm0
  a33b2e:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a33b34:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  a33b3b:	00 
  a33b3c:	c4 e3 41 21 bf 84 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x84],0x10
  a33b43:	00 00 10 
  a33b46:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a33b4b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a33b52:	00 00 
  a33b54:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a33b5a:	c4 e3 41 21 bf 8c 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x8c],0x30
  a33b61:	00 00 30 
  a33b64:	62 73 3d 48 18 c7 02 	vinsertf32x4 zmm8,zmm8,xmm7,0x2
  a33b6b:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a33b71:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a33b77:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a33b7d:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  a33b84:	00 
  a33b85:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  a33b8c:	00 
  a33b8d:	c4 63 31 21 8f b4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xb4],0x10
  a33b94:	00 00 10 
  a33b97:	c4 62 79 18 9f b8 00 	vbroadcastss xmm11,DWORD PTR [rdi+0xb8]
  a33b9e:	00 00 
  a33ba0:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a33ba6:	c4 63 31 21 8f bc 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xbc],0x30
  a33bad:	00 00 30 
  a33bb0:	62 53 2d 48 18 d9 02 	vinsertf32x4 zmm11,zmm10,xmm9,0x2
  a33bb7:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a33bbd:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a33bc3:	62 72 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm0
  a33bc9:	c5 78 10 8f e0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xe0]
  a33bd0:	00 
  a33bd1:	c4 63 31 21 8f e4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xe4],0x10
  a33bd8:	00 00 10 
  a33bdb:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a33be2:	00 00 
  a33be4:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a33beb:	00 
  a33bec:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a33bf2:	c4 63 31 21 8f ec 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xec],0x30
  a33bf9:	00 00 30 
  a33bfc:	62 53 15 48 18 e1 02 	vinsertf32x4 zmm12,zmm13,xmm9,0x2
  a33c03:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a33c09:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a33c0f:	c5 78 10 8f 10 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x110]
  a33c16:	00 
  a33c17:	c4 63 31 21 8f 14 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x114],0x10
  a33c1e:	00 00 10 
  a33c21:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a33c28:	00 00 
  a33c2a:	62 72 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm0
  a33c30:	c4 43 09 0c c9 03    	vblendps xmm9,xmm14,xmm9,0x3
  a33c36:	c4 63 31 21 8f 1c 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x11c],0x30
  a33c3d:	00 00 30 
  a33c40:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a33c47:	00 
  a33c48:	62 53 0d 48 18 f1 02 	vinsertf32x4 zmm14,zmm14,xmm9,0x2
  a33c4f:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a33c55:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a33c5b:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a33c61:	c5 78 10 8f 40 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x140]
  a33c68:	00 
  a33c69:	c4 63 31 21 8f 44 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x144],0x10
  a33c70:	00 00 10 
  a33c73:	62 e1 7c 28 10 47 09 	vmovups ymm16,YMMWORD PTR [rdi+0x120]
  a33c7a:	c4 e2 79 18 a7 48 01 	vbroadcastss xmm4,DWORD PTR [rdi+0x148]
  a33c81:	00 00 
  a33c83:	c4 c3 59 0c e1 03    	vblendps xmm4,xmm4,xmm9,0x3
  a33c89:	c4 e3 59 21 a7 4c 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x14c],0x30
  a33c90:	00 00 30 
  a33c93:	62 f3 7d 40 18 e4 02 	vinsertf32x4 zmm4,zmm16,xmm4,0x2
  a33c9a:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a33ca0:	62 e2 65 48 7f c0    	vpermt2ps zmm16,zmm3,zmm0
  a33ca6:	62 f2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm0
  a33cac:	c5 78 10 8f 70 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x170]
  a33cb3:	00 
  a33cb4:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  a33cbb:	01 00 00 
  a33cbe:	c4 63 31 21 8f 74 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x174],0x10
  a33cc5:	00 00 10 
  a33cc8:	c4 e2 79 18 97 78 01 	vbroadcastss xmm2,DWORD PTR [rdi+0x178]
  a33ccf:	00 00 
  a33cd1:	c4 c3 69 0c d1 03    	vblendps xmm2,xmm2,xmm9,0x3
  a33cd7:	c4 e3 69 21 97 7c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x17c],0x30
  a33cde:	00 00 30 
  a33ce1:	62 e3 6d 40 18 d2 02 	vinsertf32x4 zmm18,zmm18,xmm2,0x2
  a33ce8:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a33cee:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a33cf4:	62 c1 74 40 58 dd    	vaddps zmm19,zmm17,zmm13
  a33cfa:	62 a1 44 48 58 e0    	vaddps zmm20,zmm7,zmm16
  a33d00:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a33d06:	62 c1 4c 48 58 f7    	vaddps zmm22,zmm6,zmm15
  a33d0c:	62 e1 2c 48 58 fb    	vaddps zmm23,zmm10,zmm3
  a33d12:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a33d18:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a33d1e:	62 41 74 48 58 cc    	vaddps zmm25,zmm1,zmm12
  a33d24:	62 61 3c 48 58 d4    	vaddps zmm26,zmm8,zmm4
  a33d2a:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a33d30:	62 41 54 48 58 e6    	vaddps zmm28,zmm5,zmm14
  a33d36:	62 21 24 48 58 ea    	vaddps zmm29,zmm11,zmm18
  a33d3c:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a33d42:	62 91 24 40 58 d6    	vaddps zmm2,zmm27,zmm30
  a33d48:	62 51 74 40 5c ed    	vsubps zmm13,zmm17,zmm13
  a33d4e:	62 71 3c 48 5c c4    	vsubps zmm8,zmm8,zmm4
  a33d54:	62 c1 14 48 58 c8    	vaddps zmm17,zmm13,zmm8
  a33d5a:	62 d1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm15
  a33d60:	62 d1 54 48 5c ee    	vsubps zmm5,zmm5,zmm14
  a33d66:	62 f1 4c 48 58 e5    	vaddps zmm4,zmm6,zmm5
  a33d6c:	62 72 7d 48 18 35 26 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff641626]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a33d73:	16 64 ff 
  a33d76:	62 51 5c 48 59 fe    	vmulps zmm15,zmm4,zmm14
  a33d7c:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a33d82:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a33d88:	62 f1 24 48 5c e3    	vsubps zmm4,zmm11,zmm3
  a33d8e:	62 51 5c 48 59 d6    	vmulps zmm10,zmm4,zmm14
  a33d94:	62 c1 04 48 58 d2    	vaddps zmm18,zmm15,zmm10
  a33d9a:	62 b1 74 40 58 e2    	vaddps zmm4,zmm17,zmm18
  a33da0:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a33da6:	62 71 7c 40 5c e7    	vsubps zmm12,zmm16,zmm7
  a33dac:	62 e1 1c 48 58 c1    	vaddps zmm16,zmm12,zmm1
  a33db2:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a33db8:	62 d1 54 48 59 f6    	vmulps zmm6,zmm5,zmm14
  a33dbe:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a33dc4:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a33dca:	62 71 4c 48 5c db    	vsubps zmm11,zmm6,zmm3
  a33dd0:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a33dd6:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a33ddc:	62 81 1c 40 5c e5    	vsubps zmm20,zmm28,zmm29
  a33de2:	62 21 64 40 58 e4    	vaddps zmm28,zmm19,zmm20
  a33de8:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a33dee:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a33df4:	62 91 4c 40 58 f9    	vaddps zmm7,zmm22,zmm25
  a33dfa:	62 c1 14 48 5c f8    	vsubps zmm23,zmm13,zmm8
  a33e00:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a33e06:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a33e0c:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a33e12:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a33e18:	62 51 74 48 58 c2    	vaddps zmm8,zmm1,zmm10
  a33e1e:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a33e24:	62 11 24 40 5c fe    	vsubps zmm15,zmm27,zmm30
  a33e2a:	62 21 74 40 5c c2    	vsubps zmm24,zmm17,zmm18
  a33e30:	62 51 7c 40 5c f3    	vsubps zmm14,zmm16,zmm11
  a33e36:	62 31 64 40 5c dc    	vsubps zmm11,zmm19,zmm20
  a33e3c:	62 31 34 40 5c ee    	vsubps zmm13,zmm25,zmm22
  a33e42:	62 e1 44 40 5c db    	vsubps zmm19,zmm23,zmm3
  a33e48:	62 51 74 48 5c e2    	vsubps zmm12,zmm1,zmm10
  a33e4e:	62 e1 7c 48 28 0d 28 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff693128]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a33e55:	31 69 ff 
  a33e58:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a33e5e:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a33e64:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a33e6a:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a33e70:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a33e76:	62 62 75 40 7f c0    	vpermt2ps zmm24,zmm17,zmm0
  a33e7c:	62 72 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm0
  a33e82:	62 e2 75 40 7f d8    	vpermt2ps zmm19,zmm17,zmm0
  a33e88:	62 e1 7c 48 28 05 6e 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff69306e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a33e8f:	30 69 ff 
  a33e92:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a33e98:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a33e9e:	62 e1 7c 48 28 15 98 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff693098]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a33ea5:	30 69 ff 
  a33ea8:	62 32 6d 40 7f cd    	vpermt2ps zmm9,zmm18,zmm21
  a33eae:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a33eb4:	62 12 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm24
  a33eba:	62 92 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm24
  a33ec0:	62 81 7c 48 28 e4    	vmovaps zmm20,zmm28
  a33ec6:	62 c2 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm11
  a33ecc:	62 42 6d 40 7f e3    	vpermt2ps zmm28,zmm18,zmm11
  a33ed2:	62 91 b5 48 14 dc    	vunpcklpd zmm3,zmm9,zmm28
  a33ed8:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a33ede:	62 32 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm19
  a33ee4:	62 b2 6d 40 7f f3    	vpermt2ps zmm6,zmm18,zmm19
  a33eea:	62 e1 dd 48 14 de    	vunpcklpd zmm19,zmm4,zmm6
  a33ef0:	62 b1 f5 48 14 e4    	vunpcklpd zmm4,zmm1,zmm20
  a33ef6:	62 b1 f5 48 15 f4    	vunpckhpd zmm6,zmm1,zmm20
  a33efc:	62 51 ad 48 14 d9    	vunpcklpd zmm11,zmm10,zmm9
  a33f02:	62 c1 ad 48 15 e1    	vunpckhpd zmm20,zmm10,zmm9
  a33f08:	62 71 7c 48 28 0d ee 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff692eee]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a33f0f:	2e 69 ff 
  a33f12:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a33f18:	62 d2 35 48 7f cb    	vpermt2ps zmm1,zmm9,zmm11
  a33f1e:	62 e1 7c 48 28 2d 18 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff692f18]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a33f25:	2f 69 ff 
  a33f28:	62 d2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm11
  a33f2e:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a33f34:	62 32 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm20
  a33f3a:	62 b2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm20
  a33f40:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a33f46:	62 32 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm19
  a33f4c:	62 b2 55 40 7f db    	vpermt2ps zmm3,zmm21,zmm19
  a33f52:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a33f58:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a33f5e:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a33f64:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a33f6a:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a33f70:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a33f76:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a33f7c:	62 72 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm0
  a33f82:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a33f88:	62 d2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm15
  a33f8e:	62 d2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm15
  a33f94:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a33f9a:	62 52 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm14
  a33fa0:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a33fa6:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a33fac:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a33fb2:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a33fb8:	62 f1 ed 48 14 ff    	vunpcklpd zmm7,zmm2,zmm7
  a33fbe:	62 c2 3d 48 77 c4    	vpermi2ps zmm16,zmm8,zmm12
  a33fc4:	62 52 6d 40 7f c4    	vpermt2ps zmm8,zmm18,zmm12
  a33fca:	62 d1 d5 48 14 d0    	vunpcklpd zmm2,zmm5,zmm8
  a33fd0:	62 d1 fd 48 14 ee    	vunpcklpd zmm5,zmm0,zmm14
  a33fd6:	62 51 fd 48 15 c6    	vunpckhpd zmm8,zmm0,zmm14
  a33fdc:	62 31 85 48 14 e0    	vunpcklpd zmm12,zmm15,zmm16
  a33fe2:	62 31 85 48 15 e8    	vunpckhpd zmm13,zmm15,zmm16
  a33fe8:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a33fee:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a33ff4:	62 d2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm12
  a33ffa:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a34000:	62 52 35 48 7f e5    	vpermt2ps zmm12,zmm9,zmm13
  a34006:	62 52 55 40 7f c5    	vpermt2ps zmm8,zmm21,zmm13
  a3400c:	62 72 45 48 77 ca    	vpermi2ps zmm9,zmm7,zmm2
  a34012:	62 f2 55 40 7f fa    	vpermt2ps zmm7,zmm21,zmm2
  a34018:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a3401f:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a34026:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a3402d:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a34034:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a3403b:	62 e1 7c 48 10 52 07 	vmovups zmm18,ZMMWORD PTR [rdx+0x1c0]
  a34042:	62 e1 7c 48 10 5a 08 	vmovups zmm19,ZMMWORD PTR [rdx+0x200]
  a34049:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a34050:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a34057:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a3405e:	62 c1 2c 48 59 ff    	vmulps zmm23,zmm10,zmm15
  a34064:	62 a2 1d 48 bc f8    	vfnmadd231ps zmm23,zmm12,zmm16
  a3406a:	62 21 24 48 59 c3    	vmulps zmm24,zmm11,zmm19
  a34070:	62 22 35 48 bc c4    	vfnmadd231ps zmm24,zmm9,zmm20
  a34076:	62 01 44 40 58 c8    	vaddps zmm25,zmm23,zmm24
  a3407c:	62 91 74 48 58 d1    	vaddps zmm2,zmm1,zmm25
  a34082:	62 21 4c 48 59 d1    	vmulps zmm26,zmm6,zmm17
  a34088:	62 22 3d 48 bc d2    	vfnmadd231ps zmm26,zmm8,zmm18
  a3408e:	62 21 64 48 59 dd    	vmulps zmm27,zmm3,zmm21
  a34094:	62 22 45 48 bc de    	vfnmadd231ps zmm27,zmm7,zmm22
  a3409a:	62 41 5c 48 59 e5    	vmulps zmm28,zmm4,zmm13
  a340a0:	62 42 55 48 bc e6    	vfnmadd231ps zmm28,zmm5,zmm14
  a340a6:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a340ac:	62 01 2c 40 58 f5    	vaddps zmm30,zmm26,zmm29
  a340b2:	62 51 1c 48 59 e7    	vmulps zmm12,zmm12,zmm15
  a340b8:	62 52 7d 40 b8 e2    	vfmadd231ps zmm12,zmm16,zmm10
  a340be:	62 31 34 48 59 cb    	vmulps zmm9,zmm9,zmm19
  a340c4:	62 52 5d 40 b8 cb    	vfmadd231ps zmm9,zmm20,zmm11
  a340ca:	62 51 1c 48 58 d1    	vaddps zmm10,zmm12,zmm9
  a340d0:	62 71 2c 48 58 d8    	vaddps zmm11,zmm10,zmm0
  a340d6:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a340dc:	62 72 6d 40 b8 c6    	vfmadd231ps zmm8,zmm18,zmm6
  a340e2:	62 b1 44 48 59 f5    	vmulps zmm6,zmm7,zmm21
  a340e8:	62 f2 4d 40 b8 f3    	vfmadd231ps zmm6,zmm22,zmm3
  a340ee:	62 d1 54 48 59 dd    	vmulps zmm3,zmm5,zmm13
  a340f4:	62 f2 0d 48 b8 dc    	vfmadd231ps zmm3,zmm14,zmm4
  a340fa:	62 f1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm3
  a34100:	62 f2 7d 48 18 2d 56 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff641356]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a34107:	13 64 ff 
  a3410a:	62 f1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm4
  a34110:	62 92 55 48 bc c9    	vfnmadd231ps zmm1,zmm5,zmm25
  a34116:	62 72 7d 48 18 2d b4 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6411b4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3411d:	11 64 ff 
  a34120:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a34126:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a3412c:	62 51 74 48 58 e1    	vaddps zmm12,zmm1,zmm9
  a34132:	62 02 55 48 bc d5    	vfnmadd231ps zmm26,zmm5,zmm29
  a34138:	62 f1 4c 48 5c db    	vsubps zmm3,zmm6,zmm3
  a3413e:	62 d1 64 48 59 dd    	vmulps zmm3,zmm3,zmm13
  a34144:	62 f1 2c 40 58 f3    	vaddps zmm6,zmm26,zmm3
  a3414a:	62 71 1c 48 5c f6    	vsubps zmm14,zmm12,zmm6
  a34150:	62 d2 55 48 bc c2    	vfnmadd231ps zmm0,zmm5,zmm10
  a34156:	62 11 44 40 5c d0    	vsubps zmm10,zmm23,zmm24
  a3415c:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a34162:	62 51 7c 48 5c fa    	vsubps zmm15,zmm0,zmm10
  a34168:	62 72 5d 48 bc c5    	vfnmadd231ps zmm8,zmm4,zmm5
  a3416e:	62 91 24 40 5c e4    	vsubps zmm4,zmm27,zmm28
  a34174:	62 d1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm13
  a3417a:	62 f1 3c 48 5c ec    	vsubps zmm5,zmm8,zmm4
  a34180:	62 71 04 48 5c ed    	vsubps zmm13,zmm15,zmm5
  a34186:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a3418c:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a34192:	62 71 74 48 58 cb    	vaddps zmm9,zmm1,zmm3
  a34198:	62 f1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm0
  a3419e:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a341a4:	62 71 7c 48 58 c4    	vaddps zmm8,zmm0,zmm4
  a341aa:	62 11 6c 48 5c d6    	vsubps zmm10,zmm2,zmm30
  a341b0:	62 e1 24 48 5c c7    	vsubps zmm16,zmm11,zmm7
  a341b6:	62 f1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm6
  a341bc:	62 f1 04 48 58 ed    	vaddps zmm5,zmm15,zmm5
  a341c2:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a341c8:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a341ce:	62 91 6c 48 58 d6    	vaddps zmm2,zmm2,zmm30
  a341d4:	62 f1 24 48 58 df    	vaddps zmm3,zmm11,zmm7
  a341da:	62 f1 7c 48 28 25 1c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65cd1c]        # 90f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e3b0>
  a341e1:	cd 65 ff 
  a341e4:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a341ea:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a341f0:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a341f6:	62 71 7c 48 11 76 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm14
  a341fd:	62 52 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm8
  a34203:	62 71 7c 48 11 4e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm9
  a3420a:	62 32 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm16
  a34210:	62 71 7c 48 11 56 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm10
  a34217:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a3421d:	62 f1 7c 48 11 76 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm6
  a34224:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a3422a:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a34231:	48 89 ec             	mov    rsp,rbp
  a34234:	5d                   	pop    rbp
  a34235:	c5 f8 77             	vzeroupper
  a34238:	c3                   	ret
