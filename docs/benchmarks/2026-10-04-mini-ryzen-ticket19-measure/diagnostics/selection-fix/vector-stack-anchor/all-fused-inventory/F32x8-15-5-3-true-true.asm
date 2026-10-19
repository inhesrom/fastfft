
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006f6980 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6f6980:	48 6b c2 78          	imul   rax,rdx,0x78
  6f6984:	31 d2                	xor    edx,edx
  6f6986:	c4 e2 7d 18 25 11 ea 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff97ea11]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6f698d:	97 ff 
  6f698f:	90                   	nop
  6f6990:	c5 fb 10 7c 17 10    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x10]
  6f6996:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6f699c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6f69a0:	c4 63 45 0c c8 c0    	vblendps ymm9,ymm7,ymm0,0xc0
  6f69a6:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  6f69ac:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6f69b2:	c4 63 45 0c d8 c0    	vblendps ymm11,ymm7,ymm0,0xc0
  6f69b8:	c5 fb 10 7c 17 40    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x40]
  6f69be:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6f69c4:	c4 63 45 0c e0 c0    	vblendps ymm12,ymm7,ymm0,0xc0
  6f69ca:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  6f69cf:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  6f69d5:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6f69db:	c5 f8 10 7c 17 48    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x48]
  6f69e1:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6f69e7:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6f69ed:	c4 63 2d 0c f8 c0    	vblendps ymm15,ymm10,ymm0,0xc0
  6f69f3:	c5 f8 10 74 17 60    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x60]
  6f69f9:	c5 7b 10 54 17 70    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x70]
  6f69ff:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6f6a05:	c4 e3 2d 0c e8 c0    	vblendps ymm5,ymm10,ymm0,0xc0
  6f6a0b:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6f6a11:	c4 41 10 c6 d1 dd    	vshufps xmm10,xmm13,xmm9,0xdd
  6f6a17:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  6f6a1d:	c5 88 c6 c2 dd       	vshufps xmm0,xmm14,xmm2,0xdd
  6f6a22:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6f6a28:	c4 41 10 c6 d9 88    	vshufps xmm11,xmm13,xmm9,0x88
  6f6a2e:	c5 48 c6 ed dd       	vshufps xmm13,xmm6,xmm5,0xdd
  6f6a33:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  6f6a39:	c5 88 c6 d2 88       	vshufps xmm2,xmm14,xmm2,0x88
  6f6a3e:	c4 41 38 c6 f4 dd    	vshufps xmm14,xmm8,xmm12,0xdd
  6f6a44:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6f6a4a:	c5 c8 c6 ed 88       	vshufps xmm5,xmm6,xmm5,0x88
  6f6a4f:	c4 c1 40 c6 f7 dd    	vshufps xmm6,xmm7,xmm15,0xdd
  6f6a55:	c4 c1 38 c6 dc 88    	vshufps xmm3,xmm8,xmm12,0x88
  6f6a5b:	c4 41 40 c6 ff 88    	vshufps xmm15,xmm7,xmm15,0x88
  6f6a61:	c5 14 58 c0          	vaddps ymm8,ymm13,ymm0
  6f6a65:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6f6a69:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  6f6a6d:	c5 04 58 e3          	vaddps ymm12,ymm15,ymm3
  6f6a71:	c4 c1 64 5c df       	vsubps ymm3,ymm3,ymm15
  6f6a76:	c4 c1 3c 58 ea       	vaddps ymm5,ymm8,ymm10
  6f6a7b:	c4 41 7c 5c fd       	vsubps ymm15,ymm0,ymm13
  6f6a80:	c5 0c 58 ee          	vaddps ymm13,ymm14,ymm6
  6f6a84:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6f6a88:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  6f6a8e:	c5 8c 5c ee          	vsubps ymm5,ymm14,ymm6
  6f6a92:	c4 62 7d 18 0d 4d ec 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff97ec4d]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6f6a99:	97 ff 
  6f6a9b:	c4 41 7c 28 f1       	vmovaps ymm14,ymm9
  6f6aa0:	c4 42 3d a8 f2       	vfmadd213ps ymm14,ymm8,ymm10
  6f6aa5:	c4 e2 7d 18 0d 96 eb 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff97eb96]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6f6aac:	97 ff 
  6f6aae:	c4 42 75 ac c2       	vfnmadd213ps ymm8,ymm1,ymm10
  6f6ab3:	c5 a4 58 f7          	vaddps ymm6,ymm11,ymm7
  6f6ab7:	c5 1c 58 d6          	vaddps ymm10,ymm12,ymm6
  6f6abb:	c4 62 15 bc f1       	vfnmadd231ps ymm14,ymm13,ymm1
  6f6ac0:	c4 42 35 b8 c5       	vfmadd231ps ymm8,ymm9,ymm13
  6f6ac5:	c4 e2 7d 18 05 8a ec 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff97ec8a]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6f6acc:	97 ff 
  6f6ace:	c5 e4 59 f0          	vmulps ymm6,ymm3,ymm0
  6f6ad2:	c4 e2 6d b8 f4       	vfmadd231ps ymm6,ymm2,ymm4
  6f6ad7:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  6f6adb:	c4 e2 5d bc d3       	vfnmadd231ps ymm2,ymm4,ymm3
  6f6ae0:	c4 41 7c 28 e9       	vmovaps ymm13,ymm9
  6f6ae5:	c4 42 45 a8 eb       	vfmadd213ps ymm13,ymm7,ymm11
  6f6aea:	c4 62 1d bc e9       	vfnmadd231ps ymm13,ymm12,ymm1
  6f6aef:	c4 c2 75 ac fb       	vfnmadd213ps ymm7,ymm1,ymm11
  6f6af4:	c5 d4 59 d8          	vmulps ymm3,ymm5,ymm0
  6f6af8:	c4 e2 05 b8 dc       	vfmadd231ps ymm3,ymm15,ymm4
  6f6afd:	c4 c2 35 b8 fc       	vfmadd231ps ymm7,ymm9,ymm12
  6f6b02:	c5 04 59 e0          	vmulps ymm12,ymm15,ymm0
  6f6b06:	c4 62 5d bc e5       	vfnmadd231ps ymm12,ymm4,ymm5
  6f6b0b:	c5 88 5c ee          	vsubps xmm5,xmm14,xmm6
  6f6b0f:	c5 fc 10 44 24 d8    	vmovups ymm0,YMMWORD PTR [rsp-0x28]
  6f6b15:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6f6b1b:	c5 88 58 f6          	vaddps xmm6,xmm14,xmm6
  6f6b1f:	c5 38 5c ca          	vsubps xmm9,xmm8,xmm2
  6f6b23:	c5 b8 58 d2          	vaddps xmm2,xmm8,xmm2
  6f6b27:	c5 54 14 de          	vunpcklps ymm11,ymm5,ymm6
  6f6b2b:	c4 41 6d 14 f1       	vunpcklpd ymm14,ymm2,ymm9
  6f6b30:	c4 41 24 c6 c6 84    	vshufps ymm8,ymm11,ymm14,0x84
  6f6b36:	c4 41 24 c6 de de    	vshufps ymm11,ymm11,ymm14,0xde
  6f6b3c:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  6f6b40:	c4 c1 6c 15 d1       	vunpckhps ymm2,ymm2,ymm9
  6f6b45:	c5 54 c6 ca 42       	vshufps ymm9,ymm5,ymm2,0x42
  6f6b4a:	c5 90 58 d3          	vaddps xmm2,xmm13,xmm3
  6f6b4e:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  6f6b54:	c5 90 5c db          	vsubps xmm3,xmm13,xmm3
  6f6b58:	c5 98 58 ef          	vaddps xmm5,xmm12,xmm7
  6f6b5c:	c4 c1 40 5c f4       	vsubps xmm6,xmm7,xmm12
  6f6b61:	c5 6c 14 d3          	vunpcklps ymm10,ymm2,ymm3
  6f6b65:	c5 4d 14 e5          	vunpcklpd ymm12,ymm6,ymm5
  6f6b69:	c4 c1 2c c6 fc 84    	vshufps ymm7,ymm10,ymm12,0x84
  6f6b6f:	c4 41 2c c6 d4 de    	vshufps ymm10,ymm10,ymm12,0xde
  6f6b75:	c5 e5 15 d2          	vunpckhpd ymm2,ymm3,ymm2
  6f6b79:	c5 cc 15 dd          	vunpckhps ymm3,ymm6,ymm5
  6f6b7d:	c5 ec c6 d3 42       	vshufps ymm2,ymm2,ymm3,0x42
  6f6b82:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  6f6b87:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  6f6b8c:	c5 a4 59 f3          	vmulps ymm6,ymm11,ymm3
  6f6b90:	c4 e2 2d bc f5       	vfnmadd231ps ymm6,ymm10,ymm5
  6f6b95:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  6f6b99:	c5 7c 10 91 80 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0x80]
  6f6ba0:	00 
  6f6ba1:	c4 e2 25 b8 dd       	vfmadd231ps ymm3,ymm11,ymm5
  6f6ba6:	c5 fc 10 a9 a0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xa0]
  6f6bad:	00 
  6f6bae:	c4 41 2c 59 d9       	vmulps ymm11,ymm10,ymm9
  6f6bb3:	c4 62 6d bc dd       	vfnmadd231ps ymm11,ymm2,ymm5
  6f6bb8:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  6f6bbc:	c5 24 58 d6          	vaddps ymm10,ymm11,ymm6
  6f6bc0:	c4 e2 35 b8 d5       	vfmadd231ps ymm2,ymm9,ymm5
  6f6bc5:	c5 e4 58 ea          	vaddps ymm5,ymm3,ymm2
  6f6bc9:	c4 e2 7d 18 05 8e e8 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff97e88e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f6bd0:	97 ff 
  6f6bd2:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  6f6bd6:	c4 42 2d ac c8       	vfnmadd213ps ymm9,ymm10,ymm8
  6f6bdb:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  6f6bdf:	c4 e2 7d 18 0d ec e6 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff97e6ec]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f6be6:	97 ff 
  6f6be8:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  6f6bec:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  6f6bf0:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6f6bf5:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  6f6bf9:	c4 62 55 ac df       	vfnmadd213ps ymm11,ymm5,ymm7
  6f6bfe:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  6f6c02:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  6f6c06:	c5 24 5c ce          	vsubps ymm9,ymm11,ymm6
  6f6c0a:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  6f6c0e:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  6f6c12:	c4 c1 2c 58 f8       	vaddps ymm7,ymm10,ymm8
  6f6c17:	c5 54 14 c7          	vunpcklps ymm8,ymm5,ymm7
  6f6c1b:	c5 50 14 d7          	vunpcklps xmm10,xmm5,xmm7
  6f6c1f:	c5 d0 15 ef          	vunpckhps xmm5,xmm5,xmm7
  6f6c23:	c5 f8 11 6c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm5
  6f6c29:	c5 78 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm10
  6f6c2e:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  6f6c34:	c5 f8 13 6c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm5
  6f6c3a:	c5 b4 14 eb          	vunpcklps ymm5,ymm9,ymm3
  6f6c3e:	c5 b0 14 fb          	vunpcklps xmm7,xmm9,xmm3
  6f6c42:	c5 b0 15 db          	vunpckhps xmm3,xmm9,xmm3
  6f6c46:	c5 f8 11 5c 16 38    	vmovups XMMWORD PTR [rsi+rdx*1+0x38],xmm3
  6f6c4c:	c5 f8 11 7c 16 28    	vmovups XMMWORD PTR [rsi+rdx*1+0x28],xmm7
  6f6c52:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  6f6c58:	c5 f8 13 5c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm3
  6f6c5e:	c5 cc 14 da          	vunpcklps ymm3,ymm6,ymm2
  6f6c62:	c5 c8 14 ea          	vunpcklps xmm5,xmm6,xmm2
  6f6c66:	c5 c8 15 d2          	vunpckhps xmm2,xmm6,xmm2
  6f6c6a:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6f6c70:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  6f6c76:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  6f6c7c:	c5 f8 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm2
  6f6c82:	48 83 c2 78          	add    rdx,0x78
  6f6c86:	48 39 d0             	cmp    rax,rdx
  6f6c89:	0f 85 01 fd ff ff    	jne    6f6990 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6f6c8f:	c5 f8 77             	vzeroupper
  6f6c92:	c3                   	ret
