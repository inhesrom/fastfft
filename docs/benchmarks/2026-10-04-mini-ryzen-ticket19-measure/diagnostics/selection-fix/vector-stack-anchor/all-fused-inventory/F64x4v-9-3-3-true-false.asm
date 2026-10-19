
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b9f3c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b9f3c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b9f3c4:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b9f3c9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b9f3cf:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b9f3d4:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b9f3d8:	c5 fd 15 c9          	vunpckhpd ymm1,ymm0,ymm1
  b9f3dc:	c5 fd 10 47 30       	vmovupd ymm0,YMMWORD PTR [rdi+0x30]
  b9f3e1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b9f3e6:	c4 e3 7d 06 c3 20    	vperm2f128 ymm0,ymm0,ymm3,0x20
  b9f3ec:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b9f3f1:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  b9f3f5:	c5 fd 15 db          	vunpckhpd ymm3,ymm0,ymm3
  b9f3f9:	c5 fd 10 47 60       	vmovupd ymm0,YMMWORD PTR [rdi+0x60]
  b9f3fe:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  b9f405:	00 
  b9f406:	c4 e3 7d 06 c5 20    	vperm2f128 ymm0,ymm0,ymm5,0x20
  b9f40c:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  b9f411:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  b9f415:	c5 fd 15 ed          	vunpckhpd ymm5,ymm0,ymm5
  b9f419:	c5 e5 58 fd          	vaddpd ymm7,ymm3,ymm5
  b9f41d:	c5 75 58 c7          	vaddpd ymm8,ymm1,ymm7
  b9f421:	c5 5d 58 ce          	vaddpd ymm9,ymm4,ymm6
  b9f425:	c5 35 58 d2          	vaddpd ymm10,ymm9,ymm2
  b9f429:	c4 e2 7d 19 05 66 56 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4d5666]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b9f430:	4d ff 
  b9f432:	c4 e2 fd ac f9       	vfnmadd213pd ymm7,ymm0,ymm1
  b9f437:	c5 dd 5c ce          	vsubpd ymm1,ymm4,ymm6
  b9f43b:	c4 e2 7d 19 25 dc 57 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff4d57dc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b9f442:	4d ff 
  b9f444:	c5 f5 59 cc          	vmulpd ymm1,ymm1,ymm4
  b9f448:	c5 c5 58 f1          	vaddpd ymm6,ymm7,ymm1
  b9f44c:	c4 62 fd ac ca       	vfnmadd213pd ymm9,ymm0,ymm2
  b9f451:	c5 e5 5c d5          	vsubpd ymm2,ymm3,ymm5
  b9f455:	c5 ed 59 d4          	vmulpd ymm2,ymm2,ymm4
  b9f459:	c5 b5 5c da          	vsubpd ymm3,ymm9,ymm2
  b9f45d:	c5 c5 5c c9          	vsubpd ymm1,ymm7,ymm1
  b9f461:	c5 b5 58 d2          	vaddpd ymm2,ymm9,ymm2
  b9f465:	c4 e3 3d 18 e9 01    	vinsertf128 ymm5,ymm8,xmm1,0x1
  b9f46b:	c4 e3 3d 06 c9 31    	vperm2f128 ymm1,ymm8,ymm1,0x31
  b9f471:	c5 f9 28 fe          	vmovapd xmm7,xmm6
  b9f475:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b9f47b:	c5 f5 14 ce          	vunpcklpd ymm1,ymm1,ymm6
  b9f47f:	c5 d5 14 f7          	vunpcklpd ymm6,ymm5,ymm7
  b9f483:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b9f487:	c4 e3 2d 18 fa 01    	vinsertf128 ymm7,ymm10,xmm2,0x1
  b9f48d:	c4 e3 2d 06 d2 31    	vperm2f128 ymm2,ymm10,ymm2,0x31
  b9f493:	c5 79 28 c3          	vmovapd xmm8,xmm3
  b9f497:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b9f49d:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  b9f4a1:	c4 c1 45 14 d8       	vunpcklpd ymm3,ymm7,ymm8
  b9f4a6:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  b9f4ab:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  b9f4b0:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  b9f4b5:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  b9f4bc:	00 
  b9f4bd:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  b9f4c4:	00 
  b9f4c5:	c5 3d 59 e5          	vmulpd ymm12,ymm8,ymm5
  b9f4c9:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  b9f4ce:	c5 2d 59 e9          	vmulpd ymm13,ymm10,ymm1
  b9f4d2:	c4 42 ed bc eb       	vfnmadd231pd ymm13,ymm2,ymm11
  b9f4d7:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  b9f4dc:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  b9f4e0:	c4 c2 d5 b8 f9       	vfmadd231pd ymm7,ymm5,ymm9
  b9f4e5:	c5 ad 59 d2          	vmulpd ymm2,ymm10,ymm2
  b9f4e9:	c4 c2 f5 b8 d3       	vfmadd231pd ymm2,ymm1,ymm11
  b9f4ee:	c5 c5 58 ca          	vaddpd ymm1,ymm7,ymm2
  b9f4f2:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  b9f4f6:	c4 e2 8d ac ee       	vfnmadd213pd ymm5,ymm14,ymm6
  b9f4fb:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  b9f4ff:	c5 ed 59 d4          	vmulpd ymm2,ymm2,ymm4
  b9f503:	c5 d5 58 fa          	vaddpd ymm7,ymm5,ymm2
  b9f507:	c4 e2 f5 ac c3       	vfnmadd213pd ymm0,ymm1,ymm3
  b9f50c:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  b9f511:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  b9f515:	c5 7d 5c c4          	vsubpd ymm8,ymm0,ymm4
  b9f519:	c5 d5 5c d2          	vsubpd ymm2,ymm5,ymm2
  b9f51d:	c5 fd 58 c4          	vaddpd ymm0,ymm0,ymm4
  b9f521:	c5 e5 58 c9          	vaddpd ymm1,ymm3,ymm1
  b9f525:	c5 8d 58 de          	vaddpd ymm3,ymm14,ymm6
  b9f529:	c5 fd 28 25 2f 76 4d 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff4d762f]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b9f530:	ff 
  b9f531:	c4 e3 7d 19 cd 01    	vextractf128 xmm5,ymm1,0x1
  b9f537:	62 f2 dd 28 7f cb    	vpermt2pd ymm1,ymm4,ymm3
  b9f53d:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  b9f541:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  b9f547:	c5 d1 14 c9          	vunpcklpd xmm1,xmm5,xmm1
  b9f54b:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  b9f550:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  b9f556:	62 72 dd 28 7f c7    	vpermt2pd ymm8,ymm4,ymm7
  b9f55c:	c5 7d 11 46 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm8
  b9f561:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  b9f567:	c5 f1 14 cb          	vunpcklpd xmm1,xmm1,xmm3
  b9f56b:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  b9f570:	62 f2 fd 28 77 e2    	vpermi2pd ymm4,ymm0,ymm2
  b9f576:	c5 fd 11 66 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm4
  b9f57b:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  b9f581:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b9f587:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  b9f58b:	c5 f9 11 86 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm0
  b9f592:	00 
  b9f593:	c5 f8 77             	vzeroupper
  b9f596:	c3                   	ret
