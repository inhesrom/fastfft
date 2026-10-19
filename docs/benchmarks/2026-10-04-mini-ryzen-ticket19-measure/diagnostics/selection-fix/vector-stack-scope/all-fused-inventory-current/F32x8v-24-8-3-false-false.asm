
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ae2080 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ae2080:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ae2085:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae208b:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  ae2090:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae2096:	c5 f8 10 3f          	vmovups xmm7,XMMWORD PTR [rdi]
  ae209a:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  ae209f:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  ae20a4:	62 e1 7c 08 10 87 48 	vmovups xmm16,XMMWORD PTR [rdi+0x48]
  ae20ab:	00 00 00 
  ae20ae:	c4 c3 7d 19 c2 01    	vextractf128 xmm10,ymm0,0x1
  ae20b4:	62 41 44 08 c6 ea dd 	vshufps xmm29,xmm7,xmm10,0xdd
  ae20bb:	c5 78 10 5f 60       	vmovups xmm11,XMMWORD PTR [rdi+0x60]
  ae20c0:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  ae20c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae20cb:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae20d1:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  ae20d7:	c4 c1 20 c6 e6 dd    	vshufps xmm4,xmm11,xmm14,0xdd
  ae20dd:	62 61 14 20 5c d4    	vsubps ymm26,ymm29,ymm4
  ae20e3:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  ae20ea:	00 
  ae20eb:	c5 fb 10 87 a0 00 00 	vmovsd xmm0,QWORD PTR [rdi+0xa0]
  ae20f2:	00 
  ae20f3:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae20f9:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae20ff:	62 b3 7d 28 19 c1 01 	vextractf32x4 xmm17,ymm0,0x1
  ae2106:	62 b1 1c 08 c6 f1 88 	vshufps xmm6,xmm12,xmm17,0x88
  ae210d:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  ae2112:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae2118:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae211e:	62 b3 7d 28 19 c2 01 	vextractf32x4 xmm18,ymm0,0x1
  ae2125:	62 31 54 08 c6 ca 88 	vshufps xmm9,xmm5,xmm18,0x88
  ae212c:	c4 41 4c 5c c1       	vsubps ymm8,ymm6,ymm9
  ae2131:	62 c1 2c 20 5c f0    	vsubps ymm22,ymm26,ymm8
  ae2137:	c5 7b 10 6f 58       	vmovsd xmm13,QWORD PTR [rdi+0x58]
  ae213c:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  ae2142:	c4 43 15 0c ef c0    	vblendps ymm13,ymm13,ymm15,0xc0
  ae2148:	62 33 7d 28 19 eb 01 	vextractf32x4 xmm19,ymm13,0x1
  ae214f:	62 31 7c 00 c6 eb dd 	vshufps xmm13,xmm16,xmm19,0xdd
  ae2156:	62 e1 7c 08 10 a7 a8 	vmovups xmm20,XMMWORD PTR [rdi+0xa8]
  ae215d:	00 00 00 
  ae2160:	62 e1 ff 08 10 6f 17 	vmovsd xmm21,QWORD PTR [rdi+0xb8]
  ae2167:	62 b3 7d 28 18 c5 01 	vinsertf32x4 ymm0,ymm0,xmm21,0x1
  ae216e:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  ae2174:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae217a:	62 e1 5c 00 c6 e8 dd 	vshufps xmm21,xmm20,xmm0,0xdd
  ae2181:	62 a1 14 28 5c fd    	vsubps ymm23,ymm13,ymm21
  ae2187:	62 a1 7c 00 c6 c3 88 	vshufps xmm16,xmm16,xmm19,0x88
  ae218e:	62 f1 5c 00 c6 c0 88 	vshufps xmm0,xmm20,xmm0,0x88
  ae2195:	62 e1 7c 20 5c d8    	vsubps ymm19,ymm16,ymm0
  ae219b:	62 a1 44 20 5c e3    	vsubps ymm20,ymm23,ymm19
  ae21a1:	62 62 7d 28 18 05 f1 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5931f1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ae21a8:	31 59 ff 
  ae21ab:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  ae21b1:	62 61 ff 08 10 4f 05 	vmovsd xmm25,QWORD PTR [rdi+0x28]
  ae21b8:	62 93 7d 28 18 c9 01 	vinsertf32x4 ymm1,ymm0,xmm25,0x1
  ae21bf:	c4 c3 75 0c cf c0    	vblendps ymm1,ymm1,ymm15,0xc0
  ae21c5:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ae21cb:	62 61 64 08 c6 c9 88 	vshufps xmm25,xmm3,xmm1,0x88
  ae21d2:	62 61 7c 08 10 9f 78 	vmovups xmm27,XMMWORD PTR [rdi+0x78]
  ae21d9:	00 00 00 
  ae21dc:	62 61 ff 08 10 67 11 	vmovsd xmm28,QWORD PTR [rdi+0x88]
  ae21e3:	62 93 7d 28 18 d4 01 	vinsertf32x4 ymm2,ymm0,xmm28,0x1
  ae21ea:	c4 c3 6d 0c d7 c0    	vblendps ymm2,ymm2,ymm15,0xc0
  ae21f0:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ae21f6:	62 71 24 00 c6 fa 88 	vshufps xmm15,xmm27,xmm2,0x88
  ae21fd:	62 41 34 20 5c e7    	vsubps ymm28,ymm25,ymm15
  ae2203:	c5 e0 c6 c9 dd       	vshufps xmm1,xmm3,xmm1,0xdd
  ae2208:	62 f1 24 00 c6 d2 dd 	vshufps xmm2,xmm27,xmm2,0xdd
  ae220f:	62 61 74 28 5c da    	vsubps ymm27,ymm1,ymm2
  ae2215:	62 91 1c 20 58 db    	vaddps ymm3,ymm28,ymm27
  ae221b:	62 01 64 28 59 f0    	vmulps ymm30,ymm3,ymm24
  ae2221:	62 91 5c 20 5c de    	vsubps ymm3,ymm20,ymm30
  ae2227:	c4 c1 40 c6 fa 88    	vshufps xmm7,xmm7,xmm10,0x88
  ae222d:	c4 41 20 c6 d6 88    	vshufps xmm10,xmm11,xmm14,0x88
  ae2233:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  ae2238:	62 b1 54 08 c6 ea dd 	vshufps xmm5,xmm5,xmm18,0xdd
  ae223f:	62 31 1c 08 c6 e1 dd 	vshufps xmm12,xmm12,xmm17,0xdd
  ae2246:	c4 41 54 5c f4       	vsubps ymm14,ymm5,ymm12
  ae224b:	62 c1 24 28 5c ce    	vsubps ymm17,ymm11,ymm14
  ae2251:	62 81 24 20 5c d4    	vsubps ymm18,ymm27,ymm28
  ae2257:	62 81 6c 20 59 d0    	vmulps ymm18,ymm18,ymm24
  ae225d:	62 a1 64 20 58 df    	vaddps ymm19,ymm19,ymm23
  ae2263:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  ae2269:	62 a1 6c 20 58 fb    	vaddps ymm23,ymm18,ymm19
  ae226f:	62 f1 14 20 58 e4    	vaddps ymm4,ymm29,ymm4
  ae2275:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  ae2279:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  ae227d:	62 f1 7c 20 58 c0    	vaddps ymm0,ymm16,ymm0
  ae2283:	62 51 34 20 58 ff    	vaddps ymm15,ymm25,ymm15
  ae2289:	62 c1 7c 28 5c c7    	vsubps ymm16,ymm0,ymm15
  ae228f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  ae2293:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ae2297:	c5 44 5c ce          	vsubps ymm9,ymm7,ymm6
  ae229b:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  ae229f:	62 b1 14 28 58 d5    	vaddps ymm2,ymm13,ymm21
  ae22a5:	c5 74 5c d2          	vsubps ymm10,ymm1,ymm2
  ae22a9:	62 11 3c 28 58 c2    	vaddps ymm8,ymm8,ymm26
  ae22af:	62 31 6c 20 5c eb    	vsubps ymm13,ymm18,ymm19
  ae22b5:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  ae22ba:	62 31 0c 20 58 f4    	vaddps ymm14,ymm30,ymm20
  ae22c0:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  ae22c4:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  ae22c8:	c5 c4 58 d6          	vaddps ymm2,ymm7,ymm6
  ae22cc:	c5 84 58 c0          	vaddps ymm0,ymm15,ymm0
  ae22d0:	62 f1 4c 20 58 eb    	vaddps ymm5,ymm22,ymm3
  ae22d6:	62 b1 74 20 58 f7    	vaddps ymm6,ymm17,ymm23
  ae22dc:	62 d1 7c 20 58 fc    	vaddps ymm7,ymm16,ymm12
  ae22e2:	c4 41 34 58 fa       	vaddps ymm15,ymm9,ymm10
  ae22e7:	62 c1 3c 28 58 d5    	vaddps ymm18,ymm8,ymm13
  ae22ed:	62 c1 24 28 58 de    	vaddps ymm19,ymm11,ymm14
  ae22f3:	62 e1 5c 28 58 e1    	vaddps ymm20,ymm4,ymm1
  ae22f9:	62 e1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm0
  ae22ff:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  ae2303:	62 f3 55 20 18 c0 01 	vinsertf32x4 ymm0,ymm21,xmm0,0x1
  ae230a:	c4 c1 20 5c d6       	vsubps xmm2,xmm11,xmm14
  ae230f:	62 f3 65 20 18 d2 01 	vinsertf32x4 ymm2,ymm19,xmm2,0x1
  ae2316:	c4 41 30 5c ca       	vsubps xmm9,xmm9,xmm10
  ae231b:	c4 43 05 18 c9 01    	vinsertf128 ymm9,ymm15,xmm9,0x1
  ae2321:	62 31 74 00 5c d7    	vsubps xmm10,xmm17,xmm23
  ae2327:	c4 c3 4d 18 f2 01    	vinsertf128 ymm6,ymm6,xmm10,0x1
  ae232d:	c4 41 7d 15 d1       	vunpckhpd ymm10,ymm0,ymm9
  ae2332:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  ae2337:	c5 6d 15 ce          	vunpckhpd ymm9,ymm2,ymm6
  ae233b:	c4 41 2c c6 c9 88    	vshufps ymm9,ymm10,ymm9,0x88
  ae2341:	c5 ed 14 d6          	vunpcklpd ymm2,ymm2,ymm6
  ae2345:	c5 fc c6 f2 88       	vshufps ymm6,ymm0,ymm2,0x88
  ae234a:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ae234f:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  ae2354:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae2359:	c4 c1 34 c6 d1 d8    	vshufps ymm2,ymm9,ymm9,0xd8
  ae235f:	c5 d8 5c c9          	vsubps xmm1,xmm4,xmm1
  ae2363:	62 f3 5d 20 18 c9 01 	vinsertf32x4 ymm1,ymm20,xmm1,0x1
  ae236a:	c4 c1 38 5c e5       	vsubps xmm4,xmm8,xmm13
  ae236f:	62 f3 6d 20 18 e4 01 	vinsertf32x4 ymm4,ymm18,xmm4,0x1
  ae2376:	62 31 1c 08 5c c0    	vsubps xmm8,xmm12,xmm16
  ae237c:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  ae2382:	62 f1 4c 00 5c db    	vsubps xmm3,xmm22,xmm3
  ae2388:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  ae238e:	c5 f5 15 ef          	vunpckhpd ymm5,ymm1,ymm7
  ae2392:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  ae2396:	c5 dd 15 fb          	vunpckhpd ymm7,ymm4,ymm3
  ae239a:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  ae239f:	c5 dd 14 db          	vunpcklpd ymm3,ymm4,ymm3
  ae23a3:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  ae23a8:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ae23ad:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  ae23b2:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ae23b7:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  ae23bc:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  ae23c1:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  ae23c6:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ae23cd:	00 
  ae23ce:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  ae23d5:	00 
  ae23d6:	c5 74 59 d5          	vmulps ymm10,ymm1,ymm5
  ae23da:	c4 62 7d b8 d7       	vfmadd231ps ymm10,ymm0,ymm7
  ae23df:	c5 3c 59 db          	vmulps ymm11,ymm8,ymm3
  ae23e3:	c4 42 6d b8 d9       	vfmadd231ps ymm11,ymm2,ymm9
  ae23e8:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  ae23ed:	c4 62 7d 18 2d 6a 30 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff59306a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ae23f4:	59 ff 
  ae23f6:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  ae23fb:	c4 62 1d ac f4       	vfnmadd213ps ymm14,ymm12,ymm4
  ae2400:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  ae2404:	c4 e2 75 bc c7       	vfnmadd231ps ymm0,ymm1,ymm7
  ae2409:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ae240d:	c4 c2 65 bc c9       	vfnmadd231ps ymm1,ymm3,ymm9
  ae2412:	c4 e2 7d 18 15 b9 2e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff592eb9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ae2419:	59 ff 
  ae241b:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  ae241f:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  ae2423:	c5 8c 58 eb          	vaddps ymm5,ymm14,ymm3
  ae2427:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  ae242b:	c4 62 7d ac ee       	vfnmadd213ps ymm13,ymm0,ymm6
  ae2430:	c4 c1 2c 5c cb       	vsubps ymm1,ymm10,ymm11
  ae2435:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  ae2439:	c5 94 5c d1          	vsubps ymm2,ymm13,ymm1
  ae243d:	c5 8c 5c db          	vsubps ymm3,ymm14,ymm3
  ae2441:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  ae2445:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  ae2449:	c5 cc 58 c0          	vaddps ymm0,ymm6,ymm0
  ae244d:	c5 fc 28 35 4b 34 59 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff59344b]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ae2454:	ff 
  ae2455:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ae2459:	62 f2 4d 28 7f fc    	vpermt2ps ymm7,ymm6,ymm4
  ae245f:	c5 7c 28 05 79 4d 59 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff594d79]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ae2466:	ff 
  ae2467:	62 f2 3d 28 7f c4    	vpermt2ps ymm0,ymm8,ymm4
  ae246d:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  ae2471:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  ae2476:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  ae247a:	62 f2 4d 28 7f c3    	vpermt2ps ymm0,ymm6,ymm3
  ae2480:	62 f2 3d 28 7f cb    	vpermt2ps ymm1,ymm8,ymm3
  ae2486:	c5 fc 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm1
  ae248b:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  ae2490:	62 f2 6d 28 77 f5    	vpermi2ps ymm6,ymm2,ymm5
  ae2496:	62 f2 3d 28 7f d5    	vpermt2ps ymm2,ymm8,ymm5
  ae249c:	c5 fc 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm2
  ae24a3:	00 
  ae24a4:	c5 fc 11 b6 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm6
  ae24ab:	00 
  ae24ac:	c5 f8 77             	vzeroupper
  ae24af:	c3                   	ret
