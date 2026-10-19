
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000960500 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  960500:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff76685e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  960507:	68 76 ff 
  96050a:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7667d4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  960511:	67 76 ff 
  960514:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff76680a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96051b:	68 76 ff 
  96051e:	48 c1 e2 07          	shl    rdx,0x7
  960522:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  960526:	31 d2                	xor    edx,edx
  960528:	62 f1 fd 48 28 1d 0e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff72520e]        # 85740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12bf0>
  96052f:	52 72 ff 
  960532:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  960536:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff725240]        # 85780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12c30>
  96053d:	52 72 ff 
  960540:	62 f2 fd 48 19 35 56 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff714956]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  960547:	49 71 ff 
  96054a:	62 e2 fd 48 19 2d 44 	vbroadcastsd zmm21,QWORD PTR [rip+0xffffffffff714544]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  960551:	45 71 ff 
  960554:	62 e2 fd 48 19 25 c2 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff7146c2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96055b:	46 71 ff 
  96055e:	62 61 fd 48 28 05 58 	vmovapd zmm24,ZMMWORD PTR [rip+0xffffffffff725258]        # 857c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12c70>
  960565:	52 72 ff 
  960568:	62 61 fd 48 28 0d 8e 	vmovapd zmm25,ZMMWORD PTR [rip+0xffffffffff72528e]        # 85800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12cb0>
  96056f:	52 72 ff 
  960572:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  960579:	1f 84 00 00 00 00 00 
  960580:	c5 7b 12 5c 17 28    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x28]
  960586:	c4 63 21 0d 5c 17 20 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  96058d:	01 
  96058e:	c5 7d 10 24 17       	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1]
  960593:	c5 7d 10 74 17 30    	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  960599:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  9605a0:	03 
  9605a1:	62 e1 fd 28 10 94 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  9605a8:	90 00 00 00 
  9605ac:	62 53 1d 48 18 eb 02 	vinsertf32x4 zmm13,zmm12,xmm11,0x2
  9605b3:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  9605b9:	62 72 e5 48 7f dc    	vpermt2pd zmm11,zmm3,zmm4
  9605bf:	c5 7b 12 64 17 58    	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x58]
  9605c5:	c4 63 19 0d 64 17 50 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  9605cc:	01 
  9605cd:	62 72 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm4
  9605d3:	62 53 0d 48 18 fc 02 	vinsertf32x4 zmm15,zmm14,xmm12,0x2
  9605da:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  9605e0:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  9605e6:	c5 7b 12 a4 17 88 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x88]
  9605ed:	00 00 
  9605ef:	c4 63 19 0d a4 17 80 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  9605f6:	00 00 00 01 
  9605fa:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  960600:	62 53 7d 40 18 e4 02 	vinsertf32x4 zmm12,zmm16,xmm12,0x2
  960607:	62 c1 fd 48 28 cc    	vmovapd zmm17,zmm12
  96060d:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  960613:	c5 7b 12 84 17 b8 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0xb8]
  96061a:	00 00 
  96061c:	c4 63 39 0d 84 17 b0 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  960623:	00 00 00 01 
  960627:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  96062d:	62 c3 6d 40 18 c0 02 	vinsertf32x4 zmm16,zmm18,xmm8,0x2
  960634:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  96063a:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  960640:	62 e2 d5 48 7f c4    	vpermt2pd zmm16,zmm5,zmm4
  960646:	c5 7d 10 84 17 c0 00 	vmovupd ymm8,YMMWORD PTR [rdi+rdx*1+0xc0]
  96064d:	00 00 
  96064f:	c5 fb 12 bc 17 e8 00 	vmovddup xmm7,QWORD PTR [rdi+rdx*1+0xe8]
  960656:	00 00 
  960658:	c4 e3 41 0d bc 17 e0 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  96065f:	00 00 00 01 
  960663:	62 f3 3d 48 18 ff 02 	vinsertf32x4 zmm7,zmm8,xmm7,0x2
  96066a:	62 e1 fd 48 28 df    	vmovapd zmm19,zmm7
  960670:	62 e2 e5 48 7f dc    	vpermt2pd zmm19,zmm3,zmm4
  960676:	62 f2 d5 48 7f fc    	vpermt2pd zmm7,zmm5,zmm4
  96067c:	c5 7b 12 84 17 18 01 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0x118]
  960683:	00 00 
  960685:	62 e1 fd 28 10 b4 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0xf0]
  96068c:	f0 00 00 00 
  960690:	c4 63 39 0d 84 17 10 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  960697:	01 00 00 01 
  96069b:	62 53 4d 40 18 c0 02 	vinsertf32x4 zmm8,zmm22,xmm8,0x2
  9606a2:	62 c1 fd 48 28 f0    	vmovapd zmm22,zmm8
  9606a8:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  9606ae:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  9606b4:	62 e1 fd 28 10 7c 17 	vmovupd ymm23,YMMWORD PTR [rdi+rdx*1+0x120]
  9606bb:	09 
  9606bc:	c5 7b 12 8c 17 48 01 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x148]
  9606c3:	00 00 
  9606c5:	c4 63 31 0d 8c 17 40 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x140],0x1
  9606cc:	01 00 00 01 
  9606d0:	62 53 45 40 18 c9 02 	vinsertf32x4 zmm9,zmm23,xmm9,0x2
  9606d7:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  9606dd:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  9606e3:	62 72 d5 48 7f cc    	vpermt2pd zmm9,zmm5,zmm4
  9606e9:	c5 7b 12 94 17 78 01 	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x178]
  9606f0:	00 00 
  9606f2:	c4 63 29 0d 94 17 70 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x170],0x1
  9606f9:	01 00 00 01 
  9606fd:	62 61 fd 28 10 94 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x150]
  960704:	50 01 00 00 
  960708:	62 53 2d 40 18 d2 02 	vinsertf32x4 zmm10,zmm26,xmm10,0x2
  96070f:	62 41 fd 48 28 d2    	vmovapd zmm26,zmm10
  960715:	62 62 e5 48 7f d4    	vpermt2pd zmm26,zmm3,zmm4
  96071b:	62 72 d5 48 7f d4    	vpermt2pd zmm10,zmm5,zmm4
  960721:	62 61 95 48 58 df    	vaddpd zmm27,zmm13,zmm7
  960727:	62 f1 95 48 5c ff    	vsubpd zmm7,zmm13,zmm7
  96072d:	62 31 f5 40 58 ef    	vaddpd zmm13,zmm17,zmm23
  960733:	62 a1 f5 40 5c cf    	vsubpd zmm17,zmm17,zmm23
  960739:	62 c1 85 48 58 f8    	vaddpd zmm23,zmm15,zmm8
  96073f:	62 51 85 48 5c c0    	vsubpd zmm8,zmm15,zmm8
  960745:	62 31 8d 48 58 fe    	vaddpd zmm15,zmm14,zmm22
  96074b:	62 31 8d 48 5c f6    	vsubpd zmm14,zmm14,zmm22
  960751:	62 81 ed 40 58 f2    	vaddpd zmm22,zmm18,zmm26
  960757:	62 81 ed 40 5c d2    	vsubpd zmm18,zmm18,zmm26
  96075d:	62 41 fd 40 58 d2    	vaddpd zmm26,zmm16,zmm10
  960763:	62 51 fd 40 5c d2    	vsubpd zmm10,zmm16,zmm10
  960769:	62 a1 a5 48 58 c3    	vaddpd zmm16,zmm11,zmm19
  96076f:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  960775:	62 c1 9d 48 58 d9    	vaddpd zmm19,zmm12,zmm9
  96077b:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  960781:	62 51 bd 48 58 e6    	vaddpd zmm12,zmm8,zmm14
  960787:	62 51 8d 48 5c c0    	vsubpd zmm8,zmm14,zmm8
  96078d:	62 51 ed 40 5c f2    	vsubpd zmm14,zmm18,zmm10
  960793:	62 31 ad 48 58 d2    	vaddpd zmm10,zmm10,zmm18
  960799:	62 a1 a5 40 58 d3    	vaddpd zmm18,zmm27,zmm19
  96079f:	62 a1 a5 40 5c db    	vsubpd zmm19,zmm27,zmm19
  9607a5:	62 21 85 48 58 de    	vaddpd zmm27,zmm15,zmm22
  9607ab:	62 31 85 48 5c fe    	vsubpd zmm15,zmm15,zmm22
  9607b1:	62 c1 fd 40 58 f5    	vaddpd zmm22,zmm16,zmm13
  9607b7:	62 51 fd 40 5c ed    	vsubpd zmm13,zmm16,zmm13
  9607bd:	62 81 c5 40 58 c2    	vaddpd zmm16,zmm23,zmm26
  9607c3:	62 a1 ad 40 5c ff    	vsubpd zmm23,zmm26,zmm23
  9607c9:	62 21 c5 48 58 d1    	vaddpd zmm26,zmm7,zmm17
  9607cf:	62 71 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm6
  9607d5:	62 71 8d 48 59 f6    	vmulpd zmm14,zmm14,zmm6
  9607db:	62 71 bd 48 59 c6    	vmulpd zmm8,zmm8,zmm6
  9607e1:	62 71 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm6
  9607e7:	62 b1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm17
  9607ed:	62 c1 bd 48 5c ca    	vsubpd zmm17,zmm8,zmm10
  9607f3:	62 51 bd 48 58 c2    	vaddpd zmm8,zmm8,zmm10
  9607f9:	62 51 b5 48 58 d3    	vaddpd zmm10,zmm9,zmm11
  9607ff:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  960805:	62 51 9d 48 58 de    	vaddpd zmm11,zmm12,zmm14
  96080b:	62 51 8d 48 5c e4    	vsubpd zmm12,zmm14,zmm12
  960811:	62 31 ed 40 58 f0    	vaddpd zmm14,zmm18,zmm16
  960817:	62 a1 ed 40 5c c0    	vsubpd zmm16,zmm18,zmm16
  96081d:	62 81 cd 40 58 d3    	vaddpd zmm18,zmm22,zmm27
  960823:	62 81 cd 40 5c f3    	vsubpd zmm22,zmm22,zmm27
  960829:	62 41 ad 40 58 db    	vaddpd zmm27,zmm26,zmm11
  96082f:	62 51 ad 40 5c db    	vsubpd zmm11,zmm26,zmm11
  960835:	62 21 ad 48 58 d1    	vaddpd zmm26,zmm10,zmm17
  96083b:	62 31 ad 48 5c d1    	vsubpd zmm10,zmm10,zmm17
  960841:	62 c1 e5 40 58 cf    	vaddpd zmm17,zmm19,zmm15
  960847:	62 51 e5 40 5c ff    	vsubpd zmm15,zmm19,zmm15
  96084d:	62 c1 c5 40 58 dd    	vaddpd zmm19,zmm23,zmm13
  960853:	62 31 95 48 5c ef    	vsubpd zmm13,zmm13,zmm23
  960859:	62 c1 c5 48 58 f8    	vaddpd zmm23,zmm7,zmm8
  96085f:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  960865:	62 51 b5 48 58 c4    	vaddpd zmm8,zmm9,zmm12
  96086b:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  960871:	62 32 fd 48 7f f0    	vpermt2pd zmm14,zmm0,zmm16
  960877:	62 42 fd 48 7f db    	vpermt2pd zmm27,zmm0,zmm11
  96087d:	62 c2 fd 48 7f cf    	vpermt2pd zmm17,zmm0,zmm15
  960883:	62 e2 fd 48 7f ff    	vpermt2pd zmm23,zmm0,zmm7
  960889:	62 d1 fd 48 28 fe    	vmovapd zmm7,zmm14
  96088f:	62 b2 f5 48 7f f9    	vpermt2pd zmm7,zmm1,zmm17
  960895:	62 32 ed 48 7f f1    	vpermt2pd zmm14,zmm2,zmm17
  96089b:	62 11 fd 48 28 db    	vmovapd zmm11,zmm27
  9608a1:	62 32 f5 48 7f df    	vpermt2pd zmm11,zmm1,zmm23
  9608a7:	62 22 ed 48 7f df    	vpermt2pd zmm27,zmm2,zmm23
  9608ad:	62 11 8d 48 14 e3    	vunpcklpd zmm12,zmm14,zmm27
  9608b3:	62 51 c5 48 14 f3    	vunpcklpd zmm14,zmm7,zmm11
  9608b9:	62 d1 c5 48 15 fb    	vunpckhpd zmm7,zmm7,zmm11
  9608bf:	62 a2 fd 48 7f d6    	vpermt2pd zmm18,zmm0,zmm22
  9608c5:	62 42 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm10
  9608cb:	62 c2 fd 48 7f dd    	vpermt2pd zmm19,zmm0,zmm13
  9608d1:	62 52 fd 48 7f c1    	vpermt2pd zmm8,zmm0,zmm9
  9608d7:	62 31 fd 48 28 ca    	vmovapd zmm9,zmm18
  9608dd:	62 32 f5 48 7f cb    	vpermt2pd zmm9,zmm1,zmm19
  9608e3:	62 a2 ed 48 7f d3    	vpermt2pd zmm18,zmm2,zmm19
  9608e9:	62 11 fd 48 28 d2    	vmovapd zmm10,zmm26
  9608ef:	62 52 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm8
  9608f5:	62 42 ed 48 7f d0    	vpermt2pd zmm26,zmm2,zmm8
  9608fb:	62 11 ed 40 14 c2    	vunpcklpd zmm8,zmm18,zmm26
  960901:	62 51 b5 48 14 da    	vunpcklpd zmm11,zmm9,zmm10
  960907:	62 51 b5 48 15 ca    	vunpckhpd zmm9,zmm9,zmm10
  96090d:	62 71 fd 48 10 51 02 	vmovupd zmm10,ZMMWORD PTR [rcx+0x80]
  960914:	62 71 fd 48 10 69 03 	vmovupd zmm13,ZMMWORD PTR [rcx+0xc0]
  96091b:	62 51 b5 48 59 fa    	vmulpd zmm15,zmm9,zmm10
  960921:	62 52 c5 48 b8 fd    	vfmadd231pd zmm15,zmm7,zmm13
  960927:	62 d1 c5 48 59 fa    	vmulpd zmm7,zmm7,zmm10
  96092d:	62 71 fd 48 10 51 04 	vmovupd zmm10,ZMMWORD PTR [rcx+0x100]
  960934:	62 d2 b5 48 bc fd    	vfnmadd231pd zmm7,zmm9,zmm13
  96093a:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  960941:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  960947:	62 52 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm9
  96094d:	62 51 9d 48 59 d2    	vmulpd zmm10,zmm12,zmm10
  960953:	62 51 85 48 58 e5    	vaddpd zmm12,zmm15,zmm13
  960959:	62 52 bd 48 bc d1    	vfnmadd231pd zmm10,zmm8,zmm9
  96095f:	62 31 fd 48 28 c5    	vmovapd zmm8,zmm21
  960965:	62 52 9d 48 ac c3    	vfnmadd213pd zmm8,zmm12,zmm11
  96096b:	62 51 c5 48 5c ca    	vsubpd zmm9,zmm7,zmm10
  960971:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  960977:	62 d1 c5 48 58 fa    	vaddpd zmm7,zmm7,zmm10
  96097d:	62 51 bd 48 58 d1    	vaddpd zmm10,zmm8,zmm9
  960983:	62 51 85 48 5c ed    	vsubpd zmm13,zmm15,zmm13
  960989:	62 31 fd 48 28 fd    	vmovapd zmm15,zmm21
  96098f:	62 52 c5 48 ac fe    	vfnmadd213pd zmm15,zmm7,zmm14
  960995:	62 31 95 48 59 ec    	vmulpd zmm13,zmm13,zmm20
  96099b:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  9609a1:	62 51 85 48 5c cd    	vsubpd zmm9,zmm15,zmm13
  9609a7:	62 51 85 48 58 ed    	vaddpd zmm13,zmm15,zmm13
  9609ad:	62 51 a5 48 58 dc    	vaddpd zmm11,zmm11,zmm12
  9609b3:	62 f1 8d 48 58 ff    	vaddpd zmm7,zmm14,zmm7
  9609b9:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  9609bf:	62 72 bd 40 7f e7    	vpermt2pd zmm12,zmm24,zmm7
  9609c5:	62 72 b5 40 7f df    	vpermt2pd zmm11,zmm25,zmm7
  9609cb:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  9609d2:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  9609d9:	01 
  9609da:	62 d1 fd 48 28 f8    	vmovapd zmm7,zmm8
  9609e0:	62 d2 bd 40 7f fd    	vpermt2pd zmm7,zmm24,zmm13
  9609e6:	62 52 b5 40 7f c5    	vpermt2pd zmm8,zmm25,zmm13
  9609ec:	62 71 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm8
  9609f3:	02 
  9609f4:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  9609fb:	03 
  9609fc:	62 d1 fd 48 28 fa    	vmovapd zmm7,zmm10
  960a02:	62 d2 bd 40 7f f9    	vpermt2pd zmm7,zmm24,zmm9
  960a08:	62 52 b5 40 7f d1    	vpermt2pd zmm10,zmm25,zmm9
  960a0e:	62 71 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm10
  960a15:	04 
  960a16:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm7
  960a1d:	05 
  960a1e:	48 81 c2 80 01 00 00 	add    rdx,0x180
  960a25:	48 39 d0             	cmp    rax,rdx
  960a28:	0f 85 52 fb ff ff    	jne    960580 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  960a2e:	c5 f8 77             	vzeroupper
  960a31:	c3                   	ret
