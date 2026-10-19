
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b15b80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b15b80:	48 c1 e2 07          	shl    rdx,0x7
  b15b84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b15b88:	c4 e2 7d 18 05 43 f7 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff55f743]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b15b8f:	55 ff 
  b15b91:	c4 e2 7d 18 0d c6 f8 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff55f8c6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b15b98:	55 ff 
  b15b9a:	31 d2                	xor    edx,edx
  b15b9c:	c4 e2 7d 18 15 f7 f7 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff55f7f7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b15ba3:	55 ff 
  b15ba5:	c5 fc 28 1d 33 16 56 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff561633]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b15bac:	ff 
  b15bad:	0f 1f 00             	nop    DWORD PTR [rax]
  b15bb0:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  b15bb7:	00 00 
  b15bb9:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  b15bc0:	00 00 
  b15bc2:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  b15bc7:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b15bcd:	c5 fc 10 bc 17 00 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x100]
  b15bd4:	00 00 
  b15bd6:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  b15bdd:	00 00 
  b15bdf:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b15be5:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b15beb:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  b15bf0:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  b15bf4:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  b15bf9:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b15bff:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  b15c05:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b15c0b:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  b15c0f:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  b15c14:	c5 7c 10 5c 17 20    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x20]
  b15c1a:	c5 7c 10 64 17 40    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  b15c20:	c5 7c 10 6c 17 60    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  b15c26:	c4 41 3c c6 f3 dd    	vshufps ymm14,ymm8,ymm11,0xdd
  b15c2c:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b15c32:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  b15c36:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  b15c3b:	62 c1 2c 28 58 cf    	vaddps ymm17,ymm10,ymm15
  b15c41:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x140]
  b15c48:	0a 
  b15c49:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  b15c50:	0b 
  b15c51:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  b15c58:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  b15c5f:	62 c1 1c 28 c6 e5 88 	vshufps ymm20,ymm12,ymm13,0x88
  b15c66:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b15c6d:	62 a1 64 20 5c ec    	vsubps ymm21,ymm19,ymm20
  b15c73:	62 e1 54 20 59 e8    	vmulps ymm21,ymm21,ymm0
  b15c79:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b15c80:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b15c87:	c4 41 1c c6 e5 dd    	vshufps ymm12,ymm12,ymm13,0xdd
  b15c8d:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b15c93:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  b15c99:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0xc0]
  b15ca0:	06 
  b15ca1:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0xe0]
  b15ca8:	07 
  b15ca9:	62 a1 6c 20 c6 fe dd 	vshufps ymm23,ymm18,ymm22,0xdd
  b15cb0:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  b15cb7:	62 61 7c 28 28 c1    	vmovaps ymm24,ymm1
  b15cbd:	62 22 15 28 ac c7    	vfnmadd213ps ymm24,ymm13,ymm23
  b15cc3:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  b15cc7:	62 01 54 20 58 c8    	vaddps ymm25,ymm21,ymm24
  b15ccd:	c4 41 3c c6 c3 88    	vshufps ymm8,ymm8,ymm11,0x88
  b15cd3:	62 11 74 20 5c c9    	vsubps ymm9,ymm17,ymm25
  b15cd9:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b15cdf:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  b15ce3:	c5 fc 28 e9          	vmovaps ymm5,ymm1
  b15ce7:	c4 c2 4d ac e8       	vfnmadd213ps ymm5,ymm6,ymm8
  b15cec:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b15cf0:	62 31 64 20 58 dc    	vaddps ymm11,ymm19,ymm20
  b15cf6:	62 e1 54 28 5c dc    	vsubps ymm19,ymm5,ymm4
  b15cfc:	62 a1 6c 20 c6 d6 88 	vshufps ymm18,ymm18,ymm22,0x88
  b15d03:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b15d0a:	62 e1 7c 28 28 e1    	vmovaps ymm20,ymm1
  b15d10:	62 a2 25 28 ac e2    	vfnmadd213ps ymm20,ymm11,ymm18
  b15d16:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  b15d1c:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  b15d20:	62 c1 5c 20 5c f4    	vsubps ymm22,ymm20,ymm12
  b15d26:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  b15d2b:	62 31 64 20 5c fe    	vsubps ymm15,ymm19,ymm22
  b15d31:	62 a1 3c 20 5c ed    	vsubps ymm21,ymm24,ymm21
  b15d37:	62 21 2c 28 58 c5    	vaddps ymm24,ymm10,ymm21
  b15d3d:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  b15d41:	62 d1 5c 20 58 ec    	vaddps ymm5,ymm20,ymm12
  b15d47:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  b15d4b:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b15d4f:	62 51 44 20 58 ed    	vaddps ymm13,ymm23,ymm13
  b15d55:	62 c1 44 28 5c c5    	vsubps ymm16,ymm7,ymm13
  b15d5b:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  b15d5f:	62 51 6c 20 58 c3    	vaddps ymm8,ymm18,ymm11
  b15d65:	c4 41 4c 5c d8       	vsubps ymm11,ymm6,ymm8
  b15d6a:	62 81 74 20 58 d1    	vaddps ymm18,ymm17,ymm25
  b15d70:	62 31 64 20 58 f6    	vaddps ymm14,ymm19,ymm22
  b15d76:	62 a1 2c 28 5c cd    	vsubps ymm17,ymm10,ymm21
  b15d7c:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  b15d80:	62 c1 44 28 58 dd    	vaddps ymm19,ymm7,ymm13
  b15d86:	c5 bc 58 ee          	vaddps ymm5,ymm8,ymm6
  b15d8a:	c4 c3 55 18 f4 01    	vinsertf128 ymm6,ymm5,xmm12,0x1
  b15d90:	c4 43 55 06 c4 31    	vperm2f128 ymm8,ymm5,ymm12,0x31
  b15d96:	c4 43 5d 18 d7 01    	vinsertf128 ymm10,ymm4,xmm15,0x1
  b15d9c:	c4 43 5d 06 ef 31    	vperm2f128 ymm13,ymm4,ymm15,0x31
  b15da2:	c4 41 78 28 e6       	vmovaps xmm12,xmm14
  b15da7:	c4 c1 4d 14 e4       	vunpcklpd ymm4,ymm6,ymm12
  b15dac:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  b15db1:	c4 c1 2d 14 ef       	vunpcklpd ymm5,ymm10,ymm15
  b15db6:	c5 dc c6 fd dd       	vshufps ymm7,ymm4,ymm5,0xdd
  b15dbb:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b15dc0:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  b15dc5:	c4 41 2d 15 d7       	vunpckhpd ymm10,ymm10,ymm15
  b15dca:	c4 41 4c c6 e2 88    	vshufps ymm12,ymm6,ymm10,0x88
  b15dd0:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  b15dd6:	c4 c1 4c c6 f2 dd    	vshufps ymm6,ymm6,ymm10,0xdd
  b15ddc:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b15de1:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  b15de7:	c4 41 3d 14 d6       	vunpcklpd ymm10,ymm8,ymm14
  b15dec:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b15df2:	62 c1 95 28 14 e3    	vunpcklpd ymm20,ymm13,ymm11
  b15df8:	62 31 2c 28 c6 fc 88 	vshufps ymm15,ymm10,ymm20,0x88
  b15dff:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b15e05:	62 31 2c 28 c6 d4 dd 	vshufps ymm10,ymm10,ymm20,0xdd
  b15e0c:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b15e12:	c4 41 3d 15 c6       	vunpckhpd ymm8,ymm8,ymm14
  b15e17:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  b15e1c:	c4 41 3c c6 eb 88    	vshufps ymm13,ymm8,ymm11,0x88
  b15e22:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b15e28:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  b15e2e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b15e34:	62 13 65 20 18 f0 01 	vinsertf32x4 ymm14,ymm19,xmm24,0x1
  b15e3b:	62 83 e5 20 23 e0 03 	vshuff64x2 ymm20,ymm19,ymm24,0x3
  b15e42:	62 c3 75 20 18 d9 01 	vinsertf32x4 ymm19,ymm17,xmm9,0x1
  b15e49:	62 c3 f5 20 23 f1 03 	vshuff64x2 ymm22,ymm17,ymm9,0x3
  b15e50:	62 a1 7c 08 28 ea    	vmovaps xmm21,xmm18
  b15e56:	62 31 8d 28 14 cd    	vunpcklpd ymm9,ymm14,ymm21
  b15e5c:	62 a1 7c 08 28 f8    	vmovaps xmm23,xmm16
  b15e62:	62 31 e5 20 14 df    	vunpcklpd ymm11,ymm19,ymm23
  b15e68:	62 c1 34 28 c6 cb dd 	vshufps ymm17,ymm9,ymm11,0xdd
  b15e6f:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  b15e76:	62 31 8d 28 15 f5    	vunpckhpd ymm14,ymm14,ymm21
  b15e7c:	62 a1 e5 20 15 df    	vunpckhpd ymm19,ymm19,ymm23
  b15e82:	62 a1 0c 28 c6 eb 88 	vshufps ymm21,ymm14,ymm19,0x88
  b15e89:	62 a1 54 20 c6 ed d8 	vshufps ymm21,ymm21,ymm21,0xd8
  b15e90:	62 31 0c 28 c6 f3 dd 	vshufps ymm14,ymm14,ymm19,0xdd
  b15e97:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b15e9d:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  b15ea4:	62 a1 dd 20 14 da    	vunpcklpd ymm19,ymm20,ymm18
  b15eaa:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  b15eb1:	62 a1 cd 20 14 f8    	vunpcklpd ymm23,ymm22,ymm16
  b15eb7:	62 21 64 20 c6 c7 88 	vshufps ymm24,ymm19,ymm23,0x88
  b15ebe:	62 01 3c 20 c6 c0 d8 	vshufps ymm24,ymm24,ymm24,0xd8
  b15ec5:	62 a1 64 20 c6 df dd 	vshufps ymm19,ymm19,ymm23,0xdd
  b15ecc:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  b15ed3:	62 a1 dd 20 15 d2    	vunpckhpd ymm18,ymm20,ymm18
  b15ed9:	62 a1 cd 20 15 e0    	vunpckhpd ymm20,ymm22,ymm16
  b15edf:	62 a1 6c 20 c6 c4 dd 	vshufps ymm16,ymm18,ymm20,0xdd
  b15ee6:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  b15eed:	62 a1 6c 20 c6 d4 88 	vshufps ymm18,ymm18,ymm20,0x88
  b15ef4:	62 a1 6c 20 c6 f2 d8 	vshufps ymm22,ymm18,ymm18,0xd8
  b15efb:	62 e1 7c 28 10 61 08 	vmovups ymm20,YMMWORD PTR [rcx+0x100]
  b15f02:	62 e1 7c 28 10 79 09 	vmovups ymm23,YMMWORD PTR [rcx+0x120]
  b15f09:	62 a1 04 28 59 d4    	vmulps ymm18,ymm15,ymm20
  b15f0f:	62 a2 3d 20 bc d7    	vfnmadd231ps ymm18,ymm24,ymm23
  b15f15:	62 a1 3c 20 59 e4    	vmulps ymm20,ymm24,ymm20
  b15f1b:	62 61 7c 28 10 41 04 	vmovups ymm24,YMMWORD PTR [rcx+0x80]
  b15f22:	62 a2 05 28 b8 e7    	vfmadd231ps ymm20,ymm15,ymm23
  b15f28:	62 e1 7c 28 10 79 05 	vmovups ymm23,YMMWORD PTR [rcx+0xa0]
  b15f2f:	62 11 1c 28 59 f8    	vmulps ymm15,ymm12,ymm24
  b15f35:	62 32 55 20 bc ff    	vfnmadd231ps ymm15,ymm21,ymm23
  b15f3b:	62 81 54 20 59 e8    	vmulps ymm21,ymm21,ymm24
  b15f41:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  b15f48:	62 a2 1d 28 b8 ef    	vfmadd231ps ymm21,ymm12,ymm23
  b15f4e:	c5 7c 10 a1 a0 01 00 	vmovups ymm12,YMMWORD PTR [rcx+0x1a0]
  b15f55:	00 
  b15f56:	62 81 14 28 59 f8    	vmulps ymm23,ymm13,ymm24
  b15f5c:	62 c2 4d 20 bc fc    	vfnmadd231ps ymm23,ymm22,ymm12
  b15f62:	62 81 4c 20 59 f0    	vmulps ymm22,ymm22,ymm24
  b15f68:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  b15f6f:	62 c2 15 28 b8 f4    	vfmadd231ps ymm22,ymm13,ymm12
  b15f75:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  b15f7a:	62 11 44 28 59 e8    	vmulps ymm13,ymm7,ymm24
  b15f80:	62 52 75 20 bc ec    	vfnmadd231ps ymm13,ymm17,ymm12
  b15f86:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  b15f8c:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  b15f93:	62 c2 45 28 b8 cc    	vfmadd231ps ymm17,ymm7,ymm12
  b15f99:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  b15fa0:	00 
  b15fa1:	62 11 2c 28 59 e0    	vmulps ymm12,ymm10,ymm24
  b15fa7:	62 72 65 20 bc e7    	vfnmadd231ps ymm12,ymm19,ymm7
  b15fad:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  b15fb3:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  b15fba:	62 e2 2d 28 b8 df    	vfmadd231ps ymm19,ymm10,ymm7
  b15fc0:	c5 fc 10 b9 e0 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0xe0]
  b15fc7:	00 
  b15fc8:	62 11 4c 28 59 d0    	vmulps ymm10,ymm6,ymm24
  b15fce:	c4 62 0d bc d7       	vfnmadd231ps ymm10,ymm14,ymm7
  b15fd3:	62 11 0c 28 59 f0    	vmulps ymm14,ymm14,ymm24
  b15fd9:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  b15fe0:	c4 62 4d b8 f7       	vfmadd231ps ymm14,ymm6,ymm7
  b15fe5:	c5 fc 10 b1 e0 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x1e0]
  b15fec:	00 
  b15fed:	62 91 3c 28 59 f8    	vmulps ymm7,ymm8,ymm24
  b15ff3:	62 f2 7d 20 bc fe    	vfnmadd231ps ymm7,ymm16,ymm6
  b15ff9:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  b15fff:	62 e2 3d 28 b8 c6    	vfmadd231ps ymm16,ymm8,ymm6
  b16005:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  b1600a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b1600f:	c4 c1 34 c6 eb 88    	vshufps ymm5,ymm9,ymm11,0x88
  b16015:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1601a:	62 b1 5c 28 58 f2    	vaddps ymm6,ymm4,ymm18
  b16020:	62 b1 5c 28 5c e2    	vsubps ymm4,ymm4,ymm18
  b16026:	62 31 54 20 58 c6    	vaddps ymm8,ymm21,ymm22
  b1602c:	62 31 54 20 5c ce    	vsubps ymm9,ymm21,ymm22
  b16032:	c4 41 14 58 dc       	vaddps ymm11,ymm13,ymm12
  b16037:	c4 41 14 5c e4       	vsubps ymm12,ymm13,ymm12
  b1603c:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  b16042:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b16048:	62 a1 0c 28 58 d0    	vaddps ymm18,ymm14,ymm16
  b1604e:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  b16054:	62 e1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm7
  b1605a:	c5 ac 5c ff          	vsubps ymm7,ymm10,ymm7
  b1605e:	62 71 5c 20 58 d5    	vaddps ymm10,ymm20,ymm5
  b16064:	62 b1 54 28 5c ec    	vsubps ymm5,ymm5,ymm20
  b1606a:	62 a1 04 28 58 df    	vaddps ymm19,ymm15,ymm23
  b16070:	62 51 44 20 5c ff    	vsubps ymm15,ymm23,ymm15
  b16076:	62 a1 1c 28 58 e1    	vaddps ymm20,ymm12,ymm17
  b1607c:	62 51 74 20 5c e4    	vsubps ymm12,ymm17,ymm12
  b16082:	62 e1 0c 28 5c cf    	vsubps ymm17,ymm14,ymm7
  b16088:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b1608c:	62 31 4c 28 58 f3    	vaddps ymm14,ymm6,ymm19
  b16092:	62 b1 4c 28 5c f3    	vsubps ymm6,ymm6,ymm19
  b16098:	62 a1 14 28 58 da    	vaddps ymm19,ymm13,ymm18
  b1609e:	62 31 14 28 5c ea    	vsubps ymm13,ymm13,ymm18
  b160a4:	62 c1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm10
  b160aa:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  b160af:	62 31 24 28 58 d0    	vaddps ymm10,ymm11,ymm16
  b160b5:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  b160bb:	62 c1 5c 28 58 c1    	vaddps ymm16,ymm4,ymm9
  b160c1:	62 e1 5c 20 59 e2    	vmulps ymm20,ymm20,ymm2
  b160c7:	62 e1 74 20 59 ca    	vmulps ymm17,ymm17,ymm2
  b160cd:	c5 1c 59 e2          	vmulps ymm12,ymm12,ymm2
  b160d1:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  b160d5:	c4 c1 5c 5c e1       	vsubps ymm4,ymm4,ymm9
  b160da:	c5 1c 5c cf          	vsubps ymm9,ymm12,ymm7
  b160de:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b160e2:	c5 04 58 e5          	vaddps ymm12,ymm15,ymm5
  b160e6:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  b160eb:	62 31 5c 20 58 f9    	vaddps ymm15,ymm20,ymm17
  b160f1:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  b160f7:	62 c1 7c 20 58 e7    	vaddps ymm20,ymm16,ymm15
  b160fd:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  b16103:	62 c1 1c 28 58 c1    	vaddps ymm16,ymm12,ymm9
  b16109:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  b1610e:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  b16112:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  b16117:	c4 41 3c 58 eb       	vaddps ymm13,ymm8,ymm11
  b1611c:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  b16121:	c5 5c 58 df          	vaddps ymm11,ymm4,ymm7
  b16125:	c5 dc 5c e7          	vsubps ymm4,ymm4,ymm7
  b16129:	62 b1 54 28 58 f9    	vaddps ymm7,ymm5,ymm17
  b1612f:	62 b1 54 28 5c e9    	vsubps ymm5,ymm5,ymm17
  b16135:	62 c1 0c 28 5c ca    	vsubps ymm17,ymm14,ymm10
  b1613b:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  b16140:	62 31 6c 20 5c f3    	vsubps ymm14,ymm18,ymm19
  b16146:	62 a1 6c 20 58 d3    	vaddps ymm18,ymm18,ymm19
  b1614c:	62 33 7d 28 19 d3 01 	vextractf32x4 xmm19,ymm10,0x1
  b16153:	62 32 65 28 7f d2    	vpermt2ps ymm10,ymm3,ymm18
  b16159:	c5 7c 11 14 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm10
  b1615e:	62 c3 7d 28 19 d2 01 	vextractf32x4 xmm10,ymm18,0x1
  b16165:	62 51 64 00 14 d2    	vunpcklps xmm10,xmm19,xmm10
  b1616b:	c5 78 11 54 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm10
  b16171:	62 c3 7d 28 19 e2 01 	vextractf32x4 xmm10,ymm20,0x1
  b16178:	62 a2 65 28 7f e0    	vpermt2ps ymm20,ymm3,ymm16
  b1617e:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm20
  b16185:	30 00 00 00 
  b16189:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  b16190:	62 31 2c 08 14 d0    	vunpcklps xmm10,xmm10,xmm16
  b16196:	c5 78 11 54 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm10
  b1619c:	c4 43 7d 19 e2 01    	vextractf128 xmm10,ymm12,0x1
  b161a2:	62 52 65 28 7f e5    	vpermt2ps ymm12,ymm3,ymm13
  b161a8:	c5 7c 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm12
  b161ae:	c4 43 7d 19 ec 01    	vextractf128 xmm12,ymm13,0x1
  b161b4:	c4 41 28 14 d4       	vunpcklps xmm10,xmm10,xmm12
  b161b9:	c5 78 11 94 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm10
  b161c0:	00 00 
  b161c2:	c4 43 7d 19 da 01    	vextractf128 xmm10,ymm11,0x1
  b161c8:	62 72 65 28 7f df    	vpermt2ps ymm11,ymm3,ymm7
  b161ce:	c5 7c 11 9c 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm11
  b161d5:	00 00 
  b161d7:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b161dd:	c5 a8 14 ff          	vunpcklps xmm7,xmm10,xmm7
  b161e1:	c5 f8 11 bc 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm7
  b161e8:	00 00 
  b161ea:	62 e3 7d 28 19 cf 01 	vextractf32x4 xmm7,ymm17,0x1
  b161f1:	62 c2 65 28 7f ce    	vpermt2ps ymm17,ymm3,ymm14
  b161f7:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm17
  b161fe:	06 
  b161ff:	c4 43 7d 19 f2 01    	vextractf128 xmm10,ymm14,0x1
  b16205:	c4 c1 40 14 fa       	vunpcklps xmm7,xmm7,xmm10
  b1620a:	c5 f8 11 bc 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm7
  b16211:	00 00 
  b16213:	c4 63 7d 19 ff 01    	vextractf128 xmm7,ymm15,0x1
  b16219:	62 52 65 28 7f f9    	vpermt2ps ymm15,ymm3,ymm9
  b1621f:	c5 7c 11 bc 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm15
  b16226:	00 00 
  b16228:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b1622e:	c4 c1 40 14 f9       	vunpcklps xmm7,xmm7,xmm9
  b16233:	c5 f8 11 bc 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm7
  b1623a:	00 00 
  b1623c:	c4 e3 7d 19 f7 01    	vextractf128 xmm7,ymm6,0x1
  b16242:	62 d2 65 28 7f f0    	vpermt2ps ymm6,ymm3,ymm8
  b16248:	c5 fc 11 b4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm6
  b1624f:	00 00 
  b16251:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  b16257:	c5 c0 14 f6          	vunpcklps xmm6,xmm7,xmm6
  b1625b:	c5 f8 11 b4 16 40 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x140],xmm6
  b16262:	00 00 
  b16264:	c4 e3 7d 19 e6 01    	vextractf128 xmm6,ymm4,0x1
  b1626a:	62 f2 65 28 7f e5    	vpermt2ps ymm4,ymm3,ymm5
  b16270:	c5 fc 11 a4 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm4
  b16277:	00 00 
  b16279:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  b1627f:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  b16283:	c5 f8 11 a4 16 70 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x170],xmm4
  b1628a:	00 00 
  b1628c:	48 81 c2 80 01 00 00 	add    rdx,0x180
  b16293:	48 39 d0             	cmp    rax,rdx
  b16296:	0f 85 14 f9 ff ff    	jne    b15bb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b1629c:	c5 f8 77             	vzeroupper
  b1629f:	c3                   	ret
