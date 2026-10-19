
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aca040 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aca040:	c5 fc 10 87 80 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0x80]
  aca047:	00 
  aca048:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  aca04f:	00 
  aca050:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  aca055:	c4 e3 fd 01 ea d8    	vpermpd ymm5,ymm2,0xd8
  aca05b:	c5 fc 10 9f 00 01 00 	vmovups ymm3,YMMWORD PTR [rdi+0x100]
  aca062:	00 
  aca063:	c5 fc 10 a7 20 01 00 	vmovups ymm4,YMMWORD PTR [rdi+0x120]
  aca06a:	00 
  aca06b:	c5 e4 c6 d4 88       	vshufps ymm2,ymm3,ymm4,0x88
  aca070:	c4 e3 fd 01 fa d8    	vpermpd ymm7,ymm2,0xd8
  aca076:	c5 d4 5c d7          	vsubps ymm2,ymm5,ymm7
  aca07a:	c4 e2 7d 18 35 51 b2 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5ab251]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aca081:	5a ff 
  aca083:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  aca087:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  aca08c:	c4 63 fd 01 c0 d8    	vpermpd ymm8,ymm0,0xd8
  aca092:	c5 e4 c6 c4 dd       	vshufps ymm0,ymm3,ymm4,0xdd
  aca097:	c4 63 fd 01 c8 d8    	vpermpd ymm9,ymm0,0xd8
  aca09d:	c4 c1 3c 58 c1       	vaddps ymm0,ymm8,ymm9
  aca0a2:	c5 7c 10 17          	vmovups ymm10,YMMWORD PTR [rdi]
  aca0a6:	c5 7c 10 5f 20       	vmovups ymm11,YMMWORD PTR [rdi+0x20]
  aca0ab:	c5 7c 10 67 40       	vmovups ymm12,YMMWORD PTR [rdi+0x40]
  aca0b0:	c5 7c 10 6f 60       	vmovups ymm13,YMMWORD PTR [rdi+0x60]
  aca0b5:	c4 c1 2c c6 cb dd    	vshufps ymm1,ymm10,ymm11,0xdd
  aca0bb:	c4 e2 7d 18 25 9c b3 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5ab39c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aca0c2:	5a ff 
  aca0c4:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  aca0ca:	c5 7c 28 f4          	vmovaps ymm14,ymm4
  aca0ce:	c4 62 7d ac f3       	vfnmadd213ps ymm14,ymm0,ymm3
  aca0d3:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  aca0d7:	c5 7c 10 bf 40 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x140]
  aca0de:	00 
  aca0df:	62 e1 7c 28 10 47 0b 	vmovups ymm16,YMMWORD PTR [rdi+0x160]
  aca0e6:	62 a1 04 28 c6 c8 88 	vshufps ymm17,ymm15,ymm16,0x88
  aca0ed:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  aca0f4:	62 c1 1c 28 c6 d5 88 	vshufps ymm18,ymm12,ymm13,0x88
  aca0fb:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  aca102:	62 31 04 28 c6 f8 dd 	vshufps ymm15,ymm15,ymm16,0xdd
  aca109:	62 a1 74 20 5c c2    	vsubps ymm16,ymm17,ymm18
  aca10f:	62 e1 7c 20 59 c6    	vmulps ymm16,ymm16,ymm6
  aca115:	c4 43 fd 01 ff d8    	vpermpd ymm15,ymm15,0xd8
  aca11b:	c4 41 1c c6 e5 dd    	vshufps ymm12,ymm12,ymm13,0xdd
  aca121:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  aca127:	c4 41 04 58 ec       	vaddps ymm13,ymm15,ymm12
  aca12c:	c5 d4 58 ff          	vaddps ymm7,ymm5,ymm7
  aca130:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  aca137:	00 
  aca138:	c4 41 2c c6 d3 88    	vshufps ymm10,ymm10,ymm11,0x88
  aca13e:	c5 7c 10 9f e0 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0xe0]
  aca145:	00 
  aca146:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  aca14b:	c4 41 54 c6 cb dd    	vshufps ymm9,ymm5,ymm11,0xdd
  aca151:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  aca157:	62 a1 74 20 58 ca    	vaddps ymm17,ymm17,ymm18
  aca15d:	62 e1 7c 28 28 d4    	vmovaps ymm18,ymm4
  aca163:	62 c2 15 28 ac d1    	vfnmadd213ps ymm18,ymm13,ymm9
  aca169:	c4 41 54 c6 db 88    	vshufps ymm11,ymm5,ymm11,0x88
  aca16f:	62 a1 7c 20 58 da    	vaddps ymm19,ymm16,ymm18
  aca175:	c4 41 04 5c e4       	vsubps ymm12,ymm15,ymm12
  aca17a:	62 b1 74 28 5c eb    	vsubps ymm5,ymm1,ymm19
  aca180:	c4 43 fd 01 fa d8    	vpermpd ymm15,ymm10,0xd8
  aca186:	c5 3c 59 c6          	vmulps ymm8,ymm8,ymm6
  aca18a:	c5 9c 59 f6          	vmulps ymm6,ymm12,ymm6
  aca18e:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  aca192:	c4 42 45 ac d7       	vfnmadd213ps ymm10,ymm7,ymm15
  aca197:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  aca19b:	c4 41 2c 5c f0       	vsubps ymm14,ymm10,ymm8
  aca1a0:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  aca1a6:	62 d2 75 20 ac e3    	vfnmadd213ps ymm4,ymm17,ymm11
  aca1ac:	62 a1 6c 20 5c c0    	vsubps ymm16,ymm18,ymm16
  aca1b2:	62 e1 5c 28 5c d6    	vsubps ymm18,ymm4,ymm6
  aca1b8:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  aca1bd:	62 a1 0c 28 5c e2    	vsubps ymm20,ymm14,ymm18
  aca1c3:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  aca1c7:	62 a1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm16
  aca1cd:	c5 e4 58 c0          	vaddps ymm0,ymm3,ymm0
  aca1d1:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  aca1d5:	c4 c1 34 58 f5       	vaddps ymm6,ymm9,ymm13
  aca1da:	c5 7c 5c d6          	vsubps ymm10,ymm0,ymm6
  aca1de:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  aca1e2:	62 31 24 28 58 c9    	vaddps ymm9,ymm11,ymm17
  aca1e8:	c4 41 44 5c d9       	vsubps ymm11,ymm7,ymm9
  aca1ed:	62 31 74 28 58 e3    	vaddps ymm12,ymm1,ymm19
  aca1f3:	62 31 0c 28 58 ea    	vaddps ymm13,ymm14,ymm18
  aca1f9:	62 31 6c 28 5c f0    	vsubps ymm14,ymm2,ymm16
  aca1ff:	c5 bc 5c cc          	vsubps ymm1,ymm8,ymm4
  aca203:	c5 7c 58 c6          	vaddps ymm8,ymm0,ymm6
  aca207:	c5 b4 58 c7          	vaddps ymm0,ymm9,ymm7
  aca20b:	c4 e3 7d 18 d3 01    	vinsertf128 ymm2,ymm0,xmm3,0x1
  aca211:	c4 e3 7d 06 fb 31    	vperm2f128 ymm7,ymm0,ymm3,0x31
  aca217:	62 b3 75 28 18 e4 01 	vinsertf32x4 ymm4,ymm1,xmm20,0x1
  aca21e:	62 33 f5 28 23 fc 03 	vshuff64x2 ymm15,ymm1,ymm20,0x3
  aca225:	c5 78 29 e9          	vmovaps xmm1,xmm13
  aca229:	c5 ed 14 d9          	vunpcklpd ymm3,ymm2,ymm1
  aca22d:	c5 78 29 de          	vmovaps xmm6,xmm11
  aca231:	c5 5d 14 ce          	vunpcklpd ymm9,ymm4,ymm6
  aca235:	c4 c1 64 c6 c1 88    	vshufps ymm0,ymm3,ymm9,0x88
  aca23b:	c4 c1 64 c6 d9 dd    	vshufps ymm3,ymm3,ymm9,0xdd
  aca241:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aca246:	c5 ed 15 c9          	vunpckhpd ymm1,ymm2,ymm1
  aca24a:	c5 dd 15 d6          	vunpckhpd ymm2,ymm4,ymm6
  aca24e:	c5 f4 c6 e2 88       	vshufps ymm4,ymm1,ymm2,0x88
  aca253:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  aca258:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  aca25d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  aca262:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  aca268:	c5 c5 14 e2          	vunpcklpd ymm4,ymm7,ymm2
  aca26c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  aca272:	c4 41 05 14 eb       	vunpcklpd ymm13,ymm15,ymm11
  aca277:	c4 41 5c c6 cd 88    	vshufps ymm9,ymm4,ymm13,0x88
  aca27d:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  aca283:	c4 c1 5c c6 e5 dd    	vshufps ymm4,ymm4,ymm13,0xdd
  aca289:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aca28e:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  aca292:	c4 41 05 15 db       	vunpckhpd ymm11,ymm15,ymm11
  aca297:	c4 c1 6c c6 fb 88    	vshufps ymm7,ymm2,ymm11,0x88
  aca29d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aca2a2:	c4 c1 6c c6 d3 dd    	vshufps ymm2,ymm2,ymm11,0xdd
  aca2a8:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aca2ad:	62 33 3d 28 18 ed 01 	vinsertf32x4 ymm13,ymm8,xmm21,0x1
  aca2b4:	62 a3 bd 28 23 c5 03 	vshuff64x2 ymm16,ymm8,ymm21,0x3
  aca2bb:	c4 63 0d 18 c5 01    	vinsertf128 ymm8,ymm14,xmm5,0x1
  aca2c1:	c4 63 0d 06 f5 31    	vperm2f128 ymm14,ymm14,ymm5,0x31
  aca2c7:	c4 41 78 28 fc       	vmovaps xmm15,xmm12
  aca2cc:	c4 41 15 14 df       	vunpcklpd ymm11,ymm13,ymm15
  aca2d1:	62 c1 7c 08 28 ca    	vmovaps xmm17,xmm10
  aca2d7:	62 a1 bd 28 14 d1    	vunpcklpd ymm18,ymm8,ymm17
  aca2dd:	62 b1 24 28 c6 ea 88 	vshufps ymm5,ymm11,ymm18,0x88
  aca2e4:	62 31 24 28 c6 da dd 	vshufps ymm11,ymm11,ymm18,0xdd
  aca2eb:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  aca2f1:	c4 41 15 15 ef       	vunpckhpd ymm13,ymm13,ymm15
  aca2f6:	62 31 bd 28 15 c1    	vunpckhpd ymm8,ymm8,ymm17
  aca2fc:	c4 41 14 c6 f8 88    	vshufps ymm15,ymm13,ymm8,0x88
  aca302:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  aca308:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  aca30e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aca314:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  aca31a:	62 51 fd 20 14 ec    	vunpcklpd ymm13,ymm16,ymm12
  aca320:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  aca326:	62 c1 8d 28 14 ca    	vunpcklpd ymm17,ymm14,ymm10
  aca32c:	62 a1 14 28 c6 d1 88 	vshufps ymm18,ymm13,ymm17,0x88
  aca333:	62 a1 6c 20 c6 d2 d8 	vshufps ymm18,ymm18,ymm18,0xd8
  aca33a:	62 31 14 28 c6 e9 dd 	vshufps ymm13,ymm13,ymm17,0xdd
  aca341:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  aca347:	62 51 fd 20 15 e4    	vunpckhpd ymm12,ymm16,ymm12
  aca34d:	c4 41 0d 15 f2       	vunpckhpd ymm14,ymm14,ymm10
  aca352:	c4 41 1c c6 d6 dd    	vshufps ymm10,ymm12,ymm14,0xdd
  aca358:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aca35e:	c4 41 1c c6 e6 88    	vshufps ymm12,ymm12,ymm14,0x88
  aca364:	62 c1 1c 28 c6 c4 d8 	vshufps ymm16,ymm12,ymm12,0xd8
  aca36b:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  aca372:	00 
  aca373:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  aca37a:	c4 41 34 59 e6       	vmulps ymm12,ymm9,ymm14
  aca37f:	62 32 6d 20 bc e1    	vfnmadd231ps ymm12,ymm18,ymm17
  aca385:	62 51 6c 20 59 f6    	vmulps ymm14,ymm18,ymm14
  aca38b:	62 e1 7c 28 10 52 04 	vmovups ymm18,YMMWORD PTR [rdx+0x80]
  aca392:	62 32 35 28 b8 f1    	vfmadd231ps ymm14,ymm9,ymm17
  aca398:	62 e1 7c 28 10 4a 05 	vmovups ymm17,YMMWORD PTR [rdx+0xa0]
  aca39f:	62 31 4c 28 59 ca    	vmulps ymm9,ymm6,ymm18
  aca3a5:	62 32 05 28 bc c9    	vfnmadd231ps ymm9,ymm15,ymm17
  aca3ab:	62 31 04 28 59 fa    	vmulps ymm15,ymm15,ymm18
  aca3b1:	62 e1 7c 28 10 52 0c 	vmovups ymm18,YMMWORD PTR [rdx+0x180]
  aca3b8:	62 32 4d 28 b8 f9    	vfmadd231ps ymm15,ymm6,ymm17
  aca3be:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  aca3c5:	00 
  aca3c6:	62 a1 44 28 59 ca    	vmulps ymm17,ymm7,ymm18
  aca3cc:	62 e2 7d 20 bc ce    	vfnmadd231ps ymm17,ymm16,ymm6
  aca3d2:	62 a1 7c 20 59 c2    	vmulps ymm16,ymm16,ymm18
  aca3d8:	62 e1 7c 28 10 52 02 	vmovups ymm18,YMMWORD PTR [rdx+0x40]
  aca3df:	62 e2 45 28 b8 c6    	vfmadd231ps ymm16,ymm7,ymm6
  aca3e5:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  aca3ea:	62 b1 64 28 59 fa    	vmulps ymm7,ymm3,ymm18
  aca3f0:	c4 e2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm6
  aca3f5:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  aca3fb:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  aca402:	c4 62 65 b8 de       	vfmadd231ps ymm11,ymm3,ymm6
  aca407:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  aca40e:	00 
  aca40f:	62 b1 5c 28 59 f2    	vmulps ymm6,ymm4,ymm18
  aca415:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  aca41a:	62 31 14 28 59 ea    	vmulps ymm13,ymm13,ymm18
  aca420:	62 e1 7c 28 10 52 06 	vmovups ymm18,YMMWORD PTR [rdx+0xc0]
  aca427:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  aca42c:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  aca433:	00 
  aca434:	62 b1 74 28 59 e2    	vmulps ymm4,ymm1,ymm18
  aca43a:	c4 e2 3d bc e3       	vfnmadd231ps ymm4,ymm8,ymm3
  aca43f:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  aca445:	62 e1 7c 28 10 52 0e 	vmovups ymm18,YMMWORD PTR [rdx+0x1c0]
  aca44c:	c4 62 75 b8 c3       	vfmadd231ps ymm8,ymm1,ymm3
  aca451:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  aca458:	00 
  aca459:	62 b1 6c 28 59 da    	vmulps ymm3,ymm2,ymm18
  aca45f:	c4 e2 2d bc d9       	vfnmadd231ps ymm3,ymm10,ymm1
  aca464:	62 31 2c 28 59 d2    	vmulps ymm10,ymm10,ymm18
  aca46a:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  aca46f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  aca474:	c4 62 6d b8 d1       	vfmadd231ps ymm10,ymm2,ymm1
  aca479:	c5 9c 58 c8          	vaddps ymm1,ymm12,ymm0
  aca47d:	62 b1 34 28 58 d1    	vaddps ymm2,ymm9,ymm17
  aca483:	c4 c1 7c 5c c4       	vsubps ymm0,ymm0,ymm12
  aca488:	62 31 04 28 58 e0    	vaddps ymm12,ymm15,ymm16
  aca48e:	62 31 04 28 5c f8    	vsubps ymm15,ymm15,ymm16
  aca494:	62 e1 44 28 58 c6    	vaddps ymm16,ymm7,ymm6
  aca49a:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  aca49e:	c4 c1 24 58 fd       	vaddps ymm7,ymm11,ymm13
  aca4a3:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  aca4a8:	c4 41 3c 58 ea       	vaddps ymm13,ymm8,ymm10
  aca4ad:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  aca4b2:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  aca4b6:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  aca4ba:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  aca4be:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  aca4c3:	c5 74 58 f2          	vaddps ymm14,ymm1,ymm2
  aca4c7:	62 51 74 20 5c c9    	vsubps ymm9,ymm17,ymm9
  aca4cd:	62 c1 4c 28 58 cb    	vaddps ymm17,ymm6,ymm11
  aca4d3:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  aca4d7:	c5 3c 5c db          	vsubps ymm11,ymm8,ymm3
  aca4db:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  aca4df:	c4 62 7d 18 05 b4 ae 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5aaeb4]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  aca4e6:	5a ff 
  aca4e8:	62 c1 74 20 59 c8    	vmulps ymm17,ymm17,ymm8
  aca4ee:	c4 41 24 59 d8       	vmulps ymm11,ymm11,ymm8
  aca4f3:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  aca4f7:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  aca4fb:	62 51 7c 20 58 c2    	vaddps ymm8,ymm16,ymm10
  aca501:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  aca505:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  aca509:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  aca50e:	c5 1c 58 ec          	vaddps ymm13,ymm12,ymm4
  aca512:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  aca517:	c5 04 58 e0          	vaddps ymm12,ymm15,ymm0
  aca51b:	62 31 2c 28 5c d0    	vsubps ymm10,ymm10,ymm16
  aca521:	62 c1 74 20 58 c3    	vaddps ymm16,ymm17,ymm11
  aca527:	c4 c1 7c 5c c7       	vsubps ymm0,ymm0,ymm15
  aca52c:	c5 4c 5c fb          	vsubps ymm15,ymm6,ymm3
  aca530:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  aca534:	c5 b4 58 f5          	vaddps ymm6,ymm9,ymm5
  aca538:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  aca53d:	62 31 1c 28 58 c8    	vaddps ymm9,ymm12,ymm16
  aca543:	62 31 24 28 5c d9    	vsubps ymm11,ymm11,ymm17
  aca549:	62 c1 4c 28 58 cf    	vaddps ymm17,ymm6,ymm15
  aca54f:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  aca555:	62 e1 74 28 58 c7    	vaddps ymm16,ymm1,ymm7
  aca55b:	c4 c1 4c 5c f7       	vsubps ymm6,ymm6,ymm15
  aca560:	c5 2c 58 fc          	vaddps ymm15,ymm10,ymm4
  aca564:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  aca568:	c5 fc 58 fb          	vaddps ymm7,ymm0,ymm3
  aca56c:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  aca571:	c5 24 58 d5          	vaddps ymm10,ymm11,ymm5
  aca575:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  aca579:	c4 c1 0c 5c d8       	vsubps ymm3,ymm14,ymm8
  aca57e:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  aca583:	c5 14 5c da          	vsubps ymm11,ymm13,ymm2
  aca587:	c4 41 0c 58 c0       	vaddps ymm8,ymm14,ymm8
  aca58c:	c5 94 58 d2          	vaddps ymm2,ymm13,ymm2
  aca590:	c5 7c 28 2d 48 cc 5a 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff5acc48]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aca597:	ff 
  aca598:	c4 43 7d 19 c6 01    	vextractf128 xmm14,ymm8,0x1
  aca59e:	62 72 15 28 7f c2    	vpermt2ps ymm8,ymm13,ymm2
  aca5a4:	c5 7c 11 06          	vmovups YMMWORD PTR [rsi],ymm8
  aca5a8:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  aca5ae:	c5 88 14 d2          	vunpcklps xmm2,xmm14,xmm2
  aca5b2:	c5 f8 11 56 20       	vmovups XMMWORD PTR [rsi+0x20],xmm2
  aca5b7:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  aca5bd:	62 32 15 28 7f c9    	vpermt2ps ymm9,ymm13,ymm17
  aca5c3:	c5 7c 11 4e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm9
  aca5c8:	62 c3 7d 28 19 c8 01 	vextractf32x4 xmm8,ymm17,0x1
  aca5cf:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  aca5d4:	c5 f8 11 56 50       	vmovups XMMWORD PTR [rsi+0x50],xmm2
  aca5d9:	62 e3 7d 28 19 c2 01 	vextractf32x4 xmm2,ymm16,0x1
  aca5e0:	62 c2 15 28 7f c7    	vpermt2ps ymm16,ymm13,ymm15
  aca5e6:	62 e1 7c 28 11 46 03 	vmovups YMMWORD PTR [rsi+0x60],ymm16
  aca5ed:	c4 43 7d 19 f8 01    	vextractf128 xmm8,ymm15,0x1
  aca5f3:	c4 c1 68 14 d0       	vunpcklps xmm2,xmm2,xmm8
  aca5f8:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  aca5ff:	00 
  aca600:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  aca606:	62 d2 15 28 7f fa    	vpermt2ps ymm7,ymm13,ymm10
  aca60c:	c5 fc 11 be 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm7
  aca613:	00 
  aca614:	c4 63 7d 19 d7 01    	vextractf128 xmm7,ymm10,0x1
  aca61a:	c5 e8 14 d7          	vunpcklps xmm2,xmm2,xmm7
  aca61e:	c5 f8 11 96 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm2
  aca625:	00 
  aca626:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  aca62c:	62 d2 15 28 7f db    	vpermt2ps ymm3,ymm13,ymm11
  aca632:	c5 fc 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm3
  aca639:	00 
  aca63a:	c4 63 7d 19 db 01    	vextractf128 xmm3,ymm11,0x1
  aca640:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  aca644:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  aca64b:	00 
  aca64c:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  aca652:	62 72 15 28 7f e6    	vpermt2ps ymm12,ymm13,ymm6
  aca658:	c5 7c 11 a6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm12
  aca65f:	00 
  aca660:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  aca666:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  aca66a:	c5 f8 11 96 10 01 00 	vmovups XMMWORD PTR [rsi+0x110],xmm2
  aca671:	00 
  aca672:	c4 e3 7d 19 ca 01    	vextractf128 xmm2,ymm1,0x1
  aca678:	62 f2 15 28 7f cc    	vpermt2ps ymm1,ymm13,ymm4
  aca67e:	c5 fc 11 8e 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm1
  aca685:	00 
  aca686:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  aca68c:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  aca690:	c5 f8 11 8e 40 01 00 	vmovups XMMWORD PTR [rsi+0x140],xmm1
  aca697:	00 
  aca698:	62 72 7d 28 77 ed    	vpermi2ps ymm13,ymm0,ymm5
  aca69e:	c5 7c 11 ae 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm13
  aca6a5:	00 
  aca6a6:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  aca6ac:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  aca6b2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  aca6b6:	c5 f8 11 86 70 01 00 	vmovups XMMWORD PTR [rsi+0x170],xmm0
  aca6bd:	00 
  aca6be:	c5 f8 77             	vzeroupper
  aca6c1:	c3                   	ret
