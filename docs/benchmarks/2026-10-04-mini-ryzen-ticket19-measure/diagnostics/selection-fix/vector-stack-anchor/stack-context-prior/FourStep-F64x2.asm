
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000e0e280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute>:
  e0e280:	55                   	push   rbp
  e0e281:	41 57                	push   r15
  e0e283:	41 56                	push   r14
  e0e285:	41 55                	push   r13
  e0e287:	41 54                	push   r12
  e0e289:	53                   	push   rbx
  e0e28a:	48 81 ec 88 02 00 00 	sub    rsp,0x288
  e0e291:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  e0e298:	00 
  e0e299:	48 89 94 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rdx
  e0e2a0:	00 
  e0e2a1:	48 89 b4 24 48 01 00 	mov    QWORD PTR [rsp+0x148],rsi
  e0e2a8:	00 
  e0e2a9:	45 85 c0             	test   r8d,r8d
  e0e2ac:	0f 84 e7 00 00 00    	je     e0e399 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x119>
  e0e2b2:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  e0e2b9:	49 83 f8 01          	cmp    r8,0x1
  e0e2bd:	0f 86 bd 01 00 00    	jbe    e0e480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x200>
  e0e2c3:	48 8b 4f 58          	mov    rcx,QWORD PTR [rdi+0x58]
  e0e2c7:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  e0e2cb:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e0e2cf:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  e0e2d3:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  e0e2d7:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  e0e2db:	48 01 c2             	add    rdx,rax
  e0e2de:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  e0e2e5:	00 
  e0e2e6:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e0e2ea:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e0e2ef:	48 01 c2             	add    rdx,rax
  e0e2f2:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  e0e2f9:	00 
  e0e2fa:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  e0e2fe:	4c 8b 8f 80 00 00 00 	mov    r9,QWORD PTR [rdi+0x80]
  e0e305:	f2 0f 10 05 c3 65 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2665c3]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e0e30c:	ff 
  e0e30d:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e0e312:	4b 8d 34 00          	lea    rsi,[r8+r8*1]
  e0e316:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e0e31d:	3f 
  e0e31e:	0f 94 84 24 e8 00 00 	sete   BYTE PTR [rsp+0xe8]
  e0e325:	00 
  e0e326:	48 85 f6             	test   rsi,rsi
  e0e329:	0f 84 7b 58 00 00    	je     e13baa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x592a>
  e0e32f:	48 c1 e2 04          	shl    rdx,0x4
  e0e333:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e0e33a:	00 
  e0e33b:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e0e342:	00 
  e0e343:	48 01 d0             	add    rax,rdx
  e0e346:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  e0e34d:	00 
  e0e34e:	4c 89 8c 24 80 02 00 	mov    QWORD PTR [rsp+0x280],r9
  e0e355:	00 
  e0e356:	4c 89 c8             	mov    rax,r9
  e0e359:	48 c1 e0 04          	shl    rax,0x4
  e0e35d:	48 01 c0             	add    rax,rax
  e0e360:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  e0e365:	48 89 bc 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdi
  e0e36c:	00 
  e0e36d:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  e0e374:	48 89 d8             	mov    rax,rbx
  e0e377:	48 09 f0             	or     rax,rsi
  e0e37a:	48 c1 e8 20          	shr    rax,0x20
  e0e37e:	48 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rsi
  e0e385:	00 
  e0e386:	0f 84 36 3e 00 00    	je     e121c2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f42>
  e0e38c:	48 89 d8             	mov    rax,rbx
  e0e38f:	31 d2                	xor    edx,edx
  e0e391:	48 f7 f6             	div    rsi
  e0e394:	e9 2f 3e 00 00       	jmp    e121c8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f48>
  e0e399:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  e0e3a0:	49 83 f8 01          	cmp    r8,0x1
  e0e3a4:	0f 86 18 10 00 00    	jbe    e0f3c2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1142>
  e0e3aa:	48 8b 4f 58          	mov    rcx,QWORD PTR [rdi+0x58]
  e0e3ae:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  e0e3b2:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e0e3b6:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  e0e3ba:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  e0e3be:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  e0e3c2:	48 01 c2             	add    rdx,rax
  e0e3c5:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  e0e3cc:	00 
  e0e3cd:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e0e3d1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e0e3d6:	48 01 c2             	add    rdx,rax
  e0e3d9:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  e0e3e0:	00 
  e0e3e1:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  e0e3e5:	4c 8b 8f 80 00 00 00 	mov    r9,QWORD PTR [rdi+0x80]
  e0e3ec:	f2 0f 10 05 dc 64 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2664dc]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e0e3f3:	ff 
  e0e3f4:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e0e3f9:	4b 8d 34 00          	lea    rsi,[r8+r8*1]
  e0e3fd:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e0e404:	3f 
  e0e405:	0f 94 84 24 e8 00 00 	sete   BYTE PTR [rsp+0xe8]
  e0e40c:	00 
  e0e40d:	48 85 f6             	test   rsi,rsi
  e0e410:	0f 84 94 57 00 00    	je     e13baa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x592a>
  e0e416:	48 c1 e2 04          	shl    rdx,0x4
  e0e41a:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e0e421:	00 
  e0e422:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e0e429:	00 
  e0e42a:	48 01 d0             	add    rax,rdx
  e0e42d:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  e0e434:	00 
  e0e435:	4c 89 8c 24 80 02 00 	mov    QWORD PTR [rsp+0x280],r9
  e0e43c:	00 
  e0e43d:	4c 89 c8             	mov    rax,r9
  e0e440:	48 c1 e0 04          	shl    rax,0x4
  e0e444:	48 01 c0             	add    rax,rax
  e0e447:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  e0e44c:	48 89 bc 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdi
  e0e453:	00 
  e0e454:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  e0e45b:	48 89 d8             	mov    rax,rbx
  e0e45e:	48 09 f0             	or     rax,rsi
  e0e461:	48 c1 e8 20          	shr    rax,0x20
  e0e465:	48 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rsi
  e0e46c:	00 
  e0e46d:	0f 84 f2 43 00 00    	je     e12865 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45e5>
  e0e473:	48 89 d8             	mov    rax,rbx
  e0e476:	31 d2                	xor    edx,edx
  e0e478:	48 f7 f6             	div    rsi
  e0e47b:	e9 eb 43 00 00       	jmp    e1286b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45eb>
  e0e480:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  e0e484:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  e0e488:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e0e48c:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  e0e490:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  e0e494:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e0e499:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  e0e49d:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e0e4a1:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  e0e4a6:	48 01 ca             	add    rdx,rcx
  e0e4a9:	48 89 94 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rdx
  e0e4b0:	00 
  e0e4b1:	4c 8b 6f 78          	mov    r13,QWORD PTR [rdi+0x78]
  e0e4b5:	49 c1 e5 04          	shl    r13,0x4
  e0e4b9:	4c 03 ac 24 98 00 00 	add    r13,QWORD PTR [rsp+0x98]
  e0e4c0:	00 
  e0e4c1:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  e0e4c8:	48 c1 e1 04          	shl    rcx,0x4
  e0e4cc:	4c 01 e9             	add    rcx,r13
  e0e4cf:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
  e0e4d4:	f2 0f 10 05 f4 63 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2663f4]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e0e4db:	ff 
  e0e4dc:	0f 16 c0             	movlhps xmm0,xmm0
  e0e4df:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  e0e4e4:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  e0e4eb:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  e0e4f2:	88 8c 24 d8 00 00 00 	mov    BYTE PTR [rsp+0xd8],cl
  e0e4f9:	20 ca                	and    dl,cl
  e0e4fb:	88 94 24 88 00 00 00 	mov    BYTE PTR [rsp+0x88],dl
  e0e502:	48 89 f1             	mov    rcx,rsi
  e0e505:	48 d1 e9             	shr    rcx,1
  e0e508:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  e0e50c:	48 29 ce             	sub    rsi,rcx
  e0e50f:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  e0e514:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
  e0e519:	0f 84 01 1e 00 00    	je     e10320 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20a0>
  e0e51f:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e0e524:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  e0e528:	48 89 94 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdx
  e0e52f:	00 
  e0e530:	4c 89 e2             	mov    rdx,r12
  e0e533:	48 d1 ea             	shr    rdx,1
  e0e536:	4d 89 e0             	mov    r8,r12
  e0e539:	49 29 d0             	sub    r8,rdx
  e0e53c:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  e0e543:	00 
  e0e544:	48 8b 7f 70          	mov    rdi,QWORD PTR [rdi+0x70]
  e0e548:	f3 4c 0f bc c7       	tzcnt  r8,rdi
  e0e54d:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  e0e552:	49 b8 ff ff ff ff ff 	movabs r8,0x7ffffffffffffff
  e0e559:	ff ff 07 
  e0e55c:	48 89 bc 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rdi
  e0e563:	00 
  e0e564:	49 01 f8             	add    r8,rdi
  e0e567:	4c 89 44 24 68       	mov    QWORD PTR [rsp+0x68],r8
  e0e56c:	48 8d 79 20          	lea    rdi,[rcx+0x20]
  e0e570:	48 89 bc 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdi
  e0e577:	00 
  e0e578:	49 8d 7f ff          	lea    rdi,[r15-0x1]
  e0e57c:	48 89 bc 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rdi
  e0e583:	00 
  e0e584:	48 01 c8             	add    rax,rcx
  e0e587:	48 83 c0 10          	add    rax,0x10
  e0e58b:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  e0e592:	00 
  e0e593:	4c 89 e0             	mov    rax,r12
  e0e596:	48 c1 e0 05          	shl    rax,0x5
  e0e59a:	48 89 84 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rax
  e0e5a1:	00 
  e0e5a2:	4c 89 e0             	mov    rax,r12
  e0e5a5:	48 c1 e0 04          	shl    rax,0x4
  e0e5a9:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e0e5ae:	4c 29 e2             	sub    rdx,r12
  e0e5b1:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e0e5b8:	00 
  e0e5b9:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e0e5c0:	00 
  e0e5c1:	48 8d 48 20          	lea    rcx,[rax+0x20]
  e0e5c5:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  e0e5cc:	00 
  e0e5cd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e5d1:	48 89 ca             	mov    rdx,rcx
  e0e5d4:	48 c1 e2 05          	shl    rdx,0x5
  e0e5d8:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  e0e5df:	00 
  e0e5e0:	45 31 db             	xor    r11d,r11d
  e0e5e3:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e0e5ea:	00 
  e0e5eb:	48 89 ca             	mov    rdx,rcx
  e0e5ee:	4c 89 bc 24 38 01 00 	mov    QWORD PTR [rsp+0x138],r15
  e0e5f5:	00 
  e0e5f6:	eb 56                	jmp    e0e64e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3ce>
  e0e5f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e0e5ff:	00 
  e0e600:	49 83 c3 02          	add    r11,0x2
  e0e604:	48 8b b4 24 40 01 00 	mov    rsi,QWORD PTR [rsp+0x140]
  e0e60b:	00 
  e0e60c:	48 ff ce             	dec    rsi
  e0e60f:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
  e0e616:	00 
  e0e617:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e0e61e:	00 
  e0e61f:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e0e626:	00 
  e0e627:	48 83 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],0x40
  e0e62e:	00 40 
  e0e630:	48 85 f6             	test   rsi,rsi
  e0e633:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e0e638:	4c 8b bc 24 38 01 00 	mov    r15,QWORD PTR [rsp+0x138]
  e0e63f:	00 
  e0e640:	48 8b 94 24 f0 00 00 	mov    rdx,QWORD PTR [rsp+0xf0]
  e0e647:	00 
  e0e648:	0f 84 d2 1c 00 00    	je     e10320 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20a0>
  e0e64e:	48 83 ea 02          	sub    rdx,0x2
  e0e652:	b8 02 00 00 00       	mov    eax,0x2
  e0e657:	48 83 d8 00          	sbb    rax,0x0
  e0e65b:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e0e662:	00 
  e0e663:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e0e667:	4c 29 d8             	sub    rax,r11
  e0e66a:	48 83 f8 02          	cmp    rax,0x2
  e0e66e:	41 b8 02 00 00 00    	mov    r8d,0x2
  e0e674:	4c 0f 42 c0          	cmovb  r8,rax
  e0e678:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
  e0e67d:	4c 89 df             	mov    rdi,r11
  e0e680:	48 c1 e7 04          	shl    rdi,0x4
  e0e684:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e0e68b:	00 
  e0e68c:	48 83 f8 01          	cmp    rax,0x1
  e0e690:	48 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rsi
  e0e697:	00 
  e0e698:	48 89 94 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdx
  e0e69f:	00 
  e0e6a0:	76 5e                	jbe    e0e700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x480>
  e0e6a2:	4d 85 ff             	test   r15,r15
  e0e6a5:	0f 84 23 55 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e0e6ab:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0e6b0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e0e6b3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e0e6b7:	48 83 f8 0d          	cmp    rax,0xd
  e0e6bb:	0f 87 d1 54 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e0e6c1:	48 8d 0d 7c 56 29 ff 	lea    rcx,[rip+0xffffffffff29567c]        # a3d44 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x311f4>
  e0e6c8:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0e6cc:	48 01 c8             	add    rax,rcx
  e0e6cf:	ff e0                	jmp    rax
  e0e6d1:	4c 89 ee             	mov    rsi,r13
  e0e6d4:	4c 89 e2             	mov    rdx,r12
  e0e6d7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e6db:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e6e0:	e8 1b 7f fd ff       	call   de6600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e6e5:	49 83 ff 02          	cmp    r15,0x2
  e0e6e9:	0f 83 a1 03 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e6ef:	e9 0c 08 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e6f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0e6fb:	00 00 00 00 00 
  e0e700:	4d 85 ff             	test   r15,r15
  e0e703:	0f 84 c5 54 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e0e709:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0e70e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e0e711:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e0e715:	48 83 f8 0d          	cmp    rax,0xd
  e0e719:	0f 87 73 54 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e0e71f:	48 8d 0d aa 55 29 ff 	lea    rcx,[rip+0xffffffffff2955aa]        # a3cd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31180>
  e0e726:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0e72a:	48 01 c8             	add    rax,rcx
  e0e72d:	ff e0                	jmp    rax
  e0e72f:	4c 89 ee             	mov    rsi,r13
  e0e732:	4c 89 e2             	mov    rdx,r12
  e0e735:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e739:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e73e:	e8 7d 5e fe ff       	call   df45c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e743:	49 83 ff 02          	cmp    r15,0x2
  e0e747:	0f 83 73 05 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e74d:	e9 ae 07 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e752:	4c 89 ee             	mov    rsi,r13
  e0e755:	4c 89 e2             	mov    rdx,r12
  e0e758:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e75c:	e8 df 7c fe ff       	call   df6440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e761:	49 83 ff 02          	cmp    r15,0x2
  e0e765:	0f 83 25 03 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e76b:	e9 90 07 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e770:	4c 89 ee             	mov    rsi,r13
  e0e773:	4c 89 e2             	mov    rdx,r12
  e0e776:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e77a:	e8 01 8f fd ff       	call   de7680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e77f:	49 83 ff 02          	cmp    r15,0x2
  e0e783:	0f 83 37 05 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e789:	e9 72 07 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e78e:	4c 89 ee             	mov    rsi,r13
  e0e791:	4c 89 e2             	mov    rdx,r12
  e0e794:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e798:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e79d:	e8 de 11 fe ff       	call   def980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e7a2:	49 83 ff 02          	cmp    r15,0x2
  e0e7a6:	0f 83 e4 02 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e7ac:	e9 4f 07 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e7b1:	4c 89 ee             	mov    rsi,r13
  e0e7b4:	4c 89 e2             	mov    rdx,r12
  e0e7b7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e7bb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e7c0:	e8 7b 3c fe ff       	call   df2440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e7c5:	49 83 ff 02          	cmp    r15,0x2
  e0e7c9:	0f 83 f1 04 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e7cf:	e9 2c 07 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e7d4:	4c 89 ee             	mov    rsi,r13
  e0e7d7:	4c 89 e2             	mov    rdx,r12
  e0e7da:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e7de:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e7e3:	e8 d8 8f fe ff       	call   df77c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e7e8:	49 83 ff 02          	cmp    r15,0x2
  e0e7ec:	0f 83 9e 02 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e7f2:	e9 09 07 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e7f7:	4c 89 ee             	mov    rsi,r13
  e0e7fa:	4c 89 e2             	mov    rdx,r12
  e0e7fd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e801:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e806:	e8 75 36 fd ff       	call   de1e80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e80b:	49 83 ff 02          	cmp    r15,0x2
  e0e80f:	0f 83 ab 04 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e815:	e9 e6 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e81a:	4c 89 ee             	mov    rsi,r13
  e0e81d:	4c 89 e2             	mov    rdx,r12
  e0e820:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e824:	e8 17 80 fd ff       	call   de6840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e829:	49 83 ff 02          	cmp    r15,0x2
  e0e82d:	0f 83 5d 02 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e833:	e9 c8 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e838:	4c 89 ee             	mov    rsi,r13
  e0e83b:	4c 89 e2             	mov    rdx,r12
  e0e83e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e842:	e8 b9 6f ff ff       	call   e05800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e847:	49 83 ff 02          	cmp    r15,0x2
  e0e84b:	0f 83 6f 04 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e851:	e9 aa 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e856:	4c 89 ee             	mov    rsi,r13
  e0e859:	4c 89 e2             	mov    rdx,r12
  e0e85c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e860:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e865:	e8 96 46 fe ff       	call   df2f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e86a:	49 83 ff 02          	cmp    r15,0x2
  e0e86e:	0f 83 1c 02 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e874:	e9 87 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e879:	4c 89 ee             	mov    rsi,r13
  e0e87c:	4c 89 e2             	mov    rdx,r12
  e0e87f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e883:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e888:	e8 f3 36 fe ff       	call   df1f80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e88d:	49 83 ff 02          	cmp    r15,0x2
  e0e891:	0f 83 29 04 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e897:	e9 64 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e89c:	4c 89 ee             	mov    rsi,r13
  e0e89f:	4c 89 e2             	mov    rdx,r12
  e0e8a2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e8a6:	e8 55 bd fe ff       	call   dfa600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e8ab:	49 83 ff 02          	cmp    r15,0x2
  e0e8af:	0f 83 db 01 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e8b5:	e9 46 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e8ba:	4c 89 ee             	mov    rsi,r13
  e0e8bd:	4c 89 e2             	mov    rdx,r12
  e0e8c0:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e8c4:	e8 b7 9f ff ff       	call   e08880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e8c9:	49 83 ff 02          	cmp    r15,0x2
  e0e8cd:	0f 83 ed 03 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e8d3:	e9 28 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e8d8:	4c 89 ee             	mov    rsi,r13
  e0e8db:	4c 89 e2             	mov    rdx,r12
  e0e8de:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e8e2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e8e7:	e8 14 db ff ff       	call   e0c400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e8ec:	49 83 ff 02          	cmp    r15,0x2
  e0e8f0:	0f 83 9a 01 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e8f6:	e9 05 06 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e8fb:	4c 89 ee             	mov    rsi,r13
  e0e8fe:	4c 89 e2             	mov    rdx,r12
  e0e901:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e905:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e90a:	e8 71 6d fe ff       	call   df5680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e90f:	49 83 ff 02          	cmp    r15,0x2
  e0e913:	0f 83 a7 03 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e919:	e9 e2 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e91e:	4c 89 ee             	mov    rsi,r13
  e0e921:	4c 89 e2             	mov    rdx,r12
  e0e924:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e928:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e92d:	e8 8e 7d fd ff       	call   de66c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e932:	49 83 ff 02          	cmp    r15,0x2
  e0e936:	0f 83 54 01 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e93c:	e9 bf 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e941:	4c 89 ee             	mov    rsi,r13
  e0e944:	4c 89 e2             	mov    rdx,r12
  e0e947:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e94b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e950:	e8 2b 9b ff ff       	call   e08480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e955:	49 83 ff 02          	cmp    r15,0x2
  e0e959:	0f 83 61 03 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e95f:	e9 9c 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e964:	4c 89 ee             	mov    rsi,r13
  e0e967:	4c 89 e2             	mov    rdx,r12
  e0e96a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e96e:	e8 cd 33 ff ff       	call   e01d40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e973:	49 83 ff 02          	cmp    r15,0x2
  e0e977:	0f 83 13 01 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e97d:	e9 7e 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e982:	4c 89 ee             	mov    rsi,r13
  e0e985:	4c 89 e2             	mov    rdx,r12
  e0e988:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e98c:	e8 af 4f fd ff       	call   de3940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e991:	49 83 ff 02          	cmp    r15,0x2
  e0e995:	0f 83 25 03 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e99b:	e9 60 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e9a0:	4c 89 ee             	mov    rsi,r13
  e0e9a3:	4c 89 e2             	mov    rdx,r12
  e0e9a6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e9aa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e9af:	e8 8c b8 fd ff       	call   dea240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e9b4:	49 83 ff 02          	cmp    r15,0x2
  e0e9b8:	0f 83 d2 00 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0e9be:	e9 3d 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e9c3:	4c 89 ee             	mov    rsi,r13
  e0e9c6:	4c 89 e2             	mov    rdx,r12
  e0e9c9:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e9cd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e9d2:	e8 29 fe fe ff       	call   dfe800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e9d7:	49 83 ff 02          	cmp    r15,0x2
  e0e9db:	0f 83 df 02 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0e9e1:	e9 1a 05 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0e9e6:	4c 89 ee             	mov    rsi,r13
  e0e9e9:	4c 89 e2             	mov    rdx,r12
  e0e9ec:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0e9f0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0e9f5:	e8 46 1a fe ff       	call   df0440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0e9fa:	49 83 ff 02          	cmp    r15,0x2
  e0e9fe:	0f 83 8c 00 00 00    	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0ea04:	e9 f7 04 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ea09:	4c 89 ee             	mov    rsi,r13
  e0ea0c:	4c 89 e2             	mov    rdx,r12
  e0ea0f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0ea13:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ea18:	e8 23 29 ff ff       	call   e01340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0ea1d:	49 83 ff 02          	cmp    r15,0x2
  e0ea21:	0f 83 99 02 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0ea27:	e9 d4 04 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ea2c:	4c 89 ee             	mov    rsi,r13
  e0ea2f:	4c 89 e2             	mov    rdx,r12
  e0ea32:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0ea36:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ea3b:	e8 80 9c fe ff       	call   df86c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0ea40:	49 83 ff 02          	cmp    r15,0x2
  e0ea44:	73 4a                	jae    e0ea90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e0ea46:	e9 b5 04 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ea4b:	4c 89 ee             	mov    rsi,r13
  e0ea4e:	4c 89 e2             	mov    rdx,r12
  e0ea51:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0ea55:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ea5a:	e8 a1 17 ff ff       	call   e00200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0ea5f:	49 83 ff 02          	cmp    r15,0x2
  e0ea63:	0f 83 57 02 00 00    	jae    e0ecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e0ea69:	e9 92 04 00 00       	jmp    e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ea6e:	4c 89 ee             	mov    rsi,r13
  e0ea71:	4c 89 e2             	mov    rdx,r12
  e0ea74:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0ea78:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ea7d:	e8 7e dd fd ff       	call   dec800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0ea82:	49 83 ff 02          	cmp    r15,0x2
  e0ea86:	0f 82 74 04 00 00    	jb     e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ea8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0ea90:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0ea95:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e0ea98:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e0ea9f:	00 
  e0eaa0:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e0eaa7:	00 
  e0eaa8:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e0eaad:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e0eab2:	eb 40                	jmp    e0eaf4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x874>
  e0eab4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0eab9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0eac0:	00 
  e0eac1:	4c 89 f7             	mov    rdi,r14
  e0eac4:	4c 89 ee             	mov    rsi,r13
  e0eac7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eacc:	48 89 d9             	mov    rcx,rbx
  e0eacf:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0ead6:	00 
  e0ead7:	e8 a4 b1 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eadc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0eae0:	49 0f af df          	imul   rbx,r15
  e0eae4:	49 83 c4 18          	add    r12,0x18
  e0eae8:	4c 89 e8             	mov    rax,r13
  e0eaeb:	48 ff cd             	dec    rbp
  e0eaee:	0f 84 0c 04 00 00    	je     e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0eaf4:	4d 89 f5             	mov    r13,r14
  e0eaf7:	49 89 c6             	mov    r14,rax
  e0eafa:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e0eaff:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e0eb03:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e0eb08:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e0eb0f:	00 
  e0eb10:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e0eb14:	48 83 f8 0e          	cmp    rax,0xe
  e0eb18:	0f 87 0a 50 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e0eb1e:	48 8d 0d 57 52 29 ff 	lea    rcx,[rip+0xffffffffff295257]        # a3d7c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3122c>
  e0eb25:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0eb29:	48 01 c8             	add    rax,rcx
  e0eb2c:	ff e0                	jmp    rax
  e0eb2e:	4c 89 f7             	mov    rdi,r14
  e0eb31:	4c 89 ee             	mov    rsi,r13
  e0eb34:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eb39:	48 89 d9             	mov    rcx,rbx
  e0eb3c:	e8 7f 19 f3 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eb41:	eb 9d                	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0eb43:	4c 89 f7             	mov    rdi,r14
  e0eb46:	4c 89 ee             	mov    rsi,r13
  e0eb49:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eb4e:	48 89 d9             	mov    rcx,rbx
  e0eb51:	e8 2a 6e f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eb56:	eb 88                	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0eb58:	4c 89 f7             	mov    rdi,r14
  e0eb5b:	4c 89 ee             	mov    rsi,r13
  e0eb5e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eb63:	48 89 d9             	mov    rcx,rbx
  e0eb66:	e8 95 23 f3 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eb6b:	e9 70 ff ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0eb70:	4c 89 f7             	mov    rdi,r14
  e0eb73:	4c 89 ee             	mov    rsi,r13
  e0eb76:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eb7b:	48 89 d9             	mov    rcx,rbx
  e0eb7e:	e8 bd 86 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eb83:	e9 58 ff ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0eb88:	4c 89 f7             	mov    rdi,r14
  e0eb8b:	4c 89 ee             	mov    rsi,r13
  e0eb8e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eb93:	48 89 d9             	mov    rcx,rbx
  e0eb96:	e8 25 4d f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eb9b:	e9 40 ff ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0eba0:	4c 89 f7             	mov    rdi,r14
  e0eba3:	4c 89 ee             	mov    rsi,r13
  e0eba6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ebab:	48 89 d9             	mov    rcx,rbx
  e0ebae:	e8 cd 1c f3 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ebb3:	e9 28 ff ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ebb8:	4c 89 f7             	mov    rdi,r14
  e0ebbb:	4c 89 ee             	mov    rsi,r13
  e0ebbe:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ebc3:	48 89 d9             	mov    rcx,rbx
  e0ebc6:	e8 35 1f f3 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ebcb:	e9 10 ff ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ebd0:	4c 89 f7             	mov    rdi,r14
  e0ebd3:	4c 89 ee             	mov    rsi,r13
  e0ebd6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ebdb:	48 89 d9             	mov    rcx,rbx
  e0ebde:	e8 5d 36 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ebe3:	e9 f8 fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ebe8:	4c 89 f7             	mov    rdi,r14
  e0ebeb:	4c 89 ee             	mov    rsi,r13
  e0ebee:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ebf3:	48 89 d9             	mov    rcx,rbx
  e0ebf6:	e8 45 1a f3 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ebfb:	e9 e0 fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ec00:	4c 89 f7             	mov    rdi,r14
  e0ec03:	4c 89 ee             	mov    rsi,r13
  e0ec06:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ec0b:	48 89 d9             	mov    rcx,rbx
  e0ec0e:	e8 ad 27 f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ec13:	e9 c8 fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ec18:	4c 89 f7             	mov    rdi,r14
  e0ec1b:	4c 89 ee             	mov    rsi,r13
  e0ec1e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ec23:	48 89 d9             	mov    rcx,rbx
  e0ec26:	e8 d5 9a f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ec2b:	e9 b0 fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ec30:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ec35:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0ec3c:	00 
  e0ec3d:	4c 89 f7             	mov    rdi,r14
  e0ec40:	4c 89 ee             	mov    rsi,r13
  e0ec43:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ec48:	48 89 d9             	mov    rcx,rbx
  e0ec4b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0ec52:	00 
  e0ec53:	e8 e8 2e f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ec58:	e9 83 fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ec5d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ec62:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0ec69:	00 
  e0ec6a:	4c 89 f7             	mov    rdi,r14
  e0ec6d:	4c 89 ee             	mov    rsi,r13
  e0ec70:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ec75:	48 89 d9             	mov    rcx,rbx
  e0ec78:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0ec7f:	00 
  e0ec80:	e8 fb 5e f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ec85:	e9 56 fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0ec8a:	4c 89 f7             	mov    rdi,r14
  e0ec8d:	4c 89 ee             	mov    rsi,r13
  e0ec90:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ec95:	48 89 d9             	mov    rcx,rbx
  e0ec98:	e8 23 40 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ec9d:	e9 3e fe ff ff       	jmp    e0eae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e0eca2:	4c 89 ee             	mov    rsi,r13
  e0eca5:	4c 89 e2             	mov    rdx,r12
  e0eca8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0ecac:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ecb1:	e8 4a 36 ff ff       	call   e02300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0ecb6:	49 83 ff 02          	cmp    r15,0x2
  e0ecba:	0f 82 40 02 00 00    	jb     e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ecc0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0ecc5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e0ecc8:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e0eccf:	00 
  e0ecd0:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e0ecd7:	00 
  e0ecd8:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e0ecdd:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e0ece2:	eb 40                	jmp    e0ed24 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xaa4>
  e0ece4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ece9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0ecf0:	00 
  e0ecf1:	49 89 d6             	mov    r14,rdx
  e0ecf4:	48 89 d7             	mov    rdi,rdx
  e0ecf7:	4c 89 ee             	mov    rsi,r13
  e0ecfa:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ecff:	48 89 d9             	mov    rcx,rbx
  e0ed02:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0ed09:	00 
  e0ed0a:	e8 71 af f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ed0f:	90                   	nop
  e0ed10:	49 0f af df          	imul   rbx,r15
  e0ed14:	49 83 c4 18          	add    r12,0x18
  e0ed18:	4c 89 e8             	mov    rax,r13
  e0ed1b:	48 ff cd             	dec    rbp
  e0ed1e:	0f 84 dc 01 00 00    	je     e0ef00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e0ed24:	48 89 c2             	mov    rdx,rax
  e0ed27:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e0ed2c:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e0ed30:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e0ed35:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e0ed3c:	00 
  e0ed3d:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e0ed41:	48 83 f8 0e          	cmp    rax,0xe
  e0ed45:	0f 87 dd 4d 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e0ed4b:	4d 89 f5             	mov    r13,r14
  e0ed4e:	48 8d 0d b3 4f 29 ff 	lea    rcx,[rip+0xffffffffff294fb3]        # a3d08 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x311b8>
  e0ed55:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0ed59:	48 01 c8             	add    rax,rcx
  e0ed5c:	ff e0                	jmp    rax
  e0ed5e:	49 89 d6             	mov    r14,rdx
  e0ed61:	48 89 d7             	mov    rdi,rdx
  e0ed64:	4c 89 ee             	mov    rsi,r13
  e0ed67:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ed6c:	48 89 d9             	mov    rcx,rbx
  e0ed6f:	e8 4c 17 f3 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ed74:	eb 9a                	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ed76:	49 89 d6             	mov    r14,rdx
  e0ed79:	48 89 d7             	mov    rdi,rdx
  e0ed7c:	4c 89 ee             	mov    rsi,r13
  e0ed7f:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ed84:	48 89 d9             	mov    rcx,rbx
  e0ed87:	e8 f4 6b f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ed8c:	eb 82                	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ed8e:	49 89 d6             	mov    r14,rdx
  e0ed91:	48 89 d7             	mov    rdi,rdx
  e0ed94:	4c 89 ee             	mov    rsi,r13
  e0ed97:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ed9c:	48 89 d9             	mov    rcx,rbx
  e0ed9f:	e8 5c 21 f3 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eda4:	e9 67 ff ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0eda9:	49 89 d6             	mov    r14,rdx
  e0edac:	48 89 d7             	mov    rdi,rdx
  e0edaf:	4c 89 ee             	mov    rsi,r13
  e0edb2:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0edb7:	48 89 d9             	mov    rcx,rbx
  e0edba:	e8 81 84 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0edbf:	e9 4c ff ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0edc4:	49 89 d6             	mov    r14,rdx
  e0edc7:	48 89 d7             	mov    rdi,rdx
  e0edca:	4c 89 ee             	mov    rsi,r13
  e0edcd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0edd2:	48 89 d9             	mov    rcx,rbx
  e0edd5:	e8 e6 4a f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0edda:	e9 31 ff ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0eddf:	49 89 d6             	mov    r14,rdx
  e0ede2:	48 89 d7             	mov    rdi,rdx
  e0ede5:	4c 89 ee             	mov    rsi,r13
  e0ede8:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eded:	48 89 d9             	mov    rcx,rbx
  e0edf0:	e8 8b 1a f3 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0edf5:	e9 16 ff ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0edfa:	49 89 d6             	mov    r14,rdx
  e0edfd:	48 89 d7             	mov    rdi,rdx
  e0ee00:	4c 89 ee             	mov    rsi,r13
  e0ee03:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ee08:	48 89 d9             	mov    rcx,rbx
  e0ee0b:	e8 f0 1c f3 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ee10:	e9 fb fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ee15:	49 89 d6             	mov    r14,rdx
  e0ee18:	48 89 d7             	mov    rdi,rdx
  e0ee1b:	4c 89 ee             	mov    rsi,r13
  e0ee1e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ee23:	48 89 d9             	mov    rcx,rbx
  e0ee26:	e8 15 34 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ee2b:	e9 e0 fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ee30:	49 89 d6             	mov    r14,rdx
  e0ee33:	48 89 d7             	mov    rdi,rdx
  e0ee36:	4c 89 ee             	mov    rsi,r13
  e0ee39:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ee3e:	48 89 d9             	mov    rcx,rbx
  e0ee41:	e8 fa 17 f3 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ee46:	e9 c5 fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ee4b:	49 89 d6             	mov    r14,rdx
  e0ee4e:	48 89 d7             	mov    rdi,rdx
  e0ee51:	4c 89 ee             	mov    rsi,r13
  e0ee54:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ee59:	48 89 d9             	mov    rcx,rbx
  e0ee5c:	e8 5f 25 f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ee61:	e9 aa fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ee66:	49 89 d6             	mov    r14,rdx
  e0ee69:	48 89 d7             	mov    rdi,rdx
  e0ee6c:	4c 89 ee             	mov    rsi,r13
  e0ee6f:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ee74:	48 89 d9             	mov    rcx,rbx
  e0ee77:	e8 84 98 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0ee7c:	e9 8f fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0ee81:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0ee86:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0ee8d:	00 
  e0ee8e:	49 89 d6             	mov    r14,rdx
  e0ee91:	48 89 d7             	mov    rdi,rdx
  e0ee94:	4c 89 ee             	mov    rsi,r13
  e0ee97:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0ee9c:	48 89 d9             	mov    rcx,rbx
  e0ee9f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0eea6:	00 
  e0eea7:	e8 94 2c f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eeac:	e9 5f fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0eeb1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0eeb6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0eebd:	00 
  e0eebe:	49 89 d6             	mov    r14,rdx
  e0eec1:	48 89 d7             	mov    rdi,rdx
  e0eec4:	4c 89 ee             	mov    rsi,r13
  e0eec7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eecc:	48 89 d9             	mov    rcx,rbx
  e0eecf:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0eed6:	00 
  e0eed7:	e8 a4 5c f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eedc:	e9 2f fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0eee1:	49 89 d6             	mov    r14,rdx
  e0eee4:	48 89 d7             	mov    rdi,rdx
  e0eee7:	4c 89 ee             	mov    rsi,r13
  e0eeea:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0eeef:	48 89 d9             	mov    rcx,rbx
  e0eef2:	e8 c9 3d f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0eef7:	e9 14 fe ff ff       	jmp    e0ed10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e0eefc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0ef00:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e0ef07:	00 
  e0ef08:	74 56                	je     e0ef60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e0ef0a:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e0ef11:	00 
  e0ef12:	48 85 c9             	test   rcx,rcx
  e0ef15:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e0ef1a:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e0ef1f:	0f 84 b9 4c 00 00    	je     e13bde <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x595e>
  e0ef25:	4c 89 e0             	mov    rax,r12
  e0ef28:	48 09 c8             	or     rax,rcx
  e0ef2b:	48 c1 e8 20          	shr    rax,0x20
  e0ef2f:	0f 84 d7 02 00 00    	je     e0f20c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xf8c>
  e0ef35:	4c 89 e0             	mov    rax,r12
  e0ef38:	31 d2                	xor    edx,edx
  e0ef3a:	48 f7 f1             	div    rcx
  e0ef3d:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e0ef44:	00 00 
  e0ef46:	0f 85 d6 02 00 00    	jne    e0f222 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xfa2>
  e0ef4c:	e9 af f6 ff ff       	jmp    e0e600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e0ef51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0ef58:	0f 1f 84 00 00 00 00 
  e0ef5f:	00 
  e0ef60:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e0ef67:	00 00 
  e0ef69:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e0ef6e:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e0ef73:	0f 84 87 f6 ff ff    	je     e0e600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e0ef79:	49 83 c5 10          	add    r13,0x10
  e0ef7d:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  e0ef84:	00 
  e0ef85:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e0ef8c:	00 
  e0ef8d:	48 8b ac 24 a8 00 00 	mov    rbp,QWORD PTR [rsp+0xa8]
  e0ef94:	00 
  e0ef95:	4c 89 e0             	mov    rax,r12
  e0ef98:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e0ef9f:	00 
  e0efa0:	31 d2                	xor    edx,edx
  e0efa2:	eb 4e                	jmp    e0eff2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd72>
  e0efa4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0efab:	00 00 00 00 00 
  e0efb0:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  e0efb5:	48 83 c2 02          	add    rdx,0x2
  e0efb9:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e0efc0:	00 
  e0efc1:	48 ff c9             	dec    rcx
  e0efc4:	48 83 c5 40          	add    rbp,0x40
  e0efc8:	4c 8b 6c 24 28       	mov    r13,QWORD PTR [rsp+0x28]
  e0efcd:	49 83 c5 40          	add    r13,0x40
  e0efd1:	48 83 84 24 b8 00 00 	add    QWORD PTR [rsp+0xb8],0x20
  e0efd8:	00 20 
  e0efda:	48 85 c9             	test   rcx,rcx
  e0efdd:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e0efe2:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e0efe7:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e0efec:	0f 84 0e f6 ff ff    	je     e0e600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e0eff2:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e0eff9:	00 
  e0effa:	48 83 e8 02          	sub    rax,0x2
  e0effe:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  e0f003:	b8 02 00 00 00       	mov    eax,0x2
  e0f008:	48 83 d8 00          	sbb    rax,0x0
  e0f00c:	4c 89 e3             	mov    rbx,r12
  e0f00f:	48 29 d3             	sub    rbx,rdx
  e0f012:	48 83 fb 02          	cmp    rbx,0x2
  e0f016:	b9 02 00 00 00       	mov    ecx,0x2
  e0f01b:	48 0f 43 d9          	cmovae rbx,rcx
  e0f01f:	0f 57 c0             	xorps  xmm0,xmm0
  e0f022:	0f 29 84 24 70 02 00 	movaps XMMWORD PTR [rsp+0x270],xmm0
  e0f029:	00 
  e0f02a:	0f 29 84 24 60 02 00 	movaps XMMWORD PTR [rsp+0x260],xmm0
  e0f031:	00 
  e0f032:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e0f039:	00 
  e0f03a:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  e0f041:	00 
  e0f042:	0f 57 c9             	xorps  xmm1,xmm1
  e0f045:	66 0f 57 db          	xorpd  xmm3,xmm3
  e0f049:	66 0f 57 d2          	xorpd  xmm2,xmm2
  e0f04d:	49 29 d4             	sub    r12,rdx
  e0f050:	0f 84 81 00 00 00    	je     e0f0d7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xe57>
  e0f056:	31 c9                	xor    ecx,ecx
  e0f058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e0f05f:	00 
  e0f060:	66 41 0f 10 44 4d f0 	movupd xmm0,XMMWORD PTR [r13+rcx*2-0x10]
  e0f067:	66 41 0f 10 4c 4d 00 	movupd xmm1,XMMWORD PTR [r13+rcx*2+0x0]
  e0f06e:	66 0f 10 54 4d f0    	movupd xmm2,XMMWORD PTR [rbp+rcx*2-0x10]
  e0f074:	66 0f 10 5c 4d 00    	movupd xmm3,XMMWORD PTR [rbp+rcx*2+0x0]
  e0f07a:	66 0f 28 e1          	movapd xmm4,xmm1
  e0f07e:	66 0f 59 e3          	mulpd  xmm4,xmm3
  e0f082:	66 0f 28 e8          	movapd xmm5,xmm0
  e0f086:	66 0f 59 ea          	mulpd  xmm5,xmm2
  e0f08a:	66 0f 5c ec          	subpd  xmm5,xmm4
  e0f08e:	66 0f 29 ac 0c 60 02 	movapd XMMWORD PTR [rsp+rcx*1+0x260],xmm5
  e0f095:	00 00 
  e0f097:	66 0f 59 ca          	mulpd  xmm1,xmm2
  e0f09b:	66 0f 59 c3          	mulpd  xmm0,xmm3
  e0f09f:	66 0f 58 c1          	addpd  xmm0,xmm1
  e0f0a3:	66 0f 29 84 0c 00 01 	movapd XMMWORD PTR [rsp+rcx*1+0x100],xmm0
  e0f0aa:	00 00 
  e0f0ac:	48 83 c1 10          	add    rcx,0x10
  e0f0b0:	48 ff c8             	dec    rax
  e0f0b3:	75 ab                	jne    e0f060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xde0>
  e0f0b5:	66 0f 28 94 24 60 02 	movapd xmm2,XMMWORD PTR [rsp+0x260]
  e0f0bc:	00 00 
  e0f0be:	66 0f 28 9c 24 70 02 	movapd xmm3,XMMWORD PTR [rsp+0x270]
  e0f0c5:	00 00 
  e0f0c7:	0f 28 84 24 00 01 00 	movaps xmm0,XMMWORD PTR [rsp+0x100]
  e0f0ce:	00 
  e0f0cf:	0f 28 8c 24 10 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x110]
  e0f0d6:	00 
  e0f0d7:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e0f0dc:	4c 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],r13
  e0f0e1:	66 0f 28 e2          	movapd xmm4,xmm2
  e0f0e5:	66 0f 14 e3          	unpcklpd xmm4,xmm3
  e0f0e9:	66 0f 15 d3          	unpckhpd xmm2,xmm3
  e0f0ed:	66 0f 29 a4 24 60 02 	movapd XMMWORD PTR [rsp+0x260],xmm4
  e0f0f4:	00 00 
  e0f0f6:	66 0f 29 94 24 70 02 	movapd XMMWORD PTR [rsp+0x270],xmm2
  e0f0fd:	00 00 
  e0f0ff:	0f 28 d0             	movaps xmm2,xmm0
  e0f102:	0f 16 d1             	movlhps xmm2,xmm1
  e0f105:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e0f109:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  e0f110:	00 
  e0f111:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e0f118:	00 
  e0f119:	4c 39 1c 24          	cmp    QWORD PTR [rsp],r11
  e0f11d:	0f 84 8d fe ff ff    	je     e0efb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd30>
  e0f123:	48 c1 e3 04          	shl    rbx,0x4
  e0f127:	4c 8b bc 24 b8 00 00 	mov    r15,QWORD PTR [rsp+0xb8]
  e0f12e:	00 
  e0f12f:	4c 8b ac 24 e0 00 00 	mov    r13,QWORD PTR [rsp+0xe0]
  e0f136:	00 
  e0f137:	45 31 f6             	xor    r14d,r14d
  e0f13a:	eb 1f                	jmp    e0f15b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xedb>
  e0f13c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0f140:	41 0f 11 0f          	movups XMMWORD PTR [r15],xmm1
  e0f144:	41 0f 11 47 10       	movups XMMWORD PTR [r15+0x10],xmm0
  e0f149:	49 83 c6 10          	add    r14,0x10
  e0f14d:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e0f152:	49 ff cd             	dec    r13
  e0f155:	0f 84 55 fe ff ff    	je     e0efb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd30>
  e0f15b:	42 0f 28 84 34 60 02 	movaps xmm0,XMMWORD PTR [rsp+r14*1+0x260]
  e0f162:	00 00 
  e0f164:	42 0f 28 94 34 00 01 	movaps xmm2,XMMWORD PTR [rsp+r14*1+0x100]
  e0f16b:	00 00 
  e0f16d:	0f 28 c8             	movaps xmm1,xmm0
  e0f170:	0f 16 ca             	movlhps xmm1,xmm2
  e0f173:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e0f177:	49 83 fc 01          	cmp    r12,0x1
  e0f17b:	77 c3                	ja     e0f140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xec0>
  e0f17d:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
  e0f184:	00 
  e0f185:	0f 57 d2             	xorps  xmm2,xmm2
  e0f188:	0f 29 90 d0 00 00 00 	movaps XMMWORD PTR [rax+0xd0],xmm2
  e0f18f:	0f 29 90 c0 00 00 00 	movaps XMMWORD PTR [rax+0xc0],xmm2
  e0f196:	0f 29 90 b0 00 00 00 	movaps XMMWORD PTR [rax+0xb0],xmm2
  e0f19d:	0f 29 90 a0 00 00 00 	movaps XMMWORD PTR [rax+0xa0],xmm2
  e0f1a4:	0f 29 90 90 00 00 00 	movaps XMMWORD PTR [rax+0x90],xmm2
  e0f1ab:	0f 29 90 80 00 00 00 	movaps XMMWORD PTR [rax+0x80],xmm2
  e0f1b2:	0f 29 50 70          	movaps XMMWORD PTR [rax+0x70],xmm2
  e0f1b6:	0f 29 50 60          	movaps XMMWORD PTR [rax+0x60],xmm2
  e0f1ba:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  e0f1be:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  e0f1c2:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  e0f1c6:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  e0f1ca:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  e0f1ce:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  e0f1d1:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e0f1d8:	00 
  e0f1d9:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e0f1e0:	00 
  e0f1e1:	4c 89 ff             	mov    rdi,r15
  e0f1e4:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e0f1eb:	00 
  e0f1ec:	48 89 da             	mov    rdx,rbx
  e0f1ef:	ff 15 eb b4 43 00    	call   QWORD PTR [rip+0x43b4eb]        # 124a6e0 <memcpy@GLIBC_2.14>
  e0f1f5:	49 83 c6 10          	add    r14,0x10
  e0f1f9:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e0f1fe:	49 ff cd             	dec    r13
  e0f201:	0f 85 54 ff ff ff    	jne    e0f15b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xedb>
  e0f207:	e9 a4 fd ff ff       	jmp    e0efb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd30>
  e0f20c:	44 89 e0             	mov    eax,r12d
  e0f20f:	31 d2                	xor    edx,edx
  e0f211:	f7 f1                	div    ecx
  e0f213:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e0f21a:	00 00 
  e0f21c:	0f 84 de f3 ff ff    	je     e0e600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e0f222:	4b 8d 0c 1b          	lea    rcx,[r11+r11*1]
  e0f226:	48 0f af c1          	imul   rax,rcx
  e0f22a:	48 0f af 8c 24 30 01 	imul   rcx,QWORD PTR [rsp+0x130]
  e0f231:	00 00 
  e0f233:	48 8b 94 24 20 01 00 	mov    rdx,QWORD PTR [rsp+0x120]
  e0f23a:	00 
  e0f23b:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e0f23f:	48 8b 94 24 e8 00 00 	mov    rdx,QWORD PTR [rsp+0xe8]
  e0f246:	00 
  e0f247:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
  e0f24b:	49 83 c5 30          	add    r13,0x30
  e0f24f:	48 8b b4 24 d0 00 00 	mov    rsi,QWORD PTR [rsp+0xd0]
  e0f256:	00 
  e0f257:	48 8b bc 24 50 01 00 	mov    rdi,QWORD PTR [rsp+0x150]
  e0f25e:	00 
  e0f25f:	45 31 c0             	xor    r8d,r8d
  e0f262:	eb 43                	jmp    e0f2a7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1027>
  e0f264:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0f26b:	00 00 00 00 00 
  e0f270:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e0f274:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e0f278:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e0f27c:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e0f280:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e0f285:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e0f289:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e0f28e:	48 03 b4 24 f8 00 00 	add    rsi,QWORD PTR [rsp+0xf8]
  e0f295:	00 
  e0f296:	49 83 c5 40          	add    r13,0x40
  e0f29a:	49 83 c0 02          	add    r8,0x2
  e0f29e:	48 ff c7             	inc    rdi
  e0f2a1:	0f 84 59 f3 ff ff    	je     e0e600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e0f2a7:	4d 89 c1             	mov    r9,r8
  e0f2aa:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
  e0f2af:	49 d3 e9             	shr    r9,cl
  e0f2b2:	49 c1 e1 05          	shl    r9,0x5
  e0f2b6:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e0f2bc:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e0f2c3:	4c 89 c1             	mov    rcx,r8
  e0f2c6:	48 23 4c 24 68       	and    rcx,QWORD PTR [rsp+0x68]
  e0f2cb:	48 c1 e1 05          	shl    rcx,0x5
  e0f2cf:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e0f2d4:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e0f2da:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e0f2e0:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e0f2e6:	66 0f 28 ea          	movapd xmm5,xmm2
  e0f2ea:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e0f2ee:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e0f2f3:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e0f2f8:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e0f2fd:	66 0f 59 da          	mulpd  xmm3,xmm2
  e0f301:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e0f305:	66 0f 58 cb          	addpd  xmm1,xmm3
  e0f309:	66 45 0f 10 4d d0    	movupd xmm9,XMMWORD PTR [r13-0x30]
  e0f30f:	66 45 0f 10 55 e0    	movupd xmm10,XMMWORD PTR [r13-0x20]
  e0f315:	66 41 0f 10 6d f0    	movupd xmm5,XMMWORD PTR [r13-0x10]
  e0f31b:	66 41 0f 10 7d 00    	movupd xmm7,XMMWORD PTR [r13+0x0]
  e0f321:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e0f326:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e0f32b:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e0f330:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e0f335:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e0f33a:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e0f33f:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e0f344:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e0f349:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e0f34e:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e0f353:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e0f358:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e0f35d:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e0f361:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e0f365:	66 0f 58 c2          	addpd  xmm0,xmm2
  e0f369:	66 0f 28 d5          	movapd xmm2,xmm5
  e0f36d:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e0f372:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e0f377:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e0f37b:	66 0f 5c d7          	subpd  xmm2,xmm7
  e0f37f:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e0f383:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e0f388:	66 0f 28 e3          	movapd xmm4,xmm3
  e0f38c:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e0f390:	0f 12 d3             	movhlps xmm2,xmm3
  e0f393:	66 0f 28 d9          	movapd xmm3,xmm1
  e0f397:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e0f39b:	0f 12 c1             	movhlps xmm0,xmm1
  e0f39e:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e0f3a5:	00 
  e0f3a6:	0f 85 c4 fe ff ff    	jne    e0f270 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  e0f3ac:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e0f3b1:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e0f3b6:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e0f3b9:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e0f3bd:	e9 cc fe ff ff       	jmp    e0f28e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x100e>
  e0f3c2:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  e0f3c6:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  e0f3ca:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e0f3ce:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  e0f3d2:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  e0f3d6:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e0f3db:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  e0f3df:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e0f3e3:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  e0f3e8:	48 01 ca             	add    rdx,rcx
  e0f3eb:	48 89 94 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rdx
  e0f3f2:	00 
  e0f3f3:	4c 8b 6f 78          	mov    r13,QWORD PTR [rdi+0x78]
  e0f3f7:	49 c1 e5 04          	shl    r13,0x4
  e0f3fb:	4c 03 ac 24 98 00 00 	add    r13,QWORD PTR [rsp+0x98]
  e0f402:	00 
  e0f403:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  e0f40a:	48 c1 e1 04          	shl    rcx,0x4
  e0f40e:	4c 01 e9             	add    rcx,r13
  e0f411:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
  e0f416:	f2 0f 10 05 b2 54 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2654b2]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e0f41d:	ff 
  e0f41e:	0f 16 c0             	movlhps xmm0,xmm0
  e0f421:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  e0f426:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  e0f42d:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  e0f434:	88 8c 24 d8 00 00 00 	mov    BYTE PTR [rsp+0xd8],cl
  e0f43b:	20 ca                	and    dl,cl
  e0f43d:	88 94 24 88 00 00 00 	mov    BYTE PTR [rsp+0x88],dl
  e0f444:	48 89 f1             	mov    rcx,rsi
  e0f447:	48 d1 e9             	shr    rcx,1
  e0f44a:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  e0f44e:	48 29 ce             	sub    rsi,rcx
  e0f451:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  e0f456:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
  e0f45b:	0f 84 a1 0e 00 00    	je     e10302 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2082>
  e0f461:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e0f466:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  e0f46a:	48 89 94 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdx
  e0f471:	00 
  e0f472:	4c 89 e2             	mov    rdx,r12
  e0f475:	48 d1 ea             	shr    rdx,1
  e0f478:	4d 89 e0             	mov    r8,r12
  e0f47b:	49 29 d0             	sub    r8,rdx
  e0f47e:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  e0f485:	00 
  e0f486:	48 8b 7f 70          	mov    rdi,QWORD PTR [rdi+0x70]
  e0f48a:	f3 4c 0f bc c7       	tzcnt  r8,rdi
  e0f48f:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  e0f494:	49 b8 ff ff ff ff ff 	movabs r8,0x7ffffffffffffff
  e0f49b:	ff ff 07 
  e0f49e:	48 89 bc 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rdi
  e0f4a5:	00 
  e0f4a6:	49 01 f8             	add    r8,rdi
  e0f4a9:	4c 89 44 24 68       	mov    QWORD PTR [rsp+0x68],r8
  e0f4ae:	48 8d 79 20          	lea    rdi,[rcx+0x20]
  e0f4b2:	48 89 bc 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdi
  e0f4b9:	00 
  e0f4ba:	49 8d 7f ff          	lea    rdi,[r15-0x1]
  e0f4be:	48 89 bc 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rdi
  e0f4c5:	00 
  e0f4c6:	48 01 c8             	add    rax,rcx
  e0f4c9:	48 83 c0 10          	add    rax,0x10
  e0f4cd:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  e0f4d4:	00 
  e0f4d5:	4c 89 e0             	mov    rax,r12
  e0f4d8:	48 c1 e0 05          	shl    rax,0x5
  e0f4dc:	48 89 84 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rax
  e0f4e3:	00 
  e0f4e4:	4c 89 e0             	mov    rax,r12
  e0f4e7:	48 c1 e0 04          	shl    rax,0x4
  e0f4eb:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e0f4f0:	4c 29 e2             	sub    rdx,r12
  e0f4f3:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e0f4fa:	00 
  e0f4fb:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e0f502:	00 
  e0f503:	48 8d 48 20          	lea    rcx,[rax+0x20]
  e0f507:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  e0f50e:	00 
  e0f50f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f513:	48 89 ca             	mov    rdx,rcx
  e0f516:	48 c1 e2 05          	shl    rdx,0x5
  e0f51a:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  e0f521:	00 
  e0f522:	45 31 db             	xor    r11d,r11d
  e0f525:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e0f52c:	00 
  e0f52d:	48 89 ca             	mov    rdx,rcx
  e0f530:	4c 89 bc 24 38 01 00 	mov    QWORD PTR [rsp+0x138],r15
  e0f537:	00 
  e0f538:	eb 54                	jmp    e0f58e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x130e>
  e0f53a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e0f540:	49 83 c3 02          	add    r11,0x2
  e0f544:	48 8b b4 24 40 01 00 	mov    rsi,QWORD PTR [rsp+0x140]
  e0f54b:	00 
  e0f54c:	48 ff ce             	dec    rsi
  e0f54f:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
  e0f556:	00 
  e0f557:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e0f55e:	00 
  e0f55f:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e0f566:	00 
  e0f567:	48 83 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],0x40
  e0f56e:	00 40 
  e0f570:	48 85 f6             	test   rsi,rsi
  e0f573:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e0f578:	4c 8b bc 24 38 01 00 	mov    r15,QWORD PTR [rsp+0x138]
  e0f57f:	00 
  e0f580:	48 8b 94 24 f0 00 00 	mov    rdx,QWORD PTR [rsp+0xf0]
  e0f587:	00 
  e0f588:	0f 84 74 0d 00 00    	je     e10302 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2082>
  e0f58e:	48 83 ea 02          	sub    rdx,0x2
  e0f592:	b8 02 00 00 00       	mov    eax,0x2
  e0f597:	48 83 d8 00          	sbb    rax,0x0
  e0f59b:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e0f5a2:	00 
  e0f5a3:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e0f5a7:	4c 29 d8             	sub    rax,r11
  e0f5aa:	48 83 f8 02          	cmp    rax,0x2
  e0f5ae:	41 b8 02 00 00 00    	mov    r8d,0x2
  e0f5b4:	4c 0f 42 c0          	cmovb  r8,rax
  e0f5b8:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
  e0f5bd:	4c 89 df             	mov    rdi,r11
  e0f5c0:	48 c1 e7 04          	shl    rdi,0x4
  e0f5c4:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e0f5cb:	00 
  e0f5cc:	48 83 f8 01          	cmp    rax,0x1
  e0f5d0:	48 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rsi
  e0f5d7:	00 
  e0f5d8:	48 89 94 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdx
  e0f5df:	00 
  e0f5e0:	76 5e                	jbe    e0f640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x13c0>
  e0f5e2:	4d 85 ff             	test   r15,r15
  e0f5e5:	0f 84 e3 45 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e0f5eb:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0f5f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e0f5f3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e0f5f7:	48 83 f8 0d          	cmp    rax,0xd
  e0f5fb:	0f 87 91 45 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e0f601:	48 8d 0d 80 44 29 ff 	lea    rcx,[rip+0xffffffffff294480]        # a3a88 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30f38>
  e0f608:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0f60c:	48 01 c8             	add    rax,rcx
  e0f60f:	ff e0                	jmp    rax
  e0f611:	4c 89 ee             	mov    rsi,r13
  e0f614:	4c 89 e2             	mov    rdx,r12
  e0f617:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f61b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f620:	e8 5b cc ff ff       	call   e0c280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f625:	49 83 ff 02          	cmp    r15,0x2
  e0f629:	0f 83 a1 03 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f62f:	e9 0c 08 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f634:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0f63b:	00 00 00 00 00 
  e0f640:	4d 85 ff             	test   r15,r15
  e0f643:	0f 84 85 45 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e0f649:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0f64e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e0f651:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e0f655:	48 83 f8 0d          	cmp    rax,0xd
  e0f659:	0f 87 33 45 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e0f65f:	48 8d 0d ae 43 29 ff 	lea    rcx,[rip+0xffffffffff2943ae]        # a3a14 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30ec4>
  e0f666:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0f66a:	48 01 c8             	add    rax,rcx
  e0f66d:	ff e0                	jmp    rax
  e0f66f:	4c 89 ee             	mov    rsi,r13
  e0f672:	4c 89 e2             	mov    rdx,r12
  e0f675:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f679:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f67e:	e8 3d 40 fd ff       	call   de36c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f683:	49 83 ff 02          	cmp    r15,0x2
  e0f687:	0f 83 73 05 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f68d:	e9 ae 07 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f692:	4c 89 ee             	mov    rsi,r13
  e0f695:	4c 89 e2             	mov    rdx,r12
  e0f698:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f69c:	e8 5f 98 ff ff       	call   e08f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f6a1:	49 83 ff 02          	cmp    r15,0x2
  e0f6a5:	0f 83 25 03 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f6ab:	e9 90 07 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f6b0:	4c 89 ee             	mov    rsi,r13
  e0f6b3:	4c 89 e2             	mov    rdx,r12
  e0f6b6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f6ba:	e8 41 c4 fe ff       	call   dfbb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f6bf:	49 83 ff 02          	cmp    r15,0x2
  e0f6c3:	0f 83 37 05 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f6c9:	e9 72 07 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f6ce:	4c 89 ee             	mov    rsi,r13
  e0f6d1:	4c 89 e2             	mov    rdx,r12
  e0f6d4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f6d8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f6dd:	e8 de 34 fe ff       	call   df2bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f6e2:	49 83 ff 02          	cmp    r15,0x2
  e0f6e6:	0f 83 e4 02 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f6ec:	e9 4f 07 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f6f1:	4c 89 ee             	mov    rsi,r13
  e0f6f4:	4c 89 e2             	mov    rdx,r12
  e0f6f7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f6fb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f700:	e8 fb b1 fe ff       	call   dfa900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f705:	49 83 ff 02          	cmp    r15,0x2
  e0f709:	0f 83 f1 04 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f70f:	e9 2c 07 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f714:	4c 89 ee             	mov    rsi,r13
  e0f717:	4c 89 e2             	mov    rdx,r12
  e0f71a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f71e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f723:	e8 58 e0 fe ff       	call   dfd780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f728:	49 83 ff 02          	cmp    r15,0x2
  e0f72c:	0f 83 9e 02 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f732:	e9 09 07 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f737:	4c 89 ee             	mov    rsi,r13
  e0f73a:	4c 89 e2             	mov    rdx,r12
  e0f73d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f741:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f746:	e8 f5 e9 fd ff       	call   dee140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f74b:	49 83 ff 02          	cmp    r15,0x2
  e0f74f:	0f 83 ab 04 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f755:	e9 e6 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f75a:	4c 89 ee             	mov    rsi,r13
  e0f75d:	4c 89 e2             	mov    rdx,r12
  e0f760:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f764:	e8 d7 50 fe ff       	call   df4840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f769:	49 83 ff 02          	cmp    r15,0x2
  e0f76d:	0f 83 5d 02 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f773:	e9 c8 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f778:	4c 89 ee             	mov    rsi,r13
  e0f77b:	4c 89 e2             	mov    rdx,r12
  e0f77e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f782:	e8 b9 ba fd ff       	call   deb240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f787:	49 83 ff 02          	cmp    r15,0x2
  e0f78b:	0f 83 6f 04 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f791:	e9 aa 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f796:	4c 89 ee             	mov    rsi,r13
  e0f799:	4c 89 e2             	mov    rdx,r12
  e0f79c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f7a0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f7a5:	e8 d6 ee fe ff       	call   dfe680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f7aa:	49 83 ff 02          	cmp    r15,0x2
  e0f7ae:	0f 83 1c 02 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f7b4:	e9 87 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f7b9:	4c 89 ee             	mov    rsi,r13
  e0f7bc:	4c 89 e2             	mov    rdx,r12
  e0f7bf:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f7c3:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f7c8:	e8 f3 bc fe ff       	call   dfb4c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f7cd:	49 83 ff 02          	cmp    r15,0x2
  e0f7d1:	0f 83 29 04 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f7d7:	e9 64 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f7dc:	4c 89 ee             	mov    rsi,r13
  e0f7df:	4c 89 e2             	mov    rdx,r12
  e0f7e2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f7e6:	e8 95 a0 fd ff       	call   de9880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f7eb:	49 83 ff 02          	cmp    r15,0x2
  e0f7ef:	0f 83 db 01 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f7f5:	e9 46 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f7fa:	4c 89 ee             	mov    rsi,r13
  e0f7fd:	4c 89 e2             	mov    rdx,r12
  e0f800:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f804:	e8 f7 20 fe ff       	call   df1900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f809:	49 83 ff 02          	cmp    r15,0x2
  e0f80d:	0f 83 ed 03 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f813:	e9 28 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f818:	4c 89 ee             	mov    rsi,r13
  e0f81b:	4c 89 e2             	mov    rdx,r12
  e0f81e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f822:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f827:	e8 d4 e2 ff ff       	call   e0db00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f82c:	49 83 ff 02          	cmp    r15,0x2
  e0f830:	0f 83 9a 01 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f836:	e9 05 06 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f83b:	4c 89 ee             	mov    rsi,r13
  e0f83e:	4c 89 e2             	mov    rdx,r12
  e0f841:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f845:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f84a:	e8 f1 43 ff ff       	call   e03c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f84f:	49 83 ff 02          	cmp    r15,0x2
  e0f853:	0f 83 a7 03 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f859:	e9 e2 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f85e:	4c 89 ee             	mov    rsi,r13
  e0f861:	4c 89 e2             	mov    rdx,r12
  e0f864:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f868:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f86d:	e8 0e c1 fe ff       	call   dfb980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f872:	49 83 ff 02          	cmp    r15,0x2
  e0f876:	0f 83 54 01 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f87c:	e9 bf 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f881:	4c 89 ee             	mov    rsi,r13
  e0f884:	4c 89 e2             	mov    rdx,r12
  e0f887:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f88b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f890:	e8 2b 49 fe ff       	call   df41c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f895:	49 83 ff 02          	cmp    r15,0x2
  e0f899:	0f 83 61 03 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f89f:	e9 9c 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f8a4:	4c 89 ee             	mov    rsi,r13
  e0f8a7:	4c 89 e2             	mov    rdx,r12
  e0f8aa:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f8ae:	e8 0d 9a fd ff       	call   de92c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f8b3:	49 83 ff 02          	cmp    r15,0x2
  e0f8b7:	0f 83 13 01 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f8bd:	e9 7e 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f8c2:	4c 89 ee             	mov    rsi,r13
  e0f8c5:	4c 89 e2             	mov    rdx,r12
  e0f8c8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f8cc:	e8 2f 4b fd ff       	call   de4400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f8d1:	49 83 ff 02          	cmp    r15,0x2
  e0f8d5:	0f 83 25 03 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f8db:	e9 60 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f8e0:	4c 89 ee             	mov    rsi,r13
  e0f8e3:	4c 89 e2             	mov    rdx,r12
  e0f8e6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f8ea:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f8ef:	e8 4c 77 ff ff       	call   e07040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f8f4:	49 83 ff 02          	cmp    r15,0x2
  e0f8f8:	0f 83 d2 00 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f8fe:	e9 3d 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f903:	4c 89 ee             	mov    rsi,r13
  e0f906:	4c 89 e2             	mov    rdx,r12
  e0f909:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f90d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f912:	e8 a9 a9 ff ff       	call   e0a2c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f917:	49 83 ff 02          	cmp    r15,0x2
  e0f91b:	0f 83 df 02 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f921:	e9 1a 05 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f926:	4c 89 ee             	mov    rsi,r13
  e0f929:	4c 89 e2             	mov    rdx,r12
  e0f92c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f930:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f935:	e8 86 86 ff ff       	call   e07fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f93a:	49 83 ff 02          	cmp    r15,0x2
  e0f93e:	0f 83 8c 00 00 00    	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f944:	e9 f7 04 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f949:	4c 89 ee             	mov    rsi,r13
  e0f94c:	4c 89 e2             	mov    rdx,r12
  e0f94f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f953:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f958:	e8 e3 38 ff ff       	call   e03240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f95d:	49 83 ff 02          	cmp    r15,0x2
  e0f961:	0f 83 99 02 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f967:	e9 d4 04 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f96c:	4c 89 ee             	mov    rsi,r13
  e0f96f:	4c 89 e2             	mov    rdx,r12
  e0f972:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f976:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f97b:	e8 80 de fd ff       	call   ded800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f980:	49 83 ff 02          	cmp    r15,0x2
  e0f984:	73 4a                	jae    e0f9d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e0f986:	e9 b5 04 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f98b:	4c 89 ee             	mov    rsi,r13
  e0f98e:	4c 89 e2             	mov    rdx,r12
  e0f991:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f995:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f99a:	e8 e1 36 fe ff       	call   df3080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f99f:	49 83 ff 02          	cmp    r15,0x2
  e0f9a3:	0f 83 57 02 00 00    	jae    e0fc00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e0f9a9:	e9 92 04 00 00       	jmp    e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f9ae:	4c 89 ee             	mov    rsi,r13
  e0f9b1:	4c 89 e2             	mov    rdx,r12
  e0f9b4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0f9b8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f9bd:	e8 3e d6 fd ff       	call   ded000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0f9c2:	49 83 ff 02          	cmp    r15,0x2
  e0f9c6:	0f 82 74 04 00 00    	jb     e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0f9cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0f9d0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0f9d5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e0f9d8:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e0f9df:	00 
  e0f9e0:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e0f9e7:	00 
  e0f9e8:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e0f9ed:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e0f9f2:	eb 40                	jmp    e0fa34 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17b4>
  e0f9f4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0f9f9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0fa00:	00 
  e0fa01:	4c 89 f7             	mov    rdi,r14
  e0fa04:	4c 89 ee             	mov    rsi,r13
  e0fa07:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fa0c:	48 89 d9             	mov    rcx,rbx
  e0fa0f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0fa16:	00 
  e0fa17:	e8 64 a2 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fa1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0fa20:	49 0f af df          	imul   rbx,r15
  e0fa24:	49 83 c4 18          	add    r12,0x18
  e0fa28:	4c 89 e8             	mov    rax,r13
  e0fa2b:	48 ff cd             	dec    rbp
  e0fa2e:	0f 84 0c 04 00 00    	je     e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0fa34:	4d 89 f5             	mov    r13,r14
  e0fa37:	49 89 c6             	mov    r14,rax
  e0fa3a:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e0fa3f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e0fa43:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e0fa48:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e0fa4f:	00 
  e0fa50:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e0fa54:	48 83 f8 0e          	cmp    rax,0xe
  e0fa58:	0f 87 ca 40 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e0fa5e:	48 8d 0d 5b 40 29 ff 	lea    rcx,[rip+0xffffffffff29405b]        # a3ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30f70>
  e0fa65:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0fa69:	48 01 c8             	add    rax,rcx
  e0fa6c:	ff e0                	jmp    rax
  e0fa6e:	4c 89 f7             	mov    rdi,r14
  e0fa71:	4c 89 ee             	mov    rsi,r13
  e0fa74:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fa79:	48 89 d9             	mov    rcx,rbx
  e0fa7c:	e8 3f 0a f3 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fa81:	eb 9d                	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fa83:	4c 89 f7             	mov    rdi,r14
  e0fa86:	4c 89 ee             	mov    rsi,r13
  e0fa89:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fa8e:	48 89 d9             	mov    rcx,rbx
  e0fa91:	e8 ea 5e f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fa96:	eb 88                	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fa98:	4c 89 f7             	mov    rdi,r14
  e0fa9b:	4c 89 ee             	mov    rsi,r13
  e0fa9e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0faa3:	48 89 d9             	mov    rcx,rbx
  e0faa6:	e8 55 14 f3 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0faab:	e9 70 ff ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fab0:	4c 89 f7             	mov    rdi,r14
  e0fab3:	4c 89 ee             	mov    rsi,r13
  e0fab6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fabb:	48 89 d9             	mov    rcx,rbx
  e0fabe:	e8 7d 77 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fac3:	e9 58 ff ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fac8:	4c 89 f7             	mov    rdi,r14
  e0facb:	4c 89 ee             	mov    rsi,r13
  e0face:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fad3:	48 89 d9             	mov    rcx,rbx
  e0fad6:	e8 e5 3d f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fadb:	e9 40 ff ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fae0:	4c 89 f7             	mov    rdi,r14
  e0fae3:	4c 89 ee             	mov    rsi,r13
  e0fae6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0faeb:	48 89 d9             	mov    rcx,rbx
  e0faee:	e8 8d 0d f3 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0faf3:	e9 28 ff ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0faf8:	4c 89 f7             	mov    rdi,r14
  e0fafb:	4c 89 ee             	mov    rsi,r13
  e0fafe:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fb03:	48 89 d9             	mov    rcx,rbx
  e0fb06:	e8 f5 0f f3 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fb0b:	e9 10 ff ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fb10:	4c 89 f7             	mov    rdi,r14
  e0fb13:	4c 89 ee             	mov    rsi,r13
  e0fb16:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fb1b:	48 89 d9             	mov    rcx,rbx
  e0fb1e:	e8 1d 27 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fb23:	e9 f8 fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fb28:	4c 89 f7             	mov    rdi,r14
  e0fb2b:	4c 89 ee             	mov    rsi,r13
  e0fb2e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fb33:	48 89 d9             	mov    rcx,rbx
  e0fb36:	e8 05 0b f3 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fb3b:	e9 e0 fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fb40:	4c 89 f7             	mov    rdi,r14
  e0fb43:	4c 89 ee             	mov    rsi,r13
  e0fb46:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fb4b:	48 89 d9             	mov    rcx,rbx
  e0fb4e:	e8 6d 18 f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fb53:	e9 c8 fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fb58:	4c 89 f7             	mov    rdi,r14
  e0fb5b:	4c 89 ee             	mov    rsi,r13
  e0fb5e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fb63:	48 89 d9             	mov    rcx,rbx
  e0fb66:	e8 95 8b f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fb6b:	e9 b0 fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fb70:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0fb75:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0fb7c:	00 
  e0fb7d:	4c 89 f7             	mov    rdi,r14
  e0fb80:	4c 89 ee             	mov    rsi,r13
  e0fb83:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fb88:	48 89 d9             	mov    rcx,rbx
  e0fb8b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0fb92:	00 
  e0fb93:	e8 a8 1f f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fb98:	e9 83 fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fb9d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0fba2:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0fba9:	00 
  e0fbaa:	4c 89 f7             	mov    rdi,r14
  e0fbad:	4c 89 ee             	mov    rsi,r13
  e0fbb0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fbb5:	48 89 d9             	mov    rcx,rbx
  e0fbb8:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0fbbf:	00 
  e0fbc0:	e8 bb 4f f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fbc5:	e9 56 fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fbca:	4c 89 f7             	mov    rdi,r14
  e0fbcd:	4c 89 ee             	mov    rsi,r13
  e0fbd0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fbd5:	48 89 d9             	mov    rcx,rbx
  e0fbd8:	e8 e3 30 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fbdd:	e9 3e fe ff ff       	jmp    e0fa20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e0fbe2:	4c 89 ee             	mov    rsi,r13
  e0fbe5:	4c 89 e2             	mov    rdx,r12
  e0fbe8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e0fbec:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0fbf1:	e8 8a cf ff ff       	call   e0cb80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e0fbf6:	49 83 ff 02          	cmp    r15,0x2
  e0fbfa:	0f 82 40 02 00 00    	jb     e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0fc00:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e0fc05:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e0fc08:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e0fc0f:	00 
  e0fc10:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e0fc17:	00 
  e0fc18:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e0fc1d:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e0fc22:	eb 40                	jmp    e0fc64 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19e4>
  e0fc24:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0fc29:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0fc30:	00 
  e0fc31:	49 89 d6             	mov    r14,rdx
  e0fc34:	48 89 d7             	mov    rdi,rdx
  e0fc37:	4c 89 ee             	mov    rsi,r13
  e0fc3a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fc3f:	48 89 d9             	mov    rcx,rbx
  e0fc42:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0fc49:	00 
  e0fc4a:	e8 31 a0 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fc4f:	90                   	nop
  e0fc50:	49 0f af df          	imul   rbx,r15
  e0fc54:	49 83 c4 18          	add    r12,0x18
  e0fc58:	4c 89 e8             	mov    rax,r13
  e0fc5b:	48 ff cd             	dec    rbp
  e0fc5e:	0f 84 dc 01 00 00    	je     e0fe40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e0fc64:	48 89 c2             	mov    rdx,rax
  e0fc67:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e0fc6c:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e0fc70:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e0fc75:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e0fc7c:	00 
  e0fc7d:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e0fc81:	48 83 f8 0e          	cmp    rax,0xe
  e0fc85:	0f 87 9d 3e 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e0fc8b:	4d 89 f5             	mov    r13,r14
  e0fc8e:	48 8d 0d b7 3d 29 ff 	lea    rcx,[rip+0xffffffffff293db7]        # a3a4c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30efc>
  e0fc95:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e0fc99:	48 01 c8             	add    rax,rcx
  e0fc9c:	ff e0                	jmp    rax
  e0fc9e:	49 89 d6             	mov    r14,rdx
  e0fca1:	48 89 d7             	mov    rdi,rdx
  e0fca4:	4c 89 ee             	mov    rsi,r13
  e0fca7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fcac:	48 89 d9             	mov    rcx,rbx
  e0fcaf:	e8 0c 08 f3 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fcb4:	eb 9a                	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fcb6:	49 89 d6             	mov    r14,rdx
  e0fcb9:	48 89 d7             	mov    rdi,rdx
  e0fcbc:	4c 89 ee             	mov    rsi,r13
  e0fcbf:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fcc4:	48 89 d9             	mov    rcx,rbx
  e0fcc7:	e8 b4 5c f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fccc:	eb 82                	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fcce:	49 89 d6             	mov    r14,rdx
  e0fcd1:	48 89 d7             	mov    rdi,rdx
  e0fcd4:	4c 89 ee             	mov    rsi,r13
  e0fcd7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fcdc:	48 89 d9             	mov    rcx,rbx
  e0fcdf:	e8 1c 12 f3 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fce4:	e9 67 ff ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fce9:	49 89 d6             	mov    r14,rdx
  e0fcec:	48 89 d7             	mov    rdi,rdx
  e0fcef:	4c 89 ee             	mov    rsi,r13
  e0fcf2:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fcf7:	48 89 d9             	mov    rcx,rbx
  e0fcfa:	e8 41 75 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fcff:	e9 4c ff ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fd04:	49 89 d6             	mov    r14,rdx
  e0fd07:	48 89 d7             	mov    rdi,rdx
  e0fd0a:	4c 89 ee             	mov    rsi,r13
  e0fd0d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fd12:	48 89 d9             	mov    rcx,rbx
  e0fd15:	e8 a6 3b f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fd1a:	e9 31 ff ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fd1f:	49 89 d6             	mov    r14,rdx
  e0fd22:	48 89 d7             	mov    rdi,rdx
  e0fd25:	4c 89 ee             	mov    rsi,r13
  e0fd28:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fd2d:	48 89 d9             	mov    rcx,rbx
  e0fd30:	e8 4b 0b f3 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fd35:	e9 16 ff ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fd3a:	49 89 d6             	mov    r14,rdx
  e0fd3d:	48 89 d7             	mov    rdi,rdx
  e0fd40:	4c 89 ee             	mov    rsi,r13
  e0fd43:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fd48:	48 89 d9             	mov    rcx,rbx
  e0fd4b:	e8 b0 0d f3 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fd50:	e9 fb fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fd55:	49 89 d6             	mov    r14,rdx
  e0fd58:	48 89 d7             	mov    rdi,rdx
  e0fd5b:	4c 89 ee             	mov    rsi,r13
  e0fd5e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fd63:	48 89 d9             	mov    rcx,rbx
  e0fd66:	e8 d5 24 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fd6b:	e9 e0 fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fd70:	49 89 d6             	mov    r14,rdx
  e0fd73:	48 89 d7             	mov    rdi,rdx
  e0fd76:	4c 89 ee             	mov    rsi,r13
  e0fd79:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fd7e:	48 89 d9             	mov    rcx,rbx
  e0fd81:	e8 ba 08 f3 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fd86:	e9 c5 fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fd8b:	49 89 d6             	mov    r14,rdx
  e0fd8e:	48 89 d7             	mov    rdi,rdx
  e0fd91:	4c 89 ee             	mov    rsi,r13
  e0fd94:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fd99:	48 89 d9             	mov    rcx,rbx
  e0fd9c:	e8 1f 16 f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fda1:	e9 aa fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fda6:	49 89 d6             	mov    r14,rdx
  e0fda9:	48 89 d7             	mov    rdi,rdx
  e0fdac:	4c 89 ee             	mov    rsi,r13
  e0fdaf:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fdb4:	48 89 d9             	mov    rcx,rbx
  e0fdb7:	e8 44 89 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fdbc:	e9 8f fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fdc1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0fdc6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0fdcd:	00 
  e0fdce:	49 89 d6             	mov    r14,rdx
  e0fdd1:	48 89 d7             	mov    rdi,rdx
  e0fdd4:	4c 89 ee             	mov    rsi,r13
  e0fdd7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fddc:	48 89 d9             	mov    rcx,rbx
  e0fddf:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0fde6:	00 
  e0fde7:	e8 54 1d f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fdec:	e9 5f fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fdf1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e0fdf6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e0fdfd:	00 
  e0fdfe:	49 89 d6             	mov    r14,rdx
  e0fe01:	48 89 d7             	mov    rdi,rdx
  e0fe04:	4c 89 ee             	mov    rsi,r13
  e0fe07:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fe0c:	48 89 d9             	mov    rcx,rbx
  e0fe0f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e0fe16:	00 
  e0fe17:	e8 64 4d f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fe1c:	e9 2f fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fe21:	49 89 d6             	mov    r14,rdx
  e0fe24:	48 89 d7             	mov    rdi,rdx
  e0fe27:	4c 89 ee             	mov    rsi,r13
  e0fe2a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e0fe2f:	48 89 d9             	mov    rcx,rbx
  e0fe32:	e8 89 2e f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e0fe37:	e9 14 fe ff ff       	jmp    e0fc50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e0fe3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0fe40:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e0fe47:	00 
  e0fe48:	74 56                	je     e0fea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c20>
  e0fe4a:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e0fe51:	00 
  e0fe52:	48 85 c9             	test   rcx,rcx
  e0fe55:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e0fe5a:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e0fe5f:	0f 84 79 3d 00 00    	je     e13bde <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x595e>
  e0fe65:	4c 89 e0             	mov    rax,r12
  e0fe68:	48 09 c8             	or     rax,rcx
  e0fe6b:	48 c1 e8 20          	shr    rax,0x20
  e0fe6f:	0f 84 d7 02 00 00    	je     e1014c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ecc>
  e0fe75:	4c 89 e0             	mov    rax,r12
  e0fe78:	31 d2                	xor    edx,edx
  e0fe7a:	48 f7 f1             	div    rcx
  e0fe7d:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e0fe84:	00 00 
  e0fe86:	0f 85 d6 02 00 00    	jne    e10162 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ee2>
  e0fe8c:	e9 af f6 ff ff       	jmp    e0f540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e0fe91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0fe98:	0f 1f 84 00 00 00 00 
  e0fe9f:	00 
  e0fea0:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e0fea7:	00 00 
  e0fea9:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e0feae:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e0feb3:	0f 84 87 f6 ff ff    	je     e0f540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e0feb9:	49 83 c5 10          	add    r13,0x10
  e0febd:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  e0fec4:	00 
  e0fec5:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e0fecc:	00 
  e0fecd:	48 8b ac 24 a8 00 00 	mov    rbp,QWORD PTR [rsp+0xa8]
  e0fed4:	00 
  e0fed5:	4c 89 e0             	mov    rax,r12
  e0fed8:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e0fedf:	00 
  e0fee0:	31 d2                	xor    edx,edx
  e0fee2:	eb 4e                	jmp    e0ff32 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1cb2>
  e0fee4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e0feeb:	00 00 00 00 00 
  e0fef0:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  e0fef5:	48 83 c2 02          	add    rdx,0x2
  e0fef9:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e0ff00:	00 
  e0ff01:	48 ff c9             	dec    rcx
  e0ff04:	48 83 c5 40          	add    rbp,0x40
  e0ff08:	4c 8b 6c 24 28       	mov    r13,QWORD PTR [rsp+0x28]
  e0ff0d:	49 83 c5 40          	add    r13,0x40
  e0ff11:	48 83 84 24 b8 00 00 	add    QWORD PTR [rsp+0xb8],0x20
  e0ff18:	00 20 
  e0ff1a:	48 85 c9             	test   rcx,rcx
  e0ff1d:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e0ff22:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e0ff27:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e0ff2c:	0f 84 0e f6 ff ff    	je     e0f540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e0ff32:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e0ff39:	00 
  e0ff3a:	48 83 e8 02          	sub    rax,0x2
  e0ff3e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  e0ff43:	b8 02 00 00 00       	mov    eax,0x2
  e0ff48:	48 83 d8 00          	sbb    rax,0x0
  e0ff4c:	4c 89 e3             	mov    rbx,r12
  e0ff4f:	48 29 d3             	sub    rbx,rdx
  e0ff52:	48 83 fb 02          	cmp    rbx,0x2
  e0ff56:	b9 02 00 00 00       	mov    ecx,0x2
  e0ff5b:	48 0f 43 d9          	cmovae rbx,rcx
  e0ff5f:	0f 57 c0             	xorps  xmm0,xmm0
  e0ff62:	0f 29 84 24 70 02 00 	movaps XMMWORD PTR [rsp+0x270],xmm0
  e0ff69:	00 
  e0ff6a:	0f 29 84 24 60 02 00 	movaps XMMWORD PTR [rsp+0x260],xmm0
  e0ff71:	00 
  e0ff72:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e0ff79:	00 
  e0ff7a:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  e0ff81:	00 
  e0ff82:	0f 57 c9             	xorps  xmm1,xmm1
  e0ff85:	66 0f 57 db          	xorpd  xmm3,xmm3
  e0ff89:	66 0f 57 d2          	xorpd  xmm2,xmm2
  e0ff8d:	49 29 d4             	sub    r12,rdx
  e0ff90:	0f 84 81 00 00 00    	je     e10017 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d97>
  e0ff96:	31 c9                	xor    ecx,ecx
  e0ff98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e0ff9f:	00 
  e0ffa0:	66 41 0f 10 44 4d f0 	movupd xmm0,XMMWORD PTR [r13+rcx*2-0x10]
  e0ffa7:	66 41 0f 10 4c 4d 00 	movupd xmm1,XMMWORD PTR [r13+rcx*2+0x0]
  e0ffae:	66 0f 10 54 4d f0    	movupd xmm2,XMMWORD PTR [rbp+rcx*2-0x10]
  e0ffb4:	66 0f 10 5c 4d 00    	movupd xmm3,XMMWORD PTR [rbp+rcx*2+0x0]
  e0ffba:	66 0f 28 e1          	movapd xmm4,xmm1
  e0ffbe:	66 0f 59 e3          	mulpd  xmm4,xmm3
  e0ffc2:	66 0f 28 e8          	movapd xmm5,xmm0
  e0ffc6:	66 0f 59 ea          	mulpd  xmm5,xmm2
  e0ffca:	66 0f 5c ec          	subpd  xmm5,xmm4
  e0ffce:	66 0f 29 ac 0c 60 02 	movapd XMMWORD PTR [rsp+rcx*1+0x260],xmm5
  e0ffd5:	00 00 
  e0ffd7:	66 0f 59 ca          	mulpd  xmm1,xmm2
  e0ffdb:	66 0f 59 c3          	mulpd  xmm0,xmm3
  e0ffdf:	66 0f 58 c1          	addpd  xmm0,xmm1
  e0ffe3:	66 0f 29 84 0c 00 01 	movapd XMMWORD PTR [rsp+rcx*1+0x100],xmm0
  e0ffea:	00 00 
  e0ffec:	48 83 c1 10          	add    rcx,0x10
  e0fff0:	48 ff c8             	dec    rax
  e0fff3:	75 ab                	jne    e0ffa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d20>
  e0fff5:	66 0f 28 94 24 60 02 	movapd xmm2,XMMWORD PTR [rsp+0x260]
  e0fffc:	00 00 
  e0fffe:	66 0f 28 9c 24 70 02 	movapd xmm3,XMMWORD PTR [rsp+0x270]
  e10005:	00 00 
  e10007:	0f 28 84 24 00 01 00 	movaps xmm0,XMMWORD PTR [rsp+0x100]
  e1000e:	00 
  e1000f:	0f 28 8c 24 10 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x110]
  e10016:	00 
  e10017:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e1001c:	4c 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],r13
  e10021:	66 0f 28 e2          	movapd xmm4,xmm2
  e10025:	66 0f 14 e3          	unpcklpd xmm4,xmm3
  e10029:	66 0f 15 d3          	unpckhpd xmm2,xmm3
  e1002d:	66 0f 29 a4 24 60 02 	movapd XMMWORD PTR [rsp+0x260],xmm4
  e10034:	00 00 
  e10036:	66 0f 29 94 24 70 02 	movapd XMMWORD PTR [rsp+0x270],xmm2
  e1003d:	00 00 
  e1003f:	0f 28 d0             	movaps xmm2,xmm0
  e10042:	0f 16 d1             	movlhps xmm2,xmm1
  e10045:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e10049:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  e10050:	00 
  e10051:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e10058:	00 
  e10059:	4c 39 1c 24          	cmp    QWORD PTR [rsp],r11
  e1005d:	0f 84 8d fe ff ff    	je     e0fef0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c70>
  e10063:	48 c1 e3 04          	shl    rbx,0x4
  e10067:	4c 8b bc 24 b8 00 00 	mov    r15,QWORD PTR [rsp+0xb8]
  e1006e:	00 
  e1006f:	4c 8b ac 24 e0 00 00 	mov    r13,QWORD PTR [rsp+0xe0]
  e10076:	00 
  e10077:	45 31 f6             	xor    r14d,r14d
  e1007a:	eb 1f                	jmp    e1009b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e1b>
  e1007c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e10080:	41 0f 11 0f          	movups XMMWORD PTR [r15],xmm1
  e10084:	41 0f 11 47 10       	movups XMMWORD PTR [r15+0x10],xmm0
  e10089:	49 83 c6 10          	add    r14,0x10
  e1008d:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e10092:	49 ff cd             	dec    r13
  e10095:	0f 84 55 fe ff ff    	je     e0fef0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c70>
  e1009b:	42 0f 28 84 34 60 02 	movaps xmm0,XMMWORD PTR [rsp+r14*1+0x260]
  e100a2:	00 00 
  e100a4:	42 0f 28 94 34 00 01 	movaps xmm2,XMMWORD PTR [rsp+r14*1+0x100]
  e100ab:	00 00 
  e100ad:	0f 28 c8             	movaps xmm1,xmm0
  e100b0:	0f 16 ca             	movlhps xmm1,xmm2
  e100b3:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e100b7:	49 83 fc 01          	cmp    r12,0x1
  e100bb:	77 c3                	ja     e10080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e00>
  e100bd:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
  e100c4:	00 
  e100c5:	0f 57 d2             	xorps  xmm2,xmm2
  e100c8:	0f 29 90 d0 00 00 00 	movaps XMMWORD PTR [rax+0xd0],xmm2
  e100cf:	0f 29 90 c0 00 00 00 	movaps XMMWORD PTR [rax+0xc0],xmm2
  e100d6:	0f 29 90 b0 00 00 00 	movaps XMMWORD PTR [rax+0xb0],xmm2
  e100dd:	0f 29 90 a0 00 00 00 	movaps XMMWORD PTR [rax+0xa0],xmm2
  e100e4:	0f 29 90 90 00 00 00 	movaps XMMWORD PTR [rax+0x90],xmm2
  e100eb:	0f 29 90 80 00 00 00 	movaps XMMWORD PTR [rax+0x80],xmm2
  e100f2:	0f 29 50 70          	movaps XMMWORD PTR [rax+0x70],xmm2
  e100f6:	0f 29 50 60          	movaps XMMWORD PTR [rax+0x60],xmm2
  e100fa:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  e100fe:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  e10102:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  e10106:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  e1010a:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  e1010e:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  e10111:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e10118:	00 
  e10119:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e10120:	00 
  e10121:	4c 89 ff             	mov    rdi,r15
  e10124:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e1012b:	00 
  e1012c:	48 89 da             	mov    rdx,rbx
  e1012f:	ff 15 ab a5 43 00    	call   QWORD PTR [rip+0x43a5ab]        # 124a6e0 <memcpy@GLIBC_2.14>
  e10135:	49 83 c6 10          	add    r14,0x10
  e10139:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e1013e:	49 ff cd             	dec    r13
  e10141:	0f 85 54 ff ff ff    	jne    e1009b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e1b>
  e10147:	e9 a4 fd ff ff       	jmp    e0fef0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c70>
  e1014c:	44 89 e0             	mov    eax,r12d
  e1014f:	31 d2                	xor    edx,edx
  e10151:	f7 f1                	div    ecx
  e10153:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e1015a:	00 00 
  e1015c:	0f 84 de f3 ff ff    	je     e0f540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e10162:	4b 8d 0c 1b          	lea    rcx,[r11+r11*1]
  e10166:	48 0f af c1          	imul   rax,rcx
  e1016a:	48 0f af 8c 24 30 01 	imul   rcx,QWORD PTR [rsp+0x130]
  e10171:	00 00 
  e10173:	48 8b 94 24 20 01 00 	mov    rdx,QWORD PTR [rsp+0x120]
  e1017a:	00 
  e1017b:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e1017f:	48 8b 94 24 e8 00 00 	mov    rdx,QWORD PTR [rsp+0xe8]
  e10186:	00 
  e10187:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
  e1018b:	49 83 c5 30          	add    r13,0x30
  e1018f:	48 8b b4 24 d0 00 00 	mov    rsi,QWORD PTR [rsp+0xd0]
  e10196:	00 
  e10197:	48 8b bc 24 50 01 00 	mov    rdi,QWORD PTR [rsp+0x150]
  e1019e:	00 
  e1019f:	45 31 c0             	xor    r8d,r8d
  e101a2:	eb 43                	jmp    e101e7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f67>
  e101a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e101ab:	00 00 00 00 00 
  e101b0:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e101b4:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e101b8:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e101bc:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e101c0:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e101c5:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e101c9:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e101ce:	48 03 b4 24 f8 00 00 	add    rsi,QWORD PTR [rsp+0xf8]
  e101d5:	00 
  e101d6:	49 83 c5 40          	add    r13,0x40
  e101da:	49 83 c0 02          	add    r8,0x2
  e101de:	48 ff c7             	inc    rdi
  e101e1:	0f 84 59 f3 ff ff    	je     e0f540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e101e7:	4d 89 c1             	mov    r9,r8
  e101ea:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
  e101ef:	49 d3 e9             	shr    r9,cl
  e101f2:	49 c1 e1 05          	shl    r9,0x5
  e101f6:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e101fc:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e10203:	4c 89 c1             	mov    rcx,r8
  e10206:	48 23 4c 24 68       	and    rcx,QWORD PTR [rsp+0x68]
  e1020b:	48 c1 e1 05          	shl    rcx,0x5
  e1020f:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e10214:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e1021a:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e10220:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e10226:	66 0f 28 ea          	movapd xmm5,xmm2
  e1022a:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e1022e:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e10233:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e10238:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e1023d:	66 0f 59 da          	mulpd  xmm3,xmm2
  e10241:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e10245:	66 0f 58 cb          	addpd  xmm1,xmm3
  e10249:	66 45 0f 10 4d d0    	movupd xmm9,XMMWORD PTR [r13-0x30]
  e1024f:	66 45 0f 10 55 e0    	movupd xmm10,XMMWORD PTR [r13-0x20]
  e10255:	66 41 0f 10 6d f0    	movupd xmm5,XMMWORD PTR [r13-0x10]
  e1025b:	66 41 0f 10 7d 00    	movupd xmm7,XMMWORD PTR [r13+0x0]
  e10261:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e10266:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e1026b:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e10270:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e10275:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e1027a:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e1027f:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e10284:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e10289:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e1028e:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e10293:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e10298:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e1029d:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e102a1:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e102a5:	66 0f 58 c2          	addpd  xmm0,xmm2
  e102a9:	66 0f 28 d5          	movapd xmm2,xmm5
  e102ad:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e102b2:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e102b7:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e102bb:	66 0f 5c d7          	subpd  xmm2,xmm7
  e102bf:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e102c3:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e102c8:	66 0f 28 e3          	movapd xmm4,xmm3
  e102cc:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e102d0:	0f 12 d3             	movhlps xmm2,xmm3
  e102d3:	66 0f 28 d9          	movapd xmm3,xmm1
  e102d7:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e102db:	0f 12 c1             	movhlps xmm0,xmm1
  e102de:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e102e5:	00 
  e102e6:	0f 85 c4 fe ff ff    	jne    e101b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f30>
  e102ec:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e102f1:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e102f6:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e102f9:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e102fd:	e9 cc fe ff ff       	jmp    e101ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f4e>
  e10302:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e10309:	00 
  e1030a:	74 39                	je     e10345 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20c5>
  e1030c:	0f ae f8             	sfence
  e1030f:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e10316:	3f 
  e10317:	0f 94 c0             	sete   al
  e1031a:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
  e1031e:	eb 2d                	jmp    e1034d <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20cd>
  e10320:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e10327:	00 
  e10328:	0f 84 48 0f 00 00    	je     e11276 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ff6>
  e1032e:	0f ae f8             	sfence
  e10331:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e10338:	3f 
  e10339:	0f 94 c0             	sete   al
  e1033c:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
  e10340:	e9 39 0f 00 00       	jmp    e1127e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ffe>
  e10345:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  e1034c:	00 
  e1034d:	4c 89 e0             	mov    rax,r12
  e10350:	48 d1 e8             	shr    rax,1
  e10353:	4d 89 e0             	mov    r8,r12
  e10356:	49 29 c0             	sub    r8,rax
  e10359:	0f 84 47 1e 00 00    	je     e121a6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e1035f:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e10363:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e10368:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  e1036c:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e10371:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10375:	48 01 d2             	add    rdx,rdx
  e10378:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  e1037f:	00 
  e10380:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  e10385:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e1038a:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e1038f:	48 ff c8             	dec    rax
  e10392:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  e10397:	4c 89 e0             	mov    rax,r12
  e1039a:	48 c1 e0 04          	shl    rax,0x4
  e1039e:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e103a5:	00 
  e103a6:	31 f6                	xor    esi,esi
  e103a8:	eb 33                	jmp    e103dd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x215d>
  e103aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e103b0:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
  e103b5:	48 83 c6 02          	add    rsi,0x2
  e103b9:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  e103be:	49 ff c8             	dec    r8
  e103c1:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  e103c8:	00 20 
  e103ca:	4d 85 c0             	test   r8,r8
  e103cd:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e103d2:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e103d7:	0f 84 c9 1d 00 00    	je     e121a6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e103dd:	4c 89 e1             	mov    rcx,r12
  e103e0:	48 29 f1             	sub    rcx,rsi
  e103e3:	48 83 f9 02          	cmp    rcx,0x2
  e103e7:	b8 02 00 00 00       	mov    eax,0x2
  e103ec:	48 0f 42 c1          	cmovb  rax,rcx
  e103f0:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e103f5:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e103fc:	00 
  e103fd:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  e10402:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  e10407:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e1040e:	00 
  e1040f:	74 6f                	je     e10480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2200>
  e10411:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e10417:	0f 84 b1 37 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e1041d:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e10422:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e10425:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e10429:	48 83 f8 0d          	cmp    rax,0xd
  e1042d:	0f 87 5f 37 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e10433:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  e1043a:	00 
  e1043b:	48 0f af ce          	imul   rcx,rsi
  e1043f:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  e10446:	00 
  e10447:	48 8d 3c ca          	lea    rdi,[rdx+rcx*8]
  e1044b:	48 8d 0d 92 37 29 ff 	lea    rcx,[rip+0xffffffffff293792]        # a3be4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31094>
  e10452:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e10456:	48 01 c8             	add    rax,rcx
  e10459:	ff e0                	jmp    rax
  e1045b:	4c 89 ee             	mov    rsi,r13
  e1045e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10462:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10467:	e8 d4 be ff ff       	call   e0c340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1046c:	4d 89 ee             	mov    r14,r13
  e1046f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10475:	0f 83 95 02 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1047b:	e9 b0 0c 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10480:	48 89 f7             	mov    rdi,rsi
  e10483:	48 c1 e7 04          	shl    rdi,0x4
  e10487:	48 03 bc 24 98 00 00 	add    rdi,QWORD PTR [rsp+0x98]
  e1048e:	00 
  e1048f:	48 83 f9 01          	cmp    rcx,0x1
  e10493:	76 5b                	jbe    e104f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2270>
  e10495:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e1049b:	0f 84 2d 37 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e104a1:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e104a6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e104a9:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e104ad:	48 83 f8 0d          	cmp    rax,0xd
  e104b1:	0f 87 db 36 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e104b7:	48 8d 0d b2 36 29 ff 	lea    rcx,[rip+0xffffffffff2936b2]        # a3b70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31020>
  e104be:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e104c2:	48 01 c8             	add    rax,rcx
  e104c5:	ff e0                	jmp    rax
  e104c7:	4c 89 ee             	mov    rsi,r13
  e104ca:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e104ce:	4c 89 e1             	mov    rcx,r12
  e104d1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e104d6:	e8 a5 bd ff ff       	call   e0c280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e104db:	4d 89 ee             	mov    r14,r13
  e104de:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e104e4:	0f 83 1c 08 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e104ea:	e9 41 0c 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e104ef:	90                   	nop
  e104f0:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e104f6:	0f 84 d2 36 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e104fc:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e10501:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e10504:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e10508:	48 83 f8 0d          	cmp    rax,0xd
  e1050c:	0f 87 80 36 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e10512:	48 8d 0d e3 35 29 ff 	lea    rcx,[rip+0xffffffffff2935e3]        # a3afc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30fac>
  e10519:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1051d:	48 01 c8             	add    rax,rcx
  e10520:	ff e0                	jmp    rax
  e10522:	4c 89 ee             	mov    rsi,r13
  e10525:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10529:	4c 89 e1             	mov    rcx,r12
  e1052c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10531:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10536:	e8 85 31 fd ff       	call   de36c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1053b:	4d 89 ee             	mov    r14,r13
  e1053e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10544:	0f 83 e1 09 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e1054a:	e9 e1 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1054f:	4c 89 ee             	mov    rsi,r13
  e10552:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10556:	e8 a5 8a fe ff       	call   df9000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1055b:	4d 89 ee             	mov    r14,r13
  e1055e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10564:	0f 83 a6 01 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1056a:	e9 c1 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1056f:	4c 89 ee             	mov    rsi,r13
  e10572:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10576:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1057b:	e8 80 03 fe ff       	call   df0900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10580:	4d 89 ee             	mov    r14,r13
  e10583:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10589:	0f 83 81 01 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1058f:	e9 9c 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10594:	4c 89 ee             	mov    rsi,r13
  e10597:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1059b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e105a0:	e8 5b 44 ff ff       	call   e04a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e105a5:	4d 89 ee             	mov    r14,r13
  e105a8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e105ae:	0f 83 5c 01 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e105b4:	e9 77 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e105b9:	4c 89 ee             	mov    rsi,r13
  e105bc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e105c0:	e8 fb 05 fe ff       	call   df0bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e105c5:	4d 89 ee             	mov    r14,r13
  e105c8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e105ce:	0f 83 3c 01 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e105d4:	e9 57 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e105d9:	4c 89 ee             	mov    rsi,r13
  e105dc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e105e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e105e5:	e8 96 9e fe ff       	call   dfa480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e105ea:	4d 89 ee             	mov    r14,r13
  e105ed:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e105f3:	0f 83 17 01 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e105f9:	e9 32 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e105fe:	4c 89 ee             	mov    rsi,r13
  e10601:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10605:	e8 b6 67 ff ff       	call   e06dc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1060a:	4d 89 ee             	mov    r14,r13
  e1060d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10613:	0f 83 f7 00 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e10619:	e9 12 0b 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1061e:	4c 89 ee             	mov    rsi,r13
  e10621:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10625:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1062a:	e8 51 95 fd ff       	call   de9b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1062f:	4d 89 ee             	mov    r14,r13
  e10632:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10638:	0f 83 d2 00 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1063e:	e9 ed 0a 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10643:	4c 89 ee             	mov    rsi,r13
  e10646:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1064a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1064f:	e8 ec 9c fe ff       	call   dfa340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10654:	4d 89 ee             	mov    r14,r13
  e10657:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1065d:	0f 83 ad 00 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e10663:	e9 c8 0a 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10668:	4c 89 ee             	mov    rsi,r13
  e1066b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1066f:	e8 8c b6 ff ff       	call   e0bd00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10674:	4d 89 ee             	mov    r14,r13
  e10677:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1067d:	0f 83 8d 00 00 00    	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e10683:	e9 a8 0a 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10688:	4c 89 ee             	mov    rsi,r13
  e1068b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1068f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10694:	e8 27 48 fd ff       	call   de4ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10699:	4d 89 ee             	mov    r14,r13
  e1069c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e106a2:	73 6c                	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e106a4:	e9 87 0a 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e106a9:	4c 89 ee             	mov    rsi,r13
  e106ac:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e106b0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e106b5:	e8 c6 a9 fe ff       	call   dfb080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e106ba:	4d 89 ee             	mov    r14,r13
  e106bd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e106c3:	73 4b                	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e106c5:	e9 66 0a 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e106ca:	4c 89 ee             	mov    rsi,r13
  e106cd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e106d1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e106d6:	e8 a5 56 fd ff       	call   de5d80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e106db:	4d 89 ee             	mov    r14,r13
  e106de:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e106e4:	73 2a                	jae    e10710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e106e6:	e9 45 0a 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e106eb:	4c 89 ee             	mov    rsi,r13
  e106ee:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e106f2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e106f7:	e8 c4 f5 fd ff       	call   defcc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e106fc:	4d 89 ee             	mov    r14,r13
  e106ff:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10705:	0f 82 25 0a 00 00    	jb     e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1070b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e10710:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e10715:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e10718:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e1071d:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e10722:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e10727:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e1072c:	eb 46                	jmp    e10774 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24f4>
  e1072e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10733:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1073a:	00 
  e1073b:	4c 89 ff             	mov    rdi,r15
  e1073e:	4c 89 f6             	mov    rsi,r14
  e10741:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10745:	48 89 d9             	mov    rcx,rbx
  e10748:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1074f:	00 
  e10750:	e8 2b 95 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10755:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1075c:	00 00 00 00 
  e10760:	48 0f af dd          	imul   rbx,rbp
  e10764:	49 83 c5 18          	add    r13,0x18
  e10768:	4c 89 f0             	mov    rax,r14
  e1076b:	49 ff cc             	dec    r12
  e1076e:	0f 84 bc 09 00 00    	je     e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10774:	4d 89 fe             	mov    r14,r15
  e10777:	49 89 c7             	mov    r15,rax
  e1077a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e1077e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e10782:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e10787:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e1078e:	00 
  e1078f:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e10793:	48 83 f8 0e          	cmp    rax,0xe
  e10797:	0f 87 8b 33 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e1079d:	48 8d 0d 78 34 29 ff 	lea    rcx,[rip+0xffffffffff293478]        # a3c1c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x310cc>
  e107a4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e107a8:	48 01 c8             	add    rax,rcx
  e107ab:	ff e0                	jmp    rax
  e107ad:	4c 89 ff             	mov    rdi,r15
  e107b0:	4c 89 f6             	mov    rsi,r14
  e107b3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e107b7:	48 89 d9             	mov    rcx,rbx
  e107ba:	e8 01 fd f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e107bf:	eb 9f                	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e107c1:	4c 89 ff             	mov    rdi,r15
  e107c4:	4c 89 f6             	mov    rsi,r14
  e107c7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e107cb:	48 89 d9             	mov    rcx,rbx
  e107ce:	e8 ad 51 f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e107d3:	eb 8b                	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e107d5:	4c 89 ff             	mov    rdi,r15
  e107d8:	4c 89 f6             	mov    rsi,r14
  e107db:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e107df:	48 89 d9             	mov    rcx,rbx
  e107e2:	e8 19 07 f3 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e107e7:	e9 74 ff ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e107ec:	4c 89 ff             	mov    rdi,r15
  e107ef:	4c 89 f6             	mov    rsi,r14
  e107f2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e107f6:	48 89 d9             	mov    rcx,rbx
  e107f9:	e8 42 6a f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e107fe:	e9 5d ff ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e10803:	4c 89 ff             	mov    rdi,r15
  e10806:	4c 89 f6             	mov    rsi,r14
  e10809:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1080d:	48 89 d9             	mov    rcx,rbx
  e10810:	e8 ab 30 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10815:	e9 46 ff ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e1081a:	4c 89 ff             	mov    rdi,r15
  e1081d:	4c 89 f6             	mov    rsi,r14
  e10820:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10824:	48 89 d9             	mov    rcx,rbx
  e10827:	e8 54 00 f3 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1082c:	e9 2f ff ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e10831:	4c 89 ff             	mov    rdi,r15
  e10834:	4c 89 f6             	mov    rsi,r14
  e10837:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1083b:	48 89 d9             	mov    rcx,rbx
  e1083e:	e8 bd 02 f3 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10843:	e9 18 ff ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e10848:	4c 89 ff             	mov    rdi,r15
  e1084b:	4c 89 f6             	mov    rsi,r14
  e1084e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10852:	48 89 d9             	mov    rcx,rbx
  e10855:	e8 e6 19 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1085a:	e9 01 ff ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e1085f:	4c 89 ff             	mov    rdi,r15
  e10862:	4c 89 f6             	mov    rsi,r14
  e10865:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10869:	48 89 d9             	mov    rcx,rbx
  e1086c:	e8 cf fd f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10871:	e9 ea fe ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e10876:	4c 89 ff             	mov    rdi,r15
  e10879:	4c 89 f6             	mov    rsi,r14
  e1087c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10880:	48 89 d9             	mov    rcx,rbx
  e10883:	e8 38 0b f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10888:	e9 d3 fe ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e1088d:	4c 89 ff             	mov    rdi,r15
  e10890:	4c 89 f6             	mov    rsi,r14
  e10893:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10897:	48 89 d9             	mov    rcx,rbx
  e1089a:	e8 61 7e f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1089f:	e9 bc fe ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e108a4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e108a9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e108b0:	00 
  e108b1:	4c 89 ff             	mov    rdi,r15
  e108b4:	4c 89 f6             	mov    rsi,r14
  e108b7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e108bb:	48 89 d9             	mov    rcx,rbx
  e108be:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e108c5:	00 
  e108c6:	e8 75 12 f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e108cb:	e9 90 fe ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e108d0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e108d5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e108dc:	00 
  e108dd:	4c 89 ff             	mov    rdi,r15
  e108e0:	4c 89 f6             	mov    rsi,r14
  e108e3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e108e7:	48 89 d9             	mov    rcx,rbx
  e108ea:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e108f1:	00 
  e108f2:	e8 89 42 f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e108f7:	e9 64 fe ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e108fc:	4c 89 ff             	mov    rdi,r15
  e108ff:	4c 89 f6             	mov    rsi,r14
  e10902:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10906:	48 89 d9             	mov    rcx,rbx
  e10909:	e8 b2 23 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1090e:	e9 4d fe ff ff       	jmp    e10760 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e10913:	4c 89 ee             	mov    rsi,r13
  e10916:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1091a:	4c 89 e1             	mov    rcx,r12
  e1091d:	e8 de 85 ff ff       	call   e08f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10922:	4d 89 ee             	mov    r14,r13
  e10925:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1092b:	0f 83 d5 03 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10931:	e9 fa 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10936:	4c 89 ee             	mov    rsi,r13
  e10939:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1093d:	4c 89 e1             	mov    rcx,r12
  e10940:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10945:	e8 b6 b1 fe ff       	call   dfbb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1094a:	4d 89 ee             	mov    r14,r13
  e1094d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10953:	0f 83 d2 05 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10959:	e9 d2 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1095e:	4c 89 ee             	mov    rsi,r13
  e10961:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10965:	4c 89 e1             	mov    rcx,r12
  e10968:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1096d:	e8 4e 22 fe ff       	call   df2bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10972:	4d 89 ee             	mov    r14,r13
  e10975:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1097b:	0f 83 85 03 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10981:	e9 aa 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10986:	4c 89 ee             	mov    rsi,r13
  e10989:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1098d:	4c 89 e1             	mov    rcx,r12
  e10990:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10995:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1099a:	e8 61 9f fe ff       	call   dfa900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1099f:	4d 89 ee             	mov    r14,r13
  e109a2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e109a8:	0f 83 7d 05 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e109ae:	e9 7d 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e109b3:	4c 89 ee             	mov    rsi,r13
  e109b6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e109ba:	4c 89 e1             	mov    rcx,r12
  e109bd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e109c2:	e8 b9 cd fe ff       	call   dfd780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e109c7:	4d 89 ee             	mov    r14,r13
  e109ca:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e109d0:	0f 83 30 03 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e109d6:	e9 55 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e109db:	4c 89 ee             	mov    rsi,r13
  e109de:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e109e2:	4c 89 e1             	mov    rcx,r12
  e109e5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e109ea:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e109ef:	e8 4c d7 fd ff       	call   dee140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e109f4:	4d 89 ee             	mov    r14,r13
  e109f7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e109fd:	0f 83 28 05 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10a03:	e9 28 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10a08:	4c 89 ee             	mov    rsi,r13
  e10a0b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10a0f:	4c 89 e1             	mov    rcx,r12
  e10a12:	e8 29 3e fe ff       	call   df4840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10a17:	4d 89 ee             	mov    r14,r13
  e10a1a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10a20:	0f 83 e0 02 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10a26:	e9 05 07 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10a2b:	4c 89 ee             	mov    rsi,r13
  e10a2e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10a32:	4c 89 e1             	mov    rcx,r12
  e10a35:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10a3a:	e8 01 a8 fd ff       	call   deb240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10a3f:	4d 89 ee             	mov    r14,r13
  e10a42:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10a48:	0f 83 dd 04 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10a4e:	e9 dd 06 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10a53:	4c 89 ee             	mov    rsi,r13
  e10a56:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10a5a:	4c 89 e1             	mov    rcx,r12
  e10a5d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10a62:	e8 19 dc fe ff       	call   dfe680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10a67:	4d 89 ee             	mov    r14,r13
  e10a6a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10a70:	0f 83 90 02 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10a76:	e9 b5 06 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10a7b:	4c 89 ee             	mov    rsi,r13
  e10a7e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10a82:	4c 89 e1             	mov    rcx,r12
  e10a85:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10a8a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10a8f:	e8 2c aa fe ff       	call   dfb4c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10a94:	4d 89 ee             	mov    r14,r13
  e10a97:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10a9d:	0f 83 88 04 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10aa3:	e9 88 06 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10aa8:	4c 89 ee             	mov    rsi,r13
  e10aab:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10aaf:	4c 89 e1             	mov    rcx,r12
  e10ab2:	e8 c9 8d fd ff       	call   de9880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10ab7:	4d 89 ee             	mov    r14,r13
  e10aba:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10ac0:	0f 83 40 02 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10ac6:	e9 65 06 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10acb:	4c 89 ee             	mov    rsi,r13
  e10ace:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10ad2:	4c 89 e1             	mov    rcx,r12
  e10ad5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10ada:	e8 21 0e fe ff       	call   df1900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10adf:	4d 89 ee             	mov    r14,r13
  e10ae2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10ae8:	0f 83 3d 04 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10aee:	e9 3d 06 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10af3:	4c 89 ee             	mov    rsi,r13
  e10af6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10afa:	4c 89 e1             	mov    rcx,r12
  e10afd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10b02:	e8 f9 cf ff ff       	call   e0db00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10b07:	4d 89 ee             	mov    r14,r13
  e10b0a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10b10:	0f 83 f0 01 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10b16:	e9 15 06 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10b1b:	4c 89 ee             	mov    rsi,r13
  e10b1e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10b22:	4c 89 e1             	mov    rcx,r12
  e10b25:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10b2a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10b2f:	e8 0c 31 ff ff       	call   e03c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10b34:	4d 89 ee             	mov    r14,r13
  e10b37:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10b3d:	0f 83 e8 03 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10b43:	e9 e8 05 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10b48:	4c 89 ee             	mov    rsi,r13
  e10b4b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10b4f:	4c 89 e1             	mov    rcx,r12
  e10b52:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10b57:	e8 24 ae fe ff       	call   dfb980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10b5c:	4d 89 ee             	mov    r14,r13
  e10b5f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10b65:	0f 83 9b 01 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10b6b:	e9 c0 05 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10b70:	4c 89 ee             	mov    rsi,r13
  e10b73:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10b77:	4c 89 e1             	mov    rcx,r12
  e10b7a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10b7f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10b84:	e8 37 36 fe ff       	call   df41c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10b89:	4d 89 ee             	mov    r14,r13
  e10b8c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10b92:	0f 83 93 03 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10b98:	e9 93 05 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10b9d:	4c 89 ee             	mov    rsi,r13
  e10ba0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10ba4:	4c 89 e1             	mov    rcx,r12
  e10ba7:	e8 14 87 fd ff       	call   de92c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10bac:	4d 89 ee             	mov    r14,r13
  e10baf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10bb5:	0f 83 4b 01 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10bbb:	e9 70 05 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10bc0:	4c 89 ee             	mov    rsi,r13
  e10bc3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10bc7:	4c 89 e1             	mov    rcx,r12
  e10bca:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10bcf:	e8 2c 38 fd ff       	call   de4400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10bd4:	4d 89 ee             	mov    r14,r13
  e10bd7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10bdd:	0f 83 48 03 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10be3:	e9 48 05 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10be8:	4c 89 ee             	mov    rsi,r13
  e10beb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10bef:	4c 89 e1             	mov    rcx,r12
  e10bf2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10bf7:	e8 44 64 ff ff       	call   e07040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10bfc:	4d 89 ee             	mov    r14,r13
  e10bff:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10c05:	0f 83 fb 00 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10c0b:	e9 20 05 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10c10:	4c 89 ee             	mov    rsi,r13
  e10c13:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10c17:	4c 89 e1             	mov    rcx,r12
  e10c1a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10c1f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10c24:	e8 97 96 ff ff       	call   e0a2c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10c29:	4d 89 ee             	mov    r14,r13
  e10c2c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10c32:	0f 83 f3 02 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10c38:	e9 f3 04 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10c3d:	4c 89 ee             	mov    rsi,r13
  e10c40:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10c44:	4c 89 e1             	mov    rcx,r12
  e10c47:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10c4c:	e8 6f 73 ff ff       	call   e07fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10c51:	4d 89 ee             	mov    r14,r13
  e10c54:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10c5a:	0f 83 a6 00 00 00    	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10c60:	e9 cb 04 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10c65:	4c 89 ee             	mov    rsi,r13
  e10c68:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10c6c:	4c 89 e1             	mov    rcx,r12
  e10c6f:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10c74:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10c79:	e8 c2 25 ff ff       	call   e03240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10c7e:	4d 89 ee             	mov    r14,r13
  e10c81:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10c87:	0f 83 9e 02 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10c8d:	e9 9e 04 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10c92:	4c 89 ee             	mov    rsi,r13
  e10c95:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10c99:	4c 89 e1             	mov    rcx,r12
  e10c9c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10ca1:	e8 5a cb fd ff       	call   ded800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10ca6:	4d 89 ee             	mov    r14,r13
  e10ca9:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10caf:	73 55                	jae    e10d06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e10cb1:	e9 7a 04 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10cb6:	4c 89 ee             	mov    rsi,r13
  e10cb9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10cbd:	4c 89 e1             	mov    rcx,r12
  e10cc0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10cc5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10cca:	e8 b1 23 fe ff       	call   df3080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10ccf:	4d 89 ee             	mov    r14,r13
  e10cd2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10cd8:	0f 83 4d 02 00 00    	jae    e10f2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e10cde:	e9 4d 04 00 00       	jmp    e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10ce3:	4c 89 ee             	mov    rsi,r13
  e10ce6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10cea:	4c 89 e1             	mov    rcx,r12
  e10ced:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10cf2:	e8 09 c3 fd ff       	call   ded000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10cf7:	4d 89 ee             	mov    r14,r13
  e10cfa:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10d00:	0f 82 2a 04 00 00    	jb     e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10d06:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e10d0b:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e10d0e:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e10d13:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e10d18:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e10d1d:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e10d22:	eb 40                	jmp    e10d64 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ae4>
  e10d24:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10d29:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10d30:	00 
  e10d31:	4c 89 ff             	mov    rdi,r15
  e10d34:	4c 89 f6             	mov    rsi,r14
  e10d37:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10d3b:	48 89 d9             	mov    rcx,rbx
  e10d3e:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10d45:	00 
  e10d46:	e8 35 8f f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10d4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e10d50:	48 0f af dd          	imul   rbx,rbp
  e10d54:	49 83 c5 18          	add    r13,0x18
  e10d58:	4c 89 f0             	mov    rax,r14
  e10d5b:	49 ff cc             	dec    r12
  e10d5e:	0f 84 cc 03 00 00    	je     e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10d64:	4d 89 fe             	mov    r14,r15
  e10d67:	49 89 c7             	mov    r15,rax
  e10d6a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e10d6e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e10d72:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e10d77:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e10d7e:	00 
  e10d7f:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e10d83:	48 83 f8 0e          	cmp    rax,0xe
  e10d87:	0f 87 9b 2d 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e10d8d:	48 8d 0d 14 2e 29 ff 	lea    rcx,[rip+0xffffffffff292e14]        # a3ba8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31058>
  e10d94:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e10d98:	48 01 c8             	add    rax,rcx
  e10d9b:	ff e0                	jmp    rax
  e10d9d:	4c 89 ff             	mov    rdi,r15
  e10da0:	4c 89 f6             	mov    rsi,r14
  e10da3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10da7:	48 89 d9             	mov    rcx,rbx
  e10daa:	e8 11 f7 f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10daf:	eb 9f                	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10db1:	4c 89 ff             	mov    rdi,r15
  e10db4:	4c 89 f6             	mov    rsi,r14
  e10db7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10dbb:	48 89 d9             	mov    rcx,rbx
  e10dbe:	e8 bd 4b f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10dc3:	eb 8b                	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10dc5:	4c 89 ff             	mov    rdi,r15
  e10dc8:	4c 89 f6             	mov    rsi,r14
  e10dcb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10dcf:	48 89 d9             	mov    rcx,rbx
  e10dd2:	e8 29 01 f3 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10dd7:	e9 74 ff ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10ddc:	4c 89 ff             	mov    rdi,r15
  e10ddf:	4c 89 f6             	mov    rsi,r14
  e10de2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10de6:	48 89 d9             	mov    rcx,rbx
  e10de9:	e8 52 64 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10dee:	e9 5d ff ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10df3:	4c 89 ff             	mov    rdi,r15
  e10df6:	4c 89 f6             	mov    rsi,r14
  e10df9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10dfd:	48 89 d9             	mov    rcx,rbx
  e10e00:	e8 bb 2a f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e05:	e9 46 ff ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e0a:	4c 89 ff             	mov    rdi,r15
  e10e0d:	4c 89 f6             	mov    rsi,r14
  e10e10:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10e14:	48 89 d9             	mov    rcx,rbx
  e10e17:	e8 64 fa f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e1c:	e9 2f ff ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e21:	4c 89 ff             	mov    rdi,r15
  e10e24:	4c 89 f6             	mov    rsi,r14
  e10e27:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10e2b:	48 89 d9             	mov    rcx,rbx
  e10e2e:	e8 cd fc f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e33:	e9 18 ff ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e38:	4c 89 ff             	mov    rdi,r15
  e10e3b:	4c 89 f6             	mov    rsi,r14
  e10e3e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10e42:	48 89 d9             	mov    rcx,rbx
  e10e45:	e8 f6 13 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e4a:	e9 01 ff ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e4f:	4c 89 ff             	mov    rdi,r15
  e10e52:	4c 89 f6             	mov    rsi,r14
  e10e55:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10e59:	48 89 d9             	mov    rcx,rbx
  e10e5c:	e8 df f7 f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e61:	e9 ea fe ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e66:	4c 89 ff             	mov    rdi,r15
  e10e69:	4c 89 f6             	mov    rsi,r14
  e10e6c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10e70:	48 89 d9             	mov    rcx,rbx
  e10e73:	e8 48 05 f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e78:	e9 d3 fe ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e7d:	4c 89 ff             	mov    rdi,r15
  e10e80:	4c 89 f6             	mov    rsi,r14
  e10e83:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10e87:	48 89 d9             	mov    rcx,rbx
  e10e8a:	e8 71 78 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10e8f:	e9 bc fe ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10e94:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10e99:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10ea0:	00 
  e10ea1:	4c 89 ff             	mov    rdi,r15
  e10ea4:	4c 89 f6             	mov    rsi,r14
  e10ea7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10eab:	48 89 d9             	mov    rcx,rbx
  e10eae:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10eb5:	00 
  e10eb6:	e8 85 0c f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10ebb:	e9 90 fe ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10ec0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10ec5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10ecc:	00 
  e10ecd:	4c 89 ff             	mov    rdi,r15
  e10ed0:	4c 89 f6             	mov    rsi,r14
  e10ed3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10ed7:	48 89 d9             	mov    rcx,rbx
  e10eda:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10ee1:	00 
  e10ee2:	e8 99 3c f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10ee7:	e9 64 fe ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10eec:	4c 89 ff             	mov    rdi,r15
  e10eef:	4c 89 f6             	mov    rsi,r14
  e10ef2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10ef6:	48 89 d9             	mov    rcx,rbx
  e10ef9:	e8 c2 1d f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10efe:	e9 4d fe ff ff       	jmp    e10d50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e10f03:	4c 89 ee             	mov    rsi,r13
  e10f06:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10f0a:	4c 89 e1             	mov    rcx,r12
  e10f0d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e10f12:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10f17:	e8 64 bc ff ff       	call   e0cb80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10f1c:	4d 89 ee             	mov    r14,r13
  e10f1f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e10f25:	0f 82 05 02 00 00    	jb     e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10f2b:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e10f30:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e10f33:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e10f38:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e10f3d:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e10f42:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e10f47:	eb 3b                	jmp    e10f84 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2d04>
  e10f49:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10f4e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10f55:	00 
  e10f56:	4c 89 ff             	mov    rdi,r15
  e10f59:	4c 89 f6             	mov    rsi,r14
  e10f5c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10f60:	48 89 d9             	mov    rcx,rbx
  e10f63:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10f6a:	00 
  e10f6b:	e8 10 8d f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10f70:	48 0f af dd          	imul   rbx,rbp
  e10f74:	49 83 c5 18          	add    r13,0x18
  e10f78:	4c 89 f0             	mov    rax,r14
  e10f7b:	49 ff cc             	dec    r12
  e10f7e:	0f 84 ac 01 00 00    	je     e11130 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e10f84:	4d 89 fe             	mov    r14,r15
  e10f87:	49 89 c7             	mov    r15,rax
  e10f8a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e10f8e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e10f92:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e10f97:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e10f9e:	00 
  e10f9f:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e10fa3:	48 83 f8 0e          	cmp    rax,0xe
  e10fa7:	0f 87 7b 2b 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e10fad:	48 8d 0d 80 2b 29 ff 	lea    rcx,[rip+0xffffffffff292b80]        # a3b34 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30fe4>
  e10fb4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e10fb8:	48 01 c8             	add    rax,rcx
  e10fbb:	ff e0                	jmp    rax
  e10fbd:	4c 89 ff             	mov    rdi,r15
  e10fc0:	4c 89 f6             	mov    rsi,r14
  e10fc3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10fc7:	48 89 d9             	mov    rcx,rbx
  e10fca:	e8 f1 f4 f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10fcf:	eb 9f                	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e10fd1:	4c 89 ff             	mov    rdi,r15
  e10fd4:	4c 89 f6             	mov    rsi,r14
  e10fd7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10fdb:	48 89 d9             	mov    rcx,rbx
  e10fde:	e8 9d 49 f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10fe3:	eb 8b                	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e10fe5:	4c 89 ff             	mov    rdi,r15
  e10fe8:	4c 89 f6             	mov    rsi,r14
  e10feb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e10fef:	48 89 d9             	mov    rcx,rbx
  e10ff2:	e8 09 ff f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10ff7:	e9 74 ff ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e10ffc:	4c 89 ff             	mov    rdi,r15
  e10fff:	4c 89 f6             	mov    rsi,r14
  e11002:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11006:	48 89 d9             	mov    rcx,rbx
  e11009:	e8 32 62 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1100e:	e9 5d ff ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e11013:	4c 89 ff             	mov    rdi,r15
  e11016:	4c 89 f6             	mov    rsi,r14
  e11019:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1101d:	48 89 d9             	mov    rcx,rbx
  e11020:	e8 9b 28 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11025:	e9 46 ff ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e1102a:	4c 89 ff             	mov    rdi,r15
  e1102d:	4c 89 f6             	mov    rsi,r14
  e11030:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11034:	48 89 d9             	mov    rcx,rbx
  e11037:	e8 44 f8 f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1103c:	e9 2f ff ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e11041:	4c 89 ff             	mov    rdi,r15
  e11044:	4c 89 f6             	mov    rsi,r14
  e11047:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1104b:	48 89 d9             	mov    rcx,rbx
  e1104e:	e8 ad fa f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11053:	e9 18 ff ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e11058:	4c 89 ff             	mov    rdi,r15
  e1105b:	4c 89 f6             	mov    rsi,r14
  e1105e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11062:	48 89 d9             	mov    rcx,rbx
  e11065:	e8 d6 11 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1106a:	e9 01 ff ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e1106f:	4c 89 ff             	mov    rdi,r15
  e11072:	4c 89 f6             	mov    rsi,r14
  e11075:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11079:	48 89 d9             	mov    rcx,rbx
  e1107c:	e8 bf f5 f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11081:	e9 ea fe ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e11086:	4c 89 ff             	mov    rdi,r15
  e11089:	4c 89 f6             	mov    rsi,r14
  e1108c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11090:	48 89 d9             	mov    rcx,rbx
  e11093:	e8 28 03 f3 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11098:	e9 d3 fe ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e1109d:	4c 89 ff             	mov    rdi,r15
  e110a0:	4c 89 f6             	mov    rsi,r14
  e110a3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e110a7:	48 89 d9             	mov    rcx,rbx
  e110aa:	e8 51 76 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e110af:	e9 bc fe ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e110b4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e110b9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e110c0:	00 
  e110c1:	4c 89 ff             	mov    rdi,r15
  e110c4:	4c 89 f6             	mov    rsi,r14
  e110c7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e110cb:	48 89 d9             	mov    rcx,rbx
  e110ce:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e110d5:	00 
  e110d6:	e8 65 0a f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e110db:	e9 90 fe ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e110e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e110e5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e110ec:	00 
  e110ed:	4c 89 ff             	mov    rdi,r15
  e110f0:	4c 89 f6             	mov    rsi,r14
  e110f3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e110f7:	48 89 d9             	mov    rcx,rbx
  e110fa:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11101:	00 
  e11102:	e8 79 3a f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11107:	e9 64 fe ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e1110c:	4c 89 ff             	mov    rdi,r15
  e1110f:	4c 89 f6             	mov    rsi,r14
  e11112:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11116:	48 89 d9             	mov    rcx,rbx
  e11119:	e8 a2 1b f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1111e:	e9 4d fe ff ff       	jmp    e10f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e11123:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1112a:	84 00 00 00 00 00 
  e11130:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  e11135:	4c 8d ac 24 80 01 00 	lea    r13,[rsp+0x180]
  e1113c:	00 
  e1113d:	48 8b ac 24 b8 00 00 	mov    rbp,QWORD PTR [rsp+0xb8]
  e11144:	00 
  e11145:	4c 8b a4 24 90 00 00 	mov    r12,QWORD PTR [rsp+0x90]
  e1114c:	00 
  e1114d:	0f 84 5d f2 ff ff    	je     e103b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2130>
  e11153:	80 7c 24 40 00       	cmp    BYTE PTR [rsp+0x40],0x0
  e11158:	74 46                	je     e111a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f20>
  e1115a:	49 83 c6 10          	add    r14,0x10
  e1115e:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e11162:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  e11169:	00 
  e1116a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e11170:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  e11175:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  e11179:	0f 28 d0             	movaps xmm2,xmm0
  e1117c:	0f 16 d1             	movlhps xmm2,xmm1
  e1117f:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e11183:	66 0f 2b 11          	movntpd XMMWORD PTR [rcx],xmm2
  e11187:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  e1118b:	66 0f 2b 02          	movntpd XMMWORD PTR [rdx],xmm0
  e1118f:	48 01 e9             	add    rcx,rbp
  e11192:	49 83 c6 20          	add    r14,0x20
  e11196:	48 ff c8             	dec    rax
  e11199:	75 d5                	jne    e11170 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ef0>
  e1119b:	e9 10 f2 ff ff       	jmp    e103b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2130>
  e111a0:	48 c1 64 24 20 04    	shl    QWORD PTR [rsp+0x20],0x4
  e111a6:	49 83 c6 10          	add    r14,0x10
  e111aa:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  e111ae:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  e111b5:	00 
  e111b6:	eb 1f                	jmp    e111d7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f57>
  e111b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e111bf:	00 
  e111c0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  e111c3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  e111c7:	48 01 eb             	add    rbx,rbp
  e111ca:	49 83 c6 20          	add    r14,0x20
  e111ce:	49 ff cf             	dec    r15
  e111d1:	0f 84 d9 f1 ff ff    	je     e103b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2130>
  e111d7:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  e111dc:	41 0f 10 16          	movups xmm2,XMMWORD PTR [r14]
  e111e0:	0f 28 c8             	movaps xmm1,xmm0
  e111e3:	0f 16 ca             	movlhps xmm1,xmm2
  e111e6:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e111ea:	49 83 fc 01          	cmp    r12,0x1
  e111ee:	77 d0                	ja     e111c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f40>
  e111f0:	0f 57 d2             	xorps  xmm2,xmm2
  e111f3:	41 0f 29 95 d0 00 00 	movaps XMMWORD PTR [r13+0xd0],xmm2
  e111fa:	00 
  e111fb:	41 0f 29 95 c0 00 00 	movaps XMMWORD PTR [r13+0xc0],xmm2
  e11202:	00 
  e11203:	41 0f 29 95 b0 00 00 	movaps XMMWORD PTR [r13+0xb0],xmm2
  e1120a:	00 
  e1120b:	41 0f 29 95 a0 00 00 	movaps XMMWORD PTR [r13+0xa0],xmm2
  e11212:	00 
  e11213:	41 0f 29 95 90 00 00 	movaps XMMWORD PTR [r13+0x90],xmm2
  e1121a:	00 
  e1121b:	41 0f 29 95 80 00 00 	movaps XMMWORD PTR [r13+0x80],xmm2
  e11222:	00 
  e11223:	41 0f 29 55 70       	movaps XMMWORD PTR [r13+0x70],xmm2
  e11228:	41 0f 29 55 60       	movaps XMMWORD PTR [r13+0x60],xmm2
  e1122d:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  e11232:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  e11237:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  e1123c:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  e11241:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  e11246:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  e1124b:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e11252:	00 
  e11253:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e1125a:	00 
  e1125b:	48 89 df             	mov    rdi,rbx
  e1125e:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e11265:	00 
  e11266:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1126b:	ff 15 6f 94 43 00    	call   QWORD PTR [rip+0x43946f]        # 124a6e0 <memcpy@GLIBC_2.14>
  e11271:	e9 51 ff ff ff       	jmp    e111c7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f47>
  e11276:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  e1127d:	00 
  e1127e:	4c 89 e0             	mov    rax,r12
  e11281:	48 d1 e8             	shr    rax,1
  e11284:	4d 89 e0             	mov    r8,r12
  e11287:	49 29 c0             	sub    r8,rax
  e1128a:	0f 84 16 0f 00 00    	je     e121a6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e11290:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e11294:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e11299:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  e1129d:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e112a2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e112a6:	48 01 d2             	add    rdx,rdx
  e112a9:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  e112b0:	00 
  e112b1:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  e112b6:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e112bb:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e112c0:	48 ff c8             	dec    rax
  e112c3:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  e112c8:	4c 89 e0             	mov    rax,r12
  e112cb:	48 c1 e0 04          	shl    rax,0x4
  e112cf:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e112d6:	00 
  e112d7:	31 f6                	xor    esi,esi
  e112d9:	eb 32                	jmp    e1130d <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x308d>
  e112db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e112e0:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
  e112e5:	48 83 c6 02          	add    rsi,0x2
  e112e9:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  e112ee:	49 ff c8             	dec    r8
  e112f1:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  e112f8:	00 20 
  e112fa:	4d 85 c0             	test   r8,r8
  e112fd:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e11302:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e11307:	0f 84 99 0e 00 00    	je     e121a6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e1130d:	4c 89 e1             	mov    rcx,r12
  e11310:	48 29 f1             	sub    rcx,rsi
  e11313:	48 83 f9 02          	cmp    rcx,0x2
  e11317:	b8 02 00 00 00       	mov    eax,0x2
  e1131c:	48 0f 42 c1          	cmovb  rax,rcx
  e11320:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e11325:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e1132c:	00 
  e1132d:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  e11332:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  e11337:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e1133e:	00 
  e1133f:	74 6f                	je     e113b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3130>
  e11341:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e11347:	0f 84 81 28 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e1134d:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e11352:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e11355:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e11359:	48 83 f8 0d          	cmp    rax,0xd
  e1135d:	0f 87 2f 28 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e11363:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  e1136a:	00 
  e1136b:	48 0f af ce          	imul   rcx,rsi
  e1136f:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  e11376:	00 
  e11377:	48 8d 3c ca          	lea    rdi,[rdx+rcx*8]
  e1137b:	48 8d 0d 1e 2b 29 ff 	lea    rcx,[rip+0xffffffffff292b1e]        # a3ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31350>
  e11382:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e11386:	48 01 c8             	add    rax,rcx
  e11389:	ff e0                	jmp    rax
  e1138b:	4c 89 ee             	mov    rsi,r13
  e1138e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11392:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11397:	e8 a4 af ff ff       	call   e0c340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1139c:	4d 89 ee             	mov    r14,r13
  e1139f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e113a5:	0f 83 95 02 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e113ab:	e9 b0 0c 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e113b0:	48 89 f7             	mov    rdi,rsi
  e113b3:	48 c1 e7 04          	shl    rdi,0x4
  e113b7:	48 03 bc 24 98 00 00 	add    rdi,QWORD PTR [rsp+0x98]
  e113be:	00 
  e113bf:	48 83 f9 01          	cmp    rcx,0x1
  e113c3:	76 5b                	jbe    e11420 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x31a0>
  e113c5:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e113cb:	0f 84 fd 27 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e113d1:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e113d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e113d9:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e113dd:	48 83 f8 0d          	cmp    rax,0xd
  e113e1:	0f 87 ab 27 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e113e7:	48 8d 0d 3e 2a 29 ff 	lea    rcx,[rip+0xffffffffff292a3e]        # a3e2c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x312dc>
  e113ee:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e113f2:	48 01 c8             	add    rax,rcx
  e113f5:	ff e0                	jmp    rax
  e113f7:	4c 89 ee             	mov    rsi,r13
  e113fa:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e113fe:	4c 89 e1             	mov    rcx,r12
  e11401:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11406:	e8 75 ae ff ff       	call   e0c280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1140b:	4d 89 ee             	mov    r14,r13
  e1140e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11414:	0f 83 1c 08 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e1141a:	e9 41 0c 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1141f:	90                   	nop
  e11420:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e11426:	0f 84 a2 27 00 00    	je     e13bce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e1142c:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e11431:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e11434:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e11438:	48 83 f8 0d          	cmp    rax,0xd
  e1143c:	0f 87 50 27 00 00    	ja     e13b92 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e11442:	48 8d 0d 6f 29 29 ff 	lea    rcx,[rip+0xffffffffff29296f]        # a3db8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31268>
  e11449:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1144d:	48 01 c8             	add    rax,rcx
  e11450:	ff e0                	jmp    rax
  e11452:	4c 89 ee             	mov    rsi,r13
  e11455:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11459:	4c 89 e1             	mov    rcx,r12
  e1145c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11461:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11466:	e8 55 22 fd ff       	call   de36c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1146b:	4d 89 ee             	mov    r14,r13
  e1146e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11474:	0f 83 e1 09 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e1147a:	e9 e1 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1147f:	4c 89 ee             	mov    rsi,r13
  e11482:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11486:	e8 75 7b fe ff       	call   df9000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1148b:	4d 89 ee             	mov    r14,r13
  e1148e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11494:	0f 83 a6 01 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e1149a:	e9 c1 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1149f:	4c 89 ee             	mov    rsi,r13
  e114a2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e114a6:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e114ab:	e8 50 f4 fd ff       	call   df0900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e114b0:	4d 89 ee             	mov    r14,r13
  e114b3:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e114b9:	0f 83 81 01 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e114bf:	e9 9c 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e114c4:	4c 89 ee             	mov    rsi,r13
  e114c7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e114cb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e114d0:	e8 2b 35 ff ff       	call   e04a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e114d5:	4d 89 ee             	mov    r14,r13
  e114d8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e114de:	0f 83 5c 01 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e114e4:	e9 77 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e114e9:	4c 89 ee             	mov    rsi,r13
  e114ec:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e114f0:	e8 cb f6 fd ff       	call   df0bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e114f5:	4d 89 ee             	mov    r14,r13
  e114f8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e114fe:	0f 83 3c 01 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e11504:	e9 57 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11509:	4c 89 ee             	mov    rsi,r13
  e1150c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11510:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11515:	e8 66 8f fe ff       	call   dfa480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1151a:	4d 89 ee             	mov    r14,r13
  e1151d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11523:	0f 83 17 01 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e11529:	e9 32 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1152e:	4c 89 ee             	mov    rsi,r13
  e11531:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11535:	e8 86 58 ff ff       	call   e06dc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1153a:	4d 89 ee             	mov    r14,r13
  e1153d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11543:	0f 83 f7 00 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e11549:	e9 12 0b 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1154e:	4c 89 ee             	mov    rsi,r13
  e11551:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11555:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1155a:	e8 21 86 fd ff       	call   de9b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1155f:	4d 89 ee             	mov    r14,r13
  e11562:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11568:	0f 83 d2 00 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e1156e:	e9 ed 0a 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11573:	4c 89 ee             	mov    rsi,r13
  e11576:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1157a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1157f:	e8 bc 8d fe ff       	call   dfa340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11584:	4d 89 ee             	mov    r14,r13
  e11587:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1158d:	0f 83 ad 00 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e11593:	e9 c8 0a 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11598:	4c 89 ee             	mov    rsi,r13
  e1159b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1159f:	e8 5c a7 ff ff       	call   e0bd00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e115a4:	4d 89 ee             	mov    r14,r13
  e115a7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e115ad:	0f 83 8d 00 00 00    	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e115b3:	e9 a8 0a 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e115b8:	4c 89 ee             	mov    rsi,r13
  e115bb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e115bf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e115c4:	e8 f7 38 fd ff       	call   de4ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e115c9:	4d 89 ee             	mov    r14,r13
  e115cc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e115d2:	73 6c                	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e115d4:	e9 87 0a 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e115d9:	4c 89 ee             	mov    rsi,r13
  e115dc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e115e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e115e5:	e8 96 9a fe ff       	call   dfb080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e115ea:	4d 89 ee             	mov    r14,r13
  e115ed:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e115f3:	73 4b                	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e115f5:	e9 66 0a 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e115fa:	4c 89 ee             	mov    rsi,r13
  e115fd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11601:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11606:	e8 75 47 fd ff       	call   de5d80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1160b:	4d 89 ee             	mov    r14,r13
  e1160e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11614:	73 2a                	jae    e11640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e11616:	e9 45 0a 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1161b:	4c 89 ee             	mov    rsi,r13
  e1161e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11622:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11627:	e8 94 e6 fd ff       	call   defcc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1162c:	4d 89 ee             	mov    r14,r13
  e1162f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11635:	0f 82 25 0a 00 00    	jb     e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1163b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e11640:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e11645:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e11648:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e1164d:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e11652:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e11657:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e1165c:	eb 46                	jmp    e116a4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3424>
  e1165e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11663:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1166a:	00 
  e1166b:	4c 89 ff             	mov    rdi,r15
  e1166e:	4c 89 f6             	mov    rsi,r14
  e11671:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11675:	48 89 d9             	mov    rcx,rbx
  e11678:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1167f:	00 
  e11680:	e8 fb 85 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11685:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1168c:	00 00 00 00 
  e11690:	48 0f af dd          	imul   rbx,rbp
  e11694:	49 83 c5 18          	add    r13,0x18
  e11698:	4c 89 f0             	mov    rax,r14
  e1169b:	49 ff cc             	dec    r12
  e1169e:	0f 84 bc 09 00 00    	je     e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e116a4:	4d 89 fe             	mov    r14,r15
  e116a7:	49 89 c7             	mov    r15,rax
  e116aa:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e116ae:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e116b2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e116b7:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e116be:	00 
  e116bf:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e116c3:	48 83 f8 0e          	cmp    rax,0xe
  e116c7:	0f 87 5b 24 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e116cd:	48 8d 0d 04 28 29 ff 	lea    rcx,[rip+0xffffffffff292804]        # a3ed8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31388>
  e116d4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e116d8:	48 01 c8             	add    rax,rcx
  e116db:	ff e0                	jmp    rax
  e116dd:	4c 89 ff             	mov    rdi,r15
  e116e0:	4c 89 f6             	mov    rsi,r14
  e116e3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e116e7:	48 89 d9             	mov    rcx,rbx
  e116ea:	e8 d1 ed f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e116ef:	eb 9f                	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e116f1:	4c 89 ff             	mov    rdi,r15
  e116f4:	4c 89 f6             	mov    rsi,r14
  e116f7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e116fb:	48 89 d9             	mov    rcx,rbx
  e116fe:	e8 7d 42 f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11703:	eb 8b                	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e11705:	4c 89 ff             	mov    rdi,r15
  e11708:	4c 89 f6             	mov    rsi,r14
  e1170b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1170f:	48 89 d9             	mov    rcx,rbx
  e11712:	e8 e9 f7 f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11717:	e9 74 ff ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1171c:	4c 89 ff             	mov    rdi,r15
  e1171f:	4c 89 f6             	mov    rsi,r14
  e11722:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11726:	48 89 d9             	mov    rcx,rbx
  e11729:	e8 12 5b f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1172e:	e9 5d ff ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e11733:	4c 89 ff             	mov    rdi,r15
  e11736:	4c 89 f6             	mov    rsi,r14
  e11739:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1173d:	48 89 d9             	mov    rcx,rbx
  e11740:	e8 7b 21 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11745:	e9 46 ff ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1174a:	4c 89 ff             	mov    rdi,r15
  e1174d:	4c 89 f6             	mov    rsi,r14
  e11750:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11754:	48 89 d9             	mov    rcx,rbx
  e11757:	e8 24 f1 f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1175c:	e9 2f ff ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e11761:	4c 89 ff             	mov    rdi,r15
  e11764:	4c 89 f6             	mov    rsi,r14
  e11767:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1176b:	48 89 d9             	mov    rcx,rbx
  e1176e:	e8 8d f3 f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11773:	e9 18 ff ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e11778:	4c 89 ff             	mov    rdi,r15
  e1177b:	4c 89 f6             	mov    rsi,r14
  e1177e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11782:	48 89 d9             	mov    rcx,rbx
  e11785:	e8 b6 0a f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1178a:	e9 01 ff ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1178f:	4c 89 ff             	mov    rdi,r15
  e11792:	4c 89 f6             	mov    rsi,r14
  e11795:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11799:	48 89 d9             	mov    rcx,rbx
  e1179c:	e8 9f ee f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e117a1:	e9 ea fe ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e117a6:	4c 89 ff             	mov    rdi,r15
  e117a9:	4c 89 f6             	mov    rsi,r14
  e117ac:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e117b0:	48 89 d9             	mov    rcx,rbx
  e117b3:	e8 08 fc f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e117b8:	e9 d3 fe ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e117bd:	4c 89 ff             	mov    rdi,r15
  e117c0:	4c 89 f6             	mov    rsi,r14
  e117c3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e117c7:	48 89 d9             	mov    rcx,rbx
  e117ca:	e8 31 6f f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e117cf:	e9 bc fe ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e117d4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e117d9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e117e0:	00 
  e117e1:	4c 89 ff             	mov    rdi,r15
  e117e4:	4c 89 f6             	mov    rsi,r14
  e117e7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e117eb:	48 89 d9             	mov    rcx,rbx
  e117ee:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e117f5:	00 
  e117f6:	e8 45 03 f3 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e117fb:	e9 90 fe ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e11800:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11805:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1180c:	00 
  e1180d:	4c 89 ff             	mov    rdi,r15
  e11810:	4c 89 f6             	mov    rsi,r14
  e11813:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11817:	48 89 d9             	mov    rcx,rbx
  e1181a:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11821:	00 
  e11822:	e8 59 33 f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11827:	e9 64 fe ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1182c:	4c 89 ff             	mov    rdi,r15
  e1182f:	4c 89 f6             	mov    rsi,r14
  e11832:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11836:	48 89 d9             	mov    rcx,rbx
  e11839:	e8 82 14 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1183e:	e9 4d fe ff ff       	jmp    e11690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e11843:	4c 89 ee             	mov    rsi,r13
  e11846:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1184a:	4c 89 e1             	mov    rcx,r12
  e1184d:	e8 ae 76 ff ff       	call   e08f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11852:	4d 89 ee             	mov    r14,r13
  e11855:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1185b:	0f 83 d5 03 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11861:	e9 fa 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11866:	4c 89 ee             	mov    rsi,r13
  e11869:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1186d:	4c 89 e1             	mov    rcx,r12
  e11870:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11875:	e8 86 a2 fe ff       	call   dfbb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1187a:	4d 89 ee             	mov    r14,r13
  e1187d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11883:	0f 83 d2 05 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11889:	e9 d2 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1188e:	4c 89 ee             	mov    rsi,r13
  e11891:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11895:	4c 89 e1             	mov    rcx,r12
  e11898:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1189d:	e8 1e 13 fe ff       	call   df2bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e118a2:	4d 89 ee             	mov    r14,r13
  e118a5:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e118ab:	0f 83 85 03 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e118b1:	e9 aa 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e118b6:	4c 89 ee             	mov    rsi,r13
  e118b9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e118bd:	4c 89 e1             	mov    rcx,r12
  e118c0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e118c5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e118ca:	e8 31 90 fe ff       	call   dfa900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e118cf:	4d 89 ee             	mov    r14,r13
  e118d2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e118d8:	0f 83 7d 05 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e118de:	e9 7d 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e118e3:	4c 89 ee             	mov    rsi,r13
  e118e6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e118ea:	4c 89 e1             	mov    rcx,r12
  e118ed:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e118f2:	e8 89 be fe ff       	call   dfd780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e118f7:	4d 89 ee             	mov    r14,r13
  e118fa:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11900:	0f 83 30 03 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11906:	e9 55 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1190b:	4c 89 ee             	mov    rsi,r13
  e1190e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11912:	4c 89 e1             	mov    rcx,r12
  e11915:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1191a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1191f:	e8 1c c8 fd ff       	call   dee140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11924:	4d 89 ee             	mov    r14,r13
  e11927:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1192d:	0f 83 28 05 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11933:	e9 28 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11938:	4c 89 ee             	mov    rsi,r13
  e1193b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1193f:	4c 89 e1             	mov    rcx,r12
  e11942:	e8 f9 2e fe ff       	call   df4840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11947:	4d 89 ee             	mov    r14,r13
  e1194a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11950:	0f 83 e0 02 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11956:	e9 05 07 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1195b:	4c 89 ee             	mov    rsi,r13
  e1195e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11962:	4c 89 e1             	mov    rcx,r12
  e11965:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1196a:	e8 d1 98 fd ff       	call   deb240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1196f:	4d 89 ee             	mov    r14,r13
  e11972:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11978:	0f 83 dd 04 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e1197e:	e9 dd 06 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11983:	4c 89 ee             	mov    rsi,r13
  e11986:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1198a:	4c 89 e1             	mov    rcx,r12
  e1198d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11992:	e8 e9 cc fe ff       	call   dfe680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11997:	4d 89 ee             	mov    r14,r13
  e1199a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e119a0:	0f 83 90 02 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e119a6:	e9 b5 06 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e119ab:	4c 89 ee             	mov    rsi,r13
  e119ae:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e119b2:	4c 89 e1             	mov    rcx,r12
  e119b5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e119ba:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e119bf:	e8 fc 9a fe ff       	call   dfb4c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e119c4:	4d 89 ee             	mov    r14,r13
  e119c7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e119cd:	0f 83 88 04 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e119d3:	e9 88 06 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e119d8:	4c 89 ee             	mov    rsi,r13
  e119db:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e119df:	4c 89 e1             	mov    rcx,r12
  e119e2:	e8 99 7e fd ff       	call   de9880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e119e7:	4d 89 ee             	mov    r14,r13
  e119ea:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e119f0:	0f 83 40 02 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e119f6:	e9 65 06 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e119fb:	4c 89 ee             	mov    rsi,r13
  e119fe:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11a02:	4c 89 e1             	mov    rcx,r12
  e11a05:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11a0a:	e8 f1 fe fd ff       	call   df1900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11a0f:	4d 89 ee             	mov    r14,r13
  e11a12:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11a18:	0f 83 3d 04 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11a1e:	e9 3d 06 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11a23:	4c 89 ee             	mov    rsi,r13
  e11a26:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11a2a:	4c 89 e1             	mov    rcx,r12
  e11a2d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11a32:	e8 c9 c0 ff ff       	call   e0db00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11a37:	4d 89 ee             	mov    r14,r13
  e11a3a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11a40:	0f 83 f0 01 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11a46:	e9 15 06 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11a4b:	4c 89 ee             	mov    rsi,r13
  e11a4e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11a52:	4c 89 e1             	mov    rcx,r12
  e11a55:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11a5a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11a5f:	e8 dc 21 ff ff       	call   e03c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11a64:	4d 89 ee             	mov    r14,r13
  e11a67:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11a6d:	0f 83 e8 03 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11a73:	e9 e8 05 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11a78:	4c 89 ee             	mov    rsi,r13
  e11a7b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11a7f:	4c 89 e1             	mov    rcx,r12
  e11a82:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11a87:	e8 f4 9e fe ff       	call   dfb980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11a8c:	4d 89 ee             	mov    r14,r13
  e11a8f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11a95:	0f 83 9b 01 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11a9b:	e9 c0 05 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11aa0:	4c 89 ee             	mov    rsi,r13
  e11aa3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11aa7:	4c 89 e1             	mov    rcx,r12
  e11aaa:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11aaf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11ab4:	e8 07 27 fe ff       	call   df41c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11ab9:	4d 89 ee             	mov    r14,r13
  e11abc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11ac2:	0f 83 93 03 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11ac8:	e9 93 05 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11acd:	4c 89 ee             	mov    rsi,r13
  e11ad0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11ad4:	4c 89 e1             	mov    rcx,r12
  e11ad7:	e8 e4 77 fd ff       	call   de92c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11adc:	4d 89 ee             	mov    r14,r13
  e11adf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11ae5:	0f 83 4b 01 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11aeb:	e9 70 05 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11af0:	4c 89 ee             	mov    rsi,r13
  e11af3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11af7:	4c 89 e1             	mov    rcx,r12
  e11afa:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11aff:	e8 fc 28 fd ff       	call   de4400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11b04:	4d 89 ee             	mov    r14,r13
  e11b07:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11b0d:	0f 83 48 03 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11b13:	e9 48 05 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11b18:	4c 89 ee             	mov    rsi,r13
  e11b1b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11b1f:	4c 89 e1             	mov    rcx,r12
  e11b22:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11b27:	e8 14 55 ff ff       	call   e07040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11b2c:	4d 89 ee             	mov    r14,r13
  e11b2f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11b35:	0f 83 fb 00 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11b3b:	e9 20 05 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11b40:	4c 89 ee             	mov    rsi,r13
  e11b43:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11b47:	4c 89 e1             	mov    rcx,r12
  e11b4a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11b4f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11b54:	e8 67 87 ff ff       	call   e0a2c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11b59:	4d 89 ee             	mov    r14,r13
  e11b5c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11b62:	0f 83 f3 02 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11b68:	e9 f3 04 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11b6d:	4c 89 ee             	mov    rsi,r13
  e11b70:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11b74:	4c 89 e1             	mov    rcx,r12
  e11b77:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11b7c:	e8 3f 64 ff ff       	call   e07fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11b81:	4d 89 ee             	mov    r14,r13
  e11b84:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11b8a:	0f 83 a6 00 00 00    	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11b90:	e9 cb 04 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11b95:	4c 89 ee             	mov    rsi,r13
  e11b98:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11b9c:	4c 89 e1             	mov    rcx,r12
  e11b9f:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11ba4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11ba9:	e8 92 16 ff ff       	call   e03240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11bae:	4d 89 ee             	mov    r14,r13
  e11bb1:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11bb7:	0f 83 9e 02 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11bbd:	e9 9e 04 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11bc2:	4c 89 ee             	mov    rsi,r13
  e11bc5:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11bc9:	4c 89 e1             	mov    rcx,r12
  e11bcc:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11bd1:	e8 2a bc fd ff       	call   ded800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11bd6:	4d 89 ee             	mov    r14,r13
  e11bd9:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11bdf:	73 55                	jae    e11c36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e11be1:	e9 7a 04 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11be6:	4c 89 ee             	mov    rsi,r13
  e11be9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11bed:	4c 89 e1             	mov    rcx,r12
  e11bf0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11bf5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11bfa:	e8 81 14 fe ff       	call   df3080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11bff:	4d 89 ee             	mov    r14,r13
  e11c02:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11c08:	0f 83 4d 02 00 00    	jae    e11e5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e11c0e:	e9 4d 04 00 00       	jmp    e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11c13:	4c 89 ee             	mov    rsi,r13
  e11c16:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11c1a:	4c 89 e1             	mov    rcx,r12
  e11c1d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11c22:	e8 d9 b3 fd ff       	call   ded000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11c27:	4d 89 ee             	mov    r14,r13
  e11c2a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11c30:	0f 82 2a 04 00 00    	jb     e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11c36:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e11c3b:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e11c3e:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e11c43:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e11c48:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e11c4d:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e11c52:	eb 40                	jmp    e11c94 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a14>
  e11c54:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11c59:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11c60:	00 
  e11c61:	4c 89 ff             	mov    rdi,r15
  e11c64:	4c 89 f6             	mov    rsi,r14
  e11c67:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11c6b:	48 89 d9             	mov    rcx,rbx
  e11c6e:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11c75:	00 
  e11c76:	e8 05 80 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11c7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e11c80:	48 0f af dd          	imul   rbx,rbp
  e11c84:	49 83 c5 18          	add    r13,0x18
  e11c88:	4c 89 f0             	mov    rax,r14
  e11c8b:	49 ff cc             	dec    r12
  e11c8e:	0f 84 cc 03 00 00    	je     e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11c94:	4d 89 fe             	mov    r14,r15
  e11c97:	49 89 c7             	mov    r15,rax
  e11c9a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e11c9e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e11ca2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e11ca7:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e11cae:	00 
  e11caf:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e11cb3:	48 83 f8 0e          	cmp    rax,0xe
  e11cb7:	0f 87 6b 1e 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e11cbd:	48 8d 0d a0 21 29 ff 	lea    rcx,[rip+0xffffffffff2921a0]        # a3e64 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31314>
  e11cc4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e11cc8:	48 01 c8             	add    rax,rcx
  e11ccb:	ff e0                	jmp    rax
  e11ccd:	4c 89 ff             	mov    rdi,r15
  e11cd0:	4c 89 f6             	mov    rsi,r14
  e11cd3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11cd7:	48 89 d9             	mov    rcx,rbx
  e11cda:	e8 e1 e7 f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11cdf:	eb 9f                	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11ce1:	4c 89 ff             	mov    rdi,r15
  e11ce4:	4c 89 f6             	mov    rsi,r14
  e11ce7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11ceb:	48 89 d9             	mov    rcx,rbx
  e11cee:	e8 8d 3c f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11cf3:	eb 8b                	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11cf5:	4c 89 ff             	mov    rdi,r15
  e11cf8:	4c 89 f6             	mov    rsi,r14
  e11cfb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11cff:	48 89 d9             	mov    rcx,rbx
  e11d02:	e8 f9 f1 f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d07:	e9 74 ff ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d0c:	4c 89 ff             	mov    rdi,r15
  e11d0f:	4c 89 f6             	mov    rsi,r14
  e11d12:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11d16:	48 89 d9             	mov    rcx,rbx
  e11d19:	e8 22 55 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d1e:	e9 5d ff ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d23:	4c 89 ff             	mov    rdi,r15
  e11d26:	4c 89 f6             	mov    rsi,r14
  e11d29:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11d2d:	48 89 d9             	mov    rcx,rbx
  e11d30:	e8 8b 1b f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d35:	e9 46 ff ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d3a:	4c 89 ff             	mov    rdi,r15
  e11d3d:	4c 89 f6             	mov    rsi,r14
  e11d40:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11d44:	48 89 d9             	mov    rcx,rbx
  e11d47:	e8 34 eb f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d4c:	e9 2f ff ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d51:	4c 89 ff             	mov    rdi,r15
  e11d54:	4c 89 f6             	mov    rsi,r14
  e11d57:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11d5b:	48 89 d9             	mov    rcx,rbx
  e11d5e:	e8 9d ed f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d63:	e9 18 ff ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d68:	4c 89 ff             	mov    rdi,r15
  e11d6b:	4c 89 f6             	mov    rsi,r14
  e11d6e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11d72:	48 89 d9             	mov    rcx,rbx
  e11d75:	e8 c6 04 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d7a:	e9 01 ff ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d7f:	4c 89 ff             	mov    rdi,r15
  e11d82:	4c 89 f6             	mov    rsi,r14
  e11d85:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11d89:	48 89 d9             	mov    rcx,rbx
  e11d8c:	e8 af e8 f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11d91:	e9 ea fe ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11d96:	4c 89 ff             	mov    rdi,r15
  e11d99:	4c 89 f6             	mov    rsi,r14
  e11d9c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11da0:	48 89 d9             	mov    rcx,rbx
  e11da3:	e8 18 f6 f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11da8:	e9 d3 fe ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11dad:	4c 89 ff             	mov    rdi,r15
  e11db0:	4c 89 f6             	mov    rsi,r14
  e11db3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11db7:	48 89 d9             	mov    rcx,rbx
  e11dba:	e8 41 69 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11dbf:	e9 bc fe ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11dc4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11dc9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11dd0:	00 
  e11dd1:	4c 89 ff             	mov    rdi,r15
  e11dd4:	4c 89 f6             	mov    rsi,r14
  e11dd7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11ddb:	48 89 d9             	mov    rcx,rbx
  e11dde:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11de5:	00 
  e11de6:	e8 55 fd f2 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11deb:	e9 90 fe ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11df0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11df5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11dfc:	00 
  e11dfd:	4c 89 ff             	mov    rdi,r15
  e11e00:	4c 89 f6             	mov    rsi,r14
  e11e03:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11e07:	48 89 d9             	mov    rcx,rbx
  e11e0a:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11e11:	00 
  e11e12:	e8 69 2d f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11e17:	e9 64 fe ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11e1c:	4c 89 ff             	mov    rdi,r15
  e11e1f:	4c 89 f6             	mov    rsi,r14
  e11e22:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11e26:	48 89 d9             	mov    rcx,rbx
  e11e29:	e8 92 0e f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11e2e:	e9 4d fe ff ff       	jmp    e11c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e11e33:	4c 89 ee             	mov    rsi,r13
  e11e36:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11e3a:	4c 89 e1             	mov    rcx,r12
  e11e3d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e11e42:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11e47:	e8 34 ad ff ff       	call   e0cb80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11e4c:	4d 89 ee             	mov    r14,r13
  e11e4f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e11e55:	0f 82 05 02 00 00    	jb     e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11e5b:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e11e60:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e11e63:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e11e68:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e11e6d:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e11e72:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e11e77:	eb 3b                	jmp    e11eb4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c34>
  e11e79:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11e7e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11e85:	00 
  e11e86:	4c 89 ff             	mov    rdi,r15
  e11e89:	4c 89 f6             	mov    rsi,r14
  e11e8c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11e90:	48 89 d9             	mov    rcx,rbx
  e11e93:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11e9a:	00 
  e11e9b:	e8 e0 7d f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11ea0:	48 0f af dd          	imul   rbx,rbp
  e11ea4:	49 83 c5 18          	add    r13,0x18
  e11ea8:	4c 89 f0             	mov    rax,r14
  e11eab:	49 ff cc             	dec    r12
  e11eae:	0f 84 ac 01 00 00    	je     e12060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e11eb4:	4d 89 fe             	mov    r14,r15
  e11eb7:	49 89 c7             	mov    r15,rax
  e11eba:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e11ebe:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e11ec2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e11ec7:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e11ece:	00 
  e11ecf:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e11ed3:	48 83 f8 0e          	cmp    rax,0xe
  e11ed7:	0f 87 4b 1c 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e11edd:	48 8d 0d 0c 1f 29 ff 	lea    rcx,[rip+0xffffffffff291f0c]        # a3df0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x312a0>
  e11ee4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e11ee8:	48 01 c8             	add    rax,rcx
  e11eeb:	ff e0                	jmp    rax
  e11eed:	4c 89 ff             	mov    rdi,r15
  e11ef0:	4c 89 f6             	mov    rsi,r14
  e11ef3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11ef7:	48 89 d9             	mov    rcx,rbx
  e11efa:	e8 c1 e5 f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11eff:	eb 9f                	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f01:	4c 89 ff             	mov    rdi,r15
  e11f04:	4c 89 f6             	mov    rsi,r14
  e11f07:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f0b:	48 89 d9             	mov    rcx,rbx
  e11f0e:	e8 6d 3a f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f13:	eb 8b                	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f15:	4c 89 ff             	mov    rdi,r15
  e11f18:	4c 89 f6             	mov    rsi,r14
  e11f1b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f1f:	48 89 d9             	mov    rcx,rbx
  e11f22:	e8 d9 ef f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f27:	e9 74 ff ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f2c:	4c 89 ff             	mov    rdi,r15
  e11f2f:	4c 89 f6             	mov    rsi,r14
  e11f32:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f36:	48 89 d9             	mov    rcx,rbx
  e11f39:	e8 02 53 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f3e:	e9 5d ff ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f43:	4c 89 ff             	mov    rdi,r15
  e11f46:	4c 89 f6             	mov    rsi,r14
  e11f49:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f4d:	48 89 d9             	mov    rcx,rbx
  e11f50:	e8 6b 19 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f55:	e9 46 ff ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f5a:	4c 89 ff             	mov    rdi,r15
  e11f5d:	4c 89 f6             	mov    rsi,r14
  e11f60:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f64:	48 89 d9             	mov    rcx,rbx
  e11f67:	e8 14 e9 f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f6c:	e9 2f ff ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f71:	4c 89 ff             	mov    rdi,r15
  e11f74:	4c 89 f6             	mov    rsi,r14
  e11f77:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f7b:	48 89 d9             	mov    rcx,rbx
  e11f7e:	e8 7d eb f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f83:	e9 18 ff ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f88:	4c 89 ff             	mov    rdi,r15
  e11f8b:	4c 89 f6             	mov    rsi,r14
  e11f8e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11f92:	48 89 d9             	mov    rcx,rbx
  e11f95:	e8 a6 02 f3 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11f9a:	e9 01 ff ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11f9f:	4c 89 ff             	mov    rdi,r15
  e11fa2:	4c 89 f6             	mov    rsi,r14
  e11fa5:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11fa9:	48 89 d9             	mov    rcx,rbx
  e11fac:	e8 8f e6 f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11fb1:	e9 ea fe ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11fb6:	4c 89 ff             	mov    rdi,r15
  e11fb9:	4c 89 f6             	mov    rsi,r14
  e11fbc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11fc0:	48 89 d9             	mov    rcx,rbx
  e11fc3:	e8 f8 f3 f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11fc8:	e9 d3 fe ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11fcd:	4c 89 ff             	mov    rdi,r15
  e11fd0:	4c 89 f6             	mov    rsi,r14
  e11fd3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11fd7:	48 89 d9             	mov    rcx,rbx
  e11fda:	e8 21 67 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11fdf:	e9 bc fe ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e11fe4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11fe9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11ff0:	00 
  e11ff1:	4c 89 ff             	mov    rdi,r15
  e11ff4:	4c 89 f6             	mov    rsi,r14
  e11ff7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e11ffb:	48 89 d9             	mov    rcx,rbx
  e11ffe:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12005:	00 
  e12006:	e8 35 fb f2 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1200b:	e9 90 fe ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e12010:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12015:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1201c:	00 
  e1201d:	4c 89 ff             	mov    rdi,r15
  e12020:	4c 89 f6             	mov    rsi,r14
  e12023:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12027:	48 89 d9             	mov    rcx,rbx
  e1202a:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12031:	00 
  e12032:	e8 49 2b f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12037:	e9 64 fe ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e1203c:	4c 89 ff             	mov    rdi,r15
  e1203f:	4c 89 f6             	mov    rsi,r14
  e12042:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12046:	48 89 d9             	mov    rcx,rbx
  e12049:	e8 72 0c f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1204e:	e9 4d fe ff ff       	jmp    e11ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e12053:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1205a:	84 00 00 00 00 00 
  e12060:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  e12065:	4c 8d ac 24 80 01 00 	lea    r13,[rsp+0x180]
  e1206c:	00 
  e1206d:	48 8b ac 24 b8 00 00 	mov    rbp,QWORD PTR [rsp+0xb8]
  e12074:	00 
  e12075:	4c 8b a4 24 90 00 00 	mov    r12,QWORD PTR [rsp+0x90]
  e1207c:	00 
  e1207d:	0f 84 5d f2 ff ff    	je     e112e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e12083:	80 7c 24 40 00       	cmp    BYTE PTR [rsp+0x40],0x0
  e12088:	74 46                	je     e120d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e1208a:	49 83 c6 10          	add    r14,0x10
  e1208e:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e12092:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  e12099:	00 
  e1209a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e120a0:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  e120a5:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  e120a9:	0f 28 d1             	movaps xmm2,xmm1
  e120ac:	0f 16 d0             	movlhps xmm2,xmm0
  e120af:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e120b3:	66 0f 2b 11          	movntpd XMMWORD PTR [rcx],xmm2
  e120b7:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  e120bb:	66 0f 2b 0a          	movntpd XMMWORD PTR [rdx],xmm1
  e120bf:	48 01 e9             	add    rcx,rbp
  e120c2:	49 83 c6 20          	add    r14,0x20
  e120c6:	48 ff c8             	dec    rax
  e120c9:	75 d5                	jne    e120a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  e120cb:	e9 10 f2 ff ff       	jmp    e112e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e120d0:	48 c1 64 24 20 04    	shl    QWORD PTR [rsp+0x20],0x4
  e120d6:	49 83 c6 10          	add    r14,0x10
  e120da:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  e120de:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  e120e5:	00 
  e120e6:	eb 1f                	jmp    e12107 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e87>
  e120e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e120ef:	00 
  e120f0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  e120f3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  e120f7:	48 01 eb             	add    rbx,rbp
  e120fa:	49 83 c6 20          	add    r14,0x20
  e120fe:	49 ff cf             	dec    r15
  e12101:	0f 84 d9 f1 ff ff    	je     e112e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e12107:	41 0f 10 56 f0       	movups xmm2,XMMWORD PTR [r14-0x10]
  e1210c:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  e12110:	0f 28 c8             	movaps xmm1,xmm0
  e12113:	0f 16 ca             	movlhps xmm1,xmm2
  e12116:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e1211a:	49 83 fc 01          	cmp    r12,0x1
  e1211e:	77 d0                	ja     e120f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e70>
  e12120:	0f 57 d2             	xorps  xmm2,xmm2
  e12123:	41 0f 29 95 d0 00 00 	movaps XMMWORD PTR [r13+0xd0],xmm2
  e1212a:	00 
  e1212b:	41 0f 29 95 c0 00 00 	movaps XMMWORD PTR [r13+0xc0],xmm2
  e12132:	00 
  e12133:	41 0f 29 95 b0 00 00 	movaps XMMWORD PTR [r13+0xb0],xmm2
  e1213a:	00 
  e1213b:	41 0f 29 95 a0 00 00 	movaps XMMWORD PTR [r13+0xa0],xmm2
  e12142:	00 
  e12143:	41 0f 29 95 90 00 00 	movaps XMMWORD PTR [r13+0x90],xmm2
  e1214a:	00 
  e1214b:	41 0f 29 95 80 00 00 	movaps XMMWORD PTR [r13+0x80],xmm2
  e12152:	00 
  e12153:	41 0f 29 55 70       	movaps XMMWORD PTR [r13+0x70],xmm2
  e12158:	41 0f 29 55 60       	movaps XMMWORD PTR [r13+0x60],xmm2
  e1215d:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  e12162:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  e12167:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  e1216c:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  e12171:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  e12176:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  e1217b:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e12182:	00 
  e12183:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e1218a:	00 
  e1218b:	48 89 df             	mov    rdi,rbx
  e1218e:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e12195:	00 
  e12196:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1219b:	ff 15 3f 85 43 00    	call   QWORD PTR [rip+0x43853f]        # 124a6e0 <memcpy@GLIBC_2.14>
  e121a1:	e9 51 ff ff ff       	jmp    e120f7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e77>
  e121a6:	80 7c 24 40 00       	cmp    BYTE PTR [rsp+0x40],0x0
  e121ab:	74 03                	je     e121b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f30>
  e121ad:	0f ae f8             	sfence
  e121b0:	48 81 c4 88 02 00 00 	add    rsp,0x288
  e121b7:	5b                   	pop    rbx
  e121b8:	41 5c                	pop    r12
  e121ba:	41 5d                	pop    r13
  e121bc:	41 5e                	pop    r14
  e121be:	41 5f                	pop    r15
  e121c0:	5d                   	pop    rbp
  e121c1:	c3                   	ret
  e121c2:	89 d8                	mov    eax,ebx
  e121c4:	31 d2                	xor    edx,edx
  e121c6:	f7 f6                	div    esi
  e121c8:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e121cd:	48 03 b4 24 d8 00 00 	add    rsi,QWORD PTR [rsp+0xd8]
  e121d4:	00 
  e121d5:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  e121da:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e121df:	0f 16 c0             	movlhps xmm0,xmm0
  e121e2:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e121e7:	45 31 e4             	xor    r12d,r12d
  e121ea:	48 85 d2             	test   rdx,rdx
  e121ed:	41 0f 95 c4          	setne  r12b
  e121f1:	49 01 c4             	add    r12,rax
  e121f4:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
  e121fb:	00 
  e121fc:	48 89 ca             	mov    rdx,rcx
  e121ff:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
  e12203:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  e12208:	4c 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],r14
  e1220f:	00 
  e12210:	0f 84 22 06 00 00    	je     e12838 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45b8>
  e12216:	4d 85 ff             	test   r15,r15
  e12219:	48 8b 84 24 20 01 00 	mov    rax,QWORD PTR [rsp+0x120]
  e12220:	00 
  e12221:	0f 84 c3 19 00 00    	je     e13bea <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x596a>
  e12227:	4c 8b 68 70          	mov    r13,QWORD PTR [rax+0x70]
  e1222b:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  e12232:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e12237:	48 89 d1             	mov    rcx,rdx
  e1223a:	48 d1 e9             	shr    rcx,1
  e1223d:	48 89 d0             	mov    rax,rdx
  e12240:	48 29 c8             	sub    rax,rcx
  e12243:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e1224a:	00 
  e1224b:	f3 49 0f bc c5       	tzcnt  rax,r13
  e12250:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e12255:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  e1225c:	ff ff 07 
  e1225f:	4c 01 e8             	add    rax,r13
  e12262:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e12267:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e1226c:	48 83 c0 20          	add    rax,0x20
  e12270:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
  e12277:	00 
  e12278:	49 8d 47 ff          	lea    rax,[r15-0x1]
  e1227c:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e12281:	48 29 d1             	sub    rcx,rdx
  e12284:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  e1228b:	00 
  e1228c:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e12293:	00 
  e12294:	48 83 c0 20          	add    rax,0x20
  e12298:	48 89 84 24 38 01 00 	mov    QWORD PTR [rsp+0x138],rax
  e1229f:	00 
  e122a0:	4c 89 c0             	mov    rax,r8
  e122a3:	48 c1 e0 06          	shl    rax,0x6
  e122a7:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
  e122ae:	00 
  e122af:	48 89 d8             	mov    rax,rbx
  e122b2:	48 c1 e0 05          	shl    rax,0x5
  e122b6:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e122bb:	31 c9                	xor    ecx,ecx
  e122bd:	4c 89 bc 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r15
  e122c4:	00 
  e122c5:	40 88 6c 24 10       	mov    BYTE PTR [rsp+0x10],bpl
  e122ca:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  e122cf:	eb 45                	jmp    e12316 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4096>
  e122d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e122d8:	0f 1f 84 00 00 00 00 
  e122df:	00 
  e122e0:	48 8b 84 24 28 01 00 	mov    rax,QWORD PTR [rsp+0x128]
  e122e7:	00 
  e122e8:	48 01 84 24 38 01 00 	add    QWORD PTR [rsp+0x138],rax
  e122ef:	00 
  e122f0:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e122f7:	00 
  e122f8:	4c 8b a4 24 58 01 00 	mov    r12,QWORD PTR [rsp+0x158]
  e122ff:	00 
  e12300:	4d 85 e4             	test   r12,r12
  e12303:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e12308:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e1230f:	00 
  e12310:	0f 84 22 05 00 00    	je     e12838 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45b8>
  e12316:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e1231b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e1231e:	48 83 f8 02          	cmp    rax,0x2
  e12322:	74 6c                	je     e12390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4110>
  e12324:	48 83 f8 04          	cmp    rax,0x4
  e12328:	74 36                	je     e12360 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x40e0>
  e1232a:	48 83 f8 08          	cmp    rax,0x8
  e1232e:	0f 85 46 18 00 00    	jne    e13b7a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58fa>
  e12334:	48 89 cf             	mov    rdi,rcx
  e12337:	48 c1 e7 04          	shl    rdi,0x4
  e1233b:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e12342:	00 
  e12343:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e12348:	49 89 ce             	mov    r14,rcx
  e1234b:	48 89 d9             	mov    rcx,rbx
  e1234e:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e12353:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12358:	e8 a3 ed fc ff       	call   de1100 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e1235d:	eb 5a                	jmp    e123b9 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4139>
  e1235f:	90                   	nop
  e12360:	48 89 cf             	mov    rdi,rcx
  e12363:	48 c1 e7 04          	shl    rdi,0x4
  e12367:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1236e:	00 
  e1236f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e12374:	49 89 ce             	mov    r14,rcx
  e12377:	48 89 d9             	mov    rcx,rbx
  e1237a:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e1237f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12384:	e8 f7 f8 fc ff       	call   de1c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e12389:	eb 2e                	jmp    e123b9 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4139>
  e1238b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e12390:	48 89 cf             	mov    rdi,rcx
  e12393:	48 c1 e7 04          	shl    rdi,0x4
  e12397:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1239e:	00 
  e1239f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e123a4:	49 89 ce             	mov    r14,rcx
  e123a7:	48 89 d9             	mov    rcx,rbx
  e123aa:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e123af:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e123b4:	e8 07 f2 fc ff       	call   de15c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e123b9:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e123c0:	00 
  e123c1:	4c 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r14
  e123c8:	00 
  e123c9:	4c 01 f0             	add    rax,r14
  e123cc:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
  e123d3:	00 
  e123d4:	49 ff cc             	dec    r12
  e123d7:	4c 89 a4 24 58 01 00 	mov    QWORD PTR [rsp+0x158],r12
  e123de:	00 
  e123df:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
  e123e6:	00 
  e123e7:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  e123ec:	31 c0                	xor    eax,eax
  e123ee:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e123f2:	eb 2a                	jmp    e1241e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x419e>
  e123f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e123fb:	00 00 00 00 00 
  e12400:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e12407:	00 
  e12408:	48 ff c0             	inc    rax
  e1240b:	48 83 44 24 40 40    	add    QWORD PTR [rsp+0x40],0x40
  e12411:	4c 39 c0             	cmp    rax,r8
  e12414:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12418:	0f 84 c2 fe ff ff    	je     e122e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4060>
  e1241e:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  e12425:	00 
  e12426:	48 8d 0c 00          	lea    rcx,[rax+rax*1]
  e1242a:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  e1242f:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
  e12436:	00 
  e12437:	48 0f af c1          	imul   rax,rcx
  e1243b:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e12440:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  e12444:	49 83 ff 02          	cmp    r15,0x2
  e12448:	0f 82 e2 01 00 00    	jb     e12630 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x43b0>
  e1244e:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e12453:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  e12456:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  e1245b:	4c 8b ac 24 d0 00 00 	mov    r13,QWORD PTR [rsp+0xd0]
  e12462:	00 
  e12463:	49 89 cc             	mov    r12,rcx
  e12466:	4c 8b bc 24 d8 00 00 	mov    r15,QWORD PTR [rsp+0xd8]
  e1246d:	00 
  e1246e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  e12473:	eb 45                	jmp    e124ba <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x423a>
  e12475:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1247a:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12481:	00 
  e12482:	4c 89 ff             	mov    rdi,r15
  e12485:	4c 89 e6             	mov    rsi,r12
  e12488:	4c 89 f1             	mov    rcx,r14
  e1248b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12492:	00 
  e12493:	e8 e8 77 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12498:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e1249f:	00 
  e124a0:	4c 0f af f5          	imul   r14,rbp
  e124a4:	49 83 c5 18          	add    r13,0x18
  e124a8:	48 ff cb             	dec    rbx
  e124ab:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e124af:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  e124b4:	0f 84 79 01 00 00    	je     e12633 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x43b3>
  e124ba:	4c 89 f8             	mov    rax,r15
  e124bd:	4d 89 e7             	mov    r15,r12
  e124c0:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e124c4:	48 83 fb 01          	cmp    rbx,0x1
  e124c8:	49 89 c4             	mov    r12,rax
  e124cb:	4c 0f 44 e1          	cmove  r12,rcx
  e124cf:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e124d3:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e124d8:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e124df:	00 
  e124e0:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e124e4:	48 83 f8 0e          	cmp    rax,0xe
  e124e8:	0f 87 3a 16 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e124ee:	48 8d 0d 1f 1a 29 ff 	lea    rcx,[rip+0xffffffffff291a1f]        # a3f14 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x313c4>
  e124f5:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e124f9:	48 01 c8             	add    rax,rcx
  e124fc:	ff e0                	jmp    rax
  e124fe:	4c 89 ff             	mov    rdi,r15
  e12501:	4c 89 e6             	mov    rsi,r12
  e12504:	4c 89 f1             	mov    rcx,r14
  e12507:	e8 b4 df f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1250c:	eb 92                	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1250e:	4c 89 ff             	mov    rdi,r15
  e12511:	4c 89 e6             	mov    rsi,r12
  e12514:	4c 89 f1             	mov    rcx,r14
  e12517:	e8 64 34 f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1251c:	eb 82                	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1251e:	4c 89 ff             	mov    rdi,r15
  e12521:	4c 89 e6             	mov    rsi,r12
  e12524:	4c 89 f1             	mov    rcx,r14
  e12527:	e8 d4 e9 f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1252c:	e9 6f ff ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e12531:	4c 89 ff             	mov    rdi,r15
  e12534:	4c 89 e6             	mov    rsi,r12
  e12537:	4c 89 f1             	mov    rcx,r14
  e1253a:	e8 01 4d f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1253f:	e9 5c ff ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e12544:	4c 89 ff             	mov    rdi,r15
  e12547:	4c 89 e6             	mov    rsi,r12
  e1254a:	4c 89 f1             	mov    rcx,r14
  e1254d:	e8 6e 13 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12552:	e9 49 ff ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e12557:	4c 89 ff             	mov    rdi,r15
  e1255a:	4c 89 e6             	mov    rsi,r12
  e1255d:	4c 89 f1             	mov    rcx,r14
  e12560:	e8 1b e3 f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12565:	e9 36 ff ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1256a:	4c 89 ff             	mov    rdi,r15
  e1256d:	4c 89 e6             	mov    rsi,r12
  e12570:	4c 89 f1             	mov    rcx,r14
  e12573:	e8 88 e5 f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12578:	e9 23 ff ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1257d:	4c 89 ff             	mov    rdi,r15
  e12580:	4c 89 e6             	mov    rsi,r12
  e12583:	4c 89 f1             	mov    rcx,r14
  e12586:	e8 b5 fc f2 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1258b:	e9 10 ff ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e12590:	4c 89 ff             	mov    rdi,r15
  e12593:	4c 89 e6             	mov    rsi,r12
  e12596:	4c 89 f1             	mov    rcx,r14
  e12599:	e8 a2 e0 f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1259e:	e9 fd fe ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e125a3:	4c 89 ff             	mov    rdi,r15
  e125a6:	4c 89 e6             	mov    rsi,r12
  e125a9:	4c 89 f1             	mov    rcx,r14
  e125ac:	e8 0f ee f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125b1:	e9 ea fe ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e125b6:	4c 89 ff             	mov    rdi,r15
  e125b9:	4c 89 e6             	mov    rsi,r12
  e125bc:	4c 89 f1             	mov    rcx,r14
  e125bf:	e8 3c 61 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125c4:	e9 d7 fe ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e125c9:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e125ce:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e125d5:	00 
  e125d6:	4c 89 ff             	mov    rdi,r15
  e125d9:	4c 89 e6             	mov    rsi,r12
  e125dc:	4c 89 f1             	mov    rcx,r14
  e125df:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e125e6:	00 
  e125e7:	e8 54 f5 f2 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125ec:	e9 af fe ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e125f1:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e125f6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e125fd:	00 
  e125fe:	4c 89 ff             	mov    rdi,r15
  e12601:	4c 89 e6             	mov    rsi,r12
  e12604:	4c 89 f1             	mov    rcx,r14
  e12607:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1260e:	00 
  e1260f:	e8 6c 25 f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12614:	e9 87 fe ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e12619:	4c 89 ff             	mov    rdi,r15
  e1261c:	4c 89 e6             	mov    rsi,r12
  e1261f:	4c 89 f1             	mov    rcx,r14
  e12622:	e8 99 06 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12627:	e9 74 fe ff ff       	jmp    e124a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1262c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e12630:	49 89 cc             	mov    r12,rcx
  e12633:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
  e12638:	4d 85 ed             	test   r13,r13
  e1263b:	0f 84 81 15 00 00    	je     e13bc2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5942>
  e12641:	48 89 d0             	mov    rax,rdx
  e12644:	4c 09 e8             	or     rax,r13
  e12647:	48 c1 e8 20          	shr    rax,0x20
  e1264b:	4c 8b 84 24 b8 00 00 	mov    r8,QWORD PTR [rsp+0xb8]
  e12652:	00 
  e12653:	4c 8b bc 24 f8 00 00 	mov    r15,QWORD PTR [rsp+0xf8]
  e1265a:	00 
  e1265b:	0f b6 6c 24 10       	movzx  ebp,BYTE PTR [rsp+0x10]
  e12660:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
  e12665:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  e1266a:	74 24                	je     e12690 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4410>
  e1266c:	48 89 d0             	mov    rax,rdx
  e1266f:	31 d2                	xor    edx,edx
  e12671:	49 f7 f5             	div    r13
  e12674:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e1267b:	00 00 
  e1267d:	75 27                	jne    e126a6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4426>
  e1267f:	e9 7c fd ff ff       	jmp    e12400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4180>
  e12684:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1268b:	00 00 00 00 00 
  e12690:	89 d0                	mov    eax,edx
  e12692:	31 d2                	xor    edx,edx
  e12694:	41 f7 f5             	div    r13d
  e12697:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e1269e:	00 00 
  e126a0:	0f 84 5a fd ff ff    	je     e12400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4180>
  e126a6:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  e126ad:	00 
  e126ae:	48 03 94 24 f0 00 00 	add    rdx,QWORD PTR [rsp+0xf0]
  e126b5:	00 
  e126b6:	48 01 d2             	add    rdx,rdx
  e126b9:	48 0f af c2          	imul   rax,rdx
  e126bd:	49 0f af d5          	imul   rdx,r13
  e126c1:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e126c8:	00 
  e126c9:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e126cd:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  e126d4:	00 
  e126d5:	48 8d 14 d1          	lea    rdx,[rcx+rdx*8]
  e126d9:	49 83 c4 30          	add    r12,0x30
  e126dd:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  e126e2:	48 8b bc 24 a0 00 00 	mov    rdi,QWORD PTR [rsp+0xa0]
  e126e9:	00 
  e126ea:	45 31 db             	xor    r11d,r11d
  e126ed:	eb 35                	jmp    e12724 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44a4>
  e126ef:	90                   	nop
  e126f0:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e126f4:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e126f8:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e126fc:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e12700:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e12705:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e12709:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e1270e:	48 03 74 24 30       	add    rsi,QWORD PTR [rsp+0x30]
  e12713:	49 83 c4 40          	add    r12,0x40
  e12717:	49 83 c3 02          	add    r11,0x2
  e1271b:	48 ff c7             	inc    rdi
  e1271e:	0f 84 dc fc ff ff    	je     e12400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4180>
  e12724:	4d 89 d9             	mov    r9,r11
  e12727:	89 d9                	mov    ecx,ebx
  e12729:	49 d3 e9             	shr    r9,cl
  e1272c:	49 c1 e1 05          	shl    r9,0x5
  e12730:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e12736:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e1273d:	4c 89 d9             	mov    rcx,r11
  e12740:	4c 21 f1             	and    rcx,r14
  e12743:	48 c1 e1 05          	shl    rcx,0x5
  e12747:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e1274c:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e12752:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e12758:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e1275e:	66 0f 28 ea          	movapd xmm5,xmm2
  e12762:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e12766:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e1276b:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e12770:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e12775:	66 0f 59 da          	mulpd  xmm3,xmm2
  e12779:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e1277d:	66 0f 58 cb          	addpd  xmm1,xmm3
  e12781:	66 45 0f 10 4c 24 d0 	movupd xmm9,XMMWORD PTR [r12-0x30]
  e12788:	66 45 0f 10 54 24 e0 	movupd xmm10,XMMWORD PTR [r12-0x20]
  e1278f:	66 41 0f 10 6c 24 f0 	movupd xmm5,XMMWORD PTR [r12-0x10]
  e12796:	66 41 0f 10 3c 24    	movupd xmm7,XMMWORD PTR [r12]
  e1279c:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e127a1:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e127a6:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e127ab:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e127b0:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e127b5:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e127ba:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e127bf:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e127c4:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e127c9:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e127ce:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e127d3:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e127d8:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e127dc:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e127e0:	66 0f 58 c2          	addpd  xmm0,xmm2
  e127e4:	66 0f 28 d5          	movapd xmm2,xmm5
  e127e8:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e127ed:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e127f2:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e127f6:	66 0f 5c d7          	subpd  xmm2,xmm7
  e127fa:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e127fe:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e12803:	66 0f 28 e3          	movapd xmm4,xmm3
  e12807:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e1280b:	0f 12 d3             	movhlps xmm2,xmm3
  e1280e:	66 0f 28 d9          	movapd xmm3,xmm1
  e12812:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e12816:	0f 12 c1             	movhlps xmm0,xmm1
  e12819:	40 84 ed             	test   bpl,bpl
  e1281c:	0f 85 ce fe ff ff    	jne    e126f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4470>
  e12822:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e12827:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e1282c:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e1282f:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e12833:	e9 d6 fe ff ff       	jmp    e1270e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x448e>
  e12838:	40 84 ed             	test   bpl,bpl
  e1283b:	74 03                	je     e12840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45c0>
  e1283d:	0f ae f8             	sfence
  e12840:	48 89 d0             	mov    rax,rdx
  e12843:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  e1284a:	00 
  e1284b:	48 09 c8             	or     rax,rcx
  e1284e:	48 c1 e8 20          	shr    rax,0x20
  e12852:	0f 84 ad 0c 00 00    	je     e13505 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5285>
  e12858:	48 89 d0             	mov    rax,rdx
  e1285b:	31 d2                	xor    edx,edx
  e1285d:	48 f7 f1             	div    rcx
  e12860:	e9 a6 0c 00 00       	jmp    e1350b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x528b>
  e12865:	89 d8                	mov    eax,ebx
  e12867:	31 d2                	xor    edx,edx
  e12869:	f7 f6                	div    esi
  e1286b:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e12870:	48 03 b4 24 d8 00 00 	add    rsi,QWORD PTR [rsp+0xd8]
  e12877:	00 
  e12878:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  e1287d:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12882:	0f 16 c0             	movlhps xmm0,xmm0
  e12885:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e1288a:	45 31 e4             	xor    r12d,r12d
  e1288d:	48 85 d2             	test   rdx,rdx
  e12890:	41 0f 95 c4          	setne  r12b
  e12894:	49 01 c4             	add    r12,rax
  e12897:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
  e1289e:	00 
  e1289f:	48 89 ca             	mov    rdx,rcx
  e128a2:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
  e128a6:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  e128ab:	4c 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],r14
  e128b2:	00 
  e128b3:	0f 84 1f 06 00 00    	je     e12ed8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c58>
  e128b9:	4d 85 ff             	test   r15,r15
  e128bc:	48 8b 84 24 20 01 00 	mov    rax,QWORD PTR [rsp+0x120]
  e128c3:	00 
  e128c4:	0f 84 20 13 00 00    	je     e13bea <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x596a>
  e128ca:	4c 8b 68 70          	mov    r13,QWORD PTR [rax+0x70]
  e128ce:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  e128d5:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e128da:	48 89 d1             	mov    rcx,rdx
  e128dd:	48 d1 e9             	shr    rcx,1
  e128e0:	48 89 d0             	mov    rax,rdx
  e128e3:	48 29 c8             	sub    rax,rcx
  e128e6:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e128ed:	00 
  e128ee:	f3 49 0f bc c5       	tzcnt  rax,r13
  e128f3:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e128f8:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  e128ff:	ff ff 07 
  e12902:	4c 01 e8             	add    rax,r13
  e12905:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e1290a:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e1290f:	48 83 c0 20          	add    rax,0x20
  e12913:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
  e1291a:	00 
  e1291b:	49 8d 47 ff          	lea    rax,[r15-0x1]
  e1291f:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e12924:	48 29 d1             	sub    rcx,rdx
  e12927:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  e1292e:	00 
  e1292f:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e12936:	00 
  e12937:	48 83 c0 20          	add    rax,0x20
  e1293b:	48 89 84 24 38 01 00 	mov    QWORD PTR [rsp+0x138],rax
  e12942:	00 
  e12943:	4c 89 c0             	mov    rax,r8
  e12946:	48 c1 e0 06          	shl    rax,0x6
  e1294a:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
  e12951:	00 
  e12952:	48 89 d8             	mov    rax,rbx
  e12955:	48 c1 e0 05          	shl    rax,0x5
  e12959:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e1295e:	31 c9                	xor    ecx,ecx
  e12960:	4c 89 bc 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r15
  e12967:	00 
  e12968:	40 88 6c 24 10       	mov    BYTE PTR [rsp+0x10],bpl
  e1296d:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  e12972:	eb 42                	jmp    e129b6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4736>
  e12974:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1297b:	00 00 00 00 00 
  e12980:	48 8b 84 24 28 01 00 	mov    rax,QWORD PTR [rsp+0x128]
  e12987:	00 
  e12988:	48 01 84 24 38 01 00 	add    QWORD PTR [rsp+0x138],rax
  e1298f:	00 
  e12990:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e12997:	00 
  e12998:	4c 8b a4 24 58 01 00 	mov    r12,QWORD PTR [rsp+0x158]
  e1299f:	00 
  e129a0:	4d 85 e4             	test   r12,r12
  e129a3:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e129a8:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e129af:	00 
  e129b0:	0f 84 22 05 00 00    	je     e12ed8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c58>
  e129b6:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e129bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e129be:	48 83 f8 02          	cmp    rax,0x2
  e129c2:	74 6c                	je     e12a30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x47b0>
  e129c4:	48 83 f8 04          	cmp    rax,0x4
  e129c8:	74 36                	je     e12a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4780>
  e129ca:	48 83 f8 08          	cmp    rax,0x8
  e129ce:	0f 85 a6 11 00 00    	jne    e13b7a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58fa>
  e129d4:	48 89 cf             	mov    rdi,rcx
  e129d7:	48 c1 e7 04          	shl    rdi,0x4
  e129db:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e129e2:	00 
  e129e3:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e129e8:	49 89 ce             	mov    r14,rcx
  e129eb:	48 89 d9             	mov    rcx,rbx
  e129ee:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e129f3:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e129f8:	e8 c3 ec fc ff       	call   de16c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e129fd:	eb 5a                	jmp    e12a59 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x47d9>
  e129ff:	90                   	nop
  e12a00:	48 89 cf             	mov    rdi,rcx
  e12a03:	48 c1 e7 04          	shl    rdi,0x4
  e12a07:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e12a0e:	00 
  e12a0f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e12a14:	49 89 ce             	mov    r14,rcx
  e12a17:	48 89 d9             	mov    rcx,rbx
  e12a1a:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e12a1f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12a24:	e8 d7 e4 fc ff       	call   de0f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e12a29:	eb 2e                	jmp    e12a59 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x47d9>
  e12a2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e12a30:	48 89 cf             	mov    rdi,rcx
  e12a33:	48 c1 e7 04          	shl    rdi,0x4
  e12a37:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e12a3e:	00 
  e12a3f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e12a44:	49 89 ce             	mov    r14,rcx
  e12a47:	48 89 d9             	mov    rcx,rbx
  e12a4a:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e12a4f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12a54:	e8 27 f1 fc ff       	call   de1b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e12a59:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e12a60:	00 
  e12a61:	4c 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r14
  e12a68:	00 
  e12a69:	4c 01 f0             	add    rax,r14
  e12a6c:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
  e12a73:	00 
  e12a74:	49 ff cc             	dec    r12
  e12a77:	4c 89 a4 24 58 01 00 	mov    QWORD PTR [rsp+0x158],r12
  e12a7e:	00 
  e12a7f:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
  e12a86:	00 
  e12a87:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  e12a8c:	31 c0                	xor    eax,eax
  e12a8e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12a92:	eb 2a                	jmp    e12abe <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x483e>
  e12a94:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e12a9b:	00 00 00 00 00 
  e12aa0:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e12aa7:	00 
  e12aa8:	48 ff c0             	inc    rax
  e12aab:	48 83 44 24 40 40    	add    QWORD PTR [rsp+0x40],0x40
  e12ab1:	4c 39 c0             	cmp    rax,r8
  e12ab4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12ab8:	0f 84 c2 fe ff ff    	je     e12980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4700>
  e12abe:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  e12ac5:	00 
  e12ac6:	48 8d 0c 00          	lea    rcx,[rax+rax*1]
  e12aca:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  e12acf:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
  e12ad6:	00 
  e12ad7:	48 0f af c1          	imul   rax,rcx
  e12adb:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e12ae0:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  e12ae4:	49 83 ff 02          	cmp    r15,0x2
  e12ae8:	0f 82 e2 01 00 00    	jb     e12cd0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4a50>
  e12aee:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e12af3:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  e12af6:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  e12afb:	4c 8b ac 24 d0 00 00 	mov    r13,QWORD PTR [rsp+0xd0]
  e12b02:	00 
  e12b03:	49 89 cc             	mov    r12,rcx
  e12b06:	4c 8b bc 24 d8 00 00 	mov    r15,QWORD PTR [rsp+0xd8]
  e12b0d:	00 
  e12b0e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  e12b13:	eb 45                	jmp    e12b5a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48da>
  e12b15:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12b1a:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12b21:	00 
  e12b22:	4c 89 ff             	mov    rdi,r15
  e12b25:	4c 89 e6             	mov    rsi,r12
  e12b28:	4c 89 f1             	mov    rcx,r14
  e12b2b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12b32:	00 
  e12b33:	e8 48 71 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12b38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e12b3f:	00 
  e12b40:	4c 0f af f5          	imul   r14,rbp
  e12b44:	49 83 c5 18          	add    r13,0x18
  e12b48:	48 ff cb             	dec    rbx
  e12b4b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12b4f:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  e12b54:	0f 84 79 01 00 00    	je     e12cd3 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4a53>
  e12b5a:	4c 89 f8             	mov    rax,r15
  e12b5d:	4d 89 e7             	mov    r15,r12
  e12b60:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e12b64:	48 83 fb 01          	cmp    rbx,0x1
  e12b68:	49 89 c4             	mov    r12,rax
  e12b6b:	4c 0f 44 e1          	cmove  r12,rcx
  e12b6f:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e12b73:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e12b78:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e12b7f:	00 
  e12b80:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e12b84:	48 83 f8 0e          	cmp    rax,0xe
  e12b88:	0f 87 9a 0f 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e12b8e:	48 8d 0d c3 10 29 ff 	lea    rcx,[rip+0xffffffffff2910c3]        # a3c58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31108>
  e12b95:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e12b99:	48 01 c8             	add    rax,rcx
  e12b9c:	ff e0                	jmp    rax
  e12b9e:	4c 89 ff             	mov    rdi,r15
  e12ba1:	4c 89 e6             	mov    rsi,r12
  e12ba4:	4c 89 f1             	mov    rcx,r14
  e12ba7:	e8 14 d9 f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bac:	eb 92                	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12bae:	4c 89 ff             	mov    rdi,r15
  e12bb1:	4c 89 e6             	mov    rsi,r12
  e12bb4:	4c 89 f1             	mov    rcx,r14
  e12bb7:	e8 c4 2d f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bbc:	eb 82                	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12bbe:	4c 89 ff             	mov    rdi,r15
  e12bc1:	4c 89 e6             	mov    rsi,r12
  e12bc4:	4c 89 f1             	mov    rcx,r14
  e12bc7:	e8 34 e3 f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bcc:	e9 6f ff ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12bd1:	4c 89 ff             	mov    rdi,r15
  e12bd4:	4c 89 e6             	mov    rsi,r12
  e12bd7:	4c 89 f1             	mov    rcx,r14
  e12bda:	e8 61 46 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bdf:	e9 5c ff ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12be4:	4c 89 ff             	mov    rdi,r15
  e12be7:	4c 89 e6             	mov    rsi,r12
  e12bea:	4c 89 f1             	mov    rcx,r14
  e12bed:	e8 ce 0c f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bf2:	e9 49 ff ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12bf7:	4c 89 ff             	mov    rdi,r15
  e12bfa:	4c 89 e6             	mov    rsi,r12
  e12bfd:	4c 89 f1             	mov    rcx,r14
  e12c00:	e8 7b dc f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c05:	e9 36 ff ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c0a:	4c 89 ff             	mov    rdi,r15
  e12c0d:	4c 89 e6             	mov    rsi,r12
  e12c10:	4c 89 f1             	mov    rcx,r14
  e12c13:	e8 e8 de f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c18:	e9 23 ff ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c1d:	4c 89 ff             	mov    rdi,r15
  e12c20:	4c 89 e6             	mov    rsi,r12
  e12c23:	4c 89 f1             	mov    rcx,r14
  e12c26:	e8 15 f6 f2 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c2b:	e9 10 ff ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c30:	4c 89 ff             	mov    rdi,r15
  e12c33:	4c 89 e6             	mov    rsi,r12
  e12c36:	4c 89 f1             	mov    rcx,r14
  e12c39:	e8 02 da f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c3e:	e9 fd fe ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c43:	4c 89 ff             	mov    rdi,r15
  e12c46:	4c 89 e6             	mov    rsi,r12
  e12c49:	4c 89 f1             	mov    rcx,r14
  e12c4c:	e8 6f e7 f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c51:	e9 ea fe ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c56:	4c 89 ff             	mov    rdi,r15
  e12c59:	4c 89 e6             	mov    rsi,r12
  e12c5c:	4c 89 f1             	mov    rcx,r14
  e12c5f:	e8 9c 5a f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c64:	e9 d7 fe ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c69:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12c6e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12c75:	00 
  e12c76:	4c 89 ff             	mov    rdi,r15
  e12c79:	4c 89 e6             	mov    rsi,r12
  e12c7c:	4c 89 f1             	mov    rcx,r14
  e12c7f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12c86:	00 
  e12c87:	e8 b4 ee f2 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c8c:	e9 af fe ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12c91:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e12c96:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12c9d:	00 
  e12c9e:	4c 89 ff             	mov    rdi,r15
  e12ca1:	4c 89 e6             	mov    rsi,r12
  e12ca4:	4c 89 f1             	mov    rcx,r14
  e12ca7:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12cae:	00 
  e12caf:	e8 cc 1e f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12cb4:	e9 87 fe ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12cb9:	4c 89 ff             	mov    rdi,r15
  e12cbc:	4c 89 e6             	mov    rsi,r12
  e12cbf:	4c 89 f1             	mov    rcx,r14
  e12cc2:	e8 f9 ff f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12cc7:	e9 74 fe ff ff       	jmp    e12b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e12ccc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e12cd0:	49 89 cc             	mov    r12,rcx
  e12cd3:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
  e12cd8:	4d 85 ed             	test   r13,r13
  e12cdb:	0f 84 e1 0e 00 00    	je     e13bc2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5942>
  e12ce1:	48 89 d0             	mov    rax,rdx
  e12ce4:	4c 09 e8             	or     rax,r13
  e12ce7:	48 c1 e8 20          	shr    rax,0x20
  e12ceb:	4c 8b 84 24 b8 00 00 	mov    r8,QWORD PTR [rsp+0xb8]
  e12cf2:	00 
  e12cf3:	4c 8b bc 24 f8 00 00 	mov    r15,QWORD PTR [rsp+0xf8]
  e12cfa:	00 
  e12cfb:	0f b6 6c 24 10       	movzx  ebp,BYTE PTR [rsp+0x10]
  e12d00:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
  e12d05:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  e12d0a:	74 24                	je     e12d30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ab0>
  e12d0c:	48 89 d0             	mov    rax,rdx
  e12d0f:	31 d2                	xor    edx,edx
  e12d11:	49 f7 f5             	div    r13
  e12d14:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e12d1b:	00 00 
  e12d1d:	75 27                	jne    e12d46 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ac6>
  e12d1f:	e9 7c fd ff ff       	jmp    e12aa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4820>
  e12d24:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e12d2b:	00 00 00 00 00 
  e12d30:	89 d0                	mov    eax,edx
  e12d32:	31 d2                	xor    edx,edx
  e12d34:	41 f7 f5             	div    r13d
  e12d37:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e12d3e:	00 00 
  e12d40:	0f 84 5a fd ff ff    	je     e12aa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4820>
  e12d46:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  e12d4d:	00 
  e12d4e:	48 03 94 24 f0 00 00 	add    rdx,QWORD PTR [rsp+0xf0]
  e12d55:	00 
  e12d56:	48 01 d2             	add    rdx,rdx
  e12d59:	48 0f af c2          	imul   rax,rdx
  e12d5d:	49 0f af d5          	imul   rdx,r13
  e12d61:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e12d68:	00 
  e12d69:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e12d6d:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  e12d74:	00 
  e12d75:	48 8d 14 d1          	lea    rdx,[rcx+rdx*8]
  e12d79:	49 83 c4 30          	add    r12,0x30
  e12d7d:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  e12d82:	48 8b bc 24 a0 00 00 	mov    rdi,QWORD PTR [rsp+0xa0]
  e12d89:	00 
  e12d8a:	45 31 db             	xor    r11d,r11d
  e12d8d:	eb 35                	jmp    e12dc4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b44>
  e12d8f:	90                   	nop
  e12d90:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e12d94:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e12d98:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e12d9c:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e12da0:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e12da5:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e12da9:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e12dae:	48 03 74 24 30       	add    rsi,QWORD PTR [rsp+0x30]
  e12db3:	49 83 c4 40          	add    r12,0x40
  e12db7:	49 83 c3 02          	add    r11,0x2
  e12dbb:	48 ff c7             	inc    rdi
  e12dbe:	0f 84 dc fc ff ff    	je     e12aa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4820>
  e12dc4:	4d 89 d9             	mov    r9,r11
  e12dc7:	89 d9                	mov    ecx,ebx
  e12dc9:	49 d3 e9             	shr    r9,cl
  e12dcc:	49 c1 e1 05          	shl    r9,0x5
  e12dd0:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e12dd6:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e12ddd:	4c 89 d9             	mov    rcx,r11
  e12de0:	4c 21 f1             	and    rcx,r14
  e12de3:	48 c1 e1 05          	shl    rcx,0x5
  e12de7:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e12dec:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e12df2:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e12df8:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e12dfe:	66 0f 28 ea          	movapd xmm5,xmm2
  e12e02:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e12e06:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e12e0b:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e12e10:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e12e15:	66 0f 59 da          	mulpd  xmm3,xmm2
  e12e19:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e12e1d:	66 0f 58 cb          	addpd  xmm1,xmm3
  e12e21:	66 45 0f 10 4c 24 d0 	movupd xmm9,XMMWORD PTR [r12-0x30]
  e12e28:	66 45 0f 10 54 24 e0 	movupd xmm10,XMMWORD PTR [r12-0x20]
  e12e2f:	66 41 0f 10 6c 24 f0 	movupd xmm5,XMMWORD PTR [r12-0x10]
  e12e36:	66 41 0f 10 3c 24    	movupd xmm7,XMMWORD PTR [r12]
  e12e3c:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e12e41:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e12e46:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e12e4b:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e12e50:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e12e55:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e12e5a:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e12e5f:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e12e64:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e12e69:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e12e6e:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e12e73:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e12e78:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e12e7c:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e12e80:	66 0f 58 c2          	addpd  xmm0,xmm2
  e12e84:	66 0f 28 d5          	movapd xmm2,xmm5
  e12e88:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e12e8d:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e12e92:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e12e96:	66 0f 5c d7          	subpd  xmm2,xmm7
  e12e9a:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e12e9e:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e12ea3:	66 0f 28 e3          	movapd xmm4,xmm3
  e12ea7:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e12eab:	0f 12 d3             	movhlps xmm2,xmm3
  e12eae:	66 0f 28 d9          	movapd xmm3,xmm1
  e12eb2:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e12eb6:	0f 12 c1             	movhlps xmm0,xmm1
  e12eb9:	40 84 ed             	test   bpl,bpl
  e12ebc:	0f 85 ce fe ff ff    	jne    e12d90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b10>
  e12ec2:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e12ec7:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e12ecc:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e12ecf:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e12ed3:	e9 d6 fe ff ff       	jmp    e12dae <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b2e>
  e12ed8:	40 84 ed             	test   bpl,bpl
  e12edb:	74 03                	je     e12ee0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c60>
  e12edd:	0f ae f8             	sfence
  e12ee0:	48 89 d0             	mov    rax,rdx
  e12ee3:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  e12eea:	00 
  e12eeb:	48 09 c8             	or     rax,rcx
  e12eee:	48 c1 e8 20          	shr    rax,0x20
  e12ef2:	74 0a                	je     e12efe <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c7e>
  e12ef4:	48 89 d0             	mov    rax,rdx
  e12ef7:	31 d2                	xor    edx,edx
  e12ef9:	48 f7 f1             	div    rcx
  e12efc:	eb 06                	jmp    e12f04 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c84>
  e12efe:	89 d0                	mov    eax,edx
  e12f00:	31 d2                	xor    edx,edx
  e12f02:	f7 f1                	div    ecx
  e12f04:	40 20 ac 24 e8 00 00 	and    BYTE PTR [rsp+0xe8],bpl
  e12f0b:	00 
  e12f0c:	31 f6                	xor    esi,esi
  e12f0e:	48 85 d2             	test   rdx,rdx
  e12f11:	40 0f 95 c6          	setne  sil
  e12f15:	48 01 c6             	add    rsi,rax
  e12f18:	0f 84 f7 0b 00 00    	je     e13b15 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e12f1e:	4d 85 f6             	test   r14,r14
  e12f21:	0f 84 d3 0c 00 00    	je     e13bfa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x597a>
  e12f27:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e12f2b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e12f30:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  e12f34:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e12f3b:	00 
  e12f3c:	48 8b 8c 24 20 01 00 	mov    rcx,QWORD PTR [rsp+0x120]
  e12f43:	00 
  e12f44:	48 8b b9 90 00 00 00 	mov    rdi,QWORD PTR [rcx+0x90]
  e12f4b:	48 8d 0c 1b          	lea    rcx,[rbx+rbx*1]
  e12f4f:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
  e12f54:	48 89 f9             	mov    rcx,rdi
  e12f57:	48 c1 e1 04          	shl    rcx,0x4
  e12f5b:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  e12f60:	4c 89 c1             	mov    rcx,r8
  e12f63:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  e12f67:	48 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rcx
  e12f6e:	00 
  e12f6f:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e12f73:	48 83 c0 20          	add    rax,0x20
  e12f77:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e12f7c:	49 8d 46 ff          	lea    rax,[r14-0x1]
  e12f80:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e12f85:	48 8b 8c 24 80 02 00 	mov    rcx,QWORD PTR [rsp+0x280]
  e12f8c:	00 
  e12f8d:	48 c1 e1 05          	shl    rcx,0x5
  e12f91:	48 03 8c 24 50 01 00 	add    rcx,QWORD PTR [rsp+0x150]
  e12f98:	00 
  e12f99:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e12fa0:	00 
  e12fa1:	48 01 c8             	add    rax,rcx
  e12fa4:	48 83 c0 10          	add    rax,0x10
  e12fa8:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e12fad:	48 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdi
  e12fb4:	00 
  e12fb5:	48 c1 e7 05          	shl    rdi,0x5
  e12fb9:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
  e12fbe:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e12fc5:	00 
  e12fc6:	48 8d 48 30          	lea    rcx,[rax+0x30]
  e12fca:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
  e12fd1:	00 
  e12fd2:	49 c1 e0 05          	shl    r8,0x5
  e12fd6:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  e12fdd:	00 
  e12fde:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e12fe2:	48 c1 e1 04          	shl    rcx,0x4
  e12fe6:	48 89 8c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rcx
  e12fed:	00 
  e12fee:	31 c9                	xor    ecx,ecx
  e12ff0:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e12ff7:	00 
  e12ff8:	eb 37                	jmp    e13031 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4db1>
  e12ffa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e13000:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  e13007:	00 
  e13008:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e1300f:	00 
  e13010:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e13017:	00 
  e13018:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
  e1301f:	00 
  e13020:	48 85 f6             	test   rsi,rsi
  e13023:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e1302a:	00 
  e1302b:	0f 84 e4 0a 00 00    	je     e13b15 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e13031:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e13038:	00 
  e13039:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e1303e:	48 01 c8             	add    rax,rcx
  e13041:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e13048:	00 
  e13049:	48 ff ce             	dec    rsi
  e1304c:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  e13053:	00 
  e13054:	31 d2                	xor    edx,edx
  e13056:	eb 40                	jmp    e13098 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4e18>
  e13058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e1305f:	00 
  e13060:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e13065:	48 ff c2             	inc    rdx
  e13068:	4c 8b 9c 24 b8 00 00 	mov    r11,QWORD PTR [rsp+0xb8]
  e1306f:	00 
  e13070:	4c 39 da             	cmp    rdx,r11
  e13073:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e13078:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e1307f:	00 
  e13080:	4c 8b 7c 24 68       	mov    r15,QWORD PTR [rsp+0x68]
  e13085:	4c 8b a4 24 f8 00 00 	mov    r12,QWORD PTR [rsp+0xf8]
  e1308c:	00 
  e1308d:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  e13092:	0f 84 e8 02 00 00    	je     e13380 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5100>
  e13098:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
  e1309c:	48 0f af 84 24 88 00 	imul   rax,QWORD PTR [rsp+0x88]
  e130a3:	00 00 
  e130a5:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e130aa:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e130ae:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e130b3:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  e130b8:	48 8d 04 50          	lea    rax,[rax+rdx*2]
  e130bc:	48 0f af 44 24 48    	imul   rax,QWORD PTR [rsp+0x48]
  e130c2:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e130c9:	00 
  e130ca:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  e130ce:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e130d5:	00 
  e130d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e130d9:	48 83 f8 02          	cmp    rax,0x2
  e130dd:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  e130e2:	74 5c                	je     e13140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ec0>
  e130e4:	48 83 f8 04          	cmp    rax,0x4
  e130e8:	74 36                	je     e13120 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ea0>
  e130ea:	48 83 f8 08          	cmp    rax,0x8
  e130ee:	0f 85 6e 0a 00 00    	jne    e13b62 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58e2>
  e130f4:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e130f9:	48 89 da             	mov    rdx,rbx
  e130fc:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13101:	e8 7a 7f fe ff       	call   dfb080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13106:	49 83 fe 02          	cmp    r14,0x2
  e1310a:	0f 82 50 ff ff ff    	jb     e13060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e13110:	eb 4a                	jmp    e1315c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4edc>
  e13112:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13119:	1f 84 00 00 00 00 00 
  e13120:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e13125:	48 89 da             	mov    rdx,rbx
  e13128:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1312d:	e8 4e 73 fe ff       	call   dfa480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13132:	49 83 fe 02          	cmp    r14,0x2
  e13136:	0f 82 24 ff ff ff    	jb     e13060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e1313c:	eb 1e                	jmp    e1315c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4edc>
  e1313e:	66 90                	xchg   ax,ax
  e13140:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e13145:	48 89 da             	mov    rdx,rbx
  e13148:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1314d:	e8 ee 91 ff ff       	call   e0c340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13152:	49 83 fe 02          	cmp    r14,0x2
  e13156:	0f 82 04 ff ff ff    	jb     e13060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e1315c:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e13163:	00 
  e13164:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e13167:	48 8b 6c 24 50       	mov    rbp,QWORD PTR [rsp+0x50]
  e1316c:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e13171:	4c 8b 64 24 30       	mov    r12,QWORD PTR [rsp+0x30]
  e13176:	48 8b 9c 24 d8 00 00 	mov    rbx,QWORD PTR [rsp+0xd8]
  e1317d:	00 
  e1317e:	eb 41                	jmp    e131c1 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f41>
  e13180:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13185:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1318c:	00 
  e1318d:	48 89 df             	mov    rdi,rbx
  e13190:	4c 89 e6             	mov    rsi,r12
  e13193:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13198:	4c 89 f9             	mov    rcx,r15
  e1319b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e131a2:	00 
  e131a3:	e8 d8 6a f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e131a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e131af:	00 
  e131b0:	4d 0f af fe          	imul   r15,r14
  e131b4:	49 83 c5 18          	add    r13,0x18
  e131b8:	48 ff cd             	dec    rbp
  e131bb:	0f 84 9f fe ff ff    	je     e13060 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e131c1:	48 89 d8             	mov    rax,rbx
  e131c4:	4c 89 e3             	mov    rbx,r12
  e131c7:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e131cb:	48 83 fd 01          	cmp    rbp,0x1
  e131cf:	49 89 c4             	mov    r12,rax
  e131d2:	4c 0f 44 64 24 30    	cmove  r12,QWORD PTR [rsp+0x30]
  e131d8:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e131dc:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e131e1:	4c 89 b4 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r14
  e131e8:	00 
  e131e9:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e131ed:	48 83 f8 0e          	cmp    rax,0xe
  e131f1:	0f 87 31 09 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e131f7:	48 8d 0d 96 0a 29 ff 	lea    rcx,[rip+0xffffffffff290a96]        # a3c94 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31144>
  e131fe:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13202:	48 01 c8             	add    rax,rcx
  e13205:	ff e0                	jmp    rax
  e13207:	48 89 df             	mov    rdi,rbx
  e1320a:	4c 89 e6             	mov    rsi,r12
  e1320d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13212:	4c 89 f9             	mov    rcx,r15
  e13215:	e8 a6 d2 f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1321a:	eb 94                	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1321c:	48 89 df             	mov    rdi,rbx
  e1321f:	4c 89 e6             	mov    rsi,r12
  e13222:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13227:	4c 89 f9             	mov    rcx,r15
  e1322a:	e8 51 27 f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1322f:	e9 7c ff ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e13234:	48 89 df             	mov    rdi,rbx
  e13237:	4c 89 e6             	mov    rsi,r12
  e1323a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1323f:	4c 89 f9             	mov    rcx,r15
  e13242:	e8 b9 dc f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13247:	e9 64 ff ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1324c:	48 89 df             	mov    rdi,rbx
  e1324f:	4c 89 e6             	mov    rsi,r12
  e13252:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13257:	4c 89 f9             	mov    rcx,r15
  e1325a:	e8 e1 3f f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1325f:	e9 4c ff ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e13264:	48 89 df             	mov    rdi,rbx
  e13267:	4c 89 e6             	mov    rsi,r12
  e1326a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1326f:	4c 89 f9             	mov    rcx,r15
  e13272:	e8 49 06 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13277:	e9 34 ff ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1327c:	48 89 df             	mov    rdi,rbx
  e1327f:	4c 89 e6             	mov    rsi,r12
  e13282:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13287:	4c 89 f9             	mov    rcx,r15
  e1328a:	e8 f1 d5 f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1328f:	e9 1c ff ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e13294:	48 89 df             	mov    rdi,rbx
  e13297:	4c 89 e6             	mov    rsi,r12
  e1329a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1329f:	4c 89 f9             	mov    rcx,r15
  e132a2:	e8 59 d8 f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e132a7:	e9 04 ff ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e132ac:	48 89 df             	mov    rdi,rbx
  e132af:	4c 89 e6             	mov    rsi,r12
  e132b2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e132b7:	4c 89 f9             	mov    rcx,r15
  e132ba:	e8 81 ef f2 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e132bf:	e9 ec fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e132c4:	48 89 df             	mov    rdi,rbx
  e132c7:	4c 89 e6             	mov    rsi,r12
  e132ca:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e132cf:	4c 89 f9             	mov    rcx,r15
  e132d2:	e8 69 d3 f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e132d7:	e9 d4 fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e132dc:	48 89 df             	mov    rdi,rbx
  e132df:	4c 89 e6             	mov    rsi,r12
  e132e2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e132e7:	4c 89 f9             	mov    rcx,r15
  e132ea:	e8 d1 e0 f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e132ef:	e9 bc fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e132f4:	48 89 df             	mov    rdi,rbx
  e132f7:	4c 89 e6             	mov    rsi,r12
  e132fa:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e132ff:	4c 89 f9             	mov    rcx,r15
  e13302:	e8 f9 53 f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13307:	e9 a4 fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1330c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13311:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13318:	00 
  e13319:	48 89 df             	mov    rdi,rbx
  e1331c:	4c 89 e6             	mov    rsi,r12
  e1331f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13324:	4c 89 f9             	mov    rcx,r15
  e13327:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1332e:	00 
  e1332f:	e8 0c e8 f2 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13334:	e9 77 fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e13339:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1333e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13345:	00 
  e13346:	48 89 df             	mov    rdi,rbx
  e13349:	4c 89 e6             	mov    rsi,r12
  e1334c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13351:	4c 89 f9             	mov    rcx,r15
  e13354:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1335b:	00 
  e1335c:	e8 1f 18 f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13361:	e9 4a fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e13366:	48 89 df             	mov    rdi,rbx
  e13369:	4c 89 e6             	mov    rsi,r12
  e1336c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13371:	4c 89 f9             	mov    rcx,r15
  e13374:	e8 47 f9 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13379:	e9 32 fe ff ff       	jmp    e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1337e:	66 90                	xchg   ax,ax
  e13380:	48 85 db             	test   rbx,rbx
  e13383:	0f 84 77 fc ff ff    	je     e13000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d80>
  e13389:	80 bc 24 e8 00 00 00 	cmp    BYTE PTR [rsp+0xe8],0x0
  e13390:	00 
  e13391:	74 7d                	je     e13410 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5190>
  e13393:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e13398:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  e1339f:	00 
  e133a0:	31 d2                	xor    edx,edx
  e133a2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e133a9:	1f 84 00 00 00 00 00 
  e133b0:	4c 89 de             	mov    rsi,r11
  e133b3:	48 89 c7             	mov    rdi,rax
  e133b6:	49 89 c8             	mov    r8,rcx
  e133b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e133c0:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  e133c4:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  e133c7:	0f 28 d0             	movaps xmm2,xmm0
  e133ca:	0f 16 d1             	movlhps xmm2,xmm1
  e133cd:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e133d1:	66 41 0f 2b 10       	movntpd XMMWORD PTR [r8],xmm2
  e133d6:	4d 8d 48 10          	lea    r9,[r8+0x10]
  e133da:	66 41 0f 2b 01       	movntpd XMMWORD PTR [r9],xmm0
  e133df:	49 83 c0 20          	add    r8,0x20
  e133e3:	4c 01 ff             	add    rdi,r15
  e133e6:	48 ff ce             	dec    rsi
  e133e9:	75 d5                	jne    e133c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5140>
  e133eb:	48 ff c2             	inc    rdx
  e133ee:	48 03 8c 24 e0 00 00 	add    rcx,QWORD PTR [rsp+0xe0]
  e133f5:	00 
  e133f6:	48 83 c0 20          	add    rax,0x20
  e133fa:	48 39 da             	cmp    rdx,rbx
  e133fd:	75 b1                	jne    e133b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5130>
  e133ff:	e9 fc fb ff ff       	jmp    e13000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d80>
  e13404:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1340b:	00 00 00 00 00 
  e13410:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  e13417:	00 
  e13418:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e1341d:	31 d2                	xor    edx,edx
  e1341f:	eb 27                	jmp    e13448 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51c8>
  e13421:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13428:	0f 1f 84 00 00 00 00 
  e1342f:	00 
  e13430:	48 ff c2             	inc    rdx
  e13433:	48 83 c1 20          	add    rcx,0x20
  e13437:	48 03 84 24 e0 00 00 	add    rax,QWORD PTR [rsp+0xe0]
  e1343e:	00 
  e1343f:	48 39 da             	cmp    rdx,rbx
  e13442:	0f 84 b8 fb ff ff    	je     e13000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d80>
  e13448:	48 89 d7             	mov    rdi,rdx
  e1344b:	48 c1 e7 05          	shl    rdi,0x5
  e1344f:	48 03 7c 24 38       	add    rdi,QWORD PTR [rsp+0x38]
  e13454:	48 89 d6             	mov    rsi,rdx
  e13457:	48 0f af 34 24       	imul   rsi,QWORD PTR [rsp]
  e1345c:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  e13461:	48 c1 e6 04          	shl    rsi,0x4
  e13465:	48 03 b4 24 c0 00 00 	add    rsi,QWORD PTR [rsp+0xc0]
  e1346c:	00 
  e1346d:	49 89 c1             	mov    r9,rax
  e13470:	49 89 ca             	mov    r10,rcx
  e13473:	45 31 c0             	xor    r8d,r8d
  e13476:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e1347d:	00 00 00 
  e13480:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  e13485:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  e13489:	0f 28 d0             	movaps xmm2,xmm0
  e1348c:	0f 16 d1             	movlhps xmm2,xmm1
  e1348f:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e13493:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  e13498:	41 0f 11 41 e0       	movups XMMWORD PTR [r9-0x20],xmm0
  e1349d:	49 83 c0 02          	add    r8,0x2
  e134a1:	43 0f 10 44 3a f0    	movups xmm0,XMMWORD PTR [r10+r15*1-0x10]
  e134a7:	43 0f 10 0c 3a       	movups xmm1,XMMWORD PTR [r10+r15*1]
  e134ac:	0f 28 d0             	movaps xmm2,xmm0
  e134af:	0f 16 d1             	movlhps xmm2,xmm1
  e134b2:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e134b6:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  e134bb:	41 0f 11 01          	movups XMMWORD PTR [r9],xmm0
  e134bf:	4d 01 ea             	add    r10,r13
  e134c2:	49 83 c1 40          	add    r9,0x40
  e134c6:	4d 39 c4             	cmp    r12,r8
  e134c9:	75 b5                	jne    e13480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5200>
  e134cb:	41 f6 c3 01          	test   r11b,0x1
  e134cf:	0f 84 5b ff ff ff    	je     e13430 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51b0>
  e134d5:	4d 89 c1             	mov    r9,r8
  e134d8:	4d 0f af cf          	imul   r9,r15
  e134dc:	42 0f 10 04 0f       	movups xmm0,XMMWORD PTR [rdi+r9*1]
  e134e1:	42 0f 10 4c 0f 10    	movups xmm1,XMMWORD PTR [rdi+r9*1+0x10]
  e134e7:	0f 28 d0             	movaps xmm2,xmm0
  e134ea:	0f 16 d1             	movlhps xmm2,xmm1
  e134ed:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e134f1:	49 c1 e0 05          	shl    r8,0x5
  e134f5:	42 0f 11 14 06       	movups XMMWORD PTR [rsi+r8*1],xmm2
  e134fa:	42 0f 11 44 06 10    	movups XMMWORD PTR [rsi+r8*1+0x10],xmm0
  e13500:	e9 2b ff ff ff       	jmp    e13430 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51b0>
  e13505:	89 d0                	mov    eax,edx
  e13507:	31 d2                	xor    edx,edx
  e13509:	f7 f1                	div    ecx
  e1350b:	40 20 ac 24 e8 00 00 	and    BYTE PTR [rsp+0xe8],bpl
  e13512:	00 
  e13513:	31 f6                	xor    esi,esi
  e13515:	48 85 d2             	test   rdx,rdx
  e13518:	40 0f 95 c6          	setne  sil
  e1351c:	48 01 c6             	add    rsi,rax
  e1351f:	0f 84 f0 05 00 00    	je     e13b15 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e13525:	4d 85 f6             	test   r14,r14
  e13528:	0f 84 cc 06 00 00    	je     e13bfa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x597a>
  e1352e:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e13532:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e13537:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  e1353b:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e13542:	00 
  e13543:	48 8b 8c 24 20 01 00 	mov    rcx,QWORD PTR [rsp+0x120]
  e1354a:	00 
  e1354b:	48 8b b9 90 00 00 00 	mov    rdi,QWORD PTR [rcx+0x90]
  e13552:	48 8d 0c 1b          	lea    rcx,[rbx+rbx*1]
  e13556:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
  e1355b:	48 89 f9             	mov    rcx,rdi
  e1355e:	48 c1 e1 04          	shl    rcx,0x4
  e13562:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  e13567:	4c 89 c1             	mov    rcx,r8
  e1356a:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  e1356e:	48 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rcx
  e13575:	00 
  e13576:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e1357a:	48 83 c0 20          	add    rax,0x20
  e1357e:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e13583:	49 8d 46 ff          	lea    rax,[r14-0x1]
  e13587:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e1358c:	48 8b 8c 24 80 02 00 	mov    rcx,QWORD PTR [rsp+0x280]
  e13593:	00 
  e13594:	48 c1 e1 05          	shl    rcx,0x5
  e13598:	48 03 8c 24 50 01 00 	add    rcx,QWORD PTR [rsp+0x150]
  e1359f:	00 
  e135a0:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e135a7:	00 
  e135a8:	48 01 c8             	add    rax,rcx
  e135ab:	48 83 c0 10          	add    rax,0x10
  e135af:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e135b4:	48 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdi
  e135bb:	00 
  e135bc:	48 c1 e7 05          	shl    rdi,0x5
  e135c0:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
  e135c5:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e135cc:	00 
  e135cd:	48 8d 48 30          	lea    rcx,[rax+0x30]
  e135d1:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
  e135d8:	00 
  e135d9:	49 c1 e0 05          	shl    r8,0x5
  e135dd:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  e135e4:	00 
  e135e5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e135e9:	48 c1 e1 04          	shl    rcx,0x4
  e135ed:	48 89 8c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rcx
  e135f4:	00 
  e135f5:	31 c9                	xor    ecx,ecx
  e135f7:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e135fe:	00 
  e135ff:	eb 40                	jmp    e13641 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53c1>
  e13601:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13608:	0f 1f 84 00 00 00 00 
  e1360f:	00 
  e13610:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  e13617:	00 
  e13618:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e1361f:	00 
  e13620:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e13627:	00 
  e13628:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
  e1362f:	00 
  e13630:	48 85 f6             	test   rsi,rsi
  e13633:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e1363a:	00 
  e1363b:	0f 84 d4 04 00 00    	je     e13b15 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e13641:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e13648:	00 
  e13649:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e1364e:	48 01 c8             	add    rax,rcx
  e13651:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e13658:	00 
  e13659:	48 ff ce             	dec    rsi
  e1365c:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  e13663:	00 
  e13664:	31 d2                	xor    edx,edx
  e13666:	eb 40                	jmp    e136a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5428>
  e13668:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e1366f:	00 
  e13670:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e13675:	48 ff c2             	inc    rdx
  e13678:	4c 8b 9c 24 b8 00 00 	mov    r11,QWORD PTR [rsp+0xb8]
  e1367f:	00 
  e13680:	4c 39 da             	cmp    rdx,r11
  e13683:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e13688:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e1368f:	00 
  e13690:	4c 8b 7c 24 68       	mov    r15,QWORD PTR [rsp+0x68]
  e13695:	4c 8b a4 24 f8 00 00 	mov    r12,QWORD PTR [rsp+0xf8]
  e1369c:	00 
  e1369d:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  e136a2:	0f 84 e8 02 00 00    	je     e13990 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5710>
  e136a8:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
  e136ac:	48 0f af 84 24 88 00 	imul   rax,QWORD PTR [rsp+0x88]
  e136b3:	00 00 
  e136b5:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e136ba:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e136be:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e136c3:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  e136c8:	48 8d 04 50          	lea    rax,[rax+rdx*2]
  e136cc:	48 0f af 44 24 48    	imul   rax,QWORD PTR [rsp+0x48]
  e136d2:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e136d9:	00 
  e136da:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  e136de:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e136e5:	00 
  e136e6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e136e9:	48 83 f8 02          	cmp    rax,0x2
  e136ed:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  e136f2:	74 5c                	je     e13750 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54d0>
  e136f4:	48 83 f8 04          	cmp    rax,0x4
  e136f8:	74 36                	je     e13730 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54b0>
  e136fa:	48 83 f8 08          	cmp    rax,0x8
  e136fe:	0f 85 5e 04 00 00    	jne    e13b62 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58e2>
  e13704:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e13709:	48 89 da             	mov    rdx,rbx
  e1370c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13711:	e8 6a 79 fe ff       	call   dfb080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13716:	49 83 fe 02          	cmp    r14,0x2
  e1371a:	0f 82 50 ff ff ff    	jb     e13670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e13720:	eb 4a                	jmp    e1376c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54ec>
  e13722:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13729:	1f 84 00 00 00 00 00 
  e13730:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e13735:	48 89 da             	mov    rdx,rbx
  e13738:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1373d:	e8 3e 6d fe ff       	call   dfa480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13742:	49 83 fe 02          	cmp    r14,0x2
  e13746:	0f 82 24 ff ff ff    	jb     e13670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e1374c:	eb 1e                	jmp    e1376c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54ec>
  e1374e:	66 90                	xchg   ax,ax
  e13750:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e13755:	48 89 da             	mov    rdx,rbx
  e13758:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1375d:	e8 de 8b ff ff       	call   e0c340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13762:	49 83 fe 02          	cmp    r14,0x2
  e13766:	0f 82 04 ff ff ff    	jb     e13670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e1376c:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e13773:	00 
  e13774:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e13777:	48 8b 6c 24 50       	mov    rbp,QWORD PTR [rsp+0x50]
  e1377c:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e13781:	4c 8b 64 24 30       	mov    r12,QWORD PTR [rsp+0x30]
  e13786:	48 8b 9c 24 d8 00 00 	mov    rbx,QWORD PTR [rsp+0xd8]
  e1378d:	00 
  e1378e:	eb 41                	jmp    e137d1 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5551>
  e13790:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13795:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1379c:	00 
  e1379d:	48 89 df             	mov    rdi,rbx
  e137a0:	4c 89 e6             	mov    rsi,r12
  e137a3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e137a8:	4c 89 f9             	mov    rcx,r15
  e137ab:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e137b2:	00 
  e137b3:	e8 c8 64 f3 ff       	call   d49c80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e137b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e137bf:	00 
  e137c0:	4d 0f af fe          	imul   r15,r14
  e137c4:	49 83 c5 18          	add    r13,0x18
  e137c8:	48 ff cd             	dec    rbp
  e137cb:	0f 84 9f fe ff ff    	je     e13670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e137d1:	48 89 d8             	mov    rax,rbx
  e137d4:	4c 89 e3             	mov    rbx,r12
  e137d7:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e137db:	48 83 fd 01          	cmp    rbp,0x1
  e137df:	49 89 c4             	mov    r12,rax
  e137e2:	4c 0f 44 64 24 30    	cmove  r12,QWORD PTR [rsp+0x30]
  e137e8:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e137ec:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e137f1:	4c 89 b4 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r14
  e137f8:	00 
  e137f9:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e137fd:	48 83 f8 0e          	cmp    rax,0xe
  e13801:	0f 87 21 03 00 00    	ja     e13b28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e13807:	48 8d 0d 42 07 29 ff 	lea    rcx,[rip+0xffffffffff290742]        # a3f50 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31400>
  e1380e:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13812:	48 01 c8             	add    rax,rcx
  e13815:	ff e0                	jmp    rax
  e13817:	48 89 df             	mov    rdi,rbx
  e1381a:	4c 89 e6             	mov    rsi,r12
  e1381d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13822:	4c 89 f9             	mov    rcx,r15
  e13825:	e8 96 cc f2 ff       	call   d404c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1382a:	eb 94                	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1382c:	48 89 df             	mov    rdi,rbx
  e1382f:	4c 89 e6             	mov    rsi,r12
  e13832:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13837:	4c 89 f9             	mov    rcx,r15
  e1383a:	e8 41 21 f3 ff       	call   d45980 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1383f:	e9 7c ff ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e13844:	48 89 df             	mov    rdi,rbx
  e13847:	4c 89 e6             	mov    rsi,r12
  e1384a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1384f:	4c 89 f9             	mov    rcx,r15
  e13852:	e8 a9 d6 f2 ff       	call   d40f00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13857:	e9 64 ff ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1385c:	48 89 df             	mov    rdi,rbx
  e1385f:	4c 89 e6             	mov    rsi,r12
  e13862:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13867:	4c 89 f9             	mov    rcx,r15
  e1386a:	e8 d1 39 f3 ff       	call   d47240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1386f:	e9 4c ff ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e13874:	48 89 df             	mov    rdi,rbx
  e13877:	4c 89 e6             	mov    rsi,r12
  e1387a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1387f:	4c 89 f9             	mov    rcx,r15
  e13882:	e8 39 00 f3 ff       	call   d438c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13887:	e9 34 ff ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1388c:	48 89 df             	mov    rdi,rbx
  e1388f:	4c 89 e6             	mov    rsi,r12
  e13892:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13897:	4c 89 f9             	mov    rcx,r15
  e1389a:	e8 e1 cf f2 ff       	call   d40880 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1389f:	e9 1c ff ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e138a4:	48 89 df             	mov    rdi,rbx
  e138a7:	4c 89 e6             	mov    rsi,r12
  e138aa:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e138af:	4c 89 f9             	mov    rcx,r15
  e138b2:	e8 49 d2 f2 ff       	call   d40b00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e138b7:	e9 04 ff ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e138bc:	48 89 df             	mov    rdi,rbx
  e138bf:	4c 89 e6             	mov    rsi,r12
  e138c2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e138c7:	4c 89 f9             	mov    rcx,r15
  e138ca:	e8 71 e9 f2 ff       	call   d42240 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e138cf:	e9 ec fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e138d4:	48 89 df             	mov    rdi,rbx
  e138d7:	4c 89 e6             	mov    rsi,r12
  e138da:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e138df:	4c 89 f9             	mov    rcx,r15
  e138e2:	e8 59 cd f2 ff       	call   d40640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e138e7:	e9 d4 fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e138ec:	48 89 df             	mov    rdi,rbx
  e138ef:	4c 89 e6             	mov    rsi,r12
  e138f2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e138f7:	4c 89 f9             	mov    rcx,r15
  e138fa:	e8 c1 da f2 ff       	call   d413c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e138ff:	e9 bc fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e13904:	48 89 df             	mov    rdi,rbx
  e13907:	4c 89 e6             	mov    rsi,r12
  e1390a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1390f:	4c 89 f9             	mov    rcx,r15
  e13912:	e8 e9 4d f3 ff       	call   d48700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13917:	e9 a4 fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1391c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13921:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13928:	00 
  e13929:	48 89 df             	mov    rdi,rbx
  e1392c:	4c 89 e6             	mov    rsi,r12
  e1392f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13934:	4c 89 f9             	mov    rcx,r15
  e13937:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1393e:	00 
  e1393f:	e8 fc e1 f2 ff       	call   d41b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13944:	e9 77 fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e13949:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1394e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13955:	00 
  e13956:	48 89 df             	mov    rdi,rbx
  e13959:	4c 89 e6             	mov    rsi,r12
  e1395c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13961:	4c 89 f9             	mov    rcx,r15
  e13964:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1396b:	00 
  e1396c:	e8 0f 12 f3 ff       	call   d44b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13971:	e9 4a fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e13976:	48 89 df             	mov    rdi,rbx
  e13979:	4c 89 e6             	mov    rsi,r12
  e1397c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13981:	4c 89 f9             	mov    rcx,r15
  e13984:	e8 37 f3 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13989:	e9 32 fe ff ff       	jmp    e137c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1398e:	66 90                	xchg   ax,ax
  e13990:	48 85 db             	test   rbx,rbx
  e13993:	0f 84 77 fc ff ff    	je     e13610 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5390>
  e13999:	80 bc 24 e8 00 00 00 	cmp    BYTE PTR [rsp+0xe8],0x0
  e139a0:	00 
  e139a1:	74 7d                	je     e13a20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57a0>
  e139a3:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e139a8:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  e139af:	00 
  e139b0:	31 d2                	xor    edx,edx
  e139b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e139b9:	1f 84 00 00 00 00 00 
  e139c0:	4c 89 de             	mov    rsi,r11
  e139c3:	48 89 c7             	mov    rdi,rax
  e139c6:	49 89 c8             	mov    r8,rcx
  e139c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e139d0:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  e139d4:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  e139d7:	0f 28 d1             	movaps xmm2,xmm1
  e139da:	0f 16 d0             	movlhps xmm2,xmm0
  e139dd:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e139e1:	66 41 0f 2b 10       	movntpd XMMWORD PTR [r8],xmm2
  e139e6:	4d 8d 48 10          	lea    r9,[r8+0x10]
  e139ea:	66 41 0f 2b 09       	movntpd XMMWORD PTR [r9],xmm1
  e139ef:	49 83 c0 20          	add    r8,0x20
  e139f3:	4c 01 ff             	add    rdi,r15
  e139f6:	48 ff ce             	dec    rsi
  e139f9:	75 d5                	jne    e139d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5750>
  e139fb:	48 ff c2             	inc    rdx
  e139fe:	48 03 8c 24 e0 00 00 	add    rcx,QWORD PTR [rsp+0xe0]
  e13a05:	00 
  e13a06:	48 83 c0 20          	add    rax,0x20
  e13a0a:	48 39 da             	cmp    rdx,rbx
  e13a0d:	75 b1                	jne    e139c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5740>
  e13a0f:	e9 fc fb ff ff       	jmp    e13610 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5390>
  e13a14:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13a1b:	00 00 00 00 00 
  e13a20:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  e13a27:	00 
  e13a28:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e13a2d:	31 d2                	xor    edx,edx
  e13a2f:	eb 27                	jmp    e13a58 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57d8>
  e13a31:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13a38:	0f 1f 84 00 00 00 00 
  e13a3f:	00 
  e13a40:	48 ff c2             	inc    rdx
  e13a43:	48 83 c1 20          	add    rcx,0x20
  e13a47:	48 03 84 24 e0 00 00 	add    rax,QWORD PTR [rsp+0xe0]
  e13a4e:	00 
  e13a4f:	48 39 da             	cmp    rdx,rbx
  e13a52:	0f 84 b8 fb ff ff    	je     e13610 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5390>
  e13a58:	48 89 d7             	mov    rdi,rdx
  e13a5b:	48 c1 e7 05          	shl    rdi,0x5
  e13a5f:	48 03 7c 24 38       	add    rdi,QWORD PTR [rsp+0x38]
  e13a64:	48 89 d6             	mov    rsi,rdx
  e13a67:	48 0f af 34 24       	imul   rsi,QWORD PTR [rsp]
  e13a6c:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  e13a71:	48 c1 e6 04          	shl    rsi,0x4
  e13a75:	48 03 b4 24 c0 00 00 	add    rsi,QWORD PTR [rsp+0xc0]
  e13a7c:	00 
  e13a7d:	49 89 c1             	mov    r9,rax
  e13a80:	49 89 ca             	mov    r10,rcx
  e13a83:	45 31 c0             	xor    r8d,r8d
  e13a86:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e13a8d:	00 00 00 
  e13a90:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  e13a95:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  e13a99:	0f 28 d1             	movaps xmm2,xmm1
  e13a9c:	0f 16 d0             	movlhps xmm2,xmm0
  e13a9f:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e13aa3:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  e13aa8:	41 0f 11 49 e0       	movups XMMWORD PTR [r9-0x20],xmm1
  e13aad:	49 83 c0 02          	add    r8,0x2
  e13ab1:	43 0f 10 44 3a f0    	movups xmm0,XMMWORD PTR [r10+r15*1-0x10]
  e13ab7:	43 0f 10 0c 3a       	movups xmm1,XMMWORD PTR [r10+r15*1]
  e13abc:	0f 28 d1             	movaps xmm2,xmm1
  e13abf:	0f 16 d0             	movlhps xmm2,xmm0
  e13ac2:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e13ac6:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  e13acb:	41 0f 11 09          	movups XMMWORD PTR [r9],xmm1
  e13acf:	4d 01 ea             	add    r10,r13
  e13ad2:	49 83 c1 40          	add    r9,0x40
  e13ad6:	4d 39 c4             	cmp    r12,r8
  e13ad9:	75 b5                	jne    e13a90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5810>
  e13adb:	41 f6 c3 01          	test   r11b,0x1
  e13adf:	0f 84 5b ff ff ff    	je     e13a40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57c0>
  e13ae5:	4d 89 c1             	mov    r9,r8
  e13ae8:	4d 0f af cf          	imul   r9,r15
  e13aec:	42 0f 10 04 0f       	movups xmm0,XMMWORD PTR [rdi+r9*1]
  e13af1:	42 0f 10 4c 0f 10    	movups xmm1,XMMWORD PTR [rdi+r9*1+0x10]
  e13af7:	0f 28 d1             	movaps xmm2,xmm1
  e13afa:	0f 16 d0             	movlhps xmm2,xmm0
  e13afd:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e13b01:	49 c1 e0 05          	shl    r8,0x5
  e13b05:	42 0f 11 14 06       	movups XMMWORD PTR [rsi+r8*1],xmm2
  e13b0a:	42 0f 11 4c 06 10    	movups XMMWORD PTR [rsi+r8*1+0x10],xmm1
  e13b10:	e9 2b ff ff ff       	jmp    e13a40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57c0>
  e13b15:	80 bc 24 e8 00 00 00 	cmp    BYTE PTR [rsp+0xe8],0x0
  e13b1c:	00 
  e13b1d:	0f 85 8a e6 ff ff    	jne    e121ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f2d>
  e13b23:	e9 88 e6 ff ff       	jmp    e121b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f30>
  e13b28:	48 8d 84 24 00 01 00 	lea    rax,[rsp+0x100]
  e13b2f:	00 
  e13b30:	48 89 84 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rax
  e13b37:	00 
  e13b38:	48 8d 05 81 88 e0 ff 	lea    rax,[rip+0xffffffffffe08881]        # c1c3c0 <<u64 as core::fmt::Display>::fmt>
  e13b3f:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
  e13b46:	00 
  e13b47:	48 8d 3d 6d a5 29 ff 	lea    rdi,[rip+0xffffffffff29a56d]        # ae0bb <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3b56b>
  e13b4e:	48 8d 15 1b 27 43 00 	lea    rdx,[rip+0x43271b]        # 1246270 <__frame_dummy_init_array_entry+0x31018>
  e13b55:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e13b5c:	00 
  e13b5d:	e8 de df df ff       	call   c11b40 <core::panicking::panic_fmt>
  e13b62:	48 8d 3d 3f 2a 2b ff 	lea    rdi,[rip+0xffffffffff2b2a3f]        # c65a8 <crc32fast::table::CRC32_TABLE+0x8924>
  e13b69:	48 8d 15 b0 25 43 00 	lea    rdx,[rip+0x4325b0]        # 1246120 <__frame_dummy_init_array_entry+0x30ec8>
  e13b70:	be 81 00 00 00       	mov    esi,0x81
  e13b75:	e8 c6 df df ff       	call   c11b40 <core::panicking::panic_fmt>
  e13b7a:	48 8d 3d 67 2a 2b ff 	lea    rdi,[rip+0xffffffffff2b2a67]        # c65e8 <crc32fast::table::CRC32_TABLE+0x8964>
  e13b81:	48 8d 15 e0 25 43 00 	lea    rdx,[rip+0x4325e0]        # 1246168 <__frame_dummy_init_array_entry+0x30f10>
  e13b88:	be 87 00 00 00       	mov    esi,0x87
  e13b8d:	e8 ae df df ff       	call   c11b40 <core::panicking::panic_fmt>
  e13b92:	48 8d 3d e1 2a 2b ff 	lea    rdi,[rip+0xffffffffff2b2ae1]        # c667a <crc32fast::table::CRC32_TABLE+0x89f6>
  e13b99:	48 8d 15 40 26 43 00 	lea    rdx,[rip+0x432640]        # 12461e0 <__frame_dummy_init_array_entry+0x30f88>
  e13ba0:	be 83 00 00 00       	mov    esi,0x83
  e13ba5:	e8 96 df df ff       	call   c11b40 <core::panicking::panic_fmt>
  e13baa:	48 8d 3d 48 48 2b ff 	lea    rdi,[rip+0xffffffffff2b4848]        # c83f9 <oxifft::dft::codelets::simd::large_sizes::bit_reverse_permute_4096::BIT_REV_TABLE+0x100>
  e13bb1:	48 8d 15 60 37 43 00 	lea    rdx,[rip+0x433760]        # 1247318 <__frame_dummy_init_array_entry+0x320c0>
  e13bb8:	be 1b 00 00 00       	mov    esi,0x1b
  e13bbd:	e8 3e fe df ff       	call   c13a00 <core::panicking::panic>
  e13bc2:	48 8d 3d 87 25 43 00 	lea    rdi,[rip+0x432587]        # 1246150 <__frame_dummy_init_array_entry+0x30ef8>
  e13bc9:	e8 b2 22 e0 ff       	call   c15e80 <core::panicking::panic_const::panic_const_div_by_zero>
  e13bce:	48 8d 15 f3 25 43 00 	lea    rdx,[rip+0x4325f3]        # 12461c8 <__frame_dummy_init_array_entry+0x30f70>
  e13bd5:	31 ff                	xor    edi,edi
  e13bd7:	31 f6                	xor    esi,esi
  e13bd9:	e8 62 00 e0 ff       	call   c13c40 <core::panicking::panic_bounds_check>
  e13bde:	48 8d 3d 0b 25 43 00 	lea    rdi,[rip+0x43250b]        # 12460f0 <__frame_dummy_init_array_entry+0x30e98>
  e13be5:	e8 96 22 e0 ff       	call   c15e80 <core::panicking::panic_const::panic_const_div_by_zero>
  e13bea:	48 8d 15 47 25 43 00 	lea    rdx,[rip+0x432547]        # 1246138 <__frame_dummy_init_array_entry+0x30ee0>
  e13bf1:	31 ff                	xor    edi,edi
  e13bf3:	31 f6                	xor    esi,esi
  e13bf5:	e8 46 00 e0 ff       	call   c13c40 <core::panicking::panic_bounds_check>
  e13bfa:	48 8d 15 07 25 43 00 	lea    rdx,[rip+0x432507]        # 1246108 <__frame_dummy_init_array_entry+0x30eb0>
  e13c01:	31 ff                	xor    edi,edi
  e13c03:	31 f6                	xor    esi,esi
  e13c05:	e8 36 00 e0 ff       	call   c13c40 <core::panicking::panic_bounds_check>
