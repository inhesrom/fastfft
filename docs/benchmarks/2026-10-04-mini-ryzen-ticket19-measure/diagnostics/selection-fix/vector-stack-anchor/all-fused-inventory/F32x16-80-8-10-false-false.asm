
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009ffb40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9ffb40:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  9ffb46:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  9ffb4b:	62 f1 7c 48 28 1d 6b 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68e26b]        # 8ddc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b270>
  9ffb52:	e2 68 ff 
  9ffb55:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  9ffb5b:	62 f2 65 48 7f e1    	vpermt2ps zmm4,zmm3,zmm1
  9ffb61:	62 f1 7c 48 28 15 95 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68e295]        # 8de00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b2b0>
  9ffb68:	e2 68 ff 
  9ffb6b:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  9ffb71:	62 f1 7c 48 10 b7 50 	vmovups zmm6,ZMMWORD PTR [rdi+0x50]
  9ffb78:	00 00 00 
  9ffb7b:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  9ffb82:	00 
  9ffb83:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  9ffb89:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  9ffb8f:	62 f2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm1
  9ffb95:	62 71 7c 48 10 87 a0 	vmovups zmm8,ZMMWORD PTR [rdi+0xa0]
  9ffb9c:	00 00 00 
  9ffb9f:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  9ffba6:	00 
  9ffba7:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  9ffbad:	62 f2 65 48 7f e9    	vpermt2ps zmm5,zmm3,zmm1
  9ffbb3:	62 72 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm1
  9ffbb9:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0xf0]
  9ffbc0:	00 00 00 
  9ffbc3:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  9ffbca:	00 
  9ffbcb:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  9ffbd1:	62 72 65 48 7f d1    	vpermt2ps zmm10,zmm3,zmm1
  9ffbd7:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  9ffbdd:	62 71 7c 48 10 5f 05 	vmovups zmm11,ZMMWORD PTR [rdi+0x140]
  9ffbe4:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  9ffbeb:	00 
  9ffbec:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  9ffbf2:	62 72 65 48 7f e1    	vpermt2ps zmm12,zmm3,zmm1
  9ffbf8:	62 72 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm1
  9ffbfe:	62 71 7c 48 10 af 90 	vmovups zmm13,ZMMWORD PTR [rdi+0x190]
  9ffc05:	01 00 00 
  9ffc08:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  9ffc0f:	00 
  9ffc10:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  9ffc16:	62 72 65 48 7f f1    	vpermt2ps zmm14,zmm3,zmm1
  9ffc1c:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  9ffc22:	62 71 7c 48 10 bf e0 	vmovups zmm15,ZMMWORD PTR [rdi+0x1e0]
  9ffc29:	01 00 00 
  9ffc2c:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  9ffc33:	00 
  9ffc34:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  9ffc3a:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  9ffc40:	62 72 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm1
  9ffc46:	62 e1 7c 48 10 8f 30 	vmovups zmm17,ZMMWORD PTR [rdi+0x230]
  9ffc4d:	02 00 00 
  9ffc50:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  9ffc57:	00 
  9ffc58:	62 f2 75 40 77 d9    	vpermi2ps zmm3,zmm17,zmm1
  9ffc5e:	62 e2 6d 48 7f c9    	vpermt2ps zmm17,zmm2,zmm1
  9ffc64:	62 c1 5c 48 58 d4    	vaddps zmm18,zmm4,zmm12
  9ffc6a:	62 a1 54 48 58 d8    	vaddps zmm19,zmm5,zmm16
  9ffc70:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  9ffc76:	62 c1 44 48 58 ee    	vaddps zmm21,zmm7,zmm14
  9ffc7c:	62 e1 2c 48 58 f3    	vaddps zmm22,zmm10,zmm3
  9ffc82:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  9ffc88:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  9ffc8e:	62 41 7c 48 58 c3    	vaddps zmm24,zmm0,zmm11
  9ffc94:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  9ffc9a:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  9ffca0:	62 41 4c 48 58 dd    	vaddps zmm27,zmm6,zmm13
  9ffca6:	62 21 34 48 58 e1    	vaddps zmm28,zmm9,zmm17
  9ffcac:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  9ffcb2:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  9ffcb8:	62 51 5c 48 5c e4    	vsubps zmm12,zmm4,zmm12
  9ffcbe:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  9ffcc4:	62 51 1c 48 58 f8    	vaddps zmm15,zmm12,zmm8
  9ffcca:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  9ffcd0:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  9ffcd6:	62 f1 44 48 58 e6    	vaddps zmm4,zmm7,zmm6
  9ffcdc:	62 72 7d 48 18 2d b6 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6756b6]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  9ffce3:	56 67 ff 
  9ffce6:	62 51 5c 48 59 f5    	vmulps zmm14,zmm4,zmm13
  9ffcec:	62 31 34 48 5c c9    	vsubps zmm9,zmm9,zmm17
  9ffcf2:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  9ffcf8:	62 f1 34 48 5c e3    	vsubps zmm4,zmm9,zmm3
  9ffcfe:	62 51 5c 48 59 d5    	vmulps zmm10,zmm4,zmm13
  9ffd04:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  9ffd0a:	62 b1 04 48 58 e1    	vaddps zmm4,zmm15,zmm17
  9ffd10:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  9ffd16:	62 71 7c 40 5c dd    	vsubps zmm11,zmm16,zmm5
  9ffd1c:	62 e1 24 48 58 c0    	vaddps zmm16,zmm11,zmm0
  9ffd22:	62 f1 4c 48 5c ef    	vsubps zmm5,zmm6,zmm7
  9ffd28:	62 d1 54 48 59 ed    	vmulps zmm5,zmm5,zmm13
  9ffd2e:	62 d1 64 48 58 d9    	vaddps zmm3,zmm3,zmm9
  9ffd34:	62 d1 64 48 59 f5    	vmulps zmm6,zmm3,zmm13
  9ffd3a:	62 71 54 48 5c ee    	vsubps zmm13,zmm5,zmm6
  9ffd40:	62 d1 7c 40 58 fd    	vaddps zmm7,zmm16,zmm13
  9ffd46:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  9ffd4c:	62 81 24 40 5c dc    	vsubps zmm19,zmm27,zmm28
  9ffd52:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  9ffd58:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  9ffd5e:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  9ffd64:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  9ffd6a:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  9ffd70:	62 f1 54 48 58 f6    	vaddps zmm6,zmm5,zmm6
  9ffd76:	62 f1 3c 48 58 ee    	vaddps zmm5,zmm8,zmm6
  9ffd7c:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  9ffd82:	62 51 2c 48 5c de    	vsubps zmm11,zmm10,zmm14
  9ffd88:	62 51 7c 48 58 d3    	vaddps zmm10,zmm0,zmm11
  9ffd8e:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  9ffd94:	62 11 2c 40 5c e5    	vsubps zmm12,zmm26,zmm29
  9ffd9a:	62 a1 04 48 5c c9    	vsubps zmm17,zmm15,zmm17
  9ffda0:	62 51 7c 40 5c ed    	vsubps zmm13,zmm16,zmm13
  9ffda6:	62 a1 6c 40 5c db    	vsubps zmm19,zmm18,zmm19
  9ffdac:	62 31 3c 40 5c f5    	vsubps zmm14,zmm24,zmm21
  9ffdb2:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  9ffdb8:	62 51 7c 48 5c db    	vsubps zmm11,zmm0,zmm11
  9ffdbe:	62 71 7c 48 28 3d b8 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c71b8]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9ffdc5:	71 6c ff 
  9ffdc8:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  9ffdcc:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  9ffdd2:	62 72 05 48 7f c0    	vpermt2ps zmm8,zmm15,zmm0
  9ffdd8:	62 e1 7c 48 28 05 de 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c71de]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9ffddf:	71 6c ff 
  9ffde2:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  9ffde8:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  9ffdee:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  9ffdf4:	62 f2 7d 40 7f e0    	vpermt2ps zmm4,zmm16,zmm0
  9ffdfa:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  9ffe00:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  9ffe06:	62 f2 7d 40 7f d8    	vpermt2ps zmm3,zmm16,zmm0
  9ffe0c:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  9ffe12:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  9ffe18:	62 f2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm0
  9ffe1e:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  9ffe24:	62 e2 05 48 7f f8    	vpermt2ps zmm23,zmm15,zmm0
  9ffe2a:	62 e2 7d 40 7f e0    	vpermt2ps zmm20,zmm16,zmm0
  9ffe30:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  9ffe36:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  9ffe3c:	62 e2 7d 40 7f c8    	vpermt2ps zmm17,zmm16,zmm0
  9ffe42:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  9ffe48:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  9ffe4e:	62 e2 7d 40 7f d8    	vpermt2ps zmm19,zmm16,zmm0
  9ffe54:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  9ffe5a:	62 62 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm0
  9ffe60:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  9ffe66:	62 e1 7c 48 28 15 90 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6c7090]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9ffe6d:	70 6c ff 
  9ffe70:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  9ffe76:	62 22 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm23
  9ffe7c:	62 e1 7c 48 28 2d ba 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6c70ba]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9ffe83:	70 6c ff 
  9ffe86:	62 32 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm23
  9ffe8c:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  9ffe92:	62 02 6d 40 7f f2    	vpermt2ps zmm30,zmm18,zmm26
  9ffe98:	62 82 55 40 7f f2    	vpermt2ps zmm22,zmm21,zmm26
  9ffe9e:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  9ffea4:	62 02 6d 40 7f d3    	vpermt2ps zmm26,zmm18,zmm27
  9ffeaa:	62 02 55 40 7f c3    	vpermt2ps zmm24,zmm21,zmm27
  9ffeb0:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  9ffeb6:	62 02 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm28
  9ffebc:	62 02 55 40 7f cc    	vpermt2ps zmm25,zmm21,zmm28
  9ffec2:	62 b2 6d 40 7f d4    	vpermt2ps zmm2,zmm18,zmm20
  9ffec8:	62 b2 6d 40 7f e1    	vpermt2ps zmm4,zmm18,zmm17
  9ffece:	62 b2 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm19
  9ffed4:	62 f1 ed 48 14 db    	vunpcklpd zmm3,zmm2,zmm3
  9ffeda:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  9ffee0:	62 e1 dd 48 14 fd    	vunpcklpd zmm23,zmm4,zmm5
  9ffee6:	62 91 95 40 14 d2    	vunpcklpd zmm2,zmm29,zmm26
  9ffeec:	62 91 95 40 15 e2    	vunpckhpd zmm4,zmm29,zmm26
  9ffef2:	62 81 8d 40 14 db    	vunpcklpd zmm19,zmm30,zmm27
  9ffef8:	62 81 8d 40 15 cb    	vunpckhpd zmm17,zmm30,zmm27
  9ffefe:	62 91 bd 48 14 f0    	vunpcklpd zmm6,zmm8,zmm24
  9fff04:	62 91 bd 48 15 e8    	vunpckhpd zmm5,zmm8,zmm24
  9fff0a:	62 01 cd 40 14 e1    	vunpcklpd zmm28,zmm22,zmm25
  9fff10:	62 81 cd 40 15 e1    	vunpckhpd zmm20,zmm22,zmm25
  9fff16:	62 71 7c 48 28 05 e0 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c6ee0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fff1d:	6e 6c ff 
  9fff20:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  9fff26:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  9fff2c:	62 f2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm0
  9fff32:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  9fff38:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  9fff3e:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  9fff44:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  9fff4a:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  9fff50:	62 72 7d 40 7f c8    	vpermt2ps zmm9,zmm16,zmm0
  9fff56:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  9fff5c:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  9fff62:	62 72 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm0
  9fff68:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  9fff6e:	62 62 05 48 7f e8    	vpermt2ps zmm29,zmm15,zmm0
  9fff74:	62 72 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm0
  9fff7a:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  9fff80:	62 62 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm0
  9fff86:	62 72 7d 40 7f e8    	vpermt2ps zmm13,zmm16,zmm0
  9fff8c:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  9fff92:	62 62 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm0
  9fff98:	62 72 7d 40 7f f0    	vpermt2ps zmm14,zmm16,zmm0
  9fff9e:	62 72 25 48 77 f8    	vpermi2ps zmm15,zmm11,zmm0
  9fffa4:	62 72 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm0
  9fffaa:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  9fffb0:	62 b2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm19
  9fffb6:	62 61 7c 48 28 1d 80 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6c6e80]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fffbd:	6e 6c ff 
  9fffc0:	62 b2 25 40 7f d3    	vpermt2ps zmm2,zmm27,zmm19
  9fffc6:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  9fffcc:	62 a2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm17
  9fffd2:	62 b2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm17
  9fffd8:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  9fffde:	62 82 3d 48 7f cc    	vpermt2ps zmm17,zmm8,zmm28
  9fffe4:	62 92 25 40 7f f4    	vpermt2ps zmm6,zmm27,zmm28
  9fffea:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  9ffff0:	62 a2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm20
  9ffff6:	62 b2 25 40 7f ec    	vpermt2ps zmm5,zmm27,zmm20
  9ffffc:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a00002:	62 a2 3d 48 7f e7    	vpermt2ps zmm20,zmm8,zmm23
  a00008:	62 b2 25 40 7f df    	vpermt2ps zmm3,zmm27,zmm23
  a0000e:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a00014:	62 82 6d 40 7f fd    	vpermt2ps zmm23,zmm18,zmm29
  a0001a:	62 82 55 40 7f f5    	vpermt2ps zmm22,zmm21,zmm29
  a00020:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a00026:	62 02 6d 40 7f e6    	vpermt2ps zmm28,zmm18,zmm30
  a0002c:	62 02 55 40 7f c6    	vpermt2ps zmm24,zmm21,zmm30
  a00032:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a00038:	62 02 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm31
  a0003e:	62 02 55 40 7f cf    	vpermt2ps zmm25,zmm21,zmm31
  a00044:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a0004a:	62 42 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm15
  a00050:	62 42 6d 40 7f f7    	vpermt2ps zmm30,zmm18,zmm15
  a00056:	62 d2 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm12
  a0005c:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a00062:	62 52 6d 40 7f ce    	vpermt2ps zmm9,zmm18,zmm14
  a00068:	62 51 f5 48 14 e1    	vunpcklpd zmm12,zmm1,zmm9
  a0006e:	62 52 6d 40 7f d3    	vpermt2ps zmm10,zmm18,zmm11
  a00074:	62 51 c5 48 14 d2    	vunpcklpd zmm10,zmm7,zmm10
  a0007a:	62 11 c5 40 14 cd    	vunpcklpd zmm9,zmm23,zmm29
  a00080:	62 11 c5 40 15 dd    	vunpckhpd zmm11,zmm23,zmm29
  a00086:	62 11 9d 40 14 ee    	vunpcklpd zmm13,zmm28,zmm30
  a0008c:	62 11 9d 40 15 fe    	vunpckhpd zmm15,zmm28,zmm30
  a00092:	62 91 cd 40 14 f9    	vunpcklpd zmm7,zmm22,zmm25
  a00098:	62 11 cd 40 15 f1    	vunpckhpd zmm14,zmm22,zmm25
  a0009e:	62 81 bd 40 14 ea    	vunpcklpd zmm21,zmm24,zmm26
  a000a4:	62 81 bd 40 15 f2    	vunpckhpd zmm22,zmm24,zmm26
  a000aa:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a000b0:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a000b6:	62 52 25 40 7f cd    	vpermt2ps zmm9,zmm27,zmm13
  a000bc:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a000c2:	62 c2 3d 48 7f d7    	vpermt2ps zmm18,zmm8,zmm15
  a000c8:	62 52 25 40 7f df    	vpermt2ps zmm11,zmm27,zmm15
  a000ce:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a000d4:	62 22 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm21
  a000da:	62 b2 25 40 7f fd    	vpermt2ps zmm7,zmm27,zmm21
  a000e0:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a000e6:	62 a2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm22
  a000ec:	62 32 25 40 7f f6    	vpermt2ps zmm14,zmm27,zmm22
  a000f2:	62 52 1d 48 77 c2    	vpermi2ps zmm8,zmm12,zmm10
  a000f8:	62 52 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm10
  a000fe:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a00105:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a0010c:	62 61 7c 48 10 4a 04 	vmovups zmm25,ZMMWORD PTR [rdx+0x100]
  a00113:	62 61 7c 48 10 52 05 	vmovups zmm26,ZMMWORD PTR [rdx+0x140]
  a0011a:	62 e1 7c 48 10 72 06 	vmovups zmm22,ZMMWORD PTR [rdx+0x180]
  a00121:	62 e1 7c 48 10 6a 07 	vmovups zmm21,ZMMWORD PTR [rdx+0x1c0]
  a00128:	62 11 64 40 59 d1    	vmulps zmm10,zmm19,zmm25
  a0012e:	62 12 6d 40 bc d2    	vfnmadd231ps zmm10,zmm18,zmm26
  a00134:	62 01 6c 40 59 c9    	vmulps zmm25,zmm18,zmm25
  a0013a:	62 61 7c 48 10 5a 10 	vmovups zmm27,ZMMWORD PTR [rdx+0x400]
  a00141:	62 22 2d 40 b8 cb    	vfmadd231ps zmm25,zmm26,zmm19
  a00147:	62 e1 7c 48 10 5a 11 	vmovups zmm19,ZMMWORD PTR [rdx+0x440]
  a0014e:	62 81 5c 40 59 d3    	vmulps zmm18,zmm20,zmm27
  a00154:	62 a2 3d 48 bc d3    	vfnmadd231ps zmm18,zmm8,zmm19
  a0015a:	62 01 3c 48 59 d3    	vmulps zmm26,zmm8,zmm27
  a00160:	62 71 7c 48 10 42 08 	vmovups zmm8,ZMMWORD PTR [rdx+0x200]
  a00167:	62 22 65 40 b8 d4    	vfmadd231ps zmm26,zmm19,zmm20
  a0016d:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a00174:	62 c1 74 40 59 d8    	vmulps zmm19,zmm17,zmm8
  a0017a:	62 a2 3d 40 bc dc    	vfnmadd231ps zmm19,zmm24,zmm20
  a00180:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a00186:	62 71 7c 48 10 42 0c 	vmovups zmm8,ZMMWORD PTR [rdx+0x300]
  a0018d:	62 22 5d 40 b8 c1    	vfmadd231ps zmm24,zmm20,zmm17
  a00193:	62 e1 7c 48 10 62 0d 	vmovups zmm20,ZMMWORD PTR [rdx+0x340]
  a0019a:	62 c1 7c 40 59 c8    	vmulps zmm17,zmm16,zmm8
  a001a0:	62 a2 45 40 bc cc    	vfnmadd231ps zmm17,zmm23,zmm20
  a001a6:	62 41 44 40 59 d8    	vmulps zmm27,zmm23,zmm8
  a001ac:	62 e1 7c 48 10 7a 0a 	vmovups zmm23,ZMMWORD PTR [rdx+0x280]
  a001b3:	62 22 5d 40 b8 d8    	vfmadd231ps zmm27,zmm20,zmm16
  a001b9:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a001c0:	62 31 4c 48 59 c7    	vmulps zmm8,zmm6,zmm23
  a001c6:	62 32 45 48 bc c0    	vfnmadd231ps zmm8,zmm7,zmm16
  a001cc:	62 b1 44 48 59 ff    	vmulps zmm7,zmm7,zmm23
  a001d2:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a001d9:	62 f2 7d 40 b8 fe    	vfmadd231ps zmm7,zmm16,zmm6
  a001df:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a001e6:	62 a1 54 48 59 e7    	vmulps zmm20,zmm5,zmm23
  a001ec:	62 e2 0d 48 bc e6    	vfnmadd231ps zmm20,zmm14,zmm6
  a001f2:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a001f8:	62 e1 7c 48 10 42 12 	vmovups zmm16,ZMMWORD PTR [rdx+0x480]
  a001ff:	62 72 4d 48 b8 f5    	vfmadd231ps zmm14,zmm6,zmm5
  a00205:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a0020c:	62 a1 5c 48 59 fe    	vmulps zmm23,zmm4,zmm22
  a00212:	62 a2 25 48 bc fd    	vfnmadd231ps zmm23,zmm11,zmm21
  a00218:	62 a1 24 48 59 f6    	vmulps zmm22,zmm11,zmm22
  a0021e:	62 b1 2c 48 58 f2    	vaddps zmm6,zmm10,zmm18
  a00224:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a0022a:	62 f1 7c 48 58 e6    	vaddps zmm4,zmm0,zmm6
  a00230:	62 a1 64 48 59 e8    	vmulps zmm21,zmm3,zmm16
  a00236:	62 82 1d 48 bc ec    	vfnmadd231ps zmm21,zmm12,zmm28
  a0023c:	62 a1 1c 48 59 c0    	vmulps zmm16,zmm12,zmm16
  a00242:	62 b1 64 40 58 e9    	vaddps zmm5,zmm19,zmm17
  a00248:	62 e2 1d 40 b8 c3    	vfmadd231ps zmm16,zmm28,zmm3
  a0024e:	62 31 5c 40 58 df    	vaddps zmm11,zmm20,zmm23
  a00254:	62 41 6c 48 59 e7    	vmulps zmm28,zmm2,zmm15
  a0025a:	62 42 35 48 bc e5    	vfnmadd231ps zmm28,zmm9,zmm13
  a00260:	62 51 34 48 59 ff    	vmulps zmm15,zmm9,zmm15
  a00266:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a0026c:	62 72 15 48 b8 fa    	vfmadd231ps zmm15,zmm13,zmm2
  a00272:	62 91 54 40 58 d4    	vaddps zmm2,zmm21,zmm28
  a00278:	62 11 34 40 58 e2    	vaddps zmm12,zmm25,zmm26
  a0027e:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a00284:	62 11 3c 40 58 cb    	vaddps zmm9,zmm24,zmm27
  a0028a:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a00290:	62 31 0c 48 58 ee    	vaddps zmm13,zmm14,zmm22
  a00296:	62 a1 0c 48 5c f6    	vsubps zmm22,zmm14,zmm22
  a0029c:	62 51 7c 40 58 f7    	vaddps zmm14,zmm16,zmm15
  a002a2:	62 41 7c 40 5c d7    	vsubps zmm26,zmm16,zmm15
  a002a8:	62 71 1c 48 58 f9    	vaddps zmm15,zmm12,zmm1
  a002ae:	62 21 2c 48 5c da    	vsubps zmm27,zmm10,zmm18
  a002b4:	62 c1 44 48 58 c5    	vaddps zmm16,zmm7,zmm13
  a002ba:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a002c0:	62 62 7d 48 18 2d 8e 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff67548e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a002c7:	54 67 ff 
  a002ca:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a002d0:	62 11 3c 40 59 d5    	vmulps zmm10,zmm24,zmm29
  a002d6:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a002dc:	62 e2 7d 48 18 3d ba 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff6750ba]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a002e3:	50 67 ff 
  a002e6:	62 32 35 40 b8 d7    	vfmadd231ps zmm10,zmm25,zmm23
  a002ec:	62 01 34 40 59 cd    	vmulps zmm25,zmm25,zmm29
  a002f2:	62 02 45 40 bc c8    	vfnmadd231ps zmm25,zmm23,zmm24
  a002f8:	62 81 2c 40 59 cd    	vmulps zmm17,zmm26,zmm29
  a002fe:	62 a2 4d 40 b8 cf    	vfmadd231ps zmm17,zmm22,zmm23
  a00304:	62 81 4c 40 59 f5    	vmulps zmm22,zmm22,zmm29
  a0030a:	62 82 45 40 bc f2    	vfnmadd231ps zmm22,zmm23,zmm26
  a00310:	62 81 64 40 59 d5    	vmulps zmm18,zmm19,zmm29
  a00316:	62 a2 25 40 b8 d7    	vfmadd231ps zmm18,zmm27,zmm23
  a0031c:	62 01 24 40 59 c5    	vmulps zmm24,zmm27,zmm29
  a00322:	62 22 45 40 bc c3    	vfnmadd231ps zmm24,zmm23,zmm19
  a00328:	62 81 54 40 59 dd    	vmulps zmm19,zmm21,zmm29
  a0032e:	62 a2 5d 40 b8 df    	vfmadd231ps zmm19,zmm20,zmm23
  a00334:	62 81 5c 40 59 e5    	vmulps zmm20,zmm20,zmm29
  a0033a:	62 62 7d 48 18 15 a4 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6753a4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a00341:	53 67 ff 
  a00344:	62 a2 55 40 bc e7    	vfnmadd231ps zmm20,zmm21,zmm23
  a0034a:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a00350:	62 e2 7d 48 18 3d ea 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff6752ea]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a00357:	52 67 ff 
  a0035a:	62 e2 4d 48 a8 e8    	vfmadd213ps zmm21,zmm6,zmm0
  a00360:	62 f2 45 40 bc c6    	vfnmadd231ps zmm0,zmm23,zmm6
  a00366:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a0036c:	62 d2 25 48 a8 f0    	vfmadd213ps zmm6,zmm11,zmm8
  a00372:	62 52 45 40 bc c3    	vfnmadd231ps zmm8,zmm23,zmm11
  a00378:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a0037e:	62 72 1d 48 a8 d9    	vfmadd213ps zmm11,zmm12,zmm1
  a00384:	62 d2 45 40 bc cc    	vfnmadd231ps zmm1,zmm23,zmm12
  a0038a:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a00390:	62 72 15 48 a8 e7    	vfmadd213ps zmm12,zmm13,zmm7
  a00396:	62 b2 15 48 bc ff    	vfnmadd231ps zmm7,zmm13,zmm23
  a0039c:	62 a2 55 48 bc ef    	vfnmadd231ps zmm21,zmm5,zmm23
  a003a2:	62 b2 6d 48 bc f7    	vfnmadd231ps zmm6,zmm2,zmm23
  a003a8:	62 32 35 48 bc df    	vfnmadd231ps zmm11,zmm9,zmm23
  a003ae:	62 32 0d 48 bc e7    	vfnmadd231ps zmm12,zmm14,zmm23
  a003b4:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a003ba:	62 f2 2d 40 b8 c5    	vfmadd231ps zmm0,zmm26,zmm5
  a003c0:	62 f1 64 48 58 da    	vaddps zmm3,zmm3,zmm2
  a003c6:	62 72 2d 40 b8 c2    	vfmadd231ps zmm8,zmm26,zmm2
  a003cc:	62 d1 34 48 58 d7    	vaddps zmm2,zmm9,zmm15
  a003d2:	62 d2 2d 40 b8 c9    	vfmadd231ps zmm1,zmm26,zmm9
  a003d8:	62 92 0d 48 b8 fa    	vfmadd231ps zmm7,zmm14,zmm26
  a003de:	62 d1 7c 40 58 ee    	vaddps zmm5,zmm16,zmm14
  a003e4:	62 11 7c 48 58 c9    	vaddps zmm9,zmm0,zmm25
  a003ea:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a003f0:	62 31 3c 48 58 ee    	vaddps zmm13,zmm8,zmm22
  a003f6:	62 31 3c 48 5c c6    	vsubps zmm8,zmm8,zmm22
  a003fc:	62 11 74 48 5c f0    	vsubps zmm14,zmm1,zmm24
  a00402:	62 f1 3c 40 58 c9    	vaddps zmm1,zmm24,zmm1
  a00408:	62 31 44 48 5c fc    	vsubps zmm15,zmm7,zmm20
  a0040e:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a00414:	62 c1 54 40 58 c2    	vaddps zmm16,zmm21,zmm10
  a0041a:	62 51 54 40 5c d2    	vsubps zmm10,zmm21,zmm10
  a00420:	62 a1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm17
  a00426:	62 b1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm17
  a0042c:	62 a1 24 48 5c ca    	vsubps zmm17,zmm11,zmm18
  a00432:	62 51 6c 40 58 db    	vaddps zmm11,zmm18,zmm11
  a00438:	62 a1 1c 48 5c d3    	vsubps zmm18,zmm12,zmm19
  a0043e:	62 31 1c 48 58 e3    	vaddps zmm12,zmm12,zmm19
  a00444:	62 a1 7c 40 5c dc    	vsubps zmm19,zmm16,zmm20
  a0044a:	62 a1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm20
  a00450:	62 a1 74 40 5c e2    	vsubps zmm20,zmm17,zmm18
  a00456:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a0045c:	62 c1 34 48 58 d5    	vaddps zmm18,zmm9,zmm13
  a00462:	62 51 34 48 5c cd    	vsubps zmm9,zmm9,zmm13
  a00468:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a0046e:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a00474:	62 51 7c 48 5c f8    	vsubps zmm15,zmm0,zmm8
  a0047a:	62 d1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm8
  a00480:	62 71 74 48 5c c7    	vsubps zmm8,zmm1,zmm7
  a00486:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a0048c:	62 f1 2c 48 58 fe    	vaddps zmm7,zmm10,zmm6
  a00492:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a00498:	62 51 24 48 58 d4    	vaddps zmm10,zmm11,zmm12
  a0049e:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a004a4:	62 71 5c 48 5c e3    	vsubps zmm12,zmm4,zmm3
  a004aa:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a004b0:	62 f1 6c 48 5c e5    	vsubps zmm4,zmm2,zmm5
  a004b6:	62 f1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm5
  a004bc:	62 f1 7c 48 28 2d 7a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68d97a]        # 8de40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b2f0>
  a004c3:	d9 68 ff 
  a004c6:	62 f2 55 48 7f da    	vpermt2ps zmm3,zmm5,zmm2
  a004cc:	62 a2 55 48 7f dc    	vpermt2ps zmm19,zmm5,zmm20
  a004d2:	62 c2 55 48 7f d5    	vpermt2ps zmm18,zmm5,zmm13
  a004d8:	62 52 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm8
  a004de:	62 d2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm10
  a004e4:	62 72 55 48 7f e4    	vpermt2ps zmm12,zmm5,zmm4
  a004ea:	62 a2 55 48 7f c1    	vpermt2ps zmm16,zmm5,zmm17
  a004f0:	62 52 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm14
  a004f6:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a004fc:	62 d2 55 48 7f f3    	vpermt2ps zmm6,zmm5,zmm11
  a00502:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a00508:	62 e1 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm19
  a0050f:	62 e1 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm18
  a00516:	62 71 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm15
  a0051d:	62 f1 7c 48 11 7e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm7
  a00524:	62 71 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm12
  a0052b:	62 e1 7c 48 11 46 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm16
  a00532:	62 71 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm9
  a00539:	62 f1 7c 48 11 46 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm0
  a00540:	62 f1 7c 48 11 76 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm6
  a00547:	c5 f8 77             	vzeroupper
  a0054a:	c3                   	ret
