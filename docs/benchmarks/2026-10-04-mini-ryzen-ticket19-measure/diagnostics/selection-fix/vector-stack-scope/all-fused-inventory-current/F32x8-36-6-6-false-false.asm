
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c7300 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c7300:	55                   	push   rbp
  6c7301:	48 89 e5             	mov    rbp,rsp
  6c7304:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c7308:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  6c730f:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  6c7316:	00 
  6c7317:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
  6c731e:	00 
  6c731f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  6c7324:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  6c7329:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  6c732d:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  6c7332:	c5 7c 10 4f 30       	vmovups ymm9,YMMWORD PTR [rdi+0x30]
  6c7337:	c5 f8 10 57 50       	vmovups xmm2,XMMWORD PTR [rdi+0x50]
  6c733c:	c5 fc 10 77 60       	vmovups ymm6,YMMWORD PTR [rdi+0x60]
  6c7341:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  6c7348:	00 
  6c7349:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  6c7350:	00 
  6c7351:	c5 78 10 a7 b0 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0xb0]
  6c7358:	00 
  6c7359:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  6c7360:	00 
  6c7361:	c5 78 10 b7 e0 00 00 	vmovups xmm14,XMMWORD PTR [rdi+0xe0]
  6c7368:	00 
  6c7369:	c5 7c 10 bf f0 00 00 	vmovups ymm15,YMMWORD PTR [rdi+0xf0]
  6c7370:	00 
  6c7371:	c5 f8 10 8f 10 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x110]
  6c7378:	00 
  6c7379:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  6c737e:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  6c7384:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6c738a:	c5 cc c6 df 88       	vshufps ymm3,ymm6,ymm7,0x88
  6c738f:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  6c7395:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  6c739c:	00 00 
  6c739e:	c4 c1 14 c6 de 88    	vshufps ymm3,ymm13,ymm14,0x88
  6c73a4:	c4 e3 fd 01 c3 d8    	vpermpd ymm0,ymm3,0xd8
  6c73aa:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  6c73b1:	00 00 
  6c73b3:	c4 41 2c c6 c4 88    	vshufps ymm8,ymm10,ymm12,0x88
  6c73b9:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6c73bf:	c5 5c c6 dd dd       	vshufps ymm11,ymm4,ymm5,0xdd
  6c73c4:	c5 84 c6 e1 88       	vshufps ymm4,ymm15,ymm1,0x88
  6c73c9:	c4 e3 fd 01 dc d8    	vpermpd ymm3,ymm4,0xd8
  6c73cf:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  6c73d5:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  6c73da:	c5 b4 c6 ea 88       	vshufps ymm5,ymm9,ymm2,0x88
  6c73df:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  6c73e5:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6c73eb:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6c73f1:	c4 e3 fd 01 e6 d8    	vpermpd ymm4,ymm6,0xd8
  6c73f7:	c4 c1 14 c6 f6 dd    	vshufps ymm6,ymm13,ymm14,0xdd
  6c73fd:	c4 63 fd 01 f6 d8    	vpermpd ymm14,ymm6,0xd8
  6c7403:	c4 c1 2c c6 f4 dd    	vshufps ymm6,ymm10,ymm12,0xdd
  6c7409:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  6c740f:	c5 84 c6 c9 dd       	vshufps ymm1,ymm15,ymm1,0xdd
  6c7414:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6c741a:	c5 b4 c6 d2 dd       	vshufps ymm2,ymm9,ymm2,0xdd
  6c741f:	c4 63 fd 01 e2 d8    	vpermpd ymm12,ymm2,0xd8
  6c7425:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  6c742c:	00 00 
  6c742e:	c5 fc 28 ac 24 80 00 	vmovaps ymm5,YMMWORD PTR [rsp+0x80]
  6c7435:	00 00 
  6c7437:	c5 b4 58 fd          	vaddps ymm7,ymm9,ymm5
  6c743b:	c5 7c 28 6c 24 40    	vmovaps ymm13,YMMWORD PTR [rsp+0x40]
  6c7441:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  6c7445:	c5 e4 58 f0          	vaddps ymm6,ymm3,ymm0
  6c7449:	c4 e2 7d 18 05 0e e0 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ae00e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c7450:	9a ff 
  6c7452:	c4 c2 7d ac fd       	vfnmadd213ps ymm7,ymm0,ymm13
  6c7457:	c5 0c 58 ec          	vaddps ymm13,ymm14,ymm4
  6c745b:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  6c7460:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  6c7464:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  6c746a:	c4 c2 7d ac f0       	vfnmadd213ps ymm6,ymm0,ymm8
  6c746f:	c5 1c 58 c1          	vaddps ymm8,ymm12,ymm1
  6c7473:	c4 41 74 5c fc       	vsubps ymm15,ymm1,ymm12
  6c7478:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  6c747d:	c4 42 7d ac eb       	vfnmadd213ps ymm13,ymm0,ymm11
  6c7482:	c5 6c 58 e3          	vaddps ymm12,ymm2,ymm3
  6c7486:	c5 b4 5c dd          	vsubps ymm3,ymm9,ymm5
  6c748a:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  6c748f:	c4 42 7d ac c2       	vfnmadd213ps ymm8,ymm0,ymm10
  6c7494:	c4 e2 7d 18 05 37 de 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ade37]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c749b:	9a ff 
  6c749d:	c5 0c 59 d0          	vmulps ymm10,ymm14,ymm0
  6c74a1:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  6c74a7:	c5 dc 5c 64 24 20    	vsubps ymm4,ymm4,YMMWORD PTR [rsp+0x20]
  6c74ad:	c5 ac 58 ef          	vaddps ymm5,ymm10,ymm7
  6c74b1:	c5 04 59 f0          	vmulps ymm14,ymm15,ymm0
  6c74b5:	c4 41 44 5c d2       	vsubps ymm10,ymm7,ymm10
  6c74ba:	c5 0c 58 fe          	vaddps ymm15,ymm14,ymm6
  6c74be:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  6c74c2:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  6c74c6:	c4 41 4c 5c f6       	vsubps ymm14,ymm6,ymm14
  6c74cb:	c5 94 5c c3          	vsubps ymm0,ymm13,ymm3
  6c74cf:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  6c74d3:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  6c74d7:	c5 3c 5c ec          	vsubps ymm13,ymm8,ymm4
  6c74db:	c5 bc 58 fc          	vaddps ymm7,ymm8,ymm4
  6c74df:	c5 a4 58 e1          	vaddps ymm4,ymm11,ymm1
  6c74e3:	c5 ec 5c 74 24 40    	vsubps ymm6,ymm2,YMMWORD PTR [rsp+0x40]
  6c74e9:	c4 c1 54 5c d7       	vsubps ymm2,ymm5,ymm15
  6c74ee:	c4 c1 74 5c cb       	vsubps ymm1,ymm1,ymm11
  6c74f3:	c4 41 7c 5c c5       	vsubps ymm8,ymm0,ymm13
  6c74f8:	c5 84 58 ed          	vaddps ymm5,ymm15,ymm5
  6c74fc:	c4 41 2c 58 fe       	vaddps ymm15,ymm10,ymm14
  6c7501:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  6c7505:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  6c7509:	c4 41 2c 5c ce       	vsubps ymm9,ymm10,ymm14
  6c750e:	c5 64 5c ef          	vsubps ymm13,ymm3,ymm7
  6c7512:	c4 e3 1d 18 fd 01    	vinsertf128 ymm7,ymm12,xmm5,0x1
  6c7518:	c4 e3 1d 06 dd 31    	vperm2f128 ymm3,ymm12,ymm5,0x31
  6c751e:	c4 c3 6d 18 e9 01    	vinsertf128 ymm5,ymm2,xmm9,0x1
  6c7524:	c4 c3 6d 06 d1 31    	vperm2f128 ymm2,ymm2,ymm9,0x31
  6c752a:	c5 64 14 e2          	vunpcklps ymm12,ymm3,ymm2
  6c752e:	c4 41 78 28 cf       	vmovaps xmm9,xmm15
  6c7533:	c5 78 28 d6          	vmovaps xmm10,xmm6
  6c7537:	c5 c4 14 dd          	vunpcklps ymm3,ymm7,ymm5
  6c753b:	c4 41 34 14 f2       	vunpcklps ymm14,ymm9,ymm10
  6c7540:	c4 c1 65 14 d6       	vunpcklpd ymm2,ymm3,ymm14
  6c7545:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6c754b:	c4 c1 65 15 de       	vunpckhpd ymm3,ymm3,ymm14
  6c7550:	c5 c4 15 ed          	vunpckhps ymm5,ymm7,ymm5
  6c7554:	c4 c1 34 15 fa       	vunpckhps ymm7,ymm9,ymm10
  6c7559:	c5 55 14 cf          	vunpcklpd ymm9,ymm5,ymm7
  6c755d:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  6c7561:	c4 63 7d 19 ff 01    	vextractf128 xmm7,ymm15,0x1
  6c7567:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c756d:	c5 c4 14 f6          	vunpcklps ymm6,ymm7,ymm6
  6c7571:	c5 1d 14 d6          	vunpcklpd ymm10,ymm12,ymm6
  6c7575:	c5 9d 15 f6          	vunpckhpd ymm6,ymm12,ymm6
  6c7579:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  6c757f:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  6c7585:	c4 43 3d 18 e5 01    	vinsertf128 ymm12,ymm8,xmm13,0x1
  6c758b:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  6c7591:	c5 fc 14 c4          	vunpcklps ymm0,ymm0,ymm4
  6c7595:	c4 41 78 28 eb       	vmovaps xmm13,xmm11
  6c759a:	c5 78 28 f1          	vmovaps xmm14,xmm1
  6c759e:	c4 41 44 14 c4       	vunpcklps ymm8,ymm7,ymm12
  6c75a3:	c4 41 14 14 fe       	vunpcklps ymm15,ymm13,ymm14
  6c75a8:	c4 c1 3d 14 e7       	vunpcklpd ymm4,ymm8,ymm15
  6c75ad:	c4 41 3d 15 c7       	vunpckhpd ymm8,ymm8,ymm15
  6c75b2:	c4 c1 44 15 fc       	vunpckhps ymm7,ymm7,ymm12
  6c75b7:	c4 41 14 15 ee       	vunpckhps ymm13,ymm13,ymm14
  6c75bc:	c4 41 45 14 e5       	vunpcklpd ymm12,ymm7,ymm13
  6c75c1:	c4 41 45 15 f5       	vunpckhpd ymm14,ymm7,ymm13
  6c75c6:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  6c75cc:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6c75d2:	c5 c4 14 c9          	vunpcklps ymm1,ymm7,ymm1
  6c75d6:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  6c75da:	c5 7d 15 f9          	vunpckhpd ymm15,ymm0,ymm1
  6c75de:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  6c75e5:	00 
  6c75e6:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  6c75ed:	00 
  6c75ee:	c5 b4 59 f8          	vmulps ymm7,ymm9,ymm0
  6c75f2:	c4 e2 1d bc f9       	vfnmadd231ps ymm7,ymm12,ymm1
  6c75f7:	c5 1c 59 d8          	vmulps ymm11,ymm12,ymm0
  6c75fb:	c4 62 35 b8 d9       	vfmadd231ps ymm11,ymm9,ymm1
  6c7600:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  6c7607:	00 
  6c7608:	c5 fc 10 8a 20 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x120]
  6c760f:	00 
  6c7610:	c5 2c 59 e0          	vmulps ymm12,ymm10,ymm0
  6c7614:	c4 62 15 bc e1       	vfnmadd231ps ymm12,ymm13,ymm1
  6c7619:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  6c761d:	c4 62 2d b8 e9       	vfmadd231ps ymm13,ymm10,ymm1
  6c7622:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  6c7629:	00 
  6c762a:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  6c7631:	00 
  6c7632:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  6c7636:	c4 62 0d bc d1       	vfnmadd231ps ymm10,ymm14,ymm1
  6c763b:	c5 0c 59 c8          	vmulps ymm9,ymm14,ymm0
  6c763f:	c4 62 55 b8 c9       	vfmadd231ps ymm9,ymm5,ymm1
  6c7644:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  6c764b:	00 
  6c764c:	c5 fc 10 8a 60 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x160]
  6c7653:	00 
  6c7654:	c5 7c 59 f6          	vmulps ymm14,ymm0,ymm6
  6c7658:	c4 62 05 bc f1       	vfnmadd231ps ymm14,ymm15,ymm1
  6c765d:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  6c7661:	c4 62 4d b8 f9       	vfmadd231ps ymm15,ymm6,ymm1
  6c7666:	c5 fc 10 4a 40       	vmovups ymm1,YMMWORD PTR [rdx+0x40]
  6c766b:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  6c7670:	c5 f4 59 d3          	vmulps ymm2,ymm1,ymm3
  6c7674:	c4 e2 3d bc d5       	vfnmadd231ps ymm2,ymm8,ymm5
  6c7679:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6c767d:	c4 e2 65 b8 cd       	vfmadd231ps ymm1,ymm3,ymm5
  6c7682:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  6c7686:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  6c768c:	c5 cc 58 d8          	vaddps ymm3,ymm6,ymm0
  6c7690:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  6c7696:	c4 e2 7d 18 1d c1 dd 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9addc1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c769d:	9a ff 
  6c769f:	c4 e2 65 ac f0       	vfnmadd213ps ymm6,ymm3,ymm0
  6c76a4:	c5 8c 58 ea          	vaddps ymm5,ymm14,ymm2
  6c76a8:	c5 ac 58 c5          	vaddps ymm0,ymm10,ymm5
  6c76ac:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6c76b2:	c4 62 65 bc d5       	vfnmadd231ps ymm10,ymm3,ymm5
  6c76b7:	c4 c1 24 58 c5       	vaddps ymm0,ymm11,ymm13
  6c76bc:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  6c76c0:	c4 e2 65 ac c4       	vfnmadd213ps ymm0,ymm3,ymm4
  6c76c5:	c5 84 58 e1          	vaddps ymm4,ymm15,ymm1
  6c76c9:	c5 34 58 c4          	vaddps ymm8,ymm9,ymm4
  6c76cd:	c4 e2 7d 18 1d 8a dd 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9add8a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c76d4:	9a ff 
  6c76d6:	c4 62 5d bc cb       	vfnmadd231ps ymm9,ymm4,ymm3
  6c76db:	c4 c1 24 5c e5       	vsubps ymm4,ymm11,ymm13
  6c76e0:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  6c76e4:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  6c76e9:	c4 62 7d 18 2d e2 db 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff9adbe2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c76f0:	9a ff 
  6c76f2:	c5 94 59 e4          	vmulps ymm4,ymm13,ymm4
  6c76f6:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  6c76fa:	c5 4c 58 dc          	vaddps ymm11,ymm6,ymm4
  6c76fe:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  6c7702:	c5 14 59 e7          	vmulps ymm12,ymm13,ymm7
  6c7706:	c5 94 59 d2          	vmulps ymm2,ymm13,ymm2
  6c770a:	c5 2c 58 e9          	vaddps ymm13,ymm10,ymm1
  6c770e:	c5 4c 5c f4          	vsubps ymm14,ymm6,ymm4
  6c7712:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  6c7717:	c5 ac 5c c9          	vsubps ymm1,ymm10,ymm1
  6c771b:	c4 c1 7c 5c f4       	vsubps ymm6,ymm0,ymm12
  6c7720:	c5 1c 58 d0          	vaddps ymm10,ymm12,ymm0
  6c7724:	c5 b4 5c c2          	vsubps ymm0,ymm9,ymm2
  6c7728:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  6c772c:	c5 4c 5c e0          	vsubps ymm12,ymm6,ymm0
  6c7730:	c4 c1 24 58 e5       	vaddps ymm4,ymm11,ymm13
  6c7735:	c5 0c 58 d9          	vaddps ymm11,ymm14,ymm1
  6c7739:	c5 cc 58 f0          	vaddps ymm6,ymm6,ymm0
  6c773d:	c5 2c 58 ea          	vaddps ymm13,ymm10,ymm2
  6c7741:	c5 8c 5c c1          	vsubps ymm0,ymm14,ymm1
  6c7745:	c5 7c 28 74 24 60    	vmovaps ymm14,YMMWORD PTR [rsp+0x60]
  6c774b:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  6c7751:	c5 0c 5c cb          	vsubps ymm9,ymm14,ymm3
  6c7755:	c5 ac 5c ca          	vsubps ymm1,ymm10,ymm2
  6c7759:	c4 c1 54 5c d0       	vsubps ymm2,ymm5,ymm8
  6c775e:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  6c7762:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  6c7766:	c5 64 14 c5          	vunpcklps ymm8,ymm3,ymm5
  6c776a:	c5 60 14 d5          	vunpcklps xmm10,xmm3,xmm5
  6c776e:	c5 e0 15 dd          	vunpckhps xmm3,xmm3,xmm5
  6c7772:	c5 f8 11 5e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm3
  6c7777:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  6c777b:	c4 63 7d 19 46 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm8,0x1
  6c7782:	c4 c1 44 14 dc       	vunpcklps ymm3,ymm7,ymm12
  6c7787:	c4 c1 40 14 ec       	vunpcklps xmm5,xmm7,xmm12
  6c778c:	c4 c1 40 15 fc       	vunpckhps xmm7,xmm7,xmm12
  6c7791:	c5 f8 11 7e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm7
  6c7796:	c5 f8 11 6e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm5
  6c779b:	c4 e3 7d 19 5e 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm3,0x1
  6c77a2:	c4 c1 24 14 dd       	vunpcklps ymm3,ymm11,ymm13
  6c77a7:	c4 c1 20 14 ed       	vunpcklps xmm5,xmm11,xmm13
  6c77ac:	c4 c1 20 15 fd       	vunpckhps xmm7,xmm11,xmm13
  6c77b1:	c5 f8 11 7e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm7
  6c77b6:	c5 f8 11 6e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm5
  6c77bb:	c4 e3 7d 19 9e 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm3,0x1
  6c77c2:	00 00 01 
  6c77c5:	c5 b4 14 da          	vunpcklps ymm3,ymm9,ymm2
  6c77c9:	c5 b0 14 ea          	vunpcklps xmm5,xmm9,xmm2
  6c77cd:	c5 b0 15 d2          	vunpckhps xmm2,xmm9,xmm2
  6c77d1:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6c77d8:	00 
  6c77d9:	c5 f8 11 ae 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm5
  6c77e0:	00 
  6c77e1:	c4 e3 7d 19 9e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm3,0x1
  6c77e8:	00 00 01 
  6c77eb:	c5 dc 14 d6          	vunpcklps ymm2,ymm4,ymm6
  6c77ef:	c5 d8 14 de          	vunpcklps xmm3,xmm4,xmm6
  6c77f3:	c5 d8 15 e6          	vunpckhps xmm4,xmm4,xmm6
  6c77f7:	c5 f8 11 a6 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm4
  6c77fe:	00 
  6c77ff:	c5 f8 11 9e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm3
  6c7806:	00 
  6c7807:	c4 e3 7d 19 96 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm2,0x1
  6c780e:	00 00 01 
  6c7811:	c5 fc 14 d1          	vunpcklps ymm2,ymm0,ymm1
  6c7815:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6c7819:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6c781d:	c5 f8 11 86 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm0
  6c7824:	00 
  6c7825:	c5 f8 11 9e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm3
  6c782c:	00 
  6c782d:	c4 e3 7d 19 96 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm2,0x1
  6c7834:	00 00 01 
  6c7837:	48 89 ec             	mov    rsp,rbp
  6c783a:	5d                   	pop    rbp
  6c783b:	c5 f8 77             	vzeroupper
  6c783e:	c3                   	ret
