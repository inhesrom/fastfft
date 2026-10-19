
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008ae540 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8ae540:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8ae544:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8ae54b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8ae550:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8ae554:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8ae558:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8ae55d:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8ae564:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8ae569:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8ae56d:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8ae571:	c5 fd 58 d9          	vaddpd ymm3,ymm0,ymm1
  8ae575:	c5 ed 58 ec          	vaddpd ymm5,ymm2,ymm4
  8ae579:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  8ae57d:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  8ae581:	c5 f9 28 d3          	vmovapd xmm2,xmm3
  8ae585:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  8ae58b:	c5 f9 28 e0          	vmovapd xmm4,xmm0
  8ae58f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  8ae595:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  8ae599:	c5 ed 14 c4          	vunpcklpd ymm0,ymm2,ymm4
  8ae59d:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  8ae5a1:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  8ae5a5:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8ae5ab:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  8ae5af:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  8ae5b5:	c5 d5 14 e9          	vunpcklpd ymm5,ymm5,ymm1
  8ae5b9:	c5 dd 14 ce          	vunpcklpd ymm1,ymm4,ymm6
  8ae5bd:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  8ae5c1:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8ae5c6:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8ae5cb:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8ae5d2:	00 
  8ae5d3:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8ae5da:	00 
  8ae5db:	c5 6d 59 d6          	vmulpd ymm10,ymm2,ymm6
  8ae5df:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  8ae5e4:	c5 3d 59 db          	vmulpd ymm11,ymm8,ymm3
  8ae5e8:	c4 42 d5 bc d9       	vfnmadd231pd ymm11,ymm5,ymm9
  8ae5ed:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8ae5f2:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  8ae5f6:	c4 e2 ed b8 e7       	vfmadd231pd ymm4,ymm2,ymm7
  8ae5fb:	c5 bd 59 d5          	vmulpd ymm2,ymm8,ymm5
  8ae5ff:	c4 c2 e5 b8 d1       	vfmadd231pd ymm2,ymm3,ymm9
  8ae604:	c4 e2 7d 19 1d 8b 64 	vbroadcastsd ymm3,QWORD PTR [rip+0xffffffffff7c648b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8ae60b:	7c ff 
  8ae60d:	c5 dd 58 ea          	vaddpd ymm5,ymm4,ymm2
  8ae611:	c5 fd 28 f3          	vmovapd ymm6,ymm3
  8ae615:	c4 e2 9d ac f0       	vfnmadd213pd ymm6,ymm12,ymm0
  8ae61a:	c5 dd 5c d2          	vsubpd ymm2,ymm4,ymm2
  8ae61e:	c4 e2 7d 19 25 f9 65 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff7c65f9]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8ae625:	7c ff 
  8ae627:	c5 ed 59 d4          	vmulpd ymm2,ymm2,ymm4
  8ae62b:	c5 cd 58 fa          	vaddpd ymm7,ymm6,ymm2
  8ae62f:	c4 e2 d5 ac d9       	vfnmadd213pd ymm3,ymm5,ymm1
  8ae634:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  8ae639:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  8ae63d:	c5 65 5c c4          	vsubpd ymm8,ymm3,ymm4
  8ae641:	c5 cd 5c d2          	vsubpd ymm2,ymm6,ymm2
  8ae645:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  8ae649:	c5 f5 58 cd          	vaddpd ymm1,ymm1,ymm5
  8ae64d:	c5 9d 58 c0          	vaddpd ymm0,ymm12,ymm0
  8ae651:	c4 e3 fd 01 c0 60    	vpermpd ymm0,ymm0,0x60
  8ae657:	c4 e3 fd 01 c9 d4    	vpermpd ymm1,ymm1,0xd4
  8ae65d:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8ae663:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8ae667:	c4 e3 fd 01 c7 60    	vpermpd ymm0,ymm7,0x60
  8ae66d:	c4 c3 fd 01 c8 d4    	vpermpd ymm1,ymm8,0xd4
  8ae673:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8ae679:	c5 fd 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm0
  8ae67e:	c4 e3 fd 01 c2 60    	vpermpd ymm0,ymm2,0x60
  8ae684:	c4 e3 fd 01 cb d4    	vpermpd ymm1,ymm3,0xd4
  8ae68a:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8ae690:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  8ae695:	c5 f8 77             	vzeroupper
  8ae698:	c3                   	ret
