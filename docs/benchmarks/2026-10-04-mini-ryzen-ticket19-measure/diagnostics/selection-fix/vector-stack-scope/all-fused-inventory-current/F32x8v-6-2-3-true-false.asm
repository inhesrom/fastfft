
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aba740 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aba740:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  aba745:	c4 e3 7d 18 c8 01    	vinsertf128 ymm1,ymm0,xmm0,0x1
  aba74b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  aba74f:	c4 e3 75 0c c8 c0    	vblendps ymm1,ymm1,ymm0,0xc0
  aba755:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  aba759:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  aba75e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  aba764:	c5 e8 c6 e1 88       	vshufps xmm4,xmm2,xmm1,0x88
  aba769:	c5 fb 10 6f 28       	vmovsd xmm5,QWORD PTR [rdi+0x28]
  aba76e:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  aba774:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  aba77a:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  aba780:	c5 e0 c6 f5 88       	vshufps xmm6,xmm3,xmm5,0x88
  aba785:	c5 e8 c6 c9 dd       	vshufps xmm1,xmm2,xmm1,0xdd
  aba78a:	c5 e0 c6 d5 dd       	vshufps xmm2,xmm3,xmm5,0xdd
  aba78f:	c5 f0 58 da          	vaddps xmm3,xmm1,xmm2
  aba793:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  aba797:	c4 e3 65 0c d0 cc    	vblendps ymm2,ymm3,ymm0,0xcc
  aba79d:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  aba7a2:	c4 e3 75 0c e8 cc    	vblendps ymm5,ymm1,ymm0,0xcc
  aba7a8:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  aba7ad:	c5 e4 c6 c9 88       	vshufps ymm1,ymm3,ymm1,0x88
  aba7b2:	c5 ec c6 dd 88       	vshufps ymm3,ymm2,ymm5,0x88
  aba7b7:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aba7bc:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  aba7c1:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aba7c6:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  aba7cb:	c5 d8 58 ee          	vaddps xmm5,xmm4,xmm6
  aba7cf:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  aba7d3:	c4 e3 55 0c f0 cc    	vblendps ymm6,ymm5,ymm0,0xcc
  aba7d9:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  aba7de:	c4 e3 5d 0c c0 cc    	vblendps ymm0,ymm4,ymm0,0xcc
  aba7e4:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  aba7e9:	c5 d4 c6 e4 88       	vshufps ymm4,ymm5,ymm4,0x88
  aba7ee:	c5 cc c6 e8 88       	vshufps ymm5,ymm6,ymm0,0x88
  aba7f3:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  aba7f8:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  aba7fd:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  aba802:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aba807:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  aba80c:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  aba811:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  aba818:	00 
  aba819:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  aba820:	00 
  aba821:	c5 6c 59 d6          	vmulps ymm10,ymm2,ymm6
  aba825:	c4 62 7d bc d7       	vfnmadd231ps ymm10,ymm0,ymm7
  aba82a:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  aba82e:	c4 42 5d bc d9       	vfnmadd231ps ymm11,ymm4,ymm9
  aba833:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  aba838:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  aba83c:	c4 e2 6d b8 c7       	vfmadd231ps ymm0,ymm2,ymm7
  aba841:	c5 bc 59 d4          	vmulps ymm2,ymm8,ymm4
  aba845:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  aba84a:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  aba84e:	c4 e2 7d 18 25 09 ac 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5bac09]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aba855:	5b ff 
  aba857:	c5 fc 28 f4          	vmovaps ymm6,ymm4
  aba85b:	c4 e2 1d ac f3       	vfnmadd213ps ymm6,ymm12,ymm3
  aba860:	c4 e2 75 ac e5       	vfnmadd213ps ymm4,ymm1,ymm5
  aba865:	c5 98 58 db          	vaddps xmm3,xmm12,xmm3
  aba869:	c5 d0 58 c9          	vaddps xmm1,xmm5,xmm1
  aba86d:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  aba871:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  aba875:	c4 e2 79 18 0d 56 aa 	vbroadcastss xmm1,DWORD PTR [rip+0xffffffffff5baa56]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aba87c:	5b ff 
  aba87e:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  aba882:	c5 f8 59 c1          	vmulps xmm0,xmm0,xmm1
  aba886:	c5 c8 58 d0          	vaddps xmm2,xmm6,xmm0
  aba88a:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  aba88f:	c5 e0 59 c9          	vmulps xmm1,xmm3,xmm1
  aba893:	c5 d8 5c d9          	vsubps xmm3,xmm4,xmm1
  aba897:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  aba89b:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  aba8a0:	c5 c8 5c c0          	vsubps xmm0,xmm6,xmm0
  aba8a4:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  aba8a8:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  aba8ac:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  aba8b1:	c5 f8 77             	vzeroupper
  aba8b4:	c3                   	ret
