
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006f32c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6f32c0:	55                   	push   rbp
  6f32c1:	48 89 e5             	mov    rbp,rsp
  6f32c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6f32c8:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  6f32cf:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  6f32d6:	00 
  6f32d7:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  6f32de:	00 
  6f32df:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  6f32e4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  6f32e9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  6f32ed:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  6f32f2:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  6f32f7:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  6f32fc:	c5 fc 10 a7 80 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0x80]
  6f3303:	00 
  6f3304:	c5 fc 10 af a0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xa0]
  6f330b:	00 
  6f330c:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  6f3311:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  6f3317:	c5 ec c6 fb 88       	vshufps ymm7,ymm2,ymm3,0x88
  6f331c:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  6f3322:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  6f3327:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6f332d:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  6f3332:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6f3338:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  6f333d:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6f3343:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  6f3348:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6f334e:	c5 bc 58 df          	vaddps ymm3,ymm8,ymm7
  6f3352:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  6f3356:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  6f335a:	c5 54 58 e0          	vaddps ymm12,ymm5,ymm0
  6f335e:	c4 62 7d 18 0d f9 20 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9820f9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f3365:	98 ff 
  6f3367:	c4 e2 35 ac de       	vfnmadd213ps ymm3,ymm9,ymm6
  6f336c:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6f3370:	c4 e2 7d 18 15 5b 1f 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff981f5b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f3377:	98 ff 
  6f3379:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  6f337d:	c5 e4 58 f1          	vaddps ymm6,ymm3,ymm1
  6f3381:	c4 62 55 ac c8       	vfnmadd213ps ymm9,ymm5,ymm0
  6f3386:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  6f338b:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6f338f:	c5 34 5c f8          	vsubps ymm15,ymm9,ymm0
  6f3393:	c5 64 5c d1          	vsubps ymm10,ymm3,ymm1
  6f3397:	c5 34 58 c0          	vaddps ymm8,ymm9,ymm0
  6f339b:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  6f33a1:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6f33a7:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  6f33ad:	c5 fc 28 fe          	vmovaps ymm7,ymm6
  6f33b1:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  6f33b7:	c4 63 7d 19 d1 01    	vextractf128 xmm1,ymm10,0x1
  6f33bd:	c5 fc 29 8c 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm1
  6f33c4:	00 00 
  6f33c6:	c5 fd 14 c9          	vunpcklpd ymm1,ymm0,ymm1
  6f33ca:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  6f33d1:	00 00 
  6f33d3:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6f33d7:	c4 e3 6d 0c c0 cc    	vblendps ymm0,ymm2,ymm0,0xcc
  6f33dd:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  6f33e1:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  6f33e8:	00 00 
  6f33ea:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  6f33ef:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6f33f4:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  6f33fa:	c4 63 7d 19 fb 01    	vextractf128 xmm3,ymm15,0x1
  6f3400:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  6f3406:	c5 8d 14 f1          	vunpcklpd ymm6,ymm14,ymm1
  6f340a:	c5 fc 29 b4 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm6
  6f3411:	00 00 
  6f3413:	c4 e3 65 0c d5 cc    	vblendps ymm2,ymm3,ymm5,0xcc
  6f3419:	c5 fc 29 94 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm2
  6f3420:	00 00 
  6f3422:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  6f3427:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f342c:	c5 7c 10 8a 00 01 00 	vmovups ymm9,YMMWORD PTR [rdx+0x100]
  6f3433:	00 
  6f3434:	c5 fc 10 b2 20 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x120]
  6f343b:	00 
  6f343c:	c5 b4 59 e8          	vmulps ymm5,ymm9,ymm0
  6f3440:	c4 e2 6d bc ee       	vfnmadd231ps ymm5,ymm2,ymm6
  6f3445:	c5 fc 29 6c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm5
  6f344b:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  6f344f:	c4 e2 7d b8 d6       	vfmadd231ps ymm2,ymm0,ymm6
  6f3454:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  6f345b:	00 00 
  6f345d:	c5 78 28 dc          	vmovaps xmm11,xmm4
  6f3461:	c5 78 29 d2          	vmovaps xmm2,xmm10
  6f3465:	c5 fc 28 c7          	vmovaps ymm0,ymm7
  6f3469:	c5 f8 28 e0          	vmovaps xmm4,xmm0
  6f346d:	c5 d5 73 dc 08       	vpsrldq ymm5,ymm4,0x8
  6f3472:	c5 fd 7f ac 24 c0 01 	vmovdqa YMMWORD PTR [rsp+0x1c0],ymm5
  6f3479:	00 00 
  6f347b:	c5 a5 15 e2          	vunpckhpd ymm4,ymm11,ymm2
  6f347f:	c5 fc 29 a4 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm4
  6f3486:	00 00 
  6f3488:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  6f348d:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6f3492:	c5 78 29 e5          	vmovaps xmm5,xmm12
  6f3496:	c5 78 29 c6          	vmovaps xmm6,xmm8
  6f349a:	c4 41 78 28 c7       	vmovaps xmm8,xmm15
  6f349f:	c4 c1 45 73 d8 08    	vpsrldq ymm7,ymm8,0x8
  6f34a5:	c5 55 15 c6          	vunpckhpd ymm8,ymm5,ymm6
  6f34a9:	c5 7c 29 84 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm8
  6f34b0:	00 00 
  6f34b2:	c5 3c c6 c7 88       	vshufps ymm8,ymm8,ymm7,0x88
  6f34b7:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6f34bd:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  6f34c4:	00 
  6f34c5:	c5 7c 10 a2 a0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xa0]
  6f34cc:	00 
  6f34cd:	c5 2c 59 cc          	vmulps ymm9,ymm10,ymm4
  6f34d1:	c4 42 3d bc cc       	vfnmadd231ps ymm9,ymm8,ymm12
  6f34d6:	c5 7c 29 8c 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm9
  6f34dd:	00 00 
  6f34df:	c4 41 2c 59 e8       	vmulps ymm13,ymm10,ymm8
  6f34e4:	c4 42 5d b8 ec       	vfmadd231ps ymm13,ymm4,ymm12
  6f34e9:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  6f34ef:	c5 5d 15 84 24 c0 00 	vunpckhpd ymm8,ymm4,YMMWORD PTR [rsp+0xc0]
  6f34f6:	00 00 
  6f34f8:	c5 7c 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm8
  6f34ff:	00 00 
  6f3501:	c5 0d 15 c9          	vunpckhpd ymm9,ymm14,ymm1
  6f3505:	c5 7c 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm9
  6f350c:	00 00 
  6f350e:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6f3512:	c5 fc 28 64 24 40    	vmovaps ymm4,YMMWORD PTR [rsp+0x40]
  6f3518:	c5 dd 15 e1          	vunpckhpd ymm4,ymm4,ymm1
  6f351c:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  6f3522:	c5 e5 15 d9          	vunpckhpd ymm3,ymm3,ymm1
  6f3526:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  6f352c:	c5 bc c6 cc 88       	vshufps ymm1,ymm8,ymm4,0x88
  6f3531:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6f3536:	c5 b4 c6 db 88       	vshufps ymm3,ymm9,ymm3,0x88
  6f353b:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6f3540:	c5 fc 10 a2 80 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x180]
  6f3547:	00 
  6f3548:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  6f354f:	00 
  6f3550:	c5 5c 59 f1          	vmulps ymm14,ymm4,ymm1
  6f3554:	c4 42 65 bc f2       	vfnmadd231ps ymm14,ymm3,ymm10
  6f3559:	c5 5c 59 e3          	vmulps ymm12,ymm4,ymm3
  6f355d:	c4 42 75 b8 e2       	vfmadd231ps ymm12,ymm1,ymm10
  6f3562:	c5 a5 14 ca          	vunpcklpd ymm1,ymm11,ymm2
  6f3566:	c5 fc 29 8c 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm1
  6f356d:	00 00 
  6f356f:	c5 d5 14 d6          	vunpcklpd ymm2,ymm5,ymm6
  6f3573:	c5 fc 29 94 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm2
  6f357a:	00 00 
  6f357c:	c5 fa 7e c0          	vmovq  xmm0,xmm0
  6f3580:	c5 fd 7f 84 24 60 01 	vmovdqa YMMWORD PTR [rsp+0x160],ymm0
  6f3587:	00 00 
  6f3589:	c5 f4 c6 c0 dd       	vshufps ymm0,ymm1,ymm0,0xdd
  6f358e:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6f3593:	c4 41 7a 7e ff       	vmovq  xmm15,xmm15
  6f3598:	c4 c1 6c c6 cf dd    	vshufps ymm1,ymm2,ymm15,0xdd
  6f359e:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6f35a3:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  6f35a8:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  6f35ad:	c5 6c 59 db          	vmulps ymm11,ymm2,ymm3
  6f35b1:	c4 62 75 bc d8       	vfnmadd231ps ymm11,ymm1,ymm0
  6f35b6:	c5 6c 59 d1          	vmulps ymm10,ymm2,ymm1
  6f35ba:	c4 62 65 b8 d0       	vfmadd231ps ymm10,ymm3,ymm0
  6f35bf:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  6f35c6:	00 00 
  6f35c8:	c5 fc c6 84 24 a0 00 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0xa0],0xdd
  6f35cf:	00 00 dd 
  6f35d2:	c5 fc 28 8c 24 20 02 	vmovaps ymm1,YMMWORD PTR [rsp+0x220]
  6f35d9:	00 00 
  6f35db:	c5 f4 c6 8c 24 e0 00 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0xe0],0xdd
  6f35e2:	00 00 dd 
  6f35e5:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  6f35ea:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6f35ef:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  6f35f6:	00 
  6f35f7:	c5 fc 10 82 60 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x160]
  6f35fe:	00 
  6f35ff:	c5 64 59 c2          	vmulps ymm8,ymm3,ymm2
  6f3603:	c4 62 75 bc c0       	vfnmadd231ps ymm8,ymm1,ymm0
  6f3608:	c5 64 59 c9          	vmulps ymm9,ymm3,ymm1
  6f360c:	c4 62 6d b8 c8       	vfmadd231ps ymm9,ymm2,ymm0
  6f3611:	c5 fc 28 84 24 e0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1e0]
  6f3618:	00 00 
  6f361a:	c5 fc c6 84 24 c0 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x1c0],0xdd
  6f3621:	00 00 dd 
  6f3624:	c5 fc 28 8c 24 a0 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x1a0]
  6f362b:	00 00 
  6f362d:	c5 f4 c6 d7 dd       	vshufps ymm2,ymm1,ymm7,0xdd
  6f3632:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6f3637:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f363c:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  6f3643:	00 
  6f3644:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  6f364b:	00 
  6f364c:	c5 fc 59 fb          	vmulps ymm7,ymm0,ymm3
  6f3650:	c4 e2 6d bc f9       	vfnmadd231ps ymm7,ymm2,ymm1
  6f3655:	c5 fc 59 f2          	vmulps ymm6,ymm0,ymm2
  6f3659:	c4 e2 65 b8 f1       	vfmadd231ps ymm6,ymm3,ymm1
  6f365e:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  6f3665:	00 00 
  6f3667:	c5 fc c6 4c 24 60 dd 	vshufps ymm1,ymm0,YMMWORD PTR [rsp+0x60],0xdd
  6f366e:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  6f3675:	00 00 
  6f3677:	c5 fc c6 54 24 40 dd 	vshufps ymm2,ymm0,YMMWORD PTR [rsp+0x40],0xdd
  6f367e:	c5 f4 c6 e9 d8       	vshufps ymm5,ymm1,ymm1,0xd8
  6f3683:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f3688:	c5 fc 10 9a c0 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x1c0]
  6f368f:	00 
  6f3690:	c5 fc 10 a2 e0 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x1e0]
  6f3697:	00 
  6f3698:	c5 e4 59 cd          	vmulps ymm1,ymm3,ymm5
  6f369c:	c4 e2 6d bc cc       	vfnmadd231ps ymm1,ymm2,ymm4
  6f36a1:	c5 e4 59 c2          	vmulps ymm0,ymm3,ymm2
  6f36a5:	c4 e2 55 b8 c4       	vfmadd231ps ymm0,ymm5,ymm4
  6f36aa:	c5 fc 28 94 24 40 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x140]
  6f36b1:	00 00 
  6f36b3:	c5 ec c6 94 24 60 01 	vshufps ymm2,ymm2,YMMWORD PTR [rsp+0x160],0x88
  6f36ba:	00 00 88 
  6f36bd:	c5 fc 28 9c 24 20 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x120]
  6f36c4:	00 00 
  6f36c6:	c4 41 64 c6 ff 88    	vshufps ymm15,ymm3,ymm15,0x88
  6f36cc:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f36d1:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  6f36d7:	c5 e4 58 e2          	vaddps ymm4,ymm3,ymm2
  6f36db:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6f36df:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  6f36e6:	00 00 
  6f36e8:	c4 c1 14 58 ec       	vaddps ymm5,ymm13,ymm12
  6f36ed:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  6f36f2:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  6f36f9:	00 00 
  6f36fb:	c4 c1 24 58 d0       	vaddps ymm2,ymm11,ymm8
  6f3700:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6f3706:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  6f370b:	c4 41 2c 58 d9       	vaddps ymm11,ymm10,ymm9
  6f3710:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  6f3715:	c5 4c 58 e0          	vaddps ymm12,ymm6,ymm0
  6f3719:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6f371d:	c5 c4 58 f1          	vaddps ymm6,ymm7,ymm1
  6f3721:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  6f3725:	c4 c1 04 c6 ff d8    	vshufps ymm7,ymm15,ymm15,0xd8
  6f372b:	c5 fc 28 94 24 00 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x100]
  6f3732:	00 00 
  6f3734:	c5 6c 58 ef          	vaddps ymm13,ymm2,ymm7
  6f3738:	c5 c4 5c fa          	vsubps ymm7,ymm7,ymm2
  6f373c:	c5 fc 28 94 24 00 02 	vmovaps ymm2,YMMWORD PTR [rsp+0x200]
  6f3743:	00 00 
  6f3745:	c5 0c 58 d2          	vaddps ymm10,ymm14,ymm2
  6f3749:	c5 0c 5c fa          	vsubps ymm15,ymm14,ymm2
  6f374d:	c4 41 3c 58 f1       	vaddps ymm14,ymm8,ymm9
  6f3752:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  6f3757:	c5 7c 5c c9          	vsubps ymm9,ymm0,ymm1
  6f375b:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  6f375f:	c4 e2 7d 18 0d 34 1c 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff981c34]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6f3766:	98 ff 
  6f3768:	c5 8c 59 d1          	vmulps ymm2,ymm14,ymm1
  6f376c:	c5 b4 59 c1          	vmulps ymm0,ymm9,ymm1
  6f3770:	c5 3c 59 f1          	vmulps ymm14,ymm8,ymm1
  6f3774:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  6f3778:	c5 ac 58 cc          	vaddps ymm1,ymm10,ymm4
  6f377c:	c5 fc 29 8c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm1
  6f3783:	00 00 
  6f3785:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  6f378a:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  6f3790:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  6f3795:	c4 c1 24 5c e4       	vsubps ymm4,ymm11,ymm12
  6f379a:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  6f37a0:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  6f37a4:	c5 94 5c e5          	vsubps ymm4,ymm13,ymm5
  6f37a8:	c5 fc 29 a4 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm4
  6f37af:	00 00 
  6f37b1:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  6f37b7:	c5 54 58 ee          	vaddps ymm13,ymm5,ymm6
  6f37bb:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  6f37bf:	c5 fc 29 6c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm5
  6f37c5:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  6f37cc:	00 00 
  6f37ce:	c5 7c 28 84 24 80 00 	vmovaps ymm8,YMMWORD PTR [rsp+0x80]
  6f37d5:	00 00 
  6f37d7:	c5 3c 58 ce          	vaddps ymm9,ymm8,ymm6
  6f37db:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  6f37e0:	c5 fc 29 b4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm6
  6f37e7:	00 00 
  6f37e9:	c5 0c 5c e3          	vsubps ymm12,ymm14,ymm3
  6f37ed:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  6f37f1:	c5 fc 29 9c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm3
  6f37f8:	00 00 
  6f37fa:	c5 04 58 f7          	vaddps ymm14,ymm15,ymm7
  6f37fe:	c4 c1 44 5c df       	vsubps ymm3,ymm7,ymm15
  6f3803:	c5 6c 58 f8          	vaddps ymm15,ymm2,ymm0
  6f3807:	c5 7c 5c c2          	vsubps ymm8,ymm0,ymm2
  6f380b:	c4 c1 20 58 c2       	vaddps xmm0,xmm11,xmm10
  6f3810:	c5 90 58 d1          	vaddps xmm2,xmm13,xmm1
  6f3814:	c5 e8 14 c8          	vunpcklps xmm1,xmm2,xmm0
  6f3818:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6f381c:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  6f3821:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  6f3825:	c4 c1 08 58 c4       	vaddps xmm0,xmm14,xmm12
  6f382a:	c4 c1 30 58 cf       	vaddps xmm1,xmm9,xmm15
  6f382f:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f3833:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f3837:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  6f383c:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  6f3841:	c5 d8 58 c5          	vaddps xmm0,xmm4,xmm5
  6f3845:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  6f384b:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  6f3851:	c5 c8 58 cd          	vaddps xmm1,xmm6,xmm5
  6f3855:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f3859:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f385d:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  6f3862:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  6f3867:	c5 b8 58 c3          	vaddps xmm0,xmm8,xmm3
  6f386b:	c5 fc 28 fb          	vmovaps ymm7,ymm3
  6f386f:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  6f3876:	00 00 
  6f3878:	c5 fc 28 9c 24 80 00 	vmovaps ymm3,YMMWORD PTR [rsp+0x80]
  6f387f:	00 00 
  6f3881:	c5 d8 58 cb          	vaddps xmm1,xmm4,xmm3
  6f3885:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f3889:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f388d:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  6f3892:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  6f3897:	c4 c1 20 5c c2       	vsubps xmm0,xmm11,xmm10
  6f389c:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  6f38a3:	00 00 
  6f38a5:	c4 c1 70 5c cd       	vsubps xmm1,xmm1,xmm13
  6f38aa:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f38ae:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f38b2:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  6f38b7:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  6f38bc:	c4 c1 08 5c c4       	vsubps xmm0,xmm14,xmm12
  6f38c1:	c4 c1 30 5c cf       	vsubps xmm1,xmm9,xmm15
  6f38c6:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f38ca:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f38ce:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  6f38d5:	00 
  6f38d6:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  6f38db:	c5 fc 28 84 24 e0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xe0]
  6f38e2:	00 00 
  6f38e4:	c5 f8 5c 44 24 20    	vsubps xmm0,xmm0,XMMWORD PTR [rsp+0x20]
  6f38ea:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  6f38ee:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f38f2:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f38f6:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  6f38fd:	00 
  6f38fe:	c5 f8 11 96 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm2
  6f3905:	00 
  6f3906:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  6f390b:	c5 d8 5c cb          	vsubps xmm1,xmm4,xmm3
  6f390f:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f3913:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f3917:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  6f391e:	00 
  6f391f:	c5 f8 11 96 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm2
  6f3926:	00 
  6f3927:	48 89 ec             	mov    rsp,rbp
  6f392a:	5d                   	pop    rbp
  6f392b:	c5 f8 77             	vzeroupper
  6f392e:	c3                   	ret
