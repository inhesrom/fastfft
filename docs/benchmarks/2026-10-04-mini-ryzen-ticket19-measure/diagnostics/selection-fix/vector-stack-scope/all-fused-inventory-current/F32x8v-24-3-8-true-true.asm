
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad8900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad8900:	48 c1 e2 06          	shl    rdx,0x6
  ad8904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad8908:	31 d2                	xor    edx,edx
  ad890a:	62 e2 7d 28 18 35 c0 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff59c9c0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad8911:	c9 59 ff 
  ad8914:	62 e2 7d 28 18 3d 42 	vbroadcastss ymm23,DWORD PTR [rip+0xffffffffff59cb42]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad891b:	cb 59 ff 
  ad891e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ad8922:	c4 e2 7d 18 1d 71 ca 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff59ca71]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad8929:	59 ff 
  ad892b:	c5 fc 28 25 8d f9 59 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff59f98d]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ad8932:	ff 
  ad8933:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ad893a:	84 00 00 00 00 00 
  ad8940:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  ad8945:	c5 fc 10 74 17 20    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x20]
  ad894b:	c5 fc 10 7c 17 40    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x40]
  ad8951:	c5 7c 10 44 17 60    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x60]
  ad8957:	c4 41 44 c6 c8 dd    	vshufps ymm9,ymm7,ymm8,0xdd
  ad895d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ad8963:	c5 7c 10 94 17 80 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x80]
  ad896a:	00 00 
  ad896c:	c5 7c 10 9c 17 a0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xa0]
  ad8973:	00 00 
  ad8975:	c4 41 2c c6 e3 dd    	vshufps ymm12,ymm10,ymm11,0xdd
  ad897b:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ad8981:	c4 41 34 5c ec       	vsubps ymm13,ymm9,ymm12
  ad8986:	62 31 14 28 59 ee    	vmulps ymm13,ymm13,ymm22
  ad898c:	c4 c1 44 c6 f8 88    	vshufps ymm7,ymm7,ymm8,0x88
  ad8992:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  ad8998:	c4 41 2c c6 c3 88    	vshufps ymm8,ymm10,ymm11,0x88
  ad899e:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ad89a4:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  ad89a8:	c5 54 c6 de 88       	vshufps ymm11,ymm5,ymm6,0x88
  ad89ad:	c4 43 fd 01 f3 d8    	vpermpd ymm14,ymm11,0xd8
  ad89b3:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  ad89b9:	c4 42 2d ac fe       	vfnmadd213ps ymm15,ymm10,ymm14
  ad89be:	c4 41 14 58 df       	vaddps ymm11,ymm13,ymm15
  ad89c3:	c4 41 34 58 cc       	vaddps ymm9,ymm9,ymm12
  ad89c8:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  ad89cd:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ad89d3:	62 b1 7c 28 28 f7    	vmovaps ymm6,ymm23
  ad89d9:	c4 e2 35 ac f5       	vfnmadd213ps ymm6,ymm9,ymm5
  ad89de:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  ad89e3:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  ad89e9:	c5 4c 5c c7          	vsubps ymm8,ymm6,ymm7
  ad89ed:	c4 41 04 5c e5       	vsubps ymm12,ymm15,ymm13
  ad89f2:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  ad89f6:	62 c1 0c 28 58 c2    	vaddps ymm16,ymm14,ymm10
  ad89fc:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  ad8a00:	c5 f8 28 fd          	vmovaps xmm7,xmm5
  ad8a04:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  ad8a0a:	c5 78 28 d6          	vmovaps xmm10,xmm6
  ad8a0e:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  ad8a14:	c5 78 29 c5          	vmovaps xmm5,xmm8
  ad8a18:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ad8a1e:	c5 45 15 f5          	vunpckhpd ymm14,ymm7,ymm5
  ad8a22:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  ad8a26:	c5 fa 7e f6          	vmovq  xmm6,xmm6
  ad8a2a:	c4 c1 45 73 da 08    	vpsrldq ymm7,ymm10,0x8
  ad8a30:	62 c1 b5 28 15 c8    	vunpckhpd ymm17,ymm9,ymm8
  ad8a36:	c4 41 35 14 c0       	vunpcklpd ymm8,ymm9,ymm8
  ad8a3b:	c4 63 15 0c d2 cc    	vblendps ymm10,ymm13,ymm2,0xcc
  ad8a41:	62 e1 95 28 15 d2    	vunpckhpd ymm18,ymm13,ymm2
  ad8a47:	c5 54 c6 ce dd       	vshufps ymm9,ymm5,ymm6,0xdd
  ad8a4c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ad8a52:	c5 0c c6 ef 88       	vshufps ymm13,ymm14,ymm7,0x88
  ad8a57:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  ad8a5d:	c5 8c c6 ff dd       	vshufps ymm7,ymm14,ymm7,0xdd
  ad8a62:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ad8a67:	c4 41 3c c6 f2 88    	vshufps ymm14,ymm8,ymm10,0x88
  ad8a6d:	c4 41 0c c6 fe d8    	vshufps ymm15,ymm14,ymm14,0xd8
  ad8a73:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  ad8a79:	c4 41 3c c6 d0 d8    	vshufps ymm10,ymm8,ymm8,0xd8
  ad8a7f:	62 31 74 20 c6 c2 88 	vshufps ymm8,ymm17,ymm18,0x88
  ad8a86:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  ad8a8c:	62 31 74 20 c6 c2 dd 	vshufps ymm8,ymm17,ymm18,0xdd
  ad8a93:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad8a99:	62 a1 7c 08 28 c8    	vmovaps xmm17,xmm16
  ad8a9f:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  ad8aa6:	62 c1 7c 08 28 d4    	vmovaps xmm18,xmm12
  ad8aac:	c4 63 7d 19 e0 01    	vextractf128 xmm0,ymm12,0x1
  ad8ab2:	62 c1 7c 08 28 db    	vmovaps xmm19,xmm11
  ad8ab8:	62 33 7d 28 19 dc 01 	vextractf32x4 xmm20,ymm11,0x1
  ad8abf:	62 a1 f5 20 15 eb    	vunpckhpd ymm21,ymm17,ymm19
  ad8ac5:	62 31 f5 20 14 db    	vunpcklpd ymm11,ymm17,ymm19
  ad8acb:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  ad8ad0:	62 b1 75 20 73 da 08 	vpsrldq ymm17,ymm18,0x8
  ad8ad7:	62 a1 fd 20 15 d4    	vunpckhpd ymm18,ymm16,ymm20
  ad8add:	62 a1 fd 20 14 c4    	vunpcklpd ymm16,ymm16,ymm20
  ad8ae3:	c4 e3 7d 0c ca cc    	vblendps ymm1,ymm0,ymm2,0xcc
  ad8ae9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  ad8aed:	62 c1 24 28 c6 dc dd 	vshufps ymm19,ymm11,ymm12,0xdd
  ad8af4:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  ad8afb:	62 a1 54 20 c6 e1 88 	vshufps ymm20,ymm21,ymm17,0x88
  ad8b02:	62 21 5c 20 c6 c4 d8 	vshufps ymm24,ymm20,ymm20,0xd8
  ad8b09:	62 a1 54 20 c6 c9 dd 	vshufps ymm17,ymm21,ymm17,0xdd
  ad8b10:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  ad8b17:	62 e1 7c 20 c6 e1 88 	vshufps ymm20,ymm16,ymm1,0x88
  ad8b1e:	62 a1 5c 20 c6 ec d8 	vshufps ymm21,ymm20,ymm20,0xd8
  ad8b25:	62 f1 7c 20 c6 c9 dd 	vshufps ymm1,ymm16,ymm1,0xdd
  ad8b2c:	62 e1 74 28 c6 e1 d8 	vshufps ymm20,ymm1,ymm1,0xd8
  ad8b33:	62 f1 6c 20 c6 c8 dd 	vshufps ymm1,ymm18,ymm0,0xdd
  ad8b3a:	62 e1 74 28 c6 c1 d8 	vshufps ymm16,ymm1,ymm1,0xd8
  ad8b41:	62 f1 6c 20 c6 c0 88 	vshufps ymm0,ymm18,ymm0,0x88
  ad8b48:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ad8b4d:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  ad8b54:	00 
  ad8b55:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  ad8b5c:	62 e1 04 28 59 d1    	vmulps ymm18,ymm15,ymm1
  ad8b62:	62 82 55 20 bc d1    	vfnmadd231ps ymm18,ymm21,ymm25
  ad8b68:	62 e1 54 20 59 e9    	vmulps ymm21,ymm21,ymm1
  ad8b6e:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  ad8b75:	00 
  ad8b76:	62 82 05 28 b8 e9    	vfmadd231ps ymm21,ymm15,ymm25
  ad8b7c:	62 61 7c 28 10 49 05 	vmovups ymm25,YMMWORD PTR [rcx+0xa0]
  ad8b83:	c5 14 59 f9          	vmulps ymm15,ymm13,ymm1
  ad8b87:	62 12 3d 20 bc f9    	vfnmadd231ps ymm15,ymm24,ymm25
  ad8b8d:	62 f1 3c 20 59 c9    	vmulps ymm1,ymm24,ymm1
  ad8b93:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  ad8b9a:	62 92 15 28 b8 c9    	vfmadd231ps ymm1,ymm13,ymm25
  ad8ba0:	c5 7c 10 a9 a0 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x1a0]
  ad8ba7:	00 
  ad8ba8:	62 01 0c 28 59 c8    	vmulps ymm25,ymm14,ymm24
  ad8bae:	62 42 7d 28 bc cd    	vfnmadd231ps ymm25,ymm0,ymm13
  ad8bb4:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  ad8bba:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  ad8bc1:	c4 c2 0d b8 c5       	vfmadd231ps ymm0,ymm14,ymm13
  ad8bc6:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  ad8bcb:	62 11 34 28 59 f0    	vmulps ymm14,ymm9,ymm24
  ad8bd1:	62 52 65 20 bc f5    	vfnmadd231ps ymm14,ymm19,ymm13
  ad8bd7:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  ad8bdd:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  ad8be4:	62 c2 35 28 b8 dd    	vfmadd231ps ymm19,ymm9,ymm13
  ad8bea:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  ad8bf1:	00 
  ad8bf2:	62 11 2c 28 59 e8    	vmulps ymm13,ymm10,ymm24
  ad8bf8:	62 52 5d 20 bc e9    	vfnmadd231ps ymm13,ymm20,ymm9
  ad8bfe:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  ad8c04:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  ad8c0b:	62 c2 2d 28 b8 e1    	vfmadd231ps ymm20,ymm10,ymm9
  ad8c11:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  ad8c18:	00 
  ad8c19:	62 11 44 28 59 d0    	vmulps ymm10,ymm7,ymm24
  ad8c1f:	62 52 75 20 bc d1    	vfnmadd231ps ymm10,ymm17,ymm9
  ad8c25:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  ad8c2b:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  ad8c32:	62 c2 45 28 b8 c9    	vfmadd231ps ymm17,ymm7,ymm9
  ad8c38:	c5 fc 10 b9 e0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1e0]
  ad8c3f:	00 
  ad8c40:	62 11 3c 28 59 c8    	vmulps ymm9,ymm8,ymm24
  ad8c46:	62 72 7d 20 bc cf    	vfnmadd231ps ymm9,ymm16,ymm7
  ad8c4c:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  ad8c52:	62 e2 3d 28 b8 c7    	vfmadd231ps ymm16,ymm8,ymm7
  ad8c58:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  ad8c5d:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ad8c62:	c4 c1 24 c6 f4 88    	vshufps ymm6,ymm11,ymm12,0x88
  ad8c68:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ad8c6d:	62 b1 54 28 58 fa    	vaddps ymm7,ymm5,ymm18
  ad8c73:	62 31 54 28 5c c2    	vsubps ymm8,ymm5,ymm18
  ad8c79:	c5 f4 58 e8          	vaddps ymm5,ymm1,ymm0
  ad8c7d:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  ad8c81:	c4 c1 0c 58 cd       	vaddps ymm1,ymm14,ymm13
  ad8c86:	c4 41 0c 5c dd       	vsubps ymm11,ymm14,ymm13
  ad8c8b:	62 31 64 20 58 e4    	vaddps ymm12,ymm19,ymm20
  ad8c91:	62 31 64 20 5c ec    	vsubps ymm13,ymm19,ymm20
  ad8c97:	62 31 74 20 58 f0    	vaddps ymm14,ymm17,ymm16
  ad8c9d:	62 a1 74 20 5c c0    	vsubps ymm16,ymm17,ymm16
  ad8ca3:	62 c1 2c 28 58 c9    	vaddps ymm17,ymm10,ymm9
  ad8ca9:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  ad8cae:	62 e1 54 20 58 d6    	vaddps ymm18,ymm21,ymm6
  ad8cb4:	62 a1 4c 28 5c dd    	vsubps ymm19,ymm6,ymm21
  ad8cba:	62 91 04 28 58 f1    	vaddps ymm6,ymm15,ymm25
  ad8cc0:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ad8cc6:	62 c1 24 28 58 e5    	vaddps ymm20,ymm11,ymm13
  ad8ccc:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  ad8cd1:	62 c1 7c 20 5c e9    	vsubps ymm21,ymm16,ymm9
  ad8cd7:	62 31 34 28 58 c8    	vaddps ymm9,ymm9,ymm16
  ad8cdd:	62 e1 44 28 58 c6    	vaddps ymm16,ymm7,ymm6
  ad8ce3:	62 61 44 28 5c c6    	vsubps ymm24,ymm7,ymm6
  ad8ce9:	c4 41 1c 58 d6       	vaddps ymm10,ymm12,ymm14
  ad8cee:	c4 41 1c 5c e6       	vsubps ymm12,ymm12,ymm14
  ad8cf3:	62 31 54 28 58 da    	vaddps ymm11,ymm5,ymm18
  ad8cf9:	62 f1 6c 20 5c ed    	vsubps ymm5,ymm18,ymm5
  ad8cff:	62 31 74 28 58 f1    	vaddps ymm14,ymm1,ymm17
  ad8d05:	62 f1 74 20 5c f1    	vsubps ymm6,ymm17,ymm1
  ad8d0b:	c5 bc 58 c8          	vaddps ymm1,ymm8,ymm0
  ad8d0f:	62 e1 5c 20 59 cb    	vmulps ymm17,ymm20,ymm3
  ad8d15:	62 e1 54 20 59 d3    	vmulps ymm18,ymm21,ymm3
  ad8d1b:	c5 94 59 fb          	vmulps ymm7,ymm13,ymm3
  ad8d1f:	c5 34 59 cb          	vmulps ymm9,ymm9,ymm3
  ad8d23:	c5 bc 5c c0          	vsubps ymm0,ymm8,ymm0
  ad8d27:	c4 41 44 5c e9       	vsubps ymm13,ymm7,ymm9
  ad8d2c:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  ad8d30:	62 a1 04 28 58 e3    	vaddps ymm20,ymm15,ymm19
  ad8d36:	62 d1 64 20 5c ff    	vsubps ymm7,ymm19,ymm15
  ad8d3c:	62 31 74 20 58 fa    	vaddps ymm15,ymm17,ymm18
  ad8d42:	62 31 6c 20 5c c1    	vsubps ymm8,ymm18,ymm17
  ad8d48:	62 c1 74 28 58 cf    	vaddps ymm17,ymm1,ymm15
  ad8d4e:	c4 c1 74 5c cf       	vsubps ymm1,ymm1,ymm15
  ad8d53:	62 51 3c 20 58 fc    	vaddps ymm15,ymm24,ymm12
  ad8d59:	62 51 3c 20 5c e4    	vsubps ymm12,ymm24,ymm12
  ad8d5f:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  ad8d65:	c4 41 7c 5c c9       	vsubps ymm9,ymm0,ymm9
  ad8d6a:	62 d1 7c 20 5c c6    	vsubps ymm0,ymm16,ymm14
  ad8d70:	62 51 7c 20 58 f6    	vaddps ymm14,ymm16,ymm14
  ad8d76:	62 c1 24 08 58 c2    	vaddps xmm16,xmm11,xmm10
  ad8d7c:	62 c2 5d 28 7f c6    	vpermt2ps ymm16,ymm4,ymm14
  ad8d82:	62 c3 7d 28 19 c6 01 	vextractf32x4 xmm14,ymm16,0x1
  ad8d89:	c5 78 13 74 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm14
  ad8d8f:	62 e1 7c 08 11 04 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm16
  ad8d96:	62 51 5c 00 58 f5    	vaddps xmm14,xmm20,xmm13
  ad8d9c:	62 32 5d 28 7f f1    	vpermt2ps ymm14,ymm4,ymm17
  ad8da2:	62 33 7d 28 19 f0 01 	vextractf32x4 xmm16,ymm14,0x1
  ad8da9:	62 e1 7c 08 13 44 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm16
  ad8db0:	05 
  ad8db1:	c5 78 11 74 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm14
  ad8db7:	c5 50 58 f6          	vaddps xmm14,xmm5,xmm6
  ad8dbb:	62 52 5d 28 7f f7    	vpermt2ps ymm14,ymm4,ymm15
  ad8dc1:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  ad8dc7:	c5 78 13 7c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm15
  ad8dcd:	c5 78 11 74 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm14
  ad8dd3:	c5 38 58 f7          	vaddps xmm14,xmm8,xmm7
  ad8dd7:	62 32 5d 28 7f f2    	vpermt2ps ymm14,ymm4,ymm18
  ad8ddd:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  ad8de3:	c5 78 13 7c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm15
  ad8de9:	c5 78 11 74 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm14
  ad8def:	c4 41 20 5c d2       	vsubps xmm10,xmm11,xmm10
  ad8df4:	62 72 5d 28 7f d0    	vpermt2ps ymm10,ymm4,ymm0
  ad8dfa:	c4 63 7d 19 d0 01    	vextractf128 xmm0,ymm10,0x1
  ad8e00:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  ad8e06:	c5 78 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm10
  ad8e0c:	62 d1 5c 00 5c c5    	vsubps xmm0,xmm20,xmm13
  ad8e12:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  ad8e18:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ad8e1e:	c5 f8 13 8c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm1
  ad8e25:	00 00 
  ad8e27:	c5 f8 11 44 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm0
  ad8e2d:	c5 d0 5c c6          	vsubps xmm0,xmm5,xmm6
  ad8e31:	62 d2 5d 28 7f c4    	vpermt2ps ymm0,ymm4,ymm12
  ad8e37:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ad8e3d:	c5 f8 13 8c 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm1
  ad8e44:	00 00 
  ad8e46:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  ad8e4d:	00 00 
  ad8e4f:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  ad8e54:	62 d2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm9
  ad8e5a:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ad8e60:	c5 f8 13 8c 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm1
  ad8e67:	00 00 
  ad8e69:	c5 f8 11 84 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm0
  ad8e70:	00 00 
  ad8e72:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  ad8e79:	48 39 d0             	cmp    rax,rdx
  ad8e7c:	0f 85 be fa ff ff    	jne    ad8940 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  ad8e82:	c5 f8 77             	vzeroupper
  ad8e85:	c3                   	ret
