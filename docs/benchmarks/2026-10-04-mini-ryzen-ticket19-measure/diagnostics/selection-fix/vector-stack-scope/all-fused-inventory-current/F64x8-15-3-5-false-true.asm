
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000953840 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  953840:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff77351e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  953847:	35 77 ff 
  95384a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff773554]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  953851:	35 77 ff 
  953854:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  953858:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  95385c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  953862:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  953866:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  95386c:	62 f1 fd 48 10 2d 72 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff773472]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  953873:	34 77 ff 
  953876:	62 f1 fd 48 10 35 a8 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7734a8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  95387d:	34 77 ff 
  953880:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  953887:	31 d2                	xor    edx,edx
  953889:	62 f1 fd 48 28 3d 6d 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff73106d]        # 84900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11db0>
  953890:	10 73 ff 
  953893:	62 72 fd 48 19 05 fb 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff7211fb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  95389a:	11 72 ff 
  95389d:	62 72 fd 48 19 0d 79 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff721379]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9538a4:	13 72 ff 
  9538a7:	62 72 fd 48 19 15 a7 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff7211a7]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  9538ae:	11 72 ff 
  9538b1:	62 72 fd 48 19 1d 5d 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff72175d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  9538b8:	17 72 ff 
  9538bb:	62 72 fd 48 19 25 03 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff720f03]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  9538c2:	0f 72 ff 
  9538c5:	62 71 fd 48 28 2d 71 	vmovapd zmm13,ZMMWORD PTR [rip+0xffffffffff731071]        # 84940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11df0>
  9538cc:	10 73 ff 
  9538cf:	62 72 fd 48 19 35 f7 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff7212f7]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  9538d6:	12 72 ff 
  9538d9:	62 71 fd 48 28 3d 9d 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff73109d]        # 84980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11e30>
  9538e0:	10 73 ff 
  9538e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  9538ea:	84 00 00 00 00 00 
  9538f0:	62 e1 fd 48 10 04 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1]
  9538f7:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x40]
  9538fe:	04 
  9538ff:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  953905:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  95390b:	62 a2 95 48 7f c1    	vpermt2pd zmm16,zmm13,zmm17
  953911:	62 e1 fd 48 10 9c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x50]
  953918:	50 00 00 00 
  95391c:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x90]
  953923:	09 
  953924:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  95392a:	62 a2 c5 48 7f e1    	vpermt2pd zmm20,zmm7,zmm17
  953930:	62 a2 95 48 7f d9    	vpermt2pd zmm19,zmm13,zmm17
  953936:	62 e1 fd 48 10 ac 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0xa0]
  95393d:	a0 00 00 00 
  953941:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0xe0]
  953948:	0e 
  953949:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  95394f:	62 a2 c5 48 7f f1    	vpermt2pd zmm22,zmm7,zmm17
  953955:	62 a2 95 48 7f e9    	vpermt2pd zmm21,zmm13,zmm17
  95395b:	62 a1 dd 40 58 fe    	vaddpd zmm23,zmm20,zmm22
  953961:	62 21 ed 40 58 c7    	vaddpd zmm24,zmm18,zmm23
  953967:	62 21 e5 40 58 cd    	vaddpd zmm25,zmm19,zmm21
  95396d:	62 81 fd 40 58 c9    	vaddpd zmm17,zmm16,zmm25
  953973:	62 a2 bd 48 bc d7    	vfnmadd231pd zmm18,zmm8,zmm23
  953979:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  95397f:	62 c1 e5 40 59 d9    	vmulpd zmm19,zmm19,zmm9
  953985:	62 a1 ed 40 58 eb    	vaddpd zmm21,zmm18,zmm19
  95398b:	62 82 bd 48 bc c1    	vfnmadd231pd zmm16,zmm8,zmm25
  953991:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  953997:	62 c1 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm9
  95399d:	62 a1 fd 40 5c f4    	vsubpd zmm22,zmm16,zmm20
  9539a3:	62 a1 ed 40 5c d3    	vsubpd zmm18,zmm18,zmm19
  9539a9:	62 a1 dd 40 58 f8    	vaddpd zmm23,zmm20,zmm16
  9539af:	62 01 fd 48 28 c8    	vmovapd zmm25,zmm24
  9539b5:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  9539bb:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  9539c1:	62 21 fd 48 28 d5    	vmovapd zmm26,zmm21
  9539c7:	62 62 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm2
  9539cd:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  9539d3:	62 a1 fd 48 28 c2    	vmovapd zmm16,zmm18
  9539d9:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  9539df:	62 e2 f5 48 7f d2    	vpermt2pd zmm18,zmm1,zmm2
  9539e5:	62 81 fd 48 28 d9    	vmovapd zmm19,zmm25
  9539eb:	62 a2 d5 48 7f d8    	vpermt2pd zmm19,zmm5,zmm16
  9539f1:	62 22 cd 48 7f c8    	vpermt2pd zmm25,zmm6,zmm16
  9539f7:	62 01 fd 48 28 da    	vmovapd zmm27,zmm26
  9539fd:	62 62 d5 48 7f db    	vpermt2pd zmm27,zmm5,zmm3
  953a03:	62 62 cd 48 7f d3    	vpermt2pd zmm26,zmm6,zmm3
  953a09:	62 22 d5 48 7f c2    	vpermt2pd zmm24,zmm5,zmm18
  953a0f:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  953a15:	62 a1 bd 40 14 e5    	vunpcklpd zmm20,zmm24,zmm21
  953a1b:	62 81 e5 40 14 c3    	vunpcklpd zmm16,zmm19,zmm27
  953a21:	62 81 e5 40 15 eb    	vunpckhpd zmm21,zmm19,zmm27
  953a27:	62 81 b5 40 14 da    	vunpcklpd zmm19,zmm25,zmm26
  953a2d:	62 81 b5 40 15 d2    	vunpckhpd zmm18,zmm25,zmm26
  953a33:	62 21 fd 48 28 c1    	vmovapd zmm24,zmm17
  953a39:	62 62 fd 48 7f c2    	vpermt2pd zmm24,zmm0,zmm2
  953a3f:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  953a45:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  953a4b:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  953a51:	62 e2 f5 48 7f f2    	vpermt2pd zmm22,zmm1,zmm2
  953a57:	62 21 fd 48 28 d7    	vmovapd zmm26,zmm23
  953a5d:	62 62 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm2
  953a63:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  953a69:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  953a6f:	62 02 d5 48 7f da    	vpermt2pd zmm27,zmm5,zmm26
  953a75:	62 02 cd 48 7f c2    	vpermt2pd zmm24,zmm6,zmm26
  953a7b:	62 01 fd 48 28 d1    	vmovapd zmm26,zmm25
  953a81:	62 62 d5 48 7f d3    	vpermt2pd zmm26,zmm5,zmm3
  953a87:	62 62 cd 48 7f cb    	vpermt2pd zmm25,zmm6,zmm3
  953a8d:	62 a2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm23
  953a93:	62 e2 d5 48 7f f4    	vpermt2pd zmm22,zmm5,zmm4
  953a99:	62 a1 f5 40 14 f6    	vunpcklpd zmm22,zmm17,zmm22
  953a9f:	62 81 a5 40 14 ca    	vunpcklpd zmm17,zmm27,zmm26
  953aa5:	62 81 a5 40 15 fa    	vunpckhpd zmm23,zmm27,zmm26
  953aab:	62 01 bd 40 14 d1    	vunpcklpd zmm26,zmm24,zmm25
  953ab1:	62 01 bd 40 15 c1    	vunpckhpd zmm24,zmm24,zmm25
  953ab7:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  953abe:	62 61 fd 48 10 59 03 	vmovupd zmm27,ZMMWORD PTR [rcx+0xc0]
  953ac5:	62 61 fd 48 10 61 04 	vmovupd zmm28,ZMMWORD PTR [rcx+0x100]
  953acc:	62 61 fd 48 10 69 05 	vmovupd zmm29,ZMMWORD PTR [rcx+0x140]
  953ad3:	62 01 d5 40 59 f1    	vmulpd zmm30,zmm21,zmm25
  953ad9:	62 02 c5 40 bc f3    	vfnmadd231pd zmm30,zmm23,zmm27
  953adf:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  953ae5:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  953aec:	62 82 d5 40 b8 fb    	vfmadd231pd zmm23,zmm21,zmm27
  953af2:	62 e1 fd 48 10 69 09 	vmovupd zmm21,ZMMWORD PTR [rcx+0x240]
  953af9:	62 01 dd 40 59 d9    	vmulpd zmm27,zmm20,zmm25
  953aff:	62 22 cd 40 bc dd    	vfnmadd231pd zmm27,zmm22,zmm21
  953b05:	62 81 cd 40 59 f1    	vmulpd zmm22,zmm22,zmm25
  953b0b:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  953b12:	62 a2 dd 40 b8 f5    	vfmadd231pd zmm22,zmm20,zmm21
  953b18:	62 e1 fd 48 10 61 07 	vmovupd zmm20,ZMMWORD PTR [rcx+0x1c0]
  953b1f:	62 81 e5 40 59 ec    	vmulpd zmm21,zmm19,zmm28
  953b25:	62 82 ad 40 bc ed    	vfnmadd231pd zmm21,zmm26,zmm29
  953b2b:	62 01 ad 40 59 d4    	vmulpd zmm26,zmm26,zmm28
  953b31:	62 01 8d 40 58 e3    	vaddpd zmm28,zmm30,zmm27
  953b37:	62 02 e5 40 b8 d5    	vfmadd231pd zmm26,zmm19,zmm29
  953b3d:	62 81 ed 40 59 d9    	vmulpd zmm19,zmm18,zmm25
  953b43:	62 a2 bd 40 bc dc    	vfnmadd231pd zmm19,zmm24,zmm20
  953b49:	62 21 d5 40 58 eb    	vaddpd zmm29,zmm21,zmm19
  953b4f:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  953b55:	62 21 c5 40 58 ce    	vaddpd zmm25,zmm23,zmm22
  953b5b:	62 22 ed 40 b8 c4    	vfmadd231pd zmm24,zmm18,zmm20
  953b61:	62 81 ad 40 58 d0    	vaddpd zmm18,zmm26,zmm24
  953b67:	62 c1 fd 48 28 e2    	vmovapd zmm20,zmm10
  953b6d:	62 a2 9d 40 a8 e0    	vfmadd213pd zmm20,zmm28,zmm16
  953b73:	62 c2 95 40 bc e3    	vfnmadd231pd zmm20,zmm29,zmm11
  953b79:	62 a1 c5 40 5c f6    	vsubpd zmm22,zmm23,zmm22
  953b7f:	62 81 ad 40 5c f8    	vsubpd zmm23,zmm26,zmm24
  953b85:	62 41 c5 40 59 c4    	vmulpd zmm24,zmm23,zmm12
  953b8b:	62 42 cd 40 b8 c6    	vfmadd231pd zmm24,zmm22,zmm14
  953b91:	62 01 dd 40 58 d0    	vaddpd zmm26,zmm20,zmm24
  953b97:	62 01 8d 40 5c db    	vsubpd zmm27,zmm30,zmm27
  953b9d:	62 a1 d5 40 5c db    	vsubpd zmm19,zmm21,zmm19
  953ba3:	62 c1 e5 40 59 ec    	vmulpd zmm21,zmm19,zmm12
  953ba9:	62 c2 a5 40 b8 ee    	vfmadd231pd zmm21,zmm27,zmm14
  953baf:	62 41 fd 48 28 f3    	vmovapd zmm30,zmm11
  953bb5:	62 22 9d 40 ac f0    	vfnmadd213pd zmm30,zmm28,zmm16
  953bbb:	62 42 95 40 b8 f2    	vfmadd231pd zmm30,zmm29,zmm10
  953bc1:	62 c1 cd 40 59 f4    	vmulpd zmm22,zmm22,zmm12
  953bc7:	62 a2 8d 48 bc f7    	vfnmadd231pd zmm22,zmm14,zmm23
  953bcd:	62 a1 8d 40 58 fe    	vaddpd zmm23,zmm30,zmm22
  953bd3:	62 41 a5 40 59 dc    	vmulpd zmm27,zmm27,zmm12
  953bd9:	62 22 8d 48 bc db    	vfnmadd231pd zmm27,zmm14,zmm19
  953bdf:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  953be5:	62 a2 b5 40 ac d9    	vfnmadd213pd zmm19,zmm25,zmm17
  953beb:	62 c2 ed 40 b8 da    	vfmadd231pd zmm19,zmm18,zmm10
  953bf1:	62 a1 8d 40 5c f6    	vsubpd zmm22,zmm30,zmm22
  953bf7:	62 01 e5 40 5c f3    	vsubpd zmm30,zmm19,zmm27
  953bfd:	62 81 e5 40 58 db    	vaddpd zmm19,zmm19,zmm27
  953c03:	62 41 fd 48 28 da    	vmovapd zmm27,zmm10
  953c09:	62 22 b5 40 a8 d9    	vfmadd213pd zmm27,zmm25,zmm17
  953c0f:	62 42 ed 40 bc db    	vfnmadd231pd zmm27,zmm18,zmm11
  953c15:	62 81 dd 40 5c e0    	vsubpd zmm20,zmm20,zmm24
  953c1b:	62 21 a5 40 5c c5    	vsubpd zmm24,zmm27,zmm21
  953c21:	62 a1 a5 40 58 ed    	vaddpd zmm21,zmm27,zmm21
  953c27:	62 81 fd 40 58 c4    	vaddpd zmm16,zmm16,zmm28
  953c2d:	62 81 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm29
  953c33:	62 a1 b5 40 58 c9    	vaddpd zmm17,zmm25,zmm17
  953c39:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  953c3f:	62 a2 85 48 7f c1    	vpermt2pd zmm16,zmm15,zmm17
  953c45:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm16,0x2
  953c4c:	02 02 
  953c4e:	62 e1 fd 28 11 04 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm16
  953c55:	62 02 85 48 7f d0    	vpermt2pd zmm26,zmm15,zmm24
  953c5b:	62 63 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm26,0x2
  953c62:	05 02 
  953c64:	62 61 fd 28 11 94 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm26
  953c6b:	30 00 00 00 
  953c6f:	62 82 85 48 7f fe    	vpermt2pd zmm23,zmm15,zmm30
  953c75:	62 e3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm23,0x2
  953c7c:	08 02 
  953c7e:	62 e1 fd 28 11 7c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm23
  953c85:	03 
  953c86:	62 a2 85 48 7f f3    	vpermt2pd zmm22,zmm15,zmm19
  953c8c:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm22,0x2
  953c93:	0b 02 
  953c95:	62 e1 fd 28 11 b4 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm22
  953c9c:	90 00 00 00 
  953ca0:	62 a2 85 48 7f e5    	vpermt2pd zmm20,zmm15,zmm21
  953ca6:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm20,0x2
  953cad:	0e 02 
  953caf:	62 e1 fd 28 11 64 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm20
  953cb6:	06 
  953cb7:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  953cbe:	48 39 d0             	cmp    rax,rdx
  953cc1:	0f 85 29 fc ff ff    	jne    9538f0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0xb0>
  953cc7:	c5 f8 77             	vzeroupper
  953cca:	c3                   	ret
