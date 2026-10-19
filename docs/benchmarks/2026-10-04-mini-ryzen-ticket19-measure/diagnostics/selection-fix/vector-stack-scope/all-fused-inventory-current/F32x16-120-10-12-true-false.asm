
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a44b80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a44b80:	55                   	push   rbp
  a44b81:	48 89 e5             	mov    rbp,rsp
  a44b84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a44b88:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a44b8f:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a44b96:	00 
  a44b97:	48 8d 84 24 00 02 00 	lea    rax,[rsp+0x200]
  a44b9e:	00 
  a44b9f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a44ba4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a44ba9:	62 f1 7c 48 10 17    	vmovups zmm2,ZMMWORD PTR [rdi]
  a44baf:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a44bb4:	62 f1 7c 48 28 1d c2 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff64d4c2]        # 92080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f530>
  a44bbb:	d4 64 ff 
  a44bbe:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a44bc4:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a44bca:	62 f1 7c 48 28 0d ec 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff64d4ec]        # 920c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f570>
  a44bd1:	d4 64 ff 
  a44bd4:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a44bda:	62 f1 7c 48 10 af 60 	vmovups zmm5,ZMMWORD PTR [rdi+0x60]
  a44be1:	00 00 00 
  a44be4:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a44beb:	00 
  a44bec:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a44bf2:	62 62 65 48 7f c0    	vpermt2ps zmm24,zmm3,zmm0
  a44bf8:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a44bfe:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a44c04:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a44c0b:	01 
  a44c0c:	62 71 7c 48 10 57 03 	vmovups zmm10,ZMMWORD PTR [rdi+0xc0]
  a44c13:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a44c1a:	00 
  a44c1b:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a44c21:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a44c27:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a44c2d:	62 71 7c 48 10 a7 20 	vmovups zmm12,ZMMWORD PTR [rdi+0x120]
  a44c34:	01 00 00 
  a44c37:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a44c3e:	00 
  a44c3f:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a44c45:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  a44c4b:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a44c51:	62 71 7c 48 10 4f 06 	vmovups zmm9,ZMMWORD PTR [rdi+0x180]
  a44c58:	c5 fc 10 87 c0 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x1c0]
  a44c5f:	00 
  a44c60:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a44c66:	62 e2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm0
  a44c6c:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a44c72:	62 f1 7c 48 10 b7 e0 	vmovups zmm6,ZMMWORD PTR [rdi+0x1e0]
  a44c79:	01 00 00 
  a44c7c:	c5 fc 10 87 20 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x220]
  a44c83:	00 
  a44c84:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a44c8a:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a44c90:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a44c96:	62 71 7c 48 10 5f 09 	vmovups zmm11,ZMMWORD PTR [rdi+0x240]
  a44c9d:	c5 fc 10 87 80 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x280]
  a44ca4:	00 
  a44ca5:	62 41 7c 48 28 cb    	vmovaps zmm25,zmm11
  a44cab:	62 62 65 48 7f c8    	vpermt2ps zmm25,zmm3,zmm0
  a44cb1:	62 72 75 48 7f d8    	vpermt2ps zmm11,zmm1,zmm0
  a44cb7:	62 f1 7c 48 10 bf a0 	vmovups zmm7,ZMMWORD PTR [rdi+0x2a0]
  a44cbe:	02 00 00 
  a44cc1:	c5 fc 10 87 e0 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x2e0]
  a44cc8:	00 
  a44cc9:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a44ccf:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a44cd5:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a44cdb:	62 e1 7c 48 10 47 0c 	vmovups zmm16,ZMMWORD PTR [rdi+0x300]
  a44ce2:	c5 fc 10 87 40 03 00 	vmovups ymm0,YMMWORD PTR [rdi+0x340]
  a44ce9:	00 
  a44cea:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a44cf0:	62 e2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm0
  a44cf6:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a44cfc:	62 e1 7c 48 10 8f 60 	vmovups zmm17,ZMMWORD PTR [rdi+0x360]
  a44d03:	03 00 00 
  a44d06:	c5 fc 10 87 a0 03 00 	vmovups ymm0,YMMWORD PTR [rdi+0x3a0]
  a44d0d:	00 
  a44d0e:	62 f2 75 40 77 d8    	vpermi2ps zmm3,zmm17,zmm0
  a44d14:	62 e2 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm0
  a44d1a:	62 21 2c 48 58 e8    	vaddps zmm29,zmm10,zmm16
  a44d20:	62 91 6c 48 58 c5    	vaddps zmm0,zmm2,zmm29
  a44d26:	62 c1 34 48 58 db    	vaddps zmm19,zmm9,zmm11
  a44d2c:	62 b1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm19
  a44d32:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a44d39:	02 
  a44d3a:	62 41 44 48 58 fc    	vaddps zmm31,zmm7,zmm12
  a44d40:	62 91 4c 48 58 c7    	vaddps zmm0,zmm6,zmm31
  a44d46:	62 c1 74 40 58 e8    	vaddps zmm21,zmm17,zmm8
  a44d4c:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a44d52:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a44d59:	03 
  a44d5a:	62 71 74 48 58 f0    	vaddps zmm14,zmm1,zmm0
  a44d60:	62 21 04 48 58 f4    	vaddps zmm30,zmm15,zmm20
  a44d66:	62 91 5c 48 58 c6    	vaddps zmm0,zmm4,zmm30
  a44d6c:	62 81 4c 40 58 f9    	vaddps zmm23,zmm22,zmm25
  a44d72:	62 31 7c 48 58 c7    	vaddps zmm8,zmm0,zmm23
  a44d78:	62 21 14 48 58 da    	vaddps zmm27,zmm13,zmm18
  a44d7e:	62 91 54 48 58 c3    	vaddps zmm0,zmm5,zmm27
  a44d84:	62 a1 04 48 5c e4    	vsubps zmm20,zmm15,zmm20
  a44d8a:	62 01 64 48 58 d0    	vaddps zmm26,zmm3,zmm24
  a44d90:	62 11 7c 48 58 fa    	vaddps zmm15,zmm0,zmm26
  a44d96:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a44d9c:	62 62 7d 48 18 25 42 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff630942]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a44da3:	09 63 ff 
  a44da6:	62 21 14 48 5c ca    	vsubps zmm25,zmm13,zmm18
  a44dac:	62 81 7c 48 28 d4    	vmovaps zmm18,zmm28
  a44db2:	62 01 64 48 5c c0    	vsubps zmm24,zmm3,zmm24
  a44db8:	62 f2 7d 48 18 05 82 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff630882]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a44dbf:	08 63 ff 
  a44dc2:	62 e2 15 40 a8 d2    	vfmadd213ps zmm18,zmm29,zmm2
  a44dc8:	62 92 7d 48 bc d5    	vfnmadd231ps zmm2,zmm0,zmm29
  a44dce:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a44dd4:	62 62 05 40 a8 ee    	vfmadd213ps zmm29,zmm31,zmm6
  a44dda:	62 92 7d 48 bc f7    	vfnmadd231ps zmm6,zmm0,zmm31
  a44de0:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a44de6:	62 62 0d 40 a8 fc    	vfmadd213ps zmm31,zmm30,zmm4
  a44dec:	62 92 7d 48 bc e6    	vfnmadd231ps zmm4,zmm0,zmm30
  a44df2:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a44df8:	62 62 25 40 a8 f5    	vfmadd213ps zmm30,zmm27,zmm5
  a44dfe:	62 f2 25 40 bc e8    	vfnmadd231ps zmm5,zmm27,zmm0
  a44e04:	62 d1 3c 48 58 cf    	vaddps zmm1,zmm8,zmm15
  a44e0a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a44e11:	06 
  a44e12:	62 e2 65 40 bc d0    	vfnmadd231ps zmm18,zmm19,zmm0
  a44e18:	62 62 55 40 bc e8    	vfnmadd231ps zmm29,zmm21,zmm0
  a44e1e:	62 62 45 40 bc f8    	vfnmadd231ps zmm31,zmm23,zmm0
  a44e24:	62 62 2d 40 bc f0    	vfnmadd231ps zmm30,zmm26,zmm0
  a44e2a:	62 f2 7d 48 18 05 24 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff630924]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a44e31:	09 63 ff 
  a44e34:	62 b2 1d 40 b8 d3    	vfmadd231ps zmm2,zmm28,zmm19
  a44e3a:	62 71 4c 40 59 e8    	vmulps zmm13,zmm22,zmm0
  a44e40:	62 b2 1d 40 b8 f5    	vfmadd231ps zmm6,zmm28,zmm21
  a44e46:	62 e2 7d 48 18 2d 50 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff630550]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a44e4d:	05 63 ff 
  a44e50:	62 32 5d 40 b8 ed    	vfmadd231ps zmm13,zmm20,zmm21
  a44e56:	62 b2 1d 40 b8 e7    	vfmadd231ps zmm4,zmm28,zmm23
  a44e5c:	62 c1 6c 40 58 fd    	vaddps zmm23,zmm18,zmm13
  a44e62:	62 92 2d 40 b8 ec    	vfmadd231ps zmm5,zmm26,zmm28
  a44e68:	62 61 3c 40 59 d0    	vmulps zmm26,zmm24,zmm0
  a44e6e:	62 22 35 40 b8 d5    	vfmadd231ps zmm26,zmm25,zmm21
  a44e74:	62 01 14 40 58 da    	vaddps zmm27,zmm29,zmm26
  a44e7a:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a44e80:	62 81 44 40 5c db    	vsubps zmm19,zmm23,zmm27
  a44e86:	62 51 34 48 5c cb    	vsubps zmm9,zmm9,zmm11
  a44e8c:	62 71 34 48 59 d8    	vmulps zmm11,zmm9,zmm0
  a44e92:	62 32 2d 48 b8 dd    	vfmadd231ps zmm11,zmm10,zmm21
  a44e98:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a44e9e:	62 c1 04 40 5c c3    	vsubps zmm16,zmm31,zmm11
  a44ea4:	62 71 74 40 5c 64 24 	vsubps zmm12,zmm17,ZMMWORD PTR [rsp+0x40]
  a44eab:	01 
  a44eac:	62 e1 1c 48 59 c8    	vmulps zmm17,zmm12,zmm0
  a44eb2:	62 a2 45 48 b8 cd    	vfmadd231ps zmm17,zmm7,zmm21
  a44eb8:	62 61 5c 40 59 e0    	vmulps zmm28,zmm20,zmm0
  a44ebe:	62 22 55 40 bc e6    	vfnmadd231ps zmm28,zmm21,zmm22
  a44ec4:	62 b1 0c 40 5c d9    	vsubps zmm3,zmm30,zmm17
  a44eca:	62 e1 34 40 59 f0    	vmulps zmm22,zmm25,zmm0
  a44ed0:	62 82 55 40 bc f0    	vfnmadd231ps zmm22,zmm21,zmm24
  a44ed6:	62 f1 7c 40 5c cb    	vsubps zmm1,zmm16,zmm3
  a44edc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a44ee3:	05 
  a44ee4:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a44eea:	62 52 55 40 bc d1    	vfnmadd231ps zmm10,zmm21,zmm9
  a44ef0:	62 01 6c 48 58 c4    	vaddps zmm24,zmm2,zmm28
  a44ef6:	62 f1 44 48 59 c0    	vmulps zmm0,zmm7,zmm0
  a44efc:	62 b1 4c 48 58 fe    	vaddps zmm7,zmm6,zmm22
  a44f02:	62 b2 1d 48 bc c5    	vfnmadd231ps zmm0,zmm12,zmm21
  a44f08:	62 e1 3c 40 58 e7    	vaddps zmm20,zmm24,zmm7
  a44f0e:	62 c1 5c 48 5c ea    	vsubps zmm21,zmm4,zmm10
  a44f14:	62 01 6c 48 5c cc    	vsubps zmm25,zmm2,zmm28
  a44f1a:	62 61 54 48 5c e0    	vsubps zmm28,zmm5,zmm0
  a44f20:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a44f26:	62 11 54 40 58 cc    	vaddps zmm9,zmm21,zmm28
  a44f2c:	62 71 2c 48 58 d4    	vaddps zmm10,zmm10,zmm4
  a44f32:	62 e1 34 40 5c f1    	vsubps zmm22,zmm25,zmm1
  a44f38:	62 f1 7c 48 58 ed    	vaddps zmm5,zmm0,zmm5
  a44f3e:	62 f1 2c 48 5c c5    	vsubps zmm0,zmm10,zmm5
  a44f44:	62 c1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm13
  a44f4a:	62 01 14 40 5c d2    	vsubps zmm26,zmm29,zmm26
  a44f50:	62 91 6c 40 58 d2    	vaddps zmm2,zmm18,zmm26
  a44f56:	62 11 24 48 58 df    	vaddps zmm11,zmm11,zmm31
  a44f5c:	62 01 74 40 58 ee    	vaddps zmm29,zmm17,zmm30
  a44f62:	62 11 24 48 58 ed    	vaddps zmm13,zmm11,zmm29
  a44f68:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a44f6f:	02 
  a44f70:	62 f1 5c 48 5c 64 24 	vsubps zmm4,zmm4,ZMMWORD PTR [rsp+0xc0]
  a44f77:	03 
  a44f78:	62 51 3c 48 5c e7    	vsubps zmm12,zmm8,zmm15
  a44f7e:	62 91 44 40 58 f3    	vaddps zmm6,zmm23,zmm27
  a44f84:	62 e1 7c 40 58 c3    	vaddps zmm16,zmm16,zmm3
  a44f8a:	62 f1 3c 40 5c ff    	vsubps zmm7,zmm24,zmm7
  a44f90:	62 91 54 40 5c dc    	vsubps zmm3,zmm21,zmm28
  a44f96:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a44f9d:	07 
  a44f9e:	62 f1 34 40 58 c9    	vaddps zmm1,zmm25,zmm1
  a44fa4:	62 e1 2c 48 58 cd    	vaddps zmm17,zmm10,zmm5
  a44faa:	62 91 6c 40 5c da    	vsubps zmm3,zmm18,zmm26
  a44fb0:	62 01 24 48 5c ed    	vsubps zmm29,zmm11,zmm29
  a44fb6:	62 e1 7c 48 28 15 c0 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff681fc0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a44fbd:	1f 68 ff 
  a44fc0:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a44fc6:	62 72 6d 40 7f d9    	vpermt2ps zmm11,zmm18,zmm1
  a44fcc:	62 f1 7c 48 28 2d ea 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff681fea]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a44fd3:	1f 68 ff 
  a44fd6:	62 72 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm1
  a44fdc:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a44fe2:	62 f2 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm3
  a44fe8:	62 e2 55 48 7f db    	vpermt2ps zmm19,zmm5,zmm3
  a44fee:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a44ff3:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a44ff9:	62 d2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm10
  a44fff:	62 c2 55 48 7f e2    	vpermt2ps zmm20,zmm5,zmm10
  a45005:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a4500b:	62 42 6d 40 7f c2    	vpermt2ps zmm24,zmm18,zmm10
  a45011:	62 c2 55 48 7f f2    	vpermt2ps zmm22,zmm5,zmm10
  a45017:	62 61 7c 48 28 ca    	vmovaps zmm25,zmm2
  a4501d:	62 42 6d 40 7f ca    	vpermt2ps zmm25,zmm18,zmm10
  a45023:	62 d2 55 48 7f d2    	vpermt2ps zmm2,zmm5,zmm10
  a45029:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a4502f:	62 42 6d 40 7f d2    	vpermt2ps zmm26,zmm18,zmm10
  a45035:	62 d2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm10
  a4503b:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a45041:	62 42 6d 40 7f da    	vpermt2ps zmm27,zmm18,zmm10
  a45047:	62 d2 55 48 7f f2    	vpermt2ps zmm6,zmm5,zmm10
  a4504d:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a45053:	62 42 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm10
  a45059:	62 d2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm10
  a4505f:	62 e1 7c 48 28 2d 97 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff681e97]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a45066:	1e 68 ff 
  a45069:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a4506f:	62 02 55 40 7f f1    	vpermt2ps zmm30,zmm21,zmm25
  a45075:	62 e1 7c 48 28 3d c1 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff681ec1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4507c:	1e 68 ff 
  a4507f:	62 12 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm25
  a45085:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a4508b:	62 02 55 40 7f ca    	vpermt2ps zmm25,zmm21,zmm26
  a45091:	62 92 45 40 7f ca    	vpermt2ps zmm1,zmm23,zmm26
  a45097:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a4509d:	62 02 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm27
  a450a3:	62 92 45 40 7f db    	vpermt2ps zmm3,zmm23,zmm27
  a450a9:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a450af:	62 02 55 40 7f dc    	vpermt2ps zmm27,zmm21,zmm28
  a450b5:	62 02 45 40 7f c4    	vpermt2ps zmm24,zmm23,zmm28
  a450bb:	62 72 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm2
  a450c1:	62 e2 55 40 7f dc    	vpermt2ps zmm19,zmm21,zmm4
  a450c7:	62 e2 55 40 7f e6    	vpermt2ps zmm20,zmm21,zmm6
  a450cd:	62 e2 55 40 7f f7    	vpermt2ps zmm22,zmm21,zmm7
  a450d3:	62 91 8d 40 14 d2    	vunpcklpd zmm2,zmm30,zmm26
  a450d9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a450e0:	02 
  a450e1:	62 91 8d 40 15 f2    	vunpckhpd zmm6,zmm30,zmm26
  a450e7:	62 91 b5 40 14 d3    	vunpcklpd zmm2,zmm25,zmm27
  a450ed:	62 01 b5 40 15 e3    	vunpckhpd zmm28,zmm25,zmm27
  a450f3:	62 f1 a5 48 14 e3    	vunpcklpd zmm4,zmm11,zmm3
  a450f9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a45100:	03 
  a45101:	62 f1 a5 48 15 db    	vunpckhpd zmm3,zmm11,zmm3
  a45107:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a4510e:	01 
  a4510f:	62 01 f5 48 14 f0    	vunpcklpd zmm30,zmm1,zmm24
  a45115:	62 01 f5 48 15 d8    	vunpckhpd zmm27,zmm1,zmm24
  a4511b:	62 b1 8d 48 14 fc    	vunpcklpd zmm7,zmm14,zmm20
  a45121:	62 b1 8d 48 15 cc    	vunpckhpd zmm1,zmm14,zmm20
  a45127:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a4512e:	04 
  a4512f:	62 a1 e5 40 14 e6    	vunpcklpd zmm20,zmm19,zmm22
  a45135:	62 21 e5 40 15 d6    	vunpckhpd zmm26,zmm19,zmm22
  a4513b:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x180]
  a45142:	06 
  a45143:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a45149:	62 22 6d 40 7f c1    	vpermt2ps zmm24,zmm18,zmm17
  a4514f:	62 a2 55 48 7f f1    	vpermt2ps zmm22,zmm5,zmm17
  a45155:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a4515c:	05 
  a4515d:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a45163:	62 02 6d 40 7f cd    	vpermt2ps zmm25,zmm18,zmm29
  a45169:	62 92 55 48 7f cd    	vpermt2ps zmm1,zmm5,zmm29
  a4516f:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a45175:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a4517b:	62 42 6d 40 7f fa    	vpermt2ps zmm31,zmm18,zmm10
  a45181:	62 52 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm10
  a45187:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4518d:	62 52 6d 40 7f da    	vpermt2ps zmm11,zmm18,zmm10
  a45193:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a45199:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a4519f:	62 d2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm10
  a451a5:	62 52 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm10
  a451ab:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a451b1:	62 52 6d 40 7f f2    	vpermt2ps zmm14,zmm18,zmm10
  a451b7:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a451bd:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a451c3:	62 52 6d 40 7f fa    	vpermt2ps zmm15,zmm18,zmm10
  a451c9:	62 c2 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm10
  a451cf:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a451d6:	07 
  a451d7:	62 c2 5d 48 77 d2    	vpermi2ps zmm18,zmm4,zmm10
  a451dd:	62 d2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm10
  a451e3:	62 e1 7c 48 28 0d 13 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff681c13]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a451ea:	1c 68 ff 
  a451ed:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a451f4:	02 
  a451f5:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a451fb:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a45201:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm5
  a45208:	06 
  a45209:	62 61 7c 48 28 2d 2d 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff681c2d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a45210:	1c 68 ff 
  a45213:	62 f2 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm2
  a45219:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a45220:	02 
  a45221:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a45227:	62 12 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm28
  a4522d:	62 92 15 40 7f f4    	vpermt2ps zmm6,zmm29,zmm28
  a45233:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a4523a:	03 
  a4523b:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a45241:	62 82 75 40 7f de    	vpermt2ps zmm19,zmm17,zmm30
  a45247:	62 92 15 40 7f ce    	vpermt2ps zmm1,zmm29,zmm30
  a4524d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a45254:	03 
  a45255:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a4525c:	01 
  a4525d:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a45263:	62 02 75 40 7f f3    	vpermt2ps zmm30,zmm17,zmm27
  a45269:	62 92 15 40 7f cb    	vpermt2ps zmm1,zmm29,zmm27
  a4526f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a45276:	01 
  a45277:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a4527d:	62 b2 75 40 7f d4    	vpermt2ps zmm2,zmm17,zmm20
  a45283:	62 b2 15 40 7f fc    	vpermt2ps zmm7,zmm29,zmm20
  a45289:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a45290:	04 
  a45291:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a45297:	62 82 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm26
  a4529d:	62 92 15 40 7f ea    	vpermt2ps zmm5,zmm29,zmm26
  a452a3:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a452a9:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a452af:	62 62 45 40 7f c3    	vpermt2ps zmm24,zmm23,zmm3
  a452b5:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a452bb:	62 d2 55 40 7f de    	vpermt2ps zmm3,zmm21,zmm14
  a452c1:	62 42 45 40 7f ce    	vpermt2ps zmm25,zmm23,zmm14
  a452c7:	62 01 7c 48 28 df    	vmovaps zmm27,zmm31
  a452cd:	62 42 55 40 7f df    	vpermt2ps zmm27,zmm21,zmm15
  a452d3:	62 42 45 40 7f ff    	vpermt2ps zmm31,zmm23,zmm15
  a452d9:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a452df:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a452e5:	62 32 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm18
  a452eb:	62 c2 55 40 7f f5    	vpermt2ps zmm22,zmm21,zmm13
  a452f1:	62 52 55 40 7f c4    	vpermt2ps zmm8,zmm21,zmm12
  a452f7:	62 32 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm16
  a452fd:	62 f2 55 40 7f c4    	vpermt2ps zmm0,zmm21,zmm4
  a45303:	62 11 ad 40 14 f3    	vunpcklpd zmm14,zmm26,zmm27
  a45309:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a4530f:	62 51 e5 48 14 e7    	vunpcklpd zmm12,zmm3,zmm15
  a45315:	62 c1 e5 48 15 c7    	vunpckhpd zmm16,zmm3,zmm15
  a4531b:	62 11 bd 40 14 ef    	vunpcklpd zmm13,zmm24,zmm31
  a45321:	62 11 bd 40 15 ff    	vunpckhpd zmm15,zmm24,zmm31
  a45327:	62 c1 b5 40 14 d3    	vunpcklpd zmm18,zmm25,zmm11
  a4532d:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a45333:	62 41 cd 40 14 d9    	vunpcklpd zmm27,zmm22,zmm9
  a45339:	62 51 cd 40 15 c9    	vunpckhpd zmm9,zmm22,zmm9
  a4533f:	62 e1 bd 48 14 e8    	vunpcklpd zmm21,zmm8,zmm0
  a45345:	62 f1 bd 48 15 c0    	vunpckhpd zmm0,zmm8,zmm0
  a4534b:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a45351:	62 d2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm12
  a45357:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4535e:	05 
  a4535f:	62 52 15 40 7f f4    	vpermt2ps zmm14,zmm29,zmm12
  a45365:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a4536b:	62 32 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm16
  a45371:	62 22 15 40 7f d0    	vpermt2ps zmm26,zmm29,zmm16
  a45377:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a4537d:	62 22 75 40 7f e2    	vpermt2ps zmm28,zmm17,zmm18
  a45383:	62 32 15 40 7f ea    	vpermt2ps zmm13,zmm29,zmm18
  a45389:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a4538f:	62 c2 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm11
  a45395:	62 52 15 40 7f fb    	vpermt2ps zmm15,zmm29,zmm11
  a4539b:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a453a1:	62 a2 75 40 7f c5    	vpermt2ps zmm16,zmm17,zmm21
  a453a7:	62 22 15 40 7f dd    	vpermt2ps zmm27,zmm29,zmm21
  a453ad:	62 e2 35 48 77 c8    	vpermi2ps zmm17,zmm9,zmm0
  a453b3:	62 72 15 40 7f c8    	vpermt2ps zmm9,zmm29,zmm0
  a453b9:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a453c0:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a453c7:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a453ce:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a453d5:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a453dc:	62 71 7c 48 10 62 0c 	vmovups zmm12,ZMMWORD PTR [rdx+0x300]
  a453e3:	62 61 7c 48 10 6a 0d 	vmovups zmm29,ZMMWORD PTR [rdx+0x340]
  a453ea:	62 51 0c 40 59 dc    	vmulps zmm11,zmm30,zmm12
  a453f0:	62 12 45 40 bc dd    	vfnmadd231ps zmm11,zmm23,zmm29
  a453f6:	62 c1 44 40 59 fc    	vmulps zmm23,zmm23,zmm12
  a453fc:	62 71 7c 48 10 62 07 	vmovups zmm12,ZMMWORD PTR [rdx+0x1c0]
  a45403:	62 82 15 40 b8 fe    	vfmadd231ps zmm23,zmm29,zmm30
  a45409:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a45410:	62 e1 4c 48 59 f0    	vmulps zmm22,zmm6,zmm0
  a45416:	62 c2 2d 40 bc f4    	vfnmadd231ps zmm22,zmm26,zmm12
  a4541c:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a45422:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a45429:	62 62 1d 48 b8 d6    	vfmadd231ps zmm26,zmm12,zmm6
  a4542f:	62 71 7c 48 10 62 13 	vmovups zmm12,ZMMWORD PTR [rdx+0x4c0]
  a45436:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a4543c:	62 d2 25 40 bc f4    	vfnmadd231ps zmm6,zmm27,zmm12
  a45442:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a45448:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a4544f:	62 62 1d 48 b8 df    	vfmadd231ps zmm27,zmm12,zmm7
  a45455:	62 61 7c 48 10 7a 0a 	vmovups zmm31,ZMMWORD PTR [rdx+0x280]
  a4545c:	62 01 64 40 59 ee    	vmulps zmm29,zmm19,zmm30
  a45462:	62 62 1d 40 bc e8    	vfnmadd231ps zmm29,zmm28,zmm0
  a45468:	62 91 1c 40 59 fe    	vmulps zmm7,zmm28,zmm30
  a4546e:	62 71 7c 48 10 62 14 	vmovups zmm12,ZMMWORD PTR [rdx+0x500]
  a45475:	62 b2 7d 48 b8 fb    	vfmadd231ps zmm7,zmm0,zmm19
  a4547b:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a45482:	62 c1 5c 40 59 dc    	vmulps zmm19,zmm20,zmm12
  a45488:	62 e2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm0
  a4548e:	62 c1 74 40 59 cc    	vmulps zmm17,zmm17,zmm12
  a45494:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a4549b:	62 a2 7d 48 b8 cc    	vfmadd231ps zmm17,zmm0,zmm20
  a454a1:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a454a8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a454af:	01 
  a454b0:	62 d1 74 48 59 c4    	vmulps zmm0,zmm1,zmm12
  a454b6:	62 b2 05 48 bc c4    	vfnmadd231ps zmm0,zmm15,zmm20
  a454bc:	62 51 04 48 59 fc    	vmulps zmm15,zmm15,zmm12
  a454c2:	62 61 7c 48 10 62 0b 	vmovups zmm28,ZMMWORD PTR [rdx+0x2c0]
  a454c9:	62 72 5d 40 b8 f9    	vfmadd231ps zmm15,zmm20,zmm1
  a454cf:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a454d6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a454dd:	02 
  a454de:	62 81 74 48 59 e1    	vmulps zmm20,zmm1,zmm25
  a454e4:	62 82 0d 48 bc e0    	vfnmadd231ps zmm20,zmm14,zmm24
  a454ea:	62 01 0c 48 59 c9    	vmulps zmm25,zmm14,zmm25
  a454f0:	62 71 7c 48 10 62 11 	vmovups zmm12,ZMMWORD PTR [rdx+0x440]
  a454f7:	62 62 3d 40 b8 c9    	vfmadd231ps zmm25,zmm24,zmm1
  a454fd:	62 71 7c 48 10 72 16 	vmovups zmm14,ZMMWORD PTR [rdx+0x580]
  a45504:	62 61 6c 48 59 c4    	vmulps zmm24,zmm2,zmm4
  a4550a:	62 42 7d 40 bc c4    	vfnmadd231ps zmm24,zmm16,zmm12
  a45510:	62 61 7c 40 59 f4    	vmulps zmm30,zmm16,zmm4
  a45516:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a4551d:	62 62 1d 48 b8 f2    	vfmadd231ps zmm30,zmm12,zmm2
  a45523:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a4552a:	06 
  a4552b:	62 d1 74 48 58 d3    	vaddps zmm2,zmm1,zmm11
  a45531:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a45538:	04 
  a45539:	62 a1 2c 48 59 c5    	vmulps zmm16,zmm10,zmm21
  a4553f:	62 a2 3d 48 bc c2    	vfnmadd231ps zmm16,zmm8,zmm18
  a45545:	62 a1 3c 48 59 ed    	vmulps zmm21,zmm8,zmm21
  a4554b:	62 71 4c 40 58 e6    	vaddps zmm12,zmm22,zmm6
  a45551:	62 c2 6d 40 b8 ea    	vfmadd231ps zmm21,zmm18,zmm10
  a45557:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a4555d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a45564:	02 
  a45565:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a4556b:	62 51 54 48 59 d6    	vmulps zmm10,zmm5,zmm14
  a45571:	62 72 35 48 bc d4    	vfnmadd231ps zmm10,zmm9,zmm4
  a45577:	62 51 34 48 59 ce    	vmulps zmm9,zmm9,zmm14
  a4557d:	62 b1 14 40 58 eb    	vaddps zmm5,zmm29,zmm19
  a45583:	62 72 5d 48 b8 ca    	vfmadd231ps zmm9,zmm4,zmm2
  a45589:	62 b1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm20
  a4558f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a45596:	03 
  a45597:	62 11 6c 48 59 f7    	vmulps zmm14,zmm2,zmm31
  a4559d:	62 12 15 48 bc f4    	vfnmadd231ps zmm14,zmm13,zmm28
  a455a3:	62 11 14 48 59 ef    	vmulps zmm13,zmm13,zmm31
  a455a9:	62 61 54 48 58 fb    	vaddps zmm31,zmm5,zmm3
  a455af:	62 72 1d 40 b8 ea    	vfmadd231ps zmm13,zmm28,zmm2
  a455b5:	62 a1 3c 40 58 d0    	vaddps zmm18,zmm24,zmm16
  a455bb:	62 d1 2c 48 58 d6    	vaddps zmm2,zmm10,zmm14
  a455c1:	62 21 14 40 5c eb    	vsubps zmm29,zmm29,zmm19
  a455c7:	62 91 04 48 58 e1    	vaddps zmm4,zmm15,zmm25
  a455cd:	62 01 04 48 5c c9    	vsubps zmm25,zmm15,zmm25
  a455d3:	62 61 6c 40 58 e2    	vaddps zmm28,zmm18,zmm2
  a455d9:	62 21 3c 40 5c c0    	vsubps zmm24,zmm24,zmm16
  a455df:	62 51 34 48 58 fd    	vaddps zmm15,zmm9,zmm13
  a455e5:	62 c1 34 48 5c dd    	vsubps zmm19,zmm9,zmm13
  a455eb:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x140]
  a455f2:	05 
  a455f3:	62 51 44 40 58 e8    	vaddps zmm13,zmm23,zmm8
  a455f9:	62 51 74 48 5c db    	vsubps zmm11,zmm1,zmm11
  a455ff:	62 81 2c 40 58 c3    	vaddps zmm16,zmm26,zmm27
  a45605:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a4560b:	62 21 44 48 58 d9    	vaddps zmm27,zmm7,zmm17
  a45611:	62 31 44 48 5c c9    	vsubps zmm9,zmm7,zmm17
  a45617:	62 a1 0c 40 58 cd    	vaddps zmm17,zmm30,zmm21
  a4561d:	62 f1 5c 40 5c c0    	vsubps zmm0,zmm20,zmm0
  a45623:	62 f1 34 48 58 f8    	vaddps zmm7,zmm9,zmm0
  a45629:	62 a1 0c 40 5c ed    	vsubps zmm21,zmm30,zmm21
  a4562f:	62 51 0c 48 5c d2    	vsubps zmm10,zmm14,zmm10
  a45635:	62 c1 54 40 58 e2    	vaddps zmm20,zmm21,zmm10
  a4563b:	62 b1 44 48 5c cc    	vsubps zmm1,zmm7,zmm20
  a45641:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a45648:	06 
  a45649:	62 b1 44 48 58 cc    	vaddps zmm1,zmm7,zmm20
  a4564f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a45656:	07 
  a45657:	62 91 14 40 58 f9    	vaddps zmm7,zmm29,zmm25
  a4565d:	62 a1 3c 48 5c e7    	vsubps zmm20,zmm8,zmm23
  a45663:	62 a1 3c 40 58 fb    	vaddps zmm23,zmm24,zmm19
  a45669:	62 b1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm22
  a4566f:	62 31 44 48 58 f7    	vaddps zmm14,zmm7,zmm23
  a45675:	62 b1 44 48 5c cf    	vsubps zmm1,zmm7,zmm23
  a4567b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a45682:	05 
  a45683:	62 d1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm13
  a45689:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a45690:	01 
  a45691:	62 f1 54 48 5c db    	vsubps zmm3,zmm5,zmm3
  a45697:	62 71 24 40 58 c4    	vaddps zmm8,zmm27,zmm4
  a4569d:	62 e1 6c 40 5c d2    	vsubps zmm18,zmm18,zmm2
  a456a3:	62 d1 74 40 58 ef    	vaddps zmm5,zmm17,zmm15
  a456a9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a456b0:	04 
  a456b1:	62 c1 74 48 5c f4    	vsubps zmm22,zmm1,zmm12
  a456b7:	62 01 24 48 58 f2    	vaddps zmm30,zmm11,zmm26
  a456bd:	62 f1 24 40 5c d4    	vsubps zmm2,zmm27,zmm4
  a456c3:	62 f2 7d 48 18 3d 93 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff62fd93]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a456ca:	fd 62 ff 
  a456cd:	62 c1 74 40 5c cf    	vsubps zmm17,zmm17,zmm15
  a456d3:	62 b1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm17
  a456d9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a456e0:	04 
  a456e1:	62 31 6c 48 58 e1    	vaddps zmm12,zmm2,zmm17
  a456e7:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a456ed:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a456f3:	62 b1 64 48 58 d2    	vaddps zmm2,zmm3,zmm18
  a456f9:	62 31 64 48 5c fa    	vsubps zmm15,zmm3,zmm18
  a456ff:	62 a1 4c 48 58 fc    	vaddps zmm23,zmm6,zmm20
  a45705:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a4570b:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a45711:	62 01 14 40 5c c9    	vsubps zmm25,zmm29,zmm25
  a45717:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a4571d:	62 21 3c 40 5c c3    	vsubps zmm24,zmm24,zmm19
  a45723:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a45729:	62 e1 5c 40 5c de    	vsubps zmm19,zmm20,zmm6
  a4572f:	62 81 34 40 58 e0    	vaddps zmm20,zmm25,zmm24
  a45735:	62 f1 34 48 5c c8    	vsubps zmm1,zmm9,zmm0
  a4573b:	62 b1 24 48 58 c4    	vaddps zmm0,zmm11,zmm20
  a45741:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a45748:	03 
  a45749:	62 51 54 40 5c ca    	vsubps zmm9,zmm21,zmm10
  a4574f:	62 51 74 48 58 d1    	vaddps zmm10,zmm1,zmm9
  a45755:	62 c2 45 48 ac e3    	vfnmadd213ps zmm20,zmm7,zmm11
  a4575b:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a45761:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a45767:	62 b2 2d 48 ac fb    	vfnmadd213ps zmm7,zmm10,zmm19
  a4576d:	62 c1 64 40 58 da    	vaddps zmm19,zmm19,zmm10
  a45773:	62 61 3c 48 58 ed    	vaddps zmm29,zmm8,zmm5
  a45779:	62 f1 3c 48 5c e5    	vsubps zmm4,zmm8,zmm5
  a4577f:	62 11 04 40 58 d4    	vaddps zmm10,zmm31,zmm28
  a45785:	62 91 04 40 5c ec    	vsubps zmm5,zmm31,zmm28
  a4578b:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a45791:	62 02 0d 48 ac de    	vfnmadd213ps zmm27,zmm14,zmm30
  a45797:	62 62 7d 48 18 25 33 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff62fb33]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4579e:	fb 62 ff 
  a457a1:	62 71 1c 40 59 5c 24 	vmulps zmm11,zmm28,ZMMWORD PTR [rsp+0x180]
  a457a8:	06 
  a457a9:	62 41 24 40 58 fb    	vaddps zmm31,zmm27,zmm11
  a457af:	62 51 24 40 5c db    	vsubps zmm11,zmm27,zmm11
  a457b5:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a457bc:	07 
  a457bd:	62 a2 65 48 ac d7    	vfnmadd213ps zmm18,zmm3,zmm23
  a457c3:	62 71 1c 40 59 74 24 	vmulps zmm14,zmm28,ZMMWORD PTR [rsp+0x140]
  a457ca:	05 
  a457cb:	62 d1 6c 40 5c c6    	vsubps zmm0,zmm18,zmm14
  a457d1:	62 c1 6c 40 58 d6    	vaddps zmm18,zmm18,zmm14
  a457d7:	62 a2 6d 48 ac c6    	vfnmadd213ps zmm16,zmm2,zmm22
  a457dd:	62 61 4c 40 58 da    	vaddps zmm27,zmm22,zmm2
  a457e3:	62 c2 1d 48 ac cd    	vfnmadd213ps zmm17,zmm12,zmm13
  a457e9:	62 51 14 48 58 f4    	vaddps zmm14,zmm13,zmm12
  a457ef:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a457f5:	62 91 34 40 5c d0    	vsubps zmm2,zmm25,zmm24
  a457fb:	62 71 1c 40 59 6c 24 	vmulps zmm13,zmm28,ZMMWORD PTR [rsp+0x100]
  a45802:	04 
  a45803:	62 01 04 48 59 c4    	vmulps zmm24,zmm15,zmm28
  a45809:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x80]
  a45810:	02 
  a45811:	62 c2 2d 48 ac e8    	vfnmadd213ps zmm21,zmm10,zmm8
  a45817:	62 91 5c 48 59 e4    	vmulps zmm4,zmm4,zmm28
  a4581d:	62 91 54 48 59 ec    	vmulps zmm5,zmm5,zmm28
  a45823:	62 91 74 48 59 cc    	vmulps zmm1,zmm1,zmm28
  a45829:	62 91 6c 48 59 d4    	vmulps zmm2,zmm2,zmm28
  a4582f:	62 61 54 40 58 cc    	vaddps zmm25,zmm21,zmm4
  a45835:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x40]
  a4583c:	01 
  a4583d:	62 02 15 40 ac d4    	vfnmadd213ps zmm26,zmm29,zmm28
  a45843:	62 71 54 40 5c e4    	vsubps zmm12,zmm21,zmm4
  a45849:	62 e1 2c 40 5c ed    	vsubps zmm21,zmm26,zmm5
  a4584f:	62 71 2c 40 58 fd    	vaddps zmm15,zmm26,zmm5
  a45855:	62 61 0c 40 58 d6    	vaddps zmm26,zmm30,zmm6
  a4585b:	62 71 44 40 58 cb    	vaddps zmm9,zmm23,zmm3
  a45861:	62 c1 7c 40 5c f5    	vsubps zmm22,zmm16,zmm13
  a45867:	62 d1 7c 40 58 e5    	vaddps zmm4,zmm16,zmm13
  a4586d:	62 11 74 40 58 e8    	vaddps zmm13,zmm17,zmm24
  a45873:	62 91 74 40 5c e8    	vsubps zmm5,zmm17,zmm24
  a45879:	62 e1 5c 40 58 c1    	vaddps zmm16,zmm20,zmm1
  a4587f:	62 f1 5c 40 5c d9    	vsubps zmm3,zmm20,zmm1
  a45885:	62 e1 44 48 5c ca    	vsubps zmm17,zmm7,zmm2
  a4588b:	62 f1 44 48 58 ca    	vaddps zmm1,zmm7,zmm2
  a45891:	62 91 1c 40 58 fd    	vaddps zmm7,zmm28,zmm29
  a45897:	62 51 3c 48 58 d2    	vaddps zmm10,zmm8,zmm10
  a4589d:	62 f1 7c 48 28 15 59 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff64c859]        # 92100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f5b0>
  a458a4:	c8 64 ff 
  a458a7:	62 b3 7d 48 19 fc 02 	vextractf32x4 xmm20,zmm7,0x2
  a458ae:	62 d2 6d 48 7f fa    	vpermt2ps zmm7,zmm2,zmm10
  a458b4:	62 f1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm7
  a458ba:	62 73 7d 48 19 d7 02 	vextractf32x4 xmm7,zmm10,0x2
  a458c1:	62 f1 5c 00 14 ff    	vunpcklps xmm7,xmm20,xmm7
  a458c7:	c5 f8 11 7e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm7
  a458cc:	62 f3 7d 48 19 c7 02 	vextractf32x4 xmm7,zmm0,0x2
  a458d3:	62 92 6d 48 7f c7    	vpermt2ps zmm0,zmm2,zmm31
  a458d9:	62 f1 7c 48 11 86 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm0
  a458e0:	00 00 00 
  a458e3:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a458ea:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  a458ee:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  a458f5:	00 
  a458f6:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a458fd:	62 32 6d 48 7f ee    	vpermt2ps zmm13,zmm2,zmm22
  a45903:	62 71 7c 48 11 ae a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm13
  a4590a:	00 00 00 
  a4590d:	62 e3 7d 48 19 f7 02 	vextractf32x4 xmm7,zmm22,0x2
  a45914:	c5 f8 14 c7          	vunpcklps xmm0,xmm0,xmm7
  a45918:	c5 f8 11 86 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm0
  a4591f:	00 
  a45920:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a45927:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a4592e:	03 
  a4592f:	62 e2 6d 48 7f de    	vpermt2ps zmm19,zmm2,zmm6
  a45935:	62 e1 7c 48 11 9e f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm19
  a4593c:	00 00 00 
  a4593f:	62 f3 7d 48 19 f6 02 	vextractf32x4 xmm6,zmm6,0x2
  a45946:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a4594a:	c5 f8 11 86 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm0
  a45951:	00 
  a45952:	62 e3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm21,0x2
  a45959:	62 82 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm25
  a4595f:	62 e1 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm21
  a45966:	62 63 7d 48 19 ce 02 	vextractf32x4 xmm6,zmm25,0x2
  a4596d:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a45971:	c5 f8 11 86 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm0
  a45978:	00 
  a45979:	62 e3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm18,0x2
  a45980:	62 c2 6d 48 7f d3    	vpermt2ps zmm18,zmm2,zmm11
  a45986:	62 e1 7c 48 11 96 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm18
  a4598d:	01 00 00 
  a45990:	62 73 7d 48 19 de 02 	vextractf32x4 xmm6,zmm11,0x2
  a45997:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a4599b:	c5 f8 11 86 d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm0
  a459a2:	00 
  a459a3:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a459aa:	62 12 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm27
  a459b0:	62 71 7c 48 11 b6 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm14
  a459b7:	01 00 00 
  a459ba:	62 63 7d 48 19 de 02 	vextractf32x4 xmm6,zmm27,0x2
  a459c1:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a459c5:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a459cc:	00 
  a459cd:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a459d4:	62 a2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm16
  a459da:	62 e1 7c 48 11 8e 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm17
  a459e1:	02 00 00 
  a459e4:	62 e3 7d 48 19 c6 02 	vextractf32x4 xmm6,zmm16,0x2
  a459eb:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a459ef:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a459f6:	00 
  a459f7:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a459fe:	62 52 6d 48 7f fc    	vpermt2ps zmm15,zmm2,zmm12
  a45a04:	62 71 7c 48 11 7e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm15
  a45a0b:	62 73 7d 48 19 e6 02 	vextractf32x4 xmm6,zmm12,0x2
  a45a12:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a45a16:	c5 f8 11 86 c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm0
  a45a1d:	00 
  a45a1e:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a45a25:	62 12 6d 48 7f ca    	vpermt2ps zmm9,zmm2,zmm26
  a45a2b:	62 71 7c 48 11 8e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm9
  a45a32:	02 00 00 
  a45a35:	62 63 7d 48 19 d6 02 	vextractf32x4 xmm6,zmm26,0x2
  a45a3c:	c5 f8 14 c6          	vunpcklps xmm0,xmm0,xmm6
  a45a40:	c5 f8 11 86 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm0
  a45a47:	00 
  a45a48:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a45a4f:	62 f2 6d 48 7f ec    	vpermt2ps zmm5,zmm2,zmm4
  a45a55:	62 f1 7c 48 11 ae 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm5
  a45a5c:	03 00 00 
  a45a5f:	62 f3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm4,0x2
  a45a66:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a45a6a:	c5 f8 11 86 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm0
  a45a71:	00 
  a45a72:	62 f2 75 48 77 d3    	vpermi2ps zmm2,zmm1,zmm3
  a45a78:	62 f1 7c 48 11 96 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm2
  a45a7f:	03 00 00 
  a45a82:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a45a89:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a45a90:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a45a94:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a45a9b:	00 
  a45a9c:	48 89 ec             	mov    rsp,rbp
  a45a9f:	5d                   	pop    rbp
  a45aa0:	c5 f8 77             	vzeroupper
  a45aa3:	c3                   	ret
