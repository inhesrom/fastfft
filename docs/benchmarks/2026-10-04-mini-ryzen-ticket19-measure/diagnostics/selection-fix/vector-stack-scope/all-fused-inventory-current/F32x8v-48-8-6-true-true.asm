
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab2bc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab2bc0:	48 c1 e2 07          	shl    rdx,0x7
  ab2bc4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ab2bc8:	31 d2                	xor    edx,edx
  ab2bca:	c4 e2 7d 18 05 c9 27 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5c27c9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ab2bd1:	5c ff 
  ab2bd3:	c4 e2 7d 18 0d f8 26 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5c26f8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab2bda:	5c ff 
  ab2bdc:	c4 e2 7d 18 15 7b 28 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5c287b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab2be3:	5c ff 
  ab2be5:	c5 fc 28 1d b3 2c 5c 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5c2cb3]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ab2bec:	ff 
  ab2bed:	c5 fc 28 25 eb 45 5c 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5c45eb]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab2bf4:	ff 
  ab2bf5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  ab2bfc:	00 00 00 00 
  ab2c00:	c5 7c 10 2c 17       	vmovups ymm13,YMMWORD PTR [rdi+rdx*1]
  ab2c05:	c5 78 10 7c 17 20    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x20]
  ab2c0b:	c4 c1 14 c6 ef 88    	vshufps ymm5,ymm13,ymm15,0x88
  ab2c11:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ab2c17:	c5 7c 10 b4 17 c0 00 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0xc0]
  ab2c1e:	00 00 
  ab2c20:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xe0]
  ab2c27:	0e 
  ab2c28:	62 b1 0c 28 c6 f0 88 	vshufps ymm6,ymm14,ymm16,0x88
  ab2c2f:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ab2c35:	c5 7c 10 9c 17 20 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x120]
  ab2c3c:	00 00 
  ab2c3e:	c5 78 10 a4 17 40 01 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x140]
  ab2c45:	00 00 
  ab2c47:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  ab2c4d:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x60]
  ab2c54:	03 
  ab2c55:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x80]
  ab2c5c:	08 
  ab2c5d:	62 31 74 20 c6 ca dd 	vshufps ymm9,ymm17,ymm18,0xdd
  ab2c64:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x90]
  ab2c6b:	90 00 00 00 
  ab2c6f:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0xb0]
  ab2c76:	0b 
  ab2c77:	62 31 64 20 c6 c4 88 	vshufps ymm8,ymm19,ymm20,0x88
  ab2c7e:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ab2c84:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x150]
  ab2c8b:	50 01 00 00 
  ab2c8f:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x170]
  ab2c96:	17 
  ab2c97:	62 31 54 20 c6 d6 88 	vshufps ymm10,ymm21,ymm22,0x88
  ab2c9e:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  ab2ca4:	62 a1 64 20 c6 dc dd 	vshufps ymm19,ymm19,ymm20,0xdd
  ab2cab:	62 a1 54 20 c6 e6 dd 	vshufps ymm20,ymm21,ymm22,0xdd
  ab2cb2:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x30]
  ab2cb9:	30 00 00 00 
  ab2cbd:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x50]
  ab2cc4:	05 
  ab2cc5:	62 a1 54 20 c6 fe dd 	vshufps ymm23,ymm21,ymm22,0xdd
  ab2ccc:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0xf0]
  ab2cd3:	f0 00 00 00 
  ab2cd7:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0x110]
  ab2cde:	11 
  ab2cdf:	62 a1 54 20 c6 ee 88 	vshufps ymm21,ymm21,ymm22,0x88
  ab2ce6:	62 81 3c 20 c6 f1 dd 	vshufps ymm22,ymm24,ymm25,0xdd
  ab2ced:	62 01 3c 20 c6 c1 88 	vshufps ymm24,ymm24,ymm25,0x88
  ab2cf4:	62 41 3c 28 5c ca    	vsubps ymm25,ymm8,ymm10
  ab2cfa:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  ab2d01:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  ab2d08:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  ab2d0e:	62 31 64 20 5c fc    	vsubps ymm15,ymm19,ymm20
  ab2d14:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  ab2d1b:	62 a3 fd 28 01 f6 d8 	vpermpd ymm22,ymm22,0xd8
  ab2d22:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  ab2d29:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  ab2d2f:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  ab2d36:	62 03 fd 28 01 c0 d8 	vpermpd ymm24,ymm24,0xd8
  ab2d3d:	62 a1 74 20 c6 ca 88 	vshufps ymm17,ymm17,ymm18,0x88
  ab2d44:	62 81 54 20 5c d0    	vsubps ymm18,ymm21,ymm24
  ab2d4a:	c4 41 24 c6 dc 88    	vshufps ymm11,ymm11,ymm12,0x88
  ab2d50:	62 31 7c 20 58 e2    	vaddps ymm12,ymm16,ymm18
  ab2d56:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  ab2d5c:	62 c1 34 20 5c d7    	vsubps ymm18,ymm25,ymm15
  ab2d62:	62 11 04 28 58 f9    	vaddps ymm15,ymm15,ymm25
  ab2d68:	62 61 54 28 5c ce    	vsubps ymm25,ymm5,ymm6
  ab2d6e:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  ab2d75:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  ab2d7b:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ab2d7f:	62 d1 74 20 5c f3    	vsubps ymm6,ymm17,ymm11
  ab2d85:	62 51 74 20 58 db    	vaddps ymm11,ymm17,ymm11
  ab2d8b:	62 a1 64 20 58 cc    	vaddps ymm17,ymm19,ymm20
  ab2d91:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ab2d97:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ab2d9d:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  ab2da3:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  ab2da9:	62 a1 44 20 58 de    	vaddps ymm19,ymm23,ymm22
  ab2daf:	62 c1 14 28 5c e6    	vsubps ymm20,ymm13,ymm14
  ab2db5:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  ab2dba:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  ab2dbf:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  ab2dc3:	62 11 54 20 58 c8    	vaddps ymm9,ymm21,ymm24
  ab2dc9:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  ab2dce:	62 51 34 20 5c d6    	vsubps ymm10,ymm25,ymm14
  ab2dd4:	62 e1 6c 20 59 d0    	vmulps ymm18,ymm18,ymm0
  ab2dda:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ab2dde:	62 e1 7c 20 59 c0    	vmulps ymm16,ymm16,ymm0
  ab2de4:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  ab2de8:	62 11 0c 28 58 f1    	vaddps ymm14,ymm14,ymm25
  ab2dee:	62 c1 7c 20 58 ef    	vaddps ymm21,ymm16,ymm15
  ab2df4:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  ab2dfa:	62 e1 5c 20 5c c6    	vsubps ymm16,ymm20,ymm6
  ab2e00:	62 f1 5c 20 58 f6    	vaddps ymm6,ymm20,ymm6
  ab2e06:	62 c1 6c 20 5c e4    	vsubps ymm20,ymm18,ymm12
  ab2e0c:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  ab2e12:	62 c1 54 28 5c d3    	vsubps ymm18,ymm5,ymm11
  ab2e18:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  ab2e1c:	c4 41 34 5c d8       	vsubps ymm11,ymm9,ymm8
  ab2e21:	c4 41 34 58 c0       	vaddps ymm8,ymm9,ymm8
  ab2e26:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  ab2e2a:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  ab2e2e:	62 31 74 20 5c eb    	vsubps ymm13,ymm17,ymm19
  ab2e34:	62 a1 64 20 58 c9    	vaddps ymm17,ymm19,ymm17
  ab2e3a:	62 a1 2c 28 5c dc    	vsubps ymm19,ymm10,ymm20
  ab2e40:	62 a1 2c 28 58 e4    	vaddps ymm20,ymm10,ymm20
  ab2e46:	62 31 7c 20 5c d5    	vsubps ymm10,ymm16,ymm21
  ab2e4c:	62 a1 7c 20 58 c5    	vaddps ymm16,ymm16,ymm21
  ab2e52:	62 c1 6c 20 5c ed    	vsubps ymm21,ymm18,ymm13
  ab2e58:	62 31 14 28 58 ea    	vaddps ymm13,ymm13,ymm18
  ab2e5e:	62 c1 34 28 5c d3    	vsubps ymm18,ymm9,ymm11
  ab2e64:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  ab2e69:	c4 41 0c 5c df       	vsubps ymm11,ymm14,ymm15
  ab2e6e:	c4 41 0c 58 f7       	vaddps ymm14,ymm14,ymm15
  ab2e73:	c4 41 4c 5c fc       	vsubps ymm15,ymm6,ymm12
  ab2e78:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  ab2e7c:	c4 41 54 5c e0       	vsubps ymm12,ymm5,ymm8
  ab2e81:	62 c1 54 28 58 f0    	vaddps ymm22,ymm5,ymm8
  ab2e87:	62 b1 44 28 5c e9    	vsubps ymm5,ymm7,ymm17
  ab2e8d:	62 b1 44 28 58 f9    	vaddps ymm7,ymm7,ymm17
  ab2e93:	c4 63 45 18 c5 01    	vinsertf128 ymm8,ymm7,xmm5,0x1
  ab2e99:	c4 e3 45 06 ed 31    	vperm2f128 ymm5,ymm7,ymm5,0x31
  ab2e9f:	c4 c3 4d 18 ff 01    	vinsertf128 ymm7,ymm6,xmm15,0x1
  ab2ea5:	c4 c3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm15,0x31
  ab2eab:	62 33 35 28 18 fa 01 	vinsertf32x4 ymm15,ymm9,xmm18,0x1
  ab2eb2:	62 33 b5 28 23 ca 03 	vshuff64x2 ymm9,ymm9,ymm18,0x3
  ab2eb9:	c4 41 55 14 c9       	vunpcklpd ymm9,ymm5,ymm9
  ab2ebe:	62 d3 7d 20 18 ea 01 	vinsertf32x4 ymm5,ymm16,xmm10,0x1
  ab2ec5:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  ab2ecc:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  ab2ed1:	c4 41 3d 15 d7       	vunpckhpd ymm10,ymm8,ymm15
  ab2ed6:	c4 41 3d 14 c7       	vunpcklpd ymm8,ymm8,ymm15
  ab2edb:	c5 45 15 fd          	vunpckhpd ymm15,ymm7,ymm5
  ab2edf:	c5 c5 14 fd          	vunpcklpd ymm7,ymm7,ymm5
  ab2ee3:	c5 bc c6 ef 88       	vshufps ymm5,ymm8,ymm7,0x88
  ab2ee8:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab2eed:	c5 bc c6 ff dd       	vshufps ymm7,ymm8,ymm7,0xdd
  ab2ef2:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  ab2ef7:	c4 c1 2c c6 ff 88    	vshufps ymm7,ymm10,ymm15,0x88
  ab2efd:	62 e1 44 28 c6 c7 d8 	vshufps ymm16,ymm7,ymm7,0xd8
  ab2f04:	c4 c1 2c c6 ff dd    	vshufps ymm7,ymm10,ymm15,0xdd
  ab2f0a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab2f0f:	c5 34 c6 d6 88       	vshufps ymm10,ymm9,ymm6,0x88
  ab2f14:	c4 41 2c c6 fa d8    	vshufps ymm15,ymm10,ymm10,0xd8
  ab2f1a:	c5 b4 c6 f6 dd       	vshufps ymm6,ymm9,ymm6,0xdd
  ab2f1f:	c5 4c c6 d6 d8       	vshufps ymm10,ymm6,ymm6,0xd8
  ab2f24:	62 d3 4d 20 18 f4 01 	vinsertf32x4 ymm6,ymm22,xmm12,0x1
  ab2f2b:	62 53 cd 20 23 cc 03 	vshuff64x2 ymm9,ymm22,ymm12,0x3
  ab2f32:	c4 43 0d 18 e3 01    	vinsertf128 ymm12,ymm14,xmm11,0x1
  ab2f38:	c4 43 0d 06 db 31    	vperm2f128 ymm11,ymm14,ymm11,0x31
  ab2f3e:	62 33 15 28 18 f5 01 	vinsertf32x4 ymm14,ymm13,xmm21,0x1
  ab2f45:	62 33 95 28 23 ed 03 	vshuff64x2 ymm13,ymm13,ymm21,0x3
  ab2f4c:	c4 41 35 14 ed       	vunpcklpd ymm13,ymm9,ymm13
  ab2f51:	62 33 5d 20 18 cb 01 	vinsertf32x4 ymm9,ymm20,xmm19,0x1
  ab2f58:	62 a3 dd 20 23 cb 03 	vshuff64x2 ymm17,ymm20,ymm19,0x3
  ab2f5f:	62 31 a5 28 14 d9    	vunpcklpd ymm11,ymm11,ymm17
  ab2f65:	62 c1 cd 28 15 ce    	vunpckhpd ymm17,ymm6,ymm14
  ab2f6b:	c4 41 4d 14 f6       	vunpcklpd ymm14,ymm6,ymm14
  ab2f70:	62 c1 9d 28 15 d1    	vunpckhpd ymm18,ymm12,ymm9
  ab2f76:	c4 41 1d 14 c9       	vunpcklpd ymm9,ymm12,ymm9
  ab2f7b:	c4 c1 0c c6 f1 88    	vshufps ymm6,ymm14,ymm9,0x88
  ab2f81:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ab2f86:	c4 41 0c c6 c9 dd    	vshufps ymm9,ymm14,ymm9,0xdd
  ab2f8c:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  ab2f92:	62 31 74 20 c6 ca 88 	vshufps ymm9,ymm17,ymm18,0x88
  ab2f99:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  ab2f9f:	62 31 74 20 c6 ca dd 	vshufps ymm9,ymm17,ymm18,0xdd
  ab2fa6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab2fac:	62 c1 14 28 c6 cb 88 	vshufps ymm17,ymm13,ymm11,0x88
  ab2fb3:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  ab2fba:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  ab2fc0:	c4 41 24 c6 eb d8    	vshufps ymm13,ymm11,ymm11,0xd8
  ab2fc6:	62 e1 7c 28 10 51 02 	vmovups ymm18,YMMWORD PTR [rcx+0x40]
  ab2fcd:	62 e1 7c 28 10 59 03 	vmovups ymm19,YMMWORD PTR [rcx+0x60]
  ab2fd4:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  ab2fdb:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  ab2fe2:	62 31 7c 20 59 dc    	vmulps ymm11,ymm16,ymm20
  ab2fe8:	62 32 1d 28 bc dd    	vfnmadd231ps ymm11,ymm12,ymm21
  ab2fee:	62 31 1c 28 59 e4    	vmulps ymm12,ymm12,ymm20
  ab2ff4:	62 e1 7c 28 10 61 09 	vmovups ymm20,YMMWORD PTR [rcx+0x120]
  ab2ffb:	62 32 7d 20 b8 e5    	vfmadd231ps ymm12,ymm16,ymm21
  ab3001:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ab3008:	62 a1 04 28 59 e8    	vmulps ymm21,ymm15,ymm16
  ab300e:	62 a2 75 20 bc ec    	vfnmadd231ps ymm21,ymm17,ymm20
  ab3014:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  ab301a:	62 a2 05 28 b8 c4    	vfmadd231ps ymm16,ymm15,ymm20
  ab3020:	c5 7c 10 b9 60 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x160]
  ab3027:	00 
  ab3028:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  ab302f:	62 a1 14 28 59 e1    	vmulps ymm20,ymm13,ymm17
  ab3035:	62 c2 2d 28 b8 e7    	vfmadd231ps ymm20,ymm10,ymm15
  ab303b:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  ab3041:	62 a1 24 28 5c cd    	vsubps ymm17,ymm11,ymm21
  ab3047:	62 e1 74 20 59 c9    	vmulps ymm17,ymm17,ymm1
  ab304d:	c4 42 15 bc d7       	vfnmadd231ps ymm10,ymm13,ymm15
  ab3052:	62 31 1c 28 58 e8    	vaddps ymm13,ymm12,ymm16
  ab3058:	62 31 0c 28 59 fa    	vmulps ymm15,ymm14,ymm18
  ab305e:	62 32 3d 28 b8 fb    	vfmadd231ps ymm15,ymm8,ymm19
  ab3064:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  ab306a:	62 e1 7c 28 10 51 07 	vmovups ymm18,YMMWORD PTR [rcx+0xe0]
  ab3071:	62 32 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm19
  ab3077:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  ab307e:	00 
  ab307f:	62 c1 34 28 59 de    	vmulps ymm19,ymm9,ymm14
  ab3085:	62 a2 45 28 b8 da    	vfmadd231ps ymm19,ymm7,ymm18
  ab308b:	c5 8c 59 ff          	vmulps ymm7,ymm14,ymm7
  ab308f:	c5 7c 28 f2          	vmovaps ymm14,ymm2
  ab3093:	c4 62 15 ac f6       	vfnmadd213ps ymm14,ymm13,ymm6
  ab3098:	62 b2 35 28 bc fa    	vfnmadd231ps ymm7,ymm9,ymm18
  ab309e:	62 51 74 20 58 ce    	vaddps ymm9,ymm17,ymm14
  ab30a4:	62 c1 5c 20 58 d7    	vaddps ymm18,ymm20,ymm15
  ab30aa:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  ab30b0:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  ab30b6:	62 a2 6d 20 ac eb    	vfnmadd213ps ymm21,ymm18,ymm19
  ab30bc:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ab30c2:	62 c1 2c 28 5c c0    	vsubps ymm16,ymm10,ymm8
  ab30c8:	62 e1 7c 20 59 c1    	vmulps ymm16,ymm16,ymm1
  ab30ce:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  ab30d3:	62 31 54 20 58 d0    	vaddps ymm10,ymm21,ymm16
  ab30d9:	62 51 5c 20 5c ff    	vsubps ymm15,ymm20,ymm15
  ab30df:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  ab30e5:	62 e2 25 28 ac e5    	vfnmadd213ps ymm20,ymm11,ymm5
  ab30eb:	c5 1c 59 e1          	vmulps ymm12,ymm12,ymm1
  ab30ef:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  ab30f5:	62 c1 5c 20 5c cc    	vsubps ymm17,ymm20,ymm12
  ab30fb:	62 a1 54 20 5c c0    	vsubps ymm16,ymm21,ymm16
  ab3101:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  ab3107:	62 e2 3d 28 ac ef    	vfnmadd213ps ymm21,ymm8,ymm7
  ab310d:	c5 04 59 f9          	vmulps ymm15,ymm15,ymm1
  ab3111:	62 51 5c 20 58 e4    	vaddps ymm12,ymm20,ymm12
  ab3117:	62 c1 54 20 5c e7    	vsubps ymm20,ymm21,ymm15
  ab311d:	62 51 54 20 58 ff    	vaddps ymm15,ymm21,ymm15
  ab3123:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  ab3127:	62 31 64 20 58 ea    	vaddps ymm13,ymm19,ymm18
  ab312d:	c5 a4 58 ed          	vaddps ymm5,ymm11,ymm5
  ab3131:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  ab3135:	c4 41 34 5c c2       	vsubps ymm8,ymm9,ymm10
  ab313a:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ab313f:	62 31 74 20 5c d4    	vsubps ymm10,ymm17,ymm20
  ab3145:	62 31 74 20 58 dc    	vaddps ymm11,ymm17,ymm20
  ab314b:	62 a1 0c 28 58 c8    	vaddps ymm17,ymm14,ymm16
  ab3151:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  ab3157:	62 c1 1c 28 58 c7    	vaddps ymm16,ymm12,ymm15
  ab315d:	c4 41 1c 5c e7       	vsubps ymm12,ymm12,ymm15
  ab3162:	c4 41 4c 5c fd       	vsubps ymm15,ymm6,ymm13
  ab3167:	c5 94 58 f6          	vaddps ymm6,ymm13,ymm6
  ab316b:	c5 54 5c ef          	vsubps ymm13,ymm5,ymm7
  ab316f:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ab3173:	c5 fc 28 fe          	vmovaps ymm7,ymm6
  ab3177:	62 f2 65 28 7f fd    	vpermt2ps ymm7,ymm3,ymm5
  ab317d:	62 f2 5d 28 7f f5    	vpermt2ps ymm6,ymm4,ymm5
  ab3183:	c5 fc 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm6
  ab3188:	c5 fc 11 7c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  ab318e:	c5 7c 29 f5          	vmovaps ymm5,ymm14
  ab3192:	62 d2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm12
  ab3198:	62 52 5d 28 7f f4    	vpermt2ps ymm14,ymm4,ymm12
  ab319e:	c5 7c 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm14
  ab31a4:	c5 fc 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  ab31aa:	c5 7c 29 cd          	vmovaps ymm5,ymm9
  ab31ae:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  ab31b4:	62 52 5d 28 7f cb    	vpermt2ps ymm9,ymm4,ymm11
  ab31ba:	c5 7c 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm9
  ab31c1:	00 00 
  ab31c3:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  ab31ca:	00 00 
  ab31cc:	c5 7c 29 fd          	vmovaps ymm5,ymm15
  ab31d0:	62 d2 65 28 7f ed    	vpermt2ps ymm5,ymm3,ymm13
  ab31d6:	62 52 5d 28 7f fd    	vpermt2ps ymm15,ymm4,ymm13
  ab31dc:	c5 7c 11 bc 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm15
  ab31e3:	00 00 
  ab31e5:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  ab31ec:	00 00 
  ab31ee:	62 b1 7c 28 28 e9    	vmovaps ymm5,ymm17
  ab31f4:	62 b2 65 28 7f e8    	vpermt2ps ymm5,ymm3,ymm16
  ab31fa:	62 a2 5d 28 7f c8    	vpermt2ps ymm17,ymm4,ymm16
  ab3200:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm17
  ab3207:	08 
  ab3208:	c5 fc 11 ac 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm5
  ab320f:	00 00 
  ab3211:	c5 7c 29 c5          	vmovaps ymm5,ymm8
  ab3215:	62 d2 65 28 7f ea    	vpermt2ps ymm5,ymm3,ymm10
  ab321b:	62 52 5d 28 7f c2    	vpermt2ps ymm8,ymm4,ymm10
  ab3221:	c5 7c 11 84 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm8
  ab3228:	00 00 
  ab322a:	c5 fc 11 ac 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm5
  ab3231:	00 00 
  ab3233:	48 81 c2 80 01 00 00 	add    rdx,0x180
  ab323a:	48 39 d0             	cmp    rax,rdx
  ab323d:	0f 85 bd f9 ff ff    	jne    ab2c00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  ab3243:	c5 f8 77             	vzeroupper
  ab3246:	c3                   	ret
