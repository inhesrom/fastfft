
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a139c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a139c0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b35b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a139c7:	35 6b ff 
  a139ca:	62 61 7c 48 28 15 2c 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6b352c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a139d1:	35 6b ff 
  a139d4:	62 f1 7c 48 28 15 62 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b3562]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a139db:	35 6b ff 
  a139de:	62 61 7c 48 28 2d 18 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6b3418]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a139e5:	34 6b ff 
  a139e8:	62 61 7c 48 28 35 4e 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6b344e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a139ef:	34 6b ff 
  a139f2:	48 c1 e2 07          	shl    rdx,0x7
  a139f6:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a139fa:	31 d2                	xor    edx,edx
  a139fc:	62 f1 7c 48 28 2d 7a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67b97a]        # 8f380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c830>
  a13a03:	b9 67 ff 
  a13a06:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a13a0a:	62 62 7d 48 18 1d 4c 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff661a4c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a13a11:	1a 66 ff 
  a13a14:	62 71 7c 48 28 0d a2 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff67b9a2]        # 8f3c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c870>
  a13a1b:	b9 67 ff 
  a13a1e:	62 62 7d 48 18 25 ac 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6618ac]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a13a25:	18 66 ff 
  a13a28:	62 61 7c 48 28 3d ce 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff67b9ce]        # 8f400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c8b0>
  a13a2f:	b9 67 ff 
  a13a32:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a13a39:	1f 84 00 00 00 00 00 
  a13a40:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a13a45:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a13a4b:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a13a52:	10 
  a13a53:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a13a5a:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a13a60:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a13a67:	30 
  a13a68:	62 53 1d 48 18 ed 02 	vinsertf32x4 zmm13,zmm12,xmm13,0x2
  a13a6f:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a13a75:	62 72 55 48 7f e6    	vpermt2ps zmm12,zmm5,zmm6
  a13a7b:	62 72 35 48 7f ee    	vpermt2ps zmm13,zmm9,zmm6
  a13a81:	c5 78 10 74 17 50    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x50]
  a13a87:	c4 63 09 21 74 17 54 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x54],0x10
  a13a8e:	10 
  a13a8f:	c4 62 79 18 7c 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x58]
  a13a96:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a13a9d:	30 00 00 00 
  a13aa1:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a13aa7:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a13aae:	30 
  a13aaf:	62 c3 7d 40 18 c6 02 	vinsertf32x4 zmm16,zmm16,xmm14,0x2
  a13ab6:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a13abc:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a13ac2:	c5 78 10 b4 17 80 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x80]
  a13ac9:	00 00 
  a13acb:	c4 63 09 21 b4 17 84 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x84],0x10
  a13ad2:	00 00 00 10 
  a13ad6:	c4 e2 79 18 bc 17 88 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x88]
  a13add:	00 00 00 
  a13ae0:	62 e2 35 48 7f c6    	vpermt2ps zmm16,zmm9,zmm6
  a13ae6:	c4 c3 41 0c fe 03    	vblendps xmm7,xmm7,xmm14,0x3
  a13aec:	c4 e3 41 21 bc 17 8c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a13af3:	00 00 00 30 
  a13af7:	c5 7c 10 74 17 60    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x60]
  a13afd:	62 73 0d 48 18 f7 02 	vinsertf32x4 zmm14,zmm14,xmm7,0x2
  a13b04:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a13b0a:	62 e2 55 48 7f ce    	vpermt2ps zmm17,zmm5,zmm6
  a13b10:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a13b16:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  a13b1d:	00 00 
  a13b1f:	c4 e3 41 21 bc 17 b4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a13b26:	00 00 00 10 
  a13b2a:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  a13b31:	90 00 00 00 
  a13b35:	c4 62 79 18 84 17 b8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0xb8]
  a13b3c:	00 00 00 
  a13b3f:	c4 e3 39 0c ff 03    	vblendps xmm7,xmm8,xmm7,0x3
  a13b45:	c4 e3 41 21 bc 17 bc 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a13b4c:	00 00 00 30 
  a13b50:	62 e3 6d 40 18 d7 02 	vinsertf32x4 zmm18,zmm18,xmm7,0x2
  a13b57:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a13b5d:	62 e2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm6
  a13b63:	62 e2 35 48 7f d6    	vpermt2ps zmm18,zmm9,zmm6
  a13b69:	c5 fc 10 bc 17 c0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xc0]
  a13b70:	00 00 
  a13b72:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  a13b79:	00 00 
  a13b7b:	c4 63 39 21 84 17 e4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a13b82:	00 00 00 10 
  a13b86:	c4 62 79 18 94 17 e8 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xe8]
  a13b8d:	00 00 00 
  a13b90:	c4 43 29 0c c0 03    	vblendps xmm8,xmm10,xmm8,0x3
  a13b96:	c4 63 39 21 84 17 ec 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xec],0x30
  a13b9d:	00 00 00 30 
  a13ba1:	62 d3 45 48 18 f8 02 	vinsertf32x4 zmm7,zmm7,xmm8,0x2
  a13ba8:	62 e1 7c 48 28 e7    	vmovaps zmm20,zmm7
  a13bae:	62 e2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm6
  a13bb4:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a13bba:	c5 78 10 84 17 10 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x110]
  a13bc1:	00 00 
  a13bc3:	c4 63 39 21 84 17 14 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x114],0x10
  a13bca:	01 00 00 10 
  a13bce:	c4 62 79 18 94 17 18 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x118]
  a13bd5:	01 00 00 
  a13bd8:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0xf0]
  a13bdf:	f0 00 00 00 
  a13be3:	c4 43 29 0c c0 03    	vblendps xmm8,xmm10,xmm8,0x3
  a13be9:	c4 63 39 21 84 17 1c 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a13bf0:	01 00 00 30 
  a13bf4:	62 53 55 40 18 c0 02 	vinsertf32x4 zmm8,zmm21,xmm8,0x2
  a13bfb:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a13c01:	62 72 55 48 7f d6    	vpermt2ps zmm10,zmm5,zmm6
  a13c07:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x140]
  a13c0e:	14 
  a13c0f:	62 f3 55 00 21 5c 17 	vinsertps xmm3,xmm21,DWORD PTR [rdi+rdx*1+0x144],0x10
  a13c16:	51 10 
  a13c18:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x148]
  a13c1f:	01 00 00 
  a13c22:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  a13c28:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  a13c2e:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a13c35:	01 00 00 30 
  a13c39:	c5 fc 10 a4 17 20 01 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x120]
  a13c40:	00 00 
  a13c42:	62 f3 5d 48 18 db 02 	vinsertf32x4 zmm3,zmm4,xmm3,0x2
  a13c49:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a13c4f:	62 f2 55 48 7f e6    	vpermt2ps zmm4,zmm5,zmm6
  a13c55:	62 f2 35 48 7f de    	vpermt2ps zmm3,zmm9,zmm6
  a13c5b:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x170]
  a13c62:	17 
  a13c63:	62 73 55 00 21 5c 17 	vinsertps xmm11,xmm21,DWORD PTR [rdi+rdx*1+0x174],0x10
  a13c6a:	5d 10 
  a13c6c:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x150]
  a13c73:	50 01 00 00 
  a13c77:	c4 e2 79 18 8c 17 78 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x178]
  a13c7e:	01 00 00 
  a13c81:	c4 c3 71 0c cb 03    	vblendps xmm1,xmm1,xmm11,0x3
  a13c87:	c4 e3 71 21 8c 17 7c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a13c8e:	01 00 00 30 
  a13c92:	62 f3 55 40 18 c9 02 	vinsertf32x4 zmm1,zmm21,xmm1,0x2
  a13c99:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a13c9f:	62 72 55 48 7f de    	vpermt2ps zmm11,zmm5,zmm6
  a13ca5:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a13cab:	62 e1 14 48 58 ef    	vaddps zmm21,zmm13,zmm7
  a13cb1:	62 f1 14 48 5c ff    	vsubps zmm7,zmm13,zmm7
  a13cb7:	62 71 74 40 58 ec    	vaddps zmm13,zmm17,zmm4
  a13cbd:	62 f1 74 40 5c e4    	vsubps zmm4,zmm17,zmm4
  a13cc3:	62 c1 7c 40 58 c8    	vaddps zmm17,zmm16,zmm8
  a13cc9:	62 51 7c 40 5c c0    	vsubps zmm8,zmm16,zmm8
  a13ccf:	62 c1 04 48 58 c2    	vaddps zmm16,zmm15,zmm10
  a13cd5:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a13cdb:	62 51 64 40 58 fb    	vaddps zmm15,zmm19,zmm11
  a13ce1:	62 51 64 40 5c db    	vsubps zmm11,zmm19,zmm11
  a13ce7:	62 e1 6c 40 58 d9    	vaddps zmm19,zmm18,zmm1
  a13ced:	62 f1 6c 40 5c c9    	vsubps zmm1,zmm18,zmm1
  a13cf3:	62 a1 1c 48 58 d4    	vaddps zmm18,zmm12,zmm20
  a13cf9:	62 31 1c 48 5c e4    	vsubps zmm12,zmm12,zmm20
  a13cff:	62 e1 0c 48 58 e3    	vaddps zmm20,zmm14,zmm3
  a13d05:	62 d1 64 48 5c de    	vsubps zmm3,zmm3,zmm14
  a13d0b:	62 51 3c 48 58 f2    	vaddps zmm14,zmm8,zmm10
  a13d11:	62 51 2c 48 5c c0    	vsubps zmm8,zmm10,zmm8
  a13d17:	62 71 24 48 5c d1    	vsubps zmm10,zmm11,zmm1
  a13d1d:	62 d1 74 48 58 cb    	vaddps zmm1,zmm1,zmm11
  a13d23:	62 31 54 40 58 dc    	vaddps zmm11,zmm21,zmm20
  a13d29:	62 a1 54 40 5c e4    	vsubps zmm20,zmm21,zmm20
  a13d2f:	62 c1 7c 40 58 ef    	vaddps zmm21,zmm16,zmm15
  a13d35:	62 c1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm15
  a13d3b:	62 51 6c 40 58 fd    	vaddps zmm15,zmm18,zmm13
  a13d41:	62 51 6c 40 5c ed    	vsubps zmm13,zmm18,zmm13
  a13d47:	62 a1 74 40 58 d3    	vaddps zmm18,zmm17,zmm19
  a13d4d:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a13d53:	62 e1 44 48 58 f4    	vaddps zmm22,zmm7,zmm4
  a13d59:	62 e2 7d 48 18 0d 39 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff661639]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a13d60:	16 66 ff 
  a13d63:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a13d69:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a13d6f:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a13d75:	62 b1 74 48 59 c9    	vmulps zmm1,zmm1,zmm17
  a13d7b:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a13d81:	62 f1 3c 48 5c f9    	vsubps zmm7,zmm8,zmm1
  a13d87:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a13d8d:	62 51 64 48 58 c4    	vaddps zmm8,zmm3,zmm12
  a13d93:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a13d99:	62 51 0c 48 58 e2    	vaddps zmm12,zmm14,zmm10
  a13d9f:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a13da5:	62 31 24 48 58 f2    	vaddps zmm14,zmm11,zmm18
  a13dab:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a13db1:	62 a1 04 48 58 cd    	vaddps zmm17,zmm15,zmm21
  a13db7:	62 a1 04 48 5c fd    	vsubps zmm23,zmm15,zmm21
  a13dbd:	62 c1 4c 40 58 d4    	vaddps zmm18,zmm22,zmm12
  a13dc3:	62 51 4c 40 5c e4    	vsubps zmm12,zmm22,zmm12
  a13dc9:	62 71 3c 48 58 ff    	vaddps zmm15,zmm8,zmm7
  a13dcf:	62 61 3c 48 5c c7    	vsubps zmm24,zmm8,zmm7
  a13dd5:	62 b1 5c 40 58 f8    	vaddps zmm7,zmm20,zmm16
  a13ddb:	62 31 5c 40 5c c0    	vsubps zmm8,zmm20,zmm16
  a13de1:	62 c1 64 40 58 ed    	vaddps zmm21,zmm19,zmm13
  a13de7:	62 21 14 48 5c cb    	vsubps zmm25,zmm13,zmm19
  a13ded:	62 71 5c 48 58 e9    	vaddps zmm13,zmm4,zmm1
  a13df3:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a13df9:	62 c1 64 48 58 e2    	vaddps zmm20,zmm3,zmm10
  a13dff:	62 c1 64 48 5c f2    	vsubps zmm22,zmm3,zmm10
  a13e05:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a13e0b:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a13e11:	62 f2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm6
  a13e17:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a13e1d:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a13e23:	62 72 7d 48 7f c6    	vpermt2ps zmm8,zmm0,zmm6
  a13e29:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a13e2f:	62 d2 2d 40 7f db    	vpermt2ps zmm3,zmm26,zmm11
  a13e35:	62 52 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm11
  a13e3b:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a13e41:	62 d2 2d 40 7f e4    	vpermt2ps zmm4,zmm26,zmm12
  a13e47:	62 c2 6d 48 7f d4    	vpermt2ps zmm18,zmm2,zmm12
  a13e4d:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a13e53:	62 52 2d 40 7f d0    	vpermt2ps zmm10,zmm26,zmm8
  a13e59:	62 d2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm8
  a13e5f:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a13e65:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a13e6b:	62 71 8d 48 14 f7    	vunpcklpd zmm14,zmm14,zmm7
  a13e71:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a13e77:	62 f2 2d 40 7f f9    	vpermt2ps zmm7,zmm26,zmm1
  a13e7d:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a13e83:	62 d1 ed 40 14 cd    	vunpcklpd zmm1,zmm18,zmm13
  a13e89:	62 51 e5 48 14 ea    	vunpcklpd zmm13,zmm3,zmm10
  a13e8f:	62 c1 e5 48 15 c2    	vunpckhpd zmm16,zmm3,zmm10
  a13e95:	62 f1 dd 48 14 df    	vunpcklpd zmm3,zmm4,zmm7
  a13e9b:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a13ea1:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a13ea7:	62 72 15 40 7f e3    	vpermt2ps zmm12,zmm29,zmm3
  a13ead:	62 72 0d 40 7f eb    	vpermt2ps zmm13,zmm30,zmm3
  a13eb3:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a13eb9:	62 e2 15 40 7f dc    	vpermt2ps zmm19,zmm29,zmm4
  a13ebf:	62 e2 0d 40 7f c4    	vpermt2ps zmm16,zmm30,zmm4
  a13ec5:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a13ecb:	62 e2 15 40 7f d1    	vpermt2ps zmm18,zmm29,zmm1
  a13ed1:	62 72 0d 40 7f f1    	vpermt2ps zmm14,zmm30,zmm1
  a13ed7:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a13edd:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a13ee3:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a13ee9:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a13eef:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a13ef5:	62 62 7d 48 7f c6    	vpermt2ps zmm24,zmm0,zmm6
  a13efb:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a13f01:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a13f07:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a13f0d:	62 b2 2d 40 7f cf    	vpermt2ps zmm1,zmm26,zmm23
  a13f13:	62 a2 6d 48 7f cf    	vpermt2ps zmm17,zmm2,zmm23
  a13f19:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a13f1f:	62 92 2d 40 7f d8    	vpermt2ps zmm3,zmm26,zmm24
  a13f25:	62 12 6d 48 7f f8    	vpermt2ps zmm15,zmm2,zmm24
  a13f2b:	62 b1 7c 48 28 e5    	vmovaps zmm4,zmm21
  a13f31:	62 92 2d 40 7f e1    	vpermt2ps zmm4,zmm26,zmm25
  a13f37:	62 82 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm25
  a13f3d:	62 a1 f5 40 14 ed    	vunpcklpd zmm21,zmm17,zmm21
  a13f43:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a13f49:	62 b2 2d 40 7f fe    	vpermt2ps zmm7,zmm26,zmm22
  a13f4f:	62 a2 6d 48 7f e6    	vpermt2ps zmm20,zmm2,zmm22
  a13f55:	62 31 85 48 14 c4    	vunpcklpd zmm8,zmm15,zmm20
  a13f5b:	62 e1 f5 48 14 cc    	vunpcklpd zmm17,zmm1,zmm4
  a13f61:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a13f67:	62 f1 e5 48 14 e7    	vunpcklpd zmm4,zmm3,zmm7
  a13f6d:	62 f1 e5 48 15 df    	vunpckhpd zmm3,zmm3,zmm7
  a13f73:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a13f79:	62 72 15 40 7f fc    	vpermt2ps zmm15,zmm29,zmm4
  a13f7f:	62 e2 0d 40 7f cc    	vpermt2ps zmm17,zmm30,zmm4
  a13f85:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a13f8b:	62 f2 15 40 7f e3    	vpermt2ps zmm4,zmm29,zmm3
  a13f91:	62 f2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm3
  a13f97:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a13f9d:	62 d2 15 40 7f d8    	vpermt2ps zmm3,zmm29,zmm8
  a13fa3:	62 c2 0d 40 7f e8    	vpermt2ps zmm21,zmm30,zmm8
  a13fa9:	62 f1 7c 48 10 79 04 	vmovups zmm7,ZMMWORD PTR [rcx+0x100]
  a13fb0:	62 71 7c 48 10 41 05 	vmovups zmm8,ZMMWORD PTR [rcx+0x140]
  a13fb7:	62 e1 64 40 59 e7    	vmulps zmm20,zmm19,zmm7
  a13fbd:	62 c2 5d 48 bc e0    	vfnmadd231ps zmm20,zmm4,zmm8
  a13fc3:	62 f1 5c 48 59 e7    	vmulps zmm4,zmm4,zmm7
  a13fc9:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a13fd0:	62 b2 3d 48 b8 e3    	vfmadd231ps zmm4,zmm8,zmm19
  a13fd6:	62 71 7c 48 10 41 09 	vmovups zmm8,ZMMWORD PTR [rcx+0x240]
  a13fdd:	62 71 6c 40 59 d7    	vmulps zmm10,zmm18,zmm7
  a13fe3:	62 52 65 48 bc d0    	vfnmadd231ps zmm10,zmm3,zmm8
  a13fe9:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a13fef:	62 f1 7c 48 10 79 06 	vmovups zmm7,ZMMWORD PTR [rcx+0x180]
  a13ff6:	62 b2 3d 48 b8 da    	vfmadd231ps zmm3,zmm8,zmm18
  a13ffc:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a14003:	62 71 7c 40 59 df    	vmulps zmm11,zmm16,zmm7
  a14009:	62 52 75 48 bc d8    	vfnmadd231ps zmm11,zmm1,zmm8
  a1400f:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a14015:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a1401c:	62 b2 3d 48 b8 c8    	vfmadd231ps zmm1,zmm8,zmm16
  a14022:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a14029:	62 e1 0c 48 59 c7    	vmulps zmm16,zmm14,zmm7
  a1402f:	62 c2 55 40 bc c0    	vfnmadd231ps zmm16,zmm21,zmm8
  a14035:	62 f1 54 40 59 ff    	vmulps zmm7,zmm21,zmm7
  a1403b:	62 e1 7c 48 10 51 02 	vmovups zmm18,ZMMWORD PTR [rcx+0x80]
  a14042:	62 d2 3d 48 b8 fe    	vfmadd231ps zmm7,zmm8,zmm14
  a14048:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a1404f:	62 31 14 48 59 f2    	vmulps zmm14,zmm13,zmm18
  a14055:	62 52 75 40 bc f0    	vfnmadd231ps zmm14,zmm17,zmm8
  a1405b:	62 a1 74 40 59 ca    	vmulps zmm17,zmm17,zmm18
  a14061:	62 c1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm10
  a14067:	62 c2 3d 48 b8 cd    	vfmadd231ps zmm17,zmm8,zmm13
  a1406d:	62 31 1c 48 58 c2    	vaddps zmm8,zmm12,zmm18
  a14073:	62 51 7c 40 58 ee    	vaddps zmm13,zmm16,zmm14
  a14079:	62 32 25 40 bc e2    	vfnmadd231ps zmm12,zmm27,zmm18
  a1407f:	62 e1 5c 48 58 d3    	vaddps zmm18,zmm4,zmm3
  a14085:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a1408b:	62 d1 24 48 58 e5    	vaddps zmm4,zmm11,zmm13
  a14091:	62 52 25 40 bc dd    	vfnmadd231ps zmm11,zmm27,zmm13
  a14097:	62 31 44 48 58 e9    	vaddps zmm13,zmm7,zmm17
  a1409d:	62 b1 44 48 5c f9    	vsubps zmm7,zmm7,zmm17
  a140a3:	62 c1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm15
  a140a9:	62 32 25 40 bc fa    	vfnmadd231ps zmm15,zmm27,zmm18
  a140af:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a140b5:	62 c1 74 48 58 d5    	vaddps zmm18,zmm1,zmm13
  a140bb:	62 d2 25 40 bc cd    	vfnmadd231ps zmm1,zmm27,zmm13
  a140c1:	62 91 64 48 59 dc    	vmulps zmm3,zmm3,zmm28
  a140c7:	62 51 7c 40 5c ee    	vsubps zmm13,zmm16,zmm14
  a140cd:	62 71 1c 48 58 f3    	vaddps zmm14,zmm12,zmm3
  a140d3:	62 91 44 48 59 fc    	vmulps zmm7,zmm7,zmm28
  a140d9:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a140df:	62 71 24 48 58 e7    	vaddps zmm12,zmm11,zmm7
  a140e5:	62 11 2c 48 59 d4    	vmulps zmm10,zmm10,zmm28
  a140eb:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a140f1:	62 51 04 48 5c da    	vsubps zmm11,zmm15,zmm10
  a140f7:	62 11 14 48 59 ec    	vmulps zmm13,zmm13,zmm28
  a140fd:	62 51 2c 48 58 d7    	vaddps zmm10,zmm10,zmm15
  a14103:	62 51 74 48 5c fd    	vsubps zmm15,zmm1,zmm13
  a14109:	62 d1 74 48 58 cd    	vaddps zmm1,zmm1,zmm13
  a1410f:	62 51 0c 48 5c ec    	vsubps zmm13,zmm14,zmm12
  a14115:	62 51 0c 48 58 e4    	vaddps zmm12,zmm14,zmm12
  a1411b:	62 51 24 48 5c f7    	vsubps zmm14,zmm11,zmm15
  a14121:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a14127:	62 71 64 48 58 ff    	vaddps zmm15,zmm3,zmm7
  a1412d:	62 f1 64 48 5c df    	vsubps zmm3,zmm3,zmm7
  a14133:	62 f1 2c 48 58 f9    	vaddps zmm7,zmm10,zmm1
  a14139:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a1413f:	62 31 74 40 5c d2    	vsubps zmm10,zmm17,zmm18
  a14145:	62 a1 74 40 58 c2    	vaddps zmm16,zmm17,zmm18
  a1414b:	62 e1 3c 48 5c cc    	vsubps zmm17,zmm8,zmm4
  a14151:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a14157:	62 e2 05 40 7f c4    	vpermt2ps zmm16,zmm31,zmm4
  a1415d:	62 e1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm16
  a14164:	62 52 05 40 7f f5    	vpermt2ps zmm14,zmm31,zmm13
  a1416a:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm14
  a14171:	01 
  a14172:	62 d2 05 40 7f ff    	vpermt2ps zmm7,zmm31,zmm15
  a14178:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm7
  a1417f:	02 
  a14180:	62 32 05 40 7f d1    	vpermt2ps zmm10,zmm31,zmm17
  a14186:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm10
  a1418d:	03 
  a1418e:	62 52 05 40 7f dc    	vpermt2ps zmm11,zmm31,zmm12
  a14194:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm11
  a1419b:	04 
  a1419c:	62 f2 05 40 7f cb    	vpermt2ps zmm1,zmm31,zmm3
  a141a2:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm1
  a141a9:	05 
  a141aa:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a141b1:	48 39 d0             	cmp    rax,rdx
  a141b4:	0f 85 86 f8 ff ff    	jne    a13a40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a141ba:	c5 f8 77             	vzeroupper
  a141bd:	c3                   	ret
