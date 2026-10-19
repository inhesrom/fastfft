
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000729640 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  729640:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  729645:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  72964b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  72964f:	c4 e3 7d 0c d1 c0    	vblendps ymm2,ymm0,ymm1,0xc0
  729655:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  72965a:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  729660:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  729666:	c5 fc 11 44 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm0
  72966c:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  729671:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  729677:	c4 e3 7d 0c e1 c0    	vblendps ymm4,ymm0,ymm1,0xc0
  72967d:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  729681:	c5 f8 10 47 18       	vmovups xmm0,XMMWORD PTR [rdi+0x18]
  729686:	c5 f8 29 44 24 88    	vmovaps XMMWORD PTR [rsp-0x78],xmm0
  72968c:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  729691:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  729696:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  72969b:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  7296a1:	c4 63 3d 0c c9 c0    	vblendps ymm9,ymm8,ymm1,0xc0
  7296a7:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  7296ac:	c5 7b 10 57 70       	vmovsd xmm10,QWORD PTR [rdi+0x70]
  7296b1:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  7296b7:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  7296bd:	c5 78 10 5f 78       	vmovups xmm11,XMMWORD PTR [rdi+0x78]
  7296c2:	c5 7b 10 a7 88 00 00 	vmovsd xmm12,QWORD PTR [rdi+0x88]
  7296c9:	00 
  7296ca:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  7296d0:	c4 63 1d 0c e1 c0    	vblendps ymm12,ymm12,ymm1,0xc0
  7296d6:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  7296dc:	c4 c1 50 c6 c5 88    	vshufps xmm0,xmm5,xmm13,0x88
  7296e2:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  7296e8:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  7296ee:	c4 c1 40 c6 de 88    	vshufps xmm3,xmm7,xmm14,0x88
  7296f4:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  7296fa:	c4 c1 38 c6 e7 88    	vshufps xmm4,xmm8,xmm15,0x88
  729700:	c5 fc 11 64 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm4
  729706:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  72970c:	c5 48 c6 c9 88       	vshufps xmm9,xmm6,xmm1,0x88
  729711:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  729717:	c4 41 50 c6 d5 dd    	vshufps xmm10,xmm5,xmm13,0xdd
  72971d:	c4 c1 20 c6 ec 88    	vshufps xmm5,xmm11,xmm12,0x88
  729723:	c5 fc 10 44 24 98    	vmovups ymm0,YMMWORD PTR [rsp-0x68]
  729729:	c4 c3 7d 19 c5 01    	vextractf128 xmm13,ymm0,0x1
  72972f:	c4 c1 40 c6 d6 dd    	vshufps xmm2,xmm7,xmm14,0xdd
  729735:	c5 f8 28 44 24 88    	vmovaps xmm0,XMMWORD PTR [rsp-0x78]
  72973b:	c4 c1 78 c6 fd 88    	vshufps xmm7,xmm0,xmm13,0x88
  729741:	c4 41 38 c6 ff dd    	vshufps xmm15,xmm8,xmm15,0xdd
  729747:	c5 48 c6 f1 dd       	vshufps xmm14,xmm6,xmm1,0xdd
  72974c:	c4 41 20 c6 e4 dd    	vshufps xmm12,xmm11,xmm12,0xdd
  729752:	c4 c1 78 c6 f5 dd    	vshufps xmm6,xmm0,xmm13,0xdd
  729758:	c5 64 58 dc          	vaddps ymm11,ymm3,ymm4
  72975c:	c5 fc 10 4c 24 d8    	vmovups ymm1,YMMWORD PTR [rsp-0x28]
  729762:	c5 a4 58 c1          	vaddps ymm0,ymm11,ymm1
  729766:	c5 fc 11 44 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm0
  72976c:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  729770:	c4 e2 7d 18 05 e7 bc 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff94bce7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  729777:	94 ff 
  729779:	c4 62 7d ac d9       	vfnmadd213ps ymm11,ymm0,ymm1
  72977e:	c5 04 58 ea          	vaddps ymm13,ymm15,ymm2
  729782:	c4 c1 6c 5c cf       	vsubps ymm1,ymm2,ymm15
  729787:	c4 41 3c 58 f9       	vaddps ymm15,ymm8,ymm9
  72978c:	c4 42 7d ac c1       	vfnmadd213ps ymm8,ymm0,ymm9
  729791:	c5 9c 58 d6          	vaddps ymm2,ymm12,ymm6
  729795:	c5 9c 5c f6          	vsubps ymm6,ymm12,ymm6
  729799:	c4 41 14 58 e2       	vaddps ymm12,ymm13,ymm10
  72979e:	c4 42 7d ac ea       	vfnmadd213ps ymm13,ymm0,ymm10
  7297a3:	c5 64 5c 4c 24 b8    	vsubps ymm9,ymm3,YMMWORD PTR [rsp-0x48]
  7297a9:	c5 8c 58 e2          	vaddps ymm4,ymm14,ymm2
  7297ad:	c4 c2 7d ac d6       	vfnmadd213ps ymm2,ymm0,ymm14
  7297b2:	c4 62 7d 18 15 19 bb 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff94bb19]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7297b9:	94 ff 
  7297bb:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  7297bf:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  7297c3:	c5 24 58 f1          	vaddps ymm14,ymm11,ymm1
  7297c7:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  7297cb:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  7297cf:	c5 3c 58 de          	vaddps ymm11,ymm8,ymm6
  7297d3:	c4 c1 34 59 fa       	vmulps ymm7,ymm9,ymm10
  7297d8:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  7297dc:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  7297e0:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  7297e4:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  7297e8:	c5 6c 5c ed          	vsubps ymm13,ymm2,ymm5
  7297ec:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  7297f0:	c4 c1 0c 5c d3       	vsubps ymm2,ymm14,ymm11
  7297f5:	c4 c1 08 58 eb       	vaddps xmm5,xmm14,xmm11
  7297fa:	c5 fc 10 5c 24 98    	vmovups ymm3,YMMWORD PTR [rsp-0x68]
  729800:	c5 04 58 db          	vaddps ymm11,ymm15,ymm3
  729804:	c4 e3 25 18 ed 01    	vinsertf128 ymm5,ymm11,xmm5,0x1
  72980a:	c5 70 5c de          	vsubps xmm11,xmm1,xmm6
  72980e:	c4 c3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm11,0x1
  729814:	c5 f0 58 ce          	vaddps xmm1,xmm1,xmm6
  729818:	c4 c1 60 5c f7       	vsubps xmm6,xmm3,xmm15
  72981d:	c5 d4 14 da          	vunpcklps ymm3,ymm5,ymm2
  729821:	c5 d4 15 d2          	vunpckhps ymm2,ymm5,ymm2
  729825:	c5 f4 14 ee          	vunpcklps ymm5,ymm1,ymm6
  729829:	c5 f4 15 ce          	vunpckhps ymm1,ymm1,ymm6
  72982d:	c5 1c 58 dc          	vaddps ymm11,ymm12,ymm4
  729831:	c5 ed 14 f1          	vunpcklpd ymm6,ymm2,ymm1
  729835:	c4 c1 34 5c cd       	vsubps ymm1,ymm9,ymm13
  72983a:	c4 c1 30 58 d5       	vaddps xmm2,xmm9,xmm13
  72983f:	c5 65 15 cd          	vunpckhpd ymm9,ymm3,ymm5
  729843:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  729849:	c4 41 40 5c d8       	vsubps xmm11,xmm7,xmm8
  72984e:	c4 c3 75 18 cb 01    	vinsertf128 ymm1,ymm1,xmm11,0x1
  729854:	c5 b8 58 ff          	vaddps xmm7,xmm8,xmm7
  729858:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  72985c:	c5 6c 14 c1          	vunpcklps ymm8,ymm2,ymm1
  729860:	c5 44 14 dc          	vunpcklps ymm11,ymm7,ymm4
  729864:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  729869:	c5 ec 15 c9          	vunpckhps ymm1,ymm2,ymm1
  72986d:	c5 c4 15 d4          	vunpckhps ymm2,ymm7,ymm4
  729871:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  729875:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  72987a:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  72987f:	c5 b4 59 fa          	vmulps ymm7,ymm9,ymm2
  729883:	c4 e2 1d bc fc       	vfnmadd231ps ymm7,ymm12,ymm4
  729888:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  72988c:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  729893:	00 
  729894:	c4 e2 35 b8 d4       	vfmadd231ps ymm2,ymm9,ymm4
  729899:	c5 fc 10 a2 a0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xa0]
  7298a0:	00 
  7298a1:	c5 1c 59 ce          	vmulps ymm9,ymm12,ymm6
  7298a5:	c4 62 75 bc cc       	vfnmadd231ps ymm9,ymm1,ymm4
  7298aa:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  7298ae:	c4 e2 4d b8 cc       	vfmadd231ps ymm1,ymm6,ymm4
  7298b3:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  7298b7:	c4 c1 3d 14 e3       	vunpcklpd ymm4,ymm8,ymm11
  7298bc:	c5 ec 58 e9          	vaddps ymm5,ymm2,ymm1
  7298c0:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  7298c4:	c5 b4 58 d7          	vaddps ymm2,ymm9,ymm7
  7298c8:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  7298cd:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  7298d1:	c4 e2 6d ac fb       	vfnmadd213ps ymm7,ymm2,ymm3
  7298d6:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  7298da:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  7298de:	c5 44 58 c1          	vaddps ymm8,ymm7,ymm1
  7298e2:	c4 e2 55 ac c4       	vfnmadd213ps ymm0,ymm5,ymm4
  7298e7:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  7298eb:	c5 fc 5c fe          	vsubps ymm7,ymm0,ymm6
  7298ef:	c5 fc 58 c6          	vaddps ymm0,ymm0,ymm6
  7298f3:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  7298f7:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  7298fb:	c5 ec 14 e3          	vunpcklps ymm4,ymm2,ymm3
  7298ff:	c5 e8 14 eb          	vunpcklps xmm5,xmm2,xmm3
  729903:	c5 e8 15 d3          	vunpckhps xmm2,xmm2,xmm3
  729907:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  72990c:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  729910:	c4 e3 7d 19 66 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm4,0x1
  729917:	c5 bc 14 d7          	vunpcklps ymm2,ymm8,ymm7
  72991b:	c5 b8 14 df          	vunpcklps xmm3,xmm8,xmm7
  72991f:	c5 b8 15 e7          	vunpckhps xmm4,xmm8,xmm7
  729923:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  729928:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  72992d:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  729934:	c5 f4 14 d0          	vunpcklps ymm2,ymm1,ymm0
  729938:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  72993c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  729940:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  729945:	c5 f8 11 5e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm3
  72994a:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  729951:	00 00 01 
  729954:	c5 f8 77             	vzeroupper
  729957:	c3                   	ret
