
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000abe480 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  abe480:	48 c1 e2 07          	shl    rdx,0x7
  abe484:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  abe488:	c4 e2 7d 18 05 43 6e 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b6e43]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  abe48f:	5b ff 
  abe491:	c4 e2 7d 18 0d c6 6f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b6fc6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  abe498:	5b ff 
  abe49a:	31 d2                	xor    edx,edx
  abe49c:	c4 e2 7d 18 15 f7 6e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5b6ef7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  abe4a3:	5b ff 
  abe4a5:	c5 fc 28 1d 33 8d 5b 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5b8d33]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  abe4ac:	ff 
  abe4ad:	0f 1f 00             	nop    DWORD PTR [rax]
  abe4b0:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  abe4b7:	00 00 
  abe4b9:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  abe4c0:	00 00 
  abe4c2:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  abe4c7:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  abe4cd:	c5 fc 10 bc 17 00 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x100]
  abe4d4:	00 00 
  abe4d6:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  abe4dd:	00 00 
  abe4df:	c4 41 44 c6 c8 dd    	vshufps ymm9,ymm7,ymm8,0xdd
  abe4e5:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  abe4eb:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  abe4f0:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  abe4f4:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  abe4f9:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  abe4ff:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  abe505:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  abe50b:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  abe50f:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  abe514:	c5 7c 10 5c 17 20    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x20]
  abe51a:	c5 7c 10 64 17 40    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  abe520:	c5 7c 10 6c 17 60    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  abe526:	c4 41 3c c6 f3 88    	vshufps ymm14,ymm8,ymm11,0x88
  abe52c:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  abe532:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  abe536:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  abe53b:	62 c1 2c 28 58 cf    	vaddps ymm17,ymm10,ymm15
  abe541:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x140]
  abe548:	0a 
  abe549:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  abe550:	0b 
  abe551:	62 a1 7c 20 c6 da dd 	vshufps ymm19,ymm16,ymm18,0xdd
  abe558:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  abe55f:	62 c1 1c 28 c6 e5 dd 	vshufps ymm20,ymm12,ymm13,0xdd
  abe566:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  abe56d:	62 a1 64 20 5c ec    	vsubps ymm21,ymm19,ymm20
  abe573:	62 e1 54 20 59 e8    	vmulps ymm21,ymm21,ymm0
  abe579:	62 a1 7c 20 c6 c2 88 	vshufps ymm16,ymm16,ymm18,0x88
  abe580:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  abe587:	c4 41 1c c6 e5 88    	vshufps ymm12,ymm12,ymm13,0x88
  abe58d:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  abe593:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  abe599:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0xc0]
  abe5a0:	06 
  abe5a1:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0xe0]
  abe5a8:	07 
  abe5a9:	62 a1 6c 20 c6 fe 88 	vshufps ymm23,ymm18,ymm22,0x88
  abe5b0:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  abe5b7:	62 61 7c 28 28 c1    	vmovaps ymm24,ymm1
  abe5bd:	62 22 15 28 ac c7    	vfnmadd213ps ymm24,ymm13,ymm23
  abe5c3:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  abe5c7:	62 01 54 20 58 c8    	vaddps ymm25,ymm21,ymm24
  abe5cd:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  abe5d3:	62 11 74 20 5c c9    	vsubps ymm9,ymm17,ymm25
  abe5d9:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  abe5df:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  abe5e3:	c5 fc 28 e9          	vmovaps ymm5,ymm1
  abe5e7:	c4 c2 4d ac e8       	vfnmadd213ps ymm5,ymm6,ymm8
  abe5ec:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  abe5f0:	62 31 64 20 58 dc    	vaddps ymm11,ymm19,ymm20
  abe5f6:	62 e1 54 28 5c dc    	vsubps ymm19,ymm5,ymm4
  abe5fc:	62 a1 6c 20 c6 d6 dd 	vshufps ymm18,ymm18,ymm22,0xdd
  abe603:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  abe60a:	62 e1 7c 28 28 e1    	vmovaps ymm20,ymm1
  abe610:	62 a2 25 28 ac e2    	vfnmadd213ps ymm20,ymm11,ymm18
  abe616:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  abe61c:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  abe620:	62 c1 5c 20 5c f4    	vsubps ymm22,ymm20,ymm12
  abe626:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  abe62b:	62 31 64 20 5c fe    	vsubps ymm15,ymm19,ymm22
  abe631:	62 a1 3c 20 5c ed    	vsubps ymm21,ymm24,ymm21
  abe637:	62 21 2c 28 58 c5    	vaddps ymm24,ymm10,ymm21
  abe63d:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  abe641:	62 d1 5c 20 58 ec    	vaddps ymm5,ymm20,ymm12
  abe647:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  abe64b:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  abe64f:	62 51 44 20 58 ed    	vaddps ymm13,ymm23,ymm13
  abe655:	62 c1 44 28 5c c5    	vsubps ymm16,ymm7,ymm13
  abe65b:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  abe65f:	62 51 6c 20 58 c3    	vaddps ymm8,ymm18,ymm11
  abe665:	c4 41 4c 5c d8       	vsubps ymm11,ymm6,ymm8
  abe66a:	62 81 74 20 58 d1    	vaddps ymm18,ymm17,ymm25
  abe670:	62 31 64 20 58 f6    	vaddps ymm14,ymm19,ymm22
  abe676:	62 a1 2c 28 5c cd    	vsubps ymm17,ymm10,ymm21
  abe67c:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  abe680:	62 c1 44 28 58 dd    	vaddps ymm19,ymm7,ymm13
  abe686:	c5 bc 58 ee          	vaddps ymm5,ymm8,ymm6
  abe68a:	c4 c3 55 18 f4 01    	vinsertf128 ymm6,ymm5,xmm12,0x1
  abe690:	c4 43 55 06 c4 31    	vperm2f128 ymm8,ymm5,ymm12,0x31
  abe696:	c4 43 5d 18 d7 01    	vinsertf128 ymm10,ymm4,xmm15,0x1
  abe69c:	c4 43 5d 06 ef 31    	vperm2f128 ymm13,ymm4,ymm15,0x31
  abe6a2:	c4 41 78 28 e6       	vmovaps xmm12,xmm14
  abe6a7:	c4 c1 4d 14 e4       	vunpcklpd ymm4,ymm6,ymm12
  abe6ac:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  abe6b1:	c4 c1 2d 14 ef       	vunpcklpd ymm5,ymm10,ymm15
  abe6b6:	c5 dc c6 fd dd       	vshufps ymm7,ymm4,ymm5,0xdd
  abe6bb:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  abe6c0:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  abe6c5:	c4 41 2d 15 d7       	vunpckhpd ymm10,ymm10,ymm15
  abe6ca:	c4 41 4c c6 e2 88    	vshufps ymm12,ymm6,ymm10,0x88
  abe6d0:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  abe6d6:	c4 c1 4c c6 f2 dd    	vshufps ymm6,ymm6,ymm10,0xdd
  abe6dc:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  abe6e1:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  abe6e7:	c4 41 3d 14 d6       	vunpcklpd ymm10,ymm8,ymm14
  abe6ec:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  abe6f2:	62 c1 95 28 14 e3    	vunpcklpd ymm20,ymm13,ymm11
  abe6f8:	62 31 2c 28 c6 fc 88 	vshufps ymm15,ymm10,ymm20,0x88
  abe6ff:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  abe705:	62 31 2c 28 c6 d4 dd 	vshufps ymm10,ymm10,ymm20,0xdd
  abe70c:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  abe712:	c4 41 3d 15 c6       	vunpckhpd ymm8,ymm8,ymm14
  abe717:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  abe71c:	c4 41 3c c6 eb 88    	vshufps ymm13,ymm8,ymm11,0x88
  abe722:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  abe728:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  abe72e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  abe734:	62 13 65 20 18 f0 01 	vinsertf32x4 ymm14,ymm19,xmm24,0x1
  abe73b:	62 83 e5 20 23 e0 03 	vshuff64x2 ymm20,ymm19,ymm24,0x3
  abe742:	62 c3 75 20 18 d9 01 	vinsertf32x4 ymm19,ymm17,xmm9,0x1
  abe749:	62 c3 f5 20 23 f1 03 	vshuff64x2 ymm22,ymm17,ymm9,0x3
  abe750:	62 a1 7c 08 28 ea    	vmovaps xmm21,xmm18
  abe756:	62 31 8d 28 14 cd    	vunpcklpd ymm9,ymm14,ymm21
  abe75c:	62 a1 7c 08 28 f8    	vmovaps xmm23,xmm16
  abe762:	62 31 e5 20 14 df    	vunpcklpd ymm11,ymm19,ymm23
  abe768:	62 c1 34 28 c6 cb dd 	vshufps ymm17,ymm9,ymm11,0xdd
  abe76f:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  abe776:	62 31 8d 28 15 f5    	vunpckhpd ymm14,ymm14,ymm21
  abe77c:	62 a1 e5 20 15 df    	vunpckhpd ymm19,ymm19,ymm23
  abe782:	62 a1 0c 28 c6 eb 88 	vshufps ymm21,ymm14,ymm19,0x88
  abe789:	62 a1 54 20 c6 ed d8 	vshufps ymm21,ymm21,ymm21,0xd8
  abe790:	62 31 0c 28 c6 f3 dd 	vshufps ymm14,ymm14,ymm19,0xdd
  abe797:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  abe79d:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  abe7a4:	62 a1 dd 20 14 da    	vunpcklpd ymm19,ymm20,ymm18
  abe7aa:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  abe7b1:	62 a1 cd 20 14 f8    	vunpcklpd ymm23,ymm22,ymm16
  abe7b7:	62 21 64 20 c6 c7 88 	vshufps ymm24,ymm19,ymm23,0x88
  abe7be:	62 01 3c 20 c6 c0 d8 	vshufps ymm24,ymm24,ymm24,0xd8
  abe7c5:	62 a1 64 20 c6 df dd 	vshufps ymm19,ymm19,ymm23,0xdd
  abe7cc:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  abe7d3:	62 a1 dd 20 15 d2    	vunpckhpd ymm18,ymm20,ymm18
  abe7d9:	62 a1 cd 20 15 e0    	vunpckhpd ymm20,ymm22,ymm16
  abe7df:	62 a1 6c 20 c6 c4 dd 	vshufps ymm16,ymm18,ymm20,0xdd
  abe7e6:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  abe7ed:	62 a1 6c 20 c6 d4 88 	vshufps ymm18,ymm18,ymm20,0x88
  abe7f4:	62 a1 6c 20 c6 f2 d8 	vshufps ymm22,ymm18,ymm18,0xd8
  abe7fb:	62 e1 7c 28 10 61 08 	vmovups ymm20,YMMWORD PTR [rcx+0x100]
  abe802:	62 e1 7c 28 10 79 09 	vmovups ymm23,YMMWORD PTR [rcx+0x120]
  abe809:	62 a1 04 28 59 d4    	vmulps ymm18,ymm15,ymm20
  abe80f:	62 a2 3d 20 bc d7    	vfnmadd231ps ymm18,ymm24,ymm23
  abe815:	62 a1 3c 20 59 e4    	vmulps ymm20,ymm24,ymm20
  abe81b:	62 61 7c 28 10 41 04 	vmovups ymm24,YMMWORD PTR [rcx+0x80]
  abe822:	62 a2 05 28 b8 e7    	vfmadd231ps ymm20,ymm15,ymm23
  abe828:	62 e1 7c 28 10 79 05 	vmovups ymm23,YMMWORD PTR [rcx+0xa0]
  abe82f:	62 11 1c 28 59 f8    	vmulps ymm15,ymm12,ymm24
  abe835:	62 32 55 20 bc ff    	vfnmadd231ps ymm15,ymm21,ymm23
  abe83b:	62 81 54 20 59 e8    	vmulps ymm21,ymm21,ymm24
  abe841:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  abe848:	62 a2 1d 28 b8 ef    	vfmadd231ps ymm21,ymm12,ymm23
  abe84e:	c5 7c 10 a1 a0 01 00 	vmovups ymm12,YMMWORD PTR [rcx+0x1a0]
  abe855:	00 
  abe856:	62 81 14 28 59 f8    	vmulps ymm23,ymm13,ymm24
  abe85c:	62 c2 4d 20 bc fc    	vfnmadd231ps ymm23,ymm22,ymm12
  abe862:	62 81 4c 20 59 f0    	vmulps ymm22,ymm22,ymm24
  abe868:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  abe86f:	62 c2 15 28 b8 f4    	vfmadd231ps ymm22,ymm13,ymm12
  abe875:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  abe87a:	62 11 44 28 59 e8    	vmulps ymm13,ymm7,ymm24
  abe880:	62 52 75 20 bc ec    	vfnmadd231ps ymm13,ymm17,ymm12
  abe886:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  abe88c:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  abe893:	62 c2 45 28 b8 cc    	vfmadd231ps ymm17,ymm7,ymm12
  abe899:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  abe8a0:	00 
  abe8a1:	62 11 2c 28 59 e0    	vmulps ymm12,ymm10,ymm24
  abe8a7:	62 72 65 20 bc e7    	vfnmadd231ps ymm12,ymm19,ymm7
  abe8ad:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  abe8b3:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  abe8ba:	62 e2 2d 28 b8 df    	vfmadd231ps ymm19,ymm10,ymm7
  abe8c0:	c5 fc 10 b9 e0 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0xe0]
  abe8c7:	00 
  abe8c8:	62 11 4c 28 59 d0    	vmulps ymm10,ymm6,ymm24
  abe8ce:	c4 62 0d bc d7       	vfnmadd231ps ymm10,ymm14,ymm7
  abe8d3:	62 11 0c 28 59 f0    	vmulps ymm14,ymm14,ymm24
  abe8d9:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  abe8e0:	c4 62 4d b8 f7       	vfmadd231ps ymm14,ymm6,ymm7
  abe8e5:	c5 fc 10 b1 e0 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x1e0]
  abe8ec:	00 
  abe8ed:	62 91 3c 28 59 f8    	vmulps ymm7,ymm8,ymm24
  abe8f3:	62 f2 7d 20 bc fe    	vfnmadd231ps ymm7,ymm16,ymm6
  abe8f9:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  abe8ff:	62 e2 3d 28 b8 c6    	vfmadd231ps ymm16,ymm8,ymm6
  abe905:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  abe90a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  abe90f:	c4 c1 34 c6 eb 88    	vshufps ymm5,ymm9,ymm11,0x88
  abe915:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  abe91a:	62 b1 5c 28 58 f2    	vaddps ymm6,ymm4,ymm18
  abe920:	62 b1 5c 28 5c e2    	vsubps ymm4,ymm4,ymm18
  abe926:	62 31 54 20 58 c6    	vaddps ymm8,ymm21,ymm22
  abe92c:	62 31 54 20 5c ce    	vsubps ymm9,ymm21,ymm22
  abe932:	c4 41 14 58 dc       	vaddps ymm11,ymm13,ymm12
  abe937:	c4 41 14 5c e4       	vsubps ymm12,ymm13,ymm12
  abe93c:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  abe942:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  abe948:	62 a1 0c 28 58 d0    	vaddps ymm18,ymm14,ymm16
  abe94e:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  abe954:	62 e1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm7
  abe95a:	c5 ac 5c ff          	vsubps ymm7,ymm10,ymm7
  abe95e:	62 71 5c 20 58 d5    	vaddps ymm10,ymm20,ymm5
  abe964:	62 b1 54 28 5c ec    	vsubps ymm5,ymm5,ymm20
  abe96a:	62 a1 04 28 58 df    	vaddps ymm19,ymm15,ymm23
  abe970:	62 51 44 20 5c ff    	vsubps ymm15,ymm23,ymm15
  abe976:	62 a1 1c 28 58 e1    	vaddps ymm20,ymm12,ymm17
  abe97c:	62 51 74 20 5c e4    	vsubps ymm12,ymm17,ymm12
  abe982:	62 e1 0c 28 5c cf    	vsubps ymm17,ymm14,ymm7
  abe988:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  abe98c:	62 31 4c 28 58 f3    	vaddps ymm14,ymm6,ymm19
  abe992:	62 b1 4c 28 5c f3    	vsubps ymm6,ymm6,ymm19
  abe998:	62 a1 14 28 58 da    	vaddps ymm19,ymm13,ymm18
  abe99e:	62 31 14 28 5c ea    	vsubps ymm13,ymm13,ymm18
  abe9a4:	62 c1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm10
  abe9aa:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  abe9af:	62 31 24 28 58 d0    	vaddps ymm10,ymm11,ymm16
  abe9b5:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  abe9bb:	62 c1 5c 28 58 c1    	vaddps ymm16,ymm4,ymm9
  abe9c1:	62 e1 5c 20 59 e2    	vmulps ymm20,ymm20,ymm2
  abe9c7:	62 e1 74 20 59 ca    	vmulps ymm17,ymm17,ymm2
  abe9cd:	c5 1c 59 e2          	vmulps ymm12,ymm12,ymm2
  abe9d1:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  abe9d5:	c4 c1 5c 5c e1       	vsubps ymm4,ymm4,ymm9
  abe9da:	c5 1c 5c cf          	vsubps ymm9,ymm12,ymm7
  abe9de:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  abe9e2:	c5 04 58 e5          	vaddps ymm12,ymm15,ymm5
  abe9e6:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  abe9eb:	62 31 5c 20 58 f9    	vaddps ymm15,ymm20,ymm17
  abe9f1:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  abe9f7:	62 c1 7c 20 58 e7    	vaddps ymm20,ymm16,ymm15
  abe9fd:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  abea03:	62 c1 1c 28 58 c1    	vaddps ymm16,ymm12,ymm9
  abea09:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  abea0e:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  abea12:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  abea17:	c4 41 3c 58 eb       	vaddps ymm13,ymm8,ymm11
  abea1c:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  abea21:	c5 5c 58 df          	vaddps ymm11,ymm4,ymm7
  abea25:	c5 dc 5c e7          	vsubps ymm4,ymm4,ymm7
  abea29:	62 b1 54 28 58 f9    	vaddps ymm7,ymm5,ymm17
  abea2f:	62 b1 54 28 5c e9    	vsubps ymm5,ymm5,ymm17
  abea35:	62 a1 6c 20 5c cb    	vsubps ymm17,ymm18,ymm19
  abea3b:	62 a1 6c 20 58 d3    	vaddps ymm18,ymm18,ymm19
  abea41:	62 c1 0c 28 5c da    	vsubps ymm19,ymm14,ymm10
  abea47:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  abea4c:	62 c3 7d 28 19 d6 01 	vextractf32x4 xmm14,ymm18,0x1
  abea53:	62 c2 65 28 7f d2    	vpermt2ps ymm18,ymm3,ymm10
  abea59:	62 e1 7c 28 11 14 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm18
  abea60:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  abea66:	c4 41 08 14 d2       	vunpcklps xmm10,xmm14,xmm10
  abea6b:	c5 78 11 54 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm10
  abea71:	62 c3 7d 28 19 c2 01 	vextractf32x4 xmm10,ymm16,0x1
  abea78:	62 a2 65 28 7f c4    	vpermt2ps ymm16,ymm3,ymm20
  abea7e:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm16
  abea85:	30 00 00 00 
  abea89:	62 c3 7d 28 19 e6 01 	vextractf32x4 xmm14,ymm20,0x1
  abea90:	c4 41 28 14 d6       	vunpcklps xmm10,xmm10,xmm14
  abea95:	c5 78 11 54 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm10
  abea9b:	c4 43 7d 19 ea 01    	vextractf128 xmm10,ymm13,0x1
  abeaa1:	62 52 65 28 7f ec    	vpermt2ps ymm13,ymm3,ymm12
  abeaa7:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  abeaad:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  abeab3:	c4 41 28 14 d4       	vunpcklps xmm10,xmm10,xmm12
  abeab8:	c5 78 11 94 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm10
  abeabf:	00 00 
  abeac1:	c4 c3 7d 19 fa 01    	vextractf128 xmm10,ymm7,0x1
  abeac7:	62 d2 65 28 7f fb    	vpermt2ps ymm7,ymm3,ymm11
  abeacd:	c5 fc 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm7
  abead4:	00 00 
  abead6:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  abeadc:	c5 a8 14 ff          	vunpcklps xmm7,xmm10,xmm7
  abeae0:	c5 f8 11 bc 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm7
  abeae7:	00 00 
  abeae9:	62 e3 7d 28 19 cf 01 	vextractf32x4 xmm7,ymm17,0x1
  abeaf0:	62 a2 65 28 7f cb    	vpermt2ps ymm17,ymm3,ymm19
  abeaf6:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm17
  abeafd:	06 
  abeafe:	62 c3 7d 28 19 da 01 	vextractf32x4 xmm10,ymm19,0x1
  abeb05:	c4 c1 40 14 fa       	vunpcklps xmm7,xmm7,xmm10
  abeb0a:	c5 f8 11 bc 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm7
  abeb11:	00 00 
  abeb13:	c4 63 7d 19 cf 01    	vextractf128 xmm7,ymm9,0x1
  abeb19:	62 52 65 28 7f cf    	vpermt2ps ymm9,ymm3,ymm15
  abeb1f:	c5 7c 11 8c 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm9
  abeb26:	00 00 
  abeb28:	c4 43 7d 19 f9 01    	vextractf128 xmm9,ymm15,0x1
  abeb2e:	c4 c1 40 14 f9       	vunpcklps xmm7,xmm7,xmm9
  abeb33:	c5 f8 11 bc 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm7
  abeb3a:	00 00 
  abeb3c:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  abeb42:	62 72 65 28 7f c6    	vpermt2ps ymm8,ymm3,ymm6
  abeb48:	c5 7c 11 84 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm8
  abeb4f:	00 00 
  abeb51:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  abeb57:	c5 c0 14 f6          	vunpcklps xmm6,xmm7,xmm6
  abeb5b:	c5 f8 11 b4 16 40 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x140],xmm6
  abeb62:	00 00 
  abeb64:	c4 e3 7d 19 ee 01    	vextractf128 xmm6,ymm5,0x1
  abeb6a:	62 f2 65 28 7f ec    	vpermt2ps ymm5,ymm3,ymm4
  abeb70:	c5 fc 11 ac 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm5
  abeb77:	00 00 
  abeb79:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  abeb7f:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  abeb83:	c5 f8 11 a4 16 70 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x170],xmm4
  abeb8a:	00 00 
  abeb8c:	48 81 c2 80 01 00 00 	add    rdx,0x180
  abeb93:	48 39 d0             	cmp    rax,rdx
  abeb96:	0f 85 14 f9 ff ff    	jne    abe4b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  abeb9c:	c5 f8 77             	vzeroupper
  abeb9f:	c3                   	ret
