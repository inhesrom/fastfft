
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad6b40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad6b40:	48 c1 e2 06          	shl    rdx,0x6
  ad6b44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad6b48:	31 d2                	xor    edx,edx
  ad6b4a:	62 e2 7d 28 18 35 80 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff59e780]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad6b51:	e7 59 ff 
  ad6b54:	62 e2 7d 28 18 3d 02 	vbroadcastss ymm23,DWORD PTR [rip+0xffffffffff59e902]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad6b5b:	e9 59 ff 
  ad6b5e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ad6b62:	c4 e2 7d 18 1d 31 e8 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff59e831]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad6b69:	59 ff 
  ad6b6b:	c5 fc 28 25 4d 17 5a 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5a174d]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ad6b72:	ff 
  ad6b73:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ad6b7a:	84 00 00 00 00 00 
  ad6b80:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  ad6b85:	c5 fc 10 74 17 20    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x20]
  ad6b8b:	c5 fc 10 7c 17 40    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x40]
  ad6b91:	c5 7c 10 44 17 60    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x60]
  ad6b97:	c4 41 44 c6 c8 dd    	vshufps ymm9,ymm7,ymm8,0xdd
  ad6b9d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ad6ba3:	c5 7c 10 94 17 80 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x80]
  ad6baa:	00 00 
  ad6bac:	c5 7c 10 9c 17 a0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xa0]
  ad6bb3:	00 00 
  ad6bb5:	c4 41 2c c6 e3 dd    	vshufps ymm12,ymm10,ymm11,0xdd
  ad6bbb:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ad6bc1:	c4 41 34 5c ec       	vsubps ymm13,ymm9,ymm12
  ad6bc6:	62 31 14 28 59 ee    	vmulps ymm13,ymm13,ymm22
  ad6bcc:	c4 c1 44 c6 f8 88    	vshufps ymm7,ymm7,ymm8,0x88
  ad6bd2:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ad6bd8:	c4 41 2c c6 c3 88    	vshufps ymm8,ymm10,ymm11,0x88
  ad6bde:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ad6be4:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  ad6be8:	c5 54 c6 de 88       	vshufps ymm11,ymm5,ymm6,0x88
  ad6bed:	c4 43 fd 01 f3 d8    	vpermpd ymm14,ymm11,0xd8
  ad6bf3:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  ad6bf9:	c4 42 2d ac fe       	vfnmadd213ps ymm15,ymm10,ymm14
  ad6bfe:	c4 41 14 58 df       	vaddps ymm11,ymm13,ymm15
  ad6c03:	c4 41 34 58 cc       	vaddps ymm9,ymm9,ymm12
  ad6c08:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  ad6c0d:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ad6c13:	62 b1 7c 28 28 f7    	vmovaps ymm6,ymm23
  ad6c19:	c4 e2 35 ac f5       	vfnmadd213ps ymm6,ymm9,ymm5
  ad6c1e:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  ad6c23:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  ad6c29:	c5 4c 5c c7          	vsubps ymm8,ymm6,ymm7
  ad6c2d:	c4 41 04 5c e5       	vsubps ymm12,ymm15,ymm13
  ad6c32:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  ad6c36:	62 c1 0c 28 58 c2    	vaddps ymm16,ymm14,ymm10
  ad6c3c:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  ad6c40:	c5 f8 28 fd          	vmovaps xmm7,xmm5
  ad6c44:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  ad6c4a:	c5 78 28 d6          	vmovaps xmm10,xmm6
  ad6c4e:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  ad6c54:	c5 78 29 c5          	vmovaps xmm5,xmm8
  ad6c58:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ad6c5e:	c5 45 15 f5          	vunpckhpd ymm14,ymm7,ymm5
  ad6c62:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  ad6c66:	c5 fa 7e f6          	vmovq  xmm6,xmm6
  ad6c6a:	c4 c1 45 73 da 08    	vpsrldq ymm7,ymm10,0x8
  ad6c70:	62 c1 b5 28 15 c8    	vunpckhpd ymm17,ymm9,ymm8
  ad6c76:	c4 41 35 14 c0       	vunpcklpd ymm8,ymm9,ymm8
  ad6c7b:	c4 63 15 0c d2 cc    	vblendps ymm10,ymm13,ymm2,0xcc
  ad6c81:	62 e1 95 28 15 d2    	vunpckhpd ymm18,ymm13,ymm2
  ad6c87:	c5 54 c6 ce dd       	vshufps ymm9,ymm5,ymm6,0xdd
  ad6c8c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ad6c92:	c5 0c c6 ef 88       	vshufps ymm13,ymm14,ymm7,0x88
  ad6c97:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  ad6c9d:	c5 8c c6 ff dd       	vshufps ymm7,ymm14,ymm7,0xdd
  ad6ca2:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ad6ca7:	c4 41 3c c6 f2 88    	vshufps ymm14,ymm8,ymm10,0x88
  ad6cad:	c4 41 0c c6 fe d8    	vshufps ymm15,ymm14,ymm14,0xd8
  ad6cb3:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  ad6cb9:	c4 41 3c c6 d0 d8    	vshufps ymm10,ymm8,ymm8,0xd8
  ad6cbf:	62 31 74 20 c6 c2 88 	vshufps ymm8,ymm17,ymm18,0x88
  ad6cc6:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  ad6ccc:	62 31 74 20 c6 c2 dd 	vshufps ymm8,ymm17,ymm18,0xdd
  ad6cd3:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad6cd9:	62 a1 7c 08 28 c8    	vmovaps xmm17,xmm16
  ad6cdf:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  ad6ce6:	62 c1 7c 08 28 d4    	vmovaps xmm18,xmm12
  ad6cec:	c4 63 7d 19 e0 01    	vextractf128 xmm0,ymm12,0x1
  ad6cf2:	62 c1 7c 08 28 db    	vmovaps xmm19,xmm11
  ad6cf8:	62 33 7d 28 19 dc 01 	vextractf32x4 xmm20,ymm11,0x1
  ad6cff:	62 a1 f5 20 15 eb    	vunpckhpd ymm21,ymm17,ymm19
  ad6d05:	62 31 f5 20 14 db    	vunpcklpd ymm11,ymm17,ymm19
  ad6d0b:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  ad6d10:	62 b1 75 20 73 da 08 	vpsrldq ymm17,ymm18,0x8
  ad6d17:	62 a1 fd 20 15 d4    	vunpckhpd ymm18,ymm16,ymm20
  ad6d1d:	62 a1 fd 20 14 c4    	vunpcklpd ymm16,ymm16,ymm20
  ad6d23:	c4 e3 7d 0c ca cc    	vblendps ymm1,ymm0,ymm2,0xcc
  ad6d29:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  ad6d2d:	62 c1 24 28 c6 dc dd 	vshufps ymm19,ymm11,ymm12,0xdd
  ad6d34:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  ad6d3b:	62 a1 54 20 c6 e1 88 	vshufps ymm20,ymm21,ymm17,0x88
  ad6d42:	62 21 5c 20 c6 c4 d8 	vshufps ymm24,ymm20,ymm20,0xd8
  ad6d49:	62 a1 54 20 c6 c9 dd 	vshufps ymm17,ymm21,ymm17,0xdd
  ad6d50:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  ad6d57:	62 e1 7c 20 c6 e1 88 	vshufps ymm20,ymm16,ymm1,0x88
  ad6d5e:	62 a1 5c 20 c6 ec d8 	vshufps ymm21,ymm20,ymm20,0xd8
  ad6d65:	62 f1 7c 20 c6 c9 dd 	vshufps ymm1,ymm16,ymm1,0xdd
  ad6d6c:	62 e1 74 28 c6 e1 d8 	vshufps ymm20,ymm1,ymm1,0xd8
  ad6d73:	62 f1 6c 20 c6 c8 dd 	vshufps ymm1,ymm18,ymm0,0xdd
  ad6d7a:	62 e1 74 28 c6 c1 d8 	vshufps ymm16,ymm1,ymm1,0xd8
  ad6d81:	62 f1 6c 20 c6 c0 88 	vshufps ymm0,ymm18,ymm0,0x88
  ad6d88:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ad6d8d:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  ad6d94:	00 
  ad6d95:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  ad6d9c:	62 e1 04 28 59 d1    	vmulps ymm18,ymm15,ymm1
  ad6da2:	62 82 55 20 bc d1    	vfnmadd231ps ymm18,ymm21,ymm25
  ad6da8:	62 e1 54 20 59 e9    	vmulps ymm21,ymm21,ymm1
  ad6dae:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  ad6db5:	00 
  ad6db6:	62 82 05 28 b8 e9    	vfmadd231ps ymm21,ymm15,ymm25
  ad6dbc:	62 61 7c 28 10 49 05 	vmovups ymm25,YMMWORD PTR [rcx+0xa0]
  ad6dc3:	c5 14 59 f9          	vmulps ymm15,ymm13,ymm1
  ad6dc7:	62 12 3d 20 bc f9    	vfnmadd231ps ymm15,ymm24,ymm25
  ad6dcd:	62 f1 3c 20 59 c9    	vmulps ymm1,ymm24,ymm1
  ad6dd3:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  ad6dda:	62 92 15 28 b8 c9    	vfmadd231ps ymm1,ymm13,ymm25
  ad6de0:	c5 7c 10 a9 a0 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x1a0]
  ad6de7:	00 
  ad6de8:	62 01 0c 28 59 c8    	vmulps ymm25,ymm14,ymm24
  ad6dee:	62 42 7d 28 bc cd    	vfnmadd231ps ymm25,ymm0,ymm13
  ad6df4:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  ad6dfa:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  ad6e01:	c4 c2 0d b8 c5       	vfmadd231ps ymm0,ymm14,ymm13
  ad6e06:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  ad6e0b:	62 11 34 28 59 f0    	vmulps ymm14,ymm9,ymm24
  ad6e11:	62 52 65 20 bc f5    	vfnmadd231ps ymm14,ymm19,ymm13
  ad6e17:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  ad6e1d:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  ad6e24:	62 c2 35 28 b8 dd    	vfmadd231ps ymm19,ymm9,ymm13
  ad6e2a:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  ad6e31:	00 
  ad6e32:	62 11 2c 28 59 e8    	vmulps ymm13,ymm10,ymm24
  ad6e38:	62 52 5d 20 bc e9    	vfnmadd231ps ymm13,ymm20,ymm9
  ad6e3e:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  ad6e44:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  ad6e4b:	62 c2 2d 28 b8 e1    	vfmadd231ps ymm20,ymm10,ymm9
  ad6e51:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  ad6e58:	00 
  ad6e59:	62 11 44 28 59 d0    	vmulps ymm10,ymm7,ymm24
  ad6e5f:	62 52 75 20 bc d1    	vfnmadd231ps ymm10,ymm17,ymm9
  ad6e65:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  ad6e6b:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  ad6e72:	62 c2 45 28 b8 c9    	vfmadd231ps ymm17,ymm7,ymm9
  ad6e78:	c5 fc 10 b9 e0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1e0]
  ad6e7f:	00 
  ad6e80:	62 11 3c 28 59 c8    	vmulps ymm9,ymm8,ymm24
  ad6e86:	62 72 7d 20 bc cf    	vfnmadd231ps ymm9,ymm16,ymm7
  ad6e8c:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  ad6e92:	62 e2 3d 28 b8 c7    	vfmadd231ps ymm16,ymm8,ymm7
  ad6e98:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  ad6e9d:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad6ea2:	c4 c1 24 c6 f4 88    	vshufps ymm6,ymm11,ymm12,0x88
  ad6ea8:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ad6ead:	62 b1 54 28 58 fa    	vaddps ymm7,ymm5,ymm18
  ad6eb3:	62 31 54 28 5c c2    	vsubps ymm8,ymm5,ymm18
  ad6eb9:	c5 f4 58 e8          	vaddps ymm5,ymm1,ymm0
  ad6ebd:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  ad6ec1:	c4 c1 0c 58 cd       	vaddps ymm1,ymm14,ymm13
  ad6ec6:	c4 41 0c 5c dd       	vsubps ymm11,ymm14,ymm13
  ad6ecb:	62 31 64 20 58 e4    	vaddps ymm12,ymm19,ymm20
  ad6ed1:	62 31 64 20 5c ec    	vsubps ymm13,ymm19,ymm20
  ad6ed7:	62 31 74 20 58 f0    	vaddps ymm14,ymm17,ymm16
  ad6edd:	62 a1 74 20 5c c0    	vsubps ymm16,ymm17,ymm16
  ad6ee3:	62 c1 2c 28 58 c9    	vaddps ymm17,ymm10,ymm9
  ad6ee9:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  ad6eee:	62 e1 54 20 58 d6    	vaddps ymm18,ymm21,ymm6
  ad6ef4:	62 a1 4c 28 5c dd    	vsubps ymm19,ymm6,ymm21
  ad6efa:	62 91 04 28 58 f1    	vaddps ymm6,ymm15,ymm25
  ad6f00:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ad6f06:	62 c1 24 28 58 e5    	vaddps ymm20,ymm11,ymm13
  ad6f0c:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  ad6f11:	62 c1 7c 20 5c e9    	vsubps ymm21,ymm16,ymm9
  ad6f17:	62 31 34 28 58 c8    	vaddps ymm9,ymm9,ymm16
  ad6f1d:	62 e1 44 28 58 c6    	vaddps ymm16,ymm7,ymm6
  ad6f23:	62 61 44 28 5c c6    	vsubps ymm24,ymm7,ymm6
  ad6f29:	c4 41 1c 58 d6       	vaddps ymm10,ymm12,ymm14
  ad6f2e:	c4 41 1c 5c e6       	vsubps ymm12,ymm12,ymm14
  ad6f33:	62 31 54 28 58 da    	vaddps ymm11,ymm5,ymm18
  ad6f39:	62 f1 6c 20 5c ed    	vsubps ymm5,ymm18,ymm5
  ad6f3f:	62 31 74 28 58 f1    	vaddps ymm14,ymm1,ymm17
  ad6f45:	62 f1 74 20 5c f1    	vsubps ymm6,ymm17,ymm1
  ad6f4b:	c5 bc 58 c8          	vaddps ymm1,ymm8,ymm0
  ad6f4f:	62 e1 5c 20 59 cb    	vmulps ymm17,ymm20,ymm3
  ad6f55:	62 e1 54 20 59 d3    	vmulps ymm18,ymm21,ymm3
  ad6f5b:	c5 94 59 fb          	vmulps ymm7,ymm13,ymm3
  ad6f5f:	c5 34 59 cb          	vmulps ymm9,ymm9,ymm3
  ad6f63:	c5 bc 5c c0          	vsubps ymm0,ymm8,ymm0
  ad6f67:	c4 41 44 5c e9       	vsubps ymm13,ymm7,ymm9
  ad6f6c:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  ad6f70:	62 a1 04 28 58 e3    	vaddps ymm20,ymm15,ymm19
  ad6f76:	62 d1 64 20 5c ff    	vsubps ymm7,ymm19,ymm15
  ad6f7c:	62 31 74 20 58 fa    	vaddps ymm15,ymm17,ymm18
  ad6f82:	62 31 6c 20 5c c1    	vsubps ymm8,ymm18,ymm17
  ad6f88:	62 c1 74 28 58 cf    	vaddps ymm17,ymm1,ymm15
  ad6f8e:	c4 c1 74 5c cf       	vsubps ymm1,ymm1,ymm15
  ad6f93:	62 51 3c 20 58 fc    	vaddps ymm15,ymm24,ymm12
  ad6f99:	62 51 3c 20 5c e4    	vsubps ymm12,ymm24,ymm12
  ad6f9f:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  ad6fa5:	c4 41 7c 5c c9       	vsubps ymm9,ymm0,ymm9
  ad6faa:	62 d1 7c 20 5c c6    	vsubps ymm0,ymm16,ymm14
  ad6fb0:	62 51 7c 20 58 f6    	vaddps ymm14,ymm16,ymm14
  ad6fb6:	62 c1 24 08 58 c2    	vaddps xmm16,xmm11,xmm10
  ad6fbc:	62 c2 5d 28 7f c6    	vpermt2ps ymm16,ymm4,ymm14
  ad6fc2:	62 c3 7d 28 19 c6 01 	vextractf32x4 xmm14,ymm16,0x1
  ad6fc9:	c5 78 13 74 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm14
  ad6fcf:	62 e1 7c 08 11 04 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm16
  ad6fd6:	62 51 5c 00 58 f5    	vaddps xmm14,xmm20,xmm13
  ad6fdc:	62 32 5d 28 7f f1    	vpermt2ps ymm14,ymm4,ymm17
  ad6fe2:	62 33 7d 28 19 f0 01 	vextractf32x4 xmm16,ymm14,0x1
  ad6fe9:	62 e1 7c 08 13 44 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm16
  ad6ff0:	05 
  ad6ff1:	c5 78 11 74 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm14
  ad6ff7:	c5 50 58 f6          	vaddps xmm14,xmm5,xmm6
  ad6ffb:	62 52 5d 28 7f f7    	vpermt2ps ymm14,ymm4,ymm15
  ad7001:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  ad7007:	c5 78 13 7c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm15
  ad700d:	c5 78 11 74 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm14
  ad7013:	c5 38 58 f7          	vaddps xmm14,xmm8,xmm7
  ad7017:	62 32 5d 28 7f f2    	vpermt2ps ymm14,ymm4,ymm18
  ad701d:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  ad7023:	c5 78 13 7c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm15
  ad7029:	c5 78 11 74 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm14
  ad702f:	c4 41 20 5c d2       	vsubps xmm10,xmm11,xmm10
  ad7034:	62 72 5d 28 7f d0    	vpermt2ps ymm10,ymm4,ymm0
  ad703a:	c4 63 7d 19 d0 01    	vextractf128 xmm0,ymm10,0x1
  ad7040:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  ad7046:	c5 78 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm10
  ad704c:	62 d1 5c 00 5c c5    	vsubps xmm0,xmm20,xmm13
  ad7052:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  ad7058:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ad705e:	c5 f8 13 8c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm1
  ad7065:	00 00 
  ad7067:	c5 f8 11 44 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm0
  ad706d:	c5 d0 5c c6          	vsubps xmm0,xmm5,xmm6
  ad7071:	62 d2 5d 28 7f c4    	vpermt2ps ymm0,ymm4,ymm12
  ad7077:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ad707d:	c5 f8 13 8c 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm1
  ad7084:	00 00 
  ad7086:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  ad708d:	00 00 
  ad708f:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  ad7094:	62 d2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm9
  ad709a:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ad70a0:	c5 f8 13 8c 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm1
  ad70a7:	00 00 
  ad70a9:	c5 f8 11 84 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm0
  ad70b0:	00 00 
  ad70b2:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  ad70b9:	48 39 d0             	cmp    rax,rdx
  ad70bc:	0f 85 be fa ff ff    	jne    ad6b80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  ad70c2:	c5 f8 77             	vzeroupper
  ad70c5:	c3                   	ret
