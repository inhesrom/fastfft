
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009418c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9418c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78549e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9418c7:	54 78 ff 
  9418ca:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7854d4]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9418d1:	54 78 ff 
  9418d4:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  9418d8:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  9418dc:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  9418e2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9418e6:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  9418ec:	62 f1 fd 48 10 2d f2 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7853f2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9418f3:	53 78 ff 
  9418f6:	62 f1 fd 48 10 35 28 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff785428]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9418fd:	54 78 ff 
  941900:	48 c1 e2 05          	shl    rdx,0x5
  941904:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  941908:	31 d2                	xor    edx,edx
  94190a:	62 f1 fd 48 28 3d 6c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff741b6c]        # 83480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10930>
  941911:	1b 74 ff 
  941914:	62 72 fd 48 19 05 7a 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff73317a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  94191b:	31 73 ff 
  94191e:	62 71 fd 48 28 0d 98 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff741b98]        # 834c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10970>
  941925:	1b 74 ff 
  941928:	62 72 fd 48 19 15 ee 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff7332ee]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  94192f:	32 73 ff 
  941932:	62 71 fd 48 28 1d c4 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff741bc4]        # 83500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x109b0>
  941939:	1b 74 ff 
  94193c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  941940:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  941947:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  94194d:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  941953:	62 52 c5 48 7f f5    	vpermt2pd zmm14,zmm7,zmm13
  941959:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  94195f:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  941966:	60 00 00 00 
  94196a:	c5 7d 10 bc 17 a0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xa0]
  941971:	00 00 
  941973:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  941979:	62 c2 c5 48 7f c7    	vpermt2pd zmm16,zmm7,zmm15
  94197f:	62 52 b5 48 7f ef    	vpermt2pd zmm13,zmm9,zmm15
  941985:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0xc0]
  94198c:	03 
  94198d:	62 e1 fd 28 10 4c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x100]
  941994:	08 
  941995:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  94199b:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  9419a1:	62 32 b5 48 7f f9    	vpermt2pd zmm15,zmm9,zmm17
  9419a7:	62 c1 95 48 58 df    	vaddpd zmm19,zmm13,zmm15
  9419ad:	62 a1 9d 48 58 e3    	vaddpd zmm20,zmm12,zmm19
  9419b3:	62 a1 fd 40 58 ea    	vaddpd zmm21,zmm16,zmm18
  9419b9:	62 a1 8d 48 58 cd    	vaddpd zmm17,zmm14,zmm21
  9419bf:	62 32 bd 48 bc e3    	vfnmadd231pd zmm12,zmm8,zmm19
  9419c5:	62 a1 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm18
  9419cb:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  9419d1:	62 a1 9d 48 58 f0    	vaddpd zmm22,zmm12,zmm16
  9419d7:	62 32 bd 48 bc f5    	vfnmadd231pd zmm14,zmm8,zmm21
  9419dd:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  9419e3:	62 51 95 48 59 ea    	vmulpd zmm13,zmm13,zmm10
  9419e9:	62 c1 8d 48 5c ed    	vsubpd zmm21,zmm14,zmm13
  9419ef:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  9419f5:	62 51 95 48 58 f6    	vaddpd zmm14,zmm13,zmm14
  9419fb:	62 31 fd 48 28 fc    	vmovapd zmm15,zmm20
  941a01:	62 72 fd 48 7f fa    	vpermt2pd zmm15,zmm0,zmm2
  941a07:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  941a0d:	62 a1 fd 48 28 c6    	vmovapd zmm16,zmm22
  941a13:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  941a19:	62 e2 f5 48 7f f2    	vpermt2pd zmm22,zmm1,zmm2
  941a1f:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  941a25:	62 72 fd 48 7f ea    	vpermt2pd zmm13,zmm0,zmm2
  941a2b:	62 72 f5 48 7f e2    	vpermt2pd zmm12,zmm1,zmm2
  941a31:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  941a37:	62 c2 d5 48 7f d5    	vpermt2pd zmm18,zmm5,zmm13
  941a3d:	62 52 cd 48 7f fd    	vpermt2pd zmm15,zmm6,zmm13
  941a43:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  941a49:	62 72 d5 48 7f eb    	vpermt2pd zmm13,zmm5,zmm3
  941a4f:	62 e2 cd 48 7f c3    	vpermt2pd zmm16,zmm6,zmm3
  941a55:	62 c2 d5 48 7f e4    	vpermt2pd zmm20,zmm5,zmm12
  941a5b:	62 e2 d5 48 7f f4    	vpermt2pd zmm22,zmm5,zmm4
  941a61:	62 51 ed 40 14 e5    	vunpcklpd zmm12,zmm18,zmm13
  941a67:	62 51 ed 40 15 ed    	vunpckhpd zmm13,zmm18,zmm13
  941a6d:	62 a1 85 48 14 d8    	vunpcklpd zmm19,zmm15,zmm16
  941a73:	62 a1 85 48 15 c0    	vunpckhpd zmm16,zmm15,zmm16
  941a79:	62 a1 dd 40 14 d6    	vunpcklpd zmm18,zmm20,zmm22
  941a7f:	62 31 dd 40 15 fe    	vunpckhpd zmm15,zmm20,zmm22
  941a85:	62 a1 fd 48 28 e1    	vmovapd zmm20,zmm17
  941a8b:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  941a91:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  941a97:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  941a9d:	62 e2 fd 48 7f f2    	vpermt2pd zmm22,zmm0,zmm2
  941aa3:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  941aa9:	62 c1 fd 48 28 fe    	vmovapd zmm23,zmm14
  941aaf:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  941ab5:	62 72 f5 48 7f f2    	vpermt2pd zmm14,zmm1,zmm2
  941abb:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  941ac1:	62 22 d5 48 7f c7    	vpermt2pd zmm24,zmm5,zmm23
  941ac7:	62 a2 cd 48 7f e7    	vpermt2pd zmm20,zmm6,zmm23
  941acd:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  941ad3:	62 e2 d5 48 7f fb    	vpermt2pd zmm23,zmm5,zmm3
  941ad9:	62 e2 cd 48 7f f3    	vpermt2pd zmm22,zmm6,zmm3
  941adf:	62 c2 d5 48 7f ce    	vpermt2pd zmm17,zmm5,zmm14
  941ae5:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  941aeb:	62 31 bd 40 14 f7    	vunpcklpd zmm14,zmm24,zmm23
  941af1:	62 a1 bd 40 15 ff    	vunpckhpd zmm23,zmm24,zmm23
  941af7:	62 21 dd 40 14 c6    	vunpcklpd zmm24,zmm20,zmm22
  941afd:	62 a1 dd 40 15 e6    	vunpckhpd zmm20,zmm20,zmm22
  941b03:	62 a1 f5 40 14 f5    	vunpcklpd zmm22,zmm17,zmm21
  941b09:	62 a1 f5 40 15 ed    	vunpckhpd zmm21,zmm17,zmm21
  941b0f:	62 61 fd 48 10 49 04 	vmovupd zmm25,ZMMWORD PTR [rcx+0x100]
  941b16:	62 61 fd 48 10 51 05 	vmovupd zmm26,ZMMWORD PTR [rcx+0x140]
  941b1d:	62 81 e5 40 59 c9    	vmulpd zmm17,zmm19,zmm25
  941b23:	62 82 bd 40 bc ca    	vfnmadd231pd zmm17,zmm24,zmm26
  941b29:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  941b2f:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  941b36:	62 02 e5 40 b8 c2    	vfmadd231pd zmm24,zmm19,zmm26
  941b3c:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  941b43:	62 01 ed 40 59 d1    	vmulpd zmm26,zmm18,zmm25
  941b49:	62 22 cd 40 bc d3    	vfnmadd231pd zmm26,zmm22,zmm19
  941b4f:	62 81 cd 40 59 f1    	vmulpd zmm22,zmm22,zmm25
  941b55:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  941b5c:	62 a2 ed 40 b8 f3    	vfmadd231pd zmm22,zmm18,zmm19
  941b62:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  941b69:	62 81 fd 40 59 d9    	vmulpd zmm19,zmm16,zmm25
  941b6f:	62 a2 dd 40 bc da    	vfnmadd231pd zmm19,zmm20,zmm18
  941b75:	62 81 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm25
  941b7b:	62 61 fd 48 10 49 0a 	vmovupd zmm25,ZMMWORD PTR [rcx+0x280]
  941b82:	62 a2 fd 40 b8 e2    	vfmadd231pd zmm20,zmm16,zmm18
  941b88:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  941b8f:	62 81 85 48 59 d1    	vmulpd zmm18,zmm15,zmm25
  941b95:	62 a2 d5 40 bc d0    	vfnmadd231pd zmm18,zmm21,zmm16
  941b9b:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  941ba1:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  941ba8:	62 a2 85 48 b8 e8    	vfmadd231pd zmm21,zmm15,zmm16
  941bae:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  941bb5:	62 81 95 48 59 c1    	vmulpd zmm16,zmm13,zmm25
  941bbb:	62 c2 c5 40 bc c7    	vfnmadd231pd zmm16,zmm23,zmm15
  941bc1:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  941bc7:	62 01 f5 40 58 ca    	vaddpd zmm25,zmm17,zmm26
  941bcd:	62 c2 95 48 b8 ff    	vfmadd231pd zmm23,zmm13,zmm15
  941bd3:	62 11 9d 48 58 e9    	vaddpd zmm13,zmm12,zmm25
  941bd9:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  941bdf:	62 42 bd 48 ac cc    	vfnmadd213pd zmm25,zmm8,zmm12
  941be5:	62 31 bd 40 58 e6    	vaddpd zmm12,zmm24,zmm22
  941beb:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  941bf1:	62 41 e5 40 58 c7    	vaddpd zmm24,zmm19,zmm15
  941bf7:	62 c2 bd 48 bc df    	vfnmadd231pd zmm19,zmm8,zmm15
  941bfd:	62 31 d5 40 58 ff    	vaddpd zmm15,zmm21,zmm23
  941c03:	62 a1 d5 40 5c ef    	vsubpd zmm21,zmm21,zmm23
  941c09:	62 c1 9d 48 58 fe    	vaddpd zmm23,zmm12,zmm14
  941c0f:	62 52 bd 48 ac e6    	vfnmadd213pd zmm12,zmm8,zmm14
  941c15:	62 11 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm26
  941c1b:	62 c1 dd 40 58 cf    	vaddpd zmm17,zmm20,zmm15
  941c21:	62 c2 bd 48 bc e7    	vfnmadd231pd zmm20,zmm8,zmm15
  941c27:	62 51 cd 40 59 fa    	vmulpd zmm15,zmm22,zmm10
  941c2d:	62 a1 ed 40 5c c0    	vsubpd zmm16,zmm18,zmm16
  941c33:	62 c1 b5 40 58 d7    	vaddpd zmm18,zmm25,zmm15
  941c39:	62 c1 d5 40 59 ea    	vmulpd zmm21,zmm21,zmm10
  941c3f:	62 51 b5 40 5c ff    	vsubpd zmm15,zmm25,zmm15
  941c45:	62 a1 e5 40 58 f5    	vaddpd zmm22,zmm19,zmm21
  941c4b:	62 51 8d 48 59 f2    	vmulpd zmm14,zmm14,zmm10
  941c51:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  941c57:	62 c1 9d 48 5c ee    	vsubpd zmm21,zmm12,zmm14
  941c5d:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  941c63:	62 51 8d 48 58 e4    	vaddpd zmm12,zmm14,zmm12
  941c69:	62 31 dd 40 5c f0    	vsubpd zmm14,zmm20,zmm16
  941c6f:	62 a1 dd 40 58 c0    	vaddpd zmm16,zmm20,zmm16
  941c75:	62 a1 ed 40 5c e6    	vsubpd zmm20,zmm18,zmm22
  941c7b:	62 a1 ed 40 58 d6    	vaddpd zmm18,zmm18,zmm22
  941c81:	62 c1 d5 40 5c f6    	vsubpd zmm22,zmm21,zmm14
  941c87:	62 51 d5 40 58 f6    	vaddpd zmm14,zmm21,zmm14
  941c8d:	62 a1 85 48 58 eb    	vaddpd zmm21,zmm15,zmm19
  941c93:	62 31 85 48 5c fb    	vsubpd zmm15,zmm15,zmm19
  941c99:	62 a1 9d 48 58 d8    	vaddpd zmm19,zmm12,zmm16
  941c9f:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  941ca5:	62 a1 c5 40 5c c1    	vsubpd zmm16,zmm23,zmm17
  941cab:	62 a1 c5 40 58 c9    	vaddpd zmm17,zmm23,zmm17
  941cb1:	62 81 95 48 5c f8    	vsubpd zmm23,zmm13,zmm24
  941cb7:	62 11 95 48 58 e8    	vaddpd zmm13,zmm13,zmm24
  941cbd:	62 c2 a5 48 7f cd    	vpermt2pd zmm17,zmm11,zmm13
  941cc3:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm17,0x2
  941cca:	02 02 
  941ccc:	62 e1 fd 28 11 0c 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm17
  941cd3:	62 a2 a5 48 7f f4    	vpermt2pd zmm22,zmm11,zmm20
  941cd9:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm22,0x2
  941ce0:	05 02 
  941ce2:	62 e1 fd 28 11 b4 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm22
  941ce9:	30 00 00 00 
  941ced:	62 a2 a5 48 7f dd    	vpermt2pd zmm19,zmm11,zmm21
  941cf3:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm19,0x2
  941cfa:	08 02 
  941cfc:	62 e1 fd 28 11 5c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm19
  941d03:	03 
  941d04:	62 a2 a5 48 7f c7    	vpermt2pd zmm16,zmm11,zmm23
  941d0a:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  941d11:	0b 02 
  941d13:	62 e1 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  941d1a:	90 00 00 00 
  941d1e:	62 32 a5 48 7f f2    	vpermt2pd zmm14,zmm11,zmm18
  941d24:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm14,0x2
  941d2b:	0e 02 
  941d2d:	c5 7d 11 b4 16 c0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm14
  941d34:	00 00 
  941d36:	62 52 a5 48 7f e7    	vpermt2pd zmm12,zmm11,zmm15
  941d3c:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm12,0x2
  941d43:	11 02 
  941d45:	c5 7d 11 a4 16 f0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm12
  941d4c:	00 00 
  941d4e:	48 81 c2 20 01 00 00 	add    rdx,0x120
  941d55:	48 39 d0             	cmp    rax,rdx
  941d58:	0f 85 e2 fb ff ff    	jne    941940 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  941d5e:	c5 f8 77             	vzeroupper
  941d61:	c3                   	ret
