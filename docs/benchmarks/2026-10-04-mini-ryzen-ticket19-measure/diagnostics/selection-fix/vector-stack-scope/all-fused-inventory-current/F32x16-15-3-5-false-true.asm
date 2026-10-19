
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a61240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a61240:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff665d36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a61247:	5d 66 ff 
  a6124a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a6124e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a61252:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a61258:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff665c9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6125f:	5c 66 ff 
  a61262:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff665cd4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a61269:	5c 66 ff 
  a6126c:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a61272:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a61278:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a6127e:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a61284:	62 f1 7c 48 28 3d 72 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff665b72]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6128b:	5b 66 ff 
  a6128e:	62 71 7c 48 28 05 a8 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff665ba8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a61295:	5b 66 ff 
  a61298:	48 6b c2 78          	imul   rax,rdx,0x78
  a6129c:	31 d2                	xor    edx,edx
  a6129e:	62 71 7c 48 28 0d d8 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6327d8]        # 93a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20f30>
  a612a5:	27 63 ff 
  a612a8:	62 72 7d 48 18 15 ae 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6141ae]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a612af:	41 61 ff 
  a612b2:	62 72 7d 48 18 1d 18 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff614018]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a612b9:	40 61 ff 
  a612bc:	62 72 7d 48 18 25 22 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff614422]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a612c3:	44 61 ff 
  a612c6:	62 72 7d 48 18 2d 74 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff614374]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a612cd:	43 61 ff 
  a612d0:	62 72 7d 48 18 35 7e 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff61447e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a612d7:	44 61 ff 
  a612da:	62 71 7c 48 28 3d dc 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6327dc]        # 93ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20f70>
  a612e1:	27 63 ff 
  a612e4:	62 e2 7d 48 18 05 b2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6140b2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a612eb:	40 61 ff 
  a612ee:	62 e1 7c 28 28 0d c8 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff616fc8]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a612f5:	6f 61 ff 
  a612f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a612ff:	00 
  a61300:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x20]
  a61307:	04 
  a61308:	62 e1 7c 28 10 1c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1]
  a6130f:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x28]
  a61316:	28 00 00 00 
  a6131a:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x50]
  a61321:	50 00 00 00 
  a61325:	62 a3 e5 40 1a d2 01 	vinsertf64x4 zmm18,zmm19,ymm18,0x1
  a6132c:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a61332:	62 e2 35 48 7f f1    	vpermt2ps zmm22,zmm9,zmm1
  a61338:	62 e2 05 48 7f d1    	vpermt2ps zmm18,zmm15,zmm1
  a6133e:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x48]
  a61345:	09 
  a61346:	62 a3 dd 40 1a e3 01 	vinsertf64x4 zmm20,zmm20,ymm19,0x1
  a6134d:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a61353:	62 e2 35 48 7f f9    	vpermt2ps zmm23,zmm9,zmm1
  a61359:	62 e2 05 48 7f e1    	vpermt2ps zmm20,zmm15,zmm1
  a6135f:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a61366:	0e 
  a61367:	62 a3 d5 40 1a eb 01 	vinsertf64x4 zmm21,zmm21,ymm19,0x1
  a6136e:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a61374:	62 62 35 48 7f c1    	vpermt2ps zmm24,zmm9,zmm1
  a6137a:	62 e2 05 48 7f e9    	vpermt2ps zmm21,zmm15,zmm1
  a61380:	62 01 44 40 58 c8    	vaddps zmm25,zmm23,zmm24
  a61386:	62 01 4c 40 58 d1    	vaddps zmm26,zmm22,zmm25
  a6138c:	62 21 5c 40 58 dd    	vaddps zmm27,zmm20,zmm21
  a61392:	62 81 6c 40 58 db    	vaddps zmm19,zmm18,zmm27
  a61398:	62 82 2d 48 bc f1    	vfnmadd231ps zmm22,zmm10,zmm25
  a6139e:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a613a4:	62 c1 5c 40 59 e3    	vmulps zmm20,zmm20,zmm11
  a613aa:	62 21 4c 40 58 cc    	vaddps zmm25,zmm22,zmm20
  a613b0:	62 82 2d 48 bc d3    	vfnmadd231ps zmm18,zmm10,zmm27
  a613b6:	62 81 44 40 5c e8    	vsubps zmm21,zmm23,zmm24
  a613bc:	62 c1 54 40 59 eb    	vmulps zmm21,zmm21,zmm11
  a613c2:	62 21 6c 40 5c c5    	vsubps zmm24,zmm18,zmm21
  a613c8:	62 a1 4c 40 5c e4    	vsubps zmm20,zmm22,zmm20
  a613ce:	62 21 54 40 58 da    	vaddps zmm27,zmm21,zmm18
  a613d4:	62 62 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm1
  a613da:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a613e0:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a613e6:	62 81 7c 48 28 d2    	vmovaps zmm18,zmm26
  a613ec:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a613f2:	62 62 5d 48 7f d2    	vpermt2ps zmm26,zmm4,zmm2
  a613f8:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a613fe:	62 e2 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm2
  a61404:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a6140a:	62 21 7c 48 28 e4    	vmovaps zmm28,zmm20
  a61410:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a61416:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a6141c:	62 a1 ad 40 14 ec    	vunpcklpd zmm21,zmm26,zmm20
  a61422:	62 81 ed 40 14 fc    	vunpcklpd zmm23,zmm18,zmm28
  a61428:	62 81 ed 40 15 e4    	vunpckhpd zmm20,zmm18,zmm28
  a6142e:	62 61 cd 40 14 d5    	vunpcklpd zmm26,zmm22,zmm5
  a61434:	62 61 cd 40 15 e5    	vunpckhpd zmm28,zmm22,zmm5
  a6143a:	62 61 b5 40 14 ce    	vunpcklpd zmm25,zmm25,zmm6
  a61440:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a61446:	62 82 45 48 7f d2    	vpermt2ps zmm18,zmm7,zmm26
  a6144c:	62 82 3d 48 7f fa    	vpermt2ps zmm23,zmm8,zmm26
  a61452:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a61458:	62 82 45 48 7f f4    	vpermt2ps zmm22,zmm7,zmm28
  a6145e:	62 82 3d 48 7f e4    	vpermt2ps zmm20,zmm8,zmm28
  a61464:	62 82 45 48 7f e9    	vpermt2ps zmm21,zmm7,zmm25
  a6146a:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a61470:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a61476:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a6147c:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a61482:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a61488:	62 e2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm2
  a6148e:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a61494:	62 62 65 48 7f d2    	vpermt2ps zmm26,zmm3,zmm2
  a6149a:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a614a0:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a614a6:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a614ac:	62 62 5d 48 7f da    	vpermt2ps zmm27,zmm4,zmm2
  a614b2:	62 01 e5 40 14 db    	vunpcklpd zmm27,zmm19,zmm27
  a614b8:	62 01 b5 40 14 ec    	vunpcklpd zmm29,zmm25,zmm28
  a614be:	62 01 b5 40 15 cc    	vunpckhpd zmm25,zmm25,zmm28
  a614c4:	62 61 ad 40 14 e5    	vunpcklpd zmm28,zmm26,zmm5
  a614ca:	62 61 ad 40 15 d5    	vunpckhpd zmm26,zmm26,zmm5
  a614d0:	62 61 bd 40 14 c6    	vunpcklpd zmm24,zmm24,zmm6
  a614d6:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a614dc:	62 82 45 48 7f dc    	vpermt2ps zmm19,zmm7,zmm28
  a614e2:	62 02 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm28
  a614e8:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a614ee:	62 02 45 48 7f e2    	vpermt2ps zmm28,zmm7,zmm26
  a614f4:	62 02 3d 48 7f ca    	vpermt2ps zmm25,zmm8,zmm26
  a614fa:	62 02 45 48 7f d8    	vpermt2ps zmm27,zmm7,zmm24
  a61500:	62 61 7c 48 10 41 02 	vmovups zmm24,ZMMWORD PTR [rcx+0x80]
  a61507:	62 61 7c 48 10 51 03 	vmovups zmm26,ZMMWORD PTR [rcx+0xc0]
  a6150e:	62 01 44 40 59 f0    	vmulps zmm30,zmm23,zmm24
  a61514:	62 02 15 40 bc f2    	vfnmadd231ps zmm30,zmm29,zmm26
  a6151a:	62 01 14 40 59 c0    	vmulps zmm24,zmm29,zmm24
  a61520:	62 61 7c 48 10 69 08 	vmovups zmm29,ZMMWORD PTR [rcx+0x200]
  a61527:	62 22 2d 40 b8 c7    	vfmadd231ps zmm24,zmm26,zmm23
  a6152d:	62 e1 7c 48 10 79 09 	vmovups zmm23,ZMMWORD PTR [rcx+0x240]
  a61534:	62 01 54 40 59 d5    	vmulps zmm26,zmm21,zmm29
  a6153a:	62 22 25 40 bc d7    	vfnmadd231ps zmm26,zmm27,zmm23
  a61540:	62 01 24 40 59 dd    	vmulps zmm27,zmm27,zmm29
  a61546:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a6154d:	62 22 45 40 b8 dd    	vfmadd231ps zmm27,zmm23,zmm21
  a61553:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a6155a:	62 81 4c 40 59 fd    	vmulps zmm23,zmm22,zmm29
  a61560:	62 a2 1d 40 bc fd    	vfnmadd231ps zmm23,zmm28,zmm21
  a61566:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a6156c:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a61573:	62 22 55 40 b8 e6    	vfmadd231ps zmm28,zmm21,zmm22
  a61579:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a61580:	62 81 5c 40 59 f5    	vmulps zmm22,zmm20,zmm29
  a61586:	62 a2 35 40 bc f5    	vfnmadd231ps zmm22,zmm25,zmm21
  a6158c:	62 01 34 40 59 cd    	vmulps zmm25,zmm25,zmm29
  a61592:	62 22 55 40 b8 cc    	vfmadd231ps zmm25,zmm21,zmm20
  a61598:	62 01 0c 40 58 ea    	vaddps zmm29,zmm30,zmm26
  a6159e:	62 01 3c 40 58 fb    	vaddps zmm31,zmm24,zmm27
  a615a4:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a615aa:	62 01 1c 40 58 d9    	vaddps zmm27,zmm28,zmm25
  a615b0:	62 01 1c 40 5c c9    	vsubps zmm25,zmm28,zmm25
  a615b6:	62 21 44 40 58 e6    	vaddps zmm28,zmm23,zmm22
  a615bc:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a615c2:	62 c1 34 40 59 e6    	vmulps zmm20,zmm25,zmm14
  a615c8:	62 a2 3d 40 b8 e0    	vfmadd231ps zmm20,zmm24,zmm16
  a615ce:	62 21 44 40 5c f6    	vsubps zmm30,zmm23,zmm22
  a615d4:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a615da:	62 a2 05 40 a8 eb    	vfmadd213ps zmm21,zmm31,zmm19
  a615e0:	62 c1 3c 40 59 fe    	vmulps zmm23,zmm24,zmm14
  a615e6:	62 82 7d 40 bc f9    	vfnmadd231ps zmm23,zmm16,zmm25
  a615ec:	62 c1 0c 40 59 f6    	vmulps zmm22,zmm30,zmm14
  a615f2:	62 a2 2d 40 b8 f0    	vfmadd231ps zmm22,zmm26,zmm16
  a615f8:	62 41 2c 40 59 c6    	vmulps zmm24,zmm26,zmm14
  a615fe:	62 02 7d 40 bc c6    	vfnmadd231ps zmm24,zmm16,zmm30
  a61604:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a6160a:	62 22 05 40 ac cb    	vfnmadd213ps zmm25,zmm31,zmm19
  a61610:	62 a1 04 20 58 db    	vaddps ymm19,ymm31,ymm19
  a61616:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a6161c:	62 22 15 40 a8 d2    	vfmadd213ps zmm26,zmm29,zmm18
  a61622:	62 c2 25 40 bc ed    	vfnmadd231ps zmm21,zmm27,zmm13
  a61628:	62 42 25 40 b8 cc    	vfmadd231ps zmm25,zmm27,zmm12
  a6162e:	62 81 64 20 58 db    	vaddps ymm19,ymm19,ymm27
  a61634:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  a6163a:	62 22 15 40 ac da    	vfnmadd213ps zmm27,zmm29,zmm18
  a61640:	62 81 6c 00 58 d5    	vaddps xmm18,xmm18,xmm29
  a61646:	62 42 1d 40 bc d5    	vfnmadd231ps zmm26,zmm28,zmm13
  a6164c:	62 42 1d 40 b8 dc    	vfmadd231ps zmm27,zmm28,zmm12
  a61652:	62 81 6c 00 58 d4    	vaddps xmm18,xmm18,xmm28
  a61658:	62 a2 75 20 7f d3    	vpermt2ps ymm18,ymm17,ymm19
  a6165e:	62 e1 7c 08 11 14 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm18
  a61665:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  a6166c:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm18
  a61673:	02 
  a61674:	62 a1 54 20 5c d6    	vsubps ymm18,ymm21,ymm22
  a6167a:	62 a1 2c 00 58 dc    	vaddps xmm19,xmm26,xmm20
  a61680:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a61686:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm19
  a6168d:	18 00 00 00 
  a61691:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a61698:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm18
  a6169f:	05 
  a616a0:	62 81 34 20 5c d0    	vsubps ymm18,ymm25,ymm24
  a616a6:	62 a1 24 00 58 df    	vaddps xmm19,xmm27,xmm23
  a616ac:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a616b2:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm19
  a616b9:	03 
  a616ba:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a616c1:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm18
  a616c8:	08 
  a616c9:	62 81 34 20 58 d0    	vaddps ymm18,ymm25,ymm24
  a616cf:	62 a1 24 00 5c df    	vsubps xmm19,xmm27,xmm23
  a616d5:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a616db:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm19
  a616e2:	48 00 00 00 
  a616e6:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a616ed:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm18
  a616f4:	0b 
  a616f5:	62 a1 54 20 58 d6    	vaddps ymm18,ymm21,ymm22
  a616fb:	62 a1 2c 00 5c dc    	vsubps xmm19,xmm26,xmm20
  a61701:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a61707:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm19
  a6170e:	06 
  a6170f:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a61716:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm18
  a6171d:	0e 
  a6171e:	48 83 c2 78          	add    rdx,0x78
  a61722:	48 39 d0             	cmp    rax,rdx
  a61725:	0f 85 d5 fb ff ff    	jne    a61300 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xc0>
  a6172b:	c5 f8 77             	vzeroupper
  a6172e:	c3                   	ret
