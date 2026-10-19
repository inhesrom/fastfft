
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b13c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b13c0:	55                   	push   rbp
  6b13c1:	48 89 e5             	mov    rbp,rsp
  6b13c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6b13c8:	48 81 ec 80 01 00 00 	sub    rsp,0x180
  6b13cf:	48 c1 e2 07          	shl    rdx,0x7
  6b13d3:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b13d7:	31 d2                	xor    edx,edx
  6b13d9:	4c 8d 84 24 00 01 00 	lea    r8,[rsp+0x100]
  6b13e0:	00 
  6b13e1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6b13e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6b13ed:	00 00 00 
  6b13f0:	c6 84 24 00 01 00 00 	mov    BYTE PTR [rsp+0x100],0x0
  6b13f7:	00 
  6b13f8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6b13fd:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  6b1402:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  6b1408:	c5 fc 10 7c 17 30    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x30]
  6b140e:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  6b1414:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  6b141a:	c5 78 10 a4 17 80 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x80]
  6b1421:	00 00 
  6b1423:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  6b142a:	00 00 
  6b142c:	c5 78 10 94 17 b0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xb0]
  6b1433:	00 00 
  6b1435:	c5 fc 10 8c 17 c0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc0]
  6b143c:	00 00 
  6b143e:	c5 f8 10 94 17 e0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xe0]
  6b1445:	00 00 
  6b1447:	c5 7c 10 9c 17 f0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xf0]
  6b144e:	00 00 
  6b1450:	c5 78 10 ac 17 10 01 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x110]
  6b1457:	00 00 
  6b1459:	c5 fc 10 b4 17 20 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x120]
  6b1460:	00 00 
  6b1462:	c5 78 10 bc 17 40 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x140]
  6b1469:	00 00 
  6b146b:	c5 fc 10 84 17 50 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x150]
  6b1472:	00 00 
  6b1474:	c5 64 c6 f5 88       	vshufps ymm14,ymm3,ymm5,0x88
  6b1479:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  6b147e:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  6b1484:	c5 f4 c6 da 88       	vshufps ymm3,ymm1,ymm2,0x88
  6b1489:	c5 f4 c6 ca dd       	vshufps ymm1,ymm1,ymm2,0xdd
  6b148e:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6b1494:	c4 c1 5c c6 cc 88    	vshufps ymm1,ymm4,ymm12,0x88
  6b149a:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  6b14a1:	00 00 
  6b14a3:	c4 c1 5c c6 ec dd    	vshufps ymm5,ymm4,ymm12,0xdd
  6b14a9:	c4 c1 4c c6 cf 88    	vshufps ymm1,ymm6,ymm15,0x88
  6b14af:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  6b14b6:	00 00 
  6b14b8:	c4 c1 4c c6 d7 dd    	vshufps ymm2,ymm6,ymm15,0xdd
  6b14be:	c4 c1 44 c6 f1 88    	vshufps ymm6,ymm7,ymm9,0x88
  6b14c4:	c4 41 44 c6 e1 dd    	vshufps ymm12,ymm7,ymm9,0xdd
  6b14ca:	c4 c1 24 c6 cd 88    	vshufps ymm1,ymm11,ymm13,0x88
  6b14d0:	c4 41 24 c6 ed dd    	vshufps ymm13,ymm11,ymm13,0xdd
  6b14d6:	c4 c1 3c c6 e2 88    	vshufps ymm4,ymm8,ymm10,0x88
  6b14dc:	c5 fc 29 a4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm4
  6b14e3:	00 00 
  6b14e5:	c4 41 3c c6 fa dd    	vshufps ymm15,ymm8,ymm10,0xdd
  6b14eb:	c5 f8 10 a4 17 70 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x170]
  6b14f2:	00 00 
  6b14f4:	c5 7c c6 dc 88       	vshufps ymm11,ymm0,ymm4,0x88
  6b14f9:	c5 fc c6 e4 dd       	vshufps ymm4,ymm0,ymm4,0xdd
  6b14fe:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  6b1504:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6b150a:	c5 fc 58 fb          	vaddps ymm7,ymm0,ymm3
  6b150e:	c5 fc 29 bc 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm7
  6b1515:	00 00 
  6b1517:	c5 7c 5c c3          	vsubps ymm8,ymm0,ymm3
  6b151b:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  6b1521:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6b1527:	c5 7c 58 d2          	vaddps ymm10,ymm0,ymm2
  6b152b:	c5 7c 5c ca          	vsubps ymm9,ymm0,ymm2
  6b152f:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  6b1535:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6b153b:	c5 ec 58 f9          	vaddps ymm7,ymm2,ymm1
  6b153f:	c5 ec 5c d9          	vsubps ymm3,ymm2,ymm1
  6b1543:	c4 c3 fd 01 d4 d8    	vpermpd ymm2,ymm12,0xd8
  6b1549:	c4 c3 fd 01 ed d8    	vpermpd ymm5,ymm13,0xd8
  6b154f:	c5 ec 58 cd          	vaddps ymm1,ymm2,ymm5
  6b1553:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  6b1557:	c4 c3 fd 01 d7 d8    	vpermpd ymm2,ymm15,0xd8
  6b155d:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6b1563:	c5 ec 58 f4          	vaddps ymm6,ymm2,ymm4
  6b1567:	c5 ec 5c e4          	vsubps ymm4,ymm2,ymm4
  6b156b:	c4 e3 fd 01 94 24 c0 	vpermpd ymm2,YMMWORD PTR [rsp+0xc0],0xd8
  6b1572:	00 00 00 d8 
  6b1576:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6b157c:	c5 24 58 e2          	vaddps ymm12,ymm11,ymm2
  6b1580:	c4 41 6c 5c db       	vsubps ymm11,ymm2,ymm11
  6b1585:	c4 e3 fd 01 54 24 60 	vpermpd ymm2,YMMWORD PTR [rsp+0x60],0xd8
  6b158c:	d8 
  6b158d:	c4 63 fd 01 6c 24 40 	vpermpd ymm13,YMMWORD PTR [rsp+0x40],0xd8
  6b1594:	d8 
  6b1595:	c5 14 58 f2          	vaddps ymm14,ymm13,ymm2
  6b1599:	c4 41 6c 5c ed       	vsubps ymm13,ymm2,ymm13
  6b159e:	c4 e3 fd 01 94 24 a0 	vpermpd ymm2,YMMWORD PTR [rsp+0xa0],0xd8
  6b15a5:	00 00 00 d8 
  6b15a9:	c4 63 fd 01 bc 24 80 	vpermpd ymm15,YMMWORD PTR [rsp+0x80],0xd8
  6b15b0:	00 00 00 d8 
  6b15b4:	c5 84 58 c2          	vaddps ymm0,ymm15,ymm2
  6b15b8:	c5 04 5c fa          	vsubps ymm15,ymm15,ymm2
  6b15bc:	c5 e4 58 d5          	vaddps ymm2,ymm3,ymm5
  6b15c0:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  6b15c7:	00 00 
  6b15c9:	c5 d4 5c d3          	vsubps ymm2,ymm5,ymm3
  6b15cd:	c4 c1 5c 5c db       	vsubps ymm3,ymm4,ymm11
  6b15d2:	c5 24 58 dc          	vaddps ymm11,ymm11,ymm4
  6b15d6:	c5 fc 28 ac 24 e0 00 	vmovaps ymm5,YMMWORD PTR [rsp+0xe0]
  6b15dd:	00 00 
  6b15df:	c5 d4 58 e0          	vaddps ymm4,ymm5,ymm0
  6b15e3:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  6b15e7:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6b15ed:	c5 f4 58 ee          	vaddps ymm5,ymm1,ymm6
  6b15f1:	c5 f4 5c ce          	vsubps ymm1,ymm1,ymm6
  6b15f5:	c4 c1 0c 58 f2       	vaddps ymm6,ymm14,ymm10
  6b15fa:	c4 41 0c 5c d2       	vsubps ymm10,ymm14,ymm10
  6b15ff:	c5 1c 58 f7          	vaddps ymm14,ymm12,ymm7
  6b1603:	c5 1c 5c e7          	vsubps ymm12,ymm12,ymm7
  6b1607:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  6b160c:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  6b1611:	c4 41 04 58 cd       	vaddps ymm9,ymm15,ymm13
  6b1616:	c4 41 14 5c ef       	vsubps ymm13,ymm13,ymm15
  6b161b:	c5 0c 58 fc          	vaddps ymm15,ymm14,ymm4
  6b161f:	c4 41 5c 5c f6       	vsubps ymm14,ymm4,ymm14
  6b1624:	c5 cc 58 c5          	vaddps ymm0,ymm6,ymm5
  6b1628:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  6b162f:	00 00 
  6b1631:	c5 cc 5c c5          	vsubps ymm0,ymm6,ymm5
  6b1635:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6b163b:	c4 e2 7d 18 05 58 3d 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9c3d58]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6b1642:	9c ff 
  6b1644:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  6b1648:	c5 a4 59 f0          	vmulps ymm6,ymm11,ymm0
  6b164c:	c5 6c 5c de          	vsubps ymm11,ymm2,ymm6
  6b1650:	c5 ec 58 d6          	vaddps ymm2,ymm2,ymm6
  6b1654:	c5 fc 59 b4 24 a0 00 	vmulps ymm6,ymm0,YMMWORD PTR [rsp+0xa0]
  6b165b:	00 00 
  6b165d:	c5 e4 59 d8          	vmulps ymm3,ymm3,ymm0
  6b1661:	c5 cc 58 c3          	vaddps ymm0,ymm6,ymm3
  6b1665:	c5 e4 5c de          	vsubps ymm3,ymm3,ymm6
  6b1669:	c5 fc 28 64 24 40    	vmovaps ymm4,YMMWORD PTR [rsp+0x40]
  6b166f:	c5 dc 58 f1          	vaddps ymm6,ymm4,ymm1
  6b1673:	c5 dc 5c e1          	vsubps ymm4,ymm4,ymm1
  6b1677:	c5 c4 58 c8          	vaddps ymm1,ymm7,ymm0
  6b167b:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  6b167f:	c4 c1 1c 58 fa       	vaddps ymm7,ymm12,ymm10
  6b1684:	c4 41 2c 5c e4       	vsubps ymm12,ymm10,ymm12
  6b1689:	c4 c1 34 58 eb       	vaddps ymm5,ymm9,ymm11
  6b168e:	c4 41 34 5c db       	vsubps ymm11,ymm9,ymm11
  6b1693:	c5 3c 58 ca          	vaddps ymm9,ymm8,ymm2
  6b1697:	c5 bc 5c d2          	vsubps ymm2,ymm8,ymm2
  6b169b:	c5 14 58 c3          	vaddps ymm8,ymm13,ymm3
  6b169f:	c5 14 5c d3          	vsubps ymm10,ymm13,ymm3
  6b16a3:	c4 c3 05 18 de 01    	vinsertf128 ymm3,ymm15,xmm14,0x1
  6b16a9:	c4 43 05 06 ee 31    	vperm2f128 ymm13,ymm15,ymm14,0x31
  6b16af:	c4 63 75 18 f0 01    	vinsertf128 ymm14,ymm1,xmm0,0x1
  6b16b5:	c4 e3 75 06 c0 31    	vperm2f128 ymm0,ymm1,ymm0,0x31
  6b16bb:	c4 e3 4d 18 cc 01    	vinsertf128 ymm1,ymm6,xmm4,0x1
  6b16c1:	c4 e3 4d 06 e4 31    	vperm2f128 ymm4,ymm6,ymm4,0x31
  6b16c7:	c5 95 14 e4          	vunpcklpd ymm4,ymm13,ymm4
  6b16cb:	c4 e3 35 18 f2 01    	vinsertf128 ymm6,ymm9,xmm2,0x1
  6b16d1:	c4 e3 35 06 d2 31    	vperm2f128 ymm2,ymm9,ymm2,0x31
  6b16d7:	c5 65 15 c9          	vunpckhpd ymm9,ymm3,ymm1
  6b16db:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  6b16df:	c5 fd 14 c2          	vunpcklpd ymm0,ymm0,ymm2
  6b16e3:	c5 8d 15 d6          	vunpckhpd ymm2,ymm14,ymm6
  6b16e7:	c5 8d 14 de          	vunpcklpd ymm3,ymm14,ymm6
  6b16eb:	c5 f4 c6 f3 88       	vshufps ymm6,ymm1,ymm3,0x88
  6b16f0:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  6b16f5:	c5 34 c6 ea 88       	vshufps ymm13,ymm9,ymm2,0x88
  6b16fa:	c5 b4 c6 d2 dd       	vshufps ymm2,ymm9,ymm2,0xdd
  6b16ff:	c5 5c c6 c8 88       	vshufps ymm9,ymm4,ymm0,0x88
  6b1704:	c5 cc c6 de d8       	vshufps ymm3,ymm6,ymm6,0xd8
  6b1709:	c5 fc 29 9c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm3
  6b1710:	00 00 
  6b1712:	c5 dc c6 d8 dd       	vshufps ymm3,ymm4,ymm0,0xdd
  6b1717:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  6b171e:	00 00 
  6b1720:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  6b1726:	c4 e3 7d 18 e6 01    	vinsertf128 ymm4,ymm0,xmm6,0x1
  6b172c:	c4 63 7d 06 f6 31    	vperm2f128 ymm14,ymm0,ymm6,0x31
  6b1732:	c5 f4 c6 f1 d8       	vshufps ymm6,ymm1,ymm1,0xd8
  6b1737:	c4 c3 55 18 cb 01    	vinsertf128 ymm1,ymm5,xmm11,0x1
  6b173d:	c4 43 55 06 fb 31    	vperm2f128 ymm15,ymm5,ymm11,0x31
  6b1743:	c4 c3 45 18 c4 01    	vinsertf128 ymm0,ymm7,xmm12,0x1
  6b1749:	c4 41 14 c6 dd d8    	vshufps ymm11,ymm13,ymm13,0xd8
  6b174f:	c4 c3 45 06 ec 31    	vperm2f128 ymm5,ymm7,ymm12,0x31
  6b1755:	c5 0d 14 e5          	vunpcklpd ymm12,ymm14,ymm5
  6b1759:	c4 c3 3d 18 fa 01    	vinsertf128 ymm7,ymm8,xmm10,0x1
  6b175f:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  6b1764:	c4 c3 3d 06 d2 31    	vperm2f128 ymm2,ymm8,ymm10,0x31
  6b176a:	c5 85 14 d2          	vunpcklpd ymm2,ymm15,ymm2
  6b176e:	c5 5d 15 c0          	vunpckhpd ymm8,ymm4,ymm0
  6b1772:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  6b1778:	c5 dd 14 c0          	vunpcklpd ymm0,ymm4,ymm0
  6b177c:	c5 75 15 cf          	vunpckhpd ymm9,ymm1,ymm7
  6b1780:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  6b1784:	c5 64 c6 eb d8       	vshufps ymm13,ymm3,ymm3,0xd8
  6b1789:	c5 fc c6 d9 88       	vshufps ymm3,ymm0,ymm1,0x88
  6b178e:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1793:	c5 fc 29 9c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm3
  6b179a:	00 00 
  6b179c:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  6b17a1:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  6b17a6:	c4 c1 3c c6 c1 88    	vshufps ymm0,ymm8,ymm9,0x88
  6b17ac:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  6b17b1:	c4 c1 3c c6 c1 dd    	vshufps ymm0,ymm8,ymm9,0xdd
  6b17b7:	c5 fc c6 f8 d8       	vshufps ymm7,ymm0,ymm0,0xd8
  6b17bc:	c5 9c c6 c2 88       	vshufps ymm0,ymm12,ymm2,0x88
  6b17c1:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6b17c6:	c5 9c c6 c2 dd       	vshufps ymm0,ymm12,ymm2,0xdd
  6b17cb:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6b17d0:	c5 7c 10 79 40       	vmovups ymm15,YMMWORD PTR [rcx+0x40]
  6b17d5:	c5 fc 10 91 80 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0x80]
  6b17dc:	00 
  6b17dd:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6b17e4:	00 
  6b17e5:	c5 24 59 c2          	vmulps ymm8,ymm11,ymm2
  6b17e9:	c4 42 75 bc c4       	vfnmadd231ps ymm8,ymm1,ymm12
  6b17ee:	c5 6c 59 c9          	vmulps ymm9,ymm2,ymm1
  6b17f2:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6b17f9:	00 
  6b17fa:	c4 42 25 b8 cc       	vfmadd231ps ymm9,ymm11,ymm12
  6b17ff:	c5 fc 10 91 00 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x100]
  6b1806:	00 
  6b1807:	c5 0c 59 e2          	vmulps ymm12,ymm14,ymm2
  6b180b:	c5 6c 59 db          	vmulps ymm11,ymm2,ymm3
  6b180f:	c4 62 65 bc e1       	vfnmadd231ps ymm12,ymm3,ymm1
  6b1814:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  6b1819:	c5 fc 10 91 60 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x160]
  6b1820:	00 
  6b1821:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6b1828:	00 
  6b1829:	c5 74 59 f0          	vmulps ymm14,ymm1,ymm0
  6b182d:	c4 62 15 b8 f2       	vfmadd231ps ymm14,ymm13,ymm2
  6b1832:	c5 94 59 c9          	vmulps ymm1,ymm13,ymm1
  6b1836:	c5 fc 10 59 60       	vmovups ymm3,YMMWORD PTR [rcx+0x60]
  6b183b:	c4 e2 7d bc ca       	vfnmadd231ps ymm1,ymm0,ymm2
  6b1840:	c4 41 04 59 ea       	vmulps ymm13,ymm15,ymm10
  6b1845:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  6b184c:	00 
  6b184d:	c5 84 59 d6          	vmulps ymm2,ymm15,ymm6
  6b1851:	c4 62 4d b8 eb       	vfmadd231ps ymm13,ymm6,ymm3
  6b1856:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6b185d:	00 
  6b185e:	c4 e2 2d bc d3       	vfnmadd231ps ymm2,ymm10,ymm3
  6b1863:	c5 fc 59 f7          	vmulps ymm6,ymm0,ymm7
  6b1867:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  6b186c:	c4 e2 55 b8 f4       	vfmadd231ps ymm6,ymm5,ymm4
  6b1871:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  6b1875:	c4 41 34 58 d3       	vaddps ymm10,ymm9,ymm11
  6b187a:	c4 62 7d 18 3d 51 3a 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff9c3a51]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b1881:	9c ff 
  6b1883:	c5 84 59 eb          	vmulps ymm5,ymm15,ymm3
  6b1887:	c4 e2 45 bc c4       	vfnmadd231ps ymm0,ymm7,ymm4
  6b188c:	c4 e2 7d 18 25 cb 3b 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9c3bcb]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b1893:	9c ff 
  6b1895:	c4 41 0c 58 fd       	vaddps ymm15,ymm14,ymm13
  6b189a:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  6b18a1:	00 00 
  6b18a3:	c4 e2 2d ac e7       	vfnmadd213ps ymm4,ymm10,ymm7
  6b18a8:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  6b18ad:	c4 62 7d 18 05 aa 3b 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff9c3baa]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b18b4:	9c ff 
  6b18b6:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  6b18bb:	c5 7c 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm9
  6b18c1:	c4 62 05 ac c6       	vfnmadd213ps ymm8,ymm15,ymm6
  6b18c6:	c5 74 5c da          	vsubps ymm11,ymm1,ymm2
  6b18ca:	c4 62 7d 18 0d 01 3a 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9c3a01]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b18d1:	9c ff 
  6b18d3:	c4 41 24 59 d9       	vmulps ymm11,ymm11,ymm9
  6b18d8:	c5 f4 58 d2          	vaddps ymm2,ymm1,ymm2
  6b18dc:	c5 54 58 e4          	vaddps ymm12,ymm5,ymm4
  6b18e0:	c4 41 0c 5c ed       	vsubps ymm13,ymm14,ymm13
  6b18e5:	c4 62 7d 18 35 72 3b 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9c3b72]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b18ec:	9c ff 
  6b18ee:	c5 dc 5c cd          	vsubps ymm1,ymm4,ymm5
  6b18f2:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6b18f8:	c4 c1 3c 58 e3       	vaddps ymm4,ymm8,ymm11
  6b18fd:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  6b1904:	00 00 
  6b1906:	c4 62 65 ac f1       	vfnmadd213ps ymm14,ymm3,ymm1
  6b190b:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  6b190f:	c5 b4 59 5c 24 40    	vmulps ymm3,ymm9,YMMWORD PTR [rsp+0x40]
  6b1915:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  6b191a:	c5 0c 5c cb          	vsubps ymm9,ymm14,ymm3
  6b191e:	c5 0c 58 db          	vaddps ymm11,ymm14,ymm3
  6b1922:	c5 2c 58 d7          	vaddps ymm10,ymm10,ymm7
  6b1926:	c4 e2 7d 18 1d 31 3b 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9c3b31]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b192d:	9c ff 
  6b192f:	c4 e2 6d ac d8       	vfnmadd213ps ymm3,ymm2,ymm0
  6b1934:	c4 e2 7d 18 3d 97 39 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9c3997]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b193b:	9c ff 
  6b193d:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  6b1941:	c5 84 58 f6          	vaddps ymm6,ymm15,ymm6
  6b1945:	c4 c1 64 5c fd       	vsubps ymm7,ymm3,ymm13
  6b194a:	c5 14 58 eb          	vaddps ymm13,ymm13,ymm3
  6b194e:	c5 d4 58 e9          	vaddps ymm5,ymm5,ymm1
  6b1952:	c5 7c 58 f2          	vaddps ymm14,ymm0,ymm2
  6b1956:	c5 9c 5c dc          	vsubps ymm3,ymm12,ymm4
  6b195a:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  6b195e:	c5 ac 5c d6          	vsubps ymm2,ymm10,ymm6
  6b1962:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  6b1966:	c5 b4 5c c7          	vsubps ymm0,ymm9,ymm7
  6b196a:	c5 b4 58 ff          	vaddps ymm7,ymm9,ymm7
  6b196e:	c4 41 54 5c ce       	vsubps ymm9,ymm5,ymm14
  6b1973:	c5 8c 58 ed          	vaddps ymm5,ymm14,ymm5
  6b1977:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  6b197d:	c5 3c 58 d1          	vaddps ymm10,ymm8,ymm1
  6b1981:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  6b1986:	c5 54 15 c6          	vunpckhps ymm8,ymm5,ymm6
  6b198a:	c5 d4 14 ee          	vunpcklps ymm5,ymm5,ymm6
  6b198e:	c4 c1 24 58 f5       	vaddps ymm6,ymm11,ymm13
  6b1993:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  6b1998:	c4 43 55 06 e0 31    	vperm2f128 ymm12,ymm5,ymm8,0x31
  6b199e:	c4 c3 55 06 e8 20    	vperm2f128 ymm5,ymm5,ymm8,0x20
  6b19a4:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  6b19a9:	c5 7c 11 64 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm12
  6b19af:	c5 a4 15 e9          	vunpckhps ymm5,ymm11,ymm1
  6b19b3:	c5 a4 14 c9          	vunpcklps ymm1,ymm11,ymm1
  6b19b7:	c4 63 75 06 c5 31    	vperm2f128 ymm8,ymm1,ymm5,0x31
  6b19bd:	c4 e3 75 06 cd 20    	vperm2f128 ymm1,ymm1,ymm5,0x20
  6b19c3:	c5 fc 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm1
  6b19c9:	c5 c4 15 cc          	vunpckhps ymm1,ymm7,ymm4
  6b19cd:	c5 c4 14 e4          	vunpcklps ymm4,ymm7,ymm4
  6b19d1:	c5 7c 11 44 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm8
  6b19d7:	c4 e3 5d 06 e9 31    	vperm2f128 ymm5,ymm4,ymm1,0x31
  6b19dd:	c4 e3 5d 06 c9 20    	vperm2f128 ymm1,ymm4,ymm1,0x20
  6b19e3:	c5 fc 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm1
  6b19ea:	00 00 
  6b19ec:	c5 b4 15 ca          	vunpckhps ymm1,ymm9,ymm2
  6b19f0:	c5 b4 14 d2          	vunpcklps ymm2,ymm9,ymm2
  6b19f4:	c4 e3 6d 06 e1 31    	vperm2f128 ymm4,ymm2,ymm1,0x31
  6b19fa:	c4 e3 6d 06 c9 20    	vperm2f128 ymm1,ymm2,ymm1,0x20
  6b1a00:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  6b1a07:	00 00 
  6b1a09:	c5 fc 11 8c 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm1
  6b1a10:	00 00 
  6b1a12:	c4 c1 4c 15 ca       	vunpckhps ymm1,ymm6,ymm10
  6b1a17:	c4 c1 4c 14 d2       	vunpcklps ymm2,ymm6,ymm10
  6b1a1c:	c5 fc 11 a4 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm4
  6b1a23:	00 00 
  6b1a25:	c4 e3 6d 06 e1 31    	vperm2f128 ymm4,ymm2,ymm1,0x31
  6b1a2b:	c4 e3 6d 06 c9 20    	vperm2f128 ymm1,ymm2,ymm1,0x20
  6b1a31:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  6b1a38:	00 00 
  6b1a3a:	c5 fc 15 cb          	vunpckhps ymm1,ymm0,ymm3
  6b1a3e:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  6b1a42:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  6b1a48:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  6b1a4e:	c5 fc 11 a4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm4
  6b1a55:	00 00 
  6b1a57:	c5 fc 11 84 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm0
  6b1a5e:	00 00 
  6b1a60:	c5 fc 11 94 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm2
  6b1a67:	00 00 
  6b1a69:	48 81 c2 80 01 00 00 	add    rdx,0x180
  6b1a70:	48 39 d0             	cmp    rax,rdx
  6b1a73:	0f 85 77 f9 ff ff    	jne    6b13f0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6b1a79:	48 89 ec             	mov    rsp,rbp
  6b1a7c:	5d                   	pop    rbp
  6b1a7d:	c5 f8 77             	vzeroupper
  6b1a80:	c3                   	ret
