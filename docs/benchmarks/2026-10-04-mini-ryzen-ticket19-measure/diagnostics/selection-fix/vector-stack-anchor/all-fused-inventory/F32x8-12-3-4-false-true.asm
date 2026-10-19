
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b1540 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b1540:	48 c1 e2 05          	shl    rdx,0x5
  6b1544:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b1548:	c4 e2 7d 18 05 0f 3f 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9c3f0f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b154f:	9c ff 
  6b1551:	31 d2                	xor    edx,edx
  6b1553:	c4 e2 7d 18 0d 78 3d 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9c3d78]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b155a:	9c ff 
  6b155c:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  6b1560:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6b1565:	c5 f8 10 7c 17 10    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x10]
  6b156b:	c5 78 10 44 17 20    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x20]
  6b1571:	c5 78 10 4c 17 30    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x30]
  6b1577:	c5 c8 c6 df 88       	vshufps xmm3,xmm6,xmm7,0x88
  6b157c:	c4 c1 38 c6 e1 88    	vshufps xmm4,xmm8,xmm9,0x88
  6b1582:	c5 78 10 54 17 50    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x50]
  6b1588:	c5 78 10 5c 17 40    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x40]
  6b158e:	c4 c1 20 c6 ea 88    	vshufps xmm5,xmm11,xmm10,0x88
  6b1594:	c5 c8 c6 f7 dd       	vshufps xmm6,xmm6,xmm7,0xdd
  6b1599:	c4 41 38 c6 c9 dd    	vshufps xmm9,xmm8,xmm9,0xdd
  6b159f:	c4 41 20 c6 da dd    	vshufps xmm11,xmm11,xmm10,0xdd
  6b15a5:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  6b15a9:	c4 41 34 58 d3       	vaddps ymm10,ymm9,ymm11
  6b15ae:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  6b15b2:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  6b15b7:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  6b15bc:	c5 34 59 c9          	vmulps ymm9,ymm9,ymm1
  6b15c0:	c5 28 58 de          	vaddps xmm11,xmm10,xmm6
  6b15c4:	c4 e2 2d bc f0       	vfnmadd231ps ymm6,ymm10,ymm0
  6b15c9:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6b15cd:	c5 5c 59 d1          	vmulps ymm10,ymm4,ymm1
  6b15d1:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  6b15d5:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  6b15da:	c4 c1 38 5c e9       	vsubps xmm5,xmm8,xmm9
  6b15df:	c5 65 15 c5          	vunpckhpd ymm8,ymm3,ymm5
  6b15e3:	c5 e5 14 ed          	vunpcklpd ymm5,ymm3,ymm5
  6b15e7:	c4 e3 5d 0c fa cc    	vblendps ymm7,ymm4,ymm2,0xcc
  6b15ed:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6b15f2:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  6b15f7:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b15fc:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  6b1601:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6b1606:	c5 bc c6 fc 88       	vshufps ymm7,ymm8,ymm4,0x88
  6b160b:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6b1610:	c5 bc c6 e4 dd       	vshufps ymm4,ymm8,ymm4,0xdd
  6b1615:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6b161a:	c4 41 48 5c c2       	vsubps xmm8,xmm6,xmm10
  6b161f:	c5 a8 58 f6          	vaddps xmm6,xmm10,xmm6
  6b1623:	c5 25 15 ce          	vunpckhpd ymm9,ymm11,ymm6
  6b1627:	c5 25 14 d6          	vunpcklpd ymm10,ymm11,ymm6
  6b162b:	c4 63 3d 0c da cc    	vblendps ymm11,ymm8,ymm2,0xcc
  6b1631:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6b1637:	c4 c1 2c c6 f3 88    	vshufps ymm6,ymm10,ymm11,0x88
  6b163d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6b1642:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  6b1648:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  6b164e:	c4 41 34 c6 d8 88    	vshufps ymm11,ymm9,ymm8,0x88
  6b1654:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  6b165a:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  6b1660:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6b1666:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  6b166d:	00 
  6b166e:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  6b1675:	00 
  6b1676:	c5 1c 59 cf          	vmulps ymm9,ymm12,ymm7
  6b167a:	c4 42 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm13
  6b167f:	c4 41 1c 59 db       	vmulps ymm11,ymm12,ymm11
  6b1684:	c5 7c 10 61 40       	vmovups ymm12,YMMWORD PTR [rcx+0x40]
  6b1689:	c4 42 45 b8 dd       	vfmadd231ps ymm11,ymm7,ymm13
  6b168e:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  6b1693:	c5 1c 59 ed          	vmulps ymm13,ymm12,ymm5
  6b1697:	c4 62 2d bc ef       	vfnmadd231ps ymm13,ymm10,ymm7
  6b169c:	c4 41 1c 59 d2       	vmulps ymm10,ymm12,ymm10
  6b16a1:	c5 7c 10 a1 c0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xc0]
  6b16a8:	00 
  6b16a9:	c4 62 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm7
  6b16ae:	c5 fc 10 a9 e0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xe0]
  6b16b5:	00 
  6b16b6:	c5 9c 59 fc          	vmulps ymm7,ymm12,ymm4
  6b16ba:	c4 e2 3d bc fd       	vfnmadd231ps ymm7,ymm8,ymm5
  6b16bf:	c4 41 1c 59 c0       	vmulps ymm8,ymm12,ymm8
  6b16c4:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  6b16c8:	c4 62 5d b8 c5       	vfmadd231ps ymm8,ymm4,ymm5
  6b16cd:	c5 94 58 e7          	vaddps ymm4,ymm13,ymm7
  6b16d1:	c5 a4 58 ee          	vaddps ymm5,ymm11,ymm6
  6b16d5:	c4 c1 64 5c d9       	vsubps ymm3,ymm3,ymm9
  6b16da:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  6b16df:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  6b16e4:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6b16e9:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  6b16ee:	c5 30 58 d5          	vaddps xmm10,xmm9,xmm5
  6b16f2:	c5 18 58 dc          	vaddps xmm11,xmm12,xmm4
  6b16f6:	c4 41 20 14 ea       	vunpcklps xmm13,xmm11,xmm10
  6b16fb:	c4 41 20 15 d2       	vunpckhps xmm10,xmm11,xmm10
  6b1700:	c5 78 13 54 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm10
  6b1706:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  6b170b:	c5 48 58 d7          	vaddps xmm10,xmm6,xmm7
  6b170f:	c5 38 58 db          	vaddps xmm11,xmm8,xmm3
  6b1713:	c4 41 20 15 ea       	vunpckhps xmm13,xmm11,xmm10
  6b1718:	c4 41 20 14 d2       	vunpcklps xmm10,xmm11,xmm10
  6b171d:	c5 78 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm10
  6b1723:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  6b1729:	c4 c1 50 5c e9       	vsubps xmm5,xmm5,xmm9
  6b172e:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  6b1732:	c5 58 15 cd          	vunpckhps xmm9,xmm4,xmm5
  6b1736:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  6b173a:	c5 f8 11 64 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm4
  6b1740:	c5 78 13 4c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm9
  6b1746:	c5 c8 5c e7          	vsubps xmm4,xmm6,xmm7
  6b174a:	c4 c1 60 5c d8       	vsubps xmm3,xmm3,xmm8
  6b174f:	c5 e0 15 ec          	vunpckhps xmm5,xmm3,xmm4
  6b1753:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  6b1757:	c5 f8 11 5c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm3
  6b175d:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  6b1763:	48 83 c2 60          	add    rdx,0x60
  6b1767:	48 39 d0             	cmp    rax,rdx
  6b176a:	0f 85 f0 fd ff ff    	jne    6b1560 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6b1770:	c5 f8 77             	vzeroupper
  6b1773:	c3                   	ret
