
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aca700 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aca700:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  aca705:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aca70b:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  aca710:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  aca716:	c5 f8 10 3f          	vmovups xmm7,XMMWORD PTR [rdi]
  aca71a:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  aca71f:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  aca724:	62 e1 7c 08 10 87 48 	vmovups xmm16,XMMWORD PTR [rdi+0x48]
  aca72b:	00 00 00 
  aca72e:	c4 c3 7d 19 c2 01    	vextractf128 xmm10,ymm0,0x1
  aca734:	62 41 44 08 c6 ea 88 	vshufps xmm29,xmm7,xmm10,0x88
  aca73b:	c5 78 10 5f 60       	vmovups xmm11,XMMWORD PTR [rdi+0x60]
  aca740:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  aca745:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aca74b:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  aca751:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  aca757:	c4 c1 20 c6 e6 88    	vshufps xmm4,xmm11,xmm14,0x88
  aca75d:	62 61 14 20 5c d4    	vsubps ymm26,ymm29,ymm4
  aca763:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  aca76a:	00 
  aca76b:	c5 fb 10 87 a0 00 00 	vmovsd xmm0,QWORD PTR [rdi+0xa0]
  aca772:	00 
  aca773:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aca779:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  aca77f:	62 b3 7d 28 19 c1 01 	vextractf32x4 xmm17,ymm0,0x1
  aca786:	62 b1 1c 08 c6 f1 dd 	vshufps xmm6,xmm12,xmm17,0xdd
  aca78d:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  aca792:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aca798:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  aca79e:	62 b3 7d 28 19 c2 01 	vextractf32x4 xmm18,ymm0,0x1
  aca7a5:	62 31 54 08 c6 ca dd 	vshufps xmm9,xmm5,xmm18,0xdd
  aca7ac:	c4 41 4c 5c c1       	vsubps ymm8,ymm6,ymm9
  aca7b1:	62 c1 2c 20 5c f0    	vsubps ymm22,ymm26,ymm8
  aca7b7:	c5 7b 10 6f 58       	vmovsd xmm13,QWORD PTR [rdi+0x58]
  aca7bc:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  aca7c2:	c4 43 15 0c ef c0    	vblendps ymm13,ymm13,ymm15,0xc0
  aca7c8:	62 33 7d 28 19 eb 01 	vextractf32x4 xmm19,ymm13,0x1
  aca7cf:	62 31 7c 00 c6 eb 88 	vshufps xmm13,xmm16,xmm19,0x88
  aca7d6:	62 e1 7c 08 10 a7 a8 	vmovups xmm20,XMMWORD PTR [rdi+0xa8]
  aca7dd:	00 00 00 
  aca7e0:	62 e1 ff 08 10 6f 17 	vmovsd xmm21,QWORD PTR [rdi+0xb8]
  aca7e7:	62 b3 7d 28 18 c5 01 	vinsertf32x4 ymm0,ymm0,xmm21,0x1
  aca7ee:	c4 c3 7d 0c c7 c0    	vblendps ymm0,ymm0,ymm15,0xc0
  aca7f4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  aca7fa:	62 e1 5c 00 c6 e8 88 	vshufps xmm21,xmm20,xmm0,0x88
  aca801:	62 a1 14 28 5c fd    	vsubps ymm23,ymm13,ymm21
  aca807:	62 a1 7c 00 c6 c3 dd 	vshufps xmm16,xmm16,xmm19,0xdd
  aca80e:	62 f1 5c 00 c6 c0 dd 	vshufps xmm0,xmm20,xmm0,0xdd
  aca815:	62 e1 7c 20 5c d8    	vsubps ymm19,ymm16,ymm0
  aca81b:	62 a1 44 20 5c e3    	vsubps ymm20,ymm23,ymm19
  aca821:	62 62 7d 28 18 05 71 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5aab71]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  aca828:	ab 5a ff 
  aca82b:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  aca831:	62 61 ff 08 10 4f 05 	vmovsd xmm25,QWORD PTR [rdi+0x28]
  aca838:	62 93 7d 28 18 c9 01 	vinsertf32x4 ymm1,ymm0,xmm25,0x1
  aca83f:	c4 c3 75 0c cf c0    	vblendps ymm1,ymm1,ymm15,0xc0
  aca845:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  aca84b:	62 61 64 08 c6 c9 dd 	vshufps xmm25,xmm3,xmm1,0xdd
  aca852:	62 61 7c 08 10 9f 78 	vmovups xmm27,XMMWORD PTR [rdi+0x78]
  aca859:	00 00 00 
  aca85c:	62 61 ff 08 10 67 11 	vmovsd xmm28,QWORD PTR [rdi+0x88]
  aca863:	62 93 7d 28 18 d4 01 	vinsertf32x4 ymm2,ymm0,xmm28,0x1
  aca86a:	c4 c3 6d 0c d7 c0    	vblendps ymm2,ymm2,ymm15,0xc0
  aca870:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  aca876:	62 71 24 00 c6 fa dd 	vshufps xmm15,xmm27,xmm2,0xdd
  aca87d:	62 41 34 20 5c e7    	vsubps ymm28,ymm25,ymm15
  aca883:	c5 e0 c6 c9 88       	vshufps xmm1,xmm3,xmm1,0x88
  aca888:	62 f1 24 00 c6 d2 88 	vshufps xmm2,xmm27,xmm2,0x88
  aca88f:	62 61 74 28 5c da    	vsubps ymm27,ymm1,ymm2
  aca895:	62 91 1c 20 58 db    	vaddps ymm3,ymm28,ymm27
  aca89b:	62 01 64 28 59 f0    	vmulps ymm30,ymm3,ymm24
  aca8a1:	62 91 5c 20 5c de    	vsubps ymm3,ymm20,ymm30
  aca8a7:	c4 c1 40 c6 fa dd    	vshufps xmm7,xmm7,xmm10,0xdd
  aca8ad:	c4 41 20 c6 d6 dd    	vshufps xmm10,xmm11,xmm14,0xdd
  aca8b3:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  aca8b8:	62 b1 54 08 c6 ea 88 	vshufps xmm5,xmm5,xmm18,0x88
  aca8bf:	62 31 1c 08 c6 e1 88 	vshufps xmm12,xmm12,xmm17,0x88
  aca8c6:	c4 41 54 5c f4       	vsubps ymm14,ymm5,ymm12
  aca8cb:	62 c1 24 28 5c ce    	vsubps ymm17,ymm11,ymm14
  aca8d1:	62 81 24 20 5c d4    	vsubps ymm18,ymm27,ymm28
  aca8d7:	62 81 6c 20 59 d0    	vmulps ymm18,ymm18,ymm24
  aca8dd:	62 a1 64 20 58 df    	vaddps ymm19,ymm19,ymm23
  aca8e3:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  aca8e9:	62 a1 6c 20 58 fb    	vaddps ymm23,ymm18,ymm19
  aca8ef:	62 f1 14 20 58 e4    	vaddps ymm4,ymm29,ymm4
  aca8f5:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  aca8f9:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  aca8fd:	62 f1 7c 20 58 c0    	vaddps ymm0,ymm16,ymm0
  aca903:	62 51 34 20 58 ff    	vaddps ymm15,ymm25,ymm15
  aca909:	62 c1 7c 28 5c c7    	vsubps ymm16,ymm0,ymm15
  aca90f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  aca913:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  aca917:	c5 44 5c ce          	vsubps ymm9,ymm7,ymm6
  aca91b:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  aca91f:	62 b1 14 28 58 d5    	vaddps ymm2,ymm13,ymm21
  aca925:	c5 74 5c d2          	vsubps ymm10,ymm1,ymm2
  aca929:	62 11 3c 28 58 c2    	vaddps ymm8,ymm8,ymm26
  aca92f:	62 31 6c 20 5c eb    	vsubps ymm13,ymm18,ymm19
  aca935:	c4 41 24 58 de       	vaddps ymm11,ymm11,ymm14
  aca93a:	62 31 0c 20 58 f4    	vaddps ymm14,ymm30,ymm20
  aca940:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  aca944:	c5 f4 58 ca          	vaddps ymm1,ymm1,ymm2
  aca948:	c5 c4 58 d6          	vaddps ymm2,ymm7,ymm6
  aca94c:	c5 84 58 c0          	vaddps ymm0,ymm15,ymm0
  aca950:	62 f1 4c 20 58 eb    	vaddps ymm5,ymm22,ymm3
  aca956:	62 b1 74 20 58 f7    	vaddps ymm6,ymm17,ymm23
  aca95c:	62 d1 7c 20 58 fc    	vaddps ymm7,ymm16,ymm12
  aca962:	c4 41 34 58 fa       	vaddps ymm15,ymm9,ymm10
  aca967:	62 c1 3c 28 58 d5    	vaddps ymm18,ymm8,ymm13
  aca96d:	62 c1 24 28 58 de    	vaddps ymm19,ymm11,ymm14
  aca973:	62 e1 5c 28 58 e1    	vaddps ymm20,ymm4,ymm1
  aca979:	62 e1 6c 28 58 e8    	vaddps ymm21,ymm2,ymm0
  aca97f:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  aca983:	62 f3 55 20 18 c0 01 	vinsertf32x4 ymm0,ymm21,xmm0,0x1
  aca98a:	c4 c1 20 5c d6       	vsubps xmm2,xmm11,xmm14
  aca98f:	62 f3 65 20 18 d2 01 	vinsertf32x4 ymm2,ymm19,xmm2,0x1
  aca996:	c4 41 30 5c ca       	vsubps xmm9,xmm9,xmm10
  aca99b:	c4 43 05 18 c9 01    	vinsertf128 ymm9,ymm15,xmm9,0x1
  aca9a1:	62 31 74 00 5c d7    	vsubps xmm10,xmm17,xmm23
  aca9a7:	c4 c3 4d 18 f2 01    	vinsertf128 ymm6,ymm6,xmm10,0x1
  aca9ad:	c4 41 7d 15 d1       	vunpckhpd ymm10,ymm0,ymm9
  aca9b2:	c4 c1 7d 14 c1       	vunpcklpd ymm0,ymm0,ymm9
  aca9b7:	c5 6d 15 ce          	vunpckhpd ymm9,ymm2,ymm6
  aca9bb:	c4 41 2c c6 c9 88    	vshufps ymm9,ymm10,ymm9,0x88
  aca9c1:	c5 ed 14 d6          	vunpcklpd ymm2,ymm2,ymm6
  aca9c5:	c5 fc c6 f2 88       	vshufps ymm6,ymm0,ymm2,0x88
  aca9ca:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  aca9cf:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  aca9d4:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  aca9d9:	c4 c1 34 c6 d1 d8    	vshufps ymm2,ymm9,ymm9,0xd8
  aca9df:	c5 d8 5c c9          	vsubps xmm1,xmm4,xmm1
  aca9e3:	62 f3 5d 20 18 c9 01 	vinsertf32x4 ymm1,ymm20,xmm1,0x1
  aca9ea:	c4 c1 38 5c e5       	vsubps xmm4,xmm8,xmm13
  aca9ef:	62 f3 6d 20 18 e4 01 	vinsertf32x4 ymm4,ymm18,xmm4,0x1
  aca9f6:	62 31 1c 08 5c c0    	vsubps xmm8,xmm12,xmm16
  aca9fc:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  acaa02:	62 f1 4c 00 5c db    	vsubps xmm3,xmm22,xmm3
  acaa08:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  acaa0e:	c5 f5 15 ef          	vunpckhpd ymm5,ymm1,ymm7
  acaa12:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  acaa16:	c5 dd 15 fb          	vunpckhpd ymm7,ymm4,ymm3
  acaa1a:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  acaa1f:	c5 dd 14 db          	vunpcklpd ymm3,ymm4,ymm3
  acaa23:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  acaa28:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  acaa2d:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  acaa32:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  acaa37:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  acaa3c:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  acaa41:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  acaa46:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  acaa4d:	00 
  acaa4e:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  acaa55:	00 
  acaa56:	c5 74 59 d5          	vmulps ymm10,ymm1,ymm5
  acaa5a:	c4 62 7d b8 d7       	vfmadd231ps ymm10,ymm0,ymm7
  acaa5f:	c5 3c 59 db          	vmulps ymm11,ymm8,ymm3
  acaa63:	c4 42 6d b8 d9       	vfmadd231ps ymm11,ymm2,ymm9
  acaa68:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  acaa6d:	c4 62 7d 18 2d ea a9 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff5aa9ea]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  acaa74:	5a ff 
  acaa76:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  acaa7b:	c4 62 1d ac f4       	vfnmadd213ps ymm14,ymm12,ymm4
  acaa80:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  acaa84:	c4 e2 75 bc c7       	vfnmadd231ps ymm0,ymm1,ymm7
  acaa89:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  acaa8d:	c4 c2 65 bc c9       	vfnmadd231ps ymm1,ymm3,ymm9
  acaa92:	c4 e2 7d 18 15 39 a8 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5aa839]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  acaa99:	5a ff 
  acaa9b:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  acaa9f:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  acaaa3:	c5 8c 58 eb          	vaddps ymm5,ymm14,ymm3
  acaaa7:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  acaaab:	c4 62 7d ac ee       	vfnmadd213ps ymm13,ymm0,ymm6
  acaab0:	c4 c1 2c 5c cb       	vsubps ymm1,ymm10,ymm11
  acaab5:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  acaab9:	c5 94 5c d1          	vsubps ymm2,ymm13,ymm1
  acaabd:	c5 8c 5c db          	vsubps ymm3,ymm14,ymm3
  acaac1:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  acaac5:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  acaac9:	c5 cc 58 c0          	vaddps ymm0,ymm6,ymm0
  acaacd:	c5 fc 28 35 cb ad 5a 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff5aadcb]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  acaad4:	ff 
  acaad5:	c5 fc 28 fc          	vmovaps ymm7,ymm4
  acaad9:	62 f2 4d 28 7f f8    	vpermt2ps ymm7,ymm6,ymm0
  acaadf:	c5 7c 28 05 f9 c6 5a 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff5ac6f9]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  acaae6:	ff 
  acaae7:	62 f2 3d 28 7f e0    	vpermt2ps ymm4,ymm8,ymm0
  acaaed:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  acaaf1:	c5 fc 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm7
  acaaf6:	c5 fc 28 c3          	vmovaps ymm0,ymm3
  acaafa:	62 f2 4d 28 7f c1    	vpermt2ps ymm0,ymm6,ymm1
  acab00:	62 f2 3d 28 7f d9    	vpermt2ps ymm3,ymm8,ymm1
  acab06:	c5 fc 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm3
  acab0b:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  acab10:	62 f2 55 28 77 f2    	vpermi2ps ymm6,ymm5,ymm2
  acab16:	62 f2 3d 28 7f ea    	vpermt2ps ymm5,ymm8,ymm2
  acab1c:	c5 fc 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm5
  acab23:	00 
  acab24:	c5 fc 11 b6 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm6
  acab2b:	00 
  acab2c:	c5 f8 77             	vzeroupper
  acab2f:	c3                   	ret
