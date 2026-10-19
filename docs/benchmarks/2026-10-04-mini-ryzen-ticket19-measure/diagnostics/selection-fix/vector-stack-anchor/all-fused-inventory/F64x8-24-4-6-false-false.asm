
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000090b600 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  90b600:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  90b606:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  90b60b:	62 f1 fd 48 28 1d ab 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff7737ab]        # 7edc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc270>
  90b612:	37 77 ff 
  90b615:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  90b61b:	62 f2 e5 48 7f e1    	vpermt2pd zmm4,zmm3,zmm1
  90b621:	62 f1 fd 48 28 15 d5 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff7737d5]        # 7ee00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc2b0>
  90b628:	37 77 ff 
  90b62b:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  90b631:	62 f1 fd 48 10 8f 60 	vmovupd zmm1,ZMMWORD PTR [rdi+0x60]
  90b638:	00 00 00 
  90b63b:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  90b642:	00 
  90b643:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  90b649:	62 f2 e5 48 7f f5    	vpermt2pd zmm6,zmm3,zmm5
  90b64f:	62 f2 ed 48 7f cd    	vpermt2pd zmm1,zmm2,zmm5
  90b655:	62 f1 fd 48 10 6f 03 	vmovupd zmm5,ZMMWORD PTR [rdi+0xc0]
  90b65c:	c5 fd 10 bf 00 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x100]
  90b663:	00 
  90b664:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  90b66a:	62 72 e5 48 7f c7    	vpermt2pd zmm8,zmm3,zmm7
  90b670:	62 f2 ed 48 7f ef    	vpermt2pd zmm5,zmm2,zmm7
  90b676:	62 f1 fd 48 10 bf 20 	vmovupd zmm7,ZMMWORD PTR [rdi+0x120]
  90b67d:	01 00 00 
  90b680:	c5 7d 10 8f 60 01 00 	vmovupd ymm9,YMMWORD PTR [rdi+0x160]
  90b687:	00 
  90b688:	62 d2 c5 48 77 d9    	vpermi2pd zmm3,zmm7,zmm9
  90b68e:	62 d2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm9
  90b694:	62 51 dd 48 58 c8    	vaddpd zmm9,zmm4,zmm8
  90b69a:	62 71 cd 48 58 d3    	vaddpd zmm10,zmm6,zmm3
  90b6a0:	62 51 b5 48 58 da    	vaddpd zmm11,zmm9,zmm10
  90b6a6:	62 71 fd 48 58 e5    	vaddpd zmm12,zmm0,zmm5
  90b6ac:	62 71 f5 48 58 ef    	vaddpd zmm13,zmm1,zmm7
  90b6b2:	62 d1 9d 48 58 d5    	vaddpd zmm2,zmm12,zmm13
  90b6b8:	62 51 dd 48 5c c0    	vsubpd zmm8,zmm4,zmm8
  90b6be:	62 f1 f5 48 5c cf    	vsubpd zmm1,zmm1,zmm7
  90b6c4:	62 71 bd 48 58 f1    	vaddpd zmm14,zmm8,zmm1
  90b6ca:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  90b6d0:	62 f1 e5 48 5c de    	vsubpd zmm3,zmm3,zmm6
  90b6d6:	62 f1 e5 48 58 e0    	vaddpd zmm4,zmm3,zmm0
  90b6dc:	62 d1 b5 48 5c ea    	vsubpd zmm5,zmm9,zmm10
  90b6e2:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  90b6e8:	62 f1 bd 48 5c c9    	vsubpd zmm1,zmm8,zmm1
  90b6ee:	62 71 fd 48 5c cb    	vsubpd zmm9,zmm0,zmm3
  90b6f4:	62 71 fd 48 10 15 6a 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7bb66a]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  90b6fb:	b6 7b ff 
  90b6fe:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  90b703:	62 d1 fd 48 28 db    	vmovapd zmm3,zmm11
  90b709:	62 d2 ad 48 7f dc    	vpermt2pd zmm3,zmm10,zmm12
  90b70f:	62 71 fd 48 10 2d 8f 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7bb68f]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  90b716:	b6 7b ff 
  90b719:	62 52 95 48 7f dc    	vpermt2pd zmm11,zmm13,zmm12
  90b71f:	62 d1 fd 48 28 f6    	vmovapd zmm6,zmm14
  90b725:	62 d2 ad 48 7f f4    	vpermt2pd zmm6,zmm10,zmm12
  90b72b:	62 52 95 48 7f f4    	vpermt2pd zmm14,zmm13,zmm12
  90b731:	62 f1 fd 48 28 c5    	vmovapd zmm0,zmm5
  90b737:	62 d2 ad 48 7f c4    	vpermt2pd zmm0,zmm10,zmm12
  90b73d:	62 d2 95 48 7f ec    	vpermt2pd zmm5,zmm13,zmm12
  90b743:	62 71 fd 48 28 c1    	vmovapd zmm8,zmm1
  90b749:	62 52 ad 48 7f c4    	vpermt2pd zmm8,zmm10,zmm12
  90b74f:	62 d2 95 48 7f cc    	vpermt2pd zmm1,zmm13,zmm12
  90b755:	62 71 fd 48 10 3d 89 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff7bb589]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  90b75c:	b5 7b ff 
  90b75f:	62 e1 fd 48 28 c3    	vmovapd zmm16,zmm3
  90b765:	62 e2 85 48 7f c0    	vpermt2pd zmm16,zmm15,zmm0
  90b76b:	62 e1 fd 48 10 0d b3 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7bb5b3]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  90b772:	b5 7b ff 
  90b775:	62 f2 f5 40 7f d8    	vpermt2pd zmm3,zmm17,zmm0
  90b77b:	62 e1 fd 48 28 d6    	vmovapd zmm18,zmm6
  90b781:	62 c2 85 48 7f d0    	vpermt2pd zmm18,zmm15,zmm8
  90b787:	62 d2 f5 40 7f f0    	vpermt2pd zmm6,zmm17,zmm8
  90b78d:	62 72 85 48 7f dd    	vpermt2pd zmm11,zmm15,zmm5
  90b793:	62 72 85 48 7f f1    	vpermt2pd zmm14,zmm15,zmm1
  90b799:	62 b1 fd 40 14 c2    	vunpcklpd zmm0,zmm16,zmm18
  90b79f:	62 b1 fd 40 15 ca    	vunpckhpd zmm1,zmm16,zmm18
  90b7a5:	62 71 e5 48 14 c6    	vunpcklpd zmm8,zmm3,zmm6
  90b7ab:	62 f1 e5 48 15 ee    	vunpckhpd zmm5,zmm3,zmm6
  90b7b1:	62 d1 a5 48 14 f6    	vunpcklpd zmm6,zmm11,zmm14
  90b7b7:	62 d1 a5 48 15 de    	vunpckhpd zmm3,zmm11,zmm14
  90b7bd:	62 71 fd 48 28 da    	vmovapd zmm11,zmm2
  90b7c3:	62 52 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm12
  90b7c9:	62 d2 95 48 7f d4    	vpermt2pd zmm2,zmm13,zmm12
  90b7cf:	62 71 fd 48 28 f4    	vmovapd zmm14,zmm4
  90b7d5:	62 52 ad 48 7f f4    	vpermt2pd zmm14,zmm10,zmm12
  90b7db:	62 d2 95 48 7f e4    	vpermt2pd zmm4,zmm13,zmm12
  90b7e1:	62 e1 fd 48 28 c7    	vmovapd zmm16,zmm7
  90b7e7:	62 c2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm12
  90b7ed:	62 d2 95 48 7f fc    	vpermt2pd zmm7,zmm13,zmm12
  90b7f3:	62 52 b5 48 77 d4    	vpermi2pd zmm10,zmm9,zmm12
  90b7f9:	62 52 95 48 7f cc    	vpermt2pd zmm9,zmm13,zmm12
  90b7ff:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  90b805:	62 32 85 48 7f e0    	vpermt2pd zmm12,zmm15,zmm16
  90b80b:	62 32 f5 40 7f d8    	vpermt2pd zmm11,zmm17,zmm16
  90b811:	62 51 fd 48 28 ee    	vmovapd zmm13,zmm14
  90b817:	62 52 85 48 7f ea    	vpermt2pd zmm13,zmm15,zmm10
  90b81d:	62 52 f5 40 7f f2    	vpermt2pd zmm14,zmm17,zmm10
  90b823:	62 f2 85 48 7f d7    	vpermt2pd zmm2,zmm15,zmm7
  90b829:	62 d2 85 48 7f e1    	vpermt2pd zmm4,zmm15,zmm9
  90b82f:	62 d1 9d 48 14 fd    	vunpcklpd zmm7,zmm12,zmm13
  90b835:	62 51 9d 48 15 cd    	vunpckhpd zmm9,zmm12,zmm13
  90b83b:	62 51 a5 48 14 d6    	vunpcklpd zmm10,zmm11,zmm14
  90b841:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  90b847:	62 71 ed 48 14 e4    	vunpcklpd zmm12,zmm2,zmm4
  90b84d:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  90b853:	62 71 fd 48 10 6a 02 	vmovupd zmm13,ZMMWORD PTR [rdx+0x80]
  90b85a:	62 71 fd 48 10 72 03 	vmovupd zmm14,ZMMWORD PTR [rdx+0xc0]
  90b861:	62 71 fd 48 10 7a 04 	vmovupd zmm15,ZMMWORD PTR [rdx+0x100]
  90b868:	62 e1 fd 48 10 42 05 	vmovupd zmm16,ZMMWORD PTR [rdx+0x140]
  90b86f:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  90b876:	62 e1 fd 48 10 52 07 	vmovupd zmm18,ZMMWORD PTR [rdx+0x1c0]
  90b87d:	62 e1 fd 48 10 5a 08 	vmovupd zmm19,ZMMWORD PTR [rdx+0x200]
  90b884:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  90b88b:	62 e1 fd 48 10 6a 0a 	vmovupd zmm21,ZMMWORD PTR [rdx+0x280]
  90b892:	62 e1 fd 48 10 72 0b 	vmovupd zmm22,ZMMWORD PTR [rdx+0x2c0]
  90b899:	62 c1 bd 48 59 ff    	vmulpd zmm23,zmm8,zmm15
  90b89f:	62 a2 ad 48 bc f8    	vfnmadd231pd zmm23,zmm10,zmm16
  90b8a5:	62 21 cd 48 59 c3    	vmulpd zmm24,zmm6,zmm19
  90b8ab:	62 22 9d 48 bc c4    	vfnmadd231pd zmm24,zmm12,zmm20
  90b8b1:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  90b8b7:	62 91 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm25
  90b8bd:	62 21 d5 48 59 d1    	vmulpd zmm26,zmm5,zmm17
  90b8c3:	62 22 a5 48 bc d2    	vfnmadd231pd zmm26,zmm11,zmm18
  90b8c9:	62 21 e5 48 59 dd    	vmulpd zmm27,zmm3,zmm21
  90b8cf:	62 22 dd 48 bc de    	vfnmadd231pd zmm27,zmm4,zmm22
  90b8d5:	62 41 f5 48 59 e5    	vmulpd zmm28,zmm1,zmm13
  90b8db:	62 42 b5 48 bc e6    	vfnmadd231pd zmm28,zmm9,zmm14
  90b8e1:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  90b8e7:	62 01 ad 40 58 f5    	vaddpd zmm30,zmm26,zmm29
  90b8ed:	62 51 ad 48 59 d7    	vmulpd zmm10,zmm10,zmm15
  90b8f3:	62 32 bd 48 b8 d0    	vfmadd231pd zmm10,zmm8,zmm16
  90b8f9:	62 31 9d 48 59 c3    	vmulpd zmm8,zmm12,zmm19
  90b8ff:	62 32 cd 48 b8 c4    	vfmadd231pd zmm8,zmm6,zmm20
  90b905:	62 d1 ad 48 58 f0    	vaddpd zmm6,zmm10,zmm8
  90b90b:	62 71 cd 48 58 e7    	vaddpd zmm12,zmm6,zmm7
  90b911:	62 31 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm17
  90b917:	62 32 d5 48 b8 da    	vfmadd231pd zmm11,zmm5,zmm18
  90b91d:	62 b1 dd 48 59 e5    	vmulpd zmm4,zmm4,zmm21
  90b923:	62 b2 e5 48 b8 e6    	vfmadd231pd zmm4,zmm3,zmm22
  90b929:	62 d1 b5 48 59 dd    	vmulpd zmm3,zmm9,zmm13
  90b92f:	62 d2 f5 48 b8 de    	vfmadd231pd zmm3,zmm1,zmm14
  90b935:	62 f1 dd 48 58 cb    	vaddpd zmm1,zmm4,zmm3
  90b93b:	62 f2 fd 48 19 2d 53 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff769153]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  90b942:	91 76 ff 
  90b945:	62 71 a5 48 58 c9    	vaddpd zmm9,zmm11,zmm1
  90b94b:	62 62 d5 48 ac c8    	vfnmadd213pd zmm25,zmm5,zmm0
  90b951:	62 f2 fd 48 19 05 c5 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff7692c5]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  90b958:	92 76 ff 
  90b95b:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  90b961:	62 71 bd 48 59 c0    	vmulpd zmm8,zmm8,zmm0
  90b967:	62 51 b5 40 58 d0    	vaddpd zmm10,zmm25,zmm8
  90b96d:	62 02 d5 48 bc d5    	vfnmadd231pd zmm26,zmm5,zmm29
  90b973:	62 f1 dd 48 5c db    	vsubpd zmm3,zmm4,zmm3
  90b979:	62 f1 e5 48 59 d8    	vmulpd zmm3,zmm3,zmm0
  90b97f:	62 f1 ad 40 58 e3    	vaddpd zmm4,zmm26,zmm3
  90b985:	62 71 ad 48 5c ec    	vsubpd zmm13,zmm10,zmm4
  90b98b:	62 f2 d5 48 ac f7    	vfnmadd213pd zmm6,zmm5,zmm7
  90b991:	62 91 c5 40 5c f8    	vsubpd zmm7,zmm23,zmm24
  90b997:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  90b99d:	62 71 cd 48 5c f7    	vsubpd zmm14,zmm6,zmm7
  90b9a3:	62 72 f5 48 bc dd    	vfnmadd231pd zmm11,zmm1,zmm5
  90b9a9:	62 91 a5 40 5c cc    	vsubpd zmm1,zmm27,zmm28
  90b9af:	62 f1 f5 48 59 c0    	vmulpd zmm0,zmm1,zmm0
  90b9b5:	62 f1 a5 48 5c c8    	vsubpd zmm1,zmm11,zmm0
  90b9bb:	62 f1 8d 48 5c e9    	vsubpd zmm5,zmm14,zmm1
  90b9c1:	62 51 b5 40 5c c0    	vsubpd zmm8,zmm25,zmm8
  90b9c7:	62 f1 ad 40 5c db    	vsubpd zmm3,zmm26,zmm3
  90b9cd:	62 71 bd 48 58 fb    	vaddpd zmm15,zmm8,zmm3
  90b9d3:	62 f1 c5 48 58 f6    	vaddpd zmm6,zmm7,zmm6
  90b9d9:	62 f1 a5 48 58 c0    	vaddpd zmm0,zmm11,zmm0
  90b9df:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  90b9e5:	62 11 ed 48 5c de    	vsubpd zmm11,zmm2,zmm30
  90b9eb:	62 c1 9d 48 5c c1    	vsubpd zmm16,zmm12,zmm9
  90b9f1:	62 f1 ad 48 58 e4    	vaddpd zmm4,zmm10,zmm4
  90b9f7:	62 f1 8d 48 58 c9    	vaddpd zmm1,zmm14,zmm1
  90b9fd:	62 f1 bd 48 5c db    	vsubpd zmm3,zmm8,zmm3
  90ba03:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  90ba09:	62 91 ed 48 58 d6    	vaddpd zmm2,zmm2,zmm30
  90ba0f:	62 d1 9d 48 58 f1    	vaddpd zmm6,zmm12,zmm9
  90ba15:	62 71 fd 48 28 05 21 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff773421]        # 7ee40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc2f0>
  90ba1c:	34 77 ff 
  90ba1f:	62 f2 bd 48 7f d6    	vpermt2pd zmm2,zmm8,zmm6
  90ba25:	62 f1 fd 48 11 16    	vmovupd ZMMWORD PTR [rsi],zmm2
  90ba2b:	62 72 bd 48 7f ed    	vpermt2pd zmm13,zmm8,zmm5
  90ba31:	62 71 fd 48 11 6e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm13
  90ba38:	62 72 bd 48 7f ff    	vpermt2pd zmm15,zmm8,zmm7
  90ba3e:	62 71 fd 48 11 7e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm15
  90ba45:	62 32 bd 48 7f d8    	vpermt2pd zmm11,zmm8,zmm16
  90ba4b:	62 71 fd 48 11 5e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm11
  90ba52:	62 f2 bd 48 7f e1    	vpermt2pd zmm4,zmm8,zmm1
  90ba58:	62 f1 fd 48 11 66 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm4
  90ba5f:	62 f2 bd 48 7f d8    	vpermt2pd zmm3,zmm8,zmm0
  90ba65:	62 f1 fd 48 11 5e 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm3
  90ba6c:	c5 f8 77             	vzeroupper
  90ba6f:	c3                   	ret
