
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a31940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a31940:	55                   	push   rbp
  a31941:	48 89 e5             	mov    rbp,rsp
  a31944:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a31948:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  a3194f:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  a31956:	00 
  a31957:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  a3195e:	00 
  a3195f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a31964:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a31969:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a3196f:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a31974:	62 f1 7c 48 28 15 c2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65f2c2]        # 90c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e0f0>
  a3197b:	f2 65 ff 
  a3197e:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a31984:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a3198a:	62 f1 7c 48 28 2d ec 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65f2ec]        # 90c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e130>
  a31991:	f2 65 ff 
  a31994:	62 f2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm1
  a3199a:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a319a1:	00 00 00 
  a319a4:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  a319ab:	00 
  a319ac:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a319b2:	62 f2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm1
  a319b8:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a319be:	62 f1 7c 48 10 67 03 	vmovups zmm4,ZMMWORD PTR [rdi+0xc0]
  a319c5:	c5 fc 10 8f 00 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x100]
  a319cc:	00 
  a319cd:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a319d3:	62 72 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm1
  a319d9:	62 f2 55 48 7f e1    	vpermt2ps zmm4,zmm5,zmm1
  a319df:	62 71 7c 48 10 8f 20 	vmovups zmm9,ZMMWORD PTR [rdi+0x120]
  a319e6:	01 00 00 
  a319e9:	c5 fc 10 8f 60 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x160]
  a319f0:	00 
  a319f1:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a319f7:	62 72 6d 48 7f d1    	vpermt2ps zmm10,zmm2,zmm1
  a319fd:	62 72 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm1
  a31a03:	62 71 7c 48 10 5f 06 	vmovups zmm11,ZMMWORD PTR [rdi+0x180]
  a31a0a:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a31a11:	00 
  a31a12:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a31a18:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a31a1e:	62 72 55 48 7f d9    	vpermt2ps zmm11,zmm5,zmm1
  a31a24:	62 71 7c 48 10 a7 e0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1e0]
  a31a2b:	01 00 00 
  a31a2e:	c5 fc 10 8f 20 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x220]
  a31a35:	00 
  a31a36:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a31a3c:	62 72 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm1
  a31a42:	62 72 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm1
  a31a48:	62 71 7c 48 10 7f 09 	vmovups zmm15,ZMMWORD PTR [rdi+0x240]
  a31a4f:	c5 fc 10 8f 80 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x280]
  a31a56:	00 
  a31a57:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a31a5d:	62 e2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm1
  a31a63:	62 72 55 48 7f f9    	vpermt2ps zmm15,zmm5,zmm1
  a31a69:	62 e1 7c 48 10 8f a0 	vmovups zmm17,ZMMWORD PTR [rdi+0x2a0]
  a31a70:	02 00 00 
  a31a73:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a31a7a:	00 
  a31a7b:	62 f2 75 40 77 d1    	vpermi2ps zmm2,zmm17,zmm1
  a31a81:	62 e2 55 48 7f c9    	vpermt2ps zmm17,zmm5,zmm1
  a31a87:	62 c1 64 48 58 d3    	vaddps zmm18,zmm3,zmm11
  a31a8d:	62 c1 5c 48 58 df    	vaddps zmm19,zmm4,zmm15
  a31a93:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a31a99:	62 c1 4c 48 58 ec    	vaddps zmm21,zmm6,zmm12
  a31a9f:	62 a1 34 48 58 f1    	vaddps zmm22,zmm9,zmm17
  a31aa5:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a31aab:	62 b1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm23
  a31ab1:	62 41 7c 48 58 c5    	vaddps zmm24,zmm0,zmm13
  a31ab7:	62 21 3c 48 58 c8    	vaddps zmm25,zmm8,zmm16
  a31abd:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a31ac3:	62 41 44 48 58 de    	vaddps zmm27,zmm7,zmm14
  a31ac9:	62 61 2c 48 58 e2    	vaddps zmm28,zmm10,zmm2
  a31acf:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a31ad5:	62 91 2c 40 58 ed    	vaddps zmm5,zmm26,zmm29
  a31adb:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a31ae1:	62 31 3c 48 5c d8    	vsubps zmm11,zmm8,zmm16
  a31ae7:	62 c1 64 48 58 c3    	vaddps zmm16,zmm3,zmm11
  a31aed:	62 d1 4c 48 5c f4    	vsubps zmm6,zmm6,zmm12
  a31af3:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a31af9:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a31aff:	62 72 7d 48 18 35 93 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff643893]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a31b06:	38 64 ff 
  a31b09:	62 41 3c 48 59 f6    	vmulps zmm30,zmm8,zmm14
  a31b0f:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a31b15:	62 31 34 48 5c c1    	vsubps zmm8,zmm9,zmm17
  a31b1b:	62 51 6c 48 5c c8    	vsubps zmm9,zmm2,zmm8
  a31b21:	62 51 34 48 59 ce    	vmulps zmm9,zmm9,zmm14
  a31b27:	62 c1 0c 40 58 c9    	vaddps zmm17,zmm30,zmm9
  a31b2d:	62 31 7c 40 58 e1    	vaddps zmm12,zmm16,zmm17
  a31b33:	62 d1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm13
  a31b39:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a31b3f:	62 71 5c 48 58 f8    	vaddps zmm15,zmm4,zmm0
  a31b45:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a31b4b:	62 d1 4c 48 59 f6    	vmulps zmm6,zmm6,zmm14
  a31b51:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a31b57:	62 d1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm14
  a31b5d:	62 f1 4c 48 5c fa    	vsubps zmm7,zmm6,zmm2
  a31b63:	62 71 04 48 58 c7    	vaddps zmm8,zmm15,zmm7
  a31b69:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a31b6f:	62 01 24 40 5c dc    	vsubps zmm27,zmm27,zmm28
  a31b75:	62 11 6c 40 58 eb    	vaddps zmm13,zmm18,zmm27
  a31b7b:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a31b81:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a31b87:	62 11 54 40 58 d0    	vaddps zmm10,zmm21,zmm24
  a31b8d:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a31b93:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a31b99:	62 e1 64 48 58 da    	vaddps zmm19,zmm3,zmm2
  a31b9f:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a31ba5:	62 91 34 48 5c f6    	vsubps zmm6,zmm9,zmm30
  a31bab:	62 f1 5c 48 58 c6    	vaddps zmm0,zmm4,zmm6
  a31bb1:	62 31 5c 40 5c df    	vsubps zmm11,zmm20,zmm23
  a31bb7:	62 11 2c 40 5c f5    	vsubps zmm14,zmm26,zmm29
  a31bbd:	62 a1 7c 40 5c e1    	vsubps zmm20,zmm16,zmm17
  a31bc3:	62 e1 04 48 5c cf    	vsubps zmm17,zmm15,zmm7
  a31bc9:	62 91 6c 40 5c fb    	vsubps zmm7,zmm18,zmm27
  a31bcf:	62 a1 3c 40 5c c5    	vsubps zmm16,zmm24,zmm21
  a31bd5:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a31bdb:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a31be1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a31be8:	01 
  a31be9:	62 e1 7c 48 28 15 8d 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff69538d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a31bf0:	53 69 ff 
  a31bf3:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a31bf7:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a31bfd:	62 f2 6d 40 7f dc    	vpermt2ps zmm3,zmm18,zmm4
  a31c03:	62 71 7c 48 28 0d b3 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6953b3]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a31c0a:	53 69 ff 
  a31c0d:	62 f2 35 48 7f cc    	vpermt2ps zmm1,zmm9,zmm4
  a31c13:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a31c19:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a31c1f:	62 72 35 48 7f e4    	vpermt2ps zmm12,zmm9,zmm4
  a31c25:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a31c2b:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a31c31:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a31c37:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a31c3d:	62 62 6d 40 7f d4    	vpermt2ps zmm26,zmm18,zmm4
  a31c43:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a31c49:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a31c4f:	62 f2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm4
  a31c55:	62 72 35 48 7f dc    	vpermt2ps zmm11,zmm9,zmm4
  a31c5b:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a31c61:	62 e2 6d 40 7f f4    	vpermt2ps zmm22,zmm18,zmm4
  a31c67:	62 e2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm4
  a31c6d:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a31c73:	62 62 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm4
  a31c79:	62 f2 35 48 7f fc    	vpermt2ps zmm7,zmm9,zmm4
  a31c7f:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a31c85:	62 62 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm4
  a31c8b:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a31c91:	62 e1 7c 48 28 2d 65 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff695265]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a31c98:	52 69 ff 
  a31c9b:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a31ca1:	62 62 55 40 7f ee    	vpermt2ps zmm29,zmm21,zmm6
  a31ca7:	62 e1 7c 48 28 3d 8f 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff69528f]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a31cae:	52 69 ff 
  a31cb1:	62 f2 45 40 7f de    	vpermt2ps zmm3,zmm23,zmm6
  a31cb7:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a31cbd:	62 22 55 40 7f f6    	vpermt2ps zmm30,zmm21,zmm22
  a31cc3:	62 22 45 40 7f c6    	vpermt2ps zmm24,zmm23,zmm22
  a31cc9:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a31ccf:	62 92 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm27
  a31cd5:	62 02 45 40 7f cb    	vpermt2ps zmm25,zmm23,zmm27
  a31cdb:	62 81 7c 48 28 f2    	vmovaps zmm22,zmm26
  a31ce1:	62 82 55 40 7f f4    	vpermt2ps zmm22,zmm21,zmm28
  a31ce7:	62 02 45 40 7f d4    	vpermt2ps zmm26,zmm23,zmm28
  a31ced:	62 d2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm11
  a31cf3:	62 32 55 40 7f e4    	vpermt2ps zmm12,zmm21,zmm20
  a31cf9:	62 72 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm7
  a31cff:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a31d05:	62 f1 95 40 14 d6    	vunpcklpd zmm2,zmm29,zmm6
  a31d0b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a31d12:	02 
  a31d13:	62 f1 95 40 15 d6    	vunpckhpd zmm2,zmm29,zmm6
  a31d19:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a31d20:	06 
  a31d21:	62 21 8d 40 14 fe    	vunpcklpd zmm31,zmm30,zmm22
  a31d27:	62 a1 8d 40 15 f6    	vunpckhpd zmm22,zmm30,zmm22
  a31d2d:	62 91 e5 48 14 d1    	vunpcklpd zmm2,zmm3,zmm25
  a31d33:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a31d3a:	04 
  a31d3b:	62 91 e5 48 15 d1    	vunpckhpd zmm2,zmm3,zmm25
  a31d41:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a31d48:	05 
  a31d49:	62 01 bd 40 14 e2    	vunpcklpd zmm28,zmm24,zmm26
  a31d4f:	62 81 bd 40 15 e2    	vunpckhpd zmm20,zmm24,zmm26
  a31d55:	62 d1 f5 48 14 fd    	vunpcklpd zmm7,zmm1,zmm13
  a31d5b:	62 d1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm13
  a31d61:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a31d68:	03 
  a31d69:	62 21 9d 48 14 db    	vunpcklpd zmm27,zmm12,zmm19
  a31d6f:	62 21 9d 48 15 d3    	vunpckhpd zmm26,zmm12,zmm19
  a31d75:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a31d7b:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a31d81:	62 f2 35 48 7f ec    	vpermt2ps zmm5,zmm9,zmm4
  a31d87:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a31d8d:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a31d93:	62 72 35 48 7f c4    	vpermt2ps zmm8,zmm9,zmm4
  a31d99:	62 41 7c 48 28 f2    	vmovaps zmm30,zmm10
  a31d9f:	62 62 6d 40 7f f4    	vpermt2ps zmm30,zmm18,zmm4
  a31da5:	62 72 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm4
  a31dab:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a31db1:	62 72 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm4
  a31db7:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a31dbd:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a31dc3:	62 72 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm4
  a31dc9:	62 f2 35 48 7f f4    	vpermt2ps zmm6,zmm9,zmm4
  a31dcf:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a31dd5:	62 72 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm4
  a31ddb:	62 e2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm4
  a31de1:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a31de7:	62 e2 6d 40 7f c4    	vpermt2ps zmm16,zmm18,zmm4
  a31ded:	62 f2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm4
  a31df3:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a31dfa:	01 
  a31dfb:	62 e2 6d 48 77 d4    	vpermi2ps zmm18,zmm2,zmm4
  a31e01:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a31e07:	62 71 7c 48 28 2d ef 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff694fef]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a31e0e:	4f 69 ff 
  a31e11:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a31e18:	02 
  a31e19:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a31e1f:	62 92 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm31
  a31e25:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a31e2c:	01 
  a31e2d:	62 61 7c 48 28 2d 09 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff695009]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a31e34:	50 69 ff 
  a31e37:	62 92 15 40 7f e7    	vpermt2ps zmm4,zmm29,zmm31
  a31e3d:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a31e44:	02 
  a31e45:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x180]
  a31e4c:	06 
  a31e4d:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a31e53:	62 32 15 48 7f ce    	vpermt2ps zmm9,zmm13,zmm22
  a31e59:	62 22 15 40 7f fe    	vpermt2ps zmm31,zmm29,zmm22
  a31e5f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a31e66:	04 
  a31e67:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a31e6d:	62 82 15 48 7f dc    	vpermt2ps zmm19,zmm13,zmm28
  a31e73:	62 92 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm28
  a31e79:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a31e80:	04 
  a31e81:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a31e88:	05 
  a31e89:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a31e8f:	62 a2 15 48 7f f4    	vpermt2ps zmm22,zmm13,zmm20
  a31e95:	62 b2 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm20
  a31e9b:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a31ea1:	62 12 15 48 7f e3    	vpermt2ps zmm12,zmm13,zmm27
  a31ea7:	62 92 15 40 7f fb    	vpermt2ps zmm7,zmm29,zmm27
  a31ead:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a31eb4:	03 
  a31eb5:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a31ebb:	62 82 15 48 7f e2    	vpermt2ps zmm20,zmm13,zmm26
  a31ec1:	62 92 15 40 7f e2    	vpermt2ps zmm4,zmm29,zmm26
  a31ec7:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a31ece:	03 
  a31ecf:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a31ed5:	62 42 55 40 7f d6    	vpermt2ps zmm26,zmm21,zmm14
  a31edb:	62 42 45 40 7f c6    	vpermt2ps zmm24,zmm23,zmm14
  a31ee1:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a31ee7:	62 52 55 40 7f f7    	vpermt2ps zmm14,zmm21,zmm15
  a31eed:	62 42 45 40 7f cf    	vpermt2ps zmm25,zmm23,zmm15
  a31ef3:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a31ef9:	62 22 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm16
  a31eff:	62 22 45 40 7f f0    	vpermt2ps zmm30,zmm23,zmm16
  a31f05:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a31f0b:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a31f11:	62 a2 55 40 7f c2    	vpermt2ps zmm16,zmm21,zmm18
  a31f17:	62 f2 55 40 7f ee    	vpermt2ps zmm5,zmm21,zmm6
  a31f1d:	62 32 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm17
  a31f23:	62 72 55 40 7f d3    	vpermt2ps zmm10,zmm21,zmm3
  a31f29:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a31f2f:	62 11 ad 40 14 fb    	vunpcklpd zmm15,zmm26,zmm27
  a31f35:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a31f3b:	62 a1 8d 48 14 c8    	vunpcklpd zmm17,zmm14,zmm16
  a31f41:	62 a1 8d 48 15 d0    	vunpckhpd zmm18,zmm14,zmm16
  a31f47:	62 11 bd 40 14 f6    	vunpcklpd zmm14,zmm24,zmm30
  a31f4d:	62 81 bd 40 15 c6    	vunpckhpd zmm16,zmm24,zmm30
  a31f53:	62 c1 b5 40 14 eb    	vunpcklpd zmm21,zmm25,zmm11
  a31f59:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a31f5f:	62 41 d5 48 14 da    	vunpcklpd zmm27,zmm5,zmm10
  a31f65:	62 51 d5 48 15 d2    	vunpckhpd zmm10,zmm5,zmm10
  a31f6b:	62 61 bd 48 14 c0    	vunpcklpd zmm24,zmm8,zmm0
  a31f71:	62 f1 bd 48 15 c0    	vunpckhpd zmm0,zmm8,zmm0
  a31f77:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a31f7d:	62 b2 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm17
  a31f83:	62 32 15 40 7f f9    	vpermt2ps zmm15,zmm29,zmm17
  a31f89:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a31f8f:	62 32 15 48 7f c2    	vpermt2ps zmm8,zmm13,zmm18
  a31f95:	62 22 15 40 7f d2    	vpermt2ps zmm26,zmm29,zmm18
  a31f9b:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a31fa1:	62 22 15 48 7f e5    	vpermt2ps zmm28,zmm13,zmm21
  a31fa7:	62 32 15 40 7f f5    	vpermt2ps zmm14,zmm29,zmm21
  a31fad:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a31fb3:	62 c2 15 48 7f fb    	vpermt2ps zmm23,zmm13,zmm11
  a31fb9:	62 c2 15 40 7f c3    	vpermt2ps zmm16,zmm29,zmm11
  a31fbf:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  a31fc5:	62 82 15 48 7f c8    	vpermt2ps zmm17,zmm13,zmm24
  a31fcb:	62 02 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm24
  a31fd1:	62 72 2d 48 77 e8    	vpermi2ps zmm13,zmm10,zmm0
  a31fd7:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a31fdd:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a31fe4:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a31feb:	62 f1 7c 48 10 62 04 	vmovups zmm4,ZMMWORD PTR [rdx+0x100]
  a31ff2:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a31ff9:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a32000:	62 61 7c 48 10 6a 0c 	vmovups zmm29,ZMMWORD PTR [rdx+0x300]
  a32007:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a3200e:	62 11 4c 40 59 dd    	vmulps zmm11,zmm22,zmm29
  a32014:	62 12 45 40 bc de    	vfnmadd231ps zmm11,zmm23,zmm30
  a3201a:	62 81 44 40 59 fd    	vmulps zmm23,zmm23,zmm29
  a32020:	62 61 7c 48 10 6a 07 	vmovups zmm29,ZMMWORD PTR [rdx+0x1c0]
  a32027:	62 a2 0d 40 b8 fe    	vfmadd231ps zmm23,zmm30,zmm22
  a3202d:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a32034:	62 e1 04 40 59 f0    	vmulps zmm22,zmm31,zmm0
  a3203a:	62 82 2d 40 bc f5    	vfnmadd231ps zmm22,zmm26,zmm29
  a32040:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a32046:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a3204d:	62 02 15 40 b8 d7    	vfmadd231ps zmm26,zmm29,zmm31
  a32053:	62 61 7c 48 10 6a 13 	vmovups zmm29,ZMMWORD PTR [rdx+0x4c0]
  a3205a:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a32060:	62 92 25 40 bc f5    	vfnmadd231ps zmm6,zmm27,zmm29
  a32066:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a3206c:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a32073:	62 62 15 40 b8 df    	vfmadd231ps zmm27,zmm29,zmm7
  a32079:	62 61 7c 48 10 6a 0a 	vmovups zmm29,ZMMWORD PTR [rdx+0x280]
  a32080:	62 91 64 40 59 fe    	vmulps zmm7,zmm19,zmm30
  a32086:	62 f2 1d 40 bc f8    	vfnmadd231ps zmm7,zmm28,zmm0
  a3208c:	62 01 1c 40 59 e6    	vmulps zmm28,zmm28,zmm30
  a32092:	62 61 7c 48 10 72 14 	vmovups zmm30,ZMMWORD PTR [rdx+0x500]
  a32099:	62 22 7d 48 b8 e3    	vfmadd231ps zmm28,zmm0,zmm19
  a3209f:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a320a6:	62 81 5c 40 59 de    	vmulps zmm19,zmm20,zmm30
  a320ac:	62 e2 15 48 bc d8    	vfnmadd231ps zmm19,zmm13,zmm0
  a320b2:	62 11 14 48 59 ee    	vmulps zmm13,zmm13,zmm30
  a320b8:	62 61 7c 48 10 72 0e 	vmovups zmm30,ZMMWORD PTR [rdx+0x380]
  a320bf:	62 32 7d 48 b8 ec    	vfmadd231ps zmm13,zmm0,zmm20
  a320c5:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a320cc:	62 91 74 48 59 c6    	vmulps zmm0,zmm1,zmm30
  a320d2:	62 b2 7d 40 bc c4    	vfnmadd231ps zmm0,zmm16,zmm20
  a320d8:	62 81 7c 40 59 c6    	vmulps zmm16,zmm16,zmm30
  a320de:	62 61 7c 48 10 72 0b 	vmovups zmm30,ZMMWORD PTR [rdx+0x2c0]
  a320e5:	62 e2 5d 40 b8 c1    	vfmadd231ps zmm16,zmm20,zmm1
  a320eb:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a320f2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a320f9:	02 
  a320fa:	62 81 74 48 59 e1    	vmulps zmm20,zmm1,zmm25
  a32100:	62 82 05 48 bc e0    	vfnmadd231ps zmm20,zmm15,zmm24
  a32106:	62 01 04 48 59 c9    	vmulps zmm25,zmm15,zmm25
  a3210c:	62 71 7c 48 10 7a 11 	vmovups zmm15,ZMMWORD PTR [rdx+0x440]
  a32113:	62 62 3d 40 b8 c9    	vfmadd231ps zmm25,zmm24,zmm1
  a32119:	62 61 7c 48 10 42 16 	vmovups zmm24,ZMMWORD PTR [rdx+0x580]
  a32120:	62 61 1c 48 59 fb    	vmulps zmm31,zmm12,zmm3
  a32126:	62 42 75 40 bc ff    	vfnmadd231ps zmm31,zmm17,zmm15
  a3212c:	62 f1 74 40 59 db    	vmulps zmm3,zmm17,zmm3
  a32132:	62 e1 7c 48 10 4a 17 	vmovups zmm17,ZMMWORD PTR [rdx+0x5c0]
  a32139:	62 d2 05 48 b8 dc    	vfmadd231ps zmm3,zmm15,zmm12
  a3213f:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x40]
  a32146:	01 
  a32147:	62 51 54 40 58 e3    	vaddps zmm12,zmm21,zmm11
  a3214d:	62 f1 34 48 59 d4    	vmulps zmm2,zmm9,zmm4
  a32153:	62 b2 3d 48 bc d2    	vfnmadd231ps zmm2,zmm8,zmm18
  a32159:	62 71 3c 48 59 c4    	vmulps zmm8,zmm8,zmm4
  a3215f:	62 71 4c 40 58 fe    	vaddps zmm15,zmm22,zmm6
  a32165:	62 52 6d 40 b8 c1    	vfmadd231ps zmm8,zmm18,zmm9
  a3216b:	62 d1 1c 48 58 cf    	vaddps zmm1,zmm12,zmm15
  a32171:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a32178:	02 
  a32179:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a32180:	03 
  a32181:	62 81 74 48 59 d0    	vmulps zmm18,zmm1,zmm24
  a32187:	62 a2 2d 48 bc d1    	vfnmadd231ps zmm18,zmm10,zmm17
  a3218d:	62 01 2c 48 59 c0    	vmulps zmm24,zmm10,zmm24
  a32193:	62 b1 44 48 58 e3    	vaddps zmm4,zmm7,zmm19
  a32199:	62 62 75 40 b8 c1    	vfmadd231ps zmm24,zmm17,zmm1
  a3219f:	62 31 7c 48 58 cc    	vaddps zmm9,zmm0,zmm20
  a321a5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a321ac:	04 
  a321ad:	62 11 74 48 59 d5    	vmulps zmm10,zmm1,zmm29
  a321b3:	62 12 0d 48 bc d6    	vfnmadd231ps zmm10,zmm14,zmm30
  a321b9:	62 81 0c 48 59 cd    	vmulps zmm17,zmm14,zmm29
  a321bf:	62 41 5c 48 58 e9    	vaddps zmm29,zmm4,zmm9
  a321c5:	62 e2 0d 40 b8 c9    	vfmadd231ps zmm17,zmm30,zmm1
  a321cb:	62 61 04 40 58 f2    	vaddps zmm30,zmm31,zmm2
  a321d1:	62 d1 6c 40 58 ca    	vaddps zmm1,zmm18,zmm10
  a321d7:	62 31 44 48 5c f3    	vsubps zmm14,zmm7,zmm19
  a321dd:	62 91 7c 40 58 f9    	vaddps zmm7,zmm16,zmm25
  a321e3:	62 81 7c 40 5c d9    	vsubps zmm19,zmm16,zmm25
  a321e9:	62 61 0c 40 58 c9    	vaddps zmm25,zmm30,zmm1
  a321ef:	62 e1 04 40 5c c2    	vsubps zmm16,zmm31,zmm2
  a321f5:	62 21 3c 40 58 f9    	vaddps zmm31,zmm24,zmm17
  a321fb:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a32201:	62 61 44 40 58 c5    	vaddps zmm24,zmm23,zmm5
  a32207:	62 51 54 40 5c db    	vsubps zmm11,zmm21,zmm11
  a3220d:	62 91 2c 40 58 d3    	vaddps zmm2,zmm26,zmm27
  a32213:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a32219:	62 41 1c 40 58 dd    	vaddps zmm27,zmm28,zmm13
  a3221f:	62 41 1c 40 5c e5    	vsubps zmm28,zmm28,zmm13
  a32225:	62 51 64 48 58 e8    	vaddps zmm13,zmm3,zmm8
  a3222b:	62 e1 5c 40 5c e0    	vsubps zmm20,zmm20,zmm0
  a32231:	62 b1 1c 40 58 c4    	vaddps zmm0,zmm28,zmm20
  a32237:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a3223d:	62 a1 2c 48 5c d2    	vsubps zmm18,zmm10,zmm18
  a32243:	62 31 64 48 58 d2    	vaddps zmm10,zmm3,zmm18
  a32249:	62 51 7c 48 5c c2    	vsubps zmm8,zmm0,zmm10
  a3224f:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a32256:	04 
  a32257:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a3225d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a32264:	03 
  a32265:	62 31 0c 48 58 d3    	vaddps zmm10,zmm14,zmm19
  a3226b:	62 b1 54 48 5c c7    	vsubps zmm0,zmm5,zmm23
  a32271:	62 b1 7c 40 58 e9    	vaddps zmm5,zmm16,zmm17
  a32277:	62 b1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm22
  a3227d:	62 e1 2c 48 58 f5    	vaddps zmm22,zmm10,zmm5
  a32283:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a32289:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a32290:	05 
  a32291:	62 81 6c 48 58 f8    	vaddps zmm23,zmm2,zmm24
  a32297:	62 51 5c 48 5c c9    	vsubps zmm9,zmm4,zmm9
  a3229d:	62 71 24 40 58 c7    	vaddps zmm8,zmm27,zmm7
  a322a3:	62 f1 0c 40 5c c9    	vsubps zmm1,zmm30,zmm1
  a322a9:	62 91 14 48 58 e7    	vaddps zmm4,zmm13,zmm31
  a322af:	62 51 1c 48 5c ff    	vsubps zmm15,zmm12,zmm15
  a322b5:	62 01 24 48 58 f2    	vaddps zmm30,zmm11,zmm26
  a322bb:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a322c1:	62 f2 7d 48 18 2d 95 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff643195]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a322c8:	31 64 ff 
  a322cb:	62 11 14 48 5c e7    	vsubps zmm12,zmm13,zmm31
  a322d1:	62 41 44 48 5c dc    	vsubps zmm27,zmm7,zmm12
  a322d7:	62 51 44 48 58 ec    	vaddps zmm13,zmm7,zmm12
  a322dd:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a322e3:	62 61 3c 40 5c c2    	vsubps zmm24,zmm24,zmm2
  a322e9:	62 61 34 48 58 f9    	vaddps zmm31,zmm9,zmm1
  a322ef:	62 e1 34 48 5c e9    	vsubps zmm21,zmm9,zmm1
  a322f5:	62 71 4c 48 58 e0    	vaddps zmm12,zmm6,zmm0
  a322fb:	62 91 24 48 5c ca    	vsubps zmm1,zmm11,zmm26
  a32301:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a32307:	62 a1 0c 48 5c db    	vsubps zmm19,zmm14,zmm19
  a3230d:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a32313:	62 21 7c 40 5c d1    	vsubps zmm26,zmm16,zmm17
  a32319:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a3231f:	62 f1 7c 48 5c f6    	vsubps zmm6,zmm0,zmm6
  a32325:	62 81 64 40 58 ca    	vaddps zmm17,zmm19,zmm26
  a3232b:	62 a1 1c 40 5c e4    	vsubps zmm20,zmm28,zmm20
  a32331:	62 b1 74 48 58 c1    	vaddps zmm0,zmm1,zmm17
  a32337:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a3233e:	01 
  a3233f:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a32345:	62 71 5c 40 58 cb    	vaddps zmm9,zmm20,zmm3
  a3234b:	62 e2 55 48 ac c9    	vfnmadd213ps zmm17,zmm5,zmm1
  a32351:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a32357:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  a3235d:	62 f2 35 48 ac ee    	vfnmadd213ps zmm5,zmm9,zmm6
  a32363:	62 51 4c 48 58 c9    	vaddps zmm9,zmm6,zmm9
  a32369:	62 f1 3c 48 58 f4    	vaddps zmm6,zmm8,zmm4
  a3236f:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a32375:	62 91 14 40 58 c1    	vaddps zmm0,zmm29,zmm25
  a3237b:	62 01 14 40 5c c9    	vsubps zmm25,zmm29,zmm25
  a32381:	62 92 4d 40 ac fe    	vfnmadd213ps zmm7,zmm22,zmm30
  a32387:	62 62 7d 48 18 2d 43 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff642f43]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3238e:	2f 64 ff 
  a32391:	62 f1 14 40 59 4c 24 	vmulps zmm1,zmm29,ZMMWORD PTR [rsp+0x100]
  a32398:	04 
  a32399:	62 f1 44 48 58 d1    	vaddps zmm2,zmm7,zmm1
  a3239f:	62 71 44 48 5c d1    	vsubps zmm10,zmm7,zmm1
  a323a5:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a323ac:	03 
  a323ad:	62 52 3d 48 ac dc    	vfnmadd213ps zmm11,zmm8,zmm12
  a323b3:	62 f1 14 40 59 4c 24 	vmulps zmm1,zmm29,ZMMWORD PTR [rsp+0x140]
  a323ba:	05 
  a323bb:	62 f1 24 48 5c f9    	vsubps zmm7,zmm11,zmm1
  a323c1:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a323c7:	62 52 05 40 ac f7    	vfnmadd213ps zmm14,zmm31,zmm15
  a323cd:	62 11 04 48 58 df    	vaddps zmm11,zmm15,zmm31
  a323d3:	62 82 15 48 ac c0    	vfnmadd213ps zmm16,zmm13,zmm24
  a323d9:	62 41 3c 40 58 fd    	vaddps zmm31,zmm24,zmm13
  a323df:	62 f1 5c 40 5c db    	vsubps zmm3,zmm20,zmm3
  a323e5:	62 11 64 40 5c ea    	vsubps zmm13,zmm19,zmm26
  a323eb:	62 11 24 40 59 fd    	vmulps zmm15,zmm27,zmm29
  a323f1:	62 81 54 40 59 dd    	vmulps zmm19,zmm21,zmm29
  a323f7:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x80]
  a323fe:	02 
  a323ff:	62 82 7d 48 ac d2    	vfnmadd213ps zmm18,zmm0,zmm26
  a32405:	62 91 5c 48 59 e5    	vmulps zmm4,zmm4,zmm29
  a3240b:	62 81 34 40 59 e5    	vmulps zmm20,zmm25,zmm29
  a32411:	62 91 64 48 59 dd    	vmulps zmm3,zmm3,zmm29
  a32417:	62 11 14 48 59 ed    	vmulps zmm13,zmm13,zmm29
  a3241d:	62 e1 6c 40 58 ec    	vaddps zmm21,zmm18,zmm4
  a32423:	62 22 4d 48 ac e7    	vfnmadd213ps zmm28,zmm6,zmm23
  a32429:	62 f1 6c 40 5c e4    	vsubps zmm4,zmm18,zmm4
  a3242f:	62 a1 1c 40 5c d4    	vsubps zmm18,zmm28,zmm20
  a32435:	62 a1 1c 40 58 e4    	vaddps zmm20,zmm28,zmm20
  a3243b:	62 a1 0c 40 58 f6    	vaddps zmm22,zmm30,zmm22
  a32441:	62 51 1c 48 58 e0    	vaddps zmm12,zmm12,zmm8
  a32447:	62 41 0c 48 5c c7    	vsubps zmm24,zmm14,zmm15
  a3244d:	62 51 0c 48 58 f7    	vaddps zmm14,zmm14,zmm15
  a32453:	62 31 7c 40 58 fb    	vaddps zmm15,zmm16,zmm19
  a32459:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a3245f:	62 e1 74 40 58 db    	vaddps zmm19,zmm17,zmm3
  a32465:	62 f1 74 40 5c db    	vsubps zmm3,zmm17,zmm3
  a3246b:	62 c1 54 48 5c cd    	vsubps zmm17,zmm5,zmm13
  a32471:	62 d1 54 48 58 ed    	vaddps zmm5,zmm5,zmm13
  a32477:	62 f1 44 40 58 f6    	vaddps zmm6,zmm23,zmm6
  a3247d:	62 f1 2c 40 58 c0    	vaddps zmm0,zmm26,zmm0
  a32483:	62 71 7c 48 28 2d 33 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff65e833]        # 90cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e170>
  a3248a:	e8 65 ff 
  a3248d:	62 f2 15 48 7f f0    	vpermt2ps zmm6,zmm13,zmm0
  a32493:	62 f2 15 48 7f fa    	vpermt2ps zmm7,zmm13,zmm2
  a32499:	62 12 15 48 7f f8    	vpermt2ps zmm15,zmm13,zmm24
  a3249f:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x40]
  a324a6:	01 
  a324a7:	62 a2 15 48 7f d5    	vpermt2ps zmm18,zmm13,zmm21
  a324ad:	62 d2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm10
  a324b3:	62 42 15 48 7f fb    	vpermt2ps zmm31,zmm13,zmm11
  a324b9:	62 a2 15 48 7f cb    	vpermt2ps zmm17,zmm13,zmm19
  a324bf:	62 e2 15 48 7f e4    	vpermt2ps zmm20,zmm13,zmm4
  a324c5:	62 32 15 48 7f e6    	vpermt2ps zmm12,zmm13,zmm22
  a324cb:	62 c2 15 48 7f c6    	vpermt2ps zmm16,zmm13,zmm14
  a324d1:	62 f2 15 48 7f eb    	vpermt2ps zmm5,zmm13,zmm3
  a324d7:	62 f1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm6
  a324dd:	62 f1 7c 48 11 7e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm7
  a324e4:	62 71 7c 48 11 7e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm15
  a324eb:	62 71 7c 48 11 4e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm9
  a324f2:	62 e1 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm18
  a324f9:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a32500:	62 61 7c 48 11 7e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm31
  a32507:	62 e1 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm17
  a3250e:	62 e1 7c 48 11 66 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm20
  a32515:	62 71 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm12
  a3251c:	62 e1 7c 48 11 46 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm16
  a32523:	62 f1 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm5
  a3252a:	48 89 ec             	mov    rsp,rbp
  a3252d:	5d                   	pop    rbp
  a3252e:	c5 f8 77             	vzeroupper
  a32531:	c3                   	ret
