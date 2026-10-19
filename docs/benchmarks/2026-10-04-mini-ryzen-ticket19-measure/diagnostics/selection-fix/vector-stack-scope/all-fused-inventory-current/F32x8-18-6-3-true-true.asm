
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c7ac0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c7ac0:	55                   	push   rbp
  6c7ac1:	48 89 e5             	mov    rbp,rsp
  6c7ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c7ac8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6c7acf:	48 c1 e2 04          	shl    rdx,0x4
  6c7ad3:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6c7ad7:	31 d2                	xor    edx,edx
  6c7ad9:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6c7ade:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  6c7ae3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6c7aea:	84 00 00 00 00 00 
  6c7af0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6c7af5:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  6c7afa:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6c7b00:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c7b06:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c7b0a:	c4 e3 65 0c e0 c0    	vblendps ymm4,ymm3,ymm0,0xc0
  6c7b10:	c5 fb 10 5c 17 28    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x28]
  6c7b16:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c7b1c:	c4 e3 65 0c f8 c0    	vblendps ymm7,ymm3,ymm0,0xc0
  6c7b22:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  6c7b28:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c7b2e:	c4 e3 65 0c e8 c0    	vblendps ymm5,ymm3,ymm0,0xc0
  6c7b34:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  6c7b39:	c5 f8 10 5c 17 18    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x18]
  6c7b3f:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6c7b45:	c5 78 10 5c 17 48    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x48]
  6c7b4b:	c5 fb 10 74 17 58    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x58]
  6c7b51:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6c7b57:	c4 63 4d 0c e8 c0    	vblendps ymm13,ymm6,ymm0,0xc0
  6c7b5d:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  6c7b63:	c5 fb 10 74 17 70    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x70]
  6c7b69:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6c7b6f:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  6c7b75:	c5 78 10 64 17 78    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x78]
  6c7b7b:	c5 7b 10 b4 17 88 00 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x88]
  6c7b82:	00 00 
  6c7b84:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  6c7b8a:	c4 63 0d 0c f8 c0    	vblendps ymm15,ymm14,ymm0,0xc0
  6c7b90:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  6c7b96:	c4 c1 30 c6 e6 dd    	vshufps xmm4,xmm9,xmm14,0xdd
  6c7b9c:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  6c7ba2:	c5 b8 c6 e8 dd       	vshufps xmm5,xmm8,xmm0,0xdd
  6c7ba7:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  6c7bad:	c5 a8 c6 f2 dd       	vshufps xmm6,xmm10,xmm2,0xdd
  6c7bb2:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  6c7bb8:	c4 41 30 c6 ce 88    	vshufps xmm9,xmm9,xmm14,0x88
  6c7bbe:	c4 41 20 c6 f5 dd    	vshufps xmm14,xmm11,xmm13,0xdd
  6c7bc4:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6c7bca:	c5 b8 c6 c0 88       	vshufps xmm0,xmm8,xmm0,0x88
  6c7bcf:	c4 41 18 c6 c7 dd    	vshufps xmm8,xmm12,xmm15,0xdd
  6c7bd5:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6c7bdb:	c5 a8 c6 d2 88       	vshufps xmm2,xmm10,xmm2,0x88
  6c7be0:	c5 60 c6 d7 dd       	vshufps xmm10,xmm3,xmm7,0xdd
  6c7be5:	c4 41 20 c6 ed 88    	vshufps xmm13,xmm11,xmm13,0x88
  6c7beb:	c4 c1 18 c6 cf 88    	vshufps xmm1,xmm12,xmm15,0x88
  6c7bf1:	c5 e0 c6 ff 88       	vshufps xmm7,xmm3,xmm7,0x88
  6c7bf6:	c5 54 58 e6          	vaddps ymm12,ymm5,ymm6
  6c7bfa:	c5 9c 58 dc          	vaddps ymm3,ymm12,ymm4
  6c7bfe:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  6c7c03:	c4 62 7d 18 3d 54 d8 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff9ad854]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c7c0a:	9a ff 
  6c7c0c:	c4 62 05 ac e4       	vfnmadd213ps ymm12,ymm15,ymm4
  6c7c11:	c5 7c 29 fc          	vmovaps ymm4,ymm15
  6c7c15:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  6c7c19:	c5 fc 5c d2          	vsubps ymm2,ymm0,ymm2
  6c7c1d:	c4 c1 24 58 c6       	vaddps ymm0,ymm11,ymm14
  6c7c22:	c4 42 5d ac de       	vfnmadd213ps ymm11,ymm4,ymm14
  6c7c27:	c5 74 58 f7          	vaddps ymm14,ymm1,ymm7
  6c7c2b:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  6c7c2f:	c4 c1 04 58 f9       	vaddps ymm7,ymm15,ymm9
  6c7c34:	c5 fc 29 7c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm7
  6c7c3a:	c4 42 5d ac f9       	vfnmadd213ps ymm15,ymm4,ymm9
  6c7c3f:	c5 d4 5c f6          	vsubps ymm6,ymm5,ymm6
  6c7c43:	c4 c1 0c 58 ed       	vaddps ymm5,ymm14,ymm13
  6c7c48:	c4 42 5d ac f5       	vfnmadd213ps ymm14,ymm4,ymm13
  6c7c4d:	c4 e2 7d 18 25 7e d6 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9ad67e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c7c54:	9a ff 
  6c7c56:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  6c7c5a:	c4 c1 3c 5c fa       	vsubps ymm7,ymm8,ymm10
  6c7c5f:	c5 1c 58 d2          	vaddps ymm10,ymm12,ymm2
  6c7c63:	c5 f4 59 cc          	vmulps ymm1,ymm1,ymm4
  6c7c67:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  6c7c6b:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  6c7c6f:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  6c7c73:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6c7c77:	c5 04 5c de          	vsubps ymm11,ymm15,ymm6
  6c7c7b:	c5 c4 59 fc          	vmulps ymm7,ymm7,ymm4
  6c7c7f:	c5 04 58 c6          	vaddps ymm8,ymm15,ymm6
  6c7c83:	c5 0c 5c ef          	vsubps ymm13,ymm14,ymm7
  6c7c87:	c5 0c 58 cf          	vaddps ymm9,ymm14,ymm7
  6c7c8b:	c4 c1 2c 5c f4       	vsubps ymm6,ymm10,ymm12
  6c7c90:	c4 c1 28 58 fc       	vaddps xmm7,xmm10,xmm12
  6c7c95:	c5 64 58 d0          	vaddps ymm10,ymm3,ymm0
  6c7c99:	c4 63 2d 18 d7 01    	vinsertf128 ymm10,ymm10,xmm7,0x1
  6c7c9f:	c5 e8 5c f9          	vsubps xmm7,xmm2,xmm1
  6c7ca3:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  6c7ca9:	c5 e8 58 c9          	vaddps xmm1,xmm2,xmm1
  6c7cad:	c5 e0 5c c0          	vsubps xmm0,xmm3,xmm0
  6c7cb1:	c5 ac 14 d6          	vunpcklps ymm2,ymm10,ymm6
  6c7cb5:	c5 f4 14 f8          	vunpcklps ymm7,ymm1,ymm0
  6c7cb9:	c5 ed 14 df          	vunpcklpd ymm3,ymm2,ymm7
  6c7cbd:	c5 ed 15 ff          	vunpckhpd ymm7,ymm2,ymm7
  6c7cc1:	c5 ac 15 d6          	vunpckhps ymm2,ymm10,ymm6
  6c7cc5:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6c7cc9:	c5 ed 14 f0          	vunpcklpd ymm6,ymm2,ymm0
  6c7ccd:	c4 c1 24 5c c5       	vsubps ymm0,ymm11,ymm13
  6c7cd2:	c4 c1 20 58 cd       	vaddps xmm1,xmm11,xmm13
  6c7cd7:	c5 fc 28 64 24 20    	vmovaps ymm4,YMMWORD PTR [rsp+0x20]
  6c7cdd:	c5 dc 58 d5          	vaddps ymm2,ymm4,ymm5
  6c7ce1:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  6c7ce7:	c4 c1 38 5c d1       	vsubps xmm2,xmm8,xmm9
  6c7cec:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  6c7cf2:	c4 c1 38 58 d1       	vaddps xmm2,xmm8,xmm9
  6c7cf7:	c5 d8 5c ed          	vsubps xmm5,xmm4,xmm5
  6c7cfb:	c5 74 14 c0          	vunpcklps ymm8,ymm1,ymm0
  6c7cff:	c5 6c 14 cd          	vunpcklps ymm9,ymm2,ymm5
  6c7d03:	c4 c1 3d 14 e1       	vunpcklpd ymm4,ymm8,ymm9
  6c7d08:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  6c7d0d:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6c7d11:	c5 ec 15 cd          	vunpckhps ymm1,ymm2,ymm5
  6c7d15:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  6c7d19:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  6c7d1e:	c5 fc 10 51 60       	vmovups ymm2,YMMWORD PTR [rcx+0x60]
  6c7d23:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  6c7d27:	c4 e2 3d bc ea       	vfnmadd231ps ymm5,ymm8,ymm2
  6c7d2c:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6c7d30:	c5 7c 10 81 80 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0x80]
  6c7d37:	00 
  6c7d38:	c4 e2 45 b8 ca       	vfmadd231ps ymm1,ymm7,ymm2
  6c7d3d:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  6c7d44:	00 
  6c7d45:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  6c7d49:	c4 e2 7d bc fa       	vfnmadd231ps ymm7,ymm0,ymm2
  6c7d4e:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6c7d52:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  6c7d56:	c4 e2 4d b8 c2       	vfmadd231ps ymm0,ymm6,ymm2
  6c7d5b:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  6c7d5f:	c4 62 7d 18 0d f8 d6 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9ad6f8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c7d66:	9a ff 
  6c7d68:	c5 7c 29 ce          	vmovaps ymm6,ymm9
  6c7d6c:	c4 e2 3d ac f3       	vfnmadd213ps ymm6,ymm8,ymm3
  6c7d71:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  6c7d75:	c4 62 7d 18 15 56 d5 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9ad556]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c7d7c:	9a ff 
  6c7d7e:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  6c7d82:	c5 cc 58 c8          	vaddps ymm1,ymm6,ymm0
  6c7d86:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6c7d8a:	c5 7c 29 cf          	vmovaps ymm7,ymm9
  6c7d8e:	c4 e2 6d ac fc       	vfnmadd213ps ymm7,ymm2,ymm4
  6c7d93:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6c7d97:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6c7d9b:	c5 c4 5c f5          	vsubps ymm6,ymm7,ymm5
  6c7d9f:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  6c7da3:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  6c7da7:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  6c7dab:	c5 ec 14 e3          	vunpcklps ymm4,ymm2,ymm3
  6c7daf:	c5 e8 14 fb          	vunpcklps xmm7,xmm2,xmm3
  6c7db3:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  6c7db7:	c5 f8 11 54 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm2
  6c7dbd:	c5 f8 11 3c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm7
  6c7dc2:	c4 e3 7d 19 64 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm4,0x1
  6c7dc9:	01 
  6c7dca:	c5 cc 14 d1          	vunpcklps ymm2,ymm6,ymm1
  6c7dce:	c5 c8 14 d9          	vunpcklps xmm3,xmm6,xmm1
  6c7dd2:	c5 c8 15 c9          	vunpckhps xmm1,xmm6,xmm1
  6c7dd6:	c5 f8 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm1
  6c7ddc:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6c7de2:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6c7de9:	01 
  6c7dea:	c5 d4 14 c8          	vunpcklps ymm1,ymm5,ymm0
  6c7dee:	c5 d0 14 d0          	vunpcklps xmm2,xmm5,xmm0
  6c7df2:	c5 d0 15 c0          	vunpckhps xmm0,xmm5,xmm0
  6c7df6:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6c7dfc:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6c7e02:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  6c7e09:	00 00 00 01 
  6c7e0d:	48 81 c2 90 00 00 00 	add    rdx,0x90
  6c7e14:	48 39 d0             	cmp    rax,rdx
  6c7e17:	0f 85 d3 fc ff ff    	jne    6c7af0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6c7e1d:	48 89 ec             	mov    rsp,rbp
  6c7e20:	5d                   	pop    rbp
  6c7e21:	c5 f8 77             	vzeroupper
  6c7e24:	c3                   	ret
