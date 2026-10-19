
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000835480 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  835480:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  835484:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  835489:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  83548e:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  835493:	c4 e3 7d 06 e1 20    	vperm2f128 ymm4,ymm0,ymm1,0x20
  835499:	c4 e3 7d 06 c1 31    	vperm2f128 ymm0,ymm0,ymm1,0x31
  83549f:	c5 dd 14 c8          	vunpcklpd ymm1,ymm4,ymm0
  8354a3:	c5 dd 15 c0          	vunpckhpd ymm0,ymm4,ymm0
  8354a7:	c4 e3 6d 06 e3 20    	vperm2f128 ymm4,ymm2,ymm3,0x20
  8354ad:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  8354b3:	c5 dd 14 da          	vunpcklpd ymm3,ymm4,ymm2
  8354b7:	c5 dd 15 d2          	vunpckhpd ymm2,ymm4,ymm2
  8354bb:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  8354c2:	00 
  8354c3:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  8354ca:	00 
  8354cb:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  8354d1:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  8354d7:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  8354db:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  8354df:	c5 e5 58 f5          	vaddpd ymm6,ymm3,ymm5
  8354e3:	c5 cd 58 f9          	vaddpd ymm7,ymm6,ymm1
  8354e7:	c5 6d 58 c4          	vaddpd ymm8,ymm2,ymm4
  8354eb:	c5 3d 58 c8          	vaddpd ymm9,ymm8,ymm0
  8354ef:	c4 62 7d 19 15 a0 f5 	vbroadcastsd ymm10,QWORD PTR [rip+0xffffffffff83f5a0]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8354f6:	83 ff 
  8354f8:	c4 e2 ad ac f1       	vfnmadd213pd ymm6,ymm10,ymm1
  8354fd:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  835501:	c4 e2 7d 19 15 16 f7 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff83f716]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  835508:	83 ff 
  83550a:	c5 f5 59 ca          	vmulpd ymm1,ymm1,ymm2
  83550e:	c5 cd 58 e1          	vaddpd ymm4,ymm6,ymm1
  835512:	c4 62 bd ac d0       	vfnmadd213pd ymm10,ymm8,ymm0
  835517:	c5 e5 5c c5          	vsubpd ymm0,ymm3,ymm5
  83551b:	c5 fd 59 c2          	vmulpd ymm0,ymm0,ymm2
  83551f:	c5 ad 5c d0          	vsubpd ymm2,ymm10,ymm0
  835523:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  835527:	c5 ad 58 e8          	vaddpd ymm5,ymm10,ymm0
  83552b:	c4 e3 45 18 d9 01    	vinsertf128 ymm3,ymm7,xmm1,0x1
  835531:	c4 e3 45 06 c9 31    	vperm2f128 ymm1,ymm7,ymm1,0x31
  835537:	c5 f9 28 f4          	vmovapd xmm6,xmm4
  83553b:	c4 e3 7d 19 e7 01    	vextractf128 xmm7,ymm4,0x1
  835541:	c5 e5 14 c6          	vunpcklpd ymm0,ymm3,ymm6
  835545:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  835549:	c5 f5 14 e7          	vunpcklpd ymm4,ymm1,ymm7
  83554d:	c5 f5 15 cf          	vunpckhpd ymm1,ymm1,ymm7
  835551:	c4 e3 35 18 f5 01    	vinsertf128 ymm6,ymm9,xmm5,0x1
  835557:	c4 e3 35 06 fd 31    	vperm2f128 ymm7,ymm9,ymm5,0x31
  83555d:	c5 f9 28 ea          	vmovapd xmm5,xmm2
  835561:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  835567:	c5 cd 14 d5          	vunpcklpd ymm2,ymm6,ymm5
  83556b:	c5 cd 15 f5          	vunpckhpd ymm6,ymm6,ymm5
  83556f:	c4 c1 45 15 e8       	vunpckhpd ymm5,ymm7,ymm8
  835574:	c4 c1 45 14 f8       	vunpcklpd ymm7,ymm7,ymm8
  835579:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  835580:	00 
  835581:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  835588:	00 
  835589:	c5 3d 59 d4          	vmulpd ymm10,ymm8,ymm4
  83558d:	c4 42 c5 bc d1       	vfnmadd231pd ymm10,ymm7,ymm9
  835592:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  835596:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  83559b:	c4 c2 dd b8 f9       	vfmadd231pd ymm7,ymm4,ymm9
  8355a0:	c5 fd 10 62 60       	vmovupd ymm4,YMMWORD PTR [rdx+0x60]
  8355a5:	c5 3d 59 cb          	vmulpd ymm9,ymm8,ymm3
  8355a9:	c4 62 cd bc cc       	vfnmadd231pd ymm9,ymm6,ymm4
  8355ae:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  8355b2:	c5 7d 10 82 c0 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0xc0]
  8355b9:	00 
  8355ba:	c4 e2 e5 b8 f4       	vfmadd231pd ymm6,ymm3,ymm4
  8355bf:	c5 fd 10 9a e0 00 00 	vmovupd ymm3,YMMWORD PTR [rdx+0xe0]
  8355c6:	00 
  8355c7:	c5 bd 59 e1          	vmulpd ymm4,ymm8,ymm1
  8355cb:	c4 e2 d5 bc e3       	vfnmadd231pd ymm4,ymm5,ymm3
  8355d0:	c5 bd 59 ed          	vmulpd ymm5,ymm8,ymm5
  8355d4:	c4 e2 f5 b8 eb       	vfmadd231pd ymm5,ymm1,ymm3
  8355d9:	c5 ad 58 c8          	vaddpd ymm1,ymm10,ymm0
  8355dd:	c5 b5 58 dc          	vaddpd ymm3,ymm9,ymm4
  8355e1:	c4 c1 7d 5c c2       	vsubpd ymm0,ymm0,ymm10
  8355e6:	c5 4d 58 c5          	vaddpd ymm8,ymm6,ymm5
  8355ea:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  8355ee:	c5 c5 58 f2          	vaddpd ymm6,ymm7,ymm2
  8355f2:	c5 ed 5c d7          	vsubpd ymm2,ymm2,ymm7
  8355f6:	c5 fd 58 fd          	vaddpd ymm7,ymm0,ymm5
  8355fa:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  8355ff:	c5 6d 58 cc          	vaddpd ymm9,ymm2,ymm4
  835603:	c5 fd 5c c5          	vsubpd ymm0,ymm0,ymm5
  835607:	c5 f5 5c eb          	vsubpd ymm5,ymm1,ymm3
  83560b:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  83560f:	c4 c1 4d 5c e0       	vsubpd ymm4,ymm6,ymm8
  835614:	c5 f5 58 cb          	vaddpd ymm1,ymm1,ymm3
  835618:	c5 bd 58 de          	vaddpd ymm3,ymm8,ymm6
  83561c:	c4 e3 fd 01 f3 60    	vpermpd ymm6,ymm3,0x60
  835622:	c4 63 fd 01 c1 d4    	vpermpd ymm8,ymm1,0xd4
  835628:	c4 e3 3d 0d f6 0a    	vblendpd ymm6,ymm8,ymm6,0xa
  83562e:	c5 fd 11 36          	vmovupd YMMWORD PTR [rsi],ymm6
  835632:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  835638:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  83563e:	c5 f1 14 cb          	vunpcklpd xmm1,xmm1,xmm3
  835642:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  835647:	c4 c3 fd 01 c9 60    	vpermpd ymm1,ymm9,0x60
  83564d:	c4 e3 fd 01 df d4    	vpermpd ymm3,ymm7,0xd4
  835653:	c4 e3 65 0d c9 0a    	vblendpd ymm1,ymm3,ymm1,0xa
  835659:	c5 fd 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm1
  83565e:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  835664:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  83566a:	c5 e1 14 c9          	vunpcklpd xmm1,xmm3,xmm1
  83566e:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  835673:	c4 e3 fd 01 cc 60    	vpermpd ymm1,ymm4,0x60
  835679:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  83567f:	c4 e3 65 0d c9 0a    	vblendpd ymm1,ymm3,ymm1,0xa
  835685:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  83568a:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  835690:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  835696:	c5 e1 14 c9          	vunpcklpd xmm1,xmm3,xmm1
  83569a:	c5 f9 11 8e 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm1
  8356a1:	00 
  8356a2:	c4 e3 fd 01 ca 60    	vpermpd ymm1,ymm2,0x60
  8356a8:	c4 e3 fd 01 d8 d4    	vpermpd ymm3,ymm0,0xd4
  8356ae:	c4 e3 65 0d c9 0a    	vblendpd ymm1,ymm3,ymm1,0xa
  8356b4:	c5 fd 11 8e 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm1
  8356bb:	00 
  8356bc:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  8356c2:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  8356c8:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  8356cc:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  8356d3:	00 
  8356d4:	c5 f8 77             	vzeroupper
  8356d7:	c3                   	ret
