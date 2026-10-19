
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b5d5c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b5d5c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b5d5c4:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b5d5c9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b5d5cf:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b5d5d4:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b5d5d8:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b5d5dc:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b5d5e1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b5d5e6:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b5d5ec:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b5d5f1:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b5d5f5:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b5d5f9:	c5 ed 58 dc          	vaddpd ymm3,ymm2,ymm4
  b5d5fd:	c5 fd 58 e9          	vaddpd ymm5,ymm0,ymm1
  b5d601:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b5d605:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  b5d609:	c5 f9 28 cb          	vmovapd xmm1,xmm3
  b5d60d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b5d613:	c5 f9 28 e2          	vmovapd xmm4,xmm2
  b5d617:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b5d61d:	c5 e5 14 d2          	vunpcklpd ymm2,ymm3,ymm2
  b5d621:	c5 f5 14 dc          	vunpcklpd ymm3,ymm1,ymm4
  b5d625:	c5 f5 15 cc          	vunpckhpd ymm1,ymm1,ymm4
  b5d629:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b5d62d:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b5d633:	c5 f9 28 f0          	vmovapd xmm6,xmm0
  b5d637:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b5d63d:	c5 d5 14 c0          	vunpcklpd ymm0,ymm5,ymm0
  b5d641:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b5d645:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b5d649:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b5d64e:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b5d653:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b5d65a:	00 
  b5d65b:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b5d662:	00 
  b5d663:	c5 75 59 d6          	vmulpd ymm10,ymm1,ymm6
  b5d667:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  b5d66c:	c5 3d 59 da          	vmulpd ymm11,ymm8,ymm2
  b5d670:	c4 42 fd bc d9       	vfnmadd231pd ymm11,ymm0,ymm9
  b5d675:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b5d67a:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  b5d67e:	c4 e2 f5 b8 e7       	vfmadd231pd ymm4,ymm1,ymm7
  b5d683:	c5 bd 59 c0          	vmulpd ymm0,ymm8,ymm0
  b5d687:	c4 c2 ed b8 c1       	vfmadd231pd ymm0,ymm2,ymm9
  b5d68c:	c5 dd 58 c8          	vaddpd ymm1,ymm4,ymm0
  b5d690:	c4 e2 7d 19 15 ff 73 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5173ff]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b5d697:	51 ff 
  b5d699:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  b5d69d:	c4 e2 9d ac f3       	vfnmadd213pd ymm6,ymm12,ymm3
  b5d6a2:	c5 dd 5c c0          	vsubpd ymm0,ymm4,ymm0
  b5d6a6:	c4 e2 7d 19 25 71 75 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff517571]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b5d6ad:	51 ff 
  b5d6af:	c5 fd 59 c4          	vmulpd ymm0,ymm0,ymm4
  b5d6b3:	c5 cd 58 f8          	vaddpd ymm7,ymm6,ymm0
  b5d6b7:	c4 e2 f5 ac d5       	vfnmadd213pd ymm2,ymm1,ymm5
  b5d6bc:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  b5d6c1:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  b5d6c5:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  b5d6c9:	c5 cd 5c c0          	vsubpd ymm0,ymm6,ymm0
  b5d6cd:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  b5d6d1:	c5 9d 58 db          	vaddpd ymm3,ymm12,ymm3
  b5d6d5:	c5 d5 58 c9          	vaddpd ymm1,ymm5,ymm1
  b5d6d9:	c5 fd 28 25 7f 94 51 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff51947f]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b5d6e0:	ff 
  b5d6e1:	62 f2 dd 28 7f d9    	vpermt2pd ymm3,ymm4,ymm1
  b5d6e7:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  b5d6eb:	62 d2 dd 28 7f f8    	vpermt2pd ymm7,ymm4,ymm8
  b5d6f1:	c5 fd 11 7e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm7
  b5d6f6:	62 f2 dd 28 7f c2    	vpermt2pd ymm0,ymm4,ymm2
  b5d6fc:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  b5d701:	c5 f8 77             	vzeroupper
  b5d704:	c3                   	ret
