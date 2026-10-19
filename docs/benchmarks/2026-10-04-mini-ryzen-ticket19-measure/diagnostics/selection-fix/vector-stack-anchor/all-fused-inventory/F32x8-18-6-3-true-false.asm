
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b7500 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b7500:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  6b7505:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6b750b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6b750f:	c4 e3 7d 0c d1 c0    	vblendps ymm2,ymm0,ymm1,0xc0
  6b7515:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  6b751a:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6b7520:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  6b7526:	c5 fc 11 44 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm0
  6b752c:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  6b7531:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6b7537:	c4 e3 7d 0c e1 c0    	vblendps ymm4,ymm0,ymm1,0xc0
  6b753d:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  6b7541:	c5 f8 10 47 18       	vmovups xmm0,XMMWORD PTR [rdi+0x18]
  6b7546:	c5 f8 29 44 24 88    	vmovaps XMMWORD PTR [rsp-0x78],xmm0
  6b754c:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  6b7551:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  6b7556:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  6b755b:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  6b7561:	c4 63 3d 0c c9 c0    	vblendps ymm9,ymm8,ymm1,0xc0
  6b7567:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  6b756c:	c5 7b 10 57 70       	vmovsd xmm10,QWORD PTR [rdi+0x70]
  6b7571:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6b7577:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  6b757d:	c5 78 10 5f 78       	vmovups xmm11,XMMWORD PTR [rdi+0x78]
  6b7582:	c5 7b 10 a7 88 00 00 	vmovsd xmm12,QWORD PTR [rdi+0x88]
  6b7589:	00 
  6b758a:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  6b7590:	c4 63 1d 0c e1 c0    	vblendps ymm12,ymm12,ymm1,0xc0
  6b7596:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  6b759c:	c4 c1 50 c6 c5 dd    	vshufps xmm0,xmm5,xmm13,0xdd
  6b75a2:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  6b75a8:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  6b75ae:	c4 c1 40 c6 de dd    	vshufps xmm3,xmm7,xmm14,0xdd
  6b75b4:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  6b75ba:	c4 c1 38 c6 e7 dd    	vshufps xmm4,xmm8,xmm15,0xdd
  6b75c0:	c5 fc 11 64 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm4
  6b75c6:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  6b75cc:	c5 48 c6 c9 dd       	vshufps xmm9,xmm6,xmm1,0xdd
  6b75d1:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  6b75d7:	c4 41 50 c6 d5 88    	vshufps xmm10,xmm5,xmm13,0x88
  6b75dd:	c4 c1 20 c6 ec dd    	vshufps xmm5,xmm11,xmm12,0xdd
  6b75e3:	c5 fc 10 44 24 98    	vmovups ymm0,YMMWORD PTR [rsp-0x68]
  6b75e9:	c4 c3 7d 19 c5 01    	vextractf128 xmm13,ymm0,0x1
  6b75ef:	c4 c1 40 c6 d6 88    	vshufps xmm2,xmm7,xmm14,0x88
  6b75f5:	c5 f8 28 44 24 88    	vmovaps xmm0,XMMWORD PTR [rsp-0x78]
  6b75fb:	c4 c1 78 c6 fd dd    	vshufps xmm7,xmm0,xmm13,0xdd
  6b7601:	c4 41 38 c6 ff 88    	vshufps xmm15,xmm8,xmm15,0x88
  6b7607:	c5 48 c6 f1 88       	vshufps xmm14,xmm6,xmm1,0x88
  6b760c:	c4 41 20 c6 e4 88    	vshufps xmm12,xmm11,xmm12,0x88
  6b7612:	c4 c1 78 c6 f5 88    	vshufps xmm6,xmm0,xmm13,0x88
  6b7618:	c5 64 58 dc          	vaddps ymm11,ymm3,ymm4
  6b761c:	c5 fc 10 4c 24 d8    	vmovups ymm1,YMMWORD PTR [rsp-0x28]
  6b7622:	c5 a4 58 c1          	vaddps ymm0,ymm11,ymm1
  6b7626:	c5 fc 11 44 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm0
  6b762c:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  6b7630:	c4 e2 7d 18 05 27 de 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9bde27]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b7637:	9b ff 
  6b7639:	c4 62 7d ac d9       	vfnmadd213ps ymm11,ymm0,ymm1
  6b763e:	c5 04 58 ea          	vaddps ymm13,ymm15,ymm2
  6b7642:	c4 c1 6c 5c cf       	vsubps ymm1,ymm2,ymm15
  6b7647:	c4 41 3c 58 f9       	vaddps ymm15,ymm8,ymm9
  6b764c:	c4 42 7d ac c1       	vfnmadd213ps ymm8,ymm0,ymm9
  6b7651:	c5 9c 58 d6          	vaddps ymm2,ymm12,ymm6
  6b7655:	c5 9c 5c f6          	vsubps ymm6,ymm12,ymm6
  6b7659:	c4 41 14 58 e2       	vaddps ymm12,ymm13,ymm10
  6b765e:	c4 42 7d ac ea       	vfnmadd213ps ymm13,ymm0,ymm10
  6b7663:	c5 64 5c 4c 24 b8    	vsubps ymm9,ymm3,YMMWORD PTR [rsp-0x48]
  6b7669:	c5 8c 58 e2          	vaddps ymm4,ymm14,ymm2
  6b766d:	c4 c2 7d ac d6       	vfnmadd213ps ymm2,ymm0,ymm14
  6b7672:	c4 62 7d 18 15 59 dc 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9bdc59]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b7679:	9b ff 
  6b767b:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  6b767f:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6b7683:	c5 24 58 f1          	vaddps ymm14,ymm11,ymm1
  6b7687:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  6b768b:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6b768f:	c5 3c 58 de          	vaddps ymm11,ymm8,ymm6
  6b7693:	c4 c1 34 59 fa       	vmulps ymm7,ymm9,ymm10
  6b7698:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  6b769c:	c5 14 5c cf          	vsubps ymm9,ymm13,ymm7
  6b76a0:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6b76a4:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  6b76a8:	c5 6c 5c ed          	vsubps ymm13,ymm2,ymm5
  6b76ac:	c5 54 58 c2          	vaddps ymm8,ymm5,ymm2
  6b76b0:	c4 c1 0c 5c d3       	vsubps ymm2,ymm14,ymm11
  6b76b5:	c4 c1 08 58 eb       	vaddps xmm5,xmm14,xmm11
  6b76ba:	c5 fc 10 5c 24 98    	vmovups ymm3,YMMWORD PTR [rsp-0x68]
  6b76c0:	c5 04 58 db          	vaddps ymm11,ymm15,ymm3
  6b76c4:	c4 e3 25 18 ed 01    	vinsertf128 ymm5,ymm11,xmm5,0x1
  6b76ca:	c5 70 5c de          	vsubps xmm11,xmm1,xmm6
  6b76ce:	c4 c3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm11,0x1
  6b76d4:	c5 f0 58 ce          	vaddps xmm1,xmm1,xmm6
  6b76d8:	c4 c1 60 5c f7       	vsubps xmm6,xmm3,xmm15
  6b76dd:	c5 d4 14 da          	vunpcklps ymm3,ymm5,ymm2
  6b76e1:	c5 d4 15 d2          	vunpckhps ymm2,ymm5,ymm2
  6b76e5:	c5 f4 14 ee          	vunpcklps ymm5,ymm1,ymm6
  6b76e9:	c5 f4 15 ce          	vunpckhps ymm1,ymm1,ymm6
  6b76ed:	c5 1c 58 dc          	vaddps ymm11,ymm12,ymm4
  6b76f1:	c5 ed 14 f1          	vunpcklpd ymm6,ymm2,ymm1
  6b76f5:	c4 c1 34 5c cd       	vsubps ymm1,ymm9,ymm13
  6b76fa:	c4 c1 30 58 d5       	vaddps xmm2,xmm9,xmm13
  6b76ff:	c5 65 15 cd          	vunpckhpd ymm9,ymm3,ymm5
  6b7703:	c4 e3 25 18 d2 01    	vinsertf128 ymm2,ymm11,xmm2,0x1
  6b7709:	c4 41 40 5c d8       	vsubps xmm11,xmm7,xmm8
  6b770e:	c4 c3 75 18 cb 01    	vinsertf128 ymm1,ymm1,xmm11,0x1
  6b7714:	c5 b8 58 ff          	vaddps xmm7,xmm8,xmm7
  6b7718:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  6b771c:	c5 6c 14 c1          	vunpcklps ymm8,ymm2,ymm1
  6b7720:	c5 44 14 dc          	vunpcklps ymm11,ymm7,ymm4
  6b7724:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  6b7729:	c5 ec 15 c9          	vunpckhps ymm1,ymm2,ymm1
  6b772d:	c5 c4 15 d4          	vunpckhps ymm2,ymm7,ymm4
  6b7731:	c5 f5 14 ca          	vunpcklpd ymm1,ymm1,ymm2
  6b7735:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  6b773a:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  6b773f:	c5 b4 59 fa          	vmulps ymm7,ymm9,ymm2
  6b7743:	c4 e2 1d bc fc       	vfnmadd231ps ymm7,ymm12,ymm4
  6b7748:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  6b774c:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  6b7753:	00 
  6b7754:	c4 e2 35 b8 d4       	vfmadd231ps ymm2,ymm9,ymm4
  6b7759:	c5 fc 10 a2 a0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xa0]
  6b7760:	00 
  6b7761:	c5 1c 59 ce          	vmulps ymm9,ymm12,ymm6
  6b7765:	c4 62 75 bc cc       	vfnmadd231ps ymm9,ymm1,ymm4
  6b776a:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  6b776e:	c4 e2 4d b8 cc       	vfmadd231ps ymm1,ymm6,ymm4
  6b7773:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  6b7777:	c4 c1 3d 14 e3       	vunpcklpd ymm4,ymm8,ymm11
  6b777c:	c5 ec 58 e9          	vaddps ymm5,ymm2,ymm1
  6b7780:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  6b7784:	c5 b4 58 d7          	vaddps ymm2,ymm9,ymm7
  6b7788:	c4 c1 44 5c f1       	vsubps ymm6,ymm7,ymm9
  6b778d:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  6b7791:	c4 e2 6d ac fb       	vfnmadd213ps ymm7,ymm2,ymm3
  6b7796:	c5 ac 59 c9          	vmulps ymm1,ymm10,ymm1
  6b779a:	c5 ac 59 f6          	vmulps ymm6,ymm10,ymm6
  6b779e:	c5 44 58 c1          	vaddps ymm8,ymm7,ymm1
  6b77a2:	c4 e2 55 ac c4       	vfnmadd213ps ymm0,ymm5,ymm4
  6b77a7:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  6b77ab:	c5 fc 5c fe          	vsubps ymm7,ymm0,ymm6
  6b77af:	c5 fc 58 c6          	vaddps ymm0,ymm0,ymm6
  6b77b3:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  6b77b7:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6b77bb:	c5 dc 14 da          	vunpcklps ymm3,ymm4,ymm2
  6b77bf:	c5 d8 14 ea          	vunpcklps xmm5,xmm4,xmm2
  6b77c3:	c5 d8 15 d2          	vunpckhps xmm2,xmm4,xmm2
  6b77c7:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  6b77cc:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  6b77d0:	c4 e3 7d 19 5e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm3,0x1
  6b77d7:	c4 c1 44 14 d0       	vunpcklps ymm2,ymm7,ymm8
  6b77dc:	c4 c1 40 14 d8       	vunpcklps xmm3,xmm7,xmm8
  6b77e1:	c4 c1 40 15 e0       	vunpckhps xmm4,xmm7,xmm8
  6b77e6:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  6b77eb:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  6b77f0:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  6b77f7:	c5 fc 14 d1          	vunpcklps ymm2,ymm0,ymm1
  6b77fb:	c5 f8 14 d9          	vunpcklps xmm3,xmm0,xmm1
  6b77ff:	c5 f8 15 c1          	vunpckhps xmm0,xmm0,xmm1
  6b7803:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  6b7808:	c5 f8 11 5e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm3
  6b780d:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  6b7814:	00 00 01 
  6b7817:	c5 f8 77             	vzeroupper
  6b781a:	c3                   	ret
