
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f2c80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f2c80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d40de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f2c87:	40 7d ff 
  8f2c8a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  8f2c8e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  8f2c92:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  8f2c98:	62 f1 fd 48 10 1d 46 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d4046]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f2c9f:	40 7d ff 
  8f2ca2:	62 f1 fd 48 10 25 7c 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7d407c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f2ca9:	40 7d ff 
  8f2cac:	48 c1 e2 04          	shl    rdx,0x4
  8f2cb0:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  8f2cb4:	31 d2                	xor    edx,edx
  8f2cb6:	62 f1 fd 48 28 2d 00 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78a500]        # 7d1c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa670>
  8f2cbd:	a5 78 ff 
  8f2cc0:	62 f2 fd 48 19 35 ce 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff781dce]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f2cc7:	1d 78 ff 
  8f2cca:	62 f1 fd 48 28 3d 2c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff78a52c]        # 7d200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa6b0>
  8f2cd1:	a5 78 ff 
  8f2cd4:	62 72 fd 48 19 05 42 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff781f42]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f2cdb:	1f 78 ff 
  8f2cde:	62 71 fd 48 28 0d 58 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78a558]        # 7d240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa6f0>
  8f2ce5:	a5 78 ff 
  8f2ce8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  8f2cef:	00 
  8f2cf0:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  8f2cf6:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8f2cfd:	01 
  8f2cfe:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  8f2d03:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  8f2d09:	c5 7d 10 6c 17 60    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  8f2d0f:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  8f2d16:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  8f2d1c:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  8f2d22:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  8f2d28:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  8f2d2e:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8f2d35:	01 
  8f2d36:	62 53 1d 48 18 e6 02 	vinsertf32x4 zmm12,zmm12,xmm14,0x2
  8f2d3d:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  8f2d43:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  8f2d49:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  8f2d50:	00 00 
  8f2d52:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  8f2d58:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  8f2d5f:	00 00 00 01 
  8f2d63:	62 53 15 48 18 ef 02 	vinsertf32x4 zmm13,zmm13,xmm15,0x2
  8f2d6a:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  8f2d70:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  8f2d76:	62 72 c5 48 7f e9    	vpermt2pd zmm13,zmm7,zmm1
  8f2d7c:	62 c1 8d 48 58 c7    	vaddpd zmm16,zmm14,zmm15
  8f2d82:	62 a1 a5 48 58 c8    	vaddpd zmm17,zmm11,zmm16
  8f2d88:	62 c1 9d 48 58 d5    	vaddpd zmm18,zmm12,zmm13
  8f2d8e:	62 a1 ad 48 58 da    	vaddpd zmm19,zmm10,zmm18
  8f2d94:	62 32 cd 48 bc d8    	vfnmadd231pd zmm11,zmm6,zmm16
  8f2d9a:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  8f2da0:	62 51 9d 48 59 e0    	vmulpd zmm12,zmm12,zmm8
  8f2da6:	62 51 a5 48 58 ec    	vaddpd zmm13,zmm11,zmm12
  8f2dac:	62 32 cd 48 bc d2    	vfnmadd231pd zmm10,zmm6,zmm18
  8f2db2:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  8f2db8:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  8f2dbe:	62 51 ad 48 5c fe    	vsubpd zmm15,zmm10,zmm14
  8f2dc4:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  8f2dca:	62 51 8d 48 58 d2    	vaddpd zmm10,zmm14,zmm10
  8f2dd0:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  8f2dd6:	62 72 fd 48 7f e9    	vpermt2pd zmm13,zmm0,zmm1
  8f2ddc:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  8f2de2:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  8f2de8:	62 52 e5 48 7f e3    	vpermt2pd zmm12,zmm3,zmm11
  8f2dee:	62 c2 dd 48 7f cb    	vpermt2pd zmm17,zmm4,zmm11
  8f2df4:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  8f2dfa:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  8f2e00:	62 72 dd 48 7f ea    	vpermt2pd zmm13,zmm4,zmm2
  8f2e06:	62 51 f5 40 14 ed    	vunpcklpd zmm13,zmm17,zmm13
  8f2e0c:	62 51 9d 48 14 f3    	vunpcklpd zmm14,zmm12,zmm11
  8f2e12:	62 51 9d 48 15 db    	vunpckhpd zmm11,zmm12,zmm11
  8f2e18:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  8f2e1e:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  8f2e24:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  8f2e2a:	62 31 fd 48 28 e3    	vmovapd zmm12,zmm19
  8f2e30:	62 52 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm10
  8f2e36:	62 c2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm10
  8f2e3c:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  8f2e42:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  8f2e48:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  8f2e4e:	62 51 e5 40 14 ff    	vunpcklpd zmm15,zmm19,zmm15
  8f2e54:	62 c1 9d 48 14 c2    	vunpcklpd zmm16,zmm12,zmm10
  8f2e5a:	62 51 9d 48 15 d2    	vunpckhpd zmm10,zmm12,zmm10
  8f2e60:	62 71 fd 48 10 61 02 	vmovupd zmm12,ZMMWORD PTR [rcx+0x80]
  8f2e67:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  8f2e6e:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  8f2e75:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  8f2e7c:	62 c1 a5 48 59 e4    	vmulpd zmm20,zmm11,zmm12
  8f2e82:	62 a2 ad 48 bc e1    	vfnmadd231pd zmm20,zmm10,zmm17
  8f2e88:	62 a1 95 48 59 ea    	vmulpd zmm21,zmm13,zmm18
  8f2e8e:	62 a2 85 48 bc eb    	vfnmadd231pd zmm21,zmm15,zmm19
  8f2e94:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  8f2e9a:	62 51 ad 48 59 d4    	vmulpd zmm10,zmm10,zmm12
  8f2ea0:	62 32 a5 48 b8 d1    	vfmadd231pd zmm10,zmm11,zmm17
  8f2ea6:	62 31 85 48 59 da    	vmulpd zmm11,zmm15,zmm18
  8f2eac:	62 32 95 48 b8 db    	vfmadd231pd zmm11,zmm13,zmm19
  8f2eb2:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  8f2eb8:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  8f2ebe:	62 52 cd 40 ac ee    	vfnmadd213pd zmm13,zmm22,zmm14
  8f2ec4:	62 51 ad 48 5c d3    	vsubpd zmm10,zmm10,zmm11
  8f2eca:	62 51 ad 48 59 d0    	vmulpd zmm10,zmm10,zmm8
  8f2ed0:	62 51 95 48 58 da    	vaddpd zmm11,zmm13,zmm10
  8f2ed6:	62 71 fd 48 28 fe    	vmovapd zmm15,zmm6
  8f2edc:	62 32 9d 48 ac f8    	vfnmadd213pd zmm15,zmm12,zmm16
  8f2ee2:	62 a1 dd 40 5c cd    	vsubpd zmm17,zmm20,zmm21
  8f2ee8:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  8f2eee:	62 a1 85 48 5c d1    	vsubpd zmm18,zmm15,zmm17
  8f2ef4:	62 51 95 48 5c d2    	vsubpd zmm10,zmm13,zmm10
  8f2efa:	62 31 85 48 58 e9    	vaddpd zmm13,zmm15,zmm17
  8f2f00:	62 31 8d 48 58 f6    	vaddpd zmm14,zmm14,zmm22
  8f2f06:	62 51 fd 40 58 e4    	vaddpd zmm12,zmm16,zmm12
  8f2f0c:	62 52 b5 48 7f f4    	vpermt2pd zmm14,zmm9,zmm12
  8f2f12:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm14,0x2
  8f2f19:	02 02 
  8f2f1b:	c5 7d 11 34 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm14
  8f2f20:	62 32 b5 48 7f da    	vpermt2pd zmm11,zmm9,zmm18
  8f2f26:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm11,0x2
  8f2f2d:	05 02 
  8f2f2f:	c5 7d 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm11
  8f2f35:	62 52 b5 48 7f d5    	vpermt2pd zmm10,zmm9,zmm13
  8f2f3b:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm10,0x2
  8f2f42:	08 02 
  8f2f44:	c5 7d 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm10
  8f2f4a:	48 81 c2 90 00 00 00 	add    rdx,0x90
  8f2f51:	48 39 d0             	cmp    rax,rdx
  8f2f54:	0f 85 96 fd ff ff    	jne    8f2cf0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8f2f5a:	c5 f8 77             	vzeroupper
  8f2f5d:	c3                   	ret
