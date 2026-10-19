
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac12c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac12c0:	c5 fc 10 47 28       	vmovups ymm0,YMMWORD PTR [rdi+0x28]
  ac12c5:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  ac12ca:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  ac12cf:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  ac12d5:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  ac12da:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  ac12df:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  ac12e4:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ac12ea:	c4 e2 7d 18 35 e1 3f 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5b3fe1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac12f1:	5b ff 
  ac12f3:	c5 ec 5c fd          	vsubps ymm7,ymm2,ymm5
  ac12f7:	c5 c4 59 fe          	vmulps ymm7,ymm7,ymm6
  ac12fb:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  ac1300:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  ac1306:	c5 e4 c6 cc dd       	vshufps ymm1,ymm3,ymm4,0xdd
  ac130b:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  ac1311:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  ac1315:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  ac1319:	c5 7b 10 47 20       	vmovsd xmm8,QWORD PTR [rdi+0x20]
  ac131e:	c4 41 5c c6 c8 dd    	vshufps ymm9,ymm4,ymm8,0xdd
  ac1324:	c4 62 7d 18 15 33 41 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5b4133]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac132b:	5b ff 
  ac132d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac1333:	c4 41 7c 28 da       	vmovaps ymm11,ymm10
  ac1338:	c4 42 65 ac d9       	vfnmadd213ps ymm11,ymm3,ymm9
  ac133d:	c5 24 58 e7          	vaddps ymm12,ymm11,ymm7
  ac1341:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  ac1345:	c4 c1 5c c6 e0 88    	vshufps ymm4,ymm4,ymm8,0x88
  ac134b:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  ac1351:	c4 62 6d ac d4       	vfnmadd213ps ymm10,ymm2,ymm4
  ac1356:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  ac135a:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  ac135e:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  ac1362:	c5 a4 5c ef          	vsubps ymm5,ymm11,ymm7
  ac1366:	c5 ac 58 c0          	vaddps ymm0,ymm10,ymm0
  ac136a:	c5 b4 58 f3          	vaddps ymm6,ymm9,ymm3
  ac136e:	c5 dc 58 d2          	vaddps ymm2,ymm4,ymm2
  ac1372:	c5 f8 28 da          	vmovaps xmm3,xmm2
  ac1376:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ac137c:	c5 f8 28 e0          	vmovaps xmm4,xmm0
  ac1380:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  ac1386:	c5 78 28 c1          	vmovaps xmm8,xmm1
  ac138a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ac1390:	c5 6d 14 c9          	vunpcklpd ymm9,ymm2,ymm1
  ac1394:	c4 c1 65 15 d0       	vunpckhpd ymm2,ymm3,ymm8
  ac1399:	c4 c1 65 14 d8       	vunpcklpd ymm3,ymm3,ymm8
  ac139e:	c5 7a 7e c0          	vmovq  xmm8,xmm0
  ac13a2:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  ac13a7:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  ac13ab:	c4 e3 45 0c f9 cc    	vblendps ymm7,ymm7,ymm1,0xcc
  ac13b1:	c4 c1 64 c6 c0 88    	vshufps ymm0,ymm3,ymm8,0x88
  ac13b7:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ac13bc:	c4 c1 64 c6 d8 dd    	vshufps ymm3,ymm3,ymm8,0xdd
  ac13c2:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  ac13c7:	c5 ec c6 dc 88       	vshufps ymm3,ymm2,ymm4,0x88
  ac13cc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac13d1:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  ac13d6:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac13db:	c5 b4 c6 e7 88       	vshufps ymm4,ymm9,ymm7,0x88
  ac13e0:	c5 dc c6 fc d8       	vshufps ymm7,ymm4,ymm4,0xd8
  ac13e5:	c5 f8 28 e6          	vmovaps xmm4,xmm6
  ac13e9:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ac13ef:	c5 78 28 cd          	vmovaps xmm9,xmm5
  ac13f3:	c4 c3 7d 19 ea 01    	vextractf128 xmm10,ymm5,0x1
  ac13f9:	c4 41 78 28 dc       	vmovaps xmm11,xmm12
  ac13fe:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac1404:	c4 c1 4d 14 f4       	vunpcklpd ymm6,ymm6,ymm12
  ac1409:	c4 41 5d 15 e3       	vunpckhpd ymm12,ymm4,ymm11
  ac140e:	c4 c1 5d 14 e3       	vunpcklpd ymm4,ymm4,ymm11
  ac1413:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  ac1417:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  ac141d:	c4 63 2d 0c d1 cc    	vblendps ymm10,ymm10,ymm1,0xcc
  ac1423:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  ac1428:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ac142d:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ac1432:	c5 dc c6 ec d8       	vshufps ymm5,ymm4,ymm4,0xd8
  ac1437:	c4 c1 1c c6 e1 88    	vshufps ymm4,ymm12,ymm9,0x88
  ac143d:	c5 5c c6 dc d8       	vshufps ymm11,ymm4,ymm4,0xd8
  ac1442:	c4 c1 1c c6 e1 dd    	vshufps ymm4,ymm12,ymm9,0xdd
  ac1448:	c5 5c c6 cc d8       	vshufps ymm9,ymm4,ymm4,0xd8
  ac144d:	c4 c1 4c c6 e2 88    	vshufps ymm4,ymm6,ymm10,0x88
  ac1453:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  ac1458:	c5 7c 10 52 40       	vmovups ymm10,YMMWORD PTR [rdx+0x40]
  ac145d:	c5 7c 10 62 60       	vmovups ymm12,YMMWORD PTR [rdx+0x60]
  ac1462:	c5 7c 10 aa 80 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0x80]
  ac1469:	00 
  ac146a:	c5 7c 10 b2 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xa0]
  ac1471:	00 
  ac1472:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  ac1479:	00 
  ac147a:	62 e1 7c 28 10 42 07 	vmovups ymm16,YMMWORD PTR [rdx+0xe0]
  ac1481:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  ac1488:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  ac148f:	62 c1 3c 28 59 da    	vmulps ymm19,ymm8,ymm10
  ac1495:	62 c2 55 28 bc dc    	vfnmadd231ps ymm19,ymm5,ymm12
  ac149b:	62 a1 44 28 59 e1    	vmulps ymm20,ymm7,ymm17
  ac14a1:	62 a2 4d 28 bc e2    	vfnmadd231ps ymm20,ymm6,ymm18
  ac14a7:	62 b1 64 20 58 e4    	vaddps ymm4,ymm19,ymm20
  ac14ad:	62 c1 64 28 59 ed    	vmulps ymm21,ymm3,ymm13
  ac14b3:	62 c2 25 28 bc ee    	vfnmadd231ps ymm21,ymm11,ymm14
  ac14b9:	62 c1 6c 28 59 f7    	vmulps ymm22,ymm2,ymm15
  ac14bf:	62 a2 35 28 bc f0    	vfnmadd231ps ymm22,ymm9,ymm16
  ac14c5:	62 a1 54 20 58 fe    	vaddps ymm23,ymm21,ymm22
  ac14cb:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  ac14cf:	c4 c2 3d b8 ec       	vfmadd231ps ymm5,ymm8,ymm12
  ac14d4:	62 b1 4c 28 59 f1    	vmulps ymm6,ymm6,ymm17
  ac14da:	62 b2 45 28 b8 f2    	vfmadd231ps ymm6,ymm7,ymm18
  ac14e0:	c5 d4 58 fe          	vaddps ymm7,ymm5,ymm6
  ac14e4:	c4 41 24 59 c5       	vmulps ymm8,ymm11,ymm13
  ac14e9:	c4 42 65 b8 c6       	vfmadd231ps ymm8,ymm3,ymm14
  ac14ee:	c4 c1 34 59 df       	vmulps ymm3,ymm9,ymm15
  ac14f3:	62 b2 6d 28 b8 d8    	vfmadd231ps ymm3,ymm2,ymm16
  ac14f9:	c5 3c 58 cb          	vaddps ymm9,ymm8,ymm3
  ac14fd:	c4 62 7d 18 15 e2 41 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5b41e2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ac1504:	5b ff 
  ac1506:	c5 7c 29 d2          	vmovaps ymm2,ymm10
  ac150a:	c4 e2 5d a8 d0       	vfmadd213ps ymm2,ymm4,ymm0
  ac150f:	c4 62 7d 18 1d 2c 41 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff5b412c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  ac1516:	5b ff 
  ac1518:	62 d2 45 20 bc d3    	vfnmadd231ps ymm2,ymm23,ymm11
  ac151e:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  ac1522:	c5 bc 5c f3          	vsubps ymm6,ymm8,ymm3
  ac1526:	c4 62 7d 18 05 29 42 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5b4229]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ac152d:	5b ff 
  ac152f:	c5 bc 59 de          	vmulps ymm3,ymm8,ymm6
  ac1533:	c4 62 7d 18 25 64 3e 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff5b3e64]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ac153a:	5b ff 
  ac153c:	c4 c2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm12
  ac1541:	c4 41 7c 28 ea       	vmovaps ymm13,ymm10
  ac1546:	c4 62 45 a8 e9       	vfmadd213ps ymm13,ymm7,ymm1
  ac154b:	c4 42 35 bc eb       	vfnmadd231ps ymm13,ymm9,ymm11
  ac1550:	62 31 64 20 5c f4    	vsubps ymm14,ymm19,ymm20
  ac1556:	62 31 54 20 5c fe    	vsubps ymm15,ymm21,ymm22
  ac155c:	62 c1 04 28 59 c0    	vmulps ymm16,ymm15,ymm8
  ac1562:	62 c2 0d 28 b8 c4    	vfmadd231ps ymm16,ymm14,ymm12
  ac1568:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  ac156e:	62 c1 7c 28 28 d3    	vmovaps ymm18,ymm11
  ac1574:	62 e2 5d 28 ac d0    	vfnmadd213ps ymm18,ymm4,ymm0
  ac157a:	62 c2 45 20 b8 d2    	vfmadd231ps ymm18,ymm23,ymm10
  ac1580:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  ac1584:	c4 e2 1d bc ee       	vfnmadd231ps ymm5,ymm12,ymm6
  ac1589:	c4 62 45 ac d9       	vfnmadd213ps ymm11,ymm7,ymm1
  ac158e:	c4 42 35 b8 da       	vfmadd231ps ymm11,ymm9,ymm10
  ac1593:	c4 c1 0c 59 f0       	vmulps ymm6,ymm14,ymm8
  ac1598:	c4 c2 05 bc f4       	vfnmadd231ps ymm6,ymm15,ymm12
  ac159d:	c5 24 5c c6          	vsubps ymm8,ymm11,ymm6
  ac15a1:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  ac15a5:	62 31 14 28 58 d0    	vaddps ymm10,ymm13,ymm16
  ac15ab:	c5 c4 58 c9          	vaddps ymm1,ymm7,ymm1
  ac15af:	c5 b4 58 c9          	vaddps ymm1,ymm9,ymm1
  ac15b3:	c5 f8 58 c4          	vaddps xmm0,xmm0,xmm4
  ac15b7:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  ac15bd:	c5 fc 28 25 fb 6c 5b 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5b6cfb]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac15c4:	ff 
  ac15c5:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  ac15cb:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ac15d1:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  ac15d6:	c5 f8 11 06          	vmovups XMMWORD PTR [rsi],xmm0
  ac15da:	c5 e8 58 c3          	vaddps xmm0,xmm2,xmm3
  ac15de:	62 b2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm17
  ac15e4:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  ac15e9:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac15ef:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  ac15f4:	62 f1 6c 00 58 c5    	vaddps xmm0,xmm18,xmm5
  ac15fa:	62 d2 5d 28 7f c0    	vpermt2ps ymm0,ymm4,ymm8
  ac1600:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  ac1605:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac160b:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  ac1610:	62 f1 6c 00 5c c5    	vsubps xmm0,xmm18,xmm5
  ac1616:	62 f2 5d 28 7f c6    	vpermt2ps ymm0,ymm4,ymm6
  ac161c:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  ac1621:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac1627:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  ac162c:	c5 e8 5c c3          	vsubps xmm0,xmm2,xmm3
  ac1630:	62 d2 5d 28 7f c2    	vpermt2ps ymm0,ymm4,ymm10
  ac1636:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  ac163b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac1641:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  ac1646:	c5 f8 77             	vzeroupper
  ac1649:	c3                   	ret
