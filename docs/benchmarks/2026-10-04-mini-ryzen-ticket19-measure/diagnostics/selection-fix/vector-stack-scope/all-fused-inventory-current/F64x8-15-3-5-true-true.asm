
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000091d900 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  91d900:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7a945e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  91d907:	94 7a ff 
  91d90a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7a9494]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  91d911:	94 7a ff 
  91d914:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  91d918:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  91d91c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  91d922:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  91d926:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  91d92c:	62 f1 fd 48 10 2d b2 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7a93b2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91d933:	93 7a ff 
  91d936:	62 f1 fd 48 10 35 e8 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7a93e8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  91d93d:	93 7a ff 
  91d940:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  91d947:	31 d2                	xor    edx,edx
  91d949:	62 f1 fd 48 28 3d 6d 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff762b6d]        # 804c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd970>
  91d950:	2b 76 ff 
  91d953:	62 72 fd 48 19 05 3b 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff75713b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  91d95a:	71 75 ff 
  91d95d:	62 72 fd 48 19 0d b9 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff7572b9]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  91d964:	72 75 ff 
  91d967:	62 72 fd 48 19 15 e7 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff7570e7]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  91d96e:	70 75 ff 
  91d971:	62 72 fd 48 19 1d 9d 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff75769d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  91d978:	76 75 ff 
  91d97b:	62 72 fd 48 19 25 43 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff756e43]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  91d982:	6e 75 ff 
  91d985:	62 71 fd 48 28 2d 71 	vmovapd zmm13,ZMMWORD PTR [rip+0xffffffffff762b71]        # 80500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd9b0>
  91d98c:	2b 76 ff 
  91d98f:	62 72 fd 48 19 35 37 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff757237]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  91d996:	72 75 ff 
  91d999:	62 71 fd 48 28 3d 9d 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff762b9d]        # 80540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd9f0>
  91d9a0:	2b 76 ff 
  91d9a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  91d9aa:	84 00 00 00 00 00 
  91d9b0:	62 e1 fd 48 10 04 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1]
  91d9b7:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x40]
  91d9be:	04 
  91d9bf:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  91d9c5:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  91d9cb:	62 a2 95 48 7f c1    	vpermt2pd zmm16,zmm13,zmm17
  91d9d1:	62 e1 fd 48 10 9c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x50]
  91d9d8:	50 00 00 00 
  91d9dc:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x90]
  91d9e3:	09 
  91d9e4:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  91d9ea:	62 a2 c5 48 7f e1    	vpermt2pd zmm20,zmm7,zmm17
  91d9f0:	62 a2 95 48 7f d9    	vpermt2pd zmm19,zmm13,zmm17
  91d9f6:	62 e1 fd 48 10 ac 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0xa0]
  91d9fd:	a0 00 00 00 
  91da01:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0xe0]
  91da08:	0e 
  91da09:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  91da0f:	62 a2 c5 48 7f f1    	vpermt2pd zmm22,zmm7,zmm17
  91da15:	62 a2 95 48 7f e9    	vpermt2pd zmm21,zmm13,zmm17
  91da1b:	62 a1 e5 40 58 fd    	vaddpd zmm23,zmm19,zmm21
  91da21:	62 21 fd 40 58 c7    	vaddpd zmm24,zmm16,zmm23
  91da27:	62 21 dd 40 58 ce    	vaddpd zmm25,zmm20,zmm22
  91da2d:	62 81 ed 40 58 c9    	vaddpd zmm17,zmm18,zmm25
  91da33:	62 a2 bd 48 bc c7    	vfnmadd231pd zmm16,zmm8,zmm23
  91da39:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  91da3f:	62 c1 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm9
  91da45:	62 a1 fd 40 58 f4    	vaddpd zmm22,zmm16,zmm20
  91da4b:	62 82 bd 48 bc d1    	vfnmadd231pd zmm18,zmm8,zmm25
  91da51:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  91da57:	62 c1 e5 40 59 d9    	vmulpd zmm19,zmm19,zmm9
  91da5d:	62 a1 ed 40 5c eb    	vsubpd zmm21,zmm18,zmm19
  91da63:	62 a1 fd 40 5c c4    	vsubpd zmm16,zmm16,zmm20
  91da69:	62 a1 e5 40 58 fa    	vaddpd zmm23,zmm19,zmm18
  91da6f:	62 81 fd 48 28 d0    	vmovapd zmm18,zmm24
  91da75:	62 e2 fd 48 7f d2    	vpermt2pd zmm18,zmm0,zmm2
  91da7b:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  91da81:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  91da87:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  91da8d:	62 e2 f5 48 7f f2    	vpermt2pd zmm22,zmm1,zmm2
  91da93:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  91da99:	62 e2 fd 48 7f da    	vpermt2pd zmm19,zmm0,zmm2
  91da9f:	62 e2 f5 48 7f c2    	vpermt2pd zmm16,zmm1,zmm2
  91daa5:	62 21 fd 48 28 d2    	vmovapd zmm26,zmm18
  91daab:	62 22 d5 48 7f d3    	vpermt2pd zmm26,zmm5,zmm19
  91dab1:	62 a2 cd 48 7f d3    	vpermt2pd zmm18,zmm6,zmm19
  91dab7:	62 81 fd 48 28 d9    	vmovapd zmm19,zmm25
  91dabd:	62 e2 d5 48 7f db    	vpermt2pd zmm19,zmm5,zmm3
  91dac3:	62 62 cd 48 7f cb    	vpermt2pd zmm25,zmm6,zmm3
  91dac9:	62 22 d5 48 7f c0    	vpermt2pd zmm24,zmm5,zmm16
  91dacf:	62 e2 d5 48 7f f4    	vpermt2pd zmm22,zmm5,zmm4
  91dad5:	62 a1 bd 40 14 e6    	vunpcklpd zmm20,zmm24,zmm22
  91dadb:	62 a1 ad 40 14 c3    	vunpcklpd zmm16,zmm26,zmm19
  91dae1:	62 a1 ad 40 15 f3    	vunpckhpd zmm22,zmm26,zmm19
  91dae7:	62 81 ed 40 14 d9    	vunpcklpd zmm19,zmm18,zmm25
  91daed:	62 81 ed 40 15 d1    	vunpckhpd zmm18,zmm18,zmm25
  91daf3:	62 21 fd 48 28 c1    	vmovapd zmm24,zmm17
  91daf9:	62 62 fd 48 7f c2    	vpermt2pd zmm24,zmm0,zmm2
  91daff:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  91db05:	62 21 fd 48 28 cd    	vmovapd zmm25,zmm21
  91db0b:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  91db11:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  91db17:	62 21 fd 48 28 d7    	vmovapd zmm26,zmm23
  91db1d:	62 62 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm2
  91db23:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  91db29:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  91db2f:	62 02 d5 48 7f da    	vpermt2pd zmm27,zmm5,zmm26
  91db35:	62 02 cd 48 7f c2    	vpermt2pd zmm24,zmm6,zmm26
  91db3b:	62 01 fd 48 28 d1    	vmovapd zmm26,zmm25
  91db41:	62 62 d5 48 7f d3    	vpermt2pd zmm26,zmm5,zmm3
  91db47:	62 62 cd 48 7f cb    	vpermt2pd zmm25,zmm6,zmm3
  91db4d:	62 a2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm23
  91db53:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  91db59:	62 a1 f5 40 14 ed    	vunpcklpd zmm21,zmm17,zmm21
  91db5f:	62 81 a5 40 14 ca    	vunpcklpd zmm17,zmm27,zmm26
  91db65:	62 81 a5 40 15 fa    	vunpckhpd zmm23,zmm27,zmm26
  91db6b:	62 01 bd 40 14 d1    	vunpcklpd zmm26,zmm24,zmm25
  91db71:	62 01 bd 40 15 c1    	vunpckhpd zmm24,zmm24,zmm25
  91db77:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  91db7e:	62 61 fd 48 10 59 03 	vmovupd zmm27,ZMMWORD PTR [rcx+0xc0]
  91db85:	62 61 fd 48 10 61 04 	vmovupd zmm28,ZMMWORD PTR [rcx+0x100]
  91db8c:	62 61 fd 48 10 69 05 	vmovupd zmm29,ZMMWORD PTR [rcx+0x140]
  91db93:	62 01 cd 40 59 f1    	vmulpd zmm30,zmm22,zmm25
  91db99:	62 02 c5 40 bc f3    	vfnmadd231pd zmm30,zmm23,zmm27
  91db9f:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  91dba5:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  91dbac:	62 82 cd 40 b8 fb    	vfmadd231pd zmm23,zmm22,zmm27
  91dbb2:	62 e1 fd 48 10 71 09 	vmovupd zmm22,ZMMWORD PTR [rcx+0x240]
  91dbb9:	62 01 dd 40 59 d9    	vmulpd zmm27,zmm20,zmm25
  91dbbf:	62 22 d5 40 bc de    	vfnmadd231pd zmm27,zmm21,zmm22
  91dbc5:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  91dbcb:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  91dbd2:	62 a2 dd 40 b8 ee    	vfmadd231pd zmm21,zmm20,zmm22
  91dbd8:	62 e1 fd 48 10 61 07 	vmovupd zmm20,ZMMWORD PTR [rcx+0x1c0]
  91dbdf:	62 81 e5 40 59 f4    	vmulpd zmm22,zmm19,zmm28
  91dbe5:	62 82 ad 40 bc f5    	vfnmadd231pd zmm22,zmm26,zmm29
  91dbeb:	62 01 ad 40 59 d4    	vmulpd zmm26,zmm26,zmm28
  91dbf1:	62 01 8d 40 58 e3    	vaddpd zmm28,zmm30,zmm27
  91dbf7:	62 02 e5 40 b8 d5    	vfmadd231pd zmm26,zmm19,zmm29
  91dbfd:	62 81 ed 40 59 d9    	vmulpd zmm19,zmm18,zmm25
  91dc03:	62 a2 bd 40 bc dc    	vfnmadd231pd zmm19,zmm24,zmm20
  91dc09:	62 21 cd 40 58 eb    	vaddpd zmm29,zmm22,zmm19
  91dc0f:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  91dc15:	62 21 c5 40 58 cd    	vaddpd zmm25,zmm23,zmm21
  91dc1b:	62 22 ed 40 b8 c4    	vfmadd231pd zmm24,zmm18,zmm20
  91dc21:	62 81 ad 40 58 d0    	vaddpd zmm18,zmm26,zmm24
  91dc27:	62 c1 fd 48 28 e2    	vmovapd zmm20,zmm10
  91dc2d:	62 a2 9d 40 a8 e0    	vfmadd213pd zmm20,zmm28,zmm16
  91dc33:	62 c2 95 40 bc e3    	vfnmadd231pd zmm20,zmm29,zmm11
  91dc39:	62 a1 c5 40 5c ed    	vsubpd zmm21,zmm23,zmm21
  91dc3f:	62 81 ad 40 5c f8    	vsubpd zmm23,zmm26,zmm24
  91dc45:	62 41 c5 40 59 c4    	vmulpd zmm24,zmm23,zmm12
  91dc4b:	62 42 d5 40 b8 c6    	vfmadd231pd zmm24,zmm21,zmm14
  91dc51:	62 01 dd 40 58 d0    	vaddpd zmm26,zmm20,zmm24
  91dc57:	62 01 8d 40 5c db    	vsubpd zmm27,zmm30,zmm27
  91dc5d:	62 a1 cd 40 5c db    	vsubpd zmm19,zmm22,zmm19
  91dc63:	62 c1 e5 40 59 f4    	vmulpd zmm22,zmm19,zmm12
  91dc69:	62 c2 a5 40 b8 f6    	vfmadd231pd zmm22,zmm27,zmm14
  91dc6f:	62 41 fd 48 28 f3    	vmovapd zmm30,zmm11
  91dc75:	62 22 9d 40 ac f0    	vfnmadd213pd zmm30,zmm28,zmm16
  91dc7b:	62 42 95 40 b8 f2    	vfmadd231pd zmm30,zmm29,zmm10
  91dc81:	62 c1 d5 40 59 ec    	vmulpd zmm21,zmm21,zmm12
  91dc87:	62 a2 8d 48 bc ef    	vfnmadd231pd zmm21,zmm14,zmm23
  91dc8d:	62 a1 8d 40 58 fd    	vaddpd zmm23,zmm30,zmm21
  91dc93:	62 41 a5 40 59 dc    	vmulpd zmm27,zmm27,zmm12
  91dc99:	62 22 8d 48 bc db    	vfnmadd231pd zmm27,zmm14,zmm19
  91dc9f:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  91dca5:	62 a2 b5 40 ac d9    	vfnmadd213pd zmm19,zmm25,zmm17
  91dcab:	62 c2 ed 40 b8 da    	vfmadd231pd zmm19,zmm18,zmm10
  91dcb1:	62 a1 8d 40 5c ed    	vsubpd zmm21,zmm30,zmm21
  91dcb7:	62 01 e5 40 5c f3    	vsubpd zmm30,zmm19,zmm27
  91dcbd:	62 81 e5 40 58 db    	vaddpd zmm19,zmm19,zmm27
  91dcc3:	62 41 fd 48 28 da    	vmovapd zmm27,zmm10
  91dcc9:	62 22 b5 40 a8 d9    	vfmadd213pd zmm27,zmm25,zmm17
  91dccf:	62 42 ed 40 bc db    	vfnmadd231pd zmm27,zmm18,zmm11
  91dcd5:	62 81 dd 40 5c e0    	vsubpd zmm20,zmm20,zmm24
  91dcdb:	62 21 a5 40 5c c6    	vsubpd zmm24,zmm27,zmm22
  91dce1:	62 a1 a5 40 58 f6    	vaddpd zmm22,zmm27,zmm22
  91dce7:	62 a1 b5 40 58 c9    	vaddpd zmm17,zmm25,zmm17
  91dced:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  91dcf3:	62 81 fd 40 58 c4    	vaddpd zmm16,zmm16,zmm28
  91dcf9:	62 81 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm29
  91dcff:	62 a2 85 48 7f c8    	vpermt2pd zmm17,zmm15,zmm16
  91dd05:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm17,0x2
  91dd0c:	02 02 
  91dd0e:	62 e1 fd 28 11 0c 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm17
  91dd15:	62 02 85 48 7f c2    	vpermt2pd zmm24,zmm15,zmm26
  91dd1b:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm24,0x2
  91dd22:	05 02 
  91dd24:	62 61 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm24
  91dd2b:	30 00 00 00 
  91dd2f:	62 22 85 48 7f f7    	vpermt2pd zmm30,zmm15,zmm23
  91dd35:	62 63 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm30,0x2
  91dd3c:	08 02 
  91dd3e:	62 61 fd 28 11 74 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm30
  91dd45:	03 
  91dd46:	62 a2 85 48 7f dd    	vpermt2pd zmm19,zmm15,zmm21
  91dd4c:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm19,0x2
  91dd53:	0b 02 
  91dd55:	62 e1 fd 28 11 9c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm19
  91dd5c:	90 00 00 00 
  91dd60:	62 a2 85 48 7f f4    	vpermt2pd zmm22,zmm15,zmm20
  91dd66:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm22,0x2
  91dd6d:	0e 02 
  91dd6f:	62 e1 fd 28 11 74 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm22
  91dd76:	06 
  91dd77:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  91dd7e:	48 39 d0             	cmp    rax,rdx
  91dd81:	0f 85 29 fc ff ff    	jne    91d9b0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0xb0>
  91dd87:	c5 f8 77             	vzeroupper
  91dd8a:	c3                   	ret
