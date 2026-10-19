
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a07b80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a07b80:	55                   	push   rbp
  a07b81:	48 89 e5             	mov    rbp,rsp
  a07b84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a07b88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a07b8f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6bf3e7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a07b96:	f3 6b ff 
  a07b99:	62 f1 7c 48 28 0d 5d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6bf35d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a07ba0:	f3 6b ff 
  a07ba3:	62 f1 7c 48 28 15 53 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6bf253]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a07baa:	f2 6b ff 
  a07bad:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6bf289]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a07bb4:	f2 6b ff 
  a07bb7:	48 c1 e2 06          	shl    rdx,0x6
  a07bbb:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a07bbf:	31 d2                	xor    edx,edx
  a07bc1:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a07bc6:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a07bcb:	62 f1 7c 48 28 25 ab 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6869ab]        # 8e580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ba30>
  a07bd2:	69 68 ff 
  a07bd5:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a07bd9:	62 f2 7d 48 18 35 7d 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66d87d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a07be0:	d8 66 ff 
  a07be3:	62 f2 7d 48 18 3d e7 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff66d6e7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a07bea:	d6 66 ff 
  a07bed:	62 71 7c 48 28 05 c9 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6869c9]        # 8e5c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ba70>
  a07bf4:	69 68 ff 
  a07bf7:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a07bfc:	62 52 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm9
  a07c02:	62 71 7c 48 28 15 f4 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6869f4]        # 8e600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bab0>
  a07c09:	69 68 ff 
  a07c0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a07c10:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a07c15:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a07c1a:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a07c1f:	c5 7c 10 74 17 20    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x20]
  a07c25:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x40]
  a07c2c:	02 
  a07c2d:	c5 7c 10 6c 17 60    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  a07c33:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a07c39:	62 72 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm5
  a07c3f:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a07c45:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a07c4b:	62 e2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm5
  a07c51:	62 72 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm5
  a07c57:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a07c5d:	62 e2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm5
  a07c63:	62 e2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm5
  a07c69:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a07c6f:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a07c75:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x80]
  a07c7c:	04 
  a07c7d:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a07c83:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a07c89:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a07c8f:	62 e1 7c 28 10 6c 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0xa0]
  a07c96:	05 
  a07c97:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a07c9d:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a07ca3:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a07ca9:	62 a1 7c 40 58 fb    	vaddps zmm23,zmm16,zmm19
  a07caf:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a07cb5:	62 41 54 40 58 ce    	vaddps zmm25,zmm21,zmm14
  a07cbb:	62 32 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm23
  a07cc1:	62 a1 6c 40 58 fc    	vaddps zmm23,zmm18,zmm20
  a07cc7:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a07ccd:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a07cd3:	62 12 4d 48 bc e9    	vfnmadd231ps zmm13,zmm6,zmm25
  a07cd9:	62 21 4c 40 58 c9    	vaddps zmm25,zmm22,zmm17
  a07cdf:	62 a1 4c 40 5c c9    	vsubps zmm17,zmm22,zmm17
  a07ce5:	62 a1 24 48 58 f7    	vaddps zmm22,zmm11,zmm23
  a07ceb:	62 32 4d 48 bc df    	vfnmadd231ps zmm11,zmm6,zmm23
  a07cf1:	62 72 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm5
  a07cf7:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a07cfd:	62 81 04 48 58 d9    	vaddps zmm19,zmm15,zmm25
  a07d03:	62 12 4d 48 bc f9    	vfnmadd231ps zmm15,zmm6,zmm25
  a07d09:	62 e1 6c 40 59 d7    	vmulps zmm18,zmm18,zmm7
  a07d0f:	62 51 54 40 5c f6    	vsubps zmm14,zmm21,zmm14
  a07d15:	62 a1 1c 48 58 ea    	vaddps zmm21,zmm12,zmm18
  a07d1b:	62 e1 74 40 59 cf    	vmulps zmm17,zmm17,zmm7
  a07d21:	62 31 1c 48 5c e2    	vsubps zmm12,zmm12,zmm18
  a07d27:	62 a1 14 48 58 d1    	vaddps zmm18,zmm13,zmm17
  a07d2d:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a07d33:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a07d39:	62 a1 24 48 5c c8    	vsubps zmm17,zmm11,zmm16
  a07d3f:	62 71 0c 48 59 f7    	vmulps zmm14,zmm14,zmm7
  a07d45:	62 51 7c 40 58 db    	vaddps zmm11,zmm16,zmm11
  a07d4b:	62 c1 04 48 5c c6    	vsubps zmm16,zmm15,zmm14
  a07d51:	62 51 0c 48 58 f7    	vaddps zmm14,zmm14,zmm15
  a07d57:	62 31 3c 40 58 fc    	vaddps zmm15,zmm24,zmm20
  a07d5d:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a07d63:	62 a1 4c 40 58 fb    	vaddps zmm23,zmm22,zmm19
  a07d69:	62 a1 4c 40 5c db    	vsubps zmm19,zmm22,zmm19
  a07d6f:	62 a1 54 40 5c f2    	vsubps zmm22,zmm21,zmm18
  a07d75:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a07d7b:	62 a1 74 40 5c e8    	vsubps zmm21,zmm17,zmm16
  a07d81:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a07d87:	62 c1 1c 48 58 cd    	vaddps zmm17,zmm12,zmm13
  a07d8d:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a07d93:	62 41 24 48 58 c6    	vaddps zmm24,zmm11,zmm14
  a07d99:	62 41 24 48 5c ce    	vsubps zmm25,zmm11,zmm14
  a07d9f:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a07da5:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a07dab:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a07db1:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a07db7:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a07dbd:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a07dc3:	62 32 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm18
  a07dc9:	62 c2 75 48 7f f4    	vpermt2ps zmm22,zmm1,zmm12
  a07dcf:	62 c2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm9
  a07dd5:	62 c2 75 48 7f e1    	vpermt2ps zmm20,zmm1,zmm9
  a07ddb:	62 31 85 48 14 f1    	vunpcklpd zmm14,zmm15,zmm17
  a07de1:	62 31 85 48 15 e9    	vunpckhpd zmm13,zmm15,zmm17
  a07de7:	62 31 cd 40 14 e4    	vunpcklpd zmm12,zmm22,zmm20
  a07ded:	62 31 cd 40 15 fc    	vunpckhpd zmm15,zmm22,zmm20
  a07df3:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a07df9:	62 52 65 48 7f f4    	vpermt2ps zmm14,zmm3,zmm12
  a07dff:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a07e05:	62 c2 6d 48 7f cf    	vpermt2ps zmm17,zmm2,zmm15
  a07e0b:	62 52 65 48 7f ef    	vpermt2ps zmm13,zmm3,zmm15
  a07e11:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a07e17:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a07e1d:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a07e23:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a07e29:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a07e2f:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a07e35:	62 a2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm16
  a07e3b:	62 82 75 48 7f e9    	vpermt2ps zmm21,zmm1,zmm25
  a07e41:	62 42 75 48 7f c1    	vpermt2ps zmm24,zmm1,zmm9
  a07e47:	62 c2 75 48 7f d9    	vpermt2ps zmm19,zmm1,zmm9
  a07e4d:	62 11 c5 40 14 f8    	vunpcklpd zmm15,zmm23,zmm24
  a07e53:	62 81 c5 40 15 c0    	vunpckhpd zmm16,zmm23,zmm24
  a07e59:	62 a1 d5 40 14 d3    	vunpcklpd zmm18,zmm21,zmm19
  a07e5f:	62 a1 d5 40 15 db    	vunpckhpd zmm19,zmm21,zmm19
  a07e65:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a07e6b:	62 32 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm18
  a07e71:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a07e77:	62 a2 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm19
  a07e7d:	62 a2 65 48 7f c3    	vpermt2ps zmm16,zmm3,zmm19
  a07e83:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a07e8a:	62 e1 7c 48 10 71 05 	vmovups zmm22,ZMMWORD PTR [rcx+0x140]
  a07e91:	62 a1 74 40 59 fb    	vmulps zmm23,zmm17,zmm19
  a07e97:	62 a2 55 40 bc fe    	vfnmadd231ps zmm23,zmm21,zmm22
  a07e9d:	62 a1 54 40 59 db    	vmulps zmm19,zmm21,zmm19
  a07ea3:	62 e1 7c 48 10 69 02 	vmovups zmm21,ZMMWORD PTR [rcx+0x80]
  a07eaa:	62 a2 4d 40 b8 d9    	vfmadd231ps zmm19,zmm22,zmm17
  a07eb0:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a07eb7:	62 a1 0c 48 59 f5    	vmulps zmm22,zmm14,zmm21
  a07ebd:	62 a2 05 48 bc f1    	vfnmadd231ps zmm22,zmm15,zmm17
  a07ec3:	62 31 04 48 59 fd    	vmulps zmm15,zmm15,zmm21
  a07ec9:	62 e1 7c 48 10 69 06 	vmovups zmm21,ZMMWORD PTR [rcx+0x180]
  a07ed0:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a07ed6:	62 71 7c 48 10 71 07 	vmovups zmm14,ZMMWORD PTR [rcx+0x1c0]
  a07edd:	62 a1 14 48 59 cd    	vmulps zmm17,zmm13,zmm21
  a07ee3:	62 c2 7d 40 bc ce    	vfnmadd231ps zmm17,zmm16,zmm14
  a07ee9:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a07eef:	62 c2 0d 48 b8 c5    	vfmadd231ps zmm16,zmm14,zmm13
  a07ef5:	62 52 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm12
  a07efb:	62 a2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm18
  a07f01:	62 31 24 48 58 e7    	vaddps zmm12,zmm11,zmm23
  a07f07:	62 31 24 48 5c df    	vsubps zmm11,zmm11,zmm23
  a07f0d:	62 31 04 48 58 e8    	vaddps zmm13,zmm15,zmm16
  a07f13:	62 31 04 48 5c f0    	vsubps zmm14,zmm15,zmm16
  a07f19:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a07f1f:	62 a1 5c 40 5c c3    	vsubps zmm16,zmm20,zmm19
  a07f25:	62 a1 4c 40 58 d1    	vaddps zmm18,zmm22,zmm17
  a07f2b:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a07f31:	62 c1 24 48 58 de    	vaddps zmm19,zmm11,zmm14
  a07f37:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a07f3d:	62 31 7c 40 58 f1    	vaddps zmm14,zmm16,zmm17
  a07f43:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a07f49:	62 c1 04 48 5c cd    	vsubps zmm17,zmm15,zmm13
  a07f4f:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a07f55:	62 31 1c 48 5c fa    	vsubps zmm15,zmm12,zmm18
  a07f5b:	62 31 1c 48 58 e2    	vaddps zmm12,zmm12,zmm18
  a07f61:	62 52 2d 48 7f ec    	vpermt2ps zmm13,zmm10,zmm12
  a07f67:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm13,0x2
  a07f6e:	02 02 
  a07f70:	c5 7c 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm13
  a07f75:	62 32 2d 48 7f f3    	vpermt2ps zmm14,zmm10,zmm19
  a07f7b:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm14,0x2
  a07f82:	05 02 
  a07f84:	c5 7c 11 74 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm14
  a07f8a:	62 c2 2d 48 7f cf    	vpermt2ps zmm17,zmm10,zmm15
  a07f90:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm17,0x2
  a07f97:	08 02 
  a07f99:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm17
  a07fa0:	03 
  a07fa1:	62 c2 2d 48 7f c3    	vpermt2ps zmm16,zmm10,zmm11
  a07fa7:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  a07fae:	0b 02 
  a07fb0:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  a07fb7:	90 00 00 00 
  a07fbb:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a07fc2:	48 39 d0             	cmp    rax,rdx
  a07fc5:	0f 85 45 fc ff ff    	jne    a07c10 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a07fcb:	48 89 ec             	mov    rsp,rbp
  a07fce:	5d                   	pop    rbp
  a07fcf:	c5 f8 77             	vzeroupper
  a07fd2:	c3                   	ret
