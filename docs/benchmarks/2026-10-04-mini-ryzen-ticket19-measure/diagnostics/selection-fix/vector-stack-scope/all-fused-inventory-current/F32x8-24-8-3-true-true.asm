
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000072c5c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  72c5c0:	55                   	push   rbp
  72c5c1:	48 89 e5             	mov    rbp,rsp
  72c5c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  72c5c8:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  72c5cf:	48 c1 e2 06          	shl    rdx,0x6
  72c5d3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  72c5d7:	31 d2                	xor    edx,edx
  72c5d9:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  72c5e0:	00 
  72c5e1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  72c5e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  72c5ed:	00 00 00 
  72c5f0:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  72c5f7:	00 
  72c5f8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  72c5fd:	c5 fb 10 44 17 10    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x10]
  72c603:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72c609:	c5 fb 10 4c 17 28    	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x28]
  72c60f:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  72c615:	c5 fb 10 54 17 40    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x40]
  72c61b:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  72c621:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  72c626:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  72c62b:	c4 c3 7d 0c f1 c0    	vblendps ymm6,ymm0,ymm9,0xc0
  72c631:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  72c637:	c5 78 10 5c 17 30    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x30]
  72c63d:	c5 f8 10 44 17 48    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x48]
  72c643:	c5 f8 29 84 24 80 00 	vmovaps XMMWORD PTR [rsp+0x80],xmm0
  72c64a:	00 00 
  72c64c:	c4 43 75 0c e9 c0    	vblendps ymm13,ymm1,ymm9,0xc0
  72c652:	c5 fb 10 44 17 58    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x58]
  72c658:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72c65e:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  72c664:	c4 c3 6d 0c d9 c0    	vblendps ymm3,ymm2,ymm9,0xc0
  72c66a:	c5 fb 10 4c 17 70    	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x70]
  72c670:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  72c676:	c5 78 10 64 17 78    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x78]
  72c67c:	c4 43 7d 0c f9 c0    	vblendps ymm15,ymm0,ymm9,0xc0
  72c682:	c5 fb 10 84 17 88 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x88]
  72c689:	00 00 
  72c68b:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72c691:	c5 f8 10 94 17 90 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x90]
  72c698:	00 00 
  72c69a:	c5 f8 29 54 24 60    	vmovaps XMMWORD PTR [rsp+0x60],xmm2
  72c6a0:	c4 c3 75 0c c9 c0    	vblendps ymm1,ymm1,ymm9,0xc0
  72c6a6:	c5 78 10 b4 17 a8 00 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0xa8]
  72c6ad:	00 00 
  72c6af:	c5 fb 10 94 17 b8 00 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0xb8]
  72c6b6:	00 00 
  72c6b8:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  72c6be:	c4 c3 7d 0c e1 c0    	vblendps ymm4,ymm0,ymm9,0xc0
  72c6c4:	c4 c3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm9,0xc0
  72c6ca:	c4 c3 7d 19 f0 01    	vextractf128 xmm8,ymm6,0x1
  72c6d0:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  72c6d6:	c4 c1 50 c6 c8 dd    	vshufps xmm1,xmm5,xmm8,0xdd
  72c6dc:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  72c6e2:	c4 41 50 c6 c0 88    	vshufps xmm8,xmm5,xmm8,0x88
  72c6e8:	c5 a8 c6 f0 dd       	vshufps xmm6,xmm10,xmm0,0xdd
  72c6ed:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  72c6f3:	c5 28 c6 d0 88       	vshufps xmm10,xmm10,xmm0,0x88
  72c6f8:	c5 a0 c6 c3 dd       	vshufps xmm0,xmm11,xmm3,0xdd
  72c6fd:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  72c704:	00 00 
  72c706:	c4 63 7d 19 e8 01    	vextractf128 xmm0,ymm13,0x1
  72c70c:	c5 20 c6 db 88       	vshufps xmm11,xmm11,xmm3,0x88
  72c711:	c5 c0 c6 e8 dd       	vshufps xmm5,xmm7,xmm0,0xdd
  72c716:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  72c71c:	c4 63 7d 19 f9 01    	vextractf128 xmm1,ymm15,0x1
  72c722:	c5 40 c6 e8 88       	vshufps xmm13,xmm7,xmm0,0x88
  72c727:	c5 18 c6 fc dd       	vshufps xmm15,xmm12,xmm4,0xdd
  72c72c:	c5 18 c6 e4 88       	vshufps xmm12,xmm12,xmm4,0x88
  72c731:	c5 f8 28 84 24 80 00 	vmovaps xmm0,XMMWORD PTR [rsp+0x80]
  72c738:	00 00 
  72c73a:	c5 f8 c6 f9 dd       	vshufps xmm7,xmm0,xmm1,0xdd
  72c73f:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  72c745:	c5 f8 c6 e1 88       	vshufps xmm4,xmm0,xmm1,0x88
  72c74a:	c5 88 c6 da dd       	vshufps xmm3,xmm14,xmm2,0xdd
  72c74f:	c5 08 c6 f2 88       	vshufps xmm14,xmm14,xmm2,0x88
  72c754:	c5 fb 10 8c 17 a0 00 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0xa0]
  72c75b:	00 00 
  72c75d:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  72c763:	c4 c3 75 0c c9 c0    	vblendps ymm1,ymm1,ymm9,0xc0
  72c769:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  72c76f:	c5 f8 28 44 24 60    	vmovaps xmm0,XMMWORD PTR [rsp+0x60]
  72c775:	c5 f8 c6 d1 dd       	vshufps xmm2,xmm0,xmm1,0xdd
  72c77a:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
  72c77f:	c5 fc 28 4c 24 40    	vmovaps ymm1,YMMWORD PTR [rsp+0x40]
  72c785:	c5 74 58 ce          	vaddps ymm9,ymm1,ymm6
  72c789:	c5 7c 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm9
  72c790:	00 00 
  72c792:	c5 74 5c ce          	vsubps ymm9,ymm1,ymm6
  72c796:	c5 84 58 f5          	vaddps ymm6,ymm15,ymm5
  72c79a:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  72c79f:	c4 41 14 58 fc       	vaddps ymm15,ymm13,ymm12
  72c7a4:	c4 41 14 5c e4       	vsubps ymm12,ymm13,ymm12
  72c7a9:	c5 0c 58 ec          	vaddps ymm13,ymm14,ymm4
  72c7ad:	c4 c1 5c 5c e6       	vsubps ymm4,ymm4,ymm14
  72c7b2:	c5 44 58 f3          	vaddps ymm14,ymm7,ymm3
  72c7b6:	c5 c4 5c db          	vsubps ymm3,ymm7,ymm3
  72c7ba:	c5 a4 58 f8          	vaddps ymm7,ymm11,ymm0
  72c7be:	c5 24 5c d8          	vsubps ymm11,ymm11,ymm0
  72c7c2:	c4 c1 3c 58 c2       	vaddps ymm0,ymm8,ymm10
  72c7c7:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  72c7cc:	c5 9c 58 cd          	vaddps ymm1,ymm12,ymm5
  72c7d0:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  72c7d6:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  72c7da:	c5 dc 5c cb          	vsubps ymm1,ymm4,ymm3
  72c7de:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  72c7e4:	c5 e4 58 e4          	vaddps ymm4,ymm3,ymm4
  72c7e8:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  72c7ef:	00 00 
  72c7f1:	c5 f4 58 da          	vaddps ymm3,ymm1,ymm2
  72c7f5:	c5 6c 5c d1          	vsubps ymm10,ymm2,ymm1
  72c7f9:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  72c800:	00 00 
  72c802:	c5 f4 58 d3          	vaddps ymm2,ymm1,ymm3
  72c806:	c5 74 5c e3          	vsubps ymm12,ymm1,ymm3
  72c80a:	c4 c1 04 58 cd       	vaddps ymm1,ymm15,ymm13
  72c80f:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  72c816:	00 00 
  72c818:	c4 c1 04 5c dd       	vsubps ymm3,ymm15,ymm13
  72c81d:	c5 7c 58 ef          	vaddps ymm13,ymm0,ymm7
  72c821:	c5 7c 5c ff          	vsubps ymm15,ymm0,ymm7
  72c825:	c5 8c 58 c6          	vaddps ymm0,ymm14,ymm6
  72c829:	c5 8c 5c fe          	vsubps ymm7,ymm14,ymm6
  72c82d:	c4 c1 34 58 cb       	vaddps ymm1,ymm9,ymm11
  72c832:	c4 c1 34 5c f3       	vsubps ymm6,ymm9,ymm11
  72c837:	c4 41 2c 58 f0       	vaddps ymm14,ymm10,ymm8
  72c83c:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  72c841:	c4 62 7d 18 0d 52 8b 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff948b52]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  72c848:	94 ff 
  72c84a:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  72c84e:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  72c852:	c5 54 5c dc          	vsubps ymm11,ymm5,ymm4
  72c856:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  72c85a:	c5 b4 59 6c 24 60    	vmulps ymm5,ymm9,YMMWORD PTR [rsp+0x60]
  72c860:	c5 34 59 4c 24 40    	vmulps ymm9,ymm9,YMMWORD PTR [rsp+0x40]
  72c866:	c5 34 58 d5          	vaddps ymm10,ymm9,ymm5
  72c86a:	c5 34 5c cd          	vsubps ymm9,ymm9,ymm5
  72c86e:	c5 ec 58 e8          	vaddps ymm5,ymm2,ymm0
  72c872:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  72c876:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  72c87c:	c5 ac 58 d1          	vaddps ymm2,ymm10,ymm1
  72c880:	c4 c1 70 5c ca       	vsubps xmm1,xmm1,xmm10
  72c885:	c5 9c 58 eb          	vaddps ymm5,ymm12,ymm3
  72c889:	c5 98 5c db          	vsubps xmm3,xmm12,xmm3
  72c88d:	c4 e3 6d 18 d1 01    	vinsertf128 ymm2,ymm2,xmm1,0x1
  72c893:	c4 e3 55 18 cb 01    	vinsertf128 ymm1,ymm5,xmm3,0x1
  72c899:	c5 cc 58 dc          	vaddps ymm3,ymm6,ymm4
  72c89d:	c5 c8 5c e4          	vsubps xmm4,xmm6,xmm4
  72c8a1:	c5 fd 15 e9          	vunpckhpd ymm5,ymm0,ymm1
  72c8a5:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  72c8a9:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  72c8b0:	00 00 
  72c8b2:	c5 94 58 ce          	vaddps ymm1,ymm13,ymm6
  72c8b6:	c5 90 5c f6          	vsubps xmm6,xmm13,xmm6
  72c8ba:	c4 e3 65 18 dc 01    	vinsertf128 ymm3,ymm3,xmm4,0x1
  72c8c0:	c4 e3 75 18 ce 01    	vinsertf128 ymm1,ymm1,xmm6,0x1
  72c8c6:	c4 c1 0c 58 e3       	vaddps ymm4,ymm14,ymm11
  72c8cb:	c4 c1 08 5c f3       	vsubps xmm6,xmm14,xmm11
  72c8d0:	c4 e3 5d 18 f6 01    	vinsertf128 ymm6,ymm4,xmm6,0x1
  72c8d6:	c5 84 58 e7          	vaddps ymm4,ymm15,ymm7
  72c8da:	c5 80 5c ff          	vsubps xmm7,xmm15,xmm7
  72c8de:	c5 6d 15 d3          	vunpckhpd ymm10,ymm2,ymm3
  72c8e2:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  72c8e6:	c4 e3 5d 18 df 01    	vinsertf128 ymm3,ymm4,xmm7,0x1
  72c8ec:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  72c8f1:	c4 41 38 5c c1       	vsubps xmm8,xmm8,xmm9
  72c8f6:	c4 c1 54 c6 ea 88    	vshufps ymm5,ymm5,ymm10,0x88
  72c8fc:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  72c901:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  72c907:	c5 75 15 c3          	vunpckhpd ymm8,ymm1,ymm3
  72c90b:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  72c910:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  72c914:	c5 cd 15 d7          	vunpckhpd ymm2,ymm6,ymm7
  72c918:	c5 bc c6 d2 88       	vshufps ymm2,ymm8,ymm2,0x88
  72c91d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  72c922:	c5 cd 14 df          	vunpcklpd ymm3,ymm6,ymm7
  72c926:	c5 f4 c6 f3 88       	vshufps ymm6,ymm1,ymm3,0x88
  72c92b:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  72c930:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  72c935:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  72c93a:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  72c93f:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  72c944:	c5 54 59 c1          	vmulps ymm8,ymm5,ymm1
  72c948:	c4 62 7d b8 c7       	vfmadd231ps ymm8,ymm0,ymm7
  72c94d:	c5 d4 59 c0          	vmulps ymm0,ymm5,ymm0
  72c951:	c5 fc 10 a9 80 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0x80]
  72c958:	00 
  72c959:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  72c95e:	c4 e2 75 bc c7       	vfnmadd231ps ymm0,ymm1,ymm7
  72c963:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  72c96a:	00 
  72c96b:	c5 d4 59 fa          	vmulps ymm7,ymm5,ymm2
  72c96f:	c4 e2 65 b8 f9       	vfmadd231ps ymm7,ymm3,ymm1
  72c974:	c5 d4 59 db          	vmulps ymm3,ymm5,ymm3
  72c978:	c5 cc c6 ee d8       	vshufps ymm5,ymm6,ymm6,0xd8
  72c97d:	c4 e2 6d bc d9       	vfnmadd231ps ymm3,ymm2,ymm1
  72c982:	c5 bc 58 cf          	vaddps ymm1,ymm8,ymm7
  72c986:	c5 fc 5c d3          	vsubps ymm2,ymm0,ymm3
  72c98a:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  72c98e:	c4 62 7d 18 0d c9 8a 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff948ac9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  72c995:	94 ff 
  72c997:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  72c99b:	c4 e2 75 ac dd       	vfnmadd213ps ymm3,ymm1,ymm5
  72c9a0:	c4 62 7d 18 15 2b 89 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff94892b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  72c9a7:	94 ff 
  72c9a9:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  72c9ad:	c5 bc 5c f7          	vsubps ymm6,ymm8,ymm7
  72c9b1:	c5 e4 58 fa          	vaddps ymm7,ymm3,ymm2
  72c9b5:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  72c9b9:	c5 dc c6 dc d8       	vshufps ymm3,ymm4,ymm4,0xd8
  72c9be:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  72c9c2:	c5 7c 29 cc          	vmovaps ymm4,ymm9
  72c9c6:	c4 e2 7d ac e3       	vfnmadd213ps ymm4,ymm0,ymm3
  72c9cb:	c5 ac 59 ee          	vmulps ymm5,ymm10,ymm6
  72c9cf:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  72c9d3:	c5 dc 5c dd          	vsubps ymm3,ymm4,ymm5
  72c9d7:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  72c9db:	c5 f4 15 e8          	vunpckhps ymm5,ymm1,ymm0
  72c9df:	c5 f4 14 c0          	vunpcklps ymm0,ymm1,ymm0
  72c9e3:	c4 e3 7d 06 cd 31    	vperm2f128 ymm1,ymm0,ymm5,0x31
  72c9e9:	c4 e3 7d 06 c5 20    	vperm2f128 ymm0,ymm0,ymm5,0x20
  72c9ef:	c5 fc 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm0
  72c9f4:	c5 fc 11 4c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm1
  72c9fa:	c5 ec 15 c4          	vunpckhps ymm0,ymm2,ymm4
  72c9fe:	c5 ec 14 cc          	vunpcklps ymm1,ymm2,ymm4
  72ca02:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  72ca08:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  72ca0e:	c5 fc 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm0
  72ca14:	c5 c4 15 c3          	vunpckhps ymm0,ymm7,ymm3
  72ca18:	c5 c4 14 cb          	vunpcklps ymm1,ymm7,ymm3
  72ca1c:	c4 e3 75 06 d8 31    	vperm2f128 ymm3,ymm1,ymm0,0x31
  72ca22:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  72ca28:	c5 fc 11 54 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  72ca2e:	c5 fc 11 84 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm0
  72ca35:	00 00 
  72ca37:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  72ca3e:	00 00 
  72ca40:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  72ca47:	48 39 d0             	cmp    rax,rdx
  72ca4a:	0f 85 a0 fb ff ff    	jne    72c5f0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  72ca50:	48 89 ec             	mov    rsp,rbp
  72ca53:	5d                   	pop    rbp
  72ca54:	c5 f8 77             	vzeroupper
  72ca57:	c3                   	ret
