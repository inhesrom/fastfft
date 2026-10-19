
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b10540 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b10540:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  b10545:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1054b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b1054f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b10555:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  b10559:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  b1055e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  b10563:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  b10568:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1056e:	c5 e8 c6 f0 88       	vshufps xmm6,xmm2,xmm0,0x88
  b10573:	c5 fb 10 7f 40       	vmovsd xmm7,QWORD PTR [rdi+0x40]
  b10578:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  b1057e:	c4 e3 45 0c f9 c0    	vblendps ymm7,ymm7,ymm1,0xc0
  b10584:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b1058a:	c5 58 c6 c7 88       	vshufps xmm8,xmm4,xmm7,0x88
  b1058f:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  b10594:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  b10599:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  b1059f:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  b105a5:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b105ab:	c4 41 50 c6 da dd    	vshufps xmm11,xmm5,xmm10,0xdd
  b105b1:	c5 7b 10 67 28       	vmovsd xmm12,QWORD PTR [rdi+0x28]
  b105b6:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  b105bc:	c4 e3 1d 0c c9 c0    	vblendps ymm1,ymm12,ymm1,0xc0
  b105c2:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b105c8:	c5 60 c6 e1 dd       	vshufps xmm12,xmm3,xmm1,0xdd
  b105cd:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  b105d2:	c5 e8 c6 c0 dd       	vshufps xmm0,xmm2,xmm0,0xdd
  b105d7:	c5 d8 c6 d7 dd       	vshufps xmm2,xmm4,xmm7,0xdd
  b105dc:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  b105e0:	c5 e0 c6 c9 88       	vshufps xmm1,xmm3,xmm1,0x88
  b105e5:	c4 c1 50 c6 da 88    	vshufps xmm3,xmm5,xmm10,0x88
  b105eb:	c5 f4 5c eb          	vsubps ymm5,ymm1,ymm3
  b105ef:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  b105f3:	c5 f4 58 cb          	vaddps ymm1,ymm1,ymm3
  b105f7:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  b105fb:	c4 c1 1c 58 d3       	vaddps ymm2,ymm12,ymm11
  b10600:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  b10604:	c5 d8 58 fd          	vaddps xmm7,xmm4,xmm5
  b10608:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b1060c:	c5 d8 5c d5          	vsubps xmm2,xmm4,xmm5
  b10610:	c5 e5 15 e0          	vunpckhpd ymm4,ymm3,ymm0
  b10614:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b10618:	c5 c5 15 da          	vunpckhpd ymm3,ymm7,ymm2
  b1061c:	c5 dc c6 db 88       	vshufps ymm3,ymm4,ymm3,0x88
  b10621:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  b10625:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  b1062a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b1062f:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  b10634:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b10639:	c5 e4 c6 d3 d8       	vshufps ymm2,ymm3,ymm3,0xd8
  b1063e:	c5 c8 58 d9          	vaddps xmm3,xmm6,xmm1
  b10642:	c4 c1 10 58 e9       	vaddps xmm5,xmm13,xmm9
  b10647:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b1064b:	c4 c1 30 5c f5       	vsubps xmm6,xmm9,xmm13
  b10650:	c5 e5 15 f9          	vunpckhpd ymm7,ymm3,ymm1
  b10654:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  b10658:	c5 d5 15 de          	vunpckhpd ymm3,ymm5,ymm6
  b1065c:	c5 c4 c6 db 88       	vshufps ymm3,ymm7,ymm3,0x88
  b10661:	c5 d5 14 ee          	vunpcklpd ymm5,ymm5,ymm6
  b10665:	c5 f4 c6 f5 88       	vshufps ymm6,ymm1,ymm5,0x88
  b1066a:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1066f:	c5 f4 c6 cd dd       	vshufps ymm1,ymm1,ymm5,0xdd
  b10674:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b10679:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1067e:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  b10683:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  b10688:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b1068f:	00 
  b10690:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  b10697:	00 
  b10698:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  b1069c:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  b106a1:	c5 3c 59 da          	vmulps ymm11,ymm8,ymm2
  b106a5:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  b106aa:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  b106af:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  b106b3:	c4 e2 7d b8 cf       	vfmadd231ps ymm1,ymm0,ymm7
  b106b8:	c5 bc 59 c3          	vmulps ymm0,ymm8,ymm3
  b106bc:	c4 c2 6d b8 c1       	vfmadd231ps ymm0,ymm2,ymm9
  b106c1:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  b106c5:	c4 e2 7d 18 1d 92 4d 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff564d92]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b106cc:	56 ff 
  b106ce:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  b106d2:	c4 e2 1d ac ec       	vfnmadd213ps ymm5,ymm12,ymm4
  b106d7:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b106db:	c4 e2 7d 18 0d f0 4b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff564bf0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b106e2:	56 ff 
  b106e4:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  b106e8:	c5 d4 58 f8          	vaddps ymm7,ymm5,ymm0
  b106ec:	c4 e2 6d ac de       	vfnmadd213ps ymm3,ymm2,ymm6
  b106f1:	c4 41 2c 5c c3       	vsubps ymm8,ymm10,ymm11
  b106f6:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  b106fa:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  b106fe:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  b10702:	c5 c8 58 d2          	vaddps xmm2,xmm6,xmm2
  b10706:	c5 fc 28 2d d2 6a 56 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff566ad2]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1070d:	ff 
  b1070e:	62 f2 55 28 7f d4    	vpermt2ps ymm2,ymm5,ymm4
  b10714:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  b10718:	c5 e0 5c d1          	vsubps xmm2,xmm3,xmm1
  b1071c:	62 f2 55 28 7f d7    	vpermt2ps ymm2,ymm5,ymm7
  b10722:	c5 fc 11 56 20       	vmovups YMMWORD PTR [rsi+0x20],ymm2
  b10727:	c5 e0 58 c9          	vaddps xmm1,xmm3,xmm1
  b1072b:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  b10731:	c5 fc 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm1
  b10736:	c5 f8 77             	vzeroupper
  b10739:	c3                   	ret
