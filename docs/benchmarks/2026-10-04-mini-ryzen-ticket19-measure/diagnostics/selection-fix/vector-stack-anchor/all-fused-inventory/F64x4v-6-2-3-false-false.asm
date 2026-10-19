
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b5b800 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b5b800:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b5b804:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b5b809:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b5b80f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b5b814:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b5b818:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b5b81c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b5b821:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b5b826:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b5b82c:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b5b831:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b5b835:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b5b839:	c5 ed 58 dc          	vaddpd ymm3,ymm2,ymm4
  b5b83d:	c5 fd 58 e9          	vaddpd ymm5,ymm0,ymm1
  b5b841:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b5b845:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  b5b849:	c5 f9 28 cb          	vmovapd xmm1,xmm3
  b5b84d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b5b853:	c5 f9 28 e2          	vmovapd xmm4,xmm2
  b5b857:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b5b85d:	c5 e5 14 d2          	vunpcklpd ymm2,ymm3,ymm2
  b5b861:	c5 f5 14 dc          	vunpcklpd ymm3,ymm1,ymm4
  b5b865:	c5 f5 15 cc          	vunpckhpd ymm1,ymm1,ymm4
  b5b869:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b5b86d:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b5b873:	c5 f9 28 f0          	vmovapd xmm6,xmm0
  b5b877:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b5b87d:	c5 d5 14 c0          	vunpcklpd ymm0,ymm5,ymm0
  b5b881:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b5b885:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b5b889:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b5b88e:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b5b893:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b5b89a:	00 
  b5b89b:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b5b8a2:	00 
  b5b8a3:	c5 75 59 d6          	vmulpd ymm10,ymm1,ymm6
  b5b8a7:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  b5b8ac:	c5 3d 59 da          	vmulpd ymm11,ymm8,ymm2
  b5b8b0:	c4 42 fd bc d9       	vfnmadd231pd ymm11,ymm0,ymm9
  b5b8b5:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b5b8ba:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  b5b8be:	c4 e2 f5 b8 e7       	vfmadd231pd ymm4,ymm1,ymm7
  b5b8c3:	c5 bd 59 c0          	vmulpd ymm0,ymm8,ymm0
  b5b8c7:	c4 c2 ed b8 c1       	vfmadd231pd ymm0,ymm2,ymm9
  b5b8cc:	c5 dd 58 c8          	vaddpd ymm1,ymm4,ymm0
  b5b8d0:	c4 e2 7d 19 15 bf 91 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5191bf]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b5b8d7:	51 ff 
  b5b8d9:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  b5b8dd:	c4 e2 9d ac f3       	vfnmadd213pd ymm6,ymm12,ymm3
  b5b8e2:	c5 dd 5c c0          	vsubpd ymm0,ymm4,ymm0
  b5b8e6:	c4 e2 7d 19 25 31 93 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff519331]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b5b8ed:	51 ff 
  b5b8ef:	c5 fd 59 c4          	vmulpd ymm0,ymm0,ymm4
  b5b8f3:	c5 cd 58 f8          	vaddpd ymm7,ymm6,ymm0
  b5b8f7:	c4 e2 f5 ac d5       	vfnmadd213pd ymm2,ymm1,ymm5
  b5b8fc:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  b5b901:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  b5b905:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  b5b909:	c5 cd 5c c0          	vsubpd ymm0,ymm6,ymm0
  b5b90d:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  b5b911:	c5 9d 58 db          	vaddpd ymm3,ymm12,ymm3
  b5b915:	c5 d5 58 c9          	vaddpd ymm1,ymm5,ymm1
  b5b919:	c5 fd 28 25 3f b2 51 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff51b23f]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b5b920:	ff 
  b5b921:	62 f2 dd 28 7f d9    	vpermt2pd ymm3,ymm4,ymm1
  b5b927:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  b5b92b:	62 d2 dd 28 7f f8    	vpermt2pd ymm7,ymm4,ymm8
  b5b931:	c5 fd 11 7e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm7
  b5b936:	62 f2 dd 28 7f c2    	vpermt2pd ymm0,ymm4,ymm2
  b5b93c:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  b5b941:	c5 f8 77             	vzeroupper
  b5b944:	c3                   	ret
