
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b14400 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b14400:	48 c1 e2 06          	shl    rdx,0x6
  b14404:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b14408:	31 d2                	xor    edx,edx
  b1440a:	62 e2 7d 28 18 35 c0 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff560ec0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b14411:	0e 56 ff 
  b14414:	62 e2 7d 28 18 3d 42 	vbroadcastss ymm23,DWORD PTR [rip+0xffffffffff561042]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1441b:	10 56 ff 
  b1441e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  b14422:	c4 e2 7d 18 1d 71 0f 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff560f71]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b14429:	56 ff 
  b1442b:	c5 fc 28 25 8d 3e 56 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff563e8d]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b14432:	ff 
  b14433:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b1443a:	84 00 00 00 00 00 
  b14440:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  b14445:	c5 fc 10 74 17 20    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x20]
  b1444b:	c5 fc 10 7c 17 40    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x40]
  b14451:	c5 7c 10 44 17 60    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x60]
  b14457:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b1445d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b14463:	c5 7c 10 94 17 80 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x80]
  b1446a:	00 00 
  b1446c:	c5 7c 10 9c 17 a0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xa0]
  b14473:	00 00 
  b14475:	c4 41 2c c6 e3 88    	vshufps ymm12,ymm10,ymm11,0x88
  b1447b:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b14481:	c4 41 34 5c ec       	vsubps ymm13,ymm9,ymm12
  b14486:	62 31 14 28 59 ee    	vmulps ymm13,ymm13,ymm22
  b1448c:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  b14492:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b14498:	c4 41 2c c6 c3 dd    	vshufps ymm8,ymm10,ymm11,0xdd
  b1449e:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b144a4:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b144a8:	c5 54 c6 de dd       	vshufps ymm11,ymm5,ymm6,0xdd
  b144ad:	c4 43 fd 01 f3 d8    	vpermpd ymm14,ymm11,0xd8
  b144b3:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b144b9:	c4 42 2d ac fe       	vfnmadd213ps ymm15,ymm10,ymm14
  b144be:	c4 41 14 58 df       	vaddps ymm11,ymm13,ymm15
  b144c3:	c4 41 34 58 cc       	vaddps ymm9,ymm9,ymm12
  b144c8:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  b144cd:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b144d3:	62 b1 7c 28 28 f7    	vmovaps ymm6,ymm23
  b144d9:	c4 e2 35 ac f5       	vfnmadd213ps ymm6,ymm9,ymm5
  b144de:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  b144e3:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b144e9:	c5 4c 5c c7          	vsubps ymm8,ymm6,ymm7
  b144ed:	c4 41 04 5c e5       	vsubps ymm12,ymm15,ymm13
  b144f2:	c5 cc 58 f7          	vaddps ymm6,ymm6,ymm7
  b144f6:	62 c1 0c 28 58 c2    	vaddps ymm16,ymm14,ymm10
  b144fc:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b14500:	c5 f8 28 fd          	vmovaps xmm7,xmm5
  b14504:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  b1450a:	c5 78 28 d6          	vmovaps xmm10,xmm6
  b1450e:	c4 c3 7d 19 f5 01    	vextractf128 xmm13,ymm6,0x1
  b14514:	c5 78 29 c5          	vmovaps xmm5,xmm8
  b14518:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b1451e:	c5 45 15 f5          	vunpckhpd ymm14,ymm7,ymm5
  b14522:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  b14526:	c5 fa 7e f6          	vmovq  xmm6,xmm6
  b1452a:	c4 c1 45 73 da 08    	vpsrldq ymm7,ymm10,0x8
  b14530:	62 c1 b5 28 15 c8    	vunpckhpd ymm17,ymm9,ymm8
  b14536:	c4 41 35 14 c0       	vunpcklpd ymm8,ymm9,ymm8
  b1453b:	c4 63 15 0c d2 cc    	vblendps ymm10,ymm13,ymm2,0xcc
  b14541:	62 e1 95 28 15 d2    	vunpckhpd ymm18,ymm13,ymm2
  b14547:	c5 54 c6 ce dd       	vshufps ymm9,ymm5,ymm6,0xdd
  b1454c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b14552:	c5 0c c6 ef 88       	vshufps ymm13,ymm14,ymm7,0x88
  b14557:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b1455d:	c5 8c c6 ff dd       	vshufps ymm7,ymm14,ymm7,0xdd
  b14562:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b14567:	c4 41 3c c6 f2 88    	vshufps ymm14,ymm8,ymm10,0x88
  b1456d:	c4 41 0c c6 fe d8    	vshufps ymm15,ymm14,ymm14,0xd8
  b14573:	c4 41 3c c6 c2 dd    	vshufps ymm8,ymm8,ymm10,0xdd
  b14579:	c4 41 3c c6 d0 d8    	vshufps ymm10,ymm8,ymm8,0xd8
  b1457f:	62 31 74 20 c6 c2 88 	vshufps ymm8,ymm17,ymm18,0x88
  b14586:	c4 41 3c c6 f0 d8    	vshufps ymm14,ymm8,ymm8,0xd8
  b1458c:	62 31 74 20 c6 c2 dd 	vshufps ymm8,ymm17,ymm18,0xdd
  b14593:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b14599:	62 a1 7c 08 28 c8    	vmovaps xmm17,xmm16
  b1459f:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  b145a6:	62 c1 7c 08 28 d4    	vmovaps xmm18,xmm12
  b145ac:	c4 63 7d 19 e0 01    	vextractf128 xmm0,ymm12,0x1
  b145b2:	62 c1 7c 08 28 db    	vmovaps xmm19,xmm11
  b145b8:	62 33 7d 28 19 dc 01 	vextractf32x4 xmm20,ymm11,0x1
  b145bf:	62 a1 f5 20 15 eb    	vunpckhpd ymm21,ymm17,ymm19
  b145c5:	62 31 f5 20 14 db    	vunpcklpd ymm11,ymm17,ymm19
  b145cb:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  b145d0:	62 b1 75 20 73 da 08 	vpsrldq ymm17,ymm18,0x8
  b145d7:	62 a1 fd 20 15 d4    	vunpckhpd ymm18,ymm16,ymm20
  b145dd:	62 a1 fd 20 14 c4    	vunpcklpd ymm16,ymm16,ymm20
  b145e3:	c4 e3 7d 0c ca cc    	vblendps ymm1,ymm0,ymm2,0xcc
  b145e9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b145ed:	62 c1 24 28 c6 dc dd 	vshufps ymm19,ymm11,ymm12,0xdd
  b145f4:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  b145fb:	62 a1 54 20 c6 e1 88 	vshufps ymm20,ymm21,ymm17,0x88
  b14602:	62 21 5c 20 c6 c4 d8 	vshufps ymm24,ymm20,ymm20,0xd8
  b14609:	62 a1 54 20 c6 c9 dd 	vshufps ymm17,ymm21,ymm17,0xdd
  b14610:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  b14617:	62 e1 7c 20 c6 e1 88 	vshufps ymm20,ymm16,ymm1,0x88
  b1461e:	62 a1 5c 20 c6 ec d8 	vshufps ymm21,ymm20,ymm20,0xd8
  b14625:	62 f1 7c 20 c6 c9 dd 	vshufps ymm1,ymm16,ymm1,0xdd
  b1462c:	62 e1 74 28 c6 e1 d8 	vshufps ymm20,ymm1,ymm1,0xd8
  b14633:	62 f1 6c 20 c6 c8 dd 	vshufps ymm1,ymm18,ymm0,0xdd
  b1463a:	62 e1 74 28 c6 c1 d8 	vshufps ymm16,ymm1,ymm1,0xd8
  b14641:	62 f1 6c 20 c6 c0 88 	vshufps ymm0,ymm18,ymm0,0x88
  b14648:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1464d:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  b14654:	00 
  b14655:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  b1465c:	62 e1 04 28 59 d1    	vmulps ymm18,ymm15,ymm1
  b14662:	62 82 55 20 bc d1    	vfnmadd231ps ymm18,ymm21,ymm25
  b14668:	62 e1 54 20 59 e9    	vmulps ymm21,ymm21,ymm1
  b1466e:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  b14675:	00 
  b14676:	62 82 05 28 b8 e9    	vfmadd231ps ymm21,ymm15,ymm25
  b1467c:	62 61 7c 28 10 49 05 	vmovups ymm25,YMMWORD PTR [rcx+0xa0]
  b14683:	c5 14 59 f9          	vmulps ymm15,ymm13,ymm1
  b14687:	62 12 3d 20 bc f9    	vfnmadd231ps ymm15,ymm24,ymm25
  b1468d:	62 f1 3c 20 59 c9    	vmulps ymm1,ymm24,ymm1
  b14693:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  b1469a:	62 92 15 28 b8 c9    	vfmadd231ps ymm1,ymm13,ymm25
  b146a0:	c5 7c 10 a9 a0 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x1a0]
  b146a7:	00 
  b146a8:	62 01 0c 28 59 c8    	vmulps ymm25,ymm14,ymm24
  b146ae:	62 42 7d 28 bc cd    	vfnmadd231ps ymm25,ymm0,ymm13
  b146b4:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  b146ba:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  b146c1:	c4 c2 0d b8 c5       	vfmadd231ps ymm0,ymm14,ymm13
  b146c6:	c5 7c 10 69 60       	vmovups ymm13,YMMWORD PTR [rcx+0x60]
  b146cb:	62 11 34 28 59 f0    	vmulps ymm14,ymm9,ymm24
  b146d1:	62 52 65 20 bc f5    	vfnmadd231ps ymm14,ymm19,ymm13
  b146d7:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  b146dd:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  b146e4:	62 c2 35 28 b8 dd    	vfmadd231ps ymm19,ymm9,ymm13
  b146ea:	c5 7c 10 89 60 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x160]
  b146f1:	00 
  b146f2:	62 11 2c 28 59 e8    	vmulps ymm13,ymm10,ymm24
  b146f8:	62 52 5d 20 bc e9    	vfnmadd231ps ymm13,ymm20,ymm9
  b146fe:	62 81 5c 20 59 e0    	vmulps ymm20,ymm20,ymm24
  b14704:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  b1470b:	62 c2 2d 28 b8 e1    	vfmadd231ps ymm20,ymm10,ymm9
  b14711:	c5 7c 10 89 e0 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0xe0]
  b14718:	00 
  b14719:	62 11 44 28 59 d0    	vmulps ymm10,ymm7,ymm24
  b1471f:	62 52 75 20 bc d1    	vfnmadd231ps ymm10,ymm17,ymm9
  b14725:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  b1472b:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  b14732:	62 c2 45 28 b8 c9    	vfmadd231ps ymm17,ymm7,ymm9
  b14738:	c5 fc 10 b9 e0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1e0]
  b1473f:	00 
  b14740:	62 11 3c 28 59 c8    	vmulps ymm9,ymm8,ymm24
  b14746:	62 72 7d 20 bc cf    	vfnmadd231ps ymm9,ymm16,ymm7
  b1474c:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  b14752:	62 e2 3d 28 b8 c7    	vfmadd231ps ymm16,ymm8,ymm7
  b14758:	c5 d4 c6 ee 88       	vshufps ymm5,ymm5,ymm6,0x88
  b1475d:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b14762:	c4 c1 24 c6 f4 88    	vshufps ymm6,ymm11,ymm12,0x88
  b14768:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1476d:	62 b1 54 28 58 fa    	vaddps ymm7,ymm5,ymm18
  b14773:	62 31 54 28 5c c2    	vsubps ymm8,ymm5,ymm18
  b14779:	c5 74 58 d8          	vaddps ymm11,ymm1,ymm0
  b1477d:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b14781:	c4 c1 0c 58 cd       	vaddps ymm1,ymm14,ymm13
  b14786:	c4 c1 0c 5c ed       	vsubps ymm5,ymm14,ymm13
  b1478b:	62 31 64 20 58 e4    	vaddps ymm12,ymm19,ymm20
  b14791:	62 31 64 20 5c ec    	vsubps ymm13,ymm19,ymm20
  b14797:	62 31 74 20 58 f0    	vaddps ymm14,ymm17,ymm16
  b1479d:	62 a1 74 20 5c c0    	vsubps ymm16,ymm17,ymm16
  b147a3:	62 c1 2c 28 58 c9    	vaddps ymm17,ymm10,ymm9
  b147a9:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  b147ae:	62 71 54 20 58 d6    	vaddps ymm10,ymm21,ymm6
  b147b4:	62 a1 4c 28 5c d5    	vsubps ymm18,ymm6,ymm21
  b147ba:	62 91 04 28 58 f1    	vaddps ymm6,ymm15,ymm25
  b147c0:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  b147c6:	62 c1 54 28 58 dd    	vaddps ymm19,ymm5,ymm13
  b147cc:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  b147d0:	62 c1 7c 20 5c e1    	vsubps ymm20,ymm16,ymm9
  b147d6:	62 a1 34 28 58 c0    	vaddps ymm16,ymm9,ymm16
  b147dc:	c5 44 58 ce          	vaddps ymm9,ymm7,ymm6
  b147e0:	c5 c4 5c ee          	vsubps ymm5,ymm7,ymm6
  b147e4:	62 c1 1c 28 58 ee    	vaddps ymm21,ymm12,ymm14
  b147ea:	c4 c1 1c 5c f6       	vsubps ymm6,ymm12,ymm14
  b147ef:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  b147f4:	c4 41 2c 5c db       	vsubps ymm11,ymm10,ymm11
  b147f9:	62 31 74 28 58 e1    	vaddps ymm12,ymm1,ymm17
  b147ff:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  b14805:	c5 3c 58 d0          	vaddps ymm10,ymm8,ymm0
  b14809:	62 e1 64 20 59 cb    	vmulps ymm17,ymm19,ymm3
  b1480f:	62 e1 5c 20 59 db    	vmulps ymm19,ymm20,ymm3
  b14815:	c5 14 59 eb          	vmulps ymm13,ymm13,ymm3
  b14819:	62 e1 7c 20 59 c3    	vmulps ymm16,ymm16,ymm3
  b1481f:	c5 bc 5c f8          	vsubps ymm7,ymm8,ymm0
  b14823:	62 b1 14 28 5c c0    	vsubps ymm0,ymm13,ymm16
  b14829:	62 31 14 28 58 c0    	vaddps ymm8,ymm13,ymm16
  b1482f:	62 31 04 28 58 ea    	vaddps ymm13,ymm15,ymm18
  b14835:	62 51 6c 20 5c ff    	vsubps ymm15,ymm18,ymm15
  b1483b:	62 a1 74 20 58 c3    	vaddps ymm16,ymm17,ymm19
  b14841:	62 a1 64 20 5c c9    	vsubps ymm17,ymm19,ymm17
  b14847:	62 e1 14 28 58 d0    	vaddps ymm18,ymm13,ymm0
  b1484d:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  b14851:	c5 24 58 e9          	vaddps ymm13,ymm11,ymm1
  b14855:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  b14859:	62 a1 04 28 58 d9    	vaddps ymm19,ymm15,ymm17
  b1485f:	62 31 04 28 5c d9    	vsubps ymm11,ymm15,ymm17
  b14865:	62 31 0c 28 5c fd    	vsubps ymm15,ymm14,ymm21
  b1486b:	62 31 0c 28 58 f5    	vaddps ymm14,ymm14,ymm21
  b14871:	62 c1 34 08 58 cc    	vaddps xmm17,xmm9,xmm12
  b14877:	62 c2 5d 28 7f ce    	vpermt2ps ymm17,ymm4,ymm14
  b1487d:	62 c3 7d 28 19 ce 01 	vextractf32x4 xmm14,ymm17,0x1
  b14884:	c5 78 13 74 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm14
  b1488a:	62 e1 7c 08 11 0c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm17
  b14891:	62 31 2c 08 58 f0    	vaddps xmm14,xmm10,xmm16
  b14897:	62 32 5d 28 7f f2    	vpermt2ps ymm14,ymm4,ymm18
  b1489d:	62 33 7d 28 19 f1 01 	vextractf32x4 xmm17,ymm14,0x1
  b148a4:	62 e1 7c 08 13 4c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm17
  b148ab:	05 
  b148ac:	c5 78 11 74 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm14
  b148b2:	c5 50 58 f6          	vaddps xmm14,xmm5,xmm6
  b148b6:	62 52 5d 28 7f f5    	vpermt2ps ymm14,ymm4,ymm13
  b148bc:	c4 43 7d 19 f5 01    	vextractf128 xmm13,ymm14,0x1
  b148c2:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  b148c8:	c5 78 11 74 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm14
  b148ce:	c5 38 58 ef          	vaddps xmm13,xmm8,xmm7
  b148d2:	62 32 5d 28 7f eb    	vpermt2ps ymm13,ymm4,ymm19
  b148d8:	c4 43 7d 19 ee 01    	vextractf128 xmm14,ymm13,0x1
  b148de:	c5 78 13 74 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm14
  b148e4:	c5 78 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm13
  b148ea:	c4 41 30 5c cc       	vsubps xmm9,xmm9,xmm12
  b148ef:	62 52 5d 28 7f cf    	vpermt2ps ymm9,ymm4,ymm15
  b148f5:	c4 43 7d 19 cc 01    	vextractf128 xmm12,ymm9,0x1
  b148fb:	c5 78 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm12
  b14901:	c5 78 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm9
  b14907:	62 31 2c 08 5c c8    	vsubps xmm9,xmm10,xmm16
  b1490d:	62 72 5d 28 7f c8    	vpermt2ps ymm9,ymm4,ymm0
  b14913:	c4 63 7d 19 c8 01    	vextractf128 xmm0,ymm9,0x1
  b14919:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  b14920:	00 00 
  b14922:	c5 78 11 4c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm9
  b14928:	c5 d0 5c c6          	vsubps xmm0,xmm5,xmm6
  b1492c:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  b14932:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b14938:	c5 f8 13 8c 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm1
  b1493f:	00 00 
  b14941:	c5 f8 11 84 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm0
  b14948:	00 00 
  b1494a:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  b1494f:	62 d2 5d 28 7f c3    	vpermt2ps ymm0,ymm4,ymm11
  b14955:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b1495b:	c5 f8 13 8c 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm1
  b14962:	00 00 
  b14964:	c5 f8 11 84 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm0
  b1496b:	00 00 
  b1496d:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b14974:	48 39 d0             	cmp    rax,rdx
  b14977:	0f 85 c3 fa ff ff    	jne    b14440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x40>
  b1497d:	c5 f8 77             	vzeroupper
  b14980:	c3                   	ret
