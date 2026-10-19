
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ae5440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ae5440:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  ae5445:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae544b:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  ae544f:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  ae5455:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ae545b:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  ae545f:	c5 f8 10 77 18       	vmovups xmm6,XMMWORD PTR [rdi+0x18]
  ae5464:	c5 f8 10 57 30       	vmovups xmm2,XMMWORD PTR [rdi+0x30]
  ae5469:	62 e1 7c 08 10 b7 48 	vmovups xmm22,XMMWORD PTR [rdi+0x48]
  ae5470:	00 00 00 
  ae5473:	c5 e8 c6 f9 88       	vshufps xmm7,xmm2,xmm1,0x88
  ae5478:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  ae547d:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  ae5482:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  ae5488:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  ae548e:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  ae5494:	c4 41 38 c6 d1 88    	vshufps xmm10,xmm8,xmm9,0x88
  ae549a:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  ae549f:	62 e2 7d 28 18 15 2b 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff58fe2b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ae54a6:	fe 58 ff 
  ae54a9:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  ae54af:	c5 68 c6 e1 dd       	vshufps xmm12,xmm2,xmm1,0xdd
  ae54b4:	c4 41 38 c6 c1 dd    	vshufps xmm8,xmm8,xmm9,0xdd
  ae54ba:	c4 41 1c 58 c8       	vaddps ymm9,ymm12,ymm8
  ae54bf:	c5 fb 10 4f 10       	vmovsd xmm1,QWORD PTR [rdi+0x10]
  ae54c4:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  ae54ca:	c4 e3 75 0c cc c0    	vblendps ymm1,ymm1,ymm4,0xc0
  ae54d0:	c4 c3 7d 19 cd 01    	vextractf128 xmm13,ymm1,0x1
  ae54d6:	c4 e2 7d 18 0d 81 ff 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff58ff81]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ae54dd:	58 ff 
  ae54df:	c4 41 50 c6 f5 dd    	vshufps xmm14,xmm5,xmm13,0xdd
  ae54e5:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  ae54e9:	c4 42 35 ac fe       	vfnmadd213ps ymm15,ymm9,ymm14
  ae54ee:	62 c1 24 28 58 e7    	vaddps ymm20,ymm11,ymm15
  ae54f4:	62 e1 7c 08 10 87 78 	vmovups xmm16,XMMWORD PTR [rdi+0x78]
  ae54fb:	00 00 00 
  ae54fe:	62 e1 ff 08 10 4f 11 	vmovsd xmm17,QWORD PTR [rdi+0x88]
  ae5505:	62 b3 7d 28 18 c1 01 	vinsertf32x4 ymm0,ymm0,xmm17,0x1
  ae550c:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  ae5512:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae5518:	62 e1 7c 00 c6 c8 88 	vshufps xmm17,xmm16,xmm0,0x88
  ae551f:	62 e1 ff 08 10 5f 05 	vmovsd xmm19,QWORD PTR [rdi+0x28]
  ae5526:	62 b3 7d 28 18 d3 01 	vinsertf32x4 ymm2,ymm0,xmm19,0x1
  ae552d:	c4 e3 6d 0c d4 c0    	vblendps ymm2,ymm2,ymm4,0xc0
  ae5533:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ae5539:	62 e1 4c 08 c6 da 88 	vshufps xmm19,xmm6,xmm2,0x88
  ae5540:	62 a1 74 20 5c eb    	vsubps ymm21,ymm17,ymm19
  ae5546:	62 a1 54 20 59 ea    	vmulps ymm21,ymm21,ymm18
  ae554c:	62 f1 7c 00 c6 c0 dd 	vshufps xmm0,xmm16,xmm0,0xdd
  ae5553:	c5 c8 c6 d2 dd       	vshufps xmm2,xmm6,xmm2,0xdd
  ae5558:	c5 fc 58 f2          	vaddps ymm6,ymm0,ymm2
  ae555c:	62 e1 ff 08 10 47 0b 	vmovsd xmm16,QWORD PTR [rdi+0x58]
  ae5563:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  ae556a:	c4 e3 65 0c dc c0    	vblendps ymm3,ymm3,ymm4,0xc0
  ae5570:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  ae5576:	62 f1 4c 00 c6 e3 dd 	vshufps xmm4,xmm22,xmm3,0xdd
  ae557d:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  ae5583:	62 e2 4d 28 ac c4    	vfnmadd213ps ymm16,ymm6,ymm4
  ae5589:	62 a1 54 20 58 f8    	vaddps ymm23,ymm21,ymm16
  ae558f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  ae5593:	c4 c1 50 c6 ed 88    	vshufps xmm5,xmm5,xmm13,0x88
  ae5599:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  ae559d:	c4 62 45 ac d5       	vfnmadd213ps ymm10,ymm7,ymm5
  ae55a2:	c4 41 1c 5c c0       	vsubps ymm8,ymm12,ymm8
  ae55a7:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  ae55ad:	c4 41 2c 5c e0       	vsubps ymm12,ymm10,ymm8
  ae55b2:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  ae55b8:	62 f1 4c 00 c6 db 88 	vshufps xmm3,xmm22,xmm3,0x88
  ae55bf:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  ae55c5:	62 e2 15 28 ac cb    	vfnmadd213ps ymm17,ymm13,ymm3
  ae55cb:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ae55cf:	62 b1 7c 28 59 c2    	vmulps ymm0,ymm0,ymm18
  ae55d5:	62 f1 74 20 5c d0    	vsubps ymm2,ymm17,ymm0
  ae55db:	c4 41 04 5c db       	vsubps ymm11,ymm15,ymm11
  ae55e0:	62 31 7c 20 5c fd    	vsubps ymm15,ymm16,ymm21
  ae55e6:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  ae55eb:	62 f1 74 20 58 c0    	vaddps ymm0,ymm17,ymm0
  ae55f1:	c4 41 0c 58 c9       	vaddps ymm9,ymm14,ymm9
  ae55f6:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  ae55fa:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ae55fe:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  ae5602:	c4 c1 24 5c f7       	vsubps ymm6,ymm11,ymm15
  ae5607:	c5 bc 5c f8          	vsubps ymm7,ymm8,ymm0
  ae560b:	c5 34 58 d4          	vaddps ymm10,ymm9,ymm4
  ae560f:	c5 54 58 eb          	vaddps ymm13,ymm5,ymm3
  ae5613:	c5 b8 58 c0          	vaddps xmm0,xmm8,xmm0
  ae5617:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  ae561d:	c5 18 5c c2          	vsubps xmm8,xmm12,xmm2
  ae5621:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  ae5627:	c5 98 58 d2          	vaddps xmm2,xmm12,xmm2
  ae562b:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  ae562f:	c5 d0 5c db          	vsubps xmm3,xmm5,xmm3
  ae5633:	c5 c5 14 eb          	vunpcklpd ymm5,ymm7,ymm3
  ae5637:	c5 3c c6 e5 88       	vshufps ymm12,ymm8,ymm5,0x88
  ae563c:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  ae5642:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  ae5647:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  ae564c:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  ae5650:	c5 c5 15 d3          	vunpckhpd ymm2,ymm7,ymm3
  ae5654:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  ae5659:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae565e:	c4 c1 20 58 d7       	vaddps xmm2,xmm11,xmm15
  ae5663:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  ae5669:	62 b1 5c 00 5c df    	vsubps xmm3,xmm20,xmm23
  ae566f:	c4 e3 4d 18 db 01    	vinsertf128 ymm3,ymm6,xmm3,0x1
  ae5675:	62 b1 5c 00 58 f7    	vaddps xmm6,xmm20,xmm23
  ae567b:	c5 ed 14 fe          	vunpcklpd ymm7,ymm2,ymm6
  ae567f:	c5 b0 5c e4          	vsubps xmm4,xmm9,xmm4
  ae5683:	c5 65 14 c4          	vunpcklpd ymm8,ymm3,ymm4
  ae5687:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  ae568d:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ae5693:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  ae5699:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  ae569e:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  ae56a2:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  ae56a6:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  ae56ab:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ae56b0:	c5 fc 10 5a 40       	vmovups ymm3,YMMWORD PTR [rdx+0x40]
  ae56b5:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  ae56ba:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  ae56c1:	00 
  ae56c2:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  ae56c9:	00 
  ae56ca:	c5 54 59 d3          	vmulps ymm10,ymm5,ymm3
  ae56ce:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  ae56d3:	c5 7c 59 de          	vmulps ymm11,ymm0,ymm6
  ae56d7:	c4 42 6d bc d8       	vfnmadd231ps ymm11,ymm2,ymm8
  ae56dc:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ae56e1:	c5 c4 59 db          	vmulps ymm3,ymm7,ymm3
  ae56e5:	c4 e2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm4
  ae56ea:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  ae56ee:	c4 c2 7d b8 d0       	vfmadd231ps ymm2,ymm0,ymm8
  ae56f3:	c5 e4 58 c2          	vaddps ymm0,ymm3,ymm2
  ae56f7:	c5 fc 28 e1          	vmovaps ymm4,ymm1
  ae56fb:	c4 c2 15 ac e4       	vfnmadd213ps ymm4,ymm13,ymm12
  ae5700:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  ae5704:	62 b1 6c 28 59 d2    	vmulps ymm2,ymm2,ymm18
  ae570a:	c5 dc 58 da          	vaddps ymm3,ymm4,ymm2
  ae570e:	c4 c2 7d ac c9       	vfnmadd213ps ymm1,ymm0,ymm9
  ae5713:	c4 c1 2c 5c eb       	vsubps ymm5,ymm10,ymm11
  ae5718:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  ae571e:	c5 f4 5c f5          	vsubps ymm6,ymm1,ymm5
  ae5722:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  ae5726:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  ae572a:	c4 c1 1c 58 e5       	vaddps ymm4,ymm12,ymm13
  ae572f:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  ae5733:	c5 fc 28 2d a5 1a 59 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff591aa5]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ae573a:	ff 
  ae573b:	c4 e3 7d 19 e7 01    	vextractf128 xmm7,ymm4,0x1
  ae5741:	62 f2 55 28 7f e0    	vpermt2ps ymm4,ymm5,ymm0
  ae5747:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  ae574b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae5751:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  ae5755:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  ae575a:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  ae5760:	62 f2 55 28 7f de    	vpermt2ps ymm3,ymm5,ymm6
  ae5766:	c5 fc 11 5e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm3
  ae576b:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  ae5771:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  ae5775:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  ae577a:	62 f2 6d 28 77 e9    	vpermi2ps ymm5,ymm2,ymm1
  ae5780:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  ae5785:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  ae578b:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  ae5791:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  ae5795:	c5 f8 11 86 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm0
  ae579c:	00 
  ae579d:	c5 f8 77             	vzeroupper
  ae57a0:	c3                   	ret
