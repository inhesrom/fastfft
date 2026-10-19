
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000735380 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  735380:	48 83 ec 28          	sub    rsp,0x28
  735384:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  735389:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  73538f:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  735393:	c4 63 7d 0c e9 c0    	vblendps ymm13,ymm0,ymm1,0xc0
  735399:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  73539e:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7353a4:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  7353aa:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  7353b0:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  7353b5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  7353bb:	c4 e3 7d 0c e9 c0    	vblendps ymm5,ymm0,ymm1,0xc0
  7353c1:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  7353c5:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  7353ca:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  7353cf:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  7353d4:	c5 fb 10 77 58       	vmovsd xmm6,QWORD PTR [rdi+0x58]
  7353d9:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  7353df:	c4 e3 4d 0c e1 c0    	vblendps ymm4,ymm6,ymm1,0xc0
  7353e5:	c5 f8 10 77 60       	vmovups xmm6,XMMWORD PTR [rdi+0x60]
  7353ea:	c5 7b 10 4f 70       	vmovsd xmm9,QWORD PTR [rdi+0x70]
  7353ef:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  7353f5:	c4 63 35 0c f9 c0    	vblendps ymm15,ymm9,ymm1,0xc0
  7353fb:	c5 78 10 4f 78       	vmovups xmm9,XMMWORD PTR [rdi+0x78]
  735400:	c5 7b 10 97 88 00 00 	vmovsd xmm10,QWORD PTR [rdi+0x88]
  735407:	00 
  735408:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  73540e:	c4 63 2d 0c d9 c0    	vblendps ymm11,ymm10,ymm1,0xc0
  735414:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  73541b:	00 
  73541c:	c5 7b 10 97 a0 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xa0]
  735423:	00 
  735424:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  73542a:	c4 63 2d 0c f1 c0    	vblendps ymm14,ymm10,ymm1,0xc0
  735430:	c5 7b 10 97 b8 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xb8]
  735437:	00 
  735438:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  73543e:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  735444:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  73544a:	c4 c1 68 c6 c5 88    	vshufps xmm0,xmm2,xmm13,0x88
  735450:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  735456:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  73545c:	c4 c1 68 c6 c5 dd    	vshufps xmm0,xmm2,xmm13,0xdd
  735462:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  735468:	c4 41 48 c6 ef 88    	vshufps xmm13,xmm6,xmm15,0x88
  73546e:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  735474:	c4 c1 48 c6 f7 dd    	vshufps xmm6,xmm6,xmm15,0xdd
  73547a:	c5 b8 c6 c8 88       	vshufps xmm1,xmm8,xmm0,0x88
  73547f:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  735485:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  73548b:	c5 38 c6 f0 dd       	vshufps xmm14,xmm8,xmm0,0xdd
  735490:	c4 c1 18 c6 c7 88    	vshufps xmm0,xmm12,xmm15,0x88
  735496:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  73549b:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  7354a1:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  7354a7:	c4 41 18 c6 ff dd    	vshufps xmm15,xmm12,xmm15,0xdd
  7354ad:	c5 60 c6 e0 88       	vshufps xmm12,xmm3,xmm0,0x88
  7354b2:	c4 63 7d 19 d9 01    	vextractf128 xmm1,ymm11,0x1
  7354b8:	c5 60 c6 d8 dd       	vshufps xmm11,xmm3,xmm0,0xdd
  7354bd:	c5 b0 c6 d9 88       	vshufps xmm3,xmm9,xmm1,0x88
  7354c2:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  7354c8:	c5 b0 c6 c9 dd       	vshufps xmm1,xmm9,xmm1,0xdd
  7354cd:	c5 c0 c6 e0 88       	vshufps xmm4,xmm7,xmm0,0x88
  7354d2:	c5 c0 c6 d0 dd       	vshufps xmm2,xmm7,xmm0,0xdd
  7354d7:	c5 f8 10 bf a8 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xa8]
  7354de:	00 
  7354df:	c4 43 7d 19 d1 01    	vextractf128 xmm9,ymm10,0x1
  7354e5:	c4 c1 40 c6 c1 88    	vshufps xmm0,xmm7,xmm9,0x88
  7354eb:	c4 c1 40 c6 f9 dd    	vshufps xmm7,xmm7,xmm9,0xdd
  7354f1:	c5 fc 10 6c 24 a0    	vmovups ymm5,YMMWORD PTR [rsp-0x60]
  7354f7:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  7354fb:	c5 7c 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm8
  735501:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  735506:	c5 fc 11 6c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm5
  73550c:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  735511:	c4 41 0c 5c ff       	vsubps ymm15,ymm14,ymm15
  735516:	c5 1c 58 f3          	vaddps ymm14,ymm12,ymm3
  73551a:	c5 9c 5c db          	vsubps ymm3,ymm12,ymm3
  73551e:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  735522:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  735526:	c5 6c 58 df          	vaddps ymm11,ymm2,ymm7
  73552a:	c5 ec 5c d7          	vsubps ymm2,ymm2,ymm7
  73552e:	c5 5c 58 c8          	vaddps ymm9,ymm4,ymm0
  735532:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  735536:	c5 fc 10 64 24 c0    	vmovups ymm4,YMMWORD PTR [rsp-0x40]
  73553c:	c5 dc 58 ee          	vaddps ymm5,ymm4,ymm6
  735540:	c5 5c 5c d6          	vsubps ymm10,ymm4,ymm6
  735544:	c5 fc 10 64 24 e0    	vmovups ymm4,YMMWORD PTR [rsp-0x20]
  73554a:	c5 fc 10 3c 24       	vmovups ymm7,YMMWORD PTR [rsp]
  73554f:	c5 dc 58 f7          	vaddps ymm6,ymm4,ymm7
  735553:	c5 44 5c c4          	vsubps ymm8,ymm7,ymm4
  735557:	c5 e4 58 e1          	vaddps ymm4,ymm3,ymm1
  73555b:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  73555f:	c5 ec 5c d8          	vsubps ymm3,ymm2,ymm0
  735563:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  735567:	c4 e2 7d 18 15 2c fe 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff93fe2c]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  73556e:	93 ff 
  735570:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  735574:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  735578:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  73557c:	c5 fc 59 d2          	vmulps ymm2,ymm0,ymm2
  735580:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  735586:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  73558a:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  73558e:	c4 c1 1c 58 c3       	vaddps ymm0,ymm12,ymm11
  735593:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  735599:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  73559e:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  7355a2:	c4 c1 54 5c c5       	vsubps ymm0,ymm5,ymm13
  7355a7:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  7355ad:	c4 c1 0c 58 e9       	vaddps ymm5,ymm14,ymm9
  7355b2:	c4 c1 34 5c c6       	vsubps ymm0,ymm9,ymm14
  7355b7:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  7355bd:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  7355c3:	c5 04 58 f0          	vaddps ymm14,ymm15,ymm0
  7355c7:	c4 41 7c 5c ff       	vsubps ymm15,ymm0,ymm15
  7355cc:	c5 74 5c ea          	vsubps ymm13,ymm1,ymm2
  7355d0:	c5 f4 58 d2          	vaddps ymm2,ymm1,ymm2
  7355d4:	c4 c1 3c 58 ca       	vaddps ymm1,ymm8,ymm10
  7355d9:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  7355de:	c5 5c 58 cb          	vaddps ymm9,ymm4,ymm3
  7355e2:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  7355e6:	c5 c4 58 e5          	vaddps ymm4,ymm7,ymm5
  7355ea:	c5 c0 5c c5          	vsubps xmm0,xmm7,xmm5
  7355ee:	c4 e3 5d 18 c0 01    	vinsertf128 ymm0,ymm4,xmm0,0x1
  7355f4:	c4 c1 0c 58 e1       	vaddps ymm4,ymm14,ymm9
  7355f9:	c4 c1 08 5c e9       	vsubps xmm5,xmm14,xmm9
  7355fe:	c4 e3 5d 18 e5 01    	vinsertf128 ymm4,ymm4,xmm5,0x1
  735604:	c5 9c 58 ee          	vaddps ymm5,ymm12,ymm6
  735608:	c4 c1 48 5c f4       	vsubps xmm6,xmm6,xmm12
  73560d:	c4 e3 55 18 ee 01    	vinsertf128 ymm5,ymm5,xmm6,0x1
  735613:	c5 84 58 f2          	vaddps ymm6,ymm15,ymm2
  735617:	c5 80 5c d2          	vsubps xmm2,xmm15,xmm2
  73561b:	c4 e3 4d 18 d2 01    	vinsertf128 ymm2,ymm6,xmm2,0x1
  735621:	c5 fd 15 f5          	vunpckhpd ymm6,ymm0,ymm5
  735625:	c5 fd 14 c5          	vunpcklpd ymm0,ymm0,ymm5
  735629:	c5 dd 15 ea          	vunpckhpd ymm5,ymm4,ymm2
  73562d:	c5 cc c6 ed 88       	vshufps ymm5,ymm6,ymm5,0x88
  735632:	c5 dd 14 d2          	vunpcklpd ymm2,ymm4,ymm2
  735636:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  73563b:	c5 fc c6 d2 dd       	vshufps ymm2,ymm0,ymm2,0xdd
  735640:	c5 fc 10 74 24 c0    	vmovups ymm6,YMMWORD PTR [rsp-0x40]
  735646:	c5 a4 58 c6          	vaddps ymm0,ymm11,ymm6
  73564a:	c5 a0 5c f6          	vsubps xmm6,xmm11,xmm6
  73564e:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  735654:	c5 94 58 c1          	vaddps ymm0,ymm13,ymm1
  735658:	c4 c1 70 5c cd       	vsubps xmm1,xmm1,xmm13
  73565d:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  735663:	c5 fc 10 7c 24 80    	vmovups ymm7,YMMWORD PTR [rsp-0x80]
  735669:	c5 7c 10 44 24 e0    	vmovups ymm8,YMMWORD PTR [rsp-0x20]
  73566f:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  735673:	c4 41 40 5c c0       	vsubps xmm8,xmm7,xmm8
  735678:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  73567e:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  735682:	c5 dc c6 c4 d8       	vshufps ymm0,ymm4,ymm4,0xd8
  735687:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  73568c:	c5 d4 c6 e5 d8       	vshufps ymm4,ymm5,ymm5,0xd8
  735691:	c5 a8 5c db          	vsubps xmm3,xmm10,xmm3
  735695:	c4 e3 35 18 db 01    	vinsertf128 ymm3,ymm9,xmm3,0x1
  73569b:	c4 c1 4d 15 e8       	vunpckhpd ymm5,ymm6,ymm8
  7356a0:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  7356a5:	c5 f5 15 fb          	vunpckhpd ymm7,ymm1,ymm3
  7356a9:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  7356ae:	c5 f5 14 db          	vunpcklpd ymm3,ymm1,ymm3
  7356b2:	c5 cc c6 cb 88       	vshufps ymm1,ymm6,ymm3,0x88
  7356b7:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  7356bc:	c5 cc c6 db dd       	vshufps ymm3,ymm6,ymm3,0xdd
  7356c1:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7356c6:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  7356cb:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  7356d0:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  7356d5:	c5 4c 59 c3          	vmulps ymm8,ymm6,ymm3
  7356d9:	c4 62 6d b8 c7       	vfmadd231ps ymm8,ymm2,ymm7
  7356de:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  7356e2:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  7356e9:	00 
  7356ea:	c4 e2 65 bc d7       	vfnmadd231ps ymm2,ymm3,ymm7
  7356ef:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  7356f6:	00 
  7356f7:	c5 cc 59 fd          	vmulps ymm7,ymm6,ymm5
  7356fb:	c4 e2 5d b8 fb       	vfmadd231ps ymm7,ymm4,ymm3
  735700:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  735704:	c5 bc 58 f7          	vaddps ymm6,ymm8,ymm7
  735708:	c4 e2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm3
  73570d:	c4 e2 7d 18 1d 4a fd 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff93fd4a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  735714:	93 ff 
  735716:	c5 ec 5c ec          	vsubps ymm5,ymm2,ymm4
  73571a:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  73571e:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  735722:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  735726:	c4 62 7d 18 05 a5 fb 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff93fba5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73572d:	93 ff 
  73572f:	c4 e2 4d ac e1       	vfnmadd213ps ymm4,ymm6,ymm1
  735734:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  735738:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  73573c:	c5 5c 58 c5          	vaddps ymm8,ymm4,ymm5
  735740:	c4 e2 6d ac d8       	vfnmadd213ps ymm3,ymm2,ymm0
  735745:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  735749:	c5 e4 5c ef          	vsubps ymm5,ymm3,ymm7
  73574d:	c5 e4 58 df          	vaddps ymm3,ymm3,ymm7
  735751:	c5 cc 58 c9          	vaddps ymm1,ymm6,ymm1
  735755:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  735759:	c5 fc 15 d1          	vunpckhps ymm2,ymm0,ymm1
  73575d:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  735761:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  735767:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  73576d:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  735771:	c5 fc 11 4e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm1
  735776:	c5 e4 15 c4          	vunpckhps ymm0,ymm3,ymm4
  73577a:	c5 e4 14 cc          	vunpcklps ymm1,ymm3,ymm4
  73577e:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  735784:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  73578a:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  73578f:	c5 fc 11 56 60       	vmovups YMMWORD PTR [rsi+0x60],ymm2
  735794:	c4 c1 54 15 c0       	vunpckhps ymm0,ymm5,ymm8
  735799:	c4 c1 54 14 c8       	vunpcklps ymm1,ymm5,ymm8
  73579e:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  7357a4:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  7357aa:	c5 fc 11 86 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm0
  7357b1:	00 
  7357b2:	c5 fc 11 96 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm2
  7357b9:	00 
  7357ba:	48 83 c4 28          	add    rsp,0x28
  7357be:	c5 f8 77             	vzeroupper
  7357c1:	c3                   	ret
