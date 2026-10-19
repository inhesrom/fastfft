
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab2ac0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab2ac0:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  ab2ac5:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  ab2aca:	c5 f0 c6 d0 dd       	vshufps xmm2,xmm1,xmm0,0xdd
  ab2acf:	c5 f8 10 9f 90 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0x90]
  ab2ad6:	00 
  ab2ad7:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  ab2ade:	00 
  ab2adf:	c5 d8 c6 eb dd       	vshufps xmm5,xmm4,xmm3,0xdd
  ab2ae4:	c5 ec 5c f5          	vsubps ymm6,ymm2,ymm5
  ab2ae8:	c4 e2 7d 18 3d e3 27 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5c27e3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab2aef:	5c ff 
  ab2af1:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  ab2af5:	c5 f0 c6 c8 88       	vshufps xmm1,xmm1,xmm0,0x88
  ab2afa:	c5 d8 c6 db 88       	vshufps xmm3,xmm4,xmm3,0x88
  ab2aff:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  ab2b03:	c5 78 10 07          	vmovups xmm8,XMMWORD PTR [rdi]
  ab2b07:	c5 78 10 4f 10       	vmovups xmm9,XMMWORD PTR [rdi+0x10]
  ab2b0c:	c5 78 10 57 20       	vmovups xmm10,XMMWORD PTR [rdi+0x20]
  ab2b11:	c5 78 10 5f 30       	vmovups xmm11,XMMWORD PTR [rdi+0x30]
  ab2b16:	c4 41 38 c6 e1 88    	vshufps xmm12,xmm8,xmm9,0x88
  ab2b1c:	c4 62 7d 18 2d 3b 29 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff5c293b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab2b23:	5c ff 
  ab2b25:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  ab2b2a:	c4 42 5d ac f4       	vfnmadd213ps ymm14,ymm4,ymm12
  ab2b2f:	c5 8c 58 c6          	vaddps ymm0,ymm14,ymm6
  ab2b33:	c5 78 10 bf b0 00 00 	vmovups xmm15,XMMWORD PTR [rdi+0xb0]
  ab2b3a:	00 
  ab2b3b:	62 e1 7c 08 10 47 0a 	vmovups xmm16,XMMWORD PTR [rdi+0xa0]
  ab2b42:	62 c1 7c 00 c6 cf dd 	vshufps xmm17,xmm16,xmm15,0xdd
  ab2b49:	62 c1 2c 08 c6 d3 dd 	vshufps xmm18,xmm10,xmm11,0xdd
  ab2b50:	62 a1 74 20 5c da    	vsubps ymm19,ymm17,ymm18
  ab2b56:	62 e1 64 20 59 df    	vmulps ymm19,ymm19,ymm7
  ab2b5c:	62 51 7c 00 c6 ff 88 	vshufps xmm15,xmm16,xmm15,0x88
  ab2b63:	c4 41 28 c6 d3 88    	vshufps xmm10,xmm10,xmm11,0x88
  ab2b69:	c4 41 04 58 da       	vaddps ymm11,ymm15,ymm10
  ab2b6e:	62 e1 7c 08 10 47 07 	vmovups xmm16,XMMWORD PTR [rdi+0x70]
  ab2b75:	62 e1 7c 08 10 67 06 	vmovups xmm20,XMMWORD PTR [rdi+0x60]
  ab2b7c:	62 a1 5c 00 c6 e8 88 	vshufps xmm21,xmm20,xmm16,0x88
  ab2b83:	62 c1 7c 28 28 f5    	vmovaps ymm22,ymm13
  ab2b89:	62 a2 25 28 ac f5    	vfnmadd213ps ymm22,ymm11,ymm21
  ab2b8f:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  ab2b95:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  ab2b99:	c4 c1 38 c6 e9 dd    	vshufps xmm5,xmm8,xmm9,0xdd
  ab2b9f:	c4 41 7c 28 c5       	vmovaps ymm8,ymm13
  ab2ba4:	c4 62 6d ac c5       	vfnmadd213ps ymm8,ymm2,ymm5
  ab2ba9:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  ab2bad:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  ab2bb1:	c5 bc 5c d9          	vsubps ymm3,ymm8,ymm1
  ab2bb5:	62 31 74 20 58 ca    	vaddps ymm9,ymm17,ymm18
  ab2bbb:	62 a1 5c 00 c6 c0 dd 	vshufps xmm16,xmm20,xmm16,0xdd
  ab2bc2:	62 32 35 28 ac e8    	vfnmadd213ps ymm13,ymm9,ymm16
  ab2bc8:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  ab2bcd:	c5 ac 59 ff          	vmulps ymm7,ymm10,ymm7
  ab2bd1:	c5 14 5c d7          	vsubps ymm10,ymm13,ymm7
  ab2bd5:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  ab2bd9:	62 31 4c 20 5c f3    	vsubps ymm14,ymm22,ymm19
  ab2bdf:	c5 bc 58 c9          	vaddps ymm1,ymm8,ymm1
  ab2be3:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  ab2be7:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  ab2beb:	62 51 54 20 58 c3    	vaddps ymm8,ymm21,ymm11
  ab2bf1:	c5 d4 58 d2          	vaddps ymm2,ymm5,ymm2
  ab2bf5:	62 d1 7c 20 58 e9    	vaddps ymm5,ymm16,ymm9
  ab2bfb:	c4 41 4c 5c ce       	vsubps ymm9,ymm6,ymm14
  ab2c00:	c5 74 5c df          	vsubps ymm11,ymm1,ymm7
  ab2c04:	c5 3c 58 e4          	vaddps ymm12,ymm8,ymm4
  ab2c08:	c5 6c 58 ed          	vaddps ymm13,ymm2,ymm5
  ab2c0c:	c5 f0 58 cf          	vaddps xmm1,xmm1,xmm7
  ab2c10:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  ab2c16:	c4 c1 60 5c fa       	vsubps xmm7,xmm3,xmm10
  ab2c1b:	c4 e3 25 18 ff 01    	vinsertf128 ymm7,ymm11,xmm7,0x1
  ab2c21:	c5 a8 58 db          	vaddps xmm3,xmm10,xmm3
  ab2c25:	c5 75 14 d3          	vunpcklpd ymm10,ymm1,ymm3
  ab2c29:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  ab2c2d:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  ab2c31:	c5 2c c6 dd 88       	vshufps ymm11,ymm10,ymm5,0x88
  ab2c36:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  ab2c3c:	c5 ac c6 ed dd       	vshufps ymm5,ymm10,ymm5,0xdd
  ab2c41:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab2c46:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  ab2c4a:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  ab2c4e:	c5 f4 c6 da 88       	vshufps ymm3,ymm1,ymm2,0x88
  ab2c53:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ab2c58:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  ab2c5d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ab2c62:	c5 88 58 d6          	vaddps xmm2,xmm14,xmm6
  ab2c66:	c4 e3 1d 18 d2 01    	vinsertf128 ymm2,ymm12,xmm2,0x1
  ab2c6c:	62 b1 7c 08 5c f7    	vsubps xmm6,xmm0,xmm23
  ab2c72:	c4 e3 35 18 f6 01    	vinsertf128 ymm6,ymm9,xmm6,0x1
  ab2c78:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  ab2c7e:	c5 ed 14 f8          	vunpcklpd ymm7,ymm2,ymm0
  ab2c82:	c4 c1 58 5c e0       	vsubps xmm4,xmm4,xmm8
  ab2c87:	c5 4d 14 c4          	vunpcklpd ymm8,ymm6,ymm4
  ab2c8b:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  ab2c91:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab2c97:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  ab2c9d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab2ca2:	c5 ed 15 c0          	vunpckhpd ymm0,ymm2,ymm0
  ab2ca6:	c5 cd 15 d4          	vunpckhpd ymm2,ymm6,ymm4
  ab2caa:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  ab2caf:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ab2cb4:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  ab2cb9:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ab2cbe:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  ab2cc3:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  ab2cc8:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ab2ccf:	00 
  ab2cd0:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  ab2cd7:	00 
  ab2cd8:	c5 7c 10 a2 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xc0]
  ab2cdf:	00 
  ab2ce0:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  ab2ce7:	00 
  ab2ce8:	c5 3c 59 f3          	vmulps ymm14,ymm8,ymm3
  ab2cec:	c4 42 5d bc f2       	vfnmadd231ps ymm14,ymm4,ymm10
  ab2cf1:	c4 41 24 58 fe       	vaddps ymm15,ymm11,ymm14
  ab2cf6:	62 e1 54 28 59 c2    	vmulps ymm16,ymm5,ymm2
  ab2cfc:	62 e2 45 28 bc c6    	vfnmadd231ps ymm16,ymm7,ymm6
  ab2d02:	62 c1 74 28 59 cc    	vmulps ymm17,ymm1,ymm12
  ab2d08:	62 c2 7d 28 bc cd    	vfnmadd231ps ymm17,ymm0,ymm13
  ab2d0e:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  ab2d14:	c5 bc 59 e4          	vmulps ymm4,ymm8,ymm4
  ab2d18:	c4 c2 65 b8 e2       	vfmadd231ps ymm4,ymm3,ymm10
  ab2d1d:	c5 b4 58 dc          	vaddps ymm3,ymm9,ymm4
  ab2d21:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  ab2d25:	c4 e2 55 b8 d6       	vfmadd231ps ymm2,ymm5,ymm6
  ab2d2a:	c5 9c 59 c0          	vmulps ymm0,ymm12,ymm0
  ab2d2e:	c4 c2 75 b8 c5       	vfmadd231ps ymm0,ymm1,ymm13
  ab2d33:	c5 ec 58 c8          	vaddps ymm1,ymm2,ymm0
  ab2d37:	c4 c1 24 5c ee       	vsubps ymm5,ymm11,ymm14
  ab2d3c:	c5 ec 5c c0          	vsubps ymm0,ymm2,ymm0
  ab2d40:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  ab2d44:	c5 b4 5c e4          	vsubps ymm4,ymm9,ymm4
  ab2d48:	62 b1 74 20 5c f0    	vsubps ymm6,ymm17,ymm16
  ab2d4e:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  ab2d52:	62 31 04 28 5c c2    	vsubps ymm8,ymm15,ymm18
  ab2d58:	c5 64 5c c9          	vsubps ymm9,ymm3,ymm1
  ab2d5c:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  ab2d60:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  ab2d64:	c5 e4 58 c9          	vaddps ymm1,ymm3,ymm1
  ab2d68:	62 b1 04 28 58 da    	vaddps ymm3,ymm15,ymm18
  ab2d6e:	c5 fc 28 2d 6a 44 5c 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff5c446a]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab2d75:	ff 
  ab2d76:	c4 e3 7d 19 ce 01    	vextractf128 xmm6,ymm1,0x1
  ab2d7c:	62 f2 55 28 7f cb    	vpermt2ps ymm1,ymm5,ymm3
  ab2d82:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  ab2d86:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  ab2d8c:	c5 c8 14 c9          	vunpcklps xmm1,xmm6,xmm1
  ab2d90:	c5 f8 11 4e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm1
  ab2d95:	c4 e3 7d 19 f9 01    	vextractf128 xmm1,ymm7,0x1
  ab2d9b:	62 f2 55 28 7f fa    	vpermt2ps ymm7,ymm5,ymm2
  ab2da1:	c5 fc 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm7
  ab2da6:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ab2dac:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  ab2db0:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  ab2db5:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  ab2dbb:	62 52 55 28 7f c8    	vpermt2ps ymm9,ymm5,ymm8
  ab2dc1:	c5 7c 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm9
  ab2dc6:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  ab2dcc:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  ab2dd0:	c5 f8 11 8e 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm1
  ab2dd7:	00 
  ab2dd8:	62 f2 5d 28 77 e8    	vpermi2ps ymm5,ymm4,ymm0
  ab2dde:	c5 fc 11 ae 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm5
  ab2de5:	00 
  ab2de6:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ab2dec:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  ab2df2:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  ab2df6:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  ab2dfd:	00 
  ab2dfe:	c5 f8 77             	vzeroupper
  ab2e01:	c3                   	ret
