
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6e240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6e240:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a6e244:	c5 fc 10 5f 20       	vmovups ymm3,YMMWORD PTR [rdi+0x20]
  a6e249:	c5 fc 10 67 40       	vmovups ymm4,YMMWORD PTR [rdi+0x40]
  a6e24e:	62 f1 7c 48 28 2d a8 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6263a8]        # 94600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21ab0>
  a6e255:	63 62 ff 
  a6e258:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a6e25c:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a6e262:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a6e268:	62 f1 7c 48 28 05 ce 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6263ce]        # 94640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21af0>
  a6e26f:	63 62 ff 
  a6e272:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a6e278:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a6e27e:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a6e284:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a6e28a:	62 f2 5d 48 77 e9    	vpermi2ps zmm5,zmm4,zmm1
  a6e290:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a6e296:	62 71 64 48 58 c4    	vaddps zmm8,zmm3,zmm4
  a6e29c:	62 51 6c 48 58 c8    	vaddps zmm9,zmm2,zmm8
  a6e2a2:	62 71 44 48 58 d5    	vaddps zmm10,zmm7,zmm5
  a6e2a8:	62 d1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm10
  a6e2ae:	62 72 7d 48 18 1d a8 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6071a8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6e2b5:	71 60 ff 
  a6e2b8:	62 d2 25 48 bc d0    	vfnmadd231ps zmm2,zmm11,zmm8
  a6e2be:	62 f1 44 48 5c ed    	vsubps zmm5,zmm7,zmm5
  a6e2c4:	62 f2 7d 48 18 3d 06 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff607006]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6e2cb:	70 60 ff 
  a6e2ce:	62 f1 54 48 59 ef    	vmulps zmm5,zmm5,zmm7
  a6e2d4:	62 71 6c 48 58 c5    	vaddps zmm8,zmm2,zmm5
  a6e2da:	62 d2 2d 48 bc f3    	vfnmadd231ps zmm6,zmm10,zmm11
  a6e2e0:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a6e2e6:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a6e2ec:	62 f1 4c 48 5c e3    	vsubps zmm4,zmm6,zmm3
  a6e2f2:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a6e2f8:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a6e2fe:	62 f1 7c 48 28 2d 78 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff658c78]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6e305:	8c 65 ff 
  a6e308:	62 72 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm1
  a6e30e:	62 72 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm1
  a6e314:	62 f2 55 48 7f d1    	vpermt2ps zmm2,zmm5,zmm1
  a6e31a:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a6e31e:	62 f2 55 48 7f f6    	vpermt2ps zmm6,zmm5,zmm6
  a6e324:	62 f1 7c 48 28 3d d2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff658bd2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6e32b:	8b 65 ff 
  a6e32e:	62 72 45 48 7f ce    	vpermt2ps zmm9,zmm7,zmm6
  a6e334:	62 72 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm6
  a6e33a:	62 f2 45 48 7f d6    	vpermt2ps zmm2,zmm7,zmm6
  a6e340:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a6e346:	62 f2 55 48 7f e1    	vpermt2ps zmm4,zmm5,zmm1
  a6e34c:	62 f2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm1
  a6e352:	62 f2 45 48 7f c6    	vpermt2ps zmm0,zmm7,zmm6
  a6e358:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a6e35e:	62 f2 45 48 7f de    	vpermt2ps zmm3,zmm7,zmm6
  a6e364:	62 f2 45 48 7f f6    	vpermt2ps zmm6,zmm7,zmm6
  a6e36a:	62 f1 b5 48 14 ea    	vunpcklpd zmm5,zmm9,zmm2
  a6e370:	62 f1 b5 48 15 d2    	vunpckhpd zmm2,zmm9,zmm2
  a6e376:	62 f1 bd 48 14 fe    	vunpcklpd zmm7,zmm8,zmm6
  a6e37c:	62 71 bd 48 15 c6    	vunpckhpd zmm8,zmm8,zmm6
  a6e382:	62 71 7c 48 28 0d 74 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff658a74]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6e389:	8a 65 ff 
  a6e38c:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a6e392:	62 f2 35 48 7f cf    	vpermt2ps zmm1,zmm9,zmm7
  a6e398:	62 71 7c 48 28 15 9e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff658a9e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6e39f:	8a 65 ff 
  a6e3a2:	62 f2 2d 48 7f ef    	vpermt2ps zmm5,zmm10,zmm7
  a6e3a8:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a6e3ae:	62 d2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm8
  a6e3b4:	62 d2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm8
  a6e3ba:	62 71 fd 48 14 c3    	vunpcklpd zmm8,zmm0,zmm3
  a6e3c0:	62 f1 fd 48 15 c3    	vunpckhpd zmm0,zmm0,zmm3
  a6e3c6:	62 f1 dd 48 14 de    	vunpcklpd zmm3,zmm4,zmm6
  a6e3cc:	62 f1 dd 48 15 e6    	vunpckhpd zmm4,zmm4,zmm6
  a6e3d2:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a6e3d8:	62 f2 35 48 7f f3    	vpermt2ps zmm6,zmm9,zmm3
  a6e3de:	62 72 2d 48 7f c3    	vpermt2ps zmm8,zmm10,zmm3
  a6e3e4:	62 72 7d 48 77 cc    	vpermi2ps zmm9,zmm0,zmm4
  a6e3ea:	62 f2 2d 48 7f c4    	vpermt2ps zmm0,zmm10,zmm4
  a6e3f0:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a6e3f7:	62 f1 7c 48 10 62 03 	vmovups zmm4,ZMMWORD PTR [rdx+0xc0]
  a6e3fe:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a6e405:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a6e40c:	62 71 7c 48 10 62 06 	vmovups zmm12,ZMMWORD PTR [rdx+0x180]
  a6e413:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a6e41a:	62 51 44 48 59 f2    	vmulps zmm14,zmm7,zmm10
  a6e420:	62 52 35 48 bc f3    	vfnmadd231ps zmm14,zmm9,zmm11
  a6e426:	62 71 54 48 59 fb    	vmulps zmm15,zmm5,zmm3
  a6e42c:	62 72 3d 48 bc fc    	vfnmadd231ps zmm15,zmm8,zmm4
  a6e432:	62 c1 6c 48 59 c4    	vmulps zmm16,zmm2,zmm12
  a6e438:	62 c2 7d 48 bc c5    	vfnmadd231ps zmm16,zmm0,zmm13
  a6e43e:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a6e444:	62 72 25 48 b8 cf    	vfmadd231ps zmm9,zmm11,zmm7
  a6e44a:	62 f1 3c 48 59 db    	vmulps zmm3,zmm8,zmm3
  a6e450:	62 f2 5d 48 b8 dd    	vfmadd231ps zmm3,zmm4,zmm5
  a6e456:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a6e45c:	62 f2 15 48 b8 c2    	vfmadd231ps zmm0,zmm13,zmm2
  a6e462:	62 b1 04 28 58 d0    	vaddps ymm2,ymm15,ymm16
  a6e468:	c5 8c 58 e1          	vaddps ymm4,ymm14,ymm1
  a6e46c:	c5 dc 58 ea          	vaddps ymm5,ymm4,ymm2
  a6e470:	c5 e0 58 f8          	vaddps xmm7,xmm3,xmm0
  a6e474:	c5 30 58 c6          	vaddps xmm8,xmm9,xmm6
  a6e478:	c5 38 58 d7          	vaddps xmm10,xmm8,xmm7
  a6e47c:	c5 7c 28 1d 3c 9e 60 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff609e3c]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a6e483:	ff 
  a6e484:	62 72 25 28 7f d5    	vpermt2ps ymm10,ymm11,ymm5
  a6e48a:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  a6e490:	c5 f8 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm5
  a6e495:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  a6e499:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  a6e49d:	c4 c1 74 5c ce       	vsubps ymm1,ymm1,ymm14
  a6e4a2:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  a6e4a6:	62 d1 7c 00 5c ef    	vsubps xmm5,xmm16,xmm15
  a6e4ac:	c4 c1 48 5c f1       	vsubps xmm6,xmm6,xmm9
  a6e4b1:	c5 48 58 cd          	vaddps xmm9,xmm6,xmm5
  a6e4b5:	62 72 25 28 7f cb    	vpermt2ps ymm9,ymm11,ymm3
  a6e4bb:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  a6e4c1:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  a6e4c6:	c5 78 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm9
  a6e4cb:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  a6e4cf:	c5 b8 5c df          	vsubps xmm3,xmm8,xmm7
  a6e4d3:	62 f2 25 28 7f da    	vpermt2ps ymm3,ymm11,ymm2
  a6e4d9:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  a6e4df:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  a6e4e4:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  a6e4e9:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  a6e4ed:	c5 c8 5c cd          	vsubps xmm1,xmm6,xmm5
  a6e4f1:	62 f2 25 28 7f c8    	vpermt2ps ymm1,ymm11,ymm0
  a6e4f7:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a6e4fd:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a6e502:	c5 f8 11 4e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm1
  a6e507:	c5 f8 77             	vzeroupper
  a6e50a:	c3                   	ret
