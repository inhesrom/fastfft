
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1f3c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1f3c0:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  b1f3c5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1f3cb:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b1f3cf:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b1f3d5:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  b1f3d9:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  b1f3de:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  b1f3e3:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  b1f3e8:	c4 e3 7d 19 c6 01    	vextractf128 xmm6,ymm0,0x1
  b1f3ee:	c5 e0 c6 fe 88       	vshufps xmm7,xmm3,xmm6,0x88
  b1f3f3:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  b1f3f8:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  b1f3fd:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1f403:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b1f409:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  b1f40f:	c4 41 38 c6 d1 88    	vshufps xmm10,xmm8,xmm9,0x88
  b1f415:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  b1f41a:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  b1f41f:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1f425:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b1f42b:	c4 c3 7d 19 c4 01    	vextractf128 xmm12,ymm0,0x1
  b1f431:	c4 41 58 c6 ec 88    	vshufps xmm13,xmm4,xmm12,0x88
  b1f437:	c5 fb 10 47 58       	vmovsd xmm0,QWORD PTR [rdi+0x58]
  b1f43c:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1f442:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b1f448:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  b1f44e:	c4 41 50 c6 fe 88    	vshufps xmm15,xmm5,xmm14,0x88
  b1f454:	62 c1 14 28 5c c7    	vsubps ymm16,ymm13,ymm15
  b1f45a:	62 e2 7d 28 18 0d f4 	vbroadcastss ymm17,DWORD PTR [rip+0xffffffffff5562f4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  b1f461:	62 55 ff 
  b1f464:	62 b1 7c 20 59 c1    	vmulps ymm0,ymm16,ymm17
  b1f46a:	62 e2 7d 28 18 15 2c 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff555f2c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  b1f471:	5f 55 ff 
  b1f474:	62 b2 25 28 b8 c2    	vfmadd231ps ymm0,ymm11,ymm18
  b1f47a:	c4 c1 58 c6 e4 dd    	vshufps xmm4,xmm4,xmm12,0xdd
  b1f480:	c4 c1 50 c6 ee dd    	vshufps xmm5,xmm5,xmm14,0xdd
  b1f486:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  b1f48a:	c5 e0 c6 de dd       	vshufps xmm3,xmm3,xmm6,0xdd
  b1f48f:	c4 c1 38 c6 f1 dd    	vshufps xmm6,xmm8,xmm9,0xdd
  b1f495:	c5 64 58 c6          	vaddps ymm8,ymm3,ymm6
  b1f499:	c5 7b 10 4f 10       	vmovsd xmm9,QWORD PTR [rdi+0x10]
  b1f49e:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  b1f4a4:	c4 e3 35 0c c9 c0    	vblendps ymm1,ymm9,ymm1,0xc0
  b1f4aa:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1f4b0:	c5 68 c6 c9 dd       	vshufps xmm9,xmm2,xmm1,0xdd
  b1f4b5:	c4 62 7d 18 35 2a 62 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff55622a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  b1f4bc:	55 ff 
  b1f4be:	62 c1 7c 28 28 de    	vmovaps ymm19,ymm14
  b1f4c4:	62 c2 3d 28 a8 d9    	vfmadd213ps ymm19,ymm8,ymm9
  b1f4ca:	62 e2 7d 28 18 25 70 	vbroadcastss ymm20,DWORD PTR [rip+0xffffffffff556170]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  b1f4d1:	61 55 ff 
  b1f4d4:	62 a2 1d 28 bc dc    	vfnmadd231ps ymm19,ymm12,ymm20
  b1f4da:	c4 41 14 58 ef       	vaddps ymm13,ymm13,ymm15
  b1f4df:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  b1f4e3:	c5 e8 c6 c9 88       	vshufps xmm1,xmm2,xmm1,0x88
  b1f4e8:	c5 7c 29 f2          	vmovaps ymm2,ymm14
  b1f4ec:	c4 e2 45 a8 d1       	vfmadd213ps ymm2,ymm7,ymm1
  b1f4f1:	62 b2 15 28 bc d4    	vfnmadd231ps ymm2,ymm13,ymm20
  b1f4f7:	c5 e4 5c de          	vsubps ymm3,ymm3,ymm6
  b1f4fb:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  b1f4ff:	62 b1 5c 28 59 e9    	vmulps ymm5,ymm4,ymm17
  b1f505:	62 b2 65 28 b8 ea    	vfmadd231ps ymm5,ymm3,ymm18
  b1f50b:	62 b1 24 28 59 f1    	vmulps ymm6,ymm11,ymm17
  b1f511:	62 b2 6d 20 bc f0    	vfnmadd231ps ymm6,ymm18,ymm16
  b1f517:	62 31 7c 28 28 d4    	vmovaps ymm10,ymm20
  b1f51d:	c4 42 3d ac d1       	vfnmadd213ps ymm10,ymm8,ymm9
  b1f522:	c4 42 1d b8 d6       	vfmadd231ps ymm10,ymm12,ymm14
  b1f527:	62 e2 45 28 ac e1    	vfnmadd213ps ymm20,ymm7,ymm1
  b1f52d:	62 c2 15 28 b8 e6    	vfmadd231ps ymm20,ymm13,ymm14
  b1f533:	62 b1 64 28 59 d9    	vmulps ymm3,ymm3,ymm17
  b1f539:	62 b2 5d 28 bc da    	vfnmadd231ps ymm3,ymm4,ymm18
  b1f53f:	c4 c1 34 58 e0       	vaddps ymm4,ymm9,ymm8
  b1f544:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  b1f548:	c5 f4 58 cf          	vaddps ymm1,ymm1,ymm7
  b1f54c:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  b1f550:	c5 e8 5c fd          	vsubps xmm7,xmm2,xmm5
  b1f554:	c4 e3 75 18 cf 01    	vinsertf128 ymm1,ymm1,xmm7,0x1
  b1f55a:	c5 e8 58 d5          	vaddps xmm2,xmm2,xmm5
  b1f55e:	62 f1 5c 00 5c eb    	vsubps xmm5,xmm20,xmm3
  b1f564:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b1f568:	c5 ed 14 d5          	vunpcklpd ymm2,ymm2,ymm5
  b1f56c:	62 f1 5c 00 58 db    	vaddps xmm3,xmm20,xmm3
  b1f572:	c5 f5 14 eb          	vunpcklpd ymm5,ymm1,ymm3
  b1f576:	c5 54 c6 c2 88       	vshufps ymm8,ymm5,ymm2,0x88
  b1f57b:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b1f581:	c5 d4 c6 d2 dd       	vshufps ymm2,ymm5,ymm2,0xdd
  b1f586:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1f58b:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b1f58f:	c5 f4 c6 cf 88       	vshufps ymm1,ymm1,ymm7,0x88
  b1f594:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1f599:	62 b1 7c 08 58 db    	vaddps xmm3,xmm0,xmm19
  b1f59f:	c4 e3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm3,0x1
  b1f5a5:	62 f1 64 00 5c c0    	vsubps xmm0,xmm19,xmm0
  b1f5ab:	c5 a8 58 e6          	vaddps xmm4,xmm10,xmm6
  b1f5af:	c5 fd 15 ec          	vunpckhpd ymm5,ymm0,ymm4
  b1f5b3:	c5 fd 14 c4          	vunpcklpd ymm0,ymm0,ymm4
  b1f5b7:	c5 a8 5c e6          	vsubps xmm4,xmm10,xmm6
  b1f5bb:	c5 e5 14 f4          	vunpcklpd ymm6,ymm3,ymm4
  b1f5bf:	c5 cc c6 f8 88       	vshufps ymm7,ymm6,ymm0,0x88
  b1f5c4:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b1f5c9:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  b1f5ce:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1f5d3:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b1f5d7:	c5 e4 c6 dd 88       	vshufps ymm3,ymm3,ymm5,0x88
  b1f5dc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1f5e1:	c5 fc 10 62 40       	vmovups ymm4,YMMWORD PTR [rdx+0x40]
  b1f5e6:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  b1f5eb:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b1f5f2:	00 
  b1f5f3:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  b1f5fa:	00 
  b1f5fb:	c5 6c 59 d4          	vmulps ymm10,ymm2,ymm4
  b1f5ff:	c4 62 7d bc d5       	vfnmadd231ps ymm10,ymm0,ymm5
  b1f604:	c5 74 59 de          	vmulps ymm11,ymm1,ymm6
  b1f608:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  b1f60d:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  b1f612:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  b1f616:	c4 e2 6d b8 c5       	vfmadd231ps ymm0,ymm2,ymm5
  b1f61b:	c5 e4 59 d6          	vmulps ymm2,ymm3,ymm6
  b1f61f:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  b1f624:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  b1f628:	c4 e2 7d 18 1d 2f 5e 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff555e2f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1f62f:	55 ff 
  b1f631:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  b1f635:	c4 c2 1d ac e0       	vfnmadd213ps ymm4,ymm12,ymm8
  b1f63a:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  b1f63e:	c4 e2 7d 18 15 8d 5c 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff555c8d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1f645:	55 ff 
  b1f647:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  b1f64b:	c5 dc 58 e8          	vaddps ymm5,ymm4,ymm0
  b1f64f:	c4 e2 75 ac df       	vfnmadd213ps ymm3,ymm1,ymm7
  b1f654:	c4 c1 2c 5c f3       	vsubps ymm6,ymm10,ymm11
  b1f659:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  b1f65d:	c5 e4 5c f2          	vsubps ymm6,ymm3,ymm2
  b1f661:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  b1f665:	c5 e4 58 d2          	vaddps ymm2,ymm3,ymm2
  b1f669:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  b1f66e:	c5 c4 58 c9          	vaddps ymm1,ymm7,ymm1
  b1f672:	c5 fc 28 25 66 7b 55 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff557b66]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1f679:	ff 
  b1f67a:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  b1f680:	62 f2 5d 28 7f d9    	vpermt2ps ymm3,ymm4,ymm1
  b1f686:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  b1f68a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1f690:	c5 c0 14 c9          	vunpcklps xmm1,xmm7,xmm1
  b1f694:	c5 f8 13 4e 20       	vmovlps QWORD PTR [rsi+0x20],xmm1
  b1f699:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  b1f69f:	62 f2 5d 28 7f ee    	vpermt2ps ymm5,ymm4,ymm6
  b1f6a5:	c5 fc 11 6e 28       	vmovups YMMWORD PTR [rsi+0x28],ymm5
  b1f6aa:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  b1f6b0:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  b1f6b4:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  b1f6b9:	62 f2 7d 28 77 e2    	vpermi2ps ymm4,ymm0,ymm2
  b1f6bf:	c5 fc 11 66 50       	vmovups YMMWORD PTR [rsi+0x50],ymm4
  b1f6c4:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  b1f6ca:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1f6d0:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  b1f6d4:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  b1f6d9:	c5 f8 77             	vzeroupper
  b1f6dc:	c3                   	ret
