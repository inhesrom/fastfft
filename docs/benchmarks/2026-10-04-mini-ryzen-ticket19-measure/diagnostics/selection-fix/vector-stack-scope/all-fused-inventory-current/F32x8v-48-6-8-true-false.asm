
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b149c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b149c0:	c5 fc 10 87 80 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0x80]
  b149c7:	00 
  b149c8:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  b149cf:	00 
  b149d0:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b149d5:	c4 e3 fd 01 ea d8    	vpermpd ymm5,ymm2,0xd8
  b149db:	c5 fc 10 9f 00 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x100]
  b149e2:	00 
  b149e3:	c5 fc 10 a7 20 01 00 	vmovups ymm4,YMMWORD PTR [rdi+0x120]
  b149ea:	00 
  b149eb:	c5 e4 c6 d4 dd       	vshufps ymm2,ymm3,ymm4,0xdd
  b149f0:	c4 e3 fd 01 fa d8    	vpermpd ymm7,ymm2,0xd8
  b149f6:	c5 d4 5c d7          	vsubps ymm2,ymm5,ymm7
  b149fa:	c4 e2 7d 18 35 d1 08 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5608d1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b14a01:	56 ff 
  b14a03:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  b14a07:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b14a0c:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  b14a12:	c5 e4 c6 c4 88       	vshufps ymm0,ymm3,ymm4,0x88
  b14a17:	c4 63 fd 01 c8 d8    	vpermpd ymm9,ymm0,0xd8
  b14a1d:	c4 c1 3c 58 c1       	vaddps ymm0,ymm8,ymm9
  b14a22:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  b14a26:	c5 7c 10 5f 20       	vmovups ymm11,YMMWORD PTR [rdi+0x20]
  b14a2b:	c5 7c 10 67 40       	vmovups ymm12,YMMWORD PTR [rdi+0x40]
  b14a30:	c5 7c 10 6f 60       	vmovups ymm13,YMMWORD PTR [rdi+0x60]
  b14a35:	c4 c1 2c c6 cb 88    	vshufps ymm1,ymm10,ymm11,0x88
  b14a3b:	c4 e2 7d 18 25 1c 0a 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff560a1c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b14a42:	56 ff 
  b14a44:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  b14a4a:	c5 7c 28 f4          	vmovaps ymm14,ymm4
  b14a4e:	c4 62 7d ac f3       	vfnmadd213ps ymm14,ymm0,ymm3
  b14a53:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  b14a57:	c5 7c 10 bf 40 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x140]
  b14a5e:	00 
  b14a5f:	62 e1 7c 28 10 47 0b 	vmovups ymm16,YMMWORD PTR [rdi+0x160]
  b14a66:	62 a1 04 28 c6 c8 dd 	vshufps ymm17,ymm15,ymm16,0xdd
  b14a6d:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  b14a74:	62 c1 1c 28 c6 d5 dd 	vshufps ymm18,ymm12,ymm13,0xdd
  b14a7b:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b14a82:	62 31 04 28 c6 f8 88 	vshufps ymm15,ymm15,ymm16,0x88
  b14a89:	62 a1 74 20 5c c2    	vsubps ymm16,ymm17,ymm18
  b14a8f:	62 e1 7c 20 59 c6    	vmulps ymm16,ymm16,ymm6
  b14a95:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  b14a9b:	c4 41 1c c6 e5 88    	vshufps ymm12,ymm12,ymm13,0x88
  b14aa1:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b14aa7:	c4 41 04 58 ec       	vaddps ymm13,ymm15,ymm12
  b14aac:	c5 d4 58 ff          	vaddps ymm7,ymm5,ymm7
  b14ab0:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b14ab7:	00 
  b14ab8:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  b14abe:	c5 7c 10 9f e0 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0xe0]
  b14ac5:	00 
  b14ac6:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  b14acb:	c4 41 54 c6 cb 88    	vshufps ymm9,ymm5,ymm11,0x88
  b14ad1:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b14ad7:	62 a1 74 20 58 ca    	vaddps ymm17,ymm17,ymm18
  b14add:	62 e1 7c 28 28 d4    	vmovaps ymm18,ymm4
  b14ae3:	62 c2 15 28 ac d1    	vfnmadd213ps ymm18,ymm13,ymm9
  b14ae9:	c4 41 54 c6 db dd    	vshufps ymm11,ymm5,ymm11,0xdd
  b14aef:	62 a1 7c 20 58 da    	vaddps ymm19,ymm16,ymm18
  b14af5:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  b14afa:	62 b1 74 28 5c eb    	vsubps ymm5,ymm1,ymm19
  b14b00:	c4 43 fd 01 fa d8    	vpermpd ymm15,ymm10,0xd8
  b14b06:	c5 3c 59 c6          	vmulps ymm8,ymm8,ymm6
  b14b0a:	c5 9c 59 f6          	vmulps ymm6,ymm12,ymm6
  b14b0e:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  b14b12:	c4 42 45 ac d7       	vfnmadd213ps ymm10,ymm7,ymm15
  b14b17:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  b14b1b:	c4 41 2c 5c f0       	vsubps ymm14,ymm10,ymm8
  b14b20:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b14b26:	62 d2 75 20 ac e3    	vfnmadd213ps ymm4,ymm17,ymm11
  b14b2c:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  b14b32:	62 e1 5c 28 5c d6    	vsubps ymm18,ymm4,ymm6
  b14b38:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  b14b3d:	62 a1 0c 28 5c e2    	vsubps ymm20,ymm14,ymm18
  b14b43:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b14b47:	62 a1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm16
  b14b4d:	c5 e4 58 c0          	vaddps ymm0,ymm3,ymm0
  b14b51:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  b14b55:	c4 c1 34 58 f5       	vaddps ymm6,ymm9,ymm13
  b14b5a:	c5 7c 5c d6          	vsubps ymm10,ymm0,ymm6
  b14b5e:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  b14b62:	62 31 24 28 58 c9    	vaddps ymm9,ymm11,ymm17
  b14b68:	c4 41 44 5c d9       	vsubps ymm11,ymm7,ymm9
  b14b6d:	62 31 74 28 58 e3    	vaddps ymm12,ymm1,ymm19
  b14b73:	62 31 0c 28 58 ea    	vaddps ymm13,ymm14,ymm18
  b14b79:	62 31 6c 28 5c f0    	vsubps ymm14,ymm2,ymm16
  b14b7f:	c5 bc 5c cc          	vsubps ymm1,ymm8,ymm4
  b14b83:	c5 7c 58 c6          	vaddps ymm8,ymm0,ymm6
  b14b87:	c5 b4 58 c7          	vaddps ymm0,ymm9,ymm7
  b14b8b:	c4 e3 7d 18 d3 01    	vinsertf128 ymm2,ymm0,xmm3,0x1
  b14b91:	c4 e3 7d 06 fb 31    	vperm2f128 ymm7,ymm0,ymm3,0x31
  b14b97:	62 b3 75 28 18 e4 01 	vinsertf32x4 ymm4,ymm1,xmm20,0x1
  b14b9e:	62 33 f5 28 23 fc 03 	vshuff64x2 ymm15,ymm1,ymm20,0x3
  b14ba5:	c5 78 29 e9          	vmovaps xmm1,xmm13
  b14ba9:	c5 ed 14 d9          	vunpcklpd ymm3,ymm2,ymm1
  b14bad:	c5 78 29 de          	vmovaps xmm6,xmm11
  b14bb1:	c5 5d 14 ce          	vunpcklpd ymm9,ymm4,ymm6
  b14bb5:	c4 c1 64 c6 c1 88    	vshufps ymm0,ymm3,ymm9,0x88
  b14bbb:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  b14bc1:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b14bc6:	c5 ed 15 c9          	vunpckhpd ymm1,ymm2,ymm1
  b14bca:	c5 dd 15 d6          	vunpckhpd ymm2,ymm4,ymm6
  b14bce:	c5 f4 c6 e2 88       	vshufps ymm4,ymm1,ymm2,0x88
  b14bd3:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  b14bd8:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  b14bdd:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b14be2:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  b14be8:	c5 c5 14 e2          	vunpcklpd ymm4,ymm7,ymm2
  b14bec:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b14bf2:	c4 41 05 14 eb       	vunpcklpd ymm13,ymm15,ymm11
  b14bf7:	c4 41 5c c6 cd 88    	vshufps ymm9,ymm4,ymm13,0x88
  b14bfd:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b14c03:	c4 c1 5c c6 e5 dd    	vshufps ymm4,ymm4,ymm13,0xdd
  b14c09:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b14c0e:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  b14c12:	c4 41 05 15 db       	vunpckhpd ymm11,ymm15,ymm11
  b14c17:	c4 c1 6c c6 fb 88    	vshufps ymm7,ymm2,ymm11,0x88
  b14c1d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b14c22:	c4 c1 6c c6 d3 dd    	vshufps ymm2,ymm2,ymm11,0xdd
  b14c28:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b14c2d:	62 33 3d 28 18 ed 01 	vinsertf32x4 ymm13,ymm8,xmm21,0x1
  b14c34:	62 a3 bd 28 23 c5 03 	vshuff64x2 ymm16,ymm8,ymm21,0x3
  b14c3b:	c4 63 0d 18 c5 01    	vinsertf128 ymm8,ymm14,xmm5,0x1
  b14c41:	c4 63 0d 06 f5 31    	vperm2f128 ymm14,ymm14,ymm5,0x31
  b14c47:	c4 41 78 28 fc       	vmovaps xmm15,xmm12
  b14c4c:	c4 41 15 14 df       	vunpcklpd ymm11,ymm13,ymm15
  b14c51:	62 c1 7c 08 28 ca    	vmovaps xmm17,xmm10
  b14c57:	62 a1 bd 28 14 d1    	vunpcklpd ymm18,ymm8,ymm17
  b14c5d:	62 b1 24 28 c6 ea 88 	vshufps ymm5,ymm11,ymm18,0x88
  b14c64:	62 31 24 28 c6 da dd 	vshufps ymm11,ymm11,ymm18,0xdd
  b14c6b:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b14c71:	c4 41 15 15 ef       	vunpckhpd ymm13,ymm13,ymm15
  b14c76:	62 31 bd 28 15 c1    	vunpckhpd ymm8,ymm8,ymm17
  b14c7c:	c4 41 14 c6 f8 88    	vshufps ymm15,ymm13,ymm8,0x88
  b14c82:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b14c88:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  b14c8e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b14c94:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b14c9a:	62 51 fd 20 14 ec    	vunpcklpd ymm13,ymm16,ymm12
  b14ca0:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b14ca6:	62 c1 8d 28 14 ca    	vunpcklpd ymm17,ymm14,ymm10
  b14cac:	62 a1 14 28 c6 d1 88 	vshufps ymm18,ymm13,ymm17,0x88
  b14cb3:	62 a1 6c 20 c6 d2 d8 	vshufps ymm18,ymm18,ymm18,0xd8
  b14cba:	62 31 14 28 c6 e9 dd 	vshufps ymm13,ymm13,ymm17,0xdd
  b14cc1:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b14cc7:	62 51 fd 20 15 e4    	vunpckhpd ymm12,ymm16,ymm12
  b14ccd:	c4 41 0d 15 f2       	vunpckhpd ymm14,ymm14,ymm10
  b14cd2:	c4 41 1c c6 d6 dd    	vshufps ymm10,ymm12,ymm14,0xdd
  b14cd8:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b14cde:	c4 41 1c c6 e6 88    	vshufps ymm12,ymm12,ymm14,0x88
  b14ce4:	62 c1 1c 28 c6 c4 d8 	vshufps ymm16,ymm12,ymm12,0xd8
  b14ceb:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  b14cf2:	00 
  b14cf3:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  b14cfa:	c4 41 34 59 e6       	vmulps ymm12,ymm9,ymm14
  b14cff:	62 32 6d 20 bc e1    	vfnmadd231ps ymm12,ymm18,ymm17
  b14d05:	62 51 6c 20 59 f6    	vmulps ymm14,ymm18,ymm14
  b14d0b:	62 e1 7c 28 10 52 04 	vmovups ymm18,YMMWORD PTR [rdx+0x80]
  b14d12:	62 32 35 28 b8 f1    	vfmadd231ps ymm14,ymm9,ymm17
  b14d18:	62 e1 7c 28 10 4a 05 	vmovups ymm17,YMMWORD PTR [rdx+0xa0]
  b14d1f:	62 31 4c 28 59 ca    	vmulps ymm9,ymm6,ymm18
  b14d25:	62 32 05 28 bc c9    	vfnmadd231ps ymm9,ymm15,ymm17
  b14d2b:	62 31 04 28 59 fa    	vmulps ymm15,ymm15,ymm18
  b14d31:	62 e1 7c 28 10 52 0c 	vmovups ymm18,YMMWORD PTR [rdx+0x180]
  b14d38:	62 32 4d 28 b8 f9    	vfmadd231ps ymm15,ymm6,ymm17
  b14d3e:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  b14d45:	00 
  b14d46:	62 a1 44 28 59 ca    	vmulps ymm17,ymm7,ymm18
  b14d4c:	62 e2 7d 20 bc ce    	vfnmadd231ps ymm17,ymm16,ymm6
  b14d52:	62 a1 7c 20 59 c2    	vmulps ymm16,ymm16,ymm18
  b14d58:	62 e1 7c 28 10 52 02 	vmovups ymm18,YMMWORD PTR [rdx+0x40]
  b14d5f:	62 e2 45 28 b8 c6    	vfmadd231ps ymm16,ymm7,ymm6
  b14d65:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b14d6a:	62 b1 64 28 59 fa    	vmulps ymm7,ymm3,ymm18
  b14d70:	c4 e2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm6
  b14d75:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  b14d7b:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  b14d82:	c4 62 65 b8 de       	vfmadd231ps ymm11,ymm3,ymm6
  b14d87:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  b14d8e:	00 
  b14d8f:	62 b1 5c 28 59 f2    	vmulps ymm6,ymm4,ymm18
  b14d95:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  b14d9a:	62 31 14 28 59 ea    	vmulps ymm13,ymm13,ymm18
  b14da0:	62 e1 7c 28 10 52 06 	vmovups ymm18,YMMWORD PTR [rdx+0xc0]
  b14da7:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  b14dac:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  b14db3:	00 
  b14db4:	62 b1 74 28 59 e2    	vmulps ymm4,ymm1,ymm18
  b14dba:	c4 e2 3d bc e3       	vfnmadd231ps ymm4,ymm8,ymm3
  b14dbf:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  b14dc5:	62 e1 7c 28 10 52 0e 	vmovups ymm18,YMMWORD PTR [rdx+0x1c0]
  b14dcc:	c4 62 75 b8 c3       	vfmadd231ps ymm8,ymm1,ymm3
  b14dd1:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  b14dd8:	00 
  b14dd9:	62 b1 6c 28 59 da    	vmulps ymm3,ymm2,ymm18
  b14ddf:	c4 e2 2d bc d9       	vfnmadd231ps ymm3,ymm10,ymm1
  b14de4:	62 31 2c 28 59 d2    	vmulps ymm10,ymm10,ymm18
  b14dea:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b14def:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b14df4:	c4 62 6d b8 d1       	vfmadd231ps ymm10,ymm2,ymm1
  b14df9:	c5 9c 58 c8          	vaddps ymm1,ymm12,ymm0
  b14dfd:	62 b1 34 28 58 d1    	vaddps ymm2,ymm9,ymm17
  b14e03:	c4 c1 7c 5c c4       	vsubps ymm0,ymm0,ymm12
  b14e08:	62 31 04 28 58 e0    	vaddps ymm12,ymm15,ymm16
  b14e0e:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  b14e14:	62 e1 44 28 58 c6    	vaddps ymm16,ymm7,ymm6
  b14e1a:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  b14e1e:	c4 c1 24 58 fd       	vaddps ymm7,ymm11,ymm13
  b14e23:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  b14e28:	c4 41 3c 58 ea       	vaddps ymm13,ymm8,ymm10
  b14e2d:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  b14e32:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b14e36:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b14e3a:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  b14e3e:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  b14e43:	c5 74 58 f2          	vaddps ymm14,ymm1,ymm2
  b14e47:	62 51 74 20 5c c9    	vsubps ymm9,ymm17,ymm9
  b14e4d:	62 c1 4c 28 58 cb    	vaddps ymm17,ymm6,ymm11
  b14e53:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  b14e57:	c5 3c 5c db          	vsubps ymm11,ymm8,ymm3
  b14e5b:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  b14e5f:	c4 62 7d 18 05 34 05 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff560534]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b14e66:	56 ff 
  b14e68:	62 c1 74 20 59 c8    	vmulps ymm17,ymm17,ymm8
  b14e6e:	c4 41 24 59 d8       	vmulps ymm11,ymm11,ymm8
  b14e73:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  b14e77:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  b14e7b:	62 51 7c 20 58 c2    	vaddps ymm8,ymm16,ymm10
  b14e81:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  b14e85:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b14e89:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  b14e8e:	c5 1c 58 ec          	vaddps ymm13,ymm12,ymm4
  b14e92:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b14e97:	c5 04 58 e0          	vaddps ymm12,ymm15,ymm0
  b14e9b:	62 31 2c 28 5c d0    	vsubps ymm10,ymm10,ymm16
  b14ea1:	62 c1 74 20 58 c3    	vaddps ymm16,ymm17,ymm11
  b14ea7:	c4 c1 7c 5c c7       	vsubps ymm0,ymm0,ymm15
  b14eac:	c5 4c 5c fb          	vsubps ymm15,ymm6,ymm3
  b14eb0:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b14eb4:	c5 b4 58 f5          	vaddps ymm6,ymm9,ymm5
  b14eb8:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  b14ebd:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  b14ec3:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  b14ec9:	62 c1 4c 28 58 cf    	vaddps ymm17,ymm6,ymm15
  b14ecf:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  b14ed5:	62 e1 74 28 58 c7    	vaddps ymm16,ymm1,ymm7
  b14edb:	c4 c1 4c 5c f7       	vsubps ymm6,ymm6,ymm15
  b14ee0:	c5 2c 58 fc          	vaddps ymm15,ymm10,ymm4
  b14ee4:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b14ee8:	c5 fc 58 fb          	vaddps ymm7,ymm0,ymm3
  b14eec:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  b14ef1:	c5 24 58 d5          	vaddps ymm10,ymm11,ymm5
  b14ef5:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  b14ef9:	c4 c1 0c 5c d8       	vsubps ymm3,ymm14,ymm8
  b14efe:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  b14f03:	c5 14 5c da          	vsubps ymm11,ymm13,ymm2
  b14f07:	c5 94 58 d2          	vaddps ymm2,ymm13,ymm2
  b14f0b:	c4 41 0c 58 c0       	vaddps ymm8,ymm14,ymm8
  b14f10:	c5 7c 28 2d c8 22 56 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff5622c8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b14f17:	ff 
  b14f18:	c4 c3 7d 19 d6 01    	vextractf128 xmm14,ymm2,0x1
  b14f1e:	62 d2 15 28 7f d0    	vpermt2ps ymm2,ymm13,ymm8
  b14f24:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  b14f28:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  b14f2e:	c5 88 14 d2          	vunpcklps xmm2,xmm14,xmm2
  b14f32:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  b14f37:	62 e3 7d 28 19 ca 01 	vextractf32x4 xmm2,ymm17,0x1
  b14f3e:	62 c2 15 28 7f c9    	vpermt2ps ymm17,ymm13,ymm9
  b14f44:	62 e1 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x30],ymm17
  b14f4b:	00 00 00 
  b14f4e:	c4 43 7d 19 c8 01    	vextractf128 xmm8,ymm9,0x1
  b14f54:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  b14f59:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  b14f5e:	c4 63 7d 19 fa 01    	vextractf128 xmm2,ymm15,0x1
  b14f64:	62 32 15 28 7f f8    	vpermt2ps ymm15,ymm13,ymm16
  b14f6a:	c5 7c 11 7e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm15
  b14f6f:	62 c3 7d 28 19 c0 01 	vextractf32x4 xmm8,ymm16,0x1
  b14f76:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  b14f7b:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  b14f82:	00 
  b14f83:	c4 63 7d 19 d2 01    	vextractf128 xmm2,ymm10,0x1
  b14f89:	62 72 15 28 7f d7    	vpermt2ps ymm10,ymm13,ymm7
  b14f8f:	c5 7c 11 96 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm10
  b14f96:	00 
  b14f97:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b14f9d:	c5 e8 14 d7          	vunpcklps xmm2,xmm2,xmm7
  b14fa1:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  b14fa8:	00 
  b14fa9:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  b14faf:	62 72 15 28 7f db    	vpermt2ps ymm11,ymm13,ymm3
  b14fb5:	c5 7c 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm11
  b14fbc:	00 
  b14fbd:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b14fc3:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  b14fc7:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  b14fce:	00 
  b14fcf:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  b14fd5:	62 d2 15 28 7f f4    	vpermt2ps ymm6,ymm13,ymm12
  b14fdb:	c5 fc 11 b6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm6
  b14fe2:	00 
  b14fe3:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  b14fe9:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  b14fed:	c5 f8 11 96 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm2
  b14ff4:	00 
  b14ff5:	c4 e3 7d 19 e2 01    	vextractf128 xmm2,ymm4,0x1
  b14ffb:	62 f2 15 28 7f e1    	vpermt2ps ymm4,ymm13,ymm1
  b15001:	c5 fc 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm4
  b15008:	00 
  b15009:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1500f:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  b15013:	c5 f8 11 8e 40 01 00 	vmovups XMMWORD PTR [rsi+0x140],xmm1
  b1501a:	00 
  b1501b:	62 72 55 28 77 e8    	vpermi2ps ymm13,ymm5,ymm0
  b15021:	c5 7c 11 ae 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm13
  b15028:	00 
  b15029:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1502f:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  b15035:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  b15039:	c5 f8 11 86 70 01 00 	vmovups XMMWORD PTR [rsi+0x170],xmm0
  b15040:	00 
  b15041:	c5 f8 77             	vzeroupper
  b15044:	c3                   	ret
