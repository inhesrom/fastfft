
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006f2740 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6f2740:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  6f2747:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  6f274b:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  6f2750:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  6f2755:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  6f275a:	c5 fc 10 a7 80 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0x80]
  6f2761:	00 
  6f2762:	c5 fc 10 af a0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xa0]
  6f2769:	00 
  6f276a:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  6f276f:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  6f2775:	c5 ec c6 fb 88       	vshufps ymm7,ymm2,ymm3,0x88
  6f277a:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  6f2780:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  6f2785:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6f278b:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  6f2790:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6f2796:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  6f279b:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6f27a1:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  6f27a6:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6f27ac:	c5 bc 58 df          	vaddps ymm3,ymm8,ymm7
  6f27b0:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  6f27b4:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  6f27b8:	c5 54 58 e0          	vaddps ymm12,ymm5,ymm0
  6f27bc:	c4 62 7d 18 0d 9b 2c 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff982c9b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f27c3:	98 ff 
  6f27c5:	c4 e2 35 ac de       	vfnmadd213ps ymm3,ymm9,ymm6
  6f27ca:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6f27ce:	c4 e2 7d 18 15 fd 2a 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff982afd]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f27d5:	98 ff 
  6f27d7:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  6f27db:	c5 e4 58 f1          	vaddps ymm6,ymm3,ymm1
  6f27df:	c4 62 55 ac c8       	vfnmadd213ps ymm9,ymm5,ymm0
  6f27e4:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  6f27e9:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6f27ed:	c5 34 5c f8          	vsubps ymm15,ymm9,ymm0
  6f27f1:	c5 64 5c d1          	vsubps ymm10,ymm3,ymm1
  6f27f5:	c5 34 58 c0          	vaddps ymm8,ymm9,ymm0
  6f27f9:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  6f27ff:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6f2805:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  6f280b:	c5 fc 28 fe          	vmovaps ymm7,ymm6
  6f280f:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  6f2815:	c4 63 7d 19 d1 01    	vextractf128 xmm1,ymm10,0x1
  6f281b:	c5 fc 11 4c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm1
  6f2821:	c5 fd 14 c9          	vunpcklpd ymm1,ymm0,ymm1
  6f2825:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  6f282b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6f282f:	c4 e3 6d 0c c0 cc    	vblendps ymm0,ymm2,ymm0,0xcc
  6f2835:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  6f2839:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  6f283e:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  6f2843:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6f2848:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  6f284e:	c4 63 7d 19 fb 01    	vextractf128 xmm3,ymm15,0x1
  6f2854:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  6f285a:	c5 8d 14 f1          	vunpcklpd ymm6,ymm14,ymm1
  6f285e:	c5 fc 11 b4 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm6
  6f2865:	00 00 
  6f2867:	c4 e3 65 0c d5 cc    	vblendps ymm2,ymm3,ymm5,0xcc
  6f286d:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  6f2873:	c5 cc c6 d2 88       	vshufps ymm2,ymm6,ymm2,0x88
  6f2878:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f287d:	c5 7c 10 8a 00 01 00 	vmovups ymm9,YMMWORD PTR [rdx+0x100]
  6f2884:	00 
  6f2885:	c5 fc 10 b2 20 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x120]
  6f288c:	00 
  6f288d:	c5 b4 59 e8          	vmulps ymm5,ymm9,ymm0
  6f2891:	c4 e2 6d bc ee       	vfnmadd231ps ymm5,ymm2,ymm6
  6f2896:	c5 fc 11 6c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm5
  6f289c:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  6f28a0:	c4 e2 7d b8 d6       	vfmadd231ps ymm2,ymm0,ymm6
  6f28a5:	c5 fc 11 54 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm2
  6f28ab:	c5 78 28 dc          	vmovaps xmm11,xmm4
  6f28af:	c5 78 29 d2          	vmovaps xmm2,xmm10
  6f28b3:	c5 fc 28 c7          	vmovaps ymm0,ymm7
  6f28b7:	c5 f8 28 e0          	vmovaps xmm4,xmm0
  6f28bb:	c5 d5 73 dc 08       	vpsrldq ymm5,ymm4,0x8
  6f28c0:	c5 fe 7f ac 24 20 01 	vmovdqu YMMWORD PTR [rsp+0x120],ymm5
  6f28c7:	00 00 
  6f28c9:	c5 a5 15 e2          	vunpckhpd ymm4,ymm11,ymm2
  6f28cd:	c5 fc 11 a4 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm4
  6f28d4:	00 00 
  6f28d6:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  6f28db:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6f28e0:	c5 78 29 e5          	vmovaps xmm5,xmm12
  6f28e4:	c5 78 29 c6          	vmovaps xmm6,xmm8
  6f28e8:	c4 41 78 28 c7       	vmovaps xmm8,xmm15
  6f28ed:	c4 c1 45 73 d8 08    	vpsrldq ymm7,ymm8,0x8
  6f28f3:	c5 55 15 c6          	vunpckhpd ymm8,ymm5,ymm6
  6f28f7:	c5 7c 11 84 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm8
  6f28fe:	00 00 
  6f2900:	c5 3c c6 c7 88       	vshufps ymm8,ymm8,ymm7,0x88
  6f2905:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6f290b:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  6f2912:	00 
  6f2913:	c5 7c 10 a2 a0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xa0]
  6f291a:	00 
  6f291b:	c5 2c 59 cc          	vmulps ymm9,ymm10,ymm4
  6f291f:	c4 42 3d bc cc       	vfnmadd231ps ymm9,ymm8,ymm12
  6f2924:	c5 7c 11 8c 24 60 01 	vmovups YMMWORD PTR [rsp+0x160],ymm9
  6f292b:	00 00 
  6f292d:	c4 41 2c 59 e8       	vmulps ymm13,ymm10,ymm8
  6f2932:	c4 42 5d b8 ec       	vfmadd231ps ymm13,ymm4,ymm12
  6f2937:	c5 fc 10 64 24 c0    	vmovups ymm4,YMMWORD PTR [rsp-0x40]
  6f293d:	c5 5d 15 44 24 20    	vunpckhpd ymm8,ymm4,YMMWORD PTR [rsp+0x20]
  6f2943:	c5 7c 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm8
  6f2949:	c5 0d 15 c9          	vunpckhpd ymm9,ymm14,ymm1
  6f294d:	c5 7c 11 8c 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm9
  6f2954:	00 00 
  6f2956:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6f295a:	c5 fc 10 64 24 a0    	vmovups ymm4,YMMWORD PTR [rsp-0x60]
  6f2960:	c5 dd 15 e1          	vunpckhpd ymm4,ymm4,ymm1
  6f2964:	c5 fc 11 64 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm4
  6f296a:	c5 e5 15 d9          	vunpckhpd ymm3,ymm3,ymm1
  6f296e:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  6f2974:	c5 bc c6 cc 88       	vshufps ymm1,ymm8,ymm4,0x88
  6f2979:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6f297e:	c5 b4 c6 db 88       	vshufps ymm3,ymm9,ymm3,0x88
  6f2983:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6f2988:	c5 fc 10 a2 80 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x180]
  6f298f:	00 
  6f2990:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  6f2997:	00 
  6f2998:	c5 5c 59 f1          	vmulps ymm14,ymm4,ymm1
  6f299c:	c4 42 65 bc f2       	vfnmadd231ps ymm14,ymm3,ymm10
  6f29a1:	c5 5c 59 e3          	vmulps ymm12,ymm4,ymm3
  6f29a5:	c4 42 75 b8 e2       	vfmadd231ps ymm12,ymm1,ymm10
  6f29aa:	c5 a5 14 ca          	vunpcklpd ymm1,ymm11,ymm2
  6f29ae:	c5 fc 11 8c 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm1
  6f29b5:	00 00 
  6f29b7:	c5 d5 14 d6          	vunpcklpd ymm2,ymm5,ymm6
  6f29bb:	c5 fc 11 94 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm2
  6f29c2:	00 00 
  6f29c4:	c5 fa 7e c0          	vmovq  xmm0,xmm0
  6f29c8:	c5 fe 7f 84 24 c0 00 	vmovdqu YMMWORD PTR [rsp+0xc0],ymm0
  6f29cf:	00 00 
  6f29d1:	c5 f4 c6 c0 dd       	vshufps ymm0,ymm1,ymm0,0xdd
  6f29d6:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6f29db:	c4 41 7a 7e ff       	vmovq  xmm15,xmm15
  6f29e0:	c4 c1 6c c6 cf dd    	vshufps ymm1,ymm2,ymm15,0xdd
  6f29e6:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6f29eb:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  6f29f0:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  6f29f5:	c5 6c 59 db          	vmulps ymm11,ymm2,ymm3
  6f29f9:	c4 62 75 bc d8       	vfnmadd231ps ymm11,ymm1,ymm0
  6f29fe:	c5 6c 59 d1          	vmulps ymm10,ymm2,ymm1
  6f2a02:	c4 62 65 b8 d0       	vfmadd231ps ymm10,ymm3,ymm0
  6f2a07:	c5 fc 10 44 24 e0    	vmovups ymm0,YMMWORD PTR [rsp-0x20]
  6f2a0d:	c5 fc c6 04 24 dd    	vshufps ymm0,ymm0,YMMWORD PTR [rsp],0xdd
  6f2a13:	c5 fc 10 8c 24 80 01 	vmovups ymm1,YMMWORD PTR [rsp+0x180]
  6f2a1a:	00 00 
  6f2a1c:	c5 f4 c6 4c 24 40 dd 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0x40],0xdd
  6f2a23:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  6f2a28:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6f2a2d:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  6f2a34:	00 
  6f2a35:	c5 fc 10 82 60 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x160]
  6f2a3c:	00 
  6f2a3d:	c5 64 59 c2          	vmulps ymm8,ymm3,ymm2
  6f2a41:	c4 62 75 bc c0       	vfnmadd231ps ymm8,ymm1,ymm0
  6f2a46:	c5 64 59 c9          	vmulps ymm9,ymm3,ymm1
  6f2a4a:	c4 62 6d b8 c8       	vfmadd231ps ymm9,ymm2,ymm0
  6f2a4f:	c5 fc 10 84 24 40 01 	vmovups ymm0,YMMWORD PTR [rsp+0x140]
  6f2a56:	00 00 
  6f2a58:	c5 fc c6 84 24 20 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x120],0xdd
  6f2a5f:	00 00 dd 
  6f2a62:	c5 fc 10 8c 24 00 01 	vmovups ymm1,YMMWORD PTR [rsp+0x100]
  6f2a69:	00 00 
  6f2a6b:	c5 f4 c6 d7 dd       	vshufps ymm2,ymm1,ymm7,0xdd
  6f2a70:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6f2a75:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f2a7a:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  6f2a81:	00 
  6f2a82:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  6f2a89:	00 
  6f2a8a:	c5 fc 59 fb          	vmulps ymm7,ymm0,ymm3
  6f2a8e:	c4 e2 6d bc f9       	vfnmadd231ps ymm7,ymm2,ymm1
  6f2a93:	c5 fc 59 f2          	vmulps ymm6,ymm0,ymm2
  6f2a97:	c4 e2 65 b8 f1       	vfmadd231ps ymm6,ymm3,ymm1
  6f2a9c:	c5 fc 10 44 24 20    	vmovups ymm0,YMMWORD PTR [rsp+0x20]
  6f2aa2:	c5 fc c6 4c 24 c0 dd 	vshufps ymm1,ymm0,YMMWORD PTR [rsp-0x40],0xdd
  6f2aa9:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  6f2ab0:	00 00 
  6f2ab2:	c5 fc c6 54 24 a0 dd 	vshufps ymm2,ymm0,YMMWORD PTR [rsp-0x60],0xdd
  6f2ab9:	c5 f4 c6 e9 d8       	vshufps ymm5,ymm1,ymm1,0xd8
  6f2abe:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f2ac3:	c5 fc 10 9a c0 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x1c0]
  6f2aca:	00 
  6f2acb:	c5 fc 10 a2 e0 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x1e0]
  6f2ad2:	00 
  6f2ad3:	c5 e4 59 cd          	vmulps ymm1,ymm3,ymm5
  6f2ad7:	c4 e2 6d bc cc       	vfnmadd231ps ymm1,ymm2,ymm4
  6f2adc:	c5 e4 59 c2          	vmulps ymm0,ymm3,ymm2
  6f2ae0:	c4 e2 55 b8 c4       	vfmadd231ps ymm0,ymm5,ymm4
  6f2ae5:	c5 fc 10 94 24 a0 00 	vmovups ymm2,YMMWORD PTR [rsp+0xa0]
  6f2aec:	00 00 
  6f2aee:	c5 ec c6 94 24 c0 00 	vshufps ymm2,ymm2,YMMWORD PTR [rsp+0xc0],0x88
  6f2af5:	00 00 88 
  6f2af8:	c5 fc 10 9c 24 80 00 	vmovups ymm3,YMMWORD PTR [rsp+0x80]
  6f2aff:	00 00 
  6f2b01:	c4 41 64 c6 ff 88    	vshufps ymm15,ymm3,ymm15,0x88
  6f2b07:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6f2b0c:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  6f2b12:	c5 e4 58 e2          	vaddps ymm4,ymm3,ymm2
  6f2b16:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6f2b1a:	c5 fc 11 14 24       	vmovups YMMWORD PTR [rsp],ymm2
  6f2b1f:	c4 c1 14 58 ec       	vaddps ymm5,ymm13,ymm12
  6f2b24:	c4 c1 14 5c d4       	vsubps ymm2,ymm13,ymm12
  6f2b29:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  6f2b2f:	c4 c1 24 58 d0       	vaddps ymm2,ymm11,ymm8
  6f2b34:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  6f2b3a:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  6f2b3f:	c4 41 2c 58 d9       	vaddps ymm11,ymm10,ymm9
  6f2b44:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  6f2b49:	c5 4c 58 e0          	vaddps ymm12,ymm6,ymm0
  6f2b4d:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6f2b51:	c5 c4 58 f1          	vaddps ymm6,ymm7,ymm1
  6f2b55:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  6f2b59:	c4 c1 04 c6 ff d8    	vshufps ymm7,ymm15,ymm15,0xd8
  6f2b5f:	c5 fc 10 54 24 60    	vmovups ymm2,YMMWORD PTR [rsp+0x60]
  6f2b65:	c5 6c 58 ef          	vaddps ymm13,ymm2,ymm7
  6f2b69:	c5 c4 5c fa          	vsubps ymm7,ymm7,ymm2
  6f2b6d:	c5 fc 10 94 24 60 01 	vmovups ymm2,YMMWORD PTR [rsp+0x160]
  6f2b74:	00 00 
  6f2b76:	c5 0c 58 d2          	vaddps ymm10,ymm14,ymm2
  6f2b7a:	c5 0c 5c fa          	vsubps ymm15,ymm14,ymm2
  6f2b7e:	c4 41 3c 58 f1       	vaddps ymm14,ymm8,ymm9
  6f2b83:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  6f2b88:	c5 7c 5c c9          	vsubps ymm9,ymm0,ymm1
  6f2b8c:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  6f2b90:	c4 e2 7d 18 0d 03 28 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff982803]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6f2b97:	98 ff 
  6f2b99:	c5 8c 59 d1          	vmulps ymm2,ymm14,ymm1
  6f2b9d:	c5 b4 59 c1          	vmulps ymm0,ymm9,ymm1
  6f2ba1:	c5 3c 59 f1          	vmulps ymm14,ymm8,ymm1
  6f2ba5:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  6f2ba9:	c5 ac 58 cc          	vaddps ymm1,ymm10,ymm4
  6f2bad:	c5 fc 11 4c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm1
  6f2bb3:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  6f2bb8:	c5 fc 11 64 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm4
  6f2bbe:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  6f2bc3:	c4 c1 24 5c e4       	vsubps ymm4,ymm11,ymm12
  6f2bc8:	c5 fc 11 64 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm4
  6f2bce:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  6f2bd2:	c5 94 5c e5          	vsubps ymm4,ymm13,ymm5
  6f2bd6:	c5 fc 11 64 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm4
  6f2bdc:	c5 fc 10 6c 24 80    	vmovups ymm5,YMMWORD PTR [rsp-0x80]
  6f2be2:	c5 54 58 ee          	vaddps ymm13,ymm5,ymm6
  6f2be6:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  6f2bea:	c5 fc 11 6c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm5
  6f2bf0:	c5 fc 10 34 24       	vmovups ymm6,YMMWORD PTR [rsp]
  6f2bf5:	c5 7c 10 44 24 e0    	vmovups ymm8,YMMWORD PTR [rsp-0x20]
  6f2bfb:	c5 3c 58 ce          	vaddps ymm9,ymm8,ymm6
  6f2bff:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  6f2c04:	c5 fc 11 34 24       	vmovups YMMWORD PTR [rsp],ymm6
  6f2c09:	c5 0c 5c e3          	vsubps ymm12,ymm14,ymm3
  6f2c0d:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  6f2c11:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  6f2c17:	c5 04 58 f7          	vaddps ymm14,ymm15,ymm7
  6f2c1b:	c4 c1 44 5c df       	vsubps ymm3,ymm7,ymm15
  6f2c20:	c5 6c 58 f8          	vaddps ymm15,ymm2,ymm0
  6f2c24:	c5 7c 5c c2          	vsubps ymm8,ymm0,ymm2
  6f2c28:	c4 c1 20 58 c2       	vaddps xmm0,xmm11,xmm10
  6f2c2d:	c5 90 58 d1          	vaddps xmm2,xmm13,xmm1
  6f2c31:	c5 e8 14 c8          	vunpcklps xmm1,xmm2,xmm0
  6f2c35:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6f2c39:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  6f2c3e:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  6f2c42:	c4 c1 08 58 c4       	vaddps xmm0,xmm14,xmm12
  6f2c47:	c4 c1 30 58 cf       	vaddps xmm1,xmm9,xmm15
  6f2c4c:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2c50:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2c54:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  6f2c59:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  6f2c5e:	c5 d8 58 c5          	vaddps xmm0,xmm4,xmm5
  6f2c62:	c5 fc 10 74 24 c0    	vmovups ymm6,YMMWORD PTR [rsp-0x40]
  6f2c68:	c5 fc 10 6c 24 a0    	vmovups ymm5,YMMWORD PTR [rsp-0x60]
  6f2c6e:	c5 c8 58 cd          	vaddps xmm1,xmm6,xmm5
  6f2c72:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2c76:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2c7a:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  6f2c7f:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  6f2c84:	c5 b8 58 c3          	vaddps xmm0,xmm8,xmm3
  6f2c88:	c5 fc 28 fb          	vmovaps ymm7,ymm3
  6f2c8c:	c5 fc 10 24 24       	vmovups ymm4,YMMWORD PTR [rsp]
  6f2c91:	c5 fc 10 5c 24 e0    	vmovups ymm3,YMMWORD PTR [rsp-0x20]
  6f2c97:	c5 d8 58 cb          	vaddps xmm1,xmm4,xmm3
  6f2c9b:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2c9f:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2ca3:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  6f2ca8:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  6f2cad:	c4 c1 20 5c c2       	vsubps xmm0,xmm11,xmm10
  6f2cb2:	c5 fc 10 4c 24 60    	vmovups ymm1,YMMWORD PTR [rsp+0x60]
  6f2cb8:	c4 c1 70 5c cd       	vsubps xmm1,xmm1,xmm13
  6f2cbd:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2cc1:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2cc5:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  6f2cca:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  6f2ccf:	c4 c1 08 5c c4       	vsubps xmm0,xmm14,xmm12
  6f2cd4:	c4 c1 30 5c cf       	vsubps xmm1,xmm9,xmm15
  6f2cd9:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2cdd:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2ce1:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  6f2ce8:	00 
  6f2ce9:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  6f2cee:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  6f2cf4:	c5 f8 5c 44 24 80    	vsubps xmm0,xmm0,XMMWORD PTR [rsp-0x80]
  6f2cfa:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  6f2cfe:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2d02:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2d06:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  6f2d0d:	00 
  6f2d0e:	c5 f8 11 96 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm2
  6f2d15:	00 
  6f2d16:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  6f2d1b:	c5 d8 5c cb          	vsubps xmm1,xmm4,xmm3
  6f2d1f:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6f2d23:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6f2d27:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  6f2d2e:	00 
  6f2d2f:	c5 f8 11 96 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm2
  6f2d36:	00 
  6f2d37:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  6f2d3e:	c5 f8 77             	vzeroupper
  6f2d41:	c3                   	ret
