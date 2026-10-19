
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a46a00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a46a00:	55                   	push   rbp
  a46a01:	48 89 e5             	mov    rbp,rsp
  a46a04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a46a08:	48 81 ec 00 05 00 00 	sub    rsp,0x500
  a46a0f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff680567]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a46a16:	05 68 ff 
  a46a19:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68059d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a46a20:	05 68 ff 
  a46a23:	48 c1 e2 07          	shl    rdx,0x7
  a46a27:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a46a2b:	31 d2                	xor    edx,edx
  a46a2d:	4c 8d 84 24 80 04 00 	lea    r8,[rsp+0x480]
  a46a34:	00 
  a46a35:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a46a3a:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a46a3e:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a46a44:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a46a4b:	0e 
  a46a4c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a46a50:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a46a56:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a46a5d:	0d 
  a46a5e:	66 90                	xchg   ax,ax
  a46a60:	c6 84 24 80 04 00 00 	mov    BYTE PTR [rsp+0x480],0x0
  a46a67:	00 
  a46a68:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a46a6d:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a46a74:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  a46a7a:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a46a80:	62 71 7c 48 28 15 36 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff64b836]        # 922c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f770>
  a46a87:	b8 64 ff 
  a46a8a:	62 f2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm1
  a46a90:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x60]
  a46a97:	60 00 00 00 
  a46a9b:	c5 fc 10 94 17 a0 00 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0xa0]
  a46aa2:	00 00 
  a46aa4:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a46aaa:	62 71 7c 48 28 0d cc 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff64b7cc]        # 92280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f730>
  a46ab1:	b7 64 ff 
  a46ab4:	62 f2 35 48 7f d9    	vpermt2ps zmm3,zmm9,zmm1
  a46aba:	62 f2 2d 48 7f e2    	vpermt2ps zmm4,zmm10,zmm2
  a46ac0:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a46ac7:	03 
  a46ac8:	c5 fc 10 8c 17 00 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x100]
  a46acf:	00 00 
  a46ad1:	62 f2 35 48 7f ea    	vpermt2ps zmm5,zmm9,zmm2
  a46ad7:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a46add:	62 f2 2d 48 7f f1    	vpermt2ps zmm6,zmm10,zmm1
  a46ae3:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x120]
  a46aea:	20 01 00 00 
  a46aee:	62 f2 35 48 7f f9    	vpermt2ps zmm7,zmm9,zmm1
  a46af4:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  a46afb:	00 00 
  a46afd:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a46b03:	62 72 2d 48 7f c1    	vpermt2ps zmm8,zmm10,zmm1
  a46b09:	62 f2 35 48 7f d1    	vpermt2ps zmm2,zmm9,zmm1
  a46b0f:	62 71 7c 48 58 d6    	vaddps zmm10,zmm0,zmm6
  a46b15:	62 51 5c 48 58 d8    	vaddps zmm11,zmm4,zmm8
  a46b1b:	62 71 64 48 58 e7    	vaddps zmm12,zmm3,zmm7
  a46b21:	62 d1 2c 48 58 cb    	vaddps zmm1,zmm10,zmm11
  a46b27:	62 71 54 48 58 ea    	vaddps zmm13,zmm5,zmm2
  a46b2d:	62 f1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm6
  a46b33:	62 f1 54 48 5c ea    	vsubps zmm5,zmm5,zmm2
  a46b39:	62 c1 1c 48 58 ed    	vaddps zmm21,zmm12,zmm13
  a46b3f:	62 f1 7c 48 58 d5    	vaddps zmm2,zmm0,zmm5
  a46b45:	62 f1 64 48 5c df    	vsubps zmm3,zmm3,zmm7
  a46b4b:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a46b51:	62 61 5c 48 58 f3    	vaddps zmm30,zmm4,zmm3
  a46b57:	62 d1 2c 48 5c f3    	vsubps zmm6,zmm10,zmm11
  a46b5d:	62 41 1c 48 5c e5    	vsubps zmm28,zmm12,zmm13
  a46b63:	62 f1 7c 48 5c ed    	vsubps zmm5,zmm0,zmm5
  a46b69:	62 61 64 48 5c fc    	vsubps zmm31,zmm3,zmm4
  a46b6f:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a46b75:	62 71 7c 48 28 3d 01 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff680401]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a46b7c:	04 68 ff 
  a46b7f:	62 a1 44 00 57 ff    	vxorps xmm23,xmm23,xmm23
  a46b85:	62 b2 05 48 7f e7    	vpermt2ps zmm4,zmm15,zmm23
  a46b8b:	62 71 7c 48 28 2d 2b 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68042b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a46b92:	04 68 ff 
  a46b95:	62 b2 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm23
  a46b9b:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a46ba1:	62 b2 15 48 7f d7    	vpermt2ps zmm2,zmm13,zmm23
  a46ba7:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a46bad:	62 32 05 48 7f c7    	vpermt2ps zmm8,zmm15,zmm23
  a46bb3:	62 b2 05 48 7f ff    	vpermt2ps zmm7,zmm15,zmm23
  a46bb9:	62 b2 15 48 7f f7    	vpermt2ps zmm6,zmm13,zmm23
  a46bbf:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a46bc5:	62 b2 15 48 7f ef    	vpermt2ps zmm5,zmm13,zmm23
  a46bcb:	62 32 05 48 7f d7    	vpermt2ps zmm10,zmm15,zmm23
  a46bd1:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a46bd7:	62 71 7c 48 28 35 1f 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68031f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a46bde:	03 68 ff 
  a46be1:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x380]
  a46be8:	0e 
  a46be9:	62 12 0d 48 7f dd    	vpermt2ps zmm11,zmm14,zmm29
  a46bef:	62 e1 7c 48 28 1d 47 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff680347]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a46bf6:	03 68 ff 
  a46bf9:	62 92 65 40 7f e5    	vpermt2ps zmm4,zmm19,zmm29
  a46bff:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a46c05:	62 92 65 40 7f fd    	vpermt2ps zmm7,zmm19,zmm29
  a46c0b:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a46c11:	62 12 65 40 7f c5    	vpermt2ps zmm8,zmm19,zmm29
  a46c17:	62 12 0d 48 7f e5    	vpermt2ps zmm12,zmm14,zmm29
  a46c1d:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a46c23:	62 12 65 40 7f d5    	vpermt2ps zmm10,zmm19,zmm29
  a46c29:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a46c30:	0d 
  a46c31:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a46c37:	62 12 0d 48 7f cd    	vpermt2ps zmm9,zmm14,zmm29
  a46c3d:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a46c43:	62 f2 0d 48 7f f0    	vpermt2ps zmm6,zmm14,zmm0
  a46c49:	62 f2 0d 48 7f e8    	vpermt2ps zmm5,zmm14,zmm0
  a46c4f:	62 92 0d 48 7f dd    	vpermt2ps zmm3,zmm14,zmm29
  a46c55:	62 c1 a5 48 14 c4    	vunpcklpd zmm16,zmm11,zmm12
  a46c5b:	62 c1 dd 48 14 c8    	vunpcklpd zmm17,zmm4,zmm8
  a46c61:	62 c1 dd 48 15 d0    	vunpckhpd zmm18,zmm4,zmm8
  a46c67:	62 c1 a5 48 15 f4    	vunpckhpd zmm22,zmm11,zmm12
  a46c6d:	62 d1 c5 48 14 e2    	vunpcklpd zmm4,zmm7,zmm10
  a46c73:	62 61 f5 48 14 c6    	vunpcklpd zmm24,zmm1,zmm6
  a46c79:	62 71 f5 48 15 c6    	vunpckhpd zmm8,zmm1,zmm6
  a46c7f:	62 d1 c5 48 15 ca    	vunpckhpd zmm1,zmm7,zmm10
  a46c85:	62 f1 ed 48 14 f5    	vunpcklpd zmm6,zmm2,zmm5
  a46c8b:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a46c91:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a46c97:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a46c9d:	62 91 7c 48 28 e8    	vmovaps zmm5,zmm24
  a46ca3:	62 71 7c 48 28 25 53 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff680153]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a46caa:	01 68 ff 
  a46cad:	62 f2 1d 48 7f ee    	vpermt2ps zmm5,zmm12,zmm6
  a46cb3:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a46cba:	0c 
  a46cbb:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a46cc1:	62 61 7c 48 28 15 75 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff680175]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a46cc8:	01 68 ff 
  a46ccb:	62 62 2d 40 7f c6    	vpermt2ps zmm24,zmm26,zmm6
  a46cd1:	62 62 1d 48 7f ca    	vpermt2ps zmm25,zmm12,zmm2
  a46cd7:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a46cdd:	62 b2 05 48 7f ef    	vpermt2ps zmm5,zmm15,zmm23
  a46ce3:	62 72 2d 40 7f c2    	vpermt2ps zmm8,zmm26,zmm2
  a46ce9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm8
  a46cf0:	01 
  a46cf1:	62 a2 15 48 7f ef    	vpermt2ps zmm21,zmm13,zmm23
  a46cf7:	62 91 7c 48 28 d6    	vmovaps zmm2,zmm30
  a46cfd:	62 b2 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm23
  a46d03:	62 f1 b5 48 14 f3    	vunpcklpd zmm6,zmm9,zmm3
  a46d09:	62 22 15 48 7f f7    	vpermt2ps zmm30,zmm13,zmm23
  a46d0f:	62 91 7c 48 28 fc    	vmovaps zmm7,zmm28
  a46d15:	62 b2 05 48 7f ff    	vpermt2ps zmm7,zmm15,zmm23
  a46d1b:	62 71 b5 48 15 cb    	vunpckhpd zmm9,zmm9,zmm3
  a46d21:	62 22 15 48 7f e7    	vpermt2ps zmm28,zmm13,zmm23
  a46d27:	62 91 7c 48 28 df    	vmovaps zmm3,zmm31
  a46d2d:	62 b2 05 48 7f df    	vpermt2ps zmm3,zmm15,zmm23
  a46d33:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a46d39:	62 22 15 48 7f ff    	vpermt2ps zmm31,zmm13,zmm23
  a46d3f:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a46d45:	62 12 0d 48 7f c5    	vpermt2ps zmm8,zmm14,zmm29
  a46d4b:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a46d51:	62 92 65 40 7f ed    	vpermt2ps zmm5,zmm19,zmm29
  a46d57:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a46d5d:	62 12 0d 48 7f d5    	vpermt2ps zmm10,zmm14,zmm29
  a46d63:	62 e2 1d 48 7f e4    	vpermt2ps zmm20,zmm12,zmm4
  a46d69:	62 92 65 40 7f d5    	vpermt2ps zmm2,zmm19,zmm29
  a46d6f:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a46d75:	62 12 0d 48 7f dd    	vpermt2ps zmm11,zmm14,zmm29
  a46d7b:	62 e2 2d 40 7f cc    	vpermt2ps zmm17,zmm26,zmm4
  a46d81:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm17
  a46d88:	0a 
  a46d89:	62 92 65 40 7f fd    	vpermt2ps zmm7,zmm19,zmm29
  a46d8f:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a46d95:	62 92 0d 48 7f e5    	vpermt2ps zmm4,zmm14,zmm29
  a46d9b:	62 62 1d 48 7f d9    	vpermt2ps zmm27,zmm12,zmm1
  a46da1:	62 92 65 40 7f dd    	vpermt2ps zmm3,zmm19,zmm29
  a46da7:	62 e2 0d 48 7f e8    	vpermt2ps zmm21,zmm14,zmm0
  a46dad:	62 62 0d 48 7f f0    	vpermt2ps zmm30,zmm14,zmm0
  a46db3:	62 e2 2d 40 7f d1    	vpermt2ps zmm18,zmm26,zmm1
  a46db9:	62 62 0d 48 7f e0    	vpermt2ps zmm28,zmm14,zmm0
  a46dbf:	62 62 0d 48 7f f8    	vpermt2ps zmm31,zmm14,zmm0
  a46dc5:	62 41 bd 48 14 eb    	vunpcklpd zmm29,zmm8,zmm11
  a46dcb:	62 72 1d 48 7f fe    	vpermt2ps zmm15,zmm12,zmm6
  a46dd1:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm15
  a46dd8:	09 
  a46dd9:	62 d1 bd 48 15 cb    	vunpckhpd zmm1,zmm8,zmm11
  a46ddf:	62 71 ad 48 14 dc    	vunpcklpd zmm11,zmm10,zmm4
  a46de5:	62 71 ad 48 15 d4    	vunpckhpd zmm10,zmm10,zmm4
  a46deb:	62 e2 2d 40 7f c6    	vpermt2ps zmm16,zmm26,zmm6
  a46df1:	62 71 d5 48 14 ff    	vunpcklpd zmm15,zmm5,zmm7
  a46df7:	62 f1 d5 48 15 f7    	vunpckhpd zmm6,zmm5,zmm7
  a46dfd:	62 f1 ed 48 14 e3    	vunpcklpd zmm4,zmm2,zmm3
  a46e03:	62 52 1d 48 7f e9    	vpermt2ps zmm13,zmm12,zmm9
  a46e09:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm13
  a46e10:	08 
  a46e11:	62 f1 ed 48 15 db    	vunpckhpd zmm3,zmm2,zmm3
  a46e17:	62 91 d5 40 14 fc    	vunpcklpd zmm7,zmm21,zmm28
  a46e1d:	62 91 d5 40 15 d4    	vunpckhpd zmm2,zmm21,zmm28
  a46e23:	62 c2 2d 40 7f f1    	vpermt2ps zmm22,zmm26,zmm9
  a46e29:	62 91 8d 40 14 c7    	vunpcklpd zmm0,zmm30,zmm31
  a46e2f:	62 91 8d 40 15 ef    	vunpckhpd zmm5,zmm30,zmm31
  a46e35:	62 11 7c 48 28 cd    	vmovaps zmm9,zmm29
  a46e3b:	62 42 2d 40 7f eb    	vpermt2ps zmm29,zmm26,zmm11
  a46e41:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a46e47:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a46e4d:	62 72 2d 40 7f fc    	vpermt2ps zmm15,zmm26,zmm4
  a46e53:	62 d2 2d 40 7f ca    	vpermt2ps zmm1,zmm26,zmm10
  a46e59:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a46e5f:	62 f2 2d 40 7f f3    	vpermt2ps zmm6,zmm26,zmm3
  a46e65:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a46e6b:	62 e2 1d 48 7f fc    	vpermt2ps zmm23,zmm12,zmm4
  a46e71:	62 e2 1d 48 7f d8    	vpermt2ps zmm19,zmm12,zmm0
  a46e77:	62 f2 2d 40 7f f8    	vpermt2ps zmm7,zmm26,zmm0
  a46e7d:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a46e83:	62 72 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm3
  a46e89:	62 62 1d 48 7f e5    	vpermt2ps zmm28,zmm12,zmm5
  a46e8f:	62 f2 2d 40 7f d5    	vpermt2ps zmm2,zmm26,zmm5
  a46e95:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a46e9c:	62 52 1d 48 7f cb    	vpermt2ps zmm9,zmm12,zmm11
  a46ea2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm9
  a46ea9:	0b 
  a46eaa:	62 f1 7c 48 10 61 03 	vmovups zmm4,ZMMWORD PTR [rcx+0xc0]
  a46eb1:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a46eb8:	62 e1 7c 48 10 49 05 	vmovups zmm17,ZMMWORD PTR [rcx+0x140]
  a46ebf:	62 42 1d 48 7f f2    	vpermt2ps zmm30,zmm12,zmm10
  a46ec5:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  a46ecc:	62 71 7c 48 10 59 0c 	vmovups zmm11,ZMMWORD PTR [rcx+0x300]
  a46ed3:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a46eda:	62 51 24 40 59 cb    	vmulps zmm9,zmm27,zmm11
  a46ee0:	62 72 3d 48 bc c8    	vfnmadd231ps zmm9,zmm8,zmm0
  a46ee6:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a46eec:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm9
  a46ef3:	06 
  a46ef4:	62 51 3c 48 59 cb    	vmulps zmm9,zmm8,zmm11
  a46efa:	62 71 7c 48 10 41 12 	vmovups zmm8,ZMMWORD PTR [rcx+0x480]
  a46f01:	62 12 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm27
  a46f07:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a46f0e:	07 
  a46f0f:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a46f16:	62 41 3c 40 59 d8    	vmulps zmm27,zmm24,zmm8
  a46f1c:	62 c1 44 48 59 e8    	vmulps zmm21,zmm7,zmm8
  a46f22:	62 62 45 48 bc d8    	vfnmadd231ps zmm27,zmm7,zmm0
  a46f28:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm27
  a46f2f:	05 
  a46f30:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a46f37:	62 82 7d 48 b8 e8    	vfmadd231ps zmm21,zmm0,zmm24
  a46f3d:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a46f44:	62 41 4c 40 59 fa    	vmulps zmm31,zmm22,zmm10
  a46f4a:	62 42 75 48 bc f9    	vfnmadd231ps zmm31,zmm1,zmm9
  a46f50:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm31
  a46f57:	04 
  a46f58:	62 51 74 48 59 ea    	vmulps zmm13,zmm1,zmm10
  a46f5e:	62 61 7c 48 10 41 14 	vmovups zmm24,ZMMWORD PTR [rcx+0x500]
  a46f65:	62 32 35 48 b8 ee    	vfmadd231ps zmm13,zmm9,zmm22
  a46f6b:	62 71 7c 48 10 49 15 	vmovups zmm9,ZMMWORD PTR [rcx+0x540]
  a46f72:	62 11 34 40 59 d0    	vmulps zmm10,zmm25,zmm24
  a46f78:	62 81 1c 40 59 f0    	vmulps zmm22,zmm28,zmm24
  a46f7e:	62 52 1d 40 bc d1    	vfnmadd231ps zmm10,zmm28,zmm9
  a46f84:	62 61 7c 48 10 61 09 	vmovups zmm28,ZMMWORD PTR [rcx+0x240]
  a46f8b:	62 82 35 48 b8 f1    	vfmadd231ps zmm22,zmm9,zmm25
  a46f91:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a46f98:	62 61 5c 40 59 c8    	vmulps zmm25,zmm20,zmm0
  a46f9e:	62 02 45 40 bc cc    	vfnmadd231ps zmm25,zmm23,zmm28
  a46fa4:	62 61 44 40 59 c0    	vmulps zmm24,zmm23,zmm0
  a46faa:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a46fb1:	62 22 1d 40 b8 c4    	vfmadd231ps zmm24,zmm28,zmm20
  a46fb7:	62 61 7c 48 10 51 0f 	vmovups zmm26,ZMMWORD PTR [rcx+0x3c0]
  a46fbe:	62 e1 6c 40 59 e0    	vmulps zmm20,zmm18,zmm0
  a46fc4:	62 f1 4c 48 59 c0    	vmulps zmm0,zmm6,zmm0
  a46fca:	62 82 4d 48 bc e2    	vfnmadd231ps zmm20,zmm6,zmm26
  a46fd0:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a46fd7:	62 b2 2d 40 b8 c2    	vfmadd231ps zmm0,zmm26,zmm18
  a46fdd:	62 e1 7c 48 10 51 10 	vmovups zmm18,ZMMWORD PTR [rcx+0x400]
  a46fe4:	62 61 7c 40 59 d5    	vmulps zmm26,zmm16,zmm5
  a46fea:	62 62 15 40 bc d4    	vfnmadd231ps zmm26,zmm29,zmm4
  a46ff0:	62 61 14 40 59 e5    	vmulps zmm28,zmm29,zmm5
  a46ff6:	62 f1 7c 48 10 69 11 	vmovups zmm5,ZMMWORD PTR [rcx+0x440]
  a46ffd:	62 22 5d 48 b8 e0    	vfmadd231ps zmm28,zmm4,zmm16
  a47003:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a4700a:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x300]
  a47011:	0c 
  a47012:	62 a1 44 48 59 c2    	vmulps zmm16,zmm7,zmm18
  a47018:	62 21 64 40 59 ea    	vmulps zmm29,zmm19,zmm18
  a4701e:	62 e2 65 40 bc c5    	vfnmadd231ps zmm16,zmm19,zmm5
  a47024:	62 71 7c 48 10 61 17 	vmovups zmm12,ZMMWORD PTR [rcx+0x5c0]
  a4702b:	62 62 55 48 b8 ef    	vfmadd231ps zmm29,zmm5,zmm7
  a47031:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a47038:	08 
  a47039:	62 e1 54 48 59 d3    	vmulps zmm18,zmm5,zmm3
  a4703f:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x240]
  a47046:	09 
  a47047:	62 d1 24 48 58 ce    	vaddps zmm1,zmm11,zmm14
  a4704d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a47054:	03 
  a47055:	62 a2 0d 40 bc d1    	vfnmadd231ps zmm18,zmm30,zmm17
  a4705b:	62 f1 0c 40 59 db    	vmulps zmm3,zmm30,zmm3
  a47061:	62 f2 75 40 b8 dd    	vfmadd231ps zmm3,zmm17,zmm5
  a47067:	62 51 34 40 58 f2    	vaddps zmm14,zmm25,zmm10
  a4706d:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a47074:	01 
  a47075:	62 61 44 48 59 f4    	vmulps zmm30,zmm7,zmm4
  a4707b:	62 42 6d 48 bc f4    	vfnmadd231ps zmm30,zmm2,zmm12
  a47081:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a47087:	62 91 04 40 58 eb    	vaddps zmm5,zmm31,zmm27
  a4708d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a47094:	02 
  a47095:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a4709c:	0a 
  a4709d:	62 c1 5c 48 59 c9    	vmulps zmm17,zmm4,zmm9
  a470a3:	62 c2 05 48 bc c8    	vfnmadd231ps zmm17,zmm15,zmm8
  a470a9:	62 f2 1d 48 b8 d7    	vfmadd231ps zmm2,zmm12,zmm7
  a470af:	62 01 5c 40 58 da    	vaddps zmm27,zmm20,zmm26
  a470b5:	62 21 0c 40 58 f9    	vaddps zmm31,zmm30,zmm17
  a470bb:	62 51 04 48 59 c9    	vmulps zmm9,zmm15,zmm9
  a470c1:	62 72 3d 48 b8 cc    	vfmadd231ps zmm9,zmm8,zmm4
  a470c7:	62 a1 7c 40 58 da    	vaddps zmm19,zmm16,zmm18
  a470cd:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x2c0]
  a470d4:	0b 
  a470d5:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x1c0]
  a470dc:	07 
  a470dd:	62 f1 04 48 58 fe    	vaddps zmm7,zmm15,zmm6
  a470e3:	62 91 7c 48 58 e4    	vaddps zmm4,zmm0,zmm28
  a470e9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a470f0:	01 
  a470f1:	62 c1 34 40 5c fa    	vsubps zmm23,zmm25,zmm10
  a470f7:	62 f1 74 48 58 e5    	vaddps zmm4,zmm1,zmm5
  a470fd:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm4
  a47104:	11 
  a47105:	62 91 7c 48 5c c4    	vsubps zmm0,zmm0,zmm28
  a4710b:	62 51 6c 48 58 e1    	vaddps zmm12,zmm2,zmm9
  a47111:	62 21 7c 40 5c e2    	vsubps zmm28,zmm16,zmm18
  a47117:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a4711d:	62 11 0c 48 58 c3    	vaddps zmm8,zmm14,zmm27
  a47123:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a4712a:	08 
  a4712b:	62 41 6c 48 5c c9    	vsubps zmm25,zmm2,zmm9
  a47131:	62 31 14 48 58 f5    	vaddps zmm14,zmm13,zmm21
  a47137:	62 e1 24 48 5c 54 24 	vsubps zmm18,zmm11,ZMMWORD PTR [rsp+0x180]
  a4713e:	06 
  a4713f:	62 91 64 40 58 ef    	vaddps zmm5,zmm19,zmm31
  a47145:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a4714c:	09 
  a4714d:	62 31 14 48 5c d5    	vsubps zmm10,zmm13,zmm21
  a47153:	62 31 3c 40 58 de    	vaddps zmm11,zmm24,zmm22
  a47159:	62 a1 3c 40 5c f6    	vsubps zmm22,zmm24,zmm22
  a4715f:	62 f1 0c 48 58 cf    	vaddps zmm1,zmm14,zmm7
  a47165:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a4716c:	0f 
  a4716d:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a47173:	62 a1 2c 40 5c e4    	vsubps zmm20,zmm26,zmm20
  a47179:	62 f1 14 40 58 e3    	vaddps zmm4,zmm29,zmm3
  a4717f:	62 71 14 40 5c eb    	vsubps zmm13,zmm29,zmm3
  a47185:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a4718c:	01 
  a4718d:	62 f1 24 48 58 fa    	vaddps zmm7,zmm11,zmm2
  a47193:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a4719a:	06 
  a4719b:	62 01 74 40 5c f6    	vsubps zmm30,zmm17,zmm30
  a471a1:	62 f1 44 40 58 d8    	vaddps zmm3,zmm23,zmm0
  a471a7:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a471ad:	62 41 4c 48 5c ef    	vsubps zmm29,zmm6,zmm15
  a471b3:	62 91 1c 40 58 c9    	vaddps zmm1,zmm28,zmm25
  a471b9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a471c0:	10 
  a471c1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a471c8:	05 
  a471c9:	62 e1 7c 48 5c 6c 24 	vsubps zmm21,zmm0,ZMMWORD PTR [rsp+0x100]
  a471d0:	04 
  a471d1:	62 51 6c 40 58 ca    	vaddps zmm9,zmm18,zmm10
  a471d7:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm9
  a471de:	0c 
  a471df:	62 11 7c 40 5c fb    	vsubps zmm15,zmm16,zmm27
  a471e5:	62 d1 5c 48 58 c4    	vaddps zmm0,zmm4,zmm12
  a471eb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a471f2:	07 
  a471f3:	62 81 64 40 5c c7    	vsubps zmm16,zmm19,zmm31
  a471f9:	62 e2 7d 48 18 1d 5d 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff62e25d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a47200:	e2 62 ff 
  a47203:	62 21 7c 48 28 d3    	vmovaps zmm26,zmm19
  a47209:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a47210:	03 
  a47211:	62 f1 4c 48 5c 74 24 	vsubps zmm6,zmm6,ZMMWORD PTR [rsp+0x80]
  a47218:	02 
  a47219:	62 61 3c 48 58 dd    	vaddps zmm27,zmm8,zmm5
  a4721f:	62 f1 24 48 5c ea    	vsubps zmm5,zmm11,zmm2
  a47225:	62 31 4c 40 58 dc    	vaddps zmm11,zmm22,zmm20
  a4722b:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a47231:	62 71 64 48 58 e1    	vaddps zmm12,zmm3,zmm1
  a47237:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a4723d:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm12
  a47244:	01 
  a47245:	62 41 3c 40 5c fe    	vsubps zmm31,zmm24,zmm14
  a4724b:	62 91 14 48 58 ce    	vaddps zmm1,zmm13,zmm30
  a47251:	62 51 6c 40 5c c2    	vsubps zmm8,zmm18,zmm10
  a47257:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a4725e:	03 
  a4725f:	62 71 44 48 58 c0    	vaddps zmm8,zmm7,zmm0
  a47265:	62 b1 44 40 5c c1    	vsubps zmm0,zmm23,zmm17
  a4726b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a47272:	05 
  a47273:	62 11 54 40 58 f5    	vaddps zmm14,zmm21,zmm29
  a47279:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm14
  a47280:	0a 
  a47281:	62 91 1c 40 5c c1    	vsubps zmm0,zmm28,zmm25
  a47287:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a4728e:	02 
  a4728f:	62 71 24 48 58 d1    	vaddps zmm10,zmm11,zmm1
  a47295:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm10
  a4729c:	0b 
  a4729d:	62 21 14 40 5c ed    	vsubps zmm29,zmm29,zmm21
  a472a3:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a472a9:	62 b1 4c 40 5c c4    	vsubps zmm0,zmm22,zmm20
  a472af:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a472b6:	04 
  a472b7:	62 42 1d 48 ac d1    	vfnmadd213ps zmm26,zmm12,zmm9
  a472bd:	62 21 04 48 58 e0    	vaddps zmm28,zmm15,zmm16
  a472c3:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a472c9:	62 11 14 48 5c fe    	vsubps zmm15,zmm13,zmm30
  a472cf:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a472d5:	62 42 2d 48 ac ce    	vfnmadd213ps zmm25,zmm10,zmm14
  a472db:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a472e2:	11 
  a472e3:	62 e2 25 40 ac f8    	vfnmadd213ps zmm23,zmm27,zmm0
  a472e9:	62 91 7c 28 58 db    	vaddps ymm3,ymm0,ymm27
  a472ef:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a472f5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a472fc:	0f 
  a472fd:	62 62 3d 48 ac d8    	vfnmadd213ps zmm27,zmm8,zmm0
  a47303:	c5 38 58 c8          	vaddps xmm9,xmm8,xmm0
  a47307:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a4730d:	62 e2 1d 40 ac e6    	vfnmadd213ps zmm20,zmm28,zmm6
  a47313:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a47319:	62 61 7c 28 28 35 bd 	vmovaps ymm30,YMMWORD PTR [rip+0xffffffffff62febd]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a47320:	fe 62 ff 
  a47323:	62 72 0d 20 7f cb    	vpermt2ps ymm9,ymm30,ymm3
  a47329:	62 71 54 48 58 c4    	vaddps zmm8,zmm5,zmm4
  a4732f:	c5 a4 5c c1          	vsubps ymm0,ymm11,ymm1
  a47333:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a47339:	62 02 3d 48 ac c7    	vfnmadd213ps zmm24,zmm8,zmm31
  a4733f:	c5 ec 5c 94 24 00 04 	vsubps ymm2,ymm2,YMMWORD PTR [rsp+0x400]
  a47346:	00 00 
  a47348:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a4734e:	c4 62 7d 18 25 7d df 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff62df7d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a47355:	62 ff 
  a47357:	c5 1c 59 d0          	vmulps ymm10,ymm12,ymm0
  a4735b:	c5 7c 11 0c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm9
  a47360:	62 d1 2c 20 58 c2    	vaddps ymm0,ymm26,ymm10
  a47366:	c5 9c 59 da          	vmulps ymm3,ymm12,ymm2
  a4736a:	c5 d4 5c d4          	vsubps ymm2,ymm5,ymm4
  a4736e:	62 71 34 00 5c cb    	vsubps xmm9,xmm25,xmm3
  a47374:	62 c1 6c 28 59 f4    	vmulps ymm22,ymm2,ymm12
  a4737a:	62 b1 44 28 5c d0    	vsubps ymm2,ymm7,ymm16
  a47380:	62 31 5c 20 5c ee    	vsubps ymm13,ymm20,ymm22
  a47386:	62 72 0d 20 7f c8    	vpermt2ps ymm9,ymm30,ymm0
  a4738c:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  a47390:	62 f1 3c 00 58 c2    	vaddps xmm0,xmm24,xmm2
  a47396:	62 d2 0d 20 7f c5    	vpermt2ps ymm0,ymm30,ymm13
  a4739c:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x140]
  a473a3:	05 
  a473a4:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x80]
  a473ab:	02 
  a473ac:	62 31 54 40 58 ea    	vaddps zmm13,zmm21,zmm18
  a473b2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a473b9:	03 
  a473ba:	62 72 15 48 ac d9    	vfnmadd213ps zmm11,zmm13,zmm1
  a473c0:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  a473c4:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x100]
  a473cb:	04 
  a473cc:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a473d2:	62 c1 44 48 58 c7    	vaddps zmm16,zmm7,zmm15
  a473d8:	c5 7c 11 4c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm9
  a473de:	62 82 7d 40 ac dd    	vfnmadd213ps zmm19,zmm16,zmm29
  a473e4:	62 31 14 00 58 c8    	vaddps xmm9,xmm29,xmm16
  a473ea:	c5 fc 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm0
  a473f0:	62 72 0d 20 7f cc    	vpermt2ps ymm9,ymm30,ymm4
  a473f6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a473fd:	06 
  a473fe:	c5 fc 5c 84 24 c0 01 	vsubps ymm0,ymm0,YMMWORD PTR [rsp+0x1c0]
  a47405:	00 00 
  a47407:	c5 9c 59 c0          	vmulps ymm0,ymm12,ymm0
  a4740b:	c5 7c 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm9
  a47411:	62 f1 44 20 58 e0    	vaddps ymm4,ymm23,ymm0
  a47417:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a4741e:	08 
  a4741f:	c5 54 5c 8c 24 40 02 	vsubps ymm9,ymm5,YMMWORD PTR [rsp+0x240]
  a47426:	00 00 
  a47428:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  a4742d:	62 51 24 00 5c f9    	vsubps xmm15,xmm27,xmm9
  a47433:	62 72 0d 20 7f fc    	vpermt2ps ymm15,ymm30,ymm4
  a47439:	62 d1 2c 20 5c e2    	vsubps ymm4,ymm26,ymm10
  a4743f:	62 f1 34 00 58 db    	vaddps xmm3,xmm25,xmm3
  a47445:	c5 7c 11 bc 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm15
  a4744c:	00 00 
  a4744e:	62 f2 0d 20 7f dc    	vpermt2ps ymm3,ymm30,ymm4
  a47454:	62 91 0c 28 58 e4    	vaddps ymm4,ymm14,ymm28
  a4745a:	62 d1 04 00 58 e8    	vaddps xmm5,xmm31,xmm8
  a47460:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  a47467:	00 00 
  a47469:	62 f2 0d 20 7f ec    	vpermt2ps ymm5,ymm30,ymm4
  a4746f:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  a47473:	c5 9c 59 c9          	vmulps ymm1,ymm12,ymm1
  a47477:	c5 fc 11 ac 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm5
  a4747e:	00 00 
  a47480:	c5 a4 58 d9          	vaddps ymm3,ymm11,ymm1
  a47484:	62 b1 54 20 5c e2    	vsubps ymm4,ymm21,ymm18
  a4748a:	c5 9c 59 e4          	vmulps ymm4,ymm12,ymm4
  a4748e:	62 f1 64 00 5c ec    	vsubps xmm5,xmm19,xmm4
  a47494:	62 f2 0d 20 7f eb    	vpermt2ps ymm5,ymm30,ymm3
  a4749a:	62 f1 44 20 5c c0    	vsubps ymm0,ymm23,ymm0
  a474a0:	62 d1 24 00 58 d9    	vaddps xmm3,xmm27,xmm9
  a474a6:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  a474ad:	00 00 
  a474af:	62 f2 0d 20 7f d8    	vpermt2ps ymm3,ymm30,ymm0
  a474b5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a474bc:	0c 
  a474bd:	c5 fc 58 44 24 40    	vaddps ymm0,ymm0,YMMWORD PTR [rsp+0x40]
  a474c3:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a474ca:	0a 
  a474cb:	c5 d0 58 ac 24 c0 02 	vaddps xmm5,xmm5,XMMWORD PTR [rsp+0x2c0]
  a474d2:	00 00 
  a474d4:	c5 fc 11 9c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm3
  a474db:	00 00 
  a474dd:	62 f2 0d 20 7f e8    	vpermt2ps ymm5,ymm30,ymm0
  a474e3:	62 b1 5c 20 58 c6    	vaddps ymm0,ymm20,ymm22
  a474e9:	62 f1 3c 00 5c d2    	vsubps xmm2,xmm24,xmm2
  a474ef:	c5 fc 11 ac 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm5
  a474f6:	00 00 
  a474f8:	62 f2 0d 20 7f d0    	vpermt2ps ymm2,ymm30,ymm0
  a474fe:	c5 a4 5c c1          	vsubps ymm0,ymm11,ymm1
  a47502:	62 f1 64 00 58 cc    	vaddps xmm1,xmm19,xmm4
  a47508:	c5 fc 11 94 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm2
  a4750f:	00 00 
  a47511:	62 f2 0d 20 7f c8    	vpermt2ps ymm1,ymm30,ymm0
  a47517:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  a4751e:	00 00 
  a47520:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a47527:	48 39 d0             	cmp    rax,rdx
  a4752a:	0f 85 30 f5 ff ff    	jne    a46a60 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a47530:	48 89 ec             	mov    rsp,rbp
  a47533:	5d                   	pop    rbp
  a47534:	c5 f8 77             	vzeroupper
  a47537:	c3                   	ret
