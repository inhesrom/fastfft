
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b031c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b031c0:	48 c1 e2 06          	shl    rdx,0x6
  b031c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b031c8:	c4 e2 7d 18 05 8f 22 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff57228f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b031cf:	57 ff 
  b031d1:	31 d2                	xor    edx,edx
  b031d3:	c4 e2 7d 18 0d f8 20 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5720f8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b031da:	57 ff 
  b031dc:	c5 fc 28 15 fc 3f 57 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff573ffc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b031e3:	ff 
  b031e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b031eb:	00 00 00 00 00 
  b031f0:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  b031f5:	c5 f8 10 64 17 20    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b031fb:	c5 e4 c6 ec dd       	vshufps ymm5,ymm3,ymm4,0xdd
  b03200:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b03206:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b0320c:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b03213:	00 00 
  b03215:	c4 c1 44 c6 f0 dd    	vshufps ymm6,ymm7,ymm8,0xdd
  b0321b:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  b03221:	c4 41 54 5c d1       	vsubps ymm10,ymm5,ymm9
  b03226:	c5 7c 10 9c 17 90 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x90]
  b0322d:	00 00 
  b0322f:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  b03236:	00 00 
  b03238:	c4 c1 24 c6 f4 88    	vshufps ymm6,ymm11,ymm12,0x88
  b0323e:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  b03244:	c5 7c 10 74 17 30    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  b0324a:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  b03250:	c4 c1 0c c6 f7 88    	vshufps ymm6,ymm14,ymm15,0x88
  b03256:	62 e3 fd 28 01 c6 d8 	vpermpd ymm16,ymm6,0xd8
  b0325d:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  b03263:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b03269:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  b0326e:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b03274:	c4 c1 44 c6 e0 88    	vshufps ymm4,ymm7,ymm8,0x88
  b0327a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b03280:	c5 e4 5c fc          	vsubps ymm7,ymm3,ymm4
  b03284:	c4 41 0c c6 c7 dd    	vshufps ymm8,ymm14,ymm15,0xdd
  b0328a:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b03290:	c4 41 24 c6 dc dd    	vshufps ymm11,ymm11,ymm12,0xdd
  b03296:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b0329c:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  b032a1:	c4 41 44 5c f4       	vsubps ymm14,ymm7,ymm12
  b032a6:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b032aa:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  b032af:	c4 41 54 5c d8       	vsubps ymm11,ymm5,ymm8
  b032b4:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b032b8:	62 d1 7c 20 58 e5    	vaddps ymm4,ymm16,ymm13
  b032be:	c5 64 5c cc          	vsubps ymm9,ymm3,ymm4
  b032c2:	62 51 74 20 58 d2    	vaddps ymm10,ymm17,ymm10
  b032c8:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b032cc:	c5 3c 58 e5          	vaddps ymm12,ymm8,ymm5
  b032d0:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b032d4:	c5 f8 28 e3          	vmovaps xmm4,xmm3
  b032d8:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b032de:	c5 f8 28 ef          	vmovaps xmm5,xmm7
  b032e2:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b032e8:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  b032ed:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b032f3:	c4 41 65 14 e9       	vunpcklpd ymm13,ymm3,ymm9
  b032f8:	c5 78 29 f3          	vmovaps xmm3,xmm14
  b032fc:	c4 43 7d 19 f1 01    	vextractf128 xmm9,ymm14,0x1
  b03302:	c4 41 45 14 f1       	vunpcklpd ymm14,ymm7,ymm9
  b03307:	c4 c1 5d 15 f8       	vunpckhpd ymm7,ymm4,ymm8
  b0330c:	c4 c1 5d 14 e0       	vunpcklpd ymm4,ymm4,ymm8
  b03311:	c5 55 15 c3          	vunpckhpd ymm8,ymm5,ymm3
  b03315:	c5 d5 14 eb          	vunpcklpd ymm5,ymm5,ymm3
  b03319:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  b0331e:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b03323:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  b03328:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b0332d:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  b03333:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  b03338:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  b0333e:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  b03343:	c4 c1 14 c6 ee 88    	vshufps ymm5,ymm13,ymm14,0x88
  b03349:	c5 54 c6 c5 d8       	vshufps ymm8,ymm5,ymm5,0xd8
  b0334e:	c4 c1 14 c6 ee dd    	vshufps ymm5,ymm13,ymm14,0xdd
  b03354:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b03359:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b0335e:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b03364:	c4 41 78 28 f2       	vmovaps xmm14,xmm10
  b03369:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b0336f:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  b03374:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b0337a:	c4 41 1d 14 e3       	vunpcklpd ymm12,ymm12,ymm11
  b0337f:	c5 78 28 de          	vmovaps xmm11,xmm6
  b03383:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b03389:	c5 2d 14 d6          	vunpcklpd ymm10,ymm10,ymm6
  b0338d:	62 c1 95 28 15 c7    	vunpckhpd ymm16,ymm13,ymm15
  b03393:	c4 41 15 14 ef       	vunpcklpd ymm13,ymm13,ymm15
  b03398:	c4 41 0d 15 fb       	vunpckhpd ymm15,ymm14,ymm11
  b0339d:	c4 41 0d 14 db       	vunpcklpd ymm11,ymm14,ymm11
  b033a2:	c4 c1 14 c6 f3 88    	vshufps ymm6,ymm13,ymm11,0x88
  b033a8:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b033ad:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  b033b3:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b033b9:	62 51 7c 20 c6 ef 88 	vshufps ymm13,ymm16,ymm15,0x88
  b033c0:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b033c6:	62 51 7c 20 c6 f7 dd 	vshufps ymm14,ymm16,ymm15,0xdd
  b033cd:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b033d3:	c4 41 1c c6 fa 88    	vshufps ymm15,ymm12,ymm10,0x88
  b033d9:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b033df:	c4 41 1c c6 d2 dd    	vshufps ymm10,ymm12,ymm10,0xdd
  b033e5:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  b033eb:	62 e1 7c 28 10 41 04 	vmovups ymm16,YMMWORD PTR [rcx+0x80]
  b033f2:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  b033f9:	62 31 34 28 59 d0    	vmulps ymm10,ymm9,ymm16
  b033ff:	62 32 15 28 bc d1    	vfnmadd231ps ymm10,ymm13,ymm17
  b03405:	62 31 14 28 59 e8    	vmulps ymm13,ymm13,ymm16
  b0340b:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  b03412:	62 32 35 28 b8 e9    	vfmadd231ps ymm13,ymm9,ymm17
  b03418:	c5 7c 10 89 20 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x120]
  b0341f:	00 
  b03420:	62 a1 3c 28 59 c8    	vmulps ymm17,ymm8,ymm16
  b03426:	62 c2 05 28 bc c9    	vfnmadd231ps ymm17,ymm15,ymm9
  b0342c:	62 31 04 28 59 f8    	vmulps ymm15,ymm15,ymm16
  b03432:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  b03439:	c4 42 3d b8 f9       	vfmadd231ps ymm15,ymm8,ymm9
  b0343e:	c5 7c 10 81 e0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xe0]
  b03445:	00 
  b03446:	62 31 44 28 59 c8    	vmulps ymm9,ymm7,ymm16
  b0344c:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  b03451:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  b03457:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  b0345e:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  b03463:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  b0346a:	00 
  b0346b:	62 31 54 28 59 c0    	vmulps ymm8,ymm5,ymm16
  b03471:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  b03476:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  b0347c:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  b03483:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  b03488:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  b0348d:	62 b1 5c 28 59 f8    	vmulps ymm7,ymm4,ymm16
  b03493:	c4 e2 25 bc fd       	vfnmadd231ps ymm7,ymm11,ymm5
  b03498:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  b0349e:	62 a1 2c 28 58 c1    	vaddps ymm16,ymm10,ymm17
  b034a4:	c4 62 5d b8 dd       	vfmadd231ps ymm11,ymm4,ymm5
  b034a9:	62 b1 64 28 58 e0    	vaddps ymm4,ymm3,ymm16
  b034af:	c5 bc 58 ef          	vaddps ymm5,ymm8,ymm7
  b034b3:	62 e2 7d 28 ac c3    	vfnmadd213ps ymm16,ymm0,ymm3
  b034b9:	c4 c1 14 58 df       	vaddps ymm3,ymm13,ymm15
  b034be:	c4 41 14 5c ef       	vsubps ymm13,ymm13,ymm15
  b034c3:	c5 34 58 fd          	vaddps ymm15,ymm9,ymm5
  b034c7:	c4 62 7d bc cd       	vfnmadd231ps ymm9,ymm0,ymm5
  b034cc:	c4 c1 1c 58 eb       	vaddps ymm5,ymm12,ymm11
  b034d1:	c4 41 1c 5c db       	vsubps ymm11,ymm12,ymm11
  b034d6:	c5 64 58 e6          	vaddps ymm12,ymm3,ymm6
  b034da:	c4 e2 7d ac de       	vfnmadd213ps ymm3,ymm0,ymm6
  b034df:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b034e5:	c5 0c 58 d5          	vaddps ymm10,ymm14,ymm5
  b034e9:	c4 62 7d bc f5       	vfnmadd231ps ymm14,ymm0,ymm5
  b034ee:	c5 94 59 e9          	vmulps ymm5,ymm13,ymm1
  b034f2:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  b034f6:	62 71 7c 20 58 c5    	vaddps ymm8,ymm16,ymm5
  b034fc:	c5 24 59 d9          	vmulps ymm11,ymm11,ymm1
  b03500:	62 f1 7c 20 5c ed    	vsubps ymm5,ymm16,ymm5
  b03506:	c4 41 34 58 eb       	vaddps ymm13,ymm9,ymm11
  b0350b:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  b0350f:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  b03514:	c5 64 5c de          	vsubps ymm11,ymm3,ymm6
  b03518:	c5 c4 59 f9          	vmulps ymm7,ymm7,ymm1
  b0351c:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b03520:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b03524:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b03528:	c5 24 5c f6          	vsubps ymm14,ymm11,ymm6
  b0352c:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  b03530:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  b03534:	c5 e4 5c df          	vsubps ymm3,ymm3,ymm7
  b03538:	c4 c1 1c 5c fa       	vsubps ymm7,ymm12,ymm10
  b0353d:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  b03542:	c5 00 58 e4          	vaddps xmm12,xmm15,xmm4
  b03546:	62 52 6d 28 7f e2    	vpermt2ps ymm12,ymm2,ymm10
  b0354c:	c5 7c 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm12
  b03551:	c4 41 38 5c d5       	vsubps xmm10,xmm8,xmm13
  b03556:	62 52 6d 28 7f d6    	vpermt2ps ymm10,ymm2,ymm14
  b0355c:	c5 7c 11 54 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm10
  b03562:	c5 30 58 d5          	vaddps xmm10,xmm9,xmm5
  b03566:	62 52 6d 28 7f d3    	vpermt2ps ymm10,ymm2,ymm11
  b0356c:	c5 7c 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm10
  b03572:	c4 c1 58 5c e7       	vsubps xmm4,xmm4,xmm15
  b03577:	62 f2 6d 28 7f e7    	vpermt2ps ymm4,ymm2,ymm7
  b0357d:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  b03583:	c4 c1 38 58 e5       	vaddps xmm4,xmm8,xmm13
  b03588:	62 f2 6d 28 7f e6    	vpermt2ps ymm4,ymm2,ymm6
  b0358e:	c5 fc 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm4
  b03595:	00 00 
  b03597:	c4 c1 50 5c e1       	vsubps xmm4,xmm5,xmm9
  b0359c:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  b035a2:	c5 fc 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  b035a9:	00 00 
  b035ab:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b035b2:	48 39 d0             	cmp    rax,rdx
  b035b5:	0f 85 35 fc ff ff    	jne    b031f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b035bb:	c5 f8 77             	vzeroupper
  b035be:	c3                   	ret
