
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000af8000 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  af8000:	55                   	push   rbp
  af8001:	48 89 e5             	mov    rbp,rsp
  af8004:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  af8008:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  af800f:	48 c1 e2 08          	shl    rdx,0x8
  af8013:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  af8017:	31 d2                	xor    edx,edx
  af8019:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  af8020:	00 
  af8021:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  af8026:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  af802d:	00 00 00 
  af8030:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  af8037:	00 
  af8038:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  af803d:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  af8042:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  af8048:	c5 ec c6 c5 88       	vshufps ymm0,ymm2,ymm5,0x88
  af804d:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  af8053:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  af8058:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  af805e:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  af8065:	00 00 
  af8067:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  af806d:	c5 d4 c6 fe 88       	vshufps ymm7,ymm5,ymm6,0x88
  af8072:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  af8078:	c5 d4 c6 ee dd       	vshufps ymm5,ymm5,ymm6,0xdd
  af807d:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  af8083:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  af808a:	00 00 
  af808c:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  af8093:	00 00 
  af8095:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  af809b:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  af80a1:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  af80a7:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  af80ae:	00 00 
  af80b0:	c5 7c 10 94 17 40 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x140]
  af80b7:	00 00 
  af80b9:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  af80bf:	c4 41 3c c6 da 88    	vshufps ymm11,ymm8,ymm10,0x88
  af80c5:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  af80cb:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  af80d1:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  af80d7:	c5 7c 10 94 17 80 01 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x180]
  af80de:	00 00 
  af80e0:	c5 7c 10 a4 17 a0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1a0]
  af80e7:	00 00 
  af80e9:	c4 41 2c c6 ec 88    	vshufps ymm13,ymm10,ymm12,0x88
  af80ef:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  af80f5:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  af80fb:	c5 7c 10 a4 17 e0 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x1e0]
  af8102:	00 00 
  af8104:	c5 7c 10 b4 17 00 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x200]
  af810b:	00 00 
  af810d:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  af8113:	c4 41 1c c6 fe 88    	vshufps ymm15,ymm12,ymm14,0x88
  af8119:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  af811f:	c4 41 1c c6 e6 dd    	vshufps ymm12,ymm12,ymm14,0xdd
  af8125:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  af812b:	c5 7c 10 b4 17 40 02 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x240]
  af8132:	00 00 
  af8134:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x260]
  af813b:	13 
  af813c:	62 a1 0c 28 c6 c8 88 	vshufps ymm17,ymm14,ymm16,0x88
  af8143:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  af814a:	62 31 0c 28 c6 f0 dd 	vshufps ymm14,ymm14,ymm16,0xdd
  af8151:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x2a0]
  af8158:	15 
  af8159:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x2c0]
  af8160:	16 
  af8161:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  af8167:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  af816e:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  af8175:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  af817c:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  af8183:	62 c1 6c 28 58 ea    	vaddps ymm21,ymm2,ymm10
  af8189:	62 c1 4c 28 58 f6    	vaddps ymm22,ymm6,ymm14
  af818f:	62 c1 54 28 58 fc    	vaddps ymm23,ymm5,ymm12
  af8195:	62 21 54 20 58 c6    	vaddps ymm24,ymm21,ymm22
  af819b:	62 21 3c 28 58 c8    	vaddps ymm25,ymm8,ymm16
  af81a1:	62 41 7c 28 58 d5    	vaddps ymm26,ymm0,ymm13
  af81a7:	62 21 74 28 58 d9    	vaddps ymm27,ymm1,ymm17
  af81ad:	62 01 44 20 58 e1    	vaddps ymm28,ymm23,ymm25
  af81b3:	62 01 2c 20 58 eb    	vaddps ymm29,ymm26,ymm27
  af81b9:	62 41 44 28 58 f7    	vaddps ymm30,ymm7,ymm15
  af81bf:	62 21 24 28 58 fb    	vaddps ymm31,ymm11,ymm19
  af81c5:	62 11 0c 20 58 cf    	vaddps ymm9,ymm30,ymm31
  af81cb:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  af81d0:	62 b1 74 28 5c d9    	vsubps ymm3,ymm1,ymm17
  af81d6:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  af81da:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  af81e1:	00 00 
  af81e3:	62 11 3c 20 58 d4    	vaddps ymm10,ymm24,ymm28
  af81e9:	c4 c1 54 5c ec       	vsubps ymm5,ymm5,ymm12
  af81ee:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  af81f3:	c5 54 58 ff          	vaddps ymm15,ymm5,ymm7
  af81f7:	62 51 14 20 58 e1    	vaddps ymm12,ymm29,ymm9
  af81fd:	62 31 24 28 5c db    	vsubps ymm11,ymm11,ymm19
  af8203:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  af8209:	62 c1 24 28 5c c0    	vsubps ymm16,ymm11,ymm8
  af820f:	c4 e2 7d 18 25 84 d1 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff57d184]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  af8216:	57 ff 
  af8218:	62 e1 04 28 59 cc    	vmulps ymm17,ymm15,ymm4
  af821e:	c4 c1 7c 5c cd       	vsubps ymm1,ymm0,ymm13
  af8223:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  af8227:	c5 4c 58 f9          	vaddps ymm15,ymm6,ymm1
  af822b:	62 e1 7c 20 59 d4    	vmulps ymm18,ymm16,ymm4
  af8231:	c5 c4 5c c5          	vsubps ymm0,ymm7,ymm5
  af8235:	62 e1 7c 28 59 dc    	vmulps ymm19,ymm0,ymm4
  af823b:	c4 c1 3c 58 c3       	vaddps ymm0,ymm8,ymm11
  af8240:	62 e1 7c 28 59 e4    	vmulps ymm20,ymm0,ymm4
  af8246:	62 b1 54 20 5c ee    	vsubps ymm5,ymm21,ymm22
  af824c:	62 91 0c 20 5c ff    	vsubps ymm7,ymm30,ymm31
  af8252:	62 11 2c 20 5c c3    	vsubps ymm8,ymm26,ymm27
  af8258:	c5 d4 58 c7          	vaddps ymm0,ymm5,ymm7
  af825c:	62 31 34 20 5c f7    	vsubps ymm14,ymm25,ymm23
  af8262:	c5 6c 5c eb          	vsubps ymm13,ymm2,ymm3
  af8266:	c5 74 5c de          	vsubps ymm11,ymm1,ymm6
  af826a:	c4 c1 0c 58 d0       	vaddps ymm2,ymm14,ymm8
  af826f:	62 91 3c 20 5c dc    	vsubps ymm3,ymm24,ymm28
  af8275:	62 d1 14 20 5c c9    	vsubps ymm1,ymm29,ymm9
  af827b:	c5 d4 5c e7          	vsubps ymm4,ymm5,ymm7
  af827f:	c4 41 3c 5c f6       	vsubps ymm14,ymm8,ymm14
  af8284:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  af828a:	c4 e3 7d 18 fc 01    	vinsertf128 ymm7,ymm0,xmm4,0x1
  af8290:	c5 cd 14 ef          	vunpcklpd ymm5,ymm6,ymm7
  af8294:	c5 fc 29 6c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm5
  af829a:	c5 cd 15 ef          	vunpckhpd ymm5,ymm6,ymm7
  af829e:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  af82a4:	c4 63 1d 18 c1 01    	vinsertf128 ymm8,ymm12,xmm1,0x1
  af82aa:	62 c3 6d 28 18 c6 01 	vinsertf32x4 ymm16,ymm2,xmm14,0x1
  af82b1:	62 b1 bd 28 14 e8    	vunpcklpd ymm5,ymm8,ymm16
  af82b7:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  af82be:	00 00 
  af82c0:	62 a1 bd 28 15 c0    	vunpckhpd ymm16,ymm8,ymm16
  af82c6:	c4 e3 1d 06 c9 31    	vperm2f128 ymm1,ymm12,ymm1,0x31
  af82cc:	c4 c3 6d 06 d6 31    	vperm2f128 ymm2,ymm2,ymm14,0x31
  af82d2:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  af82d8:	c5 f5 15 ea          	vunpckhpd ymm5,ymm1,ymm2
  af82dc:	c5 fd 29 ac 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm5
  af82e3:	00 00 
  af82e5:	c4 e3 7d 06 c4 31    	vperm2f128 ymm0,ymm0,ymm4,0x31
  af82eb:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  af82f1:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  af82f7:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  af82fb:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  af8302:	00 00 
  af8304:	62 e1 1c 08 c6 ec 88 	vshufps xmm21,xmm12,xmm4,0x88
  af830b:	62 61 1c 08 c6 c4 dd 	vshufps xmm24,xmm12,xmm4,0xdd
  af8312:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  af8319:	00 00 
  af831b:	c5 e5 15 d0          	vunpckhpd ymm2,ymm3,ymm0
  af831f:	c5 fd 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm2
  af8326:	00 00 
  af8328:	c5 f8 10 94 17 a0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xa0]
  af832f:	00 00 
  af8331:	62 e1 6c 08 c6 f1 88 	vshufps xmm22,xmm2,xmm1,0x88
  af8338:	62 e1 6c 08 c6 f9 dd 	vshufps xmm23,xmm2,xmm1,0xdd
  af833f:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  af8343:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  af834a:	00 00 
  af834c:	c5 f8 10 84 17 10 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x110]
  af8353:	00 00 
  af8355:	c5 f8 10 8c 17 00 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x100]
  af835c:	00 00 
  af835e:	c5 f0 c6 d8 88       	vshufps xmm3,xmm1,xmm0,0x88
  af8363:	62 b1 74 20 58 e2    	vaddps ymm4,ymm17,ymm18
  af8369:	c5 f0 c6 f0 dd       	vshufps xmm6,xmm1,xmm0,0xdd
  af836e:	c5 f8 10 8c 17 70 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x170]
  af8375:	00 00 
  af8377:	c5 f8 10 94 17 60 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x160]
  af837e:	00 00 
  af8380:	62 21 64 20 5c d4    	vsubps ymm26,ymm19,ymm20
  af8386:	62 61 6c 08 c6 c9 88 	vshufps xmm25,xmm2,xmm1,0x88
  af838d:	c5 e8 c6 d1 dd       	vshufps xmm2,xmm2,xmm1,0xdd
  af8392:	c5 f8 10 8c 17 d0 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x1d0]
  af8399:	00 00 
  af839b:	62 a1 64 20 58 e4    	vaddps ymm20,ymm19,ymm20
  af83a1:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x1c0]
  af83a8:	1c 
  af83a9:	62 e1 24 00 c6 d9 88 	vshufps xmm19,xmm27,xmm1,0x88
  af83b0:	62 f1 24 00 c6 c9 dd 	vshufps xmm1,xmm27,xmm1,0xdd
  af83b7:	62 a1 6c 20 5c c9    	vsubps ymm17,ymm18,ymm17
  af83bd:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x230]
  af83c4:	23 
  af83c5:	62 61 7c 08 10 5c 17 	vmovups xmm27,XMMWORD PTR [rdi+rdx*1+0x220]
  af83cc:	22 
  af83cd:	62 21 24 00 c6 e2 88 	vshufps xmm28,xmm27,xmm18,0x88
  af83d4:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  af83db:	00 00 
  af83dd:	62 61 7c 28 58 ec    	vaddps ymm29,ymm0,ymm4
  af83e3:	62 21 24 00 c6 da dd 	vshufps xmm27,xmm27,xmm18,0xdd
  af83ea:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x290]
  af83f1:	29 
  af83f2:	62 61 7c 08 10 74 17 	vmovups xmm30,XMMWORD PTR [rdi+rdx*1+0x280]
  af83f9:	28 
  af83fa:	c5 fc 5c e4          	vsubps ymm4,ymm0,ymm4
  af83fe:	62 21 0c 00 c6 fa 88 	vshufps xmm31,xmm30,xmm18,0x88
  af8405:	62 21 0c 00 c6 f2 dd 	vshufps xmm30,xmm30,xmm18,0xdd
  af840c:	c5 78 10 8c 17 f0 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x2f0]
  af8413:	00 00 
  af8415:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x2e0]
  af841c:	2e 
  af841d:	62 d1 6c 00 c6 c1 88 	vshufps xmm0,xmm18,xmm9,0x88
  af8424:	62 51 6c 00 c6 c9 dd 	vshufps xmm9,xmm18,xmm9,0xdd
  af842b:	62 81 04 28 58 d2    	vaddps ymm18,ymm15,ymm26
  af8431:	62 01 04 28 5c d2    	vsubps ymm26,ymm15,ymm26
  af8437:	62 71 3c 20 58 f9    	vaddps ymm15,ymm24,ymm1
  af843d:	62 f1 3c 20 5c f9    	vsubps ymm7,ymm24,ymm1
  af8443:	62 21 14 28 58 c4    	vaddps ymm24,ymm13,ymm20
  af8449:	62 31 14 28 5c ec    	vsubps ymm13,ymm13,ymm20
  af844f:	62 81 64 28 58 e7    	vaddps ymm20,ymm3,ymm31
  af8455:	62 91 64 28 5c ef    	vsubps ymm5,ymm3,ymm31
  af845b:	62 21 24 28 58 f9    	vaddps ymm31,ymm11,ymm17
  af8461:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  af8467:	62 81 44 20 58 cb    	vaddps ymm17,ymm23,ymm27
  af846d:	62 81 44 20 5c fb    	vsubps ymm23,ymm23,ymm27
  af8473:	62 03 6d 20 18 da 01 	vinsertf32x4 ymm27,ymm18,xmm26,0x1
  af847a:	62 83 ed 20 23 d2 03 	vshuff64x2 ymm18,ymm18,ymm26,0x3
  af8481:	62 01 4c 20 58 d4    	vaddps ymm26,ymm22,ymm28
  af8487:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  af848d:	62 43 05 20 18 e3 01 	vinsertf32x4 ymm28,ymm31,xmm11,0x1
  af8494:	62 53 85 20 23 db 03 	vshuff64x2 ymm11,ymm31,ymm11,0x3
  af849b:	62 61 34 20 58 f8    	vaddps ymm31,ymm25,ymm0
  af84a1:	62 f1 34 20 5c c0    	vsubps ymm0,ymm25,ymm0
  af84a7:	62 63 15 20 18 cc 01 	vinsertf32x4 ymm25,ymm29,xmm4,0x1
  af84ae:	62 f3 95 20 23 e4 03 	vshuff64x2 ymm4,ymm29,ymm4,0x3
  af84b5:	62 41 6c 28 58 e9    	vaddps ymm29,ymm2,ymm9
  af84bb:	c4 c1 6c 5c d1       	vsubps ymm2,ymm2,ymm9
  af84c0:	62 53 3d 20 18 cd 01 	vinsertf32x4 ymm9,ymm24,xmm13,0x1
  af84c7:	62 53 bd 20 23 ed 03 	vshuff64x2 ymm13,ymm24,ymm13,0x3
  af84ce:	62 21 54 20 58 c3    	vaddps ymm24,ymm21,ymm19
  af84d4:	62 a1 54 20 5c db    	vsubps ymm19,ymm21,ymm19
  af84da:	62 d1 b5 20 14 c9    	vunpcklpd ymm1,ymm25,ymm9
  af84e0:	62 51 b5 20 15 c9    	vunpckhpd ymm9,ymm25,ymm9
  af84e6:	62 81 4c 28 58 ee    	vaddps ymm21,ymm6,ymm30
  af84ec:	62 f1 0c 20 5c f6    	vsubps ymm6,ymm30,ymm6
  af84f2:	62 01 a5 20 14 cc    	vunpcklpd ymm25,ymm27,ymm28
  af84f8:	62 01 a5 20 15 dc    	vunpckhpd ymm27,ymm27,ymm28
  af84fe:	62 21 44 20 58 e6    	vaddps ymm28,ymm23,ymm22
  af8504:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  af850a:	62 c1 ed 20 15 fb    	vunpckhpd ymm23,ymm18,ymm11
  af8510:	62 c1 ed 20 14 d3    	vunpcklpd ymm18,ymm18,ymm11
  af8516:	62 61 7c 28 5c f2    	vsubps ymm30,ymm0,ymm2
  af851c:	c5 ec 58 d0          	vaddps ymm2,ymm2,ymm0
  af8520:	c4 41 5d 15 dd       	vunpckhpd ymm11,ymm4,ymm13
  af8525:	c4 c1 5d 14 dd       	vunpcklpd ymm3,ymm4,ymm13
  af852a:	62 31 04 28 58 ed    	vaddps ymm13,ymm15,ymm21
  af8530:	62 31 04 28 5c fd    	vsubps ymm15,ymm15,ymm21
  af8536:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  af853c:	c4 41 7c c6 e1 88    	vshufps ymm12,ymm0,ymm9,0x88
  af8542:	c4 41 7c c6 f1 dd    	vshufps ymm14,ymm0,ymm9,0xdd
  af8548:	62 11 2c 20 58 c7    	vaddps ymm8,ymm26,ymm31
  af854e:	62 11 2c 20 5c cf    	vsubps ymm9,ymm26,ymm31
  af8554:	62 01 7c 20 c6 d3 88 	vshufps ymm26,ymm16,ymm27,0x88
  af855b:	62 01 7c 20 c6 db dd 	vshufps ymm27,ymm16,ymm27,0xdd
  af8562:	62 a1 3c 20 58 ec    	vaddps ymm21,ymm24,ymm20
  af8568:	62 21 3c 20 5c fc    	vsubps ymm31,ymm24,ymm20
  af856e:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  af8575:	00 00 
  af8577:	62 11 7c 28 c6 d1 dd 	vshufps ymm10,ymm0,ymm25,0xdd
  af857e:	62 81 7c 28 c6 e1 88 	vshufps ymm20,ymm0,ymm25,0x88
  af8585:	62 01 74 20 58 cd    	vaddps ymm25,ymm17,ymm29
  af858b:	62 a1 14 20 5c c9    	vsubps ymm17,ymm29,ymm17
  af8591:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  af8597:	62 61 7c 28 c6 e9 dd 	vshufps ymm29,ymm0,ymm1,0xdd
  af859e:	62 e1 7c 28 c6 c1 88 	vshufps ymm16,ymm0,ymm1,0x88
  af85a5:	c5 c4 58 c5          	vaddps ymm0,ymm7,ymm5
  af85a9:	c5 c4 5c fd          	vsubps ymm7,ymm7,ymm5
  af85ad:	62 62 7d 28 18 05 e5 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff57cde5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  af85b4:	cd 57 ff 
  af85b7:	62 91 4c 20 59 e8    	vmulps ymm5,ymm22,ymm24
  af85bd:	62 91 6c 28 59 d0    	vmulps ymm2,ymm2,ymm24
  af85c3:	c5 d4 5c e2          	vsubps ymm4,ymm5,ymm2
  af85c7:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  af85cb:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  af85d2:	00 00 
  af85d4:	62 a1 6c 28 c6 f7 dd 	vshufps ymm22,ymm2,ymm23,0xdd
  af85db:	62 b1 6c 28 c6 ef 88 	vshufps ymm5,ymm2,ymm23,0x88
  af85e2:	62 b1 4c 28 58 d3    	vaddps ymm2,ymm6,ymm19
  af85e8:	62 e1 64 20 5c fe    	vsubps ymm23,ymm19,ymm6
  af85ee:	62 91 1c 20 59 f0    	vmulps ymm6,ymm28,ymm24
  af85f4:	62 81 0c 20 59 d8    	vmulps ymm19,ymm30,ymm24
  af85fa:	62 21 4c 28 58 e3    	vaddps ymm28,ymm6,ymm19
  af8600:	62 61 64 20 5c c6    	vsubps ymm24,ymm19,ymm6
  af8606:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  af860d:	00 00 
  af860f:	62 a1 4c 28 c6 da dd 	vshufps ymm19,ymm6,ymm18,0xdd
  af8616:	62 a1 4c 28 c6 d2 88 	vshufps ymm18,ymm6,ymm18,0x88
  af861d:	62 91 14 28 58 f1    	vaddps ymm6,ymm13,ymm25
  af8623:	62 11 14 08 5c e9    	vsubps xmm13,xmm13,xmm25
  af8629:	62 43 4d 28 18 f5 01 	vinsertf32x4 ymm30,ymm6,xmm13,0x1
  af8630:	62 91 7c 28 58 f4    	vaddps ymm6,ymm0,ymm28
  af8636:	62 91 7c 08 5c c4    	vsubps xmm0,xmm0,xmm28
  af863c:	c4 e3 4d 18 c0 01    	vinsertf128 ymm0,ymm6,xmm0,0x1
  af8642:	c5 fc 28 b4 24 20 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x120]
  af8649:	00 00 
  af864b:	c4 41 4c c6 eb dd    	vshufps ymm13,ymm6,ymm11,0xdd
  af8651:	62 41 4c 28 c6 cb 88 	vshufps ymm25,ymm6,ymm11,0x88
  af8658:	c4 41 04 58 d9       	vaddps ymm11,ymm15,ymm9
  af865d:	c4 41 00 5c c9       	vsubps xmm9,xmm15,xmm9
  af8662:	c5 7c 28 bc 24 80 00 	vmovaps ymm15,YMMWORD PTR [rsp+0x80]
  af8669:	00 00 
  af866b:	c5 84 c6 f3 dd       	vshufps ymm6,ymm15,ymm3,0xdd
  af8670:	c5 fc 29 74 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm6
  af8676:	c5 04 c6 fb 88       	vshufps ymm15,ymm15,ymm3,0x88
  af867b:	c4 43 25 18 d9 01    	vinsertf128 ymm11,ymm11,xmm9,0x1
  af8681:	62 61 44 28 58 e1    	vaddps ymm28,ymm7,ymm1
  af8687:	c5 c0 5c c9          	vsubps xmm1,xmm7,xmm1
  af868b:	62 11 14 20 c6 cd d8 	vshufps ymm9,ymm29,ymm29,0xd8
  af8692:	c4 c1 1c c6 f4 d8    	vshufps ymm6,ymm12,ymm12,0xd8
  af8698:	62 f3 1d 20 18 f9 01 	vinsertf32x4 ymm7,ymm28,xmm1,0x1
  af869f:	62 d1 8d 20 14 cb    	vunpcklpd ymm1,ymm30,ymm11
  af86a5:	c4 c1 0c c6 de d8    	vshufps ymm3,ymm14,ymm14,0xd8
  af86ab:	62 51 8d 20 15 db    	vunpckhpd ymm11,ymm30,ymm11
  af86b1:	62 61 fd 28 14 f7    	vunpcklpd ymm30,ymm0,ymm7
  af86b7:	c5 fd 15 c7          	vunpckhpd ymm0,ymm0,ymm7
  af86bb:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  af86c1:	c5 24 c6 f0 88       	vshufps ymm14,ymm11,ymm0,0x88
  af86c6:	c5 a4 c6 c0 dd       	vshufps ymm0,ymm11,ymm0,0xdd
  af86cb:	62 d1 54 20 58 f8    	vaddps ymm7,ymm21,ymm8
  af86d1:	62 11 2c 20 c6 d2 d8 	vshufps ymm10,ymm26,ymm26,0xd8
  af86d8:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  af86de:	c5 6c 58 dc          	vaddps ymm11,ymm2,ymm4
  af86e2:	c4 43 45 18 c0 01    	vinsertf128 ymm8,ymm7,xmm8,0x1
  af86e8:	62 81 24 20 c6 eb d8 	vshufps ymm21,ymm27,ymm27,0xd8
  af86ef:	62 01 74 20 58 d7    	vaddps ymm26,ymm17,ymm31
  af86f5:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  af86f9:	62 01 44 20 58 d8    	vaddps ymm27,ymm23,ymm24
  af86ff:	62 b1 5c 20 c6 e4 d8 	vshufps ymm4,ymm20,ymm20,0xd8
  af8706:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  af870c:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  af8712:	62 91 74 28 c6 fe dd 	vshufps ymm7,ymm1,ymm30,0xdd
  af8719:	62 61 44 28 c6 e7 d8 	vshufps ymm28,ymm7,ymm7,0xd8
  af8720:	62 b1 7c 20 c6 e0 d8 	vshufps ymm4,ymm16,ymm16,0xd8
  af8727:	62 c1 0c 28 c6 e6 d8 	vshufps ymm20,ymm14,ymm14,0xd8
  af872e:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  af8733:	62 b1 04 00 5c c1    	vsubps xmm0,xmm31,xmm17
  af8739:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  af8740:	62 f3 2d 20 18 c0 01 	vinsertf32x4 ymm0,ymm26,xmm0,0x1
  af8747:	62 11 44 00 5c f0    	vsubps xmm14,xmm23,xmm24
  af874d:	62 53 25 20 18 f6 01 	vinsertf32x4 ymm14,ymm27,xmm14,0x1
  af8754:	62 e1 54 28 c6 f5 d8 	vshufps ymm22,ymm5,ymm5,0xd8
  af875b:	62 e1 bd 28 14 c0    	vunpcklpd ymm16,ymm8,ymm0
  af8761:	c5 3d 15 c0          	vunpckhpd ymm8,ymm8,ymm0
  af8765:	62 c1 ed 28 14 fe    	vunpcklpd ymm23,ymm2,ymm14
  af876b:	62 b1 64 20 c6 eb d8 	vshufps ymm5,ymm19,ymm19,0xd8
  af8772:	c4 c1 6d 15 d6       	vunpckhpd ymm2,ymm2,ymm14
  af8777:	62 b1 7c 20 c6 c7 dd 	vshufps ymm0,ymm16,ymm23,0xdd
  af877e:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  af8783:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  af878a:	c5 3c c6 f2 88       	vshufps ymm14,ymm8,ymm2,0x88
  af878f:	62 41 0c 28 c6 ee d8 	vshufps ymm29,ymm14,ymm14,0xd8
  af8796:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  af879b:	62 41 14 28 c6 c5 d8 	vshufps ymm24,ymm13,ymm13,0xd8
  af87a2:	c5 6c c6 f2 d8       	vshufps ymm14,ymm2,ymm2,0xd8
  af87a7:	62 b1 7c 20 c6 d7 88 	vshufps ymm2,ymm16,ymm23,0x88
  af87ae:	62 e1 6c 28 c6 d2 d8 	vshufps ymm18,ymm2,ymm2,0xd8
  af87b5:	62 81 34 20 c6 f9 d8 	vshufps ymm23,ymm25,ymm25,0xd8
  af87bc:	62 91 74 28 c6 ce 88 	vshufps ymm1,ymm1,ymm30,0x88
  af87c3:	62 e1 74 28 c6 d9 d8 	vshufps ymm19,ymm1,ymm1,0xd8
  af87ca:	62 61 7c 28 10 51 02 	vmovups ymm26,YMMWORD PTR [rcx+0x40]
  af87d1:	62 41 04 28 c6 f7 d8 	vshufps ymm30,ymm15,ymm15,0xd8
  af87d8:	62 61 7c 28 10 49 03 	vmovups ymm25,YMMWORD PTR [rcx+0x60]
  af87df:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  af87e6:	00 
  af87e7:	c5 fc 10 91 a0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1a0]
  af87ee:	00 
  af87ef:	62 71 44 20 59 f9    	vmulps ymm15,ymm23,ymm1
  af87f5:	62 72 4d 20 bc fa    	vfnmadd231ps ymm15,ymm22,ymm2
  af87fb:	62 e1 4c 20 59 f1    	vmulps ymm22,ymm22,ymm1
  af8801:	c5 fc 10 89 40 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x240]
  af8808:	00 
  af8809:	62 e2 45 20 b8 f2    	vfmadd231ps ymm22,ymm23,ymm2
  af880f:	c5 fc 10 91 60 02 00 	vmovups ymm2,YMMWORD PTR [rcx+0x260]
  af8816:	00 
  af8817:	62 e1 1c 20 59 f9    	vmulps ymm23,ymm28,ymm1
  af881d:	62 61 7c 28 59 f9    	vmulps ymm31,ymm0,ymm1
  af8823:	62 e2 7d 28 bc fa    	vfnmadd231ps ymm23,ymm0,ymm2
  af8829:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  af8830:	00 
  af8831:	62 62 1d 20 b8 fa    	vfmadd231ps ymm31,ymm28,ymm2
  af8837:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  af883e:	00 
  af883f:	62 61 64 28 59 e0    	vmulps ymm28,ymm3,ymm0
  af8845:	62 62 55 20 bc e1    	vfnmadd231ps ymm28,ymm21,ymm1
  af884b:	62 f1 54 20 59 c0    	vmulps ymm0,ymm21,ymm0
  af8851:	c5 7c 10 81 80 02 00 	vmovups ymm8,YMMWORD PTR [rcx+0x280]
  af8858:	00 
  af8859:	c4 e2 65 b8 c1       	vfmadd231ps ymm0,ymm3,ymm1
  af885e:	c5 fc 10 89 a0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2a0]
  af8865:	00 
  af8866:	62 d1 5c 20 59 d0    	vmulps ymm2,ymm20,ymm8
  af886c:	62 c1 14 20 59 c0    	vmulps ymm16,ymm29,ymm8
  af8872:	62 f2 15 20 bc d1    	vfnmadd231ps ymm2,ymm29,ymm1
  af8878:	c5 fc 10 99 00 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x100]
  af887f:	00 
  af8880:	62 e2 5d 20 b8 c1    	vfmadd231ps ymm16,ymm20,ymm1
  af8886:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  af888d:	00 
  af888e:	62 71 0c 20 59 c3    	vmulps ymm8,ymm30,ymm3
  af8894:	62 72 25 20 bc c1    	vfnmadd231ps ymm8,ymm27,ymm1
  af889a:	62 e1 24 20 59 e3    	vmulps ymm20,ymm27,ymm3
  af88a0:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  af88a7:	00 
  af88a8:	62 e2 0d 20 b8 e1    	vfmadd231ps ymm20,ymm30,ymm1
  af88ae:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  af88b5:	00 
  af88b6:	62 e1 3c 20 59 eb    	vmulps ymm21,ymm24,ymm3
  af88bc:	62 f1 74 20 59 db    	vmulps ymm3,ymm17,ymm3
  af88c2:	62 e2 75 20 bc e9    	vfnmadd231ps ymm21,ymm17,ymm1
  af88c8:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  af88cf:	00 
  af88d0:	62 f2 3d 20 b8 d9    	vfmadd231ps ymm3,ymm24,ymm1
  af88d6:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  af88dd:	00 
  af88de:	62 81 34 28 59 ca    	vmulps ymm17,ymm9,ymm26
  af88e4:	62 82 1d 28 bc c9    	vfnmadd231ps ymm17,ymm12,ymm25
  af88ea:	62 11 1c 28 59 e2    	vmulps ymm12,ymm12,ymm26
  af88f0:	62 61 7c 28 10 41 10 	vmovups ymm24,YMMWORD PTR [rcx+0x200]
  af88f7:	62 12 35 28 b8 e1    	vfmadd231ps ymm12,ymm9,ymm25
  af88fd:	c5 7c 10 89 20 02 00 	vmovups ymm9,YMMWORD PTR [rcx+0x220]
  af8904:	00 
  af8905:	62 01 64 20 59 c8    	vmulps ymm25,ymm19,ymm24
  af890b:	62 01 6c 20 59 c0    	vmulps ymm24,ymm18,ymm24
  af8911:	62 42 6d 20 bc c9    	vfnmadd231ps ymm25,ymm18,ymm9
  af8917:	62 e1 7c 28 10 51 0a 	vmovups ymm18,YMMWORD PTR [rcx+0x140]
  af891e:	62 42 65 20 b8 c1    	vfmadd231ps ymm24,ymm19,ymm9
  af8924:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  af892b:	00 
  af892c:	62 c1 4c 28 59 dd    	vmulps ymm19,ymm6,ymm13
  af8932:	62 e2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm1
  af8938:	c4 41 2c 59 ed       	vmulps ymm13,ymm10,ymm13
  af893d:	c5 7c 10 91 c0 02 00 	vmovups ymm10,YMMWORD PTR [rcx+0x2c0]
  af8944:	00 
  af8945:	62 63 7d 28 04 54 24 	vpermilps ymm26,YMMWORD PTR [rsp+0x60],0xd8
  af894c:	03 d8 
  af894e:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  af8953:	c5 fc 10 89 e0 02 00 	vmovups ymm1,YMMWORD PTR [rcx+0x2e0]
  af895a:	00 
  af895b:	62 41 24 28 59 da    	vmulps ymm27,ymm11,ymm10
  af8961:	62 62 0d 28 bc d9    	vfnmadd231ps ymm27,ymm14,ymm1
  af8967:	c4 c1 0c 59 f2       	vmulps ymm6,ymm14,ymm10
  af896c:	62 41 5c 28 58 ef    	vaddps ymm29,ymm4,ymm15
  af8972:	c4 e2 25 b8 f1       	vfmadd231ps ymm6,ymm11,ymm1
  af8977:	62 b1 1c 20 58 cf    	vaddps ymm1,ymm28,ymm23
  af897d:	62 31 2c 20 59 da    	vmulps ymm11,ymm26,ymm18
  af8983:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  af8988:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  af898e:	62 e1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm2
  af8994:	62 d2 2d 20 b8 e9    	vfmadd231ps ymm5,ymm26,ymm9
  af899a:	62 21 54 20 58 d1    	vaddps ymm26,ymm21,ymm17
  af89a0:	62 21 34 20 58 f3    	vaddps ymm30,ymm25,ymm19
  af89a6:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  af89aa:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  af89b1:	00 00 
  af89b3:	c5 1c 58 cb          	vaddps ymm9,ymm12,ymm3
  af89b7:	c4 c1 64 5c fc       	vsubps ymm7,ymm3,ymm12
  af89bc:	62 51 24 20 58 d3    	vaddps ymm10,ymm27,ymm11
  af89c2:	62 a1 34 20 5c db    	vsubps ymm19,ymm25,ymm19
  af89c8:	62 61 4c 28 58 cd    	vaddps ymm25,ymm6,ymm5
  af89ce:	c5 4c 5c c5          	vsubps ymm8,ymm6,ymm5
  af89d2:	62 91 7c 28 58 df    	vaddps ymm3,ymm0,ymm31
  af89d8:	c4 41 5c 5c ff       	vsubps ymm15,ymm4,ymm15
  af89dd:	62 b1 5c 20 58 e8    	vaddps ymm5,ymm20,ymm16
  af89e3:	62 01 7c 28 5c ff    	vsubps ymm31,ymm0,ymm31
  af89e9:	62 31 5c 20 5c f0    	vsubps ymm14,ymm20,ymm16
  af89ef:	62 e1 14 20 58 e1    	vaddps ymm20,ymm29,ymm1
  af89f5:	62 d1 3c 20 58 c5    	vaddps ymm0,ymm24,ymm13
  af89fb:	62 a1 74 20 5c ed    	vsubps ymm21,ymm17,ymm21
  af8a01:	62 41 3c 20 5c c5    	vsubps ymm24,ymm24,ymm13
  af8a07:	62 91 6c 20 58 d2    	vaddps ymm2,ymm18,ymm26
  af8a0d:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  af8a14:	00 00 
  af8a16:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  af8a1c:	62 71 4c 20 58 ea    	vaddps ymm13,ymm22,ymm2
  af8a22:	62 01 24 28 5c db    	vsubps ymm27,ymm11,ymm27
  af8a28:	62 b1 6c 28 5c e6    	vsubps ymm4,ymm2,ymm22
  af8a2e:	62 51 0c 20 58 e2    	vaddps ymm12,ymm30,ymm10
  af8a34:	62 c1 54 28 58 f1    	vaddps ymm22,ymm5,ymm9
  af8a3a:	62 81 44 20 5c fc    	vsubps ymm23,ymm23,ymm28
  af8a40:	62 01 7c 28 58 e1    	vaddps ymm28,ymm0,ymm25
  af8a46:	62 81 6c 20 5c ca    	vsubps ymm17,ymm18,ymm26
  af8a4c:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  af8a53:	00 00 
  af8a55:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  af8a59:	c5 4c 58 df          	vaddps ymm11,ymm6,ymm7
  af8a5d:	62 51 0c 20 5c d2    	vsubps ymm10,ymm30,ymm10
  af8a63:	62 a1 0c 28 58 d5    	vaddps ymm18,ymm14,ymm21
  af8a69:	62 e1 14 20 5c c1    	vsubps ymm16,ymm29,ymm1
  af8a6f:	62 91 3c 20 58 cb    	vaddps ymm1,ymm24,ymm27
  af8a75:	c4 41 54 5c c9       	vsubps ymm9,ymm5,ymm9
  af8a7a:	62 f1 6c 20 5c e9    	vsubps ymm5,ymm18,ymm1
  af8a80:	c5 fc 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm5
  af8a87:	00 00 
  af8a89:	62 61 6c 20 58 d1    	vaddps ymm26,ymm18,ymm1
  af8a8f:	62 c1 64 20 58 d0    	vaddps ymm18,ymm19,ymm8
  af8a95:	62 91 7c 28 5c c1    	vsubps ymm0,ymm0,ymm25
  af8a9b:	62 b1 24 28 58 fa    	vaddps ymm7,ymm11,ymm18
  af8aa1:	62 a1 24 28 5c d2    	vsubps ymm18,ymm11,ymm18
  af8aa7:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  af8aad:	62 61 14 28 5c eb    	vsubps ymm29,ymm13,ymm3
  af8ab3:	c5 b4 5c c8          	vsubps ymm1,ymm9,ymm0
  af8ab7:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  af8abd:	c5 b4 58 d8          	vaddps ymm3,ymm9,ymm0
  af8ac1:	62 11 04 28 58 cf    	vaddps ymm9,ymm15,ymm31
  af8ac7:	62 01 04 28 5c f7    	vsubps ymm30,ymm15,ymm31
  af8acd:	62 41 74 20 58 fa    	vaddps ymm31,ymm17,ymm10
  af8ad3:	62 d1 74 20 5c c2    	vsubps ymm0,ymm17,ymm10
  af8ad9:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  af8adf:	c5 4c 5c da          	vsubps ymm11,ymm6,ymm2
  af8ae3:	62 71 44 20 58 ec    	vaddps ymm13,ymm23,ymm4
  af8ae9:	62 d1 64 20 5c e8    	vsubps ymm5,ymm19,ymm8
  af8aef:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  af8af6:	00 00 
  af8af8:	c5 1c 58 d1          	vaddps ymm10,ymm12,ymm1
  af8afc:	62 b1 5c 28 5c e7    	vsubps ymm4,ymm4,ymm23
  af8b02:	62 81 4c 20 58 dc    	vaddps ymm19,ymm22,ymm28
  af8b08:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  af8b0e:	62 51 5c 20 58 fa    	vaddps ymm15,ymm20,ymm10
  af8b14:	62 81 3c 20 5c eb    	vsubps ymm21,ymm24,ymm27
  af8b1a:	c4 e2 7d 18 05 3d c9 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff57c93d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  af8b21:	57 ff 
  af8b23:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  af8b27:	62 32 7d 28 ac d4    	vfnmadd213ps ymm10,ymm0,ymm20
  af8b2d:	62 a1 34 20 58 fb    	vaddps ymm23,ymm25,ymm19
  af8b33:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  af8b37:	c4 c2 45 ac f1       	vfnmadd213ps ymm6,ymm7,ymm9
  af8b3c:	62 c1 7c 28 28 c9    	vmovaps ymm17,ymm9
  af8b42:	62 81 4c 20 5c f4    	vsubps ymm22,ymm22,ymm28
  af8b48:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  af8b4c:	62 62 7d 28 18 25 7e 	vbroadcastss ymm28,DWORD PTR [rip+0xffffffffff57c77e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  af8b53:	c7 57 ff 
  af8b56:	62 71 1c 20 59 44 24 	vmulps ymm8,ymm28,YMMWORD PTR [rsp+0xa0]
  af8b5d:	05 
  af8b5e:	62 d2 2d 20 ac fd    	vfnmadd213ps ymm7,ymm26,ymm13
  af8b64:	62 11 6c 20 59 cc    	vmulps ymm9,ymm18,ymm28
  af8b6a:	62 82 7d 28 ac d9    	vfnmadd213ps ymm19,ymm0,ymm25
  af8b70:	62 c1 4c 28 58 d0    	vaddps ymm18,ymm6,ymm8
  af8b76:	c4 41 74 5c e4       	vsubps ymm12,ymm1,ymm12
  af8b7b:	62 e1 7c 28 28 e0    	vmovaps ymm20,ymm0
  af8b81:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  af8b86:	62 41 44 28 5c c1    	vsubps ymm24,ymm7,ymm9
  af8b8c:	62 a2 05 20 ac e0    	vfnmadd213ps ymm20,ymm31,ymm16
  af8b92:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  af8b96:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  af8b9c:	62 02 65 28 ac cd    	vfnmadd213ps ymm25,ymm3,ymm29
  af8ba2:	62 91 7c 20 58 ff    	vaddps ymm7,ymm16,ymm31
  af8ba8:	62 e1 24 28 58 c5    	vaddps ymm16,ymm11,ymm5
  af8bae:	62 71 14 20 58 c3    	vaddps ymm8,ymm29,ymm3
  af8bb4:	62 21 0c 20 58 f8    	vaddps ymm31,ymm30,ymm16
  af8bba:	62 82 7d 28 ac c6    	vfnmadd213ps ymm16,ymm0,ymm30
  af8bc0:	62 21 0c 28 58 dd    	vaddps ymm27,ymm14,ymm21
  af8bc6:	62 21 0c 28 5c ed    	vsubps ymm29,ymm14,ymm21
  af8bcc:	62 81 5c 28 58 eb    	vaddps ymm21,ymm4,ymm27
  af8bd2:	62 62 7d 28 ac dc    	vfnmadd213ps ymm27,ymm0,ymm4
  af8bd8:	62 91 4c 20 59 e4    	vmulps ymm4,ymm22,ymm28
  af8bde:	c5 a4 5c dd          	vsubps ymm3,ymm11,ymm5
  af8be2:	62 e1 2c 28 58 f4    	vaddps ymm22,ymm10,ymm4
  af8be8:	62 11 1c 28 59 e4    	vmulps ymm12,ymm12,ymm28
  af8bee:	62 61 2c 28 5c f4    	vsubps ymm30,ymm10,ymm4
  af8bf4:	62 d1 64 20 5c e4    	vsubps ymm4,ymm19,ymm12
  af8bfa:	62 51 64 20 58 f4    	vaddps ymm14,ymm19,ymm12
  af8c00:	62 71 74 20 58 d2    	vaddps ymm10,ymm17,ymm2
  af8c06:	62 f1 1c 20 59 6c 24 	vmulps ymm5,ymm28,YMMWORD PTR [rsp+0x60]
  af8c0d:	03 
  af8c0e:	62 11 14 28 58 e2    	vaddps ymm12,ymm13,ymm26
  af8c14:	62 f1 5c 20 5c cd    	vsubps ymm1,ymm20,ymm5
  af8c1a:	62 71 1c 20 59 6c 24 	vmulps ymm13,ymm28,YMMWORD PTR [rsp+0x40]
  af8c21:	02 
  af8c22:	62 91 14 20 59 c4    	vmulps ymm0,ymm29,ymm28
  af8c28:	62 71 5c 20 58 dd    	vaddps ymm11,ymm20,ymm5
  af8c2e:	62 c1 34 20 58 cd    	vaddps ymm17,ymm25,ymm13
  af8c34:	62 51 34 20 5c ed    	vsubps ymm13,ymm25,ymm13
  af8c3a:	62 e1 7c 20 58 d8    	vaddps ymm19,ymm16,ymm0
  af8c40:	62 91 64 28 59 dc    	vmulps ymm3,ymm3,ymm28
  af8c46:	62 f1 7c 20 5c c0    	vsubps ymm0,ymm16,ymm0
  af8c4c:	62 e1 24 20 5c c3    	vsubps ymm16,ymm27,ymm3
  af8c52:	62 f1 24 20 58 eb    	vaddps ymm5,ymm27,ymm3
  af8c58:	62 b1 7c 28 28 df    	vmovaps ymm3,ymm23
  af8c5e:	62 e1 7c 28 28 25 38 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff57cc38]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  af8c65:	cc 57 ff 
  af8c68:	62 d2 5d 20 7f df    	vpermt2ps ymm3,ymm20,ymm15
  af8c6e:	62 61 7c 28 28 0d 68 	vmovaps ymm25,YMMWORD PTR [rip+0xffffffffff57e568]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  af8c75:	e5 57 ff 
  af8c78:	62 c2 35 20 7f ff    	vpermt2ps ymm23,ymm25,ymm15
  af8c7e:	62 e1 7c 28 11 3c 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm23
  af8c85:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  af8c8b:	62 91 7c 28 28 d8    	vmovaps ymm3,ymm24
  af8c91:	62 b2 5d 20 7f da    	vpermt2ps ymm3,ymm20,ymm18
  af8c97:	62 22 35 20 7f c2    	vpermt2ps ymm24,ymm25,ymm18
  af8c9d:	62 61 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm24
  af8ca4:	02 
  af8ca5:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  af8cab:	62 b1 7c 28 28 d9    	vmovaps ymm3,ymm17
  af8cb1:	62 f2 5d 20 7f d9    	vpermt2ps ymm3,ymm20,ymm1
  af8cb7:	62 e2 35 20 7f c9    	vpermt2ps ymm17,ymm25,ymm1
  af8cbd:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm17
  af8cc4:	04 
  af8cc5:	62 b1 7c 28 28 cd    	vmovaps ymm1,ymm21
  af8ccb:	62 92 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm31
  af8cd1:	62 82 35 20 7f ef    	vpermt2ps ymm21,ymm25,ymm31
  af8cd7:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  af8cde:	00 00 
  af8ce0:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  af8ce7:	06 
  af8ce8:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  af8cef:	00 00 
  af8cf1:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  af8cf5:	62 b2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm22
  af8cfb:	62 b2 35 20 7f e6    	vpermt2ps ymm4,ymm25,ymm22
  af8d01:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  af8d08:	00 00 
  af8d0a:	c5 fc 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm1
  af8d11:	00 00 
  af8d13:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  af8d17:	62 f2 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm6
  af8d1d:	62 72 35 20 7f ce    	vpermt2ps ymm9,ymm25,ymm6
  af8d23:	c5 7c 11 8c 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm9
  af8d2a:	00 00 
  af8d2c:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  af8d33:	00 00 
  af8d35:	c5 7c 29 c1          	vmovaps ymm1,ymm8
  af8d39:	62 f2 5d 20 7f cf    	vpermt2ps ymm1,ymm20,ymm7
  af8d3f:	62 72 35 20 7f c7    	vpermt2ps ymm8,ymm25,ymm7
  af8d45:	c5 7c 11 84 16 80 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm8
  af8d4c:	00 00 
  af8d4e:	62 b1 7c 28 28 d8    	vmovaps ymm3,ymm16
  af8d54:	62 b2 5d 20 7f db    	vpermt2ps ymm3,ymm20,ymm19
  af8d5a:	62 a2 35 20 7f c3    	vpermt2ps ymm16,ymm25,ymm19
  af8d60:	c5 fc 11 8c 16 a0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a0],ymm1
  af8d67:	00 00 
  af8d69:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm16
  af8d70:	0e 
  af8d71:	c5 fc 11 9c 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm3
  af8d78:	00 00 
  af8d7a:	c5 7c 29 f1          	vmovaps ymm1,ymm14
  af8d7e:	62 92 5d 20 7f ce    	vpermt2ps ymm1,ymm20,ymm30
  af8d84:	62 12 35 20 7f f6    	vpermt2ps ymm14,ymm25,ymm30
  af8d8a:	c5 7c 11 b4 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm14
  af8d91:	00 00 
  af8d93:	c5 fc 11 8c 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm1
  af8d9a:	00 00 
  af8d9c:	c5 7c 29 e1          	vmovaps ymm1,ymm12
  af8da0:	62 d2 5d 20 7f ca    	vpermt2ps ymm1,ymm20,ymm10
  af8da6:	62 52 35 20 7f e2    	vpermt2ps ymm12,ymm25,ymm10
  af8dac:	c5 7c 11 a4 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm12
  af8db3:	00 00 
  af8db5:	c5 fc 11 8c 16 60 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x260],ymm1
  af8dbc:	00 00 
  af8dbe:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  af8dc2:	62 d2 5d 20 7f cb    	vpermt2ps ymm1,ymm20,ymm11
  af8dc8:	62 52 35 20 7f eb    	vpermt2ps ymm13,ymm25,ymm11
  af8dce:	c5 7c 11 ac 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm13
  af8dd5:	00 00 
  af8dd7:	c5 fc 28 d5          	vmovaps ymm2,ymm5
  af8ddb:	62 f2 5d 20 7f d0    	vpermt2ps ymm2,ymm20,ymm0
  af8de1:	62 f2 35 20 7f e8    	vpermt2ps ymm5,ymm25,ymm0
  af8de7:	c5 fc 11 8c 16 a0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm1
  af8dee:	00 00 
  af8df0:	c5 fc 11 ac 16 c0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2c0],ymm5
  af8df7:	00 00 
  af8df9:	c5 fc 11 94 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm2
  af8e00:	00 00 
  af8e02:	48 81 c2 00 03 00 00 	add    rdx,0x300
  af8e09:	48 39 d0             	cmp    rax,rdx
  af8e0c:	0f 85 1e f2 ff ff    	jne    af8030 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  af8e12:	48 89 ec             	mov    rsp,rbp
  af8e15:	5d                   	pop    rbp
  af8e16:	c5 f8 77             	vzeroupper
  af8e19:	c3                   	ret
  af8e1a:	cc                   	int3
  af8e1b:	cc                   	int3
  af8e1c:	cc                   	int3
  af8e1d:	cc                   	int3
  af8e1e:	cc                   	int3
  af8e1f:	cc                   	int3
  af8e20:	cc                   	int3
  af8e21:	cc                   	int3
  af8e22:	cc                   	int3
  af8e23:	cc                   	int3
  af8e24:	cc                   	int3
  af8e25:	cc                   	int3
  af8e26:	cc                   	int3
  af8e27:	cc                   	int3
  af8e28:	cc                   	int3
  af8e29:	cc                   	int3
  af8e2a:	cc                   	int3
  af8e2b:	cc                   	int3
  af8e2c:	cc                   	int3
  af8e2d:	cc                   	int3
  af8e2e:	cc                   	int3
  af8e2f:	cc                   	int3
  af8e30:	cc                   	int3
  af8e31:	cc                   	int3
  af8e32:	cc                   	int3
  af8e33:	cc                   	int3
  af8e34:	cc                   	int3
  af8e35:	cc                   	int3
  af8e36:	cc                   	int3
  af8e37:	cc                   	int3
  af8e38:	cc                   	int3
  af8e39:	cc                   	int3
  af8e3a:	cc                   	int3
  af8e3b:	cc                   	int3
  af8e3c:	cc                   	int3
  af8e3d:	cc                   	int3
  af8e3e:	cc                   	int3
  af8e3f:	cc                   	int3
