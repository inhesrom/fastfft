
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a63ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a63ac0:	48 81 ec 48 01 00 00 	sub    rsp,0x148
  a63ac7:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a63acd:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a63ad2:	62 f1 7c 48 28 15 e4 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6304e4]        # 93fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21470>
  a63ad9:	04 63 ff 
  a63adc:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a63ae2:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a63ae8:	62 f1 7c 48 28 25 0e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63050e]        # 94000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x214b0>
  a63aef:	05 63 ff 
  a63af2:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a63af8:	62 f1 7c 48 10 af 60 	vmovups zmm5,ZMMWORD PTR [rdi+0x60]
  a63aff:	00 00 00 
  a63b02:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a63b09:	00 
  a63b0a:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a63b10:	62 f2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm0
  a63b16:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a63b1c:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a63b23:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a63b2a:	00 
  a63b2b:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a63b31:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a63b37:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a63b3d:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a63b44:	01 00 00 
  a63b47:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a63b4e:	00 
  a63b4f:	62 f2 2d 48 77 d0    	vpermi2ps zmm2,zmm10,zmm0
  a63b55:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a63b5b:	62 51 74 48 58 d8    	vaddps zmm11,zmm1,zmm8
  a63b61:	62 51 54 48 58 e2    	vaddps zmm12,zmm5,zmm10
  a63b67:	62 d1 24 48 58 c4    	vaddps zmm0,zmm11,zmm12
  a63b6d:	62 51 64 48 58 e9    	vaddps zmm13,zmm3,zmm9
  a63b73:	62 71 4c 48 58 f2    	vaddps zmm14,zmm6,zmm2
  a63b79:	62 d1 14 48 58 fe    	vaddps zmm7,zmm13,zmm14
  a63b7f:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a63b85:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a63b8b:	62 f1 74 48 58 e2    	vaddps zmm4,zmm1,zmm2
  a63b91:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a63b97:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a63b9d:	62 e1 54 48 58 cb    	vaddps zmm17,zmm5,zmm3
  a63ba3:	62 d1 24 48 5c f4    	vsubps zmm6,zmm11,zmm12
  a63ba9:	62 51 14 48 5c f6    	vsubps zmm14,zmm13,zmm14
  a63baf:	62 71 74 48 5c c2    	vsubps zmm8,zmm1,zmm2
  a63bb5:	62 e1 64 48 5c d5    	vsubps zmm18,zmm3,zmm5
  a63bbb:	62 e1 7c 48 28 25 bb 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6633bb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a63bc2:	33 66 ff 
  a63bc5:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a63bcb:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a63bd1:	62 b2 5d 40 7f d3    	vpermt2ps zmm2,zmm20,zmm19
  a63bd7:	62 e1 7c 48 28 35 df 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6633df]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a63bde:	33 66 ff 
  a63be1:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a63be7:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a63bed:	62 32 5d 40 7f d3    	vpermt2ps zmm10,zmm20,zmm19
  a63bf3:	62 b2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm19
  a63bf9:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a63bff:	62 b2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm19
  a63c05:	62 b2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm19
  a63c0b:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a63c11:	62 32 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm19
  a63c17:	62 32 4d 40 7f c3    	vpermt2ps zmm8,zmm22,zmm19
  a63c1d:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a63c23:	62 a2 5d 40 7f ed    	vpermt2ps zmm21,zmm20,zmm21
  a63c29:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a63c2e:	62 52 4d 40 7f ed    	vpermt2ps zmm13,zmm22,zmm13
  a63c34:	62 e1 7c 48 28 05 c2 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6632c2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a63c3b:	32 66 ff 
  a63c3e:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a63c44:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a63c4a:	62 61 7c 48 28 05 ec 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6632ec]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a63c51:	32 66 ff 
  a63c54:	62 b2 3d 40 7f d5    	vpermt2ps zmm2,zmm24,zmm21
  a63c5a:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a63c60:	62 32 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm21
  a63c66:	62 32 3d 40 7f d5    	vpermt2ps zmm10,zmm24,zmm21
  a63c6c:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a63c72:	62 32 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm21
  a63c78:	62 b2 3d 40 7f ed    	vpermt2ps zmm5,zmm24,zmm21
  a63c7e:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a63c84:	62 32 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm21
  a63c8a:	62 32 3d 40 7f dd    	vpermt2ps zmm11,zmm24,zmm21
  a63c90:	62 d2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm13
  a63c96:	62 d2 7d 40 7f e5    	vpermt2ps zmm4,zmm16,zmm13
  a63c9c:	62 d2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm13
  a63ca2:	62 52 7d 40 7f c5    	vpermt2ps zmm8,zmm16,zmm13
  a63ca8:	62 d1 f5 48 14 d9    	vunpcklpd zmm3,zmm1,zmm9
  a63cae:	62 51 f5 48 15 c9    	vunpckhpd zmm9,zmm1,zmm9
  a63cb4:	62 41 9d 48 14 cf    	vunpcklpd zmm25,zmm12,zmm15
  a63cba:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  a63cc0:	62 f1 ed 48 14 cd    	vunpcklpd zmm1,zmm2,zmm5
  a63cc6:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  a63ccc:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  a63cd2:	62 41 ad 48 15 d3    	vunpckhpd zmm26,zmm10,zmm11
  a63cd8:	62 71 fd 48 14 d6    	vunpcklpd zmm10,zmm0,zmm6
  a63cde:	62 f1 fd 48 15 d6    	vunpckhpd zmm2,zmm0,zmm6
  a63ce4:	62 41 dd 48 14 d8    	vunpcklpd zmm27,zmm4,zmm8
  a63cea:	62 41 dd 48 15 e0    	vunpckhpd zmm28,zmm4,zmm8
  a63cf0:	62 71 7c 48 28 05 06 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff663106]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a63cf7:	31 66 ff 
  a63cfa:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a63d00:	62 92 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm25
  a63d06:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a63d0d:	ff 
  a63d0e:	62 e1 7c 48 28 3d 28 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff663128]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a63d15:	31 66 ff 
  a63d18:	62 92 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm25
  a63d1e:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a63d24:	62 d2 3d 48 7f e4    	vpermt2ps zmm4,zmm8,zmm12
  a63d2a:	62 52 45 40 7f cc    	vpermt2ps zmm9,zmm23,zmm12
  a63d30:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a63d36:	62 52 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm15
  a63d3c:	62 d2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm15
  a63d42:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a63d49:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a63d4f:	62 12 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm26
  a63d55:	62 92 45 40 7f ea    	vpermt2ps zmm5,zmm23,zmm26
  a63d5b:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a63d61:	62 92 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm27
  a63d67:	62 12 45 40 7f d3    	vpermt2ps zmm10,zmm23,zmm27
  a63d6d:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a63d73:	62 12 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm28
  a63d79:	62 92 45 40 7f d4    	vpermt2ps zmm2,zmm23,zmm28
  a63d7f:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  a63d85:	62 22 5d 40 7f cb    	vpermt2ps zmm25,zmm20,zmm19
  a63d8b:	62 b2 4d 40 7f fb    	vpermt2ps zmm7,zmm22,zmm19
  a63d91:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a63d97:	62 22 5d 40 7f d3    	vpermt2ps zmm26,zmm20,zmm19
  a63d9d:	62 a2 4d 40 7f cb    	vpermt2ps zmm17,zmm22,zmm19
  a63da3:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a63da9:	62 22 5d 40 7f e3    	vpermt2ps zmm28,zmm20,zmm19
  a63daf:	62 32 4d 40 7f f3    	vpermt2ps zmm14,zmm22,zmm19
  a63db5:	62 a2 6d 40 77 e3    	vpermi2ps zmm20,zmm18,zmm19
  a63dbb:	62 a2 4d 40 7f d3    	vpermt2ps zmm18,zmm22,zmm19
  a63dc1:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a63dc7:	62 a2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm21
  a63dcd:	62 22 3d 40 7f cd    	vpermt2ps zmm25,zmm24,zmm21
  a63dd3:	62 81 7c 48 28 f2    	vmovaps zmm22,zmm26
  a63dd9:	62 a2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm21
  a63ddf:	62 22 3d 40 7f d5    	vpermt2ps zmm26,zmm24,zmm21
  a63de5:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a63deb:	62 22 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm21
  a63df1:	62 22 3d 40 7f e5    	vpermt2ps zmm28,zmm24,zmm21
  a63df7:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a63dfd:	62 22 7d 40 7f ed    	vpermt2ps zmm29,zmm16,zmm21
  a63e03:	62 a2 3d 40 7f e5    	vpermt2ps zmm20,zmm24,zmm21
  a63e09:	62 d2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm13
  a63e0f:	62 c2 7d 40 7f cd    	vpermt2ps zmm17,zmm16,zmm13
  a63e15:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a63e1b:	62 c2 7d 40 7f d5    	vpermt2ps zmm18,zmm16,zmm13
  a63e21:	62 81 e5 40 14 c3    	vunpcklpd zmm16,zmm19,zmm27
  a63e27:	62 01 e5 40 15 db    	vunpckhpd zmm27,zmm19,zmm27
  a63e2d:	62 81 cd 40 14 ed    	vunpcklpd zmm21,zmm22,zmm29
  a63e33:	62 81 cd 40 15 f5    	vunpckhpd zmm22,zmm22,zmm29
  a63e39:	62 11 b5 40 14 ec    	vunpcklpd zmm13,zmm25,zmm28
  a63e3f:	62 81 b5 40 15 dc    	vunpckhpd zmm19,zmm25,zmm28
  a63e45:	62 21 ad 40 14 c4    	vunpcklpd zmm24,zmm26,zmm20
  a63e4b:	62 a1 ad 40 15 e4    	vunpckhpd zmm20,zmm26,zmm20
  a63e51:	62 41 c5 48 14 e6    	vunpcklpd zmm28,zmm7,zmm14
  a63e57:	62 51 c5 48 15 f6    	vunpckhpd zmm14,zmm7,zmm14
  a63e5d:	62 21 f5 40 14 ca    	vunpcklpd zmm25,zmm17,zmm18
  a63e63:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a63e69:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a63e6f:	62 b2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm21
  a63e75:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a63e7c:	fe 
  a63e7d:	62 a2 45 40 7f c5    	vpermt2ps zmm16,zmm23,zmm21
  a63e83:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a63e89:	62 b2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm22
  a63e8f:	62 22 45 40 7f de    	vpermt2ps zmm27,zmm23,zmm22
  a63e95:	62 41 7c 48 28 ed    	vmovaps zmm29,zmm13
  a63e9b:	62 02 3d 48 7f e8    	vpermt2ps zmm29,zmm8,zmm24
  a63ea1:	62 12 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm24
  a63ea7:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a63ead:	62 22 3d 48 7f c4    	vpermt2ps zmm24,zmm8,zmm20
  a63eb3:	62 a2 45 40 7f dc    	vpermt2ps zmm19,zmm23,zmm20
  a63eb9:	62 81 7c 48 28 e4    	vmovaps zmm20,zmm28
  a63ebf:	62 82 3d 48 7f e1    	vpermt2ps zmm20,zmm8,zmm25
  a63ec5:	62 02 45 40 7f e1    	vpermt2ps zmm28,zmm23,zmm25
  a63ecb:	62 32 0d 48 77 c2    	vpermi2ps zmm8,zmm14,zmm18
  a63ed1:	62 32 45 40 7f f2    	vpermt2ps zmm14,zmm23,zmm18
  a63ed7:	62 61 7c 48 10 52 02 	vmovups zmm26,ZMMWORD PTR [rdx+0x80]
  a63ede:	62 61 7c 48 10 4a 03 	vmovups zmm25,ZMMWORD PTR [rdx+0xc0]
  a63ee5:	62 e1 7c 48 10 72 04 	vmovups zmm22,ZMMWORD PTR [rdx+0x100]
  a63eec:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a63ef3:	62 61 7c 48 10 72 06 	vmovups zmm30,ZMMWORD PTR [rdx+0x180]
  a63efa:	62 e1 7c 48 10 7a 0c 	vmovups zmm23,ZMMWORD PTR [rdx+0x300]
  a63f01:	62 61 7c 48 10 7a 0d 	vmovups zmm31,ZMMWORD PTR [rdx+0x340]
  a63f08:	62 b1 04 48 59 cf    	vmulps zmm1,zmm15,zmm23
  a63f0e:	62 92 3d 40 bc cf    	vfnmadd231ps zmm1,zmm24,zmm31
  a63f14:	62 a1 3c 40 59 ff    	vmulps zmm23,zmm24,zmm23
  a63f1a:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a63f21:	62 c2 05 40 b8 ff    	vfmadd231ps zmm23,zmm31,zmm15
  a63f27:	62 61 7c 48 10 7a 08 	vmovups zmm31,ZMMWORD PTR [rdx+0x200]
  a63f2e:	62 01 34 48 59 c6    	vmulps zmm24,zmm9,zmm30
  a63f34:	62 62 25 40 bc c0    	vfnmadd231ps zmm24,zmm27,zmm0
  a63f3a:	62 11 24 40 59 fe    	vmulps zmm15,zmm27,zmm30
  a63f40:	62 61 7c 48 10 5a 12 	vmovups zmm27,ZMMWORD PTR [rdx+0x480]
  a63f47:	62 52 7d 48 b8 f9    	vfmadd231ps zmm15,zmm0,zmm9
  a63f4d:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a63f54:	62 11 2c 48 59 cb    	vmulps zmm9,zmm10,zmm27
  a63f5a:	62 72 1d 40 bc c8    	vfnmadd231ps zmm9,zmm28,zmm0
  a63f60:	62 01 1c 40 59 db    	vmulps zmm27,zmm28,zmm27
  a63f66:	62 61 7c 48 10 72 09 	vmovups zmm30,ZMMWORD PTR [rdx+0x240]
  a63f6d:	62 42 7d 48 b8 da    	vfmadd231ps zmm27,zmm0,zmm10
  a63f73:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a63f7a:	62 01 24 48 59 e7    	vmulps zmm28,zmm11,zmm31
  a63f80:	62 02 15 40 bc e6    	vfnmadd231ps zmm28,zmm29,zmm30
  a63f86:	62 11 14 40 59 d7    	vmulps zmm10,zmm29,zmm31
  a63f8c:	62 61 7c 48 10 6a 14 	vmovups zmm29,ZMMWORD PTR [rdx+0x500]
  a63f93:	62 52 0d 40 b8 d3    	vfmadd231ps zmm10,zmm30,zmm11
  a63f99:	62 61 7c 48 10 72 15 	vmovups zmm30,ZMMWORD PTR [rdx+0x540]
  a63fa0:	62 01 1c 48 59 fd    	vmulps zmm31,zmm12,zmm29
  a63fa6:	62 02 3d 48 bc fe    	vfnmadd231ps zmm31,zmm8,zmm30
  a63fac:	62 11 3c 48 59 dd    	vmulps zmm11,zmm8,zmm29
  a63fb2:	62 71 7c 48 10 42 0e 	vmovups zmm8,ZMMWORD PTR [rdx+0x380]
  a63fb9:	62 52 0d 40 b8 dc    	vfmadd231ps zmm11,zmm30,zmm12
  a63fbf:	62 61 7c 48 10 6a 0f 	vmovups zmm29,ZMMWORD PTR [rdx+0x3c0]
  a63fc6:	62 51 54 48 59 e0    	vmulps zmm12,zmm5,zmm8
  a63fcc:	62 12 65 40 bc e5    	vfnmadd231ps zmm12,zmm19,zmm29
  a63fd2:	62 c1 64 40 59 d8    	vmulps zmm19,zmm19,zmm8
  a63fd8:	62 61 7c 48 10 72 0b 	vmovups zmm30,ZMMWORD PTR [rdx+0x2c0]
  a63fdf:	62 e2 15 40 b8 dd    	vfmadd231ps zmm19,zmm29,zmm5
  a63fe5:	62 f1 7c 48 10 6a 10 	vmovups zmm5,ZMMWORD PTR [rdx+0x400]
  a63fec:	62 01 64 48 59 ea    	vmulps zmm29,zmm3,zmm26
  a63ff2:	62 02 7d 40 bc e9    	vfnmadd231ps zmm29,zmm16,zmm25
  a63ff8:	62 81 7c 40 59 c2    	vmulps zmm16,zmm16,zmm26
  a63ffe:	62 71 7c 48 10 42 11 	vmovups zmm8,ZMMWORD PTR [rdx+0x440]
  a64005:	62 e2 35 40 b8 c3    	vfmadd231ps zmm16,zmm25,zmm3
  a6400b:	62 61 7c 48 10 4a 16 	vmovups zmm25,ZMMWORD PTR [rdx+0x580]
  a64012:	62 61 4c 48 59 d5    	vmulps zmm26,zmm6,zmm5
  a64018:	62 42 5d 40 bc d0    	vfnmadd231ps zmm26,zmm20,zmm8
  a6401e:	62 e1 5c 40 59 e5    	vmulps zmm20,zmm20,zmm5
  a64024:	62 f1 7c 48 10 5a 17 	vmovups zmm3,ZMMWORD PTR [rdx+0x5c0]
  a6402b:	62 e2 3d 48 b8 e6    	vfmadd231ps zmm20,zmm8,zmm6
  a64031:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x40]
  a64038:	ff 
  a64039:	62 e1 54 48 58 d1    	vaddps zmm18,zmm5,zmm1
  a6403f:	62 31 5c 48 59 c6    	vmulps zmm8,zmm4,zmm22
  a64045:	62 32 45 48 bc c5    	vfnmadd231ps zmm8,zmm7,zmm21
  a6404b:	62 a1 44 48 59 f6    	vmulps zmm22,zmm7,zmm22
  a64051:	62 c1 3c 40 58 c9    	vaddps zmm17,zmm24,zmm9
  a64057:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a6405d:	62 b1 6c 40 58 e1    	vaddps zmm4,zmm18,zmm17
  a64063:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a6406a:	01 
  a6406b:	62 81 6c 48 59 e9    	vmulps zmm21,zmm2,zmm25
  a64071:	62 e2 0d 48 bc eb    	vfnmadd231ps zmm21,zmm14,zmm3
  a64077:	62 11 0c 48 59 f1    	vmulps zmm14,zmm14,zmm25
  a6407d:	62 01 1c 40 58 cf    	vaddps zmm25,zmm28,zmm31
  a64083:	62 72 65 48 b8 f2    	vfmadd231ps zmm14,zmm3,zmm2
  a64089:	62 91 1c 48 58 f5    	vaddps zmm6,zmm12,zmm29
  a6408f:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a64096:	62 f1 6c 48 59 d8    	vmulps zmm3,zmm2,zmm0
  a6409c:	62 92 15 48 bc de    	vfnmadd231ps zmm3,zmm13,zmm30
  a640a2:	62 f1 14 48 59 c0    	vmulps zmm0,zmm13,zmm0
  a640a8:	62 f1 34 40 58 e6    	vaddps zmm4,zmm25,zmm6
  a640ae:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a640b5:	03 
  a640b6:	62 f2 0d 40 b8 c2    	vfmadd231ps zmm0,zmm30,zmm2
  a640bc:	62 d1 2c 40 58 d0    	vaddps zmm2,zmm26,zmm8
  a640c2:	62 71 54 40 58 eb    	vaddps zmm13,zmm21,zmm3
  a640c8:	62 01 1c 40 5c f7    	vsubps zmm30,zmm28,zmm31
  a640ce:	62 21 64 40 58 e0    	vaddps zmm28,zmm19,zmm16
  a640d4:	62 a1 64 40 5c d8    	vsubps zmm19,zmm19,zmm16
  a640da:	62 d1 6c 48 58 fd    	vaddps zmm7,zmm2,zmm13
  a640e0:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a640e7:	04 
  a640e8:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a640ee:	62 61 0c 48 58 d0    	vaddps zmm26,zmm14,zmm0
  a640f4:	62 61 0c 48 5c f8    	vsubps zmm31,zmm14,zmm0
  a640fa:	62 e1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm7
  a64100:	62 f1 54 48 5c e1    	vsubps zmm4,zmm5,zmm1
  a64106:	62 11 04 48 58 f3    	vaddps zmm14,zmm15,zmm27
  a6410c:	62 01 04 48 5c db    	vsubps zmm27,zmm15,zmm27
  a64112:	62 d1 2c 48 58 c3    	vaddps zmm0,zmm10,zmm11
  a64118:	62 d1 2c 48 5c eb    	vsubps zmm5,zmm10,zmm11
  a6411e:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x80]
  a64125:	fe 
  a64126:	62 71 44 40 58 d7    	vaddps zmm10,zmm23,zmm7
  a6412c:	62 51 14 40 5c e4    	vsubps zmm12,zmm29,zmm12
  a64132:	62 31 5c 40 58 de    	vaddps zmm11,zmm20,zmm22
  a64138:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a6413e:	62 c1 0c 48 58 f2    	vaddps zmm22,zmm14,zmm10
  a64144:	62 b1 64 48 5c cd    	vsubps zmm1,zmm3,zmm21
  a6414a:	62 81 7c 48 58 ec    	vaddps zmm21,zmm0,zmm28
  a64150:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm21
  a64157:	02 
  a64158:	62 b1 44 48 5c df    	vsubps zmm3,zmm7,zmm23
  a6415e:	62 11 24 48 58 fa    	vaddps zmm15,zmm11,zmm26
  a64164:	62 01 34 48 5c e8    	vsubps zmm29,zmm9,zmm24
  a6416a:	62 d1 54 40 58 ff    	vaddps zmm7,zmm21,zmm15
  a64170:	62 f1 34 40 5c f6    	vsubps zmm6,zmm25,zmm6
  a64176:	62 31 0c 40 58 cb    	vaddps zmm9,zmm30,zmm19
  a6417c:	62 c1 6c 48 5c fd    	vsubps zmm23,zmm2,zmm13
  a64182:	62 91 3c 48 58 d7    	vaddps zmm2,zmm8,zmm31
  a64188:	62 a1 6c 40 5c d1    	vsubps zmm18,zmm18,zmm17
  a6418e:	62 71 34 48 58 ea    	vaddps zmm13,zmm9,zmm2
  a64194:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a6419b:	ff 
  a6419c:	62 01 7c 48 5c c4    	vsubps zmm24,zmm0,zmm28
  a641a2:	62 81 5c 48 58 cb    	vaddps zmm17,zmm4,zmm27
  a641a8:	62 e1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm17
  a641af:	62 01 24 48 5c ca    	vsubps zmm25,zmm11,zmm26
  a641b5:	62 f2 7d 48 18 05 a1 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6112a1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a641bc:	12 61 ff 
  a641bf:	62 51 2c 48 5c f6    	vsubps zmm14,zmm10,zmm14
  a641c5:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a641cb:	62 a2 15 48 ac e9    	vfnmadd213ps zmm21,zmm13,zmm17
  a641d1:	62 01 5c 48 5c e3    	vsubps zmm28,zmm4,zmm27
  a641d7:	62 d1 54 48 58 e4    	vaddps zmm4,zmm5,zmm12
  a641dd:	62 31 0c 40 5c d3    	vsubps zmm10,zmm30,zmm19
  a641e3:	62 61 5c 40 58 d1    	vaddps zmm26,zmm20,zmm1
  a641e9:	62 11 3c 48 5c df    	vsubps zmm11,zmm8,zmm31
  a641ef:	62 61 14 40 58 db    	vaddps zmm27,zmm29,zmm3
  a641f5:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm27
  a641fc:	fe 
  a641fd:	62 01 64 48 5c ed    	vsubps zmm29,zmm3,zmm29
  a64203:	62 72 7d 48 18 2d c7 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6110c7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6420a:	10 61 ff 
  a6420d:	62 c1 54 48 5c dc    	vsubps zmm19,zmm5,zmm12
  a64213:	62 91 5c 48 58 da    	vaddps zmm3,zmm4,zmm26
  a64219:	62 e1 5c 40 5c e1    	vsubps zmm20,zmm20,zmm1
  a6421f:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a64225:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a6422c:	01 
  a6422d:	62 72 7d 40 ac e1    	vfnmadd213ps zmm12,zmm16,zmm1
  a64233:	62 b1 74 28 58 c8    	vaddps ymm1,ymm1,ymm16
  a64239:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a6423f:	62 a2 45 48 ac ce    	vfnmadd213ps zmm17,zmm7,zmm22
  a64245:	62 f1 4c 00 58 ff    	vaddps xmm7,xmm22,xmm7
  a6424b:	c5 7c 28 05 8d 2f 61 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff612f8d]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a64252:	ff 
  a64253:	62 f2 3d 28 7f f9    	vpermt2ps ymm7,ymm8,ymm1
  a64259:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a6425f:	62 02 65 48 ac f3    	vfnmadd213ps zmm30,zmm3,zmm27
  a64265:	62 91 5c 28 5c ca    	vsubps ymm1,ymm4,ymm26
  a6426b:	62 41 74 28 59 fd    	vmulps ymm31,ymm1,ymm13
  a64271:	62 91 54 20 58 e7    	vaddps ymm4,ymm21,ymm31
  a64277:	c5 b0 5c ca          	vsubps xmm1,xmm9,xmm2
  a6427b:	c5 90 59 c9          	vmulps xmm1,xmm13,xmm1
  a6427f:	62 e1 0c 00 5c c1    	vsubps xmm16,xmm30,xmm1
  a64285:	62 e2 3d 28 7f c4    	vpermt2ps ymm16,ymm8,ymm4
  a6428b:	62 91 3c 40 58 d1    	vaddps zmm2,zmm24,zmm25
  a64291:	62 91 3c 20 5c e1    	vsubps ymm4,ymm24,ymm25
  a64297:	62 b1 4c 48 58 ef    	vaddps zmm5,zmm6,zmm23
  a6429d:	62 b1 4c 08 5c f7    	vsubps xmm6,xmm6,xmm23
  a642a3:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a642a9:	62 a2 55 48 ac fa    	vfnmadd213ps zmm23,zmm5,zmm18
  a642af:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a642b5:	62 42 6d 48 ac c6    	vfnmadd213ps zmm24,zmm2,zmm14
  a642bb:	62 41 5c 28 59 cd    	vmulps ymm25,ymm4,ymm13
  a642c1:	62 41 4c 08 59 d5    	vmulps xmm26,xmm6,xmm13
  a642c7:	62 91 44 20 5c e1    	vsubps ymm4,ymm23,ymm25
  a642cd:	62 81 3c 00 58 f2    	vaddps xmm22,xmm24,xmm26
  a642d3:	62 e2 3d 28 7f f4    	vpermt2ps ymm22,ymm8,ymm4
  a642d9:	62 d1 2c 48 58 e3    	vaddps zmm4,zmm10,zmm11
  a642df:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a642e5:	62 02 5d 48 ac dc    	vfnmadd213ps zmm27,zmm4,zmm28
  a642eb:	62 f1 1c 20 58 e4    	vaddps ymm4,ymm28,ymm4
  a642f1:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a642f7:	62 92 4d 48 ac c5    	vfnmadd213ps zmm0,zmm6,zmm29
  a642fd:	62 61 14 00 58 e6    	vaddps xmm28,xmm29,xmm6
  a64303:	62 62 3d 28 7f e4    	vpermt2ps ymm28,ymm8,ymm4
  a64309:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a64310:	02 
  a64311:	c4 c1 5c 5c e7       	vsubps ymm4,ymm4,ymm15
  a64316:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0xc0]
  a6431d:	03 
  a6431e:	c5 c8 5c b4 24 00 01 	vsubps xmm6,xmm6,XMMWORD PTR [rsp+0x100]
  a64325:	00 00 
  a64327:	c5 14 59 cc          	vmulps ymm9,ymm13,ymm4
  a6432b:	c5 90 59 f6          	vmulps xmm6,xmm13,xmm6
  a6432f:	c4 41 1c 58 f9       	vaddps ymm15,ymm12,ymm9
  a64334:	62 f1 74 00 5c e6    	vsubps xmm4,xmm17,xmm6
  a6433a:	62 d2 3d 28 7f e7    	vpermt2ps ymm4,ymm8,ymm15
  a64340:	62 11 54 20 5c ff    	vsubps ymm15,ymm21,ymm31
  a64346:	62 f1 0c 00 58 c9    	vaddps xmm1,xmm30,xmm1
  a6434c:	62 d2 3d 28 7f cf    	vpermt2ps ymm1,ymm8,ymm15
  a64352:	62 f1 6c 20 58 ed    	vaddps ymm5,ymm18,ymm5
  a64358:	c5 88 58 d2          	vaddps xmm2,xmm14,xmm2
  a6435c:	62 f2 3d 28 7f d5    	vpermt2ps ymm2,ymm8,ymm5
  a64362:	62 b1 64 20 5c ec    	vsubps ymm5,ymm19,ymm20
  a64368:	c5 94 59 ed          	vmulps ymm5,ymm13,ymm5
  a6436c:	c4 41 28 5c d3       	vsubps xmm10,xmm10,xmm11
  a64371:	62 71 24 20 58 dd    	vaddps ymm11,ymm27,ymm5
  a64377:	c4 41 28 59 d5       	vmulps xmm10,xmm10,xmm13
  a6437c:	c4 41 78 5c ea       	vsubps xmm13,xmm0,xmm10
  a64381:	62 52 3d 28 7f eb    	vpermt2ps ymm13,ymm8,ymm11
  a64387:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  a6438c:	62 f1 74 00 58 f6    	vaddps xmm6,xmm17,xmm6
  a64392:	62 d2 3d 28 7f f1    	vpermt2ps ymm6,ymm8,ymm9
  a64398:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a6439f:	ff 
  a643a0:	c5 34 58 0c 24       	vaddps ymm9,ymm9,YMMWORD PTR [rsp]
  a643a5:	c5 e0 58 5c 24 80    	vaddps xmm3,xmm3,XMMWORD PTR [rsp-0x80]
  a643ab:	62 d2 3d 28 7f d9    	vpermt2ps ymm3,ymm8,ymm9
  a643b1:	62 11 44 20 58 c9    	vaddps ymm9,ymm23,ymm25
  a643b7:	62 11 3c 00 5c da    	vsubps xmm11,xmm24,xmm26
  a643bd:	62 52 3d 28 7f d9    	vpermt2ps ymm11,ymm8,ymm9
  a643c3:	62 f1 24 20 5c ed    	vsubps ymm5,ymm27,ymm5
  a643c9:	c5 a8 58 c0          	vaddps xmm0,xmm10,xmm0
  a643cd:	62 f2 3d 28 7f c5    	vpermt2ps ymm0,ymm8,ymm5
  a643d3:	c5 fc 11 3e          	vmovups YMMWORD PTR [rsi],ymm7
  a643d7:	62 e1 7c 28 11 46 01 	vmovups YMMWORD PTR [rsi+0x20],ymm16
  a643de:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a643e5:	62 61 7c 28 11 66 03 	vmovups YMMWORD PTR [rsi+0x60],ymm28
  a643ec:	c5 fc 11 a6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm4
  a643f3:	00 
  a643f4:	c5 fc 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm1
  a643fb:	00 
  a643fc:	c5 fc 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm2
  a64403:	00 
  a64404:	c5 7c 11 ae e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm13
  a6440b:	00 
  a6440c:	c5 fc 11 b6 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm6
  a64413:	00 
  a64414:	c5 fc 11 9e 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm3
  a6441b:	00 
  a6441c:	c5 7c 11 9e 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm11
  a64423:	00 
  a64424:	c5 fc 11 86 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm0
  a6442b:	00 
  a6442c:	48 81 c4 48 01 00 00 	add    rsp,0x148
  a64433:	c5 f8 77             	vzeroupper
  a64436:	c3                   	ret
