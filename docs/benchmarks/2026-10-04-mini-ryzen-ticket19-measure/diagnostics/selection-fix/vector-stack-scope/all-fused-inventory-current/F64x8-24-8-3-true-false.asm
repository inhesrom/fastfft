
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000093a5c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  93a5c0:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  93a5c5:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  93a5cc:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  93a5d0:	c5 fd 10 67 30       	vmovupd ymm4,YMMWORD PTR [rdi+0x30]
  93a5d5:	c5 fd 10 7f 60       	vmovupd ymm7,YMMWORD PTR [rdi+0x60]
  93a5da:	c5 7d 10 87 90 00 00 	vmovupd ymm8,YMMWORD PTR [rdi+0x90]
  93a5e1:	00 
  93a5e2:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  93a5e9:	62 f1 fd 48 28 0d cd 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff7482cd]        # 828c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfd70>
  93a5f0:	82 74 ff 
  93a5f3:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  93a5f7:	62 e1 fd 48 28 d2    	vmovapd zmm18,zmm2
  93a5fd:	62 e2 f5 48 7f d3    	vpermt2pd zmm18,zmm1,zmm3
  93a603:	62 71 fd 48 28 1d f3 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff7482f3]        # 82900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfdb0>
  93a60a:	82 74 ff 
  93a60d:	62 f2 a5 48 7f d3    	vpermt2pd zmm2,zmm11,zmm3
  93a613:	c5 fb 12 6f 58       	vmovddup xmm5,QWORD PTR [rdi+0x58]
  93a618:	c4 e3 51 0d 6f 50 01 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+0x50],0x1
  93a61f:	62 f3 5d 48 18 f5 02 	vinsertf32x4 zmm6,zmm4,xmm5,0x2
  93a626:	62 f1 fd 48 28 ee    	vmovapd zmm5,zmm6
  93a62c:	62 f2 f5 48 7f eb    	vpermt2pd zmm5,zmm1,zmm3
  93a632:	62 f2 a5 48 7f f3    	vpermt2pd zmm6,zmm11,zmm3
  93a638:	c5 fb 12 a7 88 00 00 	vmovddup xmm4,QWORD PTR [rdi+0x88]
  93a63f:	00 
  93a640:	c4 e3 59 0d a7 80 00 	vblendpd xmm4,xmm4,XMMWORD PTR [rdi+0x80],0x1
  93a647:	00 00 01 
  93a64a:	62 f3 45 48 18 e4 02 	vinsertf32x4 zmm4,zmm7,xmm4,0x2
  93a651:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  93a657:	62 72 f5 48 7f cb    	vpermt2pd zmm9,zmm1,zmm3
  93a65d:	62 f2 a5 48 7f e3    	vpermt2pd zmm4,zmm11,zmm3
  93a663:	c5 fb 12 bf b8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xb8]
  93a66a:	00 
  93a66b:	c4 e3 41 0d bf b0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xb0],0x1
  93a672:	00 00 01 
  93a675:	62 73 3d 48 18 c7 02 	vinsertf32x4 zmm8,zmm8,xmm7,0x2
  93a67c:	62 51 fd 48 28 d0    	vmovapd zmm10,zmm8
  93a682:	62 72 f5 48 7f d3    	vpermt2pd zmm10,zmm1,zmm3
  93a688:	62 72 a5 48 7f c3    	vpermt2pd zmm8,zmm11,zmm3
  93a68e:	c5 fb 12 bf e8 00 00 	vmovddup xmm7,QWORD PTR [rdi+0xe8]
  93a695:	00 
  93a696:	c4 e3 41 0d bf e0 00 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0xe0],0x1
  93a69d:	00 00 01 
  93a6a0:	c5 7d 10 a7 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdi+0xc0]
  93a6a7:	00 
  93a6a8:	62 73 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm7,0x2
  93a6af:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  93a6b5:	62 72 f5 48 7f eb    	vpermt2pd zmm13,zmm1,zmm3
  93a6bb:	62 72 a5 48 7f e3    	vpermt2pd zmm12,zmm11,zmm3
  93a6c1:	c5 fd 10 bf f0 00 00 	vmovupd ymm7,YMMWORD PTR [rdi+0xf0]
  93a6c8:	00 
  93a6c9:	c5 7b 12 b7 18 01 00 	vmovddup xmm14,QWORD PTR [rdi+0x118]
  93a6d0:	00 
  93a6d1:	c4 63 09 0d b7 10 01 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+0x110],0x1
  93a6d8:	00 00 01 
  93a6db:	62 53 45 48 18 f6 02 	vinsertf32x4 zmm14,zmm7,xmm14,0x2
  93a6e2:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  93a6e8:	62 72 f5 48 7f fb    	vpermt2pd zmm15,zmm1,zmm3
  93a6ee:	62 72 a5 48 7f f3    	vpermt2pd zmm14,zmm11,zmm3
  93a6f4:	c5 fb 12 bf 48 01 00 	vmovddup xmm7,QWORD PTR [rdi+0x148]
  93a6fb:	00 
  93a6fc:	62 e1 fd 28 10 47 09 	vmovupd ymm16,YMMWORD PTR [rdi+0x120]
  93a703:	c4 e3 41 0d bf 40 01 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+0x140],0x1
  93a70a:	00 00 01 
  93a70d:	62 e3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm7,0x2
  93a714:	62 a1 fd 48 28 c8    	vmovapd zmm17,zmm16
  93a71a:	62 e2 f5 48 7f cb    	vpermt2pd zmm17,zmm1,zmm3
  93a720:	62 e2 a5 48 7f c3    	vpermt2pd zmm16,zmm11,zmm3
  93a726:	c5 fd 10 bf 50 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x150]
  93a72d:	00 
  93a72e:	c5 fb 12 87 78 01 00 	vmovddup xmm0,QWORD PTR [rdi+0x178]
  93a735:	00 
  93a736:	c4 e3 79 0d 87 70 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x170],0x1
  93a73d:	00 00 01 
  93a740:	62 f3 45 48 18 c0 02 	vinsertf32x4 zmm0,zmm7,xmm0,0x2
  93a747:	62 f2 fd 48 77 cb    	vpermi2pd zmm1,zmm0,zmm3
  93a74d:	62 f2 a5 48 7f c3    	vpermt2pd zmm0,zmm11,zmm3
  93a753:	62 51 ed 48 58 dc    	vaddpd zmm11,zmm2,zmm12
  93a759:	62 a1 dd 48 58 d8    	vaddpd zmm19,zmm4,zmm16
  93a75f:	62 a1 a5 48 58 e3    	vaddpd zmm20,zmm11,zmm19
  93a765:	62 c1 cd 48 58 ee    	vaddpd zmm21,zmm6,zmm14
  93a76b:	62 e1 bd 48 58 f0    	vaddpd zmm22,zmm8,zmm0
  93a771:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  93a777:	62 b1 dd 40 58 ff    	vaddpd zmm7,zmm20,zmm23
  93a77d:	62 41 ed 40 58 c5    	vaddpd zmm24,zmm18,zmm13
  93a783:	62 21 b5 48 58 c9    	vaddpd zmm25,zmm9,zmm17
  93a789:	62 01 bd 40 58 d1    	vaddpd zmm26,zmm24,zmm25
  93a78f:	62 41 d5 48 58 df    	vaddpd zmm27,zmm5,zmm15
  93a795:	62 61 ad 48 58 e1    	vaddpd zmm28,zmm10,zmm1
  93a79b:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  93a7a1:	62 91 ad 40 58 dd    	vaddpd zmm3,zmm26,zmm29
  93a7a7:	62 d1 ed 48 5c d4    	vsubpd zmm2,zmm2,zmm12
  93a7ad:	62 31 b5 48 5c c9    	vsubpd zmm9,zmm9,zmm17
  93a7b3:	62 51 ed 48 58 e1    	vaddpd zmm12,zmm2,zmm9
  93a7b9:	62 d1 cd 48 5c f6    	vsubpd zmm6,zmm6,zmm14
  93a7bf:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  93a7c5:	62 72 fd 48 19 35 d1 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff73a6d1]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  93a7cc:	a6 73 ff 
  93a7cf:	62 71 cd 48 58 fd    	vaddpd zmm15,zmm6,zmm5
  93a7d5:	62 51 85 48 59 fe    	vmulpd zmm15,zmm15,zmm14
  93a7db:	62 f1 ad 48 5c c9    	vsubpd zmm1,zmm10,zmm1
  93a7e1:	62 f1 bd 48 5c c0    	vsubpd zmm0,zmm8,zmm0
  93a7e7:	62 71 f5 48 5c c0    	vsubpd zmm8,zmm1,zmm0
  93a7ed:	62 51 bd 48 59 c6    	vmulpd zmm8,zmm8,zmm14
  93a7f3:	62 51 85 48 58 d0    	vaddpd zmm10,zmm15,zmm8
  93a7f9:	62 c1 9d 48 58 ca    	vaddpd zmm17,zmm12,zmm10
  93a7ff:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  93a805:	62 f1 fd 40 5c e4    	vsubpd zmm4,zmm16,zmm4
  93a80b:	62 c1 dd 48 58 c5    	vaddpd zmm16,zmm4,zmm13
  93a811:	62 f1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm6
  93a817:	62 d1 d5 48 59 ee    	vmulpd zmm5,zmm5,zmm14
  93a81d:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  93a823:	62 d1 fd 48 59 c6    	vmulpd zmm0,zmm0,zmm14
  93a829:	62 f1 d5 48 5c c8    	vsubpd zmm1,zmm5,zmm0
  93a82f:	62 f1 fd 40 58 f1    	vaddpd zmm6,zmm16,zmm1
  93a835:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  93a83b:	62 11 a5 40 5c f4    	vsubpd zmm14,zmm27,zmm28
  93a841:	62 c1 a5 48 58 d6    	vaddpd zmm18,zmm11,zmm14
  93a847:	62 81 bd 40 5c d9    	vsubpd zmm19,zmm24,zmm25
  93a84d:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  93a853:	62 a1 d5 40 58 f3    	vaddpd zmm22,zmm21,zmm19
  93a859:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  93a85f:	62 f1 d5 48 58 c0    	vaddpd zmm0,zmm5,zmm0
  93a865:	62 f1 ed 48 58 e8    	vaddpd zmm5,zmm2,zmm0
  93a86b:	62 f1 95 48 5c e4    	vsubpd zmm4,zmm13,zmm4
  93a871:	62 51 bd 48 5c c7    	vsubpd zmm8,zmm8,zmm15
  93a877:	62 51 dd 48 58 c8    	vaddpd zmm9,zmm4,zmm8
  93a87d:	62 31 dd 40 5c ef    	vsubpd zmm13,zmm20,zmm23
  93a883:	62 11 ad 40 5c fd    	vsubpd zmm15,zmm26,zmm29
  93a889:	62 51 9d 48 5c d2    	vsubpd zmm10,zmm12,zmm10
  93a88f:	62 f1 fd 40 5c c9    	vsubpd zmm1,zmm16,zmm1
  93a895:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  93a89b:	62 31 e5 40 5c e5    	vsubpd zmm12,zmm19,zmm21
  93a8a1:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  93a8a7:	62 d1 dd 48 5c d0    	vsubpd zmm2,zmm4,zmm8
  93a8ad:	62 f1 fd 48 10 25 b1 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff78c4b1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  93a8b4:	c4 78 ff 
  93a8b7:	62 d2 dd 48 7f fd    	vpermt2pd zmm7,zmm4,zmm13
  93a8bd:	62 c2 dd 48 7f ca    	vpermt2pd zmm17,zmm4,zmm10
  93a8c3:	62 c2 dd 48 7f d3    	vpermt2pd zmm18,zmm4,zmm11
  93a8c9:	62 f2 dd 48 7f e8    	vpermt2pd zmm5,zmm4,zmm0
  93a8cf:	62 f1 fd 48 10 05 0f 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78c40f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  93a8d6:	c4 78 ff 
  93a8d9:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  93a8df:	62 32 fd 48 7f c2    	vpermt2pd zmm8,zmm0,zmm18
  93a8e5:	62 71 fd 48 10 15 39 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff78c439]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93a8ec:	c4 78 ff 
  93a8ef:	62 b2 ad 48 7f fa    	vpermt2pd zmm7,zmm10,zmm18
  93a8f5:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  93a8fb:	62 72 fd 48 7f dd    	vpermt2pd zmm11,zmm0,zmm5
  93a901:	62 e2 ad 48 7f cd    	vpermt2pd zmm17,zmm10,zmm5
  93a907:	62 b1 c5 48 14 e9    	vunpcklpd zmm5,zmm7,zmm17
  93a90d:	62 d1 bd 48 14 fb    	vunpcklpd zmm7,zmm8,zmm11
  93a913:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  93a919:	62 d2 dd 48 7f df    	vpermt2pd zmm3,zmm4,zmm15
  93a91f:	62 f2 dd 48 7f f1    	vpermt2pd zmm6,zmm4,zmm1
  93a925:	62 c2 dd 48 7f f4    	vpermt2pd zmm22,zmm4,zmm12
  93a92b:	62 72 dd 48 7f ca    	vpermt2pd zmm9,zmm4,zmm2
  93a931:	62 f1 fd 48 28 cb    	vmovapd zmm1,zmm3
  93a937:	62 b2 fd 48 7f ce    	vpermt2pd zmm1,zmm0,zmm22
  93a93d:	62 b2 ad 48 7f de    	vpermt2pd zmm3,zmm10,zmm22
  93a943:	62 d2 cd 48 77 c1    	vpermi2pd zmm0,zmm6,zmm9
  93a949:	62 d2 ad 48 7f f1    	vpermt2pd zmm6,zmm10,zmm9
  93a94f:	62 f1 e5 48 14 d6    	vunpcklpd zmm2,zmm3,zmm6
  93a955:	62 f1 f5 48 14 d8    	vunpcklpd zmm3,zmm1,zmm0
  93a95b:	62 f1 f5 48 15 c0    	vunpckhpd zmm0,zmm1,zmm0
  93a961:	62 f1 fd 48 10 4a 02 	vmovupd zmm1,ZMMWORD PTR [rdx+0x80]
  93a968:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  93a96f:	62 f1 fd 48 10 72 04 	vmovupd zmm6,ZMMWORD PTR [rdx+0x100]
  93a976:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  93a97d:	62 71 fd 48 59 d1    	vmulpd zmm10,zmm0,zmm1
  93a983:	62 72 bd 48 b8 d4    	vfmadd231pd zmm10,zmm8,zmm4
  93a989:	62 71 ed 48 59 de    	vmulpd zmm11,zmm2,zmm6
  93a98f:	62 52 d5 48 b8 d9    	vfmadd231pd zmm11,zmm5,zmm9
  93a995:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  93a99b:	62 72 fd 48 19 2d f3 	vbroadcastsd zmm13,QWORD PTR [rip+0xffffffffff73a0f3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93a9a2:	a0 73 ff 
  93a9a5:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  93a9ab:	62 72 9d 48 ac f3    	vfnmadd213pd zmm14,zmm12,zmm3
  93a9b1:	62 f1 bd 48 59 c9    	vmulpd zmm1,zmm8,zmm1
  93a9b7:	62 f2 fd 48 bc cc    	vfnmadd231pd zmm1,zmm0,zmm4
  93a9bd:	62 f1 d5 48 59 c6    	vmulpd zmm0,zmm5,zmm6
  93a9c3:	62 d2 ed 48 bc c1    	vfnmadd231pd zmm0,zmm2,zmm9
  93a9c9:	62 f2 fd 48 19 15 4d 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff73a24d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  93a9d0:	a2 73 ff 
  93a9d3:	62 f1 f5 48 5c e0    	vsubpd zmm4,zmm1,zmm0
  93a9d9:	62 f1 dd 48 59 e2    	vmulpd zmm4,zmm4,zmm2
  93a9df:	62 f1 8d 48 58 ec    	vaddpd zmm5,zmm14,zmm4
  93a9e5:	62 f1 f5 48 58 c0    	vaddpd zmm0,zmm1,zmm0
  93a9eb:	62 72 fd 48 ac ef    	vfnmadd213pd zmm13,zmm0,zmm7
  93a9f1:	62 d1 ad 48 5c cb    	vsubpd zmm1,zmm10,zmm11
  93a9f7:	62 f1 f5 48 59 ca    	vmulpd zmm1,zmm1,zmm2
  93a9fd:	62 f1 95 48 5c d1    	vsubpd zmm2,zmm13,zmm1
  93aa03:	62 f1 8d 48 5c e4    	vsubpd zmm4,zmm14,zmm4
  93aa09:	62 f1 95 48 58 c9    	vaddpd zmm1,zmm13,zmm1
  93aa0f:	62 d1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm12
  93aa15:	62 f1 c5 48 58 c0    	vaddpd zmm0,zmm7,zmm0
  93aa1b:	62 f1 fd 48 28 35 1b 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff747f1b]        # 82940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfdf0>
  93aa22:	7f 74 ff 
  93aa25:	62 f1 fd 48 28 fb    	vmovapd zmm7,zmm3
  93aa2b:	62 f2 cd 48 7f f8    	vpermt2pd zmm7,zmm6,zmm0
  93aa31:	62 71 fd 48 28 05 45 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff747f45]        # 82980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfe30>
  93aa38:	7f 74 ff 
  93aa3b:	62 f2 bd 48 7f d8    	vpermt2pd zmm3,zmm8,zmm0
  93aa41:	62 f1 fd 48 11 1e    	vmovupd ZMMWORD PTR [rsi],zmm3
  93aa47:	62 f1 fd 48 11 7e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm7
  93aa4e:	62 f1 fd 48 28 c4    	vmovapd zmm0,zmm4
  93aa54:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  93aa5a:	62 f2 bd 48 7f e1    	vpermt2pd zmm4,zmm8,zmm1
  93aa60:	62 f1 fd 48 11 66 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm4
  93aa67:	62 f1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm0
  93aa6e:	62 f2 d5 48 77 f2    	vpermi2pd zmm6,zmm5,zmm2
  93aa74:	62 f2 bd 48 7f ea    	vpermt2pd zmm5,zmm8,zmm2
  93aa7a:	62 f1 fd 48 11 6e 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm5
  93aa81:	62 f1 fd 48 11 76 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm6
  93aa88:	c5 f8 77             	vzeroupper
  93aa8b:	c3                   	ret
