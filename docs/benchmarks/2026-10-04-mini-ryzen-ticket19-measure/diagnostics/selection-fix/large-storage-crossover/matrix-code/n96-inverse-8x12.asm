
target/ticket19/selection-fix/large-storage-crossover/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b73ac0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b73ac0:	55                   	push   rbp
  b73ac1:	48 89 e5             	mov    rbp,rsp
  b73ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b73ac8:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  b73acf:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  b73ad6:	00 
  b73ad7:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  b73ade:	00 
  b73adf:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  b73ae4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  b73ae9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b73aed:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b73af2:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b73af7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b73afd:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b73b02:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b73b08:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  b73b0d:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  b73b14:	00 
  b73b15:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b73b1a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b73b20:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b73b25:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b73b2b:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  b73b32:	00 
  b73b33:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  b73b3a:	00 
  b73b3b:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b73b40:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b73b46:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b73b4b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b73b51:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  b73b58:	00 
  b73b59:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  b73b60:	00 
  b73b61:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b73b66:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b73b6c:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b73b71:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b73b77:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  b73b7e:	00 
  b73b7f:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  b73b86:	00 
  b73b87:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b73b8d:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b73b93:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b73b99:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b73b9f:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  b73ba6:	00 
  b73ba7:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  b73bae:	00 
  b73baf:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  b73bb5:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b73bbb:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  b73bc1:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b73bc7:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  b73bce:	00 
  b73bcf:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  b73bd6:	00 
  b73bd7:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  b73bdd:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b73be3:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  b73be9:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b73bef:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  b73bf6:	00 
  b73bf7:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  b73bfe:	00 
  b73bff:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  b73c06:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b73c0d:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  b73c13:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b73c19:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  b73c1d:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  b73c23:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  b73c29:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  b73c2f:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  b73c35:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  b73c3b:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  b73c41:	62 61 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0x100],ymm31
  b73c48:	08 
  b73c49:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  b73c4f:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  b73c55:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  b73c5b:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  b73c61:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  b73c67:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b73c6d:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  b73c73:	62 61 7c 28 29 74 24 	vmovaps YMMWORD PTR [rsp+0x200],ymm30
  b73c7a:	10 
  b73c7b:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  b73c7f:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  b73c84:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  b73c8a:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  b73c8f:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b73c94:	62 62 7d 28 18 05 86 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff52bc86]        # 9f924 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ff4>
  b73c9b:	bc 52 ff 
  b73c9e:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  b73ca2:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  b73ca8:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  b73cae:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  b73cb3:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  b73cb7:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  b73cbd:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  b73cc2:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  b73cc8:	c5 7c 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm9
  b73ccf:	00 00 
  b73cd1:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b73cd6:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  b73cda:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  b73cde:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  b73ce2:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  b73ce8:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  b73cec:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  b73cf2:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  b73cf8:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b73cfe:	c5 fc 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm4
  b73d05:	00 00 
  b73d07:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b73d0d:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  b73d13:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  b73d19:	c5 7c 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm10
  b73d20:	00 00 
  b73d22:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  b73d28:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  b73d2e:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  b73d34:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  b73d3b:	00 00 
  b73d3d:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b73d41:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b73d45:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  b73d49:	c5 7c 29 b4 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm14
  b73d50:	00 00 
  b73d52:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b73d56:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  b73d5b:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b73d5f:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  b73d66:	00 00 
  b73d68:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  b73d6e:	62 e1 7c 28 29 64 24 	vmovaps YMMWORD PTR [rsp+0x120],ymm20
  b73d75:	09 
  b73d76:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  b73d7c:	c5 7c 29 a4 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm12
  b73d83:	00 00 
  b73d85:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  b73d8b:	c5 7c 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm13
  b73d92:	00 00 
  b73d94:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  b73d9a:	c5 fc 29 b4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm6
  b73da1:	00 00 
  b73da3:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  b73da9:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x160],ymm16
  b73db0:	0b 
  b73db1:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  b73db7:	c5 7c 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm11
  b73dbd:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  b73dc1:	c5 7c 29 bc 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm15
  b73dc8:	00 00 
  b73dca:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  b73dce:	c5 7c 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm8
  b73dd4:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  b73ddb:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  b73de1:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b73de5:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  b73deb:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  b73df2:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  b73df8:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  b73dff:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  b73e05:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  b73e0c:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b73e10:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  b73e16:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  b73e1d:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  b73e24:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  b73e2b:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  b73e32:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b73e36:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  b73e3c:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  b73e43:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  b73e49:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  b73e50:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  b73e57:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b73e5b:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  b73e61:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  b73e68:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  b73e6f:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  b73e74:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  b73e79:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  b73e80:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  b73e85:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  b73e8c:	00 
  b73e8d:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  b73e94:	00 
  b73e95:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  b73e9a:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  b73e9f:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  b73ea6:	00 
  b73ea7:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  b73eae:	00 
  b73eaf:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  b73eb6:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  b73ebd:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  b73ec4:	00 
  b73ec5:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  b73ecc:	00 
  b73ecd:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  b73ed2:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  b73ed7:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  b73ede:	00 
  b73edf:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  b73ee6:	00 
  b73ee7:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  b73eee:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  b73ef3:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  b73efa:	00 
  b73efb:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  b73f02:	00 
  b73f03:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  b73f08:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  b73f0d:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  b73f14:	00 
  b73f15:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  b73f1c:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  b73f23:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  b73f2a:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  b73f31:	00 
  b73f32:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  b73f39:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  b73f40:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  b73f47:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  b73f4d:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  b73f53:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  b73f59:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  b73f5d:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  b73f61:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  b73f66:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  b73f6c:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  b73f72:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  b73f79:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  b73f7f:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  b73f83:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b73f87:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  b73f8d:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  b73f93:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  b73f99:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  b73fa0:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  b73fa4:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b73fa8:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b73fac:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b73fb0:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  b73fb4:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  b73fb8:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  b73fbe:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  b73fc2:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  b73fc8:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  b73fce:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  b73fd2:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  b73fd6:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  b73fda:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  b73fdf:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b73fe5:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  b73fea:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b73fee:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b73ff2:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  b73ff8:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  b73ffe:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  b74002:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  b74006:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  b7400a:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  b74010:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  b74016:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  b7401a:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  b74020:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  b74024:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  b74028:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  b7402c:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b74032:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  b74037:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b7403b:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  b7403f:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b74044:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  b7404a:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  b74050:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  b74056:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b7405a:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  b7405e:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b74062:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  b74066:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  b7406c:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  b74070:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  b74074:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b74078:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b7407c:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  b74082:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  b74088:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b7408c:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  b74091:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  b74096:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b7409a:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  b7409e:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  b740a4:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  b740aa:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  b740b0:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b740b4:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  b740b8:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  b740bc:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  b740c1:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  b740c6:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  b740cb:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  b740d0:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp+0x60],0xd8
  b740d7:	03 d8 
  b740d9:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  b740e0:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  b740e7:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  b740ed:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  b740f4:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b740fb:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  b74102:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  b74109:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  b74110:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  b74117:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  b7411e:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  b74125:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  b7412c:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  b74133:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  b7413a:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  b74141:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  b74148:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b7414f:	00 00 
  b74151:	c4 e3 7d 18 84 24 20 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x120],0x1
  b74158:	01 00 00 01 
  b7415c:	c5 fc 28 8c 24 40 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x140]
  b74163:	00 00 
  b74165:	c4 e3 75 18 8c 24 60 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0x160],0x1
  b7416c:	01 00 00 01 
  b74170:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b74174:	c5 fc 28 9c 24 80 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x180]
  b7417b:	00 00 
  b7417d:	c4 e3 65 18 9c 24 a0 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x1a0],0x1
  b74184:	01 00 00 01 
  b74188:	c5 fc 28 a4 24 c0 01 	vmovaps ymm4,YMMWORD PTR [rsp+0x1c0]
  b7418f:	00 00 
  b74191:	c4 e3 5d 18 ac 24 e0 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x1e0],0x1
  b74198:	01 00 00 01 
  b7419c:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  b741a0:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  b741a5:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  b741aa:	c5 fc 28 b4 24 00 02 	vmovaps ymm6,YMMWORD PTR [rsp+0x200]
  b741b1:	00 00 
  b741b3:	c4 e3 4d 18 b4 24 20 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x220],0x1
  b741ba:	02 00 00 01 
  b741be:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  b741c5:	00 00 
  b741c7:	c4 63 45 18 44 24 20 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp+0x20],0x1
  b741ce:	01 
  b741cf:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  b741d4:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  b741db:	00 00 
  b741dd:	c4 63 35 18 8c 24 c0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0xc0],0x1
  b741e4:	00 00 00 01 
  b741e8:	c5 7c 28 94 24 e0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xe0]
  b741ef:	00 00 
  b741f1:	c4 63 2d 18 54 24 40 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp+0x40],0x1
  b741f8:	01 
  b741f9:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  b741fe:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  b74204:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  b7420a:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  b7420f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b74214:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  b7421a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b7421f:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b74223:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  b74227:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  b7422c:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  b74231:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  b74236:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  b7423b:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  b74240:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  b74245:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b7424a:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  b74251:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  b74256:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b7425b:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b74261:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b74266:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  b7426b:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b74272:	00 
  b74273:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  b7427a:	00 
  b7427b:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  b74282:	00 
  b74283:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  b7428a:	00 
  b7428b:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  b74292:	00 
  b74293:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  b74299:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  b7429f:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  b742a5:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  b742ac:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  b742b2:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  b742b9:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  b742be:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  b742c4:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  b742c9:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  b742d0:	00 
  b742d1:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  b742d7:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  b742de:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  b742e4:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  b742ea:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  b742f0:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  b742f7:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  b742fd:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  b74304:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  b7430a:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  b74310:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  b74316:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  b7431d:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  b74323:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  b7432a:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  b74330:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  b74336:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  b7433c:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  b74343:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  b74349:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b74350:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  b74356:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  b7435c:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  b74362:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  b74369:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  b7436f:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  b74376:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  b7437c:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  b74382:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  b74387:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  b7438e:	00 
  b7438f:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  b74394:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  b7439b:	00 
  b7439c:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  b743a2:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  b743a8:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  b743ae:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  b743b5:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  b743bb:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  b743c1:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  b743c7:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  b743cd:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  b743d3:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  b743d7:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  b743dc:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  b743e1:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  b743e5:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  b743ec:	00 00 
  b743ee:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  b743f4:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  b743fa:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  b74400:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  b74406:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  b7440c:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  b74412:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  b74418:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  b7441e:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  b74424:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  b7442a:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  b74430:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b74437:	00 00 
  b74439:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  b7443f:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  b74445:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  b7444b:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  b74451:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b74457:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  b7445d:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  b74463:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  b74469:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  b7446f:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  b74475:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  b7447b:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  b74481:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  b74487:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  b7448c:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  b74491:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  b74497:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  b7449d:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  b744a3:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  b744a9:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  b744af:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  b744b5:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  b744b9:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  b744bf:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  b744c5:	c5 fc 29 94 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm2
  b744cc:	00 00 
  b744ce:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  b744d4:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  b744db:	00 00 
  b744dd:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  b744e3:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  b744e8:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  b744ee:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  b744f3:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  b744f9:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  b744ff:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  b74505:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  b7450b:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  b74511:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  b74518:	00 00 
  b7451a:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  b74520:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b74526:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  b7452c:	c5 fc 28 4c 24 20    	vmovaps ymm1,YMMWORD PTR [rsp+0x20]
  b74532:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  b74537:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  b7453c:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  b74541:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  b74547:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  b7454d:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  b74552:	c5 7c 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm9
  b74558:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  b7455e:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  b74562:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  b74568:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  b7456e:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  b74574:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  b7457a:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  b74580:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  b74586:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b7458c:	c4 62 7d 18 3d 53 b4 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff52b453]        # 9f9e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30b8>
  b74593:	52 ff 
  b74595:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  b7459b:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  b745a1:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  b745a6:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  b745aa:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  b745b0:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b745b6:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  b745ba:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  b745c0:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  b745c5:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  b745cb:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  b745d1:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  b745d7:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  b745dd:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  b745e3:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  b745e7:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  b745ec:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  b745f0:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  b745f5:	c4 e2 7d 18 3d 5e b2 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff52b25e]        # 9f85c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f2c>
  b745fc:	52 ff 
  b745fe:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  b74604:	c5 c4 59 94 24 e0 00 	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0xe0]
  b7460b:	00 00 
  b7460d:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  b74614:	00 00 
  b74616:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  b7461c:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  b74622:	c5 7c 28 94 24 c0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xc0]
  b74629:	00 00 
  b7462b:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  b74631:	c5 c4 59 64 24 40    	vmulps ymm4,ymm7,YMMWORD PTR [rsp+0x40]
  b74637:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  b7463d:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  b74643:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  b74649:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  b7464f:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  b74655:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  b7465b:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  b74661:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  b74665:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  b7466b:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp+0x20]
  b74672:	01 
  b74673:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  b74679:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  b7467d:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  b74683:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  b74689:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  b7468d:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  b74693:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  b74699:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  b7469e:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  b746a3:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  b746a9:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  b746af:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  b746b5:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  b746bb:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  b746c1:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  b746c7:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  b746cb:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  b746d1:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b746d7:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  b746db:	c5 7c 28 0d 3d b7 52 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff52b73d]        # 9fe20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x34f0>
  b746e2:	ff 
  b746e3:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b746e9:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  b746ef:	62 e1 7c 28 28 1d 87 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff52d087]        # a1780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4e50>
  b746f6:	d0 52 ff 
  b746f9:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  b746ff:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  b74703:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  b74709:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  b7470f:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  b74715:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  b7471b:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  b74721:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  b74725:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  b7472b:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  b74731:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b74736:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  b7473c:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  b74742:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  b74748:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  b7474e:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  b74754:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  b7475a:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  b74760:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  b74766:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  b7476c:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  b74772:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  b74778:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  b7477e:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  b74784:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  b7478a:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b74790:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  b74796:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  b7479c:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  b747a2:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  b747a8:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  b747ae:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  b747b4:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  b747ba:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  b747c0:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  b747c5:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  b747ca:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b747cf:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  b747d6:	00 
  b747d7:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  b747de:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  b747e5:	00 
  b747e6:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b747ed:	00 
  b747ee:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  b747f5:	00 
  b747f6:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  b747fd:	00 
  b747fe:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  b74805:	00 
  b74806:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  b7480d:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  b74814:	00 
  b74815:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b7481c:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  b74823:	00 
  b74824:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b7482b:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  b74832:	00 
  b74833:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  b7483a:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  b74841:	00 
  b74842:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  b74849:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  b74850:	00 
  b74851:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  b74858:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  b7485f:	00 
  b74860:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  b74867:	00 
  b74868:	48 89 ec             	mov    rsp,rbp
  b7486b:	5d                   	pop    rbp
  b7486c:	c5 f8 77             	vzeroupper
  b7486f:	c3                   	ret
  b74870:	cc                   	int3
  b74871:	cc                   	int3
  b74872:	cc                   	int3
  b74873:	cc                   	int3
  b74874:	cc                   	int3
  b74875:	cc                   	int3
  b74876:	cc                   	int3
  b74877:	cc                   	int3
  b74878:	cc                   	int3
  b74879:	cc                   	int3
  b7487a:	cc                   	int3
  b7487b:	cc                   	int3
  b7487c:	cc                   	int3
  b7487d:	cc                   	int3
  b7487e:	cc                   	int3
  b7487f:	cc                   	int3
