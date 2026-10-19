
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000703b00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  703b00:	55                   	push   rbp
  703b01:	48 89 e5             	mov    rbp,rsp
  703b04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  703b08:	48 81 ec 80 01 00 00 	sub    rsp,0x180
  703b0f:	48 c1 e2 07          	shl    rdx,0x7
  703b13:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  703b17:	31 d2                	xor    edx,edx
  703b19:	4c 8d 84 24 00 01 00 	lea    r8,[rsp+0x100]
  703b20:	00 
  703b21:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  703b26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  703b2d:	00 00 00 
  703b30:	c6 84 24 00 01 00 00 	mov    BYTE PTR [rsp+0x100],0x0
  703b37:	00 
  703b38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  703b3d:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  703b42:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  703b48:	c5 fc 10 7c 17 30    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x30]
  703b4e:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  703b54:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  703b5a:	c5 78 10 a4 17 80 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x80]
  703b61:	00 00 
  703b63:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  703b6a:	00 00 
  703b6c:	c5 78 10 94 17 b0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xb0]
  703b73:	00 00 
  703b75:	c5 fc 10 8c 17 c0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc0]
  703b7c:	00 00 
  703b7e:	c5 f8 10 94 17 e0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xe0]
  703b85:	00 00 
  703b87:	c5 7c 10 9c 17 f0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xf0]
  703b8e:	00 00 
  703b90:	c5 78 10 ac 17 10 01 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x110]
  703b97:	00 00 
  703b99:	c5 fc 10 b4 17 20 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x120]
  703ba0:	00 00 
  703ba2:	c5 78 10 bc 17 40 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x140]
  703ba9:	00 00 
  703bab:	c5 fc 10 84 17 50 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x150]
  703bb2:	00 00 
  703bb4:	c5 64 c6 f5 dd       	vshufps ymm14,ymm3,ymm5,0xdd
  703bb9:	c5 e4 c6 dd 88       	vshufps ymm3,ymm3,ymm5,0x88
  703bbe:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  703bc4:	c5 f4 c6 da dd       	vshufps ymm3,ymm1,ymm2,0xdd
  703bc9:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  703bce:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  703bd4:	c4 c1 5c c6 cc dd    	vshufps ymm1,ymm4,ymm12,0xdd
  703bda:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  703be1:	00 00 
  703be3:	c4 c1 5c c6 ec 88    	vshufps ymm5,ymm4,ymm12,0x88
  703be9:	c4 c1 4c c6 cf dd    	vshufps ymm1,ymm6,ymm15,0xdd
  703bef:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  703bf6:	00 00 
  703bf8:	c4 c1 4c c6 d7 88    	vshufps ymm2,ymm6,ymm15,0x88
  703bfe:	c4 c1 44 c6 f1 dd    	vshufps ymm6,ymm7,ymm9,0xdd
  703c04:	c4 41 44 c6 e1 88    	vshufps ymm12,ymm7,ymm9,0x88
  703c0a:	c4 c1 24 c6 cd dd    	vshufps ymm1,ymm11,ymm13,0xdd
  703c10:	c4 41 24 c6 ed 88    	vshufps ymm13,ymm11,ymm13,0x88
  703c16:	c4 c1 3c c6 e2 dd    	vshufps ymm4,ymm8,ymm10,0xdd
  703c1c:	c5 fc 29 a4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm4
  703c23:	00 00 
  703c25:	c4 41 3c c6 fa 88    	vshufps ymm15,ymm8,ymm10,0x88
  703c2b:	c5 f8 10 a4 17 70 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x170]
  703c32:	00 00 
  703c34:	c5 7c c6 dc dd       	vshufps ymm11,ymm0,ymm4,0xdd
  703c39:	c5 fc c6 e4 88       	vshufps ymm4,ymm0,ymm4,0x88
  703c3e:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  703c44:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  703c4a:	c5 fc 58 fb          	vaddps ymm7,ymm0,ymm3
  703c4e:	c5 fc 29 bc 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm7
  703c55:	00 00 
  703c57:	c5 7c 5c c3          	vsubps ymm8,ymm0,ymm3
  703c5b:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  703c61:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  703c67:	c5 7c 58 d2          	vaddps ymm10,ymm0,ymm2
  703c6b:	c5 7c 5c ca          	vsubps ymm9,ymm0,ymm2
  703c6f:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  703c75:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  703c7b:	c5 ec 58 f9          	vaddps ymm7,ymm2,ymm1
  703c7f:	c5 ec 5c d9          	vsubps ymm3,ymm2,ymm1
  703c83:	c4 c3 fd 01 d4 d8    	vpermpd ymm2,ymm12,0xd8
  703c89:	c4 c3 fd 01 ed d8    	vpermpd ymm5,ymm13,0xd8
  703c8f:	c5 ec 58 cd          	vaddps ymm1,ymm2,ymm5
  703c93:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  703c97:	c4 c3 fd 01 d7 d8    	vpermpd ymm2,ymm15,0xd8
  703c9d:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  703ca3:	c5 ec 58 f4          	vaddps ymm6,ymm2,ymm4
  703ca7:	c5 ec 5c e4          	vsubps ymm4,ymm2,ymm4
  703cab:	c4 e3 fd 01 94 24 c0 	vpermpd ymm2,YMMWORD PTR [rsp+0xc0],0xd8
  703cb2:	00 00 00 d8 
  703cb6:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  703cbc:	c5 24 58 e2          	vaddps ymm12,ymm11,ymm2
  703cc0:	c4 41 6c 5c db       	vsubps ymm11,ymm2,ymm11
  703cc5:	c4 e3 fd 01 54 24 60 	vpermpd ymm2,YMMWORD PTR [rsp+0x60],0xd8
  703ccc:	d8 
  703ccd:	c4 63 fd 01 6c 24 40 	vpermpd ymm13,YMMWORD PTR [rsp+0x40],0xd8
  703cd4:	d8 
  703cd5:	c5 14 58 f2          	vaddps ymm14,ymm13,ymm2
  703cd9:	c4 41 6c 5c ed       	vsubps ymm13,ymm2,ymm13
  703cde:	c4 e3 fd 01 94 24 a0 	vpermpd ymm2,YMMWORD PTR [rsp+0xa0],0xd8
  703ce5:	00 00 00 d8 
  703ce9:	c4 63 fd 01 bc 24 80 	vpermpd ymm15,YMMWORD PTR [rsp+0x80],0xd8
  703cf0:	00 00 00 d8 
  703cf4:	c5 84 58 c2          	vaddps ymm0,ymm15,ymm2
  703cf8:	c5 04 5c fa          	vsubps ymm15,ymm15,ymm2
  703cfc:	c5 e4 58 d5          	vaddps ymm2,ymm3,ymm5
  703d00:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  703d07:	00 00 
  703d09:	c5 d4 5c d3          	vsubps ymm2,ymm5,ymm3
  703d0d:	c4 c1 5c 5c db       	vsubps ymm3,ymm4,ymm11
  703d12:	c5 24 58 dc          	vaddps ymm11,ymm11,ymm4
  703d16:	c5 fc 28 ac 24 e0 00 	vmovaps ymm5,YMMWORD PTR [rsp+0xe0]
  703d1d:	00 00 
  703d1f:	c5 d4 58 e0          	vaddps ymm4,ymm5,ymm0
  703d23:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  703d27:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  703d2d:	c5 f4 58 ee          	vaddps ymm5,ymm1,ymm6
  703d31:	c5 f4 5c ce          	vsubps ymm1,ymm1,ymm6
  703d35:	c4 c1 0c 58 f2       	vaddps ymm6,ymm14,ymm10
  703d3a:	c4 41 0c 5c d2       	vsubps ymm10,ymm14,ymm10
  703d3f:	c5 1c 58 f7          	vaddps ymm14,ymm12,ymm7
  703d43:	c5 1c 5c e7          	vsubps ymm12,ymm12,ymm7
  703d47:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  703d4c:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  703d51:	c4 41 04 58 cd       	vaddps ymm9,ymm15,ymm13
  703d56:	c4 41 14 5c ef       	vsubps ymm13,ymm13,ymm15
  703d5b:	c5 0c 58 fc          	vaddps ymm15,ymm14,ymm4
  703d5f:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  703d64:	c5 cc 58 c5          	vaddps ymm0,ymm6,ymm5
  703d68:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  703d6f:	00 00 
  703d71:	c5 cc 5c c5          	vsubps ymm0,ymm6,ymm5
  703d75:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  703d7b:	c4 e2 7d 18 05 18 16 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff971618]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  703d82:	97 ff 
  703d84:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  703d88:	c5 a4 59 f0          	vmulps ymm6,ymm11,ymm0
  703d8c:	c5 6c 5c de          	vsubps ymm11,ymm2,ymm6
  703d90:	c5 ec 58 d6          	vaddps ymm2,ymm2,ymm6
  703d94:	c5 fc 59 b4 24 a0 00 	vmulps ymm6,ymm0,YMMWORD PTR [rsp+0xa0]
  703d9b:	00 00 
  703d9d:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  703da1:	c5 cc 58 c3          	vaddps ymm0,ymm6,ymm3
  703da5:	c5 e4 5c de          	vsubps ymm3,ymm3,ymm6
  703da9:	c5 fc 28 64 24 40    	vmovaps ymm4,YMMWORD PTR [rsp+0x40]
  703daf:	c5 dc 58 f1          	vaddps ymm6,ymm4,ymm1
  703db3:	c5 dc 5c e1          	vsubps ymm4,ymm4,ymm1
  703db7:	c5 c4 58 c8          	vaddps ymm1,ymm7,ymm0
  703dbb:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  703dbf:	c4 c1 1c 58 fa       	vaddps ymm7,ymm12,ymm10
  703dc4:	c4 41 2c 5c e4       	vsubps ymm12,ymm10,ymm12
  703dc9:	c4 c1 34 58 eb       	vaddps ymm5,ymm9,ymm11
  703dce:	c4 41 34 5c db       	vsubps ymm11,ymm9,ymm11
  703dd3:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  703dd7:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  703ddb:	c5 14 58 c3          	vaddps ymm8,ymm13,ymm3
  703ddf:	c5 14 5c d3          	vsubps ymm10,ymm13,ymm3
  703de3:	c4 c3 05 18 de 01    	vinsertf128 ymm3,ymm15,xmm14,0x1
  703de9:	c4 43 05 06 ee 31    	vperm2f128 ymm13,ymm15,ymm14,0x31
  703def:	c4 63 75 18 f0 01    	vinsertf128 ymm14,ymm1,xmm0,0x1
  703df5:	c4 e3 75 06 c0 31    	vperm2f128 ymm0,ymm1,ymm0,0x31
  703dfb:	c4 e3 4d 18 cc 01    	vinsertf128 ymm1,ymm6,xmm4,0x1
  703e01:	c4 e3 4d 06 e4 31    	vperm2f128 ymm4,ymm6,ymm4,0x31
  703e07:	c5 95 14 e4          	vunpcklpd ymm4,ymm13,ymm4
  703e0b:	c4 e3 35 18 f2 01    	vinsertf128 ymm6,ymm9,xmm2,0x1
  703e11:	c4 e3 35 06 d2 31    	vperm2f128 ymm2,ymm9,ymm2,0x31
  703e17:	c5 65 15 c9          	vunpckhpd ymm9,ymm3,ymm1
  703e1b:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  703e1f:	c5 fd 14 c2          	vunpcklpd ymm0,ymm0,ymm2
  703e23:	c5 8d 15 d6          	vunpckhpd ymm2,ymm14,ymm6
  703e27:	c5 8d 14 de          	vunpcklpd ymm3,ymm14,ymm6
  703e2b:	c5 f4 c6 f3 88       	vshufps ymm6,ymm1,ymm3,0x88
  703e30:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  703e35:	c5 34 c6 ea 88       	vshufps ymm13,ymm9,ymm2,0x88
  703e3a:	c5 b4 c6 d2 dd       	vshufps ymm2,ymm9,ymm2,0xdd
  703e3f:	c5 5c c6 c8 88       	vshufps ymm9,ymm4,ymm0,0x88
  703e44:	c5 cc c6 de d8       	vshufps ymm3,ymm6,ymm6,0xd8
  703e49:	c5 fc 29 9c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm3
  703e50:	00 00 
  703e52:	c5 dc c6 d8 dd       	vshufps ymm3,ymm4,ymm0,0xdd
  703e57:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  703e5e:	00 00 
  703e60:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  703e66:	c4 e3 7d 18 e6 01    	vinsertf128 ymm4,ymm0,xmm6,0x1
  703e6c:	c4 63 7d 06 f6 31    	vperm2f128 ymm14,ymm0,ymm6,0x31
  703e72:	c5 f4 c6 f1 d8       	vshufps ymm6,ymm1,ymm1,0xd8
  703e77:	c4 c3 55 18 cb 01    	vinsertf128 ymm1,ymm5,xmm11,0x1
  703e7d:	c4 43 55 06 fb 31    	vperm2f128 ymm15,ymm5,ymm11,0x31
  703e83:	c4 c3 45 18 c4 01    	vinsertf128 ymm0,ymm7,xmm12,0x1
  703e89:	c4 41 14 c6 dd d8    	vshufps ymm11,ymm13,ymm13,0xd8
  703e8f:	c4 c3 45 06 ec 31    	vperm2f128 ymm5,ymm7,ymm12,0x31
  703e95:	c5 0d 14 e5          	vunpcklpd ymm12,ymm14,ymm5
  703e99:	c4 c3 3d 18 fa 01    	vinsertf128 ymm7,ymm8,xmm10,0x1
  703e9f:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  703ea4:	c4 c3 3d 06 d2 31    	vperm2f128 ymm2,ymm8,ymm10,0x31
  703eaa:	c5 85 14 d2          	vunpcklpd ymm2,ymm15,ymm2
  703eae:	c5 5d 15 c0          	vunpckhpd ymm8,ymm4,ymm0
  703eb2:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  703eb8:	c5 dd 14 c0          	vunpcklpd ymm0,ymm4,ymm0
  703ebc:	c5 75 15 cf          	vunpckhpd ymm9,ymm1,ymm7
  703ec0:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  703ec4:	c5 64 c6 eb d8       	vshufps ymm13,ymm3,ymm3,0xd8
  703ec9:	c5 fc c6 d9 88       	vshufps ymm3,ymm0,ymm1,0x88
  703ece:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  703ed3:	c5 fc 29 9c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm3
  703eda:	00 00 
  703edc:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  703ee1:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  703ee6:	c4 c1 3c c6 c1 88    	vshufps ymm0,ymm8,ymm9,0x88
  703eec:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  703ef1:	c4 c1 3c c6 c1 dd    	vshufps ymm0,ymm8,ymm9,0xdd
  703ef7:	c5 fc c6 f8 d8       	vshufps ymm7,ymm0,ymm0,0xd8
  703efc:	c5 9c c6 c2 88       	vshufps ymm0,ymm12,ymm2,0x88
  703f01:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  703f06:	c5 9c c6 c2 dd       	vshufps ymm0,ymm12,ymm2,0xdd
  703f0b:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  703f10:	c5 7c 10 79 40       	vmovups ymm15,YMMWORD PTR [rcx+0x40]
  703f15:	c5 fc 10 91 80 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0x80]
  703f1c:	00 
  703f1d:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  703f24:	00 
  703f25:	c5 24 59 c2          	vmulps ymm8,ymm11,ymm2
  703f29:	c4 42 75 bc c4       	vfnmadd231ps ymm8,ymm1,ymm12
  703f2e:	c5 6c 59 c9          	vmulps ymm9,ymm2,ymm1
  703f32:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  703f39:	00 
  703f3a:	c4 42 25 b8 cc       	vfmadd231ps ymm9,ymm11,ymm12
  703f3f:	c5 fc 10 91 00 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x100]
  703f46:	00 
  703f47:	c5 0c 59 e2          	vmulps ymm12,ymm14,ymm2
  703f4b:	c5 6c 59 db          	vmulps ymm11,ymm2,ymm3
  703f4f:	c4 62 65 bc e1       	vfnmadd231ps ymm12,ymm3,ymm1
  703f54:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  703f59:	c5 fc 10 91 60 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x160]
  703f60:	00 
  703f61:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  703f68:	00 
  703f69:	c5 74 59 f0          	vmulps ymm14,ymm1,ymm0
  703f6d:	c4 62 15 b8 f2       	vfmadd231ps ymm14,ymm13,ymm2
  703f72:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  703f76:	c5 fc 10 59 60       	vmovups ymm3,YMMWORD PTR [rcx+0x60]
  703f7b:	c4 e2 7d bc ca       	vfnmadd231ps ymm1,ymm0,ymm2
  703f80:	c4 41 04 59 ea       	vmulps ymm13,ymm15,ymm10
  703f85:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  703f8c:	00 
  703f8d:	c5 84 59 d6          	vmulps ymm2,ymm15,ymm6
  703f91:	c4 62 4d b8 eb       	vfmadd231ps ymm13,ymm6,ymm3
  703f96:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  703f9d:	00 
  703f9e:	c4 e2 2d bc d3       	vfnmadd231ps ymm2,ymm10,ymm3
  703fa3:	c5 fc 59 f7          	vmulps ymm6,ymm0,ymm7
  703fa7:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  703fac:	c4 e2 55 b8 f4       	vfmadd231ps ymm6,ymm5,ymm4
  703fb1:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  703fb5:	c4 41 34 58 d3       	vaddps ymm10,ymm9,ymm11
  703fba:	c4 62 7d 18 3d 11 13 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff971311]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  703fc1:	97 ff 
  703fc3:	c5 84 59 eb          	vmulps ymm5,ymm15,ymm3
  703fc7:	c4 e2 45 bc c4       	vfnmadd231ps ymm0,ymm7,ymm4
  703fcc:	c4 e2 7d 18 25 8b 14 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff97148b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  703fd3:	97 ff 
  703fd5:	c4 41 0c 58 fd       	vaddps ymm15,ymm14,ymm13
  703fda:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  703fe1:	00 00 
  703fe3:	c4 e2 2d ac e7       	vfnmadd213ps ymm4,ymm10,ymm7
  703fe8:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  703fed:	c4 62 7d 18 05 6a 14 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff97146a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  703ff4:	97 ff 
  703ff6:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  703ffb:	c5 7c 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm9
  704001:	c4 62 05 ac c6       	vfnmadd213ps ymm8,ymm15,ymm6
  704006:	c5 74 5c da          	vsubps ymm11,ymm1,ymm2
  70400a:	c4 62 7d 18 0d c1 12 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9712c1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  704011:	97 ff 
  704013:	c4 41 24 59 d9       	vmulps ymm11,ymm11,ymm9
  704018:	c5 f4 58 d2          	vaddps ymm2,ymm1,ymm2
  70401c:	c5 54 58 e4          	vaddps ymm12,ymm5,ymm4
  704020:	c4 41 0c 5c ed       	vsubps ymm13,ymm14,ymm13
  704025:	c4 62 7d 18 35 32 14 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff971432]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70402c:	97 ff 
  70402e:	c5 dc 5c cd          	vsubps ymm1,ymm4,ymm5
  704032:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  704038:	c4 c1 3c 58 e3       	vaddps ymm4,ymm8,ymm11
  70403d:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  704044:	00 00 
  704046:	c4 62 65 ac f1       	vfnmadd213ps ymm14,ymm3,ymm1
  70404b:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  70404f:	c5 b4 59 5c 24 40    	vmulps ymm3,ymm9,YMMWORD PTR [rsp+0x40]
  704055:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  70405a:	c5 0c 5c cb          	vsubps ymm9,ymm14,ymm3
  70405e:	c5 0c 58 db          	vaddps ymm11,ymm14,ymm3
  704062:	c5 2c 58 d7          	vaddps ymm10,ymm10,ymm7
  704066:	c4 e2 7d 18 1d f1 13 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9713f1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70406d:	97 ff 
  70406f:	c4 e2 6d ac d8       	vfnmadd213ps ymm3,ymm2,ymm0
  704074:	c4 e2 7d 18 3d 57 12 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff971257]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70407b:	97 ff 
  70407d:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  704081:	c5 84 58 f6          	vaddps ymm6,ymm15,ymm6
  704085:	c4 c1 64 5c fd       	vsubps ymm7,ymm3,ymm13
  70408a:	c5 14 58 eb          	vaddps ymm13,ymm13,ymm3
  70408e:	c5 d4 58 e9          	vaddps ymm5,ymm5,ymm1
  704092:	c5 7c 58 f2          	vaddps ymm14,ymm0,ymm2
  704096:	c5 9c 5c dc          	vsubps ymm3,ymm12,ymm4
  70409a:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  70409e:	c5 ac 5c d6          	vsubps ymm2,ymm10,ymm6
  7040a2:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  7040a6:	c5 b4 5c c7          	vsubps ymm0,ymm9,ymm7
  7040aa:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  7040ae:	c4 41 54 5c ce       	vsubps ymm9,ymm5,ymm14
  7040b3:	c5 8c 58 ed          	vaddps ymm5,ymm14,ymm5
  7040b7:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  7040bd:	c5 3c 58 d1          	vaddps ymm10,ymm8,ymm1
  7040c1:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  7040c6:	c5 4c 15 c5          	vunpckhps ymm8,ymm6,ymm5
  7040ca:	c5 cc 14 ed          	vunpcklps ymm5,ymm6,ymm5
  7040ce:	c4 c1 24 58 f5       	vaddps ymm6,ymm11,ymm13
  7040d3:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  7040d8:	c4 43 55 06 e0 31    	vperm2f128 ymm12,ymm5,ymm8,0x31
  7040de:	c4 c3 55 06 e8 20    	vperm2f128 ymm5,ymm5,ymm8,0x20
  7040e4:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  7040e9:	c5 7c 11 64 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm12
  7040ef:	c4 c1 74 15 eb       	vunpckhps ymm5,ymm1,ymm11
  7040f4:	c4 c1 74 14 cb       	vunpcklps ymm1,ymm1,ymm11
  7040f9:	c4 63 75 06 c5 31    	vperm2f128 ymm8,ymm1,ymm5,0x31
  7040ff:	c4 e3 75 06 cd 20    	vperm2f128 ymm1,ymm1,ymm5,0x20
  704105:	c5 fc 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm1
  70410b:	c5 dc 15 cf          	vunpckhps ymm1,ymm4,ymm7
  70410f:	c5 dc 14 e7          	vunpcklps ymm4,ymm4,ymm7
  704113:	c5 7c 11 44 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm8
  704119:	c4 e3 5d 06 e9 31    	vperm2f128 ymm5,ymm4,ymm1,0x31
  70411f:	c4 e3 5d 06 c9 20    	vperm2f128 ymm1,ymm4,ymm1,0x20
  704125:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  70412c:	00 00 
  70412e:	c4 c1 6c 15 c9       	vunpckhps ymm1,ymm2,ymm9
  704133:	c4 c1 6c 14 d1       	vunpcklps ymm2,ymm2,ymm9
  704138:	c4 e3 6d 06 e1 31    	vperm2f128 ymm4,ymm2,ymm1,0x31
  70413e:	c4 e3 6d 06 c9 20    	vperm2f128 ymm1,ymm2,ymm1,0x20
  704144:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  70414b:	00 00 
  70414d:	c5 fc 11 8c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm1
  704154:	00 00 
  704156:	c5 ac 15 ce          	vunpckhps ymm1,ymm10,ymm6
  70415a:	c5 ac 14 d6          	vunpcklps ymm2,ymm10,ymm6
  70415e:	c5 fc 11 a4 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm4
  704165:	00 00 
  704167:	c4 e3 6d 06 e1 31    	vperm2f128 ymm4,ymm2,ymm1,0x31
  70416d:	c4 e3 6d 06 c9 20    	vperm2f128 ymm1,ymm2,ymm1,0x20
  704173:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  70417a:	00 00 
  70417c:	c5 e4 15 c8          	vunpckhps ymm1,ymm3,ymm0
  704180:	c5 e4 14 c0          	vunpcklps ymm0,ymm3,ymm0
  704184:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  70418a:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  704190:	c5 fc 11 a4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm4
  704197:	00 00 
  704199:	c5 fc 11 84 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm0
  7041a0:	00 00 
  7041a2:	c5 fc 11 94 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm2
  7041a9:	00 00 
  7041ab:	48 81 c2 80 01 00 00 	add    rdx,0x180
  7041b2:	48 39 d0             	cmp    rax,rdx
  7041b5:	0f 85 75 f9 ff ff    	jne    703b30 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  7041bb:	48 89 ec             	mov    rsp,rbp
  7041be:	5d                   	pop    rbp
  7041bf:	c5 f8 77             	vzeroupper
  7041c2:	c3                   	ret
