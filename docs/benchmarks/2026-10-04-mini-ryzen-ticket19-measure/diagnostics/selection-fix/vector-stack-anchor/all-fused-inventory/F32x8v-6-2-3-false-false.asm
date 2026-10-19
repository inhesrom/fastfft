
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac1680 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac1680:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ac1685:	c4 e3 7d 18 c8 01    	vinsertf128 ymm1,ymm0,xmm0,0x1
  ac168b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  ac168f:	c4 e3 75 0c c8 c0    	vblendps ymm1,ymm1,ymm0,0xc0
  ac1695:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  ac1699:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  ac169e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ac16a4:	c5 e8 c6 e1 dd       	vshufps xmm4,xmm2,xmm1,0xdd
  ac16a9:	c5 fb 10 6f 28       	vmovsd xmm5,QWORD PTR [rdi+0x28]
  ac16ae:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  ac16b4:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  ac16ba:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  ac16c0:	c5 e0 c6 f5 dd       	vshufps xmm6,xmm3,xmm5,0xdd
  ac16c5:	c5 e8 c6 c9 88       	vshufps xmm1,xmm2,xmm1,0x88
  ac16ca:	c5 e0 c6 d5 88       	vshufps xmm2,xmm3,xmm5,0x88
  ac16cf:	c5 f0 58 da          	vaddps xmm3,xmm1,xmm2
  ac16d3:	c5 f0 5c ca          	vsubps xmm1,xmm1,xmm2
  ac16d7:	c4 e3 65 0c d0 cc    	vblendps ymm2,ymm3,ymm0,0xcc
  ac16dd:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  ac16e2:	c4 e3 75 0c e8 cc    	vblendps ymm5,ymm1,ymm0,0xcc
  ac16e8:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  ac16ed:	c5 e4 c6 c9 88       	vshufps ymm1,ymm3,ymm1,0x88
  ac16f2:	c5 ec c6 dd 88       	vshufps ymm3,ymm2,ymm5,0x88
  ac16f7:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac16fc:	c5 ec c6 d5 dd       	vshufps ymm2,ymm2,ymm5,0xdd
  ac1701:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac1706:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ac170b:	c5 d8 58 ee          	vaddps xmm5,xmm4,xmm6
  ac170f:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  ac1713:	c4 e3 55 0c f0 cc    	vblendps ymm6,ymm5,ymm0,0xcc
  ac1719:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ac171e:	c4 e3 5d 0c c0 cc    	vblendps ymm0,ymm4,ymm0,0xcc
  ac1724:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  ac1729:	c5 d4 c6 e4 88       	vshufps ymm4,ymm5,ymm4,0x88
  ac172e:	c5 cc c6 e8 88       	vshufps ymm5,ymm6,ymm0,0x88
  ac1733:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac1738:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  ac173d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ac1742:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac1747:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  ac174c:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  ac1751:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  ac1758:	00 
  ac1759:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  ac1760:	00 
  ac1761:	c5 6c 59 d6          	vmulps ymm10,ymm2,ymm6
  ac1765:	c4 62 7d bc d7       	vfnmadd231ps ymm10,ymm0,ymm7
  ac176a:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  ac176e:	c4 42 5d bc d9       	vfnmadd231ps ymm11,ymm4,ymm9
  ac1773:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  ac1778:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  ac177c:	c4 e2 6d b8 c7       	vfmadd231ps ymm0,ymm2,ymm7
  ac1781:	c5 bc 59 d4          	vmulps ymm2,ymm8,ymm4
  ac1785:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  ac178a:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  ac178e:	c4 e2 7d 18 25 c9 3c 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5b3cc9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac1795:	5b ff 
  ac1797:	c5 fc 28 f4          	vmovaps ymm6,ymm4
  ac179b:	c4 e2 1d ac f3       	vfnmadd213ps ymm6,ymm12,ymm3
  ac17a0:	c4 e2 75 ac e5       	vfnmadd213ps ymm4,ymm1,ymm5
  ac17a5:	c5 d0 58 c9          	vaddps xmm1,xmm5,xmm1
  ac17a9:	c5 98 58 db          	vaddps xmm3,xmm12,xmm3
  ac17ad:	c5 e0 14 c9          	vunpcklps xmm1,xmm3,xmm1
  ac17b1:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  ac17b5:	c4 e2 79 18 0d 16 3b 	vbroadcastss xmm1,DWORD PTR [rip+0xffffffffff5b3b16]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac17bc:	5b ff 
  ac17be:	c4 c1 28 5c db       	vsubps xmm3,xmm10,xmm11
  ac17c3:	c5 e0 59 d9          	vmulps xmm3,xmm3,xmm1
  ac17c7:	c5 d8 5c eb          	vsubps xmm5,xmm4,xmm3
  ac17cb:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  ac17cf:	c5 f8 59 c1          	vmulps xmm0,xmm0,xmm1
  ac17d3:	c5 c8 58 c8          	vaddps xmm1,xmm6,xmm0
  ac17d7:	c5 f0 14 cd          	vunpcklps xmm1,xmm1,xmm5
  ac17db:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  ac17e0:	c5 d8 58 cb          	vaddps xmm1,xmm4,xmm3
  ac17e4:	c5 c8 5c c0          	vsubps xmm0,xmm6,xmm0
  ac17e8:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  ac17ec:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  ac17f1:	c5 f8 77             	vzeroupper
  ac17f4:	c3                   	ret
