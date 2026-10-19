
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a03bc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a03bc0:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a03bc7:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a03bcd:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a03bd2:	62 f1 7c 48 28 15 24 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68a824]        # 8e400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b8b0>
  a03bd9:	a8 68 ff 
  a03bdc:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a03be2:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a03be8:	62 f1 7c 48 28 25 4e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68a84e]        # 8e440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b8f0>
  a03bef:	a8 68 ff 
  a03bf2:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a03bf8:	62 f1 7c 48 10 af 60 	vmovups zmm5,ZMMWORD PTR [rdi+0x60]
  a03bff:	00 00 00 
  a03c02:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a03c09:	00 
  a03c0a:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a03c10:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a03c16:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a03c1c:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a03c23:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a03c2a:	00 
  a03c2b:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a03c31:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a03c37:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a03c3d:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a03c44:	01 00 00 
  a03c47:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a03c4e:	00 
  a03c4f:	62 f2 2d 48 77 d0    	vpermi2ps zmm2,zmm10,zmm0
  a03c55:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a03c5b:	62 51 64 48 58 d9    	vaddps zmm11,zmm3,zmm9
  a03c61:	62 71 4c 48 58 e2    	vaddps zmm12,zmm6,zmm2
  a03c67:	62 d1 24 48 58 c4    	vaddps zmm0,zmm11,zmm12
  a03c6d:	62 51 74 48 58 e8    	vaddps zmm13,zmm1,zmm8
  a03c73:	62 51 54 48 58 f2    	vaddps zmm14,zmm5,zmm10
  a03c79:	62 d1 14 48 58 fe    	vaddps zmm7,zmm13,zmm14
  a03c7f:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a03c85:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a03c8b:	62 f1 64 48 58 e5    	vaddps zmm4,zmm3,zmm5
  a03c91:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a03c97:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a03c9d:	62 e1 6c 48 58 c9    	vaddps zmm17,zmm2,zmm1
  a03ca3:	62 d1 24 48 5c f4    	vsubps zmm6,zmm11,zmm12
  a03ca9:	62 51 14 48 5c f6    	vsubps zmm14,zmm13,zmm14
  a03caf:	62 71 64 48 5c c5    	vsubps zmm8,zmm3,zmm5
  a03cb5:	62 e1 74 48 5c d2    	vsubps zmm18,zmm1,zmm2
  a03cbb:	62 e1 7c 48 28 25 bb 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6c32bb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a03cc2:	32 6c ff 
  a03cc5:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a03ccb:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a03cd1:	62 b2 5d 40 7f d3    	vpermt2ps zmm2,zmm20,zmm19
  a03cd7:	62 e1 7c 48 28 35 df 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c32df]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a03cde:	32 6c ff 
  a03ce1:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a03ce7:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a03ced:	62 32 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm19
  a03cf3:	62 b2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm19
  a03cf9:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a03cff:	62 b2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm19
  a03d05:	62 b2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm19
  a03d0b:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a03d11:	62 32 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm19
  a03d17:	62 32 4d 40 7f c3    	vpermt2ps zmm8,zmm22,zmm19
  a03d1d:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a03d23:	62 a2 5d 40 7f ed    	vpermt2ps zmm21,zmm20,zmm21
  a03d29:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a03d2e:	62 52 4d 40 7f ed    	vpermt2ps zmm13,zmm22,zmm13
  a03d34:	62 e1 7c 48 28 05 c2 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c31c2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a03d3b:	31 6c ff 
  a03d3e:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a03d44:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a03d4a:	62 61 7c 48 28 05 ec 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6c31ec]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a03d51:	31 6c ff 
  a03d54:	62 b2 3d 40 7f d5    	vpermt2ps zmm2,zmm24,zmm21
  a03d5a:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a03d60:	62 32 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm21
  a03d66:	62 32 3d 40 7f d5    	vpermt2ps zmm10,zmm24,zmm21
  a03d6c:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a03d72:	62 32 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm21
  a03d78:	62 b2 3d 40 7f ed    	vpermt2ps zmm5,zmm24,zmm21
  a03d7e:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a03d84:	62 32 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm21
  a03d8a:	62 32 3d 40 7f dd    	vpermt2ps zmm11,zmm24,zmm21
  a03d90:	62 d2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm13
  a03d96:	62 d2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm13
  a03d9c:	62 d2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm13
  a03da2:	62 52 7d 40 7f c5    	vpermt2ps zmm8,zmm16,zmm13
  a03da8:	62 d1 f5 48 14 d9    	vunpcklpd zmm3,zmm1,zmm9
  a03dae:	62 51 f5 48 15 c9    	vunpckhpd zmm9,zmm1,zmm9
  a03db4:	62 41 9d 48 14 cf    	vunpcklpd zmm25,zmm12,zmm15
  a03dba:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  a03dc0:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a03dc6:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  a03dcc:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  a03dd2:	62 41 ad 48 15 d3    	vunpckhpd zmm26,zmm10,zmm11
  a03dd8:	62 71 fd 48 14 d6    	vunpcklpd zmm10,zmm0,zmm6
  a03dde:	62 f1 fd 48 15 d6    	vunpckhpd zmm2,zmm0,zmm6
  a03de4:	62 41 dd 48 14 d8    	vunpcklpd zmm27,zmm4,zmm8
  a03dea:	62 41 dd 48 15 e0    	vunpckhpd zmm28,zmm4,zmm8
  a03df0:	62 71 7c 48 28 05 06 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c3006]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a03df7:	30 6c ff 
  a03dfa:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a03e00:	62 92 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm25
  a03e06:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a03e0d:	62 e1 7c 48 28 3d 29 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6c3029]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a03e14:	30 6c ff 
  a03e17:	62 92 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm25
  a03e1d:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a03e23:	62 d2 3d 48 7f e4    	vpermt2ps zmm4,zmm8,zmm12
  a03e29:	62 52 45 40 7f cc    	vpermt2ps zmm9,zmm23,zmm12
  a03e2f:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a03e35:	62 52 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm15
  a03e3b:	62 d2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm15
  a03e41:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a03e47:	62 12 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm26
  a03e4d:	62 92 45 40 7f ea    	vpermt2ps zmm5,zmm23,zmm26
  a03e53:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a03e59:	62 92 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm27
  a03e5f:	62 12 45 40 7f d3    	vpermt2ps zmm10,zmm23,zmm27
  a03e65:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a03e6b:	62 12 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm28
  a03e71:	62 92 45 40 7f d4    	vpermt2ps zmm2,zmm23,zmm28
  a03e77:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a03e7d:	62 22 5d 40 7f cb    	vpermt2ps zmm25,zmm20,zmm19
  a03e83:	62 b2 4d 40 7f fb    	vpermt2ps zmm7,zmm22,zmm19
  a03e89:	62 21 7c 48 28 d9    	vmovaps zmm27,zmm17
  a03e8f:	62 22 5d 40 7f db    	vpermt2ps zmm27,zmm20,zmm19
  a03e95:	62 a2 4d 40 7f cb    	vpermt2ps zmm17,zmm22,zmm19
  a03e9b:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a03ea1:	62 22 5d 40 7f e3    	vpermt2ps zmm28,zmm20,zmm19
  a03ea7:	62 32 4d 40 7f f3    	vpermt2ps zmm14,zmm22,zmm19
  a03ead:	62 a2 6d 40 77 e3    	vpermi2ps zmm20,zmm18,zmm19
  a03eb3:	62 a2 4d 40 7f d3    	vpermt2ps zmm18,zmm22,zmm19
  a03eb9:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a03ebf:	62 a2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm21
  a03ec5:	62 22 3d 40 7f cd    	vpermt2ps zmm25,zmm24,zmm21
  a03ecb:	62 81 7c 48 28 f3    	vmovaps zmm22,zmm27
  a03ed1:	62 a2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm21
  a03ed7:	62 22 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm21
  a03edd:	62 01 7c 48 28 d4    	vmovaps zmm26,zmm28
  a03ee3:	62 22 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm21
  a03ee9:	62 22 3d 40 7f e5    	vpermt2ps zmm28,zmm24,zmm21
  a03eef:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a03ef5:	62 22 7d 40 7f ed    	vpermt2ps zmm29,zmm16,zmm21
  a03efb:	62 a2 3d 40 7f e5    	vpermt2ps zmm20,zmm24,zmm21
  a03f01:	62 d2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm13
  a03f07:	62 c2 7d 40 7f cd    	vpermt2ps zmm17,zmm16,zmm13
  a03f0d:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a03f13:	62 c2 7d 40 7f d5    	vpermt2ps zmm18,zmm16,zmm13
  a03f19:	62 81 e5 40 14 c2    	vunpcklpd zmm16,zmm19,zmm26
  a03f1f:	62 01 e5 40 15 d2    	vunpckhpd zmm26,zmm19,zmm26
  a03f25:	62 81 cd 40 14 ed    	vunpcklpd zmm21,zmm22,zmm29
  a03f2b:	62 81 cd 40 15 f5    	vunpckhpd zmm22,zmm22,zmm29
  a03f31:	62 11 b5 40 14 ec    	vunpcklpd zmm13,zmm25,zmm28
  a03f37:	62 81 b5 40 15 dc    	vunpckhpd zmm19,zmm25,zmm28
  a03f3d:	62 21 a5 40 14 c4    	vunpcklpd zmm24,zmm27,zmm20
  a03f43:	62 a1 a5 40 15 e4    	vunpckhpd zmm20,zmm27,zmm20
  a03f49:	62 41 c5 48 14 de    	vunpcklpd zmm27,zmm7,zmm14
  a03f4f:	62 51 c5 48 15 f6    	vunpckhpd zmm14,zmm7,zmm14
  a03f55:	62 21 f5 40 14 ca    	vunpcklpd zmm25,zmm17,zmm18
  a03f5b:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a03f61:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a03f67:	62 b2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm21
  a03f6d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a03f74:	ff 
  a03f75:	62 a2 45 40 7f c5    	vpermt2ps zmm16,zmm23,zmm21
  a03f7b:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a03f81:	62 a2 3d 48 7f ce    	vpermt2ps zmm17,zmm8,zmm22
  a03f87:	62 22 45 40 7f d6    	vpermt2ps zmm26,zmm23,zmm22
  a03f8d:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a03f93:	62 02 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm24
  a03f99:	62 12 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm24
  a03f9f:	62 21 7c 48 28 eb    	vmovaps zmm29,zmm19
  a03fa5:	62 22 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm20
  a03fab:	62 a2 45 40 7f dc    	vpermt2ps zmm19,zmm23,zmm20
  a03fb1:	62 81 7c 48 28 e3    	vmovaps zmm20,zmm27
  a03fb7:	62 82 3d 48 7f e1    	vpermt2ps zmm20,zmm8,zmm25
  a03fbd:	62 02 45 40 7f d9    	vpermt2ps zmm27,zmm23,zmm25
  a03fc3:	62 32 0d 48 77 c2    	vpermi2ps zmm8,zmm14,zmm18
  a03fc9:	62 32 45 40 7f f2    	vpermt2ps zmm14,zmm23,zmm18
  a03fcf:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a03fd6:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a03fdd:	62 e1 7c 48 10 72 04 	vmovups zmm22,ZMMWORD PTR [rdx+0x100]
  a03fe4:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a03feb:	62 61 7c 48 10 72 06 	vmovups zmm30,ZMMWORD PTR [rdx+0x180]
  a03ff2:	62 e1 7c 48 10 7a 0c 	vmovups zmm23,ZMMWORD PTR [rdx+0x300]
  a03ff9:	62 61 7c 48 10 7a 0d 	vmovups zmm31,ZMMWORD PTR [rdx+0x340]
  a04000:	62 a1 04 48 59 d7    	vmulps zmm18,zmm15,zmm23
  a04006:	62 82 15 40 bc d7    	vfnmadd231ps zmm18,zmm29,zmm31
  a0400c:	62 a1 14 40 59 ff    	vmulps zmm23,zmm29,zmm23
  a04012:	62 61 7c 48 10 6a 07 	vmovups zmm29,ZMMWORD PTR [rdx+0x1c0]
  a04019:	62 c2 05 40 b8 ff    	vfmadd231ps zmm23,zmm31,zmm15
  a0401f:	62 61 7c 48 10 7a 08 	vmovups zmm31,ZMMWORD PTR [rdx+0x200]
  a04026:	62 11 34 48 59 fe    	vmulps zmm15,zmm9,zmm30
  a0402c:	62 12 2d 40 bc fd    	vfnmadd231ps zmm15,zmm26,zmm29
  a04032:	62 01 2c 40 59 d6    	vmulps zmm26,zmm26,zmm30
  a04038:	62 61 7c 48 10 72 12 	vmovups zmm30,ZMMWORD PTR [rdx+0x480]
  a0403f:	62 42 15 40 b8 d1    	vfmadd231ps zmm26,zmm29,zmm9
  a04045:	62 61 7c 48 10 6a 13 	vmovups zmm29,ZMMWORD PTR [rdx+0x4c0]
  a0404c:	62 11 2c 48 59 ce    	vmulps zmm9,zmm10,zmm30
  a04052:	62 12 25 40 bc cd    	vfnmadd231ps zmm9,zmm27,zmm29
  a04058:	62 01 24 40 59 de    	vmulps zmm27,zmm27,zmm30
  a0405e:	62 61 7c 48 10 72 09 	vmovups zmm30,ZMMWORD PTR [rdx+0x240]
  a04065:	62 42 15 40 b8 da    	vfmadd231ps zmm27,zmm29,zmm10
  a0406b:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a04072:	62 01 24 48 59 ef    	vmulps zmm29,zmm11,zmm31
  a04078:	62 02 1d 40 bc ee    	vfnmadd231ps zmm29,zmm28,zmm30
  a0407e:	62 11 1c 40 59 d7    	vmulps zmm10,zmm28,zmm31
  a04084:	62 61 7c 48 10 62 14 	vmovups zmm28,ZMMWORD PTR [rdx+0x500]
  a0408b:	62 52 0d 40 b8 d3    	vfmadd231ps zmm10,zmm30,zmm11
  a04091:	62 61 7c 48 10 72 15 	vmovups zmm30,ZMMWORD PTR [rdx+0x540]
  a04098:	62 01 1c 48 59 fc    	vmulps zmm31,zmm12,zmm28
  a0409e:	62 02 3d 48 bc fe    	vfnmadd231ps zmm31,zmm8,zmm30
  a040a4:	62 11 3c 48 59 dc    	vmulps zmm11,zmm8,zmm28
  a040aa:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a040b1:	62 52 0d 40 b8 dc    	vfmadd231ps zmm11,zmm30,zmm12
  a040b7:	62 61 7c 48 10 62 0f 	vmovups zmm28,ZMMWORD PTR [rdx+0x3c0]
  a040be:	62 51 54 48 59 e0    	vmulps zmm12,zmm5,zmm8
  a040c4:	62 12 65 40 bc e4    	vfnmadd231ps zmm12,zmm19,zmm28
  a040ca:	62 51 64 40 59 c0    	vmulps zmm8,zmm19,zmm8
  a040d0:	62 e1 7c 48 10 5a 0b 	vmovups zmm19,ZMMWORD PTR [rdx+0x2c0]
  a040d7:	62 72 1d 40 b8 c5    	vfmadd231ps zmm8,zmm28,zmm5
  a040dd:	62 f1 7c 48 10 6a 10 	vmovups zmm5,ZMMWORD PTR [rdx+0x400]
  a040e4:	62 01 64 48 59 e1    	vmulps zmm28,zmm3,zmm25
  a040ea:	62 02 7d 40 bc e0    	vfnmadd231ps zmm28,zmm16,zmm24
  a040f0:	62 01 7c 40 59 c9    	vmulps zmm25,zmm16,zmm25
  a040f6:	62 e1 7c 48 10 42 11 	vmovups zmm16,ZMMWORD PTR [rdx+0x440]
  a040fd:	62 62 3d 40 b8 cb    	vfmadd231ps zmm25,zmm24,zmm3
  a04103:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a0410a:	62 61 4c 48 59 c5    	vmulps zmm24,zmm6,zmm5
  a04110:	62 22 5d 40 bc c0    	vfnmadd231ps zmm24,zmm20,zmm16
  a04116:	62 e1 5c 40 59 e5    	vmulps zmm20,zmm20,zmm5
  a0411c:	62 61 7c 48 10 72 17 	vmovups zmm30,ZMMWORD PTR [rdx+0x5c0]
  a04123:	62 e2 7d 40 b8 e6    	vfmadd231ps zmm20,zmm16,zmm6
  a04129:	62 f1 7c 48 10 3c 24 	vmovups zmm7,ZMMWORD PTR [rsp]
  a04130:	62 b1 44 48 58 ea    	vaddps zmm5,zmm7,zmm18
  a04136:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a0413d:	fe 
  a0413e:	62 a1 5c 48 59 c6    	vmulps zmm16,zmm4,zmm22
  a04144:	62 a2 75 40 bc c5    	vfnmadd231ps zmm16,zmm17,zmm21
  a0414a:	62 a1 74 40 59 f6    	vmulps zmm22,zmm17,zmm22
  a04150:	62 d1 04 48 58 f1    	vaddps zmm6,zmm15,zmm9
  a04156:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a0415c:	62 f1 54 48 58 e6    	vaddps zmm4,zmm5,zmm6
  a04162:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a04169:	01 
  a0416a:	62 e1 6c 48 59 eb    	vmulps zmm21,zmm2,zmm3
  a04170:	62 82 0d 48 bc ee    	vfnmadd231ps zmm21,zmm14,zmm30
  a04176:	62 71 0c 48 59 f3    	vmulps zmm14,zmm14,zmm3
  a0417c:	62 91 14 40 58 e7    	vaddps zmm4,zmm29,zmm31
  a04182:	62 72 0d 40 b8 f2    	vfmadd231ps zmm14,zmm30,zmm2
  a04188:	62 91 1c 48 58 dc    	vaddps zmm3,zmm12,zmm28
  a0418e:	62 61 74 48 59 f0    	vmulps zmm30,zmm1,zmm0
  a04194:	62 22 15 48 bc f3    	vfnmadd231ps zmm30,zmm13,zmm19
  a0419a:	62 71 14 48 59 e8    	vmulps zmm13,zmm13,zmm0
  a041a0:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a041a6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a041ad:	03 
  a041ae:	62 72 65 40 b8 e9    	vfmadd231ps zmm13,zmm19,zmm1
  a041b4:	62 b1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm16
  a041ba:	62 81 54 40 58 de    	vaddps zmm19,zmm21,zmm30
  a041c0:	62 81 14 40 5c cf    	vsubps zmm17,zmm29,zmm31
  a041c6:	62 01 3c 48 58 f9    	vaddps zmm31,zmm8,zmm25
  a041cc:	62 91 3c 48 5c e9    	vsubps zmm5,zmm8,zmm25
  a041d2:	62 b1 6c 48 58 cb    	vaddps zmm1,zmm2,zmm19
  a041d8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a041df:	04 
  a041e0:	62 a1 3c 40 5c c0    	vsubps zmm16,zmm24,zmm16
  a041e6:	62 41 0c 48 58 cd    	vaddps zmm25,zmm14,zmm13
  a041ec:	62 41 0c 48 5c c5    	vsubps zmm24,zmm14,zmm13
  a041f2:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a041f8:	62 31 44 48 5c ea    	vsubps zmm13,zmm7,zmm18
  a041fe:	62 81 2c 40 58 d3    	vaddps zmm18,zmm26,zmm27
  a04204:	62 01 2c 40 5c db    	vsubps zmm27,zmm26,zmm27
  a0420a:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a04210:	62 41 2c 48 5c eb    	vsubps zmm29,zmm10,zmm11
  a04216:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a0421d:	ff 
  a0421e:	62 71 44 40 58 df    	vaddps zmm11,zmm23,zmm7
  a04224:	62 51 1c 40 5c e4    	vsubps zmm12,zmm28,zmm12
  a0422a:	62 21 5c 40 58 e6    	vaddps zmm28,zmm20,zmm22
  a04230:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a04236:	62 c1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm11
  a0423c:	62 b1 0c 40 5c cd    	vsubps zmm1,zmm30,zmm21
  a04242:	62 91 2c 40 58 c7    	vaddps zmm0,zmm26,zmm31
  a04248:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a0424f:	02 
  a04250:	62 21 44 48 5c f7    	vsubps zmm30,zmm7,zmm23
  a04256:	62 11 1c 40 58 f1    	vaddps zmm14,zmm28,zmm25
  a0425c:	62 51 34 48 5c ff    	vsubps zmm15,zmm9,zmm15
  a04262:	62 c1 7c 48 58 fe    	vaddps zmm23,zmm0,zmm14
  a04268:	62 f1 5c 48 5c fb    	vsubps zmm7,zmm4,zmm3
  a0426e:	62 f1 74 40 58 e5    	vaddps zmm4,zmm17,zmm5
  a04274:	62 a1 6c 48 5c db    	vsubps zmm19,zmm2,zmm19
  a0427a:	62 91 7c 40 58 d8    	vaddps zmm3,zmm16,zmm24
  a04280:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a04287:	fe 
  a04288:	62 71 7c 48 5c d6    	vsubps zmm10,zmm0,zmm6
  a0428e:	62 f1 5c 48 58 f3    	vaddps zmm6,zmm4,zmm3
  a04294:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a0429b:	ff 
  a0429c:	62 01 2c 40 5c d7    	vsubps zmm26,zmm26,zmm31
  a042a2:	62 91 14 48 58 d3    	vaddps zmm2,zmm13,zmm27
  a042a8:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a042af:	62 01 1c 40 5c c9    	vsubps zmm25,zmm28,zmm25
  a042b5:	62 f2 7d 48 18 05 a1 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6711a1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a042bc:	11 67 ff 
  a042bf:	62 31 24 48 5c ca    	vsubps zmm9,zmm11,zmm18
  a042c5:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a042cb:	62 e2 4d 48 ac ea    	vfnmadd213ps zmm21,zmm6,zmm2
  a042d1:	62 01 14 48 5c db    	vsubps zmm27,zmm13,zmm27
  a042d7:	62 41 14 40 58 e4    	vaddps zmm28,zmm29,zmm12
  a042dd:	62 71 74 40 5c ed    	vsubps zmm13,zmm17,zmm5
  a042e3:	62 f1 5c 40 58 d1    	vaddps zmm2,zmm20,zmm1
  a042e9:	62 81 7c 40 5c c0    	vsubps zmm16,zmm16,zmm24
  a042ef:	62 91 04 48 58 f6    	vaddps zmm6,zmm15,zmm30
  a042f5:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a042fc:	fe 
  a042fd:	62 41 0c 40 5c f7    	vsubps zmm30,zmm30,zmm15
  a04303:	62 72 7d 48 18 1d c7 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff670fc7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0430a:	0f 67 ff 
  a0430d:	62 d1 14 40 5c ec    	vsubps zmm5,zmm29,zmm12
  a04313:	62 e1 1c 40 58 ca    	vaddps zmm17,zmm28,zmm2
  a04319:	62 e1 5c 40 5c d1    	vsubps zmm18,zmm20,zmm1
  a0431f:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a04325:	62 32 45 40 ac e6    	vfnmadd213ps zmm12,zmm23,zmm22
  a0432b:	62 b1 4c 20 58 cf    	vaddps ymm1,ymm22,ymm23
  a04331:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a04337:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x40]
  a0433e:	01 
  a0433f:	62 c2 3d 48 ac e7    	vfnmadd213ps zmm20,zmm8,zmm15
  a04345:	c4 41 00 58 f8       	vaddps xmm15,xmm15,xmm8
  a0434a:	c5 7c 28 05 8e 2e 67 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff672e8e]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a04351:	ff 
  a04352:	62 72 3d 28 7f f9    	vpermt2ps ymm15,ymm8,ymm1
  a04358:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a0435e:	62 62 75 40 ac ee    	vfnmadd213ps zmm29,zmm17,zmm6
  a04364:	c5 dc 5c cb          	vsubps ymm1,ymm4,ymm3
  a04368:	62 41 74 28 59 fb    	vmulps ymm31,ymm1,ymm11
  a0436e:	62 91 14 20 5c df    	vsubps ymm3,ymm29,ymm31
  a04374:	62 f1 1c 00 5c ca    	vsubps xmm1,xmm28,xmm2
  a0437a:	c5 a0 59 c9          	vmulps xmm1,xmm11,xmm1
  a0437e:	62 f1 54 00 58 f1    	vaddps xmm6,xmm21,xmm1
  a04384:	62 f2 3d 28 7f f3    	vpermt2ps ymm6,ymm8,ymm3
  a0438a:	62 b1 44 48 58 e3    	vaddps zmm4,zmm7,zmm19
  a04390:	62 b1 44 28 5c db    	vsubps ymm3,ymm7,ymm19
  a04396:	62 91 2c 40 58 f9    	vaddps zmm7,zmm26,zmm25
  a0439c:	62 81 2c 00 5c d9    	vsubps xmm19,xmm26,xmm25
  a043a2:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a043a8:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a043ae:	62 c2 5d 48 ac fa    	vfnmadd213ps zmm23,zmm4,zmm10
  a043b4:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a043ba:	62 42 45 48 ac c1    	vfnmadd213ps zmm24,zmm7,zmm9
  a043c0:	62 41 64 28 59 cb    	vmulps ymm25,ymm3,ymm11
  a043c6:	62 41 64 00 59 d3    	vmulps xmm26,xmm19,xmm11
  a043cc:	62 91 3c 20 58 d9    	vaddps ymm3,ymm24,ymm25
  a043d2:	62 81 44 00 5c f2    	vsubps xmm22,xmm23,xmm26
  a043d8:	62 e2 3d 28 7f f3    	vpermt2ps ymm22,ymm8,ymm3
  a043de:	62 b1 54 48 58 da    	vaddps zmm3,zmm5,zmm18
  a043e4:	62 61 7c 48 28 e0    	vmovaps zmm28,zmm0
  a043ea:	62 92 65 48 ac c6    	vfnmadd213ps zmm0,zmm3,zmm30
  a043f0:	62 f1 0c 20 58 db    	vaddps ymm3,ymm30,ymm3
  a043f6:	62 a1 14 48 58 d8    	vaddps zmm19,zmm13,zmm16
  a043fc:	62 02 65 40 ac e3    	vfnmadd213ps zmm28,zmm19,zmm27
  a04402:	62 21 24 00 58 db    	vaddps xmm27,xmm27,xmm19
  a04408:	62 62 3d 28 7f db    	vpermt2ps ymm27,ymm8,ymm3
  a0440e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a04415:	03 
  a04416:	c5 e4 5c 9c 24 00 01 	vsubps ymm3,ymm3,YMMWORD PTR [rsp+0x100]
  a0441d:	00 00 
  a0441f:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x80]
  a04426:	02 
  a04427:	c4 41 28 5c d6       	vsubps xmm10,xmm10,xmm14
  a0442c:	c5 24 59 f3          	vmulps ymm14,ymm11,ymm3
  a04430:	c4 41 28 59 d3       	vmulps xmm10,xmm10,xmm11
  a04435:	62 c1 1c 28 5c de    	vsubps ymm19,ymm12,ymm14
  a0443b:	62 d1 5c 00 58 da    	vaddps xmm3,xmm20,xmm10
  a04441:	62 b2 3d 28 7f db    	vpermt2ps ymm3,ymm8,ymm19
  a04447:	62 81 14 20 58 df    	vaddps ymm19,ymm29,ymm31
  a0444d:	62 f1 54 00 5c c9    	vsubps xmm1,xmm21,xmm1
  a04453:	62 b2 3d 28 7f cb    	vpermt2ps ymm1,ymm8,ymm19
  a04459:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  a0445d:	c5 e8 58 d4          	vaddps xmm2,xmm2,xmm4
  a04461:	62 f2 3d 28 7f d7    	vpermt2ps ymm2,ymm8,ymm7
  a04467:	62 b1 14 28 5c f8    	vsubps ymm7,ymm13,ymm16
  a0446d:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  a04471:	62 31 54 08 5c ca    	vsubps xmm9,xmm5,xmm18
  a04477:	c5 7c 5c ef          	vsubps ymm13,ymm0,ymm7
  a0447b:	c4 41 30 59 cb       	vmulps xmm9,xmm9,xmm11
  a04480:	62 51 1c 00 58 d9    	vaddps xmm11,xmm28,xmm9
  a04486:	62 52 3d 28 7f dd    	vpermt2ps ymm11,ymm8,ymm13
  a0448c:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  a04491:	62 51 5c 00 5c d2    	vsubps xmm10,xmm20,xmm10
  a04497:	62 52 3d 28 7f d4    	vpermt2ps ymm10,ymm8,ymm12
  a0449d:	62 f1 74 20 58 6c 24 	vaddps ymm5,ymm17,YMMWORD PTR [rsp-0x80]
  a044a4:	fc 
  a044a5:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x40]
  a044ac:	ff 
  a044ad:	c5 18 58 24 24       	vaddps xmm12,xmm12,XMMWORD PTR [rsp]
  a044b2:	62 72 3d 28 7f e5    	vpermt2ps ymm12,ymm8,ymm5
  a044b8:	62 91 3c 20 5c e9    	vsubps ymm5,ymm24,ymm25
  a044be:	62 11 44 00 58 ea    	vaddps xmm13,xmm23,xmm26
  a044c4:	62 72 3d 28 7f ed    	vpermt2ps ymm13,ymm8,ymm5
  a044ca:	c5 fc 58 c7          	vaddps ymm0,ymm0,ymm7
  a044ce:	62 d1 1c 00 5c e9    	vsubps xmm5,xmm28,xmm9
  a044d4:	62 f2 3d 28 7f e8    	vpermt2ps ymm5,ymm8,ymm0
  a044da:	c5 7c 11 3e          	vmovups YMMWORD PTR [rsi],ymm15
  a044de:	c5 fc 11 76 20       	vmovups YMMWORD PTR [rsi+0x20],ymm6
  a044e3:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a044ea:	62 61 7c 28 11 5e 03 	vmovups YMMWORD PTR [rsi+0x60],ymm27
  a044f1:	c5 fc 11 9e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm3
  a044f8:	00 
  a044f9:	c5 fc 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm1
  a04500:	00 
  a04501:	c5 fc 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm2
  a04508:	00 
  a04509:	c5 7c 11 9e e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm11
  a04510:	00 
  a04511:	c5 7c 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm10
  a04518:	00 
  a04519:	c5 7c 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm12
  a04520:	00 
  a04521:	c5 7c 11 ae 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm13
  a04528:	00 
  a04529:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  a04530:	00 
  a04531:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a04538:	c5 f8 77             	vzeroupper
  a0453b:	c3                   	ret
