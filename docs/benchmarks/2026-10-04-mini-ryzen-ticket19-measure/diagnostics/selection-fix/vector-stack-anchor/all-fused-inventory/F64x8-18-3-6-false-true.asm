
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000939840 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  939840:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78d51e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  939847:	d5 78 ff 
  93984a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff78d554]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  939851:	d5 78 ff 
  939854:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  939858:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  93985c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  939862:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  939866:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  93986c:	62 f1 fd 48 10 2d 72 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff78d472]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  939873:	d4 78 ff 
  939876:	62 f1 fd 48 10 35 a8 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff78d4a8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93987d:	d4 78 ff 
  939880:	48 c1 e2 05          	shl    rdx,0x5
  939884:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  939888:	31 d2                	xor    edx,edx
  93988a:	62 f1 fd 48 28 3d 2c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff74912c]        # 829c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfe70>
  939891:	91 74 ff 
  939894:	62 72 fd 48 19 05 fa 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff73b1fa]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93989b:	b1 73 ff 
  93989e:	62 71 fd 48 28 0d 58 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff749158]        # 82a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfeb0>
  9398a5:	91 74 ff 
  9398a8:	62 72 fd 48 19 15 6e 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff73b36e]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9398af:	b3 73 ff 
  9398b2:	62 71 fd 48 28 1d 84 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff749184]        # 82a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfef0>
  9398b9:	91 74 ff 
  9398bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  9398c0:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  9398c7:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  9398cd:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  9398d3:	62 52 c5 48 7f f5    	vpermt2pd zmm14,zmm7,zmm13
  9398d9:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  9398df:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  9398e6:	60 00 00 00 
  9398ea:	c5 7d 10 bc 17 a0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xa0]
  9398f1:	00 00 
  9398f3:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  9398f9:	62 c2 c5 48 7f c7    	vpermt2pd zmm16,zmm7,zmm15
  9398ff:	62 52 b5 48 7f ef    	vpermt2pd zmm13,zmm9,zmm15
  939905:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0xc0]
  93990c:	03 
  93990d:	62 e1 fd 28 10 4c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x100]
  939914:	08 
  939915:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  93991b:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  939921:	62 32 b5 48 7f f9    	vpermt2pd zmm15,zmm9,zmm17
  939927:	62 a1 fd 40 58 da    	vaddpd zmm19,zmm16,zmm18
  93992d:	62 a1 8d 48 58 e3    	vaddpd zmm20,zmm14,zmm19
  939933:	62 c1 95 48 58 ef    	vaddpd zmm21,zmm13,zmm15
  939939:	62 a1 9d 48 58 cd    	vaddpd zmm17,zmm12,zmm21
  93993f:	62 32 bd 48 bc f3    	vfnmadd231pd zmm14,zmm8,zmm19
  939945:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  93994b:	62 51 95 48 59 ea    	vmulpd zmm13,zmm13,zmm10
  939951:	62 51 8d 48 58 fd    	vaddpd zmm15,zmm14,zmm13
  939957:	62 32 bd 48 bc e5    	vfnmadd231pd zmm12,zmm8,zmm21
  93995d:	62 a1 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm18
  939963:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  939969:	62 a1 9d 48 5c e8    	vsubpd zmm21,zmm12,zmm16
  93996f:	62 51 8d 48 5c ed    	vsubpd zmm13,zmm14,zmm13
  939975:	62 51 fd 40 58 f4    	vaddpd zmm14,zmm16,zmm12
  93997b:	62 a1 fd 48 28 c4    	vmovapd zmm16,zmm20
  939981:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  939987:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  93998d:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  939993:	62 e2 fd 48 7f d2    	vpermt2pd zmm18,zmm0,zmm2
  939999:	62 72 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm2
  93999f:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  9399a5:	62 72 fd 48 7f e2    	vpermt2pd zmm12,zmm0,zmm2
  9399ab:	62 72 f5 48 7f ea    	vpermt2pd zmm13,zmm1,zmm2
  9399b1:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  9399b7:	62 c2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm12
  9399bd:	62 c2 cd 48 7f c4    	vpermt2pd zmm16,zmm6,zmm12
  9399c3:	62 a1 fd 48 28 f2    	vmovapd zmm22,zmm18
  9399c9:	62 e2 d5 48 7f f3    	vpermt2pd zmm22,zmm5,zmm3
  9399cf:	62 e2 cd 48 7f d3    	vpermt2pd zmm18,zmm6,zmm3
  9399d5:	62 c2 d5 48 7f e5    	vpermt2pd zmm20,zmm5,zmm13
  9399db:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  9399e1:	62 31 e5 40 14 e6    	vunpcklpd zmm12,zmm19,zmm22
  9399e7:	62 31 e5 40 15 ee    	vunpckhpd zmm13,zmm19,zmm22
  9399ed:	62 a1 fd 40 14 da    	vunpcklpd zmm19,zmm16,zmm18
  9399f3:	62 a1 fd 40 15 c2    	vunpckhpd zmm16,zmm16,zmm18
  9399f9:	62 c1 dd 40 14 d7    	vunpcklpd zmm18,zmm20,zmm15
  9399ff:	62 51 dd 40 15 ff    	vunpckhpd zmm15,zmm20,zmm15
  939a05:	62 a1 fd 48 28 e1    	vmovapd zmm20,zmm17
  939a0b:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  939a11:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  939a17:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  939a1d:	62 e2 fd 48 7f f2    	vpermt2pd zmm22,zmm0,zmm2
  939a23:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  939a29:	62 c1 fd 48 28 fe    	vmovapd zmm23,zmm14
  939a2f:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  939a35:	62 72 f5 48 7f f2    	vpermt2pd zmm14,zmm1,zmm2
  939a3b:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  939a41:	62 22 d5 48 7f c7    	vpermt2pd zmm24,zmm5,zmm23
  939a47:	62 a2 cd 48 7f e7    	vpermt2pd zmm20,zmm6,zmm23
  939a4d:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  939a53:	62 e2 d5 48 7f fb    	vpermt2pd zmm23,zmm5,zmm3
  939a59:	62 e2 cd 48 7f f3    	vpermt2pd zmm22,zmm6,zmm3
  939a5f:	62 c2 d5 48 7f ce    	vpermt2pd zmm17,zmm5,zmm14
  939a65:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  939a6b:	62 31 bd 40 14 f7    	vunpcklpd zmm14,zmm24,zmm23
  939a71:	62 a1 bd 40 15 ff    	vunpckhpd zmm23,zmm24,zmm23
  939a77:	62 21 dd 40 14 c6    	vunpcklpd zmm24,zmm20,zmm22
  939a7d:	62 a1 dd 40 15 e6    	vunpckhpd zmm20,zmm20,zmm22
  939a83:	62 a1 f5 40 14 f5    	vunpcklpd zmm22,zmm17,zmm21
  939a89:	62 a1 f5 40 15 ed    	vunpckhpd zmm21,zmm17,zmm21
  939a8f:	62 61 fd 48 10 49 04 	vmovupd zmm25,ZMMWORD PTR [rcx+0x100]
  939a96:	62 61 fd 48 10 51 05 	vmovupd zmm26,ZMMWORD PTR [rcx+0x140]
  939a9d:	62 81 e5 40 59 c9    	vmulpd zmm17,zmm19,zmm25
  939aa3:	62 82 bd 40 bc ca    	vfnmadd231pd zmm17,zmm24,zmm26
  939aa9:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  939aaf:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  939ab6:	62 02 e5 40 b8 c2    	vfmadd231pd zmm24,zmm19,zmm26
  939abc:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  939ac3:	62 01 ed 40 59 d1    	vmulpd zmm26,zmm18,zmm25
  939ac9:	62 22 cd 40 bc d3    	vfnmadd231pd zmm26,zmm22,zmm19
  939acf:	62 81 cd 40 59 f1    	vmulpd zmm22,zmm22,zmm25
  939ad5:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  939adc:	62 a2 ed 40 b8 f3    	vfmadd231pd zmm22,zmm18,zmm19
  939ae2:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  939ae9:	62 81 fd 40 59 d9    	vmulpd zmm19,zmm16,zmm25
  939aef:	62 a2 dd 40 bc da    	vfnmadd231pd zmm19,zmm20,zmm18
  939af5:	62 81 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm25
  939afb:	62 61 fd 48 10 49 0a 	vmovupd zmm25,ZMMWORD PTR [rcx+0x280]
  939b02:	62 a2 fd 40 b8 e2    	vfmadd231pd zmm20,zmm16,zmm18
  939b08:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  939b0f:	62 81 85 48 59 d1    	vmulpd zmm18,zmm15,zmm25
  939b15:	62 a2 d5 40 bc d0    	vfnmadd231pd zmm18,zmm21,zmm16
  939b1b:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  939b21:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  939b28:	62 a2 85 48 b8 e8    	vfmadd231pd zmm21,zmm15,zmm16
  939b2e:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  939b35:	62 81 95 48 59 c1    	vmulpd zmm16,zmm13,zmm25
  939b3b:	62 c2 c5 40 bc c7    	vfnmadd231pd zmm16,zmm23,zmm15
  939b41:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  939b47:	62 01 f5 40 58 ca    	vaddpd zmm25,zmm17,zmm26
  939b4d:	62 c2 95 48 b8 ff    	vfmadd231pd zmm23,zmm13,zmm15
  939b53:	62 11 9d 48 58 e9    	vaddpd zmm13,zmm12,zmm25
  939b59:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  939b5f:	62 42 bd 48 ac cc    	vfnmadd213pd zmm25,zmm8,zmm12
  939b65:	62 31 bd 40 58 e6    	vaddpd zmm12,zmm24,zmm22
  939b6b:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  939b71:	62 41 e5 40 58 c7    	vaddpd zmm24,zmm19,zmm15
  939b77:	62 c2 bd 48 bc df    	vfnmadd231pd zmm19,zmm8,zmm15
  939b7d:	62 31 d5 40 58 ff    	vaddpd zmm15,zmm21,zmm23
  939b83:	62 a1 d5 40 5c ef    	vsubpd zmm21,zmm21,zmm23
  939b89:	62 c1 9d 48 58 fe    	vaddpd zmm23,zmm12,zmm14
  939b8f:	62 52 bd 48 ac e6    	vfnmadd213pd zmm12,zmm8,zmm14
  939b95:	62 11 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm26
  939b9b:	62 c1 dd 40 58 cf    	vaddpd zmm17,zmm20,zmm15
  939ba1:	62 c2 bd 48 bc e7    	vfnmadd231pd zmm20,zmm8,zmm15
  939ba7:	62 51 cd 40 59 fa    	vmulpd zmm15,zmm22,zmm10
  939bad:	62 a1 ed 40 5c c0    	vsubpd zmm16,zmm18,zmm16
  939bb3:	62 c1 b5 40 58 d7    	vaddpd zmm18,zmm25,zmm15
  939bb9:	62 c1 d5 40 59 ea    	vmulpd zmm21,zmm21,zmm10
  939bbf:	62 51 b5 40 5c ff    	vsubpd zmm15,zmm25,zmm15
  939bc5:	62 a1 e5 40 58 f5    	vaddpd zmm22,zmm19,zmm21
  939bcb:	62 51 8d 48 59 f2    	vmulpd zmm14,zmm14,zmm10
  939bd1:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  939bd7:	62 c1 9d 48 5c ee    	vsubpd zmm21,zmm12,zmm14
  939bdd:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  939be3:	62 51 8d 48 58 e4    	vaddpd zmm12,zmm14,zmm12
  939be9:	62 31 dd 40 5c f0    	vsubpd zmm14,zmm20,zmm16
  939bef:	62 a1 dd 40 58 c0    	vaddpd zmm16,zmm20,zmm16
  939bf5:	62 a1 ed 40 5c e6    	vsubpd zmm20,zmm18,zmm22
  939bfb:	62 a1 ed 40 58 d6    	vaddpd zmm18,zmm18,zmm22
  939c01:	62 c1 d5 40 5c f6    	vsubpd zmm22,zmm21,zmm14
  939c07:	62 51 d5 40 58 f6    	vaddpd zmm14,zmm21,zmm14
  939c0d:	62 a1 85 48 58 eb    	vaddpd zmm21,zmm15,zmm19
  939c13:	62 31 85 48 5c fb    	vsubpd zmm15,zmm15,zmm19
  939c19:	62 a1 9d 48 58 d8    	vaddpd zmm19,zmm12,zmm16
  939c1f:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  939c25:	62 81 95 48 5c c0    	vsubpd zmm16,zmm13,zmm24
  939c2b:	62 11 95 48 58 e8    	vaddpd zmm13,zmm13,zmm24
  939c31:	62 21 c5 40 5c c1    	vsubpd zmm24,zmm23,zmm17
  939c37:	62 a1 c5 40 58 c9    	vaddpd zmm17,zmm23,zmm17
  939c3d:	62 32 a5 48 7f e9    	vpermt2pd zmm13,zmm11,zmm17
  939c43:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm13,0x2
  939c4a:	02 02 
  939c4c:	c5 7d 11 2c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm13
  939c51:	62 a2 a5 48 7f e6    	vpermt2pd zmm20,zmm11,zmm22
  939c57:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm20,0x2
  939c5e:	05 02 
  939c60:	62 e1 fd 28 11 a4 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm20
  939c67:	30 00 00 00 
  939c6b:	62 a2 a5 48 7f eb    	vpermt2pd zmm21,zmm11,zmm19
  939c71:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm21,0x2
  939c78:	08 02 
  939c7a:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm21
  939c81:	03 
  939c82:	62 82 a5 48 7f c0    	vpermt2pd zmm16,zmm11,zmm24
  939c88:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  939c8f:	0b 02 
  939c91:	62 e1 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  939c98:	90 00 00 00 
  939c9c:	62 c2 a5 48 7f d6    	vpermt2pd zmm18,zmm11,zmm14
  939ca2:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm18,0x2
  939ca9:	0e 02 
  939cab:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm18
  939cb2:	06 
  939cb3:	62 52 a5 48 7f fc    	vpermt2pd zmm15,zmm11,zmm12
  939cb9:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm15,0x2
  939cc0:	11 02 
  939cc2:	c5 7d 11 bc 16 f0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm15
  939cc9:	00 00 
  939ccb:	48 81 c2 20 01 00 00 	add    rdx,0x120
  939cd2:	48 39 d0             	cmp    rax,rdx
  939cd5:	0f 85 e5 fb ff ff    	jne    9398c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  939cdb:	c5 f8 77             	vzeroupper
  939cde:	c3                   	ret
