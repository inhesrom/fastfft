
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000722300 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  722300:	55                   	push   rbp
  722301:	48 89 e5             	mov    rbp,rsp
  722304:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  722308:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  72230f:	48 c1 e2 06          	shl    rdx,0x6
  722313:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  722317:	31 d2                	xor    edx,edx
  722319:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  722320:	00 
  722321:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  722326:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  72232d:	00 00 00 
  722330:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  722337:	00 
  722338:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  72233d:	c5 f8 10 3c 17       	vmovups xmm7,XMMWORD PTR [rdi+rdx*1]
  722342:	c5 78 10 44 17 10    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x10]
  722348:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  72234e:	c5 f8 10 74 17 30    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x30]
  722354:	c4 c1 40 c6 c0 88    	vshufps xmm0,xmm7,xmm8,0x88
  72235a:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  722361:	00 00 
  722363:	c5 78 10 5c 17 50    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x50]
  722369:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  72236f:	c4 c1 18 c6 c3 88    	vshufps xmm0,xmm12,xmm11,0x88
  722375:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  72237b:	c5 78 10 ac 17 90 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x90]
  722382:	00 00 
  722384:	c5 78 10 b4 17 80 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x80]
  72238b:	00 00 
  72238d:	c4 c1 08 c6 e5 88    	vshufps xmm4,xmm14,xmm13,0x88
  722393:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  722399:	c5 78 10 7c 17 70    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x70]
  72239f:	c5 f8 10 54 17 60    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x60]
  7223a5:	c4 41 68 c6 cf 88    	vshufps xmm9,xmm2,xmm15,0x88
  7223ab:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  7223b2:	00 00 
  7223b4:	c4 41 40 c6 d0 dd    	vshufps xmm10,xmm7,xmm8,0xdd
  7223ba:	c5 f8 10 84 17 a0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xa0]
  7223c1:	00 00 
  7223c3:	c4 c1 18 c6 db dd    	vshufps xmm3,xmm12,xmm11,0xdd
  7223c9:	c5 f8 c6 f9 88       	vshufps xmm7,xmm0,xmm1,0x88
  7223ce:	c4 41 08 c6 ed dd    	vshufps xmm13,xmm14,xmm13,0xdd
  7223d4:	c5 50 c6 c6 88       	vshufps xmm8,xmm5,xmm6,0x88
  7223d9:	c4 41 68 c6 ff dd    	vshufps xmm15,xmm2,xmm15,0xdd
  7223df:	c5 f8 c6 c1 dd       	vshufps xmm0,xmm0,xmm1,0xdd
  7223e4:	c5 d0 c6 ce dd       	vshufps xmm1,xmm5,xmm6,0xdd
  7223e9:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  7223ef:	c5 4c 58 e4          	vaddps ymm12,ymm6,ymm4
  7223f3:	c5 fc 28 ac 24 80 00 	vmovaps ymm5,YMMWORD PTR [rsp+0x80]
  7223fa:	00 00 
  7223fc:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  722400:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  722407:	00 00 
  722409:	c5 3c 58 df          	vaddps ymm11,ymm8,ymm7
  72240d:	c4 e2 7d 18 15 4a 30 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff95304a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  722414:	95 ff 
  722416:	c4 62 6d ac e5       	vfnmadd213ps ymm12,ymm2,ymm5
  72241b:	c5 14 58 f3          	vaddps ymm14,ymm13,ymm3
  72241f:	c4 c1 64 5c ed       	vsubps ymm5,ymm3,ymm13
  722424:	c4 41 24 58 e9       	vaddps ymm13,ymm11,ymm9
  722429:	c4 42 6d ac d9       	vfnmadd213ps ymm11,ymm2,ymm9
  72242e:	c5 7c 58 c9          	vaddps ymm9,ymm0,ymm1
  722432:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  722436:	c4 c1 0c 58 da       	vaddps ymm3,ymm14,ymm10
  72243b:	c4 42 6d ac f2       	vfnmadd213ps ymm14,ymm2,ymm10
  722440:	c5 cc 5c 4c 24 40    	vsubps ymm1,ymm6,YMMWORD PTR [rsp+0x40]
  722446:	c4 c1 34 58 e7       	vaddps ymm4,ymm9,ymm15
  72244b:	c4 42 6d ac cf       	vfnmadd213ps ymm9,ymm2,ymm15
  722450:	c4 e2 7d 18 15 7b 2e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff952e7b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  722457:	95 ff 
  722459:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  72245d:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  722462:	c5 1c 58 d5          	vaddps ymm10,ymm12,ymm5
  722466:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  72246a:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  72246e:	c5 24 58 e0          	vaddps ymm12,ymm11,ymm0
  722472:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  722476:	c5 a4 5c c0          	vsubps ymm0,ymm11,ymm0
  72247a:	c5 0c 5c d9          	vsubps ymm11,ymm14,ymm1
  72247e:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  722482:	c5 0c 58 c1          	vaddps ymm8,ymm14,ymm1
  722486:	c5 b4 5c cf          	vsubps ymm1,ymm9,ymm7
  72248a:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  72248e:	c4 c1 2c 5c fc       	vsubps ymm7,ymm10,ymm12
  722493:	c4 41 28 58 d4       	vaddps xmm10,xmm10,xmm12
  722498:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  72249f:	00 00 
  7224a1:	c5 14 58 e2          	vaddps ymm12,ymm13,ymm2
  7224a5:	c4 43 1d 18 d2 01    	vinsertf128 ymm10,ymm12,xmm10,0x1
  7224ab:	c5 50 5c e0          	vsubps xmm12,xmm5,xmm0
  7224af:	c4 c3 45 18 fc 01    	vinsertf128 ymm7,ymm7,xmm12,0x1
  7224b5:	c5 d0 58 c0          	vaddps xmm0,xmm5,xmm0
  7224b9:	c4 c1 68 5c ed       	vsubps xmm5,xmm2,xmm13
  7224be:	c5 ac 14 f7          	vunpcklps ymm6,ymm10,ymm7
  7224c2:	c5 7c 14 e5          	vunpcklps ymm12,ymm0,ymm5
  7224c6:	c4 c1 4d 14 d4       	vunpcklpd ymm2,ymm6,ymm12
  7224cb:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  7224d0:	c5 2c 15 d7          	vunpckhps ymm10,ymm10,ymm7
  7224d4:	c5 fc 15 c5          	vunpckhps ymm0,ymm0,ymm5
  7224d8:	c5 ad 14 f8          	vunpcklpd ymm7,ymm10,ymm0
  7224dc:	c5 ad 15 e8          	vunpckhpd ymm5,ymm10,ymm0
  7224e0:	c5 a4 5c c1          	vsubps ymm0,ymm11,ymm1
  7224e4:	c5 a0 58 c9          	vaddps xmm1,xmm11,xmm1
  7224e8:	c5 64 58 d4          	vaddps ymm10,ymm3,ymm4
  7224ec:	c4 e3 2d 18 c9 01    	vinsertf128 ymm1,ymm10,xmm1,0x1
  7224f2:	c4 41 38 5c d1       	vsubps xmm10,xmm8,xmm9
  7224f7:	c4 c3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm10,0x1
  7224fd:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  722502:	c5 e0 5c e4          	vsubps xmm4,xmm3,xmm4
  722506:	c5 74 14 c8          	vunpcklps ymm9,ymm1,ymm0
  72250a:	c5 3c 14 d4          	vunpcklps ymm10,ymm8,ymm4
  72250e:	c4 c1 35 14 da       	vunpcklpd ymm3,ymm9,ymm10
  722513:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  722518:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  72251c:	c5 bc 15 cc          	vunpckhps ymm1,ymm8,ymm4
  722520:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  722524:	c5 fd 15 e1          	vunpckhpd ymm4,ymm0,ymm1
  722528:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  72252f:	00 
  722530:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  722537:	00 
  722538:	c5 7c 59 d7          	vmulps ymm10,ymm0,ymm7
  72253c:	c4 62 3d bc d1       	vfnmadd231ps ymm10,ymm8,ymm1
  722541:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  722545:	c5 7c 10 41 40       	vmovups ymm8,YMMWORD PTR [rcx+0x40]
  72254a:	c4 e2 45 b8 c1       	vfmadd231ps ymm0,ymm7,ymm1
  72254f:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  722554:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  722558:	c4 e2 35 bc f9       	vfnmadd231ps ymm7,ymm9,ymm1
  72255d:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  722562:	c5 7c 10 89 c0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xc0]
  722569:	00 
  72256a:	c4 62 4d b8 c1       	vfmadd231ps ymm8,ymm6,ymm1
  72256f:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  722576:	00 
  722577:	c5 b4 59 f5          	vmulps ymm6,ymm9,ymm5
  72257b:	c4 e2 5d bc f1       	vfnmadd231ps ymm6,ymm4,ymm1
  722580:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  722584:	c4 e2 55 b8 e1       	vfmadd231ps ymm4,ymm5,ymm1
  722589:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  72258d:	c5 c4 58 ee          	vaddps ymm5,ymm7,ymm6
  722591:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  722596:	c5 3c 58 cc          	vaddps ymm9,ymm8,ymm4
  72259a:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  72259e:	c5 7c 58 c3          	vaddps ymm8,ymm0,ymm3
  7225a2:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  7225a6:	c5 ec 58 dc          	vaddps ymm3,ymm2,ymm4
  7225aa:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  7225ae:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  7225b2:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  7225b6:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  7225ba:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  7225be:	c4 c1 3c 5c f1       	vsubps ymm6,ymm8,ymm9
  7225c3:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  7225c7:	c4 c1 3c 58 e9       	vaddps ymm5,ymm8,ymm9
  7225cc:	c5 74 14 c5          	vunpcklps ymm8,ymm1,ymm5
  7225d0:	c5 70 14 cd          	vunpcklps xmm9,xmm1,xmm5
  7225d4:	c5 f0 15 cd          	vunpckhps xmm1,xmm1,xmm5
  7225d8:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  7225de:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  7225e3:	c4 63 7d 19 44 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm8,0x1
  7225ea:	01 
  7225eb:	c5 e4 14 cf          	vunpcklps ymm1,ymm3,ymm7
  7225ef:	c5 e0 15 ef          	vunpckhps xmm5,xmm3,xmm7
  7225f3:	c5 e0 14 df          	vunpcklps xmm3,xmm3,xmm7
  7225f7:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  7225fd:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  722603:	c4 e3 7d 19 4c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm1,0x1
  72260a:	01 
  72260b:	c5 dc 14 ce          	vunpcklps ymm1,ymm4,ymm6
  72260f:	c5 d8 15 de          	vunpckhps xmm3,xmm4,xmm6
  722613:	c5 d8 14 e6          	vunpcklps xmm4,xmm4,xmm6
  722617:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  72261d:	c5 f8 11 5c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm3
  722623:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  72262a:	00 00 00 01 
  72262e:	c5 ec 14 c8          	vunpcklps ymm1,ymm2,ymm0
  722632:	c5 e8 15 d8          	vunpckhps xmm3,xmm2,xmm0
  722636:	c5 e8 14 c0          	vunpcklps xmm0,xmm2,xmm0
  72263a:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  722641:	00 00 
  722643:	c5 f8 11 9c 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm3
  72264a:	00 00 
  72264c:	c4 e3 7d 19 8c 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm1,0x1
  722653:	00 00 00 01 
  722657:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  72265e:	48 39 d0             	cmp    rax,rdx
  722661:	0f 85 c9 fc ff ff    	jne    722330 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  722667:	48 89 ec             	mov    rsp,rbp
  72266a:	5d                   	pop    rbp
  72266b:	c5 f8 77             	vzeroupper
  72266e:	c3                   	ret
