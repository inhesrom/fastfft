
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a462c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a462c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a462c5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a462c9:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  a462ce:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  a462d3:	62 f3 75 48 18 e8 01 	vinsertf32x4 zmm5,zmm1,xmm0,0x1
  a462da:	62 f1 7c 48 28 35 1c 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff64c01c]        # 92300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f7b0>
  a462e1:	c0 64 ff 
  a462e4:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a462e8:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a462ee:	62 f2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm2
  a462f4:	62 f1 7c 48 28 05 42 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64c042]        # 92340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f7f0>
  a462fb:	c0 64 ff 
  a462fe:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a46304:	c5 fb 10 4f 28       	vmovsd xmm1,QWORD PTR [rdi+0x28]
  a46309:	62 f3 65 48 18 c9 01 	vinsertf32x4 zmm1,zmm3,xmm1,0x1
  a46310:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a46316:	62 72 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm2
  a4631c:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a46322:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  a46327:	62 f3 5d 48 18 e3 01 	vinsertf32x4 zmm4,zmm4,xmm3,0x1
  a4632e:	62 f2 5d 48 77 f2    	vpermi2ps zmm6,zmm4,zmm2
  a46334:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a4633a:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a46340:	62 51 44 48 58 d1    	vaddps zmm10,zmm7,zmm9
  a46346:	62 71 74 48 58 dc    	vaddps zmm11,zmm1,zmm4
  a4634c:	62 d1 54 48 58 db    	vaddps zmm3,zmm5,zmm11
  a46352:	62 f2 7d 48 18 05 04 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62f104]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a46359:	f1 62 ff 
  a4635c:	62 d2 7d 48 bc f9    	vfnmadd231ps zmm7,zmm0,zmm9
  a46362:	62 f1 74 48 5c e4    	vsubps zmm4,zmm1,zmm4
  a46368:	62 f2 7d 48 18 0d 62 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62ef62]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4636f:	ef 62 ff 
  a46372:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a46378:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a4637e:	62 d2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm11
  a46384:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a4638a:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a46390:	62 71 54 48 5c c6    	vsubps zmm8,zmm5,zmm6
  a46396:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a4639c:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a463a2:	62 f1 7c 48 28 35 d4 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff680bd4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a463a9:	0b 68 ff 
  a463ac:	62 72 4d 48 7f d2    	vpermt2ps zmm10,zmm6,zmm2
  a463b2:	62 72 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm2
  a463b8:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a463be:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  a463c2:	62 f2 4d 48 7f ff    	vpermt2ps zmm7,zmm6,zmm7
  a463c8:	62 71 7c 48 28 1d 2e 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff680b2e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a463cf:	0b 68 ff 
  a463d2:	62 72 25 48 7f d7    	vpermt2ps zmm10,zmm11,zmm7
  a463d8:	62 72 25 48 7f cf    	vpermt2ps zmm9,zmm11,zmm7
  a463de:	62 f2 25 48 7f e7    	vpermt2ps zmm4,zmm11,zmm7
  a463e4:	62 f2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm2
  a463ea:	62 72 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm2
  a463f0:	62 f2 4d 48 7f ea    	vpermt2ps zmm5,zmm6,zmm2
  a463f6:	62 f2 25 48 7f df    	vpermt2ps zmm3,zmm11,zmm7
  a463fc:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a46402:	62 f2 25 48 7f ef    	vpermt2ps zmm5,zmm11,zmm7
  a46408:	62 f2 25 48 7f ff    	vpermt2ps zmm7,zmm11,zmm7
  a4640e:	62 f1 ad 48 14 d4    	vunpcklpd zmm2,zmm10,zmm4
  a46414:	62 f1 ad 48 15 e4    	vunpckhpd zmm4,zmm10,zmm4
  a4641a:	62 f1 b5 48 14 f7    	vunpcklpd zmm6,zmm9,zmm7
  a46420:	62 71 b5 48 15 cf    	vunpckhpd zmm9,zmm9,zmm7
  a46426:	62 71 7c 48 28 15 d0 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6809d0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4642d:	09 68 ff 
  a46430:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a46436:	62 72 2d 48 7f de    	vpermt2ps zmm11,zmm10,zmm6
  a4643c:	62 71 7c 48 28 25 fa 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6809fa]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a46443:	09 68 ff 
  a46446:	62 f2 1d 48 7f d6    	vpermt2ps zmm2,zmm12,zmm6
  a4644c:	62 d2 2d 48 7f e1    	vpermt2ps zmm4,zmm10,zmm9
  a46452:	62 f1 e5 48 14 f5    	vunpcklpd zmm6,zmm3,zmm5
  a46458:	62 f1 e5 48 15 dd    	vunpckhpd zmm3,zmm3,zmm5
  a4645e:	62 f1 bd 48 14 ef    	vunpcklpd zmm5,zmm8,zmm7
  a46464:	62 f1 bd 48 15 ff    	vunpckhpd zmm7,zmm8,zmm7
  a4646a:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a46470:	62 72 2d 48 7f c5    	vpermt2ps zmm8,zmm10,zmm5
  a46476:	62 f2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm5
  a4647c:	62 f2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm7
  a46482:	62 f1 7c 48 10 6a 02 	vmovups zmm5,ZMMWORD PTR [rdx+0x80]
  a46489:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a46490:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a46497:	62 71 7c 48 10 52 05 	vmovups zmm10,ZMMWORD PTR [rdx+0x140]
  a4649e:	62 71 6c 48 59 e5    	vmulps zmm12,zmm2,zmm5
  a464a4:	62 72 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm7
  a464aa:	62 51 5c 48 59 e9    	vmulps zmm13,zmm4,zmm9
  a464b0:	62 52 65 48 bc ea    	vfnmadd231ps zmm13,zmm3,zmm10
  a464b6:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a464bc:	62 f1 4c 48 59 ed    	vmulps zmm5,zmm6,zmm5
  a464c2:	62 f2 45 48 b8 ea    	vfmadd231ps zmm5,zmm7,zmm2
  a464c8:	62 d1 64 48 59 d1    	vmulps zmm2,zmm3,zmm9
  a464ce:	62 f2 2d 48 b8 d4    	vfmadd231ps zmm2,zmm10,zmm4
  a464d4:	62 f1 54 48 58 da    	vaddps zmm3,zmm5,zmm2
  a464da:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a464e0:	62 d2 0d 48 ac e3    	vfnmadd213ps zmm4,zmm14,zmm11
  a464e6:	62 d2 65 48 ac c0    	vfnmadd213ps zmm0,zmm3,zmm8
  a464ec:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  a464f0:	c4 c1 20 58 f6       	vaddps xmm6,xmm11,xmm14
  a464f5:	c5 fc 28 3d c3 1d 63 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff631dc3]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a464fc:	ff 
  a464fd:	62 f2 45 28 7f f3    	vpermt2ps ymm6,ymm7,ymm3
  a46503:	c5 f8 11 36          	vmovups XMMWORD PTR [rsi],xmm6
  a46507:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  a4650d:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  a46512:	c4 c1 1c 5c dd       	vsubps ymm3,ymm12,ymm13
  a46517:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  a4651b:	c5 fc 5c f3          	vsubps ymm6,ymm0,ymm3
  a4651f:	c5 d0 5c d2          	vsubps xmm2,xmm5,xmm2
  a46523:	c5 e8 59 c9          	vmulps xmm1,xmm2,xmm1
  a46527:	c5 d8 58 d1          	vaddps xmm2,xmm4,xmm1
  a4652b:	62 f2 45 28 7f d6    	vpermt2ps ymm2,ymm7,ymm6
  a46531:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a46536:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  a4653c:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  a46541:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  a46545:	c5 d8 5c c9          	vsubps xmm1,xmm4,xmm1
  a46549:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  a4654f:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  a46554:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a4655a:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a4655f:	c5 f8 77             	vzeroupper
  a46562:	c3                   	ret
