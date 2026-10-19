
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f3d00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f3d00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d305e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f3d07:	30 7d ff 
  8f3d0a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  8f3d0e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  8f3d12:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  8f3d18:	62 f1 fd 48 10 1d c6 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d2fc6]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f3d1f:	2f 7d ff 
  8f3d22:	62 f1 fd 48 10 25 fc 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7d2ffc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f3d29:	2f 7d ff 
  8f3d2c:	48 c1 e2 04          	shl    rdx,0x4
  8f3d30:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  8f3d34:	31 d2                	xor    edx,edx
  8f3d36:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7896c0]        # 7d400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa8b0>
  8f3d3d:	96 78 ff 
  8f3d40:	62 f2 fd 48 19 35 4e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff780d4e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f3d47:	0d 78 ff 
  8f3d4a:	62 f1 fd 48 28 3d ec 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7896ec]        # 7d440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa8f0>
  8f3d51:	96 78 ff 
  8f3d54:	62 72 fd 48 19 05 c2 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff780ec2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f3d5b:	0e 78 ff 
  8f3d5e:	62 71 fd 48 28 0d 18 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff789718]        # 7d480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa930>
  8f3d65:	97 78 ff 
  8f3d68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  8f3d6f:	00 
  8f3d70:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  8f3d76:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8f3d7d:	01 
  8f3d7e:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  8f3d83:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  8f3d89:	c5 7d 10 6c 17 60    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  8f3d8f:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  8f3d96:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  8f3d9c:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  8f3da2:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  8f3da8:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  8f3dae:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8f3db5:	01 
  8f3db6:	62 53 1d 48 18 e6 02 	vinsertf32x4 zmm12,zmm12,xmm14,0x2
  8f3dbd:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  8f3dc3:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  8f3dc9:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  8f3dd0:	00 00 
  8f3dd2:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  8f3dd8:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  8f3ddf:	00 00 00 01 
  8f3de3:	62 53 15 48 18 ef 02 	vinsertf32x4 zmm13,zmm13,xmm15,0x2
  8f3dea:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  8f3df0:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  8f3df6:	62 72 c5 48 7f e9    	vpermt2pd zmm13,zmm7,zmm1
  8f3dfc:	62 c1 9d 48 58 c5    	vaddpd zmm16,zmm12,zmm13
  8f3e02:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  8f3e08:	62 c1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm15
  8f3e0e:	62 a1 a5 48 58 da    	vaddpd zmm19,zmm11,zmm18
  8f3e14:	62 32 cd 48 bc d0    	vfnmadd231pd zmm10,zmm6,zmm16
  8f3e1a:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  8f3e20:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  8f3e26:	62 51 ad 48 58 fe    	vaddpd zmm15,zmm10,zmm14
  8f3e2c:	62 32 cd 48 bc da    	vfnmadd231pd zmm11,zmm6,zmm18
  8f3e32:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  8f3e38:	62 51 9d 48 59 e0    	vmulpd zmm12,zmm12,zmm8
  8f3e3e:	62 51 a5 48 5c ec    	vsubpd zmm13,zmm11,zmm12
  8f3e44:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  8f3e4a:	62 51 9d 48 58 db    	vaddpd zmm11,zmm12,zmm11
  8f3e50:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  8f3e56:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  8f3e5c:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  8f3e62:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  8f3e68:	62 52 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm10
  8f3e6e:	62 c2 dd 48 7f ca    	vpermt2pd zmm17,zmm4,zmm10
  8f3e74:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  8f3e7a:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  8f3e80:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  8f3e86:	62 51 f5 40 14 f7    	vunpcklpd zmm14,zmm17,zmm15
  8f3e8c:	62 51 9d 48 14 fa    	vunpcklpd zmm15,zmm12,zmm10
  8f3e92:	62 51 9d 48 15 d2    	vunpckhpd zmm10,zmm12,zmm10
  8f3e98:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  8f3e9e:	62 72 fd 48 7f e9    	vpermt2pd zmm13,zmm0,zmm1
  8f3ea4:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  8f3eaa:	62 31 fd 48 28 e3    	vmovapd zmm12,zmm19
  8f3eb0:	62 52 e5 48 7f e3    	vpermt2pd zmm12,zmm3,zmm11
  8f3eb6:	62 c2 dd 48 7f db    	vpermt2pd zmm19,zmm4,zmm11
  8f3ebc:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  8f3ec2:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  8f3ec8:	62 72 dd 48 7f ea    	vpermt2pd zmm13,zmm4,zmm2
  8f3ece:	62 51 e5 40 14 ed    	vunpcklpd zmm13,zmm19,zmm13
  8f3ed4:	62 c1 9d 48 14 c3    	vunpcklpd zmm16,zmm12,zmm11
  8f3eda:	62 51 9d 48 15 db    	vunpckhpd zmm11,zmm12,zmm11
  8f3ee0:	62 71 fd 48 10 61 02 	vmovupd zmm12,ZMMWORD PTR [rcx+0x80]
  8f3ee7:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  8f3eee:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  8f3ef5:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  8f3efc:	62 c1 ad 48 59 e4    	vmulpd zmm20,zmm10,zmm12
  8f3f02:	62 a2 a5 48 bc e1    	vfnmadd231pd zmm20,zmm11,zmm17
  8f3f08:	62 a1 8d 48 59 ea    	vmulpd zmm21,zmm14,zmm18
  8f3f0e:	62 a2 95 48 bc eb    	vfnmadd231pd zmm21,zmm13,zmm19
  8f3f14:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  8f3f1a:	62 51 a5 48 59 dc    	vmulpd zmm11,zmm11,zmm12
  8f3f20:	62 32 ad 48 b8 d9    	vfmadd231pd zmm11,zmm10,zmm17
  8f3f26:	62 31 95 48 59 d2    	vmulpd zmm10,zmm13,zmm18
  8f3f2c:	62 32 8d 48 b8 d3    	vfmadd231pd zmm10,zmm14,zmm19
  8f3f32:	62 51 a5 48 58 e2    	vaddpd zmm12,zmm11,zmm10
  8f3f38:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  8f3f3e:	62 52 cd 40 ac ef    	vfnmadd213pd zmm13,zmm22,zmm15
  8f3f44:	62 51 a5 48 5c d2    	vsubpd zmm10,zmm11,zmm10
  8f3f4a:	62 51 ad 48 59 d0    	vmulpd zmm10,zmm10,zmm8
  8f3f50:	62 51 95 48 58 da    	vaddpd zmm11,zmm13,zmm10
  8f3f56:	62 71 fd 48 28 f6    	vmovapd zmm14,zmm6
  8f3f5c:	62 32 9d 48 ac f0    	vfnmadd213pd zmm14,zmm12,zmm16
  8f3f62:	62 a1 dd 40 5c cd    	vsubpd zmm17,zmm20,zmm21
  8f3f68:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  8f3f6e:	62 a1 8d 48 5c d1    	vsubpd zmm18,zmm14,zmm17
  8f3f74:	62 51 95 48 5c d2    	vsubpd zmm10,zmm13,zmm10
  8f3f7a:	62 31 8d 48 58 e9    	vaddpd zmm13,zmm14,zmm17
  8f3f80:	62 51 fd 40 58 e4    	vaddpd zmm12,zmm16,zmm12
  8f3f86:	62 31 85 48 58 f6    	vaddpd zmm14,zmm15,zmm22
  8f3f8c:	62 52 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm14
  8f3f92:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  8f3f99:	02 02 
  8f3f9b:	c5 7d 11 24 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm12
  8f3fa0:	62 c2 b5 48 7f d3    	vpermt2pd zmm18,zmm9,zmm11
  8f3fa6:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm18,0x2
  8f3fad:	05 02 
  8f3faf:	62 e1 fd 28 11 94 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm18
  8f3fb6:	30 00 00 00 
  8f3fba:	62 52 b5 48 7f ea    	vpermt2pd zmm13,zmm9,zmm10
  8f3fc0:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm13,0x2
  8f3fc7:	08 02 
  8f3fc9:	c5 7d 11 6c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  8f3fcf:	48 81 c2 90 00 00 00 	add    rdx,0x90
  8f3fd6:	48 39 d0             	cmp    rax,rdx
  8f3fd9:	0f 85 91 fd ff ff    	jne    8f3d70 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8f3fdf:	c5 f8 77             	vzeroupper
  8f3fe2:	c3                   	ret
