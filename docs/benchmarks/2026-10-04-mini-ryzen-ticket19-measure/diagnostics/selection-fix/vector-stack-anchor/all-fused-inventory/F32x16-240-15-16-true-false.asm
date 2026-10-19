
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a17180 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a17180:	48 81 ec 88 0b 00 00 	sub    rsp,0xb88
  a17187:	62 71 7c 48 28 05 af 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6785af]        # 8f740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cbf0>
  a1718e:	85 67 ff 
  a17191:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a17197:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a1719e:	01 
  a1719f:	62 e1 7c 48 10 77 01 	vmovups zmm22,ZMMWORD PTR [rdi+0x40]
  a171a6:	62 71 7c 48 10 67 02 	vmovups zmm12,ZMMWORD PTR [rdi+0x80]
  a171ad:	62 f1 7c 48 10 5f 03 	vmovups zmm3,ZMMWORD PTR [rdi+0xc0]
  a171b4:	62 b2 3d 48 7f ce    	vpermt2ps zmm1,zmm8,zmm22
  a171ba:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a171c1:	05 
  a171c2:	62 e1 7c 48 10 5f 06 	vmovups zmm19,ZMMWORD PTR [rdi+0x180]
  a171c9:	62 f1 7c 48 10 6f 07 	vmovups zmm5,ZMMWORD PTR [rdi+0x1c0]
  a171d0:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a171d6:	62 31 7c 48 28 eb    	vmovaps zmm13,zmm19
  a171dc:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a171e2:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a171e9:	62 e1 7c 48 10 5f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x600]
  a171f0:	62 f1 7c 48 10 4f 19 	vmovups zmm1,ZMMWORD PTR [rdi+0x640]
  a171f7:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a171fd:	62 f2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm1
  a17203:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a1720a:	07 
  a1720b:	62 f1 7c 48 10 57 0c 	vmovups zmm2,ZMMWORD PTR [rdi+0x300]
  a17212:	62 f1 7c 48 10 47 0d 	vmovups zmm0,ZMMWORD PTR [rdi+0x340]
  a17219:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a1721f:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a17225:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a1722b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a17232:	ff 
  a17233:	62 f1 7c 48 10 67 12 	vmovups zmm4,ZMMWORD PTR [rdi+0x480]
  a1723a:	62 f1 7c 48 10 57 13 	vmovups zmm2,ZMMWORD PTR [rdi+0x4c0]
  a17241:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a17247:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a1724d:	62 f2 3d 48 7f f2    	vpermt2ps zmm6,zmm8,zmm2
  a17253:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a1725a:	fe 
  a1725b:	62 f1 7c 48 10 77 0a 	vmovups zmm6,ZMMWORD PTR [rdi+0x280]
  a17262:	62 f1 7c 48 10 67 0b 	vmovups zmm4,ZMMWORD PTR [rdi+0x2c0]
  a17269:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a1726f:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a17275:	62 f2 3d 48 7f fc    	vpermt2ps zmm7,zmm8,zmm4
  a1727b:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a17282:	03 
  a17283:	62 61 7c 48 10 47 10 	vmovups zmm24,ZMMWORD PTR [rdi+0x400]
  a1728a:	62 f1 7c 48 10 77 11 	vmovups zmm6,ZMMWORD PTR [rdi+0x440]
  a17291:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a17297:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a1729d:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a172a4:	04 
  a172a5:	62 e1 7c 48 10 4f 04 	vmovups zmm17,ZMMWORD PTR [rdi+0x100]
  a172ac:	62 f1 7c 48 10 7f 05 	vmovups zmm7,ZMMWORD PTR [rdi+0x140]
  a172b3:	62 61 7c 48 10 77 16 	vmovups zmm30,ZMMWORD PTR [rdi+0x580]
  a172ba:	62 71 7c 48 10 4f 17 	vmovups zmm9,ZMMWORD PTR [rdi+0x5c0]
  a172c1:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a172c7:	62 42 3d 48 7f d9    	vpermt2ps zmm27,zmm8,zmm9
  a172cd:	62 e1 7c 48 10 67 1c 	vmovups zmm20,ZMMWORD PTR [rdi+0x700]
  a172d4:	62 71 7c 48 10 57 1d 	vmovups zmm10,ZMMWORD PTR [rdi+0x740]
  a172db:	62 61 7c 48 28 3d 9b 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff67849b]        # 8f780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cc30>
  a172e2:	84 67 ff 
  a172e5:	62 42 05 40 7f f1    	vpermt2ps zmm30,zmm31,zmm9
  a172eb:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a172f1:	62 52 3d 48 7f ca    	vpermt2ps zmm9,zmm8,zmm10
  a172f7:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm9
  a172fe:	08 
  a172ff:	62 c2 05 40 7f e2    	vpermt2ps zmm20,zmm31,zmm10
  a17305:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a1730b:	62 e2 3d 48 7f ff    	vpermt2ps zmm23,zmm8,zmm7
  a17311:	62 62 05 40 7f c6    	vpermt2ps zmm24,zmm31,zmm6
  a17317:	62 f1 7c 48 10 77 14 	vmovups zmm6,ZMMWORD PTR [rdi+0x500]
  a1731e:	62 e2 05 40 7f cf    	vpermt2ps zmm17,zmm31,zmm7
  a17324:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a1732a:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a17330:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a17337:	15 
  a17338:	62 72 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm3
  a1733e:	62 f1 7c 48 10 5f 15 	vmovups zmm3,ZMMWORD PTR [rdi+0x540]
  a17345:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a1734b:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a17351:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a17357:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm7
  a1735e:	06 
  a1735f:	62 61 7c 48 10 57 1a 	vmovups zmm26,ZMMWORD PTR [rdi+0x680]
  a17366:	62 f1 7c 48 10 77 1b 	vmovups zmm6,ZMMWORD PTR [rdi+0x6c0]
  a1736d:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a17373:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a17379:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm7
  a17380:	14 
  a17381:	62 61 7c 48 10 4f 0e 	vmovups zmm25,ZMMWORD PTR [rdi+0x380]
  a17388:	62 f1 7c 48 10 7f 0f 	vmovups zmm7,ZMMWORD PTR [rdi+0x3c0]
  a1738f:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a17395:	62 62 3d 48 7f e7    	vpermt2ps zmm28,zmm8,zmm7
  a1739b:	62 61 7c 48 10 6f 08 	vmovups zmm29,ZMMWORD PTR [rdi+0x200]
  a173a2:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a173a9:	62 52 15 40 77 c1    	vpermi2ps zmm8,zmm29,zmm9
  a173af:	62 42 05 40 7f e9    	vpermt2ps zmm29,zmm31,zmm9
  a173b5:	62 62 05 40 7f d6    	vpermt2ps zmm26,zmm31,zmm6
  a173bb:	62 62 05 40 7f cf    	vpermt2ps zmm25,zmm31,zmm7
  a173c1:	62 72 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm0
  a173c7:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm14
  a173ce:	10 
  a173cf:	62 72 05 40 7f fa    	vpermt2ps zmm15,zmm31,zmm2
  a173d5:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a173db:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm15
  a173e2:	09 
  a173e3:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a173e9:	62 f2 05 40 7f f5    	vpermt2ps zmm6,zmm31,zmm5
  a173ef:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm6
  a173f6:	0e 
  a173f7:	62 b1 7c 48 28 eb    	vmovaps zmm5,zmm19
  a173fd:	62 f2 05 40 7f e9    	vpermt2ps zmm5,zmm31,zmm1
  a17403:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a1740a:	0f 
  a1740b:	62 e2 05 40 7f c4    	vpermt2ps zmm16,zmm31,zmm4
  a17411:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm16
  a17418:	02 
  a17419:	62 72 05 40 7f d3    	vpermt2ps zmm10,zmm31,zmm3
  a1741f:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm10
  a17426:	0b 
  a17427:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a1742e:	01 
  a1742f:	62 b2 05 40 7f c6    	vpermt2ps zmm0,zmm31,zmm22
  a17435:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a1743c:	01 
  a1743d:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a17443:	62 b1 0c 40 5c c4    	vsubps zmm0,zmm30,zmm20
  a17449:	62 b1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm17
  a1744f:	62 e2 7d 48 18 35 ff 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff65e2ff]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a17456:	e2 65 ff 
  a17459:	62 31 74 48 59 fe    	vmulps zmm15,zmm1,zmm22
  a1745f:	62 f2 7d 48 18 15 37 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65df37]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a17466:	df 65 ff 
  a17469:	62 72 7d 48 bc fa    	vfnmadd231ps zmm15,zmm0,zmm2
  a1746f:	62 21 7c 48 59 f6    	vmulps zmm30,zmm0,zmm22
  a17475:	62 62 6d 48 b8 f1    	vfmadd231ps zmm30,zmm2,zmm1
  a1747b:	62 91 1c 48 5c c5    	vsubps zmm0,zmm12,zmm29
  a17481:	62 91 2c 40 5c c9    	vsubps zmm1,zmm26,zmm25
  a17487:	62 31 74 48 59 ee    	vmulps zmm13,zmm1,zmm22
  a1748d:	62 72 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm2
  a17493:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a17499:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a1749f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a174a6:	12 
  a174a7:	62 d1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm9
  a174ad:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a174b3:	62 b1 54 48 59 e6    	vmulps zmm4,zmm5,zmm22
  a174b9:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a174bf:	62 a1 74 48 59 d6    	vmulps zmm18,zmm1,zmm22
  a174c5:	62 e2 6d 48 b8 d5    	vfmadd231ps zmm18,zmm2,zmm5
  a174cb:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x200]
  a174d2:	08 
  a174d3:	62 b1 24 40 5c ed    	vsubps zmm5,zmm27,zmm21
  a174d9:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x100]
  a174e0:	04 
  a174e1:	62 b1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm23
  a174e7:	62 31 44 48 59 d6    	vmulps zmm10,zmm7,zmm22
  a174ed:	62 72 55 48 bc d2    	vfnmadd231ps zmm10,zmm5,zmm2
  a174f3:	62 b1 54 48 59 c6    	vmulps zmm0,zmm5,zmm22
  a174f9:	62 f2 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm7
  a174ff:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a17506:	0a 
  a17507:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x540]
  a1750e:	15 
  a1750f:	62 d1 24 48 5c f8    	vsubps zmm7,zmm11,zmm8
  a17515:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x500]
  a1751c:	14 
  a1751d:	62 01 34 48 5c fc    	vsubps zmm31,zmm9,zmm28
  a17523:	62 a1 04 40 59 c6    	vmulps zmm16,zmm31,zmm22
  a17529:	62 e2 45 48 bc c2    	vfnmadd231ps zmm16,zmm7,zmm2
  a1752f:	62 b1 44 48 59 c6    	vmulps zmm0,zmm7,zmm22
  a17535:	62 92 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm31
  a1753b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a17542:	11 
  a17543:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a1754a:	ff 
  a1754b:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a17552:	fe 
  a17553:	62 f1 44 48 5c c3    	vsubps zmm0,zmm7,zmm3
  a17559:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a17560:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x1c0]
  a17567:	07 
  a17568:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a1756e:	62 21 74 48 59 fe    	vmulps zmm31,zmm1,zmm22
  a17574:	62 62 7d 48 bc fa    	vfnmadd231ps zmm31,zmm0,zmm2
  a1757a:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a17580:	62 f2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm2
  a17586:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a1758d:	13 
  a1758e:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a17594:	62 f1 44 48 58 cb    	vaddps zmm1,zmm7,zmm3
  a1759a:	62 b1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm23
  a175a0:	62 a1 24 40 58 fd    	vaddps zmm23,zmm27,zmm21
  a175a6:	62 01 34 48 58 e4    	vaddps zmm28,zmm9,zmm28
  a175ac:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a175b2:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a175b8:	62 a1 3c 40 58 e1    	vaddps zmm20,zmm24,zmm17
  a175be:	62 91 1c 48 58 fd    	vaddps zmm7,zmm12,zmm29
  a175c4:	62 91 2c 40 58 e9    	vaddps zmm5,zmm26,zmm25
  a175ca:	62 62 7d 48 18 0d 70 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff65e070]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a175d1:	e0 65 ff 
  a175d4:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a175da:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a175e1:	03 
  a175e2:	62 62 6d 48 ac c3    	vfnmadd213ps zmm24,zmm2,zmm3
  a175e8:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a175ee:	62 72 7d 48 18 25 f0 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff65e0f0]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a175f5:	e0 65 ff 
  a175f8:	62 f2 1d 48 b8 da    	vfmadd231ps zmm3,zmm12,zmm2
  a175fe:	62 31 2c 40 58 cf    	vaddps zmm9,zmm26,zmm23
  a17604:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm9
  a1760b:	1d 
  a1760c:	62 42 45 40 b8 c4    	vfmadd231ps zmm24,zmm23,zmm12
  a17612:	62 b2 35 40 bc df    	vfnmadd231ps zmm3,zmm25,zmm23
  a17618:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a1761e:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a17624:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x180]
  a1762b:	06 
  a1762c:	62 d2 1d 40 ac d6    	vfnmadd213ps zmm2,zmm28,zmm14
  a17632:	62 81 0c 48 58 fc    	vaddps zmm23,zmm14,zmm28
  a17638:	62 12 1d 48 b8 f4    	vfmadd231ps zmm14,zmm12,zmm28
  a1763e:	62 41 44 40 58 d8    	vaddps zmm27,zmm23,zmm8
  a17644:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm27
  a1764b:	0c 
  a1764c:	62 d2 3d 48 b8 d4    	vfmadd231ps zmm2,zmm8,zmm12
  a17652:	62 52 35 40 bc f0    	vfnmadd231ps zmm14,zmm25,zmm8
  a17658:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a1765e:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x140]
  a17665:	05 
  a17666:	62 32 7d 48 ac c1    	vfnmadd213ps zmm8,zmm0,zmm17
  a1766c:	62 e1 74 40 58 f8    	vaddps zmm23,zmm17,zmm0
  a17672:	62 e2 1d 48 b8 c8    	vfmadd231ps zmm17,zmm12,zmm0
  a17678:	62 f1 44 40 58 c1    	vaddps zmm0,zmm23,zmm1
  a1767e:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a17684:	62 e2 35 40 bc c9    	vfnmadd231ps zmm17,zmm25,zmm1
  a1768a:	62 c1 5c 48 58 f8    	vaddps zmm23,zmm4,zmm8
  a17690:	62 f1 3c 48 5c cc    	vsubps zmm1,zmm8,zmm4
  a17696:	62 91 04 48 58 d8    	vaddps zmm3,zmm15,zmm24
  a1769c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a176a3:	1c 
  a176a4:	62 d1 3c 40 5c df    	vsubps zmm3,zmm24,zmm15
  a176aa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a176b1:	0d 
  a176b2:	62 f1 14 48 58 e2    	vaddps zmm4,zmm13,zmm2
  a176b8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm4
  a176bf:	1b 
  a176c0:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a176c6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a176cd:	ff 
  a176ce:	62 72 7d 48 18 05 88 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff65dd88]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a176d5:	dd 65 ff 
  a176d8:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a176de:	62 91 74 48 58 d2    	vaddps zmm2,zmm1,zmm26
  a176e4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a176eb:	fe 
  a176ec:	62 62 3d 48 ac d1    	vfnmadd213ps zmm26,zmm8,zmm1
  a176f2:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a176f8:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a176ff:	02 
  a17700:	62 f2 5d 40 ac cb    	vfnmadd213ps zmm1,zmm20,zmm3
  a17706:	62 d2 4d 48 b8 cc    	vfmadd231ps zmm1,zmm6,zmm12
  a1770c:	62 41 74 48 5c e2    	vsubps zmm28,zmm1,zmm10
  a17712:	62 41 74 48 58 c2    	vaddps zmm24,zmm1,zmm10
  a17718:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a1771f:	0e 
  a17720:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a17727:	0f 
  a17728:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a1772f:	10 
  a17730:	62 61 74 48 58 6c 24 	vaddps zmm29,zmm1,ZMMWORD PTR [rsp+0x240]
  a17737:	09 
  a17738:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a1773e:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x40]
  a17745:	01 
  a17746:	62 b2 6d 48 ac e3    	vfnmadd213ps zmm4,zmm2,zmm19
  a1774c:	62 f1 64 40 58 ca    	vaddps zmm1,zmm19,zmm2
  a17752:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a17759:	09 
  a1775a:	62 c2 6d 48 b8 dc    	vfmadd231ps zmm19,zmm2,zmm12
  a17760:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a17766:	62 72 5d 40 a8 db    	vfmadd213ps zmm11,zmm20,zmm3
  a1776c:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a17772:	62 12 4d 48 bc d9    	vfnmadd231ps zmm11,zmm6,zmm25
  a17778:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a1777e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a17785:	0b 
  a17786:	62 f2 55 48 a8 da    	vfmadd213ps zmm3,zmm5,zmm2
  a1778c:	62 92 45 48 bc d9    	vfnmadd231ps zmm3,zmm7,zmm25
  a17792:	62 82 15 40 bc d9    	vfnmadd231ps zmm19,zmm29,zmm25
  a17798:	62 62 55 48 ac ca    	vfnmadd213ps zmm25,zmm5,zmm2
  a1779e:	62 42 45 48 b8 cc    	vfmadd231ps zmm25,zmm7,zmm12
  a177a4:	62 a1 34 40 5c f0    	vsubps zmm22,zmm25,zmm16
  a177aa:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a177b0:	62 11 34 48 58 eb    	vaddps zmm13,zmm9,zmm27
  a177b6:	62 51 7c 48 58 cd    	vaddps zmm9,zmm0,zmm13
  a177bc:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm9
  a177c3:	05 
  a177c4:	62 72 3d 48 ac e8    	vfnmadd213ps zmm13,zmm8,zmm0
  a177ca:	62 b1 74 48 58 c4    	vaddps zmm0,zmm1,zmm20
  a177d0:	62 e1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm6
  a177d6:	62 f1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm5
  a177dc:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a177e2:	62 b1 6c 40 58 d1    	vaddps zmm2,zmm18,zmm17
  a177e8:	62 b1 74 40 5c fa    	vsubps zmm7,zmm17,zmm18
  a177ee:	62 31 0c 40 58 cd    	vaddps zmm9,zmm30,zmm21
  a177f4:	62 81 54 40 5c ce    	vsubps zmm17,zmm21,zmm30
  a177fa:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x480]
  a17801:	12 
  a17802:	62 41 74 48 58 f6    	vaddps zmm30,zmm1,zmm14
  a17808:	62 f1 0c 48 5c c1    	vsubps zmm0,zmm14,zmm1
  a1780e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a17815:	02 
  a17816:	62 81 34 48 58 c6    	vaddps zmm16,zmm9,zmm30
  a1781c:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a17822:	62 e2 7d 40 ac d2    	vfnmadd213ps zmm18,zmm16,zmm2
  a17828:	62 f2 7d 48 18 35 a2 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff65daa2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1782f:	da 65 ff 
  a17832:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x280]
  a17839:	0a 
  a1783a:	62 d1 24 48 5c ef    	vsubps zmm5,zmm11,zmm15
  a17840:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x440]
  a17847:	11 
  a17848:	62 b1 64 48 5c cd    	vsubps zmm1,zmm3,zmm21
  a1784e:	62 71 54 48 5c f1    	vsubps zmm14,zmm5,zmm1
  a17854:	62 71 0c 48 59 f6    	vmulps zmm14,zmm14,zmm6
  a1785a:	62 41 6c 40 5c de    	vsubps zmm27,zmm18,zmm14
  a17860:	62 61 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm27
  a17867:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a1786d:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm14
  a17874:	08 
  a17875:	62 71 74 40 58 f0    	vaddps zmm14,zmm17,zmm0
  a1787b:	62 c1 44 48 58 d6    	vaddps zmm18,zmm7,zmm14
  a17881:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm18
  a17888:	03 
  a17889:	62 72 3d 48 ac f7    	vfnmadd213ps zmm14,zmm8,zmm7
  a1788f:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a17895:	62 b1 64 48 58 dd    	vaddps zmm3,zmm3,zmm21
  a1789b:	62 b1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm16
  a178a1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a178a8:	15 
  a178a9:	62 d1 5c 40 5c c2    	vsubps zmm0,zmm20,zmm10
  a178af:	62 f1 7c 48 59 fe    	vmulps zmm7,zmm0,zmm6
  a178b5:	62 61 14 48 5c df    	vsubps zmm27,zmm13,zmm7
  a178bb:	62 d1 44 48 58 c5    	vaddps zmm0,zmm7,zmm13
  a178c1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a178c8:	07 
  a178c9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  a178d0:	1c 
  a178d1:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x6c0]
  a178d8:	1b 
  a178d9:	62 b1 6c 48 58 fa    	vaddps zmm7,zmm2,zmm18
  a178df:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a178e5:	62 32 45 48 ac ef    	vfnmadd213ps zmm13,zmm7,zmm23
  a178eb:	62 31 1c 40 5c fe    	vsubps zmm15,zmm28,zmm22
  a178f1:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a178f7:	62 d1 14 48 58 c7    	vaddps zmm0,zmm13,zmm15
  a178fd:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a17903:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm13
  a1790a:	14 
  a1790b:	62 f1 44 40 58 ff    	vaddps zmm7,zmm23,zmm7
  a17911:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm7
  a17918:	01 
  a17919:	62 f1 24 48 5c fb    	vsubps zmm7,zmm11,zmm3
  a1791f:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a17925:	62 71 0c 48 5c ef    	vsubps zmm13,zmm14,zmm7
  a1792b:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm13
  a17932:	06 
  a17933:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a17939:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm7
  a17940:	0a 
  a17941:	62 91 3c 40 5c f9    	vsubps zmm7,zmm24,zmm25
  a17947:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a1794d:	62 71 2c 40 58 ff    	vaddps zmm15,zmm26,zmm7
  a17953:	62 f1 2c 40 5c ff    	vsubps zmm7,zmm26,zmm7
  a17959:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a17960:	04 
  a17961:	62 d2 15 40 b8 e4    	vfmadd231ps zmm4,zmm29,zmm12
  a17967:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x240]
  a1796e:	09 
  a1796f:	62 51 5c 40 58 ea    	vaddps zmm13,zmm20,zmm10
  a17975:	62 a1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm22
  a1797b:	62 31 6c 48 5c f2    	vsubps zmm14,zmm2,zmm18
  a17981:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a17987:	62 f1 54 48 58 d1    	vaddps zmm2,zmm5,zmm1
  a1798d:	62 91 5c 48 5c ff    	vsubps zmm7,zmm4,zmm31
  a17993:	62 91 5c 48 58 e7    	vaddps zmm4,zmm4,zmm31
  a17999:	62 01 3c 40 58 c9    	vaddps zmm25,zmm24,zmm25
  a1799f:	62 81 5c 48 58 d1    	vaddps zmm18,zmm4,zmm25
  a179a5:	62 62 3d 48 ac cc    	vfnmadd213ps zmm25,zmm8,zmm4
  a179ab:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a179b2:	0d 
  a179b3:	62 f1 74 48 5c 64 24 	vsubps zmm4,zmm1,ZMMWORD PTR [rsp-0x40]
  a179ba:	ff 
  a179bb:	62 41 1c 48 58 f5    	vaddps zmm30,zmm12,zmm13
  a179c1:	62 52 3d 48 ac ec    	vfnmadd213ps zmm13,zmm8,zmm12
  a179c7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a179ce:	1d 
  a179cf:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x300]
  a179d6:	0c 
  a179d7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x4c0]
  a179de:	13 
  a179df:	62 e1 64 40 5c e1    	vsubps zmm20,zmm19,zmm1
  a179e5:	62 e1 64 40 58 e9    	vaddps zmm21,zmm19,zmm1
  a179eb:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a179f1:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a179f7:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a179fd:	62 32 65 48 ac c5    	vfnmadd213ps zmm8,zmm3,zmm21
  a17a03:	62 61 54 40 58 c3    	vaddps zmm24,zmm21,zmm3
  a17a09:	62 f1 34 48 59 de    	vmulps zmm3,zmm9,zmm6
  a17a0f:	62 a2 6d 48 ac f4    	vfnmadd213ps zmm22,zmm2,zmm20
  a17a15:	62 a1 64 48 58 ee    	vaddps zmm21,zmm3,zmm22
  a17a1b:	62 61 4c 40 5c eb    	vsubps zmm29,zmm22,zmm3
  a17a21:	62 f1 74 40 5c 5c 24 	vsubps zmm3,zmm17,ZMMWORD PTR [rsp+0x80]
  a17a28:	02 
  a17a29:	62 71 0c 48 59 ce    	vmulps zmm9,zmm14,zmm6
  a17a2f:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a17a35:	62 71 1c 48 59 f6    	vmulps zmm14,zmm12,zmm6
  a17a3b:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a17a41:	62 72 7d 40 ac df    	vfnmadd213ps zmm11,zmm16,zmm7
  a17a47:	62 71 5c 40 58 e2    	vaddps zmm12,zmm20,zmm2
  a17a4d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm12
  a17a54:	13 
  a17a55:	62 51 14 48 58 d6    	vaddps zmm10,zmm13,zmm14
  a17a5b:	62 c1 14 48 5c fe    	vsubps zmm23,zmm13,zmm14
  a17a61:	62 51 24 48 5c e9    	vsubps zmm13,zmm11,zmm9
  a17a67:	62 c1 24 48 58 f1    	vaddps zmm22,zmm11,zmm9
  a17a6d:	62 f1 7c 48 28 35 09 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6af509]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a17a74:	f5 6a ff 
  a17a77:	62 b1 44 48 58 d0    	vaddps zmm2,zmm7,zmm16
  a17a7d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a17a84:	02 
  a17a85:	62 c1 64 48 58 c0    	vaddps zmm16,zmm3,zmm8
  a17a8b:	62 61 3c 48 5c d3    	vsubps zmm26,zmm8,zmm3
  a17a91:	62 f1 34 40 5c ec    	vsubps zmm5,zmm25,zmm4
  a17a97:	62 61 34 40 58 e4    	vaddps zmm28,zmm25,zmm4
  a17a9d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a17aa4:	05 
  a17aa5:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a17aab:	62 f2 4d 48 7f d8    	vpermt2ps zmm3,zmm6,zmm0
  a17ab1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a17ab8:	ff 
  a17ab9:	62 61 7c 48 28 0d fd 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6af4fd]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a17ac0:	f4 6a ff 
  a17ac3:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a17ac9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a17ad0:	05 
  a17ad1:	62 e1 7c 48 10 0c 24 	vmovups zmm17,ZMMWORD PTR [rsp]
  a17ad8:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a17ade:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a17ae5:	fe 
  a17ae6:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a17aec:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a17af3:	12 
  a17af4:	62 e2 35 40 7f c9    	vpermt2ps zmm17,zmm25,zmm1
  a17afa:	62 e1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm17
  a17b01:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a17b07:	62 82 4d 48 7f db    	vpermt2ps zmm19,zmm6,zmm27
  a17b0d:	62 12 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm27
  a17b13:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm15
  a17b1a:	fe 
  a17b1b:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0xc0]
  a17b22:	03 
  a17b23:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a17b29:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x200]
  a17b30:	08 
  a17b31:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a17b37:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a17b3e:	0b 
  a17b3f:	62 72 35 40 7f f3    	vpermt2ps zmm14,zmm25,zmm3
  a17b45:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm14
  a17b4c:	03 
  a17b4d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a17b54:	06 
  a17b55:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a17b5b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x540]
  a17b62:	15 
  a17b63:	62 62 4d 48 7f f9    	vpermt2ps zmm31,zmm6,zmm1
  a17b69:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a17b6f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a17b76:	06 
  a17b77:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a17b7e:	07 
  a17b7f:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a17b85:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x500]
  a17b8c:	14 
  a17b8d:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a17b93:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a17b9a:	1a 
  a17b9b:	62 f2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm3
  a17ba1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a17ba8:	07 
  a17ba9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a17bb0:	01 
  a17bb1:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a17bb7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a17bbe:	0a 
  a17bbf:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a17bc5:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a17bcb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a17bd2:	01 
  a17bd3:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a17bd9:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a17bdf:	62 52 35 40 7f cd    	vpermt2ps zmm9,zmm25,zmm13
  a17be5:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a17beb:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a17bf1:	62 b2 35 40 7f c2    	vpermt2ps zmm0,zmm25,zmm18
  a17bf7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a17bfe:	08 
  a17bff:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a17c05:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a17c0b:	62 52 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm10
  a17c11:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a17c17:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a17c1d:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a17c23:	62 12 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm29
  a17c29:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a17c2f:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xac0],zmm10
  a17c36:	2b 
  a17c37:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a17c3d:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a17c43:	62 d2 35 40 7f ec    	vpermt2ps zmm5,zmm25,zmm12
  a17c49:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a17c4f:	62 b2 35 40 7f c6    	vpermt2ps zmm0,zmm25,zmm22
  a17c55:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a17c5c:	19 
  a17c5d:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a17c63:	62 82 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm26
  a17c69:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a17c6e:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a17c74:	62 42 35 40 7f eb    	vpermt2ps zmm29,zmm25,zmm11
  a17c7a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a17c81:	04 
  a17c82:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a17c88:	62 d2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm11
  a17c8e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a17c95:	04 
  a17c96:	62 72 4d 48 7f c1    	vpermt2ps zmm8,zmm6,zmm1
  a17c9c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm8
  a17ca3:	28 
  a17ca4:	62 a2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm18
  a17caa:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm21
  a17cb1:	1e 
  a17cb2:	62 42 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm15
  a17cb8:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm30
  a17cbf:	27 
  a17cc0:	62 f2 4d 48 7f e3    	vpermt2ps zmm4,zmm6,zmm3
  a17cc6:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a17ccc:	62 62 4d 48 7f 44 24 	vpermt2ps zmm24,zmm6,ZMMWORD PTR [rsp+0x4c0]
  a17cd3:	13 
  a17cd4:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a17cda:	62 b2 4d 48 7f d6    	vpermt2ps zmm2,zmm6,zmm22
  a17ce0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a17ce7:	1f 
  a17ce8:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x80]
  a17cef:	02 
  a17cf0:	62 82 4d 48 7f fa    	vpermt2ps zmm23,zmm6,zmm26
  a17cf6:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm23
  a17cfd:	02 
  a17cfe:	62 42 4d 48 7f db    	vpermt2ps zmm27,zmm6,zmm11
  a17d04:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a17d0a:	62 d2 4d 48 7f db    	vpermt2ps zmm3,zmm6,zmm11
  a17d10:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x140]
  a17d17:	05 
  a17d18:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm22
  a17d1f:	18 
  a17d20:	62 f1 7c 48 28 25 16 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6af216]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a17d27:	f2 6a ff 
  a17d2a:	62 e2 5d 48 7f 34 24 	vpermt2ps zmm22,zmm4,ZMMWORD PTR [rsp]
  a17d31:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm22
  a17d38:	05 
  a17d39:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp-0x80]
  a17d40:	fe 
  a17d41:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm18
  a17d48:	17 
  a17d49:	62 c2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm14
  a17d4f:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm18
  a17d56:	fe 
  a17d57:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a17d5e:	06 
  a17d5f:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm15
  a17d66:	16 
  a17d67:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a17d6e:	07 
  a17d6f:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x40]
  a17d76:	01 
  a17d77:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm11
  a17d7e:	20 
  a17d7f:	62 72 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm0
  a17d85:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm11
  a17d8c:	01 
  a17d8d:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xb40],zmm9
  a17d94:	2d 
  a17d95:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x200]
  a17d9c:	08 
  a17d9d:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a17da3:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm9
  a17daa:	23 
  a17dab:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xb00],zmm13
  a17db2:	2c 
  a17db3:	62 52 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm10
  a17db9:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm13
  a17dc0:	22 
  a17dc1:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xa80],zmm5
  a17dc8:	2a 
  a17dc9:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x640]
  a17dd0:	19 
  a17dd1:	62 92 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm28
  a17dd7:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a17ddd:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm5
  a17de4:	21 
  a17de5:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm17
  a17dec:	29 
  a17ded:	62 82 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm29
  a17df3:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a17dfa:	ff 
  a17dfb:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm7
  a17e02:	26 
  a17e03:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x480]
  a17e0a:	12 
  a17e0b:	62 d2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm14
  a17e11:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm7
  a17e18:	ff 
  a17e19:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a17e1f:	62 e2 5d 48 7f 5c 24 	vpermt2ps zmm19,zmm4,ZMMWORD PTR [rsp+0x2c0]
  a17e26:	0b 
  a17e27:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm19
  a17e2e:	1b 
  a17e2f:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a17e35:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a17e3b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x680]
  a17e42:	1a 
  a17e43:	62 d2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm10
  a17e49:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm6
  a17e50:	25 
  a17e51:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a17e57:	62 92 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm27
  a17e5d:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm5
  a17e64:	24 
  a17e65:	62 32 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm21
  a17e6b:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a17e71:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a17e78:	0c 
  a17e79:	62 62 5d 48 7f f1    	vpermt2ps zmm30,zmm4,zmm1
  a17e7f:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a17e85:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a17e8b:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm30
  a17e92:	1d 
  a17e93:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a17e99:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a17e9f:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a17ea5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a17eac:	1c 
  a17ead:	62 f2 45 40 77 e3    	vpermi2ps zmm4,zmm23,zmm3
  a17eb3:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a17eb9:	62 e1 7c 48 28 2d 3d 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6aef3d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a17ec0:	ef 6a ff 
  a17ec3:	62 11 fd 48 15 cf    	vunpckhpd zmm9,zmm0,zmm31
  a17ec9:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm9
  a17ed0:	0a 
  a17ed1:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a17ed7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a17ede:	11 
  a17edf:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a17ee5:	62 21 c5 48 15 fb    	vunpckhpd zmm31,zmm7,zmm19
  a17eeb:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm31
  a17ef2:	09 
  a17ef3:	62 f1 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm5
  a17ef9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a17f00:	10 
  a17f01:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a17f07:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a17f0e:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a17f15:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a17f1b:	62 f2 35 48 b8 c2    	vfmadd231ps zmm0,zmm9,zmm2
  a17f21:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a17f28:	06 
  a17f29:	62 f1 34 48 59 c1    	vmulps zmm0,zmm9,zmm1
  a17f2f:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a17f35:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a17f3c:	15 
  a17f3d:	62 d1 9d 48 15 cd    	vunpckhpd zmm1,zmm12,zmm13
  a17f43:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a17f4a:	0f 
  a17f4b:	62 b1 fd 40 15 c1    	vunpckhpd zmm0,zmm16,zmm17
  a17f51:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a17f58:	0e 
  a17f59:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a17f5f:	62 21 cd 40 15 fa    	vunpckhpd zmm31,zmm22,zmm18
  a17f65:	62 d1 85 48 15 c3    	vunpckhpd zmm0,zmm15,zmm11
  a17f6b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a17f72:	0d 
  a17f73:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a17f79:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a17f7f:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a17f85:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a17f8c:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a17f93:	62 e1 6c 48 59 d8    	vmulps zmm19,zmm2,zmm0
  a17f99:	62 e2 75 48 b8 db    	vfmadd231ps zmm19,zmm1,zmm3
  a17f9f:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm19
  a17fa6:	14 
  a17fa7:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a17fad:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a17fb3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a17fba:	13 
  a17fbb:	62 f1 7c 48 28 05 3b 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6aef3b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a17fc2:	ef 6a ff 
  a17fc5:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x980]
  a17fcc:	26 
  a17fcd:	62 d2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm14
  a17fd3:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a17fda:	0b 
  a17fdb:	62 42 7d 48 7f d2    	vpermt2ps zmm26,zmm0,zmm10
  a17fe1:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a17fe7:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0xb40]
  a17fee:	2d 
  a17fef:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x200]
  a17ff6:	08 
  a17ff7:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0xb00]
  a17ffe:	2c 
  a17fff:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0xac0]
  a18006:	2b 
  a18007:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0xa80]
  a1800e:	2a 
  a1800f:	62 92 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm28
  a18015:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0xa40]
  a1801c:	29 
  a1801d:	62 02 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm29
  a18023:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x600]
  a1802a:	18 
  a1802b:	62 72 7d 48 7f 14 24 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rsp]
  a18032:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x5c0]
  a18039:	17 
  a1803a:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0xc0]
  a18041:	03 
  a18042:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x580]
  a18049:	16 
  a1804a:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a18051:	07 
  a18052:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x800]
  a18059:	20 
  a1805a:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x100]
  a18061:	04 
  a18062:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xa00]
  a18069:	28 
  a1806a:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x780]
  a18071:	1e 
  a18072:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x9c0]
  a18079:	27 
  a1807a:	62 52 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm8
  a18080:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a18086:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x7c0]
  a1808d:	1f 
  a1808e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a18095:	02 
  a18096:	62 b2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm23
  a1809c:	62 11 d5 48 15 c9    	vunpckhpd zmm9,zmm5,zmm25
  a180a2:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a180a8:	62 b1 ad 40 15 ec    	vunpckhpd zmm5,zmm26,zmm20
  a180ae:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm5
  a180b5:	16 
  a180b6:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a180bc:	62 f2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm5
  a180c2:	62 c1 f5 48 15 dd    	vunpckhpd zmm19,zmm1,zmm13
  a180c8:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a180ce:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a180d4:	62 f1 e5 48 15 ea    	vunpckhpd zmm5,zmm3,zmm2
  a180da:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm5
  a180e1:	20 
  a180e2:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a180e8:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a180ee:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a180f4:	62 f2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm5
  a180fa:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a18101:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a18108:	62 f1 74 48 59 ea    	vmulps zmm5,zmm1,zmm2
  a1810e:	62 f2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm3
  a18114:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a1811b:	02 
  a1811c:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a18122:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a18128:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a1812f:	0b 
  a18130:	62 d1 ad 48 15 ef    	vunpckhpd zmm5,zmm10,zmm15
  a18136:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a1813c:	62 f1 a5 40 15 cf    	vunpckhpd zmm1,zmm27,zmm7
  a18142:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm1
  a18149:	1f 
  a1814a:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a18150:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a18156:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a1815c:	62 41 8d 48 15 e3    	vunpckhpd zmm28,zmm14,zmm11
  a18162:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a18168:	62 91 cd 48 15 d0    	vunpckhpd zmm2,zmm6,zmm24
  a1816e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm2
  a18175:	1e 
  a18176:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a1817c:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a18182:	62 f2 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm2
  a18188:	62 f1 7c 48 10 52 15 	vmovups zmm2,ZMMWORD PTR [rdx+0x540]
  a1818f:	62 71 7c 48 10 5a 14 	vmovups zmm11,ZMMWORD PTR [rdx+0x500]
  a18196:	62 41 74 48 59 eb    	vmulps zmm29,zmm1,zmm11
  a1819c:	62 62 7d 48 bc ea    	vfnmadd231ps zmm29,zmm0,zmm2
  a181a2:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm29
  a181a9:	08 
  a181aa:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a181b0:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a181b6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a181bd:	12 
  a181be:	62 91 8d 40 14 c1    	vunpcklpd zmm0,zmm30,zmm25
  a181c4:	62 b1 ad 40 14 fc    	vunpcklpd zmm7,zmm26,zmm20
  a181ca:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm7
  a181d1:	17 
  a181d2:	62 b1 bd 48 14 d6    	vunpcklpd zmm2,zmm8,zmm22
  a181d8:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a181df:	62 b1 c5 40 14 f2    	vunpcklpd zmm6,zmm23,zmm18
  a181e5:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm6
  a181ec:	19 
  a181ed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a181f4:	18 
  a181f5:	62 f1 7c 48 28 0d 41 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6aec41]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a181fc:	ec 6a ff 
  a181ff:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a18205:	62 f2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm6
  a1820b:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a18212:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a18219:	62 71 6c 48 59 c6    	vmulps zmm8,zmm2,zmm6
  a1821f:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a18225:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm8
  a1822c:	1a 
  a1822d:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a18233:	62 f2 45 48 b8 c2    	vfmadd231ps zmm0,zmm7,zmm2
  a18239:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a18240:	07 
  a18241:	62 d1 8d 48 14 c2    	vunpcklpd zmm0,zmm14,zmm10
  a18247:	62 81 e5 48 14 f8    	vunpcklpd zmm23,zmm3,zmm24
  a1824d:	62 d1 9d 48 14 d7    	vunpcklpd zmm2,zmm12,zmm15
  a18253:	62 51 a5 40 14 d5    	vunpcklpd zmm10,zmm27,zmm13
  a18259:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a1825f:	62 d2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm10
  a18265:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a1826b:	62 b2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm23
  a18271:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a18278:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a1827f:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a18285:	62 72 6d 48 bc de    	vfnmadd231ps zmm11,zmm2,zmm6
  a1828b:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm11
  a18292:	04 
  a18293:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a18299:	62 f2 4d 48 b8 d0    	vfmadd231ps zmm2,zmm6,zmm0
  a1829f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a182a6:	03 
  a182a7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a182ae:	05 
  a182af:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp-0x80]
  a182b6:	fe 
  a182b7:	62 61 fd 40 14 6c 24 	vunpcklpd zmm29,zmm16,ZMMWORD PTR [rsp+0x40]
  a182be:	01 
  a182bf:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x8c0]
  a182c6:	23 
  a182c7:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x880]
  a182ce:	22 
  a182cf:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x840]
  a182d6:	21 
  a182d7:	62 a1 e5 48 14 d1    	vunpcklpd zmm18,zmm3,zmm17
  a182dd:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a182e3:	62 b2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm18
  a182e9:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a182ef:	62 92 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm29
  a182f5:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a182fc:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a18303:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a18309:	62 72 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm6
  a1830f:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm11
  a18316:	01 
  a18317:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a1831d:	62 f2 4d 48 bc d0    	vfnmadd231ps zmm2,zmm6,zmm0
  a18323:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a1832a:	05 
  a1832b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a18332:	ff 
  a18333:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a1833a:	1b 
  a1833b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x940]
  a18342:	25 
  a18343:	62 e1 fd 48 14 74 24 	vunpcklpd zmm22,zmm0,ZMMWORD PTR [rsp+0x900]
  a1834a:	24 
  a1834b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a18352:	0c 
  a18353:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x740]
  a1835a:	1d 
  a1835b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a18362:	1c 
  a18363:	62 f1 fd 48 14 d4    	vunpcklpd zmm2,zmm0,zmm4
  a18369:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a1836f:	62 f2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm2
  a18375:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a1837b:	62 b2 75 48 7f f6    	vpermt2ps zmm6,zmm1,zmm22
  a18381:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a18388:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a1838f:	62 c1 4c 48 59 c7    	vmulps zmm16,zmm6,zmm15
  a18395:	62 e2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm4
  a1839b:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm16
  a183a2:	ff 
  a183a3:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a183a9:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a183af:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a183b6:	fe 
  a183b7:	62 72 75 48 7f 4c 24 	vpermt2ps zmm9,zmm1,ZMMWORD PTR [rsp+0x580]
  a183be:	16 
  a183bf:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x800]
  a183c6:	20 
  a183c7:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a183ce:	1f 
  a183cf:	62 62 75 48 7f 64 24 	vpermt2ps zmm28,zmm1,ZMMWORD PTR [rsp+0x780]
  a183d6:	1e 
  a183d7:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x280]
  a183de:	0a 
  a183df:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x440]
  a183e6:	11 
  a183e7:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a183ee:	09 
  a183ef:	62 f2 75 48 7f 74 24 	vpermt2ps zmm6,zmm1,ZMMWORD PTR [rsp+0x400]
  a183f6:	10 
  a183f7:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x3c0]
  a183fe:	0f 
  a183ff:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x380]
  a18406:	0e 
  a18407:	62 62 75 48 7f 7c 24 	vpermt2ps zmm31,zmm1,ZMMWORD PTR [rsp+0x340]
  a1840e:	0d 
  a1840f:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a18416:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a1841d:	62 61 64 40 59 cb    	vmulps zmm25,zmm19,zmm3
  a18423:	62 62 35 48 bc c9    	vfnmadd231ps zmm25,zmm9,zmm1
  a18429:	62 61 34 48 59 c3    	vmulps zmm24,zmm9,zmm3
  a1842f:	62 22 75 48 b8 c3    	vfmadd231ps zmm24,zmm1,zmm19
  a18435:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a1843c:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a18443:	62 61 1c 40 59 f3    	vmulps zmm30,zmm28,zmm3
  a18449:	62 62 55 48 bc f1    	vfnmadd231ps zmm30,zmm5,zmm1
  a1844f:	62 e1 54 48 59 e3    	vmulps zmm20,zmm5,zmm3
  a18455:	62 82 75 48 b8 e4    	vfmadd231ps zmm20,zmm1,zmm28
  a1845b:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a18462:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a18469:	62 71 04 40 59 eb    	vmulps zmm13,zmm31,zmm3
  a1846f:	62 72 45 48 b8 e9    	vfmadd231ps zmm13,zmm7,zmm1
  a18475:	62 71 44 48 59 fb    	vmulps zmm15,zmm7,zmm3
  a1847b:	62 12 75 48 bc ff    	vfnmadd231ps zmm15,zmm1,zmm31
  a18481:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a18488:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a1848f:	62 71 4c 48 59 c3    	vmulps zmm8,zmm6,zmm3
  a18495:	62 72 5d 48 b8 c1    	vfmadd231ps zmm8,zmm4,zmm1
  a1849b:	62 e1 5c 48 59 c3    	vmulps zmm16,zmm4,zmm3
  a184a1:	62 e2 75 48 bc c6    	vfnmadd231ps zmm16,zmm1,zmm6
  a184a7:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x600]
  a184ae:	18 
  a184af:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a184b6:	17 
  a184b7:	62 22 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm23
  a184bd:	62 52 55 40 7f e2    	vpermt2ps zmm12,zmm21,zmm10
  a184c3:	62 82 55 40 7f cd    	vpermt2ps zmm17,zmm21,zmm29
  a184c9:	62 32 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm18
  a184cf:	62 32 55 40 7f de    	vpermt2ps zmm11,zmm21,zmm22
  a184d5:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a184db:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a184e2:	62 f2 55 40 7f 4c 24 	vpermt2ps zmm1,zmm21,ZMMWORD PTR [rsp+0x640]
  a184e9:	19 
  a184ea:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a184f1:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a184f8:	62 f1 7c 48 10 52 10 	vmovups zmm2,ZMMWORD PTR [rdx+0x400]
  a184ff:	62 e1 1c 48 59 f2    	vmulps zmm22,zmm12,zmm2
  a18505:	62 e2 2d 40 b8 f1    	vfmadd231ps zmm22,zmm26,zmm1
  a1850b:	62 e1 2c 40 59 d2    	vmulps zmm18,zmm26,zmm2
  a18511:	62 c2 75 48 bc d4    	vfnmadd231ps zmm18,zmm1,zmm12
  a18517:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a1851e:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a18525:	62 e1 7c 48 59 e9    	vmulps zmm21,zmm0,zmm1
  a1852b:	62 e2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm2
  a18531:	62 f1 24 48 59 d9    	vmulps zmm3,zmm11,zmm1
  a18537:	62 f2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm0
  a1853d:	62 f1 7c 48 10 52 19 	vmovups zmm2,ZMMWORD PTR [rdx+0x640]
  a18544:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a1854b:	62 e1 0c 48 59 d8    	vmulps zmm19,zmm14,zmm0
  a18551:	62 e2 75 40 bc da    	vfnmadd231ps zmm19,zmm17,zmm2
  a18557:	62 f1 74 40 59 c8    	vmulps zmm1,zmm17,zmm0
  a1855d:	62 d2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm14
  a18563:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x680]
  a1856a:	1a 
  a1856b:	62 f1 24 40 5c 54 24 	vsubps zmm2,zmm27,ZMMWORD PTR [rsp+0x100]
  a18572:	04 
  a18573:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a1857a:	ff 
  a1857b:	62 f1 7c 48 5c 64 24 	vsubps zmm4,zmm0,ZMMWORD PTR [rsp+0x40]
  a18582:	01 
  a18583:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a18589:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a18590:	07 
  a18591:	62 71 7c 48 5c 54 24 	vsubps zmm10,zmm0,ZMMWORD PTR [rsp+0xc0]
  a18598:	03 
  a18599:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a185a0:	05 
  a185a1:	62 61 7c 48 5c 54 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp-0x80]
  a185a8:	fe 
  a185a9:	62 72 7d 48 18 35 4d 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff65d14d]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a185b0:	d1 65 ff 
  a185b3:	62 11 2c 48 5c e2    	vsubps zmm12,zmm10,zmm26
  a185b9:	62 d1 1c 48 59 c6    	vmulps zmm0,zmm12,zmm14
  a185bf:	62 72 7d 48 18 1d 9b 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65d09b]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a185c6:	d0 65 ff 
  a185c9:	62 d2 35 48 b8 c3    	vfmadd231ps zmm0,zmm9,zmm11
  a185cf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a185d6:	0a 
  a185d7:	62 d1 1c 48 59 c3    	vmulps zmm0,zmm12,zmm11
  a185dd:	62 d2 0d 48 bc c1    	vfnmadd231ps zmm0,zmm14,zmm9
  a185e3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a185ea:	11 
  a185eb:	62 81 34 40 5c fe    	vsubps zmm23,zmm25,zmm30
  a185f1:	62 41 3c 48 5c e5    	vsubps zmm28,zmm8,zmm13
  a185f7:	62 11 44 40 5c cc    	vsubps zmm9,zmm23,zmm28
  a185fd:	62 21 3c 40 5c ec    	vsubps zmm29,zmm24,zmm20
  a18603:	62 21 04 48 5c f8    	vsubps zmm31,zmm15,zmm16
  a18609:	62 91 14 40 5c c7    	vsubps zmm0,zmm29,zmm31
  a1860f:	62 d1 7c 48 59 eb    	vmulps zmm5,zmm0,zmm11
  a18615:	62 d2 35 48 b8 ee    	vfmadd231ps zmm5,zmm9,zmm14
  a1861b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm5
  a18622:	09 
  a18623:	62 d1 34 48 59 eb    	vmulps zmm5,zmm9,zmm11
  a18629:	62 f2 0d 48 bc e8    	vfnmadd231ps zmm5,zmm14,zmm0
  a1862f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a18636:	10 
  a18637:	62 91 44 40 58 c4    	vaddps zmm0,zmm23,zmm28
  a1863d:	62 81 14 40 58 ff    	vaddps zmm23,zmm29,zmm31
  a18643:	62 f1 6c 48 58 e4    	vaddps zmm4,zmm2,zmm4
  a18649:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a1864f:	62 d1 2c 48 59 d3    	vmulps zmm2,zmm10,zmm11
  a18655:	62 d2 5d 48 b8 d6    	vfmadd231ps zmm2,zmm4,zmm14
  a1865b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a18662:	0f 
  a18663:	62 d1 2c 48 59 d6    	vmulps zmm2,zmm10,zmm14
  a18669:	62 f2 25 48 bc d4    	vfnmadd231ps zmm2,zmm11,zmm4
  a1866f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a18676:	0d 
  a18677:	62 d1 44 40 59 d6    	vmulps zmm2,zmm23,zmm14
  a1867d:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a18683:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm2
  a1868a:	0e 
  a1868b:	62 51 44 40 59 db    	vmulps zmm11,zmm23,zmm11
  a18691:	62 52 7d 48 bc de    	vfnmadd231ps zmm11,zmm0,zmm14
  a18697:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a1869e:	02 
  a1869f:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x200]
  a186a6:	08 
  a186a7:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a186ad:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x2c0]
  a186b4:	0b 
  a186b5:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x480]
  a186bc:	12 
  a186bd:	62 51 34 48 5c f2    	vsubps zmm14,zmm9,zmm10
  a186c3:	62 c1 7c 48 58 fe    	vaddps zmm23,zmm0,zmm14
  a186c9:	62 61 0c 48 5c f8    	vsubps zmm31,zmm14,zmm0
  a186cf:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a186d6:	06 
  a186d7:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a186de:	14 
  a186df:	62 71 7c 48 5c f2    	vsubps zmm14,zmm0,zmm2
  a186e5:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x540]
  a186ec:	15 
  a186ed:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x4c0]
  a186f4:	13 
  a186f5:	62 61 5c 48 5c d5    	vsubps zmm26,zmm4,zmm5
  a186fb:	62 01 0c 48 5c e2    	vsubps zmm28,zmm14,zmm26
  a18701:	62 51 2c 40 58 f6    	vaddps zmm14,zmm26,zmm14
  a18707:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm14
  a1870e:	0c 
  a1870f:	62 21 44 48 5c d6    	vsubps zmm26,zmm7,zmm22
  a18715:	62 e1 4c 40 58 f7    	vaddps zmm22,zmm22,zmm7
  a1871b:	62 61 64 48 5c e9    	vsubps zmm29,zmm3,zmm1
  a18721:	62 f1 64 48 58 f9    	vaddps zmm7,zmm3,zmm1
  a18727:	62 e1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm5
  a1872d:	62 51 4c 48 58 e4    	vaddps zmm12,zmm6,zmm12
  a18733:	62 b1 3c 40 58 dc    	vaddps zmm3,zmm24,zmm20
  a18739:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a18740:	02 
  a18741:	62 51 3c 48 58 f5    	vaddps zmm14,zmm8,zmm13
  a18747:	62 11 34 40 58 c6    	vaddps zmm8,zmm25,zmm30
  a1874d:	62 51 7c 40 58 ef    	vaddps zmm13,zmm16,zmm15
  a18753:	62 71 24 40 58 7c 24 	vaddps zmm15,zmm27,ZMMWORD PTR [rsp+0x100]
  a1875a:	04 
  a1875b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a18762:	fe 
  a18763:	62 e1 74 48 58 44 24 	vaddps zmm16,zmm1,ZMMWORD PTR [rsp+0x140]
  a1876a:	05 
  a1876b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a18772:	03 
  a18773:	62 e1 74 48 58 64 24 	vaddps zmm20,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a1877a:	07 
  a1877b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a18782:	ff 
  a18783:	62 61 74 48 58 44 24 	vaddps zmm24,zmm1,ZMMWORD PTR [rsp+0x40]
  a1878a:	01 
  a1878b:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a18792:	62 21 74 48 5c ca    	vsubps zmm25,zmm1,zmm18
  a18798:	62 a1 74 48 58 d2    	vaddps zmm18,zmm1,zmm18
  a1879e:	62 21 64 40 5c dd    	vsubps zmm27,zmm19,zmm21
  a187a4:	62 a1 54 40 58 db    	vaddps zmm19,zmm21,zmm19
  a187aa:	62 c1 34 48 58 ea    	vaddps zmm21,zmm9,zmm10
  a187b0:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a187b6:	62 b1 04 48 5c c8    	vsubps zmm1,zmm15,zmm16
  a187bc:	62 91 5c 40 5c c0    	vsubps zmm0,zmm20,zmm24
  a187c2:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a187c8:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a187ce:	62 d1 64 48 5c ce    	vsubps zmm1,zmm3,zmm14
  a187d4:	62 d1 3c 48 5c c5    	vsubps zmm0,zmm8,zmm13
  a187da:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a187e0:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a187e6:	62 f2 7d 48 18 0d ac 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65cbac]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a187ed:	cb 65 ff 
  a187f0:	62 61 1c 40 59 e1    	vmulps zmm28,zmm28,zmm1
  a187f6:	62 e1 44 40 59 f9    	vmulps zmm23,zmm23,zmm1
  a187fc:	62 f1 04 40 59 d1    	vmulps zmm2,zmm31,zmm1
  a18802:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x300]
  a18809:	0c 
  a1880a:	62 71 64 48 59 d1    	vmulps zmm10,zmm3,zmm1
  a18810:	62 f1 4c 48 59 d9    	vmulps zmm3,zmm6,zmm1
  a18816:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a1881c:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a18822:	62 91 2c 40 5c e3    	vsubps zmm4,zmm26,zmm27
  a18828:	62 01 24 40 58 fa    	vaddps zmm31,zmm27,zmm26
  a1882e:	62 61 6c 48 58 d8    	vaddps zmm27,zmm2,zmm0
  a18834:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a1883a:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a18840:	62 01 34 40 58 cd    	vaddps zmm25,zmm25,zmm29
  a18846:	62 21 1c 40 5c ef    	vsubps zmm29,zmm28,zmm23
  a1884c:	62 81 44 40 58 fc    	vaddps zmm23,zmm23,zmm28
  a18852:	62 61 4c 40 5c e7    	vsubps zmm28,zmm22,zmm7
  a18858:	62 31 44 48 58 ce    	vaddps zmm9,zmm7,zmm22
  a1885e:	62 81 54 40 5c f6    	vsubps zmm22,zmm21,zmm30
  a18864:	62 81 54 40 58 ee    	vaddps zmm21,zmm21,zmm30
  a1886a:	62 d1 3c 48 58 fd    	vaddps zmm7,zmm8,zmm13
  a18870:	62 21 04 48 58 f0    	vaddps zmm30,zmm15,zmm16
  a18876:	62 31 6c 40 5c fb    	vsubps zmm15,zmm18,zmm19
  a1887c:	62 a1 6c 40 58 c3    	vaddps zmm16,zmm18,zmm19
  a18882:	62 c1 74 40 5c d4    	vsubps zmm18,zmm17,zmm12
  a18888:	62 31 1c 48 58 e1    	vaddps zmm12,zmm12,zmm17
  a1888e:	62 81 5c 40 58 d8    	vaddps zmm19,zmm20,zmm24
  a18894:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x80]
  a1889b:	02 
  a1889c:	62 81 5c 48 5c cd    	vsubps zmm17,zmm4,zmm29
  a188a2:	62 f1 14 40 58 e4    	vaddps zmm4,zmm29,zmm4
  a188a8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a188af:	ff 
  a188b0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x440]
  a188b7:	11 
  a188b8:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x400]
  a188bf:	10 
  a188c0:	62 61 5c 48 5c d6    	vsubps zmm26,zmm4,zmm6
  a188c6:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a188cc:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a188d3:	fe 
  a188d4:	62 81 6c 48 5c e3    	vsubps zmm20,zmm2,zmm27
  a188da:	62 91 6c 48 58 d3    	vaddps zmm2,zmm2,zmm27
  a188e0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a188e7:	04 
  a188e8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a188ef:	0a 
  a188f0:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x240]
  a188f7:	09 
  a188f8:	62 61 6c 48 58 c4    	vaddps zmm24,zmm2,zmm4
  a188fe:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a18904:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a1890b:	03 
  a1890c:	62 21 1c 40 5c da    	vsubps zmm27,zmm28,zmm18
  a18912:	62 91 6c 40 58 d4    	vaddps zmm2,zmm18,zmm28
  a18918:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a1891f:	06 
  a18920:	62 61 54 48 58 e1    	vaddps zmm28,zmm5,zmm1
  a18926:	62 61 54 48 5c e9    	vsubps zmm29,zmm5,zmm1
  a1892c:	62 b1 04 48 5c f6    	vsubps zmm6,zmm15,zmm22
  a18932:	62 a1 04 48 58 d6    	vaddps zmm18,zmm15,zmm22
  a18938:	62 71 2c 48 5c fb    	vsubps zmm15,zmm10,zmm3
  a1893e:	62 51 64 48 58 ea    	vaddps zmm13,zmm3,zmm10
  a18944:	62 f1 04 40 5c e8    	vsubps zmm5,zmm31,zmm0
  a1894a:	62 11 7c 48 58 d7    	vaddps zmm10,zmm0,zmm31
  a18950:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a18957:	0d 
  a18958:	62 c1 7c 48 5c f3    	vsubps zmm22,zmm0,zmm11
  a1895e:	62 51 7c 48 58 db    	vaddps zmm11,zmm0,zmm11
  a18964:	62 b1 34 40 5c e7    	vsubps zmm4,zmm25,zmm23
  a1896a:	62 a1 34 40 58 ff    	vaddps zmm23,zmm25,zmm23
  a18970:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a18977:	0f 
  a18978:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a1897f:	0e 
  a18980:	62 61 74 48 5c c8    	vsubps zmm25,zmm1,zmm0
  a18986:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a1898c:	62 b1 34 48 5c dd    	vsubps zmm3,zmm9,zmm21
  a18992:	62 51 54 40 58 c9    	vaddps zmm9,zmm21,zmm9
  a18998:	62 d1 64 40 5c d6    	vsubps zmm2,zmm19,zmm14
  a1899e:	62 c1 64 40 58 ee    	vaddps zmm21,zmm19,zmm14
  a189a4:	62 d1 7c 40 5c cc    	vsubps zmm1,zmm16,zmm12
  a189aa:	62 c1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm12
  a189b0:	62 91 44 48 5c c6    	vsubps zmm0,zmm7,zmm30
  a189b6:	62 f1 0c 40 58 ff    	vaddps zmm7,zmm30,zmm7
  a189bc:	62 11 74 40 58 e0    	vaddps zmm12,zmm17,zmm24
  a189c2:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm12
  a189c9:	01 
  a189ca:	62 01 74 40 5c f8    	vsubps zmm31,zmm17,zmm24
  a189d0:	62 11 5c 40 5c e2    	vsubps zmm12,zmm20,zmm26
  a189d6:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm12
  a189dd:	05 
  a189de:	62 11 5c 40 58 e2    	vaddps zmm12,zmm20,zmm26
  a189e4:	62 51 24 40 5c f7    	vsubps zmm14,zmm27,zmm15
  a189ea:	62 71 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm14
  a189f1:	62 41 24 40 58 d7    	vaddps zmm26,zmm27,zmm15
  a189f7:	62 11 4c 48 5c f4    	vsubps zmm14,zmm6,zmm28
  a189fd:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm14
  a18a04:	07 
  a18a05:	62 11 4c 48 58 f4    	vaddps zmm14,zmm6,zmm28
  a18a0b:	62 01 54 48 5c d9    	vsubps zmm27,zmm5,zmm25
  a18a11:	62 81 54 48 58 d9    	vaddps zmm19,zmm5,zmm25
  a18a17:	62 b1 5c 48 5c f6    	vsubps zmm6,zmm4,zmm22
  a18a1d:	62 a1 5c 48 58 e6    	vaddps zmm20,zmm4,zmm22
  a18a23:	62 61 64 48 5c c8    	vsubps zmm25,zmm3,zmm0
  a18a29:	62 e1 64 48 58 c8    	vaddps zmm17,zmm3,zmm0
  a18a2f:	62 61 74 48 5c e2    	vsubps zmm28,zmm1,zmm2
  a18a35:	62 61 74 48 58 c2    	vaddps zmm24,zmm1,zmm2
  a18a3b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a18a42:	ff 
  a18a43:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a18a4a:	fe 
  a18a4b:	62 e1 7c 48 5c f1    	vsubps zmm22,zmm0,zmm1
  a18a51:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a18a57:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a18a5e:	04 
  a18a5f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a18a66:	03 
  a18a67:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a18a6d:	62 f1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm1
  a18a73:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a18a7a:	06 
  a18a7b:	62 01 7c 48 5c f5    	vsubps zmm30,zmm0,zmm29
  a18a81:	62 11 7c 48 58 fd    	vaddps zmm15,zmm0,zmm29
  a18a87:	62 41 6c 40 5c ed    	vsubps zmm29,zmm18,zmm13
  a18a8d:	62 d1 6c 40 58 c5    	vaddps zmm0,zmm18,zmm13
  a18a93:	62 d1 2c 48 5c e3    	vsubps zmm4,zmm10,zmm11
  a18a99:	62 51 2c 48 58 eb    	vaddps zmm13,zmm10,zmm11
  a18a9f:	62 51 44 40 5c d0    	vsubps zmm10,zmm23,zmm8
  a18aa5:	62 51 44 40 58 c0    	vaddps zmm8,zmm23,zmm8
  a18aab:	62 31 34 48 5c dd    	vsubps zmm11,zmm9,zmm21
  a18ab1:	62 a1 34 48 58 d5    	vaddps zmm18,zmm9,zmm21
  a18ab7:	62 71 7c 40 5c cf    	vsubps zmm9,zmm16,zmm7
  a18abd:	62 f1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm7
  a18ac3:	62 f1 7c 48 28 2d f3 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff676cf3]        # 8f7c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cc70>
  a18aca:	6c 67 ff 
  a18acd:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a18ad3:	62 e2 55 48 7f c7    	vpermt2ps zmm16,zmm5,zmm7
  a18ad9:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm16
  a18ae0:	fe 
  a18ae1:	62 e1 6c 40 15 c7    	vunpckhps zmm16,zmm18,zmm7
  a18ae7:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm16
  a18aee:	ff 
  a18aef:	62 e1 6c 40 14 c7    	vunpcklps zmm16,zmm18,zmm7
  a18af5:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm16
  a18afc:	04 
  a18afd:	62 e1 7c 28 28 3d f9 	vmovaps ymm23,YMMWORD PTR [rip+0xffffffffff676cf9]        # 8f800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ccb0>
  a18b04:	6c 67 ff 
  a18b07:	62 e2 45 40 7f d7    	vpermt2ps zmm18,zmm23,zmm7
  a18b0d:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a18b13:	62 d2 55 48 7f f8    	vpermt2ps zmm7,zmm5,zmm8
  a18b19:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm7
  a18b20:	06 
  a18b21:	62 d1 14 48 15 f8    	vunpckhps zmm7,zmm13,zmm8
  a18b27:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a18b2e:	03 
  a18b2f:	62 d1 14 48 14 f8    	vunpcklps zmm7,zmm13,zmm8
  a18b35:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a18b3c:	02 
  a18b3d:	62 52 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm8
  a18b43:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a18b49:	62 f2 55 48 7f f8    	vpermt2ps zmm7,zmm5,zmm0
  a18b4f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm7
  a18b56:	08 
  a18b57:	62 f1 04 48 15 f8    	vunpckhps zmm7,zmm15,zmm0
  a18b5d:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a18b64:	0b 
  a18b65:	62 f1 04 48 14 f8    	vunpcklps zmm7,zmm15,zmm0
  a18b6b:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a18b72:	15 
  a18b73:	62 72 45 40 7f f8    	vpermt2ps zmm15,zmm23,zmm0
  a18b79:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a18b7f:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a18b85:	62 f1 64 48 15 c1    	vunpckhps zmm0,zmm3,zmm1
  a18b8b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a18b92:	14 
  a18b93:	62 f1 64 48 14 c1    	vunpcklps zmm0,zmm3,zmm1
  a18b99:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a18ba0:	13 
  a18ba1:	62 f2 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm1
  a18ba7:	62 31 7c 48 28 c1    	vmovaps zmm8,zmm17
  a18bad:	62 12 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm24
  a18bb3:	62 91 74 40 15 c0    	vunpckhps zmm0,zmm17,zmm24
  a18bb9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a18bc0:	12 
  a18bc1:	62 91 74 40 14 c0    	vunpcklps zmm0,zmm17,zmm24
  a18bc7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a18bce:	0a 
  a18bcf:	62 82 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm24
  a18bd5:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a18bdb:	62 22 55 48 7f c4    	vpermt2ps zmm24,zmm5,zmm20
  a18be1:	62 b1 64 40 15 c4    	vunpckhps zmm0,zmm19,zmm20
  a18be7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a18bee:	11 
  a18bef:	62 b1 64 40 14 c4    	vunpcklps zmm0,zmm19,zmm20
  a18bf5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a18bfc:	09 
  a18bfd:	62 a2 45 40 7f dc    	vpermt2ps zmm19,zmm23,zmm20
  a18c03:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a18c09:	62 c2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm14
  a18c0f:	62 d1 2c 40 15 c6    	vunpckhps zmm0,zmm26,zmm14
  a18c15:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a18c1c:	10 
  a18c1d:	62 d1 2c 40 14 c6    	vunpcklps zmm0,zmm26,zmm14
  a18c23:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a18c2a:	0f 
  a18c2b:	62 42 45 40 7f d6    	vpermt2ps zmm26,zmm23,zmm14
  a18c31:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a18c37:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a18c3d:	62 d1 04 40 15 c4    	vunpckhps zmm0,zmm31,zmm12
  a18c43:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a18c4a:	0e 
  a18c4b:	62 d1 04 40 14 c4    	vunpcklps zmm0,zmm31,zmm12
  a18c51:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a18c58:	0d 
  a18c59:	62 42 45 40 7f fc    	vpermt2ps zmm31,zmm23,zmm12
  a18c5f:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a18c65:	62 52 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm9
  a18c6b:	62 d1 24 48 15 c1    	vunpckhps zmm0,zmm11,zmm9
  a18c71:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a18c78:	0c 
  a18c79:	62 d1 24 48 14 c1    	vunpcklps zmm0,zmm11,zmm9
  a18c7f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a18c86:	1d 
  a18c87:	62 52 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm9
  a18c8d:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a18c93:	62 52 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm10
  a18c99:	62 d1 5c 48 15 c2    	vunpckhps zmm0,zmm4,zmm10
  a18c9f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a18ca6:	1c 
  a18ca7:	62 d1 5c 48 14 c2    	vunpcklps zmm0,zmm4,zmm10
  a18cad:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a18cb4:	1b 
  a18cb5:	62 d2 45 40 7f e2    	vpermt2ps zmm4,zmm23,zmm10
  a18cbb:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a18cc1:	62 92 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm29
  a18cc7:	62 91 0c 40 15 cd    	vunpckhps zmm1,zmm30,zmm29
  a18ccd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm1
  a18cd4:	25 
  a18cd5:	62 91 0c 40 14 cd    	vunpcklps zmm1,zmm30,zmm29
  a18cdb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm1
  a18ce2:	24 
  a18ce3:	62 02 45 40 7f f5    	vpermt2ps zmm30,zmm23,zmm29
  a18ce9:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a18cef:	62 f2 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm2
  a18cf5:	62 71 4c 40 15 d2    	vunpckhps zmm10,zmm22,zmm2
  a18cfb:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm10
  a18d02:	1a 
  a18d03:	62 71 4c 40 14 d2    	vunpcklps zmm10,zmm22,zmm2
  a18d09:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm10
  a18d10:	19 
  a18d11:	62 e2 45 40 7f f2    	vpermt2ps zmm22,zmm23,zmm2
  a18d17:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a18d1d:	62 92 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm28
  a18d23:	62 11 34 40 15 d4    	vunpckhps zmm10,zmm25,zmm28
  a18d29:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm10
  a18d30:	23 
  a18d31:	62 11 34 40 14 d4    	vunpcklps zmm10,zmm25,zmm28
  a18d37:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm10
  a18d3e:	22 
  a18d3f:	62 02 45 40 7f cc    	vpermt2ps zmm25,zmm23,zmm28
  a18d45:	62 01 7c 48 28 eb    	vmovaps zmm29,zmm27
  a18d4b:	62 62 55 48 7f ee    	vpermt2ps zmm29,zmm5,zmm6
  a18d51:	62 71 24 40 15 d6    	vunpckhps zmm10,zmm27,zmm6
  a18d57:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm10
  a18d5e:	21 
  a18d5f:	62 71 24 40 14 d6    	vunpcklps zmm10,zmm27,zmm6
  a18d65:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm10
  a18d6c:	18 
  a18d6d:	62 62 45 40 7f de    	vpermt2ps zmm27,zmm23,zmm6
  a18d73:	62 f1 7c 48 10 34 24 	vmovups zmm6,ZMMWORD PTR [rsp]
  a18d7a:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a18d80:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x1c0]
  a18d87:	07 
  a18d88:	62 c2 55 48 7f ea    	vpermt2ps zmm21,zmm5,zmm10
  a18d8e:	62 c1 4c 48 15 c2    	vunpckhps zmm16,zmm6,zmm10
  a18d94:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm16
  a18d9b:	17 
  a18d9c:	62 c1 4c 48 14 c2    	vunpcklps zmm16,zmm6,zmm10
  a18da2:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm16
  a18da9:	16 
  a18daa:	62 d2 45 40 7f f2    	vpermt2ps zmm6,zmm23,zmm10
  a18db0:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a18db6:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x40]
  a18dbd:	01 
  a18dbe:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x140]
  a18dc5:	05 
  a18dc6:	62 d2 7d 40 77 ea    	vpermi2ps zmm5,zmm16,zmm10
  a18dcc:	62 d1 7c 40 15 f2    	vunpckhps zmm6,zmm16,zmm10
  a18dd2:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a18dd9:	62 d1 7c 40 14 f2    	vunpcklps zmm6,zmm16,zmm10
  a18ddf:	62 c2 45 40 7f c2    	vpermt2ps zmm16,zmm23,zmm10
  a18de5:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x80]
  a18dec:	fe 
  a18ded:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a18df3:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x100]
  a18dfa:	04 
  a18dfb:	62 73 7d 48 19 56 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm10,0x3
  a18e02:	03 
  a18e03:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a18e0a:	ff 
  a18e0b:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a18e12:	c5 78 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm10
  a18e17:	62 e1 7c 28 11 56 02 	vmovups YMMWORD PTR [rsi+0x40],ymm18
  a18e1e:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x180]
  a18e25:	06 
  a18e26:	62 71 7c 48 11 96 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm10
  a18e2d:	00 00 00 
  a18e30:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x80]
  a18e37:	02 
  a18e38:	62 73 7d 48 19 96 d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm10,0x3
  a18e3f:	00 00 00 03 
  a18e43:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0xc0]
  a18e4a:	03 
  a18e4b:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a18e52:	c5 78 13 96 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm10
  a18e59:	00 
  a18e5a:	c5 7c 11 ae b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm13
  a18e61:	00 
  a18e62:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x200]
  a18e69:	08 
  a18e6a:	62 71 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm10
  a18e71:	00 00 00 
  a18e74:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x540]
  a18e7b:	15 
  a18e7c:	62 73 7d 48 19 56 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm10,0x3
  a18e83:	03 
  a18e84:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x2c0]
  a18e8b:	0b 
  a18e8c:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a18e93:	c5 78 13 96 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm10
  a18e9a:	00 
  a18e9b:	c5 7c 11 be 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm15
  a18ea2:	00 
  a18ea3:	62 f1 7c 48 11 be 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm7
  a18eaa:	01 00 00 
  a18ead:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x4c0]
  a18eb4:	13 
  a18eb5:	62 f3 7d 48 19 be c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm7,0x3
  a18ebc:	01 00 00 03 
  a18ec0:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x500]
  a18ec7:	14 
  a18ec8:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a18ecf:	c5 f8 13 be d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm7
  a18ed6:	00 
  a18ed7:	c5 fc 11 9e a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm3
  a18ede:	00 
  a18edf:	62 71 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm8
  a18ee6:	01 00 00 
  a18ee9:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x280]
  a18ef0:	0a 
  a18ef1:	62 f3 7d 48 19 5e 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm3,0x3
  a18ef8:	03 
  a18ef9:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a18f00:	12 
  a18f01:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a18f08:	c5 f8 13 9e 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm3
  a18f0f:	00 
  a18f10:	62 e1 7c 28 11 4e 11 	vmovups YMMWORD PTR [rsi+0x220],ymm17
  a18f17:	62 61 7c 48 11 86 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm24
  a18f1e:	02 00 00 
  a18f21:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a18f28:	09 
  a18f29:	62 f3 7d 48 19 9e b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm3,0x3
  a18f30:	02 00 00 03 
  a18f34:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x440]
  a18f3b:	11 
  a18f3c:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a18f43:	c5 f8 13 9e c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm3
  a18f4a:	00 
  a18f4b:	62 e1 7c 28 11 9e 98 	vmovups YMMWORD PTR [rsi+0x298],ymm19
  a18f52:	02 00 00 
  a18f55:	62 e1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm20
  a18f5c:	02 00 00 
  a18f5f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x3c0]
  a18f66:	0f 
  a18f67:	62 f3 7d 48 19 5e 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm3,0x3
  a18f6e:	03 
  a18f6f:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x400]
  a18f76:	10 
  a18f77:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a18f7e:	c5 f8 13 9e 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm3
  a18f85:	00 
  a18f86:	62 61 7c 28 11 96 10 	vmovups YMMWORD PTR [rsi+0x310],ymm26
  a18f8d:	03 00 00 
  a18f90:	62 71 7c 48 11 b6 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm14
  a18f97:	03 00 00 
  a18f9a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a18fa1:	0d 
  a18fa2:	62 f3 7d 48 19 9e a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm3,0x3
  a18fa9:	03 00 00 03 
  a18fad:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x380]
  a18fb4:	0e 
  a18fb5:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a18fbc:	c5 f8 13 9e b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm3
  a18fc3:	00 
  a18fc4:	62 61 7c 28 11 be 88 	vmovups YMMWORD PTR [rsi+0x388],ymm31
  a18fcb:	03 00 00 
  a18fce:	62 71 7c 48 11 66 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm12
  a18fd5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x740]
  a18fdc:	1d 
  a18fdd:	62 f3 7d 48 19 5e 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm3,0x3
  a18fe4:	03 
  a18fe5:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x300]
  a18fec:	0c 
  a18fed:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a18ff4:	c5 f8 13 9e 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm3
  a18ffb:	00 
  a18ffc:	c5 7c 11 9e 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm11
  a19003:	00 
  a19004:	62 71 7c 48 11 8e 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm9
  a1900b:	04 00 00 
  a1900e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x6c0]
  a19015:	1b 
  a19016:	62 f3 7d 48 19 9e 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm3,0x3
  a1901d:	04 00 00 03 
  a19021:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x700]
  a19028:	1c 
  a19029:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a19030:	c5 f8 13 9e a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm3
  a19037:	00 
  a19038:	c5 fc 11 a6 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm4
  a1903f:	00 
  a19040:	62 f1 7c 48 11 86 b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm0
  a19047:	04 00 00 
  a1904a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x900]
  a19051:	24 
  a19052:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a19059:	03 
  a1905a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x940]
  a19061:	25 
  a19062:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a19069:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a19070:	00 
  a19071:	62 61 7c 28 11 b6 f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm30
  a19078:	04 00 00 
  a1907b:	62 f1 7c 48 11 8e 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm1
  a19082:	05 00 00 
  a19085:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x640]
  a1908c:	19 
  a1908d:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a19094:	05 00 00 03 
  a19098:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a1909f:	1a 
  a190a0:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a190a7:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a190ae:	00 
  a190af:	62 e1 7c 28 11 b6 68 	vmovups YMMWORD PTR [rsi+0x568],ymm22
  a190b6:	05 00 00 
  a190b9:	62 f1 7c 48 11 96 a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm2
  a190c0:	05 00 00 
  a190c3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x880]
  a190ca:	22 
  a190cb:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a190d2:	03 
  a190d3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x8c0]
  a190da:	23 
  a190db:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a190e2:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a190e9:	00 
  a190ea:	62 61 7c 28 11 4e 2f 	vmovups YMMWORD PTR [rsi+0x5e0],ymm25
  a190f1:	62 61 7c 48 11 ae 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm29
  a190f8:	06 00 00 
  a190fb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a19102:	18 
  a19103:	62 f3 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm0,0x3
  a1910a:	06 00 00 03 
  a1910e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x840]
  a19115:	21 
  a19116:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1911d:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a19124:	00 
  a19125:	62 61 7c 28 11 9e 58 	vmovups YMMWORD PTR [rsi+0x658],ymm27
  a1912c:	06 00 00 
  a1912f:	62 e1 7c 48 11 ae 90 	vmovups ZMMWORD PTR [rsi+0x690],zmm21
  a19136:	06 00 00 
  a19139:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a19140:	16 
  a19141:	62 f3 7d 48 19 46 6f 	vextractf32x4 XMMWORD PTR [rsi+0x6f0],zmm0,0x3
  a19148:	03 
  a19149:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a19150:	17 
  a19151:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a19158:	c5 f8 13 86 00 07 00 	vmovlps QWORD PTR [rsi+0x700],xmm0
  a1915f:	00 
  a19160:	62 61 7c 28 11 a6 d0 	vmovups YMMWORD PTR [rsi+0x6d0],ymm28
  a19167:	06 00 00 
  a1916a:	62 f1 7c 48 11 ae 08 	vmovups ZMMWORD PTR [rsi+0x708],zmm5
  a19171:	07 00 00 
  a19174:	62 f3 7d 48 19 b6 68 	vextractf32x4 XMMWORD PTR [rsi+0x768],zmm6,0x3
  a1917b:	07 00 00 03 
  a1917f:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a19186:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1918d:	c5 f8 13 86 78 07 00 	vmovlps QWORD PTR [rsi+0x778],xmm0
  a19194:	00 
  a19195:	62 e1 7c 28 11 86 48 	vmovups YMMWORD PTR [rsi+0x748],ymm16
  a1919c:	07 00 00 
  a1919f:	48 81 c4 88 0b 00 00 	add    rsp,0xb88
  a191a6:	c5 f8 77             	vzeroupper
  a191a9:	c3                   	ret
