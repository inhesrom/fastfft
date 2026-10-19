
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006d4380 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6d4380:	55                   	push   rbp
  6d4381:	48 89 e5             	mov    rbp,rsp
  6d4384:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6d4388:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  6d438f:	48 c1 e2 06          	shl    rdx,0x6
  6d4393:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6d4397:	31 d2                	xor    edx,edx
  6d4399:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  6d43a0:	00 
  6d43a1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6d43a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6d43ad:	00 00 00 
  6d43b0:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  6d43b7:	00 
  6d43b8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6d43bd:	c5 fb 10 44 17 10    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x10]
  6d43c3:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d43c9:	c5 fb 10 4c 17 28    	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x28]
  6d43cf:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  6d43d5:	c5 fb 10 54 17 40    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x40]
  6d43db:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  6d43e1:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  6d43e6:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  6d43eb:	c4 c3 7d 0c f1 c0    	vblendps ymm6,ymm0,ymm9,0xc0
  6d43f1:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6d43f7:	c5 78 10 5c 17 30    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x30]
  6d43fd:	c5 f8 10 44 17 48    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x48]
  6d4403:	c5 f8 29 84 24 80 00 	vmovaps XMMWORD PTR [rsp+0x80],xmm0
  6d440a:	00 00 
  6d440c:	c4 43 75 0c e9 c0    	vblendps ymm13,ymm1,ymm9,0xc0
  6d4412:	c5 fb 10 44 17 58    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x58]
  6d4418:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d441e:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  6d4424:	c4 c3 6d 0c d9 c0    	vblendps ymm3,ymm2,ymm9,0xc0
  6d442a:	c5 fb 10 4c 17 70    	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x70]
  6d4430:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  6d4436:	c5 78 10 64 17 78    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x78]
  6d443c:	c4 43 7d 0c f9 c0    	vblendps ymm15,ymm0,ymm9,0xc0
  6d4442:	c5 fb 10 84 17 88 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x88]
  6d4449:	00 00 
  6d444b:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d4451:	c5 f8 10 94 17 90 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x90]
  6d4458:	00 00 
  6d445a:	c5 f8 29 54 24 60    	vmovaps XMMWORD PTR [rsp+0x60],xmm2
  6d4460:	c4 c3 75 0c c9 c0    	vblendps ymm1,ymm1,ymm9,0xc0
  6d4466:	c5 78 10 b4 17 a8 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0xa8]
  6d446d:	00 00 
  6d446f:	c5 fb 10 94 17 b8 00 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0xb8]
  6d4476:	00 00 
  6d4478:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  6d447e:	c4 c3 7d 0c e1 c0    	vblendps ymm4,ymm0,ymm9,0xc0
  6d4484:	c4 c3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm9,0xc0
  6d448a:	c4 c3 7d 19 f0 01    	vextractf128 xmm8,ymm6,0x1
  6d4490:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  6d4496:	c4 c1 50 c6 c8 88    	vshufps xmm1,xmm5,xmm8,0x88
  6d449c:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6d44a2:	c4 41 50 c6 c0 dd    	vshufps xmm8,xmm5,xmm8,0xdd
  6d44a8:	c5 a8 c6 f0 88       	vshufps xmm6,xmm10,xmm0,0x88
  6d44ad:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6d44b3:	c5 28 c6 d0 dd       	vshufps xmm10,xmm10,xmm0,0xdd
  6d44b8:	c5 a0 c6 c3 88       	vshufps xmm0,xmm11,xmm3,0x88
  6d44bd:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  6d44c4:	00 00 
  6d44c6:	c4 63 7d 19 e8 01    	vextractf128 xmm0,ymm13,0x1
  6d44cc:	c5 20 c6 db dd       	vshufps xmm11,xmm11,xmm3,0xdd
  6d44d1:	c5 c0 c6 e8 88       	vshufps xmm5,xmm7,xmm0,0x88
  6d44d6:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6d44dc:	c4 63 7d 19 f9 01    	vextractf128 xmm1,ymm15,0x1
  6d44e2:	c5 40 c6 e8 dd       	vshufps xmm13,xmm7,xmm0,0xdd
  6d44e7:	c5 18 c6 fc 88       	vshufps xmm15,xmm12,xmm4,0x88
  6d44ec:	c5 18 c6 e4 dd       	vshufps xmm12,xmm12,xmm4,0xdd
  6d44f1:	c5 f8 28 84 24 80 00 	vmovaps xmm0,XMMWORD PTR [rsp+0x80]
  6d44f8:	00 00 
  6d44fa:	c5 f8 c6 f9 88       	vshufps xmm7,xmm0,xmm1,0x88
  6d44ff:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6d4505:	c5 f8 c6 e1 dd       	vshufps xmm4,xmm0,xmm1,0xdd
  6d450a:	c5 88 c6 da 88       	vshufps xmm3,xmm14,xmm2,0x88
  6d450f:	c5 08 c6 f2 dd       	vshufps xmm14,xmm14,xmm2,0xdd
  6d4514:	c5 fb 10 8c 17 a0 00 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0xa0]
  6d451b:	00 00 
  6d451d:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  6d4523:	c4 c3 75 0c c9 c0    	vblendps ymm1,ymm1,ymm9,0xc0
  6d4529:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6d452f:	c5 f8 28 44 24 60    	vmovaps xmm0,XMMWORD PTR [rsp+0x60]
  6d4535:	c5 f8 c6 d1 88       	vshufps xmm2,xmm0,xmm1,0x88
  6d453a:	c5 f8 c6 c1 dd       	vshufps xmm0,xmm0,xmm1,0xdd
  6d453f:	c5 fc 28 4c 24 40    	vmovaps ymm1,YMMWORD PTR [rsp+0x40]
  6d4545:	c5 74 58 ce          	vaddps ymm9,ymm1,ymm6
  6d4549:	c5 7c 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm9
  6d4550:	00 00 
  6d4552:	c5 74 5c ce          	vsubps ymm9,ymm1,ymm6
  6d4556:	c5 84 58 f5          	vaddps ymm6,ymm15,ymm5
  6d455a:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  6d455f:	c4 41 14 58 fc       	vaddps ymm15,ymm13,ymm12
  6d4564:	c4 41 14 5c e4       	vsubps ymm12,ymm13,ymm12
  6d4569:	c5 0c 58 ec          	vaddps ymm13,ymm14,ymm4
  6d456d:	c4 c1 5c 5c e6       	vsubps ymm4,ymm4,ymm14
  6d4572:	c5 44 58 f3          	vaddps ymm14,ymm7,ymm3
  6d4576:	c5 c4 5c db          	vsubps ymm3,ymm7,ymm3
  6d457a:	c5 a4 58 f8          	vaddps ymm7,ymm11,ymm0
  6d457e:	c5 24 5c d8          	vsubps ymm11,ymm11,ymm0
  6d4582:	c4 c1 3c 58 c2       	vaddps ymm0,ymm8,ymm10
  6d4587:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  6d458c:	c5 9c 58 cd          	vaddps ymm1,ymm12,ymm5
  6d4590:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6d4596:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  6d459a:	c5 dc 5c cb          	vsubps ymm1,ymm4,ymm3
  6d459e:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6d45a4:	c5 e4 58 e4          	vaddps ymm4,ymm3,ymm4
  6d45a8:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  6d45af:	00 00 
  6d45b1:	c5 f4 58 da          	vaddps ymm3,ymm1,ymm2
  6d45b5:	c5 6c 5c d1          	vsubps ymm10,ymm2,ymm1
  6d45b9:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  6d45c0:	00 00 
  6d45c2:	c5 f4 58 d3          	vaddps ymm2,ymm1,ymm3
  6d45c6:	c5 74 5c e3          	vsubps ymm12,ymm1,ymm3
  6d45ca:	c4 c1 04 58 cd       	vaddps ymm1,ymm15,ymm13
  6d45cf:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  6d45d6:	00 00 
  6d45d8:	c4 c1 04 5c dd       	vsubps ymm3,ymm15,ymm13
  6d45dd:	c5 7c 58 ef          	vaddps ymm13,ymm0,ymm7
  6d45e1:	c5 7c 5c ff          	vsubps ymm15,ymm0,ymm7
  6d45e5:	c5 8c 58 c6          	vaddps ymm0,ymm14,ymm6
  6d45e9:	c5 8c 5c fe          	vsubps ymm7,ymm14,ymm6
  6d45ed:	c4 c1 34 58 cb       	vaddps ymm1,ymm9,ymm11
  6d45f2:	c4 c1 34 5c f3       	vsubps ymm6,ymm9,ymm11
  6d45f7:	c4 41 2c 58 f0       	vaddps ymm14,ymm10,ymm8
  6d45fc:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  6d4601:	c4 62 7d 18 0d 92 0d 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9a0d92]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6d4608:	9a ff 
  6d460a:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  6d460e:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  6d4612:	c5 54 5c dc          	vsubps ymm11,ymm5,ymm4
  6d4616:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  6d461a:	c5 b4 59 6c 24 60    	vmulps ymm5,ymm9,YMMWORD PTR [rsp+0x60]
  6d4620:	c5 34 59 4c 24 40    	vmulps ymm9,ymm9,YMMWORD PTR [rsp+0x40]
  6d4626:	c5 34 58 d5          	vaddps ymm10,ymm9,ymm5
  6d462a:	c5 34 5c cd          	vsubps ymm9,ymm9,ymm5
  6d462e:	c5 ec 58 e8          	vaddps ymm5,ymm2,ymm0
  6d4632:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  6d4636:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  6d463c:	c5 ac 58 d1          	vaddps ymm2,ymm10,ymm1
  6d4640:	c4 c1 70 5c ca       	vsubps xmm1,xmm1,xmm10
  6d4645:	c5 9c 58 eb          	vaddps ymm5,ymm12,ymm3
  6d4649:	c5 98 5c db          	vsubps xmm3,xmm12,xmm3
  6d464d:	c4 e3 6d 18 d1 01    	vinsertf128 ymm2,ymm2,xmm1,0x1
  6d4653:	c4 e3 55 18 cb 01    	vinsertf128 ymm1,ymm5,xmm3,0x1
  6d4659:	c5 cc 58 dc          	vaddps ymm3,ymm6,ymm4
  6d465d:	c5 c8 5c e4          	vsubps xmm4,xmm6,xmm4
  6d4661:	c5 fd 15 e9          	vunpckhpd ymm5,ymm0,ymm1
  6d4665:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  6d4669:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  6d4670:	00 00 
  6d4672:	c5 94 58 ce          	vaddps ymm1,ymm13,ymm6
  6d4676:	c5 90 5c f6          	vsubps xmm6,xmm13,xmm6
  6d467a:	c4 e3 65 18 dc 01    	vinsertf128 ymm3,ymm3,xmm4,0x1
  6d4680:	c4 e3 75 18 ce 01    	vinsertf128 ymm1,ymm1,xmm6,0x1
  6d4686:	c4 c1 0c 58 e3       	vaddps ymm4,ymm14,ymm11
  6d468b:	c4 c1 08 5c f3       	vsubps xmm6,xmm14,xmm11
  6d4690:	c4 e3 5d 18 f6 01    	vinsertf128 ymm6,ymm4,xmm6,0x1
  6d4696:	c5 84 58 e7          	vaddps ymm4,ymm15,ymm7
  6d469a:	c5 80 5c ff          	vsubps xmm7,xmm15,xmm7
  6d469e:	c5 6d 15 d3          	vunpckhpd ymm10,ymm2,ymm3
  6d46a2:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  6d46a6:	c4 e3 5d 18 df 01    	vinsertf128 ymm3,ymm4,xmm7,0x1
  6d46ac:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  6d46b1:	c4 41 38 5c c1       	vsubps xmm8,xmm8,xmm9
  6d46b6:	c4 c1 54 c6 ea 88    	vshufps ymm5,ymm5,ymm10,0x88
  6d46bc:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  6d46c1:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  6d46c7:	c5 75 15 c3          	vunpckhpd ymm8,ymm1,ymm3
  6d46cb:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  6d46d0:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  6d46d4:	c5 cd 15 d7          	vunpckhpd ymm2,ymm6,ymm7
  6d46d8:	c5 bc c6 d2 88       	vshufps ymm2,ymm8,ymm2,0x88
  6d46dd:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6d46e2:	c5 cd 14 df          	vunpcklpd ymm3,ymm6,ymm7
  6d46e6:	c5 f4 c6 f3 88       	vshufps ymm6,ymm1,ymm3,0x88
  6d46eb:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  6d46f0:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  6d46f5:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6d46fa:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  6d46ff:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  6d4704:	c5 54 59 c1          	vmulps ymm8,ymm5,ymm1
  6d4708:	c4 62 7d b8 c7       	vfmadd231ps ymm8,ymm0,ymm7
  6d470d:	c5 d4 59 c0          	vmulps ymm0,ymm5,ymm0
  6d4711:	c5 fc 10 a9 80 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0x80]
  6d4718:	00 
  6d4719:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6d471e:	c4 e2 75 bc c7       	vfnmadd231ps ymm0,ymm1,ymm7
  6d4723:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  6d472a:	00 
  6d472b:	c5 d4 59 fa          	vmulps ymm7,ymm5,ymm2
  6d472f:	c4 e2 65 b8 f9       	vfmadd231ps ymm7,ymm3,ymm1
  6d4734:	c5 d4 59 db          	vmulps ymm3,ymm5,ymm3
  6d4738:	c5 cc c6 ee d8       	vshufps ymm5,ymm6,ymm6,0xd8
  6d473d:	c4 e2 6d bc d9       	vfnmadd231ps ymm3,ymm2,ymm1
  6d4742:	c5 bc 58 cf          	vaddps ymm1,ymm8,ymm7
  6d4746:	c5 fc 5c d3          	vsubps ymm2,ymm0,ymm3
  6d474a:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  6d474e:	c4 62 7d 18 0d 09 0d 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9a0d09]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6d4755:	9a ff 
  6d4757:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  6d475b:	c4 e2 75 ac dd       	vfnmadd213ps ymm3,ymm1,ymm5
  6d4760:	c4 62 7d 18 15 6b 0b 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9a0b6b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6d4767:	9a ff 
  6d4769:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  6d476d:	c5 bc 5c f7          	vsubps ymm6,ymm8,ymm7
  6d4771:	c5 e4 58 fa          	vaddps ymm7,ymm3,ymm2
  6d4775:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  6d4779:	c5 dc c6 dc d8       	vshufps ymm3,ymm4,ymm4,0xd8
  6d477e:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  6d4782:	c5 7c 29 cc          	vmovaps ymm4,ymm9
  6d4786:	c4 e2 7d ac e3       	vfnmadd213ps ymm4,ymm0,ymm3
  6d478b:	c5 ac 59 ee          	vmulps ymm5,ymm10,ymm6
  6d478f:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  6d4793:	c5 dc 5c dd          	vsubps ymm3,ymm4,ymm5
  6d4797:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  6d479b:	c5 fc 15 e9          	vunpckhps ymm5,ymm0,ymm1
  6d479f:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  6d47a3:	c4 e3 7d 06 cd 31    	vperm2f128 ymm1,ymm0,ymm5,0x31
  6d47a9:	c4 e3 7d 06 c5 20    	vperm2f128 ymm0,ymm0,ymm5,0x20
  6d47af:	c5 fc 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm0
  6d47b4:	c5 fc 11 4c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm1
  6d47ba:	c5 dc 15 c2          	vunpckhps ymm0,ymm4,ymm2
  6d47be:	c5 dc 14 ca          	vunpcklps ymm1,ymm4,ymm2
  6d47c2:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  6d47c8:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  6d47ce:	c5 fc 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm0
  6d47d4:	c5 e4 15 c7          	vunpckhps ymm0,ymm3,ymm7
  6d47d8:	c5 e4 14 cf          	vunpcklps ymm1,ymm3,ymm7
  6d47dc:	c4 e3 75 06 d8 31    	vperm2f128 ymm3,ymm1,ymm0,0x31
  6d47e2:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  6d47e8:	c5 fc 11 54 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  6d47ee:	c5 fc 11 84 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm0
  6d47f5:	00 00 
  6d47f7:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  6d47fe:	00 00 
  6d4800:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6d4807:	48 39 d0             	cmp    rax,rdx
  6d480a:	0f 85 a0 fb ff ff    	jne    6d43b0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6d4810:	48 89 ec             	mov    rsp,rbp
  6d4813:	5d                   	pop    rbp
  6d4814:	c5 f8 77             	vzeroupper
  6d4817:	c3                   	ret
