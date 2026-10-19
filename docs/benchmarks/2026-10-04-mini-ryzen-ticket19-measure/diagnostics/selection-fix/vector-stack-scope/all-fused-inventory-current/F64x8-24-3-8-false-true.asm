
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000923800 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  923800:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7a355e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  923807:	35 7a ff 
  92380a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7a3594]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  923811:	35 7a ff 
  923814:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  923818:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  92381c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  923822:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  923826:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  92382c:	62 f1 fd 48 10 2d b2 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7a34b2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  923833:	34 7a ff 
  923836:	62 f1 fd 48 10 35 e8 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7a34e8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  92383d:	34 7a ff 
  923840:	48 c1 e2 07          	shl    rdx,0x7
  923844:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  923848:	31 d2                	xor    edx,edx
  92384a:	62 f1 fd 48 28 3d 2c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff75d42c]        # 80c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe130>
  923851:	d4 75 ff 
  923854:	62 71 fd 48 28 15 62 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff75d462]        # 80cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe170>
  92385b:	d4 75 ff 
  92385e:	62 72 fd 48 19 1d 38 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff751638]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  923865:	16 75 ff 
  923868:	62 71 fd 48 28 25 8e 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff75d48e]        # 80d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe1b0>
  92386f:	d4 75 ff 
  923872:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  923879:	1f 84 00 00 00 00 00 
  923880:	62 71 fd 48 10 2c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1]
  923887:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  92388e:	01 
  92388f:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  923896:	02 
  923897:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  92389e:	03 
  92389f:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  9238a5:	62 c2 c5 48 7f ce    	vpermt2pd zmm17,zmm7,zmm14
  9238ab:	62 52 ad 48 7f ee    	vpermt2pd zmm13,zmm10,zmm14
  9238b1:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  9238b7:	62 32 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm16
  9238bd:	62 32 ad 48 7f f8    	vpermt2pd zmm15,zmm10,zmm16
  9238c3:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  9238ca:	04 
  9238cb:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x140]
  9238d2:	05 
  9238d3:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  9238d9:	62 a2 c5 48 7f da    	vpermt2pd zmm19,zmm7,zmm18
  9238df:	62 a2 ad 48 7f c2    	vpermt2pd zmm16,zmm10,zmm18
  9238e5:	62 a1 8d 48 58 d3    	vaddpd zmm18,zmm14,zmm19
  9238eb:	62 a1 f5 40 58 e2    	vaddpd zmm20,zmm17,zmm18
  9238f1:	62 a1 85 48 58 e8    	vaddpd zmm21,zmm15,zmm16
  9238f7:	62 21 95 48 58 d5    	vaddpd zmm26,zmm13,zmm21
  9238fd:	62 72 fd 48 19 05 91 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff751191]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  923904:	11 75 ff 
  923907:	62 a2 bd 48 bc ca    	vfnmadd231pd zmm17,zmm8,zmm18
  92390d:	62 31 85 48 5c f8    	vsubpd zmm15,zmm15,zmm16
  923913:	62 72 fd 48 19 0d 03 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff751303]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  92391a:	13 75 ff 
  92391d:	62 51 85 48 59 f9    	vmulpd zmm15,zmm15,zmm9
  923923:	62 c1 f5 40 58 ff    	vaddpd zmm23,zmm17,zmm15
  923929:	62 32 bd 48 bc ed    	vfnmadd231pd zmm13,zmm8,zmm21
  92392f:	62 31 8d 48 5c f3    	vsubpd zmm14,zmm14,zmm19
  923935:	62 51 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm9
  92393b:	62 41 95 48 5c e6    	vsubpd zmm28,zmm13,zmm14
  923941:	62 51 f5 40 5c ff    	vsubpd zmm15,zmm17,zmm15
  923947:	62 41 8d 48 58 c5    	vaddpd zmm24,zmm14,zmm13
  92394d:	62 a1 fd 48 28 c4    	vmovapd zmm16,zmm20
  923953:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  923959:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  92395f:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  923965:	62 e2 fd 48 7f ca    	vpermt2pd zmm17,zmm0,zmm2
  92396b:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  923971:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  923977:	62 72 fd 48 7f f2    	vpermt2pd zmm14,zmm0,zmm2
  92397d:	62 72 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm2
  923983:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  923989:	62 52 d5 48 7f ee    	vpermt2pd zmm13,zmm5,zmm14
  92398f:	62 c2 cd 48 7f c6    	vpermt2pd zmm16,zmm6,zmm14
  923995:	62 31 fd 48 28 f1    	vmovapd zmm14,zmm17
  92399b:	62 72 d5 48 7f f3    	vpermt2pd zmm14,zmm5,zmm3
  9239a1:	62 e2 cd 48 7f cb    	vpermt2pd zmm17,zmm6,zmm3
  9239a7:	62 a1 fd 48 28 d4    	vmovapd zmm18,zmm20
  9239ad:	62 c2 d5 48 7f d7    	vpermt2pd zmm18,zmm5,zmm15
  9239b3:	62 c2 cd 48 7f e7    	vpermt2pd zmm20,zmm6,zmm15
  9239b9:	62 31 fd 48 28 ff    	vmovapd zmm15,zmm23
  9239bf:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  9239c5:	62 e2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm4
  9239cb:	62 c1 95 48 15 de    	vunpckhpd zmm19,zmm13,zmm14
  9239d1:	62 a1 fd 40 14 f1    	vunpcklpd zmm22,zmm16,zmm17
  9239d7:	62 a1 fd 40 15 c1    	vunpckhpd zmm16,zmm16,zmm17
  9239dd:	62 41 ed 40 14 cf    	vunpcklpd zmm25,zmm18,zmm15
  9239e3:	62 c1 ed 40 15 d7    	vunpckhpd zmm18,zmm18,zmm15
  9239e9:	62 a1 dd 40 14 ef    	vunpcklpd zmm21,zmm20,zmm23
  9239ef:	62 31 dd 40 15 ff    	vunpckhpd zmm15,zmm20,zmm23
  9239f5:	62 81 fd 48 28 fa    	vmovapd zmm23,zmm26
  9239fb:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  923a01:	62 62 f5 48 7f d2    	vpermt2pd zmm26,zmm1,zmm2
  923a07:	62 01 fd 48 28 dc    	vmovapd zmm27,zmm28
  923a0d:	62 62 fd 48 7f da    	vpermt2pd zmm27,zmm0,zmm2
  923a13:	62 62 f5 48 7f e2    	vpermt2pd zmm28,zmm1,zmm2
  923a19:	62 81 fd 48 28 e0    	vmovapd zmm20,zmm24
  923a1f:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  923a25:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  923a2b:	62 a1 fd 48 28 cf    	vmovapd zmm17,zmm23
  923a31:	62 a2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm20
  923a37:	62 a2 cd 48 7f fc    	vpermt2pd zmm23,zmm6,zmm20
  923a3d:	62 81 fd 48 28 e3    	vmovapd zmm20,zmm27
  923a43:	62 e2 d5 48 7f e3    	vpermt2pd zmm20,zmm5,zmm3
  923a49:	62 62 cd 48 7f db    	vpermt2pd zmm27,zmm6,zmm3
  923a4f:	62 01 fd 48 28 f2    	vmovapd zmm30,zmm26
  923a55:	62 02 d5 48 7f f0    	vpermt2pd zmm30,zmm5,zmm24
  923a5b:	62 02 cd 48 7f d0    	vpermt2pd zmm26,zmm6,zmm24
  923a61:	62 01 fd 48 28 fc    	vmovapd zmm31,zmm28
  923a67:	62 62 d5 48 7f fc    	vpermt2pd zmm31,zmm5,zmm4
  923a6d:	62 62 cd 48 7f e4    	vpermt2pd zmm28,zmm6,zmm4
  923a73:	62 21 f5 40 15 ec    	vunpckhpd zmm29,zmm17,zmm20
  923a79:	62 11 c5 40 14 c3    	vunpcklpd zmm8,zmm23,zmm27
  923a7f:	62 01 c5 40 15 c3    	vunpckhpd zmm24,zmm23,zmm27
  923a85:	62 11 8d 40 14 cf    	vunpcklpd zmm9,zmm30,zmm31
  923a8b:	62 01 8d 40 15 df    	vunpckhpd zmm27,zmm30,zmm31
  923a91:	62 81 ad 40 15 fc    	vunpckhpd zmm23,zmm26,zmm28
  923a97:	62 01 ad 40 14 f4    	vunpcklpd zmm30,zmm26,zmm28
  923a9d:	62 61 fd 48 10 61 08 	vmovupd zmm28,ZMMWORD PTR [rcx+0x200]
  923aa4:	62 61 fd 48 10 79 09 	vmovupd zmm31,ZMMWORD PTR [rcx+0x240]
  923aab:	62 01 b5 40 59 d4    	vmulpd zmm26,zmm25,zmm28
  923ab1:	62 02 b5 48 bc d7    	vfnmadd231pd zmm26,zmm9,zmm31
  923ab7:	62 01 b5 48 59 e4    	vmulpd zmm28,zmm9,zmm28
  923abd:	62 71 fd 48 10 49 04 	vmovupd zmm9,ZMMWORD PTR [rcx+0x100]
  923ac4:	62 02 b5 40 b8 e7    	vfmadd231pd zmm28,zmm25,zmm31
  923aca:	62 61 fd 48 10 79 05 	vmovupd zmm31,ZMMWORD PTR [rcx+0x140]
  923ad1:	62 41 cd 40 59 c9    	vmulpd zmm25,zmm22,zmm9
  923ad7:	62 02 bd 48 bc cf    	vfnmadd231pd zmm25,zmm8,zmm31
  923add:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  923ae3:	62 71 fd 48 10 49 0c 	vmovupd zmm9,ZMMWORD PTR [rcx+0x300]
  923aea:	62 12 cd 40 b8 c7    	vfmadd231pd zmm8,zmm22,zmm31
  923af0:	62 e1 fd 48 10 71 0d 	vmovupd zmm22,ZMMWORD PTR [rcx+0x340]
  923af7:	62 41 d5 40 59 f9    	vmulpd zmm31,zmm21,zmm9
  923afd:	62 22 8d 40 bc fe    	vfnmadd231pd zmm31,zmm30,zmm22
  923b03:	62 51 8d 40 59 c9    	vmulpd zmm9,zmm30,zmm9
  923b09:	62 61 fd 48 10 71 02 	vmovupd zmm30,ZMMWORD PTR [rcx+0x80]
  923b10:	62 32 d5 40 b8 ce    	vfmadd231pd zmm9,zmm21,zmm22
  923b16:	62 e1 fd 48 10 69 03 	vmovupd zmm21,ZMMWORD PTR [rcx+0xc0]
  923b1d:	62 81 e5 40 59 f6    	vmulpd zmm22,zmm19,zmm30
  923b23:	62 a2 95 40 bc f5    	vfnmadd231pd zmm22,zmm29,zmm21
  923b29:	62 01 95 40 59 ee    	vmulpd zmm29,zmm29,zmm30
  923b2f:	62 61 fd 48 10 71 0a 	vmovupd zmm30,ZMMWORD PTR [rcx+0x280]
  923b36:	62 22 e5 40 b8 ed    	vfmadd231pd zmm29,zmm19,zmm21
  923b3c:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  923b43:	62 81 ed 40 59 ee    	vmulpd zmm21,zmm18,zmm30
  923b49:	62 a2 a5 40 bc eb    	vfnmadd231pd zmm21,zmm27,zmm19
  923b4f:	62 01 a5 40 59 de    	vmulpd zmm27,zmm27,zmm30
  923b55:	62 61 fd 48 10 71 06 	vmovupd zmm30,ZMMWORD PTR [rcx+0x180]
  923b5c:	62 22 ed 40 b8 db    	vfmadd231pd zmm27,zmm18,zmm19
  923b62:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  923b69:	62 81 fd 40 59 de    	vmulpd zmm19,zmm16,zmm30
  923b6f:	62 a2 bd 40 bc da    	vfnmadd231pd zmm19,zmm24,zmm18
  923b75:	62 01 bd 40 59 c6    	vmulpd zmm24,zmm24,zmm30
  923b7b:	62 61 fd 48 10 71 0e 	vmovupd zmm30,ZMMWORD PTR [rcx+0x380]
  923b82:	62 22 fd 40 b8 c2    	vfmadd231pd zmm24,zmm16,zmm18
  923b88:	62 e1 fd 48 10 41 0f 	vmovupd zmm16,ZMMWORD PTR [rcx+0x3c0]
  923b8f:	62 81 85 48 59 d6    	vmulpd zmm18,zmm15,zmm30
  923b95:	62 a2 c5 40 bc d0    	vfnmadd231pd zmm18,zmm23,zmm16
  923b9b:	62 81 c5 40 59 fe    	vmulpd zmm23,zmm23,zmm30
  923ba1:	62 a2 85 48 b8 f8    	vfmadd231pd zmm23,zmm15,zmm16
  923ba7:	62 51 95 48 14 ee    	vunpcklpd zmm13,zmm13,zmm14
  923bad:	62 31 f5 40 14 f4    	vunpcklpd zmm14,zmm17,zmm20
  923bb3:	62 11 95 48 58 fa    	vaddpd zmm15,zmm13,zmm26
  923bb9:	62 11 95 48 5c ea    	vsubpd zmm13,zmm13,zmm26
  923bbf:	62 c1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm9
  923bc5:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  923bcb:	62 31 cd 40 58 cd    	vaddpd zmm9,zmm22,zmm21
  923bd1:	62 a1 cd 40 5c cd    	vsubpd zmm17,zmm22,zmm21
  923bd7:	62 81 95 40 58 e3    	vaddpd zmm20,zmm29,zmm27
  923bdd:	62 81 95 40 5c eb    	vsubpd zmm21,zmm29,zmm27
  923be3:	62 a1 bd 40 58 f7    	vaddpd zmm22,zmm24,zmm23
  923be9:	62 a1 bd 40 5c ff    	vsubpd zmm23,zmm24,zmm23
  923bef:	62 21 e5 40 58 c2    	vaddpd zmm24,zmm19,zmm18
  923bf5:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  923bfb:	62 c1 9d 40 58 de    	vaddpd zmm19,zmm28,zmm14
  923c01:	62 11 8d 48 5c f4    	vsubpd zmm14,zmm14,zmm28
  923c07:	62 01 b5 40 58 d7    	vaddpd zmm26,zmm25,zmm31
  923c0d:	62 01 85 40 5c c9    	vsubpd zmm25,zmm31,zmm25
  923c13:	62 21 f5 40 58 dd    	vaddpd zmm27,zmm17,zmm21
  923c19:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  923c1f:	62 a1 c5 40 5c ea    	vsubpd zmm21,zmm23,zmm18
  923c25:	62 a1 ed 40 58 d7    	vaddpd zmm18,zmm18,zmm23
  923c2b:	62 81 85 48 58 fa    	vaddpd zmm23,zmm15,zmm26
  923c31:	62 11 85 48 5c fa    	vsubpd zmm15,zmm15,zmm26
  923c37:	62 21 dd 40 58 d6    	vaddpd zmm26,zmm20,zmm22
  923c3d:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  923c43:	62 a1 fd 40 58 f3    	vaddpd zmm22,zmm16,zmm19
  923c49:	62 a1 e5 40 5c c0    	vsubpd zmm16,zmm19,zmm16
  923c4f:	62 81 b5 48 58 d8    	vaddpd zmm19,zmm9,zmm24
  923c55:	62 51 bd 40 5c c9    	vsubpd zmm9,zmm24,zmm9
  923c5b:	62 41 95 48 58 c0    	vaddpd zmm24,zmm13,zmm8
  923c61:	62 41 a5 40 59 db    	vmulpd zmm27,zmm27,zmm11
  923c67:	62 c1 d5 40 59 eb    	vmulpd zmm21,zmm21,zmm11
  923c6d:	62 c1 f5 40 59 cb    	vmulpd zmm17,zmm17,zmm11
  923c73:	62 c1 ed 40 59 d3    	vmulpd zmm18,zmm18,zmm11
  923c79:	62 51 95 48 5c c0    	vsubpd zmm8,zmm13,zmm8
  923c7f:	62 31 f5 40 5c ea    	vsubpd zmm13,zmm17,zmm18
  923c85:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  923c8b:	62 c1 b5 40 58 d6    	vaddpd zmm18,zmm25,zmm14
  923c91:	62 11 8d 48 5c f1    	vsubpd zmm14,zmm14,zmm25
  923c97:	62 21 a5 40 58 cd    	vaddpd zmm25,zmm27,zmm21
  923c9d:	62 81 d5 40 5c eb    	vsubpd zmm21,zmm21,zmm27
  923ca3:	62 01 bd 40 58 d9    	vaddpd zmm27,zmm24,zmm25
  923ca9:	62 01 bd 40 5c c1    	vsubpd zmm24,zmm24,zmm25
  923caf:	62 41 ed 40 58 cd    	vaddpd zmm25,zmm18,zmm13
  923cb5:	62 51 ed 40 5c ed    	vsubpd zmm13,zmm18,zmm13
  923cbb:	62 a1 85 48 58 d4    	vaddpd zmm18,zmm15,zmm20
  923cc1:	62 31 85 48 5c fc    	vsubpd zmm15,zmm15,zmm20
  923cc7:	62 c1 fd 40 58 e1    	vaddpd zmm20,zmm16,zmm9
  923ccd:	62 51 fd 40 5c c9    	vsubpd zmm9,zmm16,zmm9
  923cd3:	62 a1 bd 48 58 c1    	vaddpd zmm16,zmm8,zmm17
  923cd9:	62 31 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm17
  923cdf:	62 a1 8d 48 58 cd    	vaddpd zmm17,zmm14,zmm21
  923ce5:	62 31 8d 48 5c f5    	vsubpd zmm14,zmm14,zmm21
  923ceb:	62 a1 c5 40 5c eb    	vsubpd zmm21,zmm23,zmm19
  923cf1:	62 a1 c5 40 58 db    	vaddpd zmm19,zmm23,zmm19
  923cf7:	62 81 cd 40 5c fa    	vsubpd zmm23,zmm22,zmm26
  923cfd:	62 81 cd 40 58 f2    	vaddpd zmm22,zmm22,zmm26
  923d03:	62 a2 9d 48 7f de    	vpermt2pd zmm19,zmm12,zmm22
  923d09:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm19,0x2
  923d10:	02 02 
  923d12:	62 e1 fd 28 11 1c 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm19
  923d19:	62 02 9d 48 7f d9    	vpermt2pd zmm27,zmm12,zmm25
  923d1f:	62 63 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm27,0x2
  923d26:	05 02 
  923d28:	62 61 fd 28 11 9c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm27
  923d2f:	30 00 00 00 
  923d33:	62 a2 9d 48 7f d4    	vpermt2pd zmm18,zmm12,zmm20
  923d39:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm18,0x2
  923d40:	08 02 
  923d42:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm18
  923d49:	03 
  923d4a:	62 a2 9d 48 7f c1    	vpermt2pd zmm16,zmm12,zmm17
  923d50:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  923d57:	0b 02 
  923d59:	62 e1 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  923d60:	90 00 00 00 
  923d64:	62 a2 9d 48 7f ef    	vpermt2pd zmm21,zmm12,zmm23
  923d6a:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm21,0x2
  923d71:	0e 02 
  923d73:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm21
  923d7a:	06 
  923d7b:	62 42 9d 48 7f c5    	vpermt2pd zmm24,zmm12,zmm13
  923d81:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm24,0x2
  923d88:	11 02 
  923d8a:	62 61 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm24
  923d91:	f0 00 00 00 
  923d95:	62 52 9d 48 7f f9    	vpermt2pd zmm15,zmm12,zmm9
  923d9b:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm15,0x2
  923da2:	14 02 
  923da4:	c5 7d 11 bc 16 20 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x120],ymm15
  923dab:	00 00 
  923dad:	62 52 9d 48 7f c6    	vpermt2pd zmm8,zmm12,zmm14
  923db3:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm8,0x2
  923dba:	17 02 
  923dbc:	c5 7d 11 84 16 50 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x150],ymm8
  923dc3:	00 00 
  923dc5:	48 81 c2 80 01 00 00 	add    rdx,0x180
  923dcc:	48 39 d0             	cmp    rax,rdx
  923dcf:	0f 85 ab fa ff ff    	jne    923880 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  923dd5:	c5 f8 77             	vzeroupper
  923dd8:	c3                   	ret
