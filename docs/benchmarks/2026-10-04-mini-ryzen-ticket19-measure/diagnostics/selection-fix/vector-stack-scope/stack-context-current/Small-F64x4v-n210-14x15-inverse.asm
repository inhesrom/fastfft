
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000bb9300 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  bb9300:	55                   	push   rbp
  bb9301:	48 89 e5             	mov    rbp,rsp
  bb9304:	41 56                	push   r14
  bb9306:	53                   	push   rbx
  bb9307:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  bb930b:	48 81 ec c0 0f 00 00 	sub    rsp,0xfc0
  bb9312:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  bb9319:	00 
  bb931a:	48 81 ec 80 0b 00 00 	sub    rsp,0xb80
  bb9321:	48 8d 84 24 c0 04 00 	lea    rax,[rsp+0x4c0]
  bb9328:	00 
  bb9329:	48 8d 8c 24 c0 02 00 	lea    rcx,[rsp+0x2c0]
  bb9330:	00 
  bb9331:	c6 84 24 c0 0a 00 00 	mov    BYTE PTR [rsp+0xac0],0x0
  bb9338:	00 
  bb9339:	4c 8d 84 24 c0 0a 00 	lea    r8,[rsp+0xac0]
  bb9340:	00 
  bb9341:	4c 89 84 24 00 0b 00 	mov    QWORD PTR [rsp+0xb00],r8
  bb9348:	00 
  bb9349:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  bb9350:	00 
  bb9351:	4c 8d 84 24 60 0e 00 	lea    r8,[rsp+0xe60]
  bb9358:	00 
  bb9359:	48 81 c7 50 0c 00 00 	add    rdi,0xc50
  bb9360:	45 31 c9             	xor    r9d,r9d
  bb9363:	eb 24                	jmp    bb9389 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x89>
  bb9365:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  bb936c:	00 00 00 00 
  bb9370:	49 83 c1 04          	add    r9,0x4
  bb9374:	49 81 c0 80 03 00 00 	add    r8,0x380
  bb937b:	48 83 c7 40          	add    rdi,0x40
  bb937f:	49 83 f9 10          	cmp    r9,0x10
  bb9383:	0f 84 24 0e 00 00    	je     bba1ad <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xead>
  bb9389:	49 83 f9 0c          	cmp    r9,0xc
  bb938d:	0f 83 2d 02 00 00    	jae    bb95c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2c0>
  bb9393:	c5 fd 10 87 b0 f3 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bb939a:	ff 
  bb939b:	c5 fd 10 8f d0 f3 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xc30]
  bb93a2:	ff 
  bb93a3:	c5 fd 10 97 a0 f4 ff 	vmovupd ymm2,YMMWORD PTR [rdi-0xb60]
  bb93aa:	ff 
  bb93ab:	c5 fd 10 9f c0 f4 ff 	vmovupd ymm3,YMMWORD PTR [rdi-0xb40]
  bb93b2:	ff 
  bb93b3:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  bb93b9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb93bf:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  bb93c3:	c5 fd 29 4c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bb93c9:	c5 7d 15 dc          	vunpckhpd ymm11,ymm0,ymm4
  bb93cd:	c4 e3 6d 06 c3 31    	vperm2f128 ymm0,ymm2,ymm3,0x31
  bb93d3:	c4 e3 6d 06 cb 20    	vperm2f128 ymm1,ymm2,ymm3,0x20
  bb93d9:	62 61 f5 28 14 d0    	vunpcklpd ymm26,ymm1,ymm0
  bb93df:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  bb93e3:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bb93ea:	00 00 
  bb93ec:	c5 fd 10 87 90 f5 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bb93f3:	ff 
  bb93f4:	c5 fd 10 8f b0 f5 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xa50]
  bb93fb:	ff 
  bb93fc:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb9402:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9408:	c5 7d 14 d2          	vunpcklpd ymm10,ymm0,ymm2
  bb940c:	62 e1 fd 28 15 c2    	vunpckhpd ymm16,ymm0,ymm2
  bb9412:	c5 fd 10 87 80 f6 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bb9419:	ff 
  bb941a:	c5 fd 10 8f a0 f6 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x960]
  bb9421:	ff 
  bb9422:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb9428:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb942e:	62 61 fd 28 14 f2    	vunpcklpd ymm30,ymm0,ymm2
  bb9434:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bb9438:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb943f:	00 00 
  bb9441:	c5 fd 10 87 70 f7 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bb9448:	ff 
  bb9449:	c5 fd 10 8f 90 f7 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x870]
  bb9450:	ff 
  bb9451:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb9457:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb945d:	c5 fd 14 ea          	vunpcklpd ymm5,ymm0,ymm2
  bb9461:	62 e1 fd 28 15 ea    	vunpckhpd ymm21,ymm0,ymm2
  bb9467:	c5 fd 10 87 60 f8 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bb946e:	ff 
  bb946f:	c5 fd 10 8f 80 f8 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x780]
  bb9476:	ff 
  bb9477:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb947d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9483:	62 e1 fd 28 14 e2    	vunpcklpd ymm20,ymm0,ymm2
  bb9489:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bb948d:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb9493:	c5 fd 10 87 50 f9 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bb949a:	ff 
  bb949b:	c5 fd 10 8f 70 f9 ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x690]
  bb94a2:	ff 
  bb94a3:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb94a9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb94af:	62 e1 fd 28 14 da    	vunpcklpd ymm19,ymm0,ymm2
  bb94b5:	62 61 fd 28 15 c2    	vunpckhpd ymm24,ymm0,ymm2
  bb94bb:	c5 fd 10 87 40 fa ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bb94c2:	ff 
  bb94c3:	c5 fd 10 8f 60 fa ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x5a0]
  bb94ca:	ff 
  bb94cb:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb94d1:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb94d7:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bb94db:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bb94e0:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  bb94e4:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bb94ea:	c5 fd 10 87 30 fb ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bb94f1:	ff 
  bb94f2:	c5 fd 10 8f 50 fb ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x4b0]
  bb94f9:	ff 
  bb94fa:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb9500:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9506:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  bb950a:	c5 7d 15 f2          	vunpckhpd ymm14,ymm0,ymm2
  bb950e:	c5 fd 10 87 20 fc ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bb9515:	ff 
  bb9516:	c5 fd 10 8f 40 fc ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x3c0]
  bb951d:	ff 
  bb951e:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb9524:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb952a:	c5 7d 14 ca          	vunpcklpd ymm9,ymm0,ymm2
  bb952e:	62 e1 fd 28 15 fa    	vunpckhpd ymm23,ymm0,ymm2
  bb9534:	c5 fd 10 87 10 fd ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bb953b:	ff 
  bb953c:	c5 fd 10 8f 30 fd ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x2d0]
  bb9543:	ff 
  bb9544:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb954a:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9550:	c5 fd 14 fa          	vunpcklpd ymm7,ymm0,ymm2
  bb9554:	c5 7d 15 ea          	vunpckhpd ymm13,ymm0,ymm2
  bb9558:	c5 fd 10 87 00 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bb955f:	ff 
  bb9560:	c5 fd 10 8f 20 fe ff 	vmovupd ymm1,YMMWORD PTR [rdi-0x1e0]
  bb9567:	ff 
  bb9568:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb956e:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9574:	c5 fd 14 f2          	vunpcklpd ymm6,ymm0,ymm2
  bb9578:	62 e1 fd 28 15 ca    	vunpckhpd ymm17,ymm0,ymm2
  bb957e:	c5 fd 10 87 f0 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bb9585:	ff 
  bb9586:	c5 fd 10 8f 10 ff ff 	vmovupd ymm1,YMMWORD PTR [rdi-0xf0]
  bb958d:	ff 
  bb958e:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  bb9594:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb959a:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bb959e:	c5 7d 15 fa          	vunpckhpd ymm15,ymm0,ymm2
  bb95a2:	c5 fd 10 47 e0       	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bb95a7:	c5 fd 10 17          	vmovupd ymm2,YMMWORD PTR [rdi]
  bb95ab:	c4 e3 7d 06 da 31    	vperm2f128 ymm3,ymm0,ymm2,0x31
  bb95b1:	c4 e3 7d 06 d2 20    	vperm2f128 ymm2,ymm0,ymm2,0x20
  bb95b7:	e9 41 02 00 00       	jmp    bb97fd <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x4fd>
  bb95bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  bb95c0:	c5 fd 10 87 b0 f3 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xc50]
  bb95c7:	ff 
  bb95c8:	c5 f9 10 8f d0 f3 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xc30]
  bb95cf:	ff 
  bb95d0:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb95d6:	c5 f9 10 8f c0 f3 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xc40]
  bb95dd:	ff 
  bb95de:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  bb95e2:	c5 fd 29 54 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  bb95e8:	c5 7d 15 d9          	vunpckhpd ymm11,ymm0,ymm1
  bb95ec:	c5 fd 10 87 a0 f4 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xb60]
  bb95f3:	ff 
  bb95f4:	c5 f9 10 8f c0 f4 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xb40]
  bb95fb:	ff 
  bb95fc:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9602:	c5 f9 10 8f b0 f4 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xb50]
  bb9609:	ff 
  bb960a:	62 61 fd 28 14 d1    	vunpcklpd ymm26,ymm0,ymm1
  bb9610:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb9614:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  bb961b:	00 00 
  bb961d:	c5 fd 10 87 90 f5 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0xa70]
  bb9624:	ff 
  bb9625:	c5 f9 10 8f b0 f5 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xa50]
  bb962c:	ff 
  bb962d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9633:	c5 f9 10 8f a0 f5 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xa60]
  bb963a:	ff 
  bb963b:	c5 7d 14 d1          	vunpcklpd ymm10,ymm0,ymm1
  bb963f:	62 e1 fd 28 15 c1    	vunpckhpd ymm16,ymm0,ymm1
  bb9645:	c5 fd 10 87 80 f6 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x980]
  bb964c:	ff 
  bb964d:	c5 f9 10 8f a0 f6 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x960]
  bb9654:	ff 
  bb9655:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb965b:	c5 f9 10 8f 90 f6 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x970]
  bb9662:	ff 
  bb9663:	62 61 fd 28 14 f1    	vunpcklpd ymm30,ymm0,ymm1
  bb9669:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb966d:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bb9674:	00 00 
  bb9676:	c5 fd 10 87 70 f7 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x890]
  bb967d:	ff 
  bb967e:	c5 f9 10 8f 90 f7 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x870]
  bb9685:	ff 
  bb9686:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb968c:	c5 f9 10 8f 80 f7 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x880]
  bb9693:	ff 
  bb9694:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  bb9698:	62 e1 fd 28 15 e9    	vunpckhpd ymm21,ymm0,ymm1
  bb969e:	c5 fd 10 87 60 f8 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x7a0]
  bb96a5:	ff 
  bb96a6:	c5 f9 10 8f 80 f8 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x780]
  bb96ad:	ff 
  bb96ae:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb96b4:	c5 f9 10 8f 70 f8 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x790]
  bb96bb:	ff 
  bb96bc:	62 e1 fd 28 14 e1    	vunpcklpd ymm20,ymm0,ymm1
  bb96c2:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb96c6:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bb96cc:	c5 fd 10 87 50 f9 ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x6b0]
  bb96d3:	ff 
  bb96d4:	c5 f9 10 8f 70 f9 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x690]
  bb96db:	ff 
  bb96dc:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb96e2:	c5 f9 10 8f 60 f9 ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x6a0]
  bb96e9:	ff 
  bb96ea:	62 e1 fd 28 14 d9    	vunpcklpd ymm19,ymm0,ymm1
  bb96f0:	62 61 fd 28 15 c1    	vunpckhpd ymm24,ymm0,ymm1
  bb96f6:	c5 fd 10 87 40 fa ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x5c0]
  bb96fd:	ff 
  bb96fe:	c5 f9 10 8f 60 fa ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x5a0]
  bb9705:	ff 
  bb9706:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb970c:	c5 f9 10 8f 50 fa ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x5b0]
  bb9713:	ff 
  bb9714:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  bb9718:	c5 fd 29 14 24       	vmovapd YMMWORD PTR [rsp],ymm2
  bb971d:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bb9721:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  bb9727:	c5 fd 10 87 30 fb ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x4d0]
  bb972e:	ff 
  bb972f:	c5 f9 10 8f 50 fb ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x4b0]
  bb9736:	ff 
  bb9737:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb973d:	c5 f9 10 8f 40 fb ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x4c0]
  bb9744:	ff 
  bb9745:	c5 7d 14 c1          	vunpcklpd ymm8,ymm0,ymm1
  bb9749:	c5 7d 15 f1          	vunpckhpd ymm14,ymm0,ymm1
  bb974d:	c5 fd 10 87 20 fc ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x3e0]
  bb9754:	ff 
  bb9755:	c5 f9 10 8f 40 fc ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x3c0]
  bb975c:	ff 
  bb975d:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb9763:	c5 f9 10 8f 30 fc ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x3d0]
  bb976a:	ff 
  bb976b:	c5 7d 14 c9          	vunpcklpd ymm9,ymm0,ymm1
  bb976f:	62 e1 fd 28 15 f9    	vunpckhpd ymm23,ymm0,ymm1
  bb9775:	c5 fd 10 87 10 fd ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x2f0]
  bb977c:	ff 
  bb977d:	c5 f9 10 8f 30 fd ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x2d0]
  bb9784:	ff 
  bb9785:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb978b:	c5 f9 10 8f 20 fd ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x2e0]
  bb9792:	ff 
  bb9793:	c5 fd 14 f9          	vunpcklpd ymm7,ymm0,ymm1
  bb9797:	c5 7d 15 e9          	vunpckhpd ymm13,ymm0,ymm1
  bb979b:	c5 fd 10 87 00 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x200]
  bb97a2:	ff 
  bb97a3:	c5 f9 10 8f 20 fe ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x1e0]
  bb97aa:	ff 
  bb97ab:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb97b1:	c5 f9 10 8f 10 fe ff 	vmovupd xmm1,XMMWORD PTR [rdi-0x1f0]
  bb97b8:	ff 
  bb97b9:	c5 fd 14 f1          	vunpcklpd ymm6,ymm0,ymm1
  bb97bd:	62 e1 fd 28 15 c9    	vunpckhpd ymm17,ymm0,ymm1
  bb97c3:	c5 fd 10 87 f0 fe ff 	vmovupd ymm0,YMMWORD PTR [rdi-0x110]
  bb97ca:	ff 
  bb97cb:	c5 f9 10 8f 10 ff ff 	vmovupd xmm1,XMMWORD PTR [rdi-0xf0]
  bb97d2:	ff 
  bb97d3:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  bb97d9:	c5 f9 10 97 00 ff ff 	vmovupd xmm2,XMMWORD PTR [rdi-0x100]
  bb97e0:	ff 
  bb97e1:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  bb97e5:	c5 7d 15 fa          	vunpckhpd ymm15,ymm0,ymm2
  bb97e9:	c5 fd 10 47 e0       	vmovupd ymm0,YMMWORD PTR [rdi-0x20]
  bb97ee:	c5 f9 10 17          	vmovupd xmm2,XMMWORD PTR [rdi]
  bb97f2:	c4 e3 7d 06 d2 20    	vperm2f128 ymm2,ymm0,ymm2,0x20
  bb97f8:	c5 f9 10 5f f0       	vmovupd xmm3,XMMWORD PTR [rdi-0x10]
  bb97fd:	c5 ed 14 c3          	vunpcklpd ymm0,ymm2,ymm3
  bb9801:	c5 ed 15 e3          	vunpckhpd ymm4,ymm2,ymm3
  bb9805:	62 41 fd 20 58 ff    	vaddpd ymm31,ymm16,ymm15
  bb980b:	62 91 a5 28 58 df    	vaddpd ymm3,ymm11,ymm31
  bb9811:	62 d1 d5 20 58 d5    	vaddpd ymm2,ymm21,ymm13
  bb9817:	62 61 e5 28 58 da    	vaddpd ymm27,ymm3,ymm2
  bb981d:	62 d1 e5 20 58 d8    	vaddpd ymm3,ymm19,ymm8
  bb9823:	c5 fd 29 9c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm3
  bb982a:	00 00 
  bb982c:	62 c1 e5 20 5c d0    	vsubpd ymm18,ymm19,ymm8
  bb9832:	c5 2d 58 e1          	vaddpd ymm12,ymm10,ymm1
  bb9836:	62 61 ad 28 5c e9    	vsubpd ymm29,ymm10,ymm1
  bb983c:	62 61 d5 28 58 cf    	vaddpd ymm25,ymm5,ymm7
  bb9842:	c5 55 5c d7          	vsubpd ymm10,ymm5,ymm7
  bb9846:	62 91 fd 28 58 da    	vaddpd ymm3,ymm0,ymm26
  bb984c:	c5 fd 29 9c 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm3
  bb9853:	00 00 
  bb9855:	62 01 fd 28 5c e2    	vsubpd ymm28,ymm0,ymm26
  bb985b:	62 b1 b5 28 58 ec    	vaddpd ymm5,ymm9,ymm20
  bb9861:	62 b1 b5 28 5c dc    	vsubpd ymm3,ymm9,ymm20
  bb9867:	62 91 cd 28 58 c6    	vaddpd ymm0,ymm6,ymm30
  bb986d:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bb9874:	00 00 
  bb9876:	62 01 cd 28 5c d6    	vsubpd ymm26,ymm6,ymm30
  bb987c:	62 d1 bd 20 58 f6    	vaddpd ymm6,ymm24,ymm14
  bb9882:	62 e1 a5 20 58 de    	vaddpd ymm19,ymm27,ymm6
  bb9888:	62 d1 bd 20 5c c6    	vsubpd ymm0,ymm24,ymm14
  bb988e:	c5 fd 29 84 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bb9895:	00 00 
  bb9897:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x40]
  bb989e:	02 
  bb989f:	62 91 c5 20 58 c8    	vaddpd ymm1,ymm23,ymm24
  bb98a5:	62 d1 fd 20 5c c7    	vsubpd ymm0,ymm16,ymm15
  bb98ab:	c5 fd 29 84 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bb98b2:	00 00 
  bb98b4:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  bb98ba:	c5 7d 58 c1          	vaddpd ymm8,ymm0,ymm1
  bb98be:	62 d1 d5 20 5c fd    	vsubpd ymm7,ymm21,ymm13
  bb98c4:	c5 fd 29 bc 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm7
  bb98cb:	00 00 
  bb98cd:	c5 7d 28 bc 24 20 01 	vmovapd ymm15,YMMWORD PTR [rsp+0x120]
  bb98d4:	00 00 
  bb98d6:	c5 05 58 f4          	vaddpd ymm14,ymm15,ymm4
  bb98da:	c4 c1 5d 5c e7       	vsubpd ymm4,ymm4,ymm15
  bb98df:	c5 fd 29 a4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bb98e6:	00 00 
  bb98e8:	c5 7d 28 bc 24 00 01 	vmovapd ymm15,YMMWORD PTR [rsp+0x100]
  bb98ef:	00 00 
  bb98f1:	62 51 f5 20 58 ef    	vaddpd ymm13,ymm17,ymm15
  bb98f7:	c4 c1 3d 58 e5       	vaddpd ymm4,ymm8,ymm13
  bb98fc:	c5 8d 58 e4          	vaddpd ymm4,ymm14,ymm4
  bb9900:	62 91 c5 20 5c f8    	vsubpd ymm7,ymm23,ymm24
  bb9906:	c5 fd 29 7c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  bb990c:	c4 62 7d 19 05 8b b8 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4bb88b]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  bb9913:	4b ff 
  bb9915:	62 41 fd 28 28 c0    	vmovapd ymm24,ymm8
  bb991b:	62 42 85 20 a8 c3    	vfmadd213pd ymm24,ymm31,ymm11
  bb9921:	62 d1 f5 20 5c ff    	vsubpd ymm7,ymm17,ymm15
  bb9927:	c5 fd 29 bc 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm7
  bb992e:	00 00 
  bb9930:	62 62 fd 28 19 35 3e 	vbroadcastsd ymm30,QWORD PTR [rip+0xffffffffff4bb53e]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bb9937:	b5 4b ff 
  bb993a:	62 11 fd 28 28 fe    	vmovapd ymm15,ymm30
  bb9940:	62 52 85 20 ac fb    	vfnmadd213pd ymm15,ymm31,ymm11
  bb9946:	62 e2 fd 28 19 0d 90 	vbroadcastsd ymm17,QWORD PTR [rip+0xffffffffff4bb490]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  bb994d:	b4 4b ff 
  bb9950:	62 42 f5 20 ac fb    	vfnmadd213pd ymm31,ymm17,ymm11
  bb9956:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x120],ymm19
  bb995d:	09 
  bb995e:	c5 fd 29 a4 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm4
  bb9965:	00 00 
  bb9967:	62 f1 e5 20 58 e4    	vaddpd ymm4,ymm19,ymm4
  bb996d:	c5 fd 29 a4 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm4
  bb9974:	00 00 
  bb9976:	62 02 ed 28 bc c6    	vfnmadd231pd ymm24,ymm2,ymm30
  bb997c:	62 22 cd 28 bc c1    	vfnmadd231pd ymm24,ymm6,ymm17
  bb9982:	62 32 ed 28 bc f9    	vfnmadd231pd ymm15,ymm2,ymm17
  bb9988:	62 62 bd 28 b8 fa    	vfmadd231pd ymm31,ymm8,ymm2
  bb998e:	62 e2 fd 28 19 05 40 	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4bb240]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  bb9995:	b2 4b ff 
  bb9998:	62 a1 ad 28 59 e0    	vmulpd ymm20,ymm10,ymm16
  bb999e:	c4 62 7d 19 1d 29 b5 	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4bb529]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  bb99a5:	4b ff 
  bb99a7:	62 c2 95 20 b8 e3    	vfmadd231pd ymm20,ymm29,ymm11
  bb99ad:	62 e2 fd 28 19 1d 91 	vbroadcastsd ymm19,QWORD PTR [rip+0xffffffffff4bad91]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  bb99b4:	ad 4b ff 
  bb99b7:	62 a2 ed 20 b8 e3    	vfmadd231pd ymm20,ymm18,ymm19
  bb99bd:	c4 42 cd b8 f8       	vfmadd231pd ymm15,ymm6,ymm8
  bb99c2:	62 62 8d 20 bc fe    	vfnmadd231pd ymm31,ymm30,ymm6
  bb99c8:	62 a1 95 20 59 f8    	vmulpd ymm23,ymm29,ymm16
  bb99ce:	62 a2 ad 28 bc fb    	vfnmadd231pd ymm23,ymm10,ymm19
  bb99d4:	62 b1 95 20 59 e3    	vmulpd ymm4,ymm29,ymm19
  bb99da:	c4 c2 a5 bc e2       	vfnmadd231pd ymm4,ymm11,ymm10
  bb99df:	c4 41 7d 28 c8       	vmovapd ymm9,ymm8
  bb99e4:	c4 62 f5 a8 c8       	vfmadd213pd ymm9,ymm1,ymm0
  bb99e9:	62 c2 ed 20 bc fb    	vfnmadd231pd ymm23,ymm18,ymm11
  bb99ef:	62 b2 fd 20 b8 e2    	vfmadd231pd ymm4,ymm16,ymm18
  bb99f5:	62 91 fd 28 28 fe    	vmovapd ymm7,ymm30
  bb99fb:	c4 e2 f5 ac f8       	vfnmadd213pd ymm7,ymm1,ymm0
  bb9a00:	62 f2 f5 20 ac c8    	vfnmadd213pd ymm1,ymm17,ymm0
  bb9a06:	c5 fd 28 74 24 60    	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bb9a0c:	c5 9d 58 d6          	vaddpd ymm2,ymm12,ymm6
  bb9a10:	62 91 ed 28 58 d1    	vaddpd ymm2,ymm2,ymm25
  bb9a16:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0xe0]
  bb9a1d:	07 
  bb9a1e:	62 b1 ed 28 58 c6    	vaddpd ymm0,ymm2,ymm22
  bb9a24:	c5 fd 29 84 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm0
  bb9a2b:	00 00 
  bb9a2d:	62 12 95 28 bc ce    	vfnmadd231pd ymm9,ymm13,ymm30
  bb9a33:	62 32 8d 28 bc c9    	vfnmadd231pd ymm9,ymm14,ymm17
  bb9a39:	62 b2 95 28 bc f9    	vfnmadd231pd ymm7,ymm13,ymm17
  bb9a3f:	c4 c2 bd b8 cd       	vfmadd231pd ymm1,ymm8,ymm13
  bb9a44:	62 21 ad 20 59 d8    	vmulpd ymm27,ymm26,ymm16
  bb9a4a:	62 42 e5 28 b8 db    	vfmadd231pd ymm27,ymm3,ymm11
  bb9a50:	62 22 9d 20 b8 db    	vfmadd231pd ymm27,ymm28,ymm19
  bb9a56:	c4 c2 8d b8 f8       	vfmadd231pd ymm7,ymm14,ymm8
  bb9a5b:	62 d2 8d 20 bc ce    	vfnmadd231pd ymm1,ymm30,ymm14
  bb9a61:	62 21 e5 28 59 e8    	vmulpd ymm29,ymm3,ymm16
  bb9a67:	62 22 ad 20 bc eb    	vfnmadd231pd ymm29,ymm26,ymm19
  bb9a6d:	62 a1 e5 28 59 eb    	vmulpd ymm21,ymm3,ymm19
  bb9a73:	62 82 a5 28 bc ea    	vfnmadd231pd ymm21,ymm11,ymm26
  bb9a79:	c4 41 7d 28 e8       	vmovapd ymm13,ymm8
  bb9a7e:	c4 62 9d a8 ee       	vfmadd213pd ymm13,ymm12,ymm6
  bb9a83:	62 42 9d 20 bc eb    	vfnmadd231pd ymm29,ymm28,ymm11
  bb9a89:	62 82 fd 20 b8 ec    	vfmadd231pd ymm21,ymm16,ymm28
  bb9a8f:	62 81 fd 28 28 d6    	vmovapd ymm18,ymm30
  bb9a95:	62 e2 9d 28 ac d6    	vfnmadd213pd ymm18,ymm12,ymm6
  bb9a9b:	62 72 f5 20 ac e6    	vfnmadd213pd ymm12,ymm17,ymm6
  bb9aa1:	c5 fd 28 1c 24       	vmovapd ymm3,YMMWORD PTR [rsp]
  bb9aa6:	c5 e5 58 c5          	vaddpd ymm0,ymm3,ymm5
  bb9aaa:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  bb9ab1:	11 
  bb9ab2:	62 91 fd 28 58 c2    	vaddpd ymm0,ymm0,ymm26
  bb9ab8:	c5 7d 28 94 24 40 02 	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  bb9abf:	00 00 
  bb9ac1:	c5 ad 58 c0          	vaddpd ymm0,ymm10,ymm0
  bb9ac5:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  bb9acb:	62 12 b5 20 bc ee    	vfnmadd231pd ymm13,ymm25,ymm30
  bb9ad1:	62 b1 fd 28 28 d6    	vmovapd ymm2,ymm22
  bb9ad7:	62 32 cd 20 bc e9    	vfnmadd231pd ymm13,ymm22,ymm17
  bb9add:	62 a2 b5 20 bc d1    	vfnmadd231pd ymm18,ymm25,ymm17
  bb9ae3:	62 12 bd 28 b8 e1    	vfmadd231pd ymm12,ymm8,ymm25
  bb9ae9:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0xa0]
  bb9af0:	05 
  bb9af1:	62 31 b5 20 59 f0    	vmulpd ymm14,ymm25,ymm16
  bb9af7:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0x1c0]
  bb9afe:	0e 
  bb9aff:	62 52 cd 20 b8 f3    	vfmadd231pd ymm14,ymm22,ymm11
  bb9b05:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bb9b0c:	00 00 
  bb9b0e:	62 32 fd 28 b8 f3    	vfmadd231pd ymm14,ymm0,ymm19
  bb9b14:	62 c2 ed 28 b8 d0    	vfmadd231pd ymm18,ymm2,ymm8
  bb9b1a:	62 72 8d 20 bc e2    	vfnmadd231pd ymm12,ymm30,ymm2
  bb9b20:	62 b1 cd 20 59 f0    	vmulpd ymm6,ymm22,ymm16
  bb9b26:	62 b2 b5 20 bc f3    	vfnmadd231pd ymm6,ymm25,ymm19
  bb9b2c:	62 b1 cd 20 59 d3    	vmulpd ymm2,ymm22,ymm19
  bb9b32:	62 92 a5 28 bc d1    	vfnmadd231pd ymm2,ymm11,ymm25
  bb9b38:	62 41 fd 28 28 e0    	vmovapd ymm28,ymm8
  bb9b3e:	62 62 d5 28 a8 e3    	vfmadd213pd ymm28,ymm5,ymm3
  bb9b44:	62 02 ad 20 bc e6    	vfnmadd231pd ymm28,ymm26,ymm30
  bb9b4a:	62 81 fd 28 28 f2    	vmovapd ymm22,ymm26
  bb9b50:	62 22 ad 28 bc e1    	vfnmadd231pd ymm28,ymm10,ymm17
  bb9b56:	c4 c2 fd bc f3       	vfnmadd231pd ymm6,ymm0,ymm11
  bb9b5b:	62 f2 fd 20 b8 d0    	vfmadd231pd ymm2,ymm16,ymm0
  bb9b61:	62 91 fd 28 28 c6    	vmovapd ymm0,ymm30
  bb9b67:	c4 e2 d5 ac c3       	vfnmadd213pd ymm0,ymm5,ymm3
  bb9b6c:	62 f2 f5 20 ac eb    	vfnmadd213pd ymm5,ymm17,ymm3
  bb9b72:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x1e0]
  bb9b79:	0f 
  bb9b7a:	62 b1 ad 20 59 d8    	vmulpd ymm3,ymm26,ymm16
  bb9b80:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x40]
  bb9b87:	02 
  bb9b88:	62 d2 b5 20 b8 db    	vfmadd231pd ymm3,ymm25,ymm11
  bb9b8e:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x200]
  bb9b95:	10 
  bb9b96:	62 b2 8d 20 b8 db    	vfmadd231pd ymm3,ymm30,ymm19
  bb9b9c:	62 b2 cd 20 bc c1    	vfnmadd231pd ymm0,ymm22,ymm17
  bb9ba2:	62 b2 bd 28 b8 ee    	vfmadd231pd ymm5,ymm8,ymm22
  bb9ba8:	62 c1 fd 28 28 c9    	vmovapd ymm17,ymm9
  bb9bae:	c5 7d 29 3c 24       	vmovapd YMMWORD PTR [rsp],ymm15
  bb9bb3:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x20],ymm23
  bb9bba:	01 
  bb9bbb:	62 31 85 28 58 ff    	vaddpd ymm15,ymm15,ymm23
  bb9bc1:	62 e1 fd 28 28 fc    	vmovapd ymm23,ymm4
  bb9bc7:	c4 c2 ad b8 c0       	vfmadd231pd ymm0,ymm10,ymm8
  bb9bcc:	62 f2 ad 38 bc 2d a2 	vfnmadd231pd ymm5,ymm10,QWORD BCST [rip+0xffffffffff4bb2a2]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  bb9bd3:	b2 4b ff 
  bb9bd6:	62 a1 b5 20 59 f0    	vmulpd ymm22,ymm25,ymm16
  bb9bdc:	62 a2 ad 20 bc f3    	vfnmadd231pd ymm22,ymm26,ymm19
  bb9be2:	62 31 b5 20 59 cb    	vmulpd ymm9,ymm25,ymm19
  bb9be8:	62 81 fd 28 28 d8    	vmovapd ymm19,ymm24
  bb9bee:	62 12 a5 28 bc ca    	vfnmadd231pd ymm9,ymm11,ymm26
  bb9bf4:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0xe0],ymm29
  bb9bfb:	07 
  bb9bfc:	c5 fd 29 bc 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm7
  bb9c03:	00 00 
  bb9c05:	62 11 c5 28 58 c5    	vaddpd ymm8,ymm7,ymm29
  bb9c0b:	62 c2 8d 20 bc f3    	vfnmadd231pd ymm22,ymm30,ymm11
  bb9c11:	62 11 fd 28 28 df    	vmovapd ymm11,ymm31
  bb9c17:	62 12 fd 20 b8 ce    	vfmadd231pd ymm9,ymm16,ymm30
  bb9c1d:	62 e1 fd 28 28 c5    	vmovapd ymm16,ymm5
  bb9c23:	c5 7d 29 e4          	vmovapd ymm4,ymm12
  bb9c27:	c5 7d 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm8
  bb9c2e:	00 00 
  bb9c30:	c5 7d 29 bc 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm15
  bb9c37:	00 00 
  bb9c39:	c4 c1 05 58 e8       	vaddpd ymm5,ymm15,ymm8
  bb9c3e:	c5 fd 28 bc 24 80 00 	vmovapd ymm7,YMMWORD PTR [rsp+0x80]
  bb9c45:	00 00 
  bb9c47:	62 63 45 28 18 cd 01 	vinsertf32x4 ymm25,ymm7,xmm5,0x1
  bb9c4e:	c4 63 45 06 fd 31    	vperm2f128 ymm15,ymm7,ymm5,0x31
  bb9c54:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x40],ymm20
  bb9c5b:	02 
  bb9c5c:	62 b1 bd 20 58 ec    	vaddpd ymm5,ymm24,ymm20
  bb9c62:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x2a0]
  bb9c69:	15 
  bb9c6a:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x80],ymm17
  bb9c71:	04 
  bb9c72:	62 11 f5 20 58 c3    	vaddpd ymm8,ymm17,ymm27
  bb9c78:	c5 fd 29 ac 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm5
  bb9c7f:	00 00 
  bb9c81:	c5 7d 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm8
  bb9c88:	00 00 
  bb9c8a:	c4 41 55 5c d0       	vsubpd ymm10,ymm5,ymm8
  bb9c8f:	62 b1 85 20 58 ef    	vaddpd ymm5,ymm31,ymm23
  bb9c95:	62 21 fd 28 28 ed    	vmovapd ymm29,ymm21
  bb9c9b:	62 31 f5 28 58 c5    	vaddpd ymm8,ymm1,ymm21
  bb9ca1:	c5 fd 29 ac 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm5
  bb9ca8:	00 00 
  bb9caa:	c5 7d 29 84 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm8
  bb9cb1:	00 00 
  bb9cb3:	c4 41 55 5c e0       	vsubpd ymm12,ymm5,ymm8
  bb9cb8:	62 43 2d 28 18 d4 01 	vinsertf32x4 ymm26,ymm10,xmm12,0x1
  bb9cbf:	62 c3 ad 28 23 ec 03 	vshuff64x2 ymm21,ymm10,ymm12,0x3
  bb9cc6:	62 71 dd 20 58 64 24 	vaddpd ymm12,ymm20,YMMWORD PTR [rsp+0x60]
  bb9ccd:	03 
  bb9cce:	62 f1 ed 20 5c ee    	vsubpd ymm5,ymm18,ymm6
  bb9cd4:	62 b1 fd 28 5c fe    	vsubpd ymm7,ymm0,ymm22
  bb9cda:	c5 fd 29 ac 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm5
  bb9ce1:	00 00 
  bb9ce3:	c5 fd 29 bc 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm7
  bb9cea:	00 00 
  bb9cec:	62 61 d5 28 58 c7    	vaddpd ymm24,ymm5,ymm7
  bb9cf2:	62 03 1d 28 18 f0 01 	vinsertf32x4 ymm30,ymm12,xmm24,0x1
  bb9cf9:	62 13 9d 28 23 e0 03 	vshuff64x2 ymm12,ymm12,ymm24,0x3
  bb9d00:	c4 c1 15 5c ee       	vsubpd ymm5,ymm13,ymm14
  bb9d05:	62 f1 9d 20 5c fb    	vsubpd ymm7,ymm28,ymm3
  bb9d0b:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bb9d12:	00 00 
  bb9d14:	c5 fd 29 bc 24 60 02 	vmovapd YMMWORD PTR [rsp+0x260],ymm7
  bb9d1b:	00 00 
  bb9d1d:	62 61 d5 28 5c c7    	vsubpd ymm24,ymm5,ymm7
  bb9d23:	c5 dd 5c ea          	vsubpd ymm5,ymm4,ymm2
  bb9d27:	62 d1 fd 20 5c f9    	vsubpd ymm7,ymm16,ymm9
  bb9d2d:	c5 fd 29 ac 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm5
  bb9d34:	00 00 
  bb9d36:	c5 fd 29 bc 24 80 02 	vmovapd YMMWORD PTR [rsp+0x280],ymm7
  bb9d3d:	00 00 
  bb9d3f:	62 61 d5 28 5c ff    	vsubpd ymm31,ymm5,ymm7
  bb9d45:	c5 7d 29 ff          	vmovapd ymm7,ymm15
  bb9d49:	62 93 3d 20 18 ef 01 	vinsertf32x4 ymm5,ymm24,xmm31,0x1
  bb9d50:	62 03 bd 20 23 c7 03 	vshuff64x2 ymm24,ymm24,ymm31,0x3
  bb9d57:	62 01 b5 20 14 fa    	vunpcklpd ymm31,ymm25,ymm26
  bb9d5d:	62 e1 8d 20 14 cd    	vunpcklpd ymm17,ymm30,ymm5
  bb9d63:	62 11 fd 28 28 c7    	vmovapd ymm8,ymm31
  bb9d69:	c5 7d 28 3d ef cd 4b 	vmovapd ymm15,YMMWORD PTR [rip+0xffffffffff4bcdef]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bb9d70:	ff 
  bb9d71:	62 32 85 28 7f c1    	vpermt2pd ymm8,ymm15,ymm17
  bb9d77:	c5 7d 28 15 c1 d8 4b 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff4bd8c1]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bb9d7e:	ff 
  bb9d7f:	62 22 ad 28 7f f9    	vpermt2pd ymm31,ymm10,ymm17
  bb9d85:	c4 41 7d 29 80 a0 fc 	vmovapd YMMWORD PTR [r8-0x360],ymm8
  bb9d8c:	ff ff 
  bb9d8e:	62 41 fd 28 29 78 e6 	vmovapd YMMWORD PTR [r8-0x340],ymm31
  bb9d95:	62 f1 8d 20 15 ed    	vunpckhpd ymm5,ymm30,ymm5
  bb9d9b:	62 11 b5 20 15 c2    	vunpckhpd ymm8,ymm25,ymm26
  bb9da1:	62 41 fd 28 28 d2    	vmovapd ymm26,ymm10
  bb9da7:	62 41 fd 28 28 cf    	vmovapd ymm25,ymm15
  bb9dad:	62 c1 fd 28 28 c8    	vmovapd ymm17,ymm8
  bb9db3:	62 e2 85 28 7f cd    	vpermt2pd ymm17,ymm15,ymm5
  bb9db9:	62 72 ad 28 7f c5    	vpermt2pd ymm8,ymm10,ymm5
  bb9dbf:	62 c1 fd 28 29 48 ec 	vmovapd YMMWORD PTR [r8-0x280],ymm17
  bb9dc6:	c4 41 7d 29 80 a0 fd 	vmovapd YMMWORD PTR [r8-0x260],ymm8
  bb9dcd:	ff ff 
  bb9dcf:	62 b1 c5 28 14 ed    	vunpcklpd ymm5,ymm7,ymm21
  bb9dd5:	62 11 9d 28 14 c0    	vunpcklpd ymm8,ymm12,ymm24
  bb9ddb:	62 e1 fd 28 28 cd    	vmovapd ymm17,ymm5
  bb9de1:	62 c2 85 28 7f c8    	vpermt2pd ymm17,ymm15,ymm8
  bb9de7:	62 d2 ad 28 7f e8    	vpermt2pd ymm5,ymm10,ymm8
  bb9ded:	62 c1 fd 28 29 48 f3 	vmovapd YMMWORD PTR [r8-0x1a0],ymm17
  bb9df4:	c4 c1 7d 29 a8 80 fe 	vmovapd YMMWORD PTR [r8-0x180],ymm5
  bb9dfb:	ff ff 
  bb9dfd:	49 83 f9 0c          	cmp    r9,0xc
  bb9e01:	74 2f                	je     bb9e32 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb32>
  bb9e03:	62 91 9d 28 15 e8    	vunpckhpd ymm5,ymm12,ymm24
  bb9e09:	62 31 c5 28 15 c5    	vunpckhpd ymm8,ymm7,ymm21
  bb9e0f:	c4 41 7d 28 d0       	vmovapd ymm10,ymm8
  bb9e14:	62 72 b5 20 7f d5    	vpermt2pd ymm10,ymm25,ymm5
  bb9e1a:	62 72 ad 20 7f c5    	vpermt2pd ymm8,ymm26,ymm5
  bb9e20:	c4 41 7d 29 90 40 ff 	vmovapd YMMWORD PTR [r8-0xc0],ymm10
  bb9e27:	ff ff 
  bb9e29:	c4 41 7d 29 80 60 ff 	vmovapd YMMWORD PTR [r8-0xa0],ymm8
  bb9e30:	ff ff 
  bb9e32:	62 21 a5 28 5c f7    	vsubpd ymm30,ymm11,ymm23
  bb9e38:	62 81 f5 28 5c fd    	vsubpd ymm23,ymm1,ymm29
  bb9e3e:	62 b1 8d 20 58 ef    	vaddpd ymm5,ymm30,ymm23
  bb9e44:	c5 ed 58 cc          	vaddpd ymm1,ymm2,ymm4
  bb9e48:	62 31 b5 28 58 c8    	vaddpd ymm9,ymm9,ymm16
  bb9e4e:	c5 35 58 d1          	vaddpd ymm10,ymm9,ymm1
  bb9e52:	c5 7d 28 04 24       	vmovapd ymm8,YMMWORD PTR [rsp]
  bb9e57:	c5 3d 5c 5c 24 20    	vsubpd ymm11,ymm8,YMMWORD PTR [rsp+0x20]
  bb9e5d:	c5 fd 28 94 24 c0 01 	vmovapd ymm2,YMMWORD PTR [rsp+0x1c0]
  bb9e64:	00 00 
  bb9e66:	c5 6d 5c bc 24 e0 00 	vsubpd ymm15,ymm2,YMMWORD PTR [rsp+0xe0]
  bb9e6d:	00 00 
  bb9e6f:	c4 41 25 5c e7       	vsubpd ymm12,ymm11,ymm15
  bb9e74:	62 a1 cd 28 58 c2    	vaddpd ymm16,ymm6,ymm18
  bb9e7a:	62 f1 cd 20 58 f0    	vaddpd ymm6,ymm22,ymm0
  bb9e80:	62 f1 fd 20 5c fe    	vsubpd ymm7,ymm16,ymm6
  bb9e86:	62 71 e5 20 5c 44 24 	vsubpd ymm8,ymm19,YMMWORD PTR [rsp+0x40]
  bb9e8d:	02 
  bb9e8e:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  bb9e95:	00 00 
  bb9e97:	62 91 fd 28 5c d3    	vsubpd ymm2,ymm0,ymm27
  bb9e9d:	c5 bd 58 c2          	vaddpd ymm0,ymm8,ymm2
  bb9ea1:	c4 c1 0d 58 e5       	vaddpd ymm4,ymm14,ymm13
  bb9ea6:	62 11 e5 28 58 ec    	vaddpd ymm13,ymm3,ymm28
  bb9eac:	c5 15 58 f4          	vaddpd ymm14,ymm13,ymm4
  bb9eb0:	c5 fd 28 9c 24 20 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bb9eb7:	00 00 
  bb9eb9:	c5 e5 5c 9c 24 00 01 	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x100]
  bb9ec0:	00 00 
  bb9ec2:	62 e1 dd 20 5c 4c 24 	vsubpd ymm17,ymm20,YMMWORD PTR [rsp+0x60]
  bb9ec9:	03 
  bb9eca:	62 e3 55 28 18 d0 01 	vinsertf32x4 ymm18,ymm5,xmm0,0x1
  bb9ed1:	c4 e3 55 06 c0 31    	vperm2f128 ymm0,ymm5,ymm0,0x31
  bb9ed7:	62 e3 1d 28 18 db 01 	vinsertf32x4 ymm19,ymm12,xmm3,0x1
  bb9ede:	c4 e3 1d 06 db 31    	vperm2f128 ymm3,ymm12,ymm3,0x31
  bb9ee4:	62 31 ed 20 14 e3    	vunpcklpd ymm12,ymm18,ymm19
  bb9eea:	62 e1 fd 28 14 eb    	vunpcklpd ymm21,ymm0,ymm3
  bb9ef0:	62 c3 2d 28 18 f6 01 	vinsertf32x4 ymm22,ymm10,xmm14,0x1
  bb9ef7:	c4 c3 2d 06 ee 31    	vperm2f128 ymm5,ymm10,ymm14,0x31
  bb9efd:	62 33 45 28 18 d1 01 	vinsertf32x4 ymm10,ymm7,xmm17,0x1
  bb9f04:	62 b3 c5 28 23 f9 03 	vshuff64x2 ymm7,ymm7,ymm17,0x3
  bb9f0b:	62 51 cd 20 14 f2    	vunpcklpd ymm14,ymm22,ymm10
  bb9f11:	62 e1 d5 28 14 cf    	vunpcklpd ymm17,ymm5,ymm7
  bb9f17:	62 41 fd 28 28 c4    	vmovapd ymm24,ymm12
  bb9f1d:	62 42 b5 20 7f c6    	vpermt2pd ymm24,ymm25,ymm14
  bb9f23:	62 52 ad 20 7f e6    	vpermt2pd ymm12,ymm26,ymm14
  bb9f29:	62 41 fd 28 29 40 e7 	vmovapd YMMWORD PTR [r8-0x320],ymm24
  bb9f30:	c4 41 7d 29 a0 00 fd 	vmovapd YMMWORD PTR [r8-0x300],ymm12
  bb9f37:	ff ff 
  bb9f39:	62 51 cd 20 15 d2    	vunpckhpd ymm10,ymm22,ymm10
  bb9f3f:	62 31 ed 20 15 e3    	vunpckhpd ymm12,ymm18,ymm19
  bb9f45:	c4 41 7d 28 f4       	vmovapd ymm14,ymm12
  bb9f4a:	62 52 b5 20 7f f2    	vpermt2pd ymm14,ymm25,ymm10
  bb9f50:	62 52 ad 20 7f e2    	vpermt2pd ymm12,ymm26,ymm10
  bb9f56:	c4 41 7d 29 b0 c0 fd 	vmovapd YMMWORD PTR [r8-0x240],ymm14
  bb9f5d:	ff ff 
  bb9f5f:	c4 41 7d 29 a0 e0 fd 	vmovapd YMMWORD PTR [r8-0x220],ymm12
  bb9f66:	ff ff 
  bb9f68:	62 31 fd 28 28 d5    	vmovapd ymm10,ymm21
  bb9f6e:	62 32 b5 20 7f d1    	vpermt2pd ymm10,ymm25,ymm17
  bb9f74:	62 a2 ad 20 7f e9    	vpermt2pd ymm21,ymm26,ymm17
  bb9f7a:	c4 41 7d 29 90 a0 fe 	vmovapd YMMWORD PTR [r8-0x160],ymm10
  bb9f81:	ff ff 
  bb9f83:	62 c1 fd 28 29 68 f6 	vmovapd YMMWORD PTR [r8-0x140],ymm21
  bb9f8a:	49 83 f9 0c          	cmp    r9,0xc
  bb9f8e:	74 24                	je     bb9fb4 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcb4>
  bb9f90:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  bb9f94:	c5 fd 15 c3          	vunpckhpd ymm0,ymm0,ymm3
  bb9f98:	c5 fd 28 d8          	vmovapd ymm3,ymm0
  bb9f9c:	62 f2 b5 20 7f dd    	vpermt2pd ymm3,ymm25,ymm5
  bb9fa2:	62 f2 ad 20 7f c5    	vpermt2pd ymm0,ymm26,ymm5
  bb9fa8:	c4 c1 7d 29 58 80    	vmovapd YMMWORD PTR [r8-0x80],ymm3
  bb9fae:	c4 c1 7d 29 40 a0    	vmovapd YMMWORD PTR [r8-0x60],ymm0
  bb9fb4:	c5 fd 28 84 24 a0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xa0]
  bb9fbb:	00 00 
  bb9fbd:	c5 fd 58 84 24 c0 00 	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0xc0]
  bb9fc4:	00 00 
  bb9fc6:	c5 fd 28 9c 24 60 02 	vmovapd ymm3,YMMWORD PTR [rsp+0x260]
  bb9fcd:	00 00 
  bb9fcf:	c5 e5 58 9c 24 40 01 	vaddpd ymm3,ymm3,YMMWORD PTR [rsp+0x140]
  bb9fd6:	00 00 
  bb9fd8:	c5 fd 28 ac 24 20 02 	vmovapd ymm5,YMMWORD PTR [rsp+0x220]
  bb9fdf:	00 00 
  bb9fe1:	c5 d5 5c ac 24 40 02 	vsubpd ymm5,ymm5,YMMWORD PTR [rsp+0x240]
  bb9fe8:	00 00 
  bb9fea:	c5 fd 28 bc 24 a0 01 	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  bb9ff1:	00 00 
  bb9ff3:	c5 c5 5c bc 24 80 01 	vsubpd ymm7,ymm7,YMMWORD PTR [rsp+0x180]
  bb9ffa:	00 00 
  bb9ffc:	c5 7d 28 94 24 e0 01 	vmovapd ymm10,YMMWORD PTR [rsp+0x1e0]
  bba003:	00 00 
  bba005:	c5 2d 58 94 24 00 02 	vaddpd ymm10,ymm10,YMMWORD PTR [rsp+0x200]
  bba00c:	00 00 
  bba00e:	c5 7d 28 a4 24 80 02 	vmovapd ymm12,YMMWORD PTR [rsp+0x280]
  bba015:	00 00 
  bba017:	c5 1d 58 a4 24 60 01 	vaddpd ymm12,ymm12,YMMWORD PTR [rsp+0x160]
  bba01e:	00 00 
  bba020:	62 31 8d 20 5c f7    	vsubpd ymm14,ymm30,ymm23
  bba026:	c4 41 75 5c c9       	vsubpd ymm9,ymm1,ymm9
  bba02b:	62 c3 7d 28 18 ca 01 	vinsertf32x4 ymm17,ymm0,xmm10,0x1
  bba032:	c4 c3 7d 06 c2 31    	vperm2f128 ymm0,ymm0,ymm10,0x31
  bba038:	c4 43 55 18 d6 01    	vinsertf128 ymm10,ymm5,xmm14,0x1
  bba03e:	c4 c3 55 06 ce 31    	vperm2f128 ymm1,ymm5,ymm14,0x31
  bba044:	62 51 f5 20 14 f2    	vunpcklpd ymm14,ymm17,ymm10
  bba04a:	62 e1 fd 28 14 d1    	vunpcklpd ymm18,ymm0,ymm1
  bba050:	62 c3 65 28 18 dc 01 	vinsertf32x4 ymm19,ymm3,xmm12,0x1
  bba057:	c4 c3 65 06 dc 31    	vperm2f128 ymm3,ymm3,ymm12,0x31
  bba05d:	c4 43 45 18 e1 01    	vinsertf128 ymm12,ymm7,xmm9,0x1
  bba063:	c4 c3 45 06 e9 31    	vperm2f128 ymm5,ymm7,ymm9,0x31
  bba069:	62 d1 e5 20 14 fc    	vunpcklpd ymm7,ymm19,ymm12
  bba06f:	c5 65 14 cd          	vunpcklpd ymm9,ymm3,ymm5
  bba073:	62 c1 fd 28 28 e6    	vmovapd ymm20,ymm14
  bba079:	62 e2 b5 20 7f e7    	vpermt2pd ymm20,ymm25,ymm7
  bba07f:	62 72 ad 20 7f f7    	vpermt2pd ymm14,ymm26,ymm7
  bba085:	62 c1 fd 28 29 60 e9 	vmovapd YMMWORD PTR [r8-0x2e0],ymm20
  bba08c:	c4 41 7d 29 b0 40 fd 	vmovapd YMMWORD PTR [r8-0x2c0],ymm14
  bba093:	ff ff 
  bba095:	62 d1 e5 20 15 fc    	vunpckhpd ymm7,ymm19,ymm12
  bba09b:	62 51 f5 20 15 d2    	vunpckhpd ymm10,ymm17,ymm10
  bba0a1:	c4 41 7d 28 e2       	vmovapd ymm12,ymm10
  bba0a6:	62 72 b5 20 7f e7    	vpermt2pd ymm12,ymm25,ymm7
  bba0ac:	62 72 ad 20 7f d7    	vpermt2pd ymm10,ymm26,ymm7
  bba0b2:	c4 41 7d 29 a0 00 fe 	vmovapd YMMWORD PTR [r8-0x200],ymm12
  bba0b9:	ff ff 
  bba0bb:	c4 41 7d 29 90 20 fe 	vmovapd YMMWORD PTR [r8-0x1e0],ymm10
  bba0c2:	ff ff 
  bba0c4:	62 b1 fd 28 28 fa    	vmovapd ymm7,ymm18
  bba0ca:	62 d2 b5 20 7f f9    	vpermt2pd ymm7,ymm25,ymm9
  bba0d0:	62 c2 ad 20 7f d1    	vpermt2pd ymm18,ymm26,ymm9
  bba0d6:	c4 c1 7d 29 b8 e0 fe 	vmovapd YMMWORD PTR [r8-0x120],ymm7
  bba0dd:	ff ff 
  bba0df:	62 c1 fd 28 29 50 f8 	vmovapd YMMWORD PTR [r8-0x100],ymm18
  bba0e6:	49 83 f9 0c          	cmp    r9,0xc
  bba0ea:	74 24                	je     bba110 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe10>
  bba0ec:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  bba0f0:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  bba0f4:	c5 fd 28 c8          	vmovapd ymm1,ymm0
  bba0f8:	62 f2 b5 20 7f cb    	vpermt2pd ymm1,ymm25,ymm3
  bba0fe:	62 f2 ad 20 7f c3    	vpermt2pd ymm0,ymm26,ymm3
  bba104:	c4 c1 7d 29 48 c0    	vmovapd YMMWORD PTR [r8-0x40],ymm1
  bba10a:	c4 c1 7d 29 40 e0    	vmovapd YMMWORD PTR [r8-0x20],ymm0
  bba110:	c4 c1 25 58 c7       	vaddpd ymm0,ymm11,ymm15
  bba115:	62 f1 fd 20 58 ce    	vaddpd ymm1,ymm16,ymm6
  bba11b:	c5 bd 5c d2          	vsubpd ymm2,ymm8,ymm2
  bba11f:	c4 c1 5d 5c dd       	vsubpd ymm3,ymm4,ymm13
  bba124:	c5 f9 14 e1          	vunpcklpd xmm4,xmm0,xmm1
  bba128:	c5 e9 14 eb          	vunpcklpd xmm5,xmm2,xmm3
  bba12c:	c4 c1 79 29 a8 70 fd 	vmovapd XMMWORD PTR [r8-0x290],xmm5
  bba133:	ff ff 
  bba135:	c4 c1 79 29 a0 60 fd 	vmovapd XMMWORD PTR [r8-0x2a0],xmm4
  bba13c:	ff ff 
  bba13e:	c5 f9 15 e1          	vunpckhpd xmm4,xmm0,xmm1
  bba142:	c5 e9 15 eb          	vunpckhpd xmm5,xmm2,xmm3
  bba146:	c4 c1 79 29 a8 50 fe 	vmovapd XMMWORD PTR [r8-0x1b0],xmm5
  bba14d:	ff ff 
  bba14f:	c4 c1 79 29 a0 40 fe 	vmovapd XMMWORD PTR [r8-0x1c0],xmm4
  bba156:	ff ff 
  bba158:	c5 fd 28 e1          	vmovapd ymm4,ymm1
  bba15c:	c5 fd 28 2d fc b8 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bb8fc]        # 75a60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2f10>
  bba163:	ff 
  bba164:	62 f2 d5 28 7f e3    	vpermt2pd ymm4,ymm5,ymm3
  bba16a:	c4 e3 7d 06 ea 31    	vperm2f128 ymm5,ymm0,ymm2,0x31
  bba170:	c4 e3 55 0d e4 0a    	vblendpd ymm4,ymm5,ymm4,0xa
  bba176:	c4 c1 7d 29 a0 20 ff 	vmovapd YMMWORD PTR [r8-0xe0],ymm4
  bba17d:	ff ff 
  bba17f:	49 83 f9 0c          	cmp    r9,0xc
  bba183:	0f 84 e7 f1 ff ff    	je     bb9370 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bba189:	c5 fd 28 25 af d2 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4bd2af]        # 77440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x48f0>
  bba190:	ff 
  bba191:	62 f2 dd 28 7f d0    	vpermt2pd ymm2,ymm4,ymm0
  bba197:	c4 e3 75 06 c3 31    	vperm2f128 ymm0,ymm1,ymm3,0x31
  bba19d:	c4 e3 6d 0d c0 0a    	vblendpd ymm0,ymm2,ymm0,0xa
  bba1a3:	c4 c1 7d 29 00       	vmovapd YMMWORD PTR [r8],ymm0
  bba1a8:	e9 c3 f1 ff ff       	jmp    bb9370 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  bba1ad:	48 8d bc 24 00 0c 00 	lea    rdi,[rsp+0xc00]
  bba1b4:	00 
  bba1b5:	48 83 c2 60          	add    rdx,0x60
  bba1b9:	41 b8 04 00 00 00    	mov    r8d,0x4
  bba1bf:	45 31 db             	xor    r11d,r11d
  bba1c2:	c5 fd 28 25 16 e5 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4be516]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bba1c9:	ff 
  bba1ca:	c5 fd 28 2d 2e db 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bdb2e]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bba1d1:	ff 
  bba1d2:	e9 f6 01 00 00       	jmp    bba3cd <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10cd>
  bba1d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  bba1de:	00 00 
  bba1e0:	62 e1 fd 28 28 fc    	vmovapd ymm23,ymm4
  bba1e6:	c5 fd 28 15 52 d4 4b 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bd452]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  bba1ed:	ff 
  bba1ee:	c5 7d 28 8c 24 40 02 	vmovapd ymm9,YMMWORD PTR [rsp+0x240]
  bba1f5:	00 00 
  bba1f7:	62 72 ed 28 7f 4c 24 	vpermt2pd ymm9,ymm2,YMMWORD PTR [rsp+0x120]
  bba1fe:	09 
  bba1ff:	c4 21 7d 11 14 0e    	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bba205:	c4 21 7d 11 4c 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm9
  bba20c:	62 e2 ed 28 7f 54 24 	vpermt2pd ymm18,ymm2,YMMWORD PTR [rsp+0x260]
  bba213:	13 
  bba214:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bba21b:	07 
  bba21c:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x100],ymm18
  bba223:	08 
  bba224:	c5 fd 28 a4 24 c0 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x1c0]
  bba22b:	00 00 
  bba22d:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x100]
  bba234:	08 
  bba235:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bba23c:	0e 
  bba23d:	c4 a1 7d 11 a4 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm4
  bba244:	01 00 00 
  bba247:	c5 fd 28 a4 24 80 00 	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bba24e:	00 00 
  bba250:	62 f2 ed 28 7f e5    	vpermt2pd ymm4,ymm2,ymm5
  bba256:	c4 a1 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bba25d:	02 00 00 
  bba260:	c4 a1 7d 11 a4 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2c0],ymm4
  bba267:	02 00 00 
  bba26a:	62 e2 ed 28 7f 74 24 	vpermt2pd ymm22,ymm2,YMMWORD PTR [rsp+0x280]
  bba271:	14 
  bba272:	62 21 fd 28 11 6c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bba279:	1c 
  bba27a:	62 a1 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3a0],ymm22
  bba281:	1d 
  bba282:	c5 fd 28 a4 24 80 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  bba289:	00 00 
  bba28b:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x1a0]
  bba292:	0d 
  bba293:	c4 21 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bba29a:	04 00 00 
  bba29d:	c4 a1 7d 11 a4 0e 80 	vmovupd YMMWORD PTR [rsi+r9*1+0x480],ymm4
  bba2a4:	04 00 00 
  bba2a7:	c5 fd 28 24 24       	vmovapd ymm4,YMMWORD PTR [rsp]
  bba2ac:	62 f2 ed 28 7f 64 24 	vpermt2pd ymm4,ymm2,YMMWORD PTR [rsp+0x60]
  bba2b3:	03 
  bba2b4:	c4 21 7d 11 a4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bba2bb:	05 00 00 
  bba2be:	c4 a1 7d 11 a4 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x560],ymm4
  bba2c5:	05 00 00 
  bba2c8:	62 22 ed 28 7f d5    	vpermt2pd ymm26,ymm2,ymm21
  bba2ce:	c4 21 7d 11 b4 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bba2d5:	06 00 00 
  bba2d8:	62 21 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x640],ymm26
  bba2df:	32 
  bba2e0:	62 e2 ed 28 7f 7c 24 	vpermt2pd ymm23,ymm2,YMMWORD PTR [rsp+0x160]
  bba2e7:	0b 
  bba2e8:	c4 a1 7d 11 9c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bba2ef:	07 00 00 
  bba2f2:	62 a1 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x720],ymm23
  bba2f9:	39 
  bba2fa:	c5 fd 28 4c 24 20    	vmovapd ymm1,YMMWORD PTR [rsp+0x20]
  bba300:	62 d2 ed 28 7f cd    	vpermt2pd ymm1,ymm2,ymm13
  bba306:	c4 21 7d 11 bc 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bba30d:	07 00 00 
  bba310:	c4 a1 7d 11 8c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x800],ymm1
  bba317:	08 00 00 
  bba31a:	c5 fd 28 8c 24 e0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xe0]
  bba321:	00 00 
  bba323:	62 f2 ed 28 7f 4c 24 	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0x140]
  bba32a:	0a 
  bba32b:	62 a1 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bba332:	46 
  bba333:	c4 a1 7d 11 8c 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x8e0],ymm1
  bba33a:	08 00 00 
  bba33d:	c5 fd 28 8c 24 a0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bba344:	00 00 
  bba346:	62 f2 ed 28 7f 4c 24 	vpermt2pd ymm1,ymm2,YMMWORD PTR [rsp+0xc0]
  bba34d:	06 
  bba34e:	c4 a1 7d 11 b4 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bba355:	09 00 00 
  bba358:	c4 a1 7d 11 8c 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9c0],ymm1
  bba35f:	09 00 00 
  bba362:	62 72 ed 28 7f d8    	vpermt2pd ymm11,ymm2,ymm0
  bba368:	62 a1 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bba36f:	54 
  bba370:	c4 21 7d 11 9c 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0xaa0],ymm11
  bba377:	0a 00 00 
  bba37a:	62 22 ed 28 7f c8    	vpermt2pd ymm25,ymm2,ymm16
  bba380:	62 21 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bba387:	5b 
  bba388:	62 21 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb80],ymm25
  bba38f:	5c 
  bba390:	62 82 ed 28 7f db    	vpermt2pd ymm19,ymm2,ymm27
  bba396:	62 21 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bba39d:	62 
  bba39e:	62 a1 fd 28 11 5c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc60],ymm19
  bba3a5:	63 
  bba3a6:	48 83 c7 40          	add    rdi,0x40
  bba3aa:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  bba3b1:	4d 89 d3             	mov    r11,r10
  bba3b4:	49 ff c8             	dec    r8
  bba3b7:	c5 fd 28 25 21 e3 4b 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4be321]        # 786e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5b90>
  bba3be:	ff 
  bba3bf:	c5 fd 28 2d 39 d9 4b 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4bd939]        # 77d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x51b0>
  bba3c6:	ff 
  bba3c7:	0f 84 53 0e 00 00    	je     bbb220 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1f20>
  bba3cd:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bba3d1:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x460],zmm0
  bba3d8:	60 04 00 00 
  bba3dc:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  bba3e3:	11 
  bba3e4:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  bba3eb:	10 
  bba3ec:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  bba3f3:	0f 
  bba3f4:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  bba3fb:	0e 
  bba3fc:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  bba403:	0d 
  bba404:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  bba40b:	0c 
  bba40c:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  bba413:	0b 
  bba414:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x660],zmm0
  bba41b:	60 06 00 00 
  bba41f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x640],zmm0
  bba426:	19 
  bba427:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  bba42e:	18 
  bba42f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  bba436:	17 
  bba437:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  bba43e:	16 
  bba43f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  bba446:	15 
  bba447:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  bba44e:	14 
  bba44f:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  bba456:	13 
  bba457:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x860],zmm0
  bba45e:	60 08 00 00 
  bba462:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  bba469:	21 
  bba46a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  bba471:	20 
  bba472:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  bba479:	1f 
  bba47a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  bba481:	1e 
  bba482:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x740],zmm0
  bba489:	1d 
  bba48a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x700],zmm0
  bba491:	1c 
  bba492:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x6c0],zmm0
  bba499:	1b 
  bba49a:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0xa60],zmm0
  bba4a1:	60 0a 00 00 
  bba4a5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  bba4ac:	29 
  bba4ad:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  bba4b4:	28 
  bba4b5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  bba4bc:	27 
  bba4bd:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  bba4c4:	26 
  bba4c5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  bba4cc:	25 
  bba4cd:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  bba4d4:	24 
  bba4d5:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  bba4dc:	23 
  bba4dd:	4d 89 d9             	mov    r9,r11
  bba4e0:	49 c1 e1 04          	shl    r9,0x4
  bba4e4:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  bba4e8:	49 83 fb 0a          	cmp    r11,0xa
  bba4ec:	77 0a                	ja     bba4f8 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x11f8>
  bba4ee:	c4 a1 7d 28 84 0c 20 	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb20]
  bba4f5:	0b 00 00 
  bba4f8:	4d 8d 53 04          	lea    r10,[r11+0x4]
  bba4fc:	c4 a1 7d 28 b4 0c 00 	vmovapd ymm6,YMMWORD PTR [rsp+r9*1+0xb00]
  bba503:	0b 00 00 
  bba506:	48 89 fb             	mov    rbx,rdi
  bba509:	45 31 f6             	xor    r14d,r14d
  bba50c:	eb 60                	jmp    bba56e <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x126e>
  bba50e:	66 90                	xchg   ax,ax
  bba510:	c5 fd 28 53 e0       	vmovapd ymm2,YMMWORD PTR [rbx-0x20]
  bba515:	c5 fd 28 da          	vmovapd ymm3,ymm2
  bba519:	62 f2 dd 28 7f d9    	vpermt2pd ymm3,ymm4,ymm1
  bba51f:	62 f2 d5 28 7f d1    	vpermt2pd ymm2,ymm5,ymm1
  bba525:	c4 a1 7d 29 9c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  bba52c:	02 00 00 
  bba52f:	c4 a1 7d 29 94 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x4e0],ymm2
  bba536:	04 00 00 
  bba539:	c4 a1 7c 10 4c 72 e0 	vmovups ymm1,YMMWORD PTR [rdx+r14*2-0x20]
  bba540:	c4 a1 7c 29 8c 34 e0 	vmovaps YMMWORD PTR [rsp+r14*1+0x6e0],ymm1
  bba547:	06 00 00 
  bba54a:	c4 a1 7d 10 0c 72    	vmovupd ymm1,YMMWORD PTR [rdx+r14*2]
  bba550:	c4 a1 7d 29 8c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x8e0],ymm1
  bba557:	08 00 00 
  bba55a:	49 83 c6 20          	add    r14,0x20
  bba55e:	48 81 c3 e0 00 00 00 	add    rbx,0xe0
  bba565:	49 81 fe c0 01 00 00 	cmp    r14,0x1c0
  bba56c:	74 12                	je     bba580 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1280>
  bba56e:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  bba572:	49 83 fb 0a          	cmp    r11,0xa
  bba576:	77 98                	ja     bba510 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bba578:	c5 fd 28 0b          	vmovapd ymm1,YMMWORD PTR [rbx]
  bba57c:	eb 92                	jmp    bba510 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1210>
  bba57e:	66 90                	xchg   ax,ax
  bba580:	c5 fd 28 ce          	vmovapd ymm1,ymm6
  bba584:	62 f2 dd 28 7f c8    	vpermt2pd ymm1,ymm4,ymm0
  bba58a:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bba58f:	62 f2 d5 28 7f f0    	vpermt2pd ymm6,ymm5,ymm0
  bba595:	c5 fd 29 74 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm6
  bba59b:	c5 7d 28 bc 24 e0 06 	vmovapd ymm15,YMMWORD PTR [rsp+0x6e0]
  bba5a2:	00 00 
  bba5a4:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0x700]
  bba5ab:	38 
  bba5ac:	c5 fd 28 ac 24 20 07 	vmovapd ymm5,YMMWORD PTR [rsp+0x720]
  bba5b3:	00 00 
  bba5b5:	c5 7d 28 a4 24 40 07 	vmovapd ymm12,YMMWORD PTR [rsp+0x740]
  bba5bc:	00 00 
  bba5be:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x2e0]
  bba5c5:	17 
  bba5c6:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x300]
  bba5cd:	18 
  bba5ce:	c5 fd 28 b4 24 20 03 	vmovapd ymm6,YMMWORD PTR [rsp+0x320]
  bba5d5:	00 00 
  bba5d7:	62 61 fd 28 28 64 24 	vmovapd ymm28,YMMWORD PTR [rsp+0x900]
  bba5de:	48 
  bba5df:	c5 fd 28 9c 24 20 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x920]
  bba5e6:	00 00 
  bba5e8:	62 61 fd 28 28 7c 24 	vmovapd ymm31,YMMWORD PTR [rsp+0x500]
  bba5ef:	28 
  bba5f0:	c5 fd 28 bc 24 20 05 	vmovapd ymm7,YMMWORD PTR [rsp+0x520]
  bba5f7:	00 00 
  bba5f9:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x7a0]
  bba600:	3d 
  bba601:	c5 fd 28 a4 24 a0 03 	vmovapd ymm4,YMMWORD PTR [rsp+0x3a0]
  bba608:	00 00 
  bba60a:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x860]
  bba611:	43 
  bba612:	c5 7d 28 9c 24 60 04 	vmovapd ymm11,YMMWORD PTR [rsp+0x460]
  bba619:	00 00 
  bba61b:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x800]
  bba622:	40 
  bba623:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x400]
  bba62a:	20 
  bba62b:	c5 fd 28 8c 24 80 08 	vmovapd ymm1,YMMWORD PTR [rsp+0x880]
  bba632:	00 00 
  bba634:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x480]
  bba63b:	24 
  bba63c:	c5 fd 28 84 24 c0 07 	vmovapd ymm0,YMMWORD PTR [rsp+0x7c0]
  bba643:	00 00 
  bba645:	c5 7d 28 84 24 c0 03 	vmovapd ymm8,YMMWORD PTR [rsp+0x3c0]
  bba64c:	00 00 
  bba64e:	c5 7d 28 ac 24 60 07 	vmovapd ymm13,YMMWORD PTR [rsp+0x760]
  bba655:	00 00 
  bba657:	c5 fd 28 94 24 60 03 	vmovapd ymm2,YMMWORD PTR [rsp+0x360]
  bba65e:	00 00 
  bba660:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x7e0]
  bba667:	3f 
  bba668:	c5 7d 28 b4 24 e0 03 	vmovapd ymm14,YMMWORD PTR [rsp+0x3e0]
  bba66f:	00 00 
  bba671:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x780]
  bba678:	3c 
  bba679:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x380]
  bba680:	1c 
  bba681:	c5 7d 28 8c 24 40 08 	vmovapd ymm9,YMMWORD PTR [rsp+0x840]
  bba688:	00 00 
  bba68a:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x440]
  bba691:	22 
  bba692:	c5 4d 59 d5          	vmulpd ymm10,ymm6,ymm5
  bba696:	c4 62 c5 bc d3       	vfnmadd231pd ymm10,ymm7,ymm3
  bba69b:	c5 7d 29 94 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm10
  bba6a2:	00 00 
  bba6a4:	c5 45 59 d5          	vmulpd ymm10,ymm7,ymm5
  bba6a8:	c5 fd 28 ac 24 40 0a 	vmovapd ymm5,YMMWORD PTR [rsp+0xa40]
  bba6af:	00 00 
  bba6b1:	c4 62 cd b8 d3       	vfmadd231pd ymm10,ymm6,ymm3
  bba6b6:	c5 fd 28 9c 24 40 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x640]
  bba6bd:	00 00 
  bba6bf:	62 c1 c5 20 59 f1    	vmulpd ymm22,ymm23,ymm9
  bba6c5:	62 e2 e5 28 bc f5    	vfnmadd231pd ymm22,ymm3,ymm5
  bba6cb:	c5 35 59 cb          	vmulpd ymm9,ymm9,ymm3
  bba6cf:	c5 fd 28 9c 24 80 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x980]
  bba6d6:	00 00 
  bba6d8:	62 72 c5 20 b8 cd    	vfmadd231pd ymm9,ymm23,ymm5
  bba6de:	c5 fd 28 ac 24 80 05 	vmovapd ymm5,YMMWORD PTR [rsp+0x580]
  bba6e5:	00 00 
  bba6e7:	62 81 e5 20 59 f9    	vmulpd ymm23,ymm19,ymm25
  bba6ed:	62 e2 d5 28 bc fb    	vfnmadd231pd ymm23,ymm5,ymm3
  bba6f3:	62 91 d5 28 59 f1    	vmulpd ymm6,ymm5,ymm25
  bba6f9:	c5 fd 28 ac 24 e0 09 	vmovapd ymm5,YMMWORD PTR [rsp+0x9e0]
  bba700:	00 00 
  bba702:	62 f2 e5 20 b8 f3    	vfmadd231pd ymm6,ymm19,ymm3
  bba708:	c5 fd 28 9c 24 e0 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x5e0]
  bba70f:	00 00 
  bba711:	62 21 8d 28 59 ca    	vmulpd ymm25,ymm14,ymm18
  bba717:	62 62 e5 28 bc cd    	vfnmadd231pd ymm25,ymm3,ymm5
  bba71d:	62 b1 e5 28 59 fa    	vmulpd ymm7,ymm3,ymm18
  bba723:	c5 fd 28 9c 24 60 09 	vmovapd ymm3,YMMWORD PTR [rsp+0x960]
  bba72a:	00 00 
  bba72c:	c4 e2 8d b8 fd       	vfmadd231pd ymm7,ymm14,ymm5
  bba731:	c5 fd 28 ac 24 60 05 	vmovapd ymm5,YMMWORD PTR [rsp+0x560]
  bba738:	00 00 
  bba73a:	c5 15 59 f2          	vmulpd ymm14,ymm13,ymm2
  bba73e:	c4 62 d5 bc f3       	vfnmadd231pd ymm14,ymm5,ymm3
  bba743:	62 c1 d5 28 59 ed    	vmulpd ymm21,ymm5,ymm13
  bba749:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x9c0]
  bba750:	4e 
  bba751:	62 e2 ed 28 b8 eb    	vfmadd231pd ymm21,ymm2,ymm3
  bba757:	c5 fd 28 94 24 c0 05 	vmovapd ymm2,YMMWORD PTR [rsp+0x5c0]
  bba75e:	00 00 
  bba760:	c5 3d 59 e8          	vmulpd ymm13,ymm8,ymm0
  bba764:	62 32 ed 28 bc eb    	vfnmadd231pd ymm13,ymm2,ymm19
  bba76a:	62 e1 ed 28 59 d0    	vmulpd ymm18,ymm2,ymm0
  bba770:	c5 fd 28 94 24 20 08 	vmovapd ymm2,YMMWORD PTR [rsp+0x820]
  bba777:	00 00 
  bba779:	62 a2 bd 28 b8 d3    	vfmadd231pd ymm18,ymm8,ymm19
  bba77f:	c5 fd 28 9c 24 20 04 	vmovapd ymm3,YMMWORD PTR [rsp+0x420]
  bba786:	00 00 
  bba788:	62 b1 bd 20 59 c1    	vmulpd ymm0,ymm24,ymm17
  bba78e:	62 92 85 20 bc c4    	vfnmadd231pd ymm0,ymm31,ymm28
  bba794:	62 21 85 20 59 f9    	vmulpd ymm31,ymm31,ymm17
  bba79a:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xa20]
  bba7a1:	51 
  bba7a2:	62 02 bd 20 b8 fc    	vfmadd231pd ymm31,ymm24,ymm28
  bba7a8:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x620]
  bba7af:	31 
  bba7b0:	c5 65 59 c2          	vmulpd ymm8,ymm3,ymm2
  bba7b4:	62 32 e5 20 bc c1    	vfnmadd231pd ymm8,ymm19,ymm17
  bba7ba:	62 61 e5 20 59 c2    	vmulpd ymm24,ymm19,ymm2
  bba7c0:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0xa80]
  bba7c7:	54 
  bba7c8:	62 22 e5 28 b8 c1    	vfmadd231pd ymm24,ymm3,ymm17
  bba7ce:	c5 fd 28 9c 24 80 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x680]
  bba7d5:	00 00 
  bba7d7:	62 f1 95 20 59 d1    	vmulpd ymm2,ymm29,ymm1
  bba7dd:	62 b2 e5 28 bc d3    	vfnmadd231pd ymm2,ymm3,ymm19
  bba7e3:	62 61 e5 28 59 e1    	vmulpd ymm28,ymm3,ymm1
  bba7e9:	c5 fd 28 8c 24 00 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa00]
  bba7f0:	00 00 
  bba7f2:	62 22 95 20 b8 e3    	vfmadd231pd ymm28,ymm29,ymm19
  bba7f8:	c5 fd 28 9c 24 00 06 	vmovapd ymm3,YMMWORD PTR [rsp+0x600]
  bba7ff:	00 00 
  bba801:	62 a1 a5 20 59 c8    	vmulpd ymm17,ymm27,ymm16
  bba807:	62 e2 e5 28 bc c9    	vfnmadd231pd ymm17,ymm3,ymm1
  bba80d:	62 a1 e5 28 59 c0    	vmulpd ymm16,ymm3,ymm16
  bba813:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0xa60]
  bba81a:	53 
  bba81b:	62 e2 a5 20 b8 c1    	vfmadd231pd ymm16,ymm27,ymm1
  bba821:	c5 fd 28 8c 24 60 06 	vmovapd ymm1,YMMWORD PTR [rsp+0x660]
  bba828:	00 00 
  bba82a:	62 91 a5 28 59 da    	vmulpd ymm3,ymm11,ymm26
  bba830:	62 b2 f5 28 bc db    	vfnmadd231pd ymm3,ymm1,ymm19
  bba836:	62 01 f5 28 59 ea    	vmulpd ymm29,ymm1,ymm26
  bba83c:	c5 fd 28 8c 24 a0 09 	vmovapd ymm1,YMMWORD PTR [rsp+0x9a0]
  bba843:	00 00 
  bba845:	62 22 a5 28 b8 eb    	vfmadd231pd ymm29,ymm11,ymm19
  bba84b:	c5 7d 28 9c 24 a0 05 	vmovapd ymm11,YMMWORD PTR [rsp+0x5a0]
  bba852:	00 00 
  bba854:	62 01 dd 28 59 d6    	vmulpd ymm26,ymm4,ymm30
  bba85a:	62 62 a5 28 bc d1    	vfnmadd231pd ymm26,ymm11,ymm1
  bba860:	62 01 a5 28 59 f6    	vmulpd ymm30,ymm11,ymm30
  bba866:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x8e0]
  bba86d:	47 
  bba86e:	62 62 dd 28 b8 f1    	vfmadd231pd ymm30,ymm4,ymm1
  bba874:	c5 fd 28 8c 24 e0 04 	vmovapd ymm1,YMMWORD PTR [rsp+0x4e0]
  bba87b:	00 00 
  bba87d:	62 51 dd 20 59 df    	vmulpd ymm11,ymm20,ymm15
  bba883:	62 32 f5 28 bc db    	vfnmadd231pd ymm11,ymm1,ymm19
  bba889:	c5 05 59 f9          	vmulpd ymm15,ymm15,ymm1
  bba88d:	c5 fd 28 8c 24 40 03 	vmovapd ymm1,YMMWORD PTR [rsp+0x340]
  bba894:	00 00 
  bba896:	62 32 dd 20 b8 fb    	vfmadd231pd ymm15,ymm20,ymm19
  bba89c:	c5 fd 28 a4 24 40 09 	vmovapd ymm4,YMMWORD PTR [rsp+0x940]
  bba8a3:	00 00 
  bba8a5:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x540]
  bba8ac:	2a 
  bba8ad:	62 41 f5 28 59 dc    	vmulpd ymm27,ymm1,ymm12
  bba8b3:	62 62 e5 20 bc dc    	vfnmadd231pd ymm27,ymm19,ymm4
  bba8b9:	62 c1 e5 20 59 e4    	vmulpd ymm20,ymm19,ymm12
  bba8bf:	62 e2 f5 28 b8 e4    	vfmadd231pd ymm20,ymm1,ymm4
  bba8c5:	c5 95 58 e0          	vaddpd ymm4,ymm13,ymm0
  bba8c9:	62 81 ed 20 58 df    	vaddpd ymm19,ymm18,ymm31
  bba8cf:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  bba8d6:	14 
  bba8d7:	62 91 ed 20 5c cf    	vsubpd ymm1,ymm18,ymm31
  bba8dd:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  bba8e4:	00 00 
  bba8e6:	62 91 bd 20 58 ec    	vaddpd ymm5,ymm24,ymm28
  bba8ec:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bba8f3:	00 00 
  bba8f5:	62 91 bd 20 5c cc    	vsubpd ymm1,ymm24,ymm28
  bba8fb:	c5 fd 29 8c 24 60 02 	vmovapd YMMWORD PTR [rsp+0x260],ymm1
  bba902:	00 00 
  bba904:	62 81 95 20 58 d6    	vaddpd ymm18,ymm29,ymm30
  bba90a:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm18
  bba911:	0b 
  bba912:	62 91 95 20 5c ce    	vsubpd ymm1,ymm29,ymm30
  bba918:	c5 fd 29 8c 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm1
  bba91f:	00 00 
  bba921:	62 21 85 28 58 fc    	vaddpd ymm31,ymm15,ymm20
  bba927:	62 31 85 28 5c fc    	vsubpd ymm15,ymm15,ymm20
  bba92d:	c4 41 2d 58 e1       	vaddpd ymm12,ymm10,ymm9
  bba932:	c5 7d 29 64 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  bba938:	c4 c1 2d 5c c9       	vsubpd ymm1,ymm10,ymm9
  bba93d:	c5 fd 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  bba944:	00 00 
  bba946:	c5 4d 58 cf          	vaddpd ymm9,ymm6,ymm7
  bba94a:	c5 7d 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm9
  bba951:	00 00 
  bba953:	c5 cd 5c cf          	vsubpd ymm1,ymm6,ymm7
  bba957:	c5 fd 29 8c 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm1
  bba95e:	00 00 
  bba960:	62 61 bd 28 58 c2    	vaddpd ymm24,ymm8,ymm2
  bba966:	c5 15 5c d0          	vsubpd ymm10,ymm13,ymm0
  bba96a:	62 01 e5 28 58 ea    	vaddpd ymm29,ymm3,ymm26
  bba970:	c5 bd 5c c2          	vsubpd ymm0,ymm8,ymm2
  bba974:	c5 fd 29 84 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm0
  bba97b:	00 00 
  bba97d:	62 01 a5 28 58 e3    	vaddpd ymm28,ymm11,ymm27
  bba983:	62 91 e5 28 5c d2    	vsubpd ymm2,ymm3,ymm26
  bba989:	c5 fd 29 94 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm2
  bba990:	00 00 
  bba992:	62 e2 fd 28 19 25 bc 	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4ba0bc]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  bba999:	a0 4b ff 
  bba99c:	62 31 fd 28 28 ec    	vmovapd ymm13,ymm20
  bba9a2:	62 32 e5 20 a8 ed    	vfmadd213pd ymm13,ymm19,ymm21
  bba9a8:	c4 62 7d 19 05 67 a6 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff4ba667]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  bba9af:	4b ff 
  bba9b1:	c4 42 d5 bc e8       	vfnmadd231pd ymm13,ymm5,ymm8
  bba9b6:	62 91 a5 28 5c db    	vsubpd ymm3,ymm11,ymm27
  bba9bc:	c4 62 7d 19 0d 03 9e 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4b9e03]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  bba9c3:	4b ff 
  bba9c5:	c5 b5 59 c0          	vmulpd ymm0,ymm9,ymm0
  bba9c9:	c4 62 7d 19 25 fe a1 	vbroadcastsd ymm12,QWORD PTR [rip+0xffffffffff4ba1fe]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  bba9d0:	4b ff 
  bba9d2:	c4 c2 ad b8 c4       	vfmadd231pd ymm0,ymm10,ymm12
  bba9d7:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  bba9de:	00 00 
  bba9e0:	62 21 fd 28 28 dc    	vmovapd ymm27,ymm20
  bba9e6:	62 22 ed 20 a8 d8    	vfmadd213pd ymm27,ymm18,ymm16
  bba9ec:	62 42 85 20 bc d8    	vfnmadd231pd ymm27,ymm31,ymm8
  bba9f2:	c5 b5 59 cb          	vmulpd ymm1,ymm9,ymm3
  bba9f6:	c4 c2 ed b8 cc       	vfmadd231pd ymm1,ymm2,ymm12
  bba9fb:	c5 fd 29 8c 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm1
  bbaa02:	00 00 
  bbaa04:	c5 95 5c e8          	vsubpd ymm5,ymm13,ymm0
  bbaa08:	62 f1 a5 20 5c f1    	vsubpd ymm6,ymm27,ymm1
  bbaa0e:	c5 d5 5c c6          	vsubpd ymm0,ymm5,ymm6
  bbaa12:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  bbaa18:	c5 d5 58 c6          	vaddpd ymm0,ymm5,ymm6
  bbaa1c:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  bbaa23:	00 00 
  bbaa25:	c5 fd 28 84 24 20 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x120]
  bbaa2c:	00 00 
  bbaa2e:	62 21 fd 28 58 f6    	vaddpd ymm30,ymm0,ymm22
  bbaa34:	62 a1 fd 28 5c d6    	vsubpd ymm18,ymm0,ymm22
  bbaa3a:	62 81 c5 20 58 f1    	vaddpd ymm22,ymm23,ymm25
  bbaa40:	62 81 c5 20 5c f9    	vsubpd ymm23,ymm23,ymm25
  bbaa46:	62 b1 fd 28 28 f4    	vmovapd ymm6,ymm20
  bbaa4c:	c4 c2 dd a8 f6       	vfmadd213pd ymm6,ymm4,ymm14
  bbaa51:	62 d2 bd 20 bc f0    	vfnmadd231pd ymm6,ymm24,ymm8
  bbaa57:	c5 fd 28 8c 24 60 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  bbaa5e:	00 00 
  bbaa60:	62 41 f5 28 59 d1    	vmulpd ymm26,ymm1,ymm9
  bbaa66:	c5 fd 28 ac 24 80 00 	vmovapd ymm5,YMMWORD PTR [rsp+0x80]
  bbaa6d:	00 00 
  bbaa6f:	62 42 d5 28 b8 d4    	vfmadd231pd ymm26,ymm5,ymm12
  bbaa75:	62 b1 fd 28 28 fc    	vmovapd ymm7,ymm20
  bbaa7b:	62 b2 95 20 a8 f9    	vfmadd213pd ymm7,ymm29,ymm17
  bbaa81:	62 d2 9d 20 bc f8    	vfnmadd231pd ymm7,ymm28,ymm8
  bbaa87:	62 c1 85 28 59 d9    	vmulpd ymm19,ymm15,ymm9
  bbaa8d:	c5 fd 28 94 24 a0 02 	vmovapd ymm2,YMMWORD PTR [rsp+0x2a0]
  bbaa94:	00 00 
  bbaa96:	62 c2 ed 28 b8 dc    	vfmadd231pd ymm19,ymm2,ymm12
  bbaa9c:	62 11 cd 28 58 da    	vaddpd ymm11,ymm6,ymm26
  bbaaa2:	62 21 c5 28 58 cb    	vaddpd ymm25,ymm7,ymm19
  bbaaa8:	62 91 a5 28 58 c1    	vaddpd ymm0,ymm11,ymm25
  bbaaae:	c5 fd 29 84 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm0
  bbaab5:	00 00 
  bbaab7:	62 91 a5 28 5c c1    	vsubpd ymm0,ymm11,ymm25
  bbaabd:	c5 fd 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  bbaac4:	00 00 
  bbaac6:	c5 0d 58 dc          	vaddpd ymm11,ymm14,ymm4
  bbaaca:	c4 62 bd bc f4       	vfnmadd231pd ymm14,ymm8,ymm4
  bbaacf:	62 91 a5 28 58 c0    	vaddpd ymm0,ymm11,ymm24
  bbaad5:	c5 fd 29 84 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm0
  bbaadc:	00 00 
  bbaade:	62 12 dd 20 b8 f0    	vfmadd231pd ymm14,ymm20,ymm24
  bbaae4:	c5 35 59 dd          	vmulpd ymm11,ymm9,ymm5
  bbaae8:	c4 62 9d bc d9       	vfnmadd231pd ymm11,ymm12,ymm1
  bbaaed:	62 91 f5 20 58 cd    	vaddpd ymm1,ymm17,ymm29
  bbaaf3:	62 82 bd 28 bc cd    	vfnmadd231pd ymm17,ymm8,ymm29
  bbaaf9:	62 91 f5 28 58 c4    	vaddpd ymm0,ymm1,ymm28
  bbaaff:	c5 fd 29 84 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm0
  bbab06:	00 00 
  bbab08:	62 82 dd 20 b8 cc    	vfmadd231pd ymm17,ymm20,ymm28
  bbab0e:	62 41 ed 28 59 c1    	vmulpd ymm24,ymm2,ymm9
  bbab14:	62 42 9d 28 bc c7    	vfnmadd231pd ymm24,ymm12,ymm15
  bbab1a:	62 b1 fd 28 28 e4    	vmovapd ymm4,ymm20
  bbab20:	c5 fd 28 04 24       	vmovapd ymm0,YMMWORD PTR [rsp]
  bbab25:	62 f2 8d 20 a8 e0    	vfmadd213pd ymm4,ymm30,ymm0
  bbab2b:	62 91 fd 28 58 ce    	vaddpd ymm1,ymm0,ymm30
  bbab31:	62 92 bd 28 bc c6    	vfnmadd231pd ymm0,ymm8,ymm30
  bbab37:	62 b1 f5 28 58 ce    	vaddpd ymm1,ymm1,ymm22
  bbab3d:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bbab42:	62 d2 cd 20 bc e0    	vfnmadd231pd ymm4,ymm22,ymm8
  bbab48:	62 b2 dd 20 b8 c6    	vfmadd231pd ymm0,ymm20,ymm22
  bbab4e:	62 61 fd 28 28 e8    	vmovapd ymm29,ymm0
  bbab54:	c5 fd 28 8c 24 a0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xa0]
  bbab5b:	00 00 
  bbab5d:	62 41 f5 28 59 e1    	vmulpd ymm28,ymm1,ymm9
  bbab63:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  bbab6a:	00 00 
  bbab6c:	62 42 fd 28 b8 e4    	vfmadd231pd ymm28,ymm0,ymm12
  bbab72:	c5 b5 59 e8          	vmulpd ymm5,ymm9,ymm0
  bbab76:	c4 e2 9d bc e9       	vfnmadd231pd ymm5,ymm12,ymm1
  bbab7b:	c5 fd 28 84 24 80 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x280]
  bbab82:	00 00 
  bbab84:	62 e1 d5 20 58 f0    	vaddpd ymm22,ymm21,ymm0
  bbab8a:	62 e2 bd 28 bc e8    	vfnmadd231pd ymm21,ymm8,ymm0
  bbab90:	c5 fd 28 84 24 40 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  bbab97:	00 00 
  bbab99:	62 61 cd 20 58 c8    	vaddpd ymm25,ymm22,ymm0
  bbab9f:	62 e2 dd 20 b8 e8    	vfmadd231pd ymm21,ymm20,ymm0
  bbaba5:	62 c1 ad 28 59 f1    	vmulpd ymm22,ymm10,ymm9
  bbabab:	62 e2 9d 28 bc 74 24 	vfnmadd231pd ymm22,ymm12,YMMWORD PTR [rsp+0x180]
  bbabb2:	0c 
  bbabb3:	c5 fd 28 84 24 60 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  bbabba:	00 00 
  bbabbc:	62 71 fd 20 58 d0    	vaddpd ymm10,ymm16,ymm0
  bbabc2:	62 e2 bd 28 bc c0    	vfnmadd231pd ymm16,ymm8,ymm0
  bbabc8:	62 11 ad 28 58 d7    	vaddpd ymm10,ymm10,ymm31
  bbabce:	62 82 dd 20 b8 c7    	vfmadd231pd ymm16,ymm20,ymm31
  bbabd4:	62 61 b5 28 59 7c 24 	vmulpd ymm31,ymm9,YMMWORD PTR [rsp+0x1a0]
  bbabdb:	0d 
  bbabdc:	62 62 9d 28 bc fb    	vfnmadd231pd ymm31,ymm12,ymm3
  bbabe2:	62 b1 d5 20 5c d6    	vsubpd ymm2,ymm21,ymm22
  bbabe8:	62 91 fd 20 5c df    	vsubpd ymm3,ymm16,ymm31
  bbabee:	c5 ed 5c c3          	vsubpd ymm0,ymm2,ymm3
  bbabf2:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  bbabf9:	00 00 
  bbabfb:	c5 ed 58 c3          	vaddpd ymm0,ymm2,ymm3
  bbabff:	c5 fd 29 84 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm0
  bbac06:	00 00 
  bbac08:	62 b1 fd 28 28 c4    	vmovapd ymm0,ymm20
  bbac0e:	c5 fd 28 4c 24 60    	vmovapd ymm1,YMMWORD PTR [rsp+0x60]
  bbac14:	c5 fd 28 5c 24 20    	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  bbac1a:	c4 e2 e5 a8 c1       	vfmadd213pd ymm0,ymm3,ymm1
  bbac1f:	c5 e5 58 d1          	vaddpd ymm2,ymm3,ymm1
  bbac23:	c4 e2 bd bc cb       	vfnmadd231pd ymm1,ymm8,ymm3
  bbac28:	c5 fd 28 9c 24 e0 00 	vmovapd ymm3,YMMWORD PTR [rsp+0xe0]
  bbac2f:	00 00 
  bbac31:	c5 e5 58 d2          	vaddpd ymm2,ymm3,ymm2
  bbac35:	c4 c2 e5 bc c0       	vfnmadd231pd ymm0,ymm3,ymm8
  bbac3a:	62 f2 dd 20 b8 cb    	vfmadd231pd ymm1,ymm20,ymm3
  bbac40:	c5 7d 28 c1          	vmovapd ymm8,ymm1
  bbac44:	62 d1 c5 20 59 c9    	vmulpd ymm1,ymm23,ymm9
  bbac4a:	62 d2 ed 20 b8 cc    	vfmadd231pd ymm1,ymm18,ymm12
  bbac50:	62 c1 ed 20 59 d1    	vmulpd ymm18,ymm18,ymm9
  bbac56:	62 a2 9d 28 bc d7    	vfnmadd231pd ymm18,ymm12,ymm23
  bbac5c:	62 c1 8d 28 58 fb    	vaddpd ymm23,ymm14,ymm11
  bbac62:	62 01 f5 20 58 f0    	vaddpd ymm30,ymm17,ymm24
  bbac68:	62 91 c5 20 58 de    	vaddpd ymm3,ymm23,ymm30
  bbac6e:	c5 fd 29 9c 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm3
  bbac75:	00 00 
  bbac77:	62 91 c5 20 5c de    	vsubpd ymm3,ymm23,ymm30
  bbac7d:	c5 fd 29 9c 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm3
  bbac84:	00 00 
  bbac86:	62 f1 95 20 58 dd    	vaddpd ymm3,ymm29,ymm5
  bbac8c:	c5 fd 29 9c 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm3
  bbac93:	00 00 
  bbac95:	62 e1 95 20 5c fd    	vsubpd ymm23,ymm29,ymm5
  bbac9b:	62 41 8d 28 5c eb    	vsubpd ymm29,ymm14,ymm11
  bbaca1:	62 11 f5 20 5c d8    	vsubpd ymm11,ymm17,ymm24
  bbaca7:	62 b1 bd 28 5c ea    	vsubpd ymm5,ymm8,ymm18
  bbacad:	c5 fd 29 ac 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm5
  bbacb4:	00 00 
  bbacb6:	62 c1 ed 20 58 c8    	vaddpd ymm17,ymm18,ymm8
  bbacbc:	62 a1 d5 20 58 ee    	vaddpd ymm21,ymm21,ymm22
  bbacc2:	62 11 fd 20 58 f7    	vaddpd ymm14,ymm16,ymm31
  bbacc8:	62 91 cd 28 5c f2    	vsubpd ymm6,ymm6,ymm26
  bbacce:	62 b1 c5 28 5c fb    	vsubpd ymm7,ymm7,ymm19
  bbacd4:	62 11 dd 28 58 cc    	vaddpd ymm9,ymm4,ymm28
  bbacda:	62 11 dd 28 5c fc    	vsubpd ymm15,ymm4,ymm28
  bbace0:	62 e1 95 28 58 54 24 	vaddpd ymm18,ymm13,YMMWORD PTR [rsp+0x220]
  bbace7:	11 
  bbace8:	c5 fd 28 9c 24 c0 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x1c0]
  bbacef:	00 00 
  bbacf1:	c5 fd 28 a4 24 80 00 	vmovapd ymm4,YMMWORD PTR [rsp+0x80]
  bbacf8:	00 00 
  bbacfa:	c5 65 58 c4          	vaddpd ymm8,ymm3,ymm4
  bbacfe:	62 71 a5 20 58 64 24 	vaddpd ymm12,ymm27,YMMWORD PTR [rsp+0x1e0]
  bbad05:	0f 
  bbad06:	62 51 ed 20 5c ec    	vsubpd ymm13,ymm18,ymm12
  bbad0c:	c5 7d 29 6c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm13
  bbad12:	62 51 ed 20 58 e4    	vaddpd ymm12,ymm18,ymm12
  bbad18:	62 e1 fd 28 5c d1    	vsubpd ymm18,ymm0,ymm1
  bbad1e:	c5 f5 58 c0          	vaddpd ymm0,ymm1,ymm0
  bbad22:	62 e1 cd 28 58 e7    	vaddpd ymm20,ymm6,ymm7
  bbad28:	c5 cd 5c cf          	vsubpd ymm1,ymm6,ymm7
  bbad2c:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  bbad33:	00 00 
  bbad35:	c5 fd 28 0c 24       	vmovapd ymm1,YMMWORD PTR [rsp]
  bbad3a:	c5 bd 58 f1          	vaddpd ymm6,ymm8,ymm1
  bbad3e:	c5 fd 29 b4 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm6
  bbad45:	00 00 
  bbad47:	c4 62 7d 19 2d 48 9d 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4b9d48]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  bbad4e:	4b ff 
  bbad50:	c4 62 95 ac c1       	vfnmadd213pd ymm8,ymm13,ymm1
  bbad55:	62 d1 b5 20 58 fa    	vaddpd ymm7,ymm25,ymm10
  bbad5b:	62 41 b5 20 5c da    	vsubpd ymm27,ymm25,ymm10
  bbad61:	c5 6d 58 d7          	vaddpd ymm10,ymm2,ymm7
  bbad65:	c4 e2 95 ac fa       	vfnmadd213pd ymm7,ymm13,ymm2
  bbad6a:	c5 7d 29 ea          	vmovapd ymm2,ymm13
  bbad6e:	c5 fd 28 8c 24 00 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  bbad75:	00 00 
  bbad77:	c4 c2 f5 ac d1       	vfnmadd213pd ymm2,ymm1,ymm9
  bbad7c:	c5 e5 5c f4          	vsubpd ymm6,ymm3,ymm4
  bbad80:	62 c1 fd 28 28 f5    	vmovapd ymm22,ymm13
  bbad86:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x100]
  bbad8d:	08 
  bbad8e:	62 a2 bd 20 ac f2    	vfnmadd213pd ymm22,ymm24,ymm18
  bbad94:	c5 b5 58 c9          	vaddpd ymm1,ymm9,ymm1
  bbad98:	c5 fd 29 4c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm1
  bbad9e:	c4 41 7d 28 cd       	vmovapd ymm9,ymm13
  bbada3:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0x180]
  bbadaa:	0c 
  bbadab:	c5 fd 28 9c 24 60 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x160]
  bbadb2:	00 00 
  bbadb4:	62 72 8d 20 ac cb    	vfnmadd213pd ymm9,ymm30,ymm3
  bbadba:	62 62 fd 28 19 3d 5c 	vbroadcastsd ymm31,QWORD PTR [rip+0xffffffffff4b9e5c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  bbadc1:	9e 4b ff 
  bbadc4:	62 e1 85 20 59 5c 24 	vmulpd ymm19,ymm31,YMMWORD PTR [rsp+0xa0]
  bbadcb:	05 
  bbadcc:	62 91 ed 20 58 c8    	vaddpd ymm1,ymm18,ymm24
  bbadd2:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  bbadd7:	62 b1 b5 28 5c cb    	vsubpd ymm1,ymm9,ymm19
  bbaddd:	c5 fd 29 8c 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm1
  bbade4:	00 00 
  bbade6:	62 b1 b5 28 58 cb    	vaddpd ymm1,ymm9,ymm19
  bbadec:	c5 fd 29 8c 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm1
  bbadf3:	00 00 
  bbadf5:	c4 41 7d 28 cd       	vmovapd ymm9,ymm13
  bbadfa:	c5 fd 28 8c 24 c0 00 	vmovapd ymm1,YMMWORD PTR [rsp+0xc0]
  bbae01:	00 00 
  bbae03:	c4 62 f5 ac cd       	vfnmadd213pd ymm9,ymm1,ymm5
  bbae08:	62 e1 85 20 59 54 24 	vmulpd ymm18,ymm31,YMMWORD PTR [rsp+0x1a0]
  bbae0f:	0d 
  bbae10:	62 21 b5 28 58 d2    	vaddpd ymm26,ymm9,ymm18
  bbae16:	62 b1 b5 28 5c e2    	vsubpd ymm4,ymm9,ymm18
  bbae1c:	c5 fd 29 a4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm4
  bbae23:	00 00 
  bbae25:	62 91 fd 28 28 e5    	vmovapd ymm4,ymm29
  bbae2b:	62 41 95 20 58 c3    	vaddpd ymm24,ymm29,ymm11
  bbae31:	62 91 c5 20 58 e8    	vaddpd ymm5,ymm23,ymm24
  bbae37:	62 22 95 28 ac c7    	vfnmadd213pd ymm24,ymm13,ymm23
  bbae3d:	62 41 d5 20 58 ce    	vaddpd ymm25,ymm21,ymm14
  bbae43:	62 51 d5 20 5c f6    	vsubpd ymm14,ymm21,ymm14
  bbae49:	62 01 f5 20 58 e9    	vaddpd ymm29,ymm17,ymm25
  bbae4f:	62 22 95 28 ac c9    	vfnmadd213pd ymm25,ymm13,ymm17
  bbae55:	c4 c1 5d 5c e3       	vsubpd ymm4,ymm4,ymm11
  bbae5a:	62 41 fd 28 28 e5    	vmovapd ymm28,ymm13
  bbae60:	62 42 dd 20 ac e7    	vfnmadd213pd ymm28,ymm20,ymm15
  bbae66:	62 31 85 28 58 cc    	vaddpd ymm9,ymm15,ymm20
  bbae6c:	c5 7d 29 8c 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm9
  bbae73:	00 00 
  bbae75:	62 c1 fd 28 28 e5    	vmovapd ymm20,ymm13
  bbae7b:	62 e2 9d 28 ac e0    	vfnmadd213pd ymm20,ymm12,ymm0
  bbae81:	c5 1d 58 f8          	vaddpd ymm15,ymm12,ymm0
  bbae85:	62 91 a5 20 59 c7    	vmulpd ymm0,ymm27,ymm31
  bbae8b:	62 e1 bd 28 5c f8    	vsubpd ymm23,ymm8,ymm0
  bbae91:	62 e1 bd 28 58 c0    	vaddpd ymm16,ymm8,ymm0
  bbae97:	62 91 cd 28 59 c7    	vmulpd ymm0,ymm6,ymm31
  bbae9d:	c5 45 58 e8          	vaddpd ymm13,ymm7,ymm0
  bbaea1:	62 e1 c5 28 5c c8    	vsubpd ymm17,ymm7,ymm0
  bbaea7:	62 f1 85 20 59 44 24 	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x40]
  bbaeae:	02 
  bbaeaf:	62 e1 ed 28 58 d8    	vaddpd ymm19,ymm2,ymm0
  bbaeb5:	c5 6d 5c c8          	vsubpd ymm9,ymm2,ymm0
  bbaeb9:	62 f1 85 20 59 44 24 	vmulpd ymm0,ymm31,YMMWORD PTR [rsp+0x240]
  bbaec0:	12 
  bbaec1:	62 e1 cd 20 5c d0    	vsubpd ymm18,ymm22,ymm0
  bbaec7:	62 61 cd 20 58 d8    	vaddpd ymm27,ymm22,ymm0
  bbaecd:	62 f1 85 20 59 7c 24 	vmulpd ymm7,ymm31,YMMWORD PTR [rsp+0x20]
  bbaed4:	01 
  bbaed5:	62 91 e5 28 58 d6    	vaddpd ymm2,ymm3,ymm30
  bbaedb:	c5 fd 29 54 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm2
  bbaee1:	62 e1 9d 20 58 ef    	vaddpd ymm21,ymm28,ymm7
  bbaee7:	62 f1 85 20 59 5c 24 	vmulpd ymm3,ymm31,YMMWORD PTR [rsp+0xe0]
  bbaeee:	07 
  bbaeef:	62 91 8d 28 59 f7    	vmulpd ymm6,ymm14,ymm31
  bbaef5:	c5 75 58 9c 24 40 01 	vaddpd ymm11,ymm1,YMMWORD PTR [rsp+0x140]
  bbaefc:	00 00 
  bbaefe:	62 f1 bd 20 5c ce    	vsubpd ymm1,ymm24,ymm6
  bbaf04:	62 11 dd 28 59 c7    	vmulpd ymm8,ymm4,ymm31
  bbaf0a:	62 61 bd 20 58 fe    	vaddpd ymm31,ymm24,ymm6
  bbaf10:	62 d1 b5 20 58 e0    	vaddpd ymm4,ymm25,ymm8
  bbaf16:	62 41 b5 20 5c f0    	vsubpd ymm30,ymm25,ymm8
  bbaf1c:	62 e1 dd 20 5c f3    	vsubpd ymm22,ymm20,ymm3
  bbaf22:	62 61 9d 20 5c cf    	vsubpd ymm25,ymm28,ymm7
  bbaf28:	62 e1 dd 20 58 e3    	vaddpd ymm20,ymm20,ymm3
  bbaf2e:	c5 fd 28 9c 24 20 01 	vmovapd ymm3,YMMWORD PTR [rsp+0x120]
  bbaf35:	00 00 
  bbaf37:	c5 fd 29 19          	vmovapd YMMWORD PTR [rcx],ymm3
  bbaf3b:	c5 7d 29 10          	vmovapd YMMWORD PTR [rax],ymm10
  bbaf3f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x2e0],ymm19
  bbaf46:	17 
  bbaf47:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x4e0],ymm18
  bbaf4e:	27 
  bbaf4f:	c5 7d 28 84 24 00 01 	vmovapd ymm8,YMMWORD PTR [rsp+0x100]
  bbaf56:	00 00 
  bbaf58:	c5 7d 29 84 24 00 03 	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  bbaf5f:	00 00 
  bbaf61:	62 01 fd 28 28 c2    	vmovapd ymm24,ymm26
  bbaf67:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x500],ymm26
  bbaf6e:	28 
  bbaf6f:	c5 fd 29 ac 24 20 03 	vmovapd YMMWORD PTR [rsp+0x320],ymm5
  bbaf76:	00 00 
  bbaf78:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x520],ymm29
  bbaf7f:	29 
  bbaf80:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x340],ymm21
  bbaf87:	1a 
  bbaf88:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x540],ymm22
  bbaf8f:	2a 
  bbaf90:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x360],ymm23
  bbaf97:	1b 
  bbaf98:	c5 7d 29 ac 24 60 05 	vmovapd YMMWORD PTR [rsp+0x560],ymm13
  bbaf9f:	00 00 
  bbafa1:	c5 fd 28 74 24 60    	vmovapd ymm6,YMMWORD PTR [rsp+0x60]
  bbafa7:	c5 fd 29 b4 24 80 03 	vmovapd YMMWORD PTR [rsp+0x380],ymm6
  bbafae:	00 00 
  bbafb0:	c5 7d 28 24 24       	vmovapd ymm12,YMMWORD PTR [rsp]
  bbafb5:	c5 7d 29 a4 24 80 05 	vmovapd YMMWORD PTR [rsp+0x580],ymm12
  bbafbc:	00 00 
  bbafbe:	c5 7d 28 b4 24 20 02 	vmovapd ymm14,YMMWORD PTR [rsp+0x220]
  bbafc5:	00 00 
  bbafc7:	c5 7d 29 b4 24 a0 03 	vmovapd YMMWORD PTR [rsp+0x3a0],ymm14
  bbafce:	00 00 
  bbafd0:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x200]
  bbafd7:	10 
  bbafd8:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x5a0],ymm26
  bbafdf:	2d 
  bbafe0:	c5 fd 29 8c 24 c0 03 	vmovapd YMMWORD PTR [rsp+0x3c0],ymm1
  bbafe7:	00 00 
  bbafe9:	c5 fd 29 a4 24 c0 05 	vmovapd YMMWORD PTR [rsp+0x5c0],ymm4
  bbaff0:	00 00 
  bbaff2:	c5 fd 28 84 24 e0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  bbaff9:	00 00 
  bbaffb:	c5 fd 29 84 24 e0 03 	vmovapd YMMWORD PTR [rsp+0x3e0],ymm0
  bbb002:	00 00 
  bbb004:	c5 7d 29 bc 24 e0 05 	vmovapd YMMWORD PTR [rsp+0x5e0],ymm15
  bbb00b:	00 00 
  bbb00d:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x400],ymm16
  bbb014:	20 
  bbb015:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x600],ymm17
  bbb01c:	30 
  bbb01d:	c5 7d 29 8c 24 20 04 	vmovapd YMMWORD PTR [rsp+0x420],ymm9
  bbb024:	00 00 
  bbb026:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x620],ymm27
  bbb02d:	31 
  bbb02e:	c5 fd 29 94 24 40 04 	vmovapd YMMWORD PTR [rsp+0x440],ymm2
  bbb035:	00 00 
  bbb037:	c5 7d 29 9c 24 40 06 	vmovapd YMMWORD PTR [rsp+0x640],ymm11
  bbb03e:	00 00 
  bbb040:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x460],ymm31
  bbb047:	23 
  bbb048:	62 61 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x660],ymm30
  bbb04f:	33 
  bbb050:	62 61 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x480],ymm25
  bbb057:	24 
  bbb058:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x680],ymm20
  bbb05f:	34 
  bbb060:	c5 7d 29 94 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm10
  bbb067:	00 00 
  bbb069:	c5 fd 28 15 ef ba 4b 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4bbaef]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  bbb070:	ff 
  bbb071:	62 72 ed 28 7f d3    	vpermt2pd ymm10,ymm2,ymm3
  bbb077:	62 21 fd 28 28 e2    	vmovapd ymm28,ymm18
  bbb07d:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm19
  bbb084:	13 
  bbb085:	62 22 ed 28 7f e3    	vpermt2pd ymm28,ymm2,ymm19
  bbb08b:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm24
  bbb092:	0e 
  bbb093:	62 42 ed 28 7f c0    	vpermt2pd ymm24,ymm2,ymm8
  bbb099:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x80],ymm29
  bbb0a0:	04 
  bbb0a1:	62 91 fd 28 28 fd    	vmovapd ymm7,ymm29
  bbb0a7:	62 f2 ed 28 7f fd    	vpermt2pd ymm7,ymm2,ymm5
  bbb0ad:	62 21 fd 28 28 ee    	vmovapd ymm29,ymm22
  bbb0b3:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm21
  bbb0ba:	14 
  bbb0bb:	62 22 ed 28 7f ed    	vpermt2pd ymm29,ymm2,ymm21
  bbb0c1:	c5 7d 29 ac 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm13
  bbb0c8:	00 00 
  bbb0ca:	c4 41 7d 28 c5       	vmovapd ymm8,ymm13
  bbb0cf:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm23
  bbb0d6:	0d 
  bbb0d7:	62 32 ed 28 7f c7    	vpermt2pd ymm8,ymm2,ymm23
  bbb0dd:	62 72 ed 28 7f e6    	vpermt2pd ymm12,ymm2,ymm6
  bbb0e3:	62 c1 fd 28 28 ee    	vmovapd ymm21,ymm14
  bbb0e9:	62 11 fd 28 28 f2    	vmovapd ymm14,ymm26
  bbb0ef:	62 32 ed 28 7f f5    	vpermt2pd ymm14,ymm2,ymm21
  bbb0f5:	c5 fd 28 dc          	vmovapd ymm3,ymm4
  bbb0f9:	c5 fd 29 8c 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm1
  bbb100:	00 00 
  bbb102:	62 f2 ed 28 7f d9    	vpermt2pd ymm3,ymm2,ymm1
  bbb108:	c5 7d 29 7c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm15
  bbb10e:	c5 7d 28 e8          	vmovapd ymm13,ymm0
  bbb112:	62 72 ed 28 7f f8    	vpermt2pd ymm15,ymm2,ymm0
  bbb118:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0xe0],ymm17
  bbb11f:	07 
  bbb120:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x140],ymm16
  bbb127:	0a 
  bbb128:	62 a2 ed 28 7f c8    	vpermt2pd ymm17,ymm2,ymm16
  bbb12e:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0xa0],ymm27
  bbb135:	05 
  bbb136:	62 91 fd 28 28 f3    	vmovapd ymm6,ymm27
  bbb13c:	62 01 fd 28 28 d9    	vmovapd ymm27,ymm25
  bbb142:	62 01 fd 28 28 ce    	vmovapd ymm25,ymm30
  bbb148:	62 a1 fd 28 28 dc    	vmovapd ymm19,ymm20
  bbb14e:	c5 7d 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm9
  bbb155:	00 00 
  bbb157:	62 d2 ed 28 7f f1    	vpermt2pd ymm6,ymm2,ymm9
  bbb15d:	62 81 fd 28 28 c7    	vmovapd ymm16,ymm31
  bbb163:	c5 fd 28 44 24 40    	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  bbb169:	62 c1 fd 28 28 e3    	vmovapd ymm20,ymm11
  bbb16f:	62 e2 ed 28 7f e0    	vpermt2pd ymm20,ymm2,ymm0
  bbb175:	62 01 fd 28 28 fe    	vmovapd ymm31,ymm30
  bbb17b:	62 22 ed 28 7f f8    	vpermt2pd ymm31,ymm2,ymm16
  bbb181:	62 21 fd 28 28 f3    	vmovapd ymm30,ymm19
  bbb187:	62 02 ed 28 7f f3    	vpermt2pd ymm30,ymm2,ymm27
  bbb18d:	49 83 fb 0b          	cmp    r11,0xb
  bbb191:	0f 82 49 f0 ff ff    	jb     bba1e0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xee0>
  bbb197:	c4 21 7d 11 14 0e    	vmovupd YMMWORD PTR [rsi+r9*1],ymm10
  bbb19d:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xe0],ymm28
  bbb1a4:	07 
  bbb1a5:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1c0],ymm24
  bbb1ac:	0e 
  bbb1ad:	c4 a1 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2a0],ymm7
  bbb1b4:	02 00 00 
  bbb1b7:	62 21 fd 28 11 6c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x380],ymm29
  bbb1be:	1c 
  bbb1bf:	c4 21 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x460],ymm8
  bbb1c6:	04 00 00 
  bbb1c9:	c4 21 7d 11 a4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0x540],ymm12
  bbb1d0:	05 00 00 
  bbb1d3:	c4 21 7d 11 b4 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x620],ymm14
  bbb1da:	06 00 00 
  bbb1dd:	c4 a1 7d 11 9c 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x700],ymm3
  bbb1e4:	07 00 00 
  bbb1e7:	c4 21 7d 11 bc 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7e0],ymm15
  bbb1ee:	07 00 00 
  bbb1f1:	62 a1 fd 28 11 4c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x8c0],ymm17
  bbb1f8:	46 
  bbb1f9:	c4 a1 7d 11 b4 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x9a0],ymm6
  bbb200:	09 00 00 
  bbb203:	62 a1 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xa80],ymm20
  bbb20a:	54 
  bbb20b:	62 21 fd 28 11 7c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm31
  bbb212:	5b 
  bbb213:	62 21 fd 28 11 74 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xc40],ymm30
  bbb21a:	62 
  bbb21b:	e9 86 f1 ff ff       	jmp    bba3a6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x10a6>
  bbb220:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  bbb224:	5b                   	pop    rbx
  bbb225:	41 5e                	pop    r14
  bbb227:	5d                   	pop    rbp
  bbb228:	c5 f8 77             	vzeroupper
  bbb22b:	c3                   	ret
