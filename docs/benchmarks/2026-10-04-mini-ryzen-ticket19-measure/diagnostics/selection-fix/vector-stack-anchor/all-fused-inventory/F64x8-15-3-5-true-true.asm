
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000091c680 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  91c680:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7aa6de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  91c687:	a6 7a ff 
  91c68a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7aa714]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  91c691:	a7 7a ff 
  91c694:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  91c698:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  91c69c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  91c6a2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  91c6a6:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  91c6ac:	62 f1 fd 48 10 2d 32 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7aa632]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91c6b3:	a6 7a ff 
  91c6b6:	62 f1 fd 48 10 35 68 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7aa668]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  91c6bd:	a6 7a ff 
  91c6c0:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  91c6c7:	31 d2                	xor    edx,edx
  91c6c9:	62 f1 fd 48 28 3d ed 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff763ded]        # 804c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd970>
  91c6d0:	3d 76 ff 
  91c6d3:	62 72 fd 48 19 05 bb 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff7583bb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  91c6da:	83 75 ff 
  91c6dd:	62 72 fd 48 19 0d 39 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff758539]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  91c6e4:	85 75 ff 
  91c6e7:	62 72 fd 48 19 15 67 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff758367]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  91c6ee:	83 75 ff 
  91c6f1:	62 72 fd 48 19 1d 1d 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff75891d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  91c6f8:	89 75 ff 
  91c6fb:	62 72 fd 48 19 25 c3 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff7580c3]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  91c702:	80 75 ff 
  91c705:	62 71 fd 48 28 2d f1 	vmovapd zmm13,ZMMWORD PTR [rip+0xffffffffff763df1]        # 80500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd9b0>
  91c70c:	3d 76 ff 
  91c70f:	62 72 fd 48 19 35 b7 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff7584b7]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  91c716:	84 75 ff 
  91c719:	62 71 fd 48 28 3d 1d 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff763e1d]        # 80540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd9f0>
  91c720:	3e 76 ff 
  91c723:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  91c72a:	84 00 00 00 00 00 
  91c730:	62 e1 fd 48 10 04 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1]
  91c737:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x40]
  91c73e:	04 
  91c73f:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  91c745:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  91c74b:	62 a2 95 48 7f c1    	vpermt2pd zmm16,zmm13,zmm17
  91c751:	62 e1 fd 48 10 9c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x50]
  91c758:	50 00 00 00 
  91c75c:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x90]
  91c763:	09 
  91c764:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  91c76a:	62 a2 c5 48 7f e1    	vpermt2pd zmm20,zmm7,zmm17
  91c770:	62 a2 95 48 7f d9    	vpermt2pd zmm19,zmm13,zmm17
  91c776:	62 e1 fd 48 10 ac 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0xa0]
  91c77d:	a0 00 00 00 
  91c781:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0xe0]
  91c788:	0e 
  91c789:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  91c78f:	62 a2 c5 48 7f f1    	vpermt2pd zmm22,zmm7,zmm17
  91c795:	62 a2 95 48 7f e9    	vpermt2pd zmm21,zmm13,zmm17
  91c79b:	62 a1 e5 40 58 fd    	vaddpd zmm23,zmm19,zmm21
  91c7a1:	62 21 fd 40 58 c7    	vaddpd zmm24,zmm16,zmm23
  91c7a7:	62 21 dd 40 58 ce    	vaddpd zmm25,zmm20,zmm22
  91c7ad:	62 81 ed 40 58 c9    	vaddpd zmm17,zmm18,zmm25
  91c7b3:	62 a2 bd 48 bc c7    	vfnmadd231pd zmm16,zmm8,zmm23
  91c7b9:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  91c7bf:	62 c1 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm9
  91c7c5:	62 a1 fd 40 58 f4    	vaddpd zmm22,zmm16,zmm20
  91c7cb:	62 82 bd 48 bc d1    	vfnmadd231pd zmm18,zmm8,zmm25
  91c7d1:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  91c7d7:	62 c1 e5 40 59 d9    	vmulpd zmm19,zmm19,zmm9
  91c7dd:	62 a1 ed 40 5c eb    	vsubpd zmm21,zmm18,zmm19
  91c7e3:	62 a1 fd 40 5c c4    	vsubpd zmm16,zmm16,zmm20
  91c7e9:	62 a1 e5 40 58 fa    	vaddpd zmm23,zmm19,zmm18
  91c7ef:	62 81 fd 48 28 d0    	vmovapd zmm18,zmm24
  91c7f5:	62 e2 fd 48 7f d2    	vpermt2pd zmm18,zmm0,zmm2
  91c7fb:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  91c801:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  91c807:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  91c80d:	62 e2 f5 48 7f f2    	vpermt2pd zmm22,zmm1,zmm2
  91c813:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  91c819:	62 e2 fd 48 7f da    	vpermt2pd zmm19,zmm0,zmm2
  91c81f:	62 e2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm2
  91c825:	62 21 fd 48 28 d2    	vmovapd zmm26,zmm18
  91c82b:	62 22 d5 48 7f d3    	vpermt2pd zmm26,zmm5,zmm19
  91c831:	62 a2 cd 48 7f d3    	vpermt2pd zmm18,zmm6,zmm19
  91c837:	62 81 fd 48 28 d9    	vmovapd zmm19,zmm25
  91c83d:	62 e2 d5 48 7f db    	vpermt2pd zmm19,zmm5,zmm3
  91c843:	62 62 cd 48 7f cb    	vpermt2pd zmm25,zmm6,zmm3
  91c849:	62 22 d5 48 7f c0    	vpermt2pd zmm24,zmm5,zmm16
  91c84f:	62 e2 d5 48 7f f4    	vpermt2pd zmm22,zmm5,zmm4
  91c855:	62 a1 bd 40 14 e6    	vunpcklpd zmm20,zmm24,zmm22
  91c85b:	62 a1 ad 40 14 c3    	vunpcklpd zmm16,zmm26,zmm19
  91c861:	62 a1 ad 40 15 f3    	vunpckhpd zmm22,zmm26,zmm19
  91c867:	62 81 ed 40 14 d9    	vunpcklpd zmm19,zmm18,zmm25
  91c86d:	62 81 ed 40 15 d1    	vunpckhpd zmm18,zmm18,zmm25
  91c873:	62 21 fd 48 28 c1    	vmovapd zmm24,zmm17
  91c879:	62 62 fd 48 7f c2    	vpermt2pd zmm24,zmm0,zmm2
  91c87f:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  91c885:	62 21 fd 48 28 cd    	vmovapd zmm25,zmm21
  91c88b:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  91c891:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  91c897:	62 21 fd 48 28 d7    	vmovapd zmm26,zmm23
  91c89d:	62 62 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm2
  91c8a3:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  91c8a9:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  91c8af:	62 02 d5 48 7f da    	vpermt2pd zmm27,zmm5,zmm26
  91c8b5:	62 02 cd 48 7f c2    	vpermt2pd zmm24,zmm6,zmm26
  91c8bb:	62 01 fd 48 28 d1    	vmovapd zmm26,zmm25
  91c8c1:	62 62 d5 48 7f d3    	vpermt2pd zmm26,zmm5,zmm3
  91c8c7:	62 62 cd 48 7f cb    	vpermt2pd zmm25,zmm6,zmm3
  91c8cd:	62 a2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm23
  91c8d3:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  91c8d9:	62 a1 f5 40 14 ed    	vunpcklpd zmm21,zmm17,zmm21
  91c8df:	62 81 a5 40 14 ca    	vunpcklpd zmm17,zmm27,zmm26
  91c8e5:	62 81 a5 40 15 fa    	vunpckhpd zmm23,zmm27,zmm26
  91c8eb:	62 01 bd 40 14 d1    	vunpcklpd zmm26,zmm24,zmm25
  91c8f1:	62 01 bd 40 15 c1    	vunpckhpd zmm24,zmm24,zmm25
  91c8f7:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  91c8fe:	62 61 fd 48 10 59 03 	vmovupd zmm27,ZMMWORD PTR [rcx+0xc0]
  91c905:	62 61 fd 48 10 61 04 	vmovupd zmm28,ZMMWORD PTR [rcx+0x100]
  91c90c:	62 61 fd 48 10 69 05 	vmovupd zmm29,ZMMWORD PTR [rcx+0x140]
  91c913:	62 01 cd 40 59 f1    	vmulpd zmm30,zmm22,zmm25
  91c919:	62 02 c5 40 bc f3    	vfnmadd231pd zmm30,zmm23,zmm27
  91c91f:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  91c925:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  91c92c:	62 82 cd 40 b8 fb    	vfmadd231pd zmm23,zmm22,zmm27
  91c932:	62 e1 fd 48 10 71 09 	vmovupd zmm22,ZMMWORD PTR [rcx+0x240]
  91c939:	62 01 dd 40 59 d9    	vmulpd zmm27,zmm20,zmm25
  91c93f:	62 22 d5 40 bc de    	vfnmadd231pd zmm27,zmm21,zmm22
  91c945:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  91c94b:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  91c952:	62 a2 dd 40 b8 ee    	vfmadd231pd zmm21,zmm20,zmm22
  91c958:	62 e1 fd 48 10 61 07 	vmovupd zmm20,ZMMWORD PTR [rcx+0x1c0]
  91c95f:	62 81 e5 40 59 f4    	vmulpd zmm22,zmm19,zmm28
  91c965:	62 82 ad 40 bc f5    	vfnmadd231pd zmm22,zmm26,zmm29
  91c96b:	62 01 ad 40 59 d4    	vmulpd zmm26,zmm26,zmm28
  91c971:	62 01 8d 40 58 e3    	vaddpd zmm28,zmm30,zmm27
  91c977:	62 02 e5 40 b8 d5    	vfmadd231pd zmm26,zmm19,zmm29
  91c97d:	62 81 ed 40 59 d9    	vmulpd zmm19,zmm18,zmm25
  91c983:	62 a2 bd 40 bc dc    	vfnmadd231pd zmm19,zmm24,zmm20
  91c989:	62 21 cd 40 58 eb    	vaddpd zmm29,zmm22,zmm19
  91c98f:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  91c995:	62 21 c5 40 58 cd    	vaddpd zmm25,zmm23,zmm21
  91c99b:	62 22 ed 40 b8 c4    	vfmadd231pd zmm24,zmm18,zmm20
  91c9a1:	62 81 ad 40 58 d0    	vaddpd zmm18,zmm26,zmm24
  91c9a7:	62 c1 fd 48 28 e2    	vmovapd zmm20,zmm10
  91c9ad:	62 a2 9d 40 a8 e0    	vfmadd213pd zmm20,zmm28,zmm16
  91c9b3:	62 c2 95 40 bc e3    	vfnmadd231pd zmm20,zmm29,zmm11
  91c9b9:	62 a1 c5 40 5c ed    	vsubpd zmm21,zmm23,zmm21
  91c9bf:	62 81 ad 40 5c f8    	vsubpd zmm23,zmm26,zmm24
  91c9c5:	62 41 c5 40 59 c4    	vmulpd zmm24,zmm23,zmm12
  91c9cb:	62 42 d5 40 b8 c6    	vfmadd231pd zmm24,zmm21,zmm14
  91c9d1:	62 01 dd 40 58 d0    	vaddpd zmm26,zmm20,zmm24
  91c9d7:	62 01 8d 40 5c db    	vsubpd zmm27,zmm30,zmm27
  91c9dd:	62 a1 cd 40 5c db    	vsubpd zmm19,zmm22,zmm19
  91c9e3:	62 c1 e5 40 59 f4    	vmulpd zmm22,zmm19,zmm12
  91c9e9:	62 c2 a5 40 b8 f6    	vfmadd231pd zmm22,zmm27,zmm14
  91c9ef:	62 41 fd 48 28 f3    	vmovapd zmm30,zmm11
  91c9f5:	62 22 9d 40 ac f0    	vfnmadd213pd zmm30,zmm28,zmm16
  91c9fb:	62 42 95 40 b8 f2    	vfmadd231pd zmm30,zmm29,zmm10
  91ca01:	62 c1 d5 40 59 ec    	vmulpd zmm21,zmm21,zmm12
  91ca07:	62 a2 8d 48 bc ef    	vfnmadd231pd zmm21,zmm14,zmm23
  91ca0d:	62 a1 8d 40 58 fd    	vaddpd zmm23,zmm30,zmm21
  91ca13:	62 41 a5 40 59 dc    	vmulpd zmm27,zmm27,zmm12
  91ca19:	62 22 8d 48 bc db    	vfnmadd231pd zmm27,zmm14,zmm19
  91ca1f:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  91ca25:	62 a2 b5 40 ac d9    	vfnmadd213pd zmm19,zmm25,zmm17
  91ca2b:	62 c2 ed 40 b8 da    	vfmadd231pd zmm19,zmm18,zmm10
  91ca31:	62 a1 8d 40 5c ed    	vsubpd zmm21,zmm30,zmm21
  91ca37:	62 01 e5 40 5c f3    	vsubpd zmm30,zmm19,zmm27
  91ca3d:	62 81 e5 40 58 db    	vaddpd zmm19,zmm19,zmm27
  91ca43:	62 41 fd 48 28 da    	vmovapd zmm27,zmm10
  91ca49:	62 22 b5 40 a8 d9    	vfmadd213pd zmm27,zmm25,zmm17
  91ca4f:	62 42 ed 40 bc db    	vfnmadd231pd zmm27,zmm18,zmm11
  91ca55:	62 81 dd 40 5c e0    	vsubpd zmm20,zmm20,zmm24
  91ca5b:	62 21 a5 40 5c c6    	vsubpd zmm24,zmm27,zmm22
  91ca61:	62 a1 a5 40 58 f6    	vaddpd zmm22,zmm27,zmm22
  91ca67:	62 a1 b5 40 58 c9    	vaddpd zmm17,zmm25,zmm17
  91ca6d:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  91ca73:	62 81 fd 40 58 c4    	vaddpd zmm16,zmm16,zmm28
  91ca79:	62 81 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm29
  91ca7f:	62 a2 85 48 7f c8    	vpermt2pd zmm17,zmm15,zmm16
  91ca85:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm17,0x2
  91ca8c:	02 02 
  91ca8e:	62 e1 fd 28 11 0c 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm17
  91ca95:	62 02 85 48 7f c2    	vpermt2pd zmm24,zmm15,zmm26
  91ca9b:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm24,0x2
  91caa2:	05 02 
  91caa4:	62 61 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm24
  91caab:	30 00 00 00 
  91caaf:	62 22 85 48 7f f7    	vpermt2pd zmm30,zmm15,zmm23
  91cab5:	62 63 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm30,0x2
  91cabc:	08 02 
  91cabe:	62 61 fd 28 11 74 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm30
  91cac5:	03 
  91cac6:	62 a2 85 48 7f dd    	vpermt2pd zmm19,zmm15,zmm21
  91cacc:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm19,0x2
  91cad3:	0b 02 
  91cad5:	62 e1 fd 28 11 9c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm19
  91cadc:	90 00 00 00 
  91cae0:	62 a2 85 48 7f f4    	vpermt2pd zmm22,zmm15,zmm20
  91cae6:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm22,0x2
  91caed:	0e 02 
  91caef:	62 e1 fd 28 11 74 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm22
  91caf6:	06 
  91caf7:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  91cafe:	48 39 d0             	cmp    rax,rdx
  91cb01:	0f 85 29 fc ff ff    	jne    91c730 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0xb0>
  91cb07:	c5 f8 77             	vzeroupper
  91cb0a:	c3                   	ret
