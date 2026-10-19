
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c8980 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c8980:	55                   	push   rbp
  6c8981:	48 89 e5             	mov    rbp,rsp
  6c8984:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c8988:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6c898f:	48 6b c2 78          	imul   rax,rdx,0x78
  6c8993:	31 d2                	xor    edx,edx
  6c8995:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6c899a:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6c899f:	c4 e2 7d 18 25 f8 c9 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9ac9f8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6c89a6:	9a ff 
  6c89a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  6c89af:	00 
  6c89b0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6c89b5:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6c89ba:	c5 fb 10 7c 17 10    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x10]
  6c89c0:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c89c6:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c89ca:	c4 63 45 0c c8 c0    	vblendps ymm9,ymm7,ymm0,0xc0
  6c89d0:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  6c89d6:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c89dc:	c4 63 45 0c d8 c0    	vblendps ymm11,ymm7,ymm0,0xc0
  6c89e2:	c5 fb 10 7c 17 40    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x40]
  6c89e8:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c89ee:	c4 63 45 0c e0 c0    	vblendps ymm12,ymm7,ymm0,0xc0
  6c89f4:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  6c89f9:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  6c89ff:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6c8a05:	c5 f8 10 7c 17 48    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x48]
  6c8a0b:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6c8a11:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6c8a17:	c4 63 2d 0c f8 c0    	vblendps ymm15,ymm10,ymm0,0xc0
  6c8a1d:	c5 f8 10 74 17 60    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x60]
  6c8a23:	c5 7b 10 54 17 70    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x70]
  6c8a29:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6c8a2f:	c4 e3 2d 0c e8 c0    	vblendps ymm5,ymm10,ymm0,0xc0
  6c8a35:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6c8a3b:	c4 41 10 c6 d1 88    	vshufps xmm10,xmm13,xmm9,0x88
  6c8a41:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  6c8a47:	c5 88 c6 c2 88       	vshufps xmm0,xmm14,xmm2,0x88
  6c8a4c:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6c8a52:	c4 41 10 c6 d9 dd    	vshufps xmm11,xmm13,xmm9,0xdd
  6c8a58:	c5 48 c6 ed 88       	vshufps xmm13,xmm6,xmm5,0x88
  6c8a5d:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  6c8a63:	c5 88 c6 d2 dd       	vshufps xmm2,xmm14,xmm2,0xdd
  6c8a68:	c4 41 38 c6 f4 88    	vshufps xmm14,xmm8,xmm12,0x88
  6c8a6e:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6c8a74:	c5 c8 c6 ed dd       	vshufps xmm5,xmm6,xmm5,0xdd
  6c8a79:	c4 c1 40 c6 f7 88    	vshufps xmm6,xmm7,xmm15,0x88
  6c8a7f:	c4 c1 38 c6 dc dd    	vshufps xmm3,xmm8,xmm12,0xdd
  6c8a85:	c4 41 40 c6 ff dd    	vshufps xmm15,xmm7,xmm15,0xdd
  6c8a8b:	c5 14 58 c0          	vaddps ymm8,ymm13,ymm0
  6c8a8f:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6c8a93:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  6c8a97:	c5 04 58 e3          	vaddps ymm12,ymm15,ymm3
  6c8a9b:	c4 c1 64 5c df       	vsubps ymm3,ymm3,ymm15
  6c8aa0:	c4 c1 3c 58 ea       	vaddps ymm5,ymm8,ymm10
  6c8aa5:	c4 41 7c 5c fd       	vsubps ymm15,ymm0,ymm13
  6c8aaa:	c5 0c 58 ee          	vaddps ymm13,ymm14,ymm6
  6c8aae:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6c8ab2:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6c8ab8:	c5 8c 5c ee          	vsubps ymm5,ymm14,ymm6
  6c8abc:	c4 62 7d 18 0d 23 cc 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9acc23]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6c8ac3:	9a ff 
  6c8ac5:	c4 41 7c 28 f1       	vmovaps ymm14,ymm9
  6c8aca:	c4 42 3d a8 f2       	vfmadd213ps ymm14,ymm8,ymm10
  6c8acf:	c4 e2 7d 18 0d 6c cb 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9acb6c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6c8ad6:	9a ff 
  6c8ad8:	c4 42 75 ac c2       	vfnmadd213ps ymm8,ymm1,ymm10
  6c8add:	c5 a4 58 f7          	vaddps ymm6,ymm11,ymm7
  6c8ae1:	c5 1c 58 d6          	vaddps ymm10,ymm12,ymm6
  6c8ae5:	c4 62 15 bc f1       	vfnmadd231ps ymm14,ymm13,ymm1
  6c8aea:	c4 42 35 b8 c5       	vfmadd231ps ymm8,ymm9,ymm13
  6c8aef:	c4 e2 7d 18 05 60 cc 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9acc60]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6c8af6:	9a ff 
  6c8af8:	c5 e4 59 f0          	vmulps ymm6,ymm3,ymm0
  6c8afc:	c4 e2 6d b8 f4       	vfmadd231ps ymm6,ymm2,ymm4
  6c8b01:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  6c8b05:	c4 e2 5d bc d3       	vfnmadd231ps ymm2,ymm4,ymm3
  6c8b0a:	c4 41 7c 28 e9       	vmovaps ymm13,ymm9
  6c8b0f:	c4 42 45 a8 eb       	vfmadd213ps ymm13,ymm7,ymm11
  6c8b14:	c4 62 1d bc e9       	vfnmadd231ps ymm13,ymm12,ymm1
  6c8b19:	c4 c2 75 ac fb       	vfnmadd213ps ymm7,ymm1,ymm11
  6c8b1e:	c5 d4 59 d8          	vmulps ymm3,ymm5,ymm0
  6c8b22:	c4 e2 05 b8 dc       	vfmadd231ps ymm3,ymm15,ymm4
  6c8b27:	c4 c2 35 b8 fc       	vfmadd231ps ymm7,ymm9,ymm12
  6c8b2c:	c5 04 59 e0          	vmulps ymm12,ymm15,ymm0
  6c8b30:	c4 62 5d bc e5       	vfnmadd231ps ymm12,ymm4,ymm5
  6c8b35:	c5 88 5c ee          	vsubps xmm5,xmm14,xmm6
  6c8b39:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  6c8b3f:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6c8b45:	c5 88 58 f6          	vaddps xmm6,xmm14,xmm6
  6c8b49:	c5 38 5c ca          	vsubps xmm9,xmm8,xmm2
  6c8b4d:	c5 b8 58 d2          	vaddps xmm2,xmm8,xmm2
  6c8b51:	c5 54 14 de          	vunpcklps ymm11,ymm5,ymm6
  6c8b55:	c4 41 6d 14 f1       	vunpcklpd ymm14,ymm2,ymm9
  6c8b5a:	c4 41 24 c6 c6 84    	vshufps ymm8,ymm11,ymm14,0x84
  6c8b60:	c4 41 24 c6 de de    	vshufps ymm11,ymm11,ymm14,0xde
  6c8b66:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  6c8b6a:	c4 c1 6c 15 d1       	vunpckhps ymm2,ymm2,ymm9
  6c8b6f:	c5 54 c6 ca 42       	vshufps ymm9,ymm5,ymm2,0x42
  6c8b74:	c5 90 58 d3          	vaddps xmm2,xmm13,xmm3
  6c8b78:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  6c8b7e:	c5 90 5c db          	vsubps xmm3,xmm13,xmm3
  6c8b82:	c5 98 58 ef          	vaddps xmm5,xmm12,xmm7
  6c8b86:	c4 c1 40 5c f4       	vsubps xmm6,xmm7,xmm12
  6c8b8b:	c5 6c 14 d3          	vunpcklps ymm10,ymm2,ymm3
  6c8b8f:	c5 4d 14 e5          	vunpcklpd ymm12,ymm6,ymm5
  6c8b93:	c4 c1 2c c6 fc 84    	vshufps ymm7,ymm10,ymm12,0x84
  6c8b99:	c4 41 2c c6 d4 de    	vshufps ymm10,ymm10,ymm12,0xde
  6c8b9f:	c5 e5 15 d2          	vunpckhpd ymm2,ymm3,ymm2
  6c8ba3:	c5 cc 15 dd          	vunpckhps ymm3,ymm6,ymm5
  6c8ba7:	c5 ec c6 d3 42       	vshufps ymm2,ymm2,ymm3,0x42
  6c8bac:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  6c8bb1:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  6c8bb6:	c5 a4 59 f3          	vmulps ymm6,ymm11,ymm3
  6c8bba:	c4 e2 2d bc f5       	vfnmadd231ps ymm6,ymm10,ymm5
  6c8bbf:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  6c8bc3:	c5 7c 10 91 80 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0x80]
  6c8bca:	00 
  6c8bcb:	c4 e2 25 b8 dd       	vfmadd231ps ymm3,ymm11,ymm5
  6c8bd0:	c5 fc 10 a9 a0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xa0]
  6c8bd7:	00 
  6c8bd8:	c4 41 2c 59 d9       	vmulps ymm11,ymm10,ymm9
  6c8bdd:	c4 62 6d bc dd       	vfnmadd231ps ymm11,ymm2,ymm5
  6c8be2:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  6c8be6:	c5 24 58 d6          	vaddps ymm10,ymm11,ymm6
  6c8bea:	c4 e2 35 b8 d5       	vfmadd231ps ymm2,ymm9,ymm5
  6c8bef:	c5 e4 58 ea          	vaddps ymm5,ymm3,ymm2
  6c8bf3:	c4 e2 7d 18 05 64 c8 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ac864]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c8bfa:	9a ff 
  6c8bfc:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  6c8c00:	c4 42 2d ac c8       	vfnmadd213ps ymm9,ymm10,ymm8
  6c8c05:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  6c8c09:	c4 e2 7d 18 0d c2 c6 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ac6c2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c8c10:	9a ff 
  6c8c12:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  6c8c16:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  6c8c1a:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6c8c1f:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  6c8c23:	c4 62 55 ac df       	vfnmadd213ps ymm11,ymm5,ymm7
  6c8c28:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  6c8c2c:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  6c8c30:	c5 24 5c ce          	vsubps ymm9,ymm11,ymm6
  6c8c34:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  6c8c38:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  6c8c3d:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  6c8c41:	c5 bc 14 fd          	vunpcklps ymm7,ymm8,ymm5
  6c8c45:	c5 38 14 d5          	vunpcklps xmm10,xmm8,xmm5
  6c8c49:	c5 b8 15 ed          	vunpckhps xmm5,xmm8,xmm5
  6c8c4d:	c5 f8 11 6c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm5
  6c8c53:	c5 78 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm10
  6c8c58:	c4 e3 7d 19 fd 01    	vextractf128 xmm5,ymm7,0x1
  6c8c5e:	c5 f8 13 6c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm5
  6c8c64:	c4 c1 64 14 e9       	vunpcklps ymm5,ymm3,ymm9
  6c8c69:	c4 c1 60 14 f9       	vunpcklps xmm7,xmm3,xmm9
  6c8c6e:	c4 c1 60 15 d9       	vunpckhps xmm3,xmm3,xmm9
  6c8c73:	c5 f8 11 5c 16 38    	vmovups XMMWORD PTR [rsi+rdx*1+0x38],xmm3
  6c8c79:	c5 f8 11 7c 16 28    	vmovups XMMWORD PTR [rsi+rdx*1+0x28],xmm7
  6c8c7f:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  6c8c85:	c5 f8 13 5c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm3
  6c8c8b:	c5 ec 14 de          	vunpcklps ymm3,ymm2,ymm6
  6c8c8f:	c5 e8 14 ee          	vunpcklps xmm5,xmm2,xmm6
  6c8c93:	c5 e8 15 d6          	vunpckhps xmm2,xmm2,xmm6
  6c8c97:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6c8c9d:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  6c8ca3:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  6c8ca9:	c5 f8 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm2
  6c8caf:	48 83 c2 78          	add    rdx,0x78
  6c8cb3:	48 39 d0             	cmp    rax,rdx
  6c8cb6:	0f 85 f4 fc ff ff    	jne    6c89b0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6c8cbc:	48 89 ec             	mov    rsp,rbp
  6c8cbf:	5d                   	pop    rbp
  6c8cc0:	c5 f8 77             	vzeroupper
  6c8cc3:	c3                   	ret
