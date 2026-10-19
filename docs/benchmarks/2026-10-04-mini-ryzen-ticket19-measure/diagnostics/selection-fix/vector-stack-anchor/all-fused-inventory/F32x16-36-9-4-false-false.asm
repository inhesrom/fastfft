
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a19f80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a19f80:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a19f84:	c5 7c 10 67 20       	vmovups ymm12,YMMWORD PTR [rdi+0x20]
  a19f89:	c5 7c 10 4f 40       	vmovups ymm9,YMMWORD PTR [rdi+0x40]
  a19f8e:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  a19f93:	62 e1 7c 48 28 15 63 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff675963]        # 8f900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cdb0>
  a19f9a:	59 67 ff 
  a19f9d:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a19fa1:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a19fa7:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a19fad:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff675989]        # 8f940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cdf0>
  a19fb4:	59 67 ff 
  a19fb7:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a19fbd:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a19fc3:	62 e2 6d 40 7f c0    	vpermt2ps zmm16,zmm18,zmm0
  a19fc9:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  a19fcf:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a19fd5:	62 72 6d 40 7f f8    	vpermt2ps zmm15,zmm18,zmm0
  a19fdb:	62 72 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm0
  a19fe1:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a19fe7:	62 f2 6d 40 7f f8    	vpermt2ps zmm7,zmm18,zmm0
  a19fed:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a19ff3:	62 e1 7c 28 10 67 04 	vmovups ymm20,YMMWORD PTR [rdi+0x80]
  a19ffa:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a1a000:	62 e2 6d 40 7f e8    	vpermt2ps zmm21,zmm18,zmm0
  a1a006:	62 e2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm0
  a1a00c:	62 e1 7c 28 10 4f 05 	vmovups ymm17,YMMWORD PTR [rdi+0xa0]
  a1a013:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  a1a019:	62 e2 6d 40 7f d8    	vpermt2ps zmm19,zmm18,zmm0
  a1a01f:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a1a025:	c5 7c 10 b7 c0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xc0]
  a1a02c:	00 
  a1a02d:	62 51 7c 48 28 ee    	vmovaps zmm13,zmm14
  a1a033:	62 72 6d 40 7f e8    	vpermt2ps zmm13,zmm18,zmm0
  a1a039:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a1a03f:	62 e1 7c 28 10 77 07 	vmovups ymm22,YMMWORD PTR [rdi+0xe0]
  a1a046:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a1a04c:	62 e2 6d 40 7f f8    	vpermt2ps zmm23,zmm18,zmm0
  a1a052:	62 e2 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm0
  a1a058:	62 61 7c 28 10 47 08 	vmovups ymm24,YMMWORD PTR [rdi+0x100]
  a1a05f:	62 e2 3d 40 77 d0    	vpermi2ps zmm18,zmm24,zmm0
  a1a065:	62 62 65 48 7f c0    	vpermt2ps zmm24,zmm3,zmm0
  a1a06b:	62 31 54 40 58 df    	vaddps zmm11,zmm21,zmm23
  a1a071:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a1a077:	62 21 64 40 58 ca    	vaddps zmm25,zmm19,zmm18
  a1a07d:	62 91 04 48 58 f1    	vaddps zmm6,zmm15,zmm25
  a1a083:	62 21 5c 40 58 d6    	vaddps zmm26,zmm20,zmm22
  a1a089:	62 11 1c 48 58 c2    	vaddps zmm8,zmm12,zmm26
  a1a08f:	62 01 74 40 58 d8    	vaddps zmm27,zmm17,zmm24
  a1a095:	62 11 34 48 58 d3    	vaddps zmm10,zmm9,zmm27
  a1a09b:	62 f2 7d 48 18 1d bb 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff65b3bb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1a0a2:	b3 65 ff 
  a1a0a5:	62 c2 65 48 bc c3    	vfnmadd231ps zmm16,zmm3,zmm11
  a1a0ab:	62 72 7d 48 18 1d 1f 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65b21f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1a0b2:	b2 65 ff 
  a1a0b5:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a1a0bb:	62 c1 5c 40 59 f3    	vmulps zmm22,zmm20,zmm11
  a1a0c1:	62 a1 7c 40 58 e6    	vaddps zmm20,zmm16,zmm22
  a1a0c7:	62 12 65 48 bc e2    	vfnmadd231ps zmm12,zmm3,zmm26
  a1a0cd:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a1a0d3:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a1a0d9:	62 a1 1c 48 5c fd    	vsubps zmm23,zmm12,zmm21
  a1a0df:	62 62 7d 48 18 15 7f 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff65b57f]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a1a0e6:	b5 65 ff 
  a1a0e9:	62 12 65 48 bc f9    	vfnmadd231ps zmm15,zmm3,zmm25
  a1a0ef:	62 62 7d 48 18 0d df 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff65b3df]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a1a0f6:	b3 65 ff 
  a1a0f9:	62 01 74 40 5c c0    	vsubps zmm24,zmm17,zmm24
  a1a0ff:	62 81 44 40 59 ca    	vmulps zmm17,zmm23,zmm26
  a1a105:	62 82 5d 40 b8 c9    	vfmadd231ps zmm17,zmm20,zmm25
  a1a10b:	62 41 3c 40 59 c3    	vmulps zmm24,zmm24,zmm11
  a1a111:	62 12 65 48 bc cb    	vfnmadd231ps zmm9,zmm3,zmm27
  a1a117:	62 01 04 48 58 d8    	vaddps zmm27,zmm15,zmm24
  a1a11d:	62 a1 64 40 5c d2    	vsubps zmm18,zmm19,zmm18
  a1a123:	62 41 6c 40 59 e3    	vmulps zmm28,zmm18,zmm11
  a1a129:	62 01 34 48 5c ec    	vsubps zmm29,zmm9,zmm28
  a1a12f:	62 81 44 40 59 d1    	vmulps zmm18,zmm23,zmm25
  a1a135:	62 e2 7d 48 18 3d d9 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff65b1d9]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a1a13c:	b1 65 ff 
  a1a13f:	62 82 5d 40 bc d2    	vfnmadd231ps zmm18,zmm20,zmm26
  a1a145:	62 a1 14 40 59 df    	vmulps zmm19,zmm29,zmm23
  a1a14b:	62 62 7d 48 18 0d 87 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff65b387]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a1a152:	b3 65 ff 
  a1a155:	62 82 25 40 b8 d9    	vfmadd231ps zmm19,zmm27,zmm25
  a1a15b:	62 81 14 40 59 e1    	vmulps zmm20,zmm29,zmm25
  a1a161:	62 82 45 40 bc e3    	vfnmadd231ps zmm20,zmm23,zmm27
  a1a167:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a1a16d:	62 41 44 48 58 d5    	vaddps zmm26,zmm7,zmm13
  a1a173:	62 51 54 40 58 e4    	vaddps zmm12,zmm21,zmm12
  a1a179:	62 01 6c 48 58 da    	vaddps zmm27,zmm2,zmm26
  a1a17f:	62 01 04 48 5c c0    	vsubps zmm24,zmm15,zmm24
  a1a185:	62 71 54 48 58 fe    	vaddps zmm15,zmm5,zmm6
  a1a18b:	62 51 1c 40 58 c9    	vaddps zmm9,zmm28,zmm9
  a1a191:	62 a1 1c 48 59 c7    	vmulps zmm16,zmm12,zmm23
  a1a197:	62 82 4d 40 b8 c1    	vfmadd231ps zmm16,zmm22,zmm25
  a1a19d:	62 81 1c 48 59 e9    	vmulps zmm21,zmm12,zmm25
  a1a1a3:	62 72 7d 48 18 25 43 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff65b343]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a1a1aa:	b3 65 ff 
  a1a1ad:	62 a2 4d 40 bc ef    	vfnmadd231ps zmm21,zmm22,zmm23
  a1a1b3:	62 c1 34 48 59 f4    	vmulps zmm22,zmm9,zmm12
  a1a1b9:	62 e2 7d 48 18 3d 35 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff65b435]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a1a1c0:	b4 65 ff 
  a1a1c3:	62 a2 3d 40 bc f7    	vfnmadd231ps zmm22,zmm24,zmm23
  a1a1c9:	62 a1 34 48 59 ff    	vmulps zmm23,zmm9,zmm23
  a1a1cf:	62 51 24 40 58 cf    	vaddps zmm9,zmm27,zmm15
  a1a1d5:	62 c2 3d 40 b8 fc    	vfmadd231ps zmm23,zmm24,zmm12
  a1a1db:	62 51 5c 48 58 e6    	vaddps zmm12,zmm4,zmm14
  a1a1e1:	62 41 74 48 58 c4    	vaddps zmm24,zmm1,zmm12
  a1a1e7:	62 92 65 48 bc d2    	vfnmadd231ps zmm2,zmm3,zmm26
  a1a1ed:	62 41 3c 48 58 ca    	vaddps zmm25,zmm8,zmm10
  a1a1f3:	62 51 5c 48 5c f6    	vsubps zmm14,zmm4,zmm14
  a1a1f9:	62 91 3c 40 58 e1    	vaddps zmm4,zmm24,zmm25
  a1a1ff:	62 51 0c 48 59 f3    	vmulps zmm14,zmm14,zmm11
  a1a205:	62 d2 65 48 bc cc    	vfnmadd231ps zmm1,zmm3,zmm12
  a1a20b:	62 51 6c 48 58 e6    	vaddps zmm12,zmm2,zmm14
  a1a211:	62 d1 44 48 5c fd    	vsubps zmm7,zmm7,zmm13
  a1a217:	62 21 74 40 58 d3    	vaddps zmm26,zmm17,zmm19
  a1a21d:	62 d1 44 48 59 fb    	vmulps zmm7,zmm7,zmm11
  a1a223:	62 51 6c 48 5c ee    	vsubps zmm13,zmm2,zmm14
  a1a229:	62 71 74 48 5c f7    	vsubps zmm14,zmm1,zmm7
  a1a22f:	62 f1 44 48 58 f9    	vaddps zmm7,zmm7,zmm1
  a1a235:	62 91 1c 48 58 d2    	vaddps zmm2,zmm12,zmm26
  a1a23b:	62 12 65 48 ac fb    	vfnmadd213ps zmm15,zmm3,zmm27
  a1a241:	62 21 6c 40 58 dc    	vaddps zmm27,zmm18,zmm20
  a1a247:	62 02 65 48 ac c8    	vfnmadd213ps zmm25,zmm3,zmm24
  a1a24d:	62 91 0c 48 58 cb    	vaddps zmm1,zmm14,zmm27
  a1a253:	62 42 65 48 ac d4    	vfnmadd213ps zmm26,zmm3,zmm12
  a1a259:	62 21 7c 40 58 c6    	vaddps zmm24,zmm16,zmm22
  a1a25f:	62 42 65 48 ac de    	vfnmadd213ps zmm27,zmm3,zmm14
  a1a265:	62 11 14 48 58 e0    	vaddps zmm12,zmm13,zmm24
  a1a26b:	62 42 65 48 ac c5    	vfnmadd213ps zmm24,zmm3,zmm13
  a1a271:	62 31 54 40 5c ef    	vsubps zmm13,zmm21,zmm23
  a1a277:	62 f2 15 48 ac df    	vfnmadd213ps zmm3,zmm13,zmm7
  a1a27d:	62 d1 44 48 58 fd    	vaddps zmm7,zmm7,zmm13
  a1a283:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a1a289:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a1a28f:	62 b1 6c 40 5c f4    	vsubps zmm6,zmm18,zmm20
  a1a295:	62 31 74 40 5c d3    	vsubps zmm10,zmm17,zmm19
  a1a29b:	62 31 54 40 58 ef    	vaddps zmm13,zmm21,zmm23
  a1a2a1:	62 31 7c 40 5c f6    	vsubps zmm14,zmm16,zmm22
  a1a2a7:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a1a2ad:	62 c1 54 48 59 c3    	vmulps zmm16,zmm5,zmm11
  a1a2b3:	62 c1 4c 48 59 cb    	vmulps zmm17,zmm6,zmm11
  a1a2b9:	62 c1 2c 48 59 d3    	vmulps zmm18,zmm10,zmm11
  a1a2bf:	62 c1 14 48 59 db    	vmulps zmm19,zmm13,zmm11
  a1a2c5:	62 c1 0c 48 59 e3    	vmulps zmm20,zmm14,zmm11
  a1a2cb:	62 51 04 48 58 d0    	vaddps zmm10,zmm15,zmm8
  a1a2d1:	62 51 04 48 5c e8    	vsubps zmm13,zmm15,zmm8
  a1a2d7:	62 b1 34 40 5c e8    	vsubps zmm5,zmm25,zmm16
  a1a2dd:	62 91 7c 40 58 f1    	vaddps zmm6,zmm16,zmm25
  a1a2e3:	62 a1 2c 40 58 c1    	vaddps zmm16,zmm26,zmm17
  a1a2e9:	62 31 2c 40 5c f9    	vsubps zmm15,zmm26,zmm17
  a1a2ef:	62 31 24 40 5c da    	vsubps zmm11,zmm27,zmm18
  a1a2f5:	62 31 24 40 58 c2    	vaddps zmm8,zmm27,zmm18
  a1a2fb:	62 a1 3c 40 58 cb    	vaddps zmm17,zmm24,zmm19
  a1a301:	62 a1 3c 40 5c d3    	vsubps zmm18,zmm24,zmm19
  a1a307:	62 31 64 48 5c f4    	vsubps zmm14,zmm3,zmm20
  a1a30d:	62 b1 64 48 58 dc    	vaddps zmm3,zmm3,zmm20
  a1a313:	62 e1 7c 48 28 1d 63 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6acc63]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1a31a:	cc 6a ff 
  a1a31d:	62 32 65 40 7f ca    	vpermt2ps zmm9,zmm19,zmm18
  a1a323:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a1a329:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a1a32f:	62 72 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm0
  a1a335:	62 72 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm0
  a1a33b:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a1a341:	62 e2 65 40 7f c8    	vpermt2ps zmm17,zmm19,zmm0
  a1a347:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a1a34d:	62 72 65 40 7f f8    	vpermt2ps zmm15,zmm19,zmm0
  a1a353:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a1a359:	62 f2 65 40 7f f8    	vpermt2ps zmm7,zmm19,zmm0
  a1a35f:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a1a365:	62 72 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm0
  a1a36b:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a1a371:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a1a377:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a1a37d:	62 f1 7c 48 28 1d 79 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6acb79]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1a384:	cb 6a ff 
  a1a387:	62 32 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm16
  a1a38d:	62 b2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm17
  a1a393:	62 52 65 48 7f e5    	vpermt2ps zmm12,zmm3,zmm13
  a1a399:	62 52 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm15
  a1a39f:	62 51 b5 48 14 ec    	vunpcklpd zmm13,zmm9,zmm12
  a1a3a5:	62 d1 b5 48 15 c4    	vunpckhpd zmm0,zmm9,zmm12
  a1a3ab:	62 51 ed 48 14 ca    	vunpcklpd zmm9,zmm2,zmm10
  a1a3b1:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  a1a3b7:	62 d2 65 48 7f e3    	vpermt2ps zmm4,zmm3,zmm11
  a1a3bd:	62 d2 65 48 7f ce    	vpermt2ps zmm1,zmm3,zmm14
  a1a3c3:	62 f2 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm6
  a1a3c9:	62 f1 7c 48 28 35 2d 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6aca2d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1a3d0:	ca 6a ff 
  a1a3d3:	62 d2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm8
  a1a3d9:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a1a3df:	62 d2 4d 48 7f d9    	vpermt2ps zmm3,zmm6,zmm9
  a1a3e5:	62 71 7c 48 28 05 51 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6aca51]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1a3ec:	ca 6a ff 
  a1a3ef:	62 52 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm9
  a1a3f5:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a1a3fb:	62 72 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm2
  a1a401:	62 f2 3d 48 7f c2    	vpermt2ps zmm0,zmm8,zmm2
  a1a407:	62 f1 dd 48 14 d7    	vunpcklpd zmm2,zmm4,zmm7
  a1a40d:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a1a413:	62 f1 f5 48 14 fd    	vunpcklpd zmm7,zmm1,zmm5
  a1a419:	62 f1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm5
  a1a41f:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a1a425:	62 f2 4d 48 7f ef    	vpermt2ps zmm5,zmm6,zmm7
  a1a42b:	62 f2 3d 48 7f d7    	vpermt2ps zmm2,zmm8,zmm7
  a1a431:	62 f2 5d 48 77 f1    	vpermi2ps zmm6,zmm4,zmm1
  a1a437:	62 f2 3d 48 7f e1    	vpermt2ps zmm4,zmm8,zmm1
  a1a43d:	62 f1 7c 48 10 4a 04 	vmovups zmm1,ZMMWORD PTR [rdx+0x100]
  a1a444:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a1a44b:	62 71 34 48 59 c1    	vmulps zmm8,zmm9,zmm1
  a1a451:	62 72 4d 48 bc c7    	vfnmadd231ps zmm8,zmm6,zmm7
  a1a457:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a1a45d:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a1a464:	62 d2 45 48 b8 c9    	vfmadd231ps zmm1,zmm7,zmm9
  a1a46a:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a1a471:	62 71 14 48 59 ce    	vmulps zmm9,zmm13,zmm6
  a1a477:	62 72 6d 48 bc cf    	vfnmadd231ps zmm9,zmm2,zmm7
  a1a47d:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a1a483:	62 f1 7c 48 10 72 06 	vmovups zmm6,ZMMWORD PTR [rdx+0x180]
  a1a48a:	62 d2 45 48 b8 d5    	vfmadd231ps zmm2,zmm7,zmm13
  a1a490:	62 f1 7c 48 10 7a 07 	vmovups zmm7,ZMMWORD PTR [rdx+0x1c0]
  a1a497:	62 71 7c 48 59 d6    	vmulps zmm10,zmm0,zmm6
  a1a49d:	62 72 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm7
  a1a4a3:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a1a4a9:	62 f2 45 48 b8 e0    	vfmadd231ps zmm4,zmm7,zmm0
  a1a4af:	62 d1 64 48 58 c0    	vaddps zmm0,zmm3,zmm8
  a1a4b5:	62 d1 34 48 58 f2    	vaddps zmm6,zmm9,zmm10
  a1a4bb:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a1a4c1:	62 f1 6c 48 58 fc    	vaddps zmm7,zmm2,zmm4
  a1a4c7:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a1a4cd:	62 f1 74 48 58 e5    	vaddps zmm4,zmm1,zmm5
  a1a4d3:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a1a4d9:	62 f1 64 48 58 ea    	vaddps zmm5,zmm3,zmm2
  a1a4df:	62 51 2c 48 5c c1    	vsubps zmm8,zmm10,zmm9
  a1a4e5:	62 51 74 48 58 c8    	vaddps zmm9,zmm1,zmm8
  a1a4eb:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a1a4f1:	62 f1 7c 48 5c de    	vsubps zmm3,zmm0,zmm6
  a1a4f7:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a1a4fd:	62 71 5c 48 5c c7    	vsubps zmm8,zmm4,zmm7
  a1a503:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a1a509:	62 f1 5c 48 58 e7    	vaddps zmm4,zmm4,zmm7
  a1a50f:	62 f1 7c 48 28 35 67 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff675467]        # 8f980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ce30>
  a1a516:	54 67 ff 
  a1a519:	62 f3 7d 48 19 c7 02 	vextractf32x4 xmm7,zmm0,0x2
  a1a520:	62 f2 4d 48 7f c4    	vpermt2ps zmm0,zmm6,zmm4
  a1a526:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a1a52c:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a1a533:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  a1a537:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a1a53c:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a1a543:	62 d2 4d 48 7f e9    	vpermt2ps zmm5,zmm6,zmm9
  a1a549:	62 f1 7c 48 11 ae 48 	vmovups ZMMWORD PTR [rsi+0x48],zmm5
  a1a550:	00 00 00 
  a1a553:	62 73 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm9,0x2
  a1a55a:	c5 f8 14 c4          	vunpcklps xmm0,xmm0,xmm4
  a1a55e:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a1a565:	00 
  a1a566:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a1a56d:	62 d2 4d 48 7f d8    	vpermt2ps zmm3,zmm6,zmm8
  a1a573:	62 f1 7c 48 11 9e 90 	vmovups ZMMWORD PTR [rsi+0x90],zmm3
  a1a57a:	00 00 00 
  a1a57d:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a1a584:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a1a588:	c5 f8 13 86 d0 00 00 	vmovlps QWORD PTR [rsi+0xd0],xmm0
  a1a58f:	00 
  a1a590:	62 f2 6d 48 77 f1    	vpermi2ps zmm6,zmm2,zmm1
  a1a596:	62 f1 7c 48 11 b6 d8 	vmovups ZMMWORD PTR [rsi+0xd8],zmm6
  a1a59d:	00 00 00 
  a1a5a0:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a1a5a7:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a1a5ae:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a1a5b2:	c5 f8 13 86 18 01 00 	vmovlps QWORD PTR [rsi+0x118],xmm0
  a1a5b9:	00 
  a1a5ba:	c5 f8 77             	vzeroupper
  a1a5bd:	c3                   	ret
