
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000007313c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  7313c0:	48 c1 e2 04          	shl    rdx,0x4
  7313c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  7313c8:	31 d2                	xor    edx,edx
  7313ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  7313d0:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  7313d5:	c5 f8 10 54 17 20    	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x20]
  7313db:	c5 fc 10 5c 17 30    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x30]
  7313e1:	c5 f8 10 64 17 50    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x50]
  7313e7:	c5 fc 10 6c 17 60    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  7313ed:	c5 f8 10 b4 17 80 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x80]
  7313f4:	00 00 
  7313f6:	c5 fc c6 fa 88       	vshufps ymm7,ymm0,ymm2,0x88
  7313fb:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  731401:	c5 64 c6 c4 88       	vshufps ymm8,ymm3,ymm4,0x88
  731406:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  73140c:	c5 54 c6 ce 88       	vshufps ymm9,ymm5,ymm6,0x88
  731411:	c4 43 fd 01 d1 d8    	vpermpd ymm10,ymm9,0xd8
  731417:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  73141c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  731422:	c5 e4 c6 d4 dd       	vshufps ymm2,ymm3,ymm4,0xdd
  731427:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  73142d:	c5 d4 c6 de dd       	vshufps ymm3,ymm5,ymm6,0xdd
  731432:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  731438:	c4 c1 3c 58 e2       	vaddps ymm4,ymm8,ymm10
  73143d:	c5 dc 58 f7          	vaddps ymm6,ymm4,ymm7
  731441:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  731445:	c5 24 58 c8          	vaddps ymm9,ymm11,ymm0
  731449:	c4 e2 7d 18 2d 0e 40 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff94400e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  731450:	94 ff 
  731452:	c4 e2 55 ac e7       	vfnmadd213ps ymm4,ymm5,ymm7
  731457:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  73145b:	c4 e2 7d 18 0d 70 3e 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff943e70]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  731462:	94 ff 
  731464:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  731468:	c5 dc 58 da          	vaddps ymm3,ymm4,ymm2
  73146c:	c4 62 55 ac d8       	vfnmadd213ps ymm11,ymm5,ymm0
  731471:	c4 c1 3c 5c c2       	vsubps ymm0,ymm8,ymm10
  731476:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  73147a:	c5 a4 5c e8          	vsubps ymm5,ymm11,ymm0
  73147e:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  731482:	c5 24 58 d8          	vaddps ymm11,ymm11,ymm0
  731486:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  73148a:	c4 e3 7d 19 f4 01    	vextractf128 xmm4,ymm6,0x1
  731490:	c5 f8 28 f3          	vmovaps xmm6,xmm3
  731494:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  73149a:	c5 78 28 c2          	vmovaps xmm8,xmm2
  73149e:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  7314a4:	c5 dd 14 d2          	vunpcklpd ymm2,ymm4,ymm2
  7314a8:	c4 41 7d 15 e0       	vunpckhpd ymm12,ymm0,ymm8
  7314ad:	c4 c1 7d 14 c0       	vunpcklpd ymm0,ymm0,ymm8
  7314b2:	c5 fa 7e e3          	vmovq  xmm4,xmm3
  7314b6:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  7314bb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  7314bf:	c4 63 45 0c e9 cc    	vblendps ymm13,ymm7,ymm1,0xcc
  7314c5:	c5 fc c6 dc 88       	vshufps ymm3,ymm0,ymm4,0x88
  7314ca:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7314cf:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  7314d4:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  7314d9:	c5 9c c6 c6 88       	vshufps ymm0,ymm12,ymm6,0x88
  7314de:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  7314e3:	c5 9c c6 c6 dd       	vshufps ymm0,ymm12,ymm6,0xdd
  7314e8:	c5 fc c6 f8 d8       	vshufps ymm7,ymm0,ymm0,0xd8
  7314ed:	c4 c1 6c c6 c5 88    	vshufps ymm0,ymm2,ymm13,0x88
  7314f3:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  7314f8:	c4 c1 6c c6 c5 dd    	vshufps ymm0,ymm2,ymm13,0xdd
  7314fe:	c5 fc c6 f0 d8       	vshufps ymm6,ymm0,ymm0,0xd8
  731503:	c5 78 29 c8          	vmovaps xmm0,xmm9
  731507:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  73150d:	c5 78 28 cd          	vmovaps xmm9,xmm5
  731511:	c4 c3 7d 19 ec 01    	vextractf128 xmm12,ymm5,0x1
  731517:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  73151c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  731522:	c4 41 6d 14 fb       	vunpcklpd ymm15,ymm2,ymm11
  731527:	c4 c1 7d 15 d5       	vunpckhpd ymm2,ymm0,ymm13
  73152c:	c4 c1 7d 14 c5       	vunpcklpd ymm0,ymm0,ymm13
  731531:	c5 7a 7e dd          	vmovq  xmm11,xmm5
  731535:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  73153b:	c4 63 1d 0c e1 cc    	vblendps ymm12,ymm12,ymm1,0xcc
  731541:	c4 c1 7c c6 eb 88    	vshufps ymm5,ymm0,ymm11,0x88
  731547:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  73154c:	c4 c1 7c c6 c3 dd    	vshufps ymm0,ymm0,ymm11,0xdd
  731552:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  731557:	c4 c1 6c c6 c1 88    	vshufps ymm0,ymm2,ymm9,0x88
  73155d:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  731562:	c4 c1 6c c6 c1 dd    	vshufps ymm0,ymm2,ymm9,0xdd
  731568:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  73156d:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  731573:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  731578:	c4 c1 04 c6 c4 dd    	vshufps ymm0,ymm15,ymm12,0xdd
  73157e:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  731583:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  73158a:	00 
  73158b:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  731592:	00 
  731593:	c5 2c 59 c8          	vmulps ymm9,ymm10,ymm0
  731597:	c4 62 15 bc c9       	vfnmadd231ps ymm9,ymm13,ymm1
  73159c:	c5 14 59 f8          	vmulps ymm15,ymm13,ymm0
  7315a0:	c5 fc 10 81 00 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x100]
  7315a7:	00 
  7315a8:	c4 62 2d b8 f9       	vfmadd231ps ymm15,ymm10,ymm1
  7315ad:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  7315b4:	00 
  7315b5:	c5 3c 59 e8          	vmulps ymm13,ymm8,ymm0
  7315b9:	c4 62 6d bc e9       	vfnmadd231ps ymm13,ymm2,ymm1
  7315be:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  7315c2:	c5 fc 10 91 c0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xc0]
  7315c9:	00 
  7315ca:	c4 e2 3d b8 c1       	vfmadd231ps ymm0,ymm8,ymm1
  7315cf:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  7315d6:	00 
  7315d7:	c5 6c 59 c7          	vmulps ymm8,ymm2,ymm7
  7315db:	c4 62 0d bc c1       	vfnmadd231ps ymm8,ymm14,ymm1
  7315e0:	c5 0c 59 d2          	vmulps ymm10,ymm14,ymm2
  7315e4:	c5 fc 10 91 40 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x140]
  7315eb:	00 
  7315ec:	c4 62 45 b8 d1       	vfmadd231ps ymm10,ymm7,ymm1
  7315f1:	c5 fc 10 89 60 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x160]
  7315f8:	00 
  7315f9:	c5 6c 59 f6          	vmulps ymm14,ymm2,ymm6
  7315fd:	c4 62 1d bc f1       	vfnmadd231ps ymm14,ymm12,ymm1
  731602:	c5 9c 59 fa          	vmulps ymm7,ymm12,ymm2
  731606:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  73160b:	c4 e2 4d b8 f9       	vfmadd231ps ymm7,ymm6,ymm1
  731610:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  731615:	c5 6c 59 e4          	vmulps ymm12,ymm2,ymm4
  731619:	c4 62 25 bc e1       	vfnmadd231ps ymm12,ymm11,ymm1
  73161e:	c5 a4 59 f2          	vmulps ymm6,ymm11,ymm2
  731622:	c4 c1 34 58 d5       	vaddps ymm2,ymm9,ymm13
  731627:	c4 e2 5d b8 f1       	vfmadd231ps ymm6,ymm4,ymm1
  73162c:	c5 ec 58 cb          	vaddps ymm1,ymm2,ymm3
  731630:	c5 fc 11 4c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm1
  731636:	c4 c1 0c 58 cc       	vaddps ymm1,ymm14,ymm12
  73163b:	c4 e2 7d 18 25 1c 3e 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff943e1c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  731642:	94 ff 
  731644:	c4 e2 5d ac d3       	vfnmadd213ps ymm2,ymm4,ymm3
  731649:	c5 84 58 d8          	vaddps ymm3,ymm15,ymm0
  73164d:	c5 04 5c d8          	vsubps ymm11,ymm15,ymm0
  731651:	c5 bc 58 c1          	vaddps ymm0,ymm8,ymm1
  731655:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  73165b:	c4 62 5d bc c1       	vfnmadd231ps ymm8,ymm4,ymm1
  731660:	c5 c4 58 ce          	vaddps ymm1,ymm7,ymm6
  731664:	c5 44 5c fe          	vsubps ymm15,ymm7,ymm6
  731668:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  73166c:	c4 e2 5d ac dd       	vfnmadd213ps ymm3,ymm4,ymm5
  731671:	c5 ac 58 f9          	vaddps ymm7,ymm10,ymm1
  731675:	c4 e2 7d 18 05 56 3c 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff943c56]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73167c:	94 ff 
  73167e:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  731682:	c4 41 34 5c ed       	vsubps ymm13,ymm9,ymm13
  731687:	c5 a4 58 ea          	vaddps ymm5,ymm11,ymm2
  73168b:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  73168f:	c4 62 5d bc d1       	vfnmadd231ps ymm10,ymm4,ymm1
  731694:	c4 41 3c 58 cf       	vaddps ymm9,ymm8,ymm15
  731699:	c5 94 59 c8          	vmulps ymm1,ymm13,ymm0
  73169d:	c4 41 0c 5c ec       	vsubps ymm13,ymm14,ymm12
  7316a2:	c5 64 5c e1          	vsubps ymm12,ymm3,ymm1
  7316a6:	c5 94 59 c0          	vmulps ymm0,ymm13,ymm0
  7316aa:	c4 41 6c 5c db       	vsubps ymm11,ymm2,ymm11
  7316af:	c5 2c 5c f0          	vsubps ymm14,ymm10,ymm0
  7316b3:	c4 41 3c 5c c7       	vsubps ymm8,ymm8,ymm15
  7316b8:	c5 74 58 eb          	vaddps ymm13,ymm1,ymm3
  7316bc:	c5 2c 58 d0          	vaddps ymm10,ymm10,ymm0
  7316c0:	c5 c8 58 c7          	vaddps xmm0,xmm6,xmm7
  7316c4:	c5 fc 10 5c 24 d8    	vmovups ymm3,YMMWORD PTR [rsp-0x28]
  7316ca:	c5 fc 10 64 24 b8    	vmovups ymm4,YMMWORD PTR [rsp-0x48]
  7316d0:	c5 e0 58 cc          	vaddps xmm1,xmm3,xmm4
  7316d4:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  7316d8:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7316dc:	c5 f8 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm0
  7316e2:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  7316e7:	c4 c1 18 5c c6       	vsubps xmm0,xmm12,xmm14
  7316ec:	c4 c1 50 5c c9       	vsubps xmm1,xmm5,xmm9
  7316f1:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  7316f5:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7316f9:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  7316ff:	c5 f8 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm2
  731705:	c4 c1 10 58 c2       	vaddps xmm0,xmm13,xmm10
  73170a:	c4 c1 20 58 c8       	vaddps xmm1,xmm11,xmm8
  73170f:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  731713:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731717:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  73171d:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  731723:	c5 c8 5c c7          	vsubps xmm0,xmm6,xmm7
  731727:	c5 e0 5c cc          	vsubps xmm1,xmm3,xmm4
  73172b:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73172f:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731733:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  731739:	c5 f8 11 54 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm2
  73173f:	c4 c1 18 58 c6       	vaddps xmm0,xmm12,xmm14
  731744:	c5 b0 58 cd          	vaddps xmm1,xmm9,xmm5
  731748:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73174c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  731750:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  731756:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  73175c:	c4 c1 10 5c c2       	vsubps xmm0,xmm13,xmm10
  731761:	c4 c1 20 5c c8       	vsubps xmm1,xmm11,xmm8
  731766:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  73176a:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  73176e:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  731775:	00 00 
  731777:	c5 f8 11 54 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm2
  73177d:	48 81 c2 90 00 00 00 	add    rdx,0x90
  731784:	48 39 d0             	cmp    rax,rdx
  731787:	0f 85 43 fc ff ff    	jne    7313d0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  73178d:	c5 f8 77             	vzeroupper
  731790:	c3                   	ret
