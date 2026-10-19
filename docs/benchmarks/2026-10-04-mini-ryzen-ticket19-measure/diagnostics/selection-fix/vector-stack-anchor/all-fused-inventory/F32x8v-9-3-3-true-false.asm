
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac0680 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac0680:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  ac0685:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac068b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  ac068f:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  ac0695:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  ac0699:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  ac069e:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  ac06a3:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac06a9:	c5 d8 c6 f0 dd       	vshufps xmm6,xmm4,xmm0,0xdd
  ac06ae:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  ac06b3:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  ac06b9:	c4 e3 75 0c ca c0    	vblendps ymm1,ymm1,ymm2,0xc0
  ac06bf:	c4 e3 7d 19 cf 01    	vextractf128 xmm7,ymm1,0x1
  ac06c5:	c5 50 c6 c7 dd       	vshufps xmm8,xmm5,xmm7,0xdd
  ac06ca:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  ac06cf:	c4 e2 7d 18 0d fc 4b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b4bfc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac06d6:	5b ff 
  ac06d8:	c5 34 59 c9          	vmulps ymm9,ymm9,ymm1
  ac06dc:	c5 d8 c6 e0 88       	vshufps xmm4,xmm4,xmm0,0x88
  ac06e1:	c5 d0 c6 ef 88       	vshufps xmm5,xmm5,xmm7,0x88
  ac06e6:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  ac06ea:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  ac06ef:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ac06f5:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  ac06fb:	c4 c3 7d 19 c2 01    	vextractf128 xmm10,ymm0,0x1
  ac0701:	c4 41 60 c6 da 88    	vshufps xmm11,xmm3,xmm10,0x88
  ac0707:	c4 e2 7d 18 05 50 4d 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b4d50]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac070e:	5b ff 
  ac0710:	c5 7c 28 e0          	vmovaps ymm12,ymm0
  ac0714:	c4 42 45 ac e3       	vfnmadd213ps ymm12,ymm7,ymm11
  ac0719:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  ac071d:	c4 c1 60 c6 da dd    	vshufps xmm3,xmm3,xmm10,0xdd
  ac0723:	c5 60 58 c6          	vaddps xmm8,xmm3,xmm6
  ac0727:	c4 e2 4d bc d8       	vfnmadd231ps ymm3,ymm6,ymm0
  ac072c:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  ac0730:	c5 dc 59 e1          	vmulps ymm4,ymm4,ymm1
  ac0734:	c5 e0 58 ec          	vaddps xmm5,xmm3,xmm4
  ac0738:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  ac073c:	c5 bd 15 e3          	vunpckhpd ymm4,ymm8,ymm3
  ac0740:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  ac0744:	c4 e3 55 0c f2 cc    	vblendps ymm6,ymm5,ymm2,0xcc
  ac074a:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  ac074f:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  ac0754:	c5 e4 c6 ee 88       	vshufps ymm5,ymm3,ymm6,0x88
  ac0759:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ac075e:	c5 e4 c6 de dd       	vshufps ymm3,ymm3,ymm6,0xdd
  ac0763:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac0768:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ac076d:	c5 a0 58 f7          	vaddps xmm6,xmm11,xmm7
  ac0771:	c4 c1 18 5c f9       	vsubps xmm7,xmm12,xmm9
  ac0776:	c4 41 30 58 c4       	vaddps xmm8,xmm9,xmm12
  ac077b:	c4 41 4d 15 c8       	vunpckhpd ymm9,ymm6,ymm8
  ac0780:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  ac0785:	c4 e3 45 0c d2 cc    	vblendps ymm2,ymm7,ymm2,0xcc
  ac078b:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  ac0790:	c5 b4 c6 ff 88       	vshufps ymm7,ymm9,ymm7,0x88
  ac0795:	c5 4c c6 c2 88       	vshufps ymm8,ymm6,ymm2,0x88
  ac079a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ac07a0:	c5 cc c6 d2 dd       	vshufps ymm2,ymm6,ymm2,0xdd
  ac07a5:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac07aa:	c5 c4 c6 f7 d8       	vshufps ymm6,ymm7,ymm7,0xd8
  ac07af:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  ac07b4:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  ac07b9:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  ac07c0:	00 
  ac07c1:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  ac07c8:	00 
  ac07c9:	c5 64 59 e7          	vmulps ymm12,ymm3,ymm7
  ac07cd:	c4 42 6d bc e1       	vfnmadd231ps ymm12,ymm2,ymm9
  ac07d2:	c5 2c 59 ec          	vmulps ymm13,ymm10,ymm4
  ac07d6:	c4 42 4d bc eb       	vfnmadd231ps ymm13,ymm6,ymm11
  ac07db:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  ac07e0:	c5 ec 59 d7          	vmulps ymm2,ymm2,ymm7
  ac07e4:	c4 c2 65 b8 d1       	vfmadd231ps ymm2,ymm3,ymm9
  ac07e9:	c5 ac 59 de          	vmulps ymm3,ymm10,ymm6
  ac07ed:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  ac07f2:	c5 ec 58 e3          	vaddps ymm4,ymm2,ymm3
  ac07f6:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  ac07fa:	c4 e2 0d ac f5       	vfnmadd213ps ymm6,ymm14,ymm5
  ac07ff:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  ac0803:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  ac0807:	c5 cc 58 da          	vaddps ymm3,ymm6,ymm2
  ac080b:	c4 c2 5d ac c0       	vfnmadd213ps ymm0,ymm4,ymm8
  ac0810:	c4 c1 1c 5c fd       	vsubps ymm7,ymm12,ymm13
  ac0815:	c5 c4 59 c9          	vmulps ymm1,ymm7,ymm1
  ac0819:	c5 cc 5c d2          	vsubps ymm2,ymm6,ymm2
  ac081d:	c5 8c 58 ed          	vaddps ymm5,ymm14,ymm5
  ac0821:	c5 b8 58 e4          	vaddps xmm4,xmm8,xmm4
  ac0825:	c5 fc 28 35 93 7a 5b 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff5b7a93]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac082c:	ff 
  ac082d:	62 f2 4d 28 7f e5    	vpermt2ps ymm4,ymm6,ymm5
  ac0833:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  ac0837:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  ac083d:	c5 f8 13 66 10       	vmovlps QWORD PTR [rsi+0x10],xmm4
  ac0842:	c5 f8 5c e1          	vsubps xmm4,xmm0,xmm1
  ac0846:	62 f2 4d 28 7f e3    	vpermt2ps ymm4,ymm6,ymm3
  ac084c:	c5 f8 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm4
  ac0851:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  ac0857:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  ac085c:	c5 f8 58 c1          	vaddps xmm0,xmm0,xmm1
  ac0860:	62 f2 4d 28 7f c2    	vpermt2ps ymm0,ymm6,ymm2
  ac0866:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  ac086b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac0871:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  ac0876:	c5 f8 77             	vzeroupper
  ac0879:	c3                   	ret
