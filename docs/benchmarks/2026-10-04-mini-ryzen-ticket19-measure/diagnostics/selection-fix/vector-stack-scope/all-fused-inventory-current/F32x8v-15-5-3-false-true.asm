
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000afe200 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  afe200:	48 6b c2 78          	imul   rax,rdx,0x78
  afe204:	31 d2                	xor    edx,edx
  afe206:	c4 e2 7d 18 05 49 75 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff577549]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  afe20d:	57 ff 
  afe20f:	c4 e2 7d 18 0d 88 71 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff577188]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  afe216:	57 ff 
  afe218:	c4 e2 7d 18 15 c7 74 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5774c7]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  afe21f:	57 ff 
  afe221:	c4 e2 7d 18 1d 1a 74 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff57741a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  afe228:	57 ff 
  afe22a:	c4 e2 7d 18 25 2d 72 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff57722d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  afe231:	57 ff 
  afe233:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  afe237:	62 62 7d 28 18 05 93 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff577093]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  afe23e:	70 57 ff 
  afe241:	c5 fc 28 3d 97 8f 57 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff578f97]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  afe248:	ff 
  afe249:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  afe250:	c5 7b 10 44 17 28    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x28]
  afe256:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afe25c:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afe262:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  afe267:	c5 78 10 54 17 18    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x18]
  afe26d:	c5 78 10 5c 17 30    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x30]
  afe273:	c5 78 10 64 17 48    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x48]
  afe279:	c4 43 7d 19 c5 01    	vextractf128 xmm13,ymm8,0x1
  afe27f:	c4 41 28 c6 f5 88    	vshufps xmm14,xmm10,xmm13,0x88
  afe285:	c5 78 10 7c 17 60    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x60]
  afe28b:	c5 7b 10 44 17 70    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x70]
  afe291:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afe297:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afe29d:	62 33 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm8,0x1
  afe2a4:	62 a1 04 08 c6 c8 88 	vshufps xmm17,xmm15,xmm16,0x88
  afe2ab:	62 a1 0c 28 5c d1    	vsubps ymm18,ymm14,ymm17
  afe2b1:	c5 7b 10 44 17 40    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x40]
  afe2b7:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afe2bd:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afe2c3:	62 33 7d 28 19 c3 01 	vextractf32x4 xmm19,ymm8,0x1
  afe2ca:	62 a1 24 08 c6 e3 88 	vshufps xmm20,xmm11,xmm19,0x88
  afe2d1:	c5 7b 10 44 17 58    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x58]
  afe2d7:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  afe2dd:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  afe2e3:	62 33 7d 28 19 c5 01 	vextractf32x4 xmm21,ymm8,0x1
  afe2ea:	62 a1 1c 08 c6 f5 88 	vshufps xmm22,xmm12,xmm21,0x88
  afe2f1:	62 a1 5c 20 5c fe    	vsubps ymm23,ymm20,ymm22
  afe2f7:	62 71 44 20 59 c0    	vmulps ymm8,ymm23,ymm0
  afe2fd:	62 72 6d 20 b8 c1    	vfmadd231ps ymm8,ymm18,ymm1
  afe303:	62 31 24 08 c6 db dd 	vshufps xmm11,xmm11,xmm19,0xdd
  afe30a:	62 31 1c 08 c6 e5 dd 	vshufps xmm12,xmm12,xmm21,0xdd
  afe311:	62 c1 24 28 58 dc    	vaddps ymm19,ymm11,ymm12
  afe317:	c4 41 28 c6 d5 dd    	vshufps xmm10,xmm10,xmm13,0xdd
  afe31d:	62 31 04 08 c6 e8 dd 	vshufps xmm13,xmm15,xmm16,0xdd
  afe324:	c4 41 2c 58 fd       	vaddps ymm15,ymm10,ymm13
  afe329:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x10]
  afe330:	02 
  afe331:	62 b3 7d 28 18 f0 01 	vinsertf32x4 ymm6,ymm0,xmm16,0x1
  afe338:	c4 e3 4d 0c f5 c0    	vblendps ymm6,ymm6,ymm5,0xc0
  afe33e:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  afe344:	62 e1 34 08 c6 c6 dd 	vshufps xmm16,xmm9,xmm6,0xdd
  afe34b:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  afe351:	62 a2 05 28 a8 e8    	vfmadd213ps ymm21,ymm15,ymm16
  afe357:	62 e2 65 20 bc eb    	vfnmadd231ps ymm21,ymm19,ymm3
  afe35d:	62 a1 5c 20 58 e6    	vaddps ymm20,ymm20,ymm22
  afe363:	62 31 0c 28 58 f1    	vaddps ymm14,ymm14,ymm17
  afe369:	c5 b0 c6 f6 88       	vshufps xmm6,xmm9,xmm6,0x88
  afe36e:	c5 7c 28 ca          	vmovaps ymm9,ymm2
  afe372:	c4 62 0d a8 ce       	vfmadd213ps ymm9,ymm14,ymm6
  afe377:	62 72 5d 20 bc cb    	vfnmadd231ps ymm9,ymm20,ymm3
  afe37d:	c4 41 2c 5c d5       	vsubps ymm10,ymm10,ymm13
  afe382:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  afe387:	c5 24 59 e0          	vmulps ymm12,ymm11,ymm0
  afe38b:	c4 62 2d b8 e1       	vfmadd231ps ymm12,ymm10,ymm1
  afe390:	62 71 6c 20 59 e8    	vmulps ymm13,ymm18,ymm0
  afe396:	62 32 75 28 bc ef    	vfnmadd231ps ymm13,ymm1,ymm23
  afe39c:	62 e1 7c 28 28 cb    	vmovaps ymm17,ymm3
  afe3a2:	62 a2 05 28 ac c8    	vfnmadd213ps ymm17,ymm15,ymm16
  afe3a8:	62 e2 65 20 b8 ca    	vfmadd231ps ymm17,ymm19,ymm2
  afe3ae:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  afe3b4:	62 e2 0d 28 ac d6    	vfnmadd213ps ymm18,ymm14,ymm6
  afe3ba:	62 e2 5d 20 b8 d2    	vfmadd231ps ymm18,ymm20,ymm2
  afe3c0:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  afe3c4:	c4 42 75 bc d3       	vfnmadd231ps ymm10,ymm1,ymm11
  afe3c9:	62 51 7c 20 58 df    	vaddps ymm11,ymm16,ymm15
  afe3cf:	62 31 24 28 58 db    	vaddps ymm11,ymm11,ymm19
  afe3d5:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  afe3d9:	62 b1 4c 28 58 f4    	vaddps ymm6,ymm6,ymm20
  afe3df:	c4 41 30 5c f4       	vsubps xmm14,xmm9,xmm12
  afe3e4:	c4 c3 4d 18 f6 01    	vinsertf128 ymm6,ymm6,xmm14,0x1
  afe3ea:	c4 41 30 58 cc       	vaddps xmm9,xmm9,xmm12
  afe3ef:	62 51 6c 00 5c e2    	vsubps xmm12,xmm18,xmm10
  afe3f5:	c4 41 35 15 f4       	vunpckhpd ymm14,ymm9,ymm12
  afe3fa:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  afe3ff:	62 51 6c 00 58 d2    	vaddps xmm10,xmm18,xmm10
  afe405:	c4 41 4d 14 e2       	vunpcklpd ymm12,ymm6,ymm10
  afe40a:	c4 41 1c c6 f9 88    	vshufps ymm15,ymm12,ymm9,0x88
  afe410:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  afe416:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  afe41c:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  afe422:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  afe427:	c4 c1 4c c6 f6 88    	vshufps ymm6,ymm6,ymm14,0x88
  afe42d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  afe432:	62 31 3c 08 58 d5    	vaddps xmm10,xmm8,xmm21
  afe438:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  afe43e:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  afe444:	62 31 14 08 58 d9    	vaddps xmm11,xmm13,xmm17
  afe44a:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  afe44f:	c4 41 3d 14 c3       	vunpcklpd ymm8,ymm8,ymm11
  afe454:	62 51 74 00 5c dd    	vsubps xmm11,xmm17,xmm13
  afe45a:	c4 41 2d 14 eb       	vunpcklpd ymm13,ymm10,ymm11
  afe45f:	c4 41 14 c6 f0 88    	vshufps ymm14,ymm13,ymm8,0x88
  afe465:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  afe46b:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  afe471:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  afe477:	c4 41 2d 15 d3       	vunpckhpd ymm10,ymm10,ymm11
  afe47c:	c4 41 2c c6 d4 88    	vshufps ymm10,ymm10,ymm12,0x88
  afe482:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  afe488:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  afe48d:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  afe492:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  afe499:	00 
  afe49a:	62 e1 7c 28 10 41 05 	vmovups ymm16,YMMWORD PTR [rcx+0xa0]
  afe4a1:	62 c1 34 28 59 cb    	vmulps ymm17,ymm9,ymm11
  afe4a7:	62 c2 3d 28 bc cc    	vfnmadd231ps ymm17,ymm8,ymm12
  afe4ad:	62 c1 4c 28 59 d5    	vmulps ymm18,ymm6,ymm13
  afe4b3:	62 a2 2d 28 bc d0    	vfnmadd231ps ymm18,ymm10,ymm16
  afe4b9:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  afe4bf:	c4 41 3c 59 c3       	vmulps ymm8,ymm8,ymm11
  afe4c4:	c4 42 35 b8 c4       	vfmadd231ps ymm8,ymm9,ymm12
  afe4c9:	c4 41 2c 59 cd       	vmulps ymm9,ymm10,ymm13
  afe4ce:	62 32 4d 28 b8 c8    	vfmadd231ps ymm9,ymm6,ymm16
  afe4d4:	c4 c1 3c 58 f1       	vaddps ymm6,ymm8,ymm9
  afe4d9:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  afe4dd:	62 52 65 20 ac d7    	vfnmadd213ps ymm10,ymm19,ymm15
  afe4e3:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  afe4e8:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  afe4ee:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  afe4f3:	c5 7c 28 dc          	vmovaps ymm11,ymm4
  afe4f7:	c4 42 4d ac de       	vfnmadd213ps ymm11,ymm6,ymm14
  afe4fc:	62 31 74 20 5c e2    	vsubps ymm12,ymm17,ymm18
  afe502:	62 11 1c 28 59 e0    	vmulps ymm12,ymm12,ymm24
  afe508:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  afe50d:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  afe512:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  afe517:	62 31 04 28 58 db    	vaddps ymm11,ymm15,ymm19
  afe51d:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  afe521:	c4 43 7d 19 dc 01    	vextractf128 xmm12,ymm11,0x1
  afe527:	62 72 45 28 7f de    	vpermt2ps ymm11,ymm7,ymm6
  afe52d:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  afe532:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  afe538:	c5 98 14 f6          	vunpcklps xmm6,xmm12,xmm6
  afe53c:	c5 f8 13 74 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm6
  afe542:	c4 63 7d 19 ce 01    	vextractf128 xmm6,ymm9,0x1
  afe548:	62 52 45 28 7f cd    	vpermt2ps ymm9,ymm7,ymm13
  afe54e:	c5 7c 11 4c 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm9
  afe554:	c4 43 7d 19 e9 01    	vextractf128 xmm9,ymm13,0x1
  afe55a:	c4 c1 48 14 f1       	vunpcklps xmm6,xmm6,xmm9
  afe55f:	c5 f8 13 74 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm6
  afe565:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  afe56b:	62 52 45 28 7f c2    	vpermt2ps ymm8,ymm7,ymm10
  afe571:	c5 7c 11 44 16 50    	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm8
  afe577:	c4 43 7d 19 d0 01    	vextractf128 xmm8,ymm10,0x1
  afe57d:	c4 c1 48 14 f0       	vunpcklps xmm6,xmm6,xmm8
  afe582:	c5 f8 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm6
  afe588:	48 83 c2 78          	add    rdx,0x78
  afe58c:	48 39 d0             	cmp    rax,rdx
  afe58f:	0f 85 bb fc ff ff    	jne    afe250 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  afe595:	c5 f8 77             	vzeroupper
  afe598:	c3                   	ret
