
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000817480 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  817480:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  817484:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  817489:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  81748e:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  817493:	c4 e3 7d 06 e1 20    	vperm2f128 ymm4,ymm0,ymm1,0x20
  817499:	c4 e3 7d 06 c1 31    	vperm2f128 ymm0,ymm0,ymm1,0x31
  81749f:	c5 dd 14 c8          	vunpcklpd ymm1,ymm4,ymm0
  8174a3:	c5 dd 15 c0          	vunpckhpd ymm0,ymm4,ymm0
  8174a7:	c4 e3 6d 06 e3 20    	vperm2f128 ymm4,ymm2,ymm3,0x20
  8174ad:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  8174b3:	c5 dd 14 da          	vunpcklpd ymm3,ymm4,ymm2
  8174b7:	c5 dd 15 d2          	vunpckhpd ymm2,ymm4,ymm2
  8174bb:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  8174c2:	00 
  8174c3:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  8174ca:	00 
  8174cb:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  8174d1:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  8174d7:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  8174db:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  8174df:	c5 ed 58 f4          	vaddpd ymm6,ymm2,ymm4
  8174e3:	c5 cd 58 f8          	vaddpd ymm7,ymm6,ymm0
  8174e7:	c5 65 58 c5          	vaddpd ymm8,ymm3,ymm5
  8174eb:	c5 3d 58 c9          	vaddpd ymm9,ymm8,ymm1
  8174ef:	c4 62 7d 19 15 a0 d5 	vbroadcastsd ymm10,QWORD PTR [rip+0xffffffffff85d5a0]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8174f6:	85 ff 
  8174f8:	c4 e2 ad ac f0       	vfnmadd213pd ymm6,ymm10,ymm0
  8174fd:	c5 e5 5c c5          	vsubpd ymm0,ymm3,ymm5
  817501:	c4 e2 7d 19 1d 16 d7 	vbroadcastsd ymm3,QWORD PTR [rip+0xffffffffff85d716]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  817508:	85 ff 
  81750a:	c5 fd 59 c3          	vmulpd ymm0,ymm0,ymm3
  81750e:	c5 cd 58 e8          	vaddpd ymm5,ymm6,ymm0
  817512:	c4 62 bd ac d1       	vfnmadd213pd ymm10,ymm8,ymm1
  817517:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  81751b:	c5 f5 59 cb          	vmulpd ymm1,ymm1,ymm3
  81751f:	c5 ad 5c d1          	vsubpd ymm2,ymm10,ymm1
  817523:	c5 cd 5c c0          	vsubpd ymm0,ymm6,ymm0
  817527:	c5 ad 58 f1          	vaddpd ymm6,ymm10,ymm1
  81752b:	c4 e3 45 18 c8 01    	vinsertf128 ymm1,ymm7,xmm0,0x1
  817531:	c4 e3 45 06 f8 31    	vperm2f128 ymm7,ymm7,ymm0,0x31
  817537:	c5 f9 28 dd          	vmovapd xmm3,xmm5
  81753b:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  817541:	c5 f5 14 c3          	vunpcklpd ymm0,ymm1,ymm3
  817545:	c5 f5 15 db          	vunpckhpd ymm3,ymm1,ymm3
  817549:	c5 c5 14 e5          	vunpcklpd ymm4,ymm7,ymm5
  81754d:	c5 c5 15 cd          	vunpckhpd ymm1,ymm7,ymm5
  817551:	c4 e3 35 18 ee 01    	vinsertf128 ymm5,ymm9,xmm6,0x1
  817557:	c4 e3 35 06 f6 31    	vperm2f128 ymm6,ymm9,ymm6,0x31
  81755d:	c5 f9 28 fa          	vmovapd xmm7,xmm2
  817561:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  817567:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  81756b:	c5 d5 15 ff          	vunpckhpd ymm7,ymm5,ymm7
  81756f:	c4 c1 4d 15 e8       	vunpckhpd ymm5,ymm6,ymm8
  817574:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  817579:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  817580:	00 
  817581:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  817588:	00 
  817589:	c5 3d 59 d4          	vmulpd ymm10,ymm8,ymm4
  81758d:	c4 42 cd bc d1       	vfnmadd231pd ymm10,ymm6,ymm9
  817592:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  817596:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  81759b:	c4 c2 dd b8 f1       	vfmadd231pd ymm6,ymm4,ymm9
  8175a0:	c5 fd 10 62 60       	vmovupd ymm4,YMMWORD PTR [rdx+0x60]
  8175a5:	c5 3d 59 cb          	vmulpd ymm9,ymm8,ymm3
  8175a9:	c4 62 c5 bc cc       	vfnmadd231pd ymm9,ymm7,ymm4
  8175ae:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  8175b2:	c5 7d 10 82 c0 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0xc0]
  8175b9:	00 
  8175ba:	c4 e2 e5 b8 fc       	vfmadd231pd ymm7,ymm3,ymm4
  8175bf:	c5 fd 10 9a e0 00 00 	vmovupd ymm3,YMMWORD PTR [rdx+0xe0]
  8175c6:	00 
  8175c7:	c5 bd 59 e1          	vmulpd ymm4,ymm8,ymm1
  8175cb:	c4 e2 d5 bc e3       	vfnmadd231pd ymm4,ymm5,ymm3
  8175d0:	c5 bd 59 ed          	vmulpd ymm5,ymm8,ymm5
  8175d4:	c4 e2 f5 b8 eb       	vfmadd231pd ymm5,ymm1,ymm3
  8175d9:	c5 ad 58 d8          	vaddpd ymm3,ymm10,ymm0
  8175dd:	c5 35 58 c4          	vaddpd ymm8,ymm9,ymm4
  8175e1:	c4 c1 7d 5c c2       	vsubpd ymm0,ymm0,ymm10
  8175e6:	c5 45 58 d5          	vaddpd ymm10,ymm7,ymm5
  8175ea:	c5 c5 5c cd          	vsubpd ymm1,ymm7,ymm5
  8175ee:	c5 cd 58 ea          	vaddpd ymm5,ymm6,ymm2
  8175f2:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  8175f6:	c5 fd 58 f1          	vaddpd ymm6,ymm0,ymm1
  8175fa:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  8175ff:	c5 ed 58 fc          	vaddpd ymm7,ymm2,ymm4
  817603:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  817607:	c4 41 65 5c c8       	vsubpd ymm9,ymm3,ymm8
  81760c:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  817610:	c4 c1 55 5c d2       	vsubpd ymm2,ymm5,ymm10
  817615:	c5 ad 58 e5          	vaddpd ymm4,ymm10,ymm5
  817619:	c5 bd 58 db          	vaddpd ymm3,ymm8,ymm3
  81761d:	c4 e3 fd 01 eb 60    	vpermpd ymm5,ymm3,0x60
  817623:	c4 63 fd 01 c4 d4    	vpermpd ymm8,ymm4,0xd4
  817629:	c4 e3 3d 0d ed 0a    	vblendpd ymm5,ymm8,ymm5,0xa
  81762f:	c5 fd 11 2e          	vmovupd YMMWORD PTR [rsi],ymm5
  817633:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  817639:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  81763f:	c5 d9 14 db          	vunpcklpd xmm3,xmm4,xmm3
  817643:	c5 f9 11 5e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm3
  817648:	c4 e3 fd 01 de 60    	vpermpd ymm3,ymm6,0x60
  81764e:	c4 e3 fd 01 e7 d4    	vpermpd ymm4,ymm7,0xd4
  817654:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  81765a:	c5 fd 11 5e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm3
  81765f:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  817665:	c4 e3 7d 19 fc 01    	vextractf128 xmm4,ymm7,0x1
  81766b:	c5 d9 14 db          	vunpcklpd xmm3,xmm4,xmm3
  81766f:	c5 f9 11 5e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm3
  817674:	c4 c3 fd 01 d9 60    	vpermpd ymm3,ymm9,0x60
  81767a:	c4 e3 fd 01 e2 d4    	vpermpd ymm4,ymm2,0xd4
  817680:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  817686:	c5 fd 11 5e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm3
  81768b:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  817691:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  817697:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  81769b:	c5 f9 11 96 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm2
  8176a2:	00 
  8176a3:	c4 e3 fd 01 d0 60    	vpermpd ymm2,ymm0,0x60
  8176a9:	c4 e3 fd 01 d9 d4    	vpermpd ymm3,ymm1,0xd4
  8176af:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  8176b5:	c5 fd 11 96 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm2
  8176bc:	00 
  8176bd:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  8176c3:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  8176c9:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  8176cd:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  8176d4:	00 
  8176d5:	c5 f8 77             	vzeroupper
  8176d8:	c3                   	ret
