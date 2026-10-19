
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006e1640 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6e1640:	55                   	push   rbp
  6e1641:	48 89 e5             	mov    rbp,rsp
  6e1644:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6e1648:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  6e164f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  6e1656:	00 
  6e1657:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  6e165e:	00 
  6e165f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  6e1664:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  6e1669:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  6e166d:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  6e1672:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  6e1677:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  6e167c:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  6e1681:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  6e1688:	00 
  6e1689:	c5 fc 10 b7 90 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x90]
  6e1690:	00 
  6e1691:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  6e1698:	00 
  6e1699:	c5 7c c6 c1 dd       	vshufps ymm8,ymm0,ymm1,0xdd
  6e169e:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  6e16a4:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  6e16a9:	c4 43 fd 01 d0 d8    	vpermpd ymm10,ymm8,0xd8
  6e16af:	c5 6c c6 c3 dd       	vshufps ymm8,ymm2,ymm3,0xdd
  6e16b4:	c4 43 fd 01 d8 d8    	vpermpd ymm11,ymm8,0xd8
  6e16ba:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  6e16bf:	c4 43 fd 01 e0 d8    	vpermpd ymm12,ymm8,0xd8
  6e16c5:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  6e16ca:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6e16d0:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  6e16d5:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6e16db:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  6e16e0:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6e16e6:	c5 cc c6 df 88       	vshufps ymm3,ymm6,ymm7,0x88
  6e16eb:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6e16f1:	c4 c1 34 58 e2       	vaddps ymm4,ymm9,ymm10
  6e16f6:	c4 c1 24 58 ec       	vaddps ymm5,ymm11,ymm12
  6e16fb:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  6e16ff:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  6e1703:	c5 6c 58 eb          	vaddps ymm13,ymm2,ymm3
  6e1707:	c5 14 58 c7          	vaddps ymm8,ymm13,ymm7
  6e170b:	c4 41 34 5c d2       	vsubps ymm10,ymm9,ymm10
  6e1710:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  6e1714:	c5 2c 58 f2          	vaddps ymm14,ymm10,ymm2
  6e1718:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  6e171c:	c4 c1 1c 5c cb       	vsubps ymm1,ymm12,ymm11
  6e1721:	c5 74 58 c8          	vaddps ymm9,ymm1,ymm0
  6e1725:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6e1729:	c4 c1 44 5c ed       	vsubps ymm5,ymm7,ymm13
  6e172e:	c5 ac 5c d2          	vsubps ymm2,ymm10,ymm2
  6e1732:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  6e1736:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  6e173a:	c4 e3 7d 19 f1 01    	vextractf128 xmm1,ymm6,0x1
  6e1740:	c5 78 29 f6          	vmovaps xmm6,xmm14
  6e1744:	c4 63 7d 19 f7 01    	vextractf128 xmm7,ymm14,0x1
  6e174a:	c5 78 28 d4          	vmovaps xmm10,xmm4
  6e174e:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6e1754:	c5 75 14 dc          	vunpcklpd ymm11,ymm1,ymm4
  6e1758:	c5 f8 28 ca          	vmovaps xmm1,xmm2
  6e175c:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6e1762:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  6e1766:	c4 c1 7d 15 e2       	vunpckhpd ymm4,ymm0,ymm10
  6e176b:	c4 c1 7d 14 fa       	vunpcklpd ymm7,ymm0,ymm10
  6e1770:	c5 4d 15 d1          	vunpckhpd ymm10,ymm6,ymm1
  6e1774:	c5 cd 14 c9          	vunpcklpd ymm1,ymm6,ymm1
  6e1778:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  6e177d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6e1782:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6e1788:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  6e178d:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6e1792:	c4 c1 5c c6 f2 88    	vshufps ymm6,ymm4,ymm10,0x88
  6e1798:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  6e179d:	c4 c1 5c c6 e2 dd    	vshufps ymm4,ymm4,ymm10,0xdd
  6e17a3:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6e17a8:	c5 a4 c6 f2 88       	vshufps ymm6,ymm11,ymm2,0x88
  6e17ad:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6e17b2:	c5 a4 c6 d2 dd       	vshufps ymm2,ymm11,ymm2,0xdd
  6e17b7:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6e17bc:	c4 41 78 28 d0       	vmovaps xmm10,xmm8
  6e17c1:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  6e17c7:	c4 41 78 28 d9       	vmovaps xmm11,xmm9
  6e17cc:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6e17d2:	c5 78 28 e5          	vmovaps xmm12,xmm5
  6e17d6:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6e17dc:	c5 bd 14 ed          	vunpcklpd ymm5,ymm8,ymm5
  6e17e0:	c5 78 28 c3          	vmovaps xmm8,xmm3
  6e17e4:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6e17ea:	c5 35 14 eb          	vunpcklpd ymm13,ymm9,ymm3
  6e17ee:	c4 41 2d 15 f4       	vunpckhpd ymm14,ymm10,ymm12
  6e17f3:	c4 41 2d 14 cc       	vunpcklpd ymm9,ymm10,ymm12
  6e17f8:	c4 41 25 15 d0       	vunpckhpd ymm10,ymm11,ymm8
  6e17fd:	c4 41 25 14 c0       	vunpcklpd ymm8,ymm11,ymm8
  6e1802:	c4 c1 34 c6 d8 88    	vshufps ymm3,ymm9,ymm8,0x88
  6e1808:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6e180d:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  6e1813:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6e1819:	c4 41 0c c6 ca 88    	vshufps ymm9,ymm14,ymm10,0x88
  6e181f:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  6e1825:	c4 41 0c c6 d2 dd    	vshufps ymm10,ymm14,ymm10,0xdd
  6e182b:	c4 41 2c c6 f2 d8    	vshufps ymm14,ymm10,ymm10,0xd8
  6e1831:	c4 41 54 c6 d5 88    	vshufps ymm10,ymm5,ymm13,0x88
  6e1837:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  6e183d:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  6e1843:	c5 54 c6 ed d8       	vshufps ymm13,ymm5,ymm5,0xd8
  6e1848:	c5 7c 10 5a 40       	vmovups ymm11,YMMWORD PTR [rdx+0x40]
  6e184d:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  6e1854:	00 
  6e1855:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  6e185c:	00 
  6e185d:	c5 ac 59 ef          	vmulps ymm5,ymm10,ymm7
  6e1861:	c4 c2 35 bc ef       	vfnmadd231ps ymm5,ymm9,ymm15
  6e1866:	c4 41 2c 59 c9       	vmulps ymm9,ymm10,ymm9
  6e186b:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  6e1872:	00 
  6e1873:	c4 42 45 b8 cf       	vfmadd231ps ymm9,ymm7,ymm15
  6e1878:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  6e187f:	00 
  6e1880:	c5 7c 59 d6          	vmulps ymm10,ymm0,ymm6
  6e1884:	c4 62 1d bc d7       	vfnmadd231ps ymm10,ymm12,ymm7
  6e1889:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  6e188d:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  6e1894:	00 
  6e1895:	c4 62 4d b8 e7       	vfmadd231ps ymm12,ymm6,ymm7
  6e189a:	c5 7c 10 ba e0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xe0]
  6e18a1:	00 
  6e18a2:	c5 fc 59 f4          	vmulps ymm6,ymm0,ymm4
  6e18a6:	c4 c2 0d bc f7       	vfnmadd231ps ymm6,ymm14,ymm15
  6e18ab:	c5 8c 59 f8          	vmulps ymm7,ymm14,ymm0
  6e18af:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  6e18b6:	00 
  6e18b7:	c4 c2 5d b8 ff       	vfmadd231ps ymm7,ymm4,ymm15
  6e18bc:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  6e18c3:	00 
  6e18c4:	c5 7c 59 f2          	vmulps ymm14,ymm0,ymm2
  6e18c8:	c4 42 15 bc f7       	vfnmadd231ps ymm14,ymm13,ymm15
  6e18cd:	c5 94 59 e0          	vmulps ymm4,ymm13,ymm0
  6e18d1:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  6e18d6:	c4 c2 6d b8 e7       	vfmadd231ps ymm4,ymm2,ymm15
  6e18db:	c5 2c 58 ed          	vaddps ymm13,ymm10,ymm5
  6e18df:	c5 24 59 f9          	vmulps ymm15,ymm11,ymm1
  6e18e3:	c4 62 3d bc f8       	vfnmadd231ps ymm15,ymm8,ymm0
  6e18e8:	c4 41 24 59 c0       	vmulps ymm8,ymm11,ymm8
  6e18ed:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  6e18f3:	c5 14 58 da          	vaddps ymm11,ymm13,ymm2
  6e18f7:	c5 7c 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm11
  6e18fd:	c4 62 75 b8 c0       	vfmadd231ps ymm8,ymm1,ymm0
  6e1902:	c4 62 7d 18 1d 55 3b 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff993b55]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6e1909:	99 ff 
  6e190b:	c4 c1 0c 58 cf       	vaddps ymm1,ymm14,ymm15
  6e1910:	c4 62 25 ac ea       	vfnmadd213ps ymm13,ymm11,ymm2
  6e1915:	c5 cc 58 c1          	vaddps ymm0,ymm6,ymm1
  6e1919:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6e191f:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  6e1924:	c4 c1 34 58 c4       	vaddps ymm0,ymm9,ymm12
  6e1929:	c5 fc 58 d3          	vaddps ymm2,ymm0,ymm3
  6e192d:	c4 e2 25 ac c3       	vfnmadd213ps ymm0,ymm11,ymm3
  6e1932:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  6e1936:	c5 c4 58 d9          	vaddps ymm3,ymm7,ymm1
  6e193a:	c4 c2 75 bc fb       	vfnmadd231ps ymm7,ymm1,ymm11
  6e193f:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  6e1944:	c4 41 5c 5c c0       	vsubps ymm8,ymm4,ymm8
  6e1949:	c4 62 7d 18 0d 82 39 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff993982]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6e1950:	99 ff 
  6e1952:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  6e1956:	c4 c1 54 5c ea       	vsubps ymm5,ymm5,ymm10
  6e195b:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  6e195f:	c4 41 3c 59 e1       	vmulps ymm12,ymm8,ymm9
  6e1964:	c4 41 0c 5c d7       	vsubps ymm10,ymm14,ymm15
  6e1969:	c5 1c 58 c6          	vaddps ymm8,ymm12,ymm6
  6e196d:	c5 34 59 f5          	vmulps ymm14,ymm9,ymm5
  6e1971:	c4 41 2c 59 f9       	vmulps ymm15,ymm10,ymm9
  6e1976:	c4 41 7c 5c d6       	vsubps ymm10,ymm0,ymm14
  6e197b:	c5 94 5c e9          	vsubps ymm5,ymm13,ymm1
  6e197f:	c4 41 44 5c df       	vsubps ymm11,ymm7,ymm15
  6e1984:	c4 c1 4c 5c f4       	vsubps ymm6,ymm6,ymm12
  6e1989:	c5 0c 58 c8          	vaddps ymm9,ymm14,ymm0
  6e198d:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  6e1991:	c5 7c 28 6c 24 60    	vmovaps ymm13,YMMWORD PTR [rsp+0x60]
  6e1997:	c5 7c 28 74 24 40    	vmovaps ymm14,YMMWORD PTR [rsp+0x40]
  6e199d:	c4 c1 10 58 c6       	vaddps xmm0,xmm13,xmm14
  6e19a2:	c5 e8 58 cb          	vaddps xmm1,xmm2,xmm3
  6e19a6:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  6e19aa:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e19ae:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  6e19b3:	c5 78 11 26          	vmovups XMMWORD PTR [rsi],xmm12
  6e19b7:	c4 c1 58 5c c0       	vsubps xmm0,xmm4,xmm8
  6e19bc:	c4 c1 28 5c cb       	vsubps xmm1,xmm10,xmm11
  6e19c1:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  6e19c5:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e19c9:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  6e19ce:	c5 78 11 66 20       	vmovups XMMWORD PTR [rsi+0x20],xmm12
  6e19d3:	c5 d0 58 c6          	vaddps xmm0,xmm5,xmm6
  6e19d7:	c5 b0 58 cf          	vaddps xmm1,xmm9,xmm7
  6e19db:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  6e19df:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e19e3:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  6e19e8:	c5 78 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm12
  6e19ed:	c4 c1 10 5c c6       	vsubps xmm0,xmm13,xmm14
  6e19f2:	c5 e8 5c cb          	vsubps xmm1,xmm2,xmm3
  6e19f6:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6e19fa:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e19fe:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  6e1a03:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  6e1a08:	c5 b8 58 c4          	vaddps xmm0,xmm8,xmm4
  6e1a0c:	c4 c1 28 58 cb       	vaddps xmm1,xmm10,xmm11
  6e1a11:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6e1a15:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e1a19:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  6e1a20:	00 
  6e1a21:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  6e1a28:	00 
  6e1a29:	c5 d0 5c c6          	vsubps xmm0,xmm5,xmm6
  6e1a2d:	c5 b0 5c cf          	vsubps xmm1,xmm9,xmm7
  6e1a31:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6e1a35:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6e1a39:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  6e1a40:	00 
  6e1a41:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6e1a48:	00 
  6e1a49:	48 89 ec             	mov    rsp,rbp
  6e1a4c:	5d                   	pop    rbp
  6e1a4d:	c5 f8 77             	vzeroupper
  6e1a50:	c3                   	ret
