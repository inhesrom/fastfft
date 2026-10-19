
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab7540 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab7540:	c5 7c 10 07          	vmovups ymm8,YMMWORD PTR [rdi]
  ab7544:	c5 78 10 4f 20       	vmovups xmm9,XMMWORD PTR [rdi+0x20]
  ab7549:	c4 c1 3c c6 c1 88    	vshufps ymm0,ymm8,ymm9,0x88
  ab754f:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  ab7555:	c5 7c 10 97 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0xc0]
  ab755c:	00 
  ab755d:	c5 78 10 9f e0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xe0]
  ab7564:	00 
  ab7565:	c4 c1 2c c6 c3 88    	vshufps ymm0,ymm10,ymm11,0x88
  ab756b:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  ab7571:	c5 e4 5c c6          	vsubps ymm0,ymm3,ymm6
  ab7575:	c5 7c 10 a7 20 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x120]
  ab757c:	00 
  ab757d:	c5 78 10 af 40 01 00 	vmovups xmm13,XMMWORD PTR [rdi+0x140]
  ab7584:	00 
  ab7585:	c4 c1 1c c6 cd dd    	vshufps ymm1,ymm12,ymm13,0xdd
  ab758b:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  ab7591:	c5 7c 10 77 60       	vmovups ymm14,YMMWORD PTR [rdi+0x60]
  ab7596:	c5 78 10 bf 80 00 00 	vmovups xmm15,XMMWORD PTR [rdi+0x80]
  ab759d:	00 
  ab759e:	c4 c1 0c c6 cf dd    	vshufps ymm1,ymm14,ymm15,0xdd
  ab75a4:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  ab75aa:	c5 dc 5c ef          	vsubps ymm5,ymm4,ymm7
  ab75ae:	c5 fc 5c cd          	vsubps ymm1,ymm0,ymm5
  ab75b2:	c5 fc 10 97 90 00 00 	vmovups ymm2,YMMWORD PTR [rdi+0x90]
  ab75b9:	00 
  ab75ba:	62 e1 7c 08 10 47 0b 	vmovups xmm16,XMMWORD PTR [rdi+0xb0]
  ab75c1:	62 a1 6c 28 c6 c8 88 	vshufps ymm17,ymm2,ymm16,0x88
  ab75c8:	62 a3 fd 28 01 c9 d8 	vpermpd ymm17,ymm17,0xd8
  ab75cf:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  ab75d6:	01 00 00 
  ab75d9:	62 e1 7c 08 10 5f 17 	vmovups xmm19,XMMWORD PTR [rdi+0x170]
  ab75e0:	62 a1 6c 20 c6 e3 88 	vshufps ymm20,ymm18,ymm19,0x88
  ab75e7:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  ab75ee:	62 a1 74 20 5c ec    	vsubps ymm21,ymm17,ymm20
  ab75f4:	62 b1 6c 28 c6 d0 dd 	vshufps ymm2,ymm2,ymm16,0xdd
  ab75fb:	62 e3 fd 28 01 c2 d8 	vpermpd ymm16,ymm2,0xd8
  ab7602:	62 b1 6c 20 c6 d3 dd 	vshufps ymm2,ymm18,ymm19,0xdd
  ab7609:	62 e3 fd 28 01 d2 d8 	vpermpd ymm18,ymm2,0xd8
  ab7610:	62 a1 7c 20 5c da    	vsubps ymm19,ymm16,ymm18
  ab7616:	62 b1 54 20 5c d3    	vsubps ymm2,ymm21,ymm19
  ab761c:	62 e2 7d 28 18 35 76 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff5bdd76]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ab7623:	dd 5b ff 
  ab7626:	62 a1 6c 28 59 fe    	vmulps ymm23,ymm2,ymm22
  ab762c:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  ab7631:	62 61 7c 08 10 47 05 	vmovups xmm24,XMMWORD PTR [rdi+0x50]
  ab7638:	62 01 6c 28 c6 c8 dd 	vshufps ymm25,ymm2,ymm24,0xdd
  ab763f:	62 03 fd 28 01 c9 d8 	vpermpd ymm25,ymm25,0xd8
  ab7646:	62 61 7c 28 10 97 f0 	vmovups ymm26,YMMWORD PTR [rdi+0xf0]
  ab764d:	00 00 00 
  ab7650:	62 61 7c 08 10 5f 11 	vmovups xmm27,XMMWORD PTR [rdi+0x110]
  ab7657:	62 01 2c 20 c6 e3 dd 	vshufps ymm28,ymm26,ymm27,0xdd
  ab765e:	62 03 fd 28 01 e4 d8 	vpermpd ymm28,ymm28,0xd8
  ab7665:	62 01 34 20 5c ec    	vsubps ymm29,ymm25,ymm28
  ab766b:	62 91 6c 28 c6 d0 88 	vshufps ymm2,ymm2,ymm24,0x88
  ab7672:	62 63 fd 28 01 c2 d8 	vpermpd ymm24,ymm2,0xd8
  ab7679:	62 91 2c 20 c6 d3 88 	vshufps ymm2,ymm26,ymm27,0x88
  ab7680:	62 63 fd 28 01 d2 d8 	vpermpd ymm26,ymm2,0xd8
  ab7687:	62 01 3c 20 5c da    	vsubps ymm27,ymm24,ymm26
  ab768d:	62 91 14 20 58 d3    	vaddps ymm2,ymm29,ymm27
  ab7693:	62 21 6c 28 59 f6    	vmulps ymm30,ymm2,ymm22
  ab7699:	62 01 44 20 5c fe    	vsubps ymm31,ymm23,ymm30
  ab769f:	62 91 74 28 5c d7    	vsubps ymm2,ymm1,ymm31
  ab76a5:	c4 41 3c c6 c1 dd    	vshufps ymm8,ymm8,ymm9,0xdd
  ab76ab:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  ab76b1:	c4 41 2c c6 cb dd    	vshufps ymm9,ymm10,ymm11,0xdd
  ab76b7:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ab76bd:	c4 41 3c 5c d1       	vsubps ymm10,ymm8,ymm9
  ab76c2:	c4 41 0c c6 df 88    	vshufps ymm11,ymm14,ymm15,0x88
  ab76c8:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  ab76ce:	c4 41 1c c6 e5 88    	vshufps ymm12,ymm12,ymm13,0x88
  ab76d4:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  ab76da:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  ab76df:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  ab76e4:	62 11 24 20 5c fd    	vsubps ymm15,ymm27,ymm29
  ab76ea:	62 31 04 28 59 fe    	vmulps ymm15,ymm15,ymm22
  ab76f0:	62 a1 64 20 58 dd    	vaddps ymm19,ymm19,ymm21
  ab76f6:	62 a1 64 20 59 de    	vmulps ymm19,ymm19,ymm22
  ab76fc:	62 a1 04 28 58 eb    	vaddps ymm21,ymm15,ymm19
  ab7702:	62 a1 0c 28 5c f5    	vsubps ymm22,ymm14,ymm21
  ab7708:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  ab770c:	c4 41 24 58 dc       	vaddps ymm11,ymm11,ymm12
  ab7711:	c4 41 64 5c e3       	vsubps ymm12,ymm3,ymm11
  ab7716:	62 a1 7c 20 58 c2    	vaddps ymm16,ymm16,ymm18
  ab771c:	62 81 34 20 58 d4    	vaddps ymm18,ymm25,ymm28
  ab7722:	62 21 7c 20 5c ca    	vsubps ymm25,ymm16,ymm18
  ab7728:	62 91 1c 28 5c f1    	vsubps ymm6,ymm12,ymm25
  ab772e:	c4 41 3c 58 c1       	vaddps ymm8,ymm8,ymm9
  ab7733:	c5 c4 58 e4          	vaddps ymm4,ymm7,ymm4
  ab7737:	c5 bc 5c fc          	vsubps ymm7,ymm8,ymm4
  ab773b:	62 11 3c 20 58 ca    	vaddps ymm9,ymm24,ymm26
  ab7741:	62 a1 74 20 58 cc    	vaddps ymm17,ymm17,ymm20
  ab7747:	62 a1 34 28 5c e1    	vsubps ymm20,ymm9,ymm17
  ab774d:	62 21 44 28 5c c4    	vsubps ymm24,ymm7,ymm20
  ab7753:	c5 d4 58 c0          	vaddps ymm0,ymm5,ymm0
  ab7757:	62 b1 04 28 5c eb    	vsubps ymm5,ymm15,ymm19
  ab775d:	c5 7c 5c fd          	vsubps ymm15,ymm0,ymm5
  ab7761:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  ab7766:	62 31 0c 20 58 ef    	vaddps ymm13,ymm30,ymm23
  ab776c:	62 c1 2c 28 5c dd    	vsubps ymm19,ymm10,ymm13
  ab7772:	c5 a4 58 db          	vaddps ymm3,ymm11,ymm3
  ab7776:	62 31 34 28 58 c9    	vaddps ymm9,ymm9,ymm17
  ab777c:	c4 41 64 5c d9       	vsubps ymm11,ymm3,ymm9
  ab7781:	c5 bc 58 e4          	vaddps ymm4,ymm8,ymm4
  ab7785:	62 31 6c 20 58 c0    	vaddps ymm8,ymm18,ymm16
  ab778b:	62 c1 5c 28 5c c0    	vsubps ymm16,ymm4,ymm8
  ab7791:	62 81 74 28 58 cf    	vaddps ymm17,ymm1,ymm31
  ab7797:	62 b1 0c 28 58 cd    	vaddps ymm1,ymm14,ymm21
  ab779d:	62 51 34 20 58 e4    	vaddps ymm12,ymm25,ymm12
  ab77a3:	62 b1 44 28 58 fc    	vaddps ymm7,ymm7,ymm20
  ab77a9:	c5 fc 58 ed          	vaddps ymm5,ymm0,ymm5
  ab77ad:	c4 c1 2c 58 c5       	vaddps ymm0,ymm10,ymm13
  ab77b2:	c5 34 58 cb          	vaddps ymm9,ymm9,ymm3
  ab77b6:	c5 bc 58 dc          	vaddps ymm3,ymm8,ymm4
  ab77ba:	62 b3 65 28 18 e0 01 	vinsertf32x4 ymm4,ymm3,xmm16,0x1
  ab77c1:	62 b3 e5 28 23 d8 03 	vshuff64x2 ymm3,ymm3,ymm16,0x3
  ab77c8:	62 33 7d 28 18 c3 01 	vinsertf32x4 ymm8,ymm0,xmm19,0x1
  ab77cf:	62 b3 fd 28 23 c3 03 	vshuff64x2 ymm0,ymm0,ymm19,0x3
  ab77d6:	62 13 45 28 18 d0 01 	vinsertf32x4 ymm10,ymm7,xmm24,0x1
  ab77dd:	62 93 c5 28 23 f8 03 	vshuff64x2 ymm7,ymm7,ymm24,0x3
  ab77e4:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  ab77e8:	62 b3 75 28 18 de 01 	vinsertf32x4 ymm3,ymm1,xmm22,0x1
  ab77ef:	62 b3 f5 28 23 ce 03 	vshuff64x2 ymm1,ymm1,ymm22,0x3
  ab77f6:	c5 7d 14 e9          	vunpcklpd ymm13,ymm0,ymm1
  ab77fa:	c4 c1 5d 15 ca       	vunpckhpd ymm1,ymm4,ymm10
  ab77ff:	c4 c1 5d 14 e2       	vunpcklpd ymm4,ymm4,ymm10
  ab7804:	c5 3d 15 d3          	vunpckhpd ymm10,ymm8,ymm3
  ab7808:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  ab780c:	c5 dc c6 c3 88       	vshufps ymm0,ymm4,ymm3,0x88
  ab7811:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ab7816:	c5 dc c6 db dd       	vshufps ymm3,ymm4,ymm3,0xdd
  ab781b:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ab7820:	c4 c1 74 c6 e2 88    	vshufps ymm4,ymm1,ymm10,0x88
  ab7826:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  ab782b:	c4 c1 74 c6 ca dd    	vshufps ymm1,ymm1,ymm10,0xdd
  ab7831:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ab7836:	c4 c1 44 c6 e5 88    	vshufps ymm4,ymm7,ymm13,0x88
  ab783c:	c5 5c c6 d4 d8       	vshufps ymm10,ymm4,ymm4,0xd8
  ab7841:	c4 c1 44 c6 e5 dd    	vshufps ymm4,ymm7,ymm13,0xdd
  ab7847:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  ab784c:	c4 c3 35 18 fb 01    	vinsertf128 ymm7,ymm9,xmm11,0x1
  ab7852:	c4 43 35 06 cb 31    	vperm2f128 ymm9,ymm9,ymm11,0x31
  ab7858:	c4 43 55 18 df 01    	vinsertf128 ymm11,ymm5,xmm15,0x1
  ab785e:	c4 c3 55 06 ef 31    	vperm2f128 ymm5,ymm5,ymm15,0x31
  ab7864:	c4 63 1d 18 ee 01    	vinsertf128 ymm13,ymm12,xmm6,0x1
  ab786a:	c4 e3 1d 06 f6 31    	vperm2f128 ymm6,ymm12,ymm6,0x31
  ab7870:	c5 b5 14 f6          	vunpcklpd ymm6,ymm9,ymm6
  ab7874:	62 73 75 20 18 ca 01 	vinsertf32x4 ymm9,ymm17,xmm2,0x1
  ab787b:	62 f3 f5 20 23 d2 03 	vshuff64x2 ymm2,ymm17,ymm2,0x3
  ab7882:	c5 55 14 e2          	vunpcklpd ymm12,ymm5,ymm2
  ab7886:	c4 c1 45 15 ed       	vunpckhpd ymm5,ymm7,ymm13
  ab788b:	c4 c1 45 14 fd       	vunpcklpd ymm7,ymm7,ymm13
  ab7890:	c4 41 25 15 e9       	vunpckhpd ymm13,ymm11,ymm9
  ab7895:	c4 41 25 14 c9       	vunpcklpd ymm9,ymm11,ymm9
  ab789a:	c4 c1 44 c6 d1 88    	vshufps ymm2,ymm7,ymm9,0x88
  ab78a0:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ab78a5:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  ab78ab:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ab78b0:	c4 41 54 c6 cd 88    	vshufps ymm9,ymm5,ymm13,0x88
  ab78b6:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab78bc:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  ab78c2:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ab78c7:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  ab78cd:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  ab78d3:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  ab78d9:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ab78de:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  ab78e3:	c5 7c 10 6a 60       	vmovups ymm13,YMMWORD PTR [rdx+0x60]
  ab78e8:	c5 7c 10 b2 80 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0x80]
  ab78ef:	00 
  ab78f0:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  ab78f7:	00 
  ab78f8:	62 c1 3c 28 59 c6    	vmulps ymm16,ymm8,ymm14
  ab78fe:	62 c2 35 28 bc c7    	vfnmadd231ps ymm16,ymm9,ymm15
  ab7904:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  ab790b:	62 e1 7c 28 10 52 08 	vmovups ymm18,YMMWORD PTR [rdx+0x100]
  ab7912:	62 a1 2c 28 59 da    	vmulps ymm19,ymm10,ymm18
  ab7918:	62 a2 25 28 bc d9    	vfnmadd231ps ymm19,ymm11,ymm17
  ab791e:	62 e2 7d 28 18 25 ac 	vbroadcastss ymm20,DWORD PTR [rip+0xffffffffff5bd9ac]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab7925:	d9 5b ff 
  ab7928:	62 a1 7c 20 5c eb    	vsubps ymm21,ymm16,ymm19
  ab792e:	62 a1 54 20 59 ec    	vmulps ymm21,ymm21,ymm20
  ab7934:	c4 41 34 59 ce       	vmulps ymm9,ymm9,ymm14
  ab7939:	c4 42 3d b8 cf       	vfmadd231ps ymm9,ymm8,ymm15
  ab793e:	62 31 24 28 59 c2    	vmulps ymm8,ymm11,ymm18
  ab7944:	62 32 2d 28 b8 c1    	vfmadd231ps ymm8,ymm10,ymm17
  ab794a:	c4 62 7d 18 15 0d db 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5bdb0d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab7951:	5b ff 
  ab7953:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  ab7958:	c4 41 7c 28 f2       	vmovaps ymm14,ymm10
  ab795d:	c4 62 25 ac f2       	vfnmadd213ps ymm14,ymm11,ymm2
  ab7962:	62 51 54 20 58 fe    	vaddps ymm15,ymm21,ymm14
  ab7968:	62 e1 7c 28 10 4a 0b 	vmovups ymm17,YMMWORD PTR [rdx+0x160]
  ab796f:	62 e1 7c 28 10 52 0a 	vmovups ymm18,YMMWORD PTR [rdx+0x140]
  ab7976:	62 a1 4c 28 59 f2    	vmulps ymm22,ymm6,ymm18
  ab797c:	62 a2 5d 28 b8 f1    	vfmadd231ps ymm22,ymm4,ymm17
  ab7982:	62 c1 44 28 59 fc    	vmulps ymm23,ymm7,ymm12
  ab7988:	62 c2 65 28 b8 fd    	vfmadd231ps ymm23,ymm3,ymm13
  ab798e:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  ab7994:	62 61 7c 28 10 4a 07 	vmovups ymm25,YMMWORD PTR [rdx+0xe0]
  ab799b:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  ab79a2:	62 01 54 28 59 da    	vmulps ymm27,ymm5,ymm26
  ab79a8:	62 02 75 28 b8 d9    	vfmadd231ps ymm27,ymm1,ymm25
  ab79ae:	62 41 7c 28 28 e2    	vmovaps ymm28,ymm10
  ab79b4:	62 02 3d 20 ac e3    	vfnmadd213ps ymm28,ymm24,ymm27
  ab79ba:	62 b1 5c 28 59 e2    	vmulps ymm4,ymm4,ymm18
  ab79c0:	62 b2 4d 28 bc e1    	vfnmadd231ps ymm4,ymm6,ymm17
  ab79c6:	c5 9c 59 f3          	vmulps ymm6,ymm12,ymm3
  ab79ca:	c4 c2 45 bc f5       	vfnmadd231ps ymm6,ymm7,ymm13
  ab79cf:	c5 dc 5c de          	vsubps ymm3,ymm4,ymm6
  ab79d3:	62 b1 64 28 59 fc    	vmulps ymm7,ymm3,ymm20
  ab79d9:	62 71 1c 20 58 e7    	vaddps ymm12,ymm28,ymm7
  ab79df:	c4 c1 04 5c dc       	vsubps ymm3,ymm15,ymm12
  ab79e4:	62 31 7c 20 58 eb    	vaddps ymm13,ymm16,ymm19
  ab79ea:	62 c1 7c 28 28 c2    	vmovaps ymm16,ymm10
  ab79f0:	62 e2 15 28 ac c0    	vfnmadd213ps ymm16,ymm13,ymm0
  ab79f6:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  ab79fb:	62 31 3c 28 59 c4    	vmulps ymm8,ymm8,ymm20
  ab7a01:	62 51 7c 20 5c c8    	vsubps ymm9,ymm16,ymm8
  ab7a07:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  ab7a0b:	62 91 74 28 59 ca    	vmulps ymm1,ymm1,ymm26
  ab7a11:	62 92 55 28 bc c9    	vfnmadd231ps ymm1,ymm5,ymm25
  ab7a17:	c4 62 5d ac d1       	vfnmadd213ps ymm10,ymm4,ymm1
  ab7a1c:	62 b1 4c 20 5c ef    	vsubps ymm5,ymm22,ymm23
  ab7a22:	62 b1 54 28 59 ec    	vmulps ymm5,ymm5,ymm20
  ab7a28:	c5 ac 5c f5          	vsubps ymm6,ymm10,ymm5
  ab7a2c:	62 e1 34 28 5c ce    	vsubps ymm17,ymm9,ymm6
  ab7a32:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  ab7a38:	62 f1 1c 20 5c ff    	vsubps ymm7,ymm28,ymm7
  ab7a3e:	62 e1 0c 28 58 d7    	vaddps ymm18,ymm14,ymm7
  ab7a44:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  ab7a4a:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  ab7a4e:	c5 3c 58 d5          	vaddps ymm10,ymm8,ymm5
  ab7a52:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  ab7a56:	62 11 24 20 58 d8    	vaddps ymm11,ymm27,ymm24
  ab7a5c:	62 c1 6c 28 5c c3    	vsubps ymm16,ymm2,ymm11
  ab7a62:	c5 94 58 c0          	vaddps ymm0,ymm13,ymm0
  ab7a66:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  ab7a6a:	c5 fc 5c e1          	vsubps ymm4,ymm0,ymm1
  ab7a6e:	c4 41 04 58 e4       	vaddps ymm12,ymm15,ymm12
  ab7a73:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  ab7a77:	c5 8c 5c ff          	vsubps ymm7,ymm14,ymm7
  ab7a7b:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  ab7a7f:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  ab7a83:	c5 fc 58 c1          	vaddps ymm0,ymm0,ymm1
  ab7a87:	c5 fc 28 0d 11 de 5b 	vmovaps ymm1,YMMWORD PTR [rip+0xffffffffff5bde11]        # 758a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d50>
  ab7a8e:	ff 
  ab7a8f:	c5 7c 28 c2          	vmovaps ymm8,ymm2
  ab7a93:	62 72 75 28 7f c0    	vpermt2ps ymm8,ymm1,ymm0
  ab7a99:	c5 7c 28 0d 3f f7 5b 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff5bf73f]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab7aa0:	ff 
  ab7aa1:	62 f2 35 28 7f d0    	vpermt2ps ymm2,ymm9,ymm0
  ab7aa7:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  ab7aab:	c5 7c 11 46 20       	vmovups YMMWORD PTR [rsi+0x20],ymm8
  ab7ab0:	c5 fc 28 c7          	vmovaps ymm0,ymm7
  ab7ab4:	62 f2 75 28 7f c5    	vpermt2ps ymm0,ymm1,ymm5
  ab7aba:	62 f2 35 28 7f fd    	vpermt2ps ymm7,ymm9,ymm5
  ab7ac0:	c5 fc 11 7e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm7
  ab7ac5:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  ab7aca:	c5 7c 29 e0          	vmovaps ymm0,ymm12
  ab7ace:	62 f2 75 28 7f c6    	vpermt2ps ymm0,ymm1,ymm6
  ab7ad4:	62 72 35 28 7f e6    	vpermt2ps ymm12,ymm9,ymm6
  ab7ada:	c5 7c 11 a6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm12
  ab7ae1:	00 
  ab7ae2:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  ab7ae9:	00 
  ab7aea:	62 b1 7c 28 28 c0    	vmovaps ymm0,ymm16
  ab7af0:	62 f2 75 28 7f c4    	vpermt2ps ymm0,ymm1,ymm4
  ab7af6:	62 e2 35 28 7f c4    	vpermt2ps ymm16,ymm9,ymm4
  ab7afc:	62 e1 7c 28 11 46 06 	vmovups YMMWORD PTR [rsi+0xc0],ymm16
  ab7b03:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  ab7b0a:	00 
  ab7b0b:	62 b1 7c 28 28 c2    	vmovaps ymm0,ymm18
  ab7b11:	62 d2 75 28 7f c2    	vpermt2ps ymm0,ymm1,ymm10
  ab7b17:	62 c2 35 28 7f d2    	vpermt2ps ymm18,ymm9,ymm10
  ab7b1d:	62 e1 7c 28 11 56 08 	vmovups YMMWORD PTR [rsi+0x100],ymm18
  ab7b24:	c5 fc 11 86 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm0
  ab7b2b:	00 
  ab7b2c:	62 b2 65 28 77 c9    	vpermi2ps ymm1,ymm3,ymm17
  ab7b32:	62 b2 35 28 7f d9    	vpermt2ps ymm3,ymm9,ymm17
  ab7b38:	c5 fc 11 9e 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm3
  ab7b3f:	00 
  ab7b40:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  ab7b47:	00 
  ab7b48:	c5 f8 77             	vzeroupper
  ab7b4b:	c3                   	ret
