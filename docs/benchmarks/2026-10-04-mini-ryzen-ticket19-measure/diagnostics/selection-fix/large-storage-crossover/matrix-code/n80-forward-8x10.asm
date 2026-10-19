
target/ticket19/selection-fix/large-storage-crossover/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bbbb40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  bbbb40:	55                   	push   rbp
  bbbb41:	48 89 e5             	mov    rbp,rsp
  bbbb44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bbbb48:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  bbbb4f:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  bbbb56:	00 
  bbbb57:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  bbbb5e:	00 
  bbbb5f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  bbbb64:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  bbbb69:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  bbbb6d:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  bbbb72:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  bbbb77:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  bbbb7d:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  bbbb82:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  bbbb88:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  bbbb8d:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  bbbb92:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  bbbb97:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  bbbb9d:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  bbbba2:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  bbbba8:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  bbbbaf:	00 
  bbbbb0:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  bbbbb7:	00 
  bbbbb8:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  bbbbbd:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  bbbbc3:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  bbbbc8:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  bbbbce:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  bbbbd5:	00 
  bbbbd6:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  bbbbdd:	00 
  bbbbde:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  bbbbe3:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  bbbbe9:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  bbbbee:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  bbbbf4:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  bbbbfb:	00 
  bbbbfc:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  bbbc03:	00 
  bbbc04:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  bbbc09:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  bbbc0f:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  bbbc14:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  bbbc1a:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  bbbc21:	00 
  bbbc22:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  bbbc29:	00 
  bbbc2a:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  bbbc2f:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  bbbc35:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  bbbc3a:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  bbbc40:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  bbbc47:	00 
  bbbc48:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  bbbc4f:	00 
  bbbc50:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  bbbc56:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  bbbc5c:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  bbbc62:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  bbbc68:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  bbbc6f:	00 
  bbbc70:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  bbbc77:	00 
  bbbc78:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  bbbc7f:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  bbbc86:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  bbbc8c:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  bbbc92:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  bbbc98:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  bbbc9e:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  bbbca4:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  bbbcaa:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  bbbcb0:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  bbbcb6:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  bbbcbc:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  bbbcc2:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  bbbcc8:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  bbbcce:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  bbbcd4:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  bbbcda:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  bbbce0:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  bbbce6:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  bbbceb:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  bbbcf0:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  bbbcf4:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  bbbcf9:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  bbbcfd:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  bbbd01:	c4 e2 7d 18 3d 1a 3c 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff4e3c1a]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  bbbd08:	4e ff 
  bbbd0a:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  bbbd0e:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  bbbd13:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  bbbd19:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  bbbd1e:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  bbbd22:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  bbbd27:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  bbbd2d:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  bbbd32:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  bbbd36:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  bbbd3a:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  bbbd3e:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  bbbd42:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  bbbd47:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  bbbd4b:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  bbbd4f:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  bbbd54:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  bbbd5a:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  bbbd60:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  bbbd66:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  bbbd6c:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  bbbd72:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  bbbd78:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  bbbd7c:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  bbbd80:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  bbbd84:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  bbbd88:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  bbbd8d:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  bbbd91:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  bbbd97:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  bbbd9d:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  bbbda2:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  bbbda7:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  bbbdad:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  bbbdb3:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  bbbdb7:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  bbbdbd:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  bbbdc4:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  bbbdcb:	00 00 
  bbbdcd:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  bbbdd4:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  bbbddb:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  bbbde2:	00 00 
  bbbde4:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  bbbdeb:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  bbbdf2:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  bbbdf9:	00 00 
  bbbdfb:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  bbbe02:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  bbbe08:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  bbbe0f:	00 00 
  bbbe11:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  bbbe17:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  bbbe1c:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  bbbe21:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  bbbe25:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  bbbe29:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  bbbe2f:	c5 fc 29 bc 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm7
  bbbe36:	00 00 
  bbbe38:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  bbbe3e:	c5 fc 29 bc 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm7
  bbbe45:	00 00 
  bbbe47:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  bbbe4c:	c5 fc 29 bc 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm7
  bbbe53:	00 00 
  bbbe55:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  bbbe5a:	c5 fc 29 a4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm4
  bbbe61:	00 00 
  bbbe63:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  bbbe6a:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  bbbe70:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  bbbe77:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  bbbe7d:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  bbbe84:	00 00 
  bbbe86:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  bbbe8c:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  bbbe93:	c5 fc 29 b4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm6
  bbbe9a:	00 00 
  bbbe9c:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  bbbea3:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  bbbeaa:	c5 fc 29 7c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm7
  bbbeb0:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  bbbeb7:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  bbbebd:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  bbbec3:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  bbbec8:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  bbbece:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  bbbed5:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  bbbedc:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  bbbee3:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  bbbeea:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  bbbef0:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  bbbef6:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  bbbefd:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  bbbf04:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  bbbf0a:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  bbbf10:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  bbbf17:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  bbbf1e:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  bbbf25:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  bbbf2c:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  bbbf32:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  bbbf39:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  bbbf40:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  bbbf47:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  bbbf4e:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  bbbf55:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  bbbf5c:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  bbbf63:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  bbbf6a:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  bbbf71:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  bbbf78:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  bbbf7f:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  bbbf86:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  bbbf8d:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  bbbf94:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  bbbf9b:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  bbbfa2:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  bbbfa9:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  bbbfb0:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  bbbfb7:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  bbbfbe:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  bbbfc5:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  bbbfcc:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  bbbfd2:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  bbbfd8:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  bbbfde:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  bbbfe4:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  bbbfe8:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  bbbfee:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  bbbff2:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  bbbff6:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  bbbffc:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  bbc002:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  bbc008:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  bbc00c:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  bbc012:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  bbc018:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  bbc01e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  bbc024:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  bbc02a:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  bbc030:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  bbc036:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  bbc03c:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  bbc040:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  bbc044:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  bbc048:	c4 62 7d 18 1d d3 38 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff4e38d3]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  bbc04f:	4e ff 
  bbc051:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  bbc057:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  bbc05b:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  bbc061:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  bbc067:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  bbc06b:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  bbc071:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  bbc075:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  bbc07a:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  bbc080:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  bbc084:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  bbc088:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  bbc08c:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  bbc090:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  bbc094:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  bbc098:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  bbc09c:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  bbc0a0:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  bbc0a6:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  bbc0aa:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  bbc0b0:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  bbc0b4:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  bbc0ba:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  bbc0be:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  bbc0c2:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  bbc0c6:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  bbc0cc:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  bbc0d2:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  bbc0d6:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  bbc0da:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  bbc0de:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  bbc0e4:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  bbc0e8:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  bbc0ee:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  bbc0f4:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  bbc0f8:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  bbc0fc:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  bbc100:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  bbc104:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0x180],0xd8
  bbc10b:	0c d8 
  bbc10d:	c4 e3 7d 04 bc 24 60 	vpermilps ymm7,YMMWORD PTR [rsp+0x160],0xd8
  bbc114:	01 00 00 d8 
  bbc118:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x140],0xd8
  bbc11f:	0a d8 
  bbc121:	c4 63 7d 04 a4 24 20 	vpermilps ymm12,YMMWORD PTR [rsp+0x120],0xd8
  bbc128:	01 00 00 d8 
  bbc12c:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  bbc133:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  bbc139:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  bbc140:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  bbc147:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  bbc14e:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  bbc155:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  bbc15c:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  bbc163:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  bbc169:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  bbc170:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  bbc175:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  bbc179:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  bbc17f:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  bbc183:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  bbc187:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  bbc18d:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  bbc191:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  bbc196:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  bbc19b:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  bbc1a2:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  bbc1a9:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  bbc1ae:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  bbc1b5:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  bbc1bc:	00 00 
  bbc1be:	c5 fd 14 84 24 00 01 	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x100]
  bbc1c5:	00 00 
  bbc1c7:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  bbc1ce:	00 00 
  bbc1d0:	c5 f5 14 8c 24 e0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xe0]
  bbc1d7:	00 00 
  bbc1d9:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  bbc1de:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  bbc1e3:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  bbc1e9:	c5 e5 14 a4 24 80 00 	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp+0x80]
  bbc1f0:	00 00 
  bbc1f2:	c5 fc 28 9c 24 a0 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x1a0]
  bbc1f9:	00 00 
  bbc1fb:	c5 e5 14 6c 24 60    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp+0x60]
  bbc201:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  bbc206:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  bbc20b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  bbc210:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  bbc215:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  bbc21c:	00 00 
  bbc21e:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  bbc223:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  bbc228:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  bbc22e:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  bbc235:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  bbc23c:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  bbc243:	00 
  bbc244:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  bbc24b:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  bbc252:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  bbc259:	00 
  bbc25a:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  bbc261:	00 
  bbc262:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  bbc269:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  bbc26f:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  bbc275:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  bbc27b:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  bbc282:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  bbc288:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  bbc28f:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  bbc295:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  bbc29b:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  bbc2a1:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  bbc2a8:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  bbc2ae:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  bbc2b5:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  bbc2bb:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  bbc2c1:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  bbc2c7:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  bbc2ce:	00 
  bbc2cf:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  bbc2d5:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  bbc2dc:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  bbc2e2:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  bbc2e8:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  bbc2ee:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  bbc2f5:	00 
  bbc2f6:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  bbc2fc:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  bbc303:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  bbc309:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  bbc30f:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  bbc315:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  bbc31b:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  bbc321:	c4 62 7d 18 05 ba 39 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff4e39ba]        # 9fce4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x33b4>
  bbc328:	4e ff 
  bbc32a:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  bbc330:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  bbc336:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  bbc33c:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  bbc343:	00 
  bbc344:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  bbc349:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  bbc350:	00 
  bbc351:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  bbc357:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  bbc35d:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  bbc361:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  bbc367:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  bbc36c:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  bbc372:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  bbc378:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  bbc37e:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  bbc384:	c4 62 7d 18 1d 9b 35 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff4e359b]        # 9f928 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff8>
  bbc38b:	4e ff 
  bbc38d:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  bbc393:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  bbc399:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  bbc39f:	c5 7c 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm12
  bbc3a5:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  bbc3ab:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  bbc3b1:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  bbc3b7:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  bbc3bd:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  bbc3c3:	62 e2 7d 28 18 35 a3 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff4e38a3]        # 9fc70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3340>
  bbc3ca:	38 4e ff 
  bbc3cd:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  bbc3d3:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  bbc3d9:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  bbc3de:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  bbc3e4:	62 e2 7d 28 18 05 e2 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff4e37e2]        # 9fbd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x32a0>
  bbc3eb:	37 4e ff 
  bbc3ee:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  bbc3f4:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  bbc3fa:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  bbc400:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  bbc406:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  bbc40c:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  bbc412:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  bbc418:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  bbc41e:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  bbc424:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  bbc42a:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  bbc430:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  bbc436:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  bbc43c:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  bbc442:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  bbc448:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  bbc44e:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  bbc454:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  bbc45a:	62 61 7c 28 28 6c 24 	vmovaps ymm29,YMMWORD PTR [rsp+0x80]
  bbc461:	04 
  bbc462:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  bbc468:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  bbc46e:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  bbc474:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  bbc47a:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  bbc480:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  bbc486:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  bbc48a:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  bbc490:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  bbc496:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  bbc49c:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  bbc4a2:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  bbc4a8:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  bbc4ae:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  bbc4b4:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  bbc4ba:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  bbc4c0:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  bbc4c6:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  bbc4cc:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  bbc4d2:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  bbc4d8:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  bbc4de:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  bbc4e3:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  bbc4e9:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  bbc4ee:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  bbc4f4:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  bbc4fa:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  bbc500:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  bbc506:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  bbc50c:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  bbc512:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  bbc518:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  bbc51e:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  bbc524:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  bbc52a:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  bbc530:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  bbc536:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  bbc53c:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  bbc542:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  bbc546:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  bbc54a:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  bbc550:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  bbc556:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  bbc55c:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  bbc562:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  bbc568:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  bbc56e:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  bbc574:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  bbc57a:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  bbc57e:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  bbc582:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  bbc588:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  bbc58c:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  bbc592:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  bbc596:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  bbc59c:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  bbc5a0:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  bbc5a6:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  bbc5ac:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  bbc5b2:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  bbc5b8:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  bbc5be:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  bbc5c4:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  bbc5c9:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  bbc5cf:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  bbc5d5:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  bbc5db:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  bbc5e1:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  bbc5e6:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  bbc5ec:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  bbc5f2:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  bbc5f6:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  bbc5fc:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  bbc602:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  bbc606:	c5 fc 28 35 12 38 4e 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff4e3812]        # 9fe20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x34f0>
  bbc60d:	ff 
  bbc60e:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  bbc614:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  bbc61a:	62 e1 7c 28 28 1d 5c 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff4e515c]        # a1780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4e50>
  bbc621:	51 4e ff 
  bbc624:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  bbc62a:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  bbc62f:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  bbc635:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  bbc63b:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  bbc640:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  bbc646:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  bbc64c:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  bbc652:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  bbc658:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  bbc65e:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  bbc664:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  bbc66a:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  bbc670:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  bbc675:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  bbc67b:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  bbc681:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  bbc687:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  bbc68d:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  bbc693:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  bbc699:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  bbc69f:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  bbc6a5:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  bbc6ab:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  bbc6b1:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  bbc6b7:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  bbc6bd:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  bbc6c3:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  bbc6c7:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  bbc6ce:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  bbc6d3:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  bbc6d8:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  bbc6df:	00 
  bbc6e0:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  bbc6e7:	00 
  bbc6e8:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  bbc6ef:	00 
  bbc6f0:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  bbc6f7:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  bbc6fe:	00 
  bbc6ff:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  bbc706:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  bbc70d:	00 
  bbc70e:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  bbc715:	00 
  bbc716:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  bbc71d:	00 
  bbc71e:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  bbc725:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  bbc72c:	00 
  bbc72d:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  bbc734:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  bbc73b:	00 
  bbc73c:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  bbc743:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  bbc74a:	00 
  bbc74b:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  bbc752:	00 
  bbc753:	48 89 ec             	mov    rsp,rbp
  bbc756:	5d                   	pop    rbp
  bbc757:	c5 f8 77             	vzeroupper
  bbc75a:	c3                   	ret
  bbc75b:	cc                   	int3
  bbc75c:	cc                   	int3
  bbc75d:	cc                   	int3
  bbc75e:	cc                   	int3
  bbc75f:	cc                   	int3
  bbc760:	cc                   	int3
  bbc761:	cc                   	int3
  bbc762:	cc                   	int3
  bbc763:	cc                   	int3
  bbc764:	cc                   	int3
  bbc765:	cc                   	int3
  bbc766:	cc                   	int3
  bbc767:	cc                   	int3
  bbc768:	cc                   	int3
  bbc769:	cc                   	int3
  bbc76a:	cc                   	int3
  bbc76b:	cc                   	int3
  bbc76c:	cc                   	int3
  bbc76d:	cc                   	int3
  bbc76e:	cc                   	int3
  bbc76f:	cc                   	int3
  bbc770:	cc                   	int3
  bbc771:	cc                   	int3
  bbc772:	cc                   	int3
  bbc773:	cc                   	int3
  bbc774:	cc                   	int3
  bbc775:	cc                   	int3
  bbc776:	cc                   	int3
  bbc777:	cc                   	int3
  bbc778:	cc                   	int3
  bbc779:	cc                   	int3
  bbc77a:	cc                   	int3
  bbc77b:	cc                   	int3
  bbc77c:	cc                   	int3
  bbc77d:	cc                   	int3
  bbc77e:	cc                   	int3
  bbc77f:	cc                   	int3
