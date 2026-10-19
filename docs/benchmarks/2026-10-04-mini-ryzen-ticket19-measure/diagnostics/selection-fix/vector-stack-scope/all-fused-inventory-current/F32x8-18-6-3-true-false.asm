
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b7b40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b7b40:	55                   	push   rbp
  6b7b41:	48 89 e5             	mov    rbp,rsp
  6b7b44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6b7b48:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  6b7b4f:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  6b7b56:	00 
  6b7b57:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
  6b7b5e:	00 
  6b7b5f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  6b7b64:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  6b7b69:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  6b7b6e:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6b7b74:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6b7b78:	c4 e3 7d 0c d1 c0    	vblendps ymm2,ymm0,ymm1,0xc0
  6b7b7e:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  6b7b83:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6b7b89:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  6b7b8f:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6b7b95:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  6b7b9a:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6b7ba0:	c4 e3 7d 0c e1 c0    	vblendps ymm4,ymm0,ymm1,0xc0
  6b7ba6:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  6b7baa:	c5 f8 10 47 18       	vmovups xmm0,XMMWORD PTR [rdi+0x18]
  6b7baf:	c5 f8 29 44 24 70    	vmovaps XMMWORD PTR [rsp+0x70],xmm0
  6b7bb5:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  6b7bba:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  6b7bbf:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  6b7bc4:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  6b7bca:	c4 63 3d 0c c9 c0    	vblendps ymm9,ymm8,ymm1,0xc0
  6b7bd0:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  6b7bd5:	c5 7b 10 57 70       	vmovsd xmm10,QWORD PTR [rdi+0x70]
  6b7bda:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6b7be0:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  6b7be6:	c5 78 10 5f 78       	vmovups xmm11,XMMWORD PTR [rdi+0x78]
  6b7beb:	c5 7b 10 a7 88 00 00 	vmovsd xmm12,QWORD PTR [rdi+0x88]
  6b7bf2:	00 
  6b7bf3:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  6b7bf9:	c4 63 1d 0c e1 c0    	vblendps ymm12,ymm12,ymm1,0xc0
  6b7bff:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  6b7c05:	c4 c1 50 c6 c5 dd    	vshufps xmm0,xmm5,xmm13,0xdd
  6b7c0b:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  6b7c12:	00 00 
  6b7c14:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  6b7c1a:	c4 c1 40 c6 de dd    	vshufps xmm3,xmm7,xmm14,0xdd
  6b7c20:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  6b7c26:	c4 c1 38 c6 e7 dd    	vshufps xmm4,xmm8,xmm15,0xdd
  6b7c2c:	c5 fc 29 a4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm4
  6b7c33:	00 00 
  6b7c35:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  6b7c3b:	c5 48 c6 c9 dd       	vshufps xmm9,xmm6,xmm1,0xdd
  6b7c40:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  6b7c46:	c4 41 50 c6 d5 88    	vshufps xmm10,xmm5,xmm13,0x88
  6b7c4c:	c4 c1 20 c6 ec dd    	vshufps xmm5,xmm11,xmm12,0xdd
  6b7c52:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  6b7c58:	c4 c3 7d 19 c5 01    	vextractf128 xmm13,ymm0,0x1
  6b7c5e:	c4 c1 40 c6 d6 88    	vshufps xmm2,xmm7,xmm14,0x88
  6b7c64:	c5 f8 28 44 24 70    	vmovaps xmm0,XMMWORD PTR [rsp+0x70]
  6b7c6a:	c4 c1 78 c6 fd dd    	vshufps xmm7,xmm0,xmm13,0xdd
  6b7c70:	c4 41 38 c6 ff 88    	vshufps xmm15,xmm8,xmm15,0x88
  6b7c76:	c5 48 c6 f1 88       	vshufps xmm14,xmm6,xmm1,0x88
  6b7c7b:	c4 41 20 c6 e4 88    	vshufps xmm12,xmm11,xmm12,0x88
  6b7c81:	c4 c1 78 c6 f5 88    	vshufps xmm6,xmm0,xmm13,0x88
  6b7c87:	c5 64 58 dc          	vaddps ymm11,ymm3,ymm4
  6b7c8b:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  6b7c92:	00 00 
  6b7c94:	c5 a4 58 c1          	vaddps ymm0,ymm11,ymm1
  6b7c98:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6b7c9e:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  6b7ca2:	c4 e2 7d 18 05 b5 d7 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9bd7b5]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b7ca9:	9b ff 
  6b7cab:	c4 62 7d ac d9       	vfnmadd213ps ymm11,ymm0,ymm1
  6b7cb0:	c5 04 58 ea          	vaddps ymm13,ymm15,ymm2
  6b7cb4:	c4 c1 6c 5c cf       	vsubps ymm1,ymm2,ymm15
  6b7cb9:	c4 41 3c 58 f9       	vaddps ymm15,ymm8,ymm9
  6b7cbe:	c4 42 7d ac c1       	vfnmadd213ps ymm8,ymm0,ymm9
  6b7cc3:	c5 9c 58 d6          	vaddps ymm2,ymm12,ymm6
  6b7cc7:	c5 9c 5c f6          	vsubps ymm6,ymm12,ymm6
  6b7ccb:	c4 41 14 58 e2       	vaddps ymm12,ymm13,ymm10
  6b7cd0:	c4 42 7d ac ea       	vfnmadd213ps ymm13,ymm0,ymm10
  6b7cd5:	c5 64 5c 8c 24 80 00 	vsubps ymm9,ymm3,YMMWORD PTR [rsp+0x80]
  6b7cdc:	00 00 
  6b7cde:	c5 8c 58 e2          	vaddps ymm4,ymm14,ymm2
  6b7ce2:	c4 c2 7d ac d6       	vfnmadd213ps ymm2,ymm0,ymm14
  6b7ce7:	c4 62 7d 18 15 e4 d5 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9bd5e4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b7cee:	9b ff 
  6b7cf0:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  6b7cf4:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6b7cf8:	c5 24 58 f1          	vaddps ymm14,ymm11,ymm1
  6b7cfc:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  6b7d00:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6b7d04:	c5 3c 58 de          	vaddps ymm11,ymm8,ymm6
  6b7d08:	c4 c1 34 59 fa       	vmulps ymm7,ymm9,ymm10
  6b7d0d:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  6b7d11:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  6b7d15:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6b7d19:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  6b7d1d:	c5 6c 5c ed          	vsubps ymm13,ymm2,ymm5
  6b7d21:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  6b7d25:	c4 c1 0c 5c d3       	vsubps ymm2,ymm14,ymm11
  6b7d2a:	c4 c1 08 58 eb       	vaddps xmm5,xmm14,xmm11
  6b7d2f:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  6b7d35:	c5 04 58 db          	vaddps ymm11,ymm15,ymm3
  6b7d39:	c4 e3 25 18 ed 01    	vinsertf128 ymm5,ymm11,xmm5,0x1
  6b7d3f:	c5 70 5c de          	vsubps xmm11,xmm1,xmm6
  6b7d43:	c4 c3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm11,0x1
  6b7d49:	c5 f0 58 ce          	vaddps xmm1,xmm1,xmm6
  6b7d4d:	c4 c1 60 5c f7       	vsubps xmm6,xmm3,xmm15
  6b7d52:	c5 d4 14 da          	vunpcklps ymm3,ymm5,ymm2
  6b7d56:	c5 d4 15 d2          	vunpckhps ymm2,ymm5,ymm2
  6b7d5a:	c5 f4 14 ee          	vunpcklps ymm5,ymm1,ymm6
  6b7d5e:	c5 f4 15 ce          	vunpckhps ymm1,ymm1,ymm6
  6b7d62:	c5 1c 58 dc          	vaddps ymm11,ymm12,ymm4
  6b7d66:	c5 ed 14 f1          	vunpcklpd ymm6,ymm2,ymm1
  6b7d6a:	c4 c1 34 5c cd       	vsubps ymm1,ymm9,ymm13
  6b7d6f:	c4 c1 30 58 d5       	vaddps xmm2,xmm9,xmm13
  6b7d74:	c5 65 15 cd          	vunpckhpd ymm9,ymm3,ymm5
  6b7d78:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  6b7d7e:	c4 41 40 5c d8       	vsubps xmm11,xmm7,xmm8
  6b7d83:	c4 c3 75 18 cb 01    	vinsertf128 ymm1,ymm1,xmm11,0x1
  6b7d89:	c5 b8 58 ff          	vaddps xmm7,xmm8,xmm7
  6b7d8d:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  6b7d91:	c5 6c 14 c1          	vunpcklps ymm8,ymm2,ymm1
  6b7d95:	c5 44 14 dc          	vunpcklps ymm11,ymm7,ymm4
  6b7d99:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  6b7d9e:	c5 ec 15 c9          	vunpckhps ymm1,ymm2,ymm1
  6b7da2:	c5 c4 15 d4          	vunpckhps ymm2,ymm7,ymm4
  6b7da6:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  6b7daa:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  6b7daf:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  6b7db4:	c5 b4 59 fa          	vmulps ymm7,ymm9,ymm2
  6b7db8:	c4 e2 1d bc fc       	vfnmadd231ps ymm7,ymm12,ymm4
  6b7dbd:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  6b7dc1:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  6b7dc8:	00 
  6b7dc9:	c4 e2 35 b8 d4       	vfmadd231ps ymm2,ymm9,ymm4
  6b7dce:	c5 fc 10 a2 a0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xa0]
  6b7dd5:	00 
  6b7dd6:	c5 1c 59 ce          	vmulps ymm9,ymm12,ymm6
  6b7dda:	c4 62 75 bc cc       	vfnmadd231ps ymm9,ymm1,ymm4
  6b7ddf:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  6b7de3:	c4 e2 4d b8 cc       	vfmadd231ps ymm1,ymm6,ymm4
  6b7de8:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  6b7dec:	c4 c1 3d 14 e3       	vunpcklpd ymm4,ymm8,ymm11
  6b7df1:	c5 ec 58 e9          	vaddps ymm5,ymm2,ymm1
  6b7df5:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  6b7df9:	c5 b4 58 d7          	vaddps ymm2,ymm9,ymm7
  6b7dfd:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  6b7e02:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  6b7e06:	c4 e2 6d ac fb       	vfnmadd213ps ymm7,ymm2,ymm3
  6b7e0b:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  6b7e0f:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  6b7e13:	c5 44 58 c1          	vaddps ymm8,ymm7,ymm1
  6b7e17:	c4 e2 55 ac c4       	vfnmadd213ps ymm0,ymm5,ymm4
  6b7e1c:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  6b7e20:	c5 fc 5c fe          	vsubps ymm7,ymm0,ymm6
  6b7e24:	c5 fc 58 c6          	vaddps ymm0,ymm0,ymm6
  6b7e28:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  6b7e2c:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6b7e30:	c5 dc 14 da          	vunpcklps ymm3,ymm4,ymm2
  6b7e34:	c5 d8 14 ea          	vunpcklps xmm5,xmm4,xmm2
  6b7e38:	c5 d8 15 d2          	vunpckhps xmm2,xmm4,xmm2
  6b7e3c:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  6b7e41:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  6b7e45:	c4 e3 7d 19 5e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm3,0x1
  6b7e4c:	c4 c1 44 14 d0       	vunpcklps ymm2,ymm7,ymm8
  6b7e51:	c4 c1 40 14 d8       	vunpcklps xmm3,xmm7,xmm8
  6b7e56:	c4 c1 40 15 e0       	vunpckhps xmm4,xmm7,xmm8
  6b7e5b:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  6b7e60:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  6b7e65:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  6b7e6c:	c5 fc 14 d1          	vunpcklps ymm2,ymm0,ymm1
  6b7e70:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6b7e74:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6b7e78:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  6b7e7d:	c5 f8 11 5e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm3
  6b7e82:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  6b7e89:	00 00 01 
  6b7e8c:	48 89 ec             	mov    rsp,rbp
  6b7e8f:	5d                   	pop    rbp
  6b7e90:	c5 f8 77             	vzeroupper
  6b7e93:	c3                   	ret
