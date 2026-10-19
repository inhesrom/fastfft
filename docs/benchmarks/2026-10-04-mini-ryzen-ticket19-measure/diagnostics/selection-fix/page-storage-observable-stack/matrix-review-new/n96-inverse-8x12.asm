
target/ticket19/selection-fix/page-storage-observable-stack/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b0be40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b0be40:	55                   	push   rbp
  b0be41:	48 89 e5             	mov    rbp,rsp
  b0be44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b0be48:	48 81 ec 80 09 00 00 	sub    rsp,0x980
  b0be4f:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  b0be56:	00 
  b0be57:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  b0be5c:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  b0be61:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b0be65:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b0be6a:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b0be6f:	c5 fc 10 a7 80 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0x80]
  b0be76:	00 
  b0be77:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b0be7c:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b0be82:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0be87:	c4 e3 fd 01 e8 d8    	vpermpd ymm5,ymm0,0xd8
  b0be8d:	c5 e4 c6 c4 88       	vshufps ymm0,ymm3,ymm4,0x88
  b0be92:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  b0be98:	c5 e4 c6 c4 dd       	vshufps ymm0,ymm3,ymm4,0xdd
  b0be9d:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  b0bea3:	c5 fc 10 87 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xc0]
  b0beaa:	00 
  b0beab:	c5 fc 10 8f e0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xe0]
  b0beb2:	00 
  b0beb3:	c5 fc c6 e1 88       	vshufps ymm4,ymm0,ymm1,0x88
  b0beb8:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b0bebe:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0bec3:	c4 e3 fd 01 f8 d8    	vpermpd ymm7,ymm0,0xd8
  b0bec9:	c5 fc 10 87 20 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x120]
  b0bed0:	00 
  b0bed1:	c5 fc 10 8f 40 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x140]
  b0bed8:	00 
  b0bed9:	c5 7c c6 c1 88       	vshufps ymm8,ymm0,ymm1,0x88
  b0bede:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b0bee4:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0bee9:	c4 63 fd 01 c8 d8    	vpermpd ymm9,ymm0,0xd8
  b0beef:	c5 fc 10 87 80 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x180]
  b0bef6:	00 
  b0bef7:	c5 fc 10 8f a0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1a0]
  b0befe:	00 
  b0beff:	c5 7c c6 d1 88       	vshufps ymm10,ymm0,ymm1,0x88
  b0bf04:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b0bf0a:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0bf0f:	c4 63 fd 01 d8 d8    	vpermpd ymm11,ymm0,0xd8
  b0bf15:	c5 fc 10 87 e0 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x1e0]
  b0bf1c:	00 
  b0bf1d:	c5 fc 10 8f 00 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  b0bf24:	00 
  b0bf25:	c5 7c c6 e1 88       	vshufps ymm12,ymm0,ymm1,0x88
  b0bf2a:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b0bf30:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0bf35:	c4 63 fd 01 e8 d8    	vpermpd ymm13,ymm0,0xd8
  b0bf3b:	c5 fc 10 87 40 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x240]
  b0bf42:	00 
  b0bf43:	c5 fc 10 8f 60 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x260]
  b0bf4a:	00 
  b0bf4b:	c5 7c c6 f1 88       	vshufps ymm14,ymm0,ymm1,0x88
  b0bf50:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b0bf56:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0bf5b:	c4 63 fd 01 f8 d8    	vpermpd ymm15,ymm0,0xd8
  b0bf61:	c5 fc 10 87 a0 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x2a0]
  b0bf68:	00 
  b0bf69:	c5 fc 10 8f c0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2c0]
  b0bf70:	00 
  b0bf71:	62 e1 7c 28 c6 c1 88 	vshufps ymm16,ymm0,ymm1,0x88
  b0bf78:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b0bf7f:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b0bf84:	62 e3 fd 28 01 c8 d8 	vpermpd ymm17,ymm0,0xd8
  b0bf8b:	62 c1 54 28 58 d3    	vaddps ymm18,ymm5,ymm11
  b0bf91:	62 c1 44 28 58 df    	vaddps ymm19,ymm7,ymm15
  b0bf97:	62 a1 6c 20 58 e3    	vaddps ymm20,ymm18,ymm19
  b0bf9d:	62 c1 64 28 58 ed    	vaddps ymm21,ymm3,ymm13
  b0bfa3:	62 a1 34 28 58 f1    	vaddps ymm22,ymm9,ymm17
  b0bfa9:	62 a1 54 20 58 fe    	vaddps ymm23,ymm21,ymm22
  b0bfaf:	62 b1 5c 20 58 cf    	vaddps ymm1,ymm20,ymm23
  b0bfb5:	62 41 6c 28 58 c2    	vaddps ymm24,ymm2,ymm10
  b0bfbb:	62 41 5c 28 58 ce    	vaddps ymm25,ymm4,ymm14
  b0bfc1:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b0bfc7:	62 41 4c 28 58 dc    	vaddps ymm27,ymm6,ymm12
  b0bfcd:	62 21 3c 28 58 e0    	vaddps ymm28,ymm8,ymm16
  b0bfd3:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b0bfd9:	62 91 2c 20 58 c5    	vaddps ymm0,ymm26,ymm29
  b0bfdf:	c4 41 54 5c db       	vsubps ymm11,ymm5,ymm11
  b0bfe4:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  b0bfe9:	62 41 24 28 58 f6    	vaddps ymm30,ymm11,ymm14
  b0bfef:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b0bff4:	c4 c1 4c 5c ec       	vsubps ymm5,ymm6,ymm12
  b0bff9:	c4 e2 7d 18 35 5a 92 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff56925a]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b0c000:	56 ff 
  b0c002:	c5 e4 58 e5          	vaddps ymm4,ymm3,ymm5
  b0c006:	c5 5c 59 e6          	vmulps ymm12,ymm4,ymm6
  b0c00a:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b0c010:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b0c016:	c4 c1 3c 5c e1       	vsubps ymm4,ymm8,ymm9
  b0c01b:	62 e1 5c 28 59 c6    	vmulps ymm16,ymm4,ymm6
  b0c021:	62 a1 1c 28 58 c8    	vaddps ymm17,ymm12,ymm16
  b0c027:	62 b1 0c 20 58 e1    	vaddps ymm4,ymm30,ymm17
  b0c02d:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b0c032:	c5 04 5c d7          	vsubps ymm10,ymm15,ymm7
  b0c036:	c5 2c 58 fa          	vaddps ymm15,ymm10,ymm2
  b0c03a:	c5 d4 5c db          	vsubps ymm3,ymm5,ymm3
  b0c03e:	c5 e4 59 de          	vmulps ymm3,ymm3,ymm6
  b0c042:	c4 c1 34 58 e8       	vaddps ymm5,ymm9,ymm8
  b0c047:	c5 d4 59 fe          	vmulps ymm7,ymm5,ymm6
  b0c04b:	62 61 64 28 5c ff    	vsubps ymm31,ymm3,ymm7
  b0c051:	62 11 04 28 58 c7    	vaddps ymm8,ymm15,ymm31
  b0c057:	62 a1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm19
  b0c05d:	62 81 24 20 5c dc    	vsubps ymm19,ymm27,ymm28
  b0c063:	62 b1 6c 20 58 eb    	vaddps ymm5,ymm18,ymm19
  b0c069:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b0c06f:	62 a1 4c 20 5c ed    	vsubps ymm21,ymm22,ymm21
  b0c075:	62 11 54 20 58 e8    	vaddps ymm13,ymm21,ymm24
  b0c07b:	c4 41 24 5c de       	vsubps ymm11,ymm11,ymm14
  b0c080:	c5 e4 58 df          	vaddps ymm3,ymm3,ymm7
  b0c084:	c5 a4 58 fb          	vaddps ymm7,ymm11,ymm3
  b0c088:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b0c08d:	62 c1 7c 20 5c f4    	vsubps ymm22,ymm16,ymm12
  b0c093:	62 31 6c 28 58 f6    	vaddps ymm14,ymm2,ymm22
  b0c099:	62 31 5c 20 5c d7    	vsubps ymm10,ymm20,ymm23
  b0c09f:	62 81 2c 20 5c c5    	vsubps ymm16,ymm26,ymm29
  b0c0a5:	62 31 0c 20 5c c9    	vsubps ymm9,ymm30,ymm17
  b0c0ab:	62 11 04 28 5c ff    	vsubps ymm15,ymm15,ymm31
  b0c0b1:	62 31 6c 20 5c e3    	vsubps ymm12,ymm18,ymm19
  b0c0b7:	62 a1 3c 20 5c cd    	vsubps ymm17,ymm24,ymm21
  b0c0bd:	c5 24 5c db          	vsubps ymm11,ymm11,ymm3
  b0c0c1:	62 a1 6c 28 5c d6    	vsubps ymm18,ymm2,ymm22
  b0c0c7:	c4 c3 75 18 d2 01    	vinsertf128 ymm2,ymm1,xmm10,0x1
  b0c0cd:	c4 c3 5d 18 d9 01    	vinsertf128 ymm3,ymm4,xmm9,0x1
  b0c0d3:	62 c3 55 28 18 dc 01 	vinsertf32x4 ymm19,ymm5,xmm12,0x1
  b0c0da:	62 c3 45 28 18 e3 01 	vinsertf32x4 ymm20,ymm7,xmm11,0x1
  b0c0e1:	62 a1 ed 28 14 eb    	vunpcklpd ymm21,ymm2,ymm19
  b0c0e7:	62 b1 ed 28 15 d3    	vunpckhpd ymm2,ymm2,ymm19
  b0c0ed:	62 a1 e5 28 14 dc    	vunpcklpd ymm19,ymm3,ymm20
  b0c0f3:	62 b1 e5 28 15 dc    	vunpckhpd ymm3,ymm3,ymm20
  b0c0f9:	62 a1 54 20 c6 e3 dd 	vshufps ymm20,ymm21,ymm19,0xdd
  b0c100:	62 e1 6c 28 c6 f3 88 	vshufps ymm22,ymm2,ymm3,0x88
  b0c107:	62 e1 6c 28 c6 fb dd 	vshufps ymm23,ymm2,ymm3,0xdd
  b0c10e:	62 b3 7d 28 18 d0 01 	vinsertf32x4 ymm2,ymm0,xmm16,0x1
  b0c115:	c4 c3 3d 18 df 01    	vinsertf128 ymm3,ymm8,xmm15,0x1
  b0c11b:	62 23 15 28 18 c1 01 	vinsertf32x4 ymm24,ymm13,xmm17,0x1
  b0c122:	62 23 0d 28 18 ca 01 	vinsertf32x4 ymm25,ymm14,xmm18,0x1
  b0c129:	62 01 ed 28 14 d0    	vunpcklpd ymm26,ymm2,ymm24
  b0c12f:	62 91 ed 28 15 d0    	vunpckhpd ymm2,ymm2,ymm24
  b0c135:	62 01 e5 28 14 c1    	vunpcklpd ymm24,ymm3,ymm25
  b0c13b:	62 91 e5 28 15 d9    	vunpckhpd ymm3,ymm3,ymm25
  b0c141:	62 01 2c 20 c6 c8 dd 	vshufps ymm25,ymm26,ymm24,0xdd
  b0c148:	62 61 6c 28 c6 db 88 	vshufps ymm27,ymm2,ymm3,0x88
  b0c14f:	62 61 6c 28 c6 e3 dd 	vshufps ymm28,ymm2,ymm3,0xdd
  b0c156:	62 01 2c 20 c6 c0 88 	vshufps ymm24,ymm26,ymm24,0x88
  b0c15d:	62 a1 54 20 c6 db 88 	vshufps ymm19,ymm21,ymm19,0x88
  b0c164:	c5 fc 28 15 b4 ab 56 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff56abb4]        # 76d20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4300>
  b0c16b:	ff 
  b0c16c:	62 a1 7c 28 28 eb    	vmovaps ymm21,ymm19
  b0c172:	62 82 6d 28 7f e8    	vpermt2ps ymm21,ymm2,ymm24
  b0c178:	c5 fc 28 1d 60 b6 56 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff56b660]        # 777e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4dc0>
  b0c17f:	ff 
  b0c180:	62 82 65 28 7f d8    	vpermt2ps ymm19,ymm3,ymm24
  b0c186:	62 e1 7c 28 29 5c 24 	vmovaps YMMWORD PTR [rsp+0x140],ymm19
  b0c18d:	0a 
  b0c18e:	62 e1 7c 28 29 6c 24 	vmovaps YMMWORD PTR [rsp+0x160],ymm21
  b0c195:	0b 
  b0c196:	62 a1 7c 28 28 dc    	vmovaps ymm19,ymm20
  b0c19c:	62 82 6d 28 7f d9    	vpermt2ps ymm19,ymm2,ymm25
  b0c1a2:	62 82 65 28 7f e1    	vpermt2ps ymm20,ymm3,ymm25
  b0c1a8:	62 e1 7c 28 29 64 24 	vmovaps YMMWORD PTR [rsp+0x180],ymm20
  b0c1af:	0c 
  b0c1b0:	62 e1 7c 28 29 5c 24 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm19
  b0c1b7:	0d 
  b0c1b8:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b0c1be:	62 82 6d 28 7f db    	vpermt2ps ymm19,ymm2,ymm27
  b0c1c4:	62 82 65 28 7f f3    	vpermt2ps ymm22,ymm3,ymm27
  b0c1ca:	62 e1 7c 28 29 74 24 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm22
  b0c1d1:	0e 
  b0c1d2:	62 e1 7c 28 29 5c 24 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm19
  b0c1d9:	0f 
  b0c1da:	62 a1 7c 28 28 df    	vmovaps ymm19,ymm23
  b0c1e0:	62 82 6d 28 7f dc    	vpermt2ps ymm19,ymm2,ymm28
  b0c1e6:	62 82 65 28 7f fc    	vpermt2ps ymm23,ymm3,ymm28
  b0c1ec:	62 e1 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0x200],ymm23
  b0c1f3:	10 
  b0c1f4:	62 e1 7c 28 29 5c 24 	vmovaps YMMWORD PTR [rsp+0x220],ymm19
  b0c1fb:	11 
  b0c1fc:	62 a3 fd 28 23 c0 03 	vshuff64x2 ymm16,ymm0,ymm16,0x3
  b0c203:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b0c20a:	62 c1 fd 20 15 cd    	vunpckhpd ymm17,ymm16,ymm13
  b0c210:	c4 43 3d 06 c7 31    	vperm2f128 ymm8,ymm8,ymm15,0x31
  b0c216:	62 33 8d 28 23 f2 03 	vshuff64x2 ymm14,ymm14,ymm18,0x3
  b0c21d:	c4 41 3d 15 fe       	vunpckhpd ymm15,ymm8,ymm14
  b0c222:	62 c1 74 20 c6 d7 dd 	vshufps ymm18,ymm17,ymm15,0xdd
  b0c229:	62 b1 6c 20 c6 c2 d8 	vshufps ymm0,ymm18,ymm18,0xd8
  b0c230:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  b0c237:	00 00 
  b0c239:	62 51 74 20 c6 ff 88 	vshufps ymm15,ymm17,ymm15,0x88
  b0c240:	62 51 fd 20 14 ed    	vunpcklpd ymm13,ymm16,ymm13
  b0c246:	c4 41 3d 14 c6       	vunpcklpd ymm8,ymm8,ymm14
  b0c24b:	c4 41 14 c6 f0 dd    	vshufps ymm14,ymm13,ymm8,0xdd
  b0c251:	c4 41 14 c6 c0 88    	vshufps ymm8,ymm13,ymm8,0x88
  b0c257:	c4 43 75 06 d2 31    	vperm2f128 ymm10,ymm1,ymm10,0x31
  b0c25d:	c4 c3 55 06 ec 31    	vperm2f128 ymm5,ymm5,ymm12,0x31
  b0c263:	c5 2d 15 e5          	vunpckhpd ymm12,ymm10,ymm5
  b0c267:	c4 c3 5d 06 e1 31    	vperm2f128 ymm4,ymm4,ymm9,0x31
  b0c26d:	c4 c3 45 06 fb 31    	vperm2f128 ymm7,ymm7,ymm11,0x31
  b0c273:	c5 5d 15 cf          	vunpckhpd ymm9,ymm4,ymm7
  b0c277:	c4 41 1c c6 d9 dd    	vshufps ymm11,ymm12,ymm9,0xdd
  b0c27d:	c4 c1 24 c6 cb d8    	vshufps ymm1,ymm11,ymm11,0xd8
  b0c283:	c4 41 1c c6 c9 88    	vshufps ymm9,ymm12,ymm9,0x88
  b0c289:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b0c28f:	c5 ad 14 ed          	vunpcklpd ymm5,ymm10,ymm5
  b0c293:	c5 dd 14 e7          	vunpcklpd ymm4,ymm4,ymm7
  b0c297:	c5 d4 c6 fc dd       	vshufps ymm7,ymm5,ymm4,0xdd
  b0c29c:	c5 d4 c6 e4 88       	vshufps ymm4,ymm5,ymm4,0x88
  b0c2a1:	c5 fc 28 ec          	vmovaps ymm5,ymm4
  b0c2a5:	62 d2 6d 28 7f e8    	vpermt2ps ymm5,ymm2,ymm8
  b0c2ab:	62 d2 65 28 7f e0    	vpermt2ps ymm4,ymm3,ymm8
  b0c2b1:	c5 fc 29 a4 24 40 02 	vmovaps YMMWORD PTR [rsp+0x240],ymm4
  b0c2b8:	00 00 
  b0c2ba:	c5 fc 29 ac 24 60 02 	vmovaps YMMWORD PTR [rsp+0x260],ymm5
  b0c2c1:	00 00 
  b0c2c3:	c5 fc 28 e7          	vmovaps ymm4,ymm7
  b0c2c7:	62 d2 6d 28 7f e6    	vpermt2ps ymm4,ymm2,ymm14
  b0c2cd:	62 d2 65 28 7f fe    	vpermt2ps ymm7,ymm3,ymm14
  b0c2d3:	c5 fc 29 bc 24 80 02 	vmovaps YMMWORD PTR [rsp+0x280],ymm7
  b0c2da:	00 00 
  b0c2dc:	c5 fc 29 a4 24 a0 02 	vmovaps YMMWORD PTR [rsp+0x2a0],ymm4
  b0c2e3:	00 00 
  b0c2e5:	c5 fc 28 25 d3 c5 56 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff56c5d3]        # 788c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5ea0>
  b0c2ec:	ff 
  b0c2ed:	c4 c2 5d 16 e7       	vpermps ymm4,ymm4,ymm15
  b0c2f2:	c4 63 7d 19 e5 01    	vextractf128 xmm5,ymm12,0x1
  b0c2f8:	c4 e2 7d 35 ed       	vpmovzxdq ymm5,xmm5
  b0c2fd:	c4 e3 55 02 fc aa    	vpblendd ymm7,ymm5,ymm4,0xaa
  b0c303:	62 52 65 28 7f cf    	vpermt2ps ymm9,ymm3,ymm15
  b0c309:	c5 7c 29 8c 24 c0 02 	vmovaps YMMWORD PTR [rsp+0x2c0],ymm9
  b0c310:	00 00 
  b0c312:	c5 fd 7f bc 24 e0 02 	vmovdqa YMMWORD PTR [rsp+0x2e0],ymm7
  b0c319:	00 00 
  b0c31b:	c5 7c 29 df          	vmovaps ymm7,ymm11
  b0c31f:	62 b2 6d 28 7f fa    	vpermt2ps ymm7,ymm2,ymm18
  b0c325:	62 32 65 28 7f da    	vpermt2ps ymm11,ymm3,ymm18
  b0c32b:	c5 7c 29 9c 24 00 03 	vmovaps YMMWORD PTR [rsp+0x300],ymm11
  b0c332:	00 00 
  b0c334:	c5 fc 29 bc 24 20 03 	vmovaps YMMWORD PTR [rsp+0x320],ymm7
  b0c33b:	00 00 
  b0c33d:	c5 f8 10 7f 40       	vmovups xmm7,XMMWORD PTR [rdi+0x40]
  b0c342:	c5 78 10 4f 50       	vmovups xmm9,XMMWORD PTR [rdi+0x50]
  b0c347:	c5 78 10 97 a0 00 00 	vmovups xmm10,XMMWORD PTR [rdi+0xa0]
  b0c34e:	00 
  b0c34f:	c5 78 10 9f b0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xb0]
  b0c356:	00 
  b0c357:	c4 41 40 c6 c1 88    	vshufps xmm8,xmm7,xmm9,0x88
  b0c35d:	c4 c1 40 c6 f9 dd    	vshufps xmm7,xmm7,xmm9,0xdd
  b0c363:	c4 41 28 c6 cb 88    	vshufps xmm9,xmm10,xmm11,0x88
  b0c369:	c4 41 28 c6 e3 dd    	vshufps xmm12,xmm10,xmm11,0xdd
  b0c36f:	c5 78 10 97 10 01 00 	vmovups xmm10,XMMWORD PTR [rdi+0x110]
  b0c376:	00 
  b0c377:	c5 78 10 9f 00 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x100]
  b0c37e:	00 
  b0c37f:	c4 41 20 c6 ea 88    	vshufps xmm13,xmm11,xmm10,0x88
  b0c385:	c4 41 20 c6 d2 dd    	vshufps xmm10,xmm11,xmm10,0xdd
  b0c38b:	c5 78 10 9f 70 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x170]
  b0c392:	00 
  b0c393:	c5 78 10 b7 60 01 00 	vmovups xmm14,XMMWORD PTR [rdi+0x160]
  b0c39a:	00 
  b0c39b:	c4 41 08 c6 fb 88    	vshufps xmm15,xmm14,xmm11,0x88
  b0c3a1:	c4 41 08 c6 f3 dd    	vshufps xmm14,xmm14,xmm11,0xdd
  b0c3a7:	c5 78 10 9f d0 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x1d0]
  b0c3ae:	00 
  b0c3af:	62 e1 7c 08 10 47 1c 	vmovups xmm16,XMMWORD PTR [rdi+0x1c0]
  b0c3b6:	62 c1 7c 00 c6 cb 88 	vshufps xmm17,xmm16,xmm11,0x88
  b0c3bd:	62 c1 7c 00 c6 c3 dd 	vshufps xmm16,xmm16,xmm11,0xdd
  b0c3c4:	c5 78 10 9f 30 02 00 	vmovups xmm11,XMMWORD PTR [rdi+0x230]
  b0c3cb:	00 
  b0c3cc:	62 e1 7c 08 10 57 22 	vmovups xmm18,XMMWORD PTR [rdi+0x220]
  b0c3d3:	62 c1 6c 00 c6 db 88 	vshufps xmm19,xmm18,xmm11,0x88
  b0c3da:	62 c1 6c 00 c6 d3 dd 	vshufps xmm18,xmm18,xmm11,0xdd
  b0c3e1:	c5 78 10 9f 90 02 00 	vmovups xmm11,XMMWORD PTR [rdi+0x290]
  b0c3e8:	00 
  b0c3e9:	62 e1 7c 08 10 67 28 	vmovups xmm20,XMMWORD PTR [rdi+0x280]
  b0c3f0:	62 c1 5c 00 c6 eb 88 	vshufps xmm21,xmm20,xmm11,0x88
  b0c3f7:	62 c1 5c 00 c6 e3 dd 	vshufps xmm20,xmm20,xmm11,0xdd
  b0c3fe:	c5 78 10 9f f0 02 00 	vmovups xmm11,XMMWORD PTR [rdi+0x2f0]
  b0c405:	00 
  b0c406:	62 e1 7c 08 10 77 2e 	vmovups xmm22,XMMWORD PTR [rdi+0x2e0]
  b0c40d:	62 c1 4c 00 c6 fb 88 	vshufps xmm23,xmm22,xmm11,0x88
  b0c414:	62 c1 4c 00 c6 f3 dd 	vshufps xmm22,xmm22,xmm11,0xdd
  b0c41b:	62 21 44 28 58 c0    	vaddps ymm24,ymm7,ymm16
  b0c421:	62 21 2c 28 58 cc    	vaddps ymm25,ymm10,ymm20
  b0c427:	62 11 3c 20 58 d9    	vaddps ymm11,ymm24,ymm25
  b0c42d:	62 21 1c 28 58 d2    	vaddps ymm26,ymm12,ymm18
  b0c433:	62 21 0c 28 58 de    	vaddps ymm27,ymm14,ymm22
  b0c439:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b0c43f:	62 01 24 28 58 ec    	vaddps ymm29,ymm11,ymm28
  b0c445:	62 21 3c 28 58 f1    	vaddps ymm30,ymm8,ymm17
  b0c44b:	62 21 14 28 58 fd    	vaddps ymm31,ymm13,ymm21
  b0c451:	62 a1 44 28 5c c0    	vsubps ymm16,ymm7,ymm16
  b0c457:	62 91 0c 20 58 ff    	vaddps ymm7,ymm30,ymm31
  b0c45d:	62 31 14 28 5c ed    	vsubps ymm13,ymm13,ymm21
  b0c463:	62 a1 34 28 58 eb    	vaddps ymm21,ymm9,ymm19
  b0c469:	62 a1 1c 28 5c d2    	vsubps ymm18,ymm12,ymm18
  b0c46f:	62 b1 04 28 58 c7    	vaddps ymm0,ymm15,ymm23
  b0c475:	62 a1 34 28 5c db    	vsubps ymm19,ymm9,ymm19
  b0c47b:	62 71 54 20 58 c8    	vaddps ymm9,ymm21,ymm0
  b0c481:	62 31 04 28 5c ff    	vsubps ymm15,ymm15,ymm23
  b0c487:	c5 34 58 e7          	vaddps ymm12,ymm9,ymm7
  b0c48b:	62 31 0c 28 5c f6    	vsubps ymm14,ymm14,ymm22
  b0c491:	62 c1 7c 20 58 f5    	vaddps ymm22,ymm16,ymm13
  b0c497:	62 31 3c 28 5c c1    	vsubps ymm8,ymm8,ymm17
  b0c49d:	62 a1 6c 20 58 cb    	vaddps ymm17,ymm18,ymm19
  b0c4a3:	62 e1 74 20 59 ce    	vmulps ymm17,ymm17,ymm6
  b0c4a9:	62 51 5c 20 5c d2    	vsubps ymm10,ymm20,ymm10
  b0c4af:	62 c1 04 28 5c e6    	vsubps ymm20,ymm15,ymm14
  b0c4b5:	62 e1 5c 20 59 e6    	vmulps ymm20,ymm20,ymm6
  b0c4bb:	62 a1 64 20 5c d2    	vsubps ymm18,ymm19,ymm18
  b0c4c1:	62 a1 74 20 58 dc    	vaddps ymm19,ymm17,ymm20
  b0c4c7:	c4 41 0c 58 f7       	vaddps ymm14,ymm14,ymm15
  b0c4cc:	62 31 4c 20 58 fb    	vaddps ymm15,ymm22,ymm19
  b0c4d2:	62 e1 6c 20 59 d6    	vmulps ymm18,ymm18,ymm6
  b0c4d8:	c5 8c 59 f6          	vmulps ymm6,ymm14,ymm6
  b0c4dc:	c4 41 2c 58 f0       	vaddps ymm14,ymm10,ymm8
  b0c4e1:	62 81 3c 20 5c f9    	vsubps ymm23,ymm24,ymm25
  b0c4e7:	62 61 6c 20 5c c6    	vsubps ymm24,ymm18,ymm6
  b0c4ed:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  b0c4f3:	62 81 0c 28 58 e8    	vaddps ymm21,ymm14,ymm24
  b0c4f9:	62 01 0c 20 5c cf    	vsubps ymm25,ymm30,ymm31
  b0c4ff:	62 61 44 20 58 f0    	vaddps ymm30,ymm23,ymm0
  b0c505:	62 01 24 20 5c d2    	vsubps ymm26,ymm27,ymm26
  b0c50b:	62 01 2c 20 58 d9    	vaddps ymm27,ymm26,ymm25
  b0c511:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  b0c517:	62 f1 6c 20 58 f6    	vaddps ymm6,ymm18,ymm6
  b0c51d:	62 e1 14 28 58 c6    	vaddps ymm16,ymm13,ymm6
  b0c523:	c4 41 3c 5c d2       	vsubps ymm10,ymm8,ymm10
  b0c528:	62 a1 5c 20 5c c9    	vsubps ymm17,ymm20,ymm17
  b0c52e:	62 a1 2c 28 58 d1    	vaddps ymm18,ymm10,ymm17
  b0c534:	62 11 24 08 5c c4    	vsubps xmm8,xmm11,xmm28
  b0c53a:	62 53 15 20 18 c0 01 	vinsertf32x4 ymm8,ymm29,xmm8,0x1
  b0c541:	62 31 4c 00 5c db    	vsubps xmm11,xmm22,xmm19
  b0c547:	c4 43 05 18 db 01    	vinsertf128 ymm11,ymm15,xmm11,0x1
  b0c54d:	62 f1 44 00 5c c0    	vsubps xmm0,xmm23,xmm0
  b0c553:	62 f3 0d 20 18 c0 01 	vinsertf32x4 ymm0,ymm30,xmm0,0x1
  b0c55a:	c5 90 5c f6          	vsubps xmm6,xmm13,xmm6
  b0c55e:	62 f3 7d 20 18 f6 01 	vinsertf32x4 ymm6,ymm16,xmm6,0x1
  b0c565:	c5 3d 14 e8          	vunpcklpd ymm13,ymm8,ymm0
  b0c569:	c5 bd 15 c0          	vunpckhpd ymm0,ymm8,ymm0
  b0c56d:	c5 25 14 fe          	vunpcklpd ymm15,ymm11,ymm6
  b0c571:	c5 a5 15 f6          	vunpckhpd ymm6,ymm11,ymm6
  b0c575:	62 c1 14 28 c6 c7 dd 	vshufps ymm16,ymm13,ymm15,0xdd
  b0c57c:	62 31 7c 20 c6 d8 d8 	vshufps ymm11,ymm16,ymm16,0xd8
  b0c583:	62 e1 7c 28 c6 de 88 	vshufps ymm19,ymm0,ymm6,0x88
  b0c58a:	62 31 64 20 c6 c3 d8 	vshufps ymm8,ymm19,ymm19,0xd8
  b0c591:	c5 fc c6 c6 dd       	vshufps ymm0,ymm0,ymm6,0xdd
  b0c596:	c5 fc c6 f0 d8       	vshufps ymm6,ymm0,ymm0,0xd8
  b0c59b:	c5 fc 29 b4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm6
  b0c5a2:	00 00 
  b0c5a4:	c4 c1 40 5c f9       	vsubps xmm7,xmm7,xmm9
  b0c5a9:	c4 e3 1d 18 ff 01    	vinsertf128 ymm7,ymm12,xmm7,0x1
  b0c5af:	62 11 0c 08 5c c8    	vsubps xmm9,xmm14,xmm24
  b0c5b5:	62 53 55 20 18 c9 01 	vinsertf32x4 ymm9,ymm21,xmm9,0x1
  b0c5bc:	62 11 34 00 5c e2    	vsubps xmm12,xmm25,xmm26
  b0c5c2:	62 53 25 20 18 e4 01 	vinsertf32x4 ymm12,ymm27,xmm12,0x1
  b0c5c9:	62 31 2c 08 5c d1    	vsubps xmm10,xmm10,xmm17
  b0c5cf:	62 53 6d 20 18 d2 01 	vinsertf32x4 ymm10,ymm18,xmm10,0x1
  b0c5d6:	c4 41 45 14 f4       	vunpcklpd ymm14,ymm7,ymm12
  b0c5db:	c4 c1 45 15 fc       	vunpckhpd ymm7,ymm7,ymm12
  b0c5e0:	62 c1 b5 28 14 d2    	vunpcklpd ymm18,ymm9,ymm10
  b0c5e6:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  b0c5eb:	62 a1 0c 28 c6 e2 dd 	vshufps ymm20,ymm14,ymm18,0xdd
  b0c5f2:	62 a1 5c 20 c6 cc d8 	vshufps ymm17,ymm20,ymm20,0xd8
  b0c5f9:	62 c1 44 28 c6 e9 88 	vshufps ymm21,ymm7,ymm9,0x88
  b0c600:	62 31 54 20 c6 e5 d8 	vshufps ymm12,ymm21,ymm21,0xd8
  b0c607:	62 c1 44 28 c6 f1 dd 	vshufps ymm22,ymm7,ymm9,0xdd
  b0c60e:	62 b1 4c 20 c6 f6 d8 	vshufps ymm6,ymm22,ymm22,0xd8
  b0c615:	c5 fc 29 b4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm6
  b0c61c:	00 00 
  b0c61e:	62 31 0c 28 c6 f2 88 	vshufps ymm14,ymm14,ymm18,0x88
  b0c625:	c4 41 0c c6 d6 d8    	vshufps ymm10,ymm14,ymm14,0xd8
  b0c62b:	c4 41 14 c6 ef 88    	vshufps ymm13,ymm13,ymm15,0x88
  b0c631:	c4 c1 14 c6 f5 d8    	vshufps ymm6,ymm13,ymm13,0xd8
  b0c637:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  b0c63d:	c4 41 7c 28 fd       	vmovaps ymm15,ymm13
  b0c642:	62 52 6d 28 7f fe    	vpermt2ps ymm15,ymm2,ymm14
  b0c648:	62 52 65 28 7f ee    	vpermt2ps ymm13,ymm3,ymm14
  b0c64e:	c5 7c 29 ac 24 40 03 	vmovaps YMMWORD PTR [rsp+0x340],ymm13
  b0c655:	00 00 
  b0c657:	c5 7c 29 bc 24 60 03 	vmovaps YMMWORD PTR [rsp+0x360],ymm15
  b0c65e:	00 00 
  b0c660:	62 31 7c 28 28 e8    	vmovaps ymm13,ymm16
  b0c666:	62 32 6d 28 7f ec    	vpermt2ps ymm13,ymm2,ymm20
  b0c66c:	62 a2 65 28 7f c4    	vpermt2ps ymm16,ymm3,ymm20
  b0c672:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x380],ymm16
  b0c679:	1c 
  b0c67a:	c5 7c 29 ac 24 a0 03 	vmovaps YMMWORD PTR [rsp+0x3a0],ymm13
  b0c681:	00 00 
  b0c683:	62 31 7c 28 28 eb    	vmovaps ymm13,ymm19
  b0c689:	62 32 6d 28 7f ed    	vpermt2ps ymm13,ymm2,ymm21
  b0c68f:	62 a2 65 28 7f dd    	vpermt2ps ymm19,ymm3,ymm21
  b0c695:	62 e1 7c 28 29 5c 24 	vmovaps YMMWORD PTR [rsp+0x3c0],ymm19
  b0c69c:	1e 
  b0c69d:	c5 7c 29 ac 24 e0 03 	vmovaps YMMWORD PTR [rsp+0x3e0],ymm13
  b0c6a4:	00 00 
  b0c6a6:	62 b2 7d 28 77 d6    	vpermi2ps ymm2,ymm0,ymm22
  b0c6ac:	62 b2 65 28 7f c6    	vpermt2ps ymm0,ymm3,ymm22
  b0c6b2:	c5 fc 29 84 24 00 04 	vmovaps YMMWORD PTR [rsp+0x400],ymm0
  b0c6b9:	00 00 
  b0c6bb:	c5 fc 29 94 24 20 04 	vmovaps YMMWORD PTR [rsp+0x420],ymm2
  b0c6c2:	00 00 
  b0c6c4:	c5 7c 28 ac 24 40 01 	vmovaps ymm13,YMMWORD PTR [rsp+0x140]
  b0c6cb:	00 00 
  b0c6cd:	c5 7c 28 bc 24 60 01 	vmovaps ymm15,YMMWORD PTR [rsp+0x160]
  b0c6d4:	00 00 
  b0c6d6:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  b0c6dd:	00 00 
  b0c6df:	c5 fc 28 94 24 a0 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x1a0]
  b0c6e6:	00 00 
  b0c6e8:	c5 fc c6 da dd       	vshufps ymm3,ymm0,ymm2,0xdd
  b0c6ed:	62 e3 fd 28 01 db d8 	vpermpd ymm19,ymm3,0xd8
  b0c6f4:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  b0c6f9:	62 e3 fd 28 01 d0 d8 	vpermpd ymm18,ymm0,0xd8
  b0c700:	c5 fc 28 84 24 c0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1c0]
  b0c707:	00 00 
  b0c709:	c5 fc 28 94 24 e0 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x1e0]
  b0c710:	00 00 
  b0c712:	c5 fc c6 da dd       	vshufps ymm3,ymm0,ymm2,0xdd
  b0c717:	c4 e3 fd 01 f3 d8    	vpermpd ymm6,ymm3,0xd8
  b0c71d:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  b0c722:	c4 e3 fd 01 f8 d8    	vpermpd ymm7,ymm0,0xd8
  b0c728:	62 e1 7c 28 10 6a 02 	vmovups ymm21,YMMWORD PTR [rdx+0x40]
  b0c72f:	62 e1 7c 28 10 62 03 	vmovups ymm20,YMMWORD PTR [rdx+0x60]
  b0c736:	62 e1 7c 28 10 42 04 	vmovups ymm16,YMMWORD PTR [rdx+0x80]
  b0c73d:	c5 7c 10 b2 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xa0]
  b0c744:	00 
  b0c745:	c5 fc 28 84 24 00 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x200]
  b0c74c:	00 00 
  b0c74e:	62 e1 7c 28 28 74 24 	vmovaps ymm22,YMMWORD PTR [rsp+0x220]
  b0c755:	11 
  b0c756:	62 a1 7c 28 c6 fe dd 	vshufps ymm23,ymm0,ymm22,0xdd
  b0c75d:	62 23 fd 28 01 df d8 	vpermpd ymm27,ymm23,0xd8
  b0c764:	62 b1 7c 28 c6 c6 88 	vshufps ymm0,ymm0,ymm22,0x88
  b0c76b:	62 e3 fd 28 01 f8 d8 	vpermpd ymm23,ymm0,0xd8
  b0c772:	62 61 7c 28 10 6a 06 	vmovups ymm29,YMMWORD PTR [rdx+0xc0]
  b0c779:	62 61 7c 28 10 62 07 	vmovups ymm28,YMMWORD PTR [rdx+0xe0]
  b0c780:	c5 fc 28 84 24 40 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x240]
  b0c787:	00 00 
  b0c789:	62 e1 7c 28 28 74 24 	vmovaps ymm22,YMMWORD PTR [rsp+0x260]
  b0c790:	13 
  b0c791:	62 21 7c 28 c6 c6 dd 	vshufps ymm24,ymm0,ymm22,0xdd
  b0c798:	62 03 fd 28 01 c8 d8 	vpermpd ymm25,ymm24,0xd8
  b0c79f:	62 b1 7c 28 c6 c6 88 	vshufps ymm0,ymm0,ymm22,0x88
  b0c7a6:	62 63 fd 28 01 c0 d8 	vpermpd ymm24,ymm0,0xd8
  b0c7ad:	62 61 7c 28 10 52 08 	vmovups ymm26,YMMWORD PTR [rdx+0x100]
  b0c7b4:	c5 fc 28 84 24 c0 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x2c0]
  b0c7bb:	00 00 
  b0c7bd:	c5 fc c6 e4 dd       	vshufps ymm4,ymm0,ymm4,0xdd
  b0c7c2:	62 e3 fd 28 01 f4 d8 	vpermpd ymm22,ymm4,0xd8
  b0c7c9:	c5 fc c6 c5 88       	vshufps ymm0,ymm0,ymm5,0x88
  b0c7ce:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b0c7d4:	c5 fc 10 aa 80 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x180]
  b0c7db:	00 
  b0c7dc:	62 61 7c 28 10 72 0d 	vmovups ymm30,YMMWORD PTR [rdx+0x1a0]
  b0c7e3:	c5 7c 59 cd          	vmulps ymm9,ymm0,ymm5
  b0c7e7:	62 12 4d 20 bc ce    	vfnmadd231ps ymm9,ymm22,ymm30
  b0c7ed:	62 f1 4c 20 59 ed    	vmulps ymm5,ymm22,ymm5
  b0c7f3:	62 e1 7c 28 28 74 24 	vmovaps ymm22,YMMWORD PTR [rsp+0x280]
  b0c7fa:	14 
  b0c7fb:	62 92 7d 28 b8 ee    	vfmadd231ps ymm5,ymm0,ymm30
  b0c801:	c5 fc 28 84 24 a0 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x2a0]
  b0c808:	00 00 
  b0c80a:	62 61 4c 20 c6 f0 dd 	vshufps ymm30,ymm22,ymm0,0xdd
  b0c811:	62 f1 4c 20 c6 c0 88 	vshufps ymm0,ymm22,ymm0,0x88
  b0c818:	62 81 44 20 59 f5    	vmulps ymm22,ymm23,ymm29
  b0c81e:	62 82 25 20 bc f4    	vfnmadd231ps ymm22,ymm27,ymm28
  b0c824:	62 01 24 20 59 dd    	vmulps ymm27,ymm27,ymm29
  b0c82a:	62 61 7c 28 10 6a 12 	vmovups ymm29,YMMWORD PTR [rdx+0x240]
  b0c831:	62 02 45 20 b8 dc    	vfmadd231ps ymm27,ymm23,ymm28
  b0c837:	62 61 7c 28 10 62 13 	vmovups ymm28,YMMWORD PTR [rdx+0x260]
  b0c83e:	62 81 24 28 59 fd    	vmulps ymm23,ymm11,ymm29
  b0c844:	62 82 75 20 bc fc    	vfnmadd231ps ymm23,ymm17,ymm28
  b0c84a:	62 81 74 20 59 cd    	vmulps ymm17,ymm17,ymm29
  b0c850:	62 61 7c 28 10 7a 09 	vmovups ymm31,YMMWORD PTR [rdx+0x120]
  b0c857:	62 03 fd 28 01 f6 d8 	vpermpd ymm30,ymm30,0xd8
  b0c85e:	62 63 fd 28 01 e8 d8 	vpermpd ymm29,ymm0,0xd8
  b0c865:	62 82 25 28 b8 cc    	vfmadd231ps ymm17,ymm11,ymm28
  b0c86b:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  b0c872:	00 
  b0c873:	62 01 3c 20 59 e2    	vmulps ymm28,ymm24,ymm26
  b0c879:	62 02 35 20 bc e7    	vfnmadd231ps ymm28,ymm25,ymm31
  b0c87f:	62 11 34 20 59 da    	vmulps ymm11,ymm25,ymm26
  b0c885:	62 61 7c 28 10 4a 14 	vmovups ymm25,YMMWORD PTR [rdx+0x280]
  b0c88c:	62 12 3d 20 b8 df    	vfmadd231ps ymm11,ymm24,ymm31
  b0c892:	62 61 7c 28 10 42 15 	vmovups ymm24,YMMWORD PTR [rdx+0x2a0]
  b0c899:	62 01 3c 28 59 d1    	vmulps ymm26,ymm8,ymm25
  b0c89f:	62 02 1d 28 bc d0    	vfnmadd231ps ymm26,ymm12,ymm24
  b0c8a5:	62 11 1c 28 59 e1    	vmulps ymm12,ymm12,ymm25
  b0c8ab:	62 61 7c 28 10 4a 0e 	vmovups ymm25,YMMWORD PTR [rdx+0x1c0]
  b0c8b2:	62 12 3d 28 b8 e0    	vfmadd231ps ymm12,ymm8,ymm24
  b0c8b8:	62 61 7c 28 10 42 0f 	vmovups ymm24,YMMWORD PTR [rdx+0x1e0]
  b0c8bf:	62 11 74 28 59 c1    	vmulps ymm8,ymm1,ymm25
  b0c8c5:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  b0c8cc:	00 00 
  b0c8ce:	62 12 7d 28 bc c0    	vfnmadd231ps ymm8,ymm0,ymm24
  b0c8d4:	62 01 7c 28 59 c9    	vmulps ymm25,ymm0,ymm25
  b0c8da:	62 61 7c 28 10 7a 0b 	vmovups ymm31,YMMWORD PTR [rdx+0x160]
  b0c8e1:	62 02 75 28 b8 c8    	vfmadd231ps ymm25,ymm1,ymm24
  b0c8e7:	c5 fc 10 8a 00 02 00 	vmovups ymm1,YMMWORD PTR [rdx+0x200]
  b0c8ee:	00 
  b0c8ef:	62 21 6c 20 59 c5    	vmulps ymm24,ymm18,ymm21
  b0c8f5:	62 22 65 20 bc c4    	vfnmadd231ps ymm24,ymm19,ymm20
  b0c8fb:	62 a1 64 20 59 dd    	vmulps ymm19,ymm19,ymm21
  b0c901:	62 e1 7c 28 10 6a 11 	vmovups ymm21,YMMWORD PTR [rdx+0x220]
  b0c908:	62 a2 6d 20 b8 dc    	vfmadd231ps ymm19,ymm18,ymm20
  b0c90e:	62 e1 7c 28 10 52 16 	vmovups ymm18,YMMWORD PTR [rdx+0x2c0]
  b0c915:	62 c1 14 28 c6 e7 dd 	vshufps ymm20,ymm13,ymm15,0xdd
  b0c91c:	c4 41 14 c6 ef 88    	vshufps ymm13,ymm13,ymm15,0x88
  b0c922:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  b0c928:	c5 7c 59 f9          	vmulps ymm15,ymm0,ymm1
  b0c92c:	62 32 2d 28 bc fd    	vfnmadd231ps ymm15,ymm10,ymm21
  b0c932:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  b0c936:	c5 7c 10 92 e0 02 00 	vmovups ymm10,YMMWORD PTR [rdx+0x2e0]
  b0c93d:	00 
  b0c93e:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b0c945:	c4 c3 fd 01 d5 d8    	vpermpd ymm2,ymm13,0xd8
  b0c94b:	62 b2 7d 28 b8 cd    	vfmadd231ps ymm1,ymm0,ymm21
  b0c951:	c5 b4 58 e2          	vaddps ymm4,ymm9,ymm2
  b0c955:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  b0c95b:	62 b1 44 28 59 c0    	vmulps ymm0,ymm7,ymm16
  b0c961:	c4 c2 4d bc c6       	vfnmadd231ps ymm0,ymm6,ymm14
  b0c966:	62 b1 4c 28 59 f0    	vmulps ymm6,ymm6,ymm16
  b0c96c:	62 a1 4c 20 58 ef    	vaddps ymm21,ymm22,ymm23
  b0c972:	c4 c2 45 b8 f6       	vfmadd231ps ymm6,ymm7,ymm14
  b0c977:	62 b1 5c 28 58 e5    	vaddps ymm4,ymm4,ymm21
  b0c97d:	c5 fc 29 a4 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm4
  b0c984:	00 00 
  b0c986:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  b0c98d:	00 00 
  b0c98f:	62 b1 5c 28 59 fa    	vmulps ymm7,ymm4,ymm18
  b0c995:	c5 7c 28 b4 24 80 00 	vmovaps ymm14,YMMWORD PTR [rsp+0x80]
  b0c99c:	00 00 
  b0c99e:	c4 c2 0d bc fa       	vfnmadd231ps ymm7,ymm14,ymm10
  b0c9a3:	62 a1 0c 28 59 d2    	vmulps ymm18,ymm14,ymm18
  b0c9a9:	62 11 1c 20 58 f2    	vaddps ymm14,ymm28,ymm26
  b0c9af:	62 c2 5d 28 b8 d2    	vfmadd231ps ymm18,ymm4,ymm10
  b0c9b5:	62 11 3c 28 58 d0    	vaddps ymm10,ymm8,ymm24
  b0c9bb:	62 e1 14 20 59 c3    	vmulps ymm16,ymm29,ymm3
  b0c9c1:	62 82 0d 20 bc c7    	vfnmadd231ps ymm16,ymm30,ymm31
  b0c9c7:	62 f1 0c 20 59 db    	vmulps ymm3,ymm30,ymm3
  b0c9cd:	62 41 0c 28 58 f2    	vaddps ymm30,ymm14,ymm10
  b0c9d3:	62 92 15 20 b8 df    	vfmadd231ps ymm3,ymm29,ymm31
  b0c9d9:	62 61 04 28 58 e8    	vaddps ymm29,ymm15,ymm0
  b0c9df:	62 21 44 28 58 f8    	vaddps ymm31,ymm7,ymm16
  b0c9e5:	62 01 1c 20 5c d2    	vsubps ymm26,ymm28,ymm26
  b0c9eb:	62 b1 34 20 58 e3    	vaddps ymm4,ymm25,ymm19
  b0c9f1:	62 a1 34 20 5c db    	vsubps ymm19,ymm25,ymm19
  b0c9f7:	62 01 14 20 58 e7    	vaddps ymm28,ymm29,ymm31
  b0c9fd:	62 61 04 28 5c c8    	vsubps ymm25,ymm15,ymm0
  b0ca03:	62 f1 6c 20 58 c3    	vaddps ymm0,ymm18,ymm3
  b0ca09:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  b0ca0f:	62 b1 54 28 58 dc    	vaddps ymm3,ymm5,ymm20
  b0ca15:	c4 c1 6c 5c d1       	vsubps ymm2,ymm2,ymm9
  b0ca1a:	62 31 24 20 58 f9    	vaddps ymm15,ymm27,ymm17
  b0ca20:	62 21 24 20 5c d9    	vsubps ymm27,ymm27,ymm17
  b0ca26:	62 c1 24 28 58 cc    	vaddps ymm17,ymm11,ymm12
  b0ca2c:	c4 41 24 5c cc       	vsubps ymm9,ymm11,ymm12
  b0ca31:	c5 74 58 e6          	vaddps ymm12,ymm1,ymm6
  b0ca35:	62 51 3c 20 5c d8    	vsubps ymm11,ymm24,ymm8
  b0ca3b:	c4 41 34 58 c3       	vaddps ymm8,ymm9,ymm11
  b0ca40:	c5 74 5c ee          	vsubps ymm13,ymm1,ymm6
  b0ca44:	62 f1 7c 20 5c f7    	vsubps ymm6,ymm16,ymm7
  b0ca4a:	62 e1 14 28 58 c6    	vaddps ymm16,ymm13,ymm6
  b0ca50:	62 b1 3c 28 5c c8    	vsubps ymm1,ymm8,ymm16
  b0ca56:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b0ca5d:	00 00 
  b0ca5f:	62 b1 3c 28 58 c8    	vaddps ymm1,ymm8,ymm16
  b0ca65:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  b0ca6c:	00 00 
  b0ca6e:	62 31 2c 20 58 c3    	vaddps ymm8,ymm26,ymm19
  b0ca74:	62 e1 5c 20 5c e5    	vsubps ymm20,ymm20,ymm5
  b0ca7a:	62 b1 34 20 58 ea    	vaddps ymm5,ymm25,ymm18
  b0ca80:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  b0ca86:	c5 bc 58 cd          	vaddps ymm1,ymm8,ymm5
  b0ca8a:	c5 fc 29 8c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm1
  b0ca91:	00 00 
  b0ca93:	c5 bc 5c cd          	vsubps ymm1,ymm8,ymm5
  b0ca97:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  b0ca9d:	62 11 0c 20 58 c4    	vaddps ymm8,ymm30,ymm28
  b0caa3:	62 81 7c 28 28 f6    	vmovaps ymm22,ymm30
  b0caa9:	c4 41 0c 5c f2       	vsubps ymm14,ymm14,ymm10
  b0caae:	c5 fc 28 8c 24 e0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  b0cab5:	00 00 
  b0cab7:	c5 bc 58 e9          	vaddps ymm5,ymm8,ymm1
  b0cabb:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  b0cac2:	00 00 
  b0cac4:	62 01 14 20 5c ef    	vsubps ymm29,ymm29,ymm31
  b0caca:	62 61 04 28 58 fb    	vaddps ymm31,ymm15,ymm3
  b0cad0:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  b0cad6:	62 a1 54 28 5c ed    	vsubps ymm21,ymm5,ymm21
  b0cadc:	62 f1 74 20 58 fc    	vaddps ymm7,ymm17,ymm4
  b0cae2:	62 f1 74 20 5c e4    	vsubps ymm4,ymm17,ymm4
  b0cae8:	c5 9c 58 e8          	vaddps ymm5,ymm12,ymm0
  b0caec:	c5 9c 5c c0          	vsubps ymm0,ymm12,ymm0
  b0caf0:	c5 5c 5c d0          	vsubps ymm10,ymm4,ymm0
  b0caf4:	c5 7c 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm10
  b0cafb:	00 00 
  b0cafd:	62 e1 5c 28 58 c8    	vaddps ymm17,ymm4,ymm0
  b0cb03:	c5 44 58 d5          	vaddps ymm10,ymm7,ymm5
  b0cb07:	c4 41 64 5c e7       	vsubps ymm12,ymm3,ymm15
  b0cb0c:	62 91 0c 28 58 e5    	vaddps ymm4,ymm14,ymm29
  b0cb12:	62 01 0c 28 5c ed    	vsubps ymm29,ymm14,ymm29
  b0cb18:	62 01 6c 28 58 c3    	vaddps ymm24,ymm2,ymm27
  b0cb1e:	62 91 6c 28 5c d3    	vsubps ymm2,ymm2,ymm27
  b0cb24:	62 41 04 20 58 f2    	vaddps ymm30,ymm31,ymm10
  b0cb2a:	62 a1 2c 20 5c db    	vsubps ymm19,ymm26,ymm19
  b0cb30:	c4 62 7d 18 3d e7 87 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff5687e7]        # 75320 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2900>
  b0cb37:	56 ff 
  b0cb39:	62 a1 34 20 5c d2    	vsubps ymm18,ymm25,ymm18
  b0cb3f:	62 a1 7c 20 58 fc    	vaddps ymm23,ymm16,ymm20
  b0cb45:	62 a1 5c 20 5c c0    	vsubps ymm16,ymm20,ymm16
  b0cb4b:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b0cb51:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  b0cb56:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  b0cb5b:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  b0cb5f:	62 41 7c 28 28 cf    	vmovaps ymm25,ymm15
  b0cb65:	c4 62 05 ac c1       	vfnmadd213ps ymm8,ymm15,ymm1
  b0cb6a:	62 21 64 20 58 d2    	vaddps ymm26,ymm19,ymm18
  b0cb70:	62 12 05 28 ac d7    	vfnmadd213ps ymm10,ymm15,ymm31
  b0cb76:	62 91 6c 28 58 c2    	vaddps ymm0,ymm2,ymm26
  b0cb7c:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b0cb82:	62 62 05 28 ac d2    	vfnmadd213ps ymm26,ymm15,ymm2
  b0cb88:	62 41 7c 28 28 ff    	vmovaps ymm31,ymm15
  b0cb8e:	c5 b4 58 ce          	vaddps ymm1,ymm9,ymm6
  b0cb92:	62 32 75 28 ac f8    	vfnmadd213ps ymm15,ymm1,ymm16
  b0cb98:	62 61 7c 20 58 d9    	vaddps ymm27,ymm16,ymm1
  b0cb9e:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  b0cba2:	62 e2 7d 28 18 05 e8 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff5685e8]        # 75194 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2774>
  b0cba9:	85 56 ff 
  b0cbac:	c5 7c 28 ac 24 20 01 	vmovaps ymm13,YMMWORD PTR [rsp+0x120]
  b0cbb3:	00 00 
  b0cbb5:	62 82 15 28 ac e0    	vfnmadd213ps ymm20,ymm13,ymm24
  b0cbbb:	62 f1 7c 20 59 4c 24 	vmulps ymm1,ymm16,YMMWORD PTR [rsp+0xa0]
  b0cbc2:	05 
  b0cbc3:	62 01 4c 20 5c e4    	vsubps ymm28,ymm22,ymm28
  b0cbc9:	62 f1 5c 20 58 d9    	vaddps ymm3,ymm20,ymm1
  b0cbcf:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  b0cbd6:	00 00 
  b0cbd8:	62 32 6d 28 ac df    	vfnmadd213ps ymm11,ymm2,ymm23
  b0cbde:	62 f1 7c 20 59 44 24 	vmulps ymm0,ymm16,YMMWORD PTR [rsp+0x60]
  b0cbe5:	03 
  b0cbe6:	62 e1 5c 20 5c f1    	vsubps ymm22,ymm20,ymm1
  b0cbec:	c5 a4 5c f8          	vsubps ymm7,ymm11,ymm0
  b0cbf0:	c5 24 58 f0          	vaddps ymm14,ymm11,ymm0
  b0cbf4:	62 22 5d 28 ac cd    	vfnmadd213ps ymm25,ymm4,ymm21
  b0cbfa:	62 e1 54 20 58 e4    	vaddps ymm20,ymm21,ymm4
  b0cc00:	62 42 75 20 ac fc    	vfnmadd213ps ymm31,ymm17,ymm12
  b0cc06:	62 b1 1c 28 58 c9    	vaddps ymm1,ymm12,ymm17
  b0cc0c:	c5 b4 5c c6          	vsubps ymm0,ymm9,ymm6
  b0cc10:	62 b1 64 20 5c e2    	vsubps ymm4,ymm19,ymm18
  b0cc16:	62 f1 7c 20 59 74 24 	vmulps ymm6,ymm16,YMMWORD PTR [rsp+0x100]
  b0cc1d:	08 
  b0cc1e:	62 31 14 20 59 c8    	vmulps ymm9,ymm29,ymm16
  b0cc24:	62 b1 54 28 59 e8    	vmulps ymm5,ymm5,ymm16
  b0cc2a:	62 a1 1c 20 59 c8    	vmulps ymm17,ymm28,ymm16
  b0cc30:	62 b1 7c 28 59 c0    	vmulps ymm0,ymm0,ymm16
  b0cc36:	62 a1 5c 28 59 d8    	vmulps ymm19,ymm4,ymm16
  b0cc3c:	62 61 3c 28 58 e5    	vaddps ymm28,ymm8,ymm5
  b0cc42:	62 e1 3c 28 5c ed    	vsubps ymm21,ymm8,ymm5
  b0cc48:	62 31 2c 28 5c d9    	vsubps ymm11,ymm10,ymm17
  b0cc4e:	62 31 2c 28 58 c1    	vaddps ymm8,ymm10,ymm17
  b0cc54:	62 61 34 20 5c ee    	vsubps ymm29,ymm25,ymm6
  b0cc5a:	62 c1 3c 20 58 d5    	vaddps ymm18,ymm24,ymm13
  b0cc60:	62 51 04 20 58 e9    	vaddps ymm13,ymm31,ymm9
  b0cc66:	62 f1 44 20 58 e2    	vaddps ymm4,ymm23,ymm2
  b0cc6c:	62 61 2c 20 58 c0    	vaddps ymm24,ymm26,ymm0
  b0cc72:	62 e1 34 20 58 ce    	vaddps ymm17,ymm25,ymm6
  b0cc78:	62 31 04 28 5c e3    	vsubps ymm12,ymm15,ymm19
  b0cc7e:	62 d1 04 20 5c f1    	vsubps ymm6,ymm31,ymm9
  b0cc84:	62 e1 2c 20 5c c0    	vsubps ymm16,ymm26,ymm0
  b0cc8a:	62 31 04 28 58 d3    	vaddps ymm10,ymm15,ymm19
  b0cc90:	c5 7c 28 0d c8 8a 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff568ac8]        # 75760 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b0cc97:	ff 
  b0cc98:	62 11 7c 28 28 fe    	vmovaps ymm15,ymm30
  b0cc9e:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  b0cca5:	00 00 
  b0cca7:	62 72 35 28 7f f8    	vpermt2ps ymm15,ymm9,ymm0
  b0ccad:	62 e1 7c 28 28 1d e9 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff56a3e9]        # 770a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b0ccb4:	a3 56 ff 
  b0ccb7:	62 62 65 20 7f f0    	vpermt2ps ymm30,ymm19,ymm0
  b0ccbd:	c5 fc 28 ef          	vmovaps ymm5,ymm7
  b0ccc1:	62 f2 35 28 7f eb    	vpermt2ps ymm5,ymm9,ymm3
  b0ccc7:	62 f2 65 20 7f fb    	vpermt2ps ymm7,ymm19,ymm3
  b0cccd:	c5 7c 29 e8          	vmovaps ymm0,ymm13
  b0ccd1:	62 92 35 28 7f c5    	vpermt2ps ymm0,ymm9,ymm29
  b0ccd7:	62 12 65 20 7f ed    	vpermt2ps ymm13,ymm19,ymm29
  b0ccdd:	62 91 7c 28 28 d3    	vmovaps ymm2,ymm27
  b0cce3:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  b0cce9:	62 f2 35 28 7f d3    	vpermt2ps ymm2,ymm9,ymm3
  b0ccef:	62 62 65 20 7f db    	vpermt2ps ymm27,ymm19,ymm3
  b0ccf5:	62 c1 7c 28 28 fb    	vmovaps ymm23,ymm11
  b0ccfb:	62 82 35 28 7f fc    	vpermt2ps ymm23,ymm9,ymm28
  b0cd01:	62 12 65 20 7f dc    	vpermt2ps ymm11,ymm19,ymm28
  b0cd07:	62 41 7c 28 28 ce    	vmovaps ymm25,ymm14
  b0cd0d:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  b0cd13:	62 32 65 20 7f f6    	vpermt2ps ymm14,ymm19,ymm22
  b0cd19:	62 e1 7c 28 28 f1    	vmovaps ymm22,ymm1
  b0cd1f:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  b0cd25:	62 b2 65 20 7f cc    	vpermt2ps ymm1,ymm19,ymm20
  b0cd2b:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  b0cd31:	62 82 35 28 7f e0    	vpermt2ps ymm20,ymm9,ymm24
  b0cd37:	62 12 65 20 7f e0    	vpermt2ps ymm12,ymm19,ymm24
  b0cd3d:	62 41 7c 28 28 c0    	vmovaps ymm24,ymm8
  b0cd43:	62 22 35 28 7f c5    	vpermt2ps ymm24,ymm9,ymm21
  b0cd49:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  b0cd4f:	62 e1 7c 28 28 ec    	vmovaps ymm21,ymm4
  b0cd55:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  b0cd5b:	62 b2 65 20 7f e2    	vpermt2ps ymm4,ymm19,ymm18
  b0cd61:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  b0cd67:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  b0cd6d:	62 b2 65 20 7f f1    	vpermt2ps ymm6,ymm19,ymm17
  b0cd73:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  b0cd79:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  b0cd7f:	62 61 7c 28 11 36    	vmovups YMMWORD PTR [rsi],ymm30
  b0cd85:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  b0cd8a:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  b0cd8f:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b0cd94:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  b0cd9b:	00 
  b0cd9c:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  b0cda3:	00 
  b0cda4:	62 61 7c 28 11 5e 06 	vmovups YMMWORD PTR [rsi+0xc0],ymm27
  b0cdab:	c5 fc 11 96 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm2
  b0cdb2:	00 
  b0cdb3:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  b0cdba:	00 
  b0cdbb:	62 e1 7c 28 11 7e 09 	vmovups YMMWORD PTR [rsi+0x120],ymm23
  b0cdc2:	c5 7c 11 b6 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm14
  b0cdc9:	00 
  b0cdca:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  b0cdd1:	c5 fc 11 8e 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm1
  b0cdd8:	00 
  b0cdd9:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b0cde0:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  b0cde7:	00 
  b0cde8:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b0cdef:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  b0cdf6:	00 
  b0cdf7:	62 61 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm24
  b0cdfe:	c5 fc 11 a6 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm4
  b0ce05:	00 
  b0ce06:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  b0ce0d:	c5 fc 11 b6 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm6
  b0ce14:	00 
  b0ce15:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  b0ce1c:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  b0ce23:	00 
  b0ce24:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  b0ce2b:	00 
  b0ce2c:	48 89 ec             	mov    rsp,rbp
  b0ce2f:	5d                   	pop    rbp
  b0ce30:	c5 f8 77             	vzeroupper
  b0ce33:	c3                   	ret
  b0ce34:	cc                   	int3
  b0ce35:	cc                   	int3
  b0ce36:	cc                   	int3
  b0ce37:	cc                   	int3
  b0ce38:	cc                   	int3
  b0ce39:	cc                   	int3
  b0ce3a:	cc                   	int3
  b0ce3b:	cc                   	int3
  b0ce3c:	cc                   	int3
  b0ce3d:	cc                   	int3
  b0ce3e:	cc                   	int3
  b0ce3f:	cc                   	int3
