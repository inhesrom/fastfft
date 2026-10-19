
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad12c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad12c0:	55                   	push   rbp
  ad12c1:	48 89 e5             	mov    rbp,rsp
  ad12c4:	53                   	push   rbx
  ad12c5:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ad12c9:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ad12d0:	31 c0                	xor    eax,eax
  ad12d2:	c4 e2 7d 19 05 05 3b 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff5a3b05]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22c0>
  ad12d9:	5a ff 
  ad12db:	c4 e2 7d 18 25 78 40 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5a4078]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ad12e2:	5a ff 
  ad12e4:	c4 e2 7d 19 15 c3 37 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5a37c3]        # 74ab0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f90>
  ad12eb:	5a ff 
  ad12ed:	c4 e2 7d 18 1d 46 41 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5a4146]        # 7543c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x291c>
  ad12f4:	5a ff 
  ad12f6:	c4 e2 7d 18 2d dd 3f 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff5a3fdd]        # 752dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27bc>
  ad12fd:	5a ff 
  ad12ff:	49 89 f8             	mov    r8,rdi
  ad1302:	e9 d2 04 00 00       	jmp    ad17d9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x519>
  ad1307:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  ad130e:	00 00 
  ad1310:	48 ff c0             	inc    rax
  ad1313:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  ad131a:	00 00 
  ad131c:	c5 7c 28 8c 24 00 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x100]
  ad1323:	00 00 
  ad1325:	c5 7c 28 94 24 80 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x180]
  ad132c:	00 00 
  ad132e:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad1333:	c5 cc 59 31          	vmulps ymm6,ymm6,YMMWORD PTR [rcx]
  ad1337:	c4 e2 25 b8 71 20    	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x20]
  ad133d:	c5 34 59 59 40       	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x40]
  ad1342:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad1348:	c4 62 35 b8 59 60    	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x60]
  ad134e:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad1354:	c5 2c 59 91 80 00 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x80]
  ad135b:	00 
  ad135c:	c4 62 35 b8 91 a0 00 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0xa0]
  ad1363:	00 00 
  ad1365:	c5 7c 28 0c 24       	vmovaps ymm9,YMMWORD PTR [rsp]
  ad136a:	c5 7c 28 a4 24 00 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x200]
  ad1371:	00 00 
  ad1373:	c5 1c 59 a9 c0 00 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0xc0]
  ad137a:	00 
  ad137b:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad1381:	c4 62 1d b8 a9 e0 00 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0xe0]
  ad1388:	00 00 
  ad138a:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad138e:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad1393:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad1398:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad139d:	c4 e2 7d 18 0d 02 43 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a4302]        # 756a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  ad13a4:	5a ff 
  ad13a6:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad13aa:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad13af:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad13b4:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad13b8:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad13bd:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad13c2:	c4 e2 7d 18 3d 95 3f 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a3f95]        # 75360 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  ad13c9:	5a ff 
  ad13cb:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad13cf:	c4 62 7d 18 05 40 43 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5a4340]        # 75718 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  ad13d6:	5a ff 
  ad13d8:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad13dd:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad13e3:	62 e1 7c 28 28 05 93 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff5a7193]        # 78580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a60>
  ad13ea:	71 5a ff 
  ad13ed:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad13f3:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad13f7:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad13fc:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad1401:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad1407:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad140c:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad1411:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad1416:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad141a:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad141e:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad1423:	c4 21 7c 11 0c 8e    	vmovups YMMWORD PTR [rsi+r9*4],ymm9
  ad1429:	c4 21 7c 11 94 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x80],ymm10
  ad1430:	00 00 00 
  ad1433:	c4 21 7c 11 a4 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x100],ymm12
  ad143a:	01 00 00 
  ad143d:	c4 a1 7c 11 b4 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x180],ymm6
  ad1444:	01 00 00 
  ad1447:	c4 21 7c 11 9c 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x200],ymm11
  ad144e:	02 00 00 
  ad1451:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ad1458:	00 00 
  ad145a:	c5 7c 28 8c 24 20 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x120]
  ad1461:	00 00 
  ad1463:	c5 4c 59 91 00 01 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x100]
  ad146a:	00 
  ad146b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad1470:	c4 62 4d b8 91 20 01 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x120]
  ad1477:	00 00 
  ad1479:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad147f:	c5 34 59 89 40 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x140]
  ad1486:	00 
  ad1487:	c4 62 4d b8 89 60 01 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x160]
  ad148e:	00 00 
  ad1490:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ad1497:	00 00 
  ad1499:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad149e:	c5 cc 59 b1 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x180]
  ad14a5:	00 
  ad14a6:	c4 e2 25 b8 b1 a0 01 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x1a0]
  ad14ad:	00 00 
  ad14af:	c5 7c 28 9c 24 20 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x220]
  ad14b6:	00 00 
  ad14b8:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad14be:	c5 24 59 99 c0 01 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x1c0]
  ad14c5:	00 
  ad14c6:	c4 62 1d b8 99 e0 01 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x1e0]
  ad14cd:	00 00 
  ad14cf:	c5 7c 28 64 24 20    	vmovaps ymm12,YMMWORD PTR [rsp+0x20]
  ad14d5:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad14da:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad14de:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad14e3:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad14e7:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad14eb:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad14f0:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad14f5:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad14f9:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad14fe:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad1503:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad1507:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad150c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad1512:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad1518:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad151d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad1522:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad1528:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad152e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad1533:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad1538:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad153d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad1541:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad1545:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad154a:	c4 21 7c 11 54 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x20],ymm10
  ad1551:	c4 21 7c 11 a4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0xa0],ymm12
  ad1558:	00 00 00 
  ad155b:	c4 21 7c 11 ac 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x120],ymm13
  ad1562:	01 00 00 
  ad1565:	c4 a1 7c 11 b4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0x1a0],ymm6
  ad156c:	01 00 00 
  ad156f:	c4 21 7c 11 8c 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x220],ymm9
  ad1576:	02 00 00 
  ad1579:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ad1580:	00 00 
  ad1582:	c5 7c 28 8c 24 40 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x140]
  ad1589:	00 00 
  ad158b:	c5 7c 28 94 24 c0 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x1c0]
  ad1592:	00 00 
  ad1594:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad1599:	c5 cc 59 b1 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x200]
  ad15a0:	00 
  ad15a1:	c4 e2 25 b8 b1 20 02 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x220]
  ad15a8:	00 00 
  ad15aa:	c5 34 59 99 40 02 00 	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x240]
  ad15b1:	00 
  ad15b2:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad15b8:	c4 62 35 b8 99 60 02 	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x260]
  ad15bf:	00 00 
  ad15c1:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad15c7:	c5 2c 59 91 80 02 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x280]
  ad15ce:	00 
  ad15cf:	c4 62 35 b8 91 a0 02 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0x2a0]
  ad15d6:	00 00 
  ad15d8:	c5 7c 28 4c 24 40    	vmovaps ymm9,YMMWORD PTR [rsp+0x40]
  ad15de:	c5 7c 28 a4 24 40 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x240]
  ad15e5:	00 00 
  ad15e7:	c5 1c 59 a9 c0 02 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0x2c0]
  ad15ee:	00 
  ad15ef:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad15f5:	c4 62 1d b8 a9 e0 02 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0x2e0]
  ad15fc:	00 00 
  ad15fe:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad1602:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad1607:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad160c:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad1611:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad1615:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad161a:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad161f:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad1623:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad1628:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad162d:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad1631:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad1636:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad163c:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad1642:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad1646:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad164b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad1650:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad1656:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad165b:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad1660:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad1665:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad1669:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad166d:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad1672:	c4 21 7c 11 4c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x40],ymm9
  ad1679:	c4 21 7c 11 94 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0xc0],ymm10
  ad1680:	00 00 00 
  ad1683:	c4 21 7c 11 a4 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x140],ymm12
  ad168a:	01 00 00 
  ad168d:	c4 a1 7c 11 b4 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0x1c0],ymm6
  ad1694:	01 00 00 
  ad1697:	c4 21 7c 11 9c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x240],ymm11
  ad169e:	02 00 00 
  ad16a1:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ad16a8:	00 00 
  ad16aa:	c5 7c 28 8c 24 60 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x160]
  ad16b1:	00 00 
  ad16b3:	c5 4c 59 91 00 03 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x300]
  ad16ba:	00 
  ad16bb:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad16c0:	c4 62 4d b8 91 20 03 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x320]
  ad16c7:	00 00 
  ad16c9:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad16cf:	c5 34 59 89 40 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x340]
  ad16d6:	00 
  ad16d7:	c4 62 4d b8 89 60 03 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x360]
  ad16de:	00 00 
  ad16e0:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ad16e7:	00 00 
  ad16e9:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad16ee:	c5 cc 59 b1 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x380]
  ad16f5:	00 
  ad16f6:	c4 e2 25 b8 b1 a0 03 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x3a0]
  ad16fd:	00 00 
  ad16ff:	c5 7c 28 9c 24 60 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x260]
  ad1706:	00 00 
  ad1708:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad170e:	c5 24 59 99 c0 03 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x3c0]
  ad1715:	00 
  ad1716:	c4 62 1d b8 99 e0 03 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x3e0]
  ad171d:	00 00 
  ad171f:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  ad1725:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad172a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad172e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad1733:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad1737:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad173b:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad1740:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad1745:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad1749:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad174e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad1753:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad1757:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad175c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad1762:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad1768:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad176d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad1772:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad1778:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad177e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad1783:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad1788:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad178d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad1791:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad1795:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad179a:	c4 21 7c 11 54 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x60],ymm10
  ad17a1:	c4 21 7c 11 a4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0xe0],ymm12
  ad17a8:	00 00 00 
  ad17ab:	c4 21 7c 11 ac 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x160],ymm13
  ad17b2:	01 00 00 
  ad17b5:	c4 a1 7c 11 b4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0x1e0],ymm6
  ad17bc:	01 00 00 
  ad17bf:	c4 21 7c 11 8c 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x260],ymm9
  ad17c6:	02 00 00 
  ad17c9:	49 81 c0 80 02 00 00 	add    r8,0x280
  ad17d0:	48 39 d0             	cmp    rax,rdx
  ad17d3:	0f 84 b7 05 00 00    	je     ad1d90 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xad0>
  ad17d9:	49 89 c1             	mov    r9,rax
  ad17dc:	49 c1 e1 05          	shl    r9,0x5
  ad17e0:	4f 8d 0c 89          	lea    r9,[r9+r9*4]
  ad17e4:	c5 7c 10 89 00 04 00 	vmovups ymm9,YMMWORD PTR [rcx+0x400]
  ad17eb:	00 
  ad17ec:	c5 7c 10 91 20 04 00 	vmovups ymm10,YMMWORD PTR [rcx+0x420]
  ad17f3:	00 
  ad17f4:	c5 7c 10 99 40 04 00 	vmovups ymm11,YMMWORD PTR [rcx+0x440]
  ad17fb:	00 
  ad17fc:	c5 7c 10 a1 60 04 00 	vmovups ymm12,YMMWORD PTR [rcx+0x460]
  ad1803:	00 
  ad1804:	c5 7c 10 a9 a0 04 00 	vmovups ymm13,YMMWORD PTR [rcx+0x4a0]
  ad180b:	00 
  ad180c:	c5 7c 10 b1 80 04 00 	vmovups ymm14,YMMWORD PTR [rcx+0x480]
  ad1813:	00 
  ad1814:	45 31 d2             	xor    r10d,r10d
  ad1817:	4d 89 c3             	mov    r11,r8
  ad181a:	31 db                	xor    ebx,ebx
  ad181c:	eb 65                	jmp    ad1883 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5c3>
  ad181e:	66 90                	xchg   ax,ax
  ad1820:	62 91 44 00 16 f0    	vmovlhps xmm6,xmm23,xmm24
  ad1826:	62 81 34 00 16 fb    	vmovlhps xmm23,xmm25,xmm27
  ad182c:	62 a1 7c 08 29 7c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x30],xmm23
  ad1833:	03 
  ad1834:	c4 a1 78 29 74 d4 20 	vmovaps XMMWORD PTR [rsp+r10*8+0x20],xmm6
  ad183b:	62 b1 64 00 16 f4    	vmovlhps xmm6,xmm19,xmm20
  ad1841:	62 a1 4c 00 16 dd    	vmovlhps xmm19,xmm22,xmm21
  ad1847:	62 a1 7c 08 29 5c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x50],xmm19
  ad184e:	05 
  ad184f:	c4 a1 78 29 74 d4 40 	vmovaps XMMWORD PTR [rsp+r10*8+0x40],xmm6
  ad1856:	62 b1 6c 00 16 f0    	vmovlhps xmm6,xmm18,xmm16
  ad185c:	62 51 74 00 16 ff    	vmovlhps xmm15,xmm17,xmm15
  ad1862:	c4 21 78 29 7c d4 70 	vmovaps XMMWORD PTR [rsp+r10*8+0x70],xmm15
  ad1869:	c4 a1 78 29 74 d4 60 	vmovaps XMMWORD PTR [rsp+r10*8+0x60],xmm6
  ad1870:	49 83 c2 40          	add    r10,0x40
  ad1874:	49 83 c3 20          	add    r11,0x20
  ad1878:	f6 c3 01             	test   bl,0x1
  ad187b:	b3 01                	mov    bl,0x1
  ad187d:	0f 85 8d fa ff ff    	jne    ad1310 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ad1883:	4d 85 d2             	test   r10,r10
  ad1886:	74 78                	je     ad1900 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x640>
  ad1888:	62 c1 ff 08 10 23    	vmovsd xmm20,QWORD PTR [r11]
  ad188e:	62 c1 ff 08 10 5b 05 	vmovsd xmm19,QWORD PTR [r11+0x28]
  ad1895:	c4 41 7b 10 7b 50    	vmovsd xmm15,QWORD PTR [r11+0x50]
  ad189b:	62 c1 ff 08 10 4b 0f 	vmovsd xmm17,QWORD PTR [r11+0x78]
  ad18a2:	62 41 ff 08 10 4b 14 	vmovsd xmm25,QWORD PTR [r11+0xa0]
  ad18a9:	62 c1 ff 08 10 73 19 	vmovsd xmm22,QWORD PTR [r11+0xc8]
  ad18b0:	62 c1 ff 08 10 43 1e 	vmovsd xmm16,QWORD PTR [r11+0xf0]
  ad18b7:	62 c1 ff 08 10 53 23 	vmovsd xmm18,QWORD PTR [r11+0x118]
  ad18be:	62 41 ff 08 10 63 28 	vmovsd xmm28,QWORD PTR [r11+0x140]
  ad18c5:	62 41 ff 08 10 53 2d 	vmovsd xmm26,QWORD PTR [r11+0x168]
  ad18cc:	62 c1 ff 08 10 7b 32 	vmovsd xmm23,QWORD PTR [r11+0x190]
  ad18d3:	62 c1 ff 08 10 6b 37 	vmovsd xmm21,QWORD PTR [r11+0x1b8]
  ad18da:	62 41 ff 08 10 73 3c 	vmovsd xmm30,QWORD PTR [r11+0x1e0]
  ad18e1:	62 41 ff 08 10 6b 41 	vmovsd xmm29,QWORD PTR [r11+0x208]
  ad18e8:	62 41 ff 08 10 5b 46 	vmovsd xmm27,QWORD PTR [r11+0x230]
  ad18ef:	62 41 ff 08 10 43 4b 	vmovsd xmm24,QWORD PTR [r11+0x258]
  ad18f6:	e9 a1 00 00 00       	jmp    ad199c <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x6dc>
  ad18fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  ad1900:	62 c1 7c 28 10 23    	vmovups ymm20,YMMWORD PTR [r11]
  ad1906:	62 c1 7c 28 10 8b 78 	vmovups ymm17,YMMWORD PTR [r11+0x78]
  ad190d:	00 00 00 
  ad1910:	62 c1 7c 28 10 83 f0 	vmovups ymm16,YMMWORD PTR [r11+0xf0]
  ad1917:	00 00 00 
  ad191a:	62 a1 7c 28 10 9c 8f 	vmovups ymm19,YMMWORD PTR [rdi+r9*4+0x28]
  ad1921:	28 00 00 00 
  ad1925:	c4 21 7c 10 7c 8f 50 	vmovups ymm15,YMMWORD PTR [rdi+r9*4+0x50]
  ad192c:	62 21 7c 28 10 4c 8f 	vmovups ymm25,YMMWORD PTR [rdi+r9*4+0xa0]
  ad1933:	05 
  ad1934:	62 a1 7c 28 10 b4 8f 	vmovups ymm22,YMMWORD PTR [rdi+r9*4+0xc8]
  ad193b:	c8 00 00 00 
  ad193f:	62 a1 7c 28 10 94 8f 	vmovups ymm18,YMMWORD PTR [rdi+r9*4+0x118]
  ad1946:	18 01 00 00 
  ad194a:	62 21 7c 28 10 64 8f 	vmovups ymm28,YMMWORD PTR [rdi+r9*4+0x140]
  ad1951:	0a 
  ad1952:	62 21 7c 28 10 94 8f 	vmovups ymm26,YMMWORD PTR [rdi+r9*4+0x168]
  ad1959:	68 01 00 00 
  ad195d:	62 a1 7c 28 10 bc 8f 	vmovups ymm23,YMMWORD PTR [rdi+r9*4+0x190]
  ad1964:	90 01 00 00 
  ad1968:	62 a1 7c 28 10 ac 8f 	vmovups ymm21,YMMWORD PTR [rdi+r9*4+0x1b8]
  ad196f:	b8 01 00 00 
  ad1973:	62 21 7c 28 10 74 8f 	vmovups ymm30,YMMWORD PTR [rdi+r9*4+0x1e0]
  ad197a:	0f 
  ad197b:	62 21 7c 28 10 ac 8f 	vmovups ymm29,YMMWORD PTR [rdi+r9*4+0x208]
  ad1982:	08 02 00 00 
  ad1986:	62 21 7c 28 10 9c 8f 	vmovups ymm27,YMMWORD PTR [rdi+r9*4+0x230]
  ad198d:	30 02 00 00 
  ad1991:	62 21 7c 28 10 84 8f 	vmovups ymm24,YMMWORD PTR [rdi+r9*4+0x258]
  ad1998:	58 02 00 00 
  ad199c:	62 91 5c 20 58 f4    	vaddps ymm6,ymm20,ymm28
  ad19a2:	62 01 5c 20 5c fc    	vsubps ymm31,ymm20,ymm28
  ad19a8:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  ad19ae:	62 81 34 20 5c e6    	vsubps ymm20,ymm25,ymm30
  ad19b4:	62 a1 5c 20 c6 e4 b1 	vshufps ymm20,ymm20,ymm20,0xb1
  ad19bb:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  ad19c1:	62 02 5d 20 a8 e7    	vfmadd213ps ymm28,ymm20,ymm31
  ad19c7:	62 82 7d 28 ac e7    	vfnmadd213ps ymm20,ymm0,ymm31
  ad19cd:	62 61 4c 28 58 f7    	vaddps ymm30,ymm6,ymm7
  ad19d3:	62 61 4c 28 5c cf    	vsubps ymm25,ymm6,ymm7
  ad19d9:	62 91 64 20 58 f2    	vaddps ymm6,ymm19,ymm26
  ad19df:	62 91 64 20 5c fa    	vsubps ymm7,ymm19,ymm26
  ad19e5:	62 01 4c 20 58 d5    	vaddps ymm26,ymm22,ymm29
  ad19eb:	62 81 4c 20 5c dd    	vsubps ymm19,ymm22,ymm29
  ad19f1:	62 a1 64 20 c6 f3 b1 	vshufps ymm22,ymm19,ymm19,0xb1
  ad19f8:	62 61 7c 28 28 e8    	vmovaps ymm29,ymm0
  ad19fe:	62 62 4d 20 a8 ef    	vfmadd213ps ymm29,ymm22,ymm7
  ad1a04:	62 e2 7d 28 ac f7    	vfnmadd213ps ymm22,ymm0,ymm7
  ad1a0a:	62 81 4c 28 58 da    	vaddps ymm19,ymm6,ymm26
  ad1a10:	62 91 4c 28 5c f2    	vsubps ymm6,ymm6,ymm26
  ad1a16:	62 b1 04 28 58 ff    	vaddps ymm7,ymm15,ymm23
  ad1a1c:	62 a1 04 28 5c ff    	vsubps ymm23,ymm15,ymm23
  ad1a22:	62 01 7c 20 58 d3    	vaddps ymm26,ymm16,ymm27
  ad1a28:	62 11 7c 20 5c fb    	vsubps ymm15,ymm16,ymm27
  ad1a2e:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad1a34:	62 e1 7c 28 28 c0    	vmovaps ymm16,ymm0
  ad1a3a:	62 a2 05 28 a8 c7    	vfmadd213ps ymm16,ymm15,ymm23
  ad1a40:	62 32 7d 28 ac ff    	vfnmadd213ps ymm15,ymm0,ymm23
  ad1a46:	62 81 44 28 58 fa    	vaddps ymm23,ymm7,ymm26
  ad1a4c:	62 91 44 28 5c fa    	vsubps ymm7,ymm7,ymm26
  ad1a52:	62 21 74 20 58 d5    	vaddps ymm26,ymm17,ymm21
  ad1a58:	62 a1 74 20 5c cd    	vsubps ymm17,ymm17,ymm21
  ad1a5e:	62 81 6c 20 58 e8    	vaddps ymm21,ymm18,ymm24
  ad1a64:	62 81 6c 20 5c d0    	vsubps ymm18,ymm18,ymm24
  ad1a6a:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad1a71:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad1a77:	62 22 6d 20 a8 c1    	vfmadd213ps ymm24,ymm18,ymm17
  ad1a7d:	62 a2 7d 28 ac d1    	vfnmadd213ps ymm18,ymm0,ymm17
  ad1a83:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  ad1a89:	62 a1 2c 20 5c cd    	vsubps ymm17,ymm26,ymm21
  ad1a8f:	62 81 14 20 c6 ed b1 	vshufps ymm21,ymm29,ymm29,0xb1
  ad1a96:	62 41 14 20 59 e9    	vmulps ymm29,ymm29,ymm9
  ad1a9c:	62 22 2d 28 b8 ed    	vfmadd231ps ymm29,ymm10,ymm21
  ad1aa2:	62 e1 4c 28 c6 ee b1 	vshufps ymm21,ymm6,ymm6,0xb1
  ad1aa9:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  ad1aad:	62 b2 6d 28 b8 f5    	vfmadd231ps ymm6,ymm2,ymm21
  ad1ab3:	62 21 4c 20 c6 d6 b1 	vshufps ymm26,ymm22,ymm22,0xb1
  ad1aba:	62 c1 4c 20 59 eb    	vmulps ymm21,ymm22,ymm11
  ad1ac0:	62 82 1d 28 b8 ea    	vfmadd231ps ymm21,ymm12,ymm26
  ad1ac6:	62 81 3c 20 c6 f0 b1 	vshufps ymm22,ymm24,ymm24,0xb1
  ad1acd:	62 41 3c 20 59 c3    	vmulps ymm24,ymm24,ymm11
  ad1ad3:	62 22 1d 28 b8 c6    	vfmadd231ps ymm24,ymm12,ymm22
  ad1ad9:	62 a1 74 20 c6 f1 b1 	vshufps ymm22,ymm17,ymm17,0xb1
  ad1ae0:	62 61 74 20 59 fb    	vmulps ymm31,ymm17,ymm3
  ad1ae6:	62 22 6d 28 b8 fe    	vfmadd231ps ymm31,ymm2,ymm22
  ad1aec:	62 a1 6c 20 c6 ca b1 	vshufps ymm17,ymm18,ymm18,0xb1
  ad1af3:	62 51 6c 20 59 c6    	vmulps ymm8,ymm18,ymm14
  ad1af9:	62 32 15 28 b8 c1    	vfmadd231ps ymm8,ymm13,ymm17
  ad1aff:	62 a1 0c 20 58 f7    	vaddps ymm22,ymm30,ymm23
  ad1b05:	62 21 0c 20 5c d7    	vsubps ymm26,ymm30,ymm23
  ad1b0b:	62 a1 7c 20 c6 c8 b1 	vshufps ymm17,ymm16,ymm16,0xb1
  ad1b12:	62 61 7c 28 28 f4    	vmovaps ymm30,ymm4
  ad1b18:	62 02 7d 20 a8 f4    	vfmadd213ps ymm30,ymm16,ymm28
  ad1b1e:	62 62 75 20 b8 f2    	vfmadd231ps ymm30,ymm17,ymm2
  ad1b24:	62 82 5d 28 ac c4    	vfnmadd213ps ymm16,ymm4,ymm28
  ad1b2a:	62 a2 6d 28 bc c1    	vfnmadd231ps ymm16,ymm2,ymm17
  ad1b30:	62 e1 44 28 c6 cf b1 	vshufps ymm17,ymm7,ymm7,0xb1
  ad1b37:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ad1b3b:	62 92 75 20 a8 f9    	vfmadd213ps ymm7,ymm17,ymm25
  ad1b41:	62 82 7d 28 ac c9    	vfnmadd213ps ymm17,ymm0,ymm25
  ad1b47:	62 c1 04 28 c6 d7 b1 	vshufps ymm18,ymm15,ymm15,0xb1
  ad1b4e:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  ad1b52:	62 b2 05 28 ac cc    	vfnmadd213ps ymm1,ymm15,ymm20
  ad1b58:	62 f2 6d 20 b8 ca    	vfmadd231ps ymm1,ymm18,ymm2
  ad1b5e:	62 32 5d 28 a8 fc    	vfmadd213ps ymm15,ymm4,ymm20
  ad1b64:	62 32 6d 28 bc fa    	vfnmadd231ps ymm15,ymm2,ymm18
  ad1b6a:	62 81 64 20 58 e3    	vaddps ymm20,ymm19,ymm27
  ad1b70:	62 81 64 20 5c d3    	vsubps ymm18,ymm19,ymm27
  ad1b76:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad1b7d:	62 e1 7c 28 28 f8    	vmovaps ymm23,ymm0
  ad1b83:	62 82 6d 20 a8 fa    	vfmadd213ps ymm23,ymm18,ymm26
  ad1b89:	62 82 7d 28 ac d2    	vfnmadd213ps ymm18,ymm0,ymm26
  ad1b8f:	62 21 4c 20 58 d4    	vaddps ymm26,ymm22,ymm20
  ad1b95:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  ad1b9b:	62 81 14 20 58 e0    	vaddps ymm20,ymm29,ymm24
  ad1ba1:	62 81 14 20 5c f0    	vsubps ymm22,ymm29,ymm24
  ad1ba7:	62 a1 4c 20 c6 f6 b1 	vshufps ymm22,ymm22,ymm22,0xb1
  ad1bae:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad1bb4:	62 22 4d 20 a8 c0    	vfmadd213ps ymm24,ymm22,ymm16
  ad1bba:	62 a2 7d 28 bc c6    	vfnmadd231ps ymm16,ymm0,ymm22
  ad1bc0:	62 21 0c 20 58 e4    	vaddps ymm28,ymm30,ymm20
  ad1bc6:	62 a1 0c 20 5c e4    	vsubps ymm20,ymm30,ymm20
  ad1bcc:	62 81 4c 28 58 f7    	vaddps ymm22,ymm6,ymm31
  ad1bd2:	62 91 4c 28 5c f7    	vsubps ymm6,ymm6,ymm31
  ad1bd8:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad1bdd:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  ad1be3:	62 22 4d 28 a8 c9    	vfmadd213ps ymm25,ymm6,ymm17
  ad1be9:	62 e2 7d 28 bc ce    	vfnmadd231ps ymm17,ymm0,ymm6
  ad1bef:	62 21 44 28 58 ee    	vaddps ymm29,ymm7,ymm22
  ad1bf5:	62 a1 44 28 5c f6    	vsubps ymm22,ymm7,ymm22
  ad1bfb:	62 d1 54 20 58 f0    	vaddps ymm6,ymm21,ymm8
  ad1c01:	62 d1 54 20 5c f8    	vsubps ymm7,ymm21,ymm8
  ad1c07:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ad1c0c:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  ad1c12:	62 42 45 28 a8 df    	vfmadd213ps ymm27,ymm7,ymm15
  ad1c18:	c4 62 7d bc ff       	vfnmadd231ps ymm15,ymm0,ymm7
  ad1c1d:	62 61 74 28 58 f6    	vaddps ymm30,ymm1,ymm6
  ad1c23:	62 e1 74 28 5c ee    	vsubps ymm21,ymm1,ymm6
  ad1c29:	62 01 ad 20 14 fc    	vunpcklpd ymm31,ymm26,ymm28
  ad1c2f:	62 91 95 20 14 f6    	vunpcklpd ymm6,ymm29,ymm30
  ad1c35:	62 f3 05 20 18 ce 01 	vinsertf32x4 ymm1,ymm31,xmm6,0x1
  ad1c3c:	c4 a1 7c 29 0c d4    	vmovaps YMMWORD PTR [rsp+r10*8],ymm1
  ad1c42:	49 83 fa 40          	cmp    r10,0x40
  ad1c46:	0f 84 d4 fb ff ff    	je     ad1820 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x560>
  ad1c4c:	62 01 ad 20 15 d4    	vunpckhpd ymm26,ymm26,ymm28
  ad1c52:	62 01 95 20 15 e6    	vunpckhpd ymm28,ymm29,ymm30
  ad1c58:	62 03 ad 20 23 ec 03 	vshuff64x2 ymm29,ymm26,ymm28,0x3
  ad1c5f:	62 f3 85 20 23 f6 03 	vshuff64x2 ymm6,ymm31,ymm6,0x3
  ad1c66:	62 03 2d 20 18 d4 01 	vinsertf32x4 ymm26,ymm26,xmm28,0x1
  ad1c6d:	62 21 7c 28 29 54 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x80],ymm26
  ad1c74:	04 
  ad1c75:	c4 a1 7d 29 b4 d4 00 	vmovapd YMMWORD PTR [rsp+r10*8+0x100],ymm6
  ad1c7c:	01 00 00 
  ad1c7f:	62 21 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x180],ymm29
  ad1c86:	0c 
  ad1c87:	62 91 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm24
  ad1c8d:	62 01 b5 20 14 d3    	vunpcklpd ymm26,ymm25,ymm27
  ad1c93:	62 03 4d 28 18 e2 01 	vinsertf32x4 ymm28,ymm6,xmm26,0x1
  ad1c9a:	62 21 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x20],ymm28
  ad1ca1:	01 
  ad1ca2:	62 81 c5 20 15 f8    	vunpckhpd ymm23,ymm23,ymm24
  ad1ca8:	62 01 b5 20 15 c3    	vunpckhpd ymm24,ymm25,ymm27
  ad1cae:	62 03 c5 20 23 c8 03 	vshuff64x2 ymm25,ymm23,ymm24,0x3
  ad1cb5:	62 93 cd 28 23 f2 03 	vshuff64x2 ymm6,ymm6,ymm26,0x3
  ad1cbc:	62 83 45 20 18 f8 01 	vinsertf32x4 ymm23,ymm23,xmm24,0x1
  ad1cc3:	62 a1 7c 28 29 7c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xa0],ymm23
  ad1cca:	05 
  ad1ccb:	c4 a1 7d 29 b4 d4 20 	vmovapd YMMWORD PTR [rsp+r10*8+0x120],ymm6
  ad1cd2:	01 00 00 
  ad1cd5:	62 21 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1a0],ymm25
  ad1cdc:	0d 
  ad1cdd:	62 b1 e5 20 14 f4    	vunpcklpd ymm6,ymm19,ymm20
  ad1ce3:	62 a1 cd 20 14 fd    	vunpcklpd ymm23,ymm22,ymm21
  ad1ce9:	62 23 4d 28 18 c7 01 	vinsertf32x4 ymm24,ymm6,xmm23,0x1
  ad1cf0:	62 21 7c 28 29 44 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x40],ymm24
  ad1cf7:	02 
  ad1cf8:	62 a1 e5 20 15 dc    	vunpckhpd ymm19,ymm19,ymm20
  ad1cfe:	62 a1 cd 20 15 e5    	vunpckhpd ymm20,ymm22,ymm21
  ad1d04:	62 a3 e5 20 23 ec 03 	vshuff64x2 ymm21,ymm19,ymm20,0x3
  ad1d0b:	62 b3 cd 28 23 f7 03 	vshuff64x2 ymm6,ymm6,ymm23,0x3
  ad1d12:	62 a3 65 20 18 dc 01 	vinsertf32x4 ymm19,ymm19,xmm20,0x1
  ad1d19:	62 a1 7c 28 29 5c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xc0],ymm19
  ad1d20:	06 
  ad1d21:	c4 a1 7d 29 b4 d4 40 	vmovapd YMMWORD PTR [rsp+r10*8+0x140],ymm6
  ad1d28:	01 00 00 
  ad1d2b:	62 a1 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1c0],ymm21
  ad1d32:	0e 
  ad1d33:	62 b1 ed 20 14 f0    	vunpcklpd ymm6,ymm18,ymm16
  ad1d39:	62 c1 f5 20 14 df    	vunpcklpd ymm19,ymm17,ymm15
  ad1d3f:	62 a3 4d 28 18 e3 01 	vinsertf32x4 ymm20,ymm6,xmm19,0x1
  ad1d46:	62 a1 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x60],ymm20
  ad1d4d:	03 
  ad1d4e:	62 a1 ed 20 15 c0    	vunpckhpd ymm16,ymm18,ymm16
  ad1d54:	62 51 f5 20 15 ff    	vunpckhpd ymm15,ymm17,ymm15
  ad1d5a:	62 c3 fd 20 23 cf 03 	vshuff64x2 ymm17,ymm16,ymm15,0x3
  ad1d61:	62 b3 cd 28 23 f3 03 	vshuff64x2 ymm6,ymm6,ymm19,0x3
  ad1d68:	62 53 7d 20 18 ff 01 	vinsertf32x4 ymm15,ymm16,xmm15,0x1
  ad1d6f:	c4 21 7c 29 bc d4 e0 	vmovaps YMMWORD PTR [rsp+r10*8+0xe0],ymm15
  ad1d76:	00 00 00 
  ad1d79:	c4 a1 7d 29 b4 d4 60 	vmovapd YMMWORD PTR [rsp+r10*8+0x160],ymm6
  ad1d80:	01 00 00 
  ad1d83:	62 a1 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1e0],ymm17
  ad1d8a:	0f 
  ad1d8b:	e9 e0 fa ff ff       	jmp    ad1870 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b0>
  ad1d90:	48 8d 65 f8          	lea    rsp,[rbp-0x8]
  ad1d94:	5b                   	pop    rbx
  ad1d95:	5d                   	pop    rbp
  ad1d96:	c5 f8 77             	vzeroupper
  ad1d99:	c3                   	ret
  ad1d9a:	cc                   	int3
  ad1d9b:	cc                   	int3
  ad1d9c:	cc                   	int3
  ad1d9d:	cc                   	int3
  ad1d9e:	cc                   	int3
  ad1d9f:	cc                   	int3
  ad1da0:	cc                   	int3
  ad1da1:	cc                   	int3
  ad1da2:	cc                   	int3
  ad1da3:	cc                   	int3
  ad1da4:	cc                   	int3
  ad1da5:	cc                   	int3
  ad1da6:	cc                   	int3
  ad1da7:	cc                   	int3
  ad1da8:	cc                   	int3
  ad1da9:	cc                   	int3
  ad1daa:	cc                   	int3
  ad1dab:	cc                   	int3
  ad1dac:	cc                   	int3
  ad1dad:	cc                   	int3
  ad1dae:	cc                   	int3
  ad1daf:	cc                   	int3
  ad1db0:	cc                   	int3
  ad1db1:	cc                   	int3
  ad1db2:	cc                   	int3
  ad1db3:	cc                   	int3
  ad1db4:	cc                   	int3
  ad1db5:	cc                   	int3
  ad1db6:	cc                   	int3
  ad1db7:	cc                   	int3
  ad1db8:	cc                   	int3
  ad1db9:	cc                   	int3
  ad1dba:	cc                   	int3
  ad1dbb:	cc                   	int3
  ad1dbc:	cc                   	int3
  ad1dbd:	cc                   	int3
  ad1dbe:	cc                   	int3
  ad1dbf:	cc                   	int3
