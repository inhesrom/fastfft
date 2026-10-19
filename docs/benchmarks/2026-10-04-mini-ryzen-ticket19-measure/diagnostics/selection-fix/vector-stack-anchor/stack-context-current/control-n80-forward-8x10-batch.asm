
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b0b9c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b0b9c0:	55                   	push   rbp
  b0b9c1:	48 89 e5             	mov    rbp,rsp
  b0b9c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b0b9c8:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  b0b9cf:	48 c1 e2 07          	shl    rdx,0x7
  b0b9d3:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  b0b9d7:	31 d2                	xor    edx,edx
  b0b9d9:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  b0b9e0:	00 
  b0b9e1:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  b0b9e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  b0b9ed:	00 00 00 
  b0b9f0:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  b0b9f7:	00 
  b0b9f8:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  b0b9fd:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  b0ba02:	c5 7c 10 44 17 20    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x20]
  b0ba08:	c4 41 7c c6 c8 88    	vshufps ymm9,ymm0,ymm8,0x88
  b0ba0e:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b0ba14:	c4 c1 7c c6 c0 dd    	vshufps ymm0,ymm0,ymm8,0xdd
  b0ba1a:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  b0ba20:	c5 fc 10 44 17 50    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x50]
  b0ba26:	c5 7c 10 54 17 70    	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x70]
  b0ba2c:	c4 41 7c c6 da 88    	vshufps ymm11,ymm0,ymm10,0x88
  b0ba32:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b0ba38:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  b0ba3e:	c5 7c 10 94 17 a0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xa0]
  b0ba45:	00 00 
  b0ba47:	c5 7c 10 a4 17 c0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  b0ba4e:	00 00 
  b0ba50:	c4 63 fd 01 e8 d8    	vpermpd ymm13,ymm0,0xd8
  b0ba56:	c4 c1 2c c6 c4 88    	vshufps ymm0,ymm10,ymm12,0x88
  b0ba5c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b0ba62:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  b0ba68:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b0ba6e:	c5 7c 10 a4 17 f0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xf0]
  b0ba75:	00 00 
  b0ba77:	c5 7c 10 b4 17 10 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x110]
  b0ba7e:	00 00 
  b0ba80:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  b0ba86:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  b0ba8c:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  b0ba92:	c5 7c 10 b4 17 40 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x140]
  b0ba99:	00 00 
  b0ba9b:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x160]
  b0baa2:	0b 
  b0baa3:	62 c3 fd 28 01 cc d8 	vpermpd ymm17,ymm12,0xd8
  b0baaa:	62 31 0c 28 c6 e0 88 	vshufps ymm12,ymm14,ymm16,0x88
  b0bab1:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b0bab7:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  b0babe:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b0bac4:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x190]
  b0bacb:	90 01 00 00 
  b0bacf:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1b0]
  b0bad6:	b0 01 00 00 
  b0bada:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  b0bae1:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  b0bae8:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b0baef:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1e0]
  b0baf6:	0f 
  b0baf7:	62 e1 7c 28 10 64 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x200]
  b0bafe:	10 
  b0baff:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b0bb06:	62 a1 6c 20 c6 ec 88 	vshufps ymm21,ymm18,ymm20,0x88
  b0bb0d:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  b0bb14:	62 a1 6c 20 c6 d4 dd 	vshufps ymm18,ymm18,ymm20,0xdd
  b0bb1b:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b0bb22:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x230]
  b0bb29:	30 02 00 00 
  b0bb2d:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x250]
  b0bb34:	50 02 00 00 
  b0bb38:	62 a1 5c 20 c6 fe 88 	vshufps ymm23,ymm20,ymm22,0x88
  b0bb3f:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  b0bb46:	62 a1 5c 20 c6 e6 dd 	vshufps ymm20,ymm20,ymm22,0xdd
  b0bb4d:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b0bb54:	62 c1 34 28 58 f4    	vaddps ymm22,ymm9,ymm12
  b0bb5a:	62 21 7c 28 58 c5    	vaddps ymm24,ymm0,ymm21
  b0bb60:	62 01 4c 20 58 c8    	vaddps ymm25,ymm22,ymm24
  b0bb66:	62 21 24 28 58 d3    	vaddps ymm26,ymm11,ymm19
  b0bb6c:	62 21 04 28 58 df    	vaddps ymm27,ymm15,ymm23
  b0bb72:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b0bb78:	62 41 3c 28 58 ee    	vaddps ymm29,ymm8,ymm14
  b0bb7e:	62 21 2c 28 58 f2    	vaddps ymm30,ymm10,ymm18
  b0bb84:	62 21 14 28 58 f8    	vaddps ymm31,ymm13,ymm16
  b0bb8a:	62 91 14 20 58 ce    	vaddps ymm1,ymm29,ymm30
  b0bb90:	62 b1 74 20 58 d4    	vaddps ymm2,ymm17,ymm20
  b0bb96:	62 f1 04 20 58 da    	vaddps ymm3,ymm31,ymm2
  b0bb9c:	c4 c1 34 5c e4       	vsubps ymm4,ymm9,ymm12
  b0bba1:	62 91 34 20 58 ec    	vaddps ymm5,ymm25,ymm28
  b0bba7:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  b0bbad:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  b0bbb1:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  b0bbb7:	c5 74 58 e3          	vaddps ymm12,ymm1,ymm3
  b0bbbb:	62 a1 14 28 5c c0    	vsubps ymm16,ymm13,ymm16
  b0bbc1:	62 31 24 28 58 e8    	vaddps ymm13,ymm11,ymm16
  b0bbc7:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  b0bbcd:	c4 e2 7d 18 35 c6 97 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5697c6]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b0bbd4:	56 ff 
  b0bbd6:	62 e1 14 28 59 d6    	vmulps ymm18,ymm13,ymm6
  b0bbdc:	62 31 04 28 5c ff    	vsubps ymm15,ymm15,ymm23
  b0bbe2:	62 51 74 20 5c ef    	vsubps ymm13,ymm17,ymm15
  b0bbe8:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  b0bbed:	62 e1 14 28 59 e6    	vmulps ymm20,ymm13,ymm6
  b0bbf3:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  b0bbf9:	c5 3c 58 e8          	vaddps ymm13,ymm8,ymm0
  b0bbfd:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  b0bc03:	c5 24 59 de          	vmulps ymm11,ymm11,ymm6
  b0bc07:	62 31 04 28 58 f1    	vaddps ymm14,ymm15,ymm17
  b0bc0d:	c5 0c 59 fe          	vmulps ymm15,ymm14,ymm6
  b0bc11:	62 81 4c 20 5c c0    	vsubps ymm16,ymm22,ymm24
  b0bc17:	62 21 6c 20 58 c4    	vaddps ymm24,ymm18,ymm20
  b0bc1d:	62 f1 04 20 5c d2    	vsubps ymm2,ymm31,ymm2
  b0bc23:	62 e1 7c 20 58 ca    	vaddps ymm17,ymm16,ymm2
  b0bc29:	62 81 14 20 5c ee    	vsubps ymm21,ymm29,ymm30
  b0bc2f:	62 41 24 28 5c ef    	vsubps ymm29,ymm11,ymm15
  b0bc35:	62 01 24 20 5c d2    	vsubps ymm26,ymm27,ymm26
  b0bc3b:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  b0bc41:	c4 41 5c 5c f2       	vsubps ymm14,ymm4,ymm10
  b0bc46:	62 c1 24 28 58 ff    	vaddps ymm23,ymm11,ymm15
  b0bc4c:	62 e1 3c 28 5c d8    	vsubps ymm19,ymm8,ymm0
  b0bc52:	62 a1 5c 20 5c f2    	vsubps ymm22,ymm20,ymm18
  b0bc58:	62 91 34 20 5c e4    	vsubps ymm4,ymm25,ymm28
  b0bc5e:	62 81 34 28 58 e0    	vaddps ymm20,ymm9,ymm24
  b0bc64:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b0bc68:	62 f1 7c 20 5c d2    	vsubps ymm2,ymm16,ymm2
  b0bc6e:	62 91 54 20 5c da    	vsubps ymm3,ymm21,ymm26
  b0bc74:	62 11 14 28 58 fd    	vaddps ymm15,ymm13,ymm29
  b0bc7a:	c4 e3 55 18 c4 01    	vinsertf128 ymm0,ymm5,xmm4,0x1
  b0bc80:	c4 e3 55 06 e4 31    	vperm2f128 ymm4,ymm5,ymm4,0x31
  b0bc86:	62 f3 75 20 18 ea 01 	vinsertf32x4 ymm5,ymm17,xmm2,0x1
  b0bc8d:	62 a1 0c 28 58 ef    	vaddps ymm21,ymm14,ymm23
  b0bc93:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  b0bc9a:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  b0bc9e:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  b0bca4:	c5 5d 14 da          	vunpcklpd ymm11,ymm4,ymm2
  b0bca8:	62 a1 64 20 58 ce    	vaddps ymm17,ymm19,ymm22
  b0bcae:	c5 5d 15 d2          	vunpckhpd ymm10,ymm4,ymm2
  b0bcb2:	c4 e3 1d 18 d1 01    	vinsertf128 ymm2,ymm12,xmm1,0x1
  b0bcb8:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  b0bcbe:	62 91 34 28 5c e0    	vsubps ymm4,ymm9,ymm24
  b0bcc4:	62 63 25 20 18 c3 01 	vinsertf32x4 ymm24,ymm27,xmm3,0x1
  b0bccb:	62 f3 a5 20 23 db 03 	vshuff64x2 ymm3,ymm27,ymm3,0x3
  b0bcd2:	62 91 ed 28 14 f0    	vunpcklpd ymm6,ymm2,ymm24
  b0bcd8:	c5 fc 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm6
  b0bcde:	62 81 14 28 5c d5    	vsubps ymm18,ymm13,ymm29
  b0bce4:	62 e1 f5 28 14 c3    	vunpcklpd ymm16,ymm1,ymm3
  b0bcea:	c5 75 15 e3          	vunpckhpd ymm12,ymm1,ymm3
  b0bcee:	62 91 ed 28 15 c8    	vunpckhpd ymm1,ymm2,ymm24
  b0bcf4:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  b0bcfa:	62 b1 0c 28 5c cf    	vsubps ymm1,ymm14,ymm23
  b0bd00:	c5 7d 15 f5          	vunpckhpd ymm14,ymm0,ymm5
  b0bd04:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x40]
  b0bd0b:	04 
  b0bd0c:	62 93 3d 00 21 d0 9c 	vinsertps xmm2,xmm24,xmm24,0x9c
  b0bd13:	62 a1 64 20 5c f6    	vsubps ymm22,ymm19,ymm22
  b0bd19:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  b0bd20:	00 00 
  b0bd22:	c4 e3 79 21 d8 9c    	vinsertps xmm3,xmm0,xmm0,0x9c
  b0bd28:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b0bd2d:	c4 c1 78 c6 e9 dd    	vshufps xmm5,xmm0,xmm9,0xdd
  b0bd33:	62 e3 5d 20 18 dc 01 	vinsertf32x4 ymm19,ymm20,xmm4,0x1
  b0bd3a:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0xe0]
  b0bd41:	0e 
  b0bd42:	62 41 34 00 c6 d1 dd 	vshufps xmm26,xmm25,xmm9,0xdd
  b0bd49:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x130]
  b0bd50:	13 
  b0bd51:	62 e3 dd 20 23 fc 03 	vshuff64x2 ymm23,ymm20,ymm4,0x3
  b0bd58:	62 d1 24 00 c6 e1 dd 	vshufps xmm4,xmm27,xmm9,0xdd
  b0bd5f:	62 61 7c 08 10 64 17 	vmovups xmm28,XMMWORD PTR [rdi+rdx*1+0x180]
  b0bd66:	18 
  b0bd67:	62 03 1d 00 21 ec 9c 	vinsertps xmm29,xmm28,xmm28,0x9c
  b0bd6e:	62 e3 55 20 18 e1 01 	vinsertf32x4 ymm20,ymm21,xmm1,0x1
  b0bd75:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  b0bd7c:	00 00 
  b0bd7e:	62 63 7d 08 21 f0 9c 	vinsertps xmm30,xmm0,xmm0,0x9c
  b0bd85:	62 41 7c 08 c6 f9 dd 	vshufps xmm31,xmm0,xmm9,0xdd
  b0bd8c:	62 73 d5 20 23 c1 03 	vshuff64x2 ymm8,ymm21,ymm1,0x3
  b0bd93:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  b0bd9a:	00 00 
  b0bd9c:	62 c1 74 08 c6 e9 dd 	vshufps xmm21,xmm1,xmm9,0xdd
  b0bda3:	c5 f8 10 b4 17 70 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x270]
  b0bdaa:	00 00 
  b0bdac:	62 91 6c 28 58 fd    	vaddps ymm7,ymm2,ymm29
  b0bdb2:	62 91 6c 28 5c d5    	vsubps ymm2,ymm2,ymm29
  b0bdb8:	62 21 2c 20 58 ed    	vaddps ymm29,ymm26,ymm21
  b0bdbe:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  b0bdc4:	62 01 64 28 58 d6    	vaddps ymm26,ymm3,ymm30
  b0bdca:	62 91 64 28 5c de    	vsubps ymm3,ymm3,ymm30
  b0bdd0:	62 01 54 28 58 f7    	vaddps ymm30,ymm5,ymm31
  b0bdd6:	62 91 54 28 5c ef    	vsubps ymm5,ymm5,ymm31
  b0bddc:	62 41 4c 08 c6 f9 dd 	vshufps xmm31,xmm6,xmm9,0xdd
  b0bde3:	62 91 5c 28 58 c7    	vaddps ymm0,ymm4,ymm31
  b0bde9:	62 91 5c 28 5c e7    	vsubps ymm4,ymm4,ymm31
  b0bdef:	62 03 25 00 21 db 9c 	vinsertps xmm27,xmm27,xmm27,0x9c
  b0bdf6:	c4 e3 49 21 f6 9c    	vinsertps xmm6,xmm6,xmm6,0x9c
  b0bdfc:	62 61 24 20 58 fe    	vaddps ymm31,ymm27,ymm6
  b0be02:	62 f1 24 20 5c f6    	vsubps ymm6,ymm27,ymm6
  b0be08:	62 41 3c 00 c6 c1 dd 	vshufps xmm24,xmm24,xmm9,0xdd
  b0be0f:	62 41 1c 00 c6 d9 dd 	vshufps xmm27,xmm28,xmm9,0xdd
  b0be16:	62 01 3c 20 58 e3    	vaddps ymm28,ymm24,ymm27
  b0be1c:	62 01 3c 20 5c c3    	vsubps ymm24,ymm24,ymm27
  b0be22:	62 03 35 00 21 c9 9c 	vinsertps xmm25,xmm25,xmm25,0x9c
  b0be29:	c4 e3 71 21 c9 9c    	vinsertps xmm1,xmm1,xmm1,0x9c
  b0be2f:	62 61 34 20 58 d9    	vaddps ymm27,ymm25,ymm1
  b0be35:	62 01 74 28 5c c9    	vsubps ymm25,ymm1,ymm25
  b0be3b:	62 b3 05 28 18 ca 01 	vinsertf32x4 ymm1,ymm15,xmm18,0x1
  b0be42:	62 33 85 28 23 fa 03 	vshuff64x2 ymm15,ymm15,ymm18,0x3
  b0be49:	c5 64 58 cd          	vaddps ymm9,ymm3,ymm5
  b0be4d:	c5 d4 5c eb          	vsubps ymm5,ymm5,ymm3
  b0be51:	62 a3 75 20 18 d6 01 	vinsertf32x4 ymm18,ymm17,xmm22,0x1
  b0be58:	62 b3 f5 20 23 de 03 	vshuff64x2 ymm3,ymm17,ymm22,0x3
  b0be5f:	62 e1 5c 28 5c f6    	vsubps ymm22,ymm4,ymm6
  b0be65:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  b0be69:	62 d1 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm8
  b0be6f:	62 51 c5 20 15 c0    	vunpckhpd ymm8,ymm23,ymm8
  b0be75:	62 81 44 28 58 fb    	vaddps ymm23,ymm7,ymm27
  b0be7b:	62 91 44 28 5c fb    	vsubps ymm7,ymm7,ymm27
  b0be81:	62 61 85 28 14 db    	vunpcklpd ymm27,ymm15,ymm3
  b0be87:	c5 05 15 fb          	vunpckhpd ymm15,ymm15,ymm3
  b0be8b:	62 71 0c 20 58 e8    	vaddps ymm13,ymm30,ymm0
  b0be91:	62 f1 0c 20 5c c0    	vsubps ymm0,ymm30,ymm0
  b0be97:	62 21 f5 28 14 f2    	vunpcklpd ymm30,ymm1,ymm18
  b0be9d:	62 b1 f5 28 15 ca    	vunpckhpd ymm1,ymm1,ymm18
  b0bea3:	62 81 1c 20 58 d5    	vaddps ymm18,ymm28,ymm29
  b0bea9:	62 01 1c 20 5c e5    	vsubps ymm28,ymm28,ymm29
  b0beaf:	62 21 e5 20 14 ec    	vunpcklpd ymm29,ymm19,ymm20
  b0beb5:	62 a1 e5 20 15 cc    	vunpckhpd ymm17,ymm19,ymm20
  b0bebb:	62 81 2c 20 58 e7    	vaddps ymm20,ymm26,ymm31
  b0bec1:	62 01 04 20 5c fa    	vsubps ymm31,ymm31,ymm26
  b0bec7:	62 61 24 28 c6 d6 88 	vshufps ymm26,ymm11,ymm6,0x88
  b0bece:	c5 a4 c6 f6 dd       	vshufps ymm6,ymm11,ymm6,0xdd
  b0bed3:	62 31 6c 28 58 dd    	vaddps ymm11,ymm2,ymm21
  b0bed9:	62 a1 6c 28 5c ed    	vsubps ymm21,ymm2,ymm21
  b0bedf:	62 e2 7d 28 18 1d b3 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff5694b3]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b0bee6:	94 56 ff 
  b0bee9:	62 b1 54 28 59 d3    	vmulps ymm2,ymm5,ymm19
  b0beef:	62 b1 5c 28 59 e3    	vmulps ymm4,ymm4,ymm19
  b0bef5:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  b0bef9:	c5 ec 58 e4          	vaddps ymm4,ymm2,ymm4
  b0befd:	c4 c1 2c c6 e8 88    	vshufps ymm5,ymm10,ymm8,0x88
  b0bf03:	c4 41 2c c6 c0 dd    	vshufps ymm8,ymm10,ymm8,0xdd
  b0bf09:	62 11 34 20 58 d0    	vaddps ymm10,ymm25,ymm24
  b0bf0f:	62 91 3c 20 5c d1    	vsubps ymm2,ymm24,ymm25
  b0bf15:	62 31 34 28 59 cb    	vmulps ymm9,ymm9,ymm19
  b0bf1b:	62 a1 4c 20 59 f3    	vmulps ymm22,ymm22,ymm19
  b0bf21:	62 21 34 28 58 c6    	vaddps ymm24,ymm9,ymm22
  b0bf27:	62 c1 4c 20 5c f1    	vsubps ymm22,ymm22,ymm9
  b0bf2d:	62 11 7c 20 c6 cb 88 	vshufps ymm9,ymm16,ymm27,0x88
  b0bf34:	62 81 7c 20 c6 c3 dd 	vshufps ymm16,ymm16,ymm27,0xdd
  b0bf3b:	62 21 44 20 58 cc    	vaddps ymm25,ymm23,ymm20
  b0bf41:	62 a1 44 00 5c e4    	vsubps xmm20,xmm23,xmm20
  b0bf47:	62 a3 35 20 18 e4 01 	vinsertf32x4 ymm20,ymm25,xmm20,0x1
  b0bf4e:	62 81 24 28 58 f8    	vaddps ymm23,ymm11,ymm24
  b0bf54:	62 11 24 08 5c d8    	vsubps xmm11,xmm11,xmm24
  b0bf5a:	62 53 45 20 18 db 01 	vinsertf32x4 ymm11,ymm23,xmm11,0x1
  b0bf61:	62 c1 1c 28 c6 ff 88 	vshufps ymm23,ymm12,ymm15,0x88
  b0bf68:	c4 41 1c c6 ff dd    	vshufps ymm15,ymm12,ymm15,0xdd
  b0bf6e:	c5 44 58 e0          	vaddps ymm12,ymm7,ymm0
  b0bf72:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  b0bf76:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x20]
  b0bf7d:	01 
  b0bf7e:	62 91 64 20 c6 fe dd 	vshufps ymm7,ymm19,ymm30,0xdd
  b0bf85:	62 01 64 20 c6 c6 88 	vshufps ymm24,ymm19,ymm30,0x88
  b0bf8c:	c4 e3 1d 18 c0 01    	vinsertf128 ymm0,ymm12,xmm0,0x1
  b0bf92:	62 e1 dd 20 14 e0    	vunpcklpd ymm20,ymm20,ymm0
  b0bf98:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  b0bf9e:	62 91 1c 28 c6 c5 dd 	vshufps ymm0,ymm12,ymm29,0xdd
  b0bfa5:	62 01 1c 28 c6 cd 88 	vshufps ymm25,ymm12,ymm29,0x88
  b0bfac:	62 71 54 20 58 e4    	vaddps ymm12,ymm21,ymm4
  b0bfb2:	62 f1 54 00 5c e4    	vsubps xmm4,xmm21,xmm4
  b0bfb8:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x40]
  b0bfbf:	02 
  b0bfc0:	62 61 64 20 c6 e9 dd 	vshufps ymm29,ymm19,ymm1,0xdd
  b0bfc7:	62 61 64 20 c6 f1 88 	vshufps ymm30,ymm19,ymm1,0x88
  b0bfce:	c4 e3 1d 18 cc 01    	vinsertf128 ymm1,ymm12,xmm4,0x1
  b0bfd4:	c5 a5 14 e1          	vunpcklpd ymm4,ymm11,ymm1
  b0bfd8:	62 b1 0c 28 c6 c9 dd 	vshufps ymm1,ymm14,ymm17,0xdd
  b0bfdf:	62 31 0c 28 c6 d9 88 	vshufps ymm11,ymm14,ymm17,0x88
  b0bfe6:	62 c1 6c 20 58 cd    	vaddps ymm17,ymm18,ymm13
  b0bfec:	62 c1 6c 00 5c d5    	vsubps xmm18,xmm18,xmm13
  b0bff2:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  b0bff7:	62 81 2c 20 c6 ea d8 	vshufps ymm21,ymm26,ymm26,0xd8
  b0bffe:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  b0c003:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b0c009:	62 61 54 28 c6 d5 d8 	vshufps ymm26,ymm5,ymm5,0xd8
  b0c010:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  b0c016:	c5 44 c6 ef d8       	vshufps ymm13,ymm7,ymm7,0xd8
  b0c01b:	c4 c1 34 c6 c1 d8    	vshufps ymm0,ymm9,ymm9,0xd8
  b0c021:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b0c028:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  b0c02e:	62 b3 75 20 18 f2 01 	vinsertf32x4 ymm6,ymm17,xmm18,0x1
  b0c035:	62 21 44 20 c6 df d8 	vshufps ymm27,ymm23,ymm23,0xd8
  b0c03c:	c5 ac 58 fb          	vaddps ymm7,ymm10,ymm3
  b0c040:	c5 28 5c c3          	vsubps xmm8,xmm10,xmm3
  b0c044:	62 11 04 20 58 d4    	vaddps ymm10,ymm31,ymm28
  b0c04a:	62 c1 04 28 c6 d7 d8 	vshufps ymm18,ymm15,ymm15,0xd8
  b0c051:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  b0c057:	62 31 6c 28 58 fe    	vaddps ymm15,ymm2,ymm22
  b0c05d:	62 11 1c 00 5c c7    	vsubps xmm8,xmm28,xmm31
  b0c063:	62 01 3c 20 c6 e0 d8 	vshufps ymm28,ymm24,ymm24,0xd8
  b0c06a:	62 e1 5c 20 c6 c4 dd 	vshufps ymm16,ymm20,ymm4,0xdd
  b0c071:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b0c078:	c4 43 2d 18 d0 01    	vinsertf128 ymm10,ymm10,xmm8,0x1
  b0c07e:	62 91 34 20 c6 d9 d8 	vshufps ymm3,ymm25,ymm25,0xd8
  b0c085:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  b0c08b:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  b0c090:	62 b1 6c 08 5c d6    	vsubps xmm2,xmm2,xmm22
  b0c096:	c4 e3 05 18 d2 01    	vinsertf128 ymm2,ymm15,xmm2,0x1
  b0c09c:	62 81 14 20 c6 cd d8 	vshufps ymm17,ymm29,ymm29,0xd8
  b0c0a3:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  b0c0a7:	c5 cc c6 fa dd       	vshufps ymm7,ymm6,ymm2,0xdd
  b0c0ac:	62 e1 44 28 c6 ff d8 	vshufps ymm23,ymm7,ymm7,0xd8
  b0c0b3:	62 91 0c 20 c6 fe d8 	vshufps ymm7,ymm30,ymm30,0xd8
  b0c0ba:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  b0c0bf:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b0c0c4:	62 f1 5c 20 c6 e4 88 	vshufps ymm4,ymm20,ymm4,0x88
  b0c0cb:	62 61 74 28 c6 c1 d8 	vshufps ymm24,ymm1,ymm1,0xd8
  b0c0d2:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  b0c0d7:	62 e1 7c 28 10 71 02 	vmovups ymm22,YMMWORD PTR [rcx+0x40]
  b0c0de:	62 e1 7c 28 10 61 03 	vmovups ymm20,YMMWORD PTR [rcx+0x60]
  b0c0e5:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  b0c0eb:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  b0c0f2:	00 
  b0c0f3:	c5 7c 10 91 00 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x100]
  b0c0fa:	00 
  b0c0fb:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  b0c102:	00 
  b0c103:	62 51 54 20 59 ca    	vmulps ymm9,ymm21,ymm10
  b0c109:	c4 42 7d bc cb       	vfnmadd231ps ymm9,ymm0,ymm11
  b0c10e:	62 c1 7c 28 59 c2    	vmulps ymm16,ymm0,ymm10
  b0c114:	c5 fc 10 81 80 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x180]
  b0c11b:	00 
  b0c11c:	62 c2 55 20 b8 c3    	vfmadd231ps ymm16,ymm21,ymm11
  b0c122:	c5 7c 10 91 a0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1a0]
  b0c129:	00 
  b0c12a:	62 61 2c 20 59 c8    	vmulps ymm25,ymm26,ymm0
  b0c130:	62 e1 24 20 59 e8    	vmulps ymm21,ymm27,ymm0
  b0c136:	62 42 25 20 bc ca    	vfnmadd231ps ymm25,ymm27,ymm10
  b0c13c:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  b0c143:	00 
  b0c144:	62 c2 2d 20 b8 ea    	vfmadd231ps ymm21,ymm26,ymm10
  b0c14a:	c5 7c 10 91 c0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xc0]
  b0c151:	00 
  b0c152:	62 61 5c 28 59 d6    	vmulps ymm26,ymm4,ymm6
  b0c158:	62 62 45 28 bc d0    	vfnmadd231ps ymm26,ymm7,ymm0
  b0c15e:	62 61 44 28 59 de    	vmulps ymm27,ymm7,ymm6
  b0c164:	c5 fc 10 b1 00 02 00 	vmovups ymm6,YMMWORD PTR [rcx+0x200]
  b0c16b:	00 
  b0c16c:	62 62 5d 28 b8 d8    	vfmadd231ps ymm27,ymm4,ymm0
  b0c172:	c5 fc 10 81 20 02 00 	vmovups ymm0,YMMWORD PTR [rcx+0x220]
  b0c179:	00 
  b0c17a:	62 61 74 28 59 ee    	vmulps ymm29,ymm1,ymm6
  b0c180:	62 e1 6c 28 59 de    	vmulps ymm19,ymm2,ymm6
  b0c186:	62 62 6d 28 bc e8    	vfnmadd231ps ymm29,ymm2,ymm0
  b0c18c:	c5 fc 10 91 c0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1c0]
  b0c193:	00 
  b0c194:	62 e2 75 28 b8 d8    	vfmadd231ps ymm19,ymm1,ymm0
  b0c19a:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  b0c1a1:	00 
  b0c1a2:	62 61 6c 20 59 f2    	vmulps ymm30,ymm18,ymm2
  b0c1a8:	62 62 0d 28 b8 f1    	vfmadd231ps ymm30,ymm14,ymm1
  b0c1ae:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  b0c1b2:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  b0c1b9:	00 
  b0c1ba:	62 f2 6d 20 bc c1    	vfnmadd231ps ymm0,ymm18,ymm1
  b0c1c0:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  b0c1c7:	00 
  b0c1c8:	62 61 44 20 59 f9    	vmulps ymm31,ymm23,ymm1
  b0c1ce:	c5 d4 59 c9          	vmulps ymm1,ymm5,ymm1
  b0c1d2:	62 62 55 28 b8 fa    	vfmadd231ps ymm31,ymm5,ymm2
  b0c1d8:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  b0c1df:	00 
  b0c1e0:	62 f2 45 20 bc ca    	vfnmadd231ps ymm1,ymm23,ymm2
  b0c1e6:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  b0c1ed:	00 
  b0c1ee:	62 d1 74 20 59 f2    	vmulps ymm6,ymm17,ymm10
  b0c1f4:	62 f2 3d 20 b8 f4    	vfmadd231ps ymm6,ymm24,ymm4
  b0c1fa:	62 d1 3c 20 59 fa    	vmulps ymm7,ymm24,ymm10
  b0c200:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  b0c207:	00 
  b0c208:	62 f2 75 20 bc fc    	vfnmadd231ps ymm7,ymm17,ymm4
  b0c20e:	62 b1 14 28 59 e6    	vmulps ymm4,ymm13,ymm22
  b0c214:	62 b2 1d 28 b8 e4    	vfmadd231ps ymm4,ymm12,ymm20
  b0c21a:	62 31 1c 28 59 f6    	vmulps ymm14,ymm12,ymm22
  b0c220:	62 91 2c 20 5c dd    	vsubps ymm3,ymm26,ymm29
  b0c226:	62 91 34 28 5c e9    	vsubps ymm5,ymm9,ymm25
  b0c22c:	62 32 15 28 bc f4    	vfnmadd231ps ymm14,ymm13,ymm20
  b0c232:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  b0c238:	c5 04 59 e2          	vmulps ymm12,ymm15,ymm2
  b0c23c:	62 31 7c 20 58 ed    	vaddps ymm13,ymm16,ymm21
  b0c242:	c5 7c 28 44 24 20    	vmovaps ymm8,YMMWORD PTR [rsp+0x20]
  b0c248:	c4 42 3d b8 e3       	vfmadd231ps ymm12,ymm8,ymm11
  b0c24d:	c5 3c 59 d2          	vmulps ymm10,ymm8,ymm2
  b0c251:	c4 42 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm11
  b0c256:	c4 62 7d 18 05 f9 94 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5694f9]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b0c25d:	56 ff 
  b0c25f:	62 c1 54 28 59 f0    	vmulps ymm22,ymm5,ymm8
  b0c265:	62 a1 24 20 58 e3    	vaddps ymm20,ymm27,ymm19
  b0c26b:	c4 62 7d 18 3d 74 94 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff569474]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b0c272:	56 ff 
  b0c274:	62 c1 7c 28 28 ff    	vmovaps ymm23,ymm15
  b0c27a:	62 91 34 28 58 d1    	vaddps ymm2,ymm9,ymm25
  b0c280:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  b0c286:	62 82 5d 20 a8 fc    	vfmadd213ps ymm23,ymm20,ymm28
  b0c28c:	62 e1 04 20 58 cc    	vaddps ymm17,ymm31,ymm4
  b0c292:	62 11 2c 20 58 dd    	vaddps ymm11,ymm26,ymm29
  b0c298:	62 e1 0c 20 58 d6    	vaddps ymm18,ymm30,ymm6
  b0c29e:	62 62 7d 28 18 2d f8 	vbroadcastss ymm29,DWORD PTR [rip+0xffffffffff5690f8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b0c2a5:	90 56 ff 
  b0c2a8:	62 82 65 28 b8 f5    	vfmadd231ps ymm22,ymm3,ymm29
  b0c2ae:	62 b1 24 20 5c d3    	vsubps ymm2,ymm27,ymm19
  b0c2b4:	c5 7c 5c cf          	vsubps ymm9,ymm0,ymm7
  b0c2b8:	62 21 7c 20 5c cd    	vsubps ymm25,ymm16,ymm21
  b0c2be:	62 62 7d 28 18 1d 7c 	vbroadcastss ymm27,DWORD PTR [rip+0xffffffffff56937c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b0c2c5:	93 56 ff 
  b0c2c8:	62 82 15 28 bc fb    	vfnmadd231ps ymm23,ymm13,ymm27
  b0c2ce:	62 41 74 28 5c d6    	vsubps ymm26,ymm1,ymm14
  b0c2d4:	c5 0c 58 f1          	vaddps ymm14,ymm14,ymm1
  b0c2d8:	62 41 2c 20 59 c0    	vmulps ymm24,ymm26,ymm8
  b0c2de:	62 02 35 28 b8 c5    	vfmadd231ps ymm24,ymm9,ymm29
  b0c2e4:	62 e1 7c 28 58 df    	vaddps ymm19,ymm0,ymm7
  b0c2ea:	62 c1 34 20 59 c0    	vmulps ymm16,ymm25,ymm8
  b0c2f0:	62 f1 0c 20 5c c6    	vsubps ymm0,ymm30,ymm6
  b0c2f6:	62 82 6d 28 b8 c5    	vfmadd231ps ymm16,ymm2,ymm29
  b0c2fc:	62 f1 04 20 5c cc    	vsubps ymm1,ymm31,ymm4
  b0c302:	62 c1 74 28 59 e8    	vmulps ymm21,ymm1,ymm8
  b0c308:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  b0c30c:	62 82 7d 28 b8 ed    	vfmadd231ps ymm21,ymm0,ymm29
  b0c312:	62 f2 15 20 bc dd    	vfnmadd231ps ymm3,ymm29,ymm5
  b0c318:	62 91 7c 28 28 e3    	vmovaps ymm4,ymm27
  b0c31e:	62 92 5d 20 ac e4    	vfnmadd213ps ymm4,ymm20,ymm28
  b0c324:	c4 c2 15 b8 e7       	vfmadd231ps ymm4,ymm13,ymm15
  b0c329:	62 91 7c 28 28 eb    	vmovaps ymm5,ymm27
  b0c32f:	62 d2 6d 20 ac ec    	vfnmadd213ps ymm5,ymm18,ymm12
  b0c335:	c4 c1 34 59 f0       	vmulps ymm6,ymm9,ymm8
  b0c33a:	62 d2 75 20 b8 ef    	vfmadd231ps ymm5,ymm17,ymm15
  b0c340:	62 92 15 20 bc f2    	vfnmadd231ps ymm6,ymm29,ymm26
  b0c346:	62 91 7c 28 28 fb    	vmovaps ymm7,ymm27
  b0c34c:	62 61 7c 28 28 54 24 	vmovaps ymm26,YMMWORD PTR [rsp+0x60]
  b0c353:	03 
  b0c354:	62 92 25 28 ac fa    	vfnmadd213ps ymm7,ymm11,ymm26
  b0c35a:	62 61 7c 28 28 74 24 	vmovaps ymm30,YMMWORD PTR [rsp+0x20]
  b0c361:	01 
  b0c362:	62 d2 0d 20 b8 ff    	vfmadd231ps ymm7,ymm30,ymm15
  b0c368:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  b0c36c:	62 92 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm25
  b0c372:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b0c376:	62 61 64 28 58 cc    	vaddps ymm25,ymm3,ymm4
  b0c37c:	62 f2 15 20 bc c1    	vfnmadd231ps ymm0,ymm29,ymm1
  b0c382:	62 91 7c 28 28 cb    	vmovaps ymm1,ymm27
  b0c388:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b0c38c:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  b0c390:	62 d2 65 20 ac ca    	vfnmadd213ps ymm1,ymm19,ymm10
  b0c396:	c4 c2 0d b8 cf       	vfmadd231ps ymm1,ymm14,ymm15
  b0c39b:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  b0c39f:	c5 c4 5c f2          	vsubps ymm6,ymm7,ymm2
  b0c3a3:	c5 c4 58 d2          	vaddps ymm2,ymm7,ymm2
  b0c3a7:	c5 f4 5c f8          	vsubps ymm7,ymm1,ymm0
  b0c3ab:	c5 f4 58 c8          	vaddps ymm1,ymm1,ymm0
  b0c3af:	62 b1 4c 20 58 c7    	vaddps ymm0,ymm22,ymm23
  b0c3b5:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  b0c3bb:	62 11 5c 20 58 cc    	vaddps ymm9,ymm20,ymm28
  b0c3c1:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b0c3c7:	62 c2 6d 20 a8 e4    	vfmadd213ps ymm20,ymm18,ymm12
  b0c3cd:	62 82 75 20 bc e3    	vfnmadd231ps ymm20,ymm17,ymm27
  b0c3d3:	c4 41 14 58 e9       	vaddps ymm13,ymm13,ymm9
  b0c3d8:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b0c3de:	62 81 5c 20 5c e0    	vsubps ymm20,ymm20,ymm24
  b0c3e4:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  b0c3ea:	62 31 1c 28 58 e1    	vaddps ymm12,ymm12,ymm17
  b0c3f0:	62 c1 7c 28 28 cf    	vmovaps ymm17,ymm15
  b0c3f6:	62 82 25 28 a8 ca    	vfmadd213ps ymm17,ymm11,ymm26
  b0c3fc:	62 51 2c 20 58 c3    	vaddps ymm8,ymm26,ymm11
  b0c402:	62 82 0d 20 bc cb    	vfnmadd231ps ymm17,ymm30,ymm27
  b0c408:	62 11 3c 28 58 de    	vaddps ymm11,ymm8,ymm30
  b0c40e:	c4 41 7c 28 c7       	vmovaps ymm8,ymm15
  b0c413:	62 52 65 20 a8 c2    	vfmadd213ps ymm8,ymm19,ymm10
  b0c419:	62 31 2c 28 58 d3    	vaddps ymm10,ymm10,ymm19
  b0c41f:	62 31 74 20 5c f8    	vsubps ymm15,ymm17,ymm16
  b0c425:	62 a1 74 20 58 c0    	vaddps ymm16,ymm17,ymm16
  b0c42b:	62 12 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm27
  b0c431:	c4 41 2c 58 f6       	vaddps ymm14,ymm10,ymm14
  b0c436:	62 31 3c 28 5c d5    	vsubps ymm10,ymm8,ymm21
  b0c43c:	62 a1 3c 28 58 cd    	vaddps ymm17,ymm8,ymm21
  b0c442:	c4 41 7c 5c c1       	vsubps ymm8,ymm0,ymm9
  b0c447:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  b0c44d:	c4 41 04 5c ca       	vsubps ymm9,ymm15,ymm10
  b0c452:	c4 41 04 58 fa       	vaddps ymm15,ymm15,ymm10
  b0c457:	62 f1 34 20 58 c4    	vaddps ymm0,ymm25,ymm4
  b0c45d:	62 f1 34 20 5c e4    	vsubps ymm4,ymm25,ymm4
  b0c463:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  b0c467:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  b0c46b:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  b0c46f:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  b0c473:	c5 ec 5c e9          	vsubps ymm5,ymm2,ymm1
  b0c477:	c5 ec 58 c9          	vaddps ymm1,ymm2,ymm1
  b0c47b:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  b0c480:	c4 41 14 58 e4       	vaddps ymm12,ymm13,ymm12
  b0c485:	62 31 4c 20 58 ec    	vaddps ymm13,ymm22,ymm20
  b0c48b:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  b0c491:	62 c1 24 28 5c e6    	vsubps ymm20,ymm11,ymm14
  b0c497:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  b0c49c:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b0c4a1:	62 e1 7c 28 28 2d f5 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff5693f5]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b0c4a8:	93 56 ff 
  b0c4ab:	62 52 55 20 7f f4    	vpermt2ps ymm14,ymm21,ymm12
  b0c4b1:	62 e1 7c 28 28 35 25 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff56ad25]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b0c4b8:	ad 56 ff 
  b0c4bb:	62 52 4d 20 7f dc    	vpermt2ps ymm11,ymm22,ymm12
  b0c4c1:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  b0c4c6:	62 31 7c 20 58 d9    	vaddps ymm11,ymm16,ymm17
  b0c4cc:	62 31 7c 20 5c e1    	vsubps ymm12,ymm16,ymm17
  b0c4d2:	c5 7c 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  b0c4d8:	c4 41 7c 28 f4       	vmovaps ymm14,ymm12
  b0c4dd:	62 32 4d 20 7f e3    	vpermt2ps ymm12,ymm22,ymm19
  b0c4e3:	62 32 55 20 7f f3    	vpermt2ps ymm14,ymm21,ymm19
  b0c4e9:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  b0c4ef:	c5 7c 11 74 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm14
  b0c4f5:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  b0c4f9:	62 72 55 20 7f e3    	vpermt2ps ymm12,ymm21,ymm3
  b0c4ff:	62 f2 4d 20 7f cb    	vpermt2ps ymm1,ymm22,ymm3
  b0c505:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  b0c50c:	00 00 
  b0c50e:	c5 7c 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  b0c515:	00 00 
  b0c517:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  b0c51b:	62 f2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm4
  b0c521:	62 f2 4d 20 7f f4    	vpermt2ps ymm6,ymm22,ymm4
  b0c527:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  b0c52e:	00 00 
  b0c530:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  b0c537:	00 00 
  b0c539:	c5 7c 29 f9          	vmovaps ymm1,ymm15
  b0c53d:	62 b2 55 20 7f ca    	vpermt2ps ymm1,ymm21,ymm18
  b0c543:	62 32 4d 20 7f fa    	vpermt2ps ymm15,ymm22,ymm18
  b0c549:	c5 7c 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm15
  b0c550:	00 00 
  b0c552:	62 b1 7c 28 28 dc    	vmovaps ymm3,ymm20
  b0c558:	62 f2 55 20 7f da    	vpermt2ps ymm3,ymm21,ymm2
  b0c55e:	62 e2 4d 20 7f e2    	vpermt2ps ymm20,ymm22,ymm2
  b0c564:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  b0c56b:	00 00 
  b0c56d:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm20
  b0c574:	0a 
  b0c575:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  b0c57c:	00 00 
  b0c57e:	c5 7c 29 d9          	vmovaps ymm1,ymm11
  b0c582:	62 d2 55 20 7f cd    	vpermt2ps ymm1,ymm21,ymm13
  b0c588:	62 52 4d 20 7f dd    	vpermt2ps ymm11,ymm22,ymm13
  b0c58e:	c5 7c 11 9c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm11
  b0c595:	00 00 
  b0c597:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  b0c59e:	00 00 
  b0c5a0:	c5 fc 28 cd          	vmovaps ymm1,ymm5
  b0c5a4:	62 f2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm7
  b0c5aa:	62 f2 4d 20 7f ef    	vpermt2ps ymm5,ymm22,ymm7
  b0c5b0:	c5 fc 11 ac 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm5
  b0c5b7:	00 00 
  b0c5b9:	c5 fc 11 8c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm1
  b0c5c0:	00 00 
  b0c5c2:	c5 7c 29 d1          	vmovaps ymm1,ymm10
  b0c5c6:	62 f2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm0
  b0c5cc:	62 72 4d 20 7f d0    	vpermt2ps ymm10,ymm22,ymm0
  b0c5d2:	c5 7c 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm10
  b0c5d9:	00 00 
  b0c5db:	c5 7c 29 c8          	vmovaps ymm0,ymm9
  b0c5df:	62 d2 55 20 7f c0    	vpermt2ps ymm0,ymm21,ymm8
  b0c5e5:	62 52 4d 20 7f c8    	vpermt2ps ymm9,ymm22,ymm8
  b0c5eb:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  b0c5f2:	00 00 
  b0c5f4:	c5 7c 11 8c 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm9
  b0c5fb:	00 00 
  b0c5fd:	c5 fc 11 84 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm0
  b0c604:	00 00 
  b0c606:	48 81 c2 80 02 00 00 	add    rdx,0x280
  b0c60d:	48 39 d0             	cmp    rax,rdx
  b0c610:	0f 85 da f3 ff ff    	jne    b0b9f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b0c616:	48 89 ec             	mov    rsp,rbp
  b0c619:	5d                   	pop    rbp
  b0c61a:	c5 f8 77             	vzeroupper
  b0c61d:	c3                   	ret
