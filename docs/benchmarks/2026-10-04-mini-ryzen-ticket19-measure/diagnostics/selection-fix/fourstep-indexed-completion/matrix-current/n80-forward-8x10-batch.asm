
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b07c80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b07c80:	55                   	push   rbp
  b07c81:	48 89 e5             	mov    rbp,rsp
  b07c84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b07c88:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  b07c8f:	48 c1 e2 07          	shl    rdx,0x7
  b07c93:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  b07c97:	31 d2                	xor    edx,edx
  b07c99:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  b07ca0:	00 
  b07ca1:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  b07ca6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  b07cad:	00 00 00 
  b07cb0:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  b07cb7:	00 
  b07cb8:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  b07cbd:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  b07cc2:	c5 7c 10 44 17 20    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x20]
  b07cc8:	c4 41 7c c6 c8 88    	vshufps ymm9,ymm0,ymm8,0x88
  b07cce:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b07cd4:	c4 c1 7c c6 c0 dd    	vshufps ymm0,ymm0,ymm8,0xdd
  b07cda:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  b07ce0:	c5 fc 10 44 17 50    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x50]
  b07ce6:	c5 7c 10 54 17 70    	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x70]
  b07cec:	c4 41 7c c6 da 88    	vshufps ymm11,ymm0,ymm10,0x88
  b07cf2:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b07cf8:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  b07cfe:	c5 7c 10 94 17 a0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xa0]
  b07d05:	00 00 
  b07d07:	c5 7c 10 a4 17 c0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  b07d0e:	00 00 
  b07d10:	c4 63 fd 01 e8 d8    	vpermpd ymm13,ymm0,0xd8
  b07d16:	c4 c1 2c c6 c4 88    	vshufps ymm0,ymm10,ymm12,0x88
  b07d1c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b07d22:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  b07d28:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b07d2e:	c5 7c 10 a4 17 f0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xf0]
  b07d35:	00 00 
  b07d37:	c5 7c 10 b4 17 10 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x110]
  b07d3e:	00 00 
  b07d40:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  b07d46:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  b07d4c:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  b07d52:	c5 7c 10 b4 17 40 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x140]
  b07d59:	00 00 
  b07d5b:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x160]
  b07d62:	0b 
  b07d63:	62 c3 fd 28 01 cc d8 	vpermpd ymm17,ymm12,0xd8
  b07d6a:	62 31 0c 28 c6 e0 88 	vshufps ymm12,ymm14,ymm16,0x88
  b07d71:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b07d77:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  b07d7e:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b07d84:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x190]
  b07d8b:	90 01 00 00 
  b07d8f:	62 e1 7c 28 10 94 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1b0]
  b07d96:	b0 01 00 00 
  b07d9a:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  b07da1:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  b07da8:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b07daf:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x1e0]
  b07db6:	0f 
  b07db7:	62 e1 7c 28 10 64 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x200]
  b07dbe:	10 
  b07dbf:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b07dc6:	62 a1 6c 20 c6 ec 88 	vshufps ymm21,ymm18,ymm20,0x88
  b07dcd:	62 a3 fd 28 01 ed d8 	vpermpd ymm21,ymm21,0xd8
  b07dd4:	62 a1 6c 20 c6 d4 dd 	vshufps ymm18,ymm18,ymm20,0xdd
  b07ddb:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b07de2:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x230]
  b07de9:	30 02 00 00 
  b07ded:	62 e1 7c 28 10 b4 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0x250]
  b07df4:	50 02 00 00 
  b07df8:	62 a1 5c 20 c6 fe 88 	vshufps ymm23,ymm20,ymm22,0x88
  b07dff:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  b07e06:	62 a1 5c 20 c6 e6 dd 	vshufps ymm20,ymm20,ymm22,0xdd
  b07e0d:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b07e14:	62 c1 34 28 58 f4    	vaddps ymm22,ymm9,ymm12
  b07e1a:	62 21 7c 28 58 c5    	vaddps ymm24,ymm0,ymm21
  b07e20:	62 01 4c 20 58 c8    	vaddps ymm25,ymm22,ymm24
  b07e26:	62 21 24 28 58 d3    	vaddps ymm26,ymm11,ymm19
  b07e2c:	62 21 04 28 58 df    	vaddps ymm27,ymm15,ymm23
  b07e32:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b07e38:	62 41 3c 28 58 ee    	vaddps ymm29,ymm8,ymm14
  b07e3e:	62 21 2c 28 58 f2    	vaddps ymm30,ymm10,ymm18
  b07e44:	62 21 14 28 58 f8    	vaddps ymm31,ymm13,ymm16
  b07e4a:	62 91 14 20 58 ce    	vaddps ymm1,ymm29,ymm30
  b07e50:	62 b1 74 20 58 d4    	vaddps ymm2,ymm17,ymm20
  b07e56:	62 f1 04 20 58 da    	vaddps ymm3,ymm31,ymm2
  b07e5c:	c4 c1 34 5c e4       	vsubps ymm4,ymm9,ymm12
  b07e61:	62 91 34 20 58 ec    	vaddps ymm5,ymm25,ymm28
  b07e67:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  b07e6d:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  b07e71:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  b07e77:	c5 74 58 e3          	vaddps ymm12,ymm1,ymm3
  b07e7b:	62 a1 14 28 5c c0    	vsubps ymm16,ymm13,ymm16
  b07e81:	62 31 24 28 58 e8    	vaddps ymm13,ymm11,ymm16
  b07e87:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  b07e8d:	c4 e2 7d 18 35 06 d5 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff56d506]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b07e94:	56 ff 
  b07e96:	62 e1 14 28 59 d6    	vmulps ymm18,ymm13,ymm6
  b07e9c:	62 31 04 28 5c ff    	vsubps ymm15,ymm15,ymm23
  b07ea2:	62 51 74 20 5c ef    	vsubps ymm13,ymm17,ymm15
  b07ea8:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  b07ead:	62 e1 14 28 59 e6    	vmulps ymm20,ymm13,ymm6
  b07eb3:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  b07eb9:	c5 3c 58 e8          	vaddps ymm13,ymm8,ymm0
  b07ebd:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  b07ec3:	c5 24 59 de          	vmulps ymm11,ymm11,ymm6
  b07ec7:	62 31 04 28 58 f1    	vaddps ymm14,ymm15,ymm17
  b07ecd:	c5 0c 59 fe          	vmulps ymm15,ymm14,ymm6
  b07ed1:	62 81 4c 20 5c c0    	vsubps ymm16,ymm22,ymm24
  b07ed7:	62 21 6c 20 58 c4    	vaddps ymm24,ymm18,ymm20
  b07edd:	62 f1 04 20 5c d2    	vsubps ymm2,ymm31,ymm2
  b07ee3:	62 e1 7c 20 58 ca    	vaddps ymm17,ymm16,ymm2
  b07ee9:	62 81 14 20 5c ee    	vsubps ymm21,ymm29,ymm30
  b07eef:	62 41 24 28 5c ef    	vsubps ymm29,ymm11,ymm15
  b07ef5:	62 01 24 20 5c d2    	vsubps ymm26,ymm27,ymm26
  b07efb:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  b07f01:	c4 41 5c 5c f2       	vsubps ymm14,ymm4,ymm10
  b07f06:	62 c1 24 28 58 ff    	vaddps ymm23,ymm11,ymm15
  b07f0c:	62 e1 3c 28 5c d8    	vsubps ymm19,ymm8,ymm0
  b07f12:	62 a1 5c 20 5c f2    	vsubps ymm22,ymm20,ymm18
  b07f18:	62 91 34 20 5c e4    	vsubps ymm4,ymm25,ymm28
  b07f1e:	62 81 34 28 58 e0    	vaddps ymm20,ymm9,ymm24
  b07f24:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b07f28:	62 f1 7c 20 5c d2    	vsubps ymm2,ymm16,ymm2
  b07f2e:	62 91 54 20 5c da    	vsubps ymm3,ymm21,ymm26
  b07f34:	62 11 14 28 58 fd    	vaddps ymm15,ymm13,ymm29
  b07f3a:	c4 e3 55 18 c4 01    	vinsertf128 ymm0,ymm5,xmm4,0x1
  b07f40:	c4 e3 55 06 e4 31    	vperm2f128 ymm4,ymm5,ymm4,0x31
  b07f46:	62 f3 75 20 18 ea 01 	vinsertf32x4 ymm5,ymm17,xmm2,0x1
  b07f4d:	62 a1 0c 28 58 ef    	vaddps ymm21,ymm14,ymm23
  b07f53:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  b07f5a:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  b07f5e:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  b07f64:	c5 5d 14 da          	vunpcklpd ymm11,ymm4,ymm2
  b07f68:	62 a1 64 20 58 ce    	vaddps ymm17,ymm19,ymm22
  b07f6e:	c5 5d 15 d2          	vunpckhpd ymm10,ymm4,ymm2
  b07f72:	c4 e3 1d 18 d1 01    	vinsertf128 ymm2,ymm12,xmm1,0x1
  b07f78:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  b07f7e:	62 91 34 28 5c e0    	vsubps ymm4,ymm9,ymm24
  b07f84:	62 63 25 20 18 c3 01 	vinsertf32x4 ymm24,ymm27,xmm3,0x1
  b07f8b:	62 f3 a5 20 23 db 03 	vshuff64x2 ymm3,ymm27,ymm3,0x3
  b07f92:	62 91 ed 28 14 f0    	vunpcklpd ymm6,ymm2,ymm24
  b07f98:	c5 fc 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm6
  b07f9e:	62 81 14 28 5c d5    	vsubps ymm18,ymm13,ymm29
  b07fa4:	62 e1 f5 28 14 c3    	vunpcklpd ymm16,ymm1,ymm3
  b07faa:	c5 75 15 e3          	vunpckhpd ymm12,ymm1,ymm3
  b07fae:	62 91 ed 28 15 c8    	vunpckhpd ymm1,ymm2,ymm24
  b07fb4:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  b07fba:	62 b1 0c 28 5c cf    	vsubps ymm1,ymm14,ymm23
  b07fc0:	c5 7d 15 f5          	vunpckhpd ymm14,ymm0,ymm5
  b07fc4:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x40]
  b07fcb:	04 
  b07fcc:	62 93 3d 00 21 d0 9c 	vinsertps xmm2,xmm24,xmm24,0x9c
  b07fd3:	62 a1 64 20 5c f6    	vsubps ymm22,ymm19,ymm22
  b07fd9:	c5 f8 10 84 17 90 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x90]
  b07fe0:	00 00 
  b07fe2:	c4 e3 79 21 d8 9c    	vinsertps xmm3,xmm0,xmm0,0x9c
  b07fe8:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b07fed:	c4 c1 78 c6 e9 dd    	vshufps xmm5,xmm0,xmm9,0xdd
  b07ff3:	62 e3 5d 20 18 dc 01 	vinsertf32x4 ymm19,ymm20,xmm4,0x1
  b07ffa:	62 61 7c 08 10 4c 17 	vmovups xmm25,XMMWORD PTR [rdi+rdx*1+0xe0]
  b08001:	0e 
  b08002:	62 41 34 00 c6 d1 dd 	vshufps xmm26,xmm25,xmm9,0xdd
  b08009:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x130]
  b08010:	13 
  b08011:	62 e3 dd 20 23 fc 03 	vshuff64x2 ymm23,ymm20,ymm4,0x3
  b08018:	62 d1 24 00 c6 e1 dd 	vshufps xmm4,xmm27,xmm9,0xdd
  b0801f:	62 61 7c 08 10 64 17 	vmovups xmm28,XMMWORD PTR [rdi+rdx*1+0x180]
  b08026:	18 
  b08027:	62 03 1d 00 21 ec 9c 	vinsertps xmm29,xmm28,xmm28,0x9c
  b0802e:	62 e3 55 20 18 e1 01 	vinsertf32x4 ymm20,ymm21,xmm1,0x1
  b08035:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  b0803c:	00 00 
  b0803e:	62 63 7d 08 21 f0 9c 	vinsertps xmm30,xmm0,xmm0,0x9c
  b08045:	62 41 7c 08 c6 f9 dd 	vshufps xmm31,xmm0,xmm9,0xdd
  b0804c:	62 73 d5 20 23 c1 03 	vshuff64x2 ymm8,ymm21,ymm1,0x3
  b08053:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  b0805a:	00 00 
  b0805c:	62 c1 74 08 c6 e9 dd 	vshufps xmm21,xmm1,xmm9,0xdd
  b08063:	c5 f8 10 b4 17 70 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x270]
  b0806a:	00 00 
  b0806c:	62 91 6c 28 58 fd    	vaddps ymm7,ymm2,ymm29
  b08072:	62 91 6c 28 5c d5    	vsubps ymm2,ymm2,ymm29
  b08078:	62 21 2c 20 58 ed    	vaddps ymm29,ymm26,ymm21
  b0807e:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  b08084:	62 01 64 28 58 d6    	vaddps ymm26,ymm3,ymm30
  b0808a:	62 91 64 28 5c de    	vsubps ymm3,ymm3,ymm30
  b08090:	62 01 54 28 58 f7    	vaddps ymm30,ymm5,ymm31
  b08096:	62 91 54 28 5c ef    	vsubps ymm5,ymm5,ymm31
  b0809c:	62 41 4c 08 c6 f9 dd 	vshufps xmm31,xmm6,xmm9,0xdd
  b080a3:	62 91 5c 28 58 c7    	vaddps ymm0,ymm4,ymm31
  b080a9:	62 91 5c 28 5c e7    	vsubps ymm4,ymm4,ymm31
  b080af:	62 03 25 00 21 db 9c 	vinsertps xmm27,xmm27,xmm27,0x9c
  b080b6:	c4 e3 49 21 f6 9c    	vinsertps xmm6,xmm6,xmm6,0x9c
  b080bc:	62 61 24 20 58 fe    	vaddps ymm31,ymm27,ymm6
  b080c2:	62 f1 24 20 5c f6    	vsubps ymm6,ymm27,ymm6
  b080c8:	62 41 3c 00 c6 c1 dd 	vshufps xmm24,xmm24,xmm9,0xdd
  b080cf:	62 41 1c 00 c6 d9 dd 	vshufps xmm27,xmm28,xmm9,0xdd
  b080d6:	62 01 3c 20 58 e3    	vaddps ymm28,ymm24,ymm27
  b080dc:	62 01 3c 20 5c c3    	vsubps ymm24,ymm24,ymm27
  b080e2:	62 03 35 00 21 c9 9c 	vinsertps xmm25,xmm25,xmm25,0x9c
  b080e9:	c4 e3 71 21 c9 9c    	vinsertps xmm1,xmm1,xmm1,0x9c
  b080ef:	62 61 34 20 58 d9    	vaddps ymm27,ymm25,ymm1
  b080f5:	62 01 74 28 5c c9    	vsubps ymm25,ymm1,ymm25
  b080fb:	62 b3 05 28 18 ca 01 	vinsertf32x4 ymm1,ymm15,xmm18,0x1
  b08102:	62 33 85 28 23 fa 03 	vshuff64x2 ymm15,ymm15,ymm18,0x3
  b08109:	c5 64 58 cd          	vaddps ymm9,ymm3,ymm5
  b0810d:	c5 d4 5c eb          	vsubps ymm5,ymm5,ymm3
  b08111:	62 a3 75 20 18 d6 01 	vinsertf32x4 ymm18,ymm17,xmm22,0x1
  b08118:	62 b3 f5 20 23 de 03 	vshuff64x2 ymm3,ymm17,ymm22,0x3
  b0811f:	62 e1 5c 28 5c f6    	vsubps ymm22,ymm4,ymm6
  b08125:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  b08129:	62 d1 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm8
  b0812f:	62 51 c5 20 15 c0    	vunpckhpd ymm8,ymm23,ymm8
  b08135:	62 81 44 28 58 fb    	vaddps ymm23,ymm7,ymm27
  b0813b:	62 91 44 28 5c fb    	vsubps ymm7,ymm7,ymm27
  b08141:	62 61 85 28 14 db    	vunpcklpd ymm27,ymm15,ymm3
  b08147:	c5 05 15 fb          	vunpckhpd ymm15,ymm15,ymm3
  b0814b:	62 71 0c 20 58 e8    	vaddps ymm13,ymm30,ymm0
  b08151:	62 f1 0c 20 5c c0    	vsubps ymm0,ymm30,ymm0
  b08157:	62 21 f5 28 14 f2    	vunpcklpd ymm30,ymm1,ymm18
  b0815d:	62 b1 f5 28 15 ca    	vunpckhpd ymm1,ymm1,ymm18
  b08163:	62 81 1c 20 58 d5    	vaddps ymm18,ymm28,ymm29
  b08169:	62 01 1c 20 5c e5    	vsubps ymm28,ymm28,ymm29
  b0816f:	62 21 e5 20 14 ec    	vunpcklpd ymm29,ymm19,ymm20
  b08175:	62 a1 e5 20 15 cc    	vunpckhpd ymm17,ymm19,ymm20
  b0817b:	62 81 2c 20 58 e7    	vaddps ymm20,ymm26,ymm31
  b08181:	62 01 04 20 5c fa    	vsubps ymm31,ymm31,ymm26
  b08187:	62 61 24 28 c6 d6 88 	vshufps ymm26,ymm11,ymm6,0x88
  b0818e:	c5 a4 c6 f6 dd       	vshufps ymm6,ymm11,ymm6,0xdd
  b08193:	62 31 6c 28 58 dd    	vaddps ymm11,ymm2,ymm21
  b08199:	62 a1 6c 28 5c ed    	vsubps ymm21,ymm2,ymm21
  b0819f:	62 e2 7d 28 18 1d f3 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff56d1f3]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b081a6:	d1 56 ff 
  b081a9:	62 b1 54 28 59 d3    	vmulps ymm2,ymm5,ymm19
  b081af:	62 b1 5c 28 59 e3    	vmulps ymm4,ymm4,ymm19
  b081b5:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  b081b9:	c5 ec 58 e4          	vaddps ymm4,ymm2,ymm4
  b081bd:	c4 c1 2c c6 e8 88    	vshufps ymm5,ymm10,ymm8,0x88
  b081c3:	c4 41 2c c6 c0 dd    	vshufps ymm8,ymm10,ymm8,0xdd
  b081c9:	62 11 34 20 58 d0    	vaddps ymm10,ymm25,ymm24
  b081cf:	62 91 3c 20 5c d1    	vsubps ymm2,ymm24,ymm25
  b081d5:	62 31 34 28 59 cb    	vmulps ymm9,ymm9,ymm19
  b081db:	62 a1 4c 20 59 f3    	vmulps ymm22,ymm22,ymm19
  b081e1:	62 21 34 28 58 c6    	vaddps ymm24,ymm9,ymm22
  b081e7:	62 c1 4c 20 5c f1    	vsubps ymm22,ymm22,ymm9
  b081ed:	62 11 7c 20 c6 cb 88 	vshufps ymm9,ymm16,ymm27,0x88
  b081f4:	62 81 7c 20 c6 c3 dd 	vshufps ymm16,ymm16,ymm27,0xdd
  b081fb:	62 21 44 20 58 cc    	vaddps ymm25,ymm23,ymm20
  b08201:	62 a1 44 00 5c e4    	vsubps xmm20,xmm23,xmm20
  b08207:	62 a3 35 20 18 e4 01 	vinsertf32x4 ymm20,ymm25,xmm20,0x1
  b0820e:	62 81 24 28 58 f8    	vaddps ymm23,ymm11,ymm24
  b08214:	62 11 24 08 5c d8    	vsubps xmm11,xmm11,xmm24
  b0821a:	62 53 45 20 18 db 01 	vinsertf32x4 ymm11,ymm23,xmm11,0x1
  b08221:	62 c1 1c 28 c6 ff 88 	vshufps ymm23,ymm12,ymm15,0x88
  b08228:	c4 41 1c c6 ff dd    	vshufps ymm15,ymm12,ymm15,0xdd
  b0822e:	c5 44 58 e0          	vaddps ymm12,ymm7,ymm0
  b08232:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  b08236:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x20]
  b0823d:	01 
  b0823e:	62 91 64 20 c6 fe dd 	vshufps ymm7,ymm19,ymm30,0xdd
  b08245:	62 01 64 20 c6 c6 88 	vshufps ymm24,ymm19,ymm30,0x88
  b0824c:	c4 e3 1d 18 c0 01    	vinsertf128 ymm0,ymm12,xmm0,0x1
  b08252:	62 e1 dd 20 14 e0    	vunpcklpd ymm20,ymm20,ymm0
  b08258:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  b0825e:	62 91 1c 28 c6 c5 dd 	vshufps ymm0,ymm12,ymm29,0xdd
  b08265:	62 01 1c 28 c6 cd 88 	vshufps ymm25,ymm12,ymm29,0x88
  b0826c:	62 71 54 20 58 e4    	vaddps ymm12,ymm21,ymm4
  b08272:	62 f1 54 00 5c e4    	vsubps xmm4,xmm21,xmm4
  b08278:	62 e1 7c 28 28 5c 24 	vmovaps ymm19,YMMWORD PTR [rsp+0x40]
  b0827f:	02 
  b08280:	62 61 64 20 c6 e9 dd 	vshufps ymm29,ymm19,ymm1,0xdd
  b08287:	62 61 64 20 c6 f1 88 	vshufps ymm30,ymm19,ymm1,0x88
  b0828e:	c4 e3 1d 18 cc 01    	vinsertf128 ymm1,ymm12,xmm4,0x1
  b08294:	c5 a5 14 e1          	vunpcklpd ymm4,ymm11,ymm1
  b08298:	62 b1 0c 28 c6 c9 dd 	vshufps ymm1,ymm14,ymm17,0xdd
  b0829f:	62 31 0c 28 c6 d9 88 	vshufps ymm11,ymm14,ymm17,0x88
  b082a6:	62 c1 6c 20 58 cd    	vaddps ymm17,ymm18,ymm13
  b082ac:	62 c1 6c 00 5c d5    	vsubps xmm18,xmm18,xmm13
  b082b2:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  b082b7:	62 81 2c 20 c6 ea d8 	vshufps ymm21,ymm26,ymm26,0xd8
  b082be:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  b082c3:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b082c9:	62 61 54 28 c6 d5 d8 	vshufps ymm26,ymm5,ymm5,0xd8
  b082d0:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  b082d6:	c5 44 c6 ef d8       	vshufps ymm13,ymm7,ymm7,0xd8
  b082db:	c4 c1 34 c6 c1 d8    	vshufps ymm0,ymm9,ymm9,0xd8
  b082e1:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b082e8:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  b082ee:	62 b3 75 20 18 f2 01 	vinsertf32x4 ymm6,ymm17,xmm18,0x1
  b082f5:	62 21 44 20 c6 df d8 	vshufps ymm27,ymm23,ymm23,0xd8
  b082fc:	c5 ac 58 fb          	vaddps ymm7,ymm10,ymm3
  b08300:	c5 28 5c c3          	vsubps xmm8,xmm10,xmm3
  b08304:	62 11 04 20 58 d4    	vaddps ymm10,ymm31,ymm28
  b0830a:	62 c1 04 28 c6 d7 d8 	vshufps ymm18,ymm15,ymm15,0xd8
  b08311:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  b08317:	62 31 6c 28 58 fe    	vaddps ymm15,ymm2,ymm22
  b0831d:	62 11 1c 00 5c c7    	vsubps xmm8,xmm28,xmm31
  b08323:	62 01 3c 20 c6 e0 d8 	vshufps ymm28,ymm24,ymm24,0xd8
  b0832a:	62 e1 5c 20 c6 c4 dd 	vshufps ymm16,ymm20,ymm4,0xdd
  b08331:	62 b1 7c 20 c6 e8 d8 	vshufps ymm5,ymm16,ymm16,0xd8
  b08338:	c4 43 2d 18 d0 01    	vinsertf128 ymm10,ymm10,xmm8,0x1
  b0833e:	62 91 34 20 c6 d9 d8 	vshufps ymm3,ymm25,ymm25,0xd8
  b08345:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  b0834b:	c4 c1 4d 14 f2       	vunpcklpd ymm6,ymm6,ymm10
  b08350:	62 b1 6c 08 5c d6    	vsubps xmm2,xmm2,xmm22
  b08356:	c4 e3 05 18 d2 01    	vinsertf128 ymm2,ymm15,xmm2,0x1
  b0835c:	62 81 14 20 c6 cd d8 	vshufps ymm17,ymm29,ymm29,0xd8
  b08363:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  b08367:	c5 cc c6 fa dd       	vshufps ymm7,ymm6,ymm2,0xdd
  b0836c:	62 e1 44 28 c6 ff d8 	vshufps ymm23,ymm7,ymm7,0xd8
  b08373:	62 91 0c 20 c6 fe d8 	vshufps ymm7,ymm30,ymm30,0xd8
  b0837a:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  b0837f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b08384:	62 f1 5c 20 c6 e4 88 	vshufps ymm4,ymm20,ymm4,0x88
  b0838b:	62 61 74 28 c6 c1 d8 	vshufps ymm24,ymm1,ymm1,0xd8
  b08392:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  b08397:	62 e1 7c 28 10 71 02 	vmovups ymm22,YMMWORD PTR [rcx+0x40]
  b0839e:	62 e1 7c 28 10 61 03 	vmovups ymm20,YMMWORD PTR [rcx+0x60]
  b083a5:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  b083ab:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  b083b2:	00 
  b083b3:	c5 7c 10 91 00 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x100]
  b083ba:	00 
  b083bb:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  b083c2:	00 
  b083c3:	62 51 54 20 59 ca    	vmulps ymm9,ymm21,ymm10
  b083c9:	c4 42 7d bc cb       	vfnmadd231ps ymm9,ymm0,ymm11
  b083ce:	62 c1 7c 28 59 c2    	vmulps ymm16,ymm0,ymm10
  b083d4:	c5 fc 10 81 80 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x180]
  b083db:	00 
  b083dc:	62 c2 55 20 b8 c3    	vfmadd231ps ymm16,ymm21,ymm11
  b083e2:	c5 7c 10 91 a0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1a0]
  b083e9:	00 
  b083ea:	62 61 2c 20 59 c8    	vmulps ymm25,ymm26,ymm0
  b083f0:	62 e1 24 20 59 e8    	vmulps ymm21,ymm27,ymm0
  b083f6:	62 42 25 20 bc ca    	vfnmadd231ps ymm25,ymm27,ymm10
  b083fc:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  b08403:	00 
  b08404:	62 c2 2d 20 b8 ea    	vfmadd231ps ymm21,ymm26,ymm10
  b0840a:	c5 7c 10 91 c0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xc0]
  b08411:	00 
  b08412:	62 61 5c 28 59 d6    	vmulps ymm26,ymm4,ymm6
  b08418:	62 62 45 28 bc d0    	vfnmadd231ps ymm26,ymm7,ymm0
  b0841e:	62 61 44 28 59 de    	vmulps ymm27,ymm7,ymm6
  b08424:	c5 fc 10 b1 00 02 00 	vmovups ymm6,YMMWORD PTR [rcx+0x200]
  b0842b:	00 
  b0842c:	62 62 5d 28 b8 d8    	vfmadd231ps ymm27,ymm4,ymm0
  b08432:	c5 fc 10 81 20 02 00 	vmovups ymm0,YMMWORD PTR [rcx+0x220]
  b08439:	00 
  b0843a:	62 61 74 28 59 ee    	vmulps ymm29,ymm1,ymm6
  b08440:	62 e1 6c 28 59 de    	vmulps ymm19,ymm2,ymm6
  b08446:	62 62 6d 28 bc e8    	vfnmadd231ps ymm29,ymm2,ymm0
  b0844c:	c5 fc 10 91 c0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1c0]
  b08453:	00 
  b08454:	62 e2 75 28 b8 d8    	vfmadd231ps ymm19,ymm1,ymm0
  b0845a:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  b08461:	00 
  b08462:	62 61 6c 20 59 f2    	vmulps ymm30,ymm18,ymm2
  b08468:	62 62 0d 28 b8 f1    	vfmadd231ps ymm30,ymm14,ymm1
  b0846e:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  b08472:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  b08479:	00 
  b0847a:	62 f2 6d 20 bc c1    	vfnmadd231ps ymm0,ymm18,ymm1
  b08480:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  b08487:	00 
  b08488:	62 61 44 20 59 f9    	vmulps ymm31,ymm23,ymm1
  b0848e:	c5 d4 59 c9          	vmulps ymm1,ymm5,ymm1
  b08492:	62 62 55 28 b8 fa    	vfmadd231ps ymm31,ymm5,ymm2
  b08498:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  b0849f:	00 
  b084a0:	62 f2 45 20 bc ca    	vfnmadd231ps ymm1,ymm23,ymm2
  b084a6:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  b084ad:	00 
  b084ae:	62 d1 74 20 59 f2    	vmulps ymm6,ymm17,ymm10
  b084b4:	62 f2 3d 20 b8 f4    	vfmadd231ps ymm6,ymm24,ymm4
  b084ba:	62 d1 3c 20 59 fa    	vmulps ymm7,ymm24,ymm10
  b084c0:	c5 7c 10 99 60 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x160]
  b084c7:	00 
  b084c8:	62 f2 75 20 bc fc    	vfnmadd231ps ymm7,ymm17,ymm4
  b084ce:	62 b1 14 28 59 e6    	vmulps ymm4,ymm13,ymm22
  b084d4:	62 b2 1d 28 b8 e4    	vfmadd231ps ymm4,ymm12,ymm20
  b084da:	62 31 1c 28 59 f6    	vmulps ymm14,ymm12,ymm22
  b084e0:	62 91 2c 20 5c dd    	vsubps ymm3,ymm26,ymm29
  b084e6:	62 91 34 28 5c e9    	vsubps ymm5,ymm9,ymm25
  b084ec:	62 32 15 28 bc f4    	vfnmadd231ps ymm14,ymm13,ymm20
  b084f2:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  b084f8:	c5 04 59 e2          	vmulps ymm12,ymm15,ymm2
  b084fc:	62 31 7c 20 58 ed    	vaddps ymm13,ymm16,ymm21
  b08502:	c5 7c 28 44 24 20    	vmovaps ymm8,YMMWORD PTR [rsp+0x20]
  b08508:	c4 42 3d b8 e3       	vfmadd231ps ymm12,ymm8,ymm11
  b0850d:	c5 3c 59 d2          	vmulps ymm10,ymm8,ymm2
  b08511:	c4 42 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm11
  b08516:	c4 62 7d 18 05 39 d2 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff56d239]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b0851d:	56 ff 
  b0851f:	62 c1 54 28 59 f0    	vmulps ymm22,ymm5,ymm8
  b08525:	62 a1 24 20 58 e3    	vaddps ymm20,ymm27,ymm19
  b0852b:	c4 62 7d 18 3d b4 d1 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56d1b4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b08532:	56 ff 
  b08534:	62 c1 7c 28 28 ff    	vmovaps ymm23,ymm15
  b0853a:	62 91 34 28 58 d1    	vaddps ymm2,ymm9,ymm25
  b08540:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  b08546:	62 82 5d 20 a8 fc    	vfmadd213ps ymm23,ymm20,ymm28
  b0854c:	62 e1 04 20 58 cc    	vaddps ymm17,ymm31,ymm4
  b08552:	62 11 2c 20 58 dd    	vaddps ymm11,ymm26,ymm29
  b08558:	62 e1 0c 20 58 d6    	vaddps ymm18,ymm30,ymm6
  b0855e:	62 62 7d 28 18 2d 38 	vbroadcastss ymm29,DWORD PTR [rip+0xffffffffff56ce38]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b08565:	ce 56 ff 
  b08568:	62 82 65 28 b8 f5    	vfmadd231ps ymm22,ymm3,ymm29
  b0856e:	62 b1 24 20 5c d3    	vsubps ymm2,ymm27,ymm19
  b08574:	c5 7c 5c cf          	vsubps ymm9,ymm0,ymm7
  b08578:	62 21 7c 20 5c cd    	vsubps ymm25,ymm16,ymm21
  b0857e:	62 62 7d 28 18 1d bc 	vbroadcastss ymm27,DWORD PTR [rip+0xffffffffff56d0bc]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b08585:	d0 56 ff 
  b08588:	62 82 15 28 bc fb    	vfnmadd231ps ymm23,ymm13,ymm27
  b0858e:	62 41 74 28 5c d6    	vsubps ymm26,ymm1,ymm14
  b08594:	c5 0c 58 f1          	vaddps ymm14,ymm14,ymm1
  b08598:	62 41 2c 20 59 c0    	vmulps ymm24,ymm26,ymm8
  b0859e:	62 02 35 28 b8 c5    	vfmadd231ps ymm24,ymm9,ymm29
  b085a4:	62 e1 7c 28 58 df    	vaddps ymm19,ymm0,ymm7
  b085aa:	62 c1 34 20 59 c0    	vmulps ymm16,ymm25,ymm8
  b085b0:	62 f1 0c 20 5c c6    	vsubps ymm0,ymm30,ymm6
  b085b6:	62 82 6d 28 b8 c5    	vfmadd231ps ymm16,ymm2,ymm29
  b085bc:	62 f1 04 20 5c cc    	vsubps ymm1,ymm31,ymm4
  b085c2:	62 c1 74 28 59 e8    	vmulps ymm21,ymm1,ymm8
  b085c8:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  b085cc:	62 82 7d 28 b8 ed    	vfmadd231ps ymm21,ymm0,ymm29
  b085d2:	62 f2 15 20 bc dd    	vfnmadd231ps ymm3,ymm29,ymm5
  b085d8:	62 91 7c 28 28 e3    	vmovaps ymm4,ymm27
  b085de:	62 92 5d 20 ac e4    	vfnmadd213ps ymm4,ymm20,ymm28
  b085e4:	c4 c2 15 b8 e7       	vfmadd231ps ymm4,ymm13,ymm15
  b085e9:	62 91 7c 28 28 eb    	vmovaps ymm5,ymm27
  b085ef:	62 d2 6d 20 ac ec    	vfnmadd213ps ymm5,ymm18,ymm12
  b085f5:	c4 c1 34 59 f0       	vmulps ymm6,ymm9,ymm8
  b085fa:	62 d2 75 20 b8 ef    	vfmadd231ps ymm5,ymm17,ymm15
  b08600:	62 92 15 20 bc f2    	vfnmadd231ps ymm6,ymm29,ymm26
  b08606:	62 91 7c 28 28 fb    	vmovaps ymm7,ymm27
  b0860c:	62 61 7c 28 28 54 24 	vmovaps ymm26,YMMWORD PTR [rsp+0x60]
  b08613:	03 
  b08614:	62 92 25 28 ac fa    	vfnmadd213ps ymm7,ymm11,ymm26
  b0861a:	62 61 7c 28 28 74 24 	vmovaps ymm30,YMMWORD PTR [rsp+0x20]
  b08621:	01 
  b08622:	62 d2 0d 20 b8 ff    	vfmadd231ps ymm7,ymm30,ymm15
  b08628:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  b0862c:	62 92 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm25
  b08632:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b08636:	62 61 64 28 58 cc    	vaddps ymm25,ymm3,ymm4
  b0863c:	62 f2 15 20 bc c1    	vfnmadd231ps ymm0,ymm29,ymm1
  b08642:	62 91 7c 28 28 cb    	vmovaps ymm1,ymm27
  b08648:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b0864c:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  b08650:	62 d2 65 20 ac ca    	vfnmadd213ps ymm1,ymm19,ymm10
  b08656:	c4 c2 0d b8 cf       	vfmadd231ps ymm1,ymm14,ymm15
  b0865b:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  b0865f:	c5 c4 5c f2          	vsubps ymm6,ymm7,ymm2
  b08663:	c5 c4 58 d2          	vaddps ymm2,ymm7,ymm2
  b08667:	c5 f4 5c f8          	vsubps ymm7,ymm1,ymm0
  b0866b:	c5 f4 58 c8          	vaddps ymm1,ymm1,ymm0
  b0866f:	62 b1 4c 20 58 c7    	vaddps ymm0,ymm22,ymm23
  b08675:	62 a1 44 20 5c f6    	vsubps ymm22,ymm23,ymm22
  b0867b:	62 11 5c 20 58 cc    	vaddps ymm9,ymm20,ymm28
  b08681:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b08687:	62 c2 6d 20 a8 e4    	vfmadd213ps ymm20,ymm18,ymm12
  b0868d:	62 82 75 20 bc e3    	vfnmadd231ps ymm20,ymm17,ymm27
  b08693:	c4 41 14 58 e9       	vaddps ymm13,ymm13,ymm9
  b08698:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b0869e:	62 81 5c 20 5c e0    	vsubps ymm20,ymm20,ymm24
  b086a4:	62 31 1c 28 58 e2    	vaddps ymm12,ymm12,ymm18
  b086aa:	62 31 1c 28 58 e1    	vaddps ymm12,ymm12,ymm17
  b086b0:	62 c1 7c 28 28 cf    	vmovaps ymm17,ymm15
  b086b6:	62 82 25 28 a8 ca    	vfmadd213ps ymm17,ymm11,ymm26
  b086bc:	62 51 2c 20 58 c3    	vaddps ymm8,ymm26,ymm11
  b086c2:	62 82 0d 20 bc cb    	vfnmadd231ps ymm17,ymm30,ymm27
  b086c8:	62 11 3c 28 58 de    	vaddps ymm11,ymm8,ymm30
  b086ce:	c4 41 7c 28 c7       	vmovaps ymm8,ymm15
  b086d3:	62 52 65 20 a8 c2    	vfmadd213ps ymm8,ymm19,ymm10
  b086d9:	62 31 2c 28 58 d3    	vaddps ymm10,ymm10,ymm19
  b086df:	62 31 74 20 5c f8    	vsubps ymm15,ymm17,ymm16
  b086e5:	62 a1 74 20 58 c0    	vaddps ymm16,ymm17,ymm16
  b086eb:	62 12 0d 28 bc c3    	vfnmadd231ps ymm8,ymm14,ymm27
  b086f1:	c4 41 2c 58 f6       	vaddps ymm14,ymm10,ymm14
  b086f6:	62 31 3c 28 5c d5    	vsubps ymm10,ymm8,ymm21
  b086fc:	62 a1 3c 28 58 cd    	vaddps ymm17,ymm8,ymm21
  b08702:	c4 41 7c 5c c1       	vsubps ymm8,ymm0,ymm9
  b08707:	62 c1 7c 28 58 d1    	vaddps ymm18,ymm0,ymm9
  b0870d:	c4 41 04 5c ca       	vsubps ymm9,ymm15,ymm10
  b08712:	c4 41 04 58 fa       	vaddps ymm15,ymm15,ymm10
  b08717:	62 f1 34 20 58 c4    	vaddps ymm0,ymm25,ymm4
  b0871d:	62 f1 34 20 5c e4    	vsubps ymm4,ymm25,ymm4
  b08723:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  b08727:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  b0872b:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  b0872f:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  b08733:	c5 ec 5c e9          	vsubps ymm5,ymm2,ymm1
  b08737:	c5 ec 58 c9          	vaddps ymm1,ymm2,ymm1
  b0873b:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  b08740:	c4 41 14 58 e4       	vaddps ymm12,ymm13,ymm12
  b08745:	62 31 4c 20 58 ec    	vaddps ymm13,ymm22,ymm20
  b0874b:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  b08751:	62 c1 24 28 5c e6    	vsubps ymm20,ymm11,ymm14
  b08757:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  b0875c:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b08761:	62 e1 7c 28 28 2d 35 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff56d135]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  b08768:	d1 56 ff 
  b0876b:	62 52 55 20 7f f4    	vpermt2ps ymm14,ymm21,ymm12
  b08771:	62 e1 7c 28 28 35 65 	vmovaps ymm22,YMMWORD PTR [rip+0xffffffffff56ea65]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b08778:	ea 56 ff 
  b0877b:	62 52 4d 20 7f dc    	vpermt2ps ymm11,ymm22,ymm12
  b08781:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  b08786:	62 31 7c 20 58 d9    	vaddps ymm11,ymm16,ymm17
  b0878c:	62 31 7c 20 5c e1    	vsubps ymm12,ymm16,ymm17
  b08792:	c5 7c 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  b08798:	c4 41 7c 28 f4       	vmovaps ymm14,ymm12
  b0879d:	62 32 4d 20 7f e3    	vpermt2ps ymm12,ymm22,ymm19
  b087a3:	62 32 55 20 7f f3    	vpermt2ps ymm14,ymm21,ymm19
  b087a9:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  b087af:	c5 7c 11 74 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm14
  b087b5:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  b087b9:	62 72 55 20 7f e3    	vpermt2ps ymm12,ymm21,ymm3
  b087bf:	62 f2 4d 20 7f cb    	vpermt2ps ymm1,ymm22,ymm3
  b087c5:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  b087cc:	00 00 
  b087ce:	c5 7c 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  b087d5:	00 00 
  b087d7:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  b087db:	62 f2 55 20 7f cc    	vpermt2ps ymm1,ymm21,ymm4
  b087e1:	62 f2 4d 20 7f f4    	vpermt2ps ymm6,ymm22,ymm4
  b087e7:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  b087ee:	00 00 
  b087f0:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  b087f7:	00 00 
  b087f9:	c5 7c 29 f9          	vmovaps ymm1,ymm15
  b087fd:	62 b2 55 20 7f ca    	vpermt2ps ymm1,ymm21,ymm18
  b08803:	62 32 4d 20 7f fa    	vpermt2ps ymm15,ymm22,ymm18
  b08809:	c5 7c 11 bc 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm15
  b08810:	00 00 
  b08812:	62 b1 7c 28 28 dc    	vmovaps ymm3,ymm20
  b08818:	62 f2 55 20 7f da    	vpermt2ps ymm3,ymm21,ymm2
  b0881e:	62 e2 4d 20 7f e2    	vpermt2ps ymm20,ymm22,ymm2
  b08824:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  b0882b:	00 00 
  b0882d:	62 e1 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm20
  b08834:	0a 
  b08835:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  b0883c:	00 00 
  b0883e:	c5 7c 29 d9          	vmovaps ymm1,ymm11
  b08842:	62 d2 55 20 7f cd    	vpermt2ps ymm1,ymm21,ymm13
  b08848:	62 52 4d 20 7f dd    	vpermt2ps ymm11,ymm22,ymm13
  b0884e:	c5 7c 11 9c 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm11
  b08855:	00 00 
  b08857:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  b0885e:	00 00 
  b08860:	c5 fc 28 cd          	vmovaps ymm1,ymm5
  b08864:	62 f2 55 20 7f cf    	vpermt2ps ymm1,ymm21,ymm7
  b0886a:	62 f2 4d 20 7f ef    	vpermt2ps ymm5,ymm22,ymm7
  b08870:	c5 fc 11 ac 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm5
  b08877:	00 00 
  b08879:	c5 fc 11 8c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm1
  b08880:	00 00 
  b08882:	c5 7c 29 d1          	vmovaps ymm1,ymm10
  b08886:	62 f2 55 20 7f c8    	vpermt2ps ymm1,ymm21,ymm0
  b0888c:	62 72 4d 20 7f d0    	vpermt2ps ymm10,ymm22,ymm0
  b08892:	c5 7c 11 94 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm10
  b08899:	00 00 
  b0889b:	c5 7c 29 c8          	vmovaps ymm0,ymm9
  b0889f:	62 d2 55 20 7f c0    	vpermt2ps ymm0,ymm21,ymm8
  b088a5:	62 52 4d 20 7f c8    	vpermt2ps ymm9,ymm22,ymm8
  b088ab:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  b088b2:	00 00 
  b088b4:	c5 7c 11 8c 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm9
  b088bb:	00 00 
  b088bd:	c5 fc 11 84 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm0
  b088c4:	00 00 
  b088c6:	48 81 c2 80 02 00 00 	add    rdx,0x280
  b088cd:	48 39 d0             	cmp    rax,rdx
  b088d0:	0f 85 da f3 ff ff    	jne    b07cb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b088d6:	48 89 ec             	mov    rsp,rbp
  b088d9:	5d                   	pop    rbp
  b088da:	c5 f8 77             	vzeroupper
  b088dd:	c3                   	ret
  b088de:	cc                   	int3
  b088df:	cc                   	int3
  b088e0:	cc                   	int3
  b088e1:	cc                   	int3
  b088e2:	cc                   	int3
  b088e3:	cc                   	int3
  b088e4:	cc                   	int3
  b088e5:	cc                   	int3
  b088e6:	cc                   	int3
  b088e7:	cc                   	int3
  b088e8:	cc                   	int3
  b088e9:	cc                   	int3
  b088ea:	cc                   	int3
  b088eb:	cc                   	int3
  b088ec:	cc                   	int3
  b088ed:	cc                   	int3
  b088ee:	cc                   	int3
  b088ef:	cc                   	int3
  b088f0:	cc                   	int3
  b088f1:	cc                   	int3
  b088f2:	cc                   	int3
  b088f3:	cc                   	int3
  b088f4:	cc                   	int3
  b088f5:	cc                   	int3
  b088f6:	cc                   	int3
  b088f7:	cc                   	int3
  b088f8:	cc                   	int3
  b088f9:	cc                   	int3
  b088fa:	cc                   	int3
  b088fb:	cc                   	int3
  b088fc:	cc                   	int3
  b088fd:	cc                   	int3
  b088fe:	cc                   	int3
  b088ff:	cc                   	int3
