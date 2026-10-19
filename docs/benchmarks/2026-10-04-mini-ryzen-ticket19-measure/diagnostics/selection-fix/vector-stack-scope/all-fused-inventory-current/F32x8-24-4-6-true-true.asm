
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c49c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c49c0:	55                   	push   rbp
  6c49c1:	48 89 e5             	mov    rbp,rsp
  6c49c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c49c8:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  6c49cf:	48 c1 e2 06          	shl    rdx,0x6
  6c49d3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c49d7:	31 d2                	xor    edx,edx
  6c49d9:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  6c49e0:	00 
  6c49e1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6c49e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6c49ed:	00 00 00 
  6c49f0:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  6c49f7:	00 
  6c49f8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6c49fd:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6c4a02:	c5 f8 10 54 17 20    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x20]
  6c4a08:	c5 fc 10 5c 17 30    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x30]
  6c4a0e:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  6c4a14:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  6c4a1a:	c5 f8 10 b4 17 80 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x80]
  6c4a21:	00 00 
  6c4a23:	c5 fc 10 bc 17 90 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x90]
  6c4a2a:	00 00 
  6c4a2c:	c5 78 10 84 17 b0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xb0]
  6c4a33:	00 00 
  6c4a35:	c5 7c c6 ca dd       	vshufps ymm9,ymm0,ymm2,0xdd
  6c4a3a:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  6c4a40:	c5 54 c6 d6 dd       	vshufps ymm10,ymm5,ymm6,0xdd
  6c4a45:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  6c4a4b:	c5 64 c6 dc dd       	vshufps ymm11,ymm3,ymm4,0xdd
  6c4a50:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6c4a56:	c4 41 44 c6 e0 dd    	vshufps ymm12,ymm7,ymm8,0xdd
  6c4a5c:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  6c4a62:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  6c4a67:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6c4a6d:	c5 d4 c6 d6 88       	vshufps ymm2,ymm5,ymm6,0x88
  6c4a72:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6c4a78:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  6c4a7d:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6c4a83:	c4 c1 44 c6 e0 88    	vshufps ymm4,ymm7,ymm8,0x88
  6c4a89:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6c4a8f:	c4 c1 34 58 ea       	vaddps ymm5,ymm9,ymm10
  6c4a94:	c4 c1 24 58 fc       	vaddps ymm7,ymm11,ymm12
  6c4a99:	c5 7c 58 c2          	vaddps ymm8,ymm0,ymm2
  6c4a9d:	c5 54 58 ef          	vaddps ymm13,ymm5,ymm7
  6c4aa1:	c5 64 58 f4          	vaddps ymm14,ymm3,ymm4
  6c4aa5:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  6c4aaa:	c5 e4 5c e4          	vsubps ymm4,ymm3,ymm4
  6c4aae:	c4 c1 3c 58 de       	vaddps ymm3,ymm8,ymm14
  6c4ab3:	c5 34 58 d4          	vaddps ymm10,ymm9,ymm4
  6c4ab7:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  6c4abb:	c4 c1 1c 5c d3       	vsubps ymm2,ymm12,ymm11
  6c4ac0:	c5 ec 58 f0          	vaddps ymm6,ymm2,ymm0
  6c4ac4:	c5 d4 5c ff          	vsubps ymm7,ymm5,ymm7
  6c4ac8:	c4 c1 3c 5c ee       	vsubps ymm5,ymm8,ymm14
  6c4acd:	c5 34 5c c4          	vsubps ymm8,ymm9,ymm4
  6c4ad1:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  6c4ad5:	c5 78 29 e8          	vmovaps xmm0,xmm13
  6c4ad9:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  6c4adf:	c4 41 78 28 ca       	vmovaps xmm9,xmm10
  6c4ae4:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6c4aea:	c5 78 28 df          	vmovaps xmm11,xmm7
  6c4aee:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6c4af4:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  6c4af9:	c5 ed 14 ff          	vunpcklpd ymm7,ymm2,ymm7
  6c4afd:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  6c4b03:	c5 2d 14 c2          	vunpcklpd ymm8,ymm10,ymm2
  6c4b07:	c4 c1 7d 15 d3       	vunpckhpd ymm2,ymm0,ymm11
  6c4b0c:	c4 c1 7d 14 c3       	vunpcklpd ymm0,ymm0,ymm11
  6c4b11:	c4 41 35 15 d4       	vunpckhpd ymm10,ymm9,ymm12
  6c4b16:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  6c4b1b:	c4 41 7c c6 d9 88    	vshufps ymm11,ymm0,ymm9,0x88
  6c4b21:	c4 c1 7c c6 c1 dd    	vshufps ymm0,ymm0,ymm9,0xdd
  6c4b27:	c4 41 6c c6 ca 88    	vshufps ymm9,ymm2,ymm10,0x88
  6c4b2d:	c4 41 6c c6 d2 dd    	vshufps ymm10,ymm2,ymm10,0xdd
  6c4b33:	c4 41 44 c6 e0 88    	vshufps ymm12,ymm7,ymm8,0x88
  6c4b39:	c4 c1 24 c6 d3 d8    	vshufps ymm2,ymm11,ymm11,0xd8
  6c4b3f:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  6c4b45:	c5 78 28 c3          	vmovaps xmm8,xmm3
  6c4b49:	c4 c3 7d 19 db 01    	vextractf128 xmm11,ymm3,0x1
  6c4b4f:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6c4b54:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  6c4b58:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  6c4b5e:	c5 78 28 f5          	vmovaps xmm14,xmm5
  6c4b62:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6c4b68:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6c4b6e:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  6c4b72:	c5 78 28 dc          	vmovaps xmm11,xmm4
  6c4b76:	c4 c1 2c c6 f2 d8    	vshufps ymm6,ymm10,ymm10,0xd8
  6c4b7c:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6c4b82:	c5 15 14 ec          	vunpcklpd ymm13,ymm13,ymm4
  6c4b86:	c4 41 3d 15 fe       	vunpckhpd ymm15,ymm8,ymm14
  6c4b8b:	c4 41 1c c6 d4 d8    	vshufps ymm10,ymm12,ymm12,0xd8
  6c4b91:	c4 c1 3d 14 e6       	vunpcklpd ymm4,ymm8,ymm14
  6c4b96:	c4 41 7d 15 e3       	vunpckhpd ymm12,ymm0,ymm11
  6c4b9b:	c4 c1 7d 14 c3       	vunpcklpd ymm0,ymm0,ymm11
  6c4ba0:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c4ba5:	c5 5c c6 d8 88       	vshufps ymm11,ymm4,ymm0,0x88
  6c4baa:	c5 5c c6 c0 dd       	vshufps ymm8,ymm4,ymm0,0xdd
  6c4baf:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  6c4bb5:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  6c4bbb:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  6c4bc0:	c4 c1 04 c6 c4 dd    	vshufps ymm0,ymm15,ymm12,0xdd
  6c4bc6:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  6c4bcc:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  6c4bd1:	c4 41 0c c6 fe d8    	vshufps ymm15,ymm14,ymm14,0xd8
  6c4bd7:	c4 c1 54 c6 c5 dd    	vshufps ymm0,ymm5,ymm13,0xdd
  6c4bdd:	c5 7c 10 b1 80 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0x80]
  6c4be4:	00 
  6c4be5:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  6c4bea:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6c4bf1:	00 
  6c4bf2:	c4 c1 0c 59 e9       	vmulps ymm5,ymm14,ymm9
  6c4bf7:	c4 41 0c 59 f3       	vmulps ymm14,ymm14,ymm11
  6c4bfc:	c4 e2 25 bc e8       	vfnmadd231ps ymm5,ymm11,ymm0
  6c4c01:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  6c4c08:	00 
  6c4c09:	c4 62 35 b8 f0       	vfmadd231ps ymm14,ymm9,ymm0
  6c4c0e:	c5 7c 10 89 20 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x120]
  6c4c15:	00 
  6c4c16:	c5 2c 59 d9          	vmulps ymm11,ymm10,ymm1
  6c4c1a:	c4 42 05 bc d9       	vfnmadd231ps ymm11,ymm15,ymm9
  6c4c1f:	c5 84 59 c1          	vmulps ymm0,ymm15,ymm1
  6c4c23:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  6c4c2a:	00 
  6c4c2b:	c4 c2 2d b8 c1       	vfmadd231ps ymm0,ymm10,ymm9
  6c4c30:	c5 7c 10 b9 e0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xe0]
  6c4c37:	00 
  6c4c38:	c5 74 59 d6          	vmulps ymm10,ymm1,ymm6
  6c4c3c:	c5 1c 59 c9          	vmulps ymm9,ymm12,ymm1
  6c4c40:	c4 42 1d bc d7       	vfnmadd231ps ymm10,ymm12,ymm15
  6c4c45:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6c4c4c:	00 
  6c4c4d:	c4 42 4d b8 cf       	vfmadd231ps ymm9,ymm6,ymm15
  6c4c52:	c5 fc 10 b1 60 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x160]
  6c4c59:	00 
  6c4c5a:	c5 74 59 e7          	vmulps ymm12,ymm1,ymm7
  6c4c5e:	c4 62 15 bc e6       	vfnmadd231ps ymm12,ymm13,ymm6
  6c4c63:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  6c4c67:	c5 7c 10 79 40       	vmovups ymm15,YMMWORD PTR [rcx+0x40]
  6c4c6c:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c4c72:	c4 e2 45 b8 ce       	vfmadd231ps ymm1,ymm7,ymm6
  6c4c77:	c5 fc 10 71 60       	vmovups ymm6,YMMWORD PTR [rcx+0x60]
  6c4c7c:	c5 04 59 eb          	vmulps ymm13,ymm15,ymm3
  6c4c80:	c4 62 3d bc ee       	vfnmadd231ps ymm13,ymm8,ymm6
  6c4c85:	c4 41 04 59 c0       	vmulps ymm8,ymm15,ymm8
  6c4c8a:	c5 a4 58 fd          	vaddps ymm7,ymm11,ymm5
  6c4c8e:	c4 62 65 b8 c6       	vfmadd231ps ymm8,ymm3,ymm6
  6c4c93:	c5 c4 58 da          	vaddps ymm3,ymm7,ymm2
  6c4c97:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  6c4c9d:	c5 0c 58 f8          	vaddps ymm15,ymm14,ymm0
  6c4ca1:	c5 8c 5c c0          	vsubps ymm0,ymm14,ymm0
  6c4ca5:	c4 c1 1c 58 f5       	vaddps ymm6,ymm12,ymm13
  6c4caa:	c4 e2 7d 18 1d ad 07 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9b07ad]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c4cb1:	9b ff 
  6c4cb3:	c4 e2 65 ac fa       	vfnmadd213ps ymm7,ymm3,ymm2
  6c4cb8:	c5 3c 58 f1          	vaddps ymm14,ymm8,ymm1
  6c4cbc:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  6c4cc1:	c5 ac 58 d6          	vaddps ymm2,ymm10,ymm6
  6c4cc5:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  6c4ccb:	c4 62 65 bc d6       	vfnmadd231ps ymm10,ymm3,ymm6
  6c4cd0:	c5 84 58 f4          	vaddps ymm6,ymm15,ymm4
  6c4cd4:	c4 62 65 ac fc       	vfnmadd213ps ymm15,ymm3,ymm4
  6c4cd9:	c4 c1 34 58 e6       	vaddps ymm4,ymm9,ymm14
  6c4cde:	c4 e2 7d 18 15 ed 05 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9b05ed]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c4ce5:	9b ff 
  6c4ce7:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6c4ceb:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  6c4cef:	c4 41 54 5c db       	vsubps ymm11,ymm5,ymm11
  6c4cf4:	c4 42 65 bc ce       	vfnmadd231ps ymm9,ymm3,ymm14
  6c4cf9:	c5 c4 58 e8          	vaddps ymm5,ymm7,ymm0
  6c4cfd:	c5 2c 58 c1          	vaddps ymm8,ymm10,ymm1
  6c4d01:	c5 24 59 f2          	vmulps ymm14,ymm11,ymm2
  6c4d05:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  6c4d0a:	c4 41 04 5c e6       	vsubps ymm12,ymm15,ymm14
  6c4d0f:	c5 24 59 da          	vmulps ymm11,ymm11,ymm2
  6c4d13:	c5 c4 5c f8          	vsubps ymm7,ymm7,ymm0
  6c4d17:	c4 41 34 5c eb       	vsubps ymm13,ymm9,ymm11
  6c4d1c:	c5 ac 5c c1          	vsubps ymm0,ymm10,ymm1
  6c4d20:	c4 41 0c 58 d7       	vaddps ymm10,ymm14,ymm15
  6c4d25:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  6c4d2b:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  6c4d31:	c5 e8 58 cb          	vaddps xmm1,xmm2,xmm3
  6c4d35:	c5 48 58 f4          	vaddps xmm14,xmm6,xmm4
  6c4d39:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  6c4d3e:	c5 08 14 d9          	vunpcklps xmm11,xmm14,xmm1
  6c4d42:	c5 88 15 c9          	vunpckhps xmm1,xmm14,xmm1
  6c4d46:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  6c4d4c:	c5 78 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm11
  6c4d51:	c4 c1 50 5c c8       	vsubps xmm1,xmm5,xmm8
  6c4d56:	c4 41 18 5c dd       	vsubps xmm11,xmm12,xmm13
  6c4d5b:	c5 20 14 f1          	vunpcklps xmm14,xmm11,xmm1
  6c4d5f:	c5 a0 15 c9          	vunpckhps xmm1,xmm11,xmm1
  6c4d63:	c5 f8 11 4c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm1
  6c4d69:	c5 c0 58 c8          	vaddps xmm1,xmm7,xmm0
  6c4d6d:	c4 41 28 58 d9       	vaddps xmm11,xmm10,xmm9
  6c4d72:	c5 78 11 74 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm14
  6c4d78:	c5 20 14 f1          	vunpcklps xmm14,xmm11,xmm1
  6c4d7c:	c5 a0 15 c9          	vunpckhps xmm1,xmm11,xmm1
  6c4d80:	c5 e8 5c d3          	vsubps xmm2,xmm2,xmm3
  6c4d84:	c5 f8 11 4c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm1
  6c4d8a:	c5 c8 5c cc          	vsubps xmm1,xmm6,xmm4
  6c4d8e:	c5 f0 14 da          	vunpcklps xmm3,xmm1,xmm2
  6c4d92:	c5 f0 15 ca          	vunpckhps xmm1,xmm1,xmm2
  6c4d96:	c5 78 11 74 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm14
  6c4d9c:	c5 f8 11 4c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm1
  6c4da2:	c5 b8 58 cd          	vaddps xmm1,xmm8,xmm5
  6c4da6:	c4 c1 18 58 d5       	vaddps xmm2,xmm12,xmm13
  6c4dab:	c5 f8 11 5c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm3
  6c4db1:	c5 e8 14 d9          	vunpcklps xmm3,xmm2,xmm1
  6c4db5:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6c4db9:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  6c4dbd:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6c4dc4:	00 00 
  6c4dc6:	c4 c1 28 5c c9       	vsubps xmm1,xmm10,xmm9
  6c4dcb:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c4dcf:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c4dd3:	c5 f8 11 9c 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  6c4dda:	00 00 
  6c4ddc:	c5 f8 11 84 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm0
  6c4de3:	00 00 
  6c4de5:	c5 f8 11 94 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm2
  6c4dec:	00 00 
  6c4dee:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6c4df5:	48 39 d0             	cmp    rax,rdx
  6c4df8:	0f 85 f2 fb ff ff    	jne    6c49f0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6c4dfe:	48 89 ec             	mov    rsp,rbp
  6c4e01:	5d                   	pop    rbp
  6c4e02:	c5 f8 77             	vzeroupper
  6c4e05:	c3                   	ret
