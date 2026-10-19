
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000721380 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  721380:	50                   	push   rax
  721381:	48 c1 e2 06          	shl    rdx,0x6
  721385:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  721389:	31 d2                	xor    edx,edx
  72138b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  721390:	c5 f8 10 3c 17       	vmovups xmm7,XMMWORD PTR [rdi+rdx*1]
  721395:	c5 78 10 44 17 10    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x10]
  72139b:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  7213a1:	c5 f8 10 74 17 30    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x30]
  7213a7:	c4 c1 40 c6 c0 88    	vshufps xmm0,xmm7,xmm8,0x88
  7213ad:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  7213b3:	c5 78 10 5c 17 50    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x50]
  7213b9:	c5 78 10 64 17 40    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x40]
  7213bf:	c4 c1 18 c6 c3 88    	vshufps xmm0,xmm12,xmm11,0x88
  7213c5:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  7213cb:	c5 78 10 ac 17 90 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x90]
  7213d2:	00 00 
  7213d4:	c5 78 10 b4 17 80 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x80]
  7213db:	00 00 
  7213dd:	c4 c1 08 c6 e5 88    	vshufps xmm4,xmm14,xmm13,0x88
  7213e3:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  7213e9:	c5 78 10 7c 17 70    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x70]
  7213ef:	c5 f8 10 54 17 60    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x60]
  7213f5:	c4 41 68 c6 cf 88    	vshufps xmm9,xmm2,xmm15,0x88
  7213fb:	c5 f8 10 8c 17 b0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xb0]
  721402:	00 00 
  721404:	c4 41 40 c6 d0 dd    	vshufps xmm10,xmm7,xmm8,0xdd
  72140a:	c5 f8 10 84 17 a0 00 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0xa0]
  721411:	00 00 
  721413:	c4 c1 18 c6 db dd    	vshufps xmm3,xmm12,xmm11,0xdd
  721419:	c5 f8 c6 f9 88       	vshufps xmm7,xmm0,xmm1,0x88
  72141e:	c4 41 08 c6 ed dd    	vshufps xmm13,xmm14,xmm13,0xdd
  721424:	c5 50 c6 c6 88       	vshufps xmm8,xmm5,xmm6,0x88
  721429:	c4 41 68 c6 ff dd    	vshufps xmm15,xmm2,xmm15,0xdd
  72142f:	c5 f8 c6 c1 dd       	vshufps xmm0,xmm0,xmm1,0xdd
  721434:	c5 d0 c6 ce dd       	vshufps xmm1,xmm5,xmm6,0xdd
  721439:	c5 fc 10 74 24 a0    	vmovups ymm6,YMMWORD PTR [rsp-0x60]
  72143f:	c5 4c 58 e4          	vaddps ymm12,ymm6,ymm4
  721443:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  721449:	c5 9c 58 d5          	vaddps ymm2,ymm12,ymm5
  72144d:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  721453:	c5 3c 58 df          	vaddps ymm11,ymm8,ymm7
  721457:	c4 e2 7d 18 15 00 40 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff954000]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  72145e:	95 ff 
  721460:	c4 62 6d ac e5       	vfnmadd213ps ymm12,ymm2,ymm5
  721465:	c5 14 58 f3          	vaddps ymm14,ymm13,ymm3
  721469:	c4 c1 64 5c ed       	vsubps ymm5,ymm3,ymm13
  72146e:	c4 41 24 58 e9       	vaddps ymm13,ymm11,ymm9
  721473:	c4 42 6d ac d9       	vfnmadd213ps ymm11,ymm2,ymm9
  721478:	c5 7c 58 c9          	vaddps ymm9,ymm0,ymm1
  72147c:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  721480:	c4 c1 0c 58 da       	vaddps ymm3,ymm14,ymm10
  721485:	c4 42 6d ac f2       	vfnmadd213ps ymm14,ymm2,ymm10
  72148a:	c5 cc 5c 4c 24 80    	vsubps ymm1,ymm6,YMMWORD PTR [rsp-0x80]
  721490:	c4 c1 34 58 e7       	vaddps ymm4,ymm9,ymm15
  721495:	c4 42 6d ac cf       	vfnmadd213ps ymm9,ymm2,ymm15
  72149a:	c4 e2 7d 18 15 31 3e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff953e31]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7214a1:	95 ff 
  7214a3:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  7214a7:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  7214ac:	c5 1c 58 d5          	vaddps ymm10,ymm12,ymm5
  7214b0:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  7214b4:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  7214b8:	c5 24 58 e0          	vaddps ymm12,ymm11,ymm0
  7214bc:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  7214c0:	c5 a4 5c c0          	vsubps ymm0,ymm11,ymm0
  7214c4:	c5 0c 5c d9          	vsubps ymm11,ymm14,ymm1
  7214c8:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  7214cc:	c5 0c 58 c1          	vaddps ymm8,ymm14,ymm1
  7214d0:	c5 b4 5c cf          	vsubps ymm1,ymm9,ymm7
  7214d4:	c5 34 58 cf          	vaddps ymm9,ymm9,ymm7
  7214d8:	c4 c1 2c 5c fc       	vsubps ymm7,ymm10,ymm12
  7214dd:	c4 41 28 58 d4       	vaddps xmm10,xmm10,xmm12
  7214e2:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  7214e8:	c5 14 58 e2          	vaddps ymm12,ymm13,ymm2
  7214ec:	c4 43 1d 18 d2 01    	vinsertf128 ymm10,ymm12,xmm10,0x1
  7214f2:	c5 50 5c e0          	vsubps xmm12,xmm5,xmm0
  7214f6:	c4 c3 45 18 fc 01    	vinsertf128 ymm7,ymm7,xmm12,0x1
  7214fc:	c5 d0 58 c0          	vaddps xmm0,xmm5,xmm0
  721500:	c4 c1 68 5c ed       	vsubps xmm5,xmm2,xmm13
  721505:	c5 ac 14 f7          	vunpcklps ymm6,ymm10,ymm7
  721509:	c5 7c 14 e5          	vunpcklps ymm12,ymm0,ymm5
  72150d:	c4 c1 4d 14 d4       	vunpcklpd ymm2,ymm6,ymm12
  721512:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  721517:	c5 2c 15 d7          	vunpckhps ymm10,ymm10,ymm7
  72151b:	c5 fc 15 c5          	vunpckhps ymm0,ymm0,ymm5
  72151f:	c5 ad 14 f8          	vunpcklpd ymm7,ymm10,ymm0
  721523:	c5 ad 15 e8          	vunpckhpd ymm5,ymm10,ymm0
  721527:	c5 a4 5c c1          	vsubps ymm0,ymm11,ymm1
  72152b:	c5 a0 58 c9          	vaddps xmm1,xmm11,xmm1
  72152f:	c5 64 58 d4          	vaddps ymm10,ymm3,ymm4
  721533:	c4 e3 2d 18 c9 01    	vinsertf128 ymm1,ymm10,xmm1,0x1
  721539:	c4 41 38 5c d1       	vsubps xmm10,xmm8,xmm9
  72153e:	c4 c3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm10,0x1
  721544:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  721549:	c5 e0 5c e4          	vsubps xmm4,xmm3,xmm4
  72154d:	c5 74 14 c8          	vunpcklps ymm9,ymm1,ymm0
  721551:	c5 3c 14 d4          	vunpcklps ymm10,ymm8,ymm4
  721555:	c4 c1 35 14 da       	vunpcklpd ymm3,ymm9,ymm10
  72155a:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  72155f:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  721563:	c5 bc 15 cc          	vunpckhps ymm1,ymm8,ymm4
  721567:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  72156b:	c5 fd 15 e1          	vunpckhpd ymm4,ymm0,ymm1
  72156f:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  721576:	00 
  721577:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  72157e:	00 
  72157f:	c5 7c 59 d7          	vmulps ymm10,ymm0,ymm7
  721583:	c4 62 3d bc d1       	vfnmadd231ps ymm10,ymm8,ymm1
  721588:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  72158c:	c5 7c 10 41 40       	vmovups ymm8,YMMWORD PTR [rcx+0x40]
  721591:	c4 e2 45 b8 c1       	vfmadd231ps ymm0,ymm7,ymm1
  721596:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  72159b:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  72159f:	c4 e2 35 bc f9       	vfnmadd231ps ymm7,ymm9,ymm1
  7215a4:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  7215a9:	c5 7c 10 89 c0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xc0]
  7215b0:	00 
  7215b1:	c4 62 4d b8 c1       	vfmadd231ps ymm8,ymm6,ymm1
  7215b6:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  7215bd:	00 
  7215be:	c5 b4 59 f5          	vmulps ymm6,ymm9,ymm5
  7215c2:	c4 e2 5d bc f1       	vfnmadd231ps ymm6,ymm4,ymm1
  7215c7:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  7215cb:	c4 e2 55 b8 e1       	vfmadd231ps ymm4,ymm5,ymm1
  7215d0:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  7215d4:	c5 c4 58 ee          	vaddps ymm5,ymm7,ymm6
  7215d8:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  7215dd:	c5 3c 58 cc          	vaddps ymm9,ymm8,ymm4
  7215e1:	c5 bc 5c e4          	vsubps ymm4,ymm8,ymm4
  7215e5:	c5 7c 58 c3          	vaddps ymm8,ymm0,ymm3
  7215e9:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  7215ed:	c5 ec 58 dc          	vaddps ymm3,ymm2,ymm4
  7215f1:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  7215f5:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  7215f9:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  7215fd:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  721601:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  721605:	c4 c1 3c 5c f1       	vsubps ymm6,ymm8,ymm9
  72160a:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  72160e:	c4 c1 3c 58 e9       	vaddps ymm5,ymm8,ymm9
  721613:	c5 74 14 c5          	vunpcklps ymm8,ymm1,ymm5
  721617:	c5 70 14 cd          	vunpcklps xmm9,xmm1,xmm5
  72161b:	c5 f0 15 cd          	vunpckhps xmm1,xmm1,xmm5
  72161f:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  721625:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  72162a:	c4 63 7d 19 44 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm8,0x1
  721631:	01 
  721632:	c5 e4 14 cf          	vunpcklps ymm1,ymm3,ymm7
  721636:	c5 e0 15 ef          	vunpckhps xmm5,xmm3,xmm7
  72163a:	c5 e0 14 df          	vunpcklps xmm3,xmm3,xmm7
  72163e:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  721644:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  72164a:	c4 e3 7d 19 4c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm1,0x1
  721651:	01 
  721652:	c5 dc 14 ce          	vunpcklps ymm1,ymm4,ymm6
  721656:	c5 d8 15 de          	vunpckhps xmm3,xmm4,xmm6
  72165a:	c5 d8 14 e6          	vunpcklps xmm4,xmm4,xmm6
  72165e:	c5 f8 11 64 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm4
  721664:	c5 f8 11 5c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm3
  72166a:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  721671:	00 00 00 01 
  721675:	c5 ec 14 c8          	vunpcklps ymm1,ymm2,ymm0
  721679:	c5 e8 15 d8          	vunpckhps xmm3,xmm2,xmm0
  72167d:	c5 e8 14 c0          	vunpcklps xmm0,xmm2,xmm0
  721681:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  721688:	00 00 
  72168a:	c5 f8 11 9c 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm3
  721691:	00 00 
  721693:	c4 e3 7d 19 8c 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm1,0x1
  72169a:	00 00 00 01 
  72169e:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  7216a5:	48 39 d0             	cmp    rax,rdx
  7216a8:	0f 85 e2 fc ff ff    	jne    721390 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  7216ae:	58                   	pop    rax
  7216af:	c5 f8 77             	vzeroupper
  7216b2:	c3                   	ret
