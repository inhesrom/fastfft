
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1ec80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1ec80:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b1ec84:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b1ec89:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  b1ec8e:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b1ec93:	c5 ec c6 e3 88       	vshufps ymm4,ymm2,ymm3,0x88
  b1ec98:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b1ec9e:	c5 fc 10 af 80 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x80]
  b1eca5:	00 
  b1eca6:	c5 fc 10 b7 a0 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0xa0]
  b1ecad:	00 
  b1ecae:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  b1ecb3:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b1ecb9:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b1ecbd:	c4 62 7d 18 0d 0e 66 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff55660e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1ecc4:	55 ff 
  b1ecc6:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b1eccb:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  b1ecd0:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b1ecd6:	c5 d4 c6 de dd       	vshufps ymm3,ymm5,ymm6,0xdd
  b1ecdb:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b1ece1:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  b1ece5:	c5 fc c6 e9 dd       	vshufps ymm5,ymm0,ymm1,0xdd
  b1ecea:	c4 63 fd 01 d5 d8    	vpermpd ymm10,ymm5,0xd8
  b1ecf0:	c4 62 7d 18 1d 67 67 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff556767]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1ecf7:	55 ff 
  b1ecf9:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b1ecfe:	c4 42 4d ac e2       	vfnmadd213ps ymm12,ymm6,ymm10
  b1ed03:	c4 c1 3c 58 ec       	vaddps ymm5,ymm8,ymm12
  b1ed08:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b1ed0c:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b1ed11:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b1ed17:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  b1ed1c:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  b1ed20:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  b1ed24:	c5 a4 5c d1          	vsubps ymm2,ymm11,ymm1
  b1ed28:	c4 41 1c 5c e0       	vsubps ymm12,ymm12,ymm8
  b1ed2d:	c5 a4 58 c9          	vaddps ymm1,ymm11,ymm1
  b1ed31:	c5 2c 58 d6          	vaddps ymm10,ymm10,ymm6
  b1ed35:	c5 fc 58 c4          	vaddps ymm0,ymm0,ymm4
  b1ed39:	c5 f8 28 d8          	vmovaps xmm3,xmm0
  b1ed3d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1ed43:	c5 f8 28 e1          	vmovaps xmm4,xmm1
  b1ed47:	c4 e3 7d 19 ce 01    	vextractf128 xmm6,ymm1,0x1
  b1ed4d:	c5 f8 28 fa          	vmovaps xmm7,xmm2
  b1ed51:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1ed57:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  b1ed5b:	c5 e5 14 df          	vunpcklpd ymm3,ymm3,ymm7
  b1ed5f:	c5 fa 7e c9          	vmovq  xmm1,xmm1
  b1ed63:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  b1ed68:	c5 7d 15 da          	vunpckhpd ymm11,ymm0,ymm2
  b1ed6c:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  b1ed70:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b1ed75:	c4 c3 4d 0c f9 cc    	vblendps ymm7,ymm6,ymm9,0xcc
  b1ed7b:	c4 41 4d 15 e9       	vunpckhpd ymm13,ymm6,ymm9
  b1ed80:	62 e1 64 28 c6 d1 88 	vshufps ymm18,ymm3,ymm1,0x88
  b1ed87:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b1ed8c:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  b1ed91:	c5 bc c6 cc 88       	vshufps ymm1,ymm8,ymm4,0x88
  b1ed96:	c5 f4 c6 f1 d8       	vshufps ymm6,ymm1,ymm1,0xd8
  b1ed9b:	c5 bc c6 cc dd       	vshufps ymm1,ymm8,ymm4,0xdd
  b1eda0:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1eda5:	c5 ec c6 e7 88       	vshufps ymm4,ymm2,ymm7,0x88
  b1edaa:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  b1edaf:	c5 ec c6 d7 dd       	vshufps ymm2,ymm2,ymm7,0xdd
  b1edb4:	c5 ec c6 e2 d8       	vshufps ymm4,ymm2,ymm2,0xd8
  b1edb9:	c4 c1 24 c6 d5 88    	vshufps ymm2,ymm11,ymm13,0x88
  b1edbf:	c5 ec c6 fa d8       	vshufps ymm7,ymm2,ymm2,0xd8
  b1edc4:	c4 c1 24 c6 d5 dd    	vshufps ymm2,ymm11,ymm13,0xdd
  b1edca:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1edcf:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b1edd4:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b1edda:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b1eddf:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  b1ede5:	c5 78 28 fd          	vmovaps xmm15,xmm5
  b1ede9:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b1edef:	62 c1 a5 28 15 c7    	vunpckhpd ymm16,ymm11,ymm15
  b1edf5:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b1edfa:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  b1edff:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  b1ee05:	c5 2d 15 fd          	vunpckhpd ymm15,ymm10,ymm5
  b1ee09:	62 e1 ad 28 14 cd    	vunpcklpd ymm17,ymm10,ymm5
  b1ee0f:	c4 c3 0d 0c c1 cc    	vblendps ymm0,ymm14,ymm9,0xcc
  b1ee15:	c4 41 0d 15 f1       	vunpckhpd ymm14,ymm14,ymm9
  b1ee1a:	c4 c1 24 c6 ec 88    	vshufps ymm5,ymm11,ymm12,0x88
  b1ee20:	c4 41 24 c6 cc dd    	vshufps ymm9,ymm11,ymm12,0xdd
  b1ee26:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b1ee2c:	62 51 7c 20 c6 cd 88 	vshufps ymm9,ymm16,ymm13,0x88
  b1ee33:	62 c1 34 28 c6 d9 d8 	vshufps ymm19,ymm9,ymm9,0xd8
  b1ee3a:	62 51 7c 20 c6 cd dd 	vshufps ymm9,ymm16,ymm13,0xdd
  b1ee41:	c4 41 34 c6 d1 d8    	vshufps ymm10,ymm9,ymm9,0xd8
  b1ee47:	62 71 74 20 c6 c8 88 	vshufps ymm9,ymm17,ymm0,0x88
  b1ee4e:	62 c1 34 28 c6 c1 d8 	vshufps ymm16,ymm9,ymm9,0xd8
  b1ee55:	62 f1 74 20 c6 c0 dd 	vshufps ymm0,ymm17,ymm0,0xdd
  b1ee5c:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  b1ee61:	c4 c1 04 c6 c6 dd    	vshufps ymm0,ymm15,ymm14,0xdd
  b1ee67:	c5 7c c6 c8 d8       	vshufps ymm9,ymm0,ymm0,0xd8
  b1ee6c:	c4 c1 04 c6 c6 88    	vshufps ymm0,ymm15,ymm14,0x88
  b1ee72:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1ee77:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  b1ee7e:	00 
  b1ee7f:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  b1ee86:	00 
  b1ee87:	c4 41 3c 59 de       	vmulps ymm11,ymm8,ymm14
  b1ee8c:	62 52 7d 20 bc df    	vfnmadd231ps ymm11,ymm16,ymm15
  b1ee92:	62 51 7c 20 59 f6    	vmulps ymm14,ymm16,ymm14
  b1ee98:	62 e1 7c 28 10 42 04 	vmovups ymm16,YMMWORD PTR [rdx+0x80]
  b1ee9f:	c4 42 3d b8 f7       	vfmadd231ps ymm14,ymm8,ymm15
  b1eea4:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b1eeab:	00 
  b1eeac:	62 31 4c 28 59 c0    	vmulps ymm8,ymm6,ymm16
  b1eeb2:	62 52 65 20 bc c7    	vfnmadd231ps ymm8,ymm19,ymm15
  b1eeb8:	62 a1 64 20 59 c0    	vmulps ymm16,ymm19,ymm16
  b1eebe:	62 e1 7c 28 10 4a 0c 	vmovups ymm17,YMMWORD PTR [rdx+0x180]
  b1eec5:	62 c2 4d 28 b8 c7    	vfmadd231ps ymm16,ymm6,ymm15
  b1eecb:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  b1eed2:	00 
  b1eed3:	62 31 44 28 59 f9    	vmulps ymm15,ymm7,ymm17
  b1eed9:	c4 62 7d bc fe       	vfnmadd231ps ymm15,ymm0,ymm6
  b1eede:	62 b1 7c 28 59 c1    	vmulps ymm0,ymm0,ymm17
  b1eee4:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1eeeb:	c4 e2 45 b8 c6       	vfmadd231ps ymm0,ymm7,ymm6
  b1eef0:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b1eef5:	62 b1 64 28 59 f9    	vmulps ymm7,ymm3,ymm17
  b1eefb:	c4 e2 1d bc fe       	vfnmadd231ps ymm7,ymm12,ymm6
  b1ef00:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  b1ef06:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  b1ef0d:	c4 62 65 b8 e6       	vfmadd231ps ymm12,ymm3,ymm6
  b1ef12:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  b1ef19:	00 
  b1ef1a:	62 b1 5c 28 59 f1    	vmulps ymm6,ymm4,ymm17
  b1ef20:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  b1ef25:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  b1ef2b:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  b1ef32:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  b1ef37:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  b1ef3e:	00 
  b1ef3f:	62 b1 74 28 59 e1    	vmulps ymm4,ymm1,ymm17
  b1ef45:	c4 e2 2d bc e3       	vfnmadd231ps ymm4,ymm10,ymm3
  b1ef4a:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  b1ef50:	62 e1 7c 28 10 4a 0e 	vmovups ymm17,YMMWORD PTR [rdx+0x1c0]
  b1ef57:	c4 62 75 b8 d3       	vfmadd231ps ymm10,ymm1,ymm3
  b1ef5c:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  b1ef63:	00 
  b1ef64:	62 b1 6c 28 59 d9    	vmulps ymm3,ymm2,ymm17
  b1ef6a:	c4 e2 35 bc d9       	vfnmadd231ps ymm3,ymm9,ymm1
  b1ef6f:	62 31 34 28 59 c9    	vmulps ymm9,ymm9,ymm17
  b1ef75:	62 a1 6c 20 c6 ca d8 	vshufps ymm17,ymm18,ymm18,0xd8
  b1ef7c:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1ef81:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  b1ef86:	62 d1 74 20 58 cb    	vaddps ymm1,ymm17,ymm11
  b1ef8c:	c4 c1 3c 58 d7       	vaddps ymm2,ymm8,ymm15
  b1ef91:	62 51 74 20 5c db    	vsubps ymm11,ymm17,ymm11
  b1ef97:	62 e1 7c 20 58 c8    	vaddps ymm17,ymm16,ymm0
  b1ef9d:	62 e1 7c 20 5c c0    	vsubps ymm16,ymm16,ymm0
  b1efa3:	62 e1 44 28 58 d6    	vaddps ymm18,ymm7,ymm6
  b1efa9:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  b1efad:	c4 c1 1c 58 fd       	vaddps ymm7,ymm12,ymm13
  b1efb2:	c4 41 1c 5c e5       	vsubps ymm12,ymm12,ymm13
  b1efb7:	c4 41 2c 58 e9       	vaddps ymm13,ymm10,ymm9
  b1efbc:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  b1efc1:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b1efc5:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b1efc9:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  b1efcd:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  b1efd2:	c5 f4 58 c2          	vaddps ymm0,ymm1,ymm2
  b1efd6:	c4 41 04 5c c0       	vsubps ymm8,ymm15,ymm8
  b1efdb:	c5 1c 58 f6          	vaddps ymm14,ymm12,ymm6
  b1efdf:	c5 9c 5c f6          	vsubps ymm6,ymm12,ymm6
  b1efe3:	c5 34 5c e3          	vsubps ymm12,ymm9,ymm3
  b1efe7:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  b1efeb:	c4 62 7d 18 0d a8 63 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5563a8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1eff2:	55 ff 
  b1eff4:	c4 41 0c 59 f1       	vmulps ymm14,ymm14,ymm9
  b1eff9:	c4 41 1c 59 e1       	vmulps ymm12,ymm12,ymm9
  b1effe:	c5 34 59 fe          	vmulps ymm15,ymm9,ymm6
  b1f002:	62 c1 64 28 59 d9    	vmulps ymm19,ymm3,ymm9
  b1f008:	62 d1 6c 20 58 f2    	vaddps ymm6,ymm18,ymm10
  b1f00e:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  b1f012:	62 c1 44 28 58 e5    	vaddps ymm20,ymm7,ymm13
  b1f018:	c4 c1 44 5c dd       	vsubps ymm3,ymm7,ymm13
  b1f01d:	62 71 74 20 58 ec    	vaddps ymm13,ymm17,ymm4
  b1f023:	62 a1 5c 28 5c c9    	vsubps ymm17,ymm4,ymm17
  b1f029:	62 b1 24 28 58 f8    	vaddps ymm7,ymm11,ymm16
  b1f02f:	62 31 2c 28 5c d2    	vsubps ymm10,ymm10,ymm18
  b1f035:	c4 41 0c 58 cc       	vaddps ymm9,ymm14,ymm12
  b1f03a:	62 b1 24 28 5c d0    	vsubps ymm2,ymm11,ymm16
  b1f040:	62 31 04 28 5c db    	vsubps ymm11,ymm15,ymm19
  b1f046:	62 b1 04 28 58 e3    	vaddps ymm4,ymm15,ymm19
  b1f04c:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  b1f050:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  b1f055:	62 c1 04 28 58 c3    	vaddps ymm16,ymm15,ymm11
  b1f05b:	c4 41 1c 5c c6       	vsubps ymm8,ymm12,ymm14
  b1f060:	62 51 74 20 58 e2    	vaddps ymm12,ymm17,ymm10
  b1f066:	c4 41 04 5c db       	vsubps ymm11,ymm15,ymm11
  b1f06b:	c5 3c 58 f5          	vaddps ymm14,ymm8,ymm5
  b1f06f:	62 51 74 20 5c d2    	vsubps ymm10,ymm17,ymm10
  b1f075:	62 31 14 28 5c fc    	vsubps ymm15,ymm13,ymm20
  b1f07b:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  b1f080:	62 31 14 28 58 ec    	vaddps ymm13,ymm13,ymm20
  b1f086:	c5 78 58 c6          	vaddps xmm8,xmm0,xmm6
  b1f08a:	62 e1 7c 28 28 0d 2c 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff55922c]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b1f091:	92 55 ff 
  b1f094:	62 52 75 20 7f c5    	vpermt2ps ymm8,ymm17,ymm13
  b1f09a:	c5 30 58 ef          	vaddps xmm13,xmm9,xmm7
  b1f09e:	62 32 75 20 7f e8    	vpermt2ps ymm13,ymm17,ymm16
  b1f0a4:	62 e1 74 08 58 c3    	vaddps xmm16,xmm1,xmm3
  b1f0aa:	62 c2 75 20 7f c4    	vpermt2ps ymm16,ymm17,ymm12
  b1f0b0:	c5 68 58 e4          	vaddps xmm12,xmm2,xmm4
  b1f0b4:	62 52 75 20 7f e6    	vpermt2ps ymm12,ymm17,ymm14
  b1f0ba:	c5 f8 5c c6          	vsubps xmm0,xmm0,xmm6
  b1f0be:	62 d2 75 20 7f c7    	vpermt2ps ymm0,ymm17,ymm15
  b1f0c4:	c4 c1 40 5c f1       	vsubps xmm6,xmm7,xmm9
  b1f0c9:	62 d2 75 20 7f f3    	vpermt2ps ymm6,ymm17,ymm11
  b1f0cf:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  b1f0d3:	62 d2 75 20 7f ca    	vpermt2ps ymm1,ymm17,ymm10
  b1f0d9:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  b1f0dd:	62 f2 75 20 7f d5    	vpermt2ps ymm2,ymm17,ymm5
  b1f0e3:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  b1f0e9:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  b1f0ee:	c5 78 11 06          	vmovups XMMWORD PTR [rsi],xmm8
  b1f0f2:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  b1f0f8:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  b1f0fd:	c5 78 11 6e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm13
  b1f102:	62 e3 7d 28 19 c3 01 	vextractf32x4 xmm3,ymm16,0x1
  b1f109:	c5 f8 13 5e 40       	vmovlps QWORD PTR [rsi+0x40],xmm3
  b1f10e:	62 e1 7c 08 11 46 03 	vmovups XMMWORD PTR [rsi+0x30],xmm16
  b1f115:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  b1f11b:	c5 f8 13 5e 58       	vmovlps QWORD PTR [rsi+0x58],xmm3
  b1f120:	c5 78 11 66 48       	vmovups XMMWORD PTR [rsi+0x48],xmm12
  b1f125:	c4 e3 7d 19 c3 01    	vextractf128 xmm3,ymm0,0x1
  b1f12b:	c5 f8 13 5e 70       	vmovlps QWORD PTR [rsi+0x70],xmm3
  b1f130:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  b1f135:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b1f13b:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  b1f142:	00 
  b1f143:	c5 f8 11 76 78       	vmovups XMMWORD PTR [rsi+0x78],xmm6
  b1f148:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b1f14e:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  b1f155:	00 
  b1f156:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  b1f15d:	00 
  b1f15e:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  b1f164:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  b1f16b:	00 
  b1f16c:	c5 f8 11 96 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm2
  b1f173:	00 
  b1f174:	c5 f8 77             	vzeroupper
  b1f177:	c3                   	ret
