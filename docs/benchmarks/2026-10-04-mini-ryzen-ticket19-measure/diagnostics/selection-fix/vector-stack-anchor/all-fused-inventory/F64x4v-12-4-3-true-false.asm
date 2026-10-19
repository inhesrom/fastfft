
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b90480 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b90480:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b90484:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b90489:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b9048f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b90494:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b90498:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b9049c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b904a1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b904a6:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b904ac:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b904b1:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b904b5:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b904b9:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b904be:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  b904c5:	00 
  b904c6:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  b904cc:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  b904d1:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  b904d5:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  b904d9:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  b904e0:	00 
  b904e1:	c5 f9 10 bf b0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xb0]
  b904e8:	00 
  b904e9:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b904ef:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  b904f6:	00 
  b904f7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b904fb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b904ff:	c5 fd 58 fb          	vaddpd ymm7,ymm0,ymm3
  b90503:	c5 75 58 cd          	vaddpd ymm9,ymm1,ymm5
  b90507:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  b9050b:	c5 6d 58 de          	vaddpd ymm11,ymm2,ymm6
  b9050f:	c5 3d 58 e4          	vaddpd ymm12,ymm8,ymm4
  b90513:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  b90518:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b9051c:	c4 c1 5d 5c d8       	vsubpd ymm3,ymm4,ymm8
  b90521:	c5 fd 58 e3          	vaddpd ymm4,ymm0,ymm3
  b90525:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  b90529:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  b9052d:	c5 f5 58 ea          	vaddpd ymm5,ymm1,ymm2
  b90531:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  b90536:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  b9053b:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b9053f:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  b90543:	c4 e3 2d 18 d6 01    	vinsertf128 ymm2,ymm10,xmm6,0x1
  b90549:	c4 e3 2d 06 de 31    	vperm2f128 ymm3,ymm10,ymm6,0x31
  b9054f:	c4 e3 5d 18 f0 01    	vinsertf128 ymm6,ymm4,xmm0,0x1
  b90555:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  b9055b:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b9055f:	c5 ed 14 de          	vunpcklpd ymm3,ymm2,ymm6
  b90563:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  b90567:	c4 e3 15 18 e7 01    	vinsertf128 ymm4,ymm13,xmm7,0x1
  b9056d:	c4 e3 15 06 f7 31    	vperm2f128 ymm6,ymm13,ymm7,0x31
  b90573:	c4 e3 55 18 f9 01    	vinsertf128 ymm7,ymm5,xmm1,0x1
  b90579:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  b9057f:	c5 cd 14 c9          	vunpcklpd ymm1,ymm6,ymm1
  b90583:	c5 dd 14 ef          	vunpcklpd ymm5,ymm4,ymm7
  b90587:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  b9058b:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b90590:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b90595:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b9059c:	00 
  b9059d:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b905a4:	00 
  b905a5:	c5 5d 59 d6          	vmulpd ymm10,ymm4,ymm6
  b905a9:	c4 62 ed b8 d7       	vfmadd231pd ymm10,ymm2,ymm7
  b905ae:	c5 3d 59 d9          	vmulpd ymm11,ymm8,ymm1
  b905b2:	c4 42 fd b8 d9       	vfmadd231pd ymm11,ymm0,ymm9
  b905b7:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b905bc:	c4 62 7d 19 2d d3 44 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4e44d3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b905c3:	4e ff 
  b905c5:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  b905ca:	c4 62 9d ac f5       	vfnmadd213pd ymm14,ymm12,ymm5
  b905cf:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  b905d3:	c4 e2 dd bc d7       	vfnmadd231pd ymm2,ymm4,ymm7
  b905d8:	c5 bd 59 c0          	vmulpd ymm0,ymm8,ymm0
  b905dc:	c4 c2 f5 bc c1       	vfnmadd231pd ymm0,ymm1,ymm9
  b905e1:	c4 e2 7d 19 0d 36 46 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4e4636]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b905e8:	4e ff 
  b905ea:	c5 ed 5c e0          	vsubpd ymm4,ymm2,ymm0
  b905ee:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b905f2:	c5 8d 58 f4          	vaddpd ymm6,ymm14,ymm4
  b905f6:	c5 ed 58 c0          	vaddpd ymm0,ymm2,ymm0
  b905fa:	c4 62 fd ac eb       	vfnmadd213pd ymm13,ymm0,ymm3
  b905ff:	c4 c1 2d 5c d3       	vsubpd ymm2,ymm10,ymm11
  b90604:	c5 ed 59 c9          	vmulpd ymm1,ymm2,ymm1
  b90608:	c5 95 5c d1          	vsubpd ymm2,ymm13,ymm1
  b9060c:	c5 8d 5c e4          	vsubpd ymm4,ymm14,ymm4
  b90610:	c5 95 58 c9          	vaddpd ymm1,ymm13,ymm1
  b90614:	c5 9d 58 ed          	vaddpd ymm5,ymm12,ymm5
  b90618:	c5 e5 58 c0          	vaddpd ymm0,ymm3,ymm0
  b9061c:	c5 fd 28 1d 1c 70 4e 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4e701c]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b90623:	ff 
  b90624:	c5 fd 28 fd          	vmovapd ymm7,ymm5
  b90628:	62 f2 e5 28 7f f8    	vpermt2pd ymm7,ymm3,ymm0
  b9062e:	c5 7d 28 05 2a 65 4e 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff4e652a]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b90635:	ff 
  b90636:	62 f2 bd 28 7f e8    	vpermt2pd ymm5,ymm8,ymm0
  b9063c:	c5 fd 11 2e          	vmovupd YMMWORD PTR [rsi],ymm5
  b90640:	c5 fd 11 7e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm7
  b90645:	c5 fd 28 c4          	vmovapd ymm0,ymm4
  b90649:	62 f2 e5 28 7f c1    	vpermt2pd ymm0,ymm3,ymm1
  b9064f:	62 f2 bd 28 7f e1    	vpermt2pd ymm4,ymm8,ymm1
  b90655:	c5 fd 11 66 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm4
  b9065a:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  b9065f:	62 f2 cd 28 77 da    	vpermi2pd ymm3,ymm6,ymm2
  b90665:	62 f2 bd 28 7f f2    	vpermt2pd ymm6,ymm8,ymm2
  b9066b:	c5 fd 11 b6 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm6
  b90672:	00 
  b90673:	c5 fd 11 9e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm3
  b9067a:	00 
  b9067b:	c5 f8 77             	vzeroupper
  b9067e:	c3                   	ret
