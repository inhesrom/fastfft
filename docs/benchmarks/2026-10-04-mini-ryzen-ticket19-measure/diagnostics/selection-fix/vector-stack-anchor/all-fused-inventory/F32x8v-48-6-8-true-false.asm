
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b12c00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b12c00:	c5 fc 10 87 80 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0x80]
  b12c07:	00 
  b12c08:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  b12c0f:	00 
  b12c10:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b12c15:	c4 e3 fd 01 ea d8    	vpermpd ymm5,ymm2,0xd8
  b12c1b:	c5 fc 10 9f 00 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x100]
  b12c22:	00 
  b12c23:	c5 fc 10 a7 20 01 00 	vmovups ymm4,YMMWORD PTR [rdi+0x120]
  b12c2a:	00 
  b12c2b:	c5 e4 c6 d4 dd       	vshufps ymm2,ymm3,ymm4,0xdd
  b12c30:	c4 e3 fd 01 fa d8    	vpermpd ymm7,ymm2,0xd8
  b12c36:	c5 d4 5c d7          	vsubps ymm2,ymm5,ymm7
  b12c3a:	c4 e2 7d 18 35 91 26 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff562691]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b12c41:	56 ff 
  b12c43:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  b12c47:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b12c4c:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  b12c52:	c5 e4 c6 c4 88       	vshufps ymm0,ymm3,ymm4,0x88
  b12c57:	c4 63 fd 01 c8 d8    	vpermpd ymm9,ymm0,0xd8
  b12c5d:	c4 c1 3c 58 c1       	vaddps ymm0,ymm8,ymm9
  b12c62:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  b12c66:	c5 7c 10 5f 20       	vmovups ymm11,YMMWORD PTR [rdi+0x20]
  b12c6b:	c5 7c 10 67 40       	vmovups ymm12,YMMWORD PTR [rdi+0x40]
  b12c70:	c5 7c 10 6f 60       	vmovups ymm13,YMMWORD PTR [rdi+0x60]
  b12c75:	c4 c1 2c c6 cb 88    	vshufps ymm1,ymm10,ymm11,0x88
  b12c7b:	c4 e2 7d 18 25 dc 27 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5627dc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b12c82:	56 ff 
  b12c84:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  b12c8a:	c5 7c 28 f4          	vmovaps ymm14,ymm4
  b12c8e:	c4 62 7d ac f3       	vfnmadd213ps ymm14,ymm0,ymm3
  b12c93:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  b12c97:	c5 7c 10 bf 40 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x140]
  b12c9e:	00 
  b12c9f:	62 e1 7c 28 10 47 0b 	vmovups ymm16,YMMWORD PTR [rdi+0x160]
  b12ca6:	62 a1 04 28 c6 c8 dd 	vshufps ymm17,ymm15,ymm16,0xdd
  b12cad:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  b12cb4:	62 c1 1c 28 c6 d5 dd 	vshufps ymm18,ymm12,ymm13,0xdd
  b12cbb:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b12cc2:	62 31 04 28 c6 f8 88 	vshufps ymm15,ymm15,ymm16,0x88
  b12cc9:	62 a1 74 20 5c c2    	vsubps ymm16,ymm17,ymm18
  b12ccf:	62 e1 7c 20 59 c6    	vmulps ymm16,ymm16,ymm6
  b12cd5:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  b12cdb:	c4 41 1c c6 e5 88    	vshufps ymm12,ymm12,ymm13,0x88
  b12ce1:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b12ce7:	c4 41 04 58 ec       	vaddps ymm13,ymm15,ymm12
  b12cec:	c5 d4 58 ff          	vaddps ymm7,ymm5,ymm7
  b12cf0:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b12cf7:	00 
  b12cf8:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  b12cfe:	c5 7c 10 9f e0 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0xe0]
  b12d05:	00 
  b12d06:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  b12d0b:	c4 41 54 c6 cb 88    	vshufps ymm9,ymm5,ymm11,0x88
  b12d11:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b12d17:	62 a1 74 20 58 ca    	vaddps ymm17,ymm17,ymm18
  b12d1d:	62 e1 7c 28 28 d4    	vmovaps ymm18,ymm4
  b12d23:	62 c2 15 28 ac d1    	vfnmadd213ps ymm18,ymm13,ymm9
  b12d29:	c4 41 54 c6 db dd    	vshufps ymm11,ymm5,ymm11,0xdd
  b12d2f:	62 a1 7c 20 58 da    	vaddps ymm19,ymm16,ymm18
  b12d35:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  b12d3a:	62 b1 74 28 5c eb    	vsubps ymm5,ymm1,ymm19
  b12d40:	c4 43 fd 01 fa d8    	vpermpd ymm15,ymm10,0xd8
  b12d46:	c5 3c 59 c6          	vmulps ymm8,ymm8,ymm6
  b12d4a:	c5 9c 59 f6          	vmulps ymm6,ymm12,ymm6
  b12d4e:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  b12d52:	c4 42 45 ac d7       	vfnmadd213ps ymm10,ymm7,ymm15
  b12d57:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  b12d5b:	c4 41 2c 5c f0       	vsubps ymm14,ymm10,ymm8
  b12d60:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b12d66:	62 d2 75 20 ac e3    	vfnmadd213ps ymm4,ymm17,ymm11
  b12d6c:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  b12d72:	62 e1 5c 28 5c d6    	vsubps ymm18,ymm4,ymm6
  b12d78:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  b12d7d:	62 a1 0c 28 5c e2    	vsubps ymm20,ymm14,ymm18
  b12d83:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b12d87:	62 a1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm16
  b12d8d:	c5 e4 58 c0          	vaddps ymm0,ymm3,ymm0
  b12d91:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  b12d95:	c4 c1 34 58 f5       	vaddps ymm6,ymm9,ymm13
  b12d9a:	c5 7c 5c d6          	vsubps ymm10,ymm0,ymm6
  b12d9e:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  b12da2:	62 31 24 28 58 c9    	vaddps ymm9,ymm11,ymm17
  b12da8:	c4 41 44 5c d9       	vsubps ymm11,ymm7,ymm9
  b12dad:	62 31 74 28 58 e3    	vaddps ymm12,ymm1,ymm19
  b12db3:	62 31 0c 28 58 ea    	vaddps ymm13,ymm14,ymm18
  b12db9:	62 31 6c 28 5c f0    	vsubps ymm14,ymm2,ymm16
  b12dbf:	c5 bc 5c cc          	vsubps ymm1,ymm8,ymm4
  b12dc3:	c5 7c 58 c6          	vaddps ymm8,ymm0,ymm6
  b12dc7:	c5 b4 58 c7          	vaddps ymm0,ymm9,ymm7
  b12dcb:	c4 e3 7d 18 d3 01    	vinsertf128 ymm2,ymm0,xmm3,0x1
  b12dd1:	c4 e3 7d 06 fb 31    	vperm2f128 ymm7,ymm0,ymm3,0x31
  b12dd7:	62 b3 75 28 18 e4 01 	vinsertf32x4 ymm4,ymm1,xmm20,0x1
  b12dde:	62 33 f5 28 23 fc 03 	vshuff64x2 ymm15,ymm1,ymm20,0x3
  b12de5:	c5 78 29 e9          	vmovaps xmm1,xmm13
  b12de9:	c5 ed 14 d9          	vunpcklpd ymm3,ymm2,ymm1
  b12ded:	c5 78 29 de          	vmovaps xmm6,xmm11
  b12df1:	c5 5d 14 ce          	vunpcklpd ymm9,ymm4,ymm6
  b12df5:	c4 c1 64 c6 c1 88    	vshufps ymm0,ymm3,ymm9,0x88
  b12dfb:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  b12e01:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b12e06:	c5 ed 15 c9          	vunpckhpd ymm1,ymm2,ymm1
  b12e0a:	c5 dd 15 d6          	vunpckhpd ymm2,ymm4,ymm6
  b12e0e:	c5 f4 c6 e2 88       	vshufps ymm4,ymm1,ymm2,0x88
  b12e13:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  b12e18:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  b12e1d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b12e22:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  b12e28:	c5 c5 14 e2          	vunpcklpd ymm4,ymm7,ymm2
  b12e2c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b12e32:	c4 41 05 14 eb       	vunpcklpd ymm13,ymm15,ymm11
  b12e37:	c4 41 5c c6 cd 88    	vshufps ymm9,ymm4,ymm13,0x88
  b12e3d:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b12e43:	c4 c1 5c c6 e5 dd    	vshufps ymm4,ymm4,ymm13,0xdd
  b12e49:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b12e4e:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  b12e52:	c4 41 05 15 db       	vunpckhpd ymm11,ymm15,ymm11
  b12e57:	c4 c1 6c c6 fb 88    	vshufps ymm7,ymm2,ymm11,0x88
  b12e5d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b12e62:	c4 c1 6c c6 d3 dd    	vshufps ymm2,ymm2,ymm11,0xdd
  b12e68:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b12e6d:	62 33 3d 28 18 ed 01 	vinsertf32x4 ymm13,ymm8,xmm21,0x1
  b12e74:	62 a3 bd 28 23 c5 03 	vshuff64x2 ymm16,ymm8,ymm21,0x3
  b12e7b:	c4 63 0d 18 c5 01    	vinsertf128 ymm8,ymm14,xmm5,0x1
  b12e81:	c4 63 0d 06 f5 31    	vperm2f128 ymm14,ymm14,ymm5,0x31
  b12e87:	c4 41 78 28 fc       	vmovaps xmm15,xmm12
  b12e8c:	c4 41 15 14 df       	vunpcklpd ymm11,ymm13,ymm15
  b12e91:	62 c1 7c 08 28 ca    	vmovaps xmm17,xmm10
  b12e97:	62 a1 bd 28 14 d1    	vunpcklpd ymm18,ymm8,ymm17
  b12e9d:	62 b1 24 28 c6 ea 88 	vshufps ymm5,ymm11,ymm18,0x88
  b12ea4:	62 31 24 28 c6 da dd 	vshufps ymm11,ymm11,ymm18,0xdd
  b12eab:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b12eb1:	c4 41 15 15 ef       	vunpckhpd ymm13,ymm13,ymm15
  b12eb6:	62 31 bd 28 15 c1    	vunpckhpd ymm8,ymm8,ymm17
  b12ebc:	c4 41 14 c6 f8 88    	vshufps ymm15,ymm13,ymm8,0x88
  b12ec2:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b12ec8:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  b12ece:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b12ed4:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b12eda:	62 51 fd 20 14 ec    	vunpcklpd ymm13,ymm16,ymm12
  b12ee0:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b12ee6:	62 c1 8d 28 14 ca    	vunpcklpd ymm17,ymm14,ymm10
  b12eec:	62 a1 14 28 c6 d1 88 	vshufps ymm18,ymm13,ymm17,0x88
  b12ef3:	62 a1 6c 20 c6 d2 d8 	vshufps ymm18,ymm18,ymm18,0xd8
  b12efa:	62 31 14 28 c6 e9 dd 	vshufps ymm13,ymm13,ymm17,0xdd
  b12f01:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b12f07:	62 51 fd 20 15 e4    	vunpckhpd ymm12,ymm16,ymm12
  b12f0d:	c4 41 0d 15 f2       	vunpckhpd ymm14,ymm14,ymm10
  b12f12:	c4 41 1c c6 d6 dd    	vshufps ymm10,ymm12,ymm14,0xdd
  b12f18:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b12f1e:	c4 41 1c c6 e6 88    	vshufps ymm12,ymm12,ymm14,0x88
  b12f24:	62 c1 1c 28 c6 c4 d8 	vshufps ymm16,ymm12,ymm12,0xd8
  b12f2b:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  b12f32:	00 
  b12f33:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  b12f3a:	c4 41 34 59 e6       	vmulps ymm12,ymm9,ymm14
  b12f3f:	62 32 6d 20 bc e1    	vfnmadd231ps ymm12,ymm18,ymm17
  b12f45:	62 51 6c 20 59 f6    	vmulps ymm14,ymm18,ymm14
  b12f4b:	62 e1 7c 28 10 52 04 	vmovups ymm18,YMMWORD PTR [rdx+0x80]
  b12f52:	62 32 35 28 b8 f1    	vfmadd231ps ymm14,ymm9,ymm17
  b12f58:	62 e1 7c 28 10 4a 05 	vmovups ymm17,YMMWORD PTR [rdx+0xa0]
  b12f5f:	62 31 4c 28 59 ca    	vmulps ymm9,ymm6,ymm18
  b12f65:	62 32 05 28 bc c9    	vfnmadd231ps ymm9,ymm15,ymm17
  b12f6b:	62 31 04 28 59 fa    	vmulps ymm15,ymm15,ymm18
  b12f71:	62 e1 7c 28 10 52 0c 	vmovups ymm18,YMMWORD PTR [rdx+0x180]
  b12f78:	62 32 4d 28 b8 f9    	vfmadd231ps ymm15,ymm6,ymm17
  b12f7e:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  b12f85:	00 
  b12f86:	62 a1 44 28 59 ca    	vmulps ymm17,ymm7,ymm18
  b12f8c:	62 e2 7d 20 bc ce    	vfnmadd231ps ymm17,ymm16,ymm6
  b12f92:	62 a1 7c 20 59 c2    	vmulps ymm16,ymm16,ymm18
  b12f98:	62 e1 7c 28 10 52 02 	vmovups ymm18,YMMWORD PTR [rdx+0x40]
  b12f9f:	62 e2 45 28 b8 c6    	vfmadd231ps ymm16,ymm7,ymm6
  b12fa5:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b12faa:	62 b1 64 28 59 fa    	vmulps ymm7,ymm3,ymm18
  b12fb0:	c4 e2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm6
  b12fb5:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  b12fbb:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  b12fc2:	c4 62 65 b8 de       	vfmadd231ps ymm11,ymm3,ymm6
  b12fc7:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  b12fce:	00 
  b12fcf:	62 b1 5c 28 59 f2    	vmulps ymm6,ymm4,ymm18
  b12fd5:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  b12fda:	62 31 14 28 59 ea    	vmulps ymm13,ymm13,ymm18
  b12fe0:	62 e1 7c 28 10 52 06 	vmovups ymm18,YMMWORD PTR [rdx+0xc0]
  b12fe7:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  b12fec:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  b12ff3:	00 
  b12ff4:	62 b1 74 28 59 e2    	vmulps ymm4,ymm1,ymm18
  b12ffa:	c4 e2 3d bc e3       	vfnmadd231ps ymm4,ymm8,ymm3
  b12fff:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  b13005:	62 e1 7c 28 10 52 0e 	vmovups ymm18,YMMWORD PTR [rdx+0x1c0]
  b1300c:	c4 62 75 b8 c3       	vfmadd231ps ymm8,ymm1,ymm3
  b13011:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  b13018:	00 
  b13019:	62 b1 6c 28 59 da    	vmulps ymm3,ymm2,ymm18
  b1301f:	c4 e2 2d bc d9       	vfnmadd231ps ymm3,ymm10,ymm1
  b13024:	62 31 2c 28 59 d2    	vmulps ymm10,ymm10,ymm18
  b1302a:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1302f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b13034:	c4 62 6d b8 d1       	vfmadd231ps ymm10,ymm2,ymm1
  b13039:	c5 9c 58 c8          	vaddps ymm1,ymm12,ymm0
  b1303d:	62 b1 34 28 58 d1    	vaddps ymm2,ymm9,ymm17
  b13043:	c4 c1 7c 5c c4       	vsubps ymm0,ymm0,ymm12
  b13048:	62 31 04 28 58 e0    	vaddps ymm12,ymm15,ymm16
  b1304e:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  b13054:	62 e1 44 28 58 c6    	vaddps ymm16,ymm7,ymm6
  b1305a:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  b1305e:	c4 c1 24 58 fd       	vaddps ymm7,ymm11,ymm13
  b13063:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  b13068:	c4 41 3c 58 ea       	vaddps ymm13,ymm8,ymm10
  b1306d:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  b13072:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b13076:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b1307a:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  b1307e:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  b13083:	c5 74 58 f2          	vaddps ymm14,ymm1,ymm2
  b13087:	62 51 74 20 5c c9    	vsubps ymm9,ymm17,ymm9
  b1308d:	62 c1 4c 28 58 cb    	vaddps ymm17,ymm6,ymm11
  b13093:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  b13097:	c5 3c 5c db          	vsubps ymm11,ymm8,ymm3
  b1309b:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  b1309f:	c4 62 7d 18 05 f4 22 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5622f4]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b130a6:	56 ff 
  b130a8:	62 c1 74 20 59 c8    	vmulps ymm17,ymm17,ymm8
  b130ae:	c4 41 24 59 d8       	vmulps ymm11,ymm11,ymm8
  b130b3:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  b130b7:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  b130bb:	62 51 7c 20 58 c2    	vaddps ymm8,ymm16,ymm10
  b130c1:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  b130c5:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b130c9:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  b130ce:	c5 1c 58 ec          	vaddps ymm13,ymm12,ymm4
  b130d2:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b130d7:	c5 04 58 e0          	vaddps ymm12,ymm15,ymm0
  b130db:	62 31 2c 28 5c d0    	vsubps ymm10,ymm10,ymm16
  b130e1:	62 c1 74 20 58 c3    	vaddps ymm16,ymm17,ymm11
  b130e7:	c4 c1 7c 5c c7       	vsubps ymm0,ymm0,ymm15
  b130ec:	c5 4c 5c fb          	vsubps ymm15,ymm6,ymm3
  b130f0:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b130f4:	c5 b4 58 f5          	vaddps ymm6,ymm9,ymm5
  b130f8:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  b130fd:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  b13103:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  b13109:	62 c1 4c 28 58 cf    	vaddps ymm17,ymm6,ymm15
  b1310f:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  b13115:	62 e1 74 28 58 c7    	vaddps ymm16,ymm1,ymm7
  b1311b:	c4 c1 4c 5c f7       	vsubps ymm6,ymm6,ymm15
  b13120:	c5 2c 58 fc          	vaddps ymm15,ymm10,ymm4
  b13124:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b13128:	c5 fc 58 fb          	vaddps ymm7,ymm0,ymm3
  b1312c:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  b13131:	c5 24 58 d5          	vaddps ymm10,ymm11,ymm5
  b13135:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  b13139:	c4 c1 0c 5c d8       	vsubps ymm3,ymm14,ymm8
  b1313e:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  b13143:	c5 14 5c da          	vsubps ymm11,ymm13,ymm2
  b13147:	c5 94 58 d2          	vaddps ymm2,ymm13,ymm2
  b1314b:	c4 41 0c 58 c0       	vaddps ymm8,ymm14,ymm8
  b13150:	c5 7c 28 2d 88 40 56 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff564088]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b13157:	ff 
  b13158:	c4 c3 7d 19 d6 01    	vextractf128 xmm14,ymm2,0x1
  b1315e:	62 d2 15 28 7f d0    	vpermt2ps ymm2,ymm13,ymm8
  b13164:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  b13168:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  b1316e:	c5 88 14 d2          	vunpcklps xmm2,xmm14,xmm2
  b13172:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  b13177:	62 e3 7d 28 19 ca 01 	vextractf32x4 xmm2,ymm17,0x1
  b1317e:	62 c2 15 28 7f c9    	vpermt2ps ymm17,ymm13,ymm9
  b13184:	62 e1 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x30],ymm17
  b1318b:	00 00 00 
  b1318e:	c4 43 7d 19 c8 01    	vextractf128 xmm8,ymm9,0x1
  b13194:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  b13199:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  b1319e:	c4 63 7d 19 fa 01    	vextractf128 xmm2,ymm15,0x1
  b131a4:	62 32 15 28 7f f8    	vpermt2ps ymm15,ymm13,ymm16
  b131aa:	c5 7c 11 7e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm15
  b131af:	62 c3 7d 28 19 c0 01 	vextractf32x4 xmm8,ymm16,0x1
  b131b6:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  b131bb:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  b131c2:	00 
  b131c3:	c4 63 7d 19 d2 01    	vextractf128 xmm2,ymm10,0x1
  b131c9:	62 72 15 28 7f d7    	vpermt2ps ymm10,ymm13,ymm7
  b131cf:	c5 7c 11 96 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm10
  b131d6:	00 
  b131d7:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b131dd:	c5 e8 14 d7          	vunpcklps xmm2,xmm2,xmm7
  b131e1:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  b131e8:	00 
  b131e9:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  b131ef:	62 72 15 28 7f db    	vpermt2ps ymm11,ymm13,ymm3
  b131f5:	c5 7c 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm11
  b131fc:	00 
  b131fd:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b13203:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  b13207:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  b1320e:	00 
  b1320f:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  b13215:	62 d2 15 28 7f f4    	vpermt2ps ymm6,ymm13,ymm12
  b1321b:	c5 fc 11 b6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm6
  b13222:	00 
  b13223:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  b13229:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  b1322d:	c5 f8 11 96 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm2
  b13234:	00 
  b13235:	c4 e3 7d 19 e2 01    	vextractf128 xmm2,ymm4,0x1
  b1323b:	62 f2 15 28 7f e1    	vpermt2ps ymm4,ymm13,ymm1
  b13241:	c5 fc 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm4
  b13248:	00 
  b13249:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1324f:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  b13253:	c5 f8 11 8e 40 01 00 	vmovups XMMWORD PTR [rsi+0x140],xmm1
  b1325a:	00 
  b1325b:	62 72 55 28 77 e8    	vpermi2ps ymm13,ymm5,ymm0
  b13261:	c5 7c 11 ae 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm13
  b13268:	00 
  b13269:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1326f:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  b13275:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  b13279:	c5 f8 11 86 70 01 00 	vmovups XMMWORD PTR [rsi+0x170],xmm0
  b13280:	00 
  b13281:	c5 f8 77             	vzeroupper
  b13284:	c3                   	ret
