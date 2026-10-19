
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c4300 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c4300:	48 c1 e2 06          	shl    rdx,0x6
  6c4304:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c4308:	31 d2                	xor    edx,edx
  6c430a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  6c4310:	c5 fc 10 14 17       	vmovups ymm2,YMMWORD PTR [rdi+rdx*1]
  6c4315:	c5 f8 10 5c 17 20    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x20]
  6c431b:	c5 fc 10 64 17 30    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  6c4321:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  6c4327:	c5 fc 10 74 17 60    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  6c432d:	c5 f8 10 bc 17 80 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x80]
  6c4334:	00 00 
  6c4336:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  6c433d:	00 00 
  6c433f:	c5 78 10 8c 17 b0 00 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0xb0]
  6c4346:	00 00 
  6c4348:	c5 6c c6 d3 dd       	vshufps ymm10,ymm2,ymm3,0xdd
  6c434d:	c4 43 fd 01 da d8    	vpermpd ymm11,ymm10,0xd8
  6c4353:	c5 4c c6 d7 dd       	vshufps ymm10,ymm6,ymm7,0xdd
  6c4358:	c4 43 fd 01 e2 d8    	vpermpd ymm12,ymm10,0xd8
  6c435e:	c5 5c c6 d5 dd       	vshufps ymm10,ymm4,ymm5,0xdd
  6c4363:	c4 43 fd 01 ea d8    	vpermpd ymm13,ymm10,0xd8
  6c4369:	c4 41 3c c6 d1 dd    	vshufps ymm10,ymm8,ymm9,0xdd
  6c436f:	c4 43 fd 01 f2 d8    	vpermpd ymm14,ymm10,0xd8
  6c4375:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  6c437a:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6c4380:	c5 cc c6 df 88       	vshufps ymm3,ymm6,ymm7,0x88
  6c4385:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6c438b:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  6c4390:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6c4396:	c4 c1 3c c6 e9 88    	vshufps ymm5,ymm8,ymm9,0x88
  6c439c:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6c43a2:	c4 c1 24 58 f4       	vaddps ymm6,ymm11,ymm12
  6c43a7:	c4 c1 14 58 fe       	vaddps ymm7,ymm13,ymm14
  6c43ac:	c5 4c 58 c7          	vaddps ymm8,ymm6,ymm7
  6c43b0:	c5 6c 58 cb          	vaddps ymm9,ymm2,ymm3
  6c43b4:	c5 5c 58 fd          	vaddps ymm15,ymm4,ymm5
  6c43b8:	c4 41 34 58 d7       	vaddps ymm10,ymm9,ymm15
  6c43bd:	c4 41 24 5c e4       	vsubps ymm12,ymm11,ymm12
  6c43c2:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6c43c6:	c5 9c 58 c4          	vaddps ymm0,ymm12,ymm4
  6c43ca:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6c43ce:	c4 c1 0c 5c dd       	vsubps ymm3,ymm14,ymm13
  6c43d3:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  6c43d7:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  6c43db:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  6c43e0:	c5 9c 5c e4          	vsubps ymm4,ymm12,ymm4
  6c43e4:	c5 ec 5c eb          	vsubps ymm5,ymm2,ymm3
  6c43e8:	c5 78 29 c2          	vmovaps xmm2,xmm8
  6c43ec:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  6c43f2:	c5 f8 28 f8          	vmovaps xmm7,xmm0
  6c43f6:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6c43fc:	c5 78 28 c6          	vmovaps xmm8,xmm6
  6c4400:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c4406:	c5 65 14 e6          	vunpcklpd ymm12,ymm3,ymm6
  6c440a:	c5 f8 28 dc          	vmovaps xmm3,xmm4
  6c440e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6c4414:	c5 fd 14 c4          	vunpcklpd ymm0,ymm0,ymm4
  6c4418:	c4 c1 6d 15 e0       	vunpckhpd ymm4,ymm2,ymm8
  6c441d:	c4 c1 6d 14 f0       	vunpcklpd ymm6,ymm2,ymm8
  6c4422:	c5 45 15 eb          	vunpckhpd ymm13,ymm7,ymm3
  6c4426:	c5 c5 14 db          	vunpcklpd ymm3,ymm7,ymm3
  6c442a:	c5 cc c6 d3 88       	vshufps ymm2,ymm6,ymm3,0x88
  6c442f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6c4434:	c5 cc c6 db dd       	vshufps ymm3,ymm6,ymm3,0xdd
  6c4439:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c443e:	c4 c1 5c c6 f5 88    	vshufps ymm6,ymm4,ymm13,0x88
  6c4444:	c5 4c c6 c6 d8       	vshufps ymm8,ymm6,ymm6,0xd8
  6c4449:	c4 c1 5c c6 e5 dd    	vshufps ymm4,ymm4,ymm13,0xdd
  6c444f:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  6c4454:	c5 9c c6 e0 88       	vshufps ymm4,ymm12,ymm0,0x88
  6c4459:	c5 dc c6 fc d8       	vshufps ymm7,ymm4,ymm4,0xd8
  6c445e:	c5 9c c6 c0 dd       	vshufps ymm0,ymm12,ymm0,0xdd
  6c4463:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  6c4468:	c5 78 29 d0          	vmovaps xmm0,xmm10
  6c446c:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  6c4472:	c4 41 78 28 e3       	vmovaps xmm12,xmm11
  6c4477:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  6c447d:	c4 41 78 28 e9       	vmovaps xmm13,xmm9
  6c4482:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6c4488:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  6c448d:	c5 78 28 d5          	vmovaps xmm10,xmm5
  6c4491:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6c4497:	c5 25 14 dd          	vunpcklpd ymm11,ymm11,ymm5
  6c449b:	c4 41 7d 15 f5       	vunpckhpd ymm14,ymm0,ymm13
  6c44a0:	c4 c1 7d 14 c5       	vunpcklpd ymm0,ymm0,ymm13
  6c44a5:	c4 41 1d 15 ea       	vunpckhpd ymm13,ymm12,ymm10
  6c44aa:	c4 41 1d 14 d2       	vunpcklpd ymm10,ymm12,ymm10
  6c44af:	c4 c1 7c c6 ea 88    	vshufps ymm5,ymm0,ymm10,0x88
  6c44b5:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c44ba:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  6c44c0:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  6c44c5:	c4 c1 0c c6 c5 88    	vshufps ymm0,ymm14,ymm13,0x88
  6c44cb:	c5 7c c6 e0 d8       	vshufps ymm12,ymm0,ymm0,0xd8
  6c44d0:	c4 c1 0c c6 c5 dd    	vshufps ymm0,ymm14,ymm13,0xdd
  6c44d6:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  6c44db:	c4 c1 34 c6 c3 88    	vshufps ymm0,ymm9,ymm11,0x88
  6c44e1:	c5 7c c6 f8 d8       	vshufps ymm15,ymm0,ymm0,0xd8
  6c44e6:	c4 c1 34 c6 c3 dd    	vshufps ymm0,ymm9,ymm11,0xdd
  6c44ec:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  6c44f1:	c5 fc 10 81 80 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0x80]
  6c44f8:	00 
  6c44f9:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  6c4500:	00 
  6c4501:	c5 3c 59 c8          	vmulps ymm9,ymm8,ymm0
  6c4505:	c4 62 1d bc c9       	vfnmadd231ps ymm9,ymm12,ymm1
  6c450a:	c5 1c 59 f0          	vmulps ymm14,ymm12,ymm0
  6c450e:	c5 fc 10 81 00 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x100]
  6c4515:	00 
  6c4516:	c4 62 3d b8 f1       	vfmadd231ps ymm14,ymm8,ymm1
  6c451b:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6c4522:	00 
  6c4523:	c5 7c 59 e7          	vmulps ymm12,ymm0,ymm7
  6c4527:	c4 62 05 bc e1       	vfnmadd231ps ymm12,ymm15,ymm1
  6c452c:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  6c4530:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6c4537:	00 
  6c4538:	c4 62 45 b8 f9       	vfmadd231ps ymm15,ymm7,ymm1
  6c453d:	c5 fc 10 89 e0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xe0]
  6c4544:	00 
  6c4545:	c5 fc 59 fe          	vmulps ymm7,ymm0,ymm6
  6c4549:	c4 e2 15 bc f9       	vfnmadd231ps ymm7,ymm13,ymm1
  6c454e:	c5 14 59 c0          	vmulps ymm8,ymm13,ymm0
  6c4552:	c5 fc 10 81 40 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x140]
  6c4559:	00 
  6c455a:	c4 62 4d b8 c1       	vfmadd231ps ymm8,ymm6,ymm1
  6c455f:	c5 fc 10 89 60 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x160]
  6c4566:	00 
  6c4567:	c5 7c 59 ec          	vmulps ymm13,ymm0,ymm4
  6c456b:	c4 62 25 bc e9       	vfnmadd231ps ymm13,ymm11,ymm1
  6c4570:	c5 a4 59 c0          	vmulps ymm0,ymm11,ymm0
  6c4574:	c5 fc 10 71 40       	vmovups ymm6,YMMWORD PTR [rcx+0x40]
  6c4579:	c4 e2 5d b8 c1       	vfmadd231ps ymm0,ymm4,ymm1
  6c457e:	c5 fc 10 49 60       	vmovups ymm1,YMMWORD PTR [rcx+0x60]
  6c4583:	c5 4c 59 db          	vmulps ymm11,ymm6,ymm3
  6c4587:	c4 62 2d bc d9       	vfnmadd231ps ymm11,ymm10,ymm1
  6c458c:	c5 ac 59 e6          	vmulps ymm4,ymm10,ymm6
  6c4590:	c4 41 34 58 d4       	vaddps ymm10,ymm9,ymm12
  6c4595:	c4 e2 65 b8 e1       	vfmadd231ps ymm4,ymm3,ymm1
  6c459a:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  6c459e:	c5 fc 11 4c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm1
  6c45a4:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  6c45a9:	c4 e2 7d 18 35 ae 0e 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9b0eae]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c45b0:	9b ff 
  6c45b2:	c4 62 4d ac d2       	vfnmadd213ps ymm10,ymm6,ymm2
  6c45b7:	c4 c1 0c 58 d7       	vaddps ymm2,ymm14,ymm15
  6c45bc:	c4 41 0c 5c ff       	vsubps ymm15,ymm14,ymm15
  6c45c1:	c5 c4 58 d9          	vaddps ymm3,ymm7,ymm1
  6c45c5:	c5 fc 11 5c 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm3
  6c45cb:	c4 e2 4d bc f9       	vfnmadd231ps ymm7,ymm6,ymm1
  6c45d0:	c5 fc 58 cc          	vaddps ymm1,ymm0,ymm4
  6c45d4:	c5 fc 5c c4          	vsubps ymm0,ymm0,ymm4
  6c45d8:	c5 6c 58 f5          	vaddps ymm14,ymm2,ymm5
  6c45dc:	c4 e2 4d ac d5       	vfnmadd213ps ymm2,ymm6,ymm5
  6c45e1:	c5 bc 58 e1          	vaddps ymm4,ymm8,ymm1
  6c45e5:	c4 e2 7d 18 1d e6 0c 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9b0ce6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c45ec:	9b ff 
  6c45ee:	c5 04 59 fb          	vmulps ymm15,ymm15,ymm3
  6c45f2:	c4 41 34 5c e4       	vsubps ymm12,ymm9,ymm12
  6c45f7:	c4 c1 2c 58 ef       	vaddps ymm5,ymm10,ymm15
  6c45fc:	c5 fc 59 c3          	vmulps ymm0,ymm0,ymm3
  6c4600:	c4 62 4d bc c1       	vfnmadd231ps ymm8,ymm6,ymm1
  6c4605:	c5 44 58 c8          	vaddps ymm9,ymm7,ymm0
  6c4609:	c5 9c 59 cb          	vmulps ymm1,ymm12,ymm3
  6c460d:	c4 41 14 5c e3       	vsubps ymm12,ymm13,ymm11
  6c4612:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  6c4616:	c5 1c 59 e3          	vmulps ymm12,ymm12,ymm3
  6c461a:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  6c461f:	c4 41 3c 5c ec       	vsubps ymm13,ymm8,ymm12
  6c4624:	c5 c4 5c f8          	vsubps ymm7,ymm7,ymm0
  6c4628:	c5 f4 58 c2          	vaddps ymm0,ymm1,ymm2
  6c462c:	c4 41 3c 58 c4       	vaddps ymm8,ymm8,ymm12
  6c4631:	c5 fc 10 5c 24 d8    	vmovups ymm3,YMMWORD PTR [rsp-0x28]
  6c4637:	c5 fc 10 74 24 b8    	vmovups ymm6,YMMWORD PTR [rsp-0x48]
  6c463d:	c5 e0 58 ce          	vaddps xmm1,xmm3,xmm6
  6c4641:	c5 88 58 d4          	vaddps xmm2,xmm14,xmm4
  6c4645:	c5 68 14 e1          	vunpcklps xmm12,xmm2,xmm1
  6c4649:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6c464d:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  6c4653:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  6c4658:	c4 c1 50 5c c9       	vsubps xmm1,xmm5,xmm9
  6c465d:	c4 c1 20 5c d5       	vsubps xmm2,xmm11,xmm13
  6c4662:	c5 68 14 e1          	vunpcklps xmm12,xmm2,xmm1
  6c4666:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6c466a:	c5 f8 11 4c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm1
  6c4670:	c5 78 11 64 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm12
  6c4676:	c5 a8 58 cf          	vaddps xmm1,xmm10,xmm7
  6c467a:	c5 b8 58 d0          	vaddps xmm2,xmm8,xmm0
  6c467e:	c5 68 14 e1          	vunpcklps xmm12,xmm2,xmm1
  6c4682:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6c4686:	c5 f8 11 4c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm1
  6c468c:	c5 78 11 64 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm12
  6c4692:	c5 e0 5c ce          	vsubps xmm1,xmm3,xmm6
  6c4696:	c5 88 5c d4          	vsubps xmm2,xmm14,xmm4
  6c469a:	c5 e8 14 d9          	vunpcklps xmm3,xmm2,xmm1
  6c469e:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6c46a2:	c5 f8 11 4c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm1
  6c46a8:	c5 f8 11 5c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm3
  6c46ae:	c5 b0 58 cd          	vaddps xmm1,xmm9,xmm5
  6c46b2:	c4 c1 20 58 d5       	vaddps xmm2,xmm11,xmm13
  6c46b7:	c5 e8 14 d9          	vunpcklps xmm3,xmm2,xmm1
  6c46bb:	c5 e8 15 c9          	vunpckhps xmm1,xmm2,xmm1
  6c46bf:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6c46c6:	00 00 
  6c46c8:	c5 f8 11 9c 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  6c46cf:	00 00 
  6c46d1:	c5 a8 5c cf          	vsubps xmm1,xmm10,xmm7
  6c46d5:	c4 c1 78 5c c0       	vsubps xmm0,xmm0,xmm8
  6c46da:	c5 f8 14 d1          	vunpcklps xmm2,xmm0,xmm1
  6c46de:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6c46e2:	c5 f8 11 84 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm0
  6c46e9:	00 00 
  6c46eb:	c5 f8 11 94 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm2
  6c46f2:	00 00 
  6c46f4:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6c46fb:	48 39 d0             	cmp    rax,rdx
  6c46fe:	0f 85 0c fc ff ff    	jne    6c4310 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6c4704:	c5 f8 77             	vzeroupper
  6c4707:	c3                   	ret
