
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070c5c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70c5c0:	55                   	push   rbp
  70c5c1:	48 89 e5             	mov    rbp,rsp
  70c5c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  70c5c8:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  70c5cf:	48 c1 e2 06          	shl    rdx,0x6
  70c5d3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  70c5d7:	31 d2                	xor    edx,edx
  70c5d9:	4c 8d 84 24 00 02 00 	lea    r8,[rsp+0x200]
  70c5e0:	00 
  70c5e1:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  70c5e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  70c5ed:	00 00 00 
  70c5f0:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  70c5f7:	00 
  70c5f8:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  70c5fd:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  70c602:	c5 fc 10 4c 17 20    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x20]
  70c608:	c5 fc 10 54 17 40    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x40]
  70c60e:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  70c614:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  70c61b:	00 00 
  70c61d:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  70c624:	00 00 
  70c626:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  70c62b:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  70c631:	c5 ec c6 fb 88       	vshufps ymm7,ymm2,ymm3,0x88
  70c636:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  70c63c:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  70c641:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  70c647:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  70c64c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  70c652:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  70c657:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  70c65d:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  70c662:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  70c668:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  70c66c:	c5 64 58 d6          	vaddps ymm10,ymm3,ymm6
  70c670:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  70c674:	c5 5c 58 d8          	vaddps ymm11,ymm4,ymm0
  70c678:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  70c67c:	c4 e2 7d 18 15 db 8d 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff968ddb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70c683:	96 ff 
  70c685:	c4 e2 6d ac de       	vfnmadd213ps ymm3,ymm2,ymm6
  70c68a:	c4 e2 7d 18 2d 41 8c 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff968c41]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70c691:	96 ff 
  70c693:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  70c697:	c4 e2 6d ac e0       	vfnmadd213ps ymm4,ymm2,ymm0
  70c69c:	c4 c1 44 5c c1       	vsubps ymm0,ymm7,ymm9
  70c6a1:	c5 64 58 c9          	vaddps ymm9,ymm3,ymm1
  70c6a5:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  70c6a9:	c5 5c 5c c0          	vsubps ymm8,ymm4,ymm0
  70c6ad:	c5 e4 5c d1          	vsubps ymm2,ymm3,ymm1
  70c6b1:	c5 7c 58 e4          	vaddps ymm12,ymm0,ymm4
  70c6b5:	c4 63 7d 19 d0 01    	vextractf128 xmm0,ymm10,0x1
  70c6bb:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  70c6c1:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  70c6c7:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  70c6cd:	c4 c3 7d 19 d6 01    	vextractf128 xmm14,ymm2,0x1
  70c6d3:	c4 c1 7d 14 ce       	vunpcklpd ymm1,ymm0,ymm14
  70c6d8:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  70c6de:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  70c6e2:	c4 e3 65 0c c0 cc    	vblendps ymm0,ymm3,ymm0,0xcc
  70c6e8:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  70c6ec:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  70c6f3:	00 00 
  70c6f5:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  70c6fa:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  70c700:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70c705:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  70c70b:	c4 63 7d 19 e1 01    	vextractf128 xmm1,ymm12,0x1
  70c711:	c5 cd 14 e9          	vunpcklpd ymm5,ymm6,ymm1
  70c715:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  70c71c:	00 00 
  70c71e:	c4 e3 45 0c dc cc    	vblendps ymm3,ymm7,ymm4,0xcc
  70c724:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  70c72b:	00 00 
  70c72d:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  70c732:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70c737:	c5 fc 10 a9 00 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x100]
  70c73e:	00 
  70c73f:	c5 fc 10 a1 20 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x120]
  70c746:	00 
  70c747:	c5 54 59 e8          	vmulps ymm13,ymm5,ymm0
  70c74b:	c4 62 65 bc ec       	vfnmadd231ps ymm13,ymm3,ymm4
  70c750:	c5 7c 29 ac 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm13
  70c757:	00 00 
  70c759:	c5 d4 59 db          	vmulps ymm3,ymm5,ymm3
  70c75d:	c4 e2 7d b8 dc       	vfmadd231ps ymm3,ymm0,ymm4
  70c762:	c5 fc 29 9c 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm3
  70c769:	00 00 
  70c76b:	c5 78 29 d5          	vmovaps xmm5,xmm10
  70c76f:	c5 f8 28 d2          	vmovaps xmm2,xmm2
  70c773:	c4 41 7c 28 d1       	vmovaps ymm10,ymm9
  70c778:	c5 78 29 d3          	vmovaps xmm3,xmm10
  70c77c:	c5 dd 73 db 08       	vpsrldq ymm4,ymm3,0x8
  70c781:	c5 fd 7f a4 24 c0 01 	vmovdqa YMMWORD PTR [rsp+0x1c0],ymm4
  70c788:	00 00 
  70c78a:	c5 78 29 d8          	vmovaps xmm0,xmm11
  70c78e:	c5 d5 15 da          	vunpckhpd ymm3,ymm5,ymm2
  70c792:	c5 fc 29 9c 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm3
  70c799:	00 00 
  70c79b:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  70c7a0:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70c7a5:	c4 41 78 28 e4       	vmovaps xmm12,xmm12
  70c7aa:	c5 78 29 c4          	vmovaps xmm4,xmm8
  70c7ae:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  70c7b3:	c5 fd 7f a4 24 a0 01 	vmovdqa YMMWORD PTR [rsp+0x1a0],ymm4
  70c7ba:	00 00 
  70c7bc:	c4 41 7d 15 fc       	vunpckhpd ymm15,ymm0,ymm12
  70c7c1:	c5 84 c6 e4 88       	vshufps ymm4,ymm15,ymm4,0x88
  70c7c6:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  70c7cb:	c5 7c 10 89 80 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0x80]
  70c7d2:	00 
  70c7d3:	c5 7c 10 99 a0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xa0]
  70c7da:	00 
  70c7db:	c5 34 59 eb          	vmulps ymm13,ymm9,ymm3
  70c7df:	c4 42 5d bc eb       	vfnmadd231ps ymm13,ymm4,ymm11
  70c7e4:	c5 7c 29 ac 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm13
  70c7eb:	00 00 
  70c7ed:	c5 34 59 ec          	vmulps ymm13,ymm9,ymm4
  70c7f1:	c4 42 65 b8 eb       	vfmadd231ps ymm13,ymm3,ymm11
  70c7f6:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  70c7fc:	c4 41 65 15 de       	vunpckhpd ymm11,ymm3,ymm14
  70c801:	c5 cd 15 e1          	vunpckhpd ymm4,ymm6,ymm1
  70c805:	c5 fc 29 a4 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm4
  70c80c:	00 00 
  70c80e:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  70c812:	c5 fc 28 4c 24 40    	vmovaps ymm1,YMMWORD PTR [rsp+0x40]
  70c818:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  70c81c:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  70c822:	c5 a4 c6 c9 88       	vshufps ymm1,ymm11,ymm1,0x88
  70c827:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70c82c:	c5 45 15 f3          	vunpckhpd ymm14,ymm7,ymm3
  70c830:	c4 c1 5c c6 de 88    	vshufps ymm3,ymm4,ymm14,0x88
  70c836:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70c83b:	c5 fc 10 b1 80 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x180]
  70c842:	00 
  70c843:	c5 fc 10 b9 a0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1a0]
  70c84a:	00 
  70c84b:	c5 cc 59 e1          	vmulps ymm4,ymm6,ymm1
  70c84f:	c4 e2 65 bc e7       	vfnmadd231ps ymm4,ymm3,ymm7
  70c854:	c5 fc 29 64 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm4
  70c85a:	c5 4c 59 cb          	vmulps ymm9,ymm6,ymm3
  70c85e:	c4 62 75 b8 cf       	vfmadd231ps ymm9,ymm1,ymm7
  70c863:	c5 d5 14 ca          	vunpcklpd ymm1,ymm5,ymm2
  70c867:	c5 fc 29 8c 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm1
  70c86e:	00 00 
  70c870:	c4 c1 7d 14 d4       	vunpcklpd ymm2,ymm0,ymm12
  70c875:	c5 fc 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm2
  70c87c:	00 00 
  70c87e:	c4 41 7a 7e d2       	vmovq  xmm10,xmm10
  70c883:	c4 41 7a 7e e0       	vmovq  xmm12,xmm8
  70c888:	c4 c1 74 c6 c2 dd    	vshufps ymm0,ymm1,ymm10,0xdd
  70c88e:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  70c893:	c4 c1 6c c6 cc dd    	vshufps ymm1,ymm2,ymm12,0xdd
  70c899:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70c89e:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  70c8a3:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  70c8a8:	c5 6c 59 c3          	vmulps ymm8,ymm2,ymm3
  70c8ac:	c4 62 75 bc c0       	vfnmadd231ps ymm8,ymm1,ymm0
  70c8b1:	c5 ec 59 f9          	vmulps ymm7,ymm2,ymm1
  70c8b5:	c4 e2 65 b8 f8       	vfmadd231ps ymm7,ymm3,ymm0
  70c8ba:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  70c8c0:	c5 fc c6 84 24 80 00 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x80],0xdd
  70c8c7:	00 00 dd 
  70c8ca:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  70c8d1:	00 00 
  70c8d3:	c5 f4 c6 8c 24 e0 00 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0xe0],0xdd
  70c8da:	00 00 dd 
  70c8dd:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  70c8e2:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70c8e7:	c5 fc 10 81 40 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x140]
  70c8ee:	00 
  70c8ef:	c5 fc 10 91 60 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x160]
  70c8f6:	00 
  70c8f7:	c5 fc 59 f3          	vmulps ymm6,ymm0,ymm3
  70c8fb:	c4 e2 75 bc f2       	vfnmadd231ps ymm6,ymm1,ymm2
  70c900:	c5 fc 59 e9          	vmulps ymm5,ymm0,ymm1
  70c904:	c4 e2 65 b8 ea       	vfmadd231ps ymm5,ymm3,ymm2
  70c909:	c5 fc 28 84 24 e0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1e0]
  70c910:	00 00 
  70c912:	c5 fc c6 84 24 c0 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x1c0],0xdd
  70c919:	00 00 dd 
  70c91c:	c5 84 c6 94 24 a0 01 	vshufps ymm2,ymm15,YMMWORD PTR [rsp+0x1a0],0xdd
  70c923:	00 00 dd 
  70c926:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  70c92b:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  70c930:	c5 fc 10 99 c0 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0xc0]
  70c937:	00 
  70c938:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  70c93f:	00 
  70c940:	c5 64 59 f9          	vmulps ymm15,ymm3,ymm1
  70c944:	c4 62 6d bc f8       	vfnmadd231ps ymm15,ymm2,ymm0
  70c949:	c5 e4 59 e2          	vmulps ymm4,ymm3,ymm2
  70c94d:	c4 e2 75 b8 e0       	vfmadd231ps ymm4,ymm1,ymm0
  70c952:	c5 a4 c6 44 24 20 dd 	vshufps ymm0,ymm11,YMMWORD PTR [rsp+0x20],0xdd
  70c959:	c5 fc 28 8c 24 80 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x180]
  70c960:	00 00 
  70c962:	c4 c1 74 c6 ce dd    	vshufps ymm1,ymm1,ymm14,0xdd
  70c968:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  70c96d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70c972:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  70c979:	00 
  70c97a:	c5 7c 10 b1 e0 01 00 	vmovups ymm14,YMMWORD PTR [rcx+0x1e0]
  70c981:	00 
  70c982:	c5 e4 59 c2          	vmulps ymm0,ymm3,ymm2
  70c986:	c4 c2 75 bc c6       	vfnmadd231ps ymm0,ymm1,ymm14
  70c98b:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  70c98f:	c4 c2 6d b8 de       	vfmadd231ps ymm3,ymm2,ymm14
  70c994:	c5 fc 28 8c 24 60 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x160]
  70c99b:	00 00 
  70c99d:	c4 c1 74 c6 ca 88    	vshufps ymm1,ymm1,ymm10,0x88
  70c9a3:	c5 fc 28 94 24 40 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x140]
  70c9aa:	00 00 
  70c9ac:	c4 c1 6c c6 d4 88    	vshufps ymm2,ymm2,ymm12,0x88
  70c9b2:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  70c9b8:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  70c9bd:	c5 fc 28 8c 24 20 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x120]
  70c9c4:	00 00 
  70c9c6:	c5 74 58 da          	vaddps ymm11,ymm1,ymm2
  70c9ca:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  70c9ce:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  70c9d5:	00 00 
  70c9d7:	c4 41 14 58 e1       	vaddps ymm12,ymm13,ymm9
  70c9dc:	c4 41 14 5c e9       	vsubps ymm13,ymm13,ymm9
  70c9e1:	c5 3c 58 f6          	vaddps ymm14,ymm8,ymm6
  70c9e5:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  70c9e9:	c5 44 58 d5          	vaddps ymm10,ymm7,ymm5
  70c9ed:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  70c9f1:	c5 dc 58 fb          	vaddps ymm7,ymm4,ymm3
  70c9f5:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  70c9f9:	c5 04 58 c8          	vaddps ymm9,ymm15,ymm0
  70c9fd:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  70ca01:	c4 63 7d 04 44 24 60 	vpermilps ymm8,YMMWORD PTR [rsp+0x60],0xd8
  70ca08:	d8 
  70ca09:	c5 fc 28 94 24 00 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x100]
  70ca10:	00 00 
  70ca12:	c5 bc 58 ca          	vaddps ymm1,ymm8,ymm2
  70ca16:	c5 bc 5c e2          	vsubps ymm4,ymm8,ymm2
  70ca1a:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  70ca21:	00 00 
  70ca23:	c5 7c 28 7c 24 40    	vmovaps ymm15,YMMWORD PTR [rsp+0x40]
  70ca29:	c5 04 58 c2          	vaddps ymm8,ymm15,ymm2
  70ca2d:	c5 84 5c d2          	vsubps ymm2,ymm15,ymm2
  70ca31:	c5 4c 58 fd          	vaddps ymm15,ymm6,ymm5
  70ca35:	c5 7c 29 bc 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm15
  70ca3c:	00 00 
  70ca3e:	c5 54 5c fe          	vsubps ymm15,ymm5,ymm6
  70ca42:	c5 e4 5c e8          	vsubps ymm5,ymm3,ymm0
  70ca46:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  70ca4d:	00 00 
  70ca4f:	c5 fc 58 eb          	vaddps ymm5,ymm0,ymm3
  70ca53:	c4 c1 24 58 d8       	vaddps ymm3,ymm11,ymm8
  70ca58:	c5 fc 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm3
  70ca5e:	c4 c1 24 5c c0       	vsubps ymm0,ymm11,ymm8
  70ca63:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  70ca69:	c5 ac 58 c7          	vaddps ymm0,ymm10,ymm7
  70ca6d:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  70ca73:	c5 ac 5c f7          	vsubps ymm6,ymm10,ymm7
  70ca77:	c5 fc 29 b4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm6
  70ca7e:	00 00 
  70ca80:	c5 1c 58 d9          	vaddps ymm11,ymm12,ymm1
  70ca84:	c4 c1 74 5c f4       	vsubps ymm6,ymm1,ymm12
  70ca89:	c5 fc 29 b4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm6
  70ca90:	00 00 
  70ca92:	c4 41 0c 58 e1       	vaddps ymm12,ymm14,ymm9
  70ca97:	c4 c1 34 5c fe       	vsubps ymm7,ymm9,ymm14
  70ca9c:	c5 fc 29 bc 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm7
  70caa3:	00 00 
  70caa5:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  70caac:	00 00 
  70caae:	c5 14 58 c1          	vaddps ymm8,ymm13,ymm1
  70cab2:	c4 c1 74 5c cd       	vsubps ymm1,ymm1,ymm13
  70cab7:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  70cabe:	00 00 
  70cac0:	c5 6c 58 cc          	vaddps ymm9,ymm2,ymm4
  70cac4:	c5 dc 5c e2          	vsubps ymm4,ymm4,ymm2
  70cac8:	c5 a0 58 d0          	vaddps xmm2,xmm11,xmm0
  70cacc:	c5 18 58 d3          	vaddps xmm10,xmm12,xmm3
  70cad0:	c5 28 14 ea          	vunpcklps xmm13,xmm10,xmm2
  70cad4:	c5 a8 15 d2          	vunpckhps xmm2,xmm10,xmm2
  70cad8:	c5 f8 13 54 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm2
  70cade:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  70cae3:	c4 e2 7d 18 0d b0 88 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9688b0]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  70caea:	96 ff 
  70caec:	c5 84 59 d1          	vmulps ymm2,ymm15,ymm1
  70caf0:	c5 d4 59 c1          	vmulps ymm0,ymm5,ymm1
  70caf4:	c5 6c 5c f0          	vsubps ymm14,ymm2,ymm0
  70caf8:	c5 6c 58 d0          	vaddps ymm10,ymm2,ymm0
  70cafc:	c5 f4 59 84 24 00 01 	vmulps ymm0,ymm1,YMMWORD PTR [rsp+0x100]
  70cb03:	00 00 
  70cb05:	c5 f4 59 94 24 e0 00 	vmulps ymm2,ymm1,YMMWORD PTR [rsp+0xe0]
  70cb0c:	00 00 
  70cb0e:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  70cb12:	c5 6c 5c e8          	vsubps ymm13,ymm2,ymm0
  70cb16:	c4 c1 30 58 c6       	vaddps xmm0,xmm9,xmm14
  70cb1b:	c4 c1 38 58 d7       	vaddps xmm2,xmm8,xmm15
  70cb20:	c5 7c 29 c3          	vmovaps ymm3,ymm8
  70cb24:	c5 e8 14 e8          	vunpcklps xmm5,xmm2,xmm0
  70cb28:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  70cb2c:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  70cb32:	c5 f8 11 6c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm5
  70cb38:	c5 c8 58 c7          	vaddps xmm0,xmm6,xmm7
  70cb3c:	c5 fc 28 7c 24 40    	vmovaps ymm7,YMMWORD PTR [rsp+0x40]
  70cb42:	c5 fc 28 b4 24 20 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x120]
  70cb49:	00 00 
  70cb4b:	c5 c0 58 d6          	vaddps xmm2,xmm7,xmm6
  70cb4f:	c5 e8 14 e8          	vunpcklps xmm5,xmm2,xmm0
  70cb53:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  70cb57:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  70cb5d:	c5 90 58 c4          	vaddps xmm0,xmm13,xmm4
  70cb61:	c5 7c 28 c4          	vmovaps ymm8,ymm4
  70cb65:	c5 fc 28 a4 24 80 00 	vmovaps ymm4,YMMWORD PTR [rsp+0x80]
  70cb6c:	00 00 
  70cb6e:	c5 a8 58 d4          	vaddps xmm2,xmm10,xmm4
  70cb72:	c5 e8 14 c8          	vunpcklps xmm1,xmm2,xmm0
  70cb76:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  70cb7a:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  70cb80:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  70cb86:	c5 a0 5c 44 24 60    	vsubps xmm0,xmm11,XMMWORD PTR [rsp+0x60]
  70cb8c:	c5 fc 28 54 24 20    	vmovaps ymm2,YMMWORD PTR [rsp+0x20]
  70cb92:	c4 c1 68 5c d4       	vsubps xmm2,xmm2,xmm12
  70cb97:	c5 f8 11 4c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm1
  70cb9d:	c5 e8 14 c8          	vunpcklps xmm1,xmm2,xmm0
  70cba1:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  70cba5:	c4 c1 30 5c d6       	vsubps xmm2,xmm9,xmm14
  70cbaa:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  70cbb0:	c4 c1 60 5c c7       	vsubps xmm0,xmm3,xmm15
  70cbb5:	c5 f8 14 da          	vunpcklps xmm3,xmm0,xmm2
  70cbb9:	c5 f8 15 c2          	vunpckhps xmm0,xmm0,xmm2
  70cbbd:	c5 f8 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm1
  70cbc3:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  70cbca:	00 00 
  70cbcc:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  70cbd3:	00 00 
  70cbd5:	c5 f8 5c 84 24 c0 00 	vsubps xmm0,xmm0,XMMWORD PTR [rsp+0xc0]
  70cbdc:	00 00 
  70cbde:	c5 c0 5c ce          	vsubps xmm1,xmm7,xmm6
  70cbe2:	c5 f8 11 5c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm3
  70cbe8:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70cbec:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70cbf0:	c4 c1 38 5c cd       	vsubps xmm1,xmm8,xmm13
  70cbf5:	c5 f8 13 84 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm0
  70cbfc:	00 00 
  70cbfe:	c4 c1 58 5c c2       	vsubps xmm0,xmm4,xmm10
  70cc03:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  70cc07:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  70cc0b:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  70cc12:	00 00 
  70cc14:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  70cc1b:	00 00 
  70cc1d:	c5 f8 11 9c 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm3
  70cc24:	00 00 
  70cc26:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  70cc2d:	48 39 d0             	cmp    rax,rdx
  70cc30:	0f 85 ba f9 ff ff    	jne    70c5f0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  70cc36:	48 89 ec             	mov    rsp,rbp
  70cc39:	5d                   	pop    rbp
  70cc3a:	c5 f8 77             	vzeroupper
  70cc3d:	c3                   	ret
