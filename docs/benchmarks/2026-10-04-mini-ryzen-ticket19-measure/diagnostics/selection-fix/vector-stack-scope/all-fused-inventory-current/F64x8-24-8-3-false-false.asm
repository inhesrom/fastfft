
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000973380 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  973380:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  973385:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  97338c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  973390:	c5 fd 10 67 30       	vmovupd ymm4,YMMWORD PTR [rdi+0x30]
  973395:	c5 fd 10 7f 60       	vmovupd ymm7,YMMWORD PTR [rdi+0x60]
  97339a:	c5 7d 10 8f 90 00 00 	vmovupd ymm9,YMMWORD PTR [rdi+0x90]
  9733a1:	00 
  9733a2:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  9733a9:	62 f1 fd 48 28 0d 0d 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff713d0d]        # 870c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14570>
  9733b0:	3d 71 ff 
  9733b3:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  9733b7:	62 e1 fd 48 28 d0    	vmovapd zmm18,zmm0
  9733bd:	62 e2 f5 48 7f d2    	vpermt2pd zmm18,zmm1,zmm2
  9733c3:	62 71 fd 48 28 1d 33 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff713d33]        # 87100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x145b0>
  9733ca:	3d 71 ff 
  9733cd:	62 f2 a5 48 7f c2    	vpermt2pd zmm0,zmm11,zmm2
  9733d3:	c5 fb 12 6f 58       	vmovddup xmm5,QWORD PTR [rdi+0x58]
  9733d8:	c4 e3 51 0d 6f 50 01 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+0x50],0x1
  9733df:	62 f3 5d 48 18 ed 02 	vinsertf32x4 zmm5,zmm4,xmm5,0x2
  9733e6:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  9733ec:	62 f2 f5 48 7f f2    	vpermt2pd zmm6,zmm1,zmm2
  9733f2:	62 f2 a5 48 7f ea    	vpermt2pd zmm5,zmm11,zmm2
  9733f8:	c5 fb 12 a7 88 00 00 	vmovddup xmm4,QWORD PTR [rdi+0x88]
  9733ff:	00 
  973400:	c4 e3 59 0d a7 80 00 	vblendpd xmm4,xmm4,XMMWORD PTR [rdi+0x80],0x1
  973407:	00 00 01 
  97340a:	62 73 45 48 18 c4 02 	vinsertf32x4 zmm8,zmm7,xmm4,0x2
  973411:	62 d1 fd 48 28 e0    	vmovapd zmm4,zmm8
  973417:	62 f2 f5 48 7f e2    	vpermt2pd zmm4,zmm1,zmm2
  97341d:	62 72 a5 48 7f c2    	vpermt2pd zmm8,zmm11,zmm2
  973423:	c5 fb 12 bf b8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xb8]
  97342a:	00 
  97342b:	c4 e3 41 0d bf b0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xb0],0x1
  973432:	00 00 01 
  973435:	62 73 35 48 18 d7 02 	vinsertf32x4 zmm10,zmm9,xmm7,0x2
  97343c:	62 51 fd 48 28 ca    	vmovapd zmm9,zmm10
  973442:	62 72 f5 48 7f ca    	vpermt2pd zmm9,zmm1,zmm2
  973448:	62 72 a5 48 7f d2    	vpermt2pd zmm10,zmm11,zmm2
  97344e:	c5 fb 12 bf e8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xe8]
  973455:	00 
  973456:	c4 e3 41 0d bf e0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xe0],0x1
  97345d:	00 00 01 
  973460:	c5 7d 10 a7 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdi+0xc0]
  973467:	00 
  973468:	62 73 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm7,0x2
  97346f:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  973475:	62 72 f5 48 7f ea    	vpermt2pd zmm13,zmm1,zmm2
  97347b:	62 72 a5 48 7f e2    	vpermt2pd zmm12,zmm11,zmm2
  973481:	c5 fd 10 bf f0 00 00 	vmovupd ymm7,YMMWORD PTR [rdi+0xf0]
  973488:	00 
  973489:	c5 7b 12 b7 18 01 00 	vmovddup xmm14,QWORD PTR [rdi+0x118]
  973490:	00 
  973491:	c4 63 09 0d b7 10 01 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+0x110],0x1
  973498:	00 00 01 
  97349b:	62 53 45 48 18 f6 02 	vinsertf32x4 zmm14,zmm7,xmm14,0x2
  9734a2:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  9734a8:	62 72 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm2
  9734ae:	62 72 a5 48 7f f2    	vpermt2pd zmm14,zmm11,zmm2
  9734b4:	c5 fb 12 bf 48 01 00 	vmovddup xmm7,QWORD PTR [rdi+0x148]
  9734bb:	00 
  9734bc:	62 e1 fd 28 10 47 09 	vmovupd ymm16,YMMWORD PTR [rdi+0x120]
  9734c3:	c4 e3 41 0d bf 40 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x140],0x1
  9734ca:	00 00 01 
  9734cd:	62 e3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm7,0x2
  9734d4:	62 a1 fd 48 28 c8    	vmovapd zmm17,zmm16
  9734da:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  9734e0:	62 e2 a5 48 7f c2    	vpermt2pd zmm16,zmm11,zmm2
  9734e6:	c5 fd 10 bf 50 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x150]
  9734ed:	00 
  9734ee:	c5 fb 12 9f 78 01 00 	vmovddup xmm3,QWORD PTR [rdi+0x178]
  9734f5:	00 
  9734f6:	c4 e3 61 0d 9f 70 01 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0x170],0x1
  9734fd:	00 00 01 
  973500:	62 f3 45 48 18 db 02 	vinsertf32x4 zmm3,zmm7,xmm3,0x2
  973507:	62 f2 e5 48 77 ca    	vpermi2pd zmm1,zmm3,zmm2
  97350d:	62 f2 a5 48 7f da    	vpermt2pd zmm3,zmm11,zmm2
  973513:	62 51 ed 40 58 dd    	vaddpd zmm11,zmm18,zmm13
  973519:	62 a1 dd 48 58 d9    	vaddpd zmm19,zmm4,zmm17
  97351f:	62 a1 a5 48 58 e3    	vaddpd zmm20,zmm11,zmm19
  973525:	62 c1 cd 48 58 ef    	vaddpd zmm21,zmm6,zmm15
  97352b:	62 e1 b5 48 58 f1    	vaddpd zmm22,zmm9,zmm1
  973531:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  973537:	62 b1 dd 40 58 ff    	vaddpd zmm7,zmm20,zmm23
  97353d:	62 41 fd 48 58 c4    	vaddpd zmm24,zmm0,zmm12
  973543:	62 21 bd 48 58 c8    	vaddpd zmm25,zmm8,zmm16
  973549:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  97354f:	62 41 d5 48 58 de    	vaddpd zmm27,zmm5,zmm14
  973555:	62 61 ad 48 58 e3    	vaddpd zmm28,zmm10,zmm3
  97355b:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  973561:	62 91 ad 40 58 d5    	vaddpd zmm2,zmm26,zmm29
  973567:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  97356d:	62 31 bd 48 5c c0    	vsubpd zmm8,zmm8,zmm16
  973573:	62 c1 95 48 58 c0    	vaddpd zmm16,zmm13,zmm8
  973579:	62 d1 cd 48 5c f7    	vsubpd zmm6,zmm6,zmm15
  97357f:	62 d1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm14
  973585:	62 72 fd 48 19 35 11 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff701911]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  97358c:	19 70 ff 
  97358f:	62 71 cd 48 58 fd    	vaddpd zmm15,zmm6,zmm5
  973595:	62 51 85 48 59 fe    	vmulpd zmm15,zmm15,zmm14
  97359b:	62 f1 ad 48 5c db    	vsubpd zmm3,zmm10,zmm3
  9735a1:	62 f1 b5 48 5c c9    	vsubpd zmm1,zmm9,zmm1
  9735a7:	62 71 e5 48 5c c9    	vsubpd zmm9,zmm3,zmm1
  9735ad:	62 51 b5 48 59 ce    	vmulpd zmm9,zmm9,zmm14
  9735b3:	62 51 85 48 58 d1    	vaddpd zmm10,zmm15,zmm9
  9735b9:	62 c1 fd 40 58 d2    	vaddpd zmm18,zmm16,zmm10
  9735bf:	62 d1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm12
  9735c5:	62 f1 f5 40 5c e4    	vsubpd zmm4,zmm17,zmm4
  9735cb:	62 71 dd 48 58 e0    	vaddpd zmm12,zmm4,zmm0
  9735d1:	62 f1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm6
  9735d7:	62 d1 d5 48 59 ee    	vmulpd zmm5,zmm5,zmm14
  9735dd:	62 f1 f5 48 58 cb    	vaddpd zmm1,zmm1,zmm3
  9735e3:	62 d1 f5 48 59 ce    	vmulpd zmm1,zmm1,zmm14
  9735e9:	62 f1 d5 48 5c d9    	vsubpd zmm3,zmm5,zmm1
  9735ef:	62 f1 9d 48 58 f3    	vaddpd zmm6,zmm12,zmm3
  9735f5:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  9735fb:	62 11 a5 40 5c f4    	vsubpd zmm14,zmm27,zmm28
  973601:	62 c1 a5 48 58 ce    	vaddpd zmm17,zmm11,zmm14
  973607:	62 81 bd 40 5c d9    	vsubpd zmm19,zmm24,zmm25
  97360d:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  973613:	62 a1 d5 40 58 f3    	vaddpd zmm22,zmm21,zmm19
  973619:	62 51 95 48 5c c0    	vsubpd zmm8,zmm13,zmm8
  97361f:	62 f1 d5 48 58 c9    	vaddpd zmm1,zmm5,zmm1
  973625:	62 f1 bd 48 58 e9    	vaddpd zmm5,zmm8,zmm1
  97362b:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  973631:	62 d1 b5 48 5c e7    	vsubpd zmm4,zmm9,zmm15
  973637:	62 71 fd 48 58 cc    	vaddpd zmm9,zmm0,zmm4
  97363d:	62 31 dd 40 5c ef    	vsubpd zmm13,zmm20,zmm23
  973643:	62 11 ad 40 5c fd    	vsubpd zmm15,zmm26,zmm29
  973649:	62 51 fd 40 5c d2    	vsubpd zmm10,zmm16,zmm10
  97364f:	62 f1 9d 48 5c db    	vsubpd zmm3,zmm12,zmm3
  973655:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  97365b:	62 31 e5 40 5c e5    	vsubpd zmm12,zmm19,zmm21
  973661:	62 f1 bd 48 5c c9    	vsubpd zmm1,zmm8,zmm1
  973667:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  97366d:	62 f1 fd 48 10 25 f1 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7536f1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  973674:	36 75 ff 
  973677:	62 d2 dd 48 7f fd    	vpermt2pd zmm7,zmm4,zmm13
  97367d:	62 c2 dd 48 7f d2    	vpermt2pd zmm18,zmm4,zmm10
  973683:	62 c2 dd 48 7f cb    	vpermt2pd zmm17,zmm4,zmm11
  973689:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  97368f:	62 f1 fd 48 10 0d 4f 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75364f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  973696:	36 75 ff 
  973699:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  97369f:	62 32 f5 48 7f c1    	vpermt2pd zmm8,zmm1,zmm17
  9736a5:	62 71 fd 48 10 15 79 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff753679]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9736ac:	36 75 ff 
  9736af:	62 b2 ad 48 7f f9    	vpermt2pd zmm7,zmm10,zmm17
  9736b5:	62 31 fd 48 28 da    	vmovapd zmm11,zmm18
  9736bb:	62 72 f5 48 7f dd    	vpermt2pd zmm11,zmm1,zmm5
  9736c1:	62 e2 ad 48 7f d5    	vpermt2pd zmm18,zmm10,zmm5
  9736c7:	62 b1 c5 48 14 ea    	vunpcklpd zmm5,zmm7,zmm18
  9736cd:	62 d1 bd 48 14 fb    	vunpcklpd zmm7,zmm8,zmm11
  9736d3:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  9736d9:	62 d2 dd 48 7f d7    	vpermt2pd zmm2,zmm4,zmm15
  9736df:	62 f2 dd 48 7f f3    	vpermt2pd zmm6,zmm4,zmm3
  9736e5:	62 c2 dd 48 7f f4    	vpermt2pd zmm22,zmm4,zmm12
  9736eb:	62 72 dd 48 7f c8    	vpermt2pd zmm9,zmm4,zmm0
  9736f1:	62 f1 fd 48 28 c2    	vmovapd zmm0,zmm2
  9736f7:	62 b2 f5 48 7f c6    	vpermt2pd zmm0,zmm1,zmm22
  9736fd:	62 b2 ad 48 7f d6    	vpermt2pd zmm2,zmm10,zmm22
  973703:	62 d2 cd 48 77 c9    	vpermi2pd zmm1,zmm6,zmm9
  973709:	62 d2 ad 48 7f f1    	vpermt2pd zmm6,zmm10,zmm9
  97370f:	62 f1 ed 48 14 d6    	vunpcklpd zmm2,zmm2,zmm6
  973715:	62 f1 fd 48 14 d9    	vunpcklpd zmm3,zmm0,zmm1
  97371b:	62 f1 fd 48 15 c1    	vunpckhpd zmm0,zmm0,zmm1
  973721:	62 f1 fd 48 10 4a 02 	vmovupd zmm1,ZMMWORD PTR [rdx+0x80]
  973728:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  97372f:	62 f1 fd 48 10 72 04 	vmovupd zmm6,ZMMWORD PTR [rdx+0x100]
  973736:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  97373d:	62 71 fd 48 59 d1    	vmulpd zmm10,zmm0,zmm1
  973743:	62 72 bd 48 b8 d4    	vfmadd231pd zmm10,zmm8,zmm4
  973749:	62 71 ed 48 59 de    	vmulpd zmm11,zmm2,zmm6
  97374f:	62 52 d5 48 b8 d9    	vfmadd231pd zmm11,zmm5,zmm9
  973755:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  97375b:	62 72 fd 48 19 2d 33 	vbroadcastsd zmm13,QWORD PTR [rip+0xffffffffff701333]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  973762:	13 70 ff 
  973765:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  97376b:	62 72 9d 48 ac f3    	vfnmadd213pd zmm14,zmm12,zmm3
  973771:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  973777:	62 f2 fd 48 bc cc    	vfnmadd231pd zmm1,zmm0,zmm4
  97377d:	62 f1 d5 48 59 c6    	vmulpd zmm0,zmm5,zmm6
  973783:	62 d2 ed 48 bc c1    	vfnmadd231pd zmm0,zmm2,zmm9
  973789:	62 f2 fd 48 19 15 8d 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff70148d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  973790:	14 70 ff 
  973793:	62 f1 f5 48 5c e0    	vsubpd zmm4,zmm1,zmm0
  973799:	62 f1 dd 48 59 e2    	vmulpd zmm4,zmm4,zmm2
  97379f:	62 f1 8d 48 58 ec    	vaddpd zmm5,zmm14,zmm4
  9737a5:	62 f1 f5 48 58 c0    	vaddpd zmm0,zmm1,zmm0
  9737ab:	62 72 fd 48 ac ef    	vfnmadd213pd zmm13,zmm0,zmm7
  9737b1:	62 d1 ad 48 5c cb    	vsubpd zmm1,zmm10,zmm11
  9737b7:	62 f1 f5 48 59 ca    	vmulpd zmm1,zmm1,zmm2
  9737bd:	62 f1 95 48 5c d1    	vsubpd zmm2,zmm13,zmm1
  9737c3:	62 f1 8d 48 5c e4    	vsubpd zmm4,zmm14,zmm4
  9737c9:	62 f1 95 48 58 c9    	vaddpd zmm1,zmm13,zmm1
  9737cf:	62 d1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm12
  9737d5:	62 f1 c5 48 58 c0    	vaddpd zmm0,zmm7,zmm0
  9737db:	62 f1 fd 48 28 35 5b 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71395b]        # 87140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x145f0>
  9737e2:	39 71 ff 
  9737e5:	62 f1 fd 48 28 f8    	vmovapd zmm7,zmm0
  9737eb:	62 f2 cd 48 7f fb    	vpermt2pd zmm7,zmm6,zmm3
  9737f1:	62 71 fd 48 28 05 85 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff713985]        # 87180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14630>
  9737f8:	39 71 ff 
  9737fb:	62 f2 bd 48 7f c3    	vpermt2pd zmm0,zmm8,zmm3
  973801:	62 f1 fd 48 11 06    	vmovupd ZMMWORD PTR [rsi],zmm0
  973807:	62 f1 fd 48 11 7e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm7
  97380e:	62 f1 fd 48 28 c1    	vmovapd zmm0,zmm1
  973814:	62 f2 cd 48 7f c4    	vpermt2pd zmm0,zmm6,zmm4
  97381a:	62 f2 bd 48 7f cc    	vpermt2pd zmm1,zmm8,zmm4
  973820:	62 f1 fd 48 11 4e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm1
  973827:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  97382e:	62 f2 ed 48 77 f5    	vpermi2pd zmm6,zmm2,zmm5
  973834:	62 f2 bd 48 7f d5    	vpermt2pd zmm2,zmm8,zmm5
  97383a:	62 f1 fd 48 11 56 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm2
  973841:	62 f1 fd 48 11 76 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm6
  973848:	c5 f8 77             	vzeroupper
  97384b:	c3                   	ret
