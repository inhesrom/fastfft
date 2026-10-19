
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006e9b40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6e9b40:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  6e9b44:	c5 f8 10 67 10       	vmovups xmm4,XMMWORD PTR [rdi+0x10]
  6e9b49:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  6e9b4e:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  6e9b53:	c5 e0 c6 c4 88       	vshufps xmm0,xmm3,xmm4,0x88
  6e9b58:	c5 d0 c6 cf 88       	vshufps xmm1,xmm5,xmm7,0x88
  6e9b5d:	c5 78 10 47 50       	vmovups xmm8,XMMWORD PTR [rdi+0x50]
  6e9b62:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  6e9b67:	c4 c1 30 c6 d0 88    	vshufps xmm2,xmm9,xmm8,0x88
  6e9b6d:	c5 e0 c6 f4 dd       	vshufps xmm6,xmm3,xmm4,0xdd
  6e9b72:	c5 d0 c6 df dd       	vshufps xmm3,xmm5,xmm7,0xdd
  6e9b77:	c4 c1 30 c6 e8 dd    	vshufps xmm5,xmm9,xmm8,0xdd
  6e9b7d:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  6e9b81:	c4 e2 7d 18 3d d6 b8 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff98b8d6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6e9b88:	98 ff 
  6e9b8a:	c5 64 58 c5          	vaddps ymm8,ymm3,ymm5
  6e9b8e:	c5 38 58 ce          	vaddps xmm9,xmm8,xmm6
  6e9b92:	c4 e2 3d bc f7       	vfnmadd231ps ymm6,ymm8,ymm7
  6e9b97:	c4 e2 5d ac f8       	vfnmadd213ps ymm7,ymm4,ymm0
  6e9b9c:	c4 62 7d 18 05 2f b7 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff98b72f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6e9ba3:	98 ff 
  6e9ba5:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  6e9ba9:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  6e9bad:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6e9bb1:	c5 bc 59 e9          	vmulps ymm5,ymm8,ymm1
  6e9bb5:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  6e9bb9:	c5 c0 58 cb          	vaddps xmm1,xmm7,xmm3
  6e9bbd:	c5 c0 5c d3          	vsubps xmm2,xmm7,xmm3
  6e9bc1:	c5 fd 15 da          	vunpckhpd ymm3,ymm0,ymm2
  6e9bc5:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  6e9bc9:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  6e9bcd:	c4 e3 75 0c e7 cc    	vblendps ymm4,ymm1,ymm7,0xcc
  6e9bd3:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  6e9bd8:	c5 ec c6 c4 88       	vshufps ymm0,ymm2,ymm4,0x88
  6e9bdd:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6e9be2:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  6e9be7:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6e9bec:	c5 e4 c6 e1 88       	vshufps ymm4,ymm3,ymm1,0x88
  6e9bf1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6e9bf6:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  6e9bfb:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6e9c00:	c5 c8 5c dd          	vsubps xmm3,xmm6,xmm5
  6e9c04:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  6e9c08:	c5 b5 15 f5          	vunpckhpd ymm6,ymm9,ymm5
  6e9c0c:	c5 b5 14 ed          	vunpcklpd ymm5,ymm9,ymm5
  6e9c10:	c4 e3 65 0c ff cc    	vblendps ymm7,ymm3,ymm7,0xcc
  6e9c16:	c5 bd 73 db 08       	vpsrldq ymm8,ymm3,0x8
  6e9c1b:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  6e9c20:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6e9c25:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  6e9c2a:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  6e9c2f:	c4 c1 4c c6 e8 88    	vshufps ymm5,ymm6,ymm8,0x88
  6e9c35:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  6e9c3a:	c4 c1 4c c6 e8 dd    	vshufps ymm5,ymm6,ymm8,0xdd
  6e9c40:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6e9c45:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  6e9c4c:	00 
  6e9c4d:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  6e9c54:	00 
  6e9c55:	c5 bc 59 f4          	vmulps ymm6,ymm8,ymm4
  6e9c59:	c4 c2 35 bc f2       	vfnmadd231ps ymm6,ymm9,ymm10
  6e9c5e:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  6e9c63:	c5 7c 10 4a 40       	vmovups ymm9,YMMWORD PTR [rdx+0x40]
  6e9c68:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  6e9c6d:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  6e9c72:	c5 34 59 d2          	vmulps ymm10,ymm9,ymm2
  6e9c76:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  6e9c7b:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6e9c7f:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  6e9c86:	00 
  6e9c87:	c4 e2 6d b8 fc       	vfmadd231ps ymm7,ymm2,ymm4
  6e9c8c:	c5 fc 10 92 e0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xe0]
  6e9c93:	00 
  6e9c94:	c5 b4 59 e1          	vmulps ymm4,ymm9,ymm1
  6e9c98:	c4 e2 55 bc e2       	vfnmadd231ps ymm4,ymm5,ymm2
  6e9c9d:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  6e9ca1:	c5 4c 58 c8          	vaddps ymm9,ymm6,ymm0
  6e9ca5:	c4 e2 75 b8 ea       	vfmadd231ps ymm5,ymm1,ymm2
  6e9caa:	c5 ac 58 cc          	vaddps ymm1,ymm10,ymm4
  6e9cae:	c5 bc 58 d3          	vaddps ymm2,ymm8,ymm3
  6e9cb2:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  6e9cb6:	c5 c4 58 f5          	vaddps ymm6,ymm7,ymm5
  6e9cba:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  6e9cbe:	c4 c1 64 5c d8       	vsubps ymm3,ymm3,ymm8
  6e9cc3:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  6e9cc8:	c5 e8 58 fe          	vaddps xmm7,xmm2,xmm6
  6e9ccc:	c5 30 58 c1          	vaddps xmm8,xmm9,xmm1
  6e9cd0:	c5 38 14 d7          	vunpcklps xmm10,xmm8,xmm7
  6e9cd4:	c5 b8 15 ff          	vunpckhps xmm7,xmm8,xmm7
  6e9cd8:	c5 f8 13 7e 10       	vmovlps QWORD PTR [rsi+0x10],xmm7
  6e9cdd:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  6e9ce1:	c5 e0 58 fc          	vaddps xmm7,xmm3,xmm4
  6e9ce5:	c5 78 58 c5          	vaddps xmm8,xmm0,xmm5
  6e9ce9:	c5 38 15 d7          	vunpckhps xmm10,xmm8,xmm7
  6e9ced:	c5 b8 14 ff          	vunpcklps xmm7,xmm8,xmm7
  6e9cf1:	c5 f8 11 7e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm7
  6e9cf6:	c5 78 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm10
  6e9cfb:	c5 e8 5c d6          	vsubps xmm2,xmm2,xmm6
  6e9cff:	c5 b0 5c c9          	vsubps xmm1,xmm9,xmm1
  6e9d03:	c5 f0 15 f2          	vunpckhps xmm6,xmm1,xmm2
  6e9d07:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  6e9d0b:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  6e9d10:	c5 f8 13 76 40       	vmovlps QWORD PTR [rsi+0x40],xmm6
  6e9d15:	c5 e0 5c cc          	vsubps xmm1,xmm3,xmm4
  6e9d19:	c5 f8 5c c5          	vsubps xmm0,xmm0,xmm5
  6e9d1d:	c5 f8 15 d1          	vunpckhps xmm2,xmm0,xmm1
  6e9d21:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  6e9d25:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  6e9d2a:	c5 f8 13 56 58       	vmovlps QWORD PTR [rsi+0x58],xmm2
  6e9d2f:	c5 f8 77             	vzeroupper
  6e9d32:	c3                   	ret
