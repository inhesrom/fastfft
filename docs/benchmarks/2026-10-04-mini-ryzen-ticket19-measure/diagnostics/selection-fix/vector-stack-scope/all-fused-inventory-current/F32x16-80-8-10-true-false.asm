
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5ef00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5ef00:	55                   	push   rbp
  a5ef01:	48 89 e5             	mov    rbp,rsp
  a5ef04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5ef08:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5ef0f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a5ef14:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a5ef19:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5ef1e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5ef23:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a5ef29:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a5ef2e:	62 f1 7c 48 28 1d 88 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff634788]        # 936c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20b70>
  a5ef35:	47 63 ff 
  a5ef38:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a5ef3e:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a5ef44:	62 f1 7c 48 28 15 b2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6347b2]        # 93700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20bb0>
  a5ef4b:	47 63 ff 
  a5ef4e:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a5ef54:	62 f1 7c 48 10 b7 50 	vmovups zmm6,ZMMWORD PTR [rdi+0x50]
  a5ef5b:	00 00 00 
  a5ef5e:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a5ef65:	00 
  a5ef66:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a5ef6c:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  a5ef72:	62 f2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm1
  a5ef78:	62 f1 7c 48 10 af a0 	vmovups zmm5,ZMMWORD PTR [rdi+0xa0]
  a5ef7f:	00 00 00 
  a5ef82:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a5ef89:	00 
  a5ef8a:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a5ef90:	62 72 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm1
  a5ef96:	62 f2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm1
  a5ef9c:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0xf0]
  a5efa3:	00 00 00 
  a5efa6:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a5efad:	00 
  a5efae:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a5efb4:	62 72 65 48 7f d1    	vpermt2ps zmm10,zmm3,zmm1
  a5efba:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a5efc0:	62 71 7c 48 10 5f 05 	vmovups zmm11,ZMMWORD PTR [rdi+0x140]
  a5efc7:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a5efce:	00 
  a5efcf:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a5efd5:	62 72 65 48 7f e1    	vpermt2ps zmm12,zmm3,zmm1
  a5efdb:	62 72 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm1
  a5efe1:	62 71 7c 48 10 af 90 	vmovups zmm13,ZMMWORD PTR [rdi+0x190]
  a5efe8:	01 00 00 
  a5efeb:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a5eff2:	00 
  a5eff3:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a5eff9:	62 72 65 48 7f f1    	vpermt2ps zmm14,zmm3,zmm1
  a5efff:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a5f005:	62 71 7c 48 10 bf e0 	vmovups zmm15,ZMMWORD PTR [rdi+0x1e0]
  a5f00c:	01 00 00 
  a5f00f:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a5f016:	00 
  a5f017:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a5f01d:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  a5f023:	62 72 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm1
  a5f029:	62 e1 7c 48 10 8f 30 	vmovups zmm17,ZMMWORD PTR [rdi+0x230]
  a5f030:	02 00 00 
  a5f033:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a5f03a:	00 
  a5f03b:	62 f2 75 40 77 d9    	vpermi2ps zmm3,zmm17,zmm1
  a5f041:	62 e2 6d 48 7f c9    	vpermt2ps zmm17,zmm2,zmm1
  a5f047:	62 c1 5c 48 58 d3    	vaddps zmm18,zmm4,zmm11
  a5f04d:	62 c1 54 48 58 df    	vaddps zmm19,zmm5,zmm15
  a5f053:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a5f059:	62 c1 4c 48 58 ed    	vaddps zmm21,zmm6,zmm13
  a5f05f:	62 a1 34 48 58 f1    	vaddps zmm22,zmm9,zmm17
  a5f065:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a5f06b:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  a5f071:	62 41 7c 48 58 c4    	vaddps zmm24,zmm0,zmm12
  a5f077:	62 21 3c 48 58 c8    	vaddps zmm25,zmm8,zmm16
  a5f07d:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a5f083:	62 41 44 48 58 de    	vaddps zmm27,zmm7,zmm14
  a5f089:	62 61 2c 48 58 e3    	vaddps zmm28,zmm10,zmm3
  a5f08f:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a5f095:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a5f09b:	62 51 5c 48 5c db    	vsubps zmm11,zmm4,zmm11
  a5f0a1:	62 31 3c 48 5c c0    	vsubps zmm8,zmm8,zmm16
  a5f0a7:	62 c1 24 48 58 c0    	vaddps zmm16,zmm11,zmm8
  a5f0ad:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  a5f0b3:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a5f0b9:	62 f1 4c 48 58 e7    	vaddps zmm4,zmm6,zmm7
  a5f0bf:	62 72 7d 48 18 2d d3 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6162d3]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5f0c6:	62 61 ff 
  a5f0c9:	62 51 5c 48 59 f5    	vmulps zmm14,zmm4,zmm13
  a5f0cf:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a5f0d5:	62 31 34 48 5c c9    	vsubps zmm9,zmm9,zmm17
  a5f0db:	62 d1 64 48 5c e1    	vsubps zmm4,zmm3,zmm9
  a5f0e1:	62 51 5c 48 59 d5    	vmulps zmm10,zmm4,zmm13
  a5f0e7:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  a5f0ed:	62 b1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm17
  a5f0f3:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a5f0f9:	62 71 04 48 5c e5    	vsubps zmm12,zmm15,zmm5
  a5f0ff:	62 71 1c 48 58 f8    	vaddps zmm15,zmm12,zmm0
  a5f105:	62 f1 44 48 5c ee    	vsubps zmm5,zmm7,zmm6
  a5f10b:	62 d1 54 48 59 ed    	vmulps zmm5,zmm5,zmm13
  a5f111:	62 f1 34 48 58 db    	vaddps zmm3,zmm9,zmm3
  a5f117:	62 d1 64 48 59 f5    	vmulps zmm6,zmm3,zmm13
  a5f11d:	62 71 54 48 5c ee    	vsubps zmm13,zmm5,zmm6
  a5f123:	62 d1 04 48 58 fd    	vaddps zmm7,zmm15,zmm13
  a5f129:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a5f12f:	62 81 24 40 5c dc    	vsubps zmm19,zmm27,zmm28
  a5f135:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a5f13b:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a5f141:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a5f147:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a5f14d:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a5f153:	62 f1 54 48 58 f6    	vaddps zmm6,zmm5,zmm6
  a5f159:	62 f1 3c 48 58 ee    	vaddps zmm5,zmm8,zmm6
  a5f15f:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a5f165:	62 51 2c 48 5c de    	vsubps zmm11,zmm10,zmm14
  a5f16b:	62 51 7c 48 58 d3    	vaddps zmm10,zmm0,zmm11
  a5f171:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a5f177:	62 11 2c 40 5c e5    	vsubps zmm12,zmm26,zmm29
  a5f17d:	62 a1 7c 40 5c c9    	vsubps zmm17,zmm16,zmm17
  a5f183:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a5f189:	62 a1 6c 40 5c db    	vsubps zmm19,zmm18,zmm19
  a5f18f:	62 31 3c 40 5c f5    	vsubps zmm14,zmm24,zmm21
  a5f195:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a5f19b:	62 51 7c 48 5c db    	vsubps zmm11,zmm0,zmm11
  a5f1a1:	62 71 7c 48 28 3d d5 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff667dd5]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5f1a8:	7d 66 ff 
  a5f1ab:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a5f1af:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a5f1b5:	62 72 05 48 7f c0    	vpermt2ps zmm8,zmm15,zmm0
  a5f1bb:	62 e1 7c 48 28 05 fb 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff667dfb]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5f1c2:	7d 66 ff 
  a5f1c5:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  a5f1cb:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a5f1d1:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a5f1d7:	62 f2 7d 40 7f e0    	vpermt2ps zmm4,zmm16,zmm0
  a5f1dd:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a5f1e3:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  a5f1e9:	62 f2 7d 40 7f d8    	vpermt2ps zmm3,zmm16,zmm0
  a5f1ef:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a5f1f5:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  a5f1fb:	62 f2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm0
  a5f201:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a5f207:	62 e2 05 48 7f f8    	vpermt2ps zmm23,zmm15,zmm0
  a5f20d:	62 e2 7d 40 7f e0    	vpermt2ps zmm20,zmm16,zmm0
  a5f213:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a5f219:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a5f21f:	62 e2 7d 40 7f c8    	vpermt2ps zmm17,zmm16,zmm0
  a5f225:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a5f22b:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a5f231:	62 e2 7d 40 7f d8    	vpermt2ps zmm19,zmm16,zmm0
  a5f237:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a5f23d:	62 62 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm0
  a5f243:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a5f249:	62 e1 7c 48 28 15 ad 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff667cad]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5f250:	7c 66 ff 
  a5f253:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a5f259:	62 22 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm23
  a5f25f:	62 e1 7c 48 28 2d d7 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff667cd7]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5f266:	7c 66 ff 
  a5f269:	62 32 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm23
  a5f26f:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a5f275:	62 02 6d 40 7f f2    	vpermt2ps zmm30,zmm18,zmm26
  a5f27b:	62 82 55 40 7f f2    	vpermt2ps zmm22,zmm21,zmm26
  a5f281:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a5f287:	62 02 6d 40 7f d3    	vpermt2ps zmm26,zmm18,zmm27
  a5f28d:	62 02 55 40 7f c3    	vpermt2ps zmm24,zmm21,zmm27
  a5f293:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a5f299:	62 02 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm28
  a5f29f:	62 02 55 40 7f cc    	vpermt2ps zmm25,zmm21,zmm28
  a5f2a5:	62 b2 6d 40 7f d4    	vpermt2ps zmm2,zmm18,zmm20
  a5f2ab:	62 b2 6d 40 7f e1    	vpermt2ps zmm4,zmm18,zmm17
  a5f2b1:	62 b2 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm19
  a5f2b7:	62 f1 ed 48 14 db    	vunpcklpd zmm3,zmm2,zmm3
  a5f2bd:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a5f2c3:	62 e1 dd 48 14 fd    	vunpcklpd zmm23,zmm4,zmm5
  a5f2c9:	62 91 95 40 14 d2    	vunpcklpd zmm2,zmm29,zmm26
  a5f2cf:	62 91 95 40 15 e2    	vunpckhpd zmm4,zmm29,zmm26
  a5f2d5:	62 81 8d 40 14 db    	vunpcklpd zmm19,zmm30,zmm27
  a5f2db:	62 81 8d 40 15 cb    	vunpckhpd zmm17,zmm30,zmm27
  a5f2e1:	62 91 bd 48 14 f0    	vunpcklpd zmm6,zmm8,zmm24
  a5f2e7:	62 91 bd 48 15 e8    	vunpckhpd zmm5,zmm8,zmm24
  a5f2ed:	62 01 cd 40 14 e1    	vunpcklpd zmm28,zmm22,zmm25
  a5f2f3:	62 81 cd 40 15 e1    	vunpckhpd zmm20,zmm22,zmm25
  a5f2f9:	62 71 7c 48 28 05 fd 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff667afd]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5f300:	7a 66 ff 
  a5f303:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a5f309:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a5f30f:	62 f2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm0
  a5f315:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a5f31b:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  a5f321:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  a5f327:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a5f32d:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  a5f333:	62 72 7d 40 7f c8    	vpermt2ps zmm9,zmm16,zmm0
  a5f339:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a5f33f:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a5f345:	62 72 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm0
  a5f34b:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a5f351:	62 62 05 48 7f e8    	vpermt2ps zmm29,zmm15,zmm0
  a5f357:	62 72 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm0
  a5f35d:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a5f363:	62 62 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm0
  a5f369:	62 72 7d 40 7f e8    	vpermt2ps zmm13,zmm16,zmm0
  a5f36f:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a5f375:	62 62 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm0
  a5f37b:	62 72 7d 40 7f f0    	vpermt2ps zmm14,zmm16,zmm0
  a5f381:	62 72 25 48 77 f8    	vpermi2ps zmm15,zmm11,zmm0
  a5f387:	62 72 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm0
  a5f38d:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a5f393:	62 b2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm19
  a5f399:	62 61 7c 48 28 1d 9d 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff667a9d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5f3a0:	7a 66 ff 
  a5f3a3:	62 b2 25 40 7f d3    	vpermt2ps zmm2,zmm27,zmm19
  a5f3a9:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  a5f3af:	62 a2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm17
  a5f3b5:	62 b2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm17
  a5f3bb:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a5f3c1:	62 82 3d 48 7f cc    	vpermt2ps zmm17,zmm8,zmm28
  a5f3c7:	62 92 25 40 7f f4    	vpermt2ps zmm6,zmm27,zmm28
  a5f3cd:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a5f3d3:	62 a2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm20
  a5f3d9:	62 b2 25 40 7f ec    	vpermt2ps zmm5,zmm27,zmm20
  a5f3df:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a5f3e5:	62 a2 3d 48 7f e7    	vpermt2ps zmm20,zmm8,zmm23
  a5f3eb:	62 b2 25 40 7f df    	vpermt2ps zmm3,zmm27,zmm23
  a5f3f1:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a5f3f7:	62 82 6d 40 7f fd    	vpermt2ps zmm23,zmm18,zmm29
  a5f3fd:	62 82 55 40 7f f5    	vpermt2ps zmm22,zmm21,zmm29
  a5f403:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a5f409:	62 02 6d 40 7f e6    	vpermt2ps zmm28,zmm18,zmm30
  a5f40f:	62 02 55 40 7f c6    	vpermt2ps zmm24,zmm21,zmm30
  a5f415:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a5f41b:	62 02 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm31
  a5f421:	62 02 55 40 7f cf    	vpermt2ps zmm25,zmm21,zmm31
  a5f427:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a5f42d:	62 42 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm15
  a5f433:	62 42 6d 40 7f f7    	vpermt2ps zmm30,zmm18,zmm15
  a5f439:	62 d2 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm12
  a5f43f:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a5f445:	62 52 6d 40 7f ce    	vpermt2ps zmm9,zmm18,zmm14
  a5f44b:	62 51 f5 48 14 e1    	vunpcklpd zmm12,zmm1,zmm9
  a5f451:	62 52 6d 40 7f d3    	vpermt2ps zmm10,zmm18,zmm11
  a5f457:	62 51 c5 48 14 d2    	vunpcklpd zmm10,zmm7,zmm10
  a5f45d:	62 11 c5 40 14 cd    	vunpcklpd zmm9,zmm23,zmm29
  a5f463:	62 11 c5 40 15 dd    	vunpckhpd zmm11,zmm23,zmm29
  a5f469:	62 11 9d 40 14 ee    	vunpcklpd zmm13,zmm28,zmm30
  a5f46f:	62 11 9d 40 15 fe    	vunpckhpd zmm15,zmm28,zmm30
  a5f475:	62 91 cd 40 14 f9    	vunpcklpd zmm7,zmm22,zmm25
  a5f47b:	62 11 cd 40 15 f1    	vunpckhpd zmm14,zmm22,zmm25
  a5f481:	62 81 bd 40 14 ea    	vunpcklpd zmm21,zmm24,zmm26
  a5f487:	62 81 bd 40 15 f2    	vunpckhpd zmm22,zmm24,zmm26
  a5f48d:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a5f493:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a5f499:	62 52 25 40 7f cd    	vpermt2ps zmm9,zmm27,zmm13
  a5f49f:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a5f4a5:	62 c2 3d 48 7f d7    	vpermt2ps zmm18,zmm8,zmm15
  a5f4ab:	62 52 25 40 7f df    	vpermt2ps zmm11,zmm27,zmm15
  a5f4b1:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a5f4b7:	62 22 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm21
  a5f4bd:	62 b2 25 40 7f fd    	vpermt2ps zmm7,zmm27,zmm21
  a5f4c3:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a5f4c9:	62 a2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm22
  a5f4cf:	62 32 25 40 7f f6    	vpermt2ps zmm14,zmm27,zmm22
  a5f4d5:	62 52 1d 48 77 c2    	vpermi2ps zmm8,zmm12,zmm10
  a5f4db:	62 52 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm10
  a5f4e1:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a5f4e8:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a5f4ef:	62 61 7c 48 10 4a 04 	vmovups zmm25,ZMMWORD PTR [rdx+0x100]
  a5f4f6:	62 61 7c 48 10 52 05 	vmovups zmm26,ZMMWORD PTR [rdx+0x140]
  a5f4fd:	62 e1 7c 48 10 72 06 	vmovups zmm22,ZMMWORD PTR [rdx+0x180]
  a5f504:	62 e1 7c 48 10 6a 07 	vmovups zmm21,ZMMWORD PTR [rdx+0x1c0]
  a5f50b:	62 11 64 40 59 d1    	vmulps zmm10,zmm19,zmm25
  a5f511:	62 12 6d 40 bc d2    	vfnmadd231ps zmm10,zmm18,zmm26
  a5f517:	62 01 6c 40 59 c9    	vmulps zmm25,zmm18,zmm25
  a5f51d:	62 61 7c 48 10 5a 10 	vmovups zmm27,ZMMWORD PTR [rdx+0x400]
  a5f524:	62 22 2d 40 b8 cb    	vfmadd231ps zmm25,zmm26,zmm19
  a5f52a:	62 e1 7c 48 10 5a 11 	vmovups zmm19,ZMMWORD PTR [rdx+0x440]
  a5f531:	62 81 5c 40 59 d3    	vmulps zmm18,zmm20,zmm27
  a5f537:	62 a2 3d 48 bc d3    	vfnmadd231ps zmm18,zmm8,zmm19
  a5f53d:	62 01 3c 48 59 d3    	vmulps zmm26,zmm8,zmm27
  a5f543:	62 71 7c 48 10 42 08 	vmovups zmm8,ZMMWORD PTR [rdx+0x200]
  a5f54a:	62 22 65 40 b8 d4    	vfmadd231ps zmm26,zmm19,zmm20
  a5f550:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a5f557:	62 c1 74 40 59 d8    	vmulps zmm19,zmm17,zmm8
  a5f55d:	62 a2 3d 40 bc dc    	vfnmadd231ps zmm19,zmm24,zmm20
  a5f563:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a5f569:	62 71 7c 48 10 42 0c 	vmovups zmm8,ZMMWORD PTR [rdx+0x300]
  a5f570:	62 22 5d 40 b8 c1    	vfmadd231ps zmm24,zmm20,zmm17
  a5f576:	62 e1 7c 48 10 62 0d 	vmovups zmm20,ZMMWORD PTR [rdx+0x340]
  a5f57d:	62 c1 7c 40 59 c8    	vmulps zmm17,zmm16,zmm8
  a5f583:	62 a2 45 40 bc cc    	vfnmadd231ps zmm17,zmm23,zmm20
  a5f589:	62 41 44 40 59 d8    	vmulps zmm27,zmm23,zmm8
  a5f58f:	62 e1 7c 48 10 7a 0a 	vmovups zmm23,ZMMWORD PTR [rdx+0x280]
  a5f596:	62 22 5d 40 b8 d8    	vfmadd231ps zmm27,zmm20,zmm16
  a5f59c:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a5f5a3:	62 31 4c 48 59 c7    	vmulps zmm8,zmm6,zmm23
  a5f5a9:	62 32 45 48 bc c0    	vfnmadd231ps zmm8,zmm7,zmm16
  a5f5af:	62 b1 44 48 59 ff    	vmulps zmm7,zmm7,zmm23
  a5f5b5:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a5f5bc:	62 f2 7d 40 b8 fe    	vfmadd231ps zmm7,zmm16,zmm6
  a5f5c2:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a5f5c9:	62 a1 54 48 59 e7    	vmulps zmm20,zmm5,zmm23
  a5f5cf:	62 e2 0d 48 bc e6    	vfnmadd231ps zmm20,zmm14,zmm6
  a5f5d5:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a5f5db:	62 e1 7c 48 10 42 12 	vmovups zmm16,ZMMWORD PTR [rdx+0x480]
  a5f5e2:	62 72 4d 48 b8 f5    	vfmadd231ps zmm14,zmm6,zmm5
  a5f5e8:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a5f5ef:	62 a1 5c 48 59 fe    	vmulps zmm23,zmm4,zmm22
  a5f5f5:	62 a2 25 48 bc fd    	vfnmadd231ps zmm23,zmm11,zmm21
  a5f5fb:	62 a1 24 48 59 f6    	vmulps zmm22,zmm11,zmm22
  a5f601:	62 b1 2c 48 58 f2    	vaddps zmm6,zmm10,zmm18
  a5f607:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a5f60d:	62 f1 7c 48 58 e6    	vaddps zmm4,zmm0,zmm6
  a5f613:	62 a1 64 48 59 e8    	vmulps zmm21,zmm3,zmm16
  a5f619:	62 82 1d 48 bc ec    	vfnmadd231ps zmm21,zmm12,zmm28
  a5f61f:	62 a1 1c 48 59 c0    	vmulps zmm16,zmm12,zmm16
  a5f625:	62 b1 64 40 58 e9    	vaddps zmm5,zmm19,zmm17
  a5f62b:	62 e2 1d 40 b8 c3    	vfmadd231ps zmm16,zmm28,zmm3
  a5f631:	62 31 5c 40 58 df    	vaddps zmm11,zmm20,zmm23
  a5f637:	62 41 6c 48 59 e7    	vmulps zmm28,zmm2,zmm15
  a5f63d:	62 42 35 48 bc e5    	vfnmadd231ps zmm28,zmm9,zmm13
  a5f643:	62 51 34 48 59 ff    	vmulps zmm15,zmm9,zmm15
  a5f649:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a5f64f:	62 72 15 48 b8 fa    	vfmadd231ps zmm15,zmm13,zmm2
  a5f655:	62 91 54 40 58 d4    	vaddps zmm2,zmm21,zmm28
  a5f65b:	62 11 34 40 58 e2    	vaddps zmm12,zmm25,zmm26
  a5f661:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a5f667:	62 11 3c 40 58 cb    	vaddps zmm9,zmm24,zmm27
  a5f66d:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a5f673:	62 31 0c 48 58 ee    	vaddps zmm13,zmm14,zmm22
  a5f679:	62 a1 0c 48 5c f6    	vsubps zmm22,zmm14,zmm22
  a5f67f:	62 51 7c 40 58 f7    	vaddps zmm14,zmm16,zmm15
  a5f685:	62 41 7c 40 5c d7    	vsubps zmm26,zmm16,zmm15
  a5f68b:	62 71 1c 48 58 f9    	vaddps zmm15,zmm12,zmm1
  a5f691:	62 21 2c 48 5c da    	vsubps zmm27,zmm10,zmm18
  a5f697:	62 c1 44 48 58 c5    	vaddps zmm16,zmm7,zmm13
  a5f69d:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a5f6a3:	62 62 7d 48 18 2d ab 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff6160ab]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a5f6aa:	60 61 ff 
  a5f6ad:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a5f6b3:	62 11 3c 40 59 d5    	vmulps zmm10,zmm24,zmm29
  a5f6b9:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a5f6bf:	62 e2 7d 48 18 3d d7 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff615cd7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5f6c6:	5c 61 ff 
  a5f6c9:	62 32 35 40 b8 d7    	vfmadd231ps zmm10,zmm25,zmm23
  a5f6cf:	62 01 34 40 59 cd    	vmulps zmm25,zmm25,zmm29
  a5f6d5:	62 02 45 40 bc c8    	vfnmadd231ps zmm25,zmm23,zmm24
  a5f6db:	62 81 2c 40 59 cd    	vmulps zmm17,zmm26,zmm29
  a5f6e1:	62 a2 4d 40 b8 cf    	vfmadd231ps zmm17,zmm22,zmm23
  a5f6e7:	62 81 4c 40 59 f5    	vmulps zmm22,zmm22,zmm29
  a5f6ed:	62 82 45 40 bc f2    	vfnmadd231ps zmm22,zmm23,zmm26
  a5f6f3:	62 81 64 40 59 d5    	vmulps zmm18,zmm19,zmm29
  a5f6f9:	62 a2 25 40 b8 d7    	vfmadd231ps zmm18,zmm27,zmm23
  a5f6ff:	62 01 24 40 59 c5    	vmulps zmm24,zmm27,zmm29
  a5f705:	62 22 45 40 bc c3    	vfnmadd231ps zmm24,zmm23,zmm19
  a5f70b:	62 81 54 40 59 dd    	vmulps zmm19,zmm21,zmm29
  a5f711:	62 a2 5d 40 b8 df    	vfmadd231ps zmm19,zmm20,zmm23
  a5f717:	62 81 5c 40 59 e5    	vmulps zmm20,zmm20,zmm29
  a5f71d:	62 62 7d 48 18 15 c1 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff615fc1]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a5f724:	5f 61 ff 
  a5f727:	62 a2 55 40 bc e7    	vfnmadd231ps zmm20,zmm21,zmm23
  a5f72d:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a5f733:	62 e2 7d 48 18 3d 07 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff615f07]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a5f73a:	5f 61 ff 
  a5f73d:	62 e2 4d 48 a8 e8    	vfmadd213ps zmm21,zmm6,zmm0
  a5f743:	62 f2 45 40 bc c6    	vfnmadd231ps zmm0,zmm23,zmm6
  a5f749:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a5f74f:	62 d2 25 48 a8 f0    	vfmadd213ps zmm6,zmm11,zmm8
  a5f755:	62 52 45 40 bc c3    	vfnmadd231ps zmm8,zmm23,zmm11
  a5f75b:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a5f761:	62 72 1d 48 a8 d9    	vfmadd213ps zmm11,zmm12,zmm1
  a5f767:	62 d2 45 40 bc cc    	vfnmadd231ps zmm1,zmm23,zmm12
  a5f76d:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a5f773:	62 72 15 48 a8 e7    	vfmadd213ps zmm12,zmm13,zmm7
  a5f779:	62 b2 15 48 bc ff    	vfnmadd231ps zmm7,zmm13,zmm23
  a5f77f:	62 a2 55 48 bc ef    	vfnmadd231ps zmm21,zmm5,zmm23
  a5f785:	62 b2 6d 48 bc f7    	vfnmadd231ps zmm6,zmm2,zmm23
  a5f78b:	62 32 35 48 bc df    	vfnmadd231ps zmm11,zmm9,zmm23
  a5f791:	62 32 0d 48 bc e7    	vfnmadd231ps zmm12,zmm14,zmm23
  a5f797:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a5f79d:	62 f2 2d 40 b8 c5    	vfmadd231ps zmm0,zmm26,zmm5
  a5f7a3:	62 f1 64 48 58 da    	vaddps zmm3,zmm3,zmm2
  a5f7a9:	62 72 2d 40 b8 c2    	vfmadd231ps zmm8,zmm26,zmm2
  a5f7af:	62 d1 34 48 58 d7    	vaddps zmm2,zmm9,zmm15
  a5f7b5:	62 d2 2d 40 b8 c9    	vfmadd231ps zmm1,zmm26,zmm9
  a5f7bb:	62 92 0d 48 b8 fa    	vfmadd231ps zmm7,zmm14,zmm26
  a5f7c1:	62 d1 7c 40 58 ee    	vaddps zmm5,zmm16,zmm14
  a5f7c7:	62 11 7c 48 58 c9    	vaddps zmm9,zmm0,zmm25
  a5f7cd:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a5f7d3:	62 31 3c 48 58 ee    	vaddps zmm13,zmm8,zmm22
  a5f7d9:	62 31 3c 48 5c c6    	vsubps zmm8,zmm8,zmm22
  a5f7df:	62 11 74 48 5c f0    	vsubps zmm14,zmm1,zmm24
  a5f7e5:	62 f1 3c 40 58 c9    	vaddps zmm1,zmm24,zmm1
  a5f7eb:	62 31 44 48 5c fc    	vsubps zmm15,zmm7,zmm20
  a5f7f1:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a5f7f7:	62 c1 54 40 58 c2    	vaddps zmm16,zmm21,zmm10
  a5f7fd:	62 51 54 40 5c d2    	vsubps zmm10,zmm21,zmm10
  a5f803:	62 a1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm17
  a5f809:	62 b1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm17
  a5f80f:	62 a1 24 48 5c ca    	vsubps zmm17,zmm11,zmm18
  a5f815:	62 51 6c 40 58 db    	vaddps zmm11,zmm18,zmm11
  a5f81b:	62 a1 1c 48 5c d3    	vsubps zmm18,zmm12,zmm19
  a5f821:	62 31 1c 48 58 e3    	vaddps zmm12,zmm12,zmm19
  a5f827:	62 a1 7c 40 5c dc    	vsubps zmm19,zmm16,zmm20
  a5f82d:	62 a1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm20
  a5f833:	62 a1 74 40 5c e2    	vsubps zmm20,zmm17,zmm18
  a5f839:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a5f83f:	62 c1 34 48 58 d5    	vaddps zmm18,zmm9,zmm13
  a5f845:	62 51 34 48 5c cd    	vsubps zmm9,zmm9,zmm13
  a5f84b:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a5f851:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a5f857:	62 51 7c 48 5c f8    	vsubps zmm15,zmm0,zmm8
  a5f85d:	62 d1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm8
  a5f863:	62 71 74 48 5c c7    	vsubps zmm8,zmm1,zmm7
  a5f869:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a5f86f:	62 f1 2c 48 58 fe    	vaddps zmm7,zmm10,zmm6
  a5f875:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a5f87b:	62 51 24 48 58 d4    	vaddps zmm10,zmm11,zmm12
  a5f881:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a5f887:	62 71 6c 48 5c e5    	vsubps zmm12,zmm2,zmm5
  a5f88d:	62 f1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm5
  a5f893:	62 f1 5c 48 5c eb    	vsubps zmm5,zmm4,zmm3
  a5f899:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a5f89f:	62 f1 7c 48 28 25 97 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff633e97]        # 93740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20bf0>
  a5f8a6:	3e 63 ff 
  a5f8a9:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a5f8af:	62 a2 5d 48 7f e3    	vpermt2ps zmm20,zmm4,zmm19
  a5f8b5:	62 32 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm18
  a5f8bb:	62 52 5d 48 7f c7    	vpermt2ps zmm8,zmm4,zmm15
  a5f8c1:	62 72 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm7
  a5f8c7:	62 72 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm5
  a5f8cd:	62 a2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm16
  a5f8d3:	62 52 5d 48 7f f1    	vpermt2ps zmm14,zmm4,zmm9
  a5f8d9:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5f8df:	62 72 5d 48 7f de    	vpermt2ps zmm11,zmm4,zmm6
  a5f8e5:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a5f8eb:	62 e1 7c 48 11 66 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm20
  a5f8f2:	62 71 7c 48 11 6e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm13
  a5f8f9:	62 71 7c 48 11 46 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm8
  a5f900:	62 71 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm10
  a5f907:	62 71 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm12
  a5f90e:	62 e1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm17
  a5f915:	62 71 7c 48 11 76 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm14
  a5f91c:	62 f1 7c 48 11 4e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm1
  a5f923:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a5f92a:	48 89 ec             	mov    rsp,rbp
  a5f92d:	5d                   	pop    rbp
  a5f92e:	c5 f8 77             	vzeroupper
  a5f931:	c3                   	ret
