
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac9c00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac9c00:	48 c1 e2 04          	shl    rdx,0x4
  ac9c04:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  ac9c08:	31 d2                	xor    edx,edx
  ac9c0a:	c4 e2 7d 18 05 c1 b6 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5ab6c1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac9c11:	5a ff 
  ac9c13:	c4 e2 7d 18 0d 44 b8 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5ab844]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac9c1a:	5a ff 
  ac9c1c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac9c20:	c5 fc 28 1d 98 e6 5a 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5ae698]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac9c27:	ff 
  ac9c28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  ac9c2f:	00 
  ac9c30:	c5 fc 10 64 17 30    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  ac9c36:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  ac9c3c:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  ac9c41:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  ac9c47:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  ac9c4d:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  ac9c54:	00 00 
  ac9c56:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  ac9c5c:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac9c62:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  ac9c67:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ac9c6b:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ac9c70:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  ac9c76:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  ac9c7c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ac9c82:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  ac9c86:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  ac9c8b:	c5 78 10 5c 17 20    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x20]
  ac9c91:	c4 41 3c c6 e3 dd    	vshufps ymm12,ymm8,ymm11,0xdd
  ac9c97:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ac9c9d:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  ac9ca1:	c4 42 45 ac ec       	vfnmadd213ps ymm13,ymm7,ymm12
  ac9ca6:	c4 41 2c 58 f5       	vaddps ymm14,ymm10,ymm13
  ac9cab:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ac9caf:	c4 41 3c c6 c3 88    	vshufps ymm8,ymm8,ymm11,0x88
  ac9cb5:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ac9cbb:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ac9cbf:	c4 42 4d ac c8       	vfnmadd213ps ymm9,ymm6,ymm8
  ac9cc4:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  ac9cc8:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  ac9ccc:	c5 b4 5c ec          	vsubps ymm5,ymm9,ymm4
  ac9cd0:	c4 41 14 5c da       	vsubps ymm11,ymm13,ymm10
  ac9cd5:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  ac9cd9:	c5 1c 58 e7          	vaddps ymm12,ymm12,ymm7
  ac9cdd:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ac9ce1:	c5 f8 28 fe          	vmovaps xmm7,xmm6
  ac9ce5:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ac9ceb:	c5 78 28 c4          	vmovaps xmm8,xmm4
  ac9cef:	c4 c3 7d 19 e1 01    	vextractf128 xmm9,ymm4,0x1
  ac9cf5:	c5 78 28 d5          	vmovaps xmm10,xmm5
  ac9cf9:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac9cff:	c5 cd 14 f5          	vunpcklpd ymm6,ymm6,ymm5
  ac9d03:	c4 41 45 15 ea       	vunpckhpd ymm13,ymm7,ymm10
  ac9d08:	c4 c1 45 14 ea       	vunpcklpd ymm5,ymm7,ymm10
  ac9d0d:	c5 fa 7e fc          	vmovq  xmm7,xmm4
  ac9d11:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  ac9d17:	c4 63 35 0c fa cc    	vblendps ymm15,ymm9,ymm2,0xcc
  ac9d1d:	c5 d4 c6 e7 88       	vshufps ymm4,ymm5,ymm7,0x88
  ac9d22:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac9d27:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  ac9d2c:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac9d31:	c4 c1 14 c6 f8 88    	vshufps ymm7,ymm13,ymm8,0x88
  ac9d37:	c5 44 c6 d7 d8       	vshufps ymm10,ymm7,ymm7,0xd8
  ac9d3c:	c4 c1 14 c6 f8 dd    	vshufps ymm7,ymm13,ymm8,0xdd
  ac9d42:	c5 44 c6 c7 d8       	vshufps ymm8,ymm7,ymm7,0xd8
  ac9d47:	c4 c1 4c c6 ff 88    	vshufps ymm7,ymm6,ymm15,0x88
  ac9d4d:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  ac9d52:	c4 c1 4c c6 f7 dd    	vshufps ymm6,ymm6,ymm15,0xdd
  ac9d58:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  ac9d5d:	c5 78 29 e6          	vmovaps xmm6,xmm12
  ac9d61:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac9d67:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  ac9d6c:	c4 43 7d 19 df 01    	vextractf128 xmm15,ymm11,0x1
  ac9d72:	62 c1 7c 08 28 c6    	vmovaps xmm16,xmm14
  ac9d78:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  ac9d7e:	c4 41 1d 14 f6       	vunpcklpd ymm14,ymm12,ymm14
  ac9d83:	62 a1 cd 28 15 c8    	vunpckhpd ymm17,ymm6,ymm16
  ac9d89:	62 31 cd 28 14 e0    	vunpcklpd ymm12,ymm6,ymm16
  ac9d8f:	c4 41 7a 7e db       	vmovq  xmm11,xmm11
  ac9d94:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  ac9d9a:	c4 63 05 0c fa cc    	vblendps ymm15,ymm15,ymm2,0xcc
  ac9da0:	c4 c1 1c c6 f3 88    	vshufps ymm6,ymm12,ymm11,0x88
  ac9da6:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ac9dab:	c4 41 1c c6 db dd    	vshufps ymm11,ymm12,ymm11,0xdd
  ac9db1:	c4 41 24 c6 e3 d8    	vshufps ymm12,ymm11,ymm11,0xd8
  ac9db7:	62 51 74 20 c6 dd 88 	vshufps ymm11,ymm17,ymm13,0x88
  ac9dbe:	62 c1 24 28 c6 c3 d8 	vshufps ymm16,ymm11,ymm11,0xd8
  ac9dc5:	62 51 74 20 c6 dd dd 	vshufps ymm11,ymm17,ymm13,0xdd
  ac9dcc:	c4 41 24 c6 eb d8    	vshufps ymm13,ymm11,ymm11,0xd8
  ac9dd2:	c4 41 0c c6 df 88    	vshufps ymm11,ymm14,ymm15,0x88
  ac9dd8:	62 c1 24 28 c6 cb d8 	vshufps ymm17,ymm11,ymm11,0xd8
  ac9ddf:	c4 41 0c c6 df dd    	vshufps ymm11,ymm14,ymm15,0xdd
  ac9de5:	c4 41 24 c6 f3 d8    	vshufps ymm14,ymm11,ymm11,0xd8
  ac9deb:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  ac9df2:	00 
  ac9df3:	62 e1 7c 28 10 51 05 	vmovups ymm18,YMMWORD PTR [rcx+0xa0]
  ac9dfa:	c4 41 2c 59 df       	vmulps ymm11,ymm10,ymm15
  ac9dff:	62 32 7d 20 bc da    	vfnmadd231ps ymm11,ymm16,ymm18
  ac9e05:	62 51 7c 20 59 ff    	vmulps ymm15,ymm16,ymm15
  ac9e0b:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  ac9e12:	62 32 2d 28 b8 fa    	vfmadd231ps ymm15,ymm10,ymm18
  ac9e18:	c5 7c 10 91 20 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x120]
  ac9e1f:	00 
  ac9e20:	62 a1 34 28 59 d0    	vmulps ymm18,ymm9,ymm16
  ac9e26:	62 c2 75 20 bc d2    	vfnmadd231ps ymm18,ymm17,ymm10
  ac9e2c:	62 a1 74 20 59 c0    	vmulps ymm16,ymm17,ymm16
  ac9e32:	62 e1 7c 28 10 49 06 	vmovups ymm17,YMMWORD PTR [rcx+0xc0]
  ac9e39:	62 c2 35 28 b8 c2    	vfmadd231ps ymm16,ymm9,ymm10
  ac9e3f:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  ac9e46:	00 
  ac9e47:	62 31 3c 28 59 d1    	vmulps ymm10,ymm8,ymm17
  ac9e4d:	c4 42 15 bc d1       	vfnmadd231ps ymm10,ymm13,ymm9
  ac9e52:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  ac9e58:	62 e1 7c 28 10 49 0a 	vmovups ymm17,YMMWORD PTR [rcx+0x140]
  ac9e5f:	c4 42 3d b8 e9       	vfmadd231ps ymm13,ymm8,ymm9
  ac9e64:	c5 7c 10 81 60 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x160]
  ac9e6b:	00 
  ac9e6c:	62 31 44 28 59 c9    	vmulps ymm9,ymm7,ymm17
  ac9e72:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  ac9e77:	62 31 0c 28 59 f1    	vmulps ymm14,ymm14,ymm17
  ac9e7d:	62 e1 7c 28 10 49 02 	vmovups ymm17,YMMWORD PTR [rcx+0x40]
  ac9e84:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  ac9e89:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  ac9e8e:	62 31 54 28 59 c1    	vmulps ymm8,ymm5,ymm17
  ac9e94:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  ac9e99:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  ac9e9f:	62 a1 24 28 58 ca    	vaddps ymm17,ymm11,ymm18
  ac9ea5:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  ac9eaa:	62 b1 5c 28 58 e9    	vaddps ymm5,ymm4,ymm17
  ac9eb0:	c4 c1 34 58 f8       	vaddps ymm7,ymm9,ymm8
  ac9eb5:	62 e2 75 28 ac cc    	vfnmadd213ps ymm17,ymm1,ymm4
  ac9ebb:	62 a1 04 28 58 d8    	vaddps ymm19,ymm15,ymm16
  ac9ec1:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  ac9ec7:	c5 ac 58 e7          	vaddps ymm4,ymm10,ymm7
  ac9ecb:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  ac9ed0:	c4 c1 0c 58 fc       	vaddps ymm7,ymm14,ymm12
  ac9ed5:	c4 41 0c 5c e4       	vsubps ymm12,ymm14,ymm12
  ac9eda:	62 71 64 20 58 f6    	vaddps ymm14,ymm19,ymm6
  ac9ee0:	62 e2 75 28 ac de    	vfnmadd213ps ymm19,ymm1,ymm6
  ac9ee6:	62 b1 24 28 5c f2    	vsubps ymm6,ymm11,ymm18
  ac9eec:	c5 14 58 df          	vaddps ymm11,ymm13,ymm7
  ac9ef0:	c4 62 75 bc ef       	vfnmadd231ps ymm13,ymm1,ymm7
  ac9ef5:	c5 84 59 f8          	vmulps ymm7,ymm15,ymm0
  ac9ef9:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  ac9efe:	62 71 74 20 58 cf    	vaddps ymm9,ymm17,ymm7
  ac9f04:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  ac9f08:	62 f1 74 20 5c ff    	vsubps ymm7,ymm17,ymm7
  ac9f0e:	c4 41 2c 58 fc       	vaddps ymm15,ymm10,ymm12
  ac9f13:	c5 cc 59 f0          	vmulps ymm6,ymm6,ymm0
  ac9f17:	c4 41 2c 5c d4       	vsubps ymm10,ymm10,ymm12
  ac9f1c:	62 71 64 20 5c e6    	vsubps ymm12,ymm19,ymm6
  ac9f22:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  ac9f26:	62 b1 4c 28 58 f3    	vaddps ymm6,ymm6,ymm19
  ac9f2c:	62 c1 14 28 5c c0    	vsubps ymm16,ymm13,ymm8
  ac9f32:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  ac9f37:	62 31 1c 28 5c e8    	vsubps ymm13,ymm12,ymm16
  ac9f3d:	62 31 1c 28 58 e0    	vaddps ymm12,ymm12,ymm16
  ac9f43:	62 c1 4c 28 58 c0    	vaddps ymm16,ymm6,ymm8
  ac9f49:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  ac9f4e:	c4 41 0c 5c c3       	vsubps ymm8,ymm14,ymm11
  ac9f53:	c4 41 0c 58 db       	vaddps ymm11,ymm14,ymm11
  ac9f58:	c5 50 58 f4          	vaddps xmm14,xmm5,xmm4
  ac9f5c:	62 52 65 28 7f f3    	vpermt2ps ymm14,ymm3,ymm11
  ac9f62:	c4 43 7d 19 f3 01    	vextractf128 xmm11,ymm14,0x1
  ac9f68:	c5 78 13 5c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm11
  ac9f6e:	c5 78 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm14
  ac9f73:	c4 41 30 5c df       	vsubps xmm11,xmm9,xmm15
  ac9f78:	62 52 65 28 7f dd    	vpermt2ps ymm11,ymm3,ymm13
  ac9f7e:	c4 43 7d 19 dd 01    	vextractf128 xmm13,ymm11,0x1
  ac9f84:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  ac9f8a:	c5 78 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm11
  ac9f90:	c5 28 58 df          	vaddps xmm11,xmm10,xmm7
  ac9f94:	62 32 65 28 7f d8    	vpermt2ps ymm11,ymm3,ymm16
  ac9f9a:	c4 43 7d 19 dd 01    	vextractf128 xmm13,ymm11,0x1
  ac9fa0:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  ac9fa6:	c5 78 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm11
  ac9fac:	c5 d0 5c e4          	vsubps xmm4,xmm5,xmm4
  ac9fb0:	62 d2 65 28 7f e0    	vpermt2ps ymm4,ymm3,ymm8
  ac9fb6:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac9fbc:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  ac9fc2:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  ac9fc8:	c4 c1 30 58 e7       	vaddps xmm4,xmm9,xmm15
  ac9fcd:	62 d2 65 28 7f e4    	vpermt2ps ymm4,ymm3,ymm12
  ac9fd3:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac9fd9:	c5 f8 13 6c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm5
  ac9fdf:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  ac9fe5:	c4 c1 40 5c e2       	vsubps xmm4,xmm7,xmm10
  ac9fea:	62 f2 65 28 7f e6    	vpermt2ps ymm4,ymm3,ymm6
  ac9ff0:	c4 e3 7d 19 e5 01    	vextractf128 xmm5,ymm4,0x1
  ac9ff6:	c5 f8 13 ac 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm5
  ac9ffd:	00 00 
  ac9fff:	c5 f8 11 64 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm4
  aca005:	48 81 c2 90 00 00 00 	add    rdx,0x90
  aca00c:	48 39 d0             	cmp    rax,rdx
  aca00f:	0f 85 1b fc ff ff    	jne    ac9c30 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  aca015:	c5 f8 77             	vzeroupper
  aca018:	c3                   	ret
