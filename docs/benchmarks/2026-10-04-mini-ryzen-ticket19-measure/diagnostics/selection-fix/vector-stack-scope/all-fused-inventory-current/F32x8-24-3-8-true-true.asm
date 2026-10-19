
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b1d40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b1d40:	55                   	push   rbp
  6b1d41:	48 89 e5             	mov    rbp,rsp
  6b1d44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6b1d48:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  6b1d4f:	48 c1 e2 06          	shl    rdx,0x6
  6b1d53:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b1d57:	31 d2                	xor    edx,edx
  6b1d59:	4c 8d 84 24 00 02 00 	lea    r8,[rsp+0x200]
  6b1d60:	00 
  6b1d61:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6b1d66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6b1d6d:	00 00 00 
  6b1d70:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  6b1d77:	00 
  6b1d78:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6b1d7d:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6b1d82:	c5 fc 10 4c 17 20    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x20]
  6b1d88:	c5 fc 10 54 17 40    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x40]
  6b1d8e:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  6b1d94:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  6b1d9b:	00 00 
  6b1d9d:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  6b1da4:	00 00 
  6b1da6:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  6b1dab:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  6b1db1:	c5 ec c6 fb dd       	vshufps ymm7,ymm2,ymm3,0xdd
  6b1db6:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  6b1dbc:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  6b1dc1:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  6b1dc7:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  6b1dcc:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6b1dd2:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  6b1dd7:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6b1ddd:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  6b1de2:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6b1de8:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  6b1dec:	c5 64 58 d6          	vaddps ymm10,ymm3,ymm6
  6b1df0:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  6b1df4:	c5 5c 58 d8          	vaddps ymm11,ymm4,ymm0
  6b1df8:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6b1dfc:	c4 e2 7d 18 15 5b 36 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9c365b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b1e03:	9c ff 
  6b1e05:	c4 e2 6d ac de       	vfnmadd213ps ymm3,ymm2,ymm6
  6b1e0a:	c4 e2 7d 18 2d c1 34 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9c34c1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b1e11:	9c ff 
  6b1e13:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  6b1e17:	c4 e2 6d ac e0       	vfnmadd213ps ymm4,ymm2,ymm0
  6b1e1c:	c4 c1 44 5c c1       	vsubps ymm0,ymm7,ymm9
  6b1e21:	c5 64 58 e9          	vaddps ymm13,ymm3,ymm1
  6b1e25:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  6b1e29:	c5 5c 5c c8          	vsubps ymm9,ymm4,ymm0
  6b1e2d:	c5 e4 5c d1          	vsubps ymm2,ymm3,ymm1
  6b1e31:	c5 7c 58 e4          	vaddps ymm12,ymm0,ymm4
  6b1e35:	c4 63 7d 19 d0 01    	vextractf128 xmm0,ymm10,0x1
  6b1e3b:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6b1e41:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  6b1e47:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  6b1e4d:	c4 c3 7d 19 d6 01    	vextractf128 xmm14,ymm2,0x1
  6b1e53:	c4 c1 7d 14 ce       	vunpcklpd ymm1,ymm0,ymm14
  6b1e58:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6b1e5e:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6b1e62:	c4 e3 65 0c c0 cc    	vblendps ymm0,ymm3,ymm0,0xcc
  6b1e68:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  6b1e6c:	c5 fc 29 84 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm0
  6b1e73:	00 00 
  6b1e75:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  6b1e7a:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  6b1e80:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6b1e85:	c4 63 7d 19 cf 01    	vextractf128 xmm7,ymm9,0x1
  6b1e8b:	c4 63 7d 19 e1 01    	vextractf128 xmm1,ymm12,0x1
  6b1e91:	c5 cd 14 e9          	vunpcklpd ymm5,ymm6,ymm1
  6b1e95:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  6b1e9c:	00 00 
  6b1e9e:	c4 e3 45 0c dc cc    	vblendps ymm3,ymm7,ymm4,0xcc
  6b1ea4:	c5 fc 29 9c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm3
  6b1eab:	00 00 
  6b1ead:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  6b1eb2:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1eb7:	c5 fc 10 a9 00 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x100]
  6b1ebe:	00 
  6b1ebf:	c5 fc 10 a1 20 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x120]
  6b1ec6:	00 
  6b1ec7:	c5 54 59 c0          	vmulps ymm8,ymm5,ymm0
  6b1ecb:	c4 62 65 bc c4       	vfnmadd231ps ymm8,ymm3,ymm4
  6b1ed0:	c5 7c 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm8
  6b1ed7:	00 00 
  6b1ed9:	c5 d4 59 db          	vmulps ymm3,ymm5,ymm3
  6b1edd:	c4 e2 7d b8 dc       	vfmadd231ps ymm3,ymm0,ymm4
  6b1ee2:	c5 fc 29 9c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm3
  6b1ee9:	00 00 
  6b1eeb:	c4 41 78 28 c2       	vmovaps xmm8,xmm10
  6b1ef0:	c5 f8 28 d2          	vmovaps xmm2,xmm2
  6b1ef4:	c5 78 29 eb          	vmovaps xmm3,xmm13
  6b1ef8:	c5 dd 73 db 08       	vpsrldq ymm4,ymm3,0x8
  6b1efd:	c5 fd 7f a4 24 80 00 	vmovdqa YMMWORD PTR [rsp+0x80],ymm4
  6b1f04:	00 00 
  6b1f06:	c5 78 29 d8          	vmovaps xmm0,xmm11
  6b1f0a:	c5 bd 15 da          	vunpckhpd ymm3,ymm8,ymm2
  6b1f0e:	c5 fc 29 9c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm3
  6b1f15:	00 00 
  6b1f17:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  6b1f1c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1f21:	c4 41 78 28 e4       	vmovaps xmm12,xmm12
  6b1f26:	c5 7c 29 cd          	vmovaps ymm5,ymm9
  6b1f2a:	c5 f8 28 e5          	vmovaps xmm4,xmm5
  6b1f2e:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6b1f33:	c5 fd 7f a4 24 e0 01 	vmovdqa YMMWORD PTR [rsp+0x1e0],ymm4
  6b1f3a:	00 00 
  6b1f3c:	c4 41 7d 15 fc       	vunpckhpd ymm15,ymm0,ymm12
  6b1f41:	c5 84 c6 e4 88       	vshufps ymm4,ymm15,ymm4,0x88
  6b1f46:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6b1f4b:	c5 7c 10 89 80 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0x80]
  6b1f52:	00 
  6b1f53:	c5 7c 10 99 a0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xa0]
  6b1f5a:	00 
  6b1f5b:	c5 34 59 d3          	vmulps ymm10,ymm9,ymm3
  6b1f5f:	c4 42 5d bc d3       	vfnmadd231ps ymm10,ymm4,ymm11
  6b1f64:	c5 7c 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm10
  6b1f6b:	00 00 
  6b1f6d:	c5 34 59 d4          	vmulps ymm10,ymm9,ymm4
  6b1f71:	c4 42 65 b8 d3       	vfmadd231ps ymm10,ymm3,ymm11
  6b1f76:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  6b1f7c:	c4 41 65 15 ce       	vunpckhpd ymm9,ymm3,ymm14
  6b1f81:	c5 7c 29 8c 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm9
  6b1f88:	00 00 
  6b1f8a:	c5 cd 15 e1          	vunpckhpd ymm4,ymm6,ymm1
  6b1f8e:	c5 fc 29 a4 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm4
  6b1f95:	00 00 
  6b1f97:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  6b1f9b:	c5 fc 28 4c 24 40    	vmovaps ymm1,YMMWORD PTR [rsp+0x40]
  6b1fa1:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  6b1fa5:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  6b1fab:	c5 b4 c6 c9 88       	vshufps ymm1,ymm9,ymm1,0x88
  6b1fb0:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b1fb5:	c5 45 15 f3          	vunpckhpd ymm14,ymm7,ymm3
  6b1fb9:	c4 c1 5c c6 de 88    	vshufps ymm3,ymm4,ymm14,0x88
  6b1fbf:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1fc4:	c5 fc 10 b1 80 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x180]
  6b1fcb:	00 
  6b1fcc:	c5 fc 10 b9 a0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1a0]
  6b1fd3:	00 
  6b1fd4:	c5 cc 59 e1          	vmulps ymm4,ymm6,ymm1
  6b1fd8:	c4 e2 65 bc e7       	vfnmadd231ps ymm4,ymm3,ymm7
  6b1fdd:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  6b1fe3:	c5 4c 59 cb          	vmulps ymm9,ymm6,ymm3
  6b1fe7:	c4 62 75 b8 cf       	vfmadd231ps ymm9,ymm1,ymm7
  6b1fec:	c5 bd 14 ca          	vunpcklpd ymm1,ymm8,ymm2
  6b1ff0:	c5 fc 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm1
  6b1ff7:	00 00 
  6b1ff9:	c4 c1 7d 14 d4       	vunpcklpd ymm2,ymm0,ymm12
  6b1ffe:	c4 41 7a 7e e5       	vmovq  xmm12,xmm13
  6b2003:	c5 7a 7e dd          	vmovq  xmm11,xmm5
  6b2007:	c4 c1 74 c6 c4 dd    	vshufps ymm0,ymm1,ymm12,0xdd
  6b200d:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6b2012:	c4 c1 6c c6 cb dd    	vshufps ymm1,ymm2,ymm11,0xdd
  6b2018:	c5 7c 28 ea          	vmovaps ymm13,ymm2
  6b201c:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b2021:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  6b2026:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  6b202b:	c5 ec 59 fb          	vmulps ymm7,ymm2,ymm3
  6b202f:	c4 e2 75 bc f8       	vfnmadd231ps ymm7,ymm1,ymm0
  6b2034:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  6b2038:	c4 e2 65 b8 f0       	vfmadd231ps ymm6,ymm3,ymm0
  6b203d:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  6b2043:	c5 fc c6 84 24 60 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x160],0xdd
  6b204a:	00 00 dd 
  6b204d:	c5 fc 28 8c 24 e0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  6b2054:	00 00 
  6b2056:	c5 f4 c6 8c 24 00 01 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0x100],0xdd
  6b205d:	00 00 dd 
  6b2060:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6b2065:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b206a:	c5 fc 10 81 40 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x140]
  6b2071:	00 
  6b2072:	c5 7c 10 81 60 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x160]
  6b2079:	00 
  6b207a:	c5 fc 59 eb          	vmulps ymm5,ymm0,ymm3
  6b207e:	c4 c2 75 bc e8       	vfnmadd231ps ymm5,ymm1,ymm8
  6b2083:	c5 fc 59 e1          	vmulps ymm4,ymm0,ymm1
  6b2087:	c4 c2 65 b8 e0       	vfmadd231ps ymm4,ymm3,ymm8
  6b208c:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  6b2093:	00 00 
  6b2095:	c5 fc c6 84 24 80 00 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x80],0xdd
  6b209c:	00 00 dd 
  6b209f:	c5 84 c6 9c 24 e0 01 	vshufps ymm3,ymm15,YMMWORD PTR [rsp+0x1e0],0xdd
  6b20a6:	00 00 dd 
  6b20a9:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  6b20ae:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b20b3:	c5 7c 10 81 c0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xc0]
  6b20ba:	00 
  6b20bb:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  6b20c2:	00 
  6b20c3:	c5 3c 59 f9          	vmulps ymm15,ymm8,ymm1
  6b20c7:	c4 62 65 bc f8       	vfnmadd231ps ymm15,ymm3,ymm0
  6b20cc:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  6b20d0:	c4 62 75 b8 c0       	vfmadd231ps ymm8,ymm1,ymm0
  6b20d5:	c5 fc 28 84 24 c0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1c0]
  6b20dc:	00 00 
  6b20de:	c5 fc c6 44 24 20 dd 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x20],0xdd
  6b20e5:	c5 fc 28 8c 24 a0 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x1a0]
  6b20ec:	00 00 
  6b20ee:	c4 c1 74 c6 ce dd    	vshufps ymm1,ymm1,ymm14,0xdd
  6b20f4:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  6b20f9:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b20fe:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  6b2105:	00 
  6b2106:	c5 7c 10 b1 e0 01 00 	vmovups ymm14,YMMWORD PTR [rcx+0x1e0]
  6b210d:	00 
  6b210e:	c5 e4 59 c2          	vmulps ymm0,ymm3,ymm2
  6b2112:	c4 c2 75 bc c6       	vfnmadd231ps ymm0,ymm1,ymm14
  6b2117:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  6b211b:	c4 c2 6d b8 de       	vfmadd231ps ymm3,ymm2,ymm14
  6b2120:	c5 fc 28 8c 24 80 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x180]
  6b2127:	00 00 
  6b2129:	c4 c1 74 c6 cc 88    	vshufps ymm1,ymm1,ymm12,0x88
  6b212f:	c4 c1 14 c6 d3 88    	vshufps ymm2,ymm13,ymm11,0x88
  6b2135:	c5 74 c6 d9 d8       	vshufps ymm11,ymm1,ymm1,0xd8
  6b213a:	c5 fc 28 8c 24 40 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x140]
  6b2141:	00 00 
  6b2143:	c5 24 58 e9          	vaddps ymm13,ymm11,ymm1
  6b2147:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6b214b:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6b2151:	c4 41 2c 58 e1       	vaddps ymm12,ymm10,ymm9
  6b2156:	c4 41 2c 5c f1       	vsubps ymm14,ymm10,ymm9
  6b215b:	c5 44 58 dd          	vaddps ymm11,ymm7,ymm5
  6b215f:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  6b2163:	c5 4c 58 d4          	vaddps ymm10,ymm6,ymm4
  6b2167:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  6b216b:	c5 3c 58 cb          	vaddps ymm9,ymm8,ymm3
  6b216f:	c5 bc 5c db          	vsubps ymm3,ymm8,ymm3
  6b2173:	c5 04 58 c0          	vaddps ymm8,ymm15,ymm0
  6b2177:	c5 84 5c c8          	vsubps ymm1,ymm15,ymm0
  6b217b:	c5 ec c6 f2 d8       	vshufps ymm6,ymm2,ymm2,0xd8
  6b2180:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  6b2187:	00 00 
  6b2189:	c5 fc 58 d6          	vaddps ymm2,ymm0,ymm6
  6b218d:	c5 cc 5c f8          	vsubps ymm7,ymm6,ymm0
  6b2191:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  6b2198:	00 00 
  6b219a:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  6b21a0:	c5 84 58 c6          	vaddps ymm0,ymm15,ymm6
  6b21a4:	c5 84 5c f6          	vsubps ymm6,ymm15,ymm6
  6b21a8:	c5 54 58 fc          	vaddps ymm15,ymm5,ymm4
  6b21ac:	c5 7c 29 bc 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm15
  6b21b3:	00 00 
  6b21b5:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6b21b9:	c5 64 5c f9          	vsubps ymm15,ymm3,ymm1
  6b21bd:	c5 f4 58 db          	vaddps ymm3,ymm1,ymm3
  6b21c1:	c5 94 58 c8          	vaddps ymm1,ymm13,ymm0
  6b21c5:	c5 fc 29 8c 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm1
  6b21cc:	00 00 
  6b21ce:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  6b21d2:	c5 fc 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm0
  6b21d9:	00 00 
  6b21db:	c4 c1 2c 58 c1       	vaddps ymm0,ymm10,ymm9
  6b21e0:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6b21e6:	c4 c1 2c 5c e9       	vsubps ymm5,ymm10,ymm9
  6b21eb:	c5 fc 29 ac 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm5
  6b21f2:	00 00 
  6b21f4:	c5 1c 58 d2          	vaddps ymm10,ymm12,ymm2
  6b21f8:	c4 c1 6c 5c d4       	vsubps ymm2,ymm2,ymm12
  6b21fd:	c5 fc 29 94 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm2
  6b2204:	00 00 
  6b2206:	c4 41 24 58 e0       	vaddps ymm12,ymm11,ymm8
  6b220b:	c4 c1 3c 5c d3       	vsubps ymm2,ymm8,ymm11
  6b2210:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  6b2217:	00 00 
  6b2219:	c5 7c 28 44 24 60    	vmovaps ymm8,YMMWORD PTR [rsp+0x60]
  6b221f:	c4 c1 3c 58 d6       	vaddps ymm2,ymm8,ymm14
  6b2224:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  6b222b:	00 00 
  6b222d:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  6b2232:	c5 7c 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm8
  6b2238:	c5 4c 58 c7          	vaddps ymm8,ymm6,ymm7
  6b223c:	c5 7c 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm8
  6b2243:	00 00 
  6b2245:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  6b2249:	c5 fc 29 74 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm6
  6b224f:	c5 98 58 f9          	vaddps xmm7,xmm12,xmm1
  6b2253:	c5 28 58 d8          	vaddps xmm11,xmm10,xmm0
  6b2257:	c5 20 14 ef          	vunpcklps xmm13,xmm11,xmm7
  6b225b:	c5 a0 15 ff          	vunpckhps xmm7,xmm11,xmm7
  6b225f:	c5 f8 13 7c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm7
  6b2265:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  6b226a:	c4 e2 7d 18 05 29 31 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9c3129]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6b2271:	9c ff 
  6b2273:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  6b2277:	c5 e4 59 c8          	vmulps ymm1,ymm3,ymm0
  6b227b:	c5 5c 5c f1          	vsubps ymm14,ymm4,ymm1
  6b227f:	c5 5c 58 d9          	vaddps ymm11,ymm4,ymm1
  6b2283:	c5 fc 59 8c 24 e0 00 	vmulps ymm1,ymm0,YMMWORD PTR [rsp+0xe0]
  6b228a:	00 00 
  6b228c:	c5 84 59 e0          	vmulps ymm4,ymm15,ymm0
  6b2290:	c5 74 58 fc          	vaddps ymm15,ymm1,ymm4
  6b2294:	c5 5c 5c e9          	vsubps ymm13,ymm4,ymm1
  6b2298:	c5 80 58 ca          	vaddps xmm1,xmm15,xmm2
  6b229c:	c4 c1 38 58 e6       	vaddps xmm4,xmm8,xmm14
  6b22a1:	c5 d8 14 f9          	vunpcklps xmm7,xmm4,xmm1
  6b22a5:	c5 d8 15 c9          	vunpckhps xmm1,xmm4,xmm1
  6b22a9:	c5 f8 13 4c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm1
  6b22af:	c5 f8 11 7c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm7
  6b22b5:	c5 7c 28 8c 24 40 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x140]
  6b22bc:	00 00 
  6b22be:	c5 b0 58 cd          	vaddps xmm1,xmm9,xmm5
  6b22c2:	c5 7c 28 84 24 20 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x120]
  6b22c9:	00 00 
  6b22cb:	c5 fc 28 94 24 00 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x100]
  6b22d2:	00 00 
  6b22d4:	c5 b8 58 e2          	vaddps xmm4,xmm8,xmm2
  6b22d8:	c5 d8 14 f9          	vunpcklps xmm7,xmm4,xmm1
  6b22dc:	c5 d8 15 c9          	vunpckhps xmm1,xmm4,xmm1
  6b22e0:	c5 f8 13 4c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm1
  6b22e6:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  6b22ec:	c5 a0 58 ce          	vaddps xmm1,xmm11,xmm6
  6b22f0:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  6b22f6:	c5 90 58 e5          	vaddps xmm4,xmm13,xmm5
  6b22fa:	c5 d8 14 c1          	vunpcklps xmm0,xmm4,xmm1
  6b22fe:	c5 d8 15 c9          	vunpckhps xmm1,xmm4,xmm1
  6b2302:	c5 f8 11 7c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm7
  6b2308:	c5 f8 13 4c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm1
  6b230e:	c5 fc 28 8c 24 60 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x160]
  6b2315:	00 00 
  6b2317:	c4 c1 70 5c cc       	vsubps xmm1,xmm1,xmm12
  6b231c:	c5 a8 5c 5c 24 20    	vsubps xmm3,xmm10,XMMWORD PTR [rsp+0x20]
  6b2322:	c5 f8 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm0
  6b2328:	c5 e0 14 c1          	vunpcklps xmm0,xmm3,xmm1
  6b232c:	c5 e0 15 c9          	vunpckhps xmm1,xmm3,xmm1
  6b2330:	c5 fc 28 9c 24 c0 00 	vmovaps ymm3,YMMWORD PTR [rsp+0xc0]
  6b2337:	00 00 
  6b2339:	c4 c1 60 5c df       	vsubps xmm3,xmm3,xmm15
  6b233e:	c5 f8 13 4c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm1
  6b2344:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  6b234b:	00 00 
  6b234d:	c4 c1 70 5c ce       	vsubps xmm1,xmm1,xmm14
  6b2352:	c5 f0 14 e3          	vunpcklps xmm4,xmm1,xmm3
  6b2356:	c5 f0 15 cb          	vunpckhps xmm1,xmm1,xmm3
  6b235a:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  6b2360:	c5 f8 13 8c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm1
  6b2367:	00 00 
  6b2369:	c5 b0 5c 84 24 80 00 	vsubps xmm0,xmm9,XMMWORD PTR [rsp+0x80]
  6b2370:	00 00 
  6b2372:	c5 b8 5c ca          	vsubps xmm1,xmm8,xmm2
  6b2376:	c5 f8 11 64 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm4
  6b237c:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b2380:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b2384:	c4 c1 48 5c cb       	vsubps xmm1,xmm6,xmm11
  6b2389:	c5 f8 13 84 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm0
  6b2390:	00 00 
  6b2392:	c4 c1 50 5c c5       	vsubps xmm0,xmm5,xmm13
  6b2397:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6b239b:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6b239f:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  6b23a6:	00 00 
  6b23a8:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  6b23af:	00 00 
  6b23b1:	c5 f8 11 9c 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm3
  6b23b8:	00 00 
  6b23ba:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6b23c1:	48 39 d0             	cmp    rax,rdx
  6b23c4:	0f 85 a6 f9 ff ff    	jne    6b1d70 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6b23ca:	48 89 ec             	mov    rsp,rbp
  6b23cd:	5d                   	pop    rbp
  6b23ce:	c5 f8 77             	vzeroupper
  6b23d1:	c3                   	ret
