
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b199c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b199c0:	55                   	push   rbp
  b199c1:	48 89 e5             	mov    rbp,rsp
  b199c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b199c8:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  b199cf:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  b199d6:	00 
  b199d7:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  b199de:	00 
  b199df:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  b199e4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  b199e9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b199ed:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b199f2:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b199f7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b199fd:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b19a02:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b19a08:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  b19a0d:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b19a12:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b19a17:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b19a1d:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b19a22:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b19a28:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  b19a2f:	00 
  b19a30:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b19a37:	00 
  b19a38:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b19a3d:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b19a43:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b19a48:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b19a4e:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  b19a55:	00 
  b19a56:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b19a5d:	00 
  b19a5e:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b19a63:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b19a69:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b19a6e:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  b19a74:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  b19a7b:	00 
  b19a7c:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  b19a83:	00 
  b19a84:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  b19a89:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b19a8f:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b19a94:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  b19a9a:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  b19aa1:	00 
  b19aa2:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  b19aa9:	00 
  b19aaa:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  b19aaf:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b19ab5:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b19aba:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  b19ac0:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  b19ac7:	00 
  b19ac8:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b19acf:	00 
  b19ad0:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  b19ad6:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b19adc:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b19ae2:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  b19ae8:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  b19aef:	00 
  b19af0:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b19af7:	00 
  b19af8:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  b19aff:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b19b06:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  b19b0c:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  b19b12:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  b19b18:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  b19b1e:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b19b24:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  b19b2a:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b19b30:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b19b36:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b19b3c:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  b19b42:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  b19b48:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b19b4e:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  b19b54:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  b19b5a:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b19b60:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  b19b66:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b19b6b:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b19b70:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  b19b74:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b19b79:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b19b7d:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  b19b81:	c4 e2 7d 18 3d d2 b7 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff55b7d2]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b19b88:	55 ff 
  b19b8a:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  b19b8e:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  b19b93:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b19b99:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  b19b9e:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  b19ba2:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  b19ba7:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  b19bad:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  b19bb2:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b19bb6:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  b19bba:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  b19bbe:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b19bc2:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  b19bc7:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  b19bcb:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  b19bcf:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  b19bd4:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  b19bda:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  b19be0:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  b19be6:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b19bec:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b19bf2:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  b19bf8:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b19bfc:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b19c00:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  b19c04:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b19c08:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  b19c0d:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  b19c11:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  b19c17:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b19c1d:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  b19c22:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  b19c27:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b19c2d:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  b19c33:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  b19c37:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  b19c3d:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  b19c44:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  b19c4b:	00 00 
  b19c4d:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  b19c54:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  b19c5b:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b19c62:	00 00 
  b19c64:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  b19c6b:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  b19c72:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  b19c79:	00 00 
  b19c7b:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  b19c82:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  b19c88:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  b19c8f:	00 00 
  b19c91:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  b19c97:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  b19c9c:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  b19ca1:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  b19ca5:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  b19ca9:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  b19caf:	c5 fc 29 bc 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm7
  b19cb6:	00 00 
  b19cb8:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  b19cbe:	c5 fc 29 bc 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm7
  b19cc5:	00 00 
  b19cc7:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  b19ccc:	c5 fc 29 bc 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm7
  b19cd3:	00 00 
  b19cd5:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  b19cda:	c5 fc 29 a4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm4
  b19ce1:	00 00 
  b19ce3:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  b19cea:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  b19cf0:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  b19cf7:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  b19cfd:	c5 fc 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm5
  b19d04:	00 00 
  b19d06:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  b19d0c:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  b19d13:	c5 fc 29 b4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm6
  b19d1a:	00 00 
  b19d1c:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  b19d23:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  b19d2a:	c5 fc 29 7c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm7
  b19d30:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b19d37:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  b19d3d:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  b19d43:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  b19d48:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  b19d4e:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  b19d55:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  b19d5c:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  b19d63:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b19d6a:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  b19d70:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  b19d76:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  b19d7d:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  b19d84:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  b19d8a:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  b19d90:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  b19d97:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  b19d9e:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  b19da5:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  b19dac:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  b19db2:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  b19db9:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  b19dc0:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  b19dc7:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  b19dce:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  b19dd5:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  b19ddc:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  b19de3:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  b19dea:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  b19df1:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  b19df8:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  b19dff:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  b19e06:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  b19e0d:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  b19e14:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  b19e1b:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  b19e22:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  b19e29:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  b19e30:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  b19e37:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  b19e3e:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  b19e45:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  b19e4c:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  b19e52:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  b19e58:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  b19e5e:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  b19e64:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  b19e68:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  b19e6e:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  b19e72:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  b19e76:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  b19e7c:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  b19e82:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  b19e88:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b19e8c:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  b19e92:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  b19e98:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  b19e9e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  b19ea4:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  b19eaa:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  b19eb0:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  b19eb6:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  b19ebc:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b19ec0:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b19ec4:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b19ec8:	c4 62 7d 18 1d 8b b4 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff55b48b]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b19ecf:	55 ff 
  b19ed1:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  b19ed7:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  b19edb:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  b19ee1:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  b19ee7:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  b19eeb:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  b19ef1:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b19ef5:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  b19efa:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  b19f00:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b19f04:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b19f08:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  b19f0c:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  b19f10:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  b19f14:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b19f18:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  b19f1c:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  b19f20:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  b19f26:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  b19f2a:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  b19f30:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  b19f34:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  b19f3a:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  b19f3e:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  b19f42:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  b19f46:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  b19f4c:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  b19f52:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  b19f56:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b19f5a:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b19f5e:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  b19f64:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b19f68:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  b19f6e:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  b19f74:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  b19f78:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b19f7c:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  b19f80:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b19f84:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0x180],0xd8
  b19f8b:	0c d8 
  b19f8d:	c4 e3 7d 04 bc 24 60 	vpermilps ymm7,YMMWORD PTR [rsp+0x160],0xd8
  b19f94:	01 00 00 d8 
  b19f98:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x140],0xd8
  b19f9f:	0a d8 
  b19fa1:	c4 63 7d 04 a4 24 20 	vpermilps ymm12,YMMWORD PTR [rsp+0x120],0xd8
  b19fa8:	01 00 00 d8 
  b19fac:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  b19fb3:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  b19fb9:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  b19fc0:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  b19fc7:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  b19fce:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  b19fd5:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  b19fdc:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b19fe3:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  b19fe9:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  b19ff0:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  b19ff5:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  b19ff9:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  b19fff:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  b1a003:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  b1a007:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  b1a00d:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  b1a011:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  b1a016:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  b1a01b:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  b1a022:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  b1a029:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  b1a02e:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  b1a035:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  b1a03c:	00 00 
  b1a03e:	c5 fd 14 84 24 00 01 	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x100]
  b1a045:	00 00 
  b1a047:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  b1a04e:	00 00 
  b1a050:	c5 f5 14 8c 24 e0 00 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0xe0]
  b1a057:	00 00 
  b1a059:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b1a05e:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1a063:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  b1a069:	c5 e5 14 a4 24 80 00 	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp+0x80]
  b1a070:	00 00 
  b1a072:	c5 fc 28 9c 24 a0 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x1a0]
  b1a079:	00 00 
  b1a07b:	c5 e5 14 6c 24 60    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp+0x60]
  b1a081:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  b1a086:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1a08b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b1a090:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1a095:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  b1a09c:	00 00 
  b1a09e:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  b1a0a3:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  b1a0a8:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  b1a0ae:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1a0b5:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b1a0bc:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b1a0c3:	00 
  b1a0c4:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  b1a0cb:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b1a0d2:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  b1a0d9:	00 
  b1a0da:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  b1a0e1:	00 
  b1a0e2:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b1a0e9:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  b1a0ef:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  b1a0f5:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  b1a0fb:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  b1a102:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  b1a108:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  b1a10f:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  b1a115:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  b1a11b:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  b1a121:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  b1a128:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  b1a12e:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  b1a135:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  b1a13b:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  b1a141:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  b1a147:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  b1a14e:	00 
  b1a14f:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  b1a155:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  b1a15c:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  b1a162:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  b1a168:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  b1a16e:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  b1a175:	00 
  b1a176:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  b1a17c:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b1a183:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  b1a189:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  b1a18f:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  b1a195:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  b1a19b:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  b1a1a1:	c4 62 7d 18 05 6e b5 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff55b56e]        # 75718 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  b1a1a8:	55 ff 
  b1a1aa:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  b1a1b0:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  b1a1b6:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  b1a1bc:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  b1a1c3:	00 
  b1a1c4:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  b1a1c9:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  b1a1d0:	00 
  b1a1d1:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  b1a1d7:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  b1a1dd:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  b1a1e1:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  b1a1e7:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  b1a1ec:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  b1a1f2:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  b1a1f8:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  b1a1fe:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  b1a204:	c4 62 7d 18 1d 53 b1 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff55b153]        # 75360 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  b1a20b:	55 ff 
  b1a20d:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  b1a213:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  b1a219:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  b1a21f:	c5 7c 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm12
  b1a225:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  b1a22b:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  b1a231:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b1a237:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  b1a23d:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  b1a243:	62 e2 7d 28 18 35 5b 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff55b45b]        # 756a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  b1a24a:	b4 55 ff 
  b1a24d:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  b1a253:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  b1a259:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  b1a25e:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  b1a264:	62 e2 7d 28 18 05 96 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff55b396]        # 75604 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ae4>
  b1a26b:	b3 55 ff 
  b1a26e:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  b1a274:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b1a27a:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  b1a280:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  b1a286:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  b1a28c:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  b1a292:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  b1a298:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  b1a29e:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  b1a2a4:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  b1a2aa:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  b1a2b0:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  b1a2b6:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  b1a2bc:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  b1a2c2:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  b1a2c8:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b1a2ce:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  b1a2d4:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b1a2da:	62 61 7c 28 28 6c 24 	vmovaps ymm29,YMMWORD PTR [rsp+0x80]
  b1a2e1:	04 
  b1a2e2:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  b1a2e8:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  b1a2ee:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  b1a2f4:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  b1a2fa:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  b1a300:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  b1a306:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b1a30a:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  b1a310:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  b1a316:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  b1a31c:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  b1a322:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  b1a328:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  b1a32e:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  b1a334:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  b1a33a:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  b1a340:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  b1a346:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  b1a34c:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  b1a352:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  b1a358:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  b1a35e:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  b1a363:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  b1a369:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b1a36e:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  b1a374:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  b1a37a:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  b1a380:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  b1a386:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  b1a38c:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  b1a392:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  b1a398:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  b1a39e:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  b1a3a4:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  b1a3aa:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  b1a3b0:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  b1a3b6:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  b1a3bc:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b1a3c2:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b1a3c6:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b1a3ca:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  b1a3d0:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  b1a3d6:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  b1a3dc:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  b1a3e2:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  b1a3e8:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  b1a3ee:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  b1a3f4:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  b1a3fa:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b1a3fe:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b1a402:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  b1a408:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  b1a40c:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  b1a412:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b1a416:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  b1a41c:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  b1a420:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  b1a426:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  b1a42c:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  b1a432:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  b1a438:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  b1a43e:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  b1a444:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  b1a449:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  b1a44f:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  b1a455:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  b1a45b:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  b1a461:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  b1a466:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  b1a46c:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b1a472:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  b1a476:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  b1a47c:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  b1a482:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  b1a486:	c5 fc 28 35 d2 b3 55 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff55b3d2]        # 75860 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b1a48d:	ff 
  b1a48e:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  b1a494:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  b1a49a:	62 e1 7c 28 28 1d fc 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff55ccfc]        # 771a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b1a4a1:	cc 55 ff 
  b1a4a4:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  b1a4aa:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b1a4af:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b1a4b5:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  b1a4bb:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b1a4c0:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  b1a4c6:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  b1a4cc:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  b1a4d2:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b1a4d8:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  b1a4de:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  b1a4e4:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  b1a4ea:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  b1a4f0:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  b1a4f5:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  b1a4fb:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  b1a501:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  b1a507:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  b1a50d:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  b1a513:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  b1a519:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  b1a51f:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  b1a525:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b1a52b:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  b1a531:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  b1a537:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b1a53d:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  b1a543:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  b1a547:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  b1a54e:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b1a553:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b1a558:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b1a55f:	00 
  b1a560:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b1a567:	00 
  b1a568:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b1a56f:	00 
  b1a570:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  b1a577:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b1a57e:	00 
  b1a57f:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  b1a586:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b1a58d:	00 
  b1a58e:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  b1a595:	00 
  b1a596:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b1a59d:	00 
  b1a59e:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b1a5a5:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b1a5ac:	00 
  b1a5ad:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b1a5b4:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b1a5bb:	00 
  b1a5bc:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  b1a5c3:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b1a5ca:	00 
  b1a5cb:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b1a5d2:	00 
  b1a5d3:	48 89 ec             	mov    rsp,rbp
  b1a5d6:	5d                   	pop    rbp
  b1a5d7:	c5 f8 77             	vzeroupper
  b1a5da:	c3                   	ret
  b1a5db:	cc                   	int3
  b1a5dc:	cc                   	int3
  b1a5dd:	cc                   	int3
  b1a5de:	cc                   	int3
  b1a5df:	cc                   	int3
  b1a5e0:	cc                   	int3
  b1a5e1:	cc                   	int3
  b1a5e2:	cc                   	int3
  b1a5e3:	cc                   	int3
  b1a5e4:	cc                   	int3
  b1a5e5:	cc                   	int3
  b1a5e6:	cc                   	int3
  b1a5e7:	cc                   	int3
  b1a5e8:	cc                   	int3
  b1a5e9:	cc                   	int3
  b1a5ea:	cc                   	int3
  b1a5eb:	cc                   	int3
  b1a5ec:	cc                   	int3
  b1a5ed:	cc                   	int3
  b1a5ee:	cc                   	int3
  b1a5ef:	cc                   	int3
  b1a5f0:	cc                   	int3
  b1a5f1:	cc                   	int3
  b1a5f2:	cc                   	int3
  b1a5f3:	cc                   	int3
  b1a5f4:	cc                   	int3
  b1a5f5:	cc                   	int3
  b1a5f6:	cc                   	int3
  b1a5f7:	cc                   	int3
  b1a5f8:	cc                   	int3
  b1a5f9:	cc                   	int3
  b1a5fa:	cc                   	int3
  b1a5fb:	cc                   	int3
  b1a5fc:	cc                   	int3
  b1a5fd:	cc                   	int3
  b1a5fe:	cc                   	int3
  b1a5ff:	cc                   	int3
