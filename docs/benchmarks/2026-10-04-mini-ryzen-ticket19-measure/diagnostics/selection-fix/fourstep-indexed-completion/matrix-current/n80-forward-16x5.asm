
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad9e40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad9e40:	55                   	push   rbp
  ad9e41:	48 89 e5             	mov    rbp,rsp
  ad9e44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ad9e48:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ad9e4f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  ad9e56:	00 
  ad9e57:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  ad9e5e:	00 
  ad9e5f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  ad9e66:	00 
  ad9e67:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  ad9e6e:	00 
  ad9e6f:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  ad9e76:	00 
  ad9e77:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  ad9e7e:	00 
  ad9e7f:	31 c0                	xor    eax,eax
  ad9e81:	c4 e2 7d 19 35 96 af 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff59af96]        # 74e20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22d0>
  ad9e88:	59 ff 
  ad9e8a:	c4 e2 7d 18 3d 09 b5 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff59b509]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad9e91:	59 ff 
  ad9e93:	c4 62 7d 19 05 54 ac 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff59ac54]        # 74af0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa0>
  ad9e9a:	59 ff 
  ad9e9c:	c4 62 7d 18 0d d7 b5 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff59b5d7]        # 7547c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x292c>
  ad9ea3:	59 ff 
  ad9ea5:	48 89 f9             	mov    rcx,rdi
  ad9ea8:	45 31 c0             	xor    r8d,r8d
  ad9eab:	eb 61                	jmp    ad9f0e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  ad9ead:	0f 1f 00             	nop    DWORD PTR [rax]
  ad9eb0:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  ad9eb6:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  ad9ebc:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  ad9ec3:	03 
  ad9ec4:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  ad9ecb:	02 
  ad9ecc:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  ad9ed1:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  ad9ed7:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  ad9edd:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  ad9ee3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  ad9ee8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  ad9eed:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  ad9ef3:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  ad9ef9:	48 83 c0 40          	add    rax,0x40
  ad9efd:	48 83 c1 20          	add    rcx,0x20
  ad9f01:	41 f6 c0 01          	test   r8b,0x1
  ad9f05:	41 b0 01             	mov    r8b,0x1
  ad9f08:	0f 85 e5 04 00 00    	jne    ada3f3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  ad9f0e:	48 85 c0             	test   rax,rax
  ad9f11:	74 7d                	je     ad9f90 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  ad9f13:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  ad9f17:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  ad9f1c:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  ad9f21:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  ad9f26:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  ad9f2d:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  ad9f34:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  ad9f3b:	00 
  ad9f3c:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  ad9f43:	00 
  ad9f44:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  ad9f4b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  ad9f52:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  ad9f59:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  ad9f60:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  ad9f67:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  ad9f6e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  ad9f75:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  ad9f7c:	e9 8d 00 00 00       	jmp    ada00e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  ad9f81:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ad9f88:	0f 1f 84 00 00 00 00 
  ad9f8f:	00 
  ad9f90:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  ad9f94:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  ad9f99:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  ad9fa0:	00 
  ad9fa1:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  ad9fa6:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  ad9fab:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  ad9fb2:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  ad9fb9:	00 00 00 
  ad9fbc:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  ad9fc3:	00 
  ad9fc4:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  ad9fcb:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  ad9fd2:	01 00 00 
  ad9fd5:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  ad9fdc:	01 00 00 
  ad9fdf:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  ad9fe6:	01 00 00 
  ad9fe9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  ad9ff0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  ad9ff7:	02 00 00 
  ad9ffa:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  ada001:	02 00 00 
  ada004:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  ada00b:	02 00 00 
  ada00e:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  ada014:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  ada01a:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  ada020:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  ada026:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ada02c:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  ada032:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  ada038:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  ada03e:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  ada044:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ada04a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  ada050:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  ada056:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  ada05c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  ada062:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ada069:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  ada06f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  ada075:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  ada07b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  ada081:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  ada087:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  ada08d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  ada093:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  ada099:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  ada09f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  ada0a5:	c5 7c 28 de          	vmovaps ymm11,ymm6
  ada0a9:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  ada0af:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  ada0b5:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  ada0bb:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  ada0c1:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  ada0c7:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ada0cd:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  ada0d3:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  ada0d9:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ada0df:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ada0e5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  ada0eb:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  ada0f0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  ada0f6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  ada0fc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  ada103:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  ada109:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  ada10f:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  ada116:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  ada11c:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  ada122:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  ada129:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  ada12f:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  ada135:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  ada13c:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  ada142:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  ada148:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  ada14f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  ada155:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  ada15b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  ada161:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  ada167:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  ada16d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  ada173:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  ada179:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ada17f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  ada185:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  ada18b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  ada191:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  ada197:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  ada19c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  ada1a3:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ada1a9:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  ada1af:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  ada1b5:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  ada1bb:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  ada1c1:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  ada1c7:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  ada1cd:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  ada1d2:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  ada1d7:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  ada1dd:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  ada1e3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ada1e9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  ada1ef:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  ada1f5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  ada1fb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  ada201:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  ada207:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  ada20d:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  ada213:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ada21a:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ada220:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  ada226:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  ada22c:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  ada232:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ada238:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  ada23e:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ada244:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  ada24b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  ada251:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  ada257:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  ada25d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  ada263:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  ada269:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  ada26f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  ada275:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  ada27c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ada282:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  ada288:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  ada28e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  ada294:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  ada29a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  ada2a0:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  ada2a6:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  ada2ad:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  ada2b4:	48 83 f8 40          	cmp    rax,0x40
  ada2b8:	0f 84 f2 fb ff ff    	je     ad9eb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  ada2be:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  ada2c4:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  ada2ca:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  ada2d1:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  ada2d8:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  ada2df:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  ada2e6:	04 
  ada2e7:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  ada2ee:	08 
  ada2ef:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  ada2f6:	0c 
  ada2f7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  ada2fd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  ada303:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  ada30a:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  ada311:	01 
  ada312:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  ada318:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  ada31e:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  ada325:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  ada32c:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  ada333:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  ada33a:	05 
  ada33b:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  ada342:	09 
  ada343:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  ada34a:	0d 
  ada34b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  ada351:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  ada357:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  ada35e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  ada365:	02 
  ada366:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  ada36b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  ada371:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  ada378:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  ada37f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  ada385:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  ada38c:	00 00 
  ada38e:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  ada395:	0a 
  ada396:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  ada39d:	0e 
  ada39e:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  ada3a3:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  ada3a8:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  ada3af:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  ada3b6:	03 
  ada3b7:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  ada3bc:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  ada3c1:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  ada3c7:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  ada3cd:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ada3d3:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  ada3da:	00 00 
  ada3dc:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  ada3e3:	00 00 
  ada3e5:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  ada3ec:	00 00 
  ada3ee:	e9 06 fb ff ff       	jmp    ad9ef9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  ada3f3:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  ada3fa:	00 00 
  ada3fc:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  ada403:	00 00 
  ada405:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  ada409:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  ada40e:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  ada414:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  ada419:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  ada41e:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  ada424:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  ada42b:	00 00 
  ada42d:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  ada432:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  ada439:	00 
  ada43a:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  ada441:	00 00 
  ada443:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  ada44a:	00 00 
  ada44c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  ada451:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  ada458:	00 
  ada459:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  ada460:	00 00 
  ada462:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  ada467:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  ada46b:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  ada46f:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  ada473:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  ada477:	c4 e2 7d 18 0d 68 b2 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff59b268]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ada47e:	59 ff 
  ada480:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  ada484:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  ada489:	c4 e2 7d 18 05 8a ae 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff59ae8a]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27cc>
  ada490:	59 ff 
  ada492:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  ada497:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  ada49b:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  ada4a0:	c4 e2 7d 18 15 f7 ae 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff59aef7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ada4a7:	59 ff 
  ada4a9:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  ada4ae:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  ada4b2:	c4 e2 7d 18 1d 9d b2 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff59b29d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ada4b9:	59 ff 
  ada4bb:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  ada4c0:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  ada4c5:	c5 fc 28 25 f3 e0 59 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff59e0f3]        # 785c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a70>
  ada4cc:	ff 
  ada4cd:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ada4d1:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ada4d5:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  ada4da:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  ada4e0:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  ada4e4:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  ada4e8:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ada4ec:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  ada4f1:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  ada4f6:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  ada4fb:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  ada500:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  ada504:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  ada50b:	00 
  ada50c:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  ada513:	00 
  ada514:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  ada51b:	00 
  ada51c:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  ada523:	00 
  ada524:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  ada52a:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ada531:	00 00 
  ada533:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  ada53a:	00 00 
  ada53c:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  ada543:	00 
  ada544:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ada549:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  ada550:	00 00 
  ada552:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ada557:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  ada55e:	00 
  ada55f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  ada566:	00 00 
  ada568:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ada56f:	00 00 
  ada571:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ada576:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  ada57d:	00 
  ada57e:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  ada585:	00 00 
  ada587:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  ada58e:	00 00 
  ada590:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ada596:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  ada59d:	00 
  ada59e:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  ada5a5:	00 00 
  ada5a7:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ada5ac:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ada5b0:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ada5b5:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ada5b9:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ada5bd:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ada5c2:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ada5c7:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ada5cb:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ada5d0:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ada5d5:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  ada5d9:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  ada5de:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ada5e4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ada5e8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ada5ec:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  ada5f1:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  ada5f7:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ada5fb:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  ada600:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  ada604:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  ada608:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ada60c:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ada610:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  ada615:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  ada61a:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  ada621:	00 
  ada622:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  ada629:	00 
  ada62a:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  ada631:	00 
  ada632:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  ada639:	00 
  ada63a:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  ada640:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ada647:	00 00 
  ada649:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  ada650:	00 00 
  ada652:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  ada659:	00 00 
  ada65b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ada660:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  ada667:	00 
  ada668:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  ada66f:	00 00 
  ada671:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  ada678:	00 
  ada679:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ada67e:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  ada685:	00 00 
  ada687:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  ada68d:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  ada694:	00 
  ada695:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  ada69c:	00 00 
  ada69e:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  ada6a5:	00 00 
  ada6a7:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  ada6ac:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  ada6b3:	00 
  ada6b4:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  ada6bb:	00 00 
  ada6bd:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  ada6c1:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  ada6c6:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ada6ca:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  ada6cf:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  ada6d3:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  ada6d8:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  ada6dd:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ada6e1:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ada6e6:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ada6eb:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  ada6ef:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  ada6f4:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ada6fa:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ada6fe:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  ada702:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  ada707:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ada70c:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ada710:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  ada715:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ada719:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  ada71e:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ada722:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ada726:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  ada72b:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  ada730:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  ada737:	00 
  ada738:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  ada73f:	00 
  ada740:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  ada747:	00 
  ada748:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  ada74f:	00 
  ada750:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  ada756:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ada75d:	00 00 
  ada75f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  ada766:	00 00 
  ada768:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  ada76f:	00 
  ada770:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ada775:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  ada77c:	00 00 
  ada77e:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ada783:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  ada78a:	00 
  ada78b:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  ada792:	00 00 
  ada794:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ada79b:	00 00 
  ada79d:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ada7a2:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  ada7a9:	00 
  ada7aa:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  ada7b1:	00 00 
  ada7b3:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  ada7ba:	00 00 
  ada7bc:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ada7c2:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  ada7c9:	00 
  ada7ca:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  ada7d1:	00 00 
  ada7d3:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ada7d8:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ada7dc:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ada7e1:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ada7e5:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ada7e9:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ada7ee:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ada7f3:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  ada7f8:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  ada7fd:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ada801:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  ada806:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  ada80b:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  ada80f:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  ada813:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  ada818:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  ada81d:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  ada821:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  ada826:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ada82a:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  ada82e:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  ada832:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ada836:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  ada83a:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  ada83f:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  ada846:	00 
  ada847:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  ada84e:	00 
  ada84f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  ada856:	00 
  ada857:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  ada85e:	00 
  ada85f:	48 89 ec             	mov    rsp,rbp
  ada862:	5d                   	pop    rbp
  ada863:	c5 f8 77             	vzeroupper
  ada866:	c3                   	ret
  ada867:	cc                   	int3
  ada868:	cc                   	int3
  ada869:	cc                   	int3
  ada86a:	cc                   	int3
  ada86b:	cc                   	int3
  ada86c:	cc                   	int3
  ada86d:	cc                   	int3
  ada86e:	cc                   	int3
  ada86f:	cc                   	int3
  ada870:	cc                   	int3
  ada871:	cc                   	int3
  ada872:	cc                   	int3
  ada873:	cc                   	int3
  ada874:	cc                   	int3
  ada875:	cc                   	int3
  ada876:	cc                   	int3
  ada877:	cc                   	int3
  ada878:	cc                   	int3
  ada879:	cc                   	int3
  ada87a:	cc                   	int3
  ada87b:	cc                   	int3
  ada87c:	cc                   	int3
  ada87d:	cc                   	int3
  ada87e:	cc                   	int3
  ada87f:	cc                   	int3
