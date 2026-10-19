
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f1a00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f1a00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d535e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f1a07:	53 7d ff 
  8f1a0a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  8f1a0e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  8f1a12:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  8f1a18:	62 f1 fd 48 10 1d c6 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d52c6]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f1a1f:	52 7d ff 
  8f1a22:	62 f1 fd 48 10 25 fc 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7d52fc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f1a29:	52 7d ff 
  8f1a2c:	48 c1 e2 04          	shl    rdx,0x4
  8f1a30:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  8f1a34:	31 d2                	xor    edx,edx
  8f1a36:	62 f1 fd 48 28 2d 80 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78b780]        # 7d1c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa670>
  8f1a3d:	b7 78 ff 
  8f1a40:	62 f2 fd 48 19 35 4e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff78304e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f1a47:	30 78 ff 
  8f1a4a:	62 f1 fd 48 28 3d ac 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff78b7ac]        # 7d200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa6b0>
  8f1a51:	b7 78 ff 
  8f1a54:	62 72 fd 48 19 05 c2 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff7831c2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f1a5b:	31 78 ff 
  8f1a5e:	62 71 fd 48 28 0d d8 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78b7d8]        # 7d240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa6f0>
  8f1a65:	b7 78 ff 
  8f1a68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  8f1a6f:	00 
  8f1a70:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  8f1a76:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8f1a7d:	01 
  8f1a7e:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  8f1a83:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  8f1a89:	c5 7d 10 6c 17 60    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  8f1a8f:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  8f1a96:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  8f1a9c:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  8f1aa2:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  8f1aa8:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  8f1aae:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8f1ab5:	01 
  8f1ab6:	62 53 1d 48 18 e6 02 	vinsertf32x4 zmm12,zmm12,xmm14,0x2
  8f1abd:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  8f1ac3:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  8f1ac9:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  8f1ad0:	00 00 
  8f1ad2:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  8f1ad8:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  8f1adf:	00 00 00 01 
  8f1ae3:	62 53 15 48 18 ef 02 	vinsertf32x4 zmm13,zmm13,xmm15,0x2
  8f1aea:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  8f1af0:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  8f1af6:	62 72 c5 48 7f e9    	vpermt2pd zmm13,zmm7,zmm1
  8f1afc:	62 c1 8d 48 58 c7    	vaddpd zmm16,zmm14,zmm15
  8f1b02:	62 a1 a5 48 58 c8    	vaddpd zmm17,zmm11,zmm16
  8f1b08:	62 c1 9d 48 58 d5    	vaddpd zmm18,zmm12,zmm13
  8f1b0e:	62 a1 ad 48 58 da    	vaddpd zmm19,zmm10,zmm18
  8f1b14:	62 32 cd 48 bc d8    	vfnmadd231pd zmm11,zmm6,zmm16
  8f1b1a:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  8f1b20:	62 51 9d 48 59 e0    	vmulpd zmm12,zmm12,zmm8
  8f1b26:	62 51 a5 48 58 ec    	vaddpd zmm13,zmm11,zmm12
  8f1b2c:	62 32 cd 48 bc d2    	vfnmadd231pd zmm10,zmm6,zmm18
  8f1b32:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  8f1b38:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  8f1b3e:	62 51 ad 48 5c fe    	vsubpd zmm15,zmm10,zmm14
  8f1b44:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  8f1b4a:	62 51 8d 48 58 d2    	vaddpd zmm10,zmm14,zmm10
  8f1b50:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  8f1b56:	62 72 fd 48 7f e9    	vpermt2pd zmm13,zmm0,zmm1
  8f1b5c:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  8f1b62:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  8f1b68:	62 52 e5 48 7f e3    	vpermt2pd zmm12,zmm3,zmm11
  8f1b6e:	62 c2 dd 48 7f cb    	vpermt2pd zmm17,zmm4,zmm11
  8f1b74:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  8f1b7a:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  8f1b80:	62 72 dd 48 7f ea    	vpermt2pd zmm13,zmm4,zmm2
  8f1b86:	62 51 f5 40 14 ed    	vunpcklpd zmm13,zmm17,zmm13
  8f1b8c:	62 51 9d 48 14 f3    	vunpcklpd zmm14,zmm12,zmm11
  8f1b92:	62 51 9d 48 15 db    	vunpckhpd zmm11,zmm12,zmm11
  8f1b98:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  8f1b9e:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  8f1ba4:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  8f1baa:	62 31 fd 48 28 e3    	vmovapd zmm12,zmm19
  8f1bb0:	62 52 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm10
  8f1bb6:	62 c2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm10
  8f1bbc:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  8f1bc2:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  8f1bc8:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  8f1bce:	62 51 e5 40 14 ff    	vunpcklpd zmm15,zmm19,zmm15
  8f1bd4:	62 c1 9d 48 14 c2    	vunpcklpd zmm16,zmm12,zmm10
  8f1bda:	62 51 9d 48 15 d2    	vunpckhpd zmm10,zmm12,zmm10
  8f1be0:	62 71 fd 48 10 61 02 	vmovupd zmm12,ZMMWORD PTR [rcx+0x80]
  8f1be7:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  8f1bee:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  8f1bf5:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  8f1bfc:	62 c1 a5 48 59 e4    	vmulpd zmm20,zmm11,zmm12
  8f1c02:	62 a2 ad 48 bc e1    	vfnmadd231pd zmm20,zmm10,zmm17
  8f1c08:	62 a1 95 48 59 ea    	vmulpd zmm21,zmm13,zmm18
  8f1c0e:	62 a2 85 48 bc eb    	vfnmadd231pd zmm21,zmm15,zmm19
  8f1c14:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  8f1c1a:	62 51 ad 48 59 d4    	vmulpd zmm10,zmm10,zmm12
  8f1c20:	62 32 a5 48 b8 d1    	vfmadd231pd zmm10,zmm11,zmm17
  8f1c26:	62 31 85 48 59 da    	vmulpd zmm11,zmm15,zmm18
  8f1c2c:	62 32 95 48 b8 db    	vfmadd231pd zmm11,zmm13,zmm19
  8f1c32:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  8f1c38:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  8f1c3e:	62 52 cd 40 ac ee    	vfnmadd213pd zmm13,zmm22,zmm14
  8f1c44:	62 51 ad 48 5c d3    	vsubpd zmm10,zmm10,zmm11
  8f1c4a:	62 51 ad 48 59 d0    	vmulpd zmm10,zmm10,zmm8
  8f1c50:	62 51 95 48 58 da    	vaddpd zmm11,zmm13,zmm10
  8f1c56:	62 71 fd 48 28 fe    	vmovapd zmm15,zmm6
  8f1c5c:	62 32 9d 48 ac f8    	vfnmadd213pd zmm15,zmm12,zmm16
  8f1c62:	62 a1 dd 40 5c cd    	vsubpd zmm17,zmm20,zmm21
  8f1c68:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  8f1c6e:	62 a1 85 48 5c d1    	vsubpd zmm18,zmm15,zmm17
  8f1c74:	62 51 95 48 5c d2    	vsubpd zmm10,zmm13,zmm10
  8f1c7a:	62 31 85 48 58 e9    	vaddpd zmm13,zmm15,zmm17
  8f1c80:	62 31 8d 48 58 f6    	vaddpd zmm14,zmm14,zmm22
  8f1c86:	62 51 fd 40 58 e4    	vaddpd zmm12,zmm16,zmm12
  8f1c8c:	62 52 b5 48 7f f4    	vpermt2pd zmm14,zmm9,zmm12
  8f1c92:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm14,0x2
  8f1c99:	02 02 
  8f1c9b:	c5 7d 11 34 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm14
  8f1ca0:	62 32 b5 48 7f da    	vpermt2pd zmm11,zmm9,zmm18
  8f1ca6:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm11,0x2
  8f1cad:	05 02 
  8f1caf:	c5 7d 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm11
  8f1cb5:	62 52 b5 48 7f d5    	vpermt2pd zmm10,zmm9,zmm13
  8f1cbb:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm10,0x2
  8f1cc2:	08 02 
  8f1cc4:	c5 7d 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm10
  8f1cca:	48 81 c2 90 00 00 00 	add    rdx,0x90
  8f1cd1:	48 39 d0             	cmp    rax,rdx
  8f1cd4:	0f 85 96 fd ff ff    	jne    8f1a70 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8f1cda:	c5 f8 77             	vzeroupper
  8f1cdd:	c3                   	ret
