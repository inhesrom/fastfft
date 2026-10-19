
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000074a400 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  74a400:	55                   	push   rbp
  74a401:	48 89 e5             	mov    rbp,rsp
  74a404:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  74a408:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  74a40f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  74a416:	00 
  74a417:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  74a41e:	00 
  74a41f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  74a424:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  74a429:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  74a42e:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  74a434:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  74a438:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  74a43e:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  74a443:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  74a449:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  74a44f:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  74a454:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  74a45a:	c4 e3 65 0c e1 c0    	vblendps ymm4,ymm3,ymm1,0xc0
  74a460:	c5 78 10 1f          	vmovups xmm11,XMMWORD PTR [rdi]
  74a464:	c5 f8 10 7f 18       	vmovups xmm7,XMMWORD PTR [rdi+0x18]
  74a469:	c5 78 10 4f 30       	vmovups xmm9,XMMWORD PTR [rdi+0x30]
  74a46e:	c5 78 10 67 48       	vmovups xmm12,XMMWORD PTR [rdi+0x48]
  74a473:	c5 fb 10 5f 58       	vmovsd xmm3,QWORD PTR [rdi+0x58]
  74a478:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  74a47e:	c4 e3 65 0c e9 c0    	vblendps ymm5,ymm3,ymm1,0xc0
  74a484:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  74a489:	c5 fb 10 5f 70       	vmovsd xmm3,QWORD PTR [rdi+0x70]
  74a48e:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  74a494:	c4 e3 65 0c c9 c0    	vblendps ymm1,ymm3,ymm1,0xc0
  74a49a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  74a4a0:	c5 20 c6 d0 88       	vshufps xmm10,xmm11,xmm0,0x88
  74a4a5:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  74a4ab:	c4 c1 40 c6 d5 88    	vshufps xmm2,xmm7,xmm13,0x88
  74a4b1:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  74a4b7:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  74a4bd:	c5 b8 c6 d9 88       	vshufps xmm3,xmm8,xmm1,0x88
  74a4c2:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  74a4c8:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  74a4ce:	c4 c1 30 c6 e6 88    	vshufps xmm4,xmm9,xmm14,0x88
  74a4d4:	c4 c3 7d 19 ef 01    	vextractf128 xmm15,ymm5,0x1
  74a4da:	c4 c1 18 c6 ef 88    	vshufps xmm5,xmm12,xmm15,0x88
  74a4e0:	c5 20 c6 d8 dd       	vshufps xmm11,xmm11,xmm0,0xdd
  74a4e5:	c4 c1 40 c6 fd dd    	vshufps xmm7,xmm7,xmm13,0xdd
  74a4eb:	c5 38 c6 c1 dd       	vshufps xmm8,xmm8,xmm1,0xdd
  74a4f0:	c4 41 30 c6 ce dd    	vshufps xmm9,xmm9,xmm14,0xdd
  74a4f6:	c4 41 18 c6 e7 dd    	vshufps xmm12,xmm12,xmm15,0xdd
  74a4fc:	c5 ec 58 db          	vaddps ymm3,ymm2,ymm3
  74a500:	c5 2c 58 eb          	vaddps ymm13,ymm10,ymm3
  74a504:	c5 5c 58 f5          	vaddps ymm14,ymm4,ymm5
  74a508:	c4 62 7d 18 3d d7 b1 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff92b1d7]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  74a50f:	92 ff 
  74a511:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  74a515:	c4 c2 65 a8 f2       	vfmadd213ps ymm6,ymm3,ymm10
  74a51a:	c4 e2 7d 18 15 21 b1 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff92b121]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  74a521:	92 ff 
  74a523:	c4 c2 6d ac da       	vfnmadd213ps ymm3,ymm2,ymm10
  74a528:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  74a52c:	c4 e2 0d bc f2       	vfnmadd231ps ymm6,ymm14,ymm2
  74a531:	c4 41 7c 28 d7       	vmovaps ymm10,ymm15
  74a536:	c4 42 7d a8 d3       	vfmadd213ps ymm10,ymm0,ymm11
  74a53b:	c4 c1 34 58 cc       	vaddps ymm1,ymm9,ymm12
  74a540:	c4 62 75 bc d2       	vfnmadd231ps ymm10,ymm1,ymm2
  74a545:	c4 c2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm11
  74a54a:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  74a54e:	c4 41 14 58 ee       	vaddps ymm13,ymm13,ymm14
  74a553:	c4 c2 05 b8 de       	vfmadd231ps ymm3,ymm15,ymm14
  74a558:	c4 c2 75 b8 d7       	vfmadd231ps ymm2,ymm1,ymm15
  74a55d:	c5 7c 58 d9          	vaddps ymm11,ymm0,ymm1
  74a561:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  74a566:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  74a56b:	c4 e2 7d 18 3d e4 b1 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff92b1e4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  74a572:	92 ff 
  74a574:	c5 7c 28 44 24 40    	vmovaps ymm8,YMMWORD PTR [rsp+0x40]
  74a57a:	c5 3c 5c 44 24 60    	vsubps ymm8,ymm8,YMMWORD PTR [rsp+0x60]
  74a580:	c4 62 7d 18 0d 17 ae 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff92ae17]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  74a587:	92 ff 
  74a589:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  74a58d:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  74a591:	c4 c2 7d b8 e9       	vfmadd231ps ymm5,ymm0,ymm9
  74a596:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  74a59a:	c4 e2 35 bc c1       	vfnmadd231ps ymm0,ymm9,ymm1
  74a59f:	c5 5c 59 e7          	vmulps ymm12,ymm4,ymm7
  74a5a3:	c4 42 3d b8 e1       	vfmadd231ps ymm12,ymm8,ymm9
  74a5a8:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  74a5ac:	c4 c2 5d bc f9       	vfnmadd231ps ymm7,ymm4,ymm9
  74a5b1:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  74a5b5:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  74a5bb:	c5 c8 58 ed          	vaddps xmm5,xmm6,xmm5
  74a5bf:	c5 e0 5c f0          	vsubps xmm6,xmm3,xmm0
  74a5c3:	c5 e0 58 c0          	vaddps xmm0,xmm3,xmm0
  74a5c7:	c5 f4 14 dd          	vunpcklps ymm3,ymm1,ymm5
  74a5cb:	c5 7d 14 c6          	vunpcklpd ymm8,ymm0,ymm6
  74a5cf:	c4 c1 64 c6 e0 84    	vshufps ymm4,ymm3,ymm8,0x84
  74a5d5:	c4 c1 64 c6 d8 de    	vshufps ymm3,ymm3,ymm8,0xde
  74a5db:	c5 d5 15 c9          	vunpckhpd ymm1,ymm5,ymm1
  74a5df:	c5 fc 15 c6          	vunpckhps ymm0,ymm0,ymm6
  74a5e3:	c5 f4 c6 c8 42       	vshufps ymm1,ymm1,ymm0,0x42
  74a5e8:	c4 c1 18 58 c2       	vaddps xmm0,xmm12,xmm10
  74a5ed:	c4 e3 25 18 e8 01    	vinsertf128 ymm5,ymm11,xmm0,0x1
  74a5f3:	c4 c1 28 5c f4       	vsubps xmm6,xmm10,xmm12
  74a5f8:	c5 40 58 c2          	vaddps xmm8,xmm7,xmm2
  74a5fc:	c5 e8 5c d7          	vsubps xmm2,xmm2,xmm7
  74a600:	c5 d4 14 fe          	vunpcklps ymm7,ymm5,ymm6
  74a604:	c4 41 6d 14 c8       	vunpcklpd ymm9,ymm2,ymm8
  74a609:	c4 c1 44 c6 c1 84    	vshufps ymm0,ymm7,ymm9,0x84
  74a60f:	c4 c1 44 c6 f9 de    	vshufps ymm7,ymm7,ymm9,0xde
  74a615:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  74a619:	c4 c1 6c 15 d0       	vunpckhps ymm2,ymm2,ymm8
  74a61e:	c5 d4 c6 d2 42       	vshufps ymm2,ymm5,ymm2,0x42
  74a623:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  74a628:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  74a62d:	c5 54 59 c3          	vmulps ymm8,ymm5,ymm3
  74a631:	c4 62 45 bc c6       	vfnmadd231ps ymm8,ymm7,ymm6
  74a636:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  74a63a:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  74a641:	00 
  74a642:	c4 e2 65 b8 ee       	vfmadd231ps ymm5,ymm3,ymm6
  74a647:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  74a64e:	00 
  74a64f:	c5 c4 59 f1          	vmulps ymm6,ymm7,ymm1
  74a653:	c4 e2 6d bc f3       	vfnmadd231ps ymm6,ymm2,ymm3
  74a658:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  74a65c:	c5 bc 58 fe          	vaddps ymm7,ymm8,ymm6
  74a660:	c4 e2 75 b8 d3       	vfmadd231ps ymm2,ymm1,ymm3
  74a665:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  74a669:	c4 e2 7d 18 1d ee ad 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff92adee]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  74a670:	92 ff 
  74a672:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  74a676:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  74a67a:	c4 e2 45 ac ec       	vfnmadd213ps ymm5,ymm7,ymm4
  74a67f:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  74a683:	c4 62 7d 18 05 48 ac 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff92ac48]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  74a68a:	92 ff 
  74a68c:	c5 bc 59 d2          	vmulps ymm2,ymm8,ymm2
  74a690:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  74a694:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  74a698:	c4 e2 75 ac d8       	vfnmadd213ps ymm3,ymm1,ymm0
  74a69d:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  74a6a1:	c5 e4 5c ee          	vsubps ymm5,ymm3,ymm6
  74a6a5:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  74a6a9:	c5 c4 58 e4          	vaddps ymm4,ymm7,ymm4
  74a6ad:	c5 f4 58 c0          	vaddps ymm0,ymm1,ymm0
  74a6b1:	c5 dc 14 c8          	vunpcklps ymm1,ymm4,ymm0
  74a6b5:	c5 d8 14 f0          	vunpcklps xmm6,xmm4,xmm0
  74a6b9:	c5 d8 15 c0          	vunpckhps xmm0,xmm4,xmm0
  74a6bd:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  74a6c2:	c5 f8 11 36          	vmovups XMMWORD PTR [rsi],xmm6
  74a6c6:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  74a6cc:	c5 f8 13 46 20       	vmovlps QWORD PTR [rsi+0x20],xmm0
  74a6d1:	c5 bc 14 c5          	vunpcklps ymm0,ymm8,ymm5
  74a6d5:	c5 b8 14 cd          	vunpcklps xmm1,xmm8,xmm5
  74a6d9:	c5 b8 15 e5          	vunpckhps xmm4,xmm8,xmm5
  74a6dd:	c5 f8 11 66 38       	vmovups XMMWORD PTR [rsi+0x38],xmm4
  74a6e2:	c5 f8 11 4e 28       	vmovups XMMWORD PTR [rsi+0x28],xmm1
  74a6e7:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  74a6ed:	c5 f8 13 46 48       	vmovlps QWORD PTR [rsi+0x48],xmm0
  74a6f2:	c5 ec 14 c3          	vunpcklps ymm0,ymm2,ymm3
  74a6f6:	c5 e8 14 cb          	vunpcklps xmm1,xmm2,xmm3
  74a6fa:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  74a6fe:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  74a703:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  74a708:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  74a70e:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  74a713:	48 89 ec             	mov    rsp,rbp
  74a716:	5d                   	pop    rbp
  74a717:	c5 f8 77             	vzeroupper
  74a71a:	c3                   	ret
