
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac2440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac2440:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  ac2445:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac244b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac244f:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  ac2455:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  ac2459:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  ac245e:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  ac2463:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac2469:	c5 d8 c6 f0 dd       	vshufps xmm6,xmm4,xmm0,0xdd
  ac246e:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  ac2473:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  ac2479:	c4 e3 75 0c ca c0    	vblendps ymm1,ymm1,ymm2,0xc0
  ac247f:	c4 e3 7d 19 cf 01    	vextractf128 xmm7,ymm1,0x1
  ac2485:	c5 50 c6 c7 dd       	vshufps xmm8,xmm5,xmm7,0xdd
  ac248a:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  ac248f:	c4 e2 7d 18 0d 3c 2e 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b2e3c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac2496:	5b ff 
  ac2498:	c5 34 59 c9          	vmulps ymm9,ymm9,ymm1
  ac249c:	c5 d8 c6 e0 88       	vshufps xmm4,xmm4,xmm0,0x88
  ac24a1:	c5 d0 c6 ef 88       	vshufps xmm5,xmm5,xmm7,0x88
  ac24a6:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  ac24aa:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ac24af:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac24b5:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  ac24bb:	c4 c3 7d 19 c2 01    	vextractf128 xmm10,ymm0,0x1
  ac24c1:	c4 41 60 c6 da 88    	vshufps xmm11,xmm3,xmm10,0x88
  ac24c7:	c4 e2 7d 18 05 90 2f 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b2f90]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac24ce:	5b ff 
  ac24d0:	c5 7c 28 e0          	vmovaps ymm12,ymm0
  ac24d4:	c4 42 45 ac e3       	vfnmadd213ps ymm12,ymm7,ymm11
  ac24d9:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ac24dd:	c4 c1 60 c6 da dd    	vshufps xmm3,xmm3,xmm10,0xdd
  ac24e3:	c5 60 58 c6          	vaddps xmm8,xmm3,xmm6
  ac24e7:	c4 e2 4d bc d8       	vfnmadd231ps ymm3,ymm6,ymm0
  ac24ec:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  ac24f0:	c5 dc 59 e1          	vmulps ymm4,ymm4,ymm1
  ac24f4:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  ac24f8:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  ac24fc:	c5 bd 15 e3          	vunpckhpd ymm4,ymm8,ymm3
  ac2500:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  ac2504:	c4 e3 55 0c f2 cc    	vblendps ymm6,ymm5,ymm2,0xcc
  ac250a:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ac250f:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  ac2514:	c5 e4 c6 ee 88       	vshufps ymm5,ymm3,ymm6,0x88
  ac2519:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac251e:	c5 e4 c6 de dd       	vshufps ymm3,ymm3,ymm6,0xdd
  ac2523:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac2528:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac252d:	c5 a0 58 f7          	vaddps xmm6,xmm11,xmm7
  ac2531:	c4 c1 18 5c f9       	vsubps xmm7,xmm12,xmm9
  ac2536:	c4 41 30 58 c4       	vaddps xmm8,xmm9,xmm12
  ac253b:	c4 41 4d 15 c8       	vunpckhpd ymm9,ymm6,ymm8
  ac2540:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  ac2545:	c4 e3 45 0c d2 cc    	vblendps ymm2,ymm7,ymm2,0xcc
  ac254b:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ac2550:	c5 b4 c6 ff 88       	vshufps ymm7,ymm9,ymm7,0x88
  ac2555:	c5 4c c6 c2 88       	vshufps ymm8,ymm6,ymm2,0x88
  ac255a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ac2560:	c5 cc c6 d2 dd       	vshufps ymm2,ymm6,ymm2,0xdd
  ac2565:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac256a:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  ac256f:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  ac2574:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  ac2579:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  ac2580:	00 
  ac2581:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  ac2588:	00 
  ac2589:	c5 64 59 e7          	vmulps ymm12,ymm3,ymm7
  ac258d:	c4 42 6d bc e1       	vfnmadd231ps ymm12,ymm2,ymm9
  ac2592:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  ac2596:	c4 42 4d bc eb       	vfnmadd231ps ymm13,ymm6,ymm11
  ac259b:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  ac25a0:	c5 ec 59 d7          	vmulps ymm2,ymm2,ymm7
  ac25a4:	c4 c2 65 b8 d1       	vfmadd231ps ymm2,ymm3,ymm9
  ac25a9:	c5 ac 59 de          	vmulps ymm3,ymm10,ymm6
  ac25ad:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  ac25b2:	c5 ec 58 e3          	vaddps ymm4,ymm2,ymm3
  ac25b6:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  ac25ba:	c4 e2 0d ac f5       	vfnmadd213ps ymm6,ymm14,ymm5
  ac25bf:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  ac25c3:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  ac25c7:	c5 cc 58 da          	vaddps ymm3,ymm6,ymm2
  ac25cb:	c4 c2 5d ac c0       	vfnmadd213ps ymm0,ymm4,ymm8
  ac25d0:	c4 c1 1c 5c fd       	vsubps ymm7,ymm12,ymm13
  ac25d5:	c5 c4 59 c9          	vmulps ymm1,ymm7,ymm1
  ac25d9:	c5 cc 5c d2          	vsubps ymm2,ymm6,ymm2
  ac25dd:	c5 8c 58 ed          	vaddps ymm5,ymm14,ymm5
  ac25e1:	c5 b8 58 e4          	vaddps xmm4,xmm8,xmm4
  ac25e5:	c5 fc 28 35 d3 5c 5b 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff5b5cd3]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac25ec:	ff 
  ac25ed:	62 f2 4d 28 7f e5    	vpermt2ps ymm4,ymm6,ymm5
  ac25f3:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  ac25f7:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  ac25fd:	c5 f8 13 66 10       	vmovlps QWORD PTR [rsi+0x10],xmm4
  ac2602:	c5 f8 5c e1          	vsubps xmm4,xmm0,xmm1
  ac2606:	62 f2 4d 28 7f e3    	vpermt2ps ymm4,ymm6,ymm3
  ac260c:	c5 f8 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm4
  ac2611:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  ac2617:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  ac261c:	c5 f8 58 c1          	vaddps xmm0,xmm0,xmm1
  ac2620:	62 f2 4d 28 7f c2    	vpermt2ps ymm0,ymm6,ymm2
  ac2626:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  ac262b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac2631:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  ac2636:	c5 f8 77             	vzeroupper
  ac2639:	c3                   	ret
