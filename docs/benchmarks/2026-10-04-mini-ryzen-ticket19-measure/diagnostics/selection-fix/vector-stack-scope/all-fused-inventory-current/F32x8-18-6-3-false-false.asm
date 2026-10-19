
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000072a640 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  72a640:	55                   	push   rbp
  72a641:	48 89 e5             	mov    rbp,rsp
  72a644:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  72a648:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  72a64f:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  72a656:	00 
  72a657:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
  72a65e:	00 
  72a65f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  72a664:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  72a669:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  72a66e:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72a674:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  72a678:	c4 e3 7d 0c d1 c0    	vblendps ymm2,ymm0,ymm1,0xc0
  72a67e:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  72a683:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72a689:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  72a68f:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  72a695:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  72a69a:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72a6a0:	c4 e3 7d 0c e1 c0    	vblendps ymm4,ymm0,ymm1,0xc0
  72a6a6:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  72a6aa:	c5 f8 10 47 18       	vmovups xmm0,XMMWORD PTR [rdi+0x18]
  72a6af:	c5 f8 29 44 24 70    	vmovaps XMMWORD PTR [rsp+0x70],xmm0
  72a6b5:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  72a6ba:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  72a6bf:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  72a6c4:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  72a6ca:	c4 63 3d 0c c9 c0    	vblendps ymm9,ymm8,ymm1,0xc0
  72a6d0:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  72a6d5:	c5 7b 10 57 70       	vmovsd xmm10,QWORD PTR [rdi+0x70]
  72a6da:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  72a6e0:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  72a6e6:	c5 78 10 5f 78       	vmovups xmm11,XMMWORD PTR [rdi+0x78]
  72a6eb:	c5 7b 10 a7 88 00 00 	vmovsd xmm12,QWORD PTR [rdi+0x88]
  72a6f2:	00 
  72a6f3:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  72a6f9:	c4 63 1d 0c e1 c0    	vblendps ymm12,ymm12,ymm1,0xc0
  72a6ff:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  72a705:	c4 c1 50 c6 c5 88    	vshufps xmm0,xmm5,xmm13,0x88
  72a70b:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  72a712:	00 00 
  72a714:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  72a71a:	c4 c1 40 c6 de 88    	vshufps xmm3,xmm7,xmm14,0x88
  72a720:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  72a726:	c4 c1 38 c6 e7 88    	vshufps xmm4,xmm8,xmm15,0x88
  72a72c:	c5 fc 29 a4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm4
  72a733:	00 00 
  72a735:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  72a73b:	c5 48 c6 c9 88       	vshufps xmm9,xmm6,xmm1,0x88
  72a740:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  72a746:	c4 41 50 c6 d5 dd    	vshufps xmm10,xmm5,xmm13,0xdd
  72a74c:	c4 c1 20 c6 ec 88    	vshufps xmm5,xmm11,xmm12,0x88
  72a752:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  72a758:	c4 c3 7d 19 c5 01    	vextractf128 xmm13,ymm0,0x1
  72a75e:	c4 c1 40 c6 d6 dd    	vshufps xmm2,xmm7,xmm14,0xdd
  72a764:	c5 f8 28 44 24 70    	vmovaps xmm0,XMMWORD PTR [rsp+0x70]
  72a76a:	c4 c1 78 c6 fd 88    	vshufps xmm7,xmm0,xmm13,0x88
  72a770:	c4 41 38 c6 ff dd    	vshufps xmm15,xmm8,xmm15,0xdd
  72a776:	c5 48 c6 f1 dd       	vshufps xmm14,xmm6,xmm1,0xdd
  72a77b:	c4 41 20 c6 e4 dd    	vshufps xmm12,xmm11,xmm12,0xdd
  72a781:	c4 c1 78 c6 f5 dd    	vshufps xmm6,xmm0,xmm13,0xdd
  72a787:	c5 64 58 dc          	vaddps ymm11,ymm3,ymm4
  72a78b:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  72a792:	00 00 
  72a794:	c5 a4 58 c1          	vaddps ymm0,ymm11,ymm1
  72a798:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  72a79e:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  72a7a2:	c4 e2 7d 18 05 b5 ac 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff94acb5]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  72a7a9:	94 ff 
  72a7ab:	c4 62 7d ac d9       	vfnmadd213ps ymm11,ymm0,ymm1
  72a7b0:	c5 04 58 ea          	vaddps ymm13,ymm15,ymm2
  72a7b4:	c4 c1 6c 5c cf       	vsubps ymm1,ymm2,ymm15
  72a7b9:	c4 41 3c 58 f9       	vaddps ymm15,ymm8,ymm9
  72a7be:	c4 42 7d ac c1       	vfnmadd213ps ymm8,ymm0,ymm9
  72a7c3:	c5 9c 58 d6          	vaddps ymm2,ymm12,ymm6
  72a7c7:	c5 9c 5c f6          	vsubps ymm6,ymm12,ymm6
  72a7cb:	c4 41 14 58 e2       	vaddps ymm12,ymm13,ymm10
  72a7d0:	c4 42 7d ac ea       	vfnmadd213ps ymm13,ymm0,ymm10
  72a7d5:	c5 64 5c 8c 24 80 00 	vsubps ymm9,ymm3,YMMWORD PTR [rsp+0x80]
  72a7dc:	00 00 
  72a7de:	c5 8c 58 e2          	vaddps ymm4,ymm14,ymm2
  72a7e2:	c4 c2 7d ac d6       	vfnmadd213ps ymm2,ymm0,ymm14
  72a7e7:	c4 62 7d 18 15 e4 aa 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff94aae4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  72a7ee:	94 ff 
  72a7f0:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  72a7f4:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  72a7f8:	c5 24 58 f1          	vaddps ymm14,ymm11,ymm1
  72a7fc:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  72a800:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  72a804:	c5 3c 58 de          	vaddps ymm11,ymm8,ymm6
  72a808:	c4 c1 34 59 fa       	vmulps ymm7,ymm9,ymm10
  72a80d:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  72a811:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  72a815:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  72a819:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  72a81d:	c5 6c 5c ed          	vsubps ymm13,ymm2,ymm5
  72a821:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  72a825:	c4 c1 0c 5c d3       	vsubps ymm2,ymm14,ymm11
  72a82a:	c4 c1 08 58 eb       	vaddps xmm5,xmm14,xmm11
  72a82f:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  72a835:	c5 04 58 db          	vaddps ymm11,ymm15,ymm3
  72a839:	c4 e3 25 18 ed 01    	vinsertf128 ymm5,ymm11,xmm5,0x1
  72a83f:	c5 70 5c de          	vsubps xmm11,xmm1,xmm6
  72a843:	c4 c3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm11,0x1
  72a849:	c5 f0 58 ce          	vaddps xmm1,xmm1,xmm6
  72a84d:	c4 c1 60 5c f7       	vsubps xmm6,xmm3,xmm15
  72a852:	c5 d4 14 da          	vunpcklps ymm3,ymm5,ymm2
  72a856:	c5 d4 15 d2          	vunpckhps ymm2,ymm5,ymm2
  72a85a:	c5 f4 14 ee          	vunpcklps ymm5,ymm1,ymm6
  72a85e:	c5 f4 15 ce          	vunpckhps ymm1,ymm1,ymm6
  72a862:	c5 1c 58 dc          	vaddps ymm11,ymm12,ymm4
  72a866:	c5 ed 14 f1          	vunpcklpd ymm6,ymm2,ymm1
  72a86a:	c4 c1 34 5c cd       	vsubps ymm1,ymm9,ymm13
  72a86f:	c4 c1 30 58 d5       	vaddps xmm2,xmm9,xmm13
  72a874:	c5 65 15 cd          	vunpckhpd ymm9,ymm3,ymm5
  72a878:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  72a87e:	c4 41 40 5c d8       	vsubps xmm11,xmm7,xmm8
  72a883:	c4 c3 75 18 cb 01    	vinsertf128 ymm1,ymm1,xmm11,0x1
  72a889:	c5 b8 58 ff          	vaddps xmm7,xmm8,xmm7
  72a88d:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  72a891:	c5 6c 14 c1          	vunpcklps ymm8,ymm2,ymm1
  72a895:	c5 44 14 dc          	vunpcklps ymm11,ymm7,ymm4
  72a899:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  72a89e:	c5 ec 15 c9          	vunpckhps ymm1,ymm2,ymm1
  72a8a2:	c5 c4 15 d4          	vunpckhps ymm2,ymm7,ymm4
  72a8a6:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  72a8aa:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  72a8af:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  72a8b4:	c5 b4 59 fa          	vmulps ymm7,ymm9,ymm2
  72a8b8:	c4 e2 1d bc fc       	vfnmadd231ps ymm7,ymm12,ymm4
  72a8bd:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  72a8c1:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  72a8c8:	00 
  72a8c9:	c4 e2 35 b8 d4       	vfmadd231ps ymm2,ymm9,ymm4
  72a8ce:	c5 fc 10 a2 a0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xa0]
  72a8d5:	00 
  72a8d6:	c5 1c 59 ce          	vmulps ymm9,ymm12,ymm6
  72a8da:	c4 62 75 bc cc       	vfnmadd231ps ymm9,ymm1,ymm4
  72a8df:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  72a8e3:	c4 e2 4d b8 cc       	vfmadd231ps ymm1,ymm6,ymm4
  72a8e8:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  72a8ec:	c4 c1 3d 14 e3       	vunpcklpd ymm4,ymm8,ymm11
  72a8f1:	c5 ec 58 e9          	vaddps ymm5,ymm2,ymm1
  72a8f5:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  72a8f9:	c5 b4 58 d7          	vaddps ymm2,ymm9,ymm7
  72a8fd:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  72a902:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  72a906:	c4 e2 6d ac fb       	vfnmadd213ps ymm7,ymm2,ymm3
  72a90b:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  72a90f:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  72a913:	c5 44 58 c1          	vaddps ymm8,ymm7,ymm1
  72a917:	c4 e2 55 ac c4       	vfnmadd213ps ymm0,ymm5,ymm4
  72a91c:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  72a920:	c5 fc 5c fe          	vsubps ymm7,ymm0,ymm6
  72a924:	c5 fc 58 c6          	vaddps ymm0,ymm0,ymm6
  72a928:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  72a92c:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  72a930:	c5 ec 14 e3          	vunpcklps ymm4,ymm2,ymm3
  72a934:	c5 e8 14 eb          	vunpcklps xmm5,xmm2,xmm3
  72a938:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  72a93c:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  72a941:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  72a945:	c4 e3 7d 19 66 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm4,0x1
  72a94c:	c5 bc 14 d7          	vunpcklps ymm2,ymm8,ymm7
  72a950:	c5 b8 14 df          	vunpcklps xmm3,xmm8,xmm7
  72a954:	c5 b8 15 e7          	vunpckhps xmm4,xmm8,xmm7
  72a958:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  72a95d:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  72a962:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  72a969:	c5 f4 14 d0          	vunpcklps ymm2,ymm1,ymm0
  72a96d:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  72a971:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  72a975:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  72a97a:	c5 f8 11 5e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm3
  72a97f:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  72a986:	00 00 01 
  72a989:	48 89 ec             	mov    rsp,rbp
  72a98c:	5d                   	pop    rbp
  72a98d:	c5 f8 77             	vzeroupper
  72a990:	c3                   	ret
