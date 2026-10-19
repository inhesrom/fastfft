
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad5bc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad5bc0:	48 c1 e2 06          	shl    rdx,0x6
  ad5bc4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  ad5bc8:	31 d2                	xor    edx,edx
  ad5bca:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ad5bce:	c4 e2 7d 18 0d c5 f7 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff59f7c5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad5bd5:	59 ff 
  ad5bd7:	62 62 7d 28 18 0d 7f 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff59f87f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ad5bde:	f8 59 ff 
  ad5be1:	62 62 7d 28 18 05 e9 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff59f6e9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ad5be8:	f6 59 ff 
  ad5beb:	62 61 7c 28 28 1d ab 	vmovaps ymm27,YMMWORD PTR [rip+0xffffffffff59fcab]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ad5bf2:	fc 59 ff 
  ad5bf5:	c5 fc 28 2d e3 15 5a 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff5a15e3]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ad5bfc:	ff 
  ad5bfd:	0f 1f 00             	nop    DWORD PTR [rax]
  ad5c00:	c5 fb 10 74 17 10    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x10]
  ad5c06:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  ad5c0c:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  ad5c12:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  ad5c17:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x18]
  ad5c1e:	18 00 00 00 
  ad5c22:	c5 78 10 54 17 30    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x30]
  ad5c28:	62 e1 7c 08 10 a4 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x48]
  ad5c2f:	48 00 00 00 
  ad5c33:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  ad5c39:	c4 c1 18 c6 f5 dd    	vshufps xmm6,xmm12,xmm13,0xdd
  ad5c3f:	c5 78 10 74 17 60    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x60]
  ad5c45:	c5 fb 10 7c 17 70    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x70]
  ad5c4b:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ad5c51:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ad5c57:	62 b3 7d 28 19 f9 01 	vextractf32x4 xmm17,ymm7,0x1
  ad5c5e:	62 31 0c 08 c6 c1 dd 	vshufps xmm8,xmm14,xmm17,0xdd
  ad5c65:	c5 78 10 bc 17 90 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x90]
  ad5c6c:	00 00 
  ad5c6e:	c5 fb 10 bc 17 a0 00 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0xa0]
  ad5c75:	00 00 
  ad5c77:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  ad5c7d:	c4 e3 45 0c f8 c0    	vblendps ymm7,ymm7,ymm0,0xc0
  ad5c83:	62 b3 7d 28 19 fa 01 	vextractf32x4 xmm18,ymm7,0x1
  ad5c8a:	62 b1 04 08 c6 fa 88 	vshufps xmm7,xmm15,xmm18,0x88
  ad5c91:	c5 7b 10 4c 17 40    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x40]
  ad5c97:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  ad5c9d:	c4 63 35 0c c8 c0    	vblendps ymm9,ymm9,ymm0,0xc0
  ad5ca3:	62 33 7d 28 19 cd 01 	vextractf32x4 xmm21,ymm9,0x1
  ad5caa:	62 31 2c 08 c6 cd 88 	vshufps xmm9,xmm10,xmm21,0x88
  ad5cb1:	c5 7b 10 5c 17 58    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x58]
  ad5cb7:	c4 43 7d 18 db 01    	vinsertf128 ymm11,ymm0,xmm11,0x1
  ad5cbd:	c4 63 25 0c d8 c0    	vblendps ymm11,ymm11,ymm0,0xc0
  ad5cc3:	62 33 7d 28 19 de 01 	vextractf32x4 xmm22,ymm11,0x1
  ad5cca:	62 31 5c 00 c6 de dd 	vshufps xmm11,xmm20,xmm22,0xdd
  ad5cd1:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0xa8]
  ad5cd8:	a8 00 00 00 
  ad5cdc:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xb8]
  ad5ce3:	17 
  ad5ce4:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  ad5ceb:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  ad5cf1:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ad5cf7:	62 e1 44 00 c6 c3 dd 	vshufps xmm16,xmm23,xmm3,0xdd
  ad5cfe:	62 a1 5c 00 c6 e6 88 	vshufps xmm20,xmm20,xmm22,0x88
  ad5d05:	62 f1 44 00 c6 db 88 	vshufps xmm3,xmm23,xmm3,0x88
  ad5d0c:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x28]
  ad5d13:	05 
  ad5d14:	62 b3 7d 28 18 d6 01 	vinsertf32x4 ymm2,ymm0,xmm22,0x1
  ad5d1b:	c4 e3 6d 0c d0 c0    	vblendps ymm2,ymm2,ymm0,0xc0
  ad5d21:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ad5d27:	62 e1 64 00 c6 f2 88 	vshufps xmm22,xmm19,xmm2,0x88
  ad5d2e:	62 e1 7c 08 10 bc 17 	vmovups xmm23,XMMWORD PTR [rdi+rdx*1+0x78]
  ad5d35:	78 00 00 00 
  ad5d39:	62 61 ff 08 10 54 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x88]
  ad5d40:	11 
  ad5d41:	62 93 7d 28 18 e2 01 	vinsertf32x4 ymm4,ymm0,xmm26,0x1
  ad5d48:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  ad5d4e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  ad5d54:	62 f1 64 00 c6 d2 dd 	vshufps xmm2,xmm19,xmm2,0xdd
  ad5d5b:	62 e1 44 00 c6 dc 88 	vshufps xmm19,xmm23,xmm4,0x88
  ad5d62:	62 f1 44 00 c6 e4 dd 	vshufps xmm4,xmm23,xmm4,0xdd
  ad5d69:	62 a1 24 28 5c f8    	vsubps ymm23,ymm11,ymm16
  ad5d6f:	c4 41 18 c6 e5 88    	vshufps xmm12,xmm12,xmm13,0x88
  ad5d75:	62 71 5c 20 5c eb    	vsubps ymm13,ymm20,ymm3
  ad5d7b:	62 31 0c 08 c6 f1 88 	vshufps xmm14,xmm14,xmm17,0x88
  ad5d82:	62 a1 4c 20 5c cb    	vsubps ymm17,ymm22,ymm19
  ad5d88:	62 31 2c 08 c6 d5 dd 	vshufps xmm10,xmm10,xmm21,0xdd
  ad5d8f:	62 e1 6c 28 5c ec    	vsubps ymm21,ymm2,ymm4
  ad5d95:	62 31 04 08 c6 fa dd 	vshufps xmm15,xmm15,xmm18,0xdd
  ad5d9c:	62 a1 74 20 58 d5    	vaddps ymm18,ymm17,ymm21
  ad5da2:	62 a1 54 20 5c c9    	vsubps ymm17,ymm21,ymm17
  ad5da8:	62 c1 44 20 5c ed    	vsubps ymm21,ymm23,ymm13
  ad5dae:	62 31 14 28 58 ef    	vaddps ymm13,ymm13,ymm23
  ad5db4:	62 c1 4c 28 5c f8    	vsubps ymm23,ymm6,ymm8
  ad5dba:	c5 3c 58 c6          	vaddps ymm8,ymm8,ymm6
  ad5dbe:	62 41 2c 28 5c d7    	vsubps ymm26,ymm10,ymm15
  ad5dc4:	c4 41 2c 58 d7       	vaddps ymm10,ymm10,ymm15
  ad5dc9:	62 f1 5c 20 58 db    	vaddps ymm3,ymm20,ymm3
  ad5dcf:	62 31 4c 20 58 fb    	vaddps ymm15,ymm22,ymm19
  ad5dd5:	62 c1 1c 28 5c de    	vsubps ymm19,ymm12,ymm14
  ad5ddb:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  ad5de0:	c4 41 44 5c f1       	vsubps ymm14,ymm7,ymm9
  ad5de5:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  ad5de9:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  ad5ded:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  ad5df3:	62 d1 44 20 5c f6    	vsubps ymm6,ymm23,ymm14
  ad5df9:	62 71 54 20 59 d9    	vmulps ymm11,ymm21,ymm1
  ad5dff:	62 e1 6c 20 59 c1    	vmulps ymm16,ymm18,ymm1
  ad5e05:	62 f1 74 20 59 f9    	vmulps ymm7,ymm17,ymm1
  ad5e0b:	c5 14 59 e9          	vmulps ymm13,ymm13,ymm1
  ad5e0f:	62 31 0c 28 58 f7    	vaddps ymm14,ymm14,ymm23
  ad5e15:	62 c1 44 28 58 cd    	vaddps ymm17,ymm7,ymm13
  ad5e1b:	c4 41 44 5c ed       	vsubps ymm13,ymm7,ymm13
  ad5e20:	62 81 64 20 5c d2    	vsubps ymm18,ymm19,ymm26
  ad5e26:	62 81 64 20 58 da    	vaddps ymm19,ymm19,ymm26
  ad5e2c:	62 b1 24 28 5c f8    	vsubps ymm7,ymm11,ymm16
  ad5e32:	62 51 7c 20 58 db    	vaddps ymm11,ymm16,ymm11
  ad5e38:	62 c1 3c 28 5c c2    	vsubps ymm16,ymm8,ymm10
  ad5e3e:	c4 41 3c 58 c2       	vaddps ymm8,ymm8,ymm10
  ad5e43:	c5 6c 5c d4          	vsubps ymm10,ymm2,ymm4
  ad5e47:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  ad5e4b:	c4 c1 1c 5c e1       	vsubps ymm4,ymm12,ymm9
  ad5e50:	c4 41 1c 58 c9       	vaddps ymm9,ymm12,ymm9
  ad5e55:	c4 41 64 5c e7       	vsubps ymm12,ymm3,ymm15
  ad5e5a:	c5 84 58 db          	vaddps ymm3,ymm15,ymm3
  ad5e5e:	c5 34 58 fb          	vaddps ymm15,ymm9,ymm3
  ad5e62:	c5 b0 5c db          	vsubps xmm3,xmm9,xmm3
  ad5e66:	c4 e3 05 18 db 01    	vinsertf128 ymm3,ymm15,xmm3,0x1
  ad5e6c:	62 51 64 20 58 cb    	vaddps ymm9,ymm19,ymm11
  ad5e72:	62 51 64 00 5c db    	vsubps xmm11,xmm19,xmm11
  ad5e78:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  ad5e7e:	c5 2c 58 dc          	vaddps ymm11,ymm10,ymm4
  ad5e82:	c4 c1 58 5c e2       	vsubps xmm4,xmm4,xmm10
  ad5e87:	c4 e3 25 18 e4 01    	vinsertf128 ymm4,ymm11,xmm4,0x1
  ad5e8d:	62 31 6c 20 58 d1    	vaddps ymm10,ymm18,ymm17
  ad5e93:	62 31 6c 00 5c d9    	vsubps xmm11,xmm18,xmm17
  ad5e99:	c4 43 2d 18 d3 01    	vinsertf128 ymm10,ymm10,xmm11,0x1
  ad5e9f:	c5 65 15 dc          	vunpckhpd ymm11,ymm3,ymm4
  ad5ea3:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  ad5ea7:	c4 c1 35 15 e2       	vunpckhpd ymm4,ymm9,ymm10
  ad5eac:	c5 a4 c6 e4 88       	vshufps ymm4,ymm11,ymm4,0x88
  ad5eb1:	c4 41 35 14 ca       	vunpcklpd ymm9,ymm9,ymm10
  ad5eb6:	c4 41 64 c6 d1 88    	vshufps ymm10,ymm3,ymm9,0x88
  ad5ebc:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  ad5ec2:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  ad5ec6:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  ad5eca:	c4 e3 35 18 d2 01    	vinsertf128 ymm2,ymm9,xmm2,0x1
  ad5ed0:	c4 41 0c 58 c5       	vaddps ymm8,ymm14,ymm13
  ad5ed5:	c4 41 08 5c cd       	vsubps xmm9,xmm14,xmm13
  ad5eda:	c4 43 3d 18 c1 01    	vinsertf128 ymm8,ymm8,xmm9,0x1
  ad5ee0:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  ad5ee6:	62 51 7c 00 5c dc    	vsubps xmm11,xmm16,xmm12
  ad5eec:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  ad5ef2:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  ad5ef6:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ad5efc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ad5f01:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ad5f06:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  ad5f0a:	c4 e3 25 18 f6 01    	vinsertf128 ymm6,ymm11,xmm6,0x1
  ad5f10:	c4 c1 6d 15 f9       	vunpckhpd ymm7,ymm2,ymm9
  ad5f15:	c4 c1 6d 14 d1       	vunpcklpd ymm2,ymm2,ymm9
  ad5f1a:	c5 3d 15 ce          	vunpckhpd ymm9,ymm8,ymm6
  ad5f1e:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  ad5f24:	c5 bd 14 f6          	vunpcklpd ymm6,ymm8,ymm6
  ad5f28:	c5 6c c6 c6 88       	vshufps ymm8,ymm2,ymm6,0x88
  ad5f2d:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ad5f33:	c5 ec c6 d6 dd       	vshufps ymm2,ymm2,ymm6,0xdd
  ad5f38:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ad5f3d:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  ad5f42:	c5 fc 10 79 40       	vmovups ymm7,YMMWORD PTR [rcx+0x40]
  ad5f47:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  ad5f4c:	c5 6c 59 df          	vmulps ymm11,ymm2,ymm7
  ad5f50:	c4 42 65 b8 d9       	vfmadd231ps ymm11,ymm3,ymm9
  ad5f55:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  ad5f59:	c5 fc 10 b9 80 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0x80]
  ad5f60:	00 
  ad5f61:	c4 c2 6d bc d9       	vfnmadd231ps ymm3,ymm2,ymm9
  ad5f66:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  ad5f6d:	00 
  ad5f6e:	c5 4c 59 cf          	vmulps ymm9,ymm6,ymm7
  ad5f72:	c4 62 5d b8 ca       	vfmadd231ps ymm9,ymm4,ymm2
  ad5f77:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  ad5f7b:	c4 c1 24 58 f9       	vaddps ymm7,ymm11,ymm9
  ad5f80:	c4 e2 4d bc e2       	vfnmadd231ps ymm4,ymm6,ymm2
  ad5f85:	62 91 7c 28 28 d1    	vmovaps ymm2,ymm25
  ad5f8b:	c4 c2 45 ac d0       	vfnmadd213ps ymm2,ymm7,ymm8
  ad5f90:	c5 e4 5c f4          	vsubps ymm6,ymm3,ymm4
  ad5f94:	62 91 4c 28 59 f0    	vmulps ymm6,ymm6,ymm24
  ad5f9a:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  ad5f9e:	c5 ec 58 e6          	vaddps ymm4,ymm2,ymm6
  ad5fa2:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  ad5fa7:	62 11 7c 28 28 d9    	vmovaps ymm11,ymm25
  ad5fad:	c4 42 65 ac da       	vfnmadd213ps ymm11,ymm3,ymm10
  ad5fb2:	62 11 34 28 59 c8    	vmulps ymm9,ymm9,ymm24
  ad5fb8:	c5 ec 5c d6          	vsubps ymm2,ymm2,ymm6
  ad5fbc:	c4 c1 24 5c f1       	vsubps ymm6,ymm11,ymm9
  ad5fc1:	c4 41 24 58 c9       	vaddps ymm9,ymm11,ymm9
  ad5fc6:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  ad5fca:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  ad5fce:	c5 7c 28 c3          	vmovaps ymm8,ymm3
  ad5fd2:	62 72 25 20 7f c7    	vpermt2ps ymm8,ymm27,ymm7
  ad5fd8:	62 f2 55 28 7f df    	vpermt2ps ymm3,ymm5,ymm7
  ad5fde:	c5 fc 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm3
  ad5fe3:	c5 7c 11 44 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm8
  ad5fe9:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  ad5fed:	62 f2 25 20 7f da    	vpermt2ps ymm3,ymm27,ymm2
  ad5ff3:	62 72 55 28 7f ca    	vpermt2ps ymm9,ymm5,ymm2
  ad5ff9:	c5 7c 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm9
  ad5fff:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  ad6005:	c5 fc 28 d6          	vmovaps ymm2,ymm6
  ad6009:	62 f2 25 20 7f d4    	vpermt2ps ymm2,ymm27,ymm4
  ad600f:	62 f2 55 28 7f f4    	vpermt2ps ymm6,ymm5,ymm4
  ad6015:	c5 fc 11 b4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm6
  ad601c:	00 00 
  ad601e:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  ad6025:	00 00 
  ad6027:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  ad602e:	48 39 d0             	cmp    rax,rdx
  ad6031:	0f 85 c9 fb ff ff    	jne    ad5c00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  ad6037:	c5 f8 77             	vzeroupper
  ad603a:	c3                   	ret
