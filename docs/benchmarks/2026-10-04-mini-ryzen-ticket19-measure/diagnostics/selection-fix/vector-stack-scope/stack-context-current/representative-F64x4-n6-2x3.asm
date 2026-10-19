
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008af7c0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8af7c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8af7c4:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8af7cb:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8af7d0:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8af7d4:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8af7d8:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8af7dd:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8af7e4:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8af7e9:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8af7ed:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8af7f1:	c5 fd 58 d9          	vaddpd ymm3,ymm0,ymm1
  8af7f5:	c5 ed 58 ec          	vaddpd ymm5,ymm2,ymm4
  8af7f9:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  8af7fd:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  8af801:	c5 f9 28 d3          	vmovapd xmm2,xmm3
  8af805:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  8af80b:	c5 f9 28 e0          	vmovapd xmm4,xmm0
  8af80f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  8af815:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  8af819:	c5 ed 14 c4          	vunpcklpd ymm0,ymm2,ymm4
  8af81d:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  8af821:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  8af825:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8af82b:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  8af82f:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  8af835:	c5 d5 14 e9          	vunpcklpd ymm5,ymm5,ymm1
  8af839:	c5 dd 14 ce          	vunpcklpd ymm1,ymm4,ymm6
  8af83d:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  8af841:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8af846:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8af84b:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8af852:	00 
  8af853:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8af85a:	00 
  8af85b:	c5 6d 59 d6          	vmulpd ymm10,ymm2,ymm6
  8af85f:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  8af864:	c5 3d 59 db          	vmulpd ymm11,ymm8,ymm3
  8af868:	c4 42 d5 bc d9       	vfnmadd231pd ymm11,ymm5,ymm9
  8af86d:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8af872:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  8af876:	c4 e2 ed b8 e7       	vfmadd231pd ymm4,ymm2,ymm7
  8af87b:	c5 bd 59 d5          	vmulpd ymm2,ymm8,ymm5
  8af87f:	c4 c2 e5 b8 d1       	vfmadd231pd ymm2,ymm3,ymm9
  8af884:	c4 e2 7d 19 1d 0b 52 	vbroadcastsd ymm3,QWORD PTR [rip+0xffffffffff7c520b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8af88b:	7c ff 
  8af88d:	c5 dd 58 ea          	vaddpd ymm5,ymm4,ymm2
  8af891:	c5 fd 28 f3          	vmovapd ymm6,ymm3
  8af895:	c4 e2 9d ac f0       	vfnmadd213pd ymm6,ymm12,ymm0
  8af89a:	c5 dd 5c d2          	vsubpd ymm2,ymm4,ymm2
  8af89e:	c4 e2 7d 19 25 79 53 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff7c5379]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8af8a5:	7c ff 
  8af8a7:	c5 ed 59 d4          	vmulpd ymm2,ymm2,ymm4
  8af8ab:	c5 cd 58 fa          	vaddpd ymm7,ymm6,ymm2
  8af8af:	c4 e2 d5 ac d9       	vfnmadd213pd ymm3,ymm5,ymm1
  8af8b4:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  8af8b9:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  8af8bd:	c5 65 5c c4          	vsubpd ymm8,ymm3,ymm4
  8af8c1:	c5 cd 5c d2          	vsubpd ymm2,ymm6,ymm2
  8af8c5:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  8af8c9:	c5 f5 58 cd          	vaddpd ymm1,ymm1,ymm5
  8af8cd:	c5 9d 58 c0          	vaddpd ymm0,ymm12,ymm0
  8af8d1:	c4 e3 fd 01 c0 60    	vpermpd ymm0,ymm0,0x60
  8af8d7:	c4 e3 fd 01 c9 d4    	vpermpd ymm1,ymm1,0xd4
  8af8dd:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8af8e3:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8af8e7:	c4 e3 fd 01 c7 60    	vpermpd ymm0,ymm7,0x60
  8af8ed:	c4 c3 fd 01 c8 d4    	vpermpd ymm1,ymm8,0xd4
  8af8f3:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8af8f9:	c5 fd 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm0
  8af8fe:	c4 e3 fd 01 c2 60    	vpermpd ymm0,ymm2,0x60
  8af904:	c4 e3 fd 01 cb d4    	vpermpd ymm1,ymm3,0xd4
  8af90a:	c4 e3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm0,0xa
  8af910:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  8af915:	c5 f8 77             	vzeroupper
  8af918:	c3                   	ret
