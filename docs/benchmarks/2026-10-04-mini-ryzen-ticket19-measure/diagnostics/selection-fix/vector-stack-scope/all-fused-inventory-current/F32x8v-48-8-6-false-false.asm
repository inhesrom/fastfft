
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b13a40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b13a40:	c5 7c 10 07          	vmovups ymm8,YMMWORD PTR [rdi]
  b13a44:	c5 78 10 4f 20       	vmovups xmm9,XMMWORD PTR [rdi+0x20]
  b13a49:	c4 c1 3c c6 c1 dd    	vshufps ymm0,ymm8,ymm9,0xdd
  b13a4f:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  b13a55:	c5 7c 10 97 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0xc0]
  b13a5c:	00 
  b13a5d:	c5 78 10 9f e0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xe0]
  b13a64:	00 
  b13a65:	c4 c1 2c c6 c3 dd    	vshufps ymm0,ymm10,ymm11,0xdd
  b13a6b:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  b13a71:	c5 e4 5c c6          	vsubps ymm0,ymm3,ymm6
  b13a75:	c5 7c 10 a7 20 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x120]
  b13a7c:	00 
  b13a7d:	c5 78 10 af 40 01 00 	vmovups xmm13,XMMWORD PTR [rdi+0x140]
  b13a84:	00 
  b13a85:	c4 c1 1c c6 cd 88    	vshufps ymm1,ymm12,ymm13,0x88
  b13a8b:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  b13a91:	c5 7c 10 77 60       	vmovups ymm14,YMMWORD PTR [rdi+0x60]
  b13a96:	c5 78 10 bf 80 00 00 	vmovups xmm15,XMMWORD PTR [rdi+0x80]
  b13a9d:	00 
  b13a9e:	c4 c1 0c c6 cf 88    	vshufps ymm1,ymm14,ymm15,0x88
  b13aa4:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  b13aaa:	c5 dc 5c ef          	vsubps ymm5,ymm4,ymm7
  b13aae:	c5 fc 5c cd          	vsubps ymm1,ymm0,ymm5
  b13ab2:	c5 fc 10 97 90 00 00 	vmovups ymm2,YMMWORD PTR [rdi+0x90]
  b13ab9:	00 
  b13aba:	62 e1 7c 08 10 47 0b 	vmovups xmm16,XMMWORD PTR [rdi+0xb0]
  b13ac1:	62 a1 6c 28 c6 c8 dd 	vshufps ymm17,ymm2,ymm16,0xdd
  b13ac8:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  b13acf:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  b13ad6:	01 00 00 
  b13ad9:	62 e1 7c 08 10 5f 17 	vmovups xmm19,XMMWORD PTR [rdi+0x170]
  b13ae0:	62 a1 6c 20 c6 e3 dd 	vshufps ymm20,ymm18,ymm19,0xdd
  b13ae7:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b13aee:	62 a1 74 20 5c ec    	vsubps ymm21,ymm17,ymm20
  b13af4:	62 b1 6c 28 c6 d0 88 	vshufps ymm2,ymm2,ymm16,0x88
  b13afb:	62 e3 fd 28 01 c2 d8 	vpermpd ymm16,ymm2,0xd8
  b13b02:	62 b1 6c 20 c6 d3 88 	vshufps ymm2,ymm18,ymm19,0x88
  b13b09:	62 e3 fd 28 01 d2 d8 	vpermpd ymm18,ymm2,0xd8
  b13b10:	62 a1 7c 20 5c da    	vsubps ymm19,ymm16,ymm18
  b13b16:	62 b1 54 20 5c d3    	vsubps ymm2,ymm21,ymm19
  b13b1c:	62 e2 7d 28 18 35 76 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff561876]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b13b23:	18 56 ff 
  b13b26:	62 a1 6c 28 59 fe    	vmulps ymm23,ymm2,ymm22
  b13b2c:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  b13b31:	62 61 7c 08 10 47 05 	vmovups xmm24,XMMWORD PTR [rdi+0x50]
  b13b38:	62 01 6c 28 c6 c8 88 	vshufps ymm25,ymm2,ymm24,0x88
  b13b3f:	62 03 fd 28 01 c9 d8 	vpermpd ymm25,ymm25,0xd8
  b13b46:	62 61 7c 28 10 97 f0 	vmovups ymm26,YMMWORD PTR [rdi+0xf0]
  b13b4d:	00 00 00 
  b13b50:	62 61 7c 08 10 5f 11 	vmovups xmm27,XMMWORD PTR [rdi+0x110]
  b13b57:	62 01 2c 20 c6 e3 88 	vshufps ymm28,ymm26,ymm27,0x88
  b13b5e:	62 03 fd 28 01 e4 d8 	vpermpd ymm28,ymm28,0xd8
  b13b65:	62 01 34 20 5c ec    	vsubps ymm29,ymm25,ymm28
  b13b6b:	62 91 6c 28 c6 d0 dd 	vshufps ymm2,ymm2,ymm24,0xdd
  b13b72:	62 63 fd 28 01 c2 d8 	vpermpd ymm24,ymm2,0xd8
  b13b79:	62 91 2c 20 c6 d3 dd 	vshufps ymm2,ymm26,ymm27,0xdd
  b13b80:	62 63 fd 28 01 d2 d8 	vpermpd ymm26,ymm2,0xd8
  b13b87:	62 01 3c 20 5c da    	vsubps ymm27,ymm24,ymm26
  b13b8d:	62 91 14 20 58 d3    	vaddps ymm2,ymm29,ymm27
  b13b93:	62 21 6c 28 59 f6    	vmulps ymm30,ymm2,ymm22
  b13b99:	62 01 44 20 5c fe    	vsubps ymm31,ymm23,ymm30
  b13b9f:	62 91 74 28 5c d7    	vsubps ymm2,ymm1,ymm31
  b13ba5:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  b13bab:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b13bb1:	c4 41 2c c6 cb 88    	vshufps ymm9,ymm10,ymm11,0x88
  b13bb7:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b13bbd:	c4 41 3c 5c d1       	vsubps ymm10,ymm8,ymm9
  b13bc2:	c4 41 0c c6 df dd    	vshufps ymm11,ymm14,ymm15,0xdd
  b13bc8:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b13bce:	c4 41 1c c6 e5 dd    	vshufps ymm12,ymm12,ymm13,0xdd
  b13bd4:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b13bda:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  b13bdf:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  b13be4:	62 11 24 20 5c fd    	vsubps ymm15,ymm27,ymm29
  b13bea:	62 31 04 28 59 fe    	vmulps ymm15,ymm15,ymm22
  b13bf0:	62 a1 64 20 58 dd    	vaddps ymm19,ymm19,ymm21
  b13bf6:	62 a1 64 20 59 de    	vmulps ymm19,ymm19,ymm22
  b13bfc:	62 a1 04 28 58 eb    	vaddps ymm21,ymm15,ymm19
  b13c02:	62 a1 0c 28 5c f5    	vsubps ymm22,ymm14,ymm21
  b13c08:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  b13c0c:	c4 41 24 58 dc       	vaddps ymm11,ymm11,ymm12
  b13c11:	c4 41 64 5c e3       	vsubps ymm12,ymm3,ymm11
  b13c16:	62 a1 7c 20 58 c2    	vaddps ymm16,ymm16,ymm18
  b13c1c:	62 81 34 20 58 d4    	vaddps ymm18,ymm25,ymm28
  b13c22:	62 21 7c 20 5c ca    	vsubps ymm25,ymm16,ymm18
  b13c28:	62 91 1c 28 5c f1    	vsubps ymm6,ymm12,ymm25
  b13c2e:	c4 41 3c 58 c1       	vaddps ymm8,ymm8,ymm9
  b13c33:	c5 c4 58 e4          	vaddps ymm4,ymm7,ymm4
  b13c37:	c5 bc 5c fc          	vsubps ymm7,ymm8,ymm4
  b13c3b:	62 11 3c 20 58 ca    	vaddps ymm9,ymm24,ymm26
  b13c41:	62 a1 74 20 58 cc    	vaddps ymm17,ymm17,ymm20
  b13c47:	62 a1 34 28 5c e1    	vsubps ymm20,ymm9,ymm17
  b13c4d:	62 21 44 28 5c c4    	vsubps ymm24,ymm7,ymm20
  b13c53:	c5 d4 58 c0          	vaddps ymm0,ymm5,ymm0
  b13c57:	62 b1 04 28 5c eb    	vsubps ymm5,ymm15,ymm19
  b13c5d:	c5 7c 5c fd          	vsubps ymm15,ymm0,ymm5
  b13c61:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  b13c66:	62 31 0c 20 58 ef    	vaddps ymm13,ymm30,ymm23
  b13c6c:	62 c1 2c 28 5c dd    	vsubps ymm19,ymm10,ymm13
  b13c72:	c5 a4 58 db          	vaddps ymm3,ymm11,ymm3
  b13c76:	62 31 34 28 58 c9    	vaddps ymm9,ymm9,ymm17
  b13c7c:	c4 41 64 5c d9       	vsubps ymm11,ymm3,ymm9
  b13c81:	c5 bc 58 e4          	vaddps ymm4,ymm8,ymm4
  b13c85:	62 31 6c 20 58 c0    	vaddps ymm8,ymm18,ymm16
  b13c8b:	62 c1 5c 28 5c c0    	vsubps ymm16,ymm4,ymm8
  b13c91:	62 81 74 28 58 cf    	vaddps ymm17,ymm1,ymm31
  b13c97:	62 b1 0c 28 58 cd    	vaddps ymm1,ymm14,ymm21
  b13c9d:	62 51 34 20 58 e4    	vaddps ymm12,ymm25,ymm12
  b13ca3:	62 b1 44 28 58 fc    	vaddps ymm7,ymm7,ymm20
  b13ca9:	c5 fc 58 ed          	vaddps ymm5,ymm0,ymm5
  b13cad:	c4 c1 2c 58 c5       	vaddps ymm0,ymm10,ymm13
  b13cb2:	c5 34 58 cb          	vaddps ymm9,ymm9,ymm3
  b13cb6:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  b13cba:	62 b3 65 28 18 e0 01 	vinsertf32x4 ymm4,ymm3,xmm16,0x1
  b13cc1:	62 b3 e5 28 23 d8 03 	vshuff64x2 ymm3,ymm3,ymm16,0x3
  b13cc8:	62 33 7d 28 18 c3 01 	vinsertf32x4 ymm8,ymm0,xmm19,0x1
  b13ccf:	62 b3 fd 28 23 c3 03 	vshuff64x2 ymm0,ymm0,ymm19,0x3
  b13cd6:	62 13 45 28 18 d0 01 	vinsertf32x4 ymm10,ymm7,xmm24,0x1
  b13cdd:	62 93 c5 28 23 f8 03 	vshuff64x2 ymm7,ymm7,ymm24,0x3
  b13ce4:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  b13ce8:	62 b3 75 28 18 de 01 	vinsertf32x4 ymm3,ymm1,xmm22,0x1
  b13cef:	62 b3 f5 28 23 ce 03 	vshuff64x2 ymm1,ymm1,ymm22,0x3
  b13cf6:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  b13cfa:	c4 c1 5d 15 ca       	vunpckhpd ymm1,ymm4,ymm10
  b13cff:	c4 c1 5d 14 e2       	vunpcklpd ymm4,ymm4,ymm10
  b13d04:	c5 3d 15 d3          	vunpckhpd ymm10,ymm8,ymm3
  b13d08:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  b13d0c:	c5 dc c6 c3 88       	vshufps ymm0,ymm4,ymm3,0x88
  b13d11:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b13d16:	c5 dc c6 db dd       	vshufps ymm3,ymm4,ymm3,0xdd
  b13d1b:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b13d20:	c4 c1 74 c6 e2 88    	vshufps ymm4,ymm1,ymm10,0x88
  b13d26:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  b13d2b:	c4 c1 74 c6 ca dd    	vshufps ymm1,ymm1,ymm10,0xdd
  b13d31:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b13d36:	c4 c1 44 c6 e5 88    	vshufps ymm4,ymm7,ymm13,0x88
  b13d3c:	c5 5c c6 d4 d8       	vshufps ymm10,ymm4,ymm4,0xd8
  b13d41:	c4 c1 44 c6 e5 dd    	vshufps ymm4,ymm7,ymm13,0xdd
  b13d47:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b13d4c:	c4 c3 35 18 fb 01    	vinsertf128 ymm7,ymm9,xmm11,0x1
  b13d52:	c4 43 35 06 cb 31    	vperm2f128 ymm9,ymm9,ymm11,0x31
  b13d58:	c4 43 55 18 df 01    	vinsertf128 ymm11,ymm5,xmm15,0x1
  b13d5e:	c4 c3 55 06 ef 31    	vperm2f128 ymm5,ymm5,ymm15,0x31
  b13d64:	c4 63 1d 18 ee 01    	vinsertf128 ymm13,ymm12,xmm6,0x1
  b13d6a:	c4 e3 1d 06 f6 31    	vperm2f128 ymm6,ymm12,ymm6,0x31
  b13d70:	c5 b5 14 f6          	vunpcklpd ymm6,ymm9,ymm6
  b13d74:	62 73 75 20 18 ca 01 	vinsertf32x4 ymm9,ymm17,xmm2,0x1
  b13d7b:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  b13d82:	c5 55 14 e2          	vunpcklpd ymm12,ymm5,ymm2
  b13d86:	c4 c1 45 15 ed       	vunpckhpd ymm5,ymm7,ymm13
  b13d8b:	c4 c1 45 14 fd       	vunpcklpd ymm7,ymm7,ymm13
  b13d90:	c4 41 25 15 e9       	vunpckhpd ymm13,ymm11,ymm9
  b13d95:	c4 41 25 14 c9       	vunpcklpd ymm9,ymm11,ymm9
  b13d9a:	c4 c1 44 c6 d1 88    	vshufps ymm2,ymm7,ymm9,0x88
  b13da0:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b13da5:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b13dab:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b13db0:	c4 41 54 c6 cd 88    	vshufps ymm9,ymm5,ymm13,0x88
  b13db6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b13dbc:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b13dc2:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b13dc7:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  b13dcd:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b13dd3:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  b13dd9:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b13dde:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b13de3:	c5 7c 10 6a 60       	vmovups ymm13,YMMWORD PTR [rdx+0x60]
  b13de8:	c5 7c 10 b2 80 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0x80]
  b13def:	00 
  b13df0:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b13df7:	00 
  b13df8:	62 c1 3c 28 59 c6    	vmulps ymm16,ymm8,ymm14
  b13dfe:	62 c2 35 28 bc c7    	vfnmadd231ps ymm16,ymm9,ymm15
  b13e04:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  b13e0b:	62 e1 7c 28 10 52 08 	vmovups ymm18,YMMWORD PTR [rdx+0x100]
  b13e12:	62 a1 2c 28 59 da    	vmulps ymm19,ymm10,ymm18
  b13e18:	62 a2 25 28 bc d9    	vfnmadd231ps ymm19,ymm11,ymm17
  b13e1e:	62 e2 7d 28 18 25 ac 	vbroadcastss ymm20,DWORD PTR [rip+0xffffffffff5614ac]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b13e25:	14 56 ff 
  b13e28:	62 a1 7c 20 5c eb    	vsubps ymm21,ymm16,ymm19
  b13e2e:	62 a1 54 20 59 ec    	vmulps ymm21,ymm21,ymm20
  b13e34:	c4 41 34 59 ce       	vmulps ymm9,ymm9,ymm14
  b13e39:	c4 42 3d b8 cf       	vfmadd231ps ymm9,ymm8,ymm15
  b13e3e:	62 31 24 28 59 c2    	vmulps ymm8,ymm11,ymm18
  b13e44:	62 32 2d 28 b8 c1    	vfmadd231ps ymm8,ymm10,ymm17
  b13e4a:	c4 62 7d 18 15 0d 16 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff56160d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b13e51:	56 ff 
  b13e53:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  b13e58:	c4 41 7c 28 f2       	vmovaps ymm14,ymm10
  b13e5d:	c4 62 25 ac f2       	vfnmadd213ps ymm14,ymm11,ymm2
  b13e62:	62 51 54 20 58 fe    	vaddps ymm15,ymm21,ymm14
  b13e68:	62 e1 7c 28 10 4a 0b 	vmovups ymm17,YMMWORD PTR [rdx+0x160]
  b13e6f:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  b13e76:	62 a1 4c 28 59 f2    	vmulps ymm22,ymm6,ymm18
  b13e7c:	62 a2 5d 28 b8 f1    	vfmadd231ps ymm22,ymm4,ymm17
  b13e82:	62 c1 44 28 59 fc    	vmulps ymm23,ymm7,ymm12
  b13e88:	62 c2 65 28 b8 fd    	vfmadd231ps ymm23,ymm3,ymm13
  b13e8e:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  b13e94:	62 61 7c 28 10 4a 07 	vmovups ymm25,YMMWORD PTR [rdx+0xe0]
  b13e9b:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b13ea2:	62 01 54 28 59 da    	vmulps ymm27,ymm5,ymm26
  b13ea8:	62 02 75 28 b8 d9    	vfmadd231ps ymm27,ymm1,ymm25
  b13eae:	62 41 7c 28 28 e2    	vmovaps ymm28,ymm10
  b13eb4:	62 02 3d 20 ac e3    	vfnmadd213ps ymm28,ymm24,ymm27
  b13eba:	62 b1 5c 28 59 e2    	vmulps ymm4,ymm4,ymm18
  b13ec0:	62 b2 4d 28 bc e1    	vfnmadd231ps ymm4,ymm6,ymm17
  b13ec6:	c5 9c 59 f3          	vmulps ymm6,ymm12,ymm3
  b13eca:	c4 c2 45 bc f5       	vfnmadd231ps ymm6,ymm7,ymm13
  b13ecf:	c5 dc 5c de          	vsubps ymm3,ymm4,ymm6
  b13ed3:	62 b1 64 28 59 fc    	vmulps ymm7,ymm3,ymm20
  b13ed9:	62 71 1c 20 58 e7    	vaddps ymm12,ymm28,ymm7
  b13edf:	c4 c1 04 5c dc       	vsubps ymm3,ymm15,ymm12
  b13ee4:	62 31 7c 20 58 eb    	vaddps ymm13,ymm16,ymm19
  b13eea:	62 c1 7c 28 28 c2    	vmovaps ymm16,ymm10
  b13ef0:	62 e2 15 28 ac c0    	vfnmadd213ps ymm16,ymm13,ymm0
  b13ef6:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  b13efb:	62 31 3c 28 59 c4    	vmulps ymm8,ymm8,ymm20
  b13f01:	62 51 7c 20 5c c8    	vsubps ymm9,ymm16,ymm8
  b13f07:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b13f0b:	62 91 74 28 59 ca    	vmulps ymm1,ymm1,ymm26
  b13f11:	62 92 55 28 bc c9    	vfnmadd231ps ymm1,ymm5,ymm25
  b13f17:	c4 62 5d ac d1       	vfnmadd213ps ymm10,ymm4,ymm1
  b13f1c:	62 b1 4c 20 5c ef    	vsubps ymm5,ymm22,ymm23
  b13f22:	62 b1 54 28 59 ec    	vmulps ymm5,ymm5,ymm20
  b13f28:	c5 ac 5c f5          	vsubps ymm6,ymm10,ymm5
  b13f2c:	62 e1 34 28 5c ce    	vsubps ymm17,ymm9,ymm6
  b13f32:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  b13f38:	62 f1 1c 20 5c ff    	vsubps ymm7,ymm28,ymm7
  b13f3e:	62 e1 0c 28 58 d7    	vaddps ymm18,ymm14,ymm7
  b13f44:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b13f4a:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  b13f4e:	c5 3c 58 d5          	vaddps ymm10,ymm8,ymm5
  b13f52:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  b13f56:	62 11 24 20 58 d8    	vaddps ymm11,ymm27,ymm24
  b13f5c:	62 c1 6c 28 5c c3    	vsubps ymm16,ymm2,ymm11
  b13f62:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  b13f66:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b13f6a:	c5 fc 5c e1          	vsubps ymm4,ymm0,ymm1
  b13f6e:	c4 41 04 58 e4       	vaddps ymm12,ymm15,ymm12
  b13f73:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  b13f77:	c5 8c 5c ff          	vsubps ymm7,ymm14,ymm7
  b13f7b:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  b13f7f:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  b13f83:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  b13f87:	c5 fc 28 0d 11 19 56 	vmovaps ymm1,YMMWORD PTR [rip+0xffffffffff561911]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b13f8e:	ff 
  b13f8f:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  b13f93:	62 72 75 28 7f c2    	vpermt2ps ymm8,ymm1,ymm2
  b13f99:	c5 7c 28 0d 3f 32 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff56323f]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b13fa0:	ff 
  b13fa1:	62 f2 35 28 7f c2    	vpermt2ps ymm0,ymm9,ymm2
  b13fa7:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  b13fab:	c5 7c 11 46 20       	vmovups YMMWORD PTR [rsi+0x20],ymm8
  b13fb0:	c5 fc 28 c5          	vmovaps ymm0,ymm5
  b13fb4:	62 f2 75 28 7f c7    	vpermt2ps ymm0,ymm1,ymm7
  b13fba:	62 f2 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm7
  b13fc0:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  b13fc5:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  b13fca:	c5 fc 28 c6          	vmovaps ymm0,ymm6
  b13fce:	62 d2 75 28 7f c4    	vpermt2ps ymm0,ymm1,ymm12
  b13fd4:	62 d2 35 28 7f f4    	vpermt2ps ymm6,ymm9,ymm12
  b13fda:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  b13fe1:	00 
  b13fe2:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  b13fe9:	00 
  b13fea:	c5 fc 28 c4          	vmovaps ymm0,ymm4
  b13fee:	62 b2 75 28 7f c0    	vpermt2ps ymm0,ymm1,ymm16
  b13ff4:	62 b2 35 28 7f e0    	vpermt2ps ymm4,ymm9,ymm16
  b13ffa:	c5 fc 11 a6 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm4
  b14001:	00 
  b14002:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b14009:	00 
  b1400a:	c5 7c 29 d0          	vmovaps ymm0,ymm10
  b1400e:	62 b2 75 28 7f c2    	vpermt2ps ymm0,ymm1,ymm18
  b14014:	62 32 35 28 7f d2    	vpermt2ps ymm10,ymm9,ymm18
  b1401a:	c5 7c 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm10
  b14021:	00 
  b14022:	c5 fc 11 86 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm0
  b14029:	00 
  b1402a:	62 f2 75 20 77 cb    	vpermi2ps ymm1,ymm17,ymm3
  b14030:	62 e2 35 28 7f cb    	vpermt2ps ymm17,ymm9,ymm3
  b14036:	62 e1 7c 28 11 4e 0a 	vmovups YMMWORD PTR [rsi+0x140],ymm17
  b1403d:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  b14044:	00 
  b14045:	c5 f8 77             	vzeroupper
  b14048:	c3                   	ret
