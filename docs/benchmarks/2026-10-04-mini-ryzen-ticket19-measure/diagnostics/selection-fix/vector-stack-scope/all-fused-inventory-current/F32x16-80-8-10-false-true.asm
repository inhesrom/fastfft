
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a66b40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a66b40:	55                   	push   rbp
  a66b41:	48 89 e5             	mov    rbp,rsp
  a66b44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a66b48:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  a66b4f:	48 c1 e2 07          	shl    rdx,0x7
  a66b53:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a66b57:	31 d2                	xor    edx,edx
  a66b59:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  a66b60:	00 
  a66b61:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a66b66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a66b6d:	00 00 00 
  a66b70:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  a66b77:	00 
  a66b78:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a66b7d:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a66b84:	c5 78 10 5c 17 40    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x40]
  a66b8a:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a66b90:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x50]
  a66b97:	50 00 00 00 
  a66b9b:	c5 78 10 ac 17 90 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x90]
  a66ba2:	00 00 
  a66ba4:	62 f1 7c 48 28 0d 92 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff62d592]        # 94140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x215f0>
  a66bab:	d5 62 ff 
  a66bae:	62 d2 75 48 7f db    	vpermt2ps zmm3,zmm1,zmm11
  a66bb4:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a66bba:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a66bc1:	a0 00 00 00 
  a66bc5:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0xe0]
  a66bcc:	0e 
  a66bcd:	62 52 75 48 7f c5    	vpermt2ps zmm8,zmm1,zmm13
  a66bd3:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a66bd9:	62 a2 75 48 7f c1    	vpermt2ps zmm16,zmm1,zmm17
  a66bdf:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a66be6:	f0 00 00 00 
  a66bea:	62 f1 7c 48 28 05 0c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff62d50c]        # 94100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x215b0>
  a66bf1:	d5 62 ff 
  a66bf4:	62 52 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm11
  a66bfa:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x130]
  a66c01:	13 
  a66c02:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a66c08:	62 32 75 48 7f d2    	vpermt2ps zmm10,zmm1,zmm18
  a66c0e:	62 d2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm13
  a66c14:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x140]
  a66c1b:	05 
  a66c1c:	62 e1 7c 08 10 5c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x180]
  a66c23:	18 
  a66c24:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a66c2a:	62 b2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm17
  a66c30:	62 32 75 48 7f eb    	vpermt2ps zmm13,zmm1,zmm19
  a66c36:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x190]
  a66c3d:	90 01 00 00 
  a66c41:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a66c48:	1d 
  a66c49:	62 32 7d 48 7f da    	vpermt2ps zmm11,zmm0,zmm18
  a66c4f:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a66c55:	62 a2 75 48 7f cd    	vpermt2ps zmm17,zmm1,zmm21
  a66c5b:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a66c62:	e0 01 00 00 
  a66c66:	62 a2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm19
  a66c6c:	62 e1 7c 08 10 5c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x220]
  a66c73:	22 
  a66c74:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a66c7a:	62 a2 75 48 7f f3    	vpermt2ps zmm22,zmm1,zmm19
  a66c80:	62 a2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm21
  a66c86:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x230]
  a66c8d:	30 02 00 00 
  a66c91:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x270]
  a66c98:	27 
  a66c99:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a66c9f:	62 a2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm19
  a66ca5:	62 02 7d 48 7f c8    	vpermt2ps zmm25,zmm0,zmm24
  a66cab:	62 82 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm24
  a66cb1:	62 a1 04 48 58 dc    	vaddps zmm19,zmm15,zmm20
  a66cb7:	62 21 4c 48 58 c7    	vaddps zmm24,zmm6,zmm23
  a66cbd:	62 21 44 48 58 d2    	vaddps zmm26,zmm7,zmm18
  a66cc3:	62 41 64 48 58 dd    	vaddps zmm27,zmm3,zmm13
  a66cc9:	62 21 7c 40 58 e6    	vaddps zmm28,zmm16,zmm22
  a66ccf:	62 01 24 48 58 e9    	vaddps zmm29,zmm11,zmm25
  a66cd5:	62 01 24 40 58 f4    	vaddps zmm30,zmm27,zmm28
  a66cdb:	62 21 3c 48 58 f9    	vaddps zmm31,zmm8,zmm17
  a66ce1:	62 31 2c 48 58 cd    	vaddps zmm9,zmm10,zmm21
  a66ce7:	62 91 64 40 58 e0    	vaddps zmm4,zmm19,zmm24
  a66ced:	62 d1 04 40 58 e9    	vaddps zmm5,zmm31,zmm9
  a66cf3:	62 a1 04 48 5c e4    	vsubps zmm20,zmm15,zmm20
  a66cf9:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a66cff:	62 11 2c 40 58 f5    	vaddps zmm14,zmm26,zmm29
  a66d05:	62 f1 0c 40 58 c5    	vaddps zmm0,zmm30,zmm5
  a66d0b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a66d12:	03 
  a66d13:	62 b1 44 48 5c fa    	vsubps zmm7,zmm7,zmm18
  a66d19:	62 31 3c 48 5c c1    	vsubps zmm8,zmm8,zmm17
  a66d1f:	62 c1 5c 48 58 c6    	vaddps zmm16,zmm4,zmm14
  a66d25:	62 a1 5c 40 58 ce    	vaddps zmm17,zmm20,zmm22
  a66d2b:	62 31 2c 48 5c d5    	vsubps zmm10,zmm10,zmm21
  a66d31:	62 c1 44 48 58 d0    	vaddps zmm18,zmm7,zmm8
  a66d37:	62 f2 7d 48 18 0d 5b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60e65b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a66d3e:	e6 60 ff 
  a66d41:	62 e1 6c 40 59 e9    	vmulps zmm21,zmm18,zmm1
  a66d47:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a66d4d:	62 c1 2c 48 5c d3    	vsubps zmm18,zmm10,zmm11
  a66d53:	62 d1 64 48 5c dd    	vsubps zmm3,zmm3,zmm13
  a66d59:	62 71 6c 40 59 e9    	vmulps zmm13,zmm18,zmm1
  a66d5f:	62 e1 44 40 5c d6    	vsubps zmm18,zmm23,zmm6
  a66d65:	62 e1 6c 40 58 fb    	vaddps zmm23,zmm18,zmm3
  a66d6b:	62 f1 3c 48 5c f7    	vsubps zmm6,zmm8,zmm7
  a66d71:	62 41 54 40 58 cd    	vaddps zmm25,zmm21,zmm13
  a66d77:	62 f1 4c 48 59 c1    	vmulps zmm0,zmm6,zmm1
  a66d7d:	62 d1 24 48 58 f2    	vaddps zmm6,zmm11,zmm10
  a66d83:	62 71 4c 48 59 d1    	vmulps zmm10,zmm6,zmm1
  a66d89:	62 d1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm10
  a66d8f:	62 81 64 40 5c d8    	vsubps zmm19,zmm19,zmm24
  a66d95:	62 51 04 40 5c c9    	vsubps zmm9,zmm31,zmm9
  a66d9b:	62 d1 64 40 58 f1    	vaddps zmm6,zmm19,zmm9
  a66da1:	62 11 74 40 58 c1    	vaddps zmm8,zmm17,zmm25
  a66da7:	62 01 24 40 5c c4    	vsubps zmm24,zmm27,zmm28
  a66dad:	62 01 14 40 5c d2    	vsubps zmm26,zmm29,zmm26
  a66db3:	62 11 2c 40 58 f8    	vaddps zmm15,zmm26,zmm24
  a66db9:	62 61 44 40 58 f9    	vaddps zmm31,zmm23,zmm1
  a66dbf:	62 a1 5c 40 5c f6    	vsubps zmm22,zmm20,zmm22
  a66dc5:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a66dcb:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a66dd1:	62 e1 4c 40 58 d0    	vaddps zmm18,zmm22,zmm0
  a66dd7:	62 a1 14 48 5c ed    	vsubps zmm21,zmm13,zmm21
  a66ddd:	62 51 5c 48 5c de    	vsubps zmm11,zmm4,zmm14
  a66de3:	62 61 0c 40 5c ed    	vsubps zmm29,zmm30,zmm5
  a66de9:	62 31 64 48 58 d5    	vaddps zmm10,zmm3,zmm21
  a66def:	62 81 74 40 5c c9    	vsubps zmm17,zmm17,zmm25
  a66df5:	62 c1 64 40 5c e1    	vsubps zmm20,zmm19,zmm9
  a66dfb:	62 01 3c 40 5c d2    	vsubps zmm26,zmm24,zmm26
  a66e01:	62 61 44 40 5c e1    	vsubps zmm28,zmm23,zmm1
  a66e07:	62 71 4c 40 5c e8    	vsubps zmm13,zmm22,zmm0
  a66e0d:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a66e13:	62 f1 7c 48 28 3d 63 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff660163]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a66e1a:	01 66 ff 
  a66e1d:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a66e21:	62 e2 45 48 7f da    	vpermt2ps zmm19,zmm7,zmm2
  a66e27:	62 21 64 48 5c dd    	vsubps zmm27,zmm3,zmm21
  a66e2d:	62 71 7c 48 28 25 89 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff660189]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a66e34:	01 66 ff 
  a66e37:	62 e2 1d 48 7f c2    	vpermt2ps zmm16,zmm12,zmm2
  a66e3d:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a66e43:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a66e49:	62 72 1d 48 7f c2    	vpermt2ps zmm8,zmm12,zmm2
  a66e4f:	62 f2 45 48 7f c2    	vpermt2ps zmm0,zmm7,zmm2
  a66e55:	62 f2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm2
  a66e5b:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a66e61:	62 e2 1d 48 7f d2    	vpermt2ps zmm18,zmm12,zmm2
  a66e67:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a66e6d:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a66e73:	62 72 1d 48 7f da    	vpermt2ps zmm11,zmm12,zmm2
  a66e79:	62 f2 45 48 7f da    	vpermt2ps zmm3,zmm7,zmm2
  a66e7f:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a66e85:	62 e2 1d 48 7f ca    	vpermt2ps zmm17,zmm12,zmm2
  a66e8b:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a66e91:	62 e2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm2
  a66e97:	62 f2 45 48 7f ea    	vpermt2ps zmm5,zmm7,zmm2
  a66e9d:	62 e2 1d 48 7f e2    	vpermt2ps zmm20,zmm12,zmm2
  a66ea3:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a66ea9:	62 f2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm2
  a66eaf:	62 72 1d 48 7f ea    	vpermt2ps zmm13,zmm12,zmm2
  a66eb5:	62 31 7c 48 28 f3    	vmovaps zmm14,zmm19
  a66ebb:	62 e1 7c 48 28 2d 3b 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff66003b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a66ec2:	00 66 ff 
  a66ec5:	62 72 55 40 7f f1    	vpermt2ps zmm14,zmm21,zmm1
  a66ecb:	62 72 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm2
  a66ed1:	62 61 7c 48 28 0d 65 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff660065]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a66ed8:	00 66 ff 
  a66edb:	62 e2 35 40 7f d9    	vpermt2ps zmm19,zmm25,zmm1
  a66ee1:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a66ee7:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a66eed:	62 f2 35 40 7f dc    	vpermt2ps zmm3,zmm25,zmm4
  a66ef3:	62 f2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm5
  a66ef9:	62 f2 35 40 7f c5    	vpermt2ps zmm0,zmm25,zmm5
  a66eff:	62 c2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm11
  a66f05:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a66f0b:	62 32 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm17
  a66f11:	62 b2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm20
  a66f17:	62 f1 fd 40 14 f6    	vunpcklpd zmm6,zmm16,zmm6
  a66f1d:	62 c2 35 40 7f f1    	vpermt2ps zmm22,zmm25,zmm9
  a66f23:	62 c2 55 40 7f d5    	vpermt2ps zmm18,zmm21,zmm13
  a66f29:	62 b1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm18
  a66f2f:	62 71 8d 48 14 c1    	vunpcklpd zmm8,zmm14,zmm1
  a66f35:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm8
  a66f3c:	01 
  a66f3d:	62 62 55 40 7f f4    	vpermt2ps zmm30,zmm21,zmm4
  a66f43:	62 f1 8d 48 15 c9    	vunpckhpd zmm1,zmm14,zmm1
  a66f49:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a66f50:	02 
  a66f51:	62 e1 e5 40 14 e0    	vunpcklpd zmm20,zmm19,zmm0
  a66f57:	62 e1 e5 40 15 d8    	vunpckhpd zmm19,zmm19,zmm0
  a66f5d:	62 52 55 40 7f d9    	vpermt2ps zmm11,zmm21,zmm9
  a66f63:	62 31 e5 48 14 c6    	vunpcklpd zmm8,zmm3,zmm22
  a66f69:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a66f6f:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a66f75:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a66f7b:	62 31 e5 48 15 f6    	vunpckhpd zmm14,zmm3,zmm22
  a66f81:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a66f88:	03 
  a66f89:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a66f8f:	62 f2 45 48 7f f2    	vpermt2ps zmm6,zmm7,zmm2
  a66f95:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  a66f9b:	62 e1 7c 48 28 0d 5b 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff65fe5b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a66fa2:	fe 65 ff 
  a66fa5:	62 e2 75 40 7f c5    	vpermt2ps zmm16,zmm17,zmm5
  a66fab:	62 e2 45 48 7f f2    	vpermt2ps zmm22,zmm7,zmm2
  a66fb1:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a66fb7:	62 e2 45 48 7f fa    	vpermt2ps zmm23,zmm7,zmm2
  a66fbd:	62 71 7c 48 28 0d 79 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff65fe79]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a66fc4:	fe 65 ff 
  a66fc7:	62 f2 35 48 7f c5    	vpermt2ps zmm0,zmm9,zmm5
  a66fcd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a66fd4:	04 
  a66fd5:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a66fdb:	62 62 45 48 7f c2    	vpermt2ps zmm24,zmm7,zmm2
  a66fe1:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a66fe7:	62 51 8d 40 14 eb    	vunpcklpd zmm13,zmm30,zmm11
  a66fed:	62 f2 45 48 7f c2    	vpermt2ps zmm0,zmm7,zmm2
  a66ff3:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a66ff9:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a66fff:	62 51 8d 40 15 db    	vunpckhpd zmm11,zmm30,zmm11
  a67005:	62 f2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm2
  a6700b:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a67011:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a67017:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a6701d:	62 f2 35 40 7f f0    	vpermt2ps zmm6,zmm25,zmm0
  a67023:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a67029:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a6702f:	62 c2 75 40 7f d0    	vpermt2ps zmm18,zmm17,zmm8
  a67035:	62 e2 35 40 7f f1    	vpermt2ps zmm22,zmm25,zmm1
  a6703b:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a67041:	62 f2 45 48 7f ca    	vpermt2ps zmm1,zmm7,zmm2
  a67047:	62 c2 35 48 7f e0    	vpermt2ps zmm20,zmm9,zmm8
  a6704d:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a67053:	62 72 55 40 7f c4    	vpermt2ps zmm8,zmm21,zmm4
  a67059:	62 e2 35 40 7f fc    	vpermt2ps zmm23,zmm25,zmm4
  a6705f:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a67065:	62 f2 55 40 7f e1    	vpermt2ps zmm4,zmm21,zmm1
  a6706b:	62 62 35 40 7f c1    	vpermt2ps zmm24,zmm25,zmm1
  a67071:	62 f2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm2
  a67077:	62 62 1d 48 7f ea    	vpermt2ps zmm29,zmm12,zmm2
  a6707d:	62 92 55 40 7f dd    	vpermt2ps zmm3,zmm21,zmm29
  a67083:	62 21 7c 48 28 eb    	vmovaps zmm29,zmm19
  a67089:	62 42 75 40 7f ee    	vpermt2ps zmm29,zmm17,zmm14
  a6708f:	62 c2 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm14
  a67095:	62 62 1d 48 7f fa    	vpermt2ps zmm31,zmm12,zmm2
  a6709b:	62 62 1d 48 7f e2    	vpermt2ps zmm28,zmm12,zmm2
  a670a1:	62 02 55 40 7f fc    	vpermt2ps zmm31,zmm21,zmm28
  a670a7:	62 72 1d 48 7f fa    	vpermt2ps zmm15,zmm12,zmm2
  a670ad:	62 62 1d 48 7f d2    	vpermt2ps zmm26,zmm12,zmm2
  a670b3:	62 12 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm26
  a670b9:	62 d1 e5 48 14 ff    	vunpcklpd zmm7,zmm3,zmm15
  a670bf:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x40]
  a670c6:	01 
  a670c7:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a670cd:	62 72 1d 48 7f d2    	vpermt2ps zmm10,zmm12,zmm2
  a670d3:	62 62 1d 48 7f da    	vpermt2ps zmm27,zmm12,zmm2
  a670d9:	62 12 55 40 7f d3    	vpermt2ps zmm10,zmm21,zmm27
  a670df:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x80]
  a670e6:	02 
  a670e7:	62 41 7c 48 28 f4    	vmovaps zmm30,zmm12
  a670ed:	62 d1 85 40 14 ca    	vunpcklpd zmm1,zmm31,zmm10
  a670f3:	62 51 d5 48 14 d0    	vunpcklpd zmm10,zmm5,zmm8
  a670f9:	62 d1 d5 48 15 d8    	vunpckhpd zmm3,zmm5,zmm8
  a670ff:	62 52 75 40 7f fd    	vpermt2ps zmm15,zmm17,zmm13
  a67105:	62 61 fd 48 14 d4    	vunpcklpd zmm26,zmm0,zmm4
  a6710b:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a67111:	62 31 cd 48 14 c7    	vunpcklpd zmm8,zmm6,zmm23
  a67117:	62 42 35 48 7f cd    	vpermt2ps zmm25,zmm9,zmm13
  a6711d:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a67123:	62 21 cd 48 15 ff    	vunpckhpd zmm31,zmm6,zmm23
  a67129:	62 91 cd 40 14 e0    	vunpcklpd zmm4,zmm22,zmm24
  a6712f:	62 91 cd 40 15 e8    	vunpckhpd zmm5,zmm22,zmm24
  a67135:	62 42 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm11
  a6713b:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a67141:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a67147:	62 f2 75 40 7f f4    	vpermt2ps zmm6,zmm17,zmm4
  a6714d:	62 52 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm11
  a67153:	62 72 35 48 7f c4    	vpermt2ps zmm8,zmm9,zmm4
  a67159:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  a6715f:	62 e2 75 40 7f f5    	vpermt2ps zmm22,zmm17,zmm5
  a67165:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a6716b:	62 62 35 48 7f fd    	vpermt2ps zmm31,zmm9,zmm5
  a67171:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a67177:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a6717d:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a67183:	62 f2 35 48 7f f9    	vpermt2ps zmm7,zmm9,zmm1
  a67189:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a67190:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a67197:	62 61 7c 40 59 d8    	vmulps zmm27,zmm16,zmm0
  a6719d:	62 62 5d 48 bc d9    	vfnmadd231ps zmm27,zmm4,zmm1
  a671a3:	62 e1 5c 48 59 f8    	vmulps zmm23,zmm4,zmm0
  a671a9:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a671b0:	62 a2 75 48 b8 f8    	vfmadd231ps zmm23,zmm1,zmm16
  a671b6:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a671bd:	62 61 6c 40 59 c8    	vmulps zmm25,zmm18,zmm0
  a671c3:	62 71 4c 48 59 e8    	vmulps zmm13,zmm6,zmm0
  a671c9:	62 62 4d 48 bc c9    	vfnmadd231ps zmm25,zmm6,zmm1
  a671cf:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a671d6:	62 32 75 48 b8 ea    	vfmadd231ps zmm13,zmm1,zmm18
  a671dc:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a671e3:	62 f1 14 40 59 f0    	vmulps zmm6,zmm29,zmm0
  a671e9:	62 f2 4d 40 bc f1    	vfnmadd231ps zmm6,zmm22,zmm1
  a671ef:	62 f1 4c 40 59 c0    	vmulps zmm0,zmm22,zmm0
  a671f5:	62 f1 7c 48 10 61 0a 	vmovups zmm4,ZMMWORD PTR [rcx+0x280]
  a671fc:	62 92 75 48 b8 c5    	vfmadd231ps zmm0,zmm1,zmm29
  a67202:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a67209:	62 e1 5c 40 59 f4    	vmulps zmm22,zmm20,zmm4
  a6720f:	62 e1 3c 48 59 ec    	vmulps zmm21,zmm8,zmm4
  a67215:	62 e2 3d 48 bc f1    	vfnmadd231ps zmm22,zmm8,zmm1
  a6721b:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  a67222:	62 a2 75 48 b8 ec    	vfmadd231ps zmm21,zmm1,zmm20
  a67228:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a6722f:	62 71 0c 40 59 dc    	vmulps zmm11,zmm30,zmm4
  a67235:	62 72 1d 40 bc d9    	vfnmadd231ps zmm11,zmm28,zmm1
  a6723b:	62 f1 1c 40 59 e4    	vmulps zmm4,zmm28,zmm4
  a67241:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a67248:	62 92 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm30
  a6724e:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a67255:	62 e1 64 40 59 e5    	vmulps zmm20,zmm19,zmm5
  a6725b:	62 f1 04 40 59 ed    	vmulps zmm5,zmm31,zmm5
  a67261:	62 e2 05 40 bc e1    	vfnmadd231ps zmm20,zmm31,zmm1
  a67267:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a6726e:	62 b2 75 48 b8 eb    	vfmadd231ps zmm5,zmm1,zmm19
  a67274:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a6727b:	62 41 1c 48 59 c0    	vmulps zmm24,zmm12,zmm8
  a67281:	62 62 65 48 bc c1    	vfnmadd231ps zmm24,zmm3,zmm1
  a67287:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a6728d:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a67293:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a67299:	62 d2 75 48 b8 dc    	vfmadd231ps zmm3,zmm1,zmm12
  a6729f:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a672a6:	62 71 7c 48 10 41 13 	vmovups zmm8,ZMMWORD PTR [rcx+0x4c0]
  a672ad:	62 12 35 48 7f d2    	vpermt2ps zmm10,zmm9,zmm26
  a672b3:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x100]
  a672ba:	04 
  a672bb:	62 71 1c 48 59 c9    	vmulps zmm9,zmm12,zmm1
  a672c1:	62 52 45 48 bc c8    	vfnmadd231ps zmm9,zmm7,zmm8
  a672c7:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a672cd:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a672d4:	62 d2 3d 48 b8 cc    	vfmadd231ps zmm1,zmm8,zmm12
  a672da:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a672e1:	62 71 6c 48 59 f7    	vmulps zmm14,zmm2,zmm7
  a672e7:	62 52 2d 48 bc f0    	vfnmadd231ps zmm14,zmm10,zmm8
  a672ed:	62 f1 2c 48 59 ff    	vmulps zmm7,zmm10,zmm7
  a672f3:	62 f2 3d 48 b8 fa    	vfmadd231ps zmm7,zmm8,zmm2
  a672f9:	62 71 34 40 58 d6    	vaddps zmm10,zmm25,zmm6
  a672ff:	62 a1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm23
  a67305:	62 b1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm23
  a6730b:	62 e1 14 48 58 d0    	vaddps zmm18,zmm13,zmm0
  a67311:	62 f1 14 48 5c c0    	vsubps zmm0,zmm13,zmm0
  a67317:	62 71 54 48 58 c3    	vaddps zmm8,zmm5,zmm3
  a6731d:	62 f1 54 48 5c eb    	vsubps zmm5,zmm5,zmm3
  a67323:	62 e1 74 48 58 cf    	vaddps zmm17,zmm1,zmm7
  a67329:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a6732f:	62 91 24 48 58 db    	vaddps zmm3,zmm11,zmm27
  a67335:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a6733b:	62 91 5c 40 58 f8    	vaddps zmm7,zmm20,zmm24
  a67341:	62 71 34 40 5c ee    	vsubps zmm13,zmm25,zmm6
  a67347:	62 c1 34 48 58 fe    	vaddps zmm23,zmm9,zmm14
  a6734d:	62 01 5c 40 5c c0    	vsubps zmm24,zmm20,zmm24
  a67353:	62 f2 7d 48 18 15 8b 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60e38b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6735a:	e3 60 ff 
  a6735d:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a67363:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a67369:	62 f1 04 48 58 f3    	vaddps zmm6,zmm15,zmm3
  a6736f:	62 c2 65 48 a8 e7    	vfmadd213ps zmm20,zmm3,zmm15
  a67375:	62 72 7d 48 18 25 c5 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff60e2c5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6737c:	e2 60 ff 
  a6737f:	62 72 1d 48 bc fb    	vfnmadd231ps zmm15,zmm12,zmm3
  a67385:	62 71 4c 40 58 f7    	vaddps zmm14,zmm22,zmm7
  a6738b:	62 d1 4c 48 58 da    	vaddps zmm3,zmm6,zmm10
  a67391:	62 c2 2d 48 bc e4    	vfnmadd231ps zmm20,zmm10,zmm12
  a67397:	62 52 6d 48 b8 fa    	vfmadd231ps zmm15,zmm2,zmm10
  a6739d:	62 62 7d 48 18 0d b1 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff60e3b1]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a673a4:	e3 60 ff 
  a673a7:	62 11 7c 48 59 d1    	vmulps zmm10,zmm0,zmm25
  a673ad:	62 62 7d 48 18 15 e9 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff60dfe9]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a673b4:	df 60 ff 
  a673b7:	62 12 5d 48 b8 d2    	vfmadd231ps zmm10,zmm4,zmm26
  a673bd:	62 91 5c 48 59 e1    	vmulps zmm4,zmm4,zmm25
  a673c3:	62 f2 2d 40 bc e0    	vfnmadd231ps zmm4,zmm26,zmm0
  a673c9:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a673cf:	62 b1 0c 48 58 f7    	vaddps zmm6,zmm14,zmm23
  a673d5:	62 b2 45 48 a8 c6    	vfmadd213ps zmm0,zmm7,zmm22
  a673db:	62 e2 1d 48 bc f7    	vfnmadd231ps zmm22,zmm12,zmm7
  a673e1:	62 b1 7c 40 58 fb    	vaddps zmm7,zmm16,zmm19
  a673e7:	62 d2 45 40 bc c4    	vfnmadd231ps zmm0,zmm23,zmm12
  a673ed:	62 a2 6d 48 b8 f7    	vfmadd231ps zmm22,zmm2,zmm23
  a673f3:	62 11 74 48 59 f1    	vmulps zmm14,zmm1,zmm25
  a673f9:	62 12 55 48 b8 f2    	vfmadd231ps zmm14,zmm5,zmm26
  a673ff:	62 91 54 48 59 e9    	vmulps zmm5,zmm5,zmm25
  a67405:	62 f2 2d 40 bc e9    	vfnmadd231ps zmm5,zmm26,zmm1
  a6740b:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a67411:	62 b2 7d 40 a8 cb    	vfmadd213ps zmm1,zmm16,zmm19
  a67417:	62 f1 6c 40 58 ff    	vaddps zmm7,zmm18,zmm7
  a6741d:	62 a2 1d 48 bc d8    	vfnmadd231ps zmm19,zmm12,zmm16
  a67423:	62 c1 54 40 58 c0    	vaddps zmm16,zmm21,zmm8
  a67429:	62 d2 6d 40 bc cc    	vfnmadd231ps zmm1,zmm18,zmm12
  a6742f:	62 a2 6d 48 b8 da    	vfmadd231ps zmm19,zmm2,zmm18
  a67435:	62 81 14 48 59 d1    	vmulps zmm18,zmm13,zmm25
  a6743b:	62 82 25 48 b8 d2    	vfmadd231ps zmm18,zmm11,zmm26
  a67441:	62 11 24 48 59 d9    	vmulps zmm11,zmm11,zmm25
  a67447:	62 52 2d 40 bc dd    	vfnmadd231ps zmm11,zmm26,zmm13
  a6744d:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a67453:	62 32 3d 48 a8 ed    	vfmadd213ps zmm13,zmm8,zmm21
  a67459:	62 c2 1d 48 bc e8    	vfnmadd231ps zmm21,zmm12,zmm8
  a6745f:	62 31 7c 40 58 c1    	vaddps zmm8,zmm16,zmm17
  a67465:	62 52 75 40 bc ec    	vfnmadd231ps zmm13,zmm17,zmm12
  a6746b:	62 a2 6d 48 b8 e9    	vfmadd231ps zmm21,zmm2,zmm17
  a67471:	62 81 34 48 59 c1    	vmulps zmm16,zmm9,zmm25
  a67477:	62 82 3d 40 b8 c2    	vfmadd231ps zmm16,zmm24,zmm26
  a6747d:	62 81 3c 40 59 c9    	vmulps zmm17,zmm24,zmm25
  a67483:	62 c2 2d 40 bc c9    	vfnmadd231ps zmm17,zmm26,zmm9
  a67489:	62 71 04 48 58 cc    	vaddps zmm9,zmm15,zmm4
  a6748f:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a67495:	62 71 4c 40 58 fd    	vaddps zmm15,zmm22,zmm5
  a6749b:	62 f1 4c 40 5c ed    	vsubps zmm5,zmm22,zmm5
  a674a1:	62 c1 64 40 5c f3    	vsubps zmm22,zmm19,zmm11
  a674a7:	62 31 24 48 58 db    	vaddps zmm11,zmm11,zmm19
  a674ad:	62 a1 54 40 5c d9    	vsubps zmm19,zmm21,zmm17
  a674b3:	62 a1 54 40 58 c9    	vaddps zmm17,zmm21,zmm17
  a674b9:	62 c1 5c 40 58 ea    	vaddps zmm21,zmm20,zmm10
  a674bf:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a674c5:	62 c1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm14
  a674cb:	62 d1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm14
  a674d1:	62 31 74 48 5c f2    	vsubps zmm14,zmm1,zmm18
  a674d7:	62 f1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm1
  a674dd:	62 a1 14 48 5c d0    	vsubps zmm18,zmm13,zmm16
  a674e3:	62 31 14 48 58 e8    	vaddps zmm13,zmm13,zmm16
  a674e9:	62 a1 54 40 5c c4    	vsubps zmm16,zmm21,zmm20
  a674ef:	62 a1 54 40 58 e4    	vaddps zmm20,zmm21,zmm20
  a674f5:	62 a1 0c 48 5c ea    	vsubps zmm21,zmm14,zmm18
  a674fb:	62 31 0c 48 58 f2    	vaddps zmm14,zmm14,zmm18
  a67501:	62 c1 34 48 58 d7    	vaddps zmm18,zmm9,zmm15
  a67507:	62 51 34 48 5c cf    	vsubps zmm9,zmm9,zmm15
  a6750d:	62 31 4c 40 58 fb    	vaddps zmm15,zmm22,zmm19
  a67513:	62 a1 4c 40 5c db    	vsubps zmm19,zmm22,zmm19
  a67519:	62 e1 5c 48 5c f5    	vsubps zmm22,zmm4,zmm5
  a6751f:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a67525:	62 f1 64 48 5c ee    	vsubps zmm5,zmm3,zmm6
  a6752b:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a67531:	62 b1 24 48 5c f1    	vsubps zmm6,zmm11,zmm17
  a67537:	62 31 24 48 58 d9    	vaddps zmm11,zmm11,zmm17
  a6753d:	62 c1 44 48 5c c8    	vsubps zmm17,zmm7,zmm8
  a67543:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a67549:	62 71 2c 48 58 c0    	vaddps zmm8,zmm10,zmm0
  a6754f:	62 f1 2c 48 5c c0    	vsubps zmm0,zmm10,zmm0
  a67555:	62 f1 7c 48 28 15 21 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff62cc21]        # 94180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21630>
  a6755c:	cc 62 ff 
  a6755f:	62 f2 6d 48 7f df    	vpermt2ps zmm3,zmm2,zmm7
  a67565:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a6756c:	62 d1 74 48 58 dd    	vaddps zmm3,zmm1,zmm13
  a67572:	62 d1 74 48 5c cd    	vsubps zmm1,zmm1,zmm13
  a67578:	62 a2 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm21
  a6757e:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm16
  a67585:	01 
  a67586:	62 c2 6d 48 7f d7    	vpermt2ps zmm18,zmm2,zmm15
  a6758c:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm18
  a67593:	02 
  a67594:	62 e2 6d 48 7f f6    	vpermt2ps zmm22,zmm2,zmm6
  a6759a:	62 e1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm22
  a675a1:	03 
  a675a2:	62 72 6d 48 7f c3    	vpermt2ps zmm8,zmm2,zmm3
  a675a8:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm8
  a675af:	04 
  a675b0:	62 b2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm17
  a675b6:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm5
  a675bd:	05 
  a675be:	62 c2 6d 48 7f e6    	vpermt2ps zmm20,zmm2,zmm14
  a675c4:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm20
  a675cb:	06 
  a675cc:	62 32 6d 48 7f cb    	vpermt2ps zmm9,zmm2,zmm19
  a675d2:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm9
  a675d9:	07 
  a675da:	62 d2 6d 48 7f e3    	vpermt2ps zmm4,zmm2,zmm11
  a675e0:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm4
  a675e7:	08 
  a675e8:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a675ee:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm0
  a675f5:	09 
  a675f6:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a675fd:	48 39 d0             	cmp    rax,rdx
  a67600:	0f 85 6a f5 ff ff    	jne    a66b70 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a67606:	48 89 ec             	mov    rsp,rbp
  a67609:	5d                   	pop    rbp
  a6760a:	c5 f8 77             	vzeroupper
  a6760d:	c3                   	ret
