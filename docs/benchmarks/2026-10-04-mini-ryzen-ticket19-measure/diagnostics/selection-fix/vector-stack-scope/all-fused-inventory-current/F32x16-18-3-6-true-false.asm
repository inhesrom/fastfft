
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a39dc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a39dc0:	55                   	push   rbp
  a39dc1:	48 89 e5             	mov    rbp,rsp
  a39dc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a39dc8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a39dcf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a39dd4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a39dd9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a39dde:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a39de3:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a39de8:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a39def:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a39df5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a39dfb:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a39e02:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a39e06:	62 f3 75 48 18 d0 02 	vinsertf32x4 zmm2,zmm1,xmm0,0x2
  a39e0d:	62 f1 7c 48 28 0d a9 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6575a9]        # 913c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e870>
  a39e14:	75 65 ff 
  a39e17:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a39e1b:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a39e21:	62 f2 75 48 7f f3    	vpermt2ps zmm6,zmm1,zmm3
  a39e27:	62 f1 7c 48 28 05 cf 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6575cf]        # 91400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e8b0>
  a39e2e:	75 65 ff 
  a39e31:	c5 f8 10 67 50       	vmovups xmm4,XMMWORD PTR [rdi+0x50]
  a39e36:	c4 e3 59 21 67 54 10 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x54],0x10
  a39e3d:	c4 e2 79 18 6f 58    	vbroadcastss xmm5,DWORD PTR [rdi+0x58]
  a39e43:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a39e49:	c4 e3 51 0c e4 03    	vblendps xmm4,xmm5,xmm4,0x3
  a39e4f:	c4 e3 59 21 67 5c 30 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x5c],0x30
  a39e56:	c5 fc 10 6f 30       	vmovups ymm5,YMMWORD PTR [rdi+0x30]
  a39e5b:	62 f3 55 48 18 ec 02 	vinsertf32x4 zmm5,zmm5,xmm4,0x2
  a39e62:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a39e68:	62 f2 75 48 7f fb    	vpermt2ps zmm7,zmm1,zmm3
  a39e6e:	62 f2 7d 48 7f eb    	vpermt2ps zmm5,zmm0,zmm3
  a39e74:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  a39e7b:	00 
  a39e7c:	c4 e3 59 21 a7 84 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x84],0x10
  a39e83:	00 00 10 
  a39e86:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a39e8b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a39e92:	00 00 
  a39e94:	c4 e3 31 0c e4 03    	vblendps xmm4,xmm9,xmm4,0x3
  a39e9a:	c4 e3 59 21 a7 8c 00 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x8c],0x30
  a39ea1:	00 00 30 
  a39ea4:	62 73 3d 48 18 c4 02 	vinsertf32x4 zmm8,zmm8,xmm4,0x2
  a39eab:	62 f2 3d 48 77 cb    	vpermi2ps zmm1,zmm8,zmm3
  a39eb1:	62 72 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm3
  a39eb7:	62 51 54 48 58 c8    	vaddps zmm9,zmm5,zmm8
  a39ebd:	62 51 6c 48 58 d1    	vaddps zmm10,zmm2,zmm9
  a39ec3:	62 71 44 48 58 d9    	vaddps zmm11,zmm7,zmm1
  a39ec9:	62 d1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm11
  a39ecf:	62 f2 7d 48 18 05 87 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63b587]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a39ed6:	b5 63 ff 
  a39ed9:	62 d2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm9
  a39edf:	62 f1 44 48 5c f9    	vsubps zmm7,zmm7,zmm1
  a39ee5:	62 f2 7d 48 18 0d e5 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63b3e5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a39eec:	b3 63 ff 
  a39eef:	62 71 44 48 59 c9    	vmulps zmm9,zmm7,zmm1
  a39ef5:	62 d1 6c 48 58 f9    	vaddps zmm7,zmm2,zmm9
  a39efb:	62 d2 7d 48 bc f3    	vfnmadd231ps zmm6,zmm0,zmm11
  a39f01:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a39f07:	62 71 54 48 59 c1    	vmulps zmm8,zmm5,zmm1
  a39f0d:	62 d1 4c 48 5c e8    	vsubps zmm5,zmm6,zmm8
  a39f13:	62 d1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm9
  a39f19:	62 f1 3c 48 58 f6    	vaddps zmm6,zmm8,zmm6
  a39f1f:	62 71 7c 48 28 05 57 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68d057]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a39f26:	d0 68 ff 
  a39f29:	62 72 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm3
  a39f2f:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a39f35:	62 f2 3d 48 7f d3    	vpermt2ps zmm2,zmm8,zmm3
  a39f3b:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a39f40:	62 52 3d 48 7f db    	vpermt2ps zmm11,zmm8,zmm11
  a39f46:	62 71 7c 48 28 0d b0 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff68cfb0]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a39f4d:	cf 68 ff 
  a39f50:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a39f56:	62 52 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm11
  a39f5c:	62 71 7c 48 28 2d da 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68cfda]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a39f63:	cf 68 ff 
  a39f66:	62 52 15 48 7f d3    	vpermt2ps zmm10,zmm13,zmm11
  a39f6c:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a39f72:	62 52 35 48 7f f3    	vpermt2ps zmm14,zmm9,zmm11
  a39f78:	62 d2 15 48 7f fb    	vpermt2ps zmm7,zmm13,zmm11
  a39f7e:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a39f84:	62 52 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm11
  a39f8a:	62 d2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm11
  a39f90:	62 f1 ad 48 14 d2    	vunpcklpd zmm2,zmm10,zmm2
  a39f96:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a39f9c:	62 c2 35 48 7f c3    	vpermt2ps zmm16,zmm9,zmm11
  a39fa2:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  a39fa8:	62 f2 3d 48 7f eb    	vpermt2ps zmm5,zmm8,zmm3
  a39fae:	62 f2 3d 48 7f f3    	vpermt2ps zmm6,zmm8,zmm3
  a39fb4:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a39fba:	62 c2 35 48 7f cb    	vpermt2ps zmm17,zmm9,zmm11
  a39fc0:	62 d2 15 48 7f e3    	vpermt2ps zmm4,zmm13,zmm11
  a39fc6:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a39fcc:	62 c2 35 48 7f d3    	vpermt2ps zmm18,zmm9,zmm11
  a39fd2:	62 d2 15 48 7f eb    	vpermt2ps zmm5,zmm13,zmm11
  a39fd8:	62 52 4d 48 77 cb    	vpermi2ps zmm9,zmm6,zmm11
  a39fde:	62 d2 15 48 7f f3    	vpermt2ps zmm6,zmm13,zmm11
  a39fe4:	62 52 15 48 7f db    	vpermt2ps zmm11,zmm13,zmm11
  a39fea:	62 51 9d 48 14 c7    	vunpcklpd zmm8,zmm12,zmm15
  a39ff0:	62 51 9d 48 15 d7    	vunpckhpd zmm10,zmm12,zmm15
  a39ff6:	62 31 8d 48 14 e0    	vunpcklpd zmm12,zmm14,zmm16
  a39ffc:	62 31 8d 48 15 e8    	vunpckhpd zmm13,zmm14,zmm16
  a3a002:	62 d1 c5 48 14 fb    	vunpcklpd zmm7,zmm7,zmm11
  a3a008:	62 71 7c 48 28 35 ee 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68cdee]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3a00f:	cd 68 ff 
  a3a012:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a3a018:	62 d2 0d 48 7f dc    	vpermt2ps zmm3,zmm14,zmm12
  a3a01e:	62 71 7c 48 28 3d 18 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff68ce18]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3a025:	ce 68 ff 
  a3a028:	62 52 05 48 7f c4    	vpermt2ps zmm8,zmm15,zmm12
  a3a02e:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a3a034:	62 52 0d 48 7f e5    	vpermt2ps zmm12,zmm14,zmm13
  a3a03a:	62 52 05 48 7f d5    	vpermt2ps zmm10,zmm15,zmm13
  a3a040:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a3a046:	62 72 0d 48 7f ef    	vpermt2ps zmm13,zmm14,zmm7
  a3a04c:	62 f2 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm7
  a3a052:	62 e1 dd 48 14 de    	vunpcklpd zmm19,zmm4,zmm6
  a3a058:	62 c1 f5 40 14 e1    	vunpcklpd zmm20,zmm17,zmm9
  a3a05e:	62 51 f5 40 15 c9    	vunpckhpd zmm9,zmm17,zmm9
  a3a064:	62 b1 ed 40 14 e0    	vunpcklpd zmm4,zmm18,zmm16
  a3a06a:	62 b1 ed 40 15 f8    	vunpckhpd zmm7,zmm18,zmm16
  a3a070:	62 d1 d5 48 14 eb    	vunpcklpd zmm5,zmm5,zmm11
  a3a076:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a3a07c:	62 f2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm4
  a3a082:	62 e2 05 48 7f e4    	vpermt2ps zmm20,zmm15,zmm4
  a3a088:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a3a08e:	62 72 0d 48 7f df    	vpermt2ps zmm11,zmm14,zmm7
  a3a094:	62 72 05 48 7f cf    	vpermt2ps zmm9,zmm15,zmm7
  a3a09a:	62 72 65 40 77 f5    	vpermi2ps zmm14,zmm19,zmm5
  a3a0a0:	62 e2 05 48 7f dd    	vpermt2ps zmm19,zmm15,zmm5
  a3a0a6:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a3a0ad:	62 e1 7c 48 10 42 03 	vmovups zmm16,ZMMWORD PTR [rdx+0xc0]
  a3a0b4:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a3a0bb:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a3a0c2:	62 e1 7c 48 10 6a 06 	vmovups zmm21,ZMMWORD PTR [rdx+0x180]
  a3a0c9:	62 e1 7c 48 10 72 07 	vmovups zmm22,ZMMWORD PTR [rdx+0x1c0]
  a3a0d0:	62 e1 7c 48 10 7a 08 	vmovups zmm23,ZMMWORD PTR [rdx+0x200]
  a3a0d7:	62 61 7c 48 10 42 09 	vmovups zmm24,ZMMWORD PTR [rdx+0x240]
  a3a0de:	62 61 7c 48 10 4a 0a 	vmovups zmm25,ZMMWORD PTR [rdx+0x280]
  a3a0e5:	62 61 7c 48 10 52 0b 	vmovups zmm26,ZMMWORD PTR [rdx+0x2c0]
  a3a0ec:	62 b1 1c 48 59 e1    	vmulps zmm4,zmm12,zmm17
  a3a0f2:	62 b2 25 48 bc e2    	vfnmadd231ps zmm4,zmm11,zmm18
  a3a0f8:	62 b1 14 48 59 ef    	vmulps zmm5,zmm13,zmm23
  a3a0fe:	62 92 0d 48 bc e8    	vfnmadd231ps zmm5,zmm14,zmm24
  a3a104:	62 61 5c 48 58 dd    	vaddps zmm27,zmm4,zmm5
  a3a10a:	62 21 2c 48 59 e5    	vmulps zmm28,zmm10,zmm21
  a3a110:	62 22 35 48 bc e6    	vfnmadd231ps zmm28,zmm9,zmm22
  a3a116:	62 91 6c 48 59 f9    	vmulps zmm7,zmm2,zmm25
  a3a11c:	62 92 65 40 bc fa    	vfnmadd231ps zmm7,zmm19,zmm26
  a3a122:	62 41 3c 48 59 ef    	vmulps zmm29,zmm8,zmm15
  a3a128:	62 22 5d 40 bc e8    	vfnmadd231ps zmm29,zmm20,zmm16
  a3a12e:	62 01 44 48 58 f5    	vaddps zmm30,zmm7,zmm29
  a3a134:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a3a13a:	62 52 6d 40 b8 dc    	vfmadd231ps zmm11,zmm18,zmm12
  a3a140:	62 31 0c 48 59 e7    	vmulps zmm12,zmm14,zmm23
  a3a146:	62 52 3d 40 b8 e5    	vfmadd231ps zmm12,zmm24,zmm13
  a3a14c:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a3a152:	62 31 34 48 59 cd    	vmulps zmm9,zmm9,zmm21
  a3a158:	62 52 4d 40 b8 ca    	vfmadd231ps zmm9,zmm22,zmm10
  a3a15e:	62 11 64 40 59 d1    	vmulps zmm10,zmm19,zmm25
  a3a164:	62 72 2d 40 b8 d2    	vfmadd231ps zmm10,zmm26,zmm2
  a3a16a:	62 d1 5c 40 59 d7    	vmulps zmm2,zmm20,zmm15
  a3a170:	62 d2 7d 40 b8 d0    	vfmadd231ps zmm2,zmm16,zmm8
  a3a176:	62 71 2c 48 58 c2    	vaddps zmm8,zmm10,zmm2
  a3a17c:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a3a182:	62 72 25 40 ac f3    	vfnmadd213ps zmm14,zmm27,zmm3
  a3a188:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a3a18e:	62 71 24 48 59 d9    	vmulps zmm11,zmm11,zmm1
  a3a194:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a3a19a:	62 12 0d 40 ac e4    	vfnmadd213ps zmm12,zmm30,zmm28
  a3a1a0:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a3a1a6:	62 71 6c 48 59 d1    	vmulps zmm10,zmm2,zmm1
  a3a1ac:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a3a1b2:	62 72 15 48 ac fe    	vfnmadd213ps zmm15,zmm13,zmm6
  a3a1b8:	62 d2 3d 48 ac c1    	vfnmadd213ps zmm0,zmm8,zmm9
  a3a1be:	62 81 1c 20 58 c6    	vaddps ymm16,ymm28,ymm30
  a3a1c4:	62 91 64 28 58 db    	vaddps ymm3,ymm3,ymm27
  a3a1ca:	62 a1 64 28 58 c8    	vaddps ymm17,ymm3,ymm16
  a3a1d0:	c4 41 30 58 c0       	vaddps xmm8,xmm9,xmm8
  a3a1d5:	c5 90 58 f6          	vaddps xmm6,xmm13,xmm6
  a3a1d9:	c5 38 58 ce          	vaddps xmm9,xmm8,xmm6
  a3a1dd:	c5 fc 28 15 db e0 63 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff63e0db]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a3a1e4:	ff 
  a3a1e5:	62 32 6d 28 7f c9    	vpermt2ps ymm9,ymm2,ymm17
  a3a1eb:	c5 78 11 0e          	vmovups XMMWORD PTR [rsi],xmm9
  a3a1ef:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  a3a1f5:	c5 78 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm9
  a3a1fa:	c4 41 1c 58 ca       	vaddps ymm9,ymm12,ymm10
  a3a1ff:	c4 41 0c 58 eb       	vaddps ymm13,ymm14,ymm11
  a3a204:	62 c1 14 28 5c c9    	vsubps ymm17,ymm13,ymm9
  a3a20a:	62 91 44 08 5c fd    	vsubps xmm7,xmm7,xmm29
  a3a210:	c5 c0 59 f9          	vmulps xmm7,xmm7,xmm1
  a3a214:	62 e1 7c 08 5c d7    	vsubps xmm18,xmm0,xmm7
  a3a21a:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  a3a21e:	c5 d8 59 c9          	vmulps xmm1,xmm4,xmm1
  a3a222:	c5 80 5c e1          	vsubps xmm4,xmm15,xmm1
  a3a226:	62 b1 5c 08 5c ea    	vsubps xmm5,xmm4,xmm18
  a3a22c:	62 b2 6d 28 7f e9    	vpermt2ps ymm5,ymm2,ymm17
  a3a232:	c5 f8 11 6e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm5
  a3a237:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  a3a23d:	c5 f8 13 6e 28       	vmovlps QWORD PTR [rsi+0x28],xmm5
  a3a242:	c4 c1 1c 5c ea       	vsubps ymm5,ymm12,ymm10
  a3a247:	c4 41 0c 5c d3       	vsubps ymm10,ymm14,ymm11
  a3a24c:	c5 2c 58 dd          	vaddps ymm11,ymm10,ymm5
  a3a250:	c5 f8 58 c7          	vaddps xmm0,xmm0,xmm7
  a3a254:	c5 80 58 c9          	vaddps xmm1,xmm15,xmm1
  a3a258:	c5 f0 58 f8          	vaddps xmm7,xmm1,xmm0
  a3a25c:	62 d2 6d 28 7f fb    	vpermt2ps ymm7,ymm2,ymm11
  a3a262:	c5 f8 11 7e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm7
  a3a267:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  a3a26d:	c5 f8 13 7e 40       	vmovlps QWORD PTR [rsi+0x40],xmm7
  a3a272:	62 b1 64 28 5c d8    	vsubps ymm3,ymm3,ymm16
  a3a278:	c4 c1 48 5c f0       	vsubps xmm6,xmm6,xmm8
  a3a27d:	62 f2 6d 28 7f f3    	vpermt2ps ymm6,ymm2,ymm3
  a3a283:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  a3a289:	c5 f8 13 5e 58       	vmovlps QWORD PTR [rsi+0x58],xmm3
  a3a28e:	c5 f8 11 76 48       	vmovups XMMWORD PTR [rsi+0x48],xmm6
  a3a293:	c4 c1 14 58 d9       	vaddps ymm3,ymm13,ymm9
  a3a298:	62 b1 5c 08 58 e2    	vaddps xmm4,xmm4,xmm18
  a3a29e:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  a3a2a4:	c5 f8 11 66 60       	vmovups XMMWORD PTR [rsi+0x60],xmm4
  a3a2a9:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  a3a2af:	c5 f8 13 5e 70       	vmovlps QWORD PTR [rsi+0x70],xmm3
  a3a2b4:	c5 ac 5c dd          	vsubps ymm3,ymm10,ymm5
  a3a2b8:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  a3a2bc:	62 f2 6d 28 7f c3    	vpermt2ps ymm0,ymm2,ymm3
  a3a2c2:	c5 f8 11 46 78       	vmovups XMMWORD PTR [rsi+0x78],xmm0
  a3a2c7:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  a3a2cd:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a3a2d4:	00 
  a3a2d5:	48 89 ec             	mov    rsp,rbp
  a3a2d8:	5d                   	pop    rbp
  a3a2d9:	c5 f8 77             	vzeroupper
  a3a2dc:	c3                   	ret
