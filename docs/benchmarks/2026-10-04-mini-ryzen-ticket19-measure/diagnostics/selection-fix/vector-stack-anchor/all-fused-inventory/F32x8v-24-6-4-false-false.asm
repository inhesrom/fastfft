
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b122c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b122c0:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  b122c5:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  b122ca:	c5 f0 c6 d0 88       	vshufps xmm2,xmm1,xmm0,0x88
  b122cf:	c5 f8 10 9f 90 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0x90]
  b122d6:	00 
  b122d7:	c5 f8 10 a7 80 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x80]
  b122de:	00 
  b122df:	c5 d8 c6 eb 88       	vshufps xmm5,xmm4,xmm3,0x88
  b122e4:	c5 ec 5c f5          	vsubps ymm6,ymm2,ymm5
  b122e8:	c4 e2 7d 18 3d e3 2f 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff562fe3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b122ef:	56 ff 
  b122f1:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  b122f5:	c5 f0 c6 c8 dd       	vshufps xmm1,xmm1,xmm0,0xdd
  b122fa:	c5 d8 c6 db dd       	vshufps xmm3,xmm4,xmm3,0xdd
  b122ff:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b12303:	c5 78 10 07          	vmovups xmm8,XMMWORD PTR [rdi]
  b12307:	c5 78 10 4f 10       	vmovups xmm9,XMMWORD PTR [rdi+0x10]
  b1230c:	c5 78 10 57 20       	vmovups xmm10,XMMWORD PTR [rdi+0x20]
  b12311:	c5 78 10 5f 30       	vmovups xmm11,XMMWORD PTR [rdi+0x30]
  b12316:	c4 41 38 c6 e1 dd    	vshufps xmm12,xmm8,xmm9,0xdd
  b1231c:	c4 62 7d 18 2d 3b 31 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff56313b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b12323:	56 ff 
  b12325:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  b1232a:	c4 42 5d ac f4       	vfnmadd213ps ymm14,ymm4,ymm12
  b1232f:	c5 8c 58 c6          	vaddps ymm0,ymm14,ymm6
  b12333:	c5 78 10 bf b0 00 00 	vmovups xmm15,XMMWORD PTR [rdi+0xb0]
  b1233a:	00 
  b1233b:	62 e1 7c 08 10 47 0a 	vmovups xmm16,XMMWORD PTR [rdi+0xa0]
  b12342:	62 c1 7c 00 c6 cf 88 	vshufps xmm17,xmm16,xmm15,0x88
  b12349:	62 c1 2c 08 c6 d3 88 	vshufps xmm18,xmm10,xmm11,0x88
  b12350:	62 a1 74 20 5c da    	vsubps ymm19,ymm17,ymm18
  b12356:	62 e1 64 20 59 df    	vmulps ymm19,ymm19,ymm7
  b1235c:	62 51 7c 00 c6 ff dd 	vshufps xmm15,xmm16,xmm15,0xdd
  b12363:	c4 41 28 c6 d3 dd    	vshufps xmm10,xmm10,xmm11,0xdd
  b12369:	c4 41 04 58 da       	vaddps ymm11,ymm15,ymm10
  b1236e:	62 e1 7c 08 10 47 07 	vmovups xmm16,XMMWORD PTR [rdi+0x70]
  b12375:	62 e1 7c 08 10 67 06 	vmovups xmm20,XMMWORD PTR [rdi+0x60]
  b1237c:	62 a1 5c 00 c6 e8 dd 	vshufps xmm21,xmm20,xmm16,0xdd
  b12383:	62 c1 7c 28 28 f5    	vmovaps ymm22,ymm13
  b12389:	62 a2 25 28 ac f5    	vfnmadd213ps ymm22,ymm11,ymm21
  b1238f:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b12395:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  b12399:	c4 c1 38 c6 e9 88    	vshufps xmm5,xmm8,xmm9,0x88
  b1239f:	c4 41 7c 28 c5       	vmovaps ymm8,ymm13
  b123a4:	c4 62 6d ac c5       	vfnmadd213ps ymm8,ymm2,ymm5
  b123a9:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b123ad:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b123b1:	c5 bc 5c d9          	vsubps ymm3,ymm8,ymm1
  b123b5:	62 31 74 20 58 ca    	vaddps ymm9,ymm17,ymm18
  b123bb:	62 a1 5c 00 c6 c0 88 	vshufps xmm16,xmm20,xmm16,0x88
  b123c2:	62 32 35 28 ac e8    	vfnmadd213ps ymm13,ymm9,ymm16
  b123c8:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  b123cd:	c5 ac 59 ff          	vmulps ymm7,ymm10,ymm7
  b123d1:	c5 14 5c d7          	vsubps ymm10,ymm13,ymm7
  b123d5:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b123d9:	62 31 4c 20 5c f3    	vsubps ymm14,ymm22,ymm19
  b123df:	c5 bc 58 c9          	vaddps ymm1,ymm8,ymm1
  b123e3:	c5 94 58 ff          	vaddps ymm7,ymm13,ymm7
  b123e7:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  b123eb:	62 51 54 20 58 c3    	vaddps ymm8,ymm21,ymm11
  b123f1:	c5 d4 58 d2          	vaddps ymm2,ymm5,ymm2
  b123f5:	62 d1 7c 20 58 e9    	vaddps ymm5,ymm16,ymm9
  b123fb:	c4 41 4c 5c ce       	vsubps ymm9,ymm6,ymm14
  b12400:	c5 74 5c df          	vsubps ymm11,ymm1,ymm7
  b12404:	c5 3c 58 e4          	vaddps ymm12,ymm8,ymm4
  b12408:	c5 6c 58 ed          	vaddps ymm13,ymm2,ymm5
  b1240c:	c5 f0 58 cf          	vaddps xmm1,xmm1,xmm7
  b12410:	c4 e3 15 18 c9 01    	vinsertf128 ymm1,ymm13,xmm1,0x1
  b12416:	c4 c1 60 5c fa       	vsubps xmm7,xmm3,xmm10
  b1241b:	c4 e3 25 18 ff 01    	vinsertf128 ymm7,ymm11,xmm7,0x1
  b12421:	c5 a8 58 db          	vaddps xmm3,xmm10,xmm3
  b12425:	c5 75 14 d3          	vunpcklpd ymm10,ymm1,ymm3
  b12429:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  b1242d:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  b12431:	c5 2c c6 dd 88       	vshufps ymm11,ymm10,ymm5,0x88
  b12436:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b1243c:	c5 ac c6 ed dd       	vshufps ymm5,ymm10,ymm5,0xdd
  b12441:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b12446:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b1244a:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  b1244e:	c5 f4 c6 da 88       	vshufps ymm3,ymm1,ymm2,0x88
  b12453:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b12458:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  b1245d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b12462:	c5 88 58 d6          	vaddps xmm2,xmm14,xmm6
  b12466:	c4 e3 1d 18 d2 01    	vinsertf128 ymm2,ymm12,xmm2,0x1
  b1246c:	62 b1 7c 08 5c f7    	vsubps xmm6,xmm0,xmm23
  b12472:	c4 e3 35 18 f6 01    	vinsertf128 ymm6,ymm9,xmm6,0x1
  b12478:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  b1247e:	c5 ed 14 f8          	vunpcklpd ymm7,ymm2,ymm0
  b12482:	c4 c1 58 5c e0       	vsubps xmm4,xmm4,xmm8
  b12487:	c5 4d 14 c4          	vunpcklpd ymm8,ymm6,ymm4
  b1248b:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b12491:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b12497:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  b1249d:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b124a2:	c5 ed 15 c0          	vunpckhpd ymm0,ymm2,ymm0
  b124a6:	c5 cd 15 d4          	vunpckhpd ymm2,ymm6,ymm4
  b124aa:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  b124af:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b124b4:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  b124b9:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b124be:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  b124c3:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b124c8:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b124cf:	00 
  b124d0:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  b124d7:	00 
  b124d8:	c5 7c 10 a2 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xc0]
  b124df:	00 
  b124e0:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  b124e7:	00 
  b124e8:	c5 3c 59 f3          	vmulps ymm14,ymm8,ymm3
  b124ec:	c4 42 5d bc f2       	vfnmadd231ps ymm14,ymm4,ymm10
  b124f1:	c4 41 24 58 fe       	vaddps ymm15,ymm11,ymm14
  b124f6:	62 e1 54 28 59 c2    	vmulps ymm16,ymm5,ymm2
  b124fc:	62 e2 45 28 bc c6    	vfnmadd231ps ymm16,ymm7,ymm6
  b12502:	62 c1 74 28 59 cc    	vmulps ymm17,ymm1,ymm12
  b12508:	62 c2 7d 28 bc cd    	vfnmadd231ps ymm17,ymm0,ymm13
  b1250e:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  b12514:	c5 bc 59 e4          	vmulps ymm4,ymm8,ymm4
  b12518:	c4 c2 65 b8 e2       	vfmadd231ps ymm4,ymm3,ymm10
  b1251d:	c5 b4 58 dc          	vaddps ymm3,ymm9,ymm4
  b12521:	c5 c4 59 d2          	vmulps ymm2,ymm7,ymm2
  b12525:	c4 e2 55 b8 d6       	vfmadd231ps ymm2,ymm5,ymm6
  b1252a:	c5 9c 59 c0          	vmulps ymm0,ymm12,ymm0
  b1252e:	c4 c2 75 b8 c5       	vfmadd231ps ymm0,ymm1,ymm13
  b12533:	c5 ec 58 c8          	vaddps ymm1,ymm2,ymm0
  b12537:	c4 c1 24 5c ee       	vsubps ymm5,ymm11,ymm14
  b1253c:	c5 ec 5c c0          	vsubps ymm0,ymm2,ymm0
  b12540:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  b12544:	c5 b4 5c e4          	vsubps ymm4,ymm9,ymm4
  b12548:	62 b1 74 20 5c f0    	vsubps ymm6,ymm17,ymm16
  b1254e:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b12552:	62 31 04 28 5c c2    	vsubps ymm8,ymm15,ymm18
  b12558:	c5 64 5c c9          	vsubps ymm9,ymm3,ymm1
  b1255c:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  b12560:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  b12564:	62 b1 04 28 58 ea    	vaddps ymm5,ymm15,ymm18
  b1256a:	c5 e4 58 c9          	vaddps ymm1,ymm3,ymm1
  b1256e:	c5 fc 28 1d 6a 4c 56 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff564c6a]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b12575:	ff 
  b12576:	c4 e3 7d 19 ee 01    	vextractf128 xmm6,ymm5,0x1
  b1257c:	62 f2 65 28 7f e9    	vpermt2ps ymm5,ymm3,ymm1
  b12582:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  b12586:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1258c:	c5 c8 14 c9          	vunpcklps xmm1,xmm6,xmm1
  b12590:	c5 f8 11 4e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm1
  b12595:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  b1259b:	62 f2 65 28 7f d7    	vpermt2ps ymm2,ymm3,ymm7
  b125a1:	c5 fc 11 56 30       	vmovups YMMWORD PTR [rsi+0x30],ymm2
  b125a6:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  b125ac:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  b125b0:	c5 f8 11 4e 50       	vmovups XMMWORD PTR [rsi+0x50],xmm1
  b125b5:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  b125bb:	62 52 65 28 7f c1    	vpermt2ps ymm8,ymm3,ymm9
  b125c1:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  b125c6:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  b125cc:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  b125d0:	c5 f8 11 8e 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm1
  b125d7:	00 
  b125d8:	62 f2 7d 28 77 dc    	vpermi2ps ymm3,ymm0,ymm4
  b125de:	c5 fc 11 9e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm3
  b125e5:	00 
  b125e6:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  b125ec:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b125f2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  b125f6:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  b125fd:	00 
  b125fe:	c5 f8 77             	vzeroupper
  b12601:	c3                   	ret
