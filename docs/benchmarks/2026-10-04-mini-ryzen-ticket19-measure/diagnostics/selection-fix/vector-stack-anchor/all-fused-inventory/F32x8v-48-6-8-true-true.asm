
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000abc6c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  abc6c0:	48 c1 e2 07          	shl    rdx,0x7
  abc6c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  abc6c8:	c4 e2 7d 18 05 03 8c 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b8c03]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  abc6cf:	5b ff 
  abc6d1:	c4 e2 7d 18 0d 86 8d 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b8d86]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  abc6d8:	5b ff 
  abc6da:	31 d2                	xor    edx,edx
  abc6dc:	c4 e2 7d 18 15 b7 8c 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5b8cb7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  abc6e3:	5b ff 
  abc6e5:	c5 fc 28 1d f3 aa 5b 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5baaf3]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  abc6ec:	ff 
  abc6ed:	0f 1f 00             	nop    DWORD PTR [rax]
  abc6f0:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  abc6f7:	00 00 
  abc6f9:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  abc700:	00 00 
  abc702:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  abc707:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  abc70d:	c5 fc 10 bc 17 00 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x100]
  abc714:	00 00 
  abc716:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  abc71d:	00 00 
  abc71f:	c4 41 44 c6 c8 dd    	vshufps ymm9,ymm7,ymm8,0xdd
  abc725:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  abc72b:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  abc730:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  abc734:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  abc739:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  abc73f:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  abc745:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  abc74b:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  abc74f:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  abc754:	c5 7c 10 5c 17 20    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x20]
  abc75a:	c5 7c 10 64 17 40    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  abc760:	c5 7c 10 6c 17 60    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  abc766:	c4 41 3c c6 f3 88    	vshufps ymm14,ymm8,ymm11,0x88
  abc76c:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  abc772:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  abc776:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  abc77b:	62 c1 2c 28 58 cf    	vaddps ymm17,ymm10,ymm15
  abc781:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x140]
  abc788:	0a 
  abc789:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  abc790:	0b 
  abc791:	62 a1 7c 20 c6 da dd 	vshufps ymm19,ymm16,ymm18,0xdd
  abc798:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  abc79f:	62 c1 1c 28 c6 e5 dd 	vshufps ymm20,ymm12,ymm13,0xdd
  abc7a6:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  abc7ad:	62 a1 64 20 5c ec    	vsubps ymm21,ymm19,ymm20
  abc7b3:	62 e1 54 20 59 e8    	vmulps ymm21,ymm21,ymm0
  abc7b9:	62 a1 7c 20 c6 c2 88 	vshufps ymm16,ymm16,ymm18,0x88
  abc7c0:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  abc7c7:	c4 41 1c c6 e5 88    	vshufps ymm12,ymm12,ymm13,0x88
  abc7cd:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  abc7d3:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  abc7d9:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0xc0]
  abc7e0:	06 
  abc7e1:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0xe0]
  abc7e8:	07 
  abc7e9:	62 a1 6c 20 c6 fe 88 	vshufps ymm23,ymm18,ymm22,0x88
  abc7f0:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  abc7f7:	62 61 7c 28 28 c1    	vmovaps ymm24,ymm1
  abc7fd:	62 22 15 28 ac c7    	vfnmadd213ps ymm24,ymm13,ymm23
  abc803:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  abc807:	62 01 54 20 58 c8    	vaddps ymm25,ymm21,ymm24
  abc80d:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  abc813:	62 11 74 20 5c c9    	vsubps ymm9,ymm17,ymm25
  abc819:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  abc81f:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  abc823:	c5 fc 28 e9          	vmovaps ymm5,ymm1
  abc827:	c4 c2 4d ac e8       	vfnmadd213ps ymm5,ymm6,ymm8
  abc82c:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  abc830:	62 31 64 20 58 dc    	vaddps ymm11,ymm19,ymm20
  abc836:	62 e1 54 28 5c dc    	vsubps ymm19,ymm5,ymm4
  abc83c:	62 a1 6c 20 c6 d6 dd 	vshufps ymm18,ymm18,ymm22,0xdd
  abc843:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  abc84a:	62 e1 7c 28 28 e1    	vmovaps ymm20,ymm1
  abc850:	62 a2 25 28 ac e2    	vfnmadd213ps ymm20,ymm11,ymm18
  abc856:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  abc85c:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  abc860:	62 c1 5c 20 5c f4    	vsubps ymm22,ymm20,ymm12
  abc866:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  abc86b:	62 31 64 20 5c fe    	vsubps ymm15,ymm19,ymm22
  abc871:	62 a1 3c 20 5c ed    	vsubps ymm21,ymm24,ymm21
  abc877:	62 21 2c 28 58 c5    	vaddps ymm24,ymm10,ymm21
  abc87d:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  abc881:	62 d1 5c 20 58 ec    	vaddps ymm5,ymm20,ymm12
  abc887:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  abc88b:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  abc88f:	62 51 44 20 58 ed    	vaddps ymm13,ymm23,ymm13
  abc895:	62 c1 44 28 5c c5    	vsubps ymm16,ymm7,ymm13
  abc89b:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  abc89f:	62 51 6c 20 58 c3    	vaddps ymm8,ymm18,ymm11
  abc8a5:	c4 41 4c 5c d8       	vsubps ymm11,ymm6,ymm8
  abc8aa:	62 81 74 20 58 d1    	vaddps ymm18,ymm17,ymm25
  abc8b0:	62 31 64 20 58 f6    	vaddps ymm14,ymm19,ymm22
  abc8b6:	62 a1 2c 28 5c cd    	vsubps ymm17,ymm10,ymm21
  abc8bc:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  abc8c0:	62 c1 44 28 58 dd    	vaddps ymm19,ymm7,ymm13
  abc8c6:	c5 bc 58 ee          	vaddps ymm5,ymm8,ymm6
  abc8ca:	c4 c3 55 18 f4 01    	vinsertf128 ymm6,ymm5,xmm12,0x1
  abc8d0:	c4 43 55 06 c4 31    	vperm2f128 ymm8,ymm5,ymm12,0x31
  abc8d6:	c4 43 5d 18 d7 01    	vinsertf128 ymm10,ymm4,xmm15,0x1
  abc8dc:	c4 43 5d 06 ef 31    	vperm2f128 ymm13,ymm4,ymm15,0x31
  abc8e2:	c4 41 78 28 e6       	vmovaps xmm12,xmm14
  abc8e7:	c4 c1 4d 14 e4       	vunpcklpd ymm4,ymm6,ymm12
  abc8ec:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  abc8f1:	c4 c1 2d 14 ef       	vunpcklpd ymm5,ymm10,ymm15
  abc8f6:	c5 dc c6 fd dd       	vshufps ymm7,ymm4,ymm5,0xdd
  abc8fb:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  abc900:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  abc905:	c4 41 2d 15 d7       	vunpckhpd ymm10,ymm10,ymm15
  abc90a:	c4 41 4c c6 e2 88    	vshufps ymm12,ymm6,ymm10,0x88
  abc910:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  abc916:	c4 c1 4c c6 f2 dd    	vshufps ymm6,ymm6,ymm10,0xdd
  abc91c:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  abc921:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  abc927:	c4 41 3d 14 d6       	vunpcklpd ymm10,ymm8,ymm14
  abc92c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  abc932:	62 c1 95 28 14 e3    	vunpcklpd ymm20,ymm13,ymm11
  abc938:	62 31 2c 28 c6 fc 88 	vshufps ymm15,ymm10,ymm20,0x88
  abc93f:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  abc945:	62 31 2c 28 c6 d4 dd 	vshufps ymm10,ymm10,ymm20,0xdd
  abc94c:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  abc952:	c4 41 3d 15 c6       	vunpckhpd ymm8,ymm8,ymm14
  abc957:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  abc95c:	c4 41 3c c6 eb 88    	vshufps ymm13,ymm8,ymm11,0x88
  abc962:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  abc968:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  abc96e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  abc974:	62 13 65 20 18 f0 01 	vinsertf32x4 ymm14,ymm19,xmm24,0x1
  abc97b:	62 83 e5 20 23 e0 03 	vshuff64x2 ymm20,ymm19,ymm24,0x3
  abc982:	62 c3 75 20 18 d9 01 	vinsertf32x4 ymm19,ymm17,xmm9,0x1
  abc989:	62 c3 f5 20 23 f1 03 	vshuff64x2 ymm22,ymm17,ymm9,0x3
  abc990:	62 a1 7c 08 28 ea    	vmovaps xmm21,xmm18
  abc996:	62 31 8d 28 14 cd    	vunpcklpd ymm9,ymm14,ymm21
  abc99c:	62 a1 7c 08 28 f8    	vmovaps xmm23,xmm16
  abc9a2:	62 31 e5 20 14 df    	vunpcklpd ymm11,ymm19,ymm23
  abc9a8:	62 c1 34 28 c6 cb dd 	vshufps ymm17,ymm9,ymm11,0xdd
  abc9af:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  abc9b6:	62 31 8d 28 15 f5    	vunpckhpd ymm14,ymm14,ymm21
  abc9bc:	62 a1 e5 20 15 df    	vunpckhpd ymm19,ymm19,ymm23
  abc9c2:	62 a1 0c 28 c6 eb 88 	vshufps ymm21,ymm14,ymm19,0x88
  abc9c9:	62 a1 54 20 c6 ed d8 	vshufps ymm21,ymm21,ymm21,0xd8
  abc9d0:	62 31 0c 28 c6 f3 dd 	vshufps ymm14,ymm14,ymm19,0xdd
  abc9d7:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  abc9dd:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  abc9e4:	62 a1 dd 20 14 da    	vunpcklpd ymm19,ymm20,ymm18
  abc9ea:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  abc9f1:	62 a1 cd 20 14 f8    	vunpcklpd ymm23,ymm22,ymm16
  abc9f7:	62 21 64 20 c6 c7 88 	vshufps ymm24,ymm19,ymm23,0x88
  abc9fe:	62 01 3c 20 c6 c0 d8 	vshufps ymm24,ymm24,ymm24,0xd8
  abca05:	62 a1 64 20 c6 df dd 	vshufps ymm19,ymm19,ymm23,0xdd
  abca0c:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  abca13:	62 a1 dd 20 15 d2    	vunpckhpd ymm18,ymm20,ymm18
  abca19:	62 a1 cd 20 15 e0    	vunpckhpd ymm20,ymm22,ymm16
  abca1f:	62 a1 6c 20 c6 c4 dd 	vshufps ymm16,ymm18,ymm20,0xdd
  abca26:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  abca2d:	62 a1 6c 20 c6 d4 88 	vshufps ymm18,ymm18,ymm20,0x88
  abca34:	62 a1 6c 20 c6 f2 d8 	vshufps ymm22,ymm18,ymm18,0xd8
  abca3b:	62 e1 7c 28 10 61 08 	vmovups ymm20,YMMWORD PTR [rcx+0x100]
  abca42:	62 e1 7c 28 10 79 09 	vmovups ymm23,YMMWORD PTR [rcx+0x120]
  abca49:	62 a1 04 28 59 d4    	vmulps ymm18,ymm15,ymm20
  abca4f:	62 a2 3d 20 bc d7    	vfnmadd231ps ymm18,ymm24,ymm23
  abca55:	62 a1 3c 20 59 e4    	vmulps ymm20,ymm24,ymm20
  abca5b:	62 61 7c 28 10 41 04 	vmovups ymm24,YMMWORD PTR [rcx+0x80]
  abca62:	62 a2 05 28 b8 e7    	vfmadd231ps ymm20,ymm15,ymm23
  abca68:	62 e1 7c 28 10 79 05 	vmovups ymm23,YMMWORD PTR [rcx+0xa0]
  abca6f:	62 11 1c 28 59 f8    	vmulps ymm15,ymm12,ymm24
  abca75:	62 32 55 20 bc ff    	vfnmadd231ps ymm15,ymm21,ymm23
  abca7b:	62 81 54 20 59 e8    	vmulps ymm21,ymm21,ymm24
  abca81:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  abca88:	62 a2 1d 28 b8 ef    	vfmadd231ps ymm21,ymm12,ymm23
  abca8e:	c5 7c 10 a1 a0 01 00 	vmovups ymm12,YMMWORD PTR [rcx+0x1a0]
  abca95:	00 
  abca96:	62 81 14 28 59 f8    	vmulps ymm23,ymm13,ymm24
  abca9c:	62 c2 4d 20 bc fc    	vfnmadd231ps ymm23,ymm22,ymm12
  abcaa2:	62 81 4c 20 59 f0    	vmulps ymm22,ymm22,ymm24
  abcaa8:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  abcaaf:	62 c2 15 28 b8 f4    	vfmadd231ps ymm22,ymm13,ymm12
  abcab5:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  abcaba:	62 11 44 28 59 e8    	vmulps ymm13,ymm7,ymm24
  abcac0:	62 52 75 20 bc ec    	vfnmadd231ps ymm13,ymm17,ymm12
  abcac6:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  abcacc:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  abcad3:	62 c2 45 28 b8 cc    	vfmadd231ps ymm17,ymm7,ymm12
  abcad9:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  abcae0:	00 
  abcae1:	62 11 2c 28 59 e0    	vmulps ymm12,ymm10,ymm24
  abcae7:	62 72 65 20 bc e7    	vfnmadd231ps ymm12,ymm19,ymm7
  abcaed:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  abcaf3:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  abcafa:	62 e2 2d 28 b8 df    	vfmadd231ps ymm19,ymm10,ymm7
  abcb00:	c5 fc 10 b9 e0 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0xe0]
  abcb07:	00 
  abcb08:	62 11 4c 28 59 d0    	vmulps ymm10,ymm6,ymm24
  abcb0e:	c4 62 0d bc d7       	vfnmadd231ps ymm10,ymm14,ymm7
  abcb13:	62 11 0c 28 59 f0    	vmulps ymm14,ymm14,ymm24
  abcb19:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  abcb20:	c4 62 4d b8 f7       	vfmadd231ps ymm14,ymm6,ymm7
  abcb25:	c5 fc 10 b1 e0 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x1e0]
  abcb2c:	00 
  abcb2d:	62 91 3c 28 59 f8    	vmulps ymm7,ymm8,ymm24
  abcb33:	62 f2 7d 20 bc fe    	vfnmadd231ps ymm7,ymm16,ymm6
  abcb39:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  abcb3f:	62 e2 3d 28 b8 c6    	vfmadd231ps ymm16,ymm8,ymm6
  abcb45:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  abcb4a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  abcb4f:	c4 c1 34 c6 eb 88    	vshufps ymm5,ymm9,ymm11,0x88
  abcb55:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  abcb5a:	62 b1 5c 28 58 f2    	vaddps ymm6,ymm4,ymm18
  abcb60:	62 b1 5c 28 5c e2    	vsubps ymm4,ymm4,ymm18
  abcb66:	62 31 54 20 58 c6    	vaddps ymm8,ymm21,ymm22
  abcb6c:	62 31 54 20 5c ce    	vsubps ymm9,ymm21,ymm22
  abcb72:	c4 41 14 58 dc       	vaddps ymm11,ymm13,ymm12
  abcb77:	c4 41 14 5c e4       	vsubps ymm12,ymm13,ymm12
  abcb7c:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  abcb82:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  abcb88:	62 a1 0c 28 58 d0    	vaddps ymm18,ymm14,ymm16
  abcb8e:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  abcb94:	62 e1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm7
  abcb9a:	c5 ac 5c ff          	vsubps ymm7,ymm10,ymm7
  abcb9e:	62 71 5c 20 58 d5    	vaddps ymm10,ymm20,ymm5
  abcba4:	62 b1 54 28 5c ec    	vsubps ymm5,ymm5,ymm20
  abcbaa:	62 a1 04 28 58 df    	vaddps ymm19,ymm15,ymm23
  abcbb0:	62 51 44 20 5c ff    	vsubps ymm15,ymm23,ymm15
  abcbb6:	62 a1 1c 28 58 e1    	vaddps ymm20,ymm12,ymm17
  abcbbc:	62 51 74 20 5c e4    	vsubps ymm12,ymm17,ymm12
  abcbc2:	62 e1 0c 28 5c cf    	vsubps ymm17,ymm14,ymm7
  abcbc8:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  abcbcc:	62 31 4c 28 58 f3    	vaddps ymm14,ymm6,ymm19
  abcbd2:	62 b1 4c 28 5c f3    	vsubps ymm6,ymm6,ymm19
  abcbd8:	62 a1 14 28 58 da    	vaddps ymm19,ymm13,ymm18
  abcbde:	62 31 14 28 5c ea    	vsubps ymm13,ymm13,ymm18
  abcbe4:	62 c1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm10
  abcbea:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  abcbef:	62 31 24 28 58 d0    	vaddps ymm10,ymm11,ymm16
  abcbf5:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  abcbfb:	62 c1 5c 28 58 c1    	vaddps ymm16,ymm4,ymm9
  abcc01:	62 e1 5c 20 59 e2    	vmulps ymm20,ymm20,ymm2
  abcc07:	62 e1 74 20 59 ca    	vmulps ymm17,ymm17,ymm2
  abcc0d:	c5 1c 59 e2          	vmulps ymm12,ymm12,ymm2
  abcc11:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  abcc15:	c4 c1 5c 5c e1       	vsubps ymm4,ymm4,ymm9
  abcc1a:	c5 1c 5c cf          	vsubps ymm9,ymm12,ymm7
  abcc1e:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  abcc22:	c5 04 58 e5          	vaddps ymm12,ymm15,ymm5
  abcc26:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  abcc2b:	62 31 5c 20 58 f9    	vaddps ymm15,ymm20,ymm17
  abcc31:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  abcc37:	62 c1 7c 20 58 e7    	vaddps ymm20,ymm16,ymm15
  abcc3d:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  abcc43:	62 c1 1c 28 58 c1    	vaddps ymm16,ymm12,ymm9
  abcc49:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  abcc4e:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  abcc52:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  abcc57:	c4 41 3c 58 eb       	vaddps ymm13,ymm8,ymm11
  abcc5c:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  abcc61:	c5 5c 58 df          	vaddps ymm11,ymm4,ymm7
  abcc65:	c5 dc 5c e7          	vsubps ymm4,ymm4,ymm7
  abcc69:	62 b1 54 28 58 f9    	vaddps ymm7,ymm5,ymm17
  abcc6f:	62 b1 54 28 5c e9    	vsubps ymm5,ymm5,ymm17
  abcc75:	62 a1 6c 20 5c cb    	vsubps ymm17,ymm18,ymm19
  abcc7b:	62 a1 6c 20 58 d3    	vaddps ymm18,ymm18,ymm19
  abcc81:	62 c1 0c 28 5c da    	vsubps ymm19,ymm14,ymm10
  abcc87:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  abcc8c:	62 c3 7d 28 19 d6 01 	vextractf32x4 xmm14,ymm18,0x1
  abcc93:	62 c2 65 28 7f d2    	vpermt2ps ymm18,ymm3,ymm10
  abcc99:	62 e1 7c 28 11 14 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm18
  abcca0:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  abcca6:	c4 41 08 14 d2       	vunpcklps xmm10,xmm14,xmm10
  abccab:	c5 78 11 54 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm10
  abccb1:	62 c3 7d 28 19 c2 01 	vextractf32x4 xmm10,ymm16,0x1
  abccb8:	62 a2 65 28 7f c4    	vpermt2ps ymm16,ymm3,ymm20
  abccbe:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm16
  abccc5:	30 00 00 00 
  abccc9:	62 c3 7d 28 19 e6 01 	vextractf32x4 xmm14,ymm20,0x1
  abccd0:	c4 41 28 14 d6       	vunpcklps xmm10,xmm10,xmm14
  abccd5:	c5 78 11 54 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm10
  abccdb:	c4 43 7d 19 ea 01    	vextractf128 xmm10,ymm13,0x1
  abcce1:	62 52 65 28 7f ec    	vpermt2ps ymm13,ymm3,ymm12
  abcce7:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  abcced:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  abccf3:	c4 41 28 14 d4       	vunpcklps xmm10,xmm10,xmm12
  abccf8:	c5 78 11 94 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm10
  abccff:	00 00 
  abcd01:	c4 c3 7d 19 fa 01    	vextractf128 xmm10,ymm7,0x1
  abcd07:	62 d2 65 28 7f fb    	vpermt2ps ymm7,ymm3,ymm11
  abcd0d:	c5 fc 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm7
  abcd14:	00 00 
  abcd16:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  abcd1c:	c5 a8 14 ff          	vunpcklps xmm7,xmm10,xmm7
  abcd20:	c5 f8 11 bc 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm7
  abcd27:	00 00 
  abcd29:	62 e3 7d 28 19 cf 01 	vextractf32x4 xmm7,ymm17,0x1
  abcd30:	62 a2 65 28 7f cb    	vpermt2ps ymm17,ymm3,ymm19
  abcd36:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm17
  abcd3d:	06 
  abcd3e:	62 c3 7d 28 19 da 01 	vextractf32x4 xmm10,ymm19,0x1
  abcd45:	c4 c1 40 14 fa       	vunpcklps xmm7,xmm7,xmm10
  abcd4a:	c5 f8 11 bc 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm7
  abcd51:	00 00 
  abcd53:	c4 63 7d 19 cf 01    	vextractf128 xmm7,ymm9,0x1
  abcd59:	62 52 65 28 7f cf    	vpermt2ps ymm9,ymm3,ymm15
  abcd5f:	c5 7c 11 8c 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm9
  abcd66:	00 00 
  abcd68:	c4 43 7d 19 f9 01    	vextractf128 xmm9,ymm15,0x1
  abcd6e:	c4 c1 40 14 f9       	vunpcklps xmm7,xmm7,xmm9
  abcd73:	c5 f8 11 bc 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm7
  abcd7a:	00 00 
  abcd7c:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  abcd82:	62 72 65 28 7f c6    	vpermt2ps ymm8,ymm3,ymm6
  abcd88:	c5 7c 11 84 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm8
  abcd8f:	00 00 
  abcd91:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  abcd97:	c5 c0 14 f6          	vunpcklps xmm6,xmm7,xmm6
  abcd9b:	c5 f8 11 b4 16 40 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x140],xmm6
  abcda2:	00 00 
  abcda4:	c4 e3 7d 19 ee 01    	vextractf128 xmm6,ymm5,0x1
  abcdaa:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  abcdb0:	c5 fc 11 ac 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm5
  abcdb7:	00 00 
  abcdb9:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  abcdbf:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  abcdc3:	c5 f8 11 a4 16 70 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x170],xmm4
  abcdca:	00 00 
  abcdcc:	48 81 c2 80 01 00 00 	add    rdx,0x180
  abcdd3:	48 39 d0             	cmp    rax,rdx
  abcdd6:	0f 85 14 f9 ff ff    	jne    abc6f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  abcddc:	c5 f8 77             	vzeroupper
  abcddf:	c3                   	ret
