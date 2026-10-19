
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b1e00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b1e00:	48 c1 e2 05          	shl    rdx,0x5
  6b1e04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b1e08:	31 d2                	xor    edx,edx
  6b1e0a:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6b1e0e:	c4 e2 7d 18 0d 49 36 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9c3649]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b1e15:	9c ff 
  6b1e17:	c4 e2 7d 18 15 b4 34 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9c34b4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b1e1e:	9c ff 
  6b1e20:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6b1e26:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6b1e2c:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6b1e32:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  6b1e38:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6b1e3e:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  6b1e44:	c5 fb 10 6c 17 40    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x40]
  6b1e4a:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6b1e50:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  6b1e56:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6b1e5b:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6b1e61:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6b1e67:	c5 78 10 4c 17 48    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x48]
  6b1e6d:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6b1e73:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6b1e79:	c4 63 2d 0c d0 c0    	vblendps ymm10,ymm10,ymm0,0xc0
  6b1e7f:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6b1e85:	c5 48 c6 db 88       	vshufps xmm11,xmm6,xmm3,0x88
  6b1e8a:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6b1e90:	c5 38 c6 e5 88       	vshufps xmm12,xmm8,xmm5,0x88
  6b1e95:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6b1e9b:	c5 40 c6 ec 88       	vshufps xmm13,xmm7,xmm4,0x88
  6b1ea0:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6b1ea6:	c4 41 30 c6 f2 88    	vshufps xmm14,xmm9,xmm10,0x88
  6b1eac:	c5 c8 c6 db dd       	vshufps xmm3,xmm6,xmm3,0xdd
  6b1eb1:	c5 b8 c6 ed dd       	vshufps xmm5,xmm8,xmm5,0xdd
  6b1eb6:	c5 c0 c6 e4 dd       	vshufps xmm4,xmm7,xmm4,0xdd
  6b1ebb:	c4 41 30 c6 c2 dd    	vshufps xmm8,xmm9,xmm10,0xdd
  6b1ec1:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  6b1ec6:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6b1ecb:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  6b1ecf:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  6b1ed3:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  6b1ed8:	c4 c1 5c 5c e0       	vsubps ymm4,ymm4,ymm8
  6b1edd:	c5 64 5c c5          	vsubps ymm8,ymm3,ymm5
  6b1ee1:	c4 41 0c 5c cd       	vsubps ymm9,ymm14,ymm13
  6b1ee6:	c4 c1 28 58 df       	vaddps xmm3,xmm10,xmm15
  6b1eeb:	c5 a0 58 ec          	vaddps xmm5,xmm11,xmm4
  6b1eef:	c4 41 28 5c d7       	vsubps xmm10,xmm10,xmm15
  6b1ef4:	c5 a0 5c e4          	vsubps xmm4,xmm11,xmm4
  6b1ef8:	c4 41 65 15 da       	vunpckhpd ymm11,ymm3,ymm10
  6b1efd:	c4 41 65 14 d2       	vunpcklpd ymm10,ymm3,ymm10
  6b1f02:	c5 d5 15 dc          	vunpckhpd ymm3,ymm5,ymm4
  6b1f06:	c5 24 c6 db 88       	vshufps ymm11,ymm11,ymm3,0x88
  6b1f0b:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  6b1f0f:	c5 ac c6 dc 88       	vshufps ymm3,ymm10,ymm4,0x88
  6b1f14:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1f19:	c5 ac c6 e4 dd       	vshufps ymm4,ymm10,ymm4,0xdd
  6b1f1e:	c5 dc c6 ec d8       	vshufps ymm5,ymm4,ymm4,0xd8
  6b1f23:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  6b1f29:	c5 48 58 d7          	vaddps xmm10,xmm6,xmm7
  6b1f2d:	c4 41 30 58 d8       	vaddps xmm11,xmm9,xmm8
  6b1f32:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  6b1f36:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  6b1f3b:	c5 2d 15 c6          	vunpckhpd ymm8,ymm10,ymm6
  6b1f3f:	c5 ad 14 f6          	vunpcklpd ymm6,ymm10,ymm6
  6b1f43:	c5 25 15 cf          	vunpckhpd ymm9,ymm11,ymm7
  6b1f47:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  6b1f4d:	c5 a5 14 ff          	vunpcklpd ymm7,ymm11,ymm7
  6b1f51:	c5 4c c6 cf 88       	vshufps ymm9,ymm6,ymm7,0x88
  6b1f56:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6b1f5c:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  6b1f61:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6b1f66:	c4 c1 3c c6 f8 d8    	vshufps ymm7,ymm8,ymm8,0xd8
  6b1f6c:	c5 7c 10 41 40       	vmovups ymm8,YMMWORD PTR [rcx+0x40]
  6b1f71:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  6b1f76:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6b1f7d:	00 
  6b1f7e:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6b1f85:	00 
  6b1f86:	c5 3c 59 ed          	vmulps ymm13,ymm8,ymm5
  6b1f8a:	c4 42 4d bc ea       	vfnmadd231ps ymm13,ymm6,ymm10
  6b1f8f:	c5 24 59 f4          	vmulps ymm14,ymm11,ymm4
  6b1f93:	c4 42 45 bc f4       	vfnmadd231ps ymm14,ymm7,ymm12
  6b1f98:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6b1f9d:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  6b1fa1:	c4 c2 55 b8 f2       	vfmadd231ps ymm6,ymm5,ymm10
  6b1fa6:	c5 a4 59 ef          	vmulps ymm5,ymm11,ymm7
  6b1faa:	c4 c2 5d b8 ec       	vfmadd231ps ymm5,ymm4,ymm12
  6b1faf:	c5 cc 58 e5          	vaddps ymm4,ymm6,ymm5
  6b1fb3:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  6b1fb7:	c4 e2 05 ac fb       	vfnmadd213ps ymm7,ymm15,ymm3
  6b1fbc:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  6b1fc0:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  6b1fc4:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  6b1fc8:	c4 c2 5d ac f1       	vfnmadd213ps ymm6,ymm4,ymm9
  6b1fcd:	c4 41 14 5c c6       	vsubps ymm8,ymm13,ymm14
  6b1fd2:	c5 3c 59 c2          	vmulps ymm8,ymm8,ymm2
  6b1fd6:	c5 b0 58 e4          	vaddps xmm4,xmm9,xmm4
  6b1fda:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6b1fde:	c5 60 14 cc          	vunpcklps xmm9,xmm3,xmm4
  6b1fe2:	c5 e0 15 dc          	vunpckhps xmm3,xmm3,xmm4
  6b1fe6:	c5 f8 11 5c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm3
  6b1fec:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  6b1ff1:	c4 c1 48 5c d8       	vsubps xmm3,xmm6,xmm8
  6b1ff6:	c5 c0 58 e5          	vaddps xmm4,xmm7,xmm5
  6b1ffa:	c5 58 14 cb          	vunpcklps xmm9,xmm4,xmm3
  6b1ffe:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6b2002:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6b2008:	c5 78 11 4c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm9
  6b200e:	c5 b8 58 de          	vaddps xmm3,xmm8,xmm6
  6b2012:	c5 c0 5c e5          	vsubps xmm4,xmm7,xmm5
  6b2016:	c5 d8 14 eb          	vunpcklps xmm5,xmm4,xmm3
  6b201a:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6b201e:	c5 f8 11 5c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  6b2024:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  6b202a:	48 83 c2 60          	add    rdx,0x60
  6b202e:	48 39 d0             	cmp    rax,rdx
  6b2031:	0f 85 e9 fd ff ff    	jne    6b1e20 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6b2037:	c5 f8 77             	vzeroupper
  6b203a:	c3                   	ret
