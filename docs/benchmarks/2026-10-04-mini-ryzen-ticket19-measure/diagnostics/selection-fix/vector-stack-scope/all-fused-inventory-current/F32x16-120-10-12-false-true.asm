
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a59c80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a59c80:	55                   	push   rbp
  a59c81:	48 89 e5             	mov    rbp,rsp
  a59c84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a59c88:	48 81 ec 00 04 00 00 	sub    rsp,0x400
  a59c8f:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a59c96:	31 d2                	xor    edx,edx
  a59c98:	4c 8d 84 24 80 03 00 	lea    r8,[rsp+0x380]
  a59c9f:	00 
  a59ca0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a59ca5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a59cac:	00 00 00 00 
  a59cb0:	c6 84 24 80 03 00 00 	mov    BYTE PTR [rsp+0x380],0x0
  a59cb7:	00 
  a59cb8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a59cbd:	62 e1 7c 48 10 04 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1]
  a59cc4:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a59cca:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a59cd0:	62 71 7c 48 28 2d e6 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6395e6]        # 932c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20770>
  a59cd7:	95 63 ff 
  a59cda:	62 e2 15 48 7f c0    	vpermt2ps zmm16,zmm13,zmm0
  a59ce0:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x60]
  a59ce7:	60 00 00 00 
  a59ceb:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a59cf2:	00 00 
  a59cf4:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a59cfa:	62 72 15 48 7f e1    	vpermt2ps zmm12,zmm13,zmm1
  a59d00:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a59d07:	03 
  a59d08:	c5 fc 10 94 17 00 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x100]
  a59d0f:	00 00 
  a59d11:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a59d17:	62 f2 15 48 7f f2    	vpermt2ps zmm6,zmm13,zmm2
  a59d1d:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x120]
  a59d24:	20 01 00 00 
  a59d28:	c5 7c 10 b4 17 60 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x160]
  a59d2f:	00 00 
  a59d31:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a59d37:	62 71 7c 48 28 05 3f 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63953f]        # 93280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20730>
  a59d3e:	95 63 ff 
  a59d41:	62 e2 3d 48 7f c8    	vpermt2ps zmm17,zmm8,zmm0
  a59d47:	62 d2 15 48 7f e6    	vpermt2ps zmm4,zmm13,zmm14
  a59d4d:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x180]
  a59d54:	06 
  a59d55:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a59d5c:	00 00 
  a59d5e:	62 f2 3d 48 7f e9    	vpermt2ps zmm5,zmm8,zmm1
  a59d64:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a59d6a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a59d71:	04 
  a59d72:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a59d78:	62 f2 15 48 7f f8    	vpermt2ps zmm7,zmm13,zmm0
  a59d7e:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a59d85:	e0 01 00 00 
  a59d89:	62 72 3d 48 7f da    	vpermt2ps zmm11,zmm8,zmm2
  a59d8f:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a59d96:	00 00 
  a59d98:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a59d9e:	62 f2 15 48 7f d9    	vpermt2ps zmm3,zmm13,zmm1
  a59da4:	62 c2 3d 48 7f d6    	vpermt2ps zmm18,zmm8,zmm14
  a59daa:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  a59db1:	09 
  a59db2:	c5 fc 10 94 17 80 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x280]
  a59db9:	00 00 
  a59dbb:	62 41 7c 48 28 ce    	vmovaps zmm25,zmm14
  a59dc1:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a59dc7:	62 72 15 48 7f f2    	vpermt2ps zmm14,zmm13,zmm2
  a59dcd:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a59dd4:	a0 02 00 00 
  a59dd8:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a59ddf:	00 00 
  a59de1:	62 72 3d 48 7f c9    	vpermt2ps zmm9,zmm8,zmm1
  a59de7:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a59ded:	62 e2 15 48 7f d8    	vpermt2ps zmm19,zmm13,zmm0
  a59df3:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x300]
  a59dfa:	0c 
  a59dfb:	62 62 3d 48 7f ca    	vpermt2ps zmm25,zmm8,zmm2
  a59e01:	c5 fc 10 94 17 40 03 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x340]
  a59e08:	00 00 
  a59e0a:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a59e10:	62 72 15 48 7f fa    	vpermt2ps zmm15,zmm13,zmm2
  a59e16:	62 62 3d 48 7f d0    	vpermt2ps zmm26,zmm8,zmm0
  a59e1c:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x360]
  a59e23:	60 03 00 00 
  a59e27:	c5 fc 10 84 17 a0 03 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x3a0]
  a59e2e:	00 00 
  a59e30:	62 21 7c 48 28 ee    	vmovaps zmm29,zmm22
  a59e36:	62 f2 3d 48 7f ca    	vpermt2ps zmm1,zmm8,zmm2
  a59e3c:	62 62 3d 48 7f e8    	vpermt2ps zmm29,zmm8,zmm0
  a59e42:	62 e2 15 48 7f f0    	vpermt2ps zmm22,zmm13,zmm0
  a59e48:	62 61 24 48 58 e1    	vaddps zmm28,zmm11,zmm1
  a59e4e:	62 01 54 48 58 d9    	vaddps zmm27,zmm5,zmm25
  a59e54:	62 a1 2c 40 58 fa    	vaddps zmm23,zmm26,zmm18
  a59e5a:	62 41 14 40 58 f2    	vaddps zmm30,zmm29,zmm10
  a59e60:	62 d1 4c 48 58 c7    	vaddps zmm0,zmm6,zmm15
  a59e66:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a59e6d:	09 
  a59e6e:	62 01 74 40 58 c4    	vaddps zmm24,zmm17,zmm28
  a59e74:	62 61 7c 40 58 f8    	vaddps zmm31,zmm16,zmm0
  a59e7a:	62 d1 44 48 58 d6    	vaddps zmm2,zmm7,zmm14
  a59e80:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a59e87:	07 
  a59e88:	62 f1 64 40 58 c4    	vaddps zmm0,zmm19,zmm4
  a59e8e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a59e95:	05 
  a59e96:	62 31 34 48 58 ef    	vaddps zmm13,zmm9,zmm23
  a59e9c:	62 51 4c 48 5c d7    	vsubps zmm10,zmm6,zmm15
  a59ea2:	62 f1 64 48 58 f0    	vaddps zmm6,zmm3,zmm0
  a59ea8:	62 51 44 48 5c fe    	vsubps zmm15,zmm7,zmm14
  a59eae:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm15
  a59eb5:	06 
  a59eb6:	62 f1 04 40 58 fa    	vaddps zmm7,zmm31,zmm2
  a59ebc:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm7
  a59ec3:	02 
  a59ec4:	62 d1 4c 40 58 c4    	vaddps zmm0,zmm22,zmm12
  a59eca:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a59ed1:	03 
  a59ed2:	62 f1 4c 48 58 d0    	vaddps zmm2,zmm6,zmm0
  a59ed8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a59edf:	01 
  a59ee0:	62 e1 64 40 5c e4    	vsubps zmm20,zmm19,zmm4
  a59ee6:	62 81 3c 40 58 eb    	vaddps zmm21,zmm24,zmm27
  a59eec:	62 62 7d 48 18 3d f2 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff61b7f2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a59ef3:	b7 61 ff 
  a59ef6:	62 81 7c 48 28 df    	vmovaps zmm19,zmm31
  a59efc:	62 a2 1d 40 a8 d9    	vfmadd213ps zmm19,zmm28,zmm17
  a59f02:	62 51 4c 40 5c f4    	vsubps zmm14,zmm22,zmm12
  a59f08:	62 11 14 48 58 c6    	vaddps zmm8,zmm13,zmm30
  a59f0e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a59f15:	08 
  a59f16:	62 72 7d 48 18 2d 38 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff61b838]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a59f1d:	b8 61 ff 
  a59f20:	62 c1 04 48 59 f5    	vmulps zmm22,zmm15,zmm13
  a59f26:	62 71 24 48 5c f9    	vsubps zmm15,zmm11,zmm1
  a59f2c:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a59f32:	62 f2 7d 48 18 35 64 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61b464]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a59f39:	b4 61 ff 
  a59f3c:	62 e2 2d 48 b8 f6    	vfmadd231ps zmm22,zmm10,zmm6
  a59f42:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a59f48:	62 42 45 40 a8 c1    	vfmadd213ps zmm24,zmm23,zmm9
  a59f4e:	62 11 54 48 5c d1    	vsubps zmm10,zmm5,zmm25
  a59f54:	62 b1 2c 40 5c c2    	vsubps zmm0,zmm26,zmm18
  a59f5a:	62 f1 44 48 58 e2    	vaddps zmm4,zmm7,zmm2
  a59f60:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a59f67:	0a 
  a59f68:	62 d1 0c 48 59 ed    	vmulps zmm5,zmm14,zmm13
  a59f6e:	62 f2 5d 40 b8 ee    	vfmadd231ps zmm5,zmm20,zmm6
  a59f74:	62 e1 14 40 5c 54 24 	vsubps zmm18,zmm29,ZMMWORD PTR [rsp+0x100]
  a59f7b:	04 
  a59f7c:	62 72 7d 48 18 25 be 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff61b6be]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a59f83:	b6 61 ff 
  a59f86:	62 c2 25 40 bc dc    	vfnmadd231ps zmm19,zmm27,zmm12
  a59f8c:	62 01 7c 48 28 cf    	vmovaps zmm25,zmm31
  a59f92:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x240]
  a59f99:	09 
  a59f9a:	62 22 5d 48 a8 c8    	vfmadd213ps zmm25,zmm4,zmm16
  a59fa0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a59fa7:	07 
  a59fa8:	62 42 75 48 bc cc    	vfnmadd231ps zmm25,zmm1,zmm12
  a59fae:	62 42 0d 40 bc c4    	vfnmadd231ps zmm24,zmm30,zmm12
  a59fb4:	62 82 1d 48 bc cc    	vfnmadd231ps zmm17,zmm12,zmm28
  a59fba:	62 41 2c 48 59 d5    	vmulps zmm26,zmm10,zmm13
  a59fc0:	62 62 05 48 b8 d6    	vfmadd231ps zmm26,zmm15,zmm6
  a59fc6:	62 82 05 40 b8 cb    	vfmadd231ps zmm17,zmm31,zmm27
  a59fcc:	62 01 7c 48 28 df    	vmovaps zmm27,zmm31
  a59fd2:	62 41 24 48 59 e5    	vmulps zmm28,zmm11,zmm13
  a59fd8:	62 62 4d 48 bc 64 24 	vfnmadd231ps zmm28,zmm6,ZMMWORD PTR [rsp+0x180]
  a59fdf:	06 
  a59fe0:	62 d1 54 40 58 f8    	vaddps zmm7,zmm21,zmm8
  a59fe6:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x140]
  a59fed:	05 
  a59fee:	62 62 15 40 a8 db    	vfmadd213ps zmm27,zmm29,zmm3
  a59ff4:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a59ffb:	03 
  a59ffc:	62 42 3d 48 bc dc    	vfnmadd231ps zmm27,zmm8,zmm12
  a5a002:	62 32 1d 48 bc cf    	vfnmadd231ps zmm9,zmm12,zmm23
  a5a008:	62 a1 64 40 58 fe    	vaddps zmm23,zmm19,zmm22
  a5a00e:	62 12 05 40 b8 ce    	vfmadd231ps zmm9,zmm31,zmm30
  a5a014:	62 d1 5c 40 59 d5    	vmulps zmm2,zmm20,zmm13
  a5a01a:	62 d2 4d 48 bc d6    	vfnmadd231ps zmm2,zmm6,zmm14
  a5a020:	62 71 3c 40 58 dd    	vaddps zmm11,zmm24,zmm5
  a5a026:	62 51 6c 40 59 f5    	vmulps zmm14,zmm18,zmm13
  a5a02c:	62 72 7d 48 b8 f6    	vfmadd231ps zmm14,zmm0,zmm6
  a5a032:	62 e2 1d 48 bc c4    	vfnmadd231ps zmm16,zmm12,zmm4
  a5a038:	62 81 34 40 5c e2    	vsubps zmm20,zmm25,zmm26
  a5a03e:	62 e2 05 40 b8 c1    	vfmadd231ps zmm16,zmm31,zmm1
  a5a044:	62 d1 04 48 59 cd    	vmulps zmm1,zmm15,zmm13
  a5a04a:	62 d2 4d 48 bc ca    	vfnmadd231ps zmm1,zmm6,zmm10
  a5a050:	62 d1 24 40 5c e6    	vsubps zmm4,zmm27,zmm14
  a5a056:	62 01 74 40 58 f4    	vaddps zmm30,zmm17,zmm28
  a5a05c:	62 92 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm29
  a5a062:	62 d2 05 40 b8 d8    	vfmadd231ps zmm3,zmm31,zmm8
  a5a068:	62 51 44 40 5c c3    	vsubps zmm8,zmm23,zmm11
  a5a06e:	62 71 34 48 58 fa    	vaddps zmm15,zmm9,zmm2
  a5a074:	62 51 7c 48 59 d5    	vmulps zmm10,zmm0,zmm13
  a5a07a:	62 32 4d 48 bc d2    	vfnmadd231ps zmm10,zmm6,zmm18
  a5a080:	62 f1 5c 40 5c c4    	vsubps zmm0,zmm20,zmm4
  a5a086:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a5a08d:	03 
  a5a08e:	62 81 74 40 5c cc    	vsubps zmm17,zmm17,zmm28
  a5a094:	62 e1 7c 40 5c d1    	vsubps zmm18,zmm16,zmm1
  a5a09a:	62 61 34 48 5c e2    	vsubps zmm28,zmm9,zmm2
  a5a0a0:	62 51 0c 40 58 cf    	vaddps zmm9,zmm30,zmm15
  a5a0a6:	62 b1 74 48 58 c0    	vaddps zmm0,zmm1,zmm16
  a5a0ac:	62 c1 64 48 5c c2    	vsubps zmm16,zmm3,zmm10
  a5a0b2:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a5a0b8:	62 21 6c 40 58 e8    	vaddps zmm29,zmm18,zmm16
  a5a0be:	62 a1 64 40 5c de    	vsubps zmm19,zmm19,zmm22
  a5a0c4:	62 11 74 40 5c d4    	vsubps zmm10,zmm17,zmm28
  a5a0ca:	62 f1 3c 40 5c ed    	vsubps zmm5,zmm24,zmm5
  a5a0d0:	62 61 7c 48 5c fb    	vsubps zmm31,zmm0,zmm3
  a5a0d6:	62 01 2c 40 58 c9    	vaddps zmm25,zmm26,zmm25
  a5a0dc:	62 e1 64 40 58 f5    	vaddps zmm22,zmm19,zmm5
  a5a0e2:	62 01 0c 48 58 d3    	vaddps zmm26,zmm14,zmm27
  a5a0e8:	62 91 34 40 58 ca    	vaddps zmm1,zmm25,zmm26
  a5a0ee:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a5a0f5:	07 
  a5a0f6:	62 e1 54 40 5c 6c 24 	vsubps zmm21,zmm21,ZMMWORD PTR [rsp+0x200]
  a5a0fd:	08 
  a5a0fe:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a5a105:	02 
  a5a106:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x40]
  a5a10d:	01 
  a5a10e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a5a115:	08 
  a5a116:	62 d1 44 40 58 f3    	vaddps zmm6,zmm23,zmm11
  a5a11c:	62 f1 5c 40 58 cc    	vaddps zmm1,zmm20,zmm4
  a5a122:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a5a129:	09 
  a5a12a:	62 51 0c 40 5c f7    	vsubps zmm14,zmm30,zmm15
  a5a130:	62 b1 6c 40 5c c8    	vsubps zmm1,zmm18,zmm16
  a5a136:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a5a13d:	04 
  a5a13e:	62 11 74 40 58 fc    	vaddps zmm15,zmm17,zmm28
  a5a144:	62 e1 7c 48 58 fb    	vaddps zmm23,zmm0,zmm3
  a5a14a:	62 f1 64 40 5c c5    	vsubps zmm0,zmm19,zmm5
  a5a150:	62 91 34 40 5c d2    	vsubps zmm2,zmm25,zmm26
  a5a156:	62 e1 7c 48 28 e7    	vmovaps zmm20,zmm7
  a5a15c:	62 61 7c 48 28 1d 1a 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff66ce1a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5a163:	ce 66 ff 
  a5a166:	62 c2 25 40 7f e7    	vpermt2ps zmm20,zmm27,zmm15
  a5a16c:	62 71 7c 48 28 25 4a 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66ce4a]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5a173:	ce 66 ff 
  a5a176:	62 d2 1d 48 7f ff    	vpermt2ps zmm7,zmm12,zmm15
  a5a17c:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a5a182:	62 72 1d 48 7f c0    	vpermt2ps zmm8,zmm12,zmm0
  a5a188:	62 f2 25 40 7f e8    	vpermt2ps zmm5,zmm27,zmm0
  a5a18e:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a5a194:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a5a198:	62 72 1d 48 7f cc    	vpermt2ps zmm9,zmm12,zmm4
  a5a19e:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a5a1a4:	62 f2 25 40 7f dc    	vpermt2ps zmm3,zmm27,zmm4
  a5a1aa:	62 72 1d 48 7f d4    	vpermt2ps zmm10,zmm12,zmm4
  a5a1b0:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a5a1b6:	62 e2 1d 48 7f f4    	vpermt2ps zmm22,zmm12,zmm4
  a5a1bc:	62 72 25 40 7f fc    	vpermt2ps zmm15,zmm27,zmm4
  a5a1c2:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a5a1c8:	62 e2 25 40 7f c4    	vpermt2ps zmm16,zmm27,zmm4
  a5a1ce:	62 e2 1d 48 7f ec    	vpermt2ps zmm21,zmm12,zmm4
  a5a1d4:	62 f2 25 40 7f c4    	vpermt2ps zmm0,zmm27,zmm4
  a5a1da:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a5a1e0:	62 f2 1d 48 7f f4    	vpermt2ps zmm6,zmm12,zmm4
  a5a1e6:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  a5a1ec:	62 62 25 40 7f cc    	vpermt2ps zmm25,zmm27,zmm4
  a5a1f2:	62 62 25 40 7f d4    	vpermt2ps zmm26,zmm27,zmm4
  a5a1f8:	62 72 1d 48 7f f4    	vpermt2ps zmm14,zmm12,zmm4
  a5a1fe:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a5a204:	62 71 7c 48 28 1d f2 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff66ccf2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5a20b:	cc 66 ff 
  a5a20e:	62 e2 25 48 7f d0    	vpermt2ps zmm18,zmm11,zmm0
  a5a214:	62 61 7c 48 28 05 22 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff66cd22]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5a21b:	cd 66 ff 
  a5a21e:	62 e2 3d 40 7f e0    	vpermt2ps zmm20,zmm24,zmm0
  a5a224:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a5a22a:	62 b2 3d 40 7f e8    	vpermt2ps zmm5,zmm24,zmm16
  a5a230:	62 b2 25 48 7f c0    	vpermt2ps zmm0,zmm11,zmm16
  a5a236:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a5a23c:	62 92 3d 40 7f d9    	vpermt2ps zmm3,zmm24,zmm25
  a5a242:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a5a248:	62 82 25 48 7f d9    	vpermt2ps zmm19,zmm11,zmm25
  a5a24e:	62 12 3d 40 7f fa    	vpermt2ps zmm15,zmm24,zmm26
  a5a254:	62 b2 25 48 7f fe    	vpermt2ps zmm7,zmm11,zmm22
  a5a25a:	62 32 25 48 7f c5    	vpermt2ps zmm8,zmm11,zmm21
  a5a260:	62 82 25 48 7f ca    	vpermt2ps zmm17,zmm11,zmm26
  a5a266:	62 72 25 48 7f ce    	vpermt2ps zmm9,zmm11,zmm6
  a5a26c:	62 52 25 48 7f d6    	vpermt2ps zmm10,zmm11,zmm14
  a5a272:	62 f1 dd 40 14 cb    	vunpcklpd zmm1,zmm20,zmm3
  a5a278:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a5a27f:	02 
  a5a280:	62 f1 dd 40 15 cb    	vunpckhpd zmm1,zmm20,zmm3
  a5a286:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a5a28d:	05 
  a5a28e:	62 d1 c5 48 14 d9    	vunpcklpd zmm3,zmm7,zmm9
  a5a294:	62 d1 c5 48 15 c9    	vunpckhpd zmm1,zmm7,zmm9
  a5a29a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a5a2a1:	01 
  a5a2a2:	62 41 bd 48 14 f2    	vunpcklpd zmm30,zmm8,zmm10
  a5a2a8:	62 d1 d5 48 14 cf    	vunpcklpd zmm1,zmm5,zmm15
  a5a2ae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a5a2b5:	0d 
  a5a2b6:	62 41 bd 48 15 d2    	vunpckhpd zmm26,zmm8,zmm10
  a5a2bc:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a5a2c3:	0a 
  a5a2c4:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a5a2ca:	62 32 25 40 7f c7    	vpermt2ps zmm8,zmm27,zmm23
  a5a2d0:	62 d1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm15
  a5a2d6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a5a2dd:	0c 
  a5a2de:	62 32 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm23
  a5a2e4:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a5a2eb:	03 
  a5a2ec:	62 e1 7c 48 28 fd    	vmovaps zmm23,zmm5
  a5a2f2:	62 e2 25 40 7f fa    	vpermt2ps zmm23,zmm27,zmm2
  a5a2f8:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a5a2fe:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a5a304:	62 f2 1d 48 7f ea    	vpermt2ps zmm5,zmm12,zmm2
  a5a30a:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a5a310:	62 62 25 40 7f cc    	vpermt2ps zmm25,zmm27,zmm4
  a5a316:	62 b1 ed 40 14 cb    	vunpcklpd zmm1,zmm18,zmm19
  a5a31c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a5a323:	0b 
  a5a324:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a5a32a:	62 f2 25 40 7f d4    	vpermt2ps zmm2,zmm27,zmm4
  a5a330:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x1c0]
  a5a337:	07 
  a5a338:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a5a33e:	62 21 ed 40 15 e3    	vunpckhpd zmm28,zmm18,zmm19
  a5a344:	62 f2 25 40 7f dc    	vpermt2ps zmm3,zmm27,zmm4
  a5a34a:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a5a351:	08 
  a5a352:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a5a358:	62 f2 25 40 7f fc    	vpermt2ps zmm7,zmm27,zmm4
  a5a35e:	62 a1 fd 48 14 e9    	vunpcklpd zmm21,zmm0,zmm17
  a5a364:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x240]
  a5a36b:	09 
  a5a36c:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a5a372:	62 72 25 40 7f d4    	vpermt2ps zmm10,zmm27,zmm4
  a5a378:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x100]
  a5a37f:	04 
  a5a380:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a5a386:	62 a1 fd 48 15 c9    	vunpckhpd zmm17,zmm0,zmm17
  a5a38c:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm17
  a5a393:	03 
  a5a394:	62 e2 25 40 7f d4    	vpermt2ps zmm18,zmm27,zmm4
  a5a39a:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a5a3a0:	62 f2 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm3
  a5a3a6:	62 f1 7c 48 28 0d 90 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66ca90]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5a3ad:	ca 66 ff 
  a5a3b0:	62 12 75 48 7f fe    	vpermt2ps zmm15,zmm1,zmm30
  a5a3b6:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm15
  a5a3bd:	06 
  a5a3be:	62 72 3d 40 7f c3    	vpermt2ps zmm8,zmm24,zmm3
  a5a3c4:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a5a3ca:	62 72 25 48 7f ff    	vpermt2ps zmm15,zmm11,zmm7
  a5a3d0:	62 e1 7c 48 28 25 26 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66ca26]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5a3d7:	ca 66 ff 
  a5a3da:	62 82 5d 40 7f f6    	vpermt2ps zmm22,zmm20,zmm30
  a5a3e0:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm22
  a5a3e7:	0a 
  a5a3e8:	62 e2 3d 40 7f ff    	vpermt2ps zmm23,zmm24,zmm7
  a5a3ee:	62 91 7c 48 28 f9    	vmovaps zmm7,zmm25
  a5a3f4:	62 d2 25 48 7f fa    	vpermt2ps zmm7,zmm11,zmm10
  a5a3fa:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a5a401:	02 
  a5a402:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a5a408:	62 42 3d 40 7f ca    	vpermt2ps zmm25,zmm24,zmm10
  a5a40e:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a5a414:	62 22 25 48 7f da    	vpermt2ps zmm27,zmm11,zmm18
  a5a41a:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x340]
  a5a421:	0d 
  a5a422:	62 b2 75 48 7f de    	vpermt2ps zmm3,zmm1,zmm22
  a5a428:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a5a42f:	02 
  a5a430:	62 b2 3d 40 7f d2    	vpermt2ps zmm2,zmm24,zmm18
  a5a436:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a5a43d:	01 
  a5a43e:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a5a444:	62 92 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm26
  a5a44a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a5a451:	01 
  a5a452:	62 02 5d 40 7f c2    	vpermt2ps zmm24,zmm20,zmm26
  a5a458:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a5a45f:	05 
  a5a460:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a5a466:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a5a46c:	62 e2 1d 48 7f d4    	vpermt2ps zmm18,zmm12,zmm4
  a5a472:	62 62 1d 48 7f fc    	vpermt2ps zmm31,zmm12,zmm4
  a5a478:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x300]
  a5a47f:	0c 
  a5a480:	62 92 75 48 7f dd    	vpermt2ps zmm3,zmm1,zmm29
  a5a486:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a5a48d:	05 
  a5a48e:	62 72 1d 48 7f f4    	vpermt2ps zmm14,zmm12,zmm4
  a5a494:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a5a49a:	62 72 1d 48 7f d4    	vpermt2ps zmm10,zmm12,zmm4
  a5a4a0:	62 52 25 48 7f ce    	vpermt2ps zmm9,zmm11,zmm14
  a5a4a6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x2c0]
  a5a4ad:	0b 
  a5a4ae:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a5a4b4:	62 72 1d 48 7f ec    	vpermt2ps zmm13,zmm12,zmm4
  a5a4ba:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a5a4c0:	62 f2 1d 48 7f dc    	vpermt2ps zmm3,zmm12,zmm4
  a5a4c6:	62 d2 25 48 7f ea    	vpermt2ps zmm5,zmm11,zmm10
  a5a4cc:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a5a4d2:	62 b2 75 48 7f f5    	vpermt2ps zmm6,zmm1,zmm21
  a5a4d8:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a5a4de:	62 c2 25 48 7f d5    	vpermt2ps zmm18,zmm11,zmm13
  a5a4e4:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a5a4ea:	62 62 25 48 7f fb    	vpermt2ps zmm31,zmm11,zmm3
  a5a4f0:	62 e1 fd 48 14 d7    	vunpcklpd zmm18,zmm0,zmm7
  a5a4f6:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a5a4fc:	62 71 fd 48 15 d7    	vunpckhpd zmm10,zmm0,zmm7
  a5a502:	62 11 85 48 14 db    	vunpcklpd zmm11,zmm15,zmm27
  a5a508:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm11
  a5a50f:	04 
  a5a510:	62 11 85 48 15 f3    	vunpckhpd zmm14,zmm15,zmm27
  a5a516:	62 22 75 48 7f e1    	vpermt2ps zmm28,zmm1,zmm17
  a5a51c:	62 91 bd 48 14 f9    	vunpcklpd zmm7,zmm8,zmm25
  a5a522:	62 91 bd 48 15 c1    	vunpckhpd zmm0,zmm8,zmm25
  a5a528:	62 f1 c5 40 14 e2    	vunpcklpd zmm4,zmm23,zmm2
  a5a52e:	62 22 5d 40 7f f6    	vpermt2ps zmm30,zmm20,zmm22
  a5a534:	62 f1 c5 40 15 d2    	vunpckhpd zmm2,zmm23,zmm2
  a5a53a:	62 d1 b5 48 14 f4    	vunpcklpd zmm6,zmm9,zmm12
  a5a540:	62 51 b5 48 15 fc    	vunpckhpd zmm15,zmm9,zmm12
  a5a546:	62 82 5d 40 7f c5    	vpermt2ps zmm16,zmm20,zmm29
  a5a54c:	62 81 d5 48 14 ff    	vunpcklpd zmm23,zmm5,zmm31
  a5a552:	62 11 d5 48 15 ef    	vunpckhpd zmm13,zmm5,zmm31
  a5a558:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a5a55e:	62 c2 75 48 7f d3    	vpermt2ps zmm18,zmm1,zmm11
  a5a564:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a5a56a:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a5a570:	62 f2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm4
  a5a576:	62 62 5d 40 7f ec    	vpermt2ps zmm29,zmm20,zmm4
  a5a57c:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a5a582:	62 f2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm2
  a5a588:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a5a58e:	62 52 75 48 7f d6    	vpermt2ps zmm10,zmm1,zmm14
  a5a594:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a5a59a:	62 b2 5d 40 7f ef    	vpermt2ps zmm5,zmm20,zmm23
  a5a5a0:	62 b2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm23
  a5a5a6:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a5a5ac:	62 72 5d 40 7f c2    	vpermt2ps zmm8,zmm20,zmm2
  a5a5b2:	62 42 5d 40 7f cd    	vpermt2ps zmm25,zmm20,zmm13
  a5a5b8:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a5a5be:	62 52 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm13
  a5a5c4:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a5a5cb:	62 22 5d 40 7f d3    	vpermt2ps zmm26,zmm20,zmm19
  a5a5d1:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a5a5d8:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x180]
  a5a5df:	06 
  a5a5e0:	62 61 24 48 59 d9    	vmulps zmm27,zmm11,zmm1
  a5a5e6:	62 f1 4c 48 59 e1    	vmulps zmm4,zmm6,zmm1
  a5a5ec:	62 62 4d 48 bc da    	vfnmadd231ps zmm27,zmm6,zmm2
  a5a5f2:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a5a5f9:	62 d2 6d 48 b8 e3    	vfmadd231ps zmm4,zmm2,zmm11
  a5a5ff:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a5a606:	62 f1 7c 40 59 f1    	vmulps zmm6,zmm16,zmm1
  a5a60c:	62 f2 3d 48 bc f2    	vfnmadd231ps zmm6,zmm8,zmm2
  a5a612:	62 e1 3c 48 59 f1    	vmulps zmm22,zmm8,zmm1
  a5a618:	62 f1 7c 48 10 49 14 	vmovups zmm1,ZMMWORD PTR [rcx+0x500]
  a5a61f:	62 a2 6d 48 b8 f0    	vfmadd231ps zmm22,zmm2,zmm16
  a5a625:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a5a62c:	62 e1 3c 40 59 d9    	vmulps zmm19,zmm24,zmm1
  a5a632:	62 71 34 40 59 c1    	vmulps zmm8,zmm25,zmm1
  a5a638:	62 e2 35 40 bc da    	vfnmadd231ps zmm19,zmm25,zmm2
  a5a63e:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a5a645:	62 12 6d 48 b8 c0    	vfmadd231ps zmm8,zmm2,zmm24
  a5a64b:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a5a652:	62 e1 1c 40 59 c9    	vmulps zmm17,zmm28,zmm1
  a5a658:	62 e2 2d 48 bc ca    	vfnmadd231ps zmm17,zmm10,zmm2
  a5a65e:	62 61 2c 48 59 c9    	vmulps zmm25,zmm10,zmm1
  a5a664:	62 f1 7c 48 10 49 0e 	vmovups zmm1,ZMMWORD PTR [rcx+0x380]
  a5a66b:	62 02 6d 48 b8 cc    	vfmadd231ps zmm25,zmm2,zmm28
  a5a671:	62 f1 7c 48 10 51 0f 	vmovups zmm2,ZMMWORD PTR [rcx+0x3c0]
  a5a678:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x140]
  a5a67f:	05 
  a5a680:	62 71 14 48 59 d1    	vmulps zmm10,zmm13,zmm1
  a5a686:	62 71 7c 48 59 d9    	vmulps zmm11,zmm0,zmm1
  a5a68c:	62 72 7d 48 bc d2    	vfnmadd231ps zmm10,zmm0,zmm2
  a5a692:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a5a699:	62 52 6d 48 b8 dd    	vfmadd231ps zmm11,zmm2,zmm13
  a5a69f:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a5a6a6:	62 71 0c 40 59 e8    	vmulps zmm13,zmm30,zmm0
  a5a6ac:	62 72 15 40 bc e9    	vfnmadd231ps zmm13,zmm29,zmm1
  a5a6b2:	62 f1 14 40 59 c0    	vmulps zmm0,zmm29,zmm0
  a5a6b8:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a5a6bf:	62 92 75 48 b8 c6    	vfmadd231ps zmm0,zmm1,zmm30
  a5a6c5:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a5a6cc:	62 d1 54 40 59 d6    	vmulps zmm2,zmm21,zmm14
  a5a6d2:	62 51 6c 40 59 f6    	vmulps zmm14,zmm18,zmm14
  a5a6d8:	62 f2 6d 40 bc d1    	vfnmadd231ps zmm2,zmm18,zmm1
  a5a6de:	62 32 75 48 b8 f5    	vfmadd231ps zmm14,zmm1,zmm21
  a5a6e4:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a5a6eb:	62 e1 7c 48 10 51 11 	vmovups zmm18,ZMMWORD PTR [rcx+0x440]
  a5a6f2:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0xc0]
  a5a6f9:	03 
  a5a6fa:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x280]
  a5a701:	0a 
  a5a702:	62 e1 5c 40 59 e9    	vmulps zmm21,zmm20,zmm1
  a5a708:	62 a2 55 48 bc ea    	vfnmadd231ps zmm21,zmm5,zmm18
  a5a70e:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a5a714:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a5a71b:	62 b2 6d 40 b8 ec    	vfmadd231ps zmm5,zmm18,zmm20
  a5a721:	62 e1 7c 48 10 51 05 	vmovups zmm18,ZMMWORD PTR [rcx+0x140]
  a5a728:	62 e1 7c 48 10 61 0a 	vmovups zmm20,ZMMWORD PTR [rcx+0x280]
  a5a72f:	62 52 45 40 7f e1    	vpermt2ps zmm12,zmm23,zmm9
  a5a735:	62 61 64 48 59 e1    	vmulps zmm28,zmm3,zmm1
  a5a73b:	62 22 1d 48 bc e2    	vfnmadd231ps zmm28,zmm12,zmm18
  a5a741:	62 71 1c 48 59 e1    	vmulps zmm12,zmm12,zmm1
  a5a747:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a5a74e:	62 72 6d 40 b8 e3    	vfmadd231ps zmm12,zmm18,zmm3
  a5a754:	62 f1 7c 48 10 59 16 	vmovups zmm3,ZMMWORD PTR [rcx+0x580]
  a5a75b:	62 71 7c 48 10 49 17 	vmovups zmm9,ZMMWORD PTR [rcx+0x5c0]
  a5a762:	62 62 45 40 7f 7c 24 	vpermt2ps zmm31,zmm23,ZMMWORD PTR [rsp+0x100]
  a5a769:	04 
  a5a76a:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x40]
  a5a771:	01 
  a5a772:	62 e1 7c 40 59 d3    	vmulps zmm18,zmm16,zmm3
  a5a778:	62 c2 05 48 bc d1    	vfnmadd231ps zmm18,zmm15,zmm9
  a5a77e:	62 f1 04 48 59 db    	vmulps zmm3,zmm15,zmm3
  a5a784:	62 11 7c 48 28 fa    	vmovaps zmm15,zmm26
  a5a78a:	62 61 2c 40 58 ee    	vaddps zmm29,zmm26,zmm6
  a5a790:	62 b2 35 48 b8 d8    	vfmadd231ps zmm3,zmm9,zmm16
  a5a796:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a5a79d:	02 
  a5a79e:	62 a1 34 48 59 c4    	vmulps zmm16,zmm9,zmm20
  a5a7a4:	62 e2 45 48 bc c1    	vfnmadd231ps zmm16,zmm7,zmm1
  a5a7aa:	62 01 74 40 58 f3    	vaddps zmm30,zmm17,zmm27
  a5a7b0:	62 b1 44 48 59 fc    	vmulps zmm7,zmm7,zmm20
  a5a7b6:	62 a1 14 48 58 e3    	vaddps zmm20,zmm13,zmm19
  a5a7bc:	62 d2 75 48 b8 f9    	vfmadd231ps zmm7,zmm1,zmm9
  a5a7c2:	62 61 2c 48 58 d2    	vaddps zmm26,zmm10,zmm2
  a5a7c8:	62 b1 6c 40 58 c8    	vaddps zmm1,zmm18,zmm16
  a5a7ce:	62 31 14 48 5c cb    	vsubps zmm9,zmm13,zmm19
  a5a7d4:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a5a7db:	01 
  a5a7dc:	62 51 24 48 58 ee    	vaddps zmm13,zmm11,zmm14
  a5a7e2:	62 c1 24 48 5c fe    	vsubps zmm23,zmm11,zmm14
  a5a7e8:	62 e1 64 48 58 df    	vaddps zmm19,zmm3,zmm7
  a5a7ee:	62 71 64 48 5c df    	vsubps zmm11,zmm3,zmm7
  a5a7f4:	62 61 04 48 5c c6    	vsubps zmm24,zmm15,zmm6
  a5a7fa:	62 91 54 40 58 dc    	vaddps zmm3,zmm21,zmm28
  a5a800:	62 f1 34 40 58 f4    	vaddps zmm6,zmm25,zmm4
  a5a806:	62 61 34 40 5c cc    	vsubps zmm25,zmm25,zmm4
  a5a80c:	62 91 4c 40 58 e7    	vaddps zmm4,zmm22,zmm31
  a5a812:	62 11 54 40 5c cc    	vsubps zmm9,zmm21,zmm28
  a5a818:	62 d1 7c 48 58 f8    	vaddps zmm7,zmm0,zmm8
  a5a81e:	62 51 7c 48 5c f0    	vsubps zmm14,zmm0,zmm8
  a5a824:	62 51 6c 48 5c d2    	vsubps zmm10,zmm2,zmm10
  a5a82a:	62 91 14 40 58 c6    	vaddps zmm0,zmm29,zmm30
  a5a830:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a5a837:	02 
  a5a838:	62 d1 54 48 58 c4    	vaddps zmm0,zmm5,zmm12
  a5a83e:	62 51 54 48 5c fc    	vsubps zmm15,zmm5,zmm12
  a5a844:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a5a84a:	62 01 5c 40 58 e2    	vaddps zmm28,zmm20,zmm26
  a5a850:	62 e1 4c 48 58 ec    	vaddps zmm21,zmm6,zmm4
  a5a856:	62 b1 04 40 5c ee    	vsubps zmm5,zmm31,zmm22
  a5a85c:	62 21 24 40 5c d9    	vsubps zmm27,zmm27,zmm17
  a5a862:	62 e1 64 48 58 f1    	vaddps zmm22,zmm3,zmm1
  a5a868:	62 51 44 48 58 e5    	vaddps zmm12,zmm7,zmm13
  a5a86e:	62 81 5c 40 5c e2    	vsubps zmm20,zmm20,zmm26
  a5a874:	62 81 14 40 5c ce    	vsubps zmm17,zmm29,zmm30
  a5a87a:	62 21 7c 48 58 d3    	vaddps zmm26,zmm0,zmm19
  a5a880:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a5a887:	01 
  a5a888:	62 21 3c 48 58 ef    	vaddps zmm29,zmm8,zmm23
  a5a88e:	62 d1 44 48 5c fd    	vsubps zmm7,zmm7,zmm13
  a5a894:	62 11 3c 40 58 e9    	vaddps zmm13,zmm24,zmm25
  a5a89a:	62 61 64 48 5c f1    	vsubps zmm30,zmm3,zmm1
  a5a8a0:	62 d1 0c 48 58 d2    	vaddps zmm2,zmm14,zmm10
  a5a8a6:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a5a8ac:	62 f1 5c 48 5c f6    	vsubps zmm6,zmm4,zmm6
  a5a8b2:	62 a1 1c 40 58 d6    	vaddps zmm18,zmm28,zmm22
  a5a8b8:	62 b1 04 48 58 d8    	vaddps zmm3,zmm15,zmm16
  a5a8be:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a5a8c4:	62 f1 6c 48 5c e3    	vsubps zmm4,zmm2,zmm3
  a5a8ca:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a5a8d0:	62 d1 34 48 58 db    	vaddps zmm3,zmm9,zmm11
  a5a8d6:	62 a1 3c 48 5c ff    	vsubps zmm23,zmm8,zmm23
  a5a8dc:	62 71 14 40 58 c3    	vaddps zmm8,zmm29,zmm3
  a5a8e2:	62 61 14 40 5c cb    	vsubps zmm25,zmm29,zmm3
  a5a8e8:	62 91 1c 48 58 da    	vaddps zmm3,zmm12,zmm26
  a5a8ee:	62 51 34 48 5c db    	vsubps zmm11,zmm9,zmm11
  a5a8f4:	62 31 44 48 5c cb    	vsubps zmm9,zmm7,zmm19
  a5a8fa:	62 b1 44 48 58 cb    	vaddps zmm1,zmm7,zmm19
  a5a900:	62 e1 24 40 58 dd    	vaddps zmm19,zmm27,zmm5
  a5a906:	62 91 54 48 5c eb    	vsubps zmm5,zmm5,zmm27
  a5a90c:	62 91 5c 40 58 fe    	vaddps zmm7,zmm20,zmm30
  a5a912:	62 81 5c 40 5c e6    	vsubps zmm20,zmm20,zmm30
  a5a918:	62 62 7d 48 18 3d 3e 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff61ab3e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5a91f:	ab 61 ff 
  a5a922:	62 01 7c 48 28 df    	vmovaps zmm27,zmm31
  a5a928:	62 42 3d 48 ac dd    	vfnmadd213ps zmm27,zmm8,zmm13
  a5a92e:	62 51 0c 48 5c d2    	vsubps zmm10,zmm14,zmm10
  a5a934:	62 f2 7d 48 18 05 96 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff61a996]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5a93b:	a9 61 ff 
  a5a93e:	62 71 5c 48 59 f0    	vmulps zmm14,zmm4,zmm0
  a5a944:	62 01 7c 48 28 ef    	vmovaps zmm29,zmm31
  a5a94a:	62 22 6d 48 ac eb    	vfnmadd213ps zmm29,zmm2,zmm19
  a5a950:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a5a956:	62 e1 34 40 59 c0    	vmulps zmm16,zmm25,zmm0
  a5a95c:	62 01 7c 48 28 cf    	vmovaps zmm25,zmm31
  a5a962:	62 11 1c 48 5c e2    	vsubps zmm12,zmm12,zmm26
  a5a968:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a5a96e:	62 22 45 48 ac c9    	vfnmadd213ps zmm25,zmm7,zmm17
  a5a974:	62 62 75 48 ac d6    	vfnmadd213ps zmm26,zmm1,zmm6
  a5a97a:	62 a1 1c 40 5c f6    	vsubps zmm22,zmm28,zmm22
  a5a980:	62 41 44 40 58 e3    	vaddps zmm28,zmm23,zmm11
  a5a986:	62 f1 74 40 58 e7    	vaddps zmm4,zmm17,zmm7
  a5a98c:	62 81 3c 40 58 cc    	vaddps zmm17,zmm24,zmm28
  a5a992:	62 f1 4c 48 58 f9    	vaddps zmm7,zmm6,zmm1
  a5a998:	62 02 05 40 ac e0    	vfnmadd213ps zmm28,zmm31,zmm24
  a5a99e:	62 d1 24 40 58 f6    	vaddps zmm6,zmm27,zmm14
  a5a9a4:	62 41 2c 48 58 c7    	vaddps zmm24,zmm10,zmm15
  a5a9aa:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a5a9b0:	62 01 54 48 58 f0    	vaddps zmm30,zmm5,zmm24
  a5a9b6:	62 d1 24 40 5c ce    	vsubps zmm1,zmm27,zmm14
  a5a9bc:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a5a9c2:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x80]
  a5a9c9:	02 
  a5a9ca:	62 52 6d 40 ac f7    	vfnmadd213ps zmm14,zmm18,zmm15
  a5a9d0:	62 62 05 40 ac c5    	vfnmadd213ps zmm24,zmm31,zmm5
  a5a9d6:	62 21 14 40 5c d8    	vsubps zmm27,zmm29,zmm16
  a5a9dc:	62 f1 1c 48 59 e8    	vmulps zmm5,zmm12,zmm0
  a5a9e2:	62 51 44 40 5c e3    	vsubps zmm12,zmm23,zmm11
  a5a9e8:	62 e1 0c 48 58 fd    	vaddps zmm23,zmm14,zmm5
  a5a9ee:	62 21 14 40 58 e8    	vaddps zmm29,zmm29,zmm16
  a5a9f4:	62 11 7c 48 28 df    	vmovaps zmm11,zmm31
  a5a9fa:	62 32 65 48 ac dd    	vfnmadd213ps zmm11,zmm3,zmm21
  a5aa00:	62 e1 4c 40 59 c0    	vmulps zmm16,zmm22,zmm0
  a5aa06:	62 61 0c 48 5c fd    	vsubps zmm31,zmm14,zmm5
  a5aa0c:	62 a1 24 48 5c f0    	vsubps zmm22,zmm11,zmm16
  a5aa12:	62 a1 24 48 58 c0    	vaddps zmm16,zmm11,zmm16
  a5aa18:	62 51 14 48 58 d8    	vaddps zmm11,zmm13,zmm8
  a5aa1e:	62 f1 34 48 59 e8    	vmulps zmm5,zmm9,zmm0
  a5aa24:	62 71 64 40 58 f2    	vaddps zmm14,zmm19,zmm2
  a5aa2a:	62 f1 34 40 5c d5    	vsubps zmm2,zmm25,zmm5
  a5aa30:	62 71 5c 40 59 c0    	vmulps zmm8,zmm20,zmm0
  a5aa36:	62 71 34 40 58 cd    	vaddps zmm9,zmm25,zmm5
  a5aa3c:	62 51 2c 40 58 e8    	vaddps zmm13,zmm26,zmm8
  a5aa42:	62 f1 2c 48 59 e8    	vmulps zmm5,zmm10,zmm0
  a5aa48:	62 51 2c 40 5c d0    	vsubps zmm10,zmm26,zmm8
  a5aa4e:	62 e1 1c 40 58 dd    	vaddps zmm19,zmm28,zmm5
  a5aa54:	62 71 1c 48 59 c0    	vmulps zmm8,zmm12,zmm0
  a5aa5a:	62 f1 1c 40 5c ed    	vsubps zmm5,zmm28,zmm5
  a5aa60:	62 51 3c 40 5c e0    	vsubps zmm12,zmm24,zmm8
  a5aa66:	62 51 3c 40 58 c0    	vaddps zmm8,zmm24,zmm8
  a5aa6c:	62 b1 04 48 58 c2    	vaddps zmm0,zmm15,zmm18
  a5aa72:	62 f1 54 40 58 db    	vaddps zmm3,zmm21,zmm3
  a5aa78:	62 b3 7d 48 19 c2 02 	vextractf32x4 xmm18,zmm0,0x2
  a5aa7f:	62 e1 7c 48 28 25 77 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff638877]        # 93300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x207b0>
  a5aa86:	88 63 ff 
  a5aa89:	62 f2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm3
  a5aa8f:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a5aa96:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a5aa9d:	62 f1 6c 00 14 c0    	vunpcklps xmm0,xmm18,xmm0
  a5aaa3:	c5 f8 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm0
  a5aaa9:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a5aab0:	62 92 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm27
  a5aab6:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm6
  a5aabd:	50 00 00 00 
  a5aac1:	62 63 7d 48 19 db 02 	vextractf32x4 xmm3,zmm27,0x2
  a5aac8:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a5aacc:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  a5aad3:	00 00 
  a5aad5:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a5aadc:	62 d2 5d 40 7f d5    	vpermt2ps zmm2,zmm20,zmm13
  a5aae2:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm2
  a5aae9:	a0 00 00 00 
  a5aaed:	62 73 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm13,0x2
  a5aaf4:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5aaf8:	c5 f8 11 84 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm0
  a5aaff:	00 00 
  a5ab01:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a5ab08:	62 82 5d 40 7f ce    	vpermt2ps zmm17,zmm20,zmm30
  a5ab0e:	62 e1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm17
  a5ab15:	f0 00 00 00 
  a5ab19:	62 63 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm30,0x2
  a5ab20:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5ab24:	c5 f8 11 84 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm0
  a5ab2b:	00 00 
  a5ab2d:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a5ab34:	62 a2 5d 40 7f fe    	vpermt2ps zmm23,zmm20,zmm22
  a5ab3a:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm23
  a5ab41:	05 
  a5ab42:	62 e3 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm22,0x2
  a5ab49:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a5ab4d:	c5 f8 11 84 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm0
  a5ab54:	00 00 
  a5ab56:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a5ab5d:	62 92 5d 40 7f cd    	vpermt2ps zmm1,zmm20,zmm29
  a5ab63:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm1
  a5ab6a:	90 01 00 00 
  a5ab6e:	62 63 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm29,0x2
  a5ab75:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5ab79:	c5 f8 11 84 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm0
  a5ab80:	00 00 
  a5ab82:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a5ab89:	62 f2 5d 40 7f e7    	vpermt2ps zmm4,zmm20,zmm7
  a5ab8f:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm4
  a5ab96:	e0 01 00 00 
  a5ab9a:	62 f3 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm7,0x2
  a5aba1:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5aba5:	c5 f8 11 84 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm0
  a5abac:	00 00 
  a5abae:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a5abb5:	62 c2 5d 40 7f dc    	vpermt2ps zmm19,zmm20,zmm12
  a5abbb:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm19
  a5abc2:	30 02 00 00 
  a5abc6:	62 73 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm12,0x2
  a5abcd:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5abd1:	c5 f8 11 84 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm0
  a5abd8:	00 00 
  a5abda:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a5abe1:	62 22 5d 40 7f f8    	vpermt2ps zmm31,zmm20,zmm16
  a5abe7:	62 61 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm31
  a5abee:	0a 
  a5abef:	62 e3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm16,0x2
  a5abf6:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5abfa:	c5 f8 11 84 16 c0 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x2c0],xmm0
  a5ac01:	00 00 
  a5ac03:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a5ac0a:	62 52 5d 40 7f de    	vpermt2ps zmm11,zmm20,zmm14
  a5ac10:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm11
  a5ac17:	d0 02 00 00 
  a5ac1b:	62 73 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm14,0x2
  a5ac22:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5ac26:	c5 f8 11 84 16 10 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x310],xmm0
  a5ac2d:	00 00 
  a5ac2f:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a5ac36:	62 52 5d 40 7f ca    	vpermt2ps zmm9,zmm20,zmm10
  a5ac3c:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x320],zmm9
  a5ac43:	20 03 00 00 
  a5ac47:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a5ac4e:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5ac52:	c5 f8 11 84 16 60 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x360],xmm0
  a5ac59:	00 00 
  a5ac5b:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a5ac62:	62 d2 5d 40 7f e8    	vpermt2ps zmm5,zmm20,zmm8
  a5ac68:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x370],zmm5
  a5ac6f:	70 03 00 00 
  a5ac73:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a5ac7a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a5ac7e:	c5 f8 11 84 16 b0 03 	vmovups XMMWORD PTR [rsi+rdx*1+0x3b0],xmm0
  a5ac85:	00 00 
  a5ac87:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a5ac8e:	48 39 d0             	cmp    rax,rdx
  a5ac91:	0f 85 19 f0 ff ff    	jne    a59cb0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a5ac97:	48 89 ec             	mov    rsp,rbp
  a5ac9a:	5d                   	pop    rbp
  a5ac9b:	c5 f8 77             	vzeroupper
  a5ac9e:	c3                   	ret
