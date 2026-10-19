
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000adc640 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  adc640:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  adc645:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  adc64b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  adc64f:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  adc655:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  adc659:	c5 f8 10 4f 18       	vmovups xmm1,XMMWORD PTR [rdi+0x18]
  adc65e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  adc663:	c4 e3 7d 19 c5 01    	vextractf128 xmm5,ymm0,0x1
  adc669:	c5 f0 c6 f5 88       	vshufps xmm6,xmm1,xmm5,0x88
  adc66e:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  adc673:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  adc679:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  adc67f:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  adc685:	c5 58 c6 c7 88       	vshufps xmm8,xmm4,xmm7,0x88
  adc68a:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  adc68f:	c4 e2 7d 18 05 3c 8c 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff598c3c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  adc696:	59 ff 
  adc698:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  adc69c:	c5 f0 c6 ed dd       	vshufps xmm5,xmm1,xmm5,0xdd
  adc6a1:	c5 d8 c6 e7 dd       	vshufps xmm4,xmm4,xmm7,0xdd
  adc6a6:	c5 d4 58 fc          	vaddps ymm7,ymm5,ymm4
  adc6aa:	c5 fb 10 4f 10       	vmovsd xmm1,QWORD PTR [rdi+0x10]
  adc6af:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  adc6b5:	c4 e3 75 0c ca c0    	vblendps ymm1,ymm1,ymm2,0xc0
  adc6bb:	c4 c3 7d 19 ca 01    	vextractf128 xmm10,ymm1,0x1
  adc6c1:	c4 41 60 c6 da dd    	vshufps xmm11,xmm3,xmm10,0xdd
  adc6c7:	c4 e2 7d 18 0d 90 8d 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff598d90]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  adc6ce:	59 ff 
  adc6d0:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  adc6d4:	c4 42 45 ac e3       	vfnmadd213ps ymm12,ymm7,ymm11
  adc6d9:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  adc6dd:	c4 c1 60 c6 da 88    	vshufps xmm3,xmm3,xmm10,0x88
  adc6e3:	c5 60 58 c6          	vaddps xmm8,xmm3,xmm6
  adc6e7:	c4 e2 4d bc d9       	vfnmadd231ps ymm3,ymm6,ymm1
  adc6ec:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  adc6f0:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  adc6f4:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  adc6f8:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  adc6fc:	c5 bd 15 e3          	vunpckhpd ymm4,ymm8,ymm3
  adc700:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  adc704:	c4 e3 55 0c f2 cc    	vblendps ymm6,ymm5,ymm2,0xcc
  adc70a:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  adc70f:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  adc714:	c5 e4 c6 ee 88       	vshufps ymm5,ymm3,ymm6,0x88
  adc719:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  adc71e:	c5 e4 c6 de dd       	vshufps ymm3,ymm3,ymm6,0xdd
  adc723:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  adc728:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  adc72d:	c5 a0 58 f7          	vaddps xmm6,xmm11,xmm7
  adc731:	c4 c1 18 5c f9       	vsubps xmm7,xmm12,xmm9
  adc736:	c4 41 30 58 c4       	vaddps xmm8,xmm9,xmm12
  adc73b:	c4 41 4d 15 c8       	vunpckhpd ymm9,ymm6,ymm8
  adc740:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  adc745:	c4 e3 45 0c d2 cc    	vblendps ymm2,ymm7,ymm2,0xcc
  adc74b:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  adc750:	c5 b4 c6 ff 88       	vshufps ymm7,ymm9,ymm7,0x88
  adc755:	c5 4c c6 c2 88       	vshufps ymm8,ymm6,ymm2,0x88
  adc75a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  adc760:	c5 cc c6 d2 dd       	vshufps ymm2,ymm6,ymm2,0xdd
  adc765:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  adc76a:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  adc76f:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  adc774:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  adc779:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  adc780:	00 
  adc781:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  adc788:	00 
  adc789:	c5 64 59 e7          	vmulps ymm12,ymm3,ymm7
  adc78d:	c4 42 6d bc e1       	vfnmadd231ps ymm12,ymm2,ymm9
  adc792:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  adc796:	c4 42 4d bc eb       	vfnmadd231ps ymm13,ymm6,ymm11
  adc79b:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  adc7a0:	c5 ec 59 d7          	vmulps ymm2,ymm2,ymm7
  adc7a4:	c4 c2 65 b8 d1       	vfmadd231ps ymm2,ymm3,ymm9
  adc7a9:	c5 ac 59 de          	vmulps ymm3,ymm10,ymm6
  adc7ad:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  adc7b2:	c5 ec 58 e3          	vaddps ymm4,ymm2,ymm3
  adc7b6:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  adc7ba:	c4 e2 0d ac f5       	vfnmadd213ps ymm6,ymm14,ymm5
  adc7bf:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  adc7c3:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  adc7c7:	c4 c2 5d ac c8       	vfnmadd213ps ymm1,ymm4,ymm8
  adc7cc:	c4 c1 1c 5c dd       	vsubps ymm3,ymm12,ymm13
  adc7d1:	c5 e4 59 c0          	vmulps ymm0,ymm3,ymm0
  adc7d5:	c5 f4 5c d8          	vsubps ymm3,ymm1,ymm0
  adc7d9:	c5 f4 58 c0          	vaddps ymm0,ymm1,ymm0
  adc7dd:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  adc7e1:	c5 88 58 e5          	vaddps xmm4,xmm14,xmm5
  adc7e5:	c5 fc 28 2d d3 ba 59 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff59bad3]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  adc7ec:	ff 
  adc7ed:	62 f2 55 28 7f e1    	vpermt2ps ymm4,ymm5,ymm1
  adc7f3:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  adc7f7:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  adc7fd:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  adc802:	c5 c8 58 ca          	vaddps xmm1,xmm6,xmm2
  adc806:	62 f2 55 28 7f cb    	vpermt2ps ymm1,ymm5,ymm3
  adc80c:	c5 f8 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm1
  adc811:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  adc817:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  adc81c:	c5 c8 5c ca          	vsubps xmm1,xmm6,xmm2
  adc820:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  adc826:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  adc82b:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  adc831:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  adc836:	c5 f8 77             	vzeroupper
  adc839:	c3                   	ret
