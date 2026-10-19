
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006d4cc0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6d4cc0:	55                   	push   rbp
  6d4cc1:	48 89 e5             	mov    rbp,rsp
  6d4cc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6d4cc8:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  6d4ccf:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  6d4cd6:	00 
  6d4cd7:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  6d4cde:	00 
  6d4cdf:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  6d4ce4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  6d4ce9:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  6d4ced:	c5 f8 10 7f 10       	vmovups xmm7,XMMWORD PTR [rdi+0x10]
  6d4cf2:	c5 f8 10 67 20       	vmovups xmm4,XMMWORD PTR [rdi+0x20]
  6d4cf7:	c5 f8 10 4f 30       	vmovups xmm1,XMMWORD PTR [rdi+0x30]
  6d4cfc:	c5 c8 c6 c7 88       	vshufps xmm0,xmm6,xmm7,0x88
  6d4d01:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6d4d07:	c5 78 10 57 50       	vmovups xmm10,XMMWORD PTR [rdi+0x50]
  6d4d0c:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  6d4d11:	c4 c1 30 c6 d2 88    	vshufps xmm2,xmm9,xmm10,0x88
  6d4d17:	c5 78 10 9f 90 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0x90]
  6d4d1e:	00 
  6d4d1f:	c5 78 10 a7 80 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x80]
  6d4d26:	00 
  6d4d27:	c4 c1 18 c6 db 88    	vshufps xmm3,xmm12,xmm11,0x88
  6d4d2d:	c5 78 10 77 70       	vmovups xmm14,XMMWORD PTR [rdi+0x70]
  6d4d32:	c5 78 10 7f 60       	vmovups xmm15,XMMWORD PTR [rdi+0x60]
  6d4d37:	c4 c1 00 c6 ee 88    	vshufps xmm5,xmm15,xmm14,0x88
  6d4d3d:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  6d4d44:	00 
  6d4d45:	c5 78 10 87 a0 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xa0]
  6d4d4c:	00 
  6d4d4d:	c5 48 c6 ef dd       	vshufps xmm13,xmm6,xmm7,0xdd
  6d4d52:	c5 b8 c6 f0 88       	vshufps xmm6,xmm8,xmm0,0x88
  6d4d57:	c4 41 30 c6 d2 dd    	vshufps xmm10,xmm9,xmm10,0xdd
  6d4d5d:	c5 d8 c6 f9 88       	vshufps xmm7,xmm4,xmm1,0x88
  6d4d62:	c4 41 18 c6 db dd    	vshufps xmm11,xmm12,xmm11,0xdd
  6d4d68:	c4 41 00 c6 f6 dd    	vshufps xmm14,xmm15,xmm14,0xdd
  6d4d6e:	c5 38 c6 f8 dd       	vshufps xmm15,xmm8,xmm0,0xdd
  6d4d73:	c5 d8 c6 c1 dd       	vshufps xmm0,xmm4,xmm1,0xdd
  6d4d78:	c5 6c 58 c3          	vaddps ymm8,ymm2,ymm3
  6d4d7c:	c5 fc 28 64 24 20    	vmovaps ymm4,YMMWORD PTR [rsp+0x20]
  6d4d82:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  6d4d86:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6d4d8c:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  6d4d90:	c4 62 7d 18 25 c7 06 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff9a06c7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6d4d97:	9a ff 
  6d4d99:	c4 62 1d ac c4       	vfnmadd213ps ymm8,ymm12,ymm4
  6d4d9e:	c5 b4 58 cd          	vaddps ymm1,ymm9,ymm5
  6d4da2:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6d4da8:	c4 62 1d ac cd       	vfnmadd213ps ymm9,ymm12,ymm5
  6d4dad:	c4 c1 2c 58 cb       	vaddps ymm1,ymm10,ymm11
  6d4db2:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  6d4db6:	c5 fc 29 64 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm4
  6d4dbc:	c4 c2 1d ac cd       	vfnmadd213ps ymm1,ymm12,ymm13
  6d4dc1:	c5 84 58 e0          	vaddps ymm4,ymm15,ymm0
  6d4dc5:	c4 42 5d ac e6       	vfnmadd213ps ymm12,ymm4,ymm14
  6d4dca:	c5 8c 58 e4          	vaddps ymm4,ymm14,ymm4
  6d4dce:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  6d4dd3:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  6d4dd7:	c5 ec 5c db          	vsubps ymm3,ymm2,ymm3
  6d4ddb:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  6d4ddf:	c4 e2 7d 18 3d ec 04 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9a04ec]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6d4de6:	9a ff 
  6d4de8:	c5 2c 59 d7          	vmulps ymm10,ymm10,ymm7
  6d4dec:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  6d4df0:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  6d4df4:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  6d4df8:	c4 c1 3c 58 fa       	vaddps ymm7,ymm8,ymm10
  6d4dfd:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  6d4e02:	c5 34 58 d0          	vaddps ymm10,ymm9,ymm0
  6d4e06:	c5 34 5c c8          	vsubps ymm9,ymm9,ymm0
  6d4e0a:	c5 74 5c db          	vsubps ymm11,ymm1,ymm3
  6d4e0e:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  6d4e12:	c5 1c 5c ee          	vsubps ymm13,ymm12,ymm6
  6d4e16:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  6d4e1a:	c4 c1 44 5c ca       	vsubps ymm1,ymm7,ymm10
  6d4e1f:	c5 a8 58 df          	vaddps xmm3,xmm10,xmm7
  6d4e23:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  6d4e29:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  6d4e2f:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6d4e33:	c4 e3 45 18 fb 01    	vinsertf128 ymm7,ymm7,xmm3,0x1
  6d4e39:	c4 c1 38 5c d9       	vsubps xmm3,xmm8,xmm9
  6d4e3e:	c4 63 75 18 d3 01    	vinsertf128 ymm10,ymm1,xmm3,0x1
  6d4e44:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  6d4e49:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  6d4e4d:	c4 c1 44 14 da       	vunpcklps ymm3,ymm7,ymm10
  6d4e52:	c5 bc 14 ea          	vunpcklps ymm5,ymm8,ymm2
  6d4e56:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  6d4e5a:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  6d4e5e:	c4 c1 44 15 fa       	vunpckhps ymm7,ymm7,ymm10
  6d4e63:	c5 bc 15 d2          	vunpckhps ymm2,ymm8,ymm2
  6d4e67:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  6d4e6b:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  6d4e6f:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  6d4e74:	c4 41 20 58 c5       	vaddps xmm8,xmm11,xmm13
  6d4e79:	c5 7c 28 54 24 20    	vmovaps ymm10,YMMWORD PTR [rsp+0x20]
  6d4e7f:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  6d4e83:	c4 43 35 18 c0 01    	vinsertf128 ymm8,ymm9,xmm8,0x1
  6d4e89:	c5 78 5c ce          	vsubps xmm9,xmm0,xmm6
  6d4e8d:	c4 c3 45 18 f9 01    	vinsertf128 ymm7,ymm7,xmm9,0x1
  6d4e93:	c5 f8 58 f6          	vaddps xmm6,xmm0,xmm6
  6d4e97:	c5 a8 5c e4          	vsubps xmm4,xmm10,xmm4
  6d4e9b:	c5 3c 14 cf          	vunpcklps ymm9,ymm8,ymm7
  6d4e9f:	c5 4c 14 d4          	vunpcklps ymm10,ymm6,ymm4
  6d4ea3:	c4 c1 35 14 c2       	vunpcklpd ymm0,ymm9,ymm10
  6d4ea8:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  6d4ead:	c5 bc 15 ff          	vunpckhps ymm7,ymm8,ymm7
  6d4eb1:	c5 cc 15 e4          	vunpckhps ymm4,ymm6,ymm4
  6d4eb5:	c5 c5 14 f4          	vunpcklpd ymm6,ymm7,ymm4
  6d4eb9:	c5 c5 15 e4          	vunpckhpd ymm4,ymm7,ymm4
  6d4ebd:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  6d4ec4:	00 
  6d4ec5:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  6d4ecc:	00 
  6d4ecd:	c5 44 59 d5          	vmulps ymm10,ymm7,ymm5
  6d4ed1:	c4 42 4d bc d0       	vfnmadd231ps ymm10,ymm6,ymm8
  6d4ed6:	c5 c4 59 f6          	vmulps ymm6,ymm7,ymm6
  6d4eda:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  6d4edf:	c4 c2 55 b8 f0       	vfmadd231ps ymm6,ymm5,ymm8
  6d4ee4:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  6d4ee9:	c5 44 59 c3          	vmulps ymm8,ymm7,ymm3
  6d4eed:	c4 62 35 bc c5       	vfnmadd231ps ymm8,ymm9,ymm5
  6d4ef2:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6d4ef6:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  6d4efd:	00 
  6d4efe:	c4 e2 65 b8 fd       	vfmadd231ps ymm7,ymm3,ymm5
  6d4f03:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  6d4f0a:	00 
  6d4f0b:	c5 b4 59 ea          	vmulps ymm5,ymm9,ymm2
  6d4f0f:	c4 e2 5d bc eb       	vfnmadd231ps ymm5,ymm4,ymm3
  6d4f14:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  6d4f18:	c4 e2 6d b8 e3       	vfmadd231ps ymm4,ymm2,ymm3
  6d4f1d:	c5 ac 58 d1          	vaddps ymm2,ymm10,ymm1
  6d4f21:	c5 bc 58 dd          	vaddps ymm3,ymm8,ymm5
  6d4f25:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  6d4f2a:	c5 44 58 cc          	vaddps ymm9,ymm7,ymm4
  6d4f2e:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  6d4f32:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  6d4f36:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  6d4f3a:	c5 74 58 d4          	vaddps ymm10,ymm1,ymm4
  6d4f3e:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  6d4f43:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  6d4f47:	c5 f4 5c c4          	vsubps ymm0,ymm1,ymm4
  6d4f4b:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  6d4f4f:	c5 cc 5c e5          	vsubps ymm4,ymm6,ymm5
  6d4f53:	c4 c1 44 5c e9       	vsubps ymm5,ymm7,ymm9
  6d4f58:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6d4f5c:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  6d4f60:	c5 ec 14 f3          	vunpcklps ymm6,ymm2,ymm3
  6d4f64:	c5 e8 14 fb          	vunpcklps xmm7,xmm2,xmm3
  6d4f68:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  6d4f6c:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  6d4f71:	c5 f8 11 3e          	vmovups XMMWORD PTR [rsi],xmm7
  6d4f75:	c4 e3 7d 19 76 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm6,0x1
  6d4f7c:	c4 c1 2c 14 d0       	vunpcklps ymm2,ymm10,ymm8
  6d4f81:	c4 c1 28 15 d8       	vunpckhps xmm3,xmm10,xmm8
  6d4f86:	c4 c1 28 14 f0       	vunpcklps xmm6,xmm10,xmm8
  6d4f8b:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  6d4f90:	c5 f8 11 5e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm3
  6d4f95:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  6d4f9c:	c5 f4 14 d5          	vunpcklps ymm2,ymm1,ymm5
  6d4fa0:	c5 f0 15 dd          	vunpckhps xmm3,xmm1,xmm5
  6d4fa4:	c5 f0 14 cd          	vunpcklps xmm1,xmm1,xmm5
  6d4fa8:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  6d4fad:	c5 f8 11 5e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm3
  6d4fb2:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  6d4fb9:	00 00 01 
  6d4fbc:	c5 fc 14 cc          	vunpcklps ymm1,ymm0,ymm4
  6d4fc0:	c5 f8 15 d4          	vunpckhps xmm2,xmm0,xmm4
  6d4fc4:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  6d4fc8:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  6d4fcf:	00 
  6d4fd0:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6d4fd7:	00 
  6d4fd8:	c4 e3 7d 19 8e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm1,0x1
  6d4fdf:	00 00 01 
  6d4fe2:	48 89 ec             	mov    rsp,rbp
  6d4fe5:	5d                   	pop    rbp
  6d4fe6:	c5 f8 77             	vzeroupper
  6d4fe9:	c3                   	ret
