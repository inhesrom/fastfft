
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000922580 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  922580:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7a47de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  922587:	47 7a ff 
  92258a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7a4814]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  922591:	48 7a ff 
  922594:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  922598:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  92259c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  9225a2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9225a6:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  9225ac:	62 f1 fd 48 10 2d 32 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7a4732]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9225b3:	47 7a ff 
  9225b6:	62 f1 fd 48 10 35 68 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7a4768]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9225bd:	47 7a ff 
  9225c0:	48 c1 e2 07          	shl    rdx,0x7
  9225c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9225c8:	31 d2                	xor    edx,edx
  9225ca:	62 f1 fd 48 28 3d ac 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff75e6ac]        # 80c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe130>
  9225d1:	e6 75 ff 
  9225d4:	62 71 fd 48 28 15 e2 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff75e6e2]        # 80cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe170>
  9225db:	e6 75 ff 
  9225de:	62 72 fd 48 19 1d b8 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff7528b8]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  9225e5:	28 75 ff 
  9225e8:	62 71 fd 48 28 25 0e 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff75e70e]        # 80d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe1b0>
  9225ef:	e7 75 ff 
  9225f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  9225f9:	1f 84 00 00 00 00 00 
  922600:	62 71 fd 48 10 2c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1]
  922607:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  92260e:	01 
  92260f:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  922616:	02 
  922617:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  92261e:	03 
  92261f:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  922625:	62 c2 c5 48 7f ce    	vpermt2pd zmm17,zmm7,zmm14
  92262b:	62 52 ad 48 7f ee    	vpermt2pd zmm13,zmm10,zmm14
  922631:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  922637:	62 32 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm16
  92263d:	62 32 ad 48 7f f8    	vpermt2pd zmm15,zmm10,zmm16
  922643:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  92264a:	04 
  92264b:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  922652:	05 
  922653:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  922659:	62 a2 c5 48 7f da    	vpermt2pd zmm19,zmm7,zmm18
  92265f:	62 a2 ad 48 7f c2    	vpermt2pd zmm16,zmm10,zmm18
  922665:	62 a1 8d 48 58 d3    	vaddpd zmm18,zmm14,zmm19
  92266b:	62 a1 f5 40 58 e2    	vaddpd zmm20,zmm17,zmm18
  922671:	62 a1 85 48 58 e8    	vaddpd zmm21,zmm15,zmm16
  922677:	62 21 95 48 58 d5    	vaddpd zmm26,zmm13,zmm21
  92267d:	62 72 fd 48 19 05 11 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff752411]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  922684:	24 75 ff 
  922687:	62 a2 bd 48 bc ca    	vfnmadd231pd zmm17,zmm8,zmm18
  92268d:	62 31 85 48 5c f8    	vsubpd zmm15,zmm15,zmm16
  922693:	62 72 fd 48 19 0d 83 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff752583]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  92269a:	25 75 ff 
  92269d:	62 51 85 48 59 f9    	vmulpd zmm15,zmm15,zmm9
  9226a3:	62 c1 f5 40 58 ff    	vaddpd zmm23,zmm17,zmm15
  9226a9:	62 32 bd 48 bc ed    	vfnmadd231pd zmm13,zmm8,zmm21
  9226af:	62 31 8d 48 5c f3    	vsubpd zmm14,zmm14,zmm19
  9226b5:	62 51 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm9
  9226bb:	62 41 95 48 5c e6    	vsubpd zmm28,zmm13,zmm14
  9226c1:	62 51 f5 40 5c ff    	vsubpd zmm15,zmm17,zmm15
  9226c7:	62 41 8d 48 58 c5    	vaddpd zmm24,zmm14,zmm13
  9226cd:	62 a1 fd 48 28 c4    	vmovapd zmm16,zmm20
  9226d3:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  9226d9:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  9226df:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  9226e5:	62 e2 fd 48 7f ca    	vpermt2pd zmm17,zmm0,zmm2
  9226eb:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  9226f1:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  9226f7:	62 72 fd 48 7f f2    	vpermt2pd zmm14,zmm0,zmm2
  9226fd:	62 72 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm2
  922703:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  922709:	62 52 d5 48 7f ee    	vpermt2pd zmm13,zmm5,zmm14
  92270f:	62 c2 cd 48 7f c6    	vpermt2pd zmm16,zmm6,zmm14
  922715:	62 31 fd 48 28 f1    	vmovapd zmm14,zmm17
  92271b:	62 72 d5 48 7f f3    	vpermt2pd zmm14,zmm5,zmm3
  922721:	62 e2 cd 48 7f cb    	vpermt2pd zmm17,zmm6,zmm3
  922727:	62 a1 fd 48 28 d4    	vmovapd zmm18,zmm20
  92272d:	62 c2 d5 48 7f d7    	vpermt2pd zmm18,zmm5,zmm15
  922733:	62 c2 cd 48 7f e7    	vpermt2pd zmm20,zmm6,zmm15
  922739:	62 31 fd 48 28 ff    	vmovapd zmm15,zmm23
  92273f:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  922745:	62 e2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm4
  92274b:	62 c1 95 48 15 de    	vunpckhpd zmm19,zmm13,zmm14
  922751:	62 a1 fd 40 14 f1    	vunpcklpd zmm22,zmm16,zmm17
  922757:	62 a1 fd 40 15 c1    	vunpckhpd zmm16,zmm16,zmm17
  92275d:	62 41 ed 40 14 cf    	vunpcklpd zmm25,zmm18,zmm15
  922763:	62 c1 ed 40 15 d7    	vunpckhpd zmm18,zmm18,zmm15
  922769:	62 a1 dd 40 14 ef    	vunpcklpd zmm21,zmm20,zmm23
  92276f:	62 31 dd 40 15 ff    	vunpckhpd zmm15,zmm20,zmm23
  922775:	62 81 fd 48 28 fa    	vmovapd zmm23,zmm26
  92277b:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  922781:	62 62 f5 48 7f d2    	vpermt2pd zmm26,zmm1,zmm2
  922787:	62 01 fd 48 28 dc    	vmovapd zmm27,zmm28
  92278d:	62 62 fd 48 7f da    	vpermt2pd zmm27,zmm0,zmm2
  922793:	62 62 f5 48 7f e2    	vpermt2pd zmm28,zmm1,zmm2
  922799:	62 81 fd 48 28 e0    	vmovapd zmm20,zmm24
  92279f:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  9227a5:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  9227ab:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  9227b1:	62 a2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm20
  9227b7:	62 a2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm20
  9227bd:	62 81 fd 48 28 e3    	vmovapd zmm20,zmm27
  9227c3:	62 e2 d5 48 7f e3    	vpermt2pd zmm20,zmm5,zmm3
  9227c9:	62 62 cd 48 7f db    	vpermt2pd zmm27,zmm6,zmm3
  9227cf:	62 01 fd 48 28 f2    	vmovapd zmm30,zmm26
  9227d5:	62 02 d5 48 7f f0    	vpermt2pd zmm30,zmm5,zmm24
  9227db:	62 02 cd 48 7f d0    	vpermt2pd zmm26,zmm6,zmm24
  9227e1:	62 01 fd 48 28 fc    	vmovapd zmm31,zmm28
  9227e7:	62 62 d5 48 7f fc    	vpermt2pd zmm31,zmm5,zmm4
  9227ed:	62 62 cd 48 7f e4    	vpermt2pd zmm28,zmm6,zmm4
  9227f3:	62 21 f5 40 15 ec    	vunpckhpd zmm29,zmm17,zmm20
  9227f9:	62 11 c5 40 14 c3    	vunpcklpd zmm8,zmm23,zmm27
  9227ff:	62 01 c5 40 15 c3    	vunpckhpd zmm24,zmm23,zmm27
  922805:	62 11 8d 40 14 cf    	vunpcklpd zmm9,zmm30,zmm31
  92280b:	62 01 8d 40 15 df    	vunpckhpd zmm27,zmm30,zmm31
  922811:	62 81 ad 40 15 fc    	vunpckhpd zmm23,zmm26,zmm28
  922817:	62 01 ad 40 14 f4    	vunpcklpd zmm30,zmm26,zmm28
  92281d:	62 61 fd 48 10 61 08 	vmovupd zmm28,ZMMWORD PTR [rcx+0x200]
  922824:	62 61 fd 48 10 79 09 	vmovupd zmm31,ZMMWORD PTR [rcx+0x240]
  92282b:	62 01 b5 40 59 d4    	vmulpd zmm26,zmm25,zmm28
  922831:	62 02 b5 48 bc d7    	vfnmadd231pd zmm26,zmm9,zmm31
  922837:	62 01 b5 48 59 e4    	vmulpd zmm28,zmm9,zmm28
  92283d:	62 71 fd 48 10 49 04 	vmovupd zmm9,ZMMWORD PTR [rcx+0x100]
  922844:	62 02 b5 40 b8 e7    	vfmadd231pd zmm28,zmm25,zmm31
  92284a:	62 61 fd 48 10 79 05 	vmovupd zmm31,ZMMWORD PTR [rcx+0x140]
  922851:	62 41 cd 40 59 c9    	vmulpd zmm25,zmm22,zmm9
  922857:	62 02 bd 48 bc cf    	vfnmadd231pd zmm25,zmm8,zmm31
  92285d:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  922863:	62 71 fd 48 10 49 0c 	vmovupd zmm9,ZMMWORD PTR [rcx+0x300]
  92286a:	62 12 cd 40 b8 c7    	vfmadd231pd zmm8,zmm22,zmm31
  922870:	62 e1 fd 48 10 71 0d 	vmovupd zmm22,ZMMWORD PTR [rcx+0x340]
  922877:	62 41 d5 40 59 f9    	vmulpd zmm31,zmm21,zmm9
  92287d:	62 22 8d 40 bc fe    	vfnmadd231pd zmm31,zmm30,zmm22
  922883:	62 51 8d 40 59 c9    	vmulpd zmm9,zmm30,zmm9
  922889:	62 61 fd 48 10 71 02 	vmovupd zmm30,ZMMWORD PTR [rcx+0x80]
  922890:	62 32 d5 40 b8 ce    	vfmadd231pd zmm9,zmm21,zmm22
  922896:	62 e1 fd 48 10 69 03 	vmovupd zmm21,ZMMWORD PTR [rcx+0xc0]
  92289d:	62 81 e5 40 59 f6    	vmulpd zmm22,zmm19,zmm30
  9228a3:	62 a2 95 40 bc f5    	vfnmadd231pd zmm22,zmm29,zmm21
  9228a9:	62 01 95 40 59 ee    	vmulpd zmm29,zmm29,zmm30
  9228af:	62 61 fd 48 10 71 0a 	vmovupd zmm30,ZMMWORD PTR [rcx+0x280]
  9228b6:	62 22 e5 40 b8 ed    	vfmadd231pd zmm29,zmm19,zmm21
  9228bc:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  9228c3:	62 81 ed 40 59 ee    	vmulpd zmm21,zmm18,zmm30
  9228c9:	62 a2 a5 40 bc eb    	vfnmadd231pd zmm21,zmm27,zmm19
  9228cf:	62 01 a5 40 59 de    	vmulpd zmm27,zmm27,zmm30
  9228d5:	62 61 fd 48 10 71 06 	vmovupd zmm30,ZMMWORD PTR [rcx+0x180]
  9228dc:	62 22 ed 40 b8 db    	vfmadd231pd zmm27,zmm18,zmm19
  9228e2:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  9228e9:	62 81 fd 40 59 de    	vmulpd zmm19,zmm16,zmm30
  9228ef:	62 a2 bd 40 bc da    	vfnmadd231pd zmm19,zmm24,zmm18
  9228f5:	62 01 bd 40 59 c6    	vmulpd zmm24,zmm24,zmm30
  9228fb:	62 61 fd 48 10 71 0e 	vmovupd zmm30,ZMMWORD PTR [rcx+0x380]
  922902:	62 22 fd 40 b8 c2    	vfmadd231pd zmm24,zmm16,zmm18
  922908:	62 e1 fd 48 10 41 0f 	vmovupd zmm16,ZMMWORD PTR [rcx+0x3c0]
  92290f:	62 81 85 48 59 d6    	vmulpd zmm18,zmm15,zmm30
  922915:	62 a2 c5 40 bc d0    	vfnmadd231pd zmm18,zmm23,zmm16
  92291b:	62 81 c5 40 59 fe    	vmulpd zmm23,zmm23,zmm30
  922921:	62 a2 85 48 b8 f8    	vfmadd231pd zmm23,zmm15,zmm16
  922927:	62 51 95 48 14 ee    	vunpcklpd zmm13,zmm13,zmm14
  92292d:	62 31 f5 40 14 f4    	vunpcklpd zmm14,zmm17,zmm20
  922933:	62 11 95 48 58 fa    	vaddpd zmm15,zmm13,zmm26
  922939:	62 11 95 48 5c ea    	vsubpd zmm13,zmm13,zmm26
  92293f:	62 c1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm9
  922945:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  92294b:	62 31 cd 40 58 cd    	vaddpd zmm9,zmm22,zmm21
  922951:	62 a1 cd 40 5c cd    	vsubpd zmm17,zmm22,zmm21
  922957:	62 81 95 40 58 e3    	vaddpd zmm20,zmm29,zmm27
  92295d:	62 81 95 40 5c eb    	vsubpd zmm21,zmm29,zmm27
  922963:	62 a1 bd 40 58 f7    	vaddpd zmm22,zmm24,zmm23
  922969:	62 a1 bd 40 5c ff    	vsubpd zmm23,zmm24,zmm23
  92296f:	62 21 e5 40 58 c2    	vaddpd zmm24,zmm19,zmm18
  922975:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  92297b:	62 c1 9d 40 58 de    	vaddpd zmm19,zmm28,zmm14
  922981:	62 11 8d 48 5c f4    	vsubpd zmm14,zmm14,zmm28
  922987:	62 01 b5 40 58 d7    	vaddpd zmm26,zmm25,zmm31
  92298d:	62 01 85 40 5c c9    	vsubpd zmm25,zmm31,zmm25
  922993:	62 21 f5 40 58 dd    	vaddpd zmm27,zmm17,zmm21
  922999:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  92299f:	62 a1 c5 40 5c ea    	vsubpd zmm21,zmm23,zmm18
  9229a5:	62 a1 ed 40 58 d7    	vaddpd zmm18,zmm18,zmm23
  9229ab:	62 81 85 48 58 fa    	vaddpd zmm23,zmm15,zmm26
  9229b1:	62 11 85 48 5c fa    	vsubpd zmm15,zmm15,zmm26
  9229b7:	62 21 dd 40 58 d6    	vaddpd zmm26,zmm20,zmm22
  9229bd:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  9229c3:	62 a1 fd 40 58 f3    	vaddpd zmm22,zmm16,zmm19
  9229c9:	62 a1 e5 40 5c c0    	vsubpd zmm16,zmm19,zmm16
  9229cf:	62 81 b5 48 58 d8    	vaddpd zmm19,zmm9,zmm24
  9229d5:	62 51 bd 40 5c c9    	vsubpd zmm9,zmm24,zmm9
  9229db:	62 41 95 48 58 c0    	vaddpd zmm24,zmm13,zmm8
  9229e1:	62 41 a5 40 59 db    	vmulpd zmm27,zmm27,zmm11
  9229e7:	62 c1 d5 40 59 eb    	vmulpd zmm21,zmm21,zmm11
  9229ed:	62 c1 f5 40 59 cb    	vmulpd zmm17,zmm17,zmm11
  9229f3:	62 c1 ed 40 59 d3    	vmulpd zmm18,zmm18,zmm11
  9229f9:	62 51 95 48 5c c0    	vsubpd zmm8,zmm13,zmm8
  9229ff:	62 31 f5 40 5c ea    	vsubpd zmm13,zmm17,zmm18
  922a05:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  922a0b:	62 c1 b5 40 58 d6    	vaddpd zmm18,zmm25,zmm14
  922a11:	62 11 8d 48 5c f1    	vsubpd zmm14,zmm14,zmm25
  922a17:	62 21 a5 40 58 cd    	vaddpd zmm25,zmm27,zmm21
  922a1d:	62 81 d5 40 5c eb    	vsubpd zmm21,zmm21,zmm27
  922a23:	62 01 bd 40 58 d9    	vaddpd zmm27,zmm24,zmm25
  922a29:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  922a2f:	62 41 ed 40 58 cd    	vaddpd zmm25,zmm18,zmm13
  922a35:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  922a3b:	62 a1 85 48 58 d4    	vaddpd zmm18,zmm15,zmm20
  922a41:	62 31 85 48 5c fc    	vsubpd zmm15,zmm15,zmm20
  922a47:	62 c1 fd 40 58 e1    	vaddpd zmm20,zmm16,zmm9
  922a4d:	62 51 fd 40 5c c9    	vsubpd zmm9,zmm16,zmm9
  922a53:	62 a1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm17
  922a59:	62 31 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm17
  922a5f:	62 a1 8d 48 58 cd    	vaddpd zmm17,zmm14,zmm21
  922a65:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  922a6b:	62 a1 c5 40 5c eb    	vsubpd zmm21,zmm23,zmm19
  922a71:	62 a1 c5 40 58 db    	vaddpd zmm19,zmm23,zmm19
  922a77:	62 81 cd 40 5c fa    	vsubpd zmm23,zmm22,zmm26
  922a7d:	62 81 cd 40 58 f2    	vaddpd zmm22,zmm22,zmm26
  922a83:	62 a2 9d 48 7f de    	vpermt2pd zmm19,zmm12,zmm22
  922a89:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm19,0x2
  922a90:	02 02 
  922a92:	62 e1 fd 28 11 1c 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm19
  922a99:	62 02 9d 48 7f d9    	vpermt2pd zmm27,zmm12,zmm25
  922a9f:	62 63 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm27,0x2
  922aa6:	05 02 
  922aa8:	62 61 fd 28 11 9c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm27
  922aaf:	30 00 00 00 
  922ab3:	62 a2 9d 48 7f d4    	vpermt2pd zmm18,zmm12,zmm20
  922ab9:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm18,0x2
  922ac0:	08 02 
  922ac2:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm18
  922ac9:	03 
  922aca:	62 a2 9d 48 7f c1    	vpermt2pd zmm16,zmm12,zmm17
  922ad0:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  922ad7:	0b 02 
  922ad9:	62 e1 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  922ae0:	90 00 00 00 
  922ae4:	62 a2 9d 48 7f ef    	vpermt2pd zmm21,zmm12,zmm23
  922aea:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm21,0x2
  922af1:	0e 02 
  922af3:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  922afa:	06 
  922afb:	62 42 9d 48 7f c5    	vpermt2pd zmm24,zmm12,zmm13
  922b01:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm24,0x2
  922b08:	11 02 
  922b0a:	62 61 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm24
  922b11:	f0 00 00 00 
  922b15:	62 52 9d 48 7f f9    	vpermt2pd zmm15,zmm12,zmm9
  922b1b:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm15,0x2
  922b22:	14 02 
  922b24:	c5 7d 11 bc 16 20 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x120],ymm15
  922b2b:	00 00 
  922b2d:	62 52 9d 48 7f c6    	vpermt2pd zmm8,zmm12,zmm14
  922b33:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm8,0x2
  922b3a:	17 02 
  922b3c:	c5 7d 11 84 16 50 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x150],ymm8
  922b43:	00 00 
  922b45:	48 81 c2 80 01 00 00 	add    rdx,0x180
  922b4c:	48 39 d0             	cmp    rax,rdx
  922b4f:	0f 85 ab fa ff ff    	jne    922600 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  922b55:	c5 f8 77             	vzeroupper
  922b58:	c3                   	ret
