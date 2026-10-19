
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f2a80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f2a80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d42de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f2a87:	42 7d ff 
  8f2a8a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  8f2a8e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  8f2a92:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  8f2a98:	62 f1 fd 48 10 1d 46 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d4246]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f2a9f:	42 7d ff 
  8f2aa2:	62 f1 fd 48 10 25 7c 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7d427c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f2aa9:	42 7d ff 
  8f2aac:	48 c1 e2 04          	shl    rdx,0x4
  8f2ab0:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  8f2ab4:	31 d2                	xor    edx,edx
  8f2ab6:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78a940]        # 7d400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa8b0>
  8f2abd:	a9 78 ff 
  8f2ac0:	62 f2 fd 48 19 35 ce 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff781fce]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f2ac7:	1f 78 ff 
  8f2aca:	62 f1 fd 48 28 3d 6c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff78a96c]        # 7d440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa8f0>
  8f2ad1:	a9 78 ff 
  8f2ad4:	62 72 fd 48 19 05 42 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff782142]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f2adb:	21 78 ff 
  8f2ade:	62 71 fd 48 28 0d 98 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78a998]        # 7d480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa930>
  8f2ae5:	a9 78 ff 
  8f2ae8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  8f2aef:	00 
  8f2af0:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  8f2af6:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8f2afd:	01 
  8f2afe:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  8f2b03:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  8f2b09:	c5 7d 10 6c 17 60    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  8f2b0f:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  8f2b16:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  8f2b1c:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  8f2b22:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  8f2b28:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  8f2b2e:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8f2b35:	01 
  8f2b36:	62 53 1d 48 18 e6 02 	vinsertf32x4 zmm12,zmm12,xmm14,0x2
  8f2b3d:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  8f2b43:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  8f2b49:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  8f2b50:	00 00 
  8f2b52:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  8f2b58:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  8f2b5f:	00 00 00 01 
  8f2b63:	62 53 15 48 18 ef 02 	vinsertf32x4 zmm13,zmm13,xmm15,0x2
  8f2b6a:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  8f2b70:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  8f2b76:	62 72 c5 48 7f e9    	vpermt2pd zmm13,zmm7,zmm1
  8f2b7c:	62 c1 9d 48 58 c5    	vaddpd zmm16,zmm12,zmm13
  8f2b82:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  8f2b88:	62 c1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm15
  8f2b8e:	62 a1 a5 48 58 da    	vaddpd zmm19,zmm11,zmm18
  8f2b94:	62 32 cd 48 bc d0    	vfnmadd231pd zmm10,zmm6,zmm16
  8f2b9a:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  8f2ba0:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  8f2ba6:	62 51 ad 48 58 fe    	vaddpd zmm15,zmm10,zmm14
  8f2bac:	62 32 cd 48 bc da    	vfnmadd231pd zmm11,zmm6,zmm18
  8f2bb2:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  8f2bb8:	62 51 9d 48 59 e0    	vmulpd zmm12,zmm12,zmm8
  8f2bbe:	62 51 a5 48 5c ec    	vsubpd zmm13,zmm11,zmm12
  8f2bc4:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  8f2bca:	62 51 9d 48 58 db    	vaddpd zmm11,zmm12,zmm11
  8f2bd0:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  8f2bd6:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  8f2bdc:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  8f2be2:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  8f2be8:	62 52 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm10
  8f2bee:	62 c2 dd 48 7f ca    	vpermt2pd zmm17,zmm4,zmm10
  8f2bf4:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  8f2bfa:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  8f2c00:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  8f2c06:	62 51 f5 40 14 f7    	vunpcklpd zmm14,zmm17,zmm15
  8f2c0c:	62 51 9d 48 14 fa    	vunpcklpd zmm15,zmm12,zmm10
  8f2c12:	62 51 9d 48 15 d2    	vunpckhpd zmm10,zmm12,zmm10
  8f2c18:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  8f2c1e:	62 72 fd 48 7f e9    	vpermt2pd zmm13,zmm0,zmm1
  8f2c24:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  8f2c2a:	62 31 fd 48 28 e3    	vmovapd zmm12,zmm19
  8f2c30:	62 52 e5 48 7f e3    	vpermt2pd zmm12,zmm3,zmm11
  8f2c36:	62 c2 dd 48 7f db    	vpermt2pd zmm19,zmm4,zmm11
  8f2c3c:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  8f2c42:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  8f2c48:	62 72 dd 48 7f ea    	vpermt2pd zmm13,zmm4,zmm2
  8f2c4e:	62 51 e5 40 14 ed    	vunpcklpd zmm13,zmm19,zmm13
  8f2c54:	62 c1 9d 48 14 c3    	vunpcklpd zmm16,zmm12,zmm11
  8f2c5a:	62 51 9d 48 15 db    	vunpckhpd zmm11,zmm12,zmm11
  8f2c60:	62 71 fd 48 10 61 02 	vmovupd zmm12,ZMMWORD PTR [rcx+0x80]
  8f2c67:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  8f2c6e:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  8f2c75:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  8f2c7c:	62 c1 ad 48 59 e4    	vmulpd zmm20,zmm10,zmm12
  8f2c82:	62 a2 a5 48 bc e1    	vfnmadd231pd zmm20,zmm11,zmm17
  8f2c88:	62 a1 8d 48 59 ea    	vmulpd zmm21,zmm14,zmm18
  8f2c8e:	62 a2 95 48 bc eb    	vfnmadd231pd zmm21,zmm13,zmm19
  8f2c94:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  8f2c9a:	62 51 a5 48 59 dc    	vmulpd zmm11,zmm11,zmm12
  8f2ca0:	62 32 ad 48 b8 d9    	vfmadd231pd zmm11,zmm10,zmm17
  8f2ca6:	62 31 95 48 59 d2    	vmulpd zmm10,zmm13,zmm18
  8f2cac:	62 32 8d 48 b8 d3    	vfmadd231pd zmm10,zmm14,zmm19
  8f2cb2:	62 51 a5 48 58 e2    	vaddpd zmm12,zmm11,zmm10
  8f2cb8:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  8f2cbe:	62 52 cd 40 ac ef    	vfnmadd213pd zmm13,zmm22,zmm15
  8f2cc4:	62 51 a5 48 5c d2    	vsubpd zmm10,zmm11,zmm10
  8f2cca:	62 51 ad 48 59 d0    	vmulpd zmm10,zmm10,zmm8
  8f2cd0:	62 51 95 48 58 da    	vaddpd zmm11,zmm13,zmm10
  8f2cd6:	62 71 fd 48 28 f6    	vmovapd zmm14,zmm6
  8f2cdc:	62 32 9d 48 ac f0    	vfnmadd213pd zmm14,zmm12,zmm16
  8f2ce2:	62 a1 dd 40 5c cd    	vsubpd zmm17,zmm20,zmm21
  8f2ce8:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  8f2cee:	62 a1 8d 48 5c d1    	vsubpd zmm18,zmm14,zmm17
  8f2cf4:	62 51 95 48 5c d2    	vsubpd zmm10,zmm13,zmm10
  8f2cfa:	62 31 8d 48 58 e9    	vaddpd zmm13,zmm14,zmm17
  8f2d00:	62 51 fd 40 58 e4    	vaddpd zmm12,zmm16,zmm12
  8f2d06:	62 31 85 48 58 f6    	vaddpd zmm14,zmm15,zmm22
  8f2d0c:	62 52 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm14
  8f2d12:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  8f2d19:	02 02 
  8f2d1b:	c5 7d 11 24 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm12
  8f2d20:	62 c2 b5 48 7f d3    	vpermt2pd zmm18,zmm9,zmm11
  8f2d26:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm18,0x2
  8f2d2d:	05 02 
  8f2d2f:	62 e1 fd 28 11 94 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm18
  8f2d36:	30 00 00 00 
  8f2d3a:	62 52 b5 48 7f ea    	vpermt2pd zmm13,zmm9,zmm10
  8f2d40:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm13,0x2
  8f2d47:	08 02 
  8f2d49:	c5 7d 11 6c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  8f2d4f:	48 81 c2 90 00 00 00 	add    rdx,0x90
  8f2d56:	48 39 d0             	cmp    rax,rdx
  8f2d59:	0f 85 91 fd ff ff    	jne    8f2af0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8f2d5f:	c5 f8 77             	vzeroupper
  8f2d62:	c3                   	ret
