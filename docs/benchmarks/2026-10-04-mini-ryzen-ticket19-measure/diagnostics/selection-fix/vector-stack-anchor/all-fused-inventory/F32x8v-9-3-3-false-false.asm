
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ada880 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ada880:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  ada885:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ada88b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ada88f:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  ada895:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  ada899:	c5 f8 10 4f 18       	vmovups xmm1,XMMWORD PTR [rdi+0x18]
  ada89e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  ada8a3:	c4 e3 7d 19 c5 01    	vextractf128 xmm5,ymm0,0x1
  ada8a9:	c5 f0 c6 f5 88       	vshufps xmm6,xmm1,xmm5,0x88
  ada8ae:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  ada8b3:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ada8b9:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  ada8bf:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  ada8c5:	c5 58 c6 c7 88       	vshufps xmm8,xmm4,xmm7,0x88
  ada8ca:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  ada8cf:	c4 e2 7d 18 05 fc a9 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff59a9fc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ada8d6:	59 ff 
  ada8d8:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  ada8dc:	c5 f0 c6 ed dd       	vshufps xmm5,xmm1,xmm5,0xdd
  ada8e1:	c5 d8 c6 e7 dd       	vshufps xmm4,xmm4,xmm7,0xdd
  ada8e6:	c5 d4 58 fc          	vaddps ymm7,ymm5,ymm4
  ada8ea:	c5 fb 10 4f 10       	vmovsd xmm1,QWORD PTR [rdi+0x10]
  ada8ef:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  ada8f5:	c4 e3 75 0c ca c0    	vblendps ymm1,ymm1,ymm2,0xc0
  ada8fb:	c4 c3 7d 19 ca 01    	vextractf128 xmm10,ymm1,0x1
  ada901:	c4 41 60 c6 da dd    	vshufps xmm11,xmm3,xmm10,0xdd
  ada907:	c4 e2 7d 18 0d 50 ab 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff59ab50]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ada90e:	59 ff 
  ada910:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  ada914:	c4 42 45 ac e3       	vfnmadd213ps ymm12,ymm7,ymm11
  ada919:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ada91d:	c4 c1 60 c6 da 88    	vshufps xmm3,xmm3,xmm10,0x88
  ada923:	c5 60 58 c6          	vaddps xmm8,xmm3,xmm6
  ada927:	c4 e2 4d bc d9       	vfnmadd231ps ymm3,ymm6,ymm1
  ada92c:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  ada930:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  ada934:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  ada938:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  ada93c:	c5 bd 15 e3          	vunpckhpd ymm4,ymm8,ymm3
  ada940:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  ada944:	c4 e3 55 0c f2 cc    	vblendps ymm6,ymm5,ymm2,0xcc
  ada94a:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ada94f:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  ada954:	c5 e4 c6 ee 88       	vshufps ymm5,ymm3,ymm6,0x88
  ada959:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ada95e:	c5 e4 c6 de dd       	vshufps ymm3,ymm3,ymm6,0xdd
  ada963:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ada968:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ada96d:	c5 a0 58 f7          	vaddps xmm6,xmm11,xmm7
  ada971:	c4 c1 18 5c f9       	vsubps xmm7,xmm12,xmm9
  ada976:	c4 41 30 58 c4       	vaddps xmm8,xmm9,xmm12
  ada97b:	c4 41 4d 15 c8       	vunpckhpd ymm9,ymm6,ymm8
  ada980:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  ada985:	c4 e3 45 0c d2 cc    	vblendps ymm2,ymm7,ymm2,0xcc
  ada98b:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ada990:	c5 b4 c6 ff 88       	vshufps ymm7,ymm9,ymm7,0x88
  ada995:	c5 4c c6 c2 88       	vshufps ymm8,ymm6,ymm2,0x88
  ada99a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ada9a0:	c5 cc c6 d2 dd       	vshufps ymm2,ymm6,ymm2,0xdd
  ada9a5:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ada9aa:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  ada9af:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  ada9b4:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  ada9b9:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  ada9c0:	00 
  ada9c1:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  ada9c8:	00 
  ada9c9:	c5 64 59 e7          	vmulps ymm12,ymm3,ymm7
  ada9cd:	c4 42 6d bc e1       	vfnmadd231ps ymm12,ymm2,ymm9
  ada9d2:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  ada9d6:	c4 42 4d bc eb       	vfnmadd231ps ymm13,ymm6,ymm11
  ada9db:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  ada9e0:	c5 ec 59 d7          	vmulps ymm2,ymm2,ymm7
  ada9e4:	c4 c2 65 b8 d1       	vfmadd231ps ymm2,ymm3,ymm9
  ada9e9:	c5 ac 59 de          	vmulps ymm3,ymm10,ymm6
  ada9ed:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  ada9f2:	c5 ec 58 e3          	vaddps ymm4,ymm2,ymm3
  ada9f6:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  ada9fa:	c4 e2 0d ac f5       	vfnmadd213ps ymm6,ymm14,ymm5
  ada9ff:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  adaa03:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  adaa07:	c4 c2 5d ac c8       	vfnmadd213ps ymm1,ymm4,ymm8
  adaa0c:	c4 c1 1c 5c dd       	vsubps ymm3,ymm12,ymm13
  adaa11:	c5 e4 59 c0          	vmulps ymm0,ymm3,ymm0
  adaa15:	c5 f4 5c d8          	vsubps ymm3,ymm1,ymm0
  adaa19:	c5 f4 58 c0          	vaddps ymm0,ymm1,ymm0
  adaa1d:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  adaa21:	c5 88 58 e5          	vaddps xmm4,xmm14,xmm5
  adaa25:	c5 fc 28 2d 93 d8 59 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff59d893]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  adaa2c:	ff 
  adaa2d:	62 f2 55 28 7f e1    	vpermt2ps ymm4,ymm5,ymm1
  adaa33:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  adaa37:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  adaa3d:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  adaa42:	c5 c8 58 ca          	vaddps xmm1,xmm6,xmm2
  adaa46:	62 f2 55 28 7f cb    	vpermt2ps ymm1,ymm5,ymm3
  adaa4c:	c5 f8 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm1
  adaa51:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  adaa57:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  adaa5c:	c5 c8 5c ca          	vsubps xmm1,xmm6,xmm2
  adaa60:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  adaa66:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  adaa6b:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  adaa71:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  adaa76:	c5 f8 77             	vzeroupper
  adaa79:	c3                   	ret
