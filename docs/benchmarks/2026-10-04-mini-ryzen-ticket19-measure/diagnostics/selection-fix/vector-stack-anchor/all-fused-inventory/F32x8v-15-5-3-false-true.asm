
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afc440 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afc440:	48 6b c2 78          	imul   rax,rdx,0x78
  afc444:	31 d2                	xor    edx,edx
  afc446:	c4 e2 7d 18 05 09 93 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff579309]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  afc44d:	57 ff 
  afc44f:	c4 e2 7d 18 0d 48 8f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff578f48]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  afc456:	57 ff 
  afc458:	c4 e2 7d 18 15 87 92 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff579287]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  afc45f:	57 ff 
  afc461:	c4 e2 7d 18 1d da 91 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5791da]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  afc468:	57 ff 
  afc46a:	c4 e2 7d 18 25 ed 8f 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff578fed]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afc471:	57 ff 
  afc473:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  afc477:	62 62 7d 28 18 05 53 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff578e53]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afc47e:	8e 57 ff 
  afc481:	c5 fc 28 3d 57 ad 57 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff57ad57]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afc488:	ff 
  afc489:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  afc490:	c5 7b 10 44 17 28    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x28]
  afc496:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afc49c:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afc4a2:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  afc4a7:	c5 78 10 54 17 18    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x18]
  afc4ad:	c5 78 10 5c 17 30    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x30]
  afc4b3:	c5 78 10 64 17 48    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x48]
  afc4b9:	c4 43 7d 19 c5 01    	vextractf128 xmm13,ymm8,0x1
  afc4bf:	c4 41 28 c6 f5 88    	vshufps xmm14,xmm10,xmm13,0x88
  afc4c5:	c5 78 10 7c 17 60    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x60]
  afc4cb:	c5 7b 10 44 17 70    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x70]
  afc4d1:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afc4d7:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afc4dd:	62 33 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm8,0x1
  afc4e4:	62 a1 04 08 c6 c8 88 	vshufps xmm17,xmm15,xmm16,0x88
  afc4eb:	62 a1 0c 28 5c d1    	vsubps ymm18,ymm14,ymm17
  afc4f1:	c5 7b 10 44 17 40    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x40]
  afc4f7:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afc4fd:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afc503:	62 33 7d 28 19 c3 01 	vextractf32x4 xmm19,ymm8,0x1
  afc50a:	62 a1 24 08 c6 e3 88 	vshufps xmm20,xmm11,xmm19,0x88
  afc511:	c5 7b 10 44 17 58    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x58]
  afc517:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afc51d:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afc523:	62 33 7d 28 19 c5 01 	vextractf32x4 xmm21,ymm8,0x1
  afc52a:	62 a1 1c 08 c6 f5 88 	vshufps xmm22,xmm12,xmm21,0x88
  afc531:	62 a1 5c 20 5c fe    	vsubps ymm23,ymm20,ymm22
  afc537:	62 71 44 20 59 c0    	vmulps ymm8,ymm23,ymm0
  afc53d:	62 72 6d 20 b8 c1    	vfmadd231ps ymm8,ymm18,ymm1
  afc543:	62 31 24 08 c6 db dd 	vshufps xmm11,xmm11,xmm19,0xdd
  afc54a:	62 31 1c 08 c6 e5 dd 	vshufps xmm12,xmm12,xmm21,0xdd
  afc551:	62 c1 24 28 58 dc    	vaddps ymm19,ymm11,ymm12
  afc557:	c4 41 28 c6 d5 dd    	vshufps xmm10,xmm10,xmm13,0xdd
  afc55d:	62 31 04 08 c6 e8 dd 	vshufps xmm13,xmm15,xmm16,0xdd
  afc564:	c4 41 2c 58 fd       	vaddps ymm15,ymm10,ymm13
  afc569:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x10]
  afc570:	02 
  afc571:	62 b3 7d 28 18 f0 01 	vinsertf32x4 ymm6,ymm0,xmm16,0x1
  afc578:	c4 e3 4d 0c f5 c0    	vblendps ymm6,ymm6,ymm5,0xc0
  afc57e:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  afc584:	62 e1 34 08 c6 c6 dd 	vshufps xmm16,xmm9,xmm6,0xdd
  afc58b:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  afc591:	62 a2 05 28 a8 e8    	vfmadd213ps ymm21,ymm15,ymm16
  afc597:	62 e2 65 20 bc eb    	vfnmadd231ps ymm21,ymm19,ymm3
  afc59d:	62 a1 5c 20 58 e6    	vaddps ymm20,ymm20,ymm22
  afc5a3:	62 31 0c 28 58 f1    	vaddps ymm14,ymm14,ymm17
  afc5a9:	c5 b0 c6 f6 88       	vshufps xmm6,xmm9,xmm6,0x88
  afc5ae:	c5 7c 28 ca          	vmovaps ymm9,ymm2
  afc5b2:	c4 62 0d a8 ce       	vfmadd213ps ymm9,ymm14,ymm6
  afc5b7:	62 72 5d 20 bc cb    	vfnmadd231ps ymm9,ymm20,ymm3
  afc5bd:	c4 41 2c 5c d5       	vsubps ymm10,ymm10,ymm13
  afc5c2:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  afc5c7:	c5 24 59 e0          	vmulps ymm12,ymm11,ymm0
  afc5cb:	c4 62 2d b8 e1       	vfmadd231ps ymm12,ymm10,ymm1
  afc5d0:	62 71 6c 20 59 e8    	vmulps ymm13,ymm18,ymm0
  afc5d6:	62 32 75 28 bc ef    	vfnmadd231ps ymm13,ymm1,ymm23
  afc5dc:	62 e1 7c 28 28 cb    	vmovaps ymm17,ymm3
  afc5e2:	62 a2 05 28 ac c8    	vfnmadd213ps ymm17,ymm15,ymm16
  afc5e8:	62 e2 65 20 b8 ca    	vfmadd231ps ymm17,ymm19,ymm2
  afc5ee:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  afc5f4:	62 e2 0d 28 ac d6    	vfnmadd213ps ymm18,ymm14,ymm6
  afc5fa:	62 e2 5d 20 b8 d2    	vfmadd231ps ymm18,ymm20,ymm2
  afc600:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  afc604:	c4 42 75 bc d3       	vfnmadd231ps ymm10,ymm1,ymm11
  afc609:	62 51 7c 20 58 df    	vaddps ymm11,ymm16,ymm15
  afc60f:	62 31 24 28 58 db    	vaddps ymm11,ymm11,ymm19
  afc615:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  afc619:	62 b1 4c 28 58 f4    	vaddps ymm6,ymm6,ymm20
  afc61f:	c4 41 30 5c f4       	vsubps xmm14,xmm9,xmm12
  afc624:	c4 c3 4d 18 f6 01    	vinsertf128 ymm6,ymm6,xmm14,0x1
  afc62a:	c4 41 30 58 cc       	vaddps xmm9,xmm9,xmm12
  afc62f:	62 51 6c 00 5c e2    	vsubps xmm12,xmm18,xmm10
  afc635:	c4 41 35 15 f4       	vunpckhpd ymm14,ymm9,ymm12
  afc63a:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  afc63f:	62 51 6c 00 58 d2    	vaddps xmm10,xmm18,xmm10
  afc645:	c4 41 4d 14 e2       	vunpcklpd ymm12,ymm6,ymm10
  afc64a:	c4 41 1c c6 f9 88    	vshufps ymm15,ymm12,ymm9,0x88
  afc650:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  afc656:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  afc65c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  afc662:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  afc667:	c4 c1 4c c6 f6 88    	vshufps ymm6,ymm6,ymm14,0x88
  afc66d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  afc672:	62 31 3c 08 58 d5    	vaddps xmm10,xmm8,xmm21
  afc678:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  afc67e:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  afc684:	62 31 14 08 58 d9    	vaddps xmm11,xmm13,xmm17
  afc68a:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  afc68f:	c4 41 3d 14 c3       	vunpcklpd ymm8,ymm8,ymm11
  afc694:	62 51 74 00 5c dd    	vsubps xmm11,xmm17,xmm13
  afc69a:	c4 41 2d 14 eb       	vunpcklpd ymm13,ymm10,ymm11
  afc69f:	c4 41 14 c6 f0 88    	vshufps ymm14,ymm13,ymm8,0x88
  afc6a5:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  afc6ab:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  afc6b1:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  afc6b7:	c4 41 2d 15 d3       	vunpckhpd ymm10,ymm10,ymm11
  afc6bc:	c4 41 2c c6 d4 88    	vshufps ymm10,ymm10,ymm12,0x88
  afc6c2:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  afc6c8:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  afc6cd:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  afc6d2:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  afc6d9:	00 
  afc6da:	62 e1 7c 28 10 41 05 	vmovups ymm16,YMMWORD PTR [rcx+0xa0]
  afc6e1:	62 c1 34 28 59 cb    	vmulps ymm17,ymm9,ymm11
  afc6e7:	62 c2 3d 28 bc cc    	vfnmadd231ps ymm17,ymm8,ymm12
  afc6ed:	62 c1 4c 28 59 d5    	vmulps ymm18,ymm6,ymm13
  afc6f3:	62 a2 2d 28 bc d0    	vfnmadd231ps ymm18,ymm10,ymm16
  afc6f9:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  afc6ff:	c4 41 3c 59 c3       	vmulps ymm8,ymm8,ymm11
  afc704:	c4 42 35 b8 c4       	vfmadd231ps ymm8,ymm9,ymm12
  afc709:	c4 41 2c 59 cd       	vmulps ymm9,ymm10,ymm13
  afc70e:	62 32 4d 28 b8 c8    	vfmadd231ps ymm9,ymm6,ymm16
  afc714:	c4 c1 3c 58 f1       	vaddps ymm6,ymm8,ymm9
  afc719:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  afc71d:	62 52 65 20 ac d7    	vfnmadd213ps ymm10,ymm19,ymm15
  afc723:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  afc728:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  afc72e:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  afc733:	c5 7c 28 dc          	vmovaps ymm11,ymm4
  afc737:	c4 42 4d ac de       	vfnmadd213ps ymm11,ymm6,ymm14
  afc73c:	62 31 74 20 5c e2    	vsubps ymm12,ymm17,ymm18
  afc742:	62 11 1c 28 59 e0    	vmulps ymm12,ymm12,ymm24
  afc748:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  afc74d:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  afc752:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  afc757:	62 31 04 28 58 db    	vaddps ymm11,ymm15,ymm19
  afc75d:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  afc761:	c4 43 7d 19 dc 01    	vextractf128 xmm12,ymm11,0x1
  afc767:	62 72 45 28 7f de    	vpermt2ps ymm11,ymm7,ymm6
  afc76d:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  afc772:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  afc778:	c5 98 14 f6          	vunpcklps xmm6,xmm12,xmm6
  afc77c:	c5 f8 13 74 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm6
  afc782:	c4 63 7d 19 ce 01    	vextractf128 xmm6,ymm9,0x1
  afc788:	62 52 45 28 7f cd    	vpermt2ps ymm9,ymm7,ymm13
  afc78e:	c5 7c 11 4c 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm9
  afc794:	c4 43 7d 19 e9 01    	vextractf128 xmm9,ymm13,0x1
  afc79a:	c4 c1 48 14 f1       	vunpcklps xmm6,xmm6,xmm9
  afc79f:	c5 f8 13 74 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm6
  afc7a5:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  afc7ab:	62 52 45 28 7f c2    	vpermt2ps ymm8,ymm7,ymm10
  afc7b1:	c5 7c 11 44 16 50    	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm8
  afc7b7:	c4 43 7d 19 d0 01    	vextractf128 xmm8,ymm10,0x1
  afc7bd:	c4 c1 48 14 f0       	vunpcklps xmm6,xmm6,xmm8
  afc7c2:	c5 f8 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm6
  afc7c8:	48 83 c2 78          	add    rdx,0x78
  afc7cc:	48 39 d0             	cmp    rax,rdx
  afc7cf:	0f 85 bb fc ff ff    	jne    afc490 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  afc7d5:	c5 f8 77             	vzeroupper
  afc7d8:	c3                   	ret
