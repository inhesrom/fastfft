
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afbc40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afbc40:	55                   	push   rbp
  afbc41:	48 89 e5             	mov    rbp,rsp
  afbc44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  afbc48:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  afbc4f:	48 c1 e2 08          	shl    rdx,0x8
  afbc53:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  afbc57:	31 d2                	xor    edx,edx
  afbc59:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  afbc60:	00 
  afbc61:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  afbc66:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  afbc6d:	00 00 00 
  afbc70:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  afbc77:	00 
  afbc78:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  afbc7d:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  afbc82:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  afbc88:	c5 ec c6 c5 88       	vshufps ymm0,ymm2,ymm5,0x88
  afbc8d:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  afbc93:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  afbc98:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  afbc9e:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  afbca5:	00 00 
  afbca7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  afbcad:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  afbcb2:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  afbcb8:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  afbcbd:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  afbcc3:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  afbcca:	00 00 
  afbccc:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  afbcd3:	00 00 
  afbcd5:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  afbcdb:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  afbce1:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  afbce7:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  afbcee:	00 00 
  afbcf0:	c5 7c 10 94 17 40 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x140]
  afbcf7:	00 00 
  afbcf9:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  afbcff:	c4 41 3c c6 da 88    	vshufps ymm11,ymm8,ymm10,0x88
  afbd05:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  afbd0b:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  afbd11:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  afbd17:	c5 7c 10 94 17 80 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x180]
  afbd1e:	00 00 
  afbd20:	c5 7c 10 a4 17 a0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1a0]
  afbd27:	00 00 
  afbd29:	c4 41 2c c6 ec 88    	vshufps ymm13,ymm10,ymm12,0x88
  afbd2f:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  afbd35:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  afbd3b:	c5 7c 10 a4 17 e0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1e0]
  afbd42:	00 00 
  afbd44:	c5 7c 10 b4 17 00 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x200]
  afbd4b:	00 00 
  afbd4d:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  afbd53:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  afbd59:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  afbd5f:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  afbd65:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  afbd6b:	c5 7c 10 b4 17 40 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x240]
  afbd72:	00 00 
  afbd74:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x260]
  afbd7b:	13 
  afbd7c:	62 a1 0c 28 c6 c8 88 	vshufps ymm17,ymm14,ymm16,0x88
  afbd83:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  afbd8a:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  afbd91:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x2a0]
  afbd98:	15 
  afbd99:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2c0]
  afbda0:	16 
  afbda1:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  afbda7:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  afbdae:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  afbdb5:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  afbdbc:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  afbdc3:	62 c1 6c 28 58 ea    	vaddps ymm21,ymm2,ymm10
  afbdc9:	62 c1 4c 28 58 f6    	vaddps ymm22,ymm6,ymm14
  afbdcf:	62 c1 54 28 58 fc    	vaddps ymm23,ymm5,ymm12
  afbdd5:	62 21 54 20 58 c6    	vaddps ymm24,ymm21,ymm22
  afbddb:	62 21 3c 28 58 c8    	vaddps ymm25,ymm8,ymm16
  afbde1:	62 41 7c 28 58 d5    	vaddps ymm26,ymm0,ymm13
  afbde7:	62 21 74 28 58 d9    	vaddps ymm27,ymm1,ymm17
  afbded:	62 01 44 20 58 e1    	vaddps ymm28,ymm23,ymm25
  afbdf3:	62 01 2c 20 58 eb    	vaddps ymm29,ymm26,ymm27
  afbdf9:	62 41 44 28 58 f7    	vaddps ymm30,ymm7,ymm15
  afbdff:	62 21 24 28 58 fb    	vaddps ymm31,ymm11,ymm19
  afbe05:	62 11 0c 20 58 cf    	vaddps ymm9,ymm30,ymm31
  afbe0b:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  afbe10:	62 b1 74 28 5c d9    	vsubps ymm3,ymm1,ymm17
  afbe16:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  afbe1a:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  afbe21:	00 00 
  afbe23:	62 11 3c 20 58 d4    	vaddps ymm10,ymm24,ymm28
  afbe29:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  afbe2e:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  afbe33:	c5 54 58 ff          	vaddps ymm15,ymm5,ymm7
  afbe37:	62 51 14 20 58 e1    	vaddps ymm12,ymm29,ymm9
  afbe3d:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  afbe43:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  afbe49:	62 c1 24 28 5c c0    	vsubps ymm16,ymm11,ymm8
  afbe4f:	c4 e2 7d 18 25 44 95 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff579544]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  afbe56:	57 ff 
  afbe58:	62 e1 04 28 59 cc    	vmulps ymm17,ymm15,ymm4
  afbe5e:	c4 c1 7c 5c cd       	vsubps ymm1,ymm0,ymm13
  afbe63:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  afbe67:	c5 4c 58 f9          	vaddps ymm15,ymm6,ymm1
  afbe6b:	62 e1 7c 20 59 d4    	vmulps ymm18,ymm16,ymm4
  afbe71:	c5 c4 5c c5          	vsubps ymm0,ymm7,ymm5
  afbe75:	62 e1 7c 28 59 dc    	vmulps ymm19,ymm0,ymm4
  afbe7b:	c4 c1 3c 58 c3       	vaddps ymm0,ymm8,ymm11
  afbe80:	62 e1 7c 28 59 e4    	vmulps ymm20,ymm0,ymm4
  afbe86:	62 b1 54 20 5c ee    	vsubps ymm5,ymm21,ymm22
  afbe8c:	62 91 0c 20 5c ff    	vsubps ymm7,ymm30,ymm31
  afbe92:	62 11 2c 20 5c c3    	vsubps ymm8,ymm26,ymm27
  afbe98:	c5 d4 58 c7          	vaddps ymm0,ymm5,ymm7
  afbe9c:	62 31 34 20 5c f7    	vsubps ymm14,ymm25,ymm23
  afbea2:	c5 6c 5c eb          	vsubps ymm13,ymm2,ymm3
  afbea6:	c5 74 5c de          	vsubps ymm11,ymm1,ymm6
  afbeaa:	c4 c1 0c 58 d0       	vaddps ymm2,ymm14,ymm8
  afbeaf:	62 91 3c 20 5c dc    	vsubps ymm3,ymm24,ymm28
  afbeb5:	62 d1 14 20 5c c9    	vsubps ymm1,ymm29,ymm9
  afbebb:	c5 d4 5c e7          	vsubps ymm4,ymm5,ymm7
  afbebf:	c4 41 3c 5c f6       	vsubps ymm14,ymm8,ymm14
  afbec4:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  afbeca:	c4 e3 7d 18 fc 01    	vinsertf128 ymm7,ymm0,xmm4,0x1
  afbed0:	c5 cd 14 ef          	vunpcklpd ymm5,ymm6,ymm7
  afbed4:	c5 fc 29 6c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm5
  afbeda:	c5 cd 15 ef          	vunpckhpd ymm5,ymm6,ymm7
  afbede:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  afbee4:	c4 63 1d 18 c1 01    	vinsertf128 ymm8,ymm12,xmm1,0x1
  afbeea:	62 c3 6d 28 18 c6 01 	vinsertf32x4 ymm16,ymm2,xmm14,0x1
  afbef1:	62 b1 bd 28 14 e8    	vunpcklpd ymm5,ymm8,ymm16
  afbef7:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  afbefe:	00 00 
  afbf00:	62 a1 bd 28 15 c0    	vunpckhpd ymm16,ymm8,ymm16
  afbf06:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  afbf0c:	c4 c3 6d 06 d6 31    	vperm2f128 ymm2,ymm2,ymm14,0x31
  afbf12:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  afbf18:	c5 f5 15 ea          	vunpckhpd ymm5,ymm1,ymm2
  afbf1c:	c5 fd 29 ac 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm5
  afbf23:	00 00 
  afbf25:	c4 e3 7d 06 c4 31    	vperm2f128 ymm0,ymm0,ymm4,0x31
  afbf2b:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  afbf31:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  afbf37:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  afbf3b:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  afbf42:	00 00 
  afbf44:	62 e1 1c 08 c6 ec 88 	vshufps xmm21,xmm12,xmm4,0x88
  afbf4b:	62 61 1c 08 c6 c4 dd 	vshufps xmm24,xmm12,xmm4,0xdd
  afbf52:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  afbf59:	00 00 
  afbf5b:	c5 e5 15 d0          	vunpckhpd ymm2,ymm3,ymm0
  afbf5f:	c5 fd 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm2
  afbf66:	00 00 
  afbf68:	c5 f8 10 94 17 a0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xa0]
  afbf6f:	00 00 
  afbf71:	62 e1 6c 08 c6 f1 88 	vshufps xmm22,xmm2,xmm1,0x88
  afbf78:	62 e1 6c 08 c6 f9 dd 	vshufps xmm23,xmm2,xmm1,0xdd
  afbf7f:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  afbf83:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  afbf8a:	00 00 
  afbf8c:	c5 f8 10 84 17 10 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x110]
  afbf93:	00 00 
  afbf95:	c5 f8 10 8c 17 00 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x100]
  afbf9c:	00 00 
  afbf9e:	c5 f0 c6 d8 88       	vshufps xmm3,xmm1,xmm0,0x88
  afbfa3:	62 b1 74 20 58 e2    	vaddps ymm4,ymm17,ymm18
  afbfa9:	c5 f0 c6 f0 dd       	vshufps xmm6,xmm1,xmm0,0xdd
  afbfae:	c5 f8 10 8c 17 70 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x170]
  afbfb5:	00 00 
  afbfb7:	c5 f8 10 94 17 60 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x160]
  afbfbe:	00 00 
  afbfc0:	62 21 64 20 5c d4    	vsubps ymm26,ymm19,ymm20
  afbfc6:	62 61 6c 08 c6 c9 88 	vshufps xmm25,xmm2,xmm1,0x88
  afbfcd:	c5 e8 c6 d1 dd       	vshufps xmm2,xmm2,xmm1,0xdd
  afbfd2:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  afbfd9:	00 00 
  afbfdb:	62 a1 64 20 58 e4    	vaddps ymm20,ymm19,ymm20
  afbfe1:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1c0]
  afbfe8:	1c 
  afbfe9:	62 e1 24 00 c6 d9 88 	vshufps xmm19,xmm27,xmm1,0x88
  afbff0:	62 f1 24 00 c6 c9 dd 	vshufps xmm1,xmm27,xmm1,0xdd
  afbff7:	62 a1 6c 20 5c c9    	vsubps ymm17,ymm18,ymm17
  afbffd:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x230]
  afc004:	23 
  afc005:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x220]
  afc00c:	22 
  afc00d:	62 21 24 00 c6 e2 88 	vshufps xmm28,xmm27,xmm18,0x88
  afc014:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  afc01b:	00 00 
  afc01d:	62 61 7c 28 58 ec    	vaddps ymm29,ymm0,ymm4
  afc023:	62 21 24 00 c6 da dd 	vshufps xmm27,xmm27,xmm18,0xdd
  afc02a:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x290]
  afc031:	29 
  afc032:	62 61 7c 08 10 74 17 	vmovups xmm30,XMMWORD PTR [rdi+rdx*1+0x280]
  afc039:	28 
  afc03a:	c5 fc 5c e4          	vsubps ymm4,ymm0,ymm4
  afc03e:	62 21 0c 00 c6 fa 88 	vshufps xmm31,xmm30,xmm18,0x88
  afc045:	62 21 0c 00 c6 f2 dd 	vshufps xmm30,xmm30,xmm18,0xdd
  afc04c:	c5 78 10 8c 17 f0 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x2f0]
  afc053:	00 00 
  afc055:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x2e0]
  afc05c:	2e 
  afc05d:	62 d1 6c 00 c6 c1 88 	vshufps xmm0,xmm18,xmm9,0x88
  afc064:	62 51 6c 00 c6 c9 dd 	vshufps xmm9,xmm18,xmm9,0xdd
  afc06b:	62 81 04 28 58 d2    	vaddps ymm18,ymm15,ymm26
  afc071:	62 01 04 28 5c d2    	vsubps ymm26,ymm15,ymm26
  afc077:	62 71 3c 20 58 f9    	vaddps ymm15,ymm24,ymm1
  afc07d:	62 f1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm1
  afc083:	62 21 14 28 58 c4    	vaddps ymm24,ymm13,ymm20
  afc089:	62 31 14 28 5c ec    	vsubps ymm13,ymm13,ymm20
  afc08f:	62 81 64 28 58 e7    	vaddps ymm20,ymm3,ymm31
  afc095:	62 91 64 28 5c ef    	vsubps ymm5,ymm3,ymm31
  afc09b:	62 21 24 28 58 f9    	vaddps ymm31,ymm11,ymm17
  afc0a1:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  afc0a7:	62 81 44 20 58 cb    	vaddps ymm17,ymm23,ymm27
  afc0ad:	62 81 44 20 5c fb    	vsubps ymm23,ymm23,ymm27
  afc0b3:	62 03 6d 20 18 da 01 	vinsertf32x4 ymm27,ymm18,xmm26,0x1
  afc0ba:	62 83 ed 20 23 d2 03 	vshuff64x2 ymm18,ymm18,ymm26,0x3
  afc0c1:	62 01 4c 20 58 d4    	vaddps ymm26,ymm22,ymm28
  afc0c7:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  afc0cd:	62 43 05 20 18 e3 01 	vinsertf32x4 ymm28,ymm31,xmm11,0x1
  afc0d4:	62 53 85 20 23 db 03 	vshuff64x2 ymm11,ymm31,ymm11,0x3
  afc0db:	62 61 34 20 58 f8    	vaddps ymm31,ymm25,ymm0
  afc0e1:	62 f1 34 20 5c c0    	vsubps ymm0,ymm25,ymm0
  afc0e7:	62 63 15 20 18 cc 01 	vinsertf32x4 ymm25,ymm29,xmm4,0x1
  afc0ee:	62 f3 95 20 23 e4 03 	vshuff64x2 ymm4,ymm29,ymm4,0x3
  afc0f5:	62 41 6c 28 58 e9    	vaddps ymm29,ymm2,ymm9
  afc0fb:	c4 c1 6c 5c d1       	vsubps ymm2,ymm2,ymm9
  afc100:	62 53 3d 20 18 cd 01 	vinsertf32x4 ymm9,ymm24,xmm13,0x1
  afc107:	62 53 bd 20 23 ed 03 	vshuff64x2 ymm13,ymm24,ymm13,0x3
  afc10e:	62 21 54 20 58 c3    	vaddps ymm24,ymm21,ymm19
  afc114:	62 a1 54 20 5c db    	vsubps ymm19,ymm21,ymm19
  afc11a:	62 d1 b5 20 14 c9    	vunpcklpd ymm1,ymm25,ymm9
  afc120:	62 51 b5 20 15 c9    	vunpckhpd ymm9,ymm25,ymm9
  afc126:	62 81 4c 28 58 ee    	vaddps ymm21,ymm6,ymm30
  afc12c:	62 f1 0c 20 5c f6    	vsubps ymm6,ymm30,ymm6
  afc132:	62 01 a5 20 14 cc    	vunpcklpd ymm25,ymm27,ymm28
  afc138:	62 01 a5 20 15 dc    	vunpckhpd ymm27,ymm27,ymm28
  afc13e:	62 21 44 20 58 e6    	vaddps ymm28,ymm23,ymm22
  afc144:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  afc14a:	62 c1 ed 20 15 fb    	vunpckhpd ymm23,ymm18,ymm11
  afc150:	62 c1 ed 20 14 d3    	vunpcklpd ymm18,ymm18,ymm11
  afc156:	62 61 7c 28 5c f2    	vsubps ymm30,ymm0,ymm2
  afc15c:	c5 ec 58 d0          	vaddps ymm2,ymm2,ymm0
  afc160:	c4 41 5d 15 dd       	vunpckhpd ymm11,ymm4,ymm13
  afc165:	c4 c1 5d 14 dd       	vunpcklpd ymm3,ymm4,ymm13
  afc16a:	62 31 04 28 58 ed    	vaddps ymm13,ymm15,ymm21
  afc170:	62 31 04 28 5c fd    	vsubps ymm15,ymm15,ymm21
  afc176:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  afc17c:	c4 41 7c c6 e1 88    	vshufps ymm12,ymm0,ymm9,0x88
  afc182:	c4 41 7c c6 f1 dd    	vshufps ymm14,ymm0,ymm9,0xdd
  afc188:	62 11 2c 20 58 c7    	vaddps ymm8,ymm26,ymm31
  afc18e:	62 11 2c 20 5c cf    	vsubps ymm9,ymm26,ymm31
  afc194:	62 01 7c 20 c6 d3 88 	vshufps ymm26,ymm16,ymm27,0x88
  afc19b:	62 01 7c 20 c6 db dd 	vshufps ymm27,ymm16,ymm27,0xdd
  afc1a2:	62 a1 3c 20 58 ec    	vaddps ymm21,ymm24,ymm20
  afc1a8:	62 21 3c 20 5c fc    	vsubps ymm31,ymm24,ymm20
  afc1ae:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  afc1b5:	00 00 
  afc1b7:	62 11 7c 28 c6 d1 dd 	vshufps ymm10,ymm0,ymm25,0xdd
  afc1be:	62 81 7c 28 c6 e1 88 	vshufps ymm20,ymm0,ymm25,0x88
  afc1c5:	62 01 74 20 58 cd    	vaddps ymm25,ymm17,ymm29
  afc1cb:	62 a1 14 20 5c c9    	vsubps ymm17,ymm29,ymm17
  afc1d1:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  afc1d7:	62 61 7c 28 c6 e9 dd 	vshufps ymm29,ymm0,ymm1,0xdd
  afc1de:	62 e1 7c 28 c6 c1 88 	vshufps ymm16,ymm0,ymm1,0x88
  afc1e5:	c5 c4 58 c5          	vaddps ymm0,ymm7,ymm5
  afc1e9:	c5 c4 5c fd          	vsubps ymm7,ymm7,ymm5
  afc1ed:	62 62 7d 28 18 05 a5 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5791a5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  afc1f4:	91 57 ff 
  afc1f7:	62 91 4c 20 59 e8    	vmulps ymm5,ymm22,ymm24
  afc1fd:	62 91 6c 28 59 d0    	vmulps ymm2,ymm2,ymm24
  afc203:	c5 d4 5c e2          	vsubps ymm4,ymm5,ymm2
  afc207:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  afc20b:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  afc212:	00 00 
  afc214:	62 a1 6c 28 c6 f7 dd 	vshufps ymm22,ymm2,ymm23,0xdd
  afc21b:	62 b1 6c 28 c6 ef 88 	vshufps ymm5,ymm2,ymm23,0x88
  afc222:	62 b1 4c 28 58 d3    	vaddps ymm2,ymm6,ymm19
  afc228:	62 e1 64 20 5c fe    	vsubps ymm23,ymm19,ymm6
  afc22e:	62 91 1c 20 59 f0    	vmulps ymm6,ymm28,ymm24
  afc234:	62 81 0c 20 59 d8    	vmulps ymm19,ymm30,ymm24
  afc23a:	62 21 4c 28 58 e3    	vaddps ymm28,ymm6,ymm19
  afc240:	62 61 64 20 5c c6    	vsubps ymm24,ymm19,ymm6
  afc246:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  afc24d:	00 00 
  afc24f:	62 a1 4c 28 c6 da dd 	vshufps ymm19,ymm6,ymm18,0xdd
  afc256:	62 a1 4c 28 c6 d2 88 	vshufps ymm18,ymm6,ymm18,0x88
  afc25d:	62 91 14 28 58 f1    	vaddps ymm6,ymm13,ymm25
  afc263:	62 11 14 08 5c e9    	vsubps xmm13,xmm13,xmm25
  afc269:	62 43 4d 28 18 f5 01 	vinsertf32x4 ymm30,ymm6,xmm13,0x1
  afc270:	62 91 7c 28 58 f4    	vaddps ymm6,ymm0,ymm28
  afc276:	62 91 7c 08 5c c4    	vsubps xmm0,xmm0,xmm28
  afc27c:	c4 e3 4d 18 c0 01    	vinsertf128 ymm0,ymm6,xmm0,0x1
  afc282:	c5 fc 28 b4 24 20 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x120]
  afc289:	00 00 
  afc28b:	c4 41 4c c6 eb dd    	vshufps ymm13,ymm6,ymm11,0xdd
  afc291:	62 41 4c 28 c6 cb 88 	vshufps ymm25,ymm6,ymm11,0x88
  afc298:	c4 41 04 58 d9       	vaddps ymm11,ymm15,ymm9
  afc29d:	c4 41 00 5c c9       	vsubps xmm9,xmm15,xmm9
  afc2a2:	c5 7c 28 bc 24 80 00 	vmovaps ymm15,YMMWORD PTR [rsp+0x80]
  afc2a9:	00 00 
  afc2ab:	c5 84 c6 f3 dd       	vshufps ymm6,ymm15,ymm3,0xdd
  afc2b0:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  afc2b6:	c5 04 c6 fb 88       	vshufps ymm15,ymm15,ymm3,0x88
  afc2bb:	c4 43 25 18 d9 01    	vinsertf128 ymm11,ymm11,xmm9,0x1
  afc2c1:	62 61 44 28 58 e1    	vaddps ymm28,ymm7,ymm1
  afc2c7:	c5 c0 5c c9          	vsubps xmm1,xmm7,xmm1
  afc2cb:	62 11 14 20 c6 cd d8 	vshufps ymm9,ymm29,ymm29,0xd8
  afc2d2:	c4 c1 1c c6 f4 d8    	vshufps ymm6,ymm12,ymm12,0xd8
  afc2d8:	62 f3 1d 20 18 f9 01 	vinsertf32x4 ymm7,ymm28,xmm1,0x1
  afc2df:	62 d1 8d 20 14 cb    	vunpcklpd ymm1,ymm30,ymm11
  afc2e5:	c4 c1 0c c6 de d8    	vshufps ymm3,ymm14,ymm14,0xd8
  afc2eb:	62 51 8d 20 15 db    	vunpckhpd ymm11,ymm30,ymm11
  afc2f1:	62 61 fd 28 14 f7    	vunpcklpd ymm30,ymm0,ymm7
  afc2f7:	c5 fd 15 c7          	vunpckhpd ymm0,ymm0,ymm7
  afc2fb:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  afc301:	c5 24 c6 f0 88       	vshufps ymm14,ymm11,ymm0,0x88
  afc306:	c5 a4 c6 c0 dd       	vshufps ymm0,ymm11,ymm0,0xdd
  afc30b:	62 d1 54 20 58 f8    	vaddps ymm7,ymm21,ymm8
  afc311:	62 11 2c 20 c6 d2 d8 	vshufps ymm10,ymm26,ymm26,0xd8
  afc318:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  afc31e:	c5 6c 58 dc          	vaddps ymm11,ymm2,ymm4
  afc322:	c4 43 45 18 c0 01    	vinsertf128 ymm8,ymm7,xmm8,0x1
  afc328:	62 81 24 20 c6 eb d8 	vshufps ymm21,ymm27,ymm27,0xd8
  afc32f:	62 01 74 20 58 d7    	vaddps ymm26,ymm17,ymm31
  afc335:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  afc339:	62 01 44 20 58 d8    	vaddps ymm27,ymm23,ymm24
  afc33f:	62 b1 5c 20 c6 e4 d8 	vshufps ymm4,ymm20,ymm20,0xd8
  afc346:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  afc34c:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  afc352:	62 91 74 28 c6 fe dd 	vshufps ymm7,ymm1,ymm30,0xdd
  afc359:	62 61 44 28 c6 e7 d8 	vshufps ymm28,ymm7,ymm7,0xd8
  afc360:	62 b1 7c 20 c6 e0 d8 	vshufps ymm4,ymm16,ymm16,0xd8
  afc367:	62 c1 0c 28 c6 e6 d8 	vshufps ymm20,ymm14,ymm14,0xd8
  afc36e:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  afc373:	62 b1 04 00 5c c1    	vsubps xmm0,xmm31,xmm17
  afc379:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  afc380:	62 f3 2d 20 18 c0 01 	vinsertf32x4 ymm0,ymm26,xmm0,0x1
  afc387:	62 11 44 00 5c f0    	vsubps xmm14,xmm23,xmm24
  afc38d:	62 53 25 20 18 f6 01 	vinsertf32x4 ymm14,ymm27,xmm14,0x1
  afc394:	62 e1 54 28 c6 f5 d8 	vshufps ymm22,ymm5,ymm5,0xd8
  afc39b:	62 e1 bd 28 14 c0    	vunpcklpd ymm16,ymm8,ymm0
  afc3a1:	c5 3d 15 c0          	vunpckhpd ymm8,ymm8,ymm0
  afc3a5:	62 c1 ed 28 14 fe    	vunpcklpd ymm23,ymm2,ymm14
  afc3ab:	62 b1 64 20 c6 eb d8 	vshufps ymm5,ymm19,ymm19,0xd8
  afc3b2:	c4 c1 6d 15 d6       	vunpckhpd ymm2,ymm2,ymm14
  afc3b7:	62 b1 7c 20 c6 c7 dd 	vshufps ymm0,ymm16,ymm23,0xdd
  afc3be:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  afc3c3:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  afc3ca:	c5 3c c6 f2 88       	vshufps ymm14,ymm8,ymm2,0x88
  afc3cf:	62 41 0c 28 c6 ee d8 	vshufps ymm29,ymm14,ymm14,0xd8
  afc3d6:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  afc3db:	62 41 14 28 c6 c5 d8 	vshufps ymm24,ymm13,ymm13,0xd8
  afc3e2:	c5 6c c6 f2 d8       	vshufps ymm14,ymm2,ymm2,0xd8
  afc3e7:	62 b1 7c 20 c6 d7 88 	vshufps ymm2,ymm16,ymm23,0x88
  afc3ee:	62 e1 6c 28 c6 d2 d8 	vshufps ymm18,ymm2,ymm2,0xd8
  afc3f5:	62 81 34 20 c6 f9 d8 	vshufps ymm23,ymm25,ymm25,0xd8
  afc3fc:	62 91 74 28 c6 ce 88 	vshufps ymm1,ymm1,ymm30,0x88
  afc403:	62 e1 74 28 c6 d9 d8 	vshufps ymm19,ymm1,ymm1,0xd8
  afc40a:	62 61 7c 28 10 51 02 	vmovups ymm26,YMMWORD PTR [rcx+0x40]
  afc411:	62 41 04 28 c6 f7 d8 	vshufps ymm30,ymm15,ymm15,0xd8
  afc418:	62 61 7c 28 10 49 03 	vmovups ymm25,YMMWORD PTR [rcx+0x60]
  afc41f:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  afc426:	00 
  afc427:	c5 fc 10 91 a0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1a0]
  afc42e:	00 
  afc42f:	62 71 44 20 59 f9    	vmulps ymm15,ymm23,ymm1
  afc435:	62 72 4d 20 bc fa    	vfnmadd231ps ymm15,ymm22,ymm2
  afc43b:	62 e1 4c 20 59 f1    	vmulps ymm22,ymm22,ymm1
  afc441:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  afc448:	00 
  afc449:	62 e2 45 20 b8 f2    	vfmadd231ps ymm22,ymm23,ymm2
  afc44f:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  afc456:	00 
  afc457:	62 e1 1c 20 59 f9    	vmulps ymm23,ymm28,ymm1
  afc45d:	62 61 7c 28 59 f9    	vmulps ymm31,ymm0,ymm1
  afc463:	62 e2 7d 28 bc fa    	vfnmadd231ps ymm23,ymm0,ymm2
  afc469:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  afc470:	00 
  afc471:	62 62 1d 20 b8 fa    	vfmadd231ps ymm31,ymm28,ymm2
  afc477:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  afc47e:	00 
  afc47f:	62 61 64 28 59 e0    	vmulps ymm28,ymm3,ymm0
  afc485:	62 62 55 20 bc e1    	vfnmadd231ps ymm28,ymm21,ymm1
  afc48b:	62 f1 54 20 59 c0    	vmulps ymm0,ymm21,ymm0
  afc491:	c5 7c 10 81 80 02 00 	vmovups ymm8,YMMWORD PTR [rcx+0x280]
  afc498:	00 
  afc499:	c4 e2 65 b8 c1       	vfmadd231ps ymm0,ymm3,ymm1
  afc49e:	c5 fc 10 89 a0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2a0]
  afc4a5:	00 
  afc4a6:	62 d1 5c 20 59 d0    	vmulps ymm2,ymm20,ymm8
  afc4ac:	62 c1 14 20 59 c0    	vmulps ymm16,ymm29,ymm8
  afc4b2:	62 f2 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm1
  afc4b8:	c5 fc 10 99 00 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x100]
  afc4bf:	00 
  afc4c0:	62 e2 5d 20 b8 c1    	vfmadd231ps ymm16,ymm20,ymm1
  afc4c6:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  afc4cd:	00 
  afc4ce:	62 71 0c 20 59 c3    	vmulps ymm8,ymm30,ymm3
  afc4d4:	62 72 25 20 bc c1    	vfnmadd231ps ymm8,ymm27,ymm1
  afc4da:	62 e1 24 20 59 e3    	vmulps ymm20,ymm27,ymm3
  afc4e0:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  afc4e7:	00 
  afc4e8:	62 e2 0d 20 b8 e1    	vfmadd231ps ymm20,ymm30,ymm1
  afc4ee:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  afc4f5:	00 
  afc4f6:	62 e1 3c 20 59 eb    	vmulps ymm21,ymm24,ymm3
  afc4fc:	62 f1 74 20 59 db    	vmulps ymm3,ymm17,ymm3
  afc502:	62 e2 75 20 bc e9    	vfnmadd231ps ymm21,ymm17,ymm1
  afc508:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  afc50f:	00 
  afc510:	62 f2 3d 20 b8 d9    	vfmadd231ps ymm3,ymm24,ymm1
  afc516:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  afc51d:	00 
  afc51e:	62 81 34 28 59 ca    	vmulps ymm17,ymm9,ymm26
  afc524:	62 82 1d 28 bc c9    	vfnmadd231ps ymm17,ymm12,ymm25
  afc52a:	62 11 1c 28 59 e2    	vmulps ymm12,ymm12,ymm26
  afc530:	62 61 7c 28 10 41 10 	vmovups ymm24,YMMWORD PTR [rcx+0x200]
  afc537:	62 12 35 28 b8 e1    	vfmadd231ps ymm12,ymm9,ymm25
  afc53d:	c5 7c 10 89 20 02 00 	vmovups ymm9,YMMWORD PTR [rcx+0x220]
  afc544:	00 
  afc545:	62 01 64 20 59 c8    	vmulps ymm25,ymm19,ymm24
  afc54b:	62 01 6c 20 59 c0    	vmulps ymm24,ymm18,ymm24
  afc551:	62 42 6d 20 bc c9    	vfnmadd231ps ymm25,ymm18,ymm9
  afc557:	62 e1 7c 28 10 51 0a 	vmovups ymm18,YMMWORD PTR [rcx+0x140]
  afc55e:	62 42 65 20 b8 c1    	vfmadd231ps ymm24,ymm19,ymm9
  afc564:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  afc56b:	00 
  afc56c:	62 c1 4c 28 59 dd    	vmulps ymm19,ymm6,ymm13
  afc572:	62 e2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm1
  afc578:	c4 41 2c 59 ed       	vmulps ymm13,ymm10,ymm13
  afc57d:	c5 7c 10 91 c0 02 00 	vmovups ymm10,YMMWORD PTR [rcx+0x2c0]
  afc584:	00 
  afc585:	62 63 7d 28 04 54 24 	vpermilps ymm26,YMMWORD PTR [rsp+0x60],0xd8
  afc58c:	03 d8 
  afc58e:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  afc593:	c5 fc 10 89 e0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2e0]
  afc59a:	00 
  afc59b:	62 41 24 28 59 da    	vmulps ymm27,ymm11,ymm10
  afc5a1:	62 62 0d 28 bc d9    	vfnmadd231ps ymm27,ymm14,ymm1
  afc5a7:	c4 c1 0c 59 f2       	vmulps ymm6,ymm14,ymm10
  afc5ac:	62 41 5c 28 58 ef    	vaddps ymm29,ymm4,ymm15
  afc5b2:	c4 e2 25 b8 f1       	vfmadd231ps ymm6,ymm11,ymm1
  afc5b7:	62 b1 1c 20 58 cf    	vaddps ymm1,ymm28,ymm23
  afc5bd:	62 31 2c 20 59 da    	vmulps ymm11,ymm26,ymm18
  afc5c3:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  afc5c8:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  afc5ce:	62 e1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm2
  afc5d4:	62 d2 2d 20 b8 e9    	vfmadd231ps ymm5,ymm26,ymm9
  afc5da:	62 21 54 20 58 d1    	vaddps ymm26,ymm21,ymm17
  afc5e0:	62 21 34 20 58 f3    	vaddps ymm30,ymm25,ymm19
  afc5e6:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  afc5ea:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  afc5f1:	00 00 
  afc5f3:	c5 1c 58 cb          	vaddps ymm9,ymm12,ymm3
  afc5f7:	c4 c1 64 5c fc       	vsubps ymm7,ymm3,ymm12
  afc5fc:	62 51 24 20 58 d3    	vaddps ymm10,ymm27,ymm11
  afc602:	62 a1 34 20 5c db    	vsubps ymm19,ymm25,ymm19
  afc608:	62 61 4c 28 58 cd    	vaddps ymm25,ymm6,ymm5
  afc60e:	c5 4c 5c c5          	vsubps ymm8,ymm6,ymm5
  afc612:	62 91 7c 28 58 df    	vaddps ymm3,ymm0,ymm31
  afc618:	c4 41 5c 5c ff       	vsubps ymm15,ymm4,ymm15
  afc61d:	62 b1 5c 20 58 e8    	vaddps ymm5,ymm20,ymm16
  afc623:	62 01 7c 28 5c ff    	vsubps ymm31,ymm0,ymm31
  afc629:	62 31 5c 20 5c f0    	vsubps ymm14,ymm20,ymm16
  afc62f:	62 e1 14 20 58 e1    	vaddps ymm20,ymm29,ymm1
  afc635:	62 d1 3c 20 58 c5    	vaddps ymm0,ymm24,ymm13
  afc63b:	62 a1 74 20 5c ed    	vsubps ymm21,ymm17,ymm21
  afc641:	62 41 3c 20 5c c5    	vsubps ymm24,ymm24,ymm13
  afc647:	62 91 6c 20 58 d2    	vaddps ymm2,ymm18,ymm26
  afc64d:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  afc654:	00 00 
  afc656:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  afc65c:	62 71 4c 20 58 ea    	vaddps ymm13,ymm22,ymm2
  afc662:	62 01 24 28 5c db    	vsubps ymm27,ymm11,ymm27
  afc668:	62 b1 6c 28 5c e6    	vsubps ymm4,ymm2,ymm22
  afc66e:	62 51 0c 20 58 e2    	vaddps ymm12,ymm30,ymm10
  afc674:	62 c1 54 28 58 f1    	vaddps ymm22,ymm5,ymm9
  afc67a:	62 81 44 20 5c fc    	vsubps ymm23,ymm23,ymm28
  afc680:	62 01 7c 28 58 e1    	vaddps ymm28,ymm0,ymm25
  afc686:	62 81 6c 20 5c ca    	vsubps ymm17,ymm18,ymm26
  afc68c:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  afc693:	00 00 
  afc695:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  afc699:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  afc69d:	62 51 0c 20 5c d2    	vsubps ymm10,ymm30,ymm10
  afc6a3:	62 a1 0c 28 58 d5    	vaddps ymm18,ymm14,ymm21
  afc6a9:	62 e1 14 20 5c c1    	vsubps ymm16,ymm29,ymm1
  afc6af:	62 91 3c 20 58 cb    	vaddps ymm1,ymm24,ymm27
  afc6b5:	c4 41 54 5c c9       	vsubps ymm9,ymm5,ymm9
  afc6ba:	62 f1 6c 20 5c e9    	vsubps ymm5,ymm18,ymm1
  afc6c0:	c5 fc 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm5
  afc6c7:	00 00 
  afc6c9:	62 61 6c 20 58 d1    	vaddps ymm26,ymm18,ymm1
  afc6cf:	62 c1 64 20 58 d0    	vaddps ymm18,ymm19,ymm8
  afc6d5:	62 91 7c 28 5c c1    	vsubps ymm0,ymm0,ymm25
  afc6db:	62 b1 24 28 58 fa    	vaddps ymm7,ymm11,ymm18
  afc6e1:	62 a1 24 28 5c d2    	vsubps ymm18,ymm11,ymm18
  afc6e7:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  afc6ed:	62 61 14 28 5c eb    	vsubps ymm29,ymm13,ymm3
  afc6f3:	c5 b4 5c c8          	vsubps ymm1,ymm9,ymm0
  afc6f7:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  afc6fd:	c5 b4 58 d8          	vaddps ymm3,ymm9,ymm0
  afc701:	62 11 04 28 58 cf    	vaddps ymm9,ymm15,ymm31
  afc707:	62 01 04 28 5c f7    	vsubps ymm30,ymm15,ymm31
  afc70d:	62 41 74 20 58 fa    	vaddps ymm31,ymm17,ymm10
  afc713:	62 d1 74 20 5c c2    	vsubps ymm0,ymm17,ymm10
  afc719:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  afc71f:	c5 4c 5c da          	vsubps ymm11,ymm6,ymm2
  afc723:	62 71 44 20 58 ec    	vaddps ymm13,ymm23,ymm4
  afc729:	62 d1 64 20 5c e8    	vsubps ymm5,ymm19,ymm8
  afc72f:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  afc736:	00 00 
  afc738:	c5 1c 58 d1          	vaddps ymm10,ymm12,ymm1
  afc73c:	62 b1 5c 28 5c e7    	vsubps ymm4,ymm4,ymm23
  afc742:	62 81 4c 20 58 dc    	vaddps ymm19,ymm22,ymm28
  afc748:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  afc74e:	62 51 5c 20 58 fa    	vaddps ymm15,ymm20,ymm10
  afc754:	62 81 3c 20 5c eb    	vsubps ymm21,ymm24,ymm27
  afc75a:	c4 e2 7d 18 05 fd 8c 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff578cfd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afc761:	57 ff 
  afc763:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  afc767:	62 32 7d 28 ac d4    	vfnmadd213ps ymm10,ymm0,ymm20
  afc76d:	62 a1 34 20 58 fb    	vaddps ymm23,ymm25,ymm19
  afc773:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  afc777:	c4 c2 45 ac f1       	vfnmadd213ps ymm6,ymm7,ymm9
  afc77c:	62 c1 7c 28 28 c9    	vmovaps ymm17,ymm9
  afc782:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  afc788:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  afc78c:	62 62 7d 28 18 25 3e 	vbroadcastss ymm28,DWORD PTR [rip+0xffffffffff578b3e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afc793:	8b 57 ff 
  afc796:	62 71 1c 20 59 44 24 	vmulps ymm8,ymm28,YMMWORD PTR [rsp+0xa0]
  afc79d:	05 
  afc79e:	62 d2 2d 20 ac fd    	vfnmadd213ps ymm7,ymm26,ymm13
  afc7a4:	62 11 6c 20 59 cc    	vmulps ymm9,ymm18,ymm28
  afc7aa:	62 82 7d 28 ac d9    	vfnmadd213ps ymm19,ymm0,ymm25
  afc7b0:	62 c1 4c 28 58 d0    	vaddps ymm18,ymm6,ymm8
  afc7b6:	c4 41 74 5c e4       	vsubps ymm12,ymm1,ymm12
  afc7bb:	62 e1 7c 28 28 e0    	vmovaps ymm20,ymm0
  afc7c1:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  afc7c6:	62 41 44 28 5c c1    	vsubps ymm24,ymm7,ymm9
  afc7cc:	62 a2 05 20 ac e0    	vfnmadd213ps ymm20,ymm31,ymm16
  afc7d2:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  afc7d6:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  afc7dc:	62 02 65 28 ac cd    	vfnmadd213ps ymm25,ymm3,ymm29
  afc7e2:	62 91 7c 20 58 ff    	vaddps ymm7,ymm16,ymm31
  afc7e8:	62 e1 24 28 58 c5    	vaddps ymm16,ymm11,ymm5
  afc7ee:	62 71 14 20 58 c3    	vaddps ymm8,ymm29,ymm3
  afc7f4:	62 21 0c 20 58 f8    	vaddps ymm31,ymm30,ymm16
  afc7fa:	62 82 7d 28 ac c6    	vfnmadd213ps ymm16,ymm0,ymm30
  afc800:	62 21 0c 28 58 dd    	vaddps ymm27,ymm14,ymm21
  afc806:	62 21 0c 28 5c ed    	vsubps ymm29,ymm14,ymm21
  afc80c:	62 81 5c 28 58 eb    	vaddps ymm21,ymm4,ymm27
  afc812:	62 62 7d 28 ac dc    	vfnmadd213ps ymm27,ymm0,ymm4
  afc818:	62 91 4c 20 59 e4    	vmulps ymm4,ymm22,ymm28
  afc81e:	c5 a4 5c dd          	vsubps ymm3,ymm11,ymm5
  afc822:	62 e1 2c 28 58 f4    	vaddps ymm22,ymm10,ymm4
  afc828:	62 11 1c 28 59 e4    	vmulps ymm12,ymm12,ymm28
  afc82e:	62 61 2c 28 5c f4    	vsubps ymm30,ymm10,ymm4
  afc834:	62 d1 64 20 5c e4    	vsubps ymm4,ymm19,ymm12
  afc83a:	62 51 64 20 58 f4    	vaddps ymm14,ymm19,ymm12
  afc840:	62 71 74 20 58 d2    	vaddps ymm10,ymm17,ymm2
  afc846:	62 f1 1c 20 59 6c 24 	vmulps ymm5,ymm28,YMMWORD PTR [rsp+0x60]
  afc84d:	03 
  afc84e:	62 11 14 28 58 e2    	vaddps ymm12,ymm13,ymm26
  afc854:	62 f1 5c 20 5c cd    	vsubps ymm1,ymm20,ymm5
  afc85a:	62 71 1c 20 59 6c 24 	vmulps ymm13,ymm28,YMMWORD PTR [rsp+0x40]
  afc861:	02 
  afc862:	62 91 14 20 59 c4    	vmulps ymm0,ymm29,ymm28
  afc868:	62 71 5c 20 58 dd    	vaddps ymm11,ymm20,ymm5
  afc86e:	62 c1 34 20 58 cd    	vaddps ymm17,ymm25,ymm13
  afc874:	62 51 34 20 5c ed    	vsubps ymm13,ymm25,ymm13
  afc87a:	62 e1 7c 20 58 d8    	vaddps ymm19,ymm16,ymm0
  afc880:	62 91 64 28 59 dc    	vmulps ymm3,ymm3,ymm28
  afc886:	62 f1 7c 20 5c c0    	vsubps ymm0,ymm16,ymm0
  afc88c:	62 e1 24 20 5c c3    	vsubps ymm16,ymm27,ymm3
  afc892:	62 f1 24 20 58 eb    	vaddps ymm5,ymm27,ymm3
  afc898:	62 b1 7c 28 28 df    	vmovaps ymm3,ymm23
  afc89e:	62 e1 7c 28 28 25 f8 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff578ff8]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  afc8a5:	8f 57 ff 
  afc8a8:	62 d2 5d 20 7f df    	vpermt2ps ymm3,ymm20,ymm15
  afc8ae:	62 61 7c 28 28 0d 28 	vmovaps ymm25,YMMWORD PTR [rip+0xffffffffff57a928]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afc8b5:	a9 57 ff 
  afc8b8:	62 c2 35 20 7f ff    	vpermt2ps ymm23,ymm25,ymm15
  afc8be:	62 e1 7c 28 11 3c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm23
  afc8c5:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  afc8cb:	62 91 7c 28 28 d8    	vmovaps ymm3,ymm24
  afc8d1:	62 b2 5d 20 7f da    	vpermt2ps ymm3,ymm20,ymm18
  afc8d7:	62 22 35 20 7f c2    	vpermt2ps ymm24,ymm25,ymm18
  afc8dd:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm24
  afc8e4:	02 
  afc8e5:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  afc8eb:	62 b1 7c 28 28 d9    	vmovaps ymm3,ymm17
  afc8f1:	62 f2 5d 20 7f d9    	vpermt2ps ymm3,ymm20,ymm1
  afc8f7:	62 e2 35 20 7f c9    	vpermt2ps ymm17,ymm25,ymm1
  afc8fd:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm17
  afc904:	04 
  afc905:	62 b1 7c 28 28 cd    	vmovaps ymm1,ymm21
  afc90b:	62 92 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm31
  afc911:	62 82 35 20 7f ef    	vpermt2ps ymm21,ymm25,ymm31
  afc917:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  afc91e:	00 00 
  afc920:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  afc927:	06 
  afc928:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  afc92f:	00 00 
  afc931:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  afc935:	62 b2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm22
  afc93b:	62 b2 35 20 7f e6    	vpermt2ps ymm4,ymm25,ymm22
  afc941:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  afc948:	00 00 
  afc94a:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  afc951:	00 00 
  afc953:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  afc957:	62 f2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm6
  afc95d:	62 72 35 20 7f ce    	vpermt2ps ymm9,ymm25,ymm6
  afc963:	c5 7c 11 8c 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm9
  afc96a:	00 00 
  afc96c:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  afc973:	00 00 
  afc975:	c5 7c 29 c1          	vmovaps ymm1,ymm8
  afc979:	62 f2 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm7
  afc97f:	62 72 35 20 7f c7    	vpermt2ps ymm8,ymm25,ymm7
  afc985:	c5 7c 11 84 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm8
  afc98c:	00 00 
  afc98e:	62 b1 7c 28 28 d8    	vmovaps ymm3,ymm16
  afc994:	62 b2 5d 20 7f db    	vpermt2ps ymm3,ymm20,ymm19
  afc99a:	62 a2 35 20 7f c3    	vpermt2ps ymm16,ymm25,ymm19
  afc9a0:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  afc9a7:	00 00 
  afc9a9:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm16
  afc9b0:	0e 
  afc9b1:	c5 fc 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm3
  afc9b8:	00 00 
  afc9ba:	c5 7c 29 f1          	vmovaps ymm1,ymm14
  afc9be:	62 92 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm30
  afc9c4:	62 12 35 20 7f f6    	vpermt2ps ymm14,ymm25,ymm30
  afc9ca:	c5 7c 11 b4 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm14
  afc9d1:	00 00 
  afc9d3:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  afc9da:	00 00 
  afc9dc:	c5 7c 29 e1          	vmovaps ymm1,ymm12
  afc9e0:	62 d2 5d 20 7f ca    	vpermt2ps ymm1,ymm20,ymm10
  afc9e6:	62 52 35 20 7f e2    	vpermt2ps ymm12,ymm25,ymm10
  afc9ec:	c5 7c 11 a4 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm12
  afc9f3:	00 00 
  afc9f5:	c5 fc 11 8c 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm1
  afc9fc:	00 00 
  afc9fe:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  afca02:	62 d2 5d 20 7f cb    	vpermt2ps ymm1,ymm20,ymm11
  afca08:	62 52 35 20 7f eb    	vpermt2ps ymm13,ymm25,ymm11
  afca0e:	c5 7c 11 ac 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm13
  afca15:	00 00 
  afca17:	c5 fc 28 d5          	vmovaps ymm2,ymm5
  afca1b:	62 f2 5d 20 7f d0    	vpermt2ps ymm2,ymm20,ymm0
  afca21:	62 f2 35 20 7f e8    	vpermt2ps ymm5,ymm25,ymm0
  afca27:	c5 fc 11 8c 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm1
  afca2e:	00 00 
  afca30:	c5 fc 11 ac 16 c0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2c0],ymm5
  afca37:	00 00 
  afca39:	c5 fc 11 94 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm2
  afca40:	00 00 
  afca42:	48 81 c2 00 03 00 00 	add    rdx,0x300
  afca49:	48 39 d0             	cmp    rax,rdx
  afca4c:	0f 85 1e f2 ff ff    	jne    afbc70 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  afca52:	48 89 ec             	mov    rsp,rbp
  afca55:	5d                   	pop    rbp
  afca56:	c5 f8 77             	vzeroupper
  afca59:	c3                   	ret
