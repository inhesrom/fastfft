
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000826540 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  826540:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  826544:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  82654b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  826550:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  826554:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  826558:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  82655d:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  826564:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  826569:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  82656d:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  826571:	c5 ed 58 dc          	vaddpd ymm3,ymm2,ymm4
  826575:	c5 fd 58 e9          	vaddpd ymm5,ymm0,ymm1
  826579:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  82657d:	c5 fd 5c c9          	vsubpd ymm1,ymm0,ymm1
  826581:	c5 f9 28 e3          	vmovapd xmm4,xmm3
  826585:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  82658b:	c5 f9 28 da          	vmovapd xmm3,xmm2
  82658f:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  826595:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  826599:	c5 dd 14 c3          	vunpcklpd ymm0,ymm4,ymm3
  82659d:	c5 dd 15 db          	vunpckhpd ymm3,ymm4,ymm3
  8265a1:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  8265a5:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8265ab:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  8265af:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  8265b5:	c5 d5 14 e9          	vunpcklpd ymm5,ymm5,ymm1
  8265b9:	c5 dd 14 ce          	vunpcklpd ymm1,ymm4,ymm6
  8265bd:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  8265c1:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8265c6:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8265cb:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8265d2:	00 
  8265d3:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8265da:	00 
  8265db:	c5 65 59 d6          	vmulpd ymm10,ymm3,ymm6
  8265df:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  8265e4:	c5 3d 59 da          	vmulpd ymm11,ymm8,ymm2
  8265e8:	c4 42 d5 bc d9       	vfnmadd231pd ymm11,ymm5,ymm9
  8265ed:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8265f2:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  8265f6:	c4 e2 e5 b8 e7       	vfmadd231pd ymm4,ymm3,ymm7
  8265fb:	c5 bd 59 dd          	vmulpd ymm3,ymm8,ymm5
  8265ff:	c4 c2 ed b8 d9       	vfmadd231pd ymm3,ymm2,ymm9
  826604:	c4 e2 7d 19 15 8b e4 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff84e48b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  82660b:	84 ff 
  82660d:	c5 dd 58 eb          	vaddpd ymm5,ymm4,ymm3
  826611:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  826615:	c4 e2 9d ac f0       	vfnmadd213pd ymm6,ymm12,ymm0
  82661a:	c5 dd 5c db          	vsubpd ymm3,ymm4,ymm3
  82661e:	c4 e2 7d 19 25 f9 e5 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff84e5f9]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  826625:	84 ff 
  826627:	c5 e5 59 dc          	vmulpd ymm3,ymm3,ymm4
  82662b:	c5 cd 58 fb          	vaddpd ymm7,ymm6,ymm3
  82662f:	c4 e2 d5 ac d1       	vfnmadd213pd ymm2,ymm5,ymm1
  826634:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  826639:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  82663d:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  826641:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  826645:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  826649:	c5 9d 58 c0          	vaddpd ymm0,ymm12,ymm0
  82664d:	c5 f5 58 cd          	vaddpd ymm1,ymm1,ymm5
  826651:	c4 e3 fd 01 c9 60    	vpermpd ymm1,ymm1,0x60
  826657:	c4 e3 fd 01 c0 d4    	vpermpd ymm0,ymm0,0xd4
  82665d:	c4 e3 7d 0d c1 0a    	vblendpd ymm0,ymm0,ymm1,0xa
  826663:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  826667:	c4 c3 fd 01 c0 60    	vpermpd ymm0,ymm8,0x60
  82666d:	c4 e3 fd 01 cf d4    	vpermpd ymm1,ymm7,0xd4
  826673:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  826679:	c5 fd 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm0
  82667e:	c4 e3 fd 01 c2 60    	vpermpd ymm0,ymm2,0x60
  826684:	c4 e3 fd 01 cb d4    	vpermpd ymm1,ymm3,0xd4
  82668a:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  826690:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  826695:	c5 f8 77             	vzeroupper
  826698:	c3                   	ret
