
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5cf80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5cf80:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a5cf85:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a5cf8c:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a5cf90:	c4 e2 79 18 57 28    	vbroadcastss xmm2,DWORD PTR [rdi+0x28]
  a5cf96:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a5cf9c:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a5cfa3:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a5cfaa:	62 f1 7c 48 28 15 8c 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff63668c]        # 93640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20af0>
  a5cfb1:	66 63 ff 
  a5cfb4:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a5cfb8:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5cfbe:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a5cfc4:	62 f1 7c 48 28 25 b2 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6366b2]        # 93680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20b30>
  a5cfcb:	66 63 ff 
  a5cfce:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5cfd4:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a5cfd9:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a5cfe0:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a5cfe5:	c4 e2 79 18 7f 58    	vbroadcastss xmm7,DWORD PTR [rdi+0x58]
  a5cfeb:	c4 e3 41 0c ed 03    	vblendps xmm5,xmm7,xmm5,0x3
  a5cff1:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a5cff8:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a5cfff:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a5d005:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a5d00b:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a5d011:	c5 f8 10 b7 80 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0x80]
  a5d018:	00 
  a5d019:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a5d01e:	c4 e3 49 21 b7 84 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x84],0x10
  a5d025:	00 00 10 
  a5d028:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a5d02f:	00 00 
  a5d031:	c4 e3 31 0c f6 03    	vblendps xmm6,xmm9,xmm6,0x3
  a5d037:	c4 e3 49 21 b7 8c 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x8c],0x30
  a5d03e:	00 00 30 
  a5d041:	62 73 3d 48 18 c6 02 	vinsertf32x4 zmm8,zmm8,xmm6,0x2
  a5d048:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a5d04e:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a5d054:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a5d05a:	c5 f8 10 b7 b0 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0xb0]
  a5d061:	00 
  a5d062:	c4 e3 49 21 b7 b4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xb4],0x10
  a5d069:	00 00 10 
  a5d06c:	c4 62 79 18 97 b8 00 	vbroadcastss xmm10,DWORD PTR [rdi+0xb8]
  a5d073:	00 00 
  a5d075:	c5 7c 10 9f 90 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0x90]
  a5d07c:	00 
  a5d07d:	c4 e3 29 0c f6 03    	vblendps xmm6,xmm10,xmm6,0x3
  a5d083:	c4 e3 49 21 b7 bc 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xbc],0x30
  a5d08a:	00 00 30 
  a5d08d:	62 73 25 48 18 d6 02 	vinsertf32x4 zmm10,zmm11,xmm6,0x2
  a5d094:	62 f2 2d 48 77 d0    	vpermi2ps zmm2,zmm10,zmm0
  a5d09a:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a5d0a0:	62 d1 74 48 58 e0    	vaddps zmm4,zmm1,zmm8
  a5d0a6:	62 51 54 48 58 da    	vaddps zmm11,zmm5,zmm10
  a5d0ac:	62 51 5c 48 58 eb    	vaddps zmm13,zmm4,zmm11
  a5d0b2:	62 51 64 48 58 e1    	vaddps zmm12,zmm3,zmm9
  a5d0b8:	62 71 44 48 58 f2    	vaddps zmm14,zmm7,zmm2
  a5d0be:	62 d1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm14
  a5d0c4:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a5d0ca:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a5d0d0:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a5d0d6:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a5d0dc:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a5d0e2:	62 71 54 48 58 c3    	vaddps zmm8,zmm5,zmm3
  a5d0e8:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a5d0ee:	62 51 1c 48 5c de    	vsubps zmm11,zmm12,zmm14
  a5d0f4:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a5d0fa:	62 71 64 48 5c d5    	vsubps zmm10,zmm3,zmm5
  a5d100:	62 71 7c 48 28 35 76 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff669e76]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5d107:	9e 66 ff 
  a5d10a:	62 72 0d 48 7f e8    	vpermt2ps zmm13,zmm14,zmm0
  a5d110:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a5d116:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a5d11c:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a5d122:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a5d127:	62 52 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm15
  a5d12d:	62 71 7c 48 28 25 c9 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff669dc9]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5d134:	9d 66 ff 
  a5d137:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a5d13d:	62 d2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm15
  a5d143:	62 e1 7c 48 28 05 f3 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff669df3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5d14a:	9d 66 ff 
  a5d14d:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a5d153:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a5d159:	62 52 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm15
  a5d15f:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a5d165:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a5d16b:	62 c2 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm15
  a5d171:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a5d177:	62 f1 95 48 14 d4    	vunpcklpd zmm2,zmm13,zmm4
  a5d17d:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a5d183:	62 52 1d 48 7f ef    	vpermt2ps zmm13,zmm12,zmm15
  a5d189:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a5d18f:	62 e1 c5 48 14 d1    	vunpcklpd zmm18,zmm7,zmm1
  a5d195:	62 b1 d5 48 14 d9    	vunpcklpd zmm3,zmm5,zmm17
  a5d19b:	62 b1 d5 48 15 e1    	vunpckhpd zmm4,zmm5,zmm17
  a5d1a1:	62 d1 b5 48 14 fd    	vunpcklpd zmm7,zmm9,zmm13
  a5d1a7:	62 51 b5 48 15 cd    	vunpckhpd zmm9,zmm9,zmm13
  a5d1ad:	62 f1 7c 48 28 2d 49 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff669c49]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5d1b4:	9c 66 ff 
  a5d1b7:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a5d1bd:	62 f2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm7
  a5d1c3:	62 71 7c 48 28 2d 73 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff669c73]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5d1ca:	9c 66 ff 
  a5d1cd:	62 f2 15 48 7f df    	vpermt2ps zmm3,zmm13,zmm7
  a5d1d3:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a5d1d9:	62 d2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm9
  a5d1df:	62 d2 15 48 7f e1    	vpermt2ps zmm4,zmm13,zmm9
  a5d1e5:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a5d1eb:	62 32 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm18
  a5d1f1:	62 b2 15 48 7f d2    	vpermt2ps zmm2,zmm13,zmm18
  a5d1f7:	62 f2 0d 48 7f f0    	vpermt2ps zmm6,zmm14,zmm0
  a5d1fd:	62 72 0d 48 7f c0    	vpermt2ps zmm8,zmm14,zmm0
  a5d203:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a5d209:	62 72 0d 48 7f d0    	vpermt2ps zmm10,zmm14,zmm0
  a5d20f:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a5d215:	62 d2 1d 48 7f c7    	vpermt2ps zmm0,zmm12,zmm15
  a5d21b:	62 d2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm15
  a5d221:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a5d227:	62 52 1d 48 7f f7    	vpermt2ps zmm14,zmm12,zmm15
  a5d22d:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a5d233:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a5d239:	62 c2 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm15
  a5d23f:	62 52 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm15
  a5d245:	62 c1 cd 48 14 d3    	vunpcklpd zmm18,zmm6,zmm11
  a5d24b:	62 52 2d 48 77 e7    	vpermi2ps zmm12,zmm10,zmm15
  a5d251:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a5d257:	62 d1 bd 48 14 f2    	vunpcklpd zmm6,zmm8,zmm10
  a5d25d:	62 31 fd 48 14 f9    	vunpcklpd zmm15,zmm0,zmm17
  a5d263:	62 a1 fd 48 15 c1    	vunpckhpd zmm16,zmm0,zmm17
  a5d269:	62 d1 8d 48 14 c4    	vunpcklpd zmm0,zmm14,zmm12
  a5d26f:	62 51 8d 48 15 d4    	vunpckhpd zmm10,zmm14,zmm12
  a5d275:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a5d27b:	62 72 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm0
  a5d281:	62 72 15 48 7f f8    	vpermt2ps zmm15,zmm13,zmm0
  a5d287:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5d28d:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a5d293:	62 c2 15 48 7f c2    	vpermt2ps zmm16,zmm13,zmm10
  a5d299:	62 f2 6d 40 77 ee    	vpermi2ps zmm5,zmm18,zmm6
  a5d29f:	62 e2 15 48 7f d6    	vpermt2ps zmm18,zmm13,zmm6
  a5d2a5:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a5d2ac:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a5d2b3:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a5d2ba:	62 e1 7c 48 10 5a 05 	vmovups zmm19,ZMMWORD PTR [rdx+0x140]
  a5d2c1:	62 e1 7c 48 10 62 06 	vmovups zmm20,ZMMWORD PTR [rdx+0x180]
  a5d2c8:	62 e1 7c 48 10 6a 07 	vmovups zmm21,ZMMWORD PTR [rdx+0x1c0]
  a5d2cf:	62 e1 7c 48 10 72 08 	vmovups zmm22,ZMMWORD PTR [rdx+0x200]
  a5d2d6:	62 e1 7c 48 10 7a 09 	vmovups zmm23,ZMMWORD PTR [rdx+0x240]
  a5d2dd:	62 61 7c 48 10 42 0a 	vmovups zmm24,ZMMWORD PTR [rdx+0x280]
  a5d2e4:	62 61 7c 48 10 4a 0b 	vmovups zmm25,ZMMWORD PTR [rdx+0x2c0]
  a5d2eb:	62 b1 44 48 59 c1    	vmulps zmm0,zmm7,zmm17
  a5d2f1:	62 b2 1d 48 bc c3    	vfnmadd231ps zmm0,zmm12,zmm19
  a5d2f7:	62 b1 34 48 59 f6    	vmulps zmm6,zmm9,zmm22
  a5d2fd:	62 b2 55 48 bc f7    	vfnmadd231ps zmm6,zmm5,zmm23
  a5d303:	62 61 7c 48 58 d6    	vaddps zmm26,zmm0,zmm6
  a5d309:	62 21 5c 48 59 dc    	vmulps zmm27,zmm4,zmm20
  a5d30f:	62 22 7d 40 bc dd    	vfnmadd231ps zmm27,zmm16,zmm21
  a5d315:	62 11 6c 48 59 d0    	vmulps zmm10,zmm2,zmm24
  a5d31b:	62 12 6d 40 bc d1    	vfnmadd231ps zmm10,zmm18,zmm25
  a5d321:	62 51 64 48 59 dd    	vmulps zmm11,zmm3,zmm13
  a5d327:	62 52 05 48 bc de    	vfnmadd231ps zmm11,zmm15,zmm14
  a5d32d:	62 41 2c 48 58 e3    	vaddps zmm28,zmm10,zmm11
  a5d333:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a5d339:	62 72 65 40 b8 e7    	vfmadd231ps zmm12,zmm19,zmm7
  a5d33f:	62 b1 54 48 59 ee    	vmulps zmm5,zmm5,zmm22
  a5d345:	62 d2 45 40 b8 e9    	vfmadd231ps zmm5,zmm23,zmm9
  a5d34b:	62 f1 1c 48 58 fd    	vaddps zmm7,zmm12,zmm5
  a5d351:	62 31 7c 40 59 cc    	vmulps zmm9,zmm16,zmm20
  a5d357:	62 72 55 40 b8 cc    	vfmadd231ps zmm9,zmm21,zmm4
  a5d35d:	62 91 6c 40 59 e0    	vmulps zmm4,zmm18,zmm24
  a5d363:	62 f2 35 40 b8 e2    	vfmadd231ps zmm4,zmm25,zmm2
  a5d369:	62 51 04 48 59 ed    	vmulps zmm13,zmm15,zmm13
  a5d36f:	62 72 0d 48 b8 eb    	vfmadd231ps zmm13,zmm14,zmm3
  a5d375:	62 d1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm13
  a5d37b:	62 f2 7d 48 18 15 db 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6180db]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5d382:	80 61 ff 
  a5d385:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a5d38b:	62 72 2d 40 ac f1    	vfnmadd213ps zmm14,zmm26,zmm1
  a5d391:	62 72 7d 48 18 3d 39 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff617f39]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5d398:	7f 61 ff 
  a5d39b:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a5d3a1:	62 82 1d 40 ac c3    	vfnmadd213ps zmm16,zmm28,zmm27
  a5d3a7:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a5d3ad:	62 c2 45 48 ac c8    	vfnmadd213ps zmm17,zmm7,zmm8
  a5d3b3:	62 d2 65 48 ac d1    	vfnmadd213ps zmm2,zmm3,zmm9
  a5d3b9:	62 81 24 20 58 d4    	vaddps ymm18,ymm27,ymm28
  a5d3bf:	62 81 74 28 58 da    	vaddps ymm19,ymm1,ymm26
  a5d3c5:	62 a1 64 20 58 e2    	vaddps ymm20,ymm19,ymm18
  a5d3cb:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  a5d3cf:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  a5d3d3:	c5 40 58 c3          	vaddps xmm8,xmm7,xmm3
  a5d3d7:	c5 fc 28 0d 01 9e 61 	vmovaps ymm1,YMMWORD PTR [rip+0xffffffffff619e01]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a5d3de:	ff 
  a5d3df:	62 32 75 28 7f c4    	vpermt2ps ymm8,ymm1,ymm20
  a5d3e5:	c5 7c 11 06          	vmovups YMMWORD PTR [rsi],ymm8
  a5d3e9:	c4 c1 5c 5c e5       	vsubps ymm4,ymm4,ymm13
  a5d3ee:	c5 84 59 e4          	vmulps ymm4,ymm15,ymm4
  a5d3f2:	62 71 7c 20 58 c4    	vaddps ymm8,ymm16,ymm4
  a5d3f8:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  a5d3fc:	c5 84 59 ed          	vmulps ymm5,ymm15,ymm5
  a5d400:	c5 0c 58 cd          	vaddps ymm9,ymm14,ymm5
  a5d404:	c4 41 34 5c e0       	vsubps ymm12,ymm9,ymm8
  a5d409:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  a5d40e:	c4 41 2c 59 d7       	vmulps ymm10,ymm10,ymm15
  a5d413:	c4 41 6c 5c da       	vsubps ymm11,ymm2,ymm10
  a5d418:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  a5d41c:	c5 84 59 c0          	vmulps ymm0,ymm15,ymm0
  a5d420:	62 f1 74 20 5c f0    	vsubps ymm6,ymm17,ymm0
  a5d426:	c4 41 48 5c eb       	vsubps xmm13,xmm6,xmm11
  a5d42b:	62 52 75 28 7f ec    	vpermt2ps ymm13,ymm1,ymm12
  a5d431:	c5 7c 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm13
  a5d436:	62 f1 7c 20 5c e4    	vsubps ymm4,ymm16,ymm4
  a5d43c:	c5 8c 5c ed          	vsubps ymm5,ymm14,ymm5
  a5d440:	c5 54 58 e4          	vaddps ymm12,ymm5,ymm4
  a5d444:	c5 ac 58 d2          	vaddps ymm2,ymm10,ymm2
  a5d448:	62 b1 7c 28 58 c1    	vaddps ymm0,ymm0,ymm17
  a5d44e:	c5 78 58 d2          	vaddps xmm10,xmm0,xmm2
  a5d452:	62 52 75 28 7f d4    	vpermt2ps ymm10,ymm1,ymm12
  a5d458:	c5 7c 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm10
  a5d45d:	62 31 64 20 5c d2    	vsubps ymm10,ymm19,ymm18
  a5d463:	c5 c0 5c db          	vsubps xmm3,xmm7,xmm3
  a5d467:	62 d2 75 28 7f da    	vpermt2ps ymm3,ymm1,ymm10
  a5d46d:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  a5d472:	c4 c1 34 58 d8       	vaddps ymm3,ymm9,ymm8
  a5d477:	c5 a0 58 f6          	vaddps xmm6,xmm11,xmm6
  a5d47b:	62 f2 75 28 7f f3    	vpermt2ps ymm6,ymm1,ymm3
  a5d481:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  a5d488:	00 
  a5d489:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  a5d48d:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  a5d491:	62 f2 75 28 7f c3    	vpermt2ps ymm0,ymm1,ymm3
  a5d497:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a5d49e:	00 
  a5d49f:	c5 f8 77             	vzeroupper
  a5d4a2:	c3                   	ret
