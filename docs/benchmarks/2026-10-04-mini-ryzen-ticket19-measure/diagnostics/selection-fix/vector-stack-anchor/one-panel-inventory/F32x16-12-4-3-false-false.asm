
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4a1c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4a1c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a4a1c5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a4a1c9:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a4a1ce:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a4a1d3:	c5 f8 10 67 48       	vmovups xmm4,XMMWORD PTR [rdi+0x48]
  a4a1d8:	62 f3 75 48 18 c8 01 	vinsertf32x4 zmm1,zmm1,xmm0,0x1
  a4a1df:	62 f1 7c 48 28 2d 17 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff648517]        # 92700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fbb0>
  a4a1e6:	85 64 ff 
  a4a1e9:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a4a1ed:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4a1f3:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a4a1f9:	62 f1 7c 48 28 3d 3d 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff64853d]        # 92740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fbf0>
  a4a200:	85 64 ff 
  a4a203:	62 f2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm0
  a4a209:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a4a20e:	62 d3 6d 48 18 d0 01 	vinsertf32x4 zmm2,zmm2,xmm8,0x1
  a4a215:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a4a21b:	62 72 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm0
  a4a221:	62 f2 45 48 7f d0    	vpermt2ps zmm2,zmm7,zmm0
  a4a227:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a4a22c:	62 d3 65 48 18 d9 01 	vinsertf32x4 zmm3,zmm3,xmm9,0x1
  a4a233:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a4a239:	62 72 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm0
  a4a23f:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a4a245:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  a4a24a:	62 d3 5d 48 18 e2 01 	vinsertf32x4 zmm4,zmm4,xmm10,0x1
  a4a251:	62 f2 5d 48 77 e8    	vpermi2ps zmm5,zmm4,zmm0
  a4a257:	62 f2 45 48 7f e0    	vpermt2ps zmm4,zmm7,zmm0
  a4a25d:	62 d1 4c 48 58 f9    	vaddps zmm7,zmm6,zmm9
  a4a263:	62 71 3c 48 58 d5    	vaddps zmm10,zmm8,zmm5
  a4a269:	62 51 44 48 58 da    	vaddps zmm11,zmm7,zmm10
  a4a26f:	62 71 74 48 58 e3    	vaddps zmm12,zmm1,zmm3
  a4a275:	62 71 6c 48 58 ec    	vaddps zmm13,zmm2,zmm4
  a4a27b:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a4a281:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a4a287:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a4a28d:	62 f1 4c 48 58 e2    	vaddps zmm4,zmm6,zmm2
  a4a293:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a4a299:	62 d1 54 48 5c d8    	vsubps zmm3,zmm5,zmm8
  a4a29f:	62 f1 64 48 58 e9    	vaddps zmm5,zmm3,zmm1
  a4a2a5:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a4a2ab:	62 51 1c 48 5c c5    	vsubps zmm8,zmm12,zmm13
  a4a2b1:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a4a2b7:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a4a2bd:	62 f1 7c 48 28 1d b9 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67ccb9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4a2c4:	cc 67 ff 
  a4a2c7:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a4a2cd:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a4a2d3:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a4a2d9:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a4a2df:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a4a2e3:	62 f2 65 48 7f f6    	vpermt2ps zmm6,zmm3,zmm6
  a4a2e9:	62 71 7c 48 28 0d 0d 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff67cc0d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4a2f0:	cc 67 ff 
  a4a2f3:	62 72 35 48 7f de    	vpermt2ps zmm11,zmm9,zmm6
  a4a2f9:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  a4a2ff:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a4a305:	62 f2 35 48 7f d6    	vpermt2ps zmm2,zmm9,zmm6
  a4a30b:	62 71 a5 48 14 d7    	vunpcklpd zmm10,zmm11,zmm7
  a4a311:	62 f1 a5 48 15 ff    	vunpckhpd zmm7,zmm11,zmm7
  a4a317:	62 71 dd 48 14 da    	vunpcklpd zmm11,zmm4,zmm2
  a4a31d:	62 f1 dd 48 15 d2    	vunpckhpd zmm2,zmm4,zmm2
  a4a323:	62 f1 7c 48 28 25 d3 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff67cad3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4a32a:	ca 67 ff 
  a4a32d:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a4a333:	62 52 5d 48 7f e3    	vpermt2ps zmm12,zmm4,zmm11
  a4a339:	62 71 7c 48 28 2d fd 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67cafd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4a340:	ca 67 ff 
  a4a343:	62 52 15 48 7f d3    	vpermt2ps zmm10,zmm13,zmm11
  a4a349:	62 f2 5d 48 7f fa    	vpermt2ps zmm7,zmm4,zmm2
  a4a34f:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a4a355:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a4a35b:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a4a361:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a4a367:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a4a36d:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a4a373:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  a4a379:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a4a37f:	62 d1 8d 48 14 c0    	vunpcklpd zmm0,zmm14,zmm8
  a4a385:	62 d1 8d 48 15 d0    	vunpckhpd zmm2,zmm14,zmm8
  a4a38b:	62 f1 d5 48 14 d9    	vunpcklpd zmm3,zmm5,zmm1
  a4a391:	62 f1 d5 48 15 c9    	vunpckhpd zmm1,zmm5,zmm1
  a4a397:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a4a39d:	62 f2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm3
  a4a3a3:	62 f2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm3
  a4a3a9:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a4a3af:	62 f1 7c 48 10 4a 02 	vmovups zmm1,ZMMWORD PTR [rdx+0x80]
  a4a3b6:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a4a3bd:	62 f1 7c 48 10 62 04 	vmovups zmm4,ZMMWORD PTR [rdx+0x100]
  a4a3c4:	62 f1 7c 48 10 72 05 	vmovups zmm6,ZMMWORD PTR [rdx+0x140]
  a4a3cb:	62 71 2c 48 59 c1    	vmulps zmm8,zmm10,zmm1
  a4a3d1:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a4a3d7:	62 71 44 48 59 cc    	vmulps zmm9,zmm7,zmm4
  a4a3dd:	62 72 6d 48 bc ce    	vfnmadd231ps zmm9,zmm2,zmm6
  a4a3e3:	62 51 3c 48 58 d9    	vaddps zmm11,zmm8,zmm9
  a4a3e9:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a4a3ef:	62 d2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm10
  a4a3f5:	62 f1 6c 48 59 cc    	vmulps zmm1,zmm2,zmm4
  a4a3fb:	62 f2 4d 48 b8 cf    	vfmadd231ps zmm1,zmm6,zmm7
  a4a401:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a4a407:	62 f2 7d 48 18 1d 4f 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff62b04f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4a40e:	b0 62 ff 
  a4a411:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a4a417:	62 d2 25 48 ac e4    	vfnmadd213ps zmm4,zmm11,zmm12
  a4a41d:	62 f2 6d 48 ac dd    	vfnmadd213ps zmm3,zmm2,zmm5
  a4a423:	c5 d4 58 d2          	vaddps ymm2,ymm5,ymm2
  a4a427:	c4 c1 18 58 eb       	vaddps xmm5,xmm12,xmm11
  a4a42c:	c5 fc 28 35 ac cd 62 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff62cdac]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a4a433:	ff 
  a4a434:	62 f2 4d 28 7f ea    	vpermt2ps ymm5,ymm6,ymm2
  a4a43a:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  a4a43e:	c4 e2 7d 18 15 8d ae 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff62ae8d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4a445:	62 ff 
  a4a447:	c4 c1 3c 5c e9       	vsubps ymm5,ymm8,ymm9
  a4a44c:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  a4a450:	c5 e4 5c fd          	vsubps ymm7,ymm3,ymm5
  a4a454:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  a4a458:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  a4a45c:	c5 d8 58 c8          	vaddps xmm1,xmm4,xmm0
  a4a460:	62 f2 4d 28 7f cf    	vpermt2ps ymm1,ymm6,ymm7
  a4a466:	c5 fc 11 4e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm1
  a4a46b:	c5 e4 58 cd          	vaddps ymm1,ymm3,ymm5
  a4a46f:	c5 d8 5c c0          	vsubps xmm0,xmm4,xmm0
  a4a473:	62 f2 4d 28 7f c1    	vpermt2ps ymm0,ymm6,ymm1
  a4a479:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  a4a47e:	c5 f8 77             	vzeroupper
  a4a481:	c3                   	ret
