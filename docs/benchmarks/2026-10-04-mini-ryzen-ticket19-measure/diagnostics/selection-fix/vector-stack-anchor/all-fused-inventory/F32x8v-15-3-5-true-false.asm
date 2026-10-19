
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000acd340 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  acd340:	c5 fc 10 47 28       	vmovups ymm0,YMMWORD PTR [rdi+0x28]
  acd345:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  acd34a:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  acd34f:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  acd355:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  acd35a:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  acd35f:	c5 e4 c6 ec dd       	vshufps ymm5,ymm3,ymm4,0xdd
  acd364:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  acd36a:	c4 e2 7d 18 35 61 7f 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5a7f61]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  acd371:	5a ff 
  acd373:	c5 ec 5c fd          	vsubps ymm7,ymm2,ymm5
  acd377:	c5 c4 59 fe          	vmulps ymm7,ymm7,ymm6
  acd37b:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  acd380:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  acd386:	c5 e4 c6 cc 88       	vshufps ymm1,ymm3,ymm4,0x88
  acd38b:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  acd391:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  acd395:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  acd399:	c5 7b 10 47 20       	vmovsd xmm8,QWORD PTR [rdi+0x20]
  acd39e:	c4 41 5c c6 c8 88    	vshufps ymm9,ymm4,ymm8,0x88
  acd3a4:	c4 62 7d 18 15 b3 80 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5a80b3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  acd3ab:	5a ff 
  acd3ad:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  acd3b3:	c4 41 7c 28 da       	vmovaps ymm11,ymm10
  acd3b8:	c4 42 65 ac d9       	vfnmadd213ps ymm11,ymm3,ymm9
  acd3bd:	c5 24 58 e7          	vaddps ymm12,ymm11,ymm7
  acd3c1:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  acd3c5:	c4 c1 5c c6 e0 dd    	vshufps ymm4,ymm4,ymm8,0xdd
  acd3cb:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  acd3d1:	c4 62 6d ac d4       	vfnmadd213ps ymm10,ymm2,ymm4
  acd3d6:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  acd3da:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  acd3de:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  acd3e2:	c5 a4 5c ef          	vsubps ymm5,ymm11,ymm7
  acd3e6:	c5 ac 58 c0          	vaddps ymm0,ymm10,ymm0
  acd3ea:	c5 b4 58 f3          	vaddps ymm6,ymm9,ymm3
  acd3ee:	c5 dc 58 d2          	vaddps ymm2,ymm4,ymm2
  acd3f2:	c5 f8 28 da          	vmovaps xmm3,xmm2
  acd3f6:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  acd3fc:	c5 f8 28 e0          	vmovaps xmm4,xmm0
  acd400:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  acd406:	c5 78 28 c1          	vmovaps xmm8,xmm1
  acd40a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  acd410:	c5 6d 14 c9          	vunpcklpd ymm9,ymm2,ymm1
  acd414:	c4 c1 65 15 d0       	vunpckhpd ymm2,ymm3,ymm8
  acd419:	c4 c1 65 14 d8       	vunpcklpd ymm3,ymm3,ymm8
  acd41e:	c5 7a 7e c0          	vmovq  xmm8,xmm0
  acd422:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  acd427:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  acd42b:	c4 e3 45 0c f9 cc    	vblendps ymm7,ymm7,ymm1,0xcc
  acd431:	c4 c1 64 c6 c0 88    	vshufps ymm0,ymm3,ymm8,0x88
  acd437:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  acd43c:	c4 c1 64 c6 d8 dd    	vshufps ymm3,ymm3,ymm8,0xdd
  acd442:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  acd447:	c5 ec c6 dc 88       	vshufps ymm3,ymm2,ymm4,0x88
  acd44c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  acd451:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  acd456:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  acd45b:	c5 b4 c6 e7 88       	vshufps ymm4,ymm9,ymm7,0x88
  acd460:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  acd465:	c5 f8 28 fe          	vmovaps xmm7,xmm6
  acd469:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  acd46f:	c5 78 28 cd          	vmovaps xmm9,xmm5
  acd473:	c4 c3 7d 19 ea 01    	vextractf128 xmm10,ymm5,0x1
  acd479:	c4 41 78 28 dc       	vmovaps xmm11,xmm12
  acd47e:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  acd484:	c4 c1 4d 14 f4       	vunpcklpd ymm6,ymm6,ymm12
  acd489:	c4 41 45 15 e3       	vunpckhpd ymm12,ymm7,ymm11
  acd48e:	c4 c1 45 14 fb       	vunpcklpd ymm7,ymm7,ymm11
  acd493:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  acd497:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  acd49d:	c4 63 2d 0c d1 cc    	vblendps ymm10,ymm10,ymm1,0xcc
  acd4a3:	c5 c4 c6 cd 88       	vshufps ymm1,ymm7,ymm5,0x88
  acd4a8:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  acd4ad:	c5 c4 c6 ed dd       	vshufps ymm5,ymm7,ymm5,0xdd
  acd4b2:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  acd4b7:	c4 c1 1c c6 f9 88    	vshufps ymm7,ymm12,ymm9,0x88
  acd4bd:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  acd4c2:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  acd4c8:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  acd4ce:	c4 c1 4c c6 f2 88    	vshufps ymm6,ymm6,ymm10,0x88
  acd4d4:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  acd4d9:	c5 7c 10 52 40       	vmovups ymm10,YMMWORD PTR [rdx+0x40]
  acd4de:	c5 7c 10 5a 60       	vmovups ymm11,YMMWORD PTR [rdx+0x60]
  acd4e3:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  acd4ea:	00 
  acd4eb:	c5 7c 10 aa a0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xa0]
  acd4f2:	00 
  acd4f3:	c5 7c 10 b2 c0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xc0]
  acd4fa:	00 
  acd4fb:	c5 7c 10 ba e0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xe0]
  acd502:	00 
  acd503:	62 e1 7c 28 10 42 08 	vmovups ymm16,YMMWORD PTR [rdx+0x100]
  acd50a:	62 e1 7c 28 10 4a 09 	vmovups ymm17,YMMWORD PTR [rdx+0x120]
  acd511:	62 c1 3c 28 59 d2    	vmulps ymm18,ymm8,ymm10
  acd517:	62 c2 55 28 bc d3    	vfnmadd231ps ymm18,ymm5,ymm11
  acd51d:	62 a1 5c 28 59 d8    	vmulps ymm19,ymm4,ymm16
  acd523:	62 a2 4d 28 bc d9    	vfnmadd231ps ymm19,ymm6,ymm17
  acd529:	62 a1 6c 20 58 e3    	vaddps ymm20,ymm18,ymm19
  acd52f:	62 c1 64 28 59 ec    	vmulps ymm21,ymm3,ymm12
  acd535:	62 c2 45 28 bc ed    	vfnmadd231ps ymm21,ymm7,ymm13
  acd53b:	62 c1 6c 28 59 f6    	vmulps ymm22,ymm2,ymm14
  acd541:	62 c2 35 28 bc f7    	vfnmadd231ps ymm22,ymm9,ymm15
  acd547:	62 a1 54 20 58 fe    	vaddps ymm23,ymm21,ymm22
  acd54d:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  acd551:	c4 c2 3d b8 eb       	vfmadd231ps ymm5,ymm8,ymm11
  acd556:	62 b1 4c 28 59 f0    	vmulps ymm6,ymm6,ymm16
  acd55c:	62 b2 5d 28 b8 f1    	vfmadd231ps ymm6,ymm4,ymm17
  acd562:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  acd566:	c5 9c 59 ff          	vmulps ymm7,ymm12,ymm7
  acd56a:	c4 c2 65 b8 fd       	vfmadd231ps ymm7,ymm3,ymm13
  acd56f:	c4 c1 34 59 de       	vmulps ymm3,ymm9,ymm14
  acd574:	c4 c2 6d b8 df       	vfmadd231ps ymm3,ymm2,ymm15
  acd579:	c5 44 58 c3          	vaddps ymm8,ymm7,ymm3
  acd57d:	c4 62 7d 18 0d 62 81 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5a8162]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  acd584:	5a ff 
  acd586:	c4 41 7c 28 d1       	vmovaps ymm10,ymm9
  acd58b:	62 72 5d 20 a8 d0    	vfmadd213ps ymm10,ymm20,ymm0
  acd591:	c4 e2 7d 18 15 aa 80 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5a80aa]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  acd598:	5a ff 
  acd59a:	62 72 45 20 bc d2    	vfnmadd231ps ymm10,ymm23,ymm2
  acd5a0:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  acd5a4:	c5 c4 5c f3          	vsubps ymm6,ymm7,ymm3
  acd5a8:	c4 e2 7d 18 3d a7 81 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a81a7]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  acd5af:	5a ff 
  acd5b1:	c5 4c 59 df          	vmulps ymm11,ymm6,ymm7
  acd5b5:	c4 62 7d 18 25 e2 7d 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff5a7de2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  acd5bc:	5a ff 
  acd5be:	c4 42 55 b8 dc       	vfmadd231ps ymm11,ymm5,ymm12
  acd5c3:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  acd5c8:	c5 7c 29 cb          	vmovaps ymm3,ymm9
  acd5cc:	c4 e2 5d a8 d9       	vfmadd213ps ymm3,ymm4,ymm1
  acd5d1:	c4 e2 3d bc da       	vfnmadd231ps ymm3,ymm8,ymm2
  acd5d6:	62 31 6c 20 5c f3    	vsubps ymm14,ymm18,ymm19
  acd5dc:	62 31 54 20 5c fe    	vsubps ymm15,ymm21,ymm22
  acd5e2:	62 e1 04 28 59 c7    	vmulps ymm16,ymm15,ymm7
  acd5e8:	62 c2 0d 28 b8 c4    	vfmadd231ps ymm16,ymm14,ymm12
  acd5ee:	62 e1 7c 28 28 ca    	vmovaps ymm17,ymm2
  acd5f4:	62 e2 5d 20 ac c8    	vfnmadd213ps ymm17,ymm20,ymm0
  acd5fa:	62 c2 45 20 b8 c9    	vfmadd231ps ymm17,ymm23,ymm9
  acd600:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  acd604:	c4 e2 1d bc ee       	vfnmadd231ps ymm5,ymm12,ymm6
  acd609:	62 f1 74 20 58 f5    	vaddps ymm6,ymm17,ymm5
  acd60f:	c4 e2 5d ac d1       	vfnmadd213ps ymm2,ymm4,ymm1
  acd614:	c4 c2 3d b8 d1       	vfmadd231ps ymm2,ymm8,ymm9
  acd619:	c5 8c 59 ff          	vmulps ymm7,ymm14,ymm7
  acd61d:	c4 c2 05 bc fc       	vfnmadd231ps ymm7,ymm15,ymm12
  acd622:	62 f1 74 20 5c ed    	vsubps ymm5,ymm17,ymm5
  acd628:	c4 41 2c 5c cb       	vsubps ymm9,ymm10,ymm11
  acd62d:	62 b1 7c 28 58 c4    	vaddps ymm0,ymm0,ymm20
  acd633:	62 b1 7c 28 58 c7    	vaddps ymm0,ymm0,ymm23
  acd639:	c5 d8 58 c9          	vaddps xmm1,xmm4,xmm1
  acd63d:	c5 b8 58 c9          	vaddps xmm1,xmm8,xmm1
  acd641:	c5 fc 28 25 77 ac 5a 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5aac77]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  acd648:	ff 
  acd649:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  acd64f:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  acd655:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  acd65a:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  acd65e:	62 b1 64 08 5c c0    	vsubps xmm0,xmm3,xmm16
  acd664:	62 d2 5d 28 7f c5    	vpermt2ps ymm0,ymm4,ymm13
  acd66a:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  acd66f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acd675:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  acd67a:	c5 e8 5c c7          	vsubps xmm0,xmm2,xmm7
  acd67e:	62 f2 5d 28 7f c6    	vpermt2ps ymm0,ymm4,ymm6
  acd684:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  acd689:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acd68f:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  acd694:	c5 e8 58 c7          	vaddps xmm0,xmm2,xmm7
  acd698:	62 f2 5d 28 7f c5    	vpermt2ps ymm0,ymm4,ymm5
  acd69e:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  acd6a3:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acd6a9:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  acd6ae:	62 b1 64 08 58 c0    	vaddps xmm0,xmm3,xmm16
  acd6b4:	62 d2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm9
  acd6ba:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  acd6bf:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  acd6c5:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  acd6ca:	c5 f8 77             	vzeroupper
  acd6cd:	c3                   	ret
