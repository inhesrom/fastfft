
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b2400 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b2400:	55                   	push   rbp
  6b2401:	48 89 e5             	mov    rbp,rsp
  6b2404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6b2408:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6b240f:	48 c1 e2 05          	shl    rdx,0x5
  6b2413:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b2417:	31 d2                	xor    edx,edx
  6b2419:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6b241e:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6b2423:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6b2427:	c4 e2 7d 18 0d 30 30 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9c3030]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b242e:	9c ff 
  6b2430:	c4 e2 7d 18 15 9b 2e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9c2e9b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b2437:	9c ff 
  6b2439:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6b2440:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6b2445:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6b244a:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6b2450:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6b2456:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6b245c:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  6b2462:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6b2468:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  6b246e:	c5 fb 10 6c 17 40    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x40]
  6b2474:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6b247a:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  6b2480:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6b2485:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6b248b:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6b2491:	c5 78 10 4c 17 48    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x48]
  6b2497:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6b249d:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6b24a3:	c4 63 2d 0c d0 c0    	vblendps ymm10,ymm10,ymm0,0xc0
  6b24a9:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6b24af:	c5 48 c6 db 88       	vshufps xmm11,xmm6,xmm3,0x88
  6b24b4:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6b24ba:	c5 38 c6 e5 88       	vshufps xmm12,xmm8,xmm5,0x88
  6b24bf:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6b24c5:	c5 40 c6 ec 88       	vshufps xmm13,xmm7,xmm4,0x88
  6b24ca:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6b24d0:	c4 41 30 c6 f2 88    	vshufps xmm14,xmm9,xmm10,0x88
  6b24d6:	c5 c8 c6 db dd       	vshufps xmm3,xmm6,xmm3,0xdd
  6b24db:	c5 b8 c6 ed dd       	vshufps xmm5,xmm8,xmm5,0xdd
  6b24e0:	c5 c0 c6 e4 dd       	vshufps xmm4,xmm7,xmm4,0xdd
  6b24e5:	c4 41 30 c6 c2 dd    	vshufps xmm8,xmm9,xmm10,0xdd
  6b24eb:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  6b24f0:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6b24f5:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  6b24f9:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  6b24fd:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  6b2502:	c4 c1 5c 5c e0       	vsubps ymm4,ymm4,ymm8
  6b2507:	c5 64 5c c5          	vsubps ymm8,ymm3,ymm5
  6b250b:	c4 41 0c 5c cd       	vsubps ymm9,ymm14,ymm13
  6b2510:	c4 c1 28 58 df       	vaddps xmm3,xmm10,xmm15
  6b2515:	c5 a0 58 ec          	vaddps xmm5,xmm11,xmm4
  6b2519:	c4 41 28 5c d7       	vsubps xmm10,xmm10,xmm15
  6b251e:	c5 a0 5c e4          	vsubps xmm4,xmm11,xmm4
  6b2522:	c4 41 65 15 da       	vunpckhpd ymm11,ymm3,ymm10
  6b2527:	c4 41 65 14 d2       	vunpcklpd ymm10,ymm3,ymm10
  6b252c:	c5 d5 15 dc          	vunpckhpd ymm3,ymm5,ymm4
  6b2530:	c5 24 c6 db 88       	vshufps ymm11,ymm11,ymm3,0x88
  6b2535:	c5 d5 14 e4          	vunpcklpd ymm4,ymm5,ymm4
  6b2539:	c5 ac c6 dc 88       	vshufps ymm3,ymm10,ymm4,0x88
  6b253e:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b2543:	c5 ac c6 e4 dd       	vshufps ymm4,ymm10,ymm4,0xdd
  6b2548:	c5 dc c6 ec d8       	vshufps ymm5,ymm4,ymm4,0xd8
  6b254d:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  6b2553:	c5 48 58 d7          	vaddps xmm10,xmm6,xmm7
  6b2557:	c4 41 30 58 d8       	vaddps xmm11,xmm9,xmm8
  6b255c:	c5 c8 5c f7          	vsubps xmm6,xmm6,xmm7
  6b2560:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  6b2565:	c5 2d 15 c6          	vunpckhpd ymm8,ymm10,ymm6
  6b2569:	c5 ad 14 f6          	vunpcklpd ymm6,ymm10,ymm6
  6b256d:	c5 25 15 cf          	vunpckhpd ymm9,ymm11,ymm7
  6b2571:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  6b2577:	c5 a5 14 ff          	vunpcklpd ymm7,ymm11,ymm7
  6b257b:	c5 4c c6 cf 88       	vshufps ymm9,ymm6,ymm7,0x88
  6b2580:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6b2586:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  6b258b:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6b2590:	c4 c1 3c c6 f8 d8    	vshufps ymm7,ymm8,ymm8,0xd8
  6b2596:	c5 7c 10 41 40       	vmovups ymm8,YMMWORD PTR [rcx+0x40]
  6b259b:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  6b25a0:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6b25a7:	00 
  6b25a8:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6b25af:	00 
  6b25b0:	c5 3c 59 ed          	vmulps ymm13,ymm8,ymm5
  6b25b4:	c4 42 4d bc ea       	vfnmadd231ps ymm13,ymm6,ymm10
  6b25b9:	c5 24 59 f4          	vmulps ymm14,ymm11,ymm4
  6b25bd:	c4 42 45 bc f4       	vfnmadd231ps ymm14,ymm7,ymm12
  6b25c2:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6b25c7:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  6b25cb:	c4 c2 55 b8 f2       	vfmadd231ps ymm6,ymm5,ymm10
  6b25d0:	c5 a4 59 ef          	vmulps ymm5,ymm11,ymm7
  6b25d4:	c4 c2 5d b8 ec       	vfmadd231ps ymm5,ymm4,ymm12
  6b25d9:	c5 cc 58 e5          	vaddps ymm4,ymm6,ymm5
  6b25dd:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  6b25e1:	c4 e2 05 ac fb       	vfnmadd213ps ymm7,ymm15,ymm3
  6b25e6:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  6b25ea:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  6b25ee:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  6b25f2:	c4 c2 5d ac f1       	vfnmadd213ps ymm6,ymm4,ymm9
  6b25f7:	c4 41 14 5c c6       	vsubps ymm8,ymm13,ymm14
  6b25fc:	c5 3c 59 c2          	vmulps ymm8,ymm8,ymm2
  6b2600:	c5 b0 58 e4          	vaddps xmm4,xmm9,xmm4
  6b2604:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6b2608:	c5 60 14 cc          	vunpcklps xmm9,xmm3,xmm4
  6b260c:	c5 e0 15 dc          	vunpckhps xmm3,xmm3,xmm4
  6b2610:	c5 f8 11 5c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm3
  6b2616:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  6b261b:	c4 c1 48 5c d8       	vsubps xmm3,xmm6,xmm8
  6b2620:	c5 c0 58 e5          	vaddps xmm4,xmm7,xmm5
  6b2624:	c5 58 14 cb          	vunpcklps xmm9,xmm4,xmm3
  6b2628:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6b262c:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6b2632:	c5 78 11 4c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm9
  6b2638:	c5 b8 58 de          	vaddps xmm3,xmm8,xmm6
  6b263c:	c5 c0 5c e5          	vsubps xmm4,xmm7,xmm5
  6b2640:	c5 d8 14 eb          	vunpcklps xmm5,xmm4,xmm3
  6b2644:	c5 d8 15 db          	vunpckhps xmm3,xmm4,xmm3
  6b2648:	c5 f8 11 5c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  6b264e:	c5 f8 11 6c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm5
  6b2654:	48 83 c2 60          	add    rdx,0x60
  6b2658:	48 39 d0             	cmp    rax,rdx
  6b265b:	0f 85 df fd ff ff    	jne    6b2440 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  6b2661:	48 89 ec             	mov    rsp,rbp
  6b2664:	5d                   	pop    rbp
  6b2665:	c5 f8 77             	vzeroupper
  6b2668:	c3                   	ret
