
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b92240 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b92240:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b92244:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b92249:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b9224f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b92254:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b92258:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b9225c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b92261:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b92266:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b9226c:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b92271:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b92275:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b92279:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b9227e:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  b92285:	00 
  b92286:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  b9228c:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  b92291:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  b92295:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  b92299:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  b922a0:	00 
  b922a1:	c5 f9 10 bf b0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xb0]
  b922a8:	00 
  b922a9:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b922af:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  b922b6:	00 
  b922b7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b922bb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b922bf:	c5 fd 58 fb          	vaddpd ymm7,ymm0,ymm3
  b922c3:	c5 75 58 cd          	vaddpd ymm9,ymm1,ymm5
  b922c7:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  b922cb:	c5 6d 58 de          	vaddpd ymm11,ymm2,ymm6
  b922cf:	c5 3d 58 e4          	vaddpd ymm12,ymm8,ymm4
  b922d3:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  b922d8:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b922dc:	c4 c1 5d 5c d8       	vsubpd ymm3,ymm4,ymm8
  b922e1:	c5 fd 58 e3          	vaddpd ymm4,ymm0,ymm3
  b922e5:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  b922e9:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  b922ed:	c5 f5 58 ea          	vaddpd ymm5,ymm1,ymm2
  b922f1:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  b922f6:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  b922fb:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b922ff:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  b92303:	c4 e3 2d 18 d6 01    	vinsertf128 ymm2,ymm10,xmm6,0x1
  b92309:	c4 e3 2d 06 de 31    	vperm2f128 ymm3,ymm10,ymm6,0x31
  b9230f:	c4 e3 5d 18 f0 01    	vinsertf128 ymm6,ymm4,xmm0,0x1
  b92315:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  b9231b:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b9231f:	c5 ed 14 de          	vunpcklpd ymm3,ymm2,ymm6
  b92323:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  b92327:	c4 e3 15 18 e7 01    	vinsertf128 ymm4,ymm13,xmm7,0x1
  b9232d:	c4 e3 15 06 f7 31    	vperm2f128 ymm6,ymm13,ymm7,0x31
  b92333:	c4 e3 55 18 f9 01    	vinsertf128 ymm7,ymm5,xmm1,0x1
  b92339:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  b9233f:	c5 cd 14 c9          	vunpcklpd ymm1,ymm6,ymm1
  b92343:	c5 dd 14 ef          	vunpcklpd ymm5,ymm4,ymm7
  b92347:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  b9234b:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b92350:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b92355:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b9235c:	00 
  b9235d:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b92364:	00 
  b92365:	c5 5d 59 d6          	vmulpd ymm10,ymm4,ymm6
  b92369:	c4 62 ed b8 d7       	vfmadd231pd ymm10,ymm2,ymm7
  b9236e:	c5 3d 59 d9          	vmulpd ymm11,ymm8,ymm1
  b92372:	c4 42 fd b8 d9       	vfmadd231pd ymm11,ymm0,ymm9
  b92377:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b9237c:	c4 62 7d 19 2d 13 27 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4e2713]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b92383:	4e ff 
  b92385:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  b9238a:	c4 62 9d ac f5       	vfnmadd213pd ymm14,ymm12,ymm5
  b9238f:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  b92393:	c4 e2 dd bc d7       	vfnmadd231pd ymm2,ymm4,ymm7
  b92398:	c5 bd 59 c0          	vmulpd ymm0,ymm8,ymm0
  b9239c:	c4 c2 f5 bc c1       	vfnmadd231pd ymm0,ymm1,ymm9
  b923a1:	c4 e2 7d 19 0d 76 28 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4e2876]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b923a8:	4e ff 
  b923aa:	c5 ed 5c e0          	vsubpd ymm4,ymm2,ymm0
  b923ae:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b923b2:	c5 8d 58 f4          	vaddpd ymm6,ymm14,ymm4
  b923b6:	c5 ed 58 c0          	vaddpd ymm0,ymm2,ymm0
  b923ba:	c4 62 fd ac eb       	vfnmadd213pd ymm13,ymm0,ymm3
  b923bf:	c4 c1 2d 5c d3       	vsubpd ymm2,ymm10,ymm11
  b923c4:	c5 ed 59 c9          	vmulpd ymm1,ymm2,ymm1
  b923c8:	c5 95 5c d1          	vsubpd ymm2,ymm13,ymm1
  b923cc:	c5 8d 5c e4          	vsubpd ymm4,ymm14,ymm4
  b923d0:	c5 95 58 c9          	vaddpd ymm1,ymm13,ymm1
  b923d4:	c5 9d 58 ed          	vaddpd ymm5,ymm12,ymm5
  b923d8:	c5 e5 58 c0          	vaddpd ymm0,ymm3,ymm0
  b923dc:	c5 fd 28 1d 5c 52 4e 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4e525c]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b923e3:	ff 
  b923e4:	c5 fd 28 fd          	vmovapd ymm7,ymm5
  b923e8:	62 f2 e5 28 7f f8    	vpermt2pd ymm7,ymm3,ymm0
  b923ee:	c5 7d 28 05 6a 47 4e 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff4e476a]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b923f5:	ff 
  b923f6:	62 f2 bd 28 7f e8    	vpermt2pd ymm5,ymm8,ymm0
  b923fc:	c5 fd 11 2e          	vmovupd YMMWORD PTR [rsi],ymm5
  b92400:	c5 fd 11 7e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm7
  b92405:	c5 fd 28 c4          	vmovapd ymm0,ymm4
  b92409:	62 f2 e5 28 7f c1    	vpermt2pd ymm0,ymm3,ymm1
  b9240f:	62 f2 bd 28 7f e1    	vpermt2pd ymm4,ymm8,ymm1
  b92415:	c5 fd 11 66 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm4
  b9241a:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  b9241f:	62 f2 cd 28 77 da    	vpermi2pd ymm3,ymm6,ymm2
  b92425:	62 f2 bd 28 7f f2    	vpermt2pd ymm6,ymm8,ymm2
  b9242b:	c5 fd 11 b6 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm6
  b92432:	00 
  b92433:	c5 fd 11 9e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm3
  b9243a:	00 
  b9243b:	c5 f8 77             	vzeroupper
  b9243e:	c3                   	ret
