
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c6c80 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c6c80:	55                   	push   rbp
  6c6c81:	48 89 e5             	mov    rbp,rsp
  6c6c84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c6c88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6c6c8f:	48 c1 e2 04          	shl    rdx,0x4
  6c6c93:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6c6c97:	31 d2                	xor    edx,edx
  6c6c99:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6c6c9e:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6c6ca3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6c6caa:	84 00 00 00 00 00 
  6c6cb0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6c6cb5:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6c6cba:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6c6cbf:	c5 f8 10 4c 17 20    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x20]
  6c6cc5:	c5 fc 10 54 17 30    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x30]
  6c6ccb:	c5 f8 10 5c 17 50    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x50]
  6c6cd1:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  6c6cd7:	c5 f8 10 ac 17 80 00 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x80]
  6c6cde:	00 00 
  6c6ce0:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  6c6ce5:	c4 e3 fd 01 fe d8    	vpermpd ymm7,ymm6,0xd8
  6c6ceb:	c5 ec c6 f3 dd       	vshufps ymm6,ymm2,ymm3,0xdd
  6c6cf0:	c4 63 fd 01 c6 d8    	vpermpd ymm8,ymm6,0xd8
  6c6cf6:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  6c6cfb:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  6c6d01:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  6c6d06:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6c6d0c:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  6c6d11:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6c6d17:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  6c6d1c:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6c6d22:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  6c6d27:	c5 e4 58 e7          	vaddps ymm4,ymm3,ymm7
  6c6d2b:	c5 74 58 d2          	vaddps ymm10,ymm1,ymm2
  6c6d2f:	c5 ac 58 f0          	vaddps ymm6,ymm10,ymm0
  6c6d33:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6c6d37:	c4 e2 7d 18 2d 20 e7 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9ae720]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6d3e:	9a ff 
  6c6d40:	c4 e2 55 ac df       	vfnmadd213ps ymm3,ymm5,ymm7
  6c6d45:	c4 e2 7d 18 3d 86 e5 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9ae586]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6d4c:	9a ff 
  6c6d4e:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  6c6d52:	c4 62 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm0
  6c6d57:	c4 c1 3c 5c c1       	vsubps ymm0,ymm8,ymm9
  6c6d5c:	c5 e4 58 d1          	vaddps ymm2,ymm3,ymm1
  6c6d60:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  6c6d64:	c5 ac 5c e8          	vsubps ymm5,ymm10,ymm0
  6c6d68:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  6c6d6c:	c5 ac 58 f8          	vaddps ymm7,ymm10,ymm0
  6c6d70:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  6c6d74:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  6c6d7a:	c5 f8 28 e2          	vmovaps xmm4,xmm2
  6c6d7e:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  6c6d84:	c5 78 28 c9          	vmovaps xmm9,xmm1
  6c6d88:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6c6d8e:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  6c6d92:	c4 41 7d 15 d1       	vunpckhpd ymm10,ymm0,ymm9
  6c6d97:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  6c6d9c:	c5 fa 7e d2          	vmovq  xmm2,xmm2
  6c6da0:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c6da5:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  6c6daa:	c4 43 3d 0c c7 cc    	vblendps ymm8,ymm8,ymm15,0xcc
  6c6db0:	c5 fc c6 da 88       	vshufps ymm3,ymm0,ymm2,0x88
  6c6db5:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  6c6dba:	c5 ac c6 d4 88       	vshufps ymm2,ymm10,ymm4,0x88
  6c6dbf:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c6dc4:	c5 2c c6 cc dd       	vshufps ymm9,ymm10,ymm4,0xdd
  6c6dc9:	c4 41 74 c6 d8 88    	vshufps ymm11,ymm1,ymm8,0x88
  6c6dcf:	c4 c1 74 c6 c8 dd    	vshufps ymm1,ymm1,ymm8,0xdd
  6c6dd5:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  6c6dda:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  6c6dde:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c6de4:	c5 78 28 c5          	vmovaps xmm8,xmm5
  6c6de8:	c5 6c c6 d2 d8       	vshufps ymm10,ymm2,ymm2,0xd8
  6c6ded:	c4 e3 7d 19 ea 01    	vextractf128 xmm2,ymm5,0x1
  6c6df3:	c5 78 28 e7          	vmovaps xmm12,xmm7
  6c6df7:	c4 c3 7d 19 fd 01    	vextractf128 xmm13,ymm7,0x1
  6c6dfd:	c4 c1 34 c6 f9 d8    	vshufps ymm7,ymm9,ymm9,0xd8
  6c6e03:	c4 c1 4d 14 f5       	vunpcklpd ymm6,ymm6,ymm13
  6c6e08:	c4 41 7d 15 ec       	vunpckhpd ymm13,ymm0,ymm12
  6c6e0d:	c4 c1 7d 14 c4       	vunpcklpd ymm0,ymm0,ymm12
  6c6e12:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  6c6e18:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  6c6e1c:	c4 c1 0d 73 d8 08    	vpsrldq ymm14,ymm8,0x8
  6c6e22:	c4 43 6d 0c ff cc    	vblendps ymm15,ymm2,ymm15,0xcc
  6c6e28:	c5 74 c6 c1 d8       	vshufps ymm8,ymm1,ymm1,0xd8
  6c6e2d:	c5 fc c6 cd 88       	vshufps ymm1,ymm0,ymm5,0x88
  6c6e32:	c5 7c c6 cd dd       	vshufps ymm9,ymm0,ymm5,0xdd
  6c6e37:	c4 c1 14 c6 c6 88    	vshufps ymm0,ymm13,ymm14,0x88
  6c6e3d:	c5 f4 c6 e9 d8       	vshufps ymm5,ymm1,ymm1,0xd8
  6c6e42:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  6c6e47:	c4 c1 14 c6 c6 dd    	vshufps ymm0,ymm13,ymm14,0xdd
  6c6e4d:	c4 c1 4c c6 cf 88    	vshufps ymm1,ymm6,ymm15,0x88
  6c6e53:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  6c6e58:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  6c6e5d:	c4 c1 4c c6 c7 dd    	vshufps ymm0,ymm6,ymm15,0xdd
  6c6e63:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  6c6e6a:	00 
  6c6e6b:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  6c6e70:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6c6e77:	00 
  6c6e78:	c5 ac 59 f1          	vmulps ymm6,ymm10,ymm1
  6c6e7c:	c5 1c 59 f9          	vmulps ymm15,ymm12,ymm1
  6c6e80:	c4 e2 1d bc f0       	vfnmadd231ps ymm6,ymm12,ymm0
  6c6e85:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  6c6e8c:	00 
  6c6e8d:	c4 62 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm0
  6c6e92:	c5 fc 10 81 20 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x120]
  6c6e99:	00 
  6c6e9a:	c5 24 59 e1          	vmulps ymm12,ymm11,ymm1
  6c6e9e:	c4 62 6d bc e0       	vfnmadd231ps ymm12,ymm2,ymm0
  6c6ea3:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  6c6ea7:	c5 fc 10 91 c0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xc0]
  6c6eae:	00 
  6c6eaf:	c4 e2 25 b8 c8       	vfmadd231ps ymm1,ymm11,ymm0
  6c6eb4:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  6c6ebb:	00 
  6c6ebc:	c5 6c 59 df          	vmulps ymm11,ymm2,ymm7
  6c6ec0:	c5 14 59 d2          	vmulps ymm10,ymm13,ymm2
  6c6ec4:	c4 62 15 bc d8       	vfnmadd231ps ymm11,ymm13,ymm0
  6c6ec9:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  6c6ed0:	00 
  6c6ed1:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  6c6ed6:	c5 fc 10 81 60 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x160]
  6c6edd:	00 
  6c6ede:	c5 3c 59 ea          	vmulps ymm13,ymm8,ymm2
  6c6ee2:	c4 62 0d bc e8       	vfnmadd231ps ymm13,ymm14,ymm0
  6c6ee7:	c5 8c 59 fa          	vmulps ymm7,ymm14,ymm2
  6c6eeb:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  6c6ef0:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6c6ef6:	c4 e2 3d b8 f8       	vfmadd231ps ymm7,ymm8,ymm0
  6c6efb:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  6c6f00:	c5 6c 59 c4          	vmulps ymm8,ymm2,ymm4
  6c6f04:	c4 62 35 bc c0       	vfnmadd231ps ymm8,ymm9,ymm0
  6c6f09:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6c6f0d:	c5 9c 58 d6          	vaddps ymm2,ymm12,ymm6
  6c6f11:	c4 62 5d b8 c8       	vfmadd231ps ymm9,ymm4,ymm0
  6c6f16:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  6c6f1a:	c5 ec 58 c3          	vaddps ymm0,ymm2,ymm3
  6c6f1e:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6c6f24:	c5 84 58 c1          	vaddps ymm0,ymm15,ymm1
  6c6f28:	c5 84 5c d9          	vsubps ymm3,ymm15,ymm1
  6c6f2c:	c4 41 14 58 f0       	vaddps ymm14,ymm13,ymm8
  6c6f31:	c4 e2 7d 18 0d 26 e5 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ae526]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6f38:	9a ff 
  6c6f3a:	c4 e2 75 ac d4       	vfnmadd213ps ymm2,ymm1,ymm4
  6c6f3f:	c5 34 58 ff          	vaddps ymm15,ymm9,ymm7
  6c6f43:	c4 41 44 5c c9       	vsubps ymm9,ymm7,ymm9
  6c6f48:	c4 c1 24 58 e6       	vaddps ymm4,ymm11,ymm14
  6c6f4d:	c4 42 75 bc de       	vfnmadd231ps ymm11,ymm1,ymm14
  6c6f52:	c5 fc 58 fd          	vaddps ymm7,ymm0,ymm5
  6c6f56:	c4 e2 75 ac c5       	vfnmadd213ps ymm0,ymm1,ymm5
  6c6f5b:	c4 c1 2c 58 ef       	vaddps ymm5,ymm10,ymm15
  6c6f60:	c4 62 7d 18 35 6b e3 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9ae36b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6f67:	9a ff 
  6c6f69:	c5 8c 59 cb          	vmulps ymm1,ymm14,ymm3
  6c6f6d:	c4 c1 34 59 de       	vmulps ymm3,ymm9,ymm14
  6c6f72:	c4 41 4c 5c e4       	vsubps ymm12,ymm6,ymm12
  6c6f77:	c4 e2 7d 18 35 e0 e4 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9ae4e0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6f7e:	9a ff 
  6c6f80:	c4 42 4d bc d7       	vfnmadd231ps ymm10,ymm6,ymm15
  6c6f85:	c5 ec 58 f1          	vaddps ymm6,ymm2,ymm1
  6c6f89:	c5 24 58 cb          	vaddps ymm9,ymm11,ymm3
  6c6f8d:	c4 41 1c 59 fe       	vmulps ymm15,ymm12,ymm14
  6c6f92:	c4 41 14 5c c0       	vsubps ymm8,ymm13,ymm8
  6c6f97:	c4 41 7c 5c ef       	vsubps ymm13,ymm0,ymm15
  6c6f9c:	c4 41 3c 59 c6       	vmulps ymm8,ymm8,ymm14
  6c6fa1:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  6c6fa5:	c4 41 2c 5c f0       	vsubps ymm14,ymm10,ymm8
  6c6faa:	c5 24 5c e3          	vsubps ymm12,ymm11,ymm3
  6c6fae:	c5 04 58 d8          	vaddps ymm11,ymm15,ymm0
  6c6fb2:	c5 7c 28 7c 24 20    	vmovaps ymm15,YMMWORD PTR [rsp+0x20]
  6c6fb8:	c5 80 58 c4          	vaddps xmm0,xmm15,xmm4
  6c6fbc:	c5 c0 58 d5          	vaddps xmm2,xmm7,xmm5
  6c6fc0:	c4 41 2c 58 d0       	vaddps ymm10,ymm10,ymm8
  6c6fc5:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  6c6fc9:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c6fcd:	c5 f8 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm0
  6c6fd3:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  6c6fd8:	c4 c1 48 5c c1       	vsubps xmm0,xmm6,xmm9
  6c6fdd:	c4 c1 10 5c d6       	vsubps xmm2,xmm13,xmm14
  6c6fe2:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  6c6fe6:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c6fea:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  6c6ff0:	c5 98 58 c1          	vaddps xmm0,xmm12,xmm1
  6c6ff4:	c4 c1 20 58 d2       	vaddps xmm2,xmm11,xmm10
  6c6ff9:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  6c6fff:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  6c7003:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c7007:	c5 80 5c d4          	vsubps xmm2,xmm15,xmm4
  6c700b:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  6c7011:	c5 c0 5c c5          	vsubps xmm0,xmm7,xmm5
  6c7015:	c5 f8 14 e2          	vunpcklps xmm4,xmm0,xmm2
  6c7019:	c5 f8 15 c2          	vunpckhps xmm0,xmm0,xmm2
  6c701d:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6c7023:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  6c7029:	c5 b0 58 c6          	vaddps xmm0,xmm9,xmm6
  6c702d:	c4 c1 10 58 d6       	vaddps xmm2,xmm13,xmm14
  6c7032:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  6c7038:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  6c703c:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c7040:	c4 c1 70 5c cc       	vsubps xmm1,xmm1,xmm12
  6c7045:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  6c704b:	c4 c1 20 5c c2       	vsubps xmm0,xmm11,xmm10
  6c7050:	c5 f8 14 d1          	vunpcklps xmm2,xmm0,xmm1
  6c7054:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6c7058:	c5 f8 11 5c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm3
  6c705e:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  6c7065:	00 00 
  6c7067:	c5 f8 11 54 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm2
  6c706d:	48 81 c2 90 00 00 00 	add    rdx,0x90
  6c7074:	48 39 d0             	cmp    rax,rdx
  6c7077:	0f 85 33 fc ff ff    	jne    6c6cb0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6c707d:	48 89 ec             	mov    rsp,rbp
  6c7080:	5d                   	pop    rbp
  6c7081:	c5 f8 77             	vzeroupper
  6c7084:	c3                   	ret
