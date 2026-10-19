
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000736540 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  736540:	55                   	push   rbp
  736541:	48 89 e5             	mov    rbp,rsp
  736544:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  736548:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  73654f:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  736556:	00 
  736557:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
  73655e:	00 
  73655f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  736564:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  736569:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  73656e:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  736574:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  736578:	c4 63 7d 0c e9 c0    	vblendps ymm13,ymm0,ymm1,0xc0
  73657e:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  736583:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  736589:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  73658f:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  736595:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  73659a:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7365a0:	c4 e3 7d 0c e9 c0    	vblendps ymm5,ymm0,ymm1,0xc0
  7365a6:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  7365aa:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  7365af:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  7365b4:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  7365b9:	c5 fb 10 77 58       	vmovsd xmm6,QWORD PTR [rdi+0x58]
  7365be:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  7365c4:	c4 e3 4d 0c e1 c0    	vblendps ymm4,ymm6,ymm1,0xc0
  7365ca:	c5 f8 10 77 60       	vmovups xmm6,XMMWORD PTR [rdi+0x60]
  7365cf:	c5 7b 10 4f 70       	vmovsd xmm9,QWORD PTR [rdi+0x70]
  7365d4:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  7365da:	c4 63 35 0c f9 c0    	vblendps ymm15,ymm9,ymm1,0xc0
  7365e0:	c5 78 10 4f 78       	vmovups xmm9,XMMWORD PTR [rdi+0x78]
  7365e5:	c5 7b 10 97 88 00 00 	vmovsd xmm10,QWORD PTR [rdi+0x88]
  7365ec:	00 
  7365ed:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  7365f3:	c4 63 2d 0c d9 c0    	vblendps ymm11,ymm10,ymm1,0xc0
  7365f9:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  736600:	00 
  736601:	c5 7b 10 97 a0 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xa0]
  736608:	00 
  736609:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  73660f:	c4 63 2d 0c f1 c0    	vblendps ymm14,ymm10,ymm1,0xc0
  736615:	c5 7b 10 97 b8 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xb8]
  73661c:	00 
  73661d:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  736623:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  736629:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  73662f:	c4 c1 68 c6 c5 88    	vshufps xmm0,xmm2,xmm13,0x88
  736635:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  73663b:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  736641:	c4 c1 68 c6 c5 dd    	vshufps xmm0,xmm2,xmm13,0xdd
  736647:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  73664d:	c4 41 48 c6 ef 88    	vshufps xmm13,xmm6,xmm15,0x88
  736653:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  736659:	c4 c1 48 c6 f7 dd    	vshufps xmm6,xmm6,xmm15,0xdd
  73665f:	c5 b8 c6 c8 88       	vshufps xmm1,xmm8,xmm0,0x88
  736664:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  73666b:	00 00 
  73666d:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  736673:	c5 38 c6 f0 dd       	vshufps xmm14,xmm8,xmm0,0xdd
  736678:	c4 c1 18 c6 c7 88    	vshufps xmm0,xmm12,xmm15,0x88
  73667e:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  736685:	00 00 
  736687:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  73668d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  736693:	c4 41 18 c6 ff dd    	vshufps xmm15,xmm12,xmm15,0xdd
  736699:	c5 60 c6 e0 88       	vshufps xmm12,xmm3,xmm0,0x88
  73669e:	c4 63 7d 19 d9 01    	vextractf128 xmm1,ymm11,0x1
  7366a4:	c5 60 c6 d8 dd       	vshufps xmm11,xmm3,xmm0,0xdd
  7366a9:	c5 b0 c6 d9 88       	vshufps xmm3,xmm9,xmm1,0x88
  7366ae:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  7366b4:	c5 b0 c6 c9 dd       	vshufps xmm1,xmm9,xmm1,0xdd
  7366b9:	c5 c0 c6 e0 88       	vshufps xmm4,xmm7,xmm0,0x88
  7366be:	c5 c0 c6 d0 dd       	vshufps xmm2,xmm7,xmm0,0xdd
  7366c3:	c5 f8 10 bf a8 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xa8]
  7366ca:	00 
  7366cb:	c4 43 7d 19 d1 01    	vextractf128 xmm9,ymm10,0x1
  7366d1:	c4 c1 40 c6 c1 88    	vshufps xmm0,xmm7,xmm9,0x88
  7366d7:	c4 c1 40 c6 f9 dd    	vshufps xmm7,xmm7,xmm9,0xdd
  7366dd:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  7366e3:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  7366e7:	c5 7c 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm8
  7366ed:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  7366f2:	c5 fc 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm5
  7366f8:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  7366fd:	c4 41 0c 5c ff       	vsubps ymm15,ymm14,ymm15
  736702:	c5 1c 58 f3          	vaddps ymm14,ymm12,ymm3
  736706:	c5 9c 5c db          	vsubps ymm3,ymm12,ymm3
  73670a:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  73670e:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  736712:	c5 6c 58 df          	vaddps ymm11,ymm2,ymm7
  736716:	c5 ec 5c d7          	vsubps ymm2,ymm2,ymm7
  73671a:	c5 5c 58 c8          	vaddps ymm9,ymm4,ymm0
  73671e:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  736722:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  736728:	c5 dc 58 ee          	vaddps ymm5,ymm4,ymm6
  73672c:	c5 5c 5c d6          	vsubps ymm10,ymm4,ymm6
  736730:	c5 fc 28 a4 24 80 00 	vmovaps ymm4,YMMWORD PTR [rsp+0x80]
  736737:	00 00 
  736739:	c5 fc 28 bc 24 a0 00 	vmovaps ymm7,YMMWORD PTR [rsp+0xa0]
  736740:	00 00 
  736742:	c5 dc 58 f7          	vaddps ymm6,ymm4,ymm7
  736746:	c5 44 5c c4          	vsubps ymm8,ymm7,ymm4
  73674a:	c5 e4 58 e1          	vaddps ymm4,ymm3,ymm1
  73674e:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  736752:	c5 ec 5c d8          	vsubps ymm3,ymm2,ymm0
  736756:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  73675a:	c4 e2 7d 18 15 39 ec 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff93ec39]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  736761:	93 ff 
  736763:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  736767:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  73676b:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  73676f:	c5 fc 59 d2          	vmulps ymm2,ymm0,ymm2
  736773:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  736779:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  73677d:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  736781:	c4 c1 1c 58 c3       	vaddps ymm0,ymm12,ymm11
  736786:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  73678c:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  736791:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  736795:	c4 c1 54 5c c5       	vsubps ymm0,ymm5,ymm13
  73679a:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  7367a0:	c4 c1 0c 58 e9       	vaddps ymm5,ymm14,ymm9
  7367a5:	c4 c1 34 5c c6       	vsubps ymm0,ymm9,ymm14
  7367aa:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  7367b1:	00 00 
  7367b3:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  7367b9:	c5 04 58 f0          	vaddps ymm14,ymm15,ymm0
  7367bd:	c4 41 7c 5c ff       	vsubps ymm15,ymm0,ymm15
  7367c2:	c5 74 5c ea          	vsubps ymm13,ymm1,ymm2
  7367c6:	c5 f4 58 d2          	vaddps ymm2,ymm1,ymm2
  7367ca:	c4 c1 3c 58 ca       	vaddps ymm1,ymm8,ymm10
  7367cf:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  7367d4:	c5 5c 58 cb          	vaddps ymm9,ymm4,ymm3
  7367d8:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  7367dc:	c5 c4 58 e5          	vaddps ymm4,ymm7,ymm5
  7367e0:	c5 c0 5c c5          	vsubps xmm0,xmm7,xmm5
  7367e4:	c4 e3 5d 18 c0 01    	vinsertf128 ymm0,ymm4,xmm0,0x1
  7367ea:	c4 c1 0c 58 e1       	vaddps ymm4,ymm14,ymm9
  7367ef:	c4 c1 08 5c e9       	vsubps xmm5,xmm14,xmm9
  7367f4:	c4 e3 5d 18 e5 01    	vinsertf128 ymm4,ymm4,xmm5,0x1
  7367fa:	c5 9c 58 ee          	vaddps ymm5,ymm12,ymm6
  7367fe:	c4 c1 48 5c f4       	vsubps xmm6,xmm6,xmm12
  736803:	c4 e3 55 18 ee 01    	vinsertf128 ymm5,ymm5,xmm6,0x1
  736809:	c5 84 58 f2          	vaddps ymm6,ymm15,ymm2
  73680d:	c5 80 5c d2          	vsubps xmm2,xmm15,xmm2
  736811:	c4 e3 4d 18 d2 01    	vinsertf128 ymm2,ymm6,xmm2,0x1
  736817:	c5 fd 15 f5          	vunpckhpd ymm6,ymm0,ymm5
  73681b:	c5 fd 14 c5          	vunpcklpd ymm0,ymm0,ymm5
  73681f:	c5 dd 15 ea          	vunpckhpd ymm5,ymm4,ymm2
  736823:	c5 cc c6 ed 88       	vshufps ymm5,ymm6,ymm5,0x88
  736828:	c5 dd 14 d2          	vunpcklpd ymm2,ymm4,ymm2
  73682c:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  736831:	c5 fc c6 d2 dd       	vshufps ymm2,ymm0,ymm2,0xdd
  736836:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  73683c:	c5 a4 58 c6          	vaddps ymm0,ymm11,ymm6
  736840:	c5 a0 5c f6          	vsubps xmm6,xmm11,xmm6
  736844:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  73684a:	c5 94 58 c1          	vaddps ymm0,ymm13,ymm1
  73684e:	c4 c1 70 5c cd       	vsubps xmm1,xmm1,xmm13
  736853:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  736859:	c5 fc 28 7c 24 20    	vmovaps ymm7,YMMWORD PTR [rsp+0x20]
  73685f:	c5 7c 28 84 24 80 00 	vmovaps ymm8,YMMWORD PTR [rsp+0x80]
  736866:	00 00 
  736868:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  73686c:	c4 41 40 5c c0       	vsubps xmm8,xmm7,xmm8
  736871:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  736877:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  73687b:	c5 dc c6 c4 d8       	vshufps ymm0,ymm4,ymm4,0xd8
  736880:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  736885:	c5 d4 c6 e5 d8       	vshufps ymm4,ymm5,ymm5,0xd8
  73688a:	c5 a8 5c db          	vsubps xmm3,xmm10,xmm3
  73688e:	c4 e3 35 18 db 01    	vinsertf128 ymm3,ymm9,xmm3,0x1
  736894:	c4 c1 4d 15 e8       	vunpckhpd ymm5,ymm6,ymm8
  736899:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  73689e:	c5 f5 15 fb          	vunpckhpd ymm7,ymm1,ymm3
  7368a2:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  7368a7:	c5 f5 14 db          	vunpcklpd ymm3,ymm1,ymm3
  7368ab:	c5 cc c6 cb 88       	vshufps ymm1,ymm6,ymm3,0x88
  7368b0:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  7368b5:	c5 cc c6 db dd       	vshufps ymm3,ymm6,ymm3,0xdd
  7368ba:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7368bf:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  7368c4:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  7368c9:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  7368ce:	c5 4c 59 c3          	vmulps ymm8,ymm6,ymm3
  7368d2:	c4 62 6d b8 c7       	vfmadd231ps ymm8,ymm2,ymm7
  7368d7:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  7368db:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  7368e2:	00 
  7368e3:	c4 e2 65 bc d7       	vfnmadd231ps ymm2,ymm3,ymm7
  7368e8:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  7368ef:	00 
  7368f0:	c5 cc 59 fd          	vmulps ymm7,ymm6,ymm5
  7368f4:	c4 e2 5d b8 fb       	vfmadd231ps ymm7,ymm4,ymm3
  7368f9:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  7368fd:	c5 bc 58 f7          	vaddps ymm6,ymm8,ymm7
  736901:	c4 e2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm3
  736906:	c4 e2 7d 18 1d 51 eb 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff93eb51]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  73690d:	93 ff 
  73690f:	c5 ec 5c ec          	vsubps ymm5,ymm2,ymm4
  736913:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  736917:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  73691b:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  73691f:	c4 62 7d 18 05 ac e9 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff93e9ac]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  736926:	93 ff 
  736928:	c4 e2 4d ac e1       	vfnmadd213ps ymm4,ymm6,ymm1
  73692d:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  736931:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  736935:	c5 5c 58 c5          	vaddps ymm8,ymm4,ymm5
  736939:	c4 e2 6d ac d8       	vfnmadd213ps ymm3,ymm2,ymm0
  73693e:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  736942:	c5 e4 5c ef          	vsubps ymm5,ymm3,ymm7
  736946:	c5 e4 58 df          	vaddps ymm3,ymm3,ymm7
  73694a:	c5 cc 58 c9          	vaddps ymm1,ymm6,ymm1
  73694e:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  736952:	c5 fc 15 d1          	vunpckhps ymm2,ymm0,ymm1
  736956:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  73695a:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  736960:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  736966:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  73696a:	c5 fc 11 4e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm1
  73696f:	c5 e4 15 c4          	vunpckhps ymm0,ymm3,ymm4
  736973:	c5 e4 14 cc          	vunpcklps ymm1,ymm3,ymm4
  736977:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  73697d:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  736983:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  736988:	c5 fc 11 56 60       	vmovups YMMWORD PTR [rsi+0x60],ymm2
  73698d:	c4 c1 54 15 c0       	vunpckhps ymm0,ymm5,ymm8
  736992:	c4 c1 54 14 c8       	vunpcklps ymm1,ymm5,ymm8
  736997:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  73699d:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  7369a3:	c5 fc 11 86 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm0
  7369aa:	00 
  7369ab:	c5 fc 11 96 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm2
  7369b2:	00 
  7369b3:	48 89 ec             	mov    rsp,rbp
  7369b6:	5d                   	pop    rbp
  7369b7:	c5 f8 77             	vzeroupper
  7369ba:	c3                   	ret
