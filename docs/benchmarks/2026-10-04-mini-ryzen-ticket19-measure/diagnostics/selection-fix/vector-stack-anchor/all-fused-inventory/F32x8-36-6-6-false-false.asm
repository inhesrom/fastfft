
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c6b40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c6b40:	48 83 ec 28          	sub    rsp,0x28
  6c6b44:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  6c6b48:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  6c6b4d:	c5 7c 10 4f 30       	vmovups ymm9,YMMWORD PTR [rdi+0x30]
  6c6b52:	c5 f8 10 57 50       	vmovups xmm2,XMMWORD PTR [rdi+0x50]
  6c6b57:	c5 fc 10 77 60       	vmovups ymm6,YMMWORD PTR [rdi+0x60]
  6c6b5c:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  6c6b63:	00 
  6c6b64:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  6c6b6b:	00 
  6c6b6c:	c5 78 10 a7 b0 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0xb0]
  6c6b73:	00 
  6c6b74:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  6c6b7b:	00 
  6c6b7c:	c5 78 10 b7 e0 00 00 	vmovups xmm14,XMMWORD PTR [rdi+0xe0]
  6c6b83:	00 
  6c6b84:	c5 7c 10 bf f0 00 00 	vmovups ymm15,YMMWORD PTR [rdi+0xf0]
  6c6b8b:	00 
  6c6b8c:	c5 f8 10 8f 10 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x110]
  6c6b93:	00 
  6c6b94:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  6c6b99:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  6c6b9f:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6c6ba5:	c5 cc c6 df 88       	vshufps ymm3,ymm6,ymm7,0x88
  6c6baa:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  6c6bb0:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  6c6bb5:	c4 c1 14 c6 de 88    	vshufps ymm3,ymm13,ymm14,0x88
  6c6bbb:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  6c6bc1:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  6c6bc7:	c4 41 2c c6 c4 88    	vshufps ymm8,ymm10,ymm12,0x88
  6c6bcd:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6c6bd3:	c5 5c c6 dd dd       	vshufps ymm11,ymm4,ymm5,0xdd
  6c6bd8:	c5 84 c6 e1 88       	vshufps ymm4,ymm15,ymm1,0x88
  6c6bdd:	c4 e3 fd 01 dc d8    	vpermpd ymm3,ymm4,0xd8
  6c6be3:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  6c6be9:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  6c6bee:	c5 b4 c6 ea 88       	vshufps ymm5,ymm9,ymm2,0x88
  6c6bf3:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  6c6bf9:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6c6bff:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6c6c05:	c4 e3 fd 01 e6 d8    	vpermpd ymm4,ymm6,0xd8
  6c6c0b:	c4 c1 14 c6 f6 dd    	vshufps ymm6,ymm13,ymm14,0xdd
  6c6c11:	c4 63 fd 01 f6 d8    	vpermpd ymm14,ymm6,0xd8
  6c6c17:	c4 c1 2c c6 f4 dd    	vshufps ymm6,ymm10,ymm12,0xdd
  6c6c1d:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  6c6c23:	c5 84 c6 c9 dd       	vshufps ymm1,ymm15,ymm1,0xdd
  6c6c28:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6c6c2e:	c5 b4 c6 d2 dd       	vshufps ymm2,ymm9,ymm2,0xdd
  6c6c33:	c4 63 fd 01 e2 d8    	vpermpd ymm12,ymm2,0xd8
  6c6c39:	c5 7c 10 0c 24       	vmovups ymm9,YMMWORD PTR [rsp]
  6c6c3e:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  6c6c44:	c5 b4 58 fd          	vaddps ymm7,ymm9,ymm5
  6c6c48:	c5 7c 10 6c 24 a0    	vmovups ymm13,YMMWORD PTR [rsp-0x60]
  6c6c4e:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  6c6c52:	c5 e4 58 f0          	vaddps ymm6,ymm3,ymm0
  6c6c56:	c4 e2 7d 18 05 01 e8 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ae801]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6c5d:	9a ff 
  6c6c5f:	c4 c2 7d ac fd       	vfnmadd213ps ymm7,ymm0,ymm13
  6c6c64:	c5 0c 58 ec          	vaddps ymm13,ymm14,ymm4
  6c6c68:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  6c6c6d:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  6c6c71:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  6c6c77:	c4 c2 7d ac f0       	vfnmadd213ps ymm6,ymm0,ymm8
  6c6c7c:	c5 1c 58 c1          	vaddps ymm8,ymm12,ymm1
  6c6c80:	c4 41 74 5c fc       	vsubps ymm15,ymm1,ymm12
  6c6c85:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  6c6c8a:	c4 42 7d ac eb       	vfnmadd213ps ymm13,ymm0,ymm11
  6c6c8f:	c5 6c 58 e3          	vaddps ymm12,ymm2,ymm3
  6c6c93:	c5 b4 5c dd          	vsubps ymm3,ymm9,ymm5
  6c6c97:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  6c6c9c:	c4 42 7d ac c2       	vfnmadd213ps ymm8,ymm0,ymm10
  6c6ca1:	c4 e2 7d 18 05 2a e6 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ae62a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6ca8:	9a ff 
  6c6caa:	c5 0c 59 d0          	vmulps ymm10,ymm14,ymm0
  6c6cae:	c5 fc 10 64 24 c0    	vmovups ymm4,YMMWORD PTR [rsp-0x40]
  6c6cb4:	c5 dc 5c 64 24 80    	vsubps ymm4,ymm4,YMMWORD PTR [rsp-0x80]
  6c6cba:	c5 ac 58 ef          	vaddps ymm5,ymm10,ymm7
  6c6cbe:	c5 04 59 f0          	vmulps ymm14,ymm15,ymm0
  6c6cc2:	c4 41 44 5c d2       	vsubps ymm10,ymm7,ymm10
  6c6cc7:	c5 0c 58 fe          	vaddps ymm15,ymm14,ymm6
  6c6ccb:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  6c6ccf:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  6c6cd3:	c4 41 4c 5c f6       	vsubps ymm14,ymm6,ymm14
  6c6cd8:	c5 94 5c c3          	vsubps ymm0,ymm13,ymm3
  6c6cdc:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  6c6ce0:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  6c6ce4:	c5 3c 5c ec          	vsubps ymm13,ymm8,ymm4
  6c6ce8:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  6c6cec:	c5 a4 58 e1          	vaddps ymm4,ymm11,ymm1
  6c6cf0:	c5 ec 5c 74 24 a0    	vsubps ymm6,ymm2,YMMWORD PTR [rsp-0x60]
  6c6cf6:	c4 c1 54 5c d7       	vsubps ymm2,ymm5,ymm15
  6c6cfb:	c4 c1 74 5c cb       	vsubps ymm1,ymm1,ymm11
  6c6d00:	c4 41 7c 5c c5       	vsubps ymm8,ymm0,ymm13
  6c6d05:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  6c6d09:	c4 41 2c 58 fe       	vaddps ymm15,ymm10,ymm14
  6c6d0e:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  6c6d12:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  6c6d16:	c4 41 2c 5c ce       	vsubps ymm9,ymm10,ymm14
  6c6d1b:	c5 64 5c ef          	vsubps ymm13,ymm3,ymm7
  6c6d1f:	c4 e3 1d 18 fd 01    	vinsertf128 ymm7,ymm12,xmm5,0x1
  6c6d25:	c4 e3 1d 06 dd 31    	vperm2f128 ymm3,ymm12,ymm5,0x31
  6c6d2b:	c4 c3 6d 18 e9 01    	vinsertf128 ymm5,ymm2,xmm9,0x1
  6c6d31:	c4 c3 6d 06 d1 31    	vperm2f128 ymm2,ymm2,ymm9,0x31
  6c6d37:	c5 64 14 e2          	vunpcklps ymm12,ymm3,ymm2
  6c6d3b:	c4 41 78 28 cf       	vmovaps xmm9,xmm15
  6c6d40:	c5 78 28 d6          	vmovaps xmm10,xmm6
  6c6d44:	c5 c4 14 dd          	vunpcklps ymm3,ymm7,ymm5
  6c6d48:	c4 41 34 14 f2       	vunpcklps ymm14,ymm9,ymm10
  6c6d4d:	c4 c1 65 14 d6       	vunpcklpd ymm2,ymm3,ymm14
  6c6d52:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  6c6d58:	c4 c1 65 15 de       	vunpckhpd ymm3,ymm3,ymm14
  6c6d5d:	c5 c4 15 ed          	vunpckhps ymm5,ymm7,ymm5
  6c6d61:	c4 c1 34 15 fa       	vunpckhps ymm7,ymm9,ymm10
  6c6d66:	c5 55 14 cf          	vunpcklpd ymm9,ymm5,ymm7
  6c6d6a:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  6c6d6e:	c4 63 7d 19 ff 01    	vextractf128 xmm7,ymm15,0x1
  6c6d74:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c6d7a:	c5 c4 14 f6          	vunpcklps ymm6,ymm7,ymm6
  6c6d7e:	c5 1d 14 d6          	vunpcklpd ymm10,ymm12,ymm6
  6c6d82:	c5 9d 15 f6          	vunpckhpd ymm6,ymm12,ymm6
  6c6d86:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  6c6d8c:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  6c6d92:	c4 43 3d 18 e5 01    	vinsertf128 ymm12,ymm8,xmm13,0x1
  6c6d98:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  6c6d9e:	c5 fc 14 c4          	vunpcklps ymm0,ymm0,ymm4
  6c6da2:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  6c6da7:	c5 78 28 f1          	vmovaps xmm14,xmm1
  6c6dab:	c4 41 44 14 c4       	vunpcklps ymm8,ymm7,ymm12
  6c6db0:	c4 41 14 14 fe       	vunpcklps ymm15,ymm13,ymm14
  6c6db5:	c4 c1 3d 14 e7       	vunpcklpd ymm4,ymm8,ymm15
  6c6dba:	c4 41 3d 15 c7       	vunpckhpd ymm8,ymm8,ymm15
  6c6dbf:	c4 c1 44 15 fc       	vunpckhps ymm7,ymm7,ymm12
  6c6dc4:	c4 41 14 15 ee       	vunpckhps ymm13,ymm13,ymm14
  6c6dc9:	c4 41 45 14 e5       	vunpcklpd ymm12,ymm7,ymm13
  6c6dce:	c4 41 45 15 f5       	vunpckhpd ymm14,ymm7,ymm13
  6c6dd3:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  6c6dd9:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6c6ddf:	c5 c4 14 c9          	vunpcklps ymm1,ymm7,ymm1
  6c6de3:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  6c6de7:	c5 7d 15 f9          	vunpckhpd ymm15,ymm0,ymm1
  6c6deb:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  6c6df2:	00 
  6c6df3:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  6c6dfa:	00 
  6c6dfb:	c5 b4 59 f8          	vmulps ymm7,ymm9,ymm0
  6c6dff:	c4 e2 1d bc f9       	vfnmadd231ps ymm7,ymm12,ymm1
  6c6e04:	c5 1c 59 d8          	vmulps ymm11,ymm12,ymm0
  6c6e08:	c4 62 35 b8 d9       	vfmadd231ps ymm11,ymm9,ymm1
  6c6e0d:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  6c6e14:	00 
  6c6e15:	c5 fc 10 8a 20 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x120]
  6c6e1c:	00 
  6c6e1d:	c5 2c 59 e0          	vmulps ymm12,ymm10,ymm0
  6c6e21:	c4 62 15 bc e1       	vfnmadd231ps ymm12,ymm13,ymm1
  6c6e26:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  6c6e2a:	c4 62 2d b8 e9       	vfmadd231ps ymm13,ymm10,ymm1
  6c6e2f:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  6c6e36:	00 
  6c6e37:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  6c6e3e:	00 
  6c6e3f:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  6c6e43:	c4 62 0d bc d1       	vfnmadd231ps ymm10,ymm14,ymm1
  6c6e48:	c5 0c 59 c8          	vmulps ymm9,ymm14,ymm0
  6c6e4c:	c4 62 55 b8 c9       	vfmadd231ps ymm9,ymm5,ymm1
  6c6e51:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  6c6e58:	00 
  6c6e59:	c5 fc 10 8a 60 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x160]
  6c6e60:	00 
  6c6e61:	c5 7c 59 f6          	vmulps ymm14,ymm0,ymm6
  6c6e65:	c4 62 05 bc f1       	vfnmadd231ps ymm14,ymm15,ymm1
  6c6e6a:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  6c6e6e:	c4 62 4d b8 f9       	vfmadd231ps ymm15,ymm6,ymm1
  6c6e73:	c5 fc 10 4a 40       	vmovups ymm1,YMMWORD PTR [rdx+0x40]
  6c6e78:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  6c6e7d:	c5 f4 59 d3          	vmulps ymm2,ymm1,ymm3
  6c6e81:	c4 e2 3d bc d5       	vfnmadd231ps ymm2,ymm8,ymm5
  6c6e86:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6c6e8a:	c4 e2 65 b8 cd       	vfmadd231ps ymm1,ymm3,ymm5
  6c6e8f:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  6c6e93:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  6c6e99:	c5 cc 58 d8          	vaddps ymm3,ymm6,ymm0
  6c6e9d:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  6c6ea3:	c4 e2 7d 18 1d b4 e5 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9ae5b4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6eaa:	9a ff 
  6c6eac:	c4 e2 65 ac f0       	vfnmadd213ps ymm6,ymm3,ymm0
  6c6eb1:	c5 8c 58 ea          	vaddps ymm5,ymm14,ymm2
  6c6eb5:	c5 ac 58 c5          	vaddps ymm0,ymm10,ymm5
  6c6eb9:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6c6ebf:	c4 62 65 bc d5       	vfnmadd231ps ymm10,ymm3,ymm5
  6c6ec4:	c4 c1 24 58 c5       	vaddps ymm0,ymm11,ymm13
  6c6ec9:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  6c6ecd:	c4 e2 65 ac c4       	vfnmadd213ps ymm0,ymm3,ymm4
  6c6ed2:	c5 84 58 e1          	vaddps ymm4,ymm15,ymm1
  6c6ed6:	c5 34 58 c4          	vaddps ymm8,ymm9,ymm4
  6c6eda:	c4 e2 7d 18 1d 7d e5 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9ae57d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6ee1:	9a ff 
  6c6ee3:	c4 62 5d bc cb       	vfnmadd231ps ymm9,ymm4,ymm3
  6c6ee8:	c4 c1 24 5c e5       	vsubps ymm4,ymm11,ymm13
  6c6eed:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  6c6ef1:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  6c6ef6:	c4 62 7d 18 2d d5 e3 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff9ae3d5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6efd:	9a ff 
  6c6eff:	c5 94 59 e4          	vmulps ymm4,ymm13,ymm4
  6c6f03:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  6c6f07:	c5 4c 58 dc          	vaddps ymm11,ymm6,ymm4
  6c6f0b:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  6c6f0f:	c5 14 59 e7          	vmulps ymm12,ymm13,ymm7
  6c6f13:	c5 94 59 d2          	vmulps ymm2,ymm13,ymm2
  6c6f17:	c5 2c 58 e9          	vaddps ymm13,ymm10,ymm1
  6c6f1b:	c5 4c 5c f4          	vsubps ymm14,ymm6,ymm4
  6c6f1f:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  6c6f24:	c5 ac 5c c9          	vsubps ymm1,ymm10,ymm1
  6c6f28:	c4 c1 7c 5c f4       	vsubps ymm6,ymm0,ymm12
  6c6f2d:	c5 1c 58 d0          	vaddps ymm10,ymm12,ymm0
  6c6f31:	c5 b4 5c c2          	vsubps ymm0,ymm9,ymm2
  6c6f35:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  6c6f39:	c5 4c 5c e0          	vsubps ymm12,ymm6,ymm0
  6c6f3d:	c4 c1 24 58 e5       	vaddps ymm4,ymm11,ymm13
  6c6f42:	c5 0c 58 d9          	vaddps ymm11,ymm14,ymm1
  6c6f46:	c5 cc 58 f0          	vaddps ymm6,ymm6,ymm0
  6c6f4a:	c5 2c 58 ea          	vaddps ymm13,ymm10,ymm2
  6c6f4e:	c5 8c 5c c1          	vsubps ymm0,ymm14,ymm1
  6c6f52:	c5 7c 10 74 24 c0    	vmovups ymm14,YMMWORD PTR [rsp-0x40]
  6c6f58:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  6c6f5e:	c5 0c 5c cb          	vsubps ymm9,ymm14,ymm3
  6c6f62:	c5 ac 5c ca          	vsubps ymm1,ymm10,ymm2
  6c6f66:	c4 c1 54 5c d0       	vsubps ymm2,ymm5,ymm8
  6c6f6b:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  6c6f6f:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  6c6f73:	c5 64 14 c5          	vunpcklps ymm8,ymm3,ymm5
  6c6f77:	c5 60 14 d5          	vunpcklps xmm10,xmm3,xmm5
  6c6f7b:	c5 e0 15 dd          	vunpckhps xmm3,xmm3,xmm5
  6c6f7f:	c5 f8 11 5e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm3
  6c6f84:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  6c6f88:	c4 63 7d 19 46 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm8,0x1
  6c6f8f:	c4 c1 44 14 dc       	vunpcklps ymm3,ymm7,ymm12
  6c6f94:	c4 c1 40 14 ec       	vunpcklps xmm5,xmm7,xmm12
  6c6f99:	c4 c1 40 15 fc       	vunpckhps xmm7,xmm7,xmm12
  6c6f9e:	c5 f8 11 7e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm7
  6c6fa3:	c5 f8 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm5
  6c6fa8:	c4 e3 7d 19 5e 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm3,0x1
  6c6faf:	c4 c1 24 14 dd       	vunpcklps ymm3,ymm11,ymm13
  6c6fb4:	c4 c1 20 14 ed       	vunpcklps xmm5,xmm11,xmm13
  6c6fb9:	c4 c1 20 15 fd       	vunpckhps xmm7,xmm11,xmm13
  6c6fbe:	c5 f8 11 7e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm7
  6c6fc3:	c5 f8 11 6e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm5
  6c6fc8:	c4 e3 7d 19 9e 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm3,0x1
  6c6fcf:	00 00 01 
  6c6fd2:	c5 b4 14 da          	vunpcklps ymm3,ymm9,ymm2
  6c6fd6:	c5 b0 14 ea          	vunpcklps xmm5,xmm9,xmm2
  6c6fda:	c5 b0 15 d2          	vunpckhps xmm2,xmm9,xmm2
  6c6fde:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6c6fe5:	00 
  6c6fe6:	c5 f8 11 ae 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm5
  6c6fed:	00 
  6c6fee:	c4 e3 7d 19 9e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm3,0x1
  6c6ff5:	00 00 01 
  6c6ff8:	c5 dc 14 d6          	vunpcklps ymm2,ymm4,ymm6
  6c6ffc:	c5 d8 14 de          	vunpcklps xmm3,xmm4,xmm6
  6c7000:	c5 d8 15 e6          	vunpckhps xmm4,xmm4,xmm6
  6c7004:	c5 f8 11 a6 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm4
  6c700b:	00 
  6c700c:	c5 f8 11 9e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm3
  6c7013:	00 
  6c7014:	c4 e3 7d 19 96 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm2,0x1
  6c701b:	00 00 01 
  6c701e:	c5 fc 14 d1          	vunpcklps ymm2,ymm0,ymm1
  6c7022:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6c7026:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6c702a:	c5 f8 11 86 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm0
  6c7031:	00 
  6c7032:	c5 f8 11 9e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm3
  6c7039:	00 
  6c703a:	c4 e3 7d 19 96 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm2,0x1
  6c7041:	00 00 01 
  6c7044:	48 83 c4 28          	add    rsp,0x28
  6c7048:	c5 f8 77             	vzeroupper
  6c704b:	c3                   	ret
