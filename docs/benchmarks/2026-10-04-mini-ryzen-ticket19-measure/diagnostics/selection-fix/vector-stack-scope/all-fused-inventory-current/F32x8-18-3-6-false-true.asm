
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000732500 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  732500:	55                   	push   rbp
  732501:	48 89 e5             	mov    rbp,rsp
  732504:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  732508:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  73250f:	48 c1 e2 04          	shl    rdx,0x4
  732513:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  732517:	31 d2                	xor    edx,edx
  732519:	4c 8d 84 24 80 00 00 	lea    r8,[rsp+0x80]
  732520:	00 
  732521:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  732526:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  73252d:	00 00 00 
  732530:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  732537:	00 
  732538:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  73253d:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  732542:	c5 f8 10 4c 17 20    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x20]
  732548:	c5 fc 10 54 17 30    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x30]
  73254e:	c5 f8 10 5c 17 50    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x50]
  732554:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  73255a:	c5 f8 10 ac 17 80 00 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x80]
  732561:	00 00 
  732563:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  732568:	c4 e3 fd 01 fe d8    	vpermpd ymm7,ymm6,0xd8
  73256e:	c5 ec c6 f3 88       	vshufps ymm6,ymm2,ymm3,0x88
  732573:	c4 63 fd 01 c6 d8    	vpermpd ymm8,ymm6,0xd8
  732579:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  73257e:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  732584:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  732589:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  73258f:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  732594:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  73259a:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  73259f:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  7325a5:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  7325aa:	c5 e4 58 e7          	vaddps ymm4,ymm3,ymm7
  7325ae:	c5 74 58 d2          	vaddps ymm10,ymm1,ymm2
  7325b2:	c5 ac 58 f0          	vaddps ymm6,ymm10,ymm0
  7325b6:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  7325ba:	c4 e2 7d 18 2d 9d 2e 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff942e9d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7325c1:	94 ff 
  7325c3:	c4 e2 55 ac df       	vfnmadd213ps ymm3,ymm5,ymm7
  7325c8:	c4 e2 7d 18 3d 03 2d 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff942d03]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7325cf:	94 ff 
  7325d1:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  7325d5:	c4 62 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm0
  7325da:	c4 c1 3c 5c c1       	vsubps ymm0,ymm8,ymm9
  7325df:	c5 e4 58 d1          	vaddps ymm2,ymm3,ymm1
  7325e3:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  7325e7:	c5 ac 5c e8          	vsubps ymm5,ymm10,ymm0
  7325eb:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  7325ef:	c5 ac 58 f8          	vaddps ymm7,ymm10,ymm0
  7325f3:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  7325f7:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  7325fd:	c5 f8 28 e2          	vmovaps xmm4,xmm2
  732601:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  732607:	c5 78 28 c9          	vmovaps xmm9,xmm1
  73260b:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  732611:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  732615:	c4 41 7d 15 d1       	vunpckhpd ymm10,ymm0,ymm9
  73261a:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  73261f:	c5 fa 7e d2          	vmovq  xmm2,xmm2
  732623:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  732628:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  73262d:	c4 43 3d 0c c7 cc    	vblendps ymm8,ymm8,ymm15,0xcc
  732633:	c5 fc c6 da 88       	vshufps ymm3,ymm0,ymm2,0x88
  732638:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  73263d:	c5 ac c6 d4 88       	vshufps ymm2,ymm10,ymm4,0x88
  732642:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  732647:	c5 2c c6 cc dd       	vshufps ymm9,ymm10,ymm4,0xdd
  73264c:	c4 41 74 c6 d8 88    	vshufps ymm11,ymm1,ymm8,0x88
  732652:	c4 c1 74 c6 c8 dd    	vshufps ymm1,ymm1,ymm8,0xdd
  732658:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  73265d:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  732661:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  732667:	c5 78 28 c5          	vmovaps xmm8,xmm5
  73266b:	c5 6c c6 d2 d8       	vshufps ymm10,ymm2,ymm2,0xd8
  732670:	c4 e3 7d 19 ea 01    	vextractf128 xmm2,ymm5,0x1
  732676:	c5 78 28 e7          	vmovaps xmm12,xmm7
  73267a:	c4 c3 7d 19 fd 01    	vextractf128 xmm13,ymm7,0x1
  732680:	c4 c1 34 c6 f9 d8    	vshufps ymm7,ymm9,ymm9,0xd8
  732686:	c4 c1 4d 14 f5       	vunpcklpd ymm6,ymm6,ymm13
  73268b:	c4 41 7d 15 ec       	vunpckhpd ymm13,ymm0,ymm12
  732690:	c4 c1 7d 14 c4       	vunpcklpd ymm0,ymm0,ymm12
  732695:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  73269b:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  73269f:	c4 c1 0d 73 d8 08    	vpsrldq ymm14,ymm8,0x8
  7326a5:	c4 43 6d 0c ff cc    	vblendps ymm15,ymm2,ymm15,0xcc
  7326ab:	c5 74 c6 c1 d8       	vshufps ymm8,ymm1,ymm1,0xd8
  7326b0:	c5 fc c6 cd 88       	vshufps ymm1,ymm0,ymm5,0x88
  7326b5:	c5 7c c6 cd dd       	vshufps ymm9,ymm0,ymm5,0xdd
  7326ba:	c4 c1 14 c6 c6 88    	vshufps ymm0,ymm13,ymm14,0x88
  7326c0:	c5 f4 c6 e9 d8       	vshufps ymm5,ymm1,ymm1,0xd8
  7326c5:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  7326ca:	c4 c1 14 c6 c6 dd    	vshufps ymm0,ymm13,ymm14,0xdd
  7326d0:	c4 c1 4c c6 cf 88    	vshufps ymm1,ymm6,ymm15,0x88
  7326d6:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  7326db:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  7326e0:	c4 c1 4c c6 c7 dd    	vshufps ymm0,ymm6,ymm15,0xdd
  7326e6:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  7326ed:	00 
  7326ee:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  7326f3:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  7326fa:	00 
  7326fb:	c5 ac 59 f1          	vmulps ymm6,ymm10,ymm1
  7326ff:	c5 1c 59 f9          	vmulps ymm15,ymm12,ymm1
  732703:	c4 e2 1d bc f0       	vfnmadd231ps ymm6,ymm12,ymm0
  732708:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  73270f:	00 
  732710:	c4 62 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm0
  732715:	c5 fc 10 81 20 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x120]
  73271c:	00 
  73271d:	c5 24 59 e1          	vmulps ymm12,ymm11,ymm1
  732721:	c4 62 6d bc e0       	vfnmadd231ps ymm12,ymm2,ymm0
  732726:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  73272a:	c5 fc 10 91 c0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xc0]
  732731:	00 
  732732:	c4 e2 25 b8 c8       	vfmadd231ps ymm1,ymm11,ymm0
  732737:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  73273e:	00 
  73273f:	c5 6c 59 df          	vmulps ymm11,ymm2,ymm7
  732743:	c5 14 59 d2          	vmulps ymm10,ymm13,ymm2
  732747:	c4 62 15 bc d8       	vfnmadd231ps ymm11,ymm13,ymm0
  73274c:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  732753:	00 
  732754:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  732759:	c5 fc 10 81 60 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x160]
  732760:	00 
  732761:	c5 3c 59 ea          	vmulps ymm13,ymm8,ymm2
  732765:	c4 62 0d bc e8       	vfnmadd231ps ymm13,ymm14,ymm0
  73276a:	c5 8c 59 fa          	vmulps ymm7,ymm14,ymm2
  73276e:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  732773:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  732779:	c4 e2 3d b8 f8       	vfmadd231ps ymm7,ymm8,ymm0
  73277e:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  732783:	c5 6c 59 f4          	vmulps ymm14,ymm2,ymm4
  732787:	c4 62 35 bc f0       	vfnmadd231ps ymm14,ymm9,ymm0
  73278c:	c5 34 59 c2          	vmulps ymm8,ymm9,ymm2
  732790:	c5 9c 58 d6          	vaddps ymm2,ymm12,ymm6
  732794:	c4 62 5d b8 c0       	vfmadd231ps ymm8,ymm4,ymm0
  732799:	c5 ec 58 c3          	vaddps ymm0,ymm2,ymm3
  73279d:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  7327a3:	c5 84 58 c1          	vaddps ymm0,ymm15,ymm1
  7327a7:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  7327ab:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  7327b1:	c4 41 14 58 ce       	vaddps ymm9,ymm13,ymm14
  7327b6:	c4 e2 7d 18 25 a1 2c 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff942ca1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7327bd:	94 ff 
  7327bf:	c4 e2 5d ac d3       	vfnmadd213ps ymm2,ymm4,ymm3
  7327c4:	c5 3c 58 ff          	vaddps ymm15,ymm8,ymm7
  7327c8:	c4 c1 44 5c c8       	vsubps ymm1,ymm7,ymm8
  7327cd:	c4 c1 24 58 d9       	vaddps ymm3,ymm11,ymm9
  7327d2:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  7327d8:	c4 42 5d bc d9       	vfnmadd231ps ymm11,ymm4,ymm9
  7327dd:	c5 fc 58 fd          	vaddps ymm7,ymm0,ymm5
  7327e1:	c4 e2 5d ac c5       	vfnmadd213ps ymm0,ymm4,ymm5
  7327e6:	c5 7c 28 cc          	vmovaps ymm9,ymm4
  7327ea:	c4 41 2c 58 c7       	vaddps ymm8,ymm10,ymm15
  7327ef:	c4 e2 7d 18 25 dc 2a 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff942adc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7327f6:	94 ff 
  7327f8:	c5 dc 59 5c 24 20    	vmulps ymm3,ymm4,YMMWORD PTR [rsp+0x20]
  7327fe:	c5 f4 59 cc          	vmulps ymm1,ymm1,ymm4
  732802:	c4 c1 4c 5c ec       	vsubps ymm5,ymm6,ymm12
  732807:	c4 42 35 bc d7       	vfnmadd231ps ymm10,ymm9,ymm15
  73280c:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  732810:	c5 24 58 c9          	vaddps ymm9,ymm11,ymm1
  732814:	c5 54 59 e4          	vmulps ymm12,ymm5,ymm4
  732818:	c4 c1 14 5c ee       	vsubps ymm5,ymm13,ymm14
  73281d:	c4 41 7c 5c ec       	vsubps ymm13,ymm0,ymm12
  732822:	c5 54 59 fc          	vmulps ymm15,ymm5,ymm4
  732826:	c5 ec 5c eb          	vsubps ymm5,ymm2,ymm3
  73282a:	c4 41 2c 5c f7       	vsubps ymm14,ymm10,ymm15
  73282f:	c5 24 5c d9          	vsubps ymm11,ymm11,ymm1
  732833:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  732837:	c5 b8 58 c7          	vaddps xmm0,xmm8,xmm7
  73283b:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  732841:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  732847:	c5 d8 58 ca          	vaddps xmm1,xmm4,xmm2
  73284b:	c4 41 2c 58 d7       	vaddps ymm10,ymm10,ymm15
  732850:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  732854:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  732858:	c5 f8 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm0
  73285e:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  732863:	c4 c1 10 5c c6       	vsubps xmm0,xmm13,xmm14
  732868:	c4 c1 48 5c c9       	vsubps xmm1,xmm6,xmm9
  73286d:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  732871:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  732875:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  73287b:	c4 c1 18 58 c2       	vaddps xmm0,xmm12,xmm10
  732880:	c5 a0 58 cd          	vaddps xmm1,xmm11,xmm5
  732884:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  73288a:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  73288e:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  732892:	c4 c1 40 5c c8       	vsubps xmm1,xmm7,xmm8
  732897:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  73289d:	c5 d8 5c c2          	vsubps xmm0,xmm4,xmm2
  7328a1:	c5 f8 14 e1          	vunpcklps xmm4,xmm0,xmm1
  7328a5:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  7328a9:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  7328af:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  7328b5:	c4 c1 10 58 c6       	vaddps xmm0,xmm13,xmm14
  7328ba:	c5 b0 58 ce          	vaddps xmm1,xmm9,xmm6
  7328be:	c5 f8 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm4
  7328c4:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  7328c8:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7328cc:	c4 c1 18 5c ca       	vsubps xmm1,xmm12,xmm10
  7328d1:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  7328d7:	c4 c1 50 5c c3       	vsubps xmm0,xmm5,xmm11
  7328dc:	c5 f8 14 d1          	vunpcklps xmm2,xmm0,xmm1
  7328e0:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  7328e4:	c5 f8 11 5c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm3
  7328ea:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  7328f1:	00 00 
  7328f3:	c5 f8 11 54 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm2
  7328f9:	48 81 c2 90 00 00 00 	add    rdx,0x90
  732900:	48 39 d0             	cmp    rax,rdx
  732903:	0f 85 27 fc ff ff    	jne    732530 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  732909:	48 89 ec             	mov    rsp,rbp
  73290c:	5d                   	pop    rbp
  73290d:	c5 f8 77             	vzeroupper
  732910:	c3                   	ret
