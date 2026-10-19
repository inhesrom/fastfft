
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006dde80 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6dde80:	55                   	push   rbp
  6dde81:	48 89 e5             	mov    rbp,rsp
  6dde84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6dde88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6dde8f:	48 c1 e2 05          	shl    rdx,0x5
  6dde93:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6dde97:	31 d2                	xor    edx,edx
  6dde99:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6dde9e:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6ddea3:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6ddea7:	c4 e2 7d 18 0d b0 75 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9975b0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6ddeae:	99 ff 
  6ddeb0:	c4 e2 7d 18 15 1b 74 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff99741b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6ddeb7:	99 ff 
  6ddeb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6ddec0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6ddec5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6ddeca:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6dded0:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6dded6:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6ddedc:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  6ddee2:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6ddee8:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  6ddeee:	c5 fb 10 6c 17 40    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x40]
  6ddef4:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6ddefa:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  6ddf00:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6ddf05:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6ddf0b:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6ddf11:	c5 78 10 4c 17 48    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x48]
  6ddf17:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6ddf1d:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6ddf23:	c4 63 2d 0c d0 c0    	vblendps ymm10,ymm10,ymm0,0xc0
  6ddf29:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6ddf2f:	c5 48 c6 db dd       	vshufps xmm11,xmm6,xmm3,0xdd
  6ddf34:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6ddf3a:	c5 38 c6 e5 dd       	vshufps xmm12,xmm8,xmm5,0xdd
  6ddf3f:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6ddf45:	c5 40 c6 ec dd       	vshufps xmm13,xmm7,xmm4,0xdd
  6ddf4a:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6ddf50:	c4 41 30 c6 f2 dd    	vshufps xmm14,xmm9,xmm10,0xdd
  6ddf56:	c5 c8 c6 db 88       	vshufps xmm3,xmm6,xmm3,0x88
  6ddf5b:	c5 b8 c6 ed 88       	vshufps xmm5,xmm8,xmm5,0x88
  6ddf60:	c5 c0 c6 e4 88       	vshufps xmm4,xmm7,xmm4,0x88
  6ddf65:	c4 41 30 c6 c2 88    	vshufps xmm8,xmm9,xmm10,0x88
  6ddf6b:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  6ddf70:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6ddf75:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  6ddf79:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  6ddf7d:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  6ddf82:	c4 c1 5c 5c e0       	vsubps ymm4,ymm4,ymm8
  6ddf87:	c5 64 5c c5          	vsubps ymm8,ymm3,ymm5
  6ddf8b:	c4 41 0c 5c cd       	vsubps ymm9,ymm14,ymm13
  6ddf90:	c4 c1 28 58 df       	vaddps xmm3,xmm10,xmm15
  6ddf95:	c5 a0 58 ec          	vaddps xmm5,xmm11,xmm4
  6ddf99:	c4 41 28 5c d7       	vsubps xmm10,xmm10,xmm15
  6ddf9e:	c5 a0 5c e4          	vsubps xmm4,xmm11,xmm4
  6ddfa2:	c4 41 65 15 da       	vunpckhpd ymm11,ymm3,ymm10
  6ddfa7:	c4 41 65 14 d2       	vunpcklpd ymm10,ymm3,ymm10
  6ddfac:	c5 d5 15 dc          	vunpckhpd ymm3,ymm5,ymm4
  6ddfb0:	c5 24 c6 db 88       	vshufps ymm11,ymm11,ymm3,0x88
  6ddfb5:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  6ddfb9:	c5 ac c6 dc 88       	vshufps ymm3,ymm10,ymm4,0x88
  6ddfbe:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6ddfc3:	c5 ac c6 e4 dd       	vshufps ymm4,ymm10,ymm4,0xdd
  6ddfc8:	c5 dc c6 ec d8       	vshufps ymm5,ymm4,ymm4,0xd8
  6ddfcd:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  6ddfd3:	c5 48 58 d7          	vaddps xmm10,xmm6,xmm7
  6ddfd7:	c4 41 30 58 d8       	vaddps xmm11,xmm9,xmm8
  6ddfdc:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  6ddfe0:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  6ddfe5:	c5 2d 15 c6          	vunpckhpd ymm8,ymm10,ymm6
  6ddfe9:	c5 2d 14 ce          	vunpcklpd ymm9,ymm10,ymm6
  6ddfed:	c5 a5 15 f7          	vunpckhpd ymm6,ymm11,ymm7
  6ddff1:	c5 3c c6 c6 88       	vshufps ymm8,ymm8,ymm6,0x88
  6ddff6:	c5 a5 14 ff          	vunpcklpd ymm7,ymm11,ymm7
  6ddffa:	c5 b4 c6 f7 88       	vshufps ymm6,ymm9,ymm7,0x88
  6ddfff:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6de004:	c5 b4 c6 ff dd       	vshufps ymm7,ymm9,ymm7,0xdd
  6de009:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6de00e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6de014:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  6de019:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  6de01e:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6de025:	00 
  6de026:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6de02d:	00 
  6de02e:	c5 34 59 ed          	vmulps ymm13,ymm9,ymm5
  6de032:	c4 42 45 bc ea       	vfnmadd231ps ymm13,ymm7,ymm10
  6de037:	c5 24 59 f4          	vmulps ymm14,ymm11,ymm4
  6de03b:	c4 42 3d bc f4       	vfnmadd231ps ymm14,ymm8,ymm12
  6de040:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6de045:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6de049:	c4 c2 55 b8 fa       	vfmadd231ps ymm7,ymm5,ymm10
  6de04e:	c4 c1 24 59 e8       	vmulps ymm5,ymm11,ymm8
  6de053:	c4 c2 5d b8 ec       	vfmadd231ps ymm5,ymm4,ymm12
  6de058:	c5 c4 58 e5          	vaddps ymm4,ymm7,ymm5
  6de05c:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  6de060:	c4 62 05 ac c3       	vfnmadd213ps ymm8,ymm15,ymm3
  6de065:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  6de069:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  6de06d:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  6de071:	c4 e2 5d ac fe       	vfnmadd213ps ymm7,ymm4,ymm6
  6de076:	c4 41 14 5c ce       	vsubps ymm9,ymm13,ymm14
  6de07b:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6de07f:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6de083:	c5 d8 58 e6          	vaddps xmm4,xmm4,xmm6
  6de087:	c5 d8 14 f3          	vunpcklps xmm6,xmm4,xmm3
  6de08b:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6de08f:	c5 f8 11 5c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm3
  6de095:	c5 f8 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm6
  6de09a:	c5 b8 58 dd          	vaddps xmm3,xmm8,xmm5
  6de09e:	c4 c1 40 5c e1       	vsubps xmm4,xmm7,xmm9
  6de0a3:	c5 d8 14 f3          	vunpcklps xmm6,xmm4,xmm3
  6de0a7:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6de0ab:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6de0b1:	c5 f8 11 74 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm6
  6de0b7:	c5 b8 5c dd          	vsubps xmm3,xmm8,xmm5
  6de0bb:	c5 b0 58 e7          	vaddps xmm4,xmm9,xmm7
  6de0bf:	c5 d8 14 eb          	vunpcklps xmm5,xmm4,xmm3
  6de0c3:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6de0c7:	c5 f8 11 5c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  6de0cd:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  6de0d3:	48 83 c2 60          	add    rdx,0x60
  6de0d7:	48 39 d0             	cmp    rax,rdx
  6de0da:	0f 85 e0 fd ff ff    	jne    6ddec0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  6de0e0:	48 89 ec             	mov    rsp,rbp
  6de0e3:	5d                   	pop    rbp
  6de0e4:	c5 f8 77             	vzeroupper
  6de0e7:	c3                   	ret
