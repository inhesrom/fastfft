
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006f0780 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6f0780:	55                   	push   rbp
  6f0781:	48 89 e5             	mov    rbp,rsp
  6f0784:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6f0788:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  6f078f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  6f0796:	00 
  6f0797:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  6f079e:	00 
  6f079f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  6f07a4:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  6f07a9:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  6f07ad:	c5 f8 10 7f 10       	vmovups xmm7,XMMWORD PTR [rdi+0x10]
  6f07b2:	c5 f8 10 67 20       	vmovups xmm4,XMMWORD PTR [rdi+0x20]
  6f07b7:	c5 f8 10 4f 30       	vmovups xmm1,XMMWORD PTR [rdi+0x30]
  6f07bc:	c5 c8 c6 c7 dd       	vshufps xmm0,xmm6,xmm7,0xdd
  6f07c1:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6f07c7:	c5 78 10 57 50       	vmovups xmm10,XMMWORD PTR [rdi+0x50]
  6f07cc:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  6f07d1:	c4 c1 30 c6 d2 dd    	vshufps xmm2,xmm9,xmm10,0xdd
  6f07d7:	c5 78 10 9f 90 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0x90]
  6f07de:	00 
  6f07df:	c5 78 10 a7 80 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x80]
  6f07e6:	00 
  6f07e7:	c4 c1 18 c6 db dd    	vshufps xmm3,xmm12,xmm11,0xdd
  6f07ed:	c5 78 10 77 70       	vmovups xmm14,XMMWORD PTR [rdi+0x70]
  6f07f2:	c5 78 10 7f 60       	vmovups xmm15,XMMWORD PTR [rdi+0x60]
  6f07f7:	c4 c1 00 c6 ee dd    	vshufps xmm5,xmm15,xmm14,0xdd
  6f07fd:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  6f0804:	00 
  6f0805:	c5 78 10 87 a0 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xa0]
  6f080c:	00 
  6f080d:	c5 48 c6 ef 88       	vshufps xmm13,xmm6,xmm7,0x88
  6f0812:	c5 b8 c6 f0 dd       	vshufps xmm6,xmm8,xmm0,0xdd
  6f0817:	c4 41 30 c6 d2 88    	vshufps xmm10,xmm9,xmm10,0x88
  6f081d:	c5 d8 c6 f9 dd       	vshufps xmm7,xmm4,xmm1,0xdd
  6f0822:	c4 41 18 c6 db 88    	vshufps xmm11,xmm12,xmm11,0x88
  6f0828:	c4 41 00 c6 f6 88    	vshufps xmm14,xmm15,xmm14,0x88
  6f082e:	c5 38 c6 f8 88       	vshufps xmm15,xmm8,xmm0,0x88
  6f0833:	c5 d8 c6 c1 88       	vshufps xmm0,xmm4,xmm1,0x88
  6f0838:	c5 6c 58 c3          	vaddps ymm8,ymm2,ymm3
  6f083c:	c5 fc 28 64 24 20    	vmovaps ymm4,YMMWORD PTR [rsp+0x20]
  6f0842:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  6f0846:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6f084c:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  6f0850:	c4 62 7d 18 25 07 4c 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff984c07]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6f0857:	98 ff 
  6f0859:	c4 62 1d ac c4       	vfnmadd213ps ymm8,ymm12,ymm4
  6f085e:	c5 b4 58 cd          	vaddps ymm1,ymm9,ymm5
  6f0862:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6f0868:	c4 62 1d ac cd       	vfnmadd213ps ymm9,ymm12,ymm5
  6f086d:	c4 c1 2c 58 cb       	vaddps ymm1,ymm10,ymm11
  6f0872:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  6f0876:	c5 fc 29 64 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm4
  6f087c:	c4 c2 1d ac cd       	vfnmadd213ps ymm1,ymm12,ymm13
  6f0881:	c5 84 58 e0          	vaddps ymm4,ymm15,ymm0
  6f0885:	c4 42 5d ac e6       	vfnmadd213ps ymm12,ymm4,ymm14
  6f088a:	c5 8c 58 e4          	vaddps ymm4,ymm14,ymm4
  6f088e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  6f0893:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  6f0897:	c5 ec 5c db          	vsubps ymm3,ymm2,ymm3
  6f089b:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  6f089f:	c4 e2 7d 18 3d 2c 4a 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff984a2c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6f08a6:	98 ff 
  6f08a8:	c5 2c 59 d7          	vmulps ymm10,ymm10,ymm7
  6f08ac:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  6f08b0:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  6f08b4:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  6f08b8:	c4 c1 3c 58 fa       	vaddps ymm7,ymm8,ymm10
  6f08bd:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  6f08c2:	c5 34 58 d0          	vaddps ymm10,ymm9,ymm0
  6f08c6:	c5 34 5c c8          	vsubps ymm9,ymm9,ymm0
  6f08ca:	c5 74 5c db          	vsubps ymm11,ymm1,ymm3
  6f08ce:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  6f08d2:	c5 1c 5c ee          	vsubps ymm13,ymm12,ymm6
  6f08d6:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  6f08da:	c4 c1 44 5c ca       	vsubps ymm1,ymm7,ymm10
  6f08df:	c5 a8 58 df          	vaddps xmm3,xmm10,xmm7
  6f08e3:	c5 fc 28 54 24 60    	vmovaps ymm2,YMMWORD PTR [rsp+0x60]
  6f08e9:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  6f08ef:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6f08f3:	c4 e3 45 18 fb 01    	vinsertf128 ymm7,ymm7,xmm3,0x1
  6f08f9:	c4 c1 38 5c d9       	vsubps xmm3,xmm8,xmm9
  6f08fe:	c4 63 75 18 d3 01    	vinsertf128 ymm10,ymm1,xmm3,0x1
  6f0904:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  6f0909:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  6f090d:	c4 c1 44 14 da       	vunpcklps ymm3,ymm7,ymm10
  6f0912:	c5 bc 14 ea          	vunpcklps ymm5,ymm8,ymm2
  6f0916:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  6f091a:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  6f091e:	c4 c1 44 15 fa       	vunpckhps ymm7,ymm7,ymm10
  6f0923:	c5 bc 15 d2          	vunpckhps ymm2,ymm8,ymm2
  6f0927:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  6f092b:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  6f092f:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  6f0934:	c4 41 20 58 c5       	vaddps xmm8,xmm11,xmm13
  6f0939:	c5 7c 28 54 24 20    	vmovaps ymm10,YMMWORD PTR [rsp+0x20]
  6f093f:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  6f0943:	c4 43 35 18 c0 01    	vinsertf128 ymm8,ymm9,xmm8,0x1
  6f0949:	c5 78 5c ce          	vsubps xmm9,xmm0,xmm6
  6f094d:	c4 c3 45 18 f9 01    	vinsertf128 ymm7,ymm7,xmm9,0x1
  6f0953:	c5 f8 58 f6          	vaddps xmm6,xmm0,xmm6
  6f0957:	c5 a8 5c e4          	vsubps xmm4,xmm10,xmm4
  6f095b:	c5 3c 14 cf          	vunpcklps ymm9,ymm8,ymm7
  6f095f:	c5 4c 14 d4          	vunpcklps ymm10,ymm6,ymm4
  6f0963:	c4 c1 35 14 c2       	vunpcklpd ymm0,ymm9,ymm10
  6f0968:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  6f096d:	c5 bc 15 ff          	vunpckhps ymm7,ymm8,ymm7
  6f0971:	c5 cc 15 e4          	vunpckhps ymm4,ymm6,ymm4
  6f0975:	c5 c5 14 f4          	vunpcklpd ymm6,ymm7,ymm4
  6f0979:	c5 c5 15 e4          	vunpckhpd ymm4,ymm7,ymm4
  6f097d:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  6f0984:	00 
  6f0985:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  6f098c:	00 
  6f098d:	c5 44 59 d5          	vmulps ymm10,ymm7,ymm5
  6f0991:	c4 42 4d bc d0       	vfnmadd231ps ymm10,ymm6,ymm8
  6f0996:	c5 c4 59 f6          	vmulps ymm6,ymm7,ymm6
  6f099a:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  6f099f:	c4 c2 55 b8 f0       	vfmadd231ps ymm6,ymm5,ymm8
  6f09a4:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  6f09a9:	c5 44 59 c3          	vmulps ymm8,ymm7,ymm3
  6f09ad:	c4 62 35 bc c5       	vfnmadd231ps ymm8,ymm9,ymm5
  6f09b2:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6f09b6:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  6f09bd:	00 
  6f09be:	c4 e2 65 b8 fd       	vfmadd231ps ymm7,ymm3,ymm5
  6f09c3:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  6f09ca:	00 
  6f09cb:	c5 b4 59 ea          	vmulps ymm5,ymm9,ymm2
  6f09cf:	c4 e2 5d bc eb       	vfnmadd231ps ymm5,ymm4,ymm3
  6f09d4:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  6f09d8:	c4 e2 6d b8 e3       	vfmadd231ps ymm4,ymm2,ymm3
  6f09dd:	c5 ac 58 d1          	vaddps ymm2,ymm10,ymm1
  6f09e1:	c5 bc 58 dd          	vaddps ymm3,ymm8,ymm5
  6f09e5:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  6f09ea:	c5 44 58 cc          	vaddps ymm9,ymm7,ymm4
  6f09ee:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  6f09f2:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  6f09f6:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  6f09fa:	c5 74 58 d4          	vaddps ymm10,ymm1,ymm4
  6f09fe:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  6f0a03:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  6f0a07:	c5 f4 5c c4          	vsubps ymm0,ymm1,ymm4
  6f0a0b:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  6f0a0f:	c5 cc 5c e5          	vsubps ymm4,ymm6,ymm5
  6f0a13:	c4 c1 44 5c e9       	vsubps ymm5,ymm7,ymm9
  6f0a18:	c5 b4 58 f7          	vaddps ymm6,ymm9,ymm7
  6f0a1c:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6f0a20:	c5 cc 14 da          	vunpcklps ymm3,ymm6,ymm2
  6f0a24:	c5 c8 14 fa          	vunpcklps xmm7,xmm6,xmm2
  6f0a28:	c5 c8 15 d2          	vunpckhps xmm2,xmm6,xmm2
  6f0a2c:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  6f0a31:	c5 f8 11 3e          	vmovups XMMWORD PTR [rsi],xmm7
  6f0a35:	c4 e3 7d 19 5e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm3,0x1
  6f0a3c:	c4 c1 3c 14 d2       	vunpcklps ymm2,ymm8,ymm10
  6f0a41:	c4 c1 38 15 da       	vunpckhps xmm3,xmm8,xmm10
  6f0a46:	c4 c1 38 14 f2       	vunpcklps xmm6,xmm8,xmm10
  6f0a4b:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  6f0a50:	c5 f8 11 5e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm3
  6f0a55:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  6f0a5c:	c5 d4 14 d1          	vunpcklps ymm2,ymm5,ymm1
  6f0a60:	c5 d0 15 d9          	vunpckhps xmm3,xmm5,xmm1
  6f0a64:	c5 d0 14 c9          	vunpcklps xmm1,xmm5,xmm1
  6f0a68:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  6f0a6d:	c5 f8 11 5e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm3
  6f0a72:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  6f0a79:	00 00 01 
  6f0a7c:	c5 dc 14 c8          	vunpcklps ymm1,ymm4,ymm0
  6f0a80:	c5 d8 15 d0          	vunpckhps xmm2,xmm4,xmm0
  6f0a84:	c5 d8 14 c0          	vunpcklps xmm0,xmm4,xmm0
  6f0a88:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  6f0a8f:	00 
  6f0a90:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6f0a97:	00 
  6f0a98:	c4 e3 7d 19 8e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm1,0x1
  6f0a9f:	00 00 01 
  6f0aa2:	48 89 ec             	mov    rsp,rbp
  6f0aa5:	5d                   	pop    rbp
  6f0aa6:	c5 f8 77             	vzeroupper
  6f0aa9:	c3                   	ret
