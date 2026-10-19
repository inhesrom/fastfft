
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a38bc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a38bc0:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a38bc5:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a38bcc:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a38bd2:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a38bd8:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a38bdf:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a38be3:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  a38bea:	62 f1 7c 48 28 0d cc 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6587cc]        # 913c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e870>
  a38bf1:	87 65 ff 
  a38bf4:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a38bf8:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a38bfe:	62 f2 75 48 7f f3    	vpermt2ps zmm6,zmm1,zmm3
  a38c04:	62 f1 7c 48 28 05 f2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6587f2]        # 91400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e8b0>
  a38c0b:	87 65 ff 
  a38c0e:	c5 f8 10 67 50       	vmovups xmm4,XMMWORD PTR [rdi+0x50]
  a38c13:	c4 e3 59 21 67 54 10 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x54],0x10
  a38c1a:	c4 e2 79 18 6f 58    	vbroadcastss xmm5,DWORD PTR [rdi+0x58]
  a38c20:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a38c26:	c4 e3 51 0c e4 03    	vblendps xmm4,xmm5,xmm4,0x3
  a38c2c:	c4 e3 59 21 67 5c 30 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x5c],0x30
  a38c33:	c5 fc 10 6f 30       	vmovups ymm5,YMMWORD PTR [rdi+0x30]
  a38c38:	62 f3 55 48 18 ec 02 	vinsertf32x4 zmm5,zmm5,xmm4,0x2
  a38c3f:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a38c45:	62 f2 75 48 7f fb    	vpermt2ps zmm7,zmm1,zmm3
  a38c4b:	62 f2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm3
  a38c51:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  a38c58:	00 
  a38c59:	c4 e3 59 21 a7 84 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x84],0x10
  a38c60:	00 00 10 
  a38c63:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a38c68:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a38c6f:	00 00 
  a38c71:	c4 e3 31 0c e4 03    	vblendps xmm4,xmm9,xmm4,0x3
  a38c77:	c4 e3 59 21 a7 8c 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x8c],0x30
  a38c7e:	00 00 30 
  a38c81:	62 73 3d 48 18 c4 02 	vinsertf32x4 zmm8,zmm8,xmm4,0x2
  a38c88:	62 f2 3d 48 77 cb    	vpermi2ps zmm1,zmm8,zmm3
  a38c8e:	62 72 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm3
  a38c94:	62 51 54 48 58 c8    	vaddps zmm9,zmm5,zmm8
  a38c9a:	62 51 6c 48 58 d1    	vaddps zmm10,zmm2,zmm9
  a38ca0:	62 71 44 48 58 d9    	vaddps zmm11,zmm7,zmm1
  a38ca6:	62 d1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm11
  a38cac:	62 f2 7d 48 18 05 aa 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63c7aa]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a38cb3:	c7 63 ff 
  a38cb6:	62 d2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm9
  a38cbc:	62 f1 44 48 5c f9    	vsubps zmm7,zmm7,zmm1
  a38cc2:	62 f2 7d 48 18 0d 08 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63c608]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a38cc9:	c6 63 ff 
  a38ccc:	62 71 44 48 59 c9    	vmulps zmm9,zmm7,zmm1
  a38cd2:	62 d1 6c 48 58 f9    	vaddps zmm7,zmm2,zmm9
  a38cd8:	62 d2 7d 48 bc f3    	vfnmadd231ps zmm6,zmm0,zmm11
  a38cde:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a38ce4:	62 71 54 48 59 c1    	vmulps zmm8,zmm5,zmm1
  a38cea:	62 d1 4c 48 5c e8    	vsubps zmm5,zmm6,zmm8
  a38cf0:	62 d1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm9
  a38cf6:	62 f1 3c 48 58 f6    	vaddps zmm6,zmm8,zmm6
  a38cfc:	62 71 7c 48 28 05 7a 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68e27a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a38d03:	e2 68 ff 
  a38d06:	62 72 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm3
  a38d0c:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a38d12:	62 f2 3d 48 7f d3    	vpermt2ps zmm2,zmm8,zmm3
  a38d18:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a38d1d:	62 52 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm11
  a38d23:	62 71 7c 48 28 0d d3 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff68e1d3]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a38d2a:	e1 68 ff 
  a38d2d:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a38d33:	62 52 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm11
  a38d39:	62 71 7c 48 28 2d fd 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68e1fd]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a38d40:	e1 68 ff 
  a38d43:	62 52 15 48 7f d3    	vpermt2ps zmm10,zmm13,zmm11
  a38d49:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a38d4f:	62 52 35 48 7f f3    	vpermt2ps zmm14,zmm9,zmm11
  a38d55:	62 d2 15 48 7f fb    	vpermt2ps zmm7,zmm13,zmm11
  a38d5b:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a38d61:	62 52 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm11
  a38d67:	62 d2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm11
  a38d6d:	62 f1 ad 48 14 d2    	vunpcklpd zmm2,zmm10,zmm2
  a38d73:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a38d79:	62 c2 35 48 7f c3    	vpermt2ps zmm16,zmm9,zmm11
  a38d7f:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  a38d85:	62 f2 3d 48 7f eb    	vpermt2ps zmm5,zmm8,zmm3
  a38d8b:	62 f2 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm3
  a38d91:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a38d97:	62 c2 35 48 7f cb    	vpermt2ps zmm17,zmm9,zmm11
  a38d9d:	62 d2 15 48 7f e3    	vpermt2ps zmm4,zmm13,zmm11
  a38da3:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a38da9:	62 c2 35 48 7f d3    	vpermt2ps zmm18,zmm9,zmm11
  a38daf:	62 d2 15 48 7f eb    	vpermt2ps zmm5,zmm13,zmm11
  a38db5:	62 52 4d 48 77 cb    	vpermi2ps zmm9,zmm6,zmm11
  a38dbb:	62 d2 15 48 7f f3    	vpermt2ps zmm6,zmm13,zmm11
  a38dc1:	62 52 15 48 7f db    	vpermt2ps zmm11,zmm13,zmm11
  a38dc7:	62 51 9d 48 14 c7    	vunpcklpd zmm8,zmm12,zmm15
  a38dcd:	62 51 9d 48 15 d7    	vunpckhpd zmm10,zmm12,zmm15
  a38dd3:	62 31 8d 48 14 e0    	vunpcklpd zmm12,zmm14,zmm16
  a38dd9:	62 31 8d 48 15 e8    	vunpckhpd zmm13,zmm14,zmm16
  a38ddf:	62 d1 c5 48 14 fb    	vunpcklpd zmm7,zmm7,zmm11
  a38de5:	62 71 7c 48 28 35 11 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68e011]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a38dec:	e0 68 ff 
  a38def:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a38df5:	62 d2 0d 48 7f dc    	vpermt2ps zmm3,zmm14,zmm12
  a38dfb:	62 71 7c 48 28 3d 3b 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff68e03b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a38e02:	e0 68 ff 
  a38e05:	62 52 05 48 7f c4    	vpermt2ps zmm8,zmm15,zmm12
  a38e0b:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a38e11:	62 52 0d 48 7f e5    	vpermt2ps zmm12,zmm14,zmm13
  a38e17:	62 52 05 48 7f d5    	vpermt2ps zmm10,zmm15,zmm13
  a38e1d:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a38e23:	62 72 0d 48 7f ef    	vpermt2ps zmm13,zmm14,zmm7
  a38e29:	62 f2 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm7
  a38e2f:	62 e1 dd 48 14 de    	vunpcklpd zmm19,zmm4,zmm6
  a38e35:	62 c1 f5 40 14 e1    	vunpcklpd zmm20,zmm17,zmm9
  a38e3b:	62 51 f5 40 15 c9    	vunpckhpd zmm9,zmm17,zmm9
  a38e41:	62 b1 ed 40 14 e0    	vunpcklpd zmm4,zmm18,zmm16
  a38e47:	62 b1 ed 40 15 f8    	vunpckhpd zmm7,zmm18,zmm16
  a38e4d:	62 d1 d5 48 14 eb    	vunpcklpd zmm5,zmm5,zmm11
  a38e53:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a38e59:	62 f2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm4
  a38e5f:	62 e2 05 48 7f e4    	vpermt2ps zmm20,zmm15,zmm4
  a38e65:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a38e6b:	62 72 0d 48 7f df    	vpermt2ps zmm11,zmm14,zmm7
  a38e71:	62 72 05 48 7f cf    	vpermt2ps zmm9,zmm15,zmm7
  a38e77:	62 72 65 40 77 f5    	vpermi2ps zmm14,zmm19,zmm5
  a38e7d:	62 e2 05 48 7f dd    	vpermt2ps zmm19,zmm15,zmm5
  a38e83:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a38e8a:	62 e1 7c 48 10 42 03 	vmovups zmm16,ZMMWORD PTR [rdx+0xc0]
  a38e91:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a38e98:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a38e9f:	62 e1 7c 48 10 6a 06 	vmovups zmm21,ZMMWORD PTR [rdx+0x180]
  a38ea6:	62 e1 7c 48 10 72 07 	vmovups zmm22,ZMMWORD PTR [rdx+0x1c0]
  a38ead:	62 e1 7c 48 10 7a 08 	vmovups zmm23,ZMMWORD PTR [rdx+0x200]
  a38eb4:	62 61 7c 48 10 42 09 	vmovups zmm24,ZMMWORD PTR [rdx+0x240]
  a38ebb:	62 61 7c 48 10 4a 0a 	vmovups zmm25,ZMMWORD PTR [rdx+0x280]
  a38ec2:	62 61 7c 48 10 52 0b 	vmovups zmm26,ZMMWORD PTR [rdx+0x2c0]
  a38ec9:	62 b1 1c 48 59 e1    	vmulps zmm4,zmm12,zmm17
  a38ecf:	62 b2 25 48 bc e2    	vfnmadd231ps zmm4,zmm11,zmm18
  a38ed5:	62 b1 14 48 59 ef    	vmulps zmm5,zmm13,zmm23
  a38edb:	62 92 0d 48 bc e8    	vfnmadd231ps zmm5,zmm14,zmm24
  a38ee1:	62 61 5c 48 58 dd    	vaddps zmm27,zmm4,zmm5
  a38ee7:	62 21 2c 48 59 e5    	vmulps zmm28,zmm10,zmm21
  a38eed:	62 22 35 48 bc e6    	vfnmadd231ps zmm28,zmm9,zmm22
  a38ef3:	62 91 6c 48 59 f9    	vmulps zmm7,zmm2,zmm25
  a38ef9:	62 92 65 40 bc fa    	vfnmadd231ps zmm7,zmm19,zmm26
  a38eff:	62 41 3c 48 59 ef    	vmulps zmm29,zmm8,zmm15
  a38f05:	62 22 5d 40 bc e8    	vfnmadd231ps zmm29,zmm20,zmm16
  a38f0b:	62 01 44 48 58 f5    	vaddps zmm30,zmm7,zmm29
  a38f11:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a38f17:	62 52 6d 40 b8 dc    	vfmadd231ps zmm11,zmm18,zmm12
  a38f1d:	62 31 0c 48 59 e7    	vmulps zmm12,zmm14,zmm23
  a38f23:	62 52 3d 40 b8 e5    	vfmadd231ps zmm12,zmm24,zmm13
  a38f29:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a38f2f:	62 31 34 48 59 cd    	vmulps zmm9,zmm9,zmm21
  a38f35:	62 52 4d 40 b8 ca    	vfmadd231ps zmm9,zmm22,zmm10
  a38f3b:	62 11 64 40 59 d1    	vmulps zmm10,zmm19,zmm25
  a38f41:	62 72 2d 40 b8 d2    	vfmadd231ps zmm10,zmm26,zmm2
  a38f47:	62 d1 5c 40 59 d7    	vmulps zmm2,zmm20,zmm15
  a38f4d:	62 d2 7d 40 b8 d0    	vfmadd231ps zmm2,zmm16,zmm8
  a38f53:	62 71 2c 48 58 c2    	vaddps zmm8,zmm10,zmm2
  a38f59:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a38f5f:	62 72 25 40 ac f3    	vfnmadd213ps zmm14,zmm27,zmm3
  a38f65:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a38f6b:	62 71 24 48 59 d9    	vmulps zmm11,zmm11,zmm1
  a38f71:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a38f77:	62 12 0d 40 ac e4    	vfnmadd213ps zmm12,zmm30,zmm28
  a38f7d:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a38f83:	62 71 6c 48 59 d1    	vmulps zmm10,zmm2,zmm1
  a38f89:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a38f8f:	62 72 15 48 ac fe    	vfnmadd213ps zmm15,zmm13,zmm6
  a38f95:	62 d2 3d 48 ac c1    	vfnmadd213ps zmm0,zmm8,zmm9
  a38f9b:	62 81 1c 20 58 c6    	vaddps ymm16,ymm28,ymm30
  a38fa1:	62 91 64 28 58 db    	vaddps ymm3,ymm3,ymm27
  a38fa7:	62 a1 64 28 58 c8    	vaddps ymm17,ymm3,ymm16
  a38fad:	c4 41 30 58 c0       	vaddps xmm8,xmm9,xmm8
  a38fb2:	c5 90 58 f6          	vaddps xmm6,xmm13,xmm6
  a38fb6:	c5 38 58 ce          	vaddps xmm9,xmm8,xmm6
  a38fba:	c5 fc 28 15 fe f2 63 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff63f2fe]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a38fc1:	ff 
  a38fc2:	62 32 6d 28 7f c9    	vpermt2ps ymm9,ymm2,ymm17
  a38fc8:	c5 78 11 0e          	vmovups XMMWORD PTR [rsi],xmm9
  a38fcc:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  a38fd2:	c5 78 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm9
  a38fd7:	c4 41 1c 58 ca       	vaddps ymm9,ymm12,ymm10
  a38fdc:	c4 41 0c 58 eb       	vaddps ymm13,ymm14,ymm11
  a38fe1:	62 c1 14 28 5c c9    	vsubps ymm17,ymm13,ymm9
  a38fe7:	62 91 44 08 5c fd    	vsubps xmm7,xmm7,xmm29
  a38fed:	c5 c0 59 f9          	vmulps xmm7,xmm7,xmm1
  a38ff1:	62 e1 7c 08 5c d7    	vsubps xmm18,xmm0,xmm7
  a38ff7:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  a38ffb:	c5 d8 59 c9          	vmulps xmm1,xmm4,xmm1
  a38fff:	c5 80 5c e1          	vsubps xmm4,xmm15,xmm1
  a39003:	62 b1 5c 08 5c ea    	vsubps xmm5,xmm4,xmm18
  a39009:	62 b2 6d 28 7f e9    	vpermt2ps ymm5,ymm2,ymm17
  a3900f:	c5 f8 11 6e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm5
  a39014:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  a3901a:	c5 f8 13 6e 28       	vmovlps QWORD PTR [rsi+0x28],xmm5
  a3901f:	c4 c1 1c 5c ea       	vsubps ymm5,ymm12,ymm10
  a39024:	c4 41 0c 5c d3       	vsubps ymm10,ymm14,ymm11
  a39029:	c5 2c 58 dd          	vaddps ymm11,ymm10,ymm5
  a3902d:	c5 f8 58 c7          	vaddps xmm0,xmm0,xmm7
  a39031:	c5 80 58 c9          	vaddps xmm1,xmm15,xmm1
  a39035:	c5 f0 58 f8          	vaddps xmm7,xmm1,xmm0
  a39039:	62 d2 6d 28 7f fb    	vpermt2ps ymm7,ymm2,ymm11
  a3903f:	c5 f8 11 7e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm7
  a39044:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  a3904a:	c5 f8 13 7e 40       	vmovlps QWORD PTR [rsi+0x40],xmm7
  a3904f:	62 b1 64 28 5c d8    	vsubps ymm3,ymm3,ymm16
  a39055:	c4 c1 48 5c f0       	vsubps xmm6,xmm6,xmm8
  a3905a:	62 f2 6d 28 7f f3    	vpermt2ps ymm6,ymm2,ymm3
  a39060:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  a39066:	c5 f8 13 5e 58       	vmovlps QWORD PTR [rsi+0x58],xmm3
  a3906b:	c5 f8 11 76 48       	vmovups XMMWORD PTR [rsi+0x48],xmm6
  a39070:	c4 c1 14 58 d9       	vaddps ymm3,ymm13,ymm9
  a39075:	62 b1 5c 08 58 e2    	vaddps xmm4,xmm4,xmm18
  a3907b:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  a39081:	c5 f8 11 66 60       	vmovups XMMWORD PTR [rsi+0x60],xmm4
  a39086:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  a3908c:	c5 f8 13 5e 70       	vmovlps QWORD PTR [rsi+0x70],xmm3
  a39091:	c5 ac 5c dd          	vsubps ymm3,ymm10,ymm5
  a39095:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  a39099:	62 f2 6d 28 7f c3    	vpermt2ps ymm0,ymm2,ymm3
  a3909f:	c5 f8 11 46 78       	vmovups XMMWORD PTR [rsi+0x78],xmm0
  a390a4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  a390aa:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a390b1:	00 
  a390b2:	c5 f8 77             	vzeroupper
  a390b5:	c3                   	ret
