
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000abb1c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  abb1c0:	48 c1 e2 04          	shl    rdx,0x4
  abb1c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  abb1c8:	31 d2                	xor    edx,edx
  abb1ca:	62 e2 7d 28 18 2d 00 	vbroadcastss ymm21,DWORD PTR [rip+0xffffffffff5ba100]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  abb1d1:	a1 5b ff 
  abb1d4:	62 62 7d 28 18 0d 82 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff5ba282]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  abb1db:	a2 5b ff 
  abb1de:	62 e1 7c 28 28 1d f8 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff5bbff8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  abb1e5:	bf 5b ff 
  abb1e8:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  abb1ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  abb1f0:	c5 fb 10 64 17 40    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x40]
  abb1f6:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  abb1fc:	c4 e3 5d 0c e2 c0    	vblendps ymm4,ymm4,ymm2,0xc0
  abb202:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  abb208:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  abb20d:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  abb213:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  abb219:	c5 78 10 44 17 48    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x48]
  abb21f:	c5 40 c6 cc dd       	vshufps xmm9,xmm7,xmm4,0xdd
  abb224:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  abb22a:	c5 7b 10 5c 17 70    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x70]
  abb230:	c4 43 7d 18 db 01    	vinsertf128 ymm11,ymm0,xmm11,0x1
  abb236:	c4 63 25 0c da c0    	vblendps ymm11,ymm11,ymm2,0xc0
  abb23c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  abb242:	c4 41 28 c6 e3 dd    	vshufps xmm12,xmm10,xmm11,0xdd
  abb248:	c4 41 34 5c ec       	vsubps ymm13,ymm9,ymm12
  abb24d:	62 31 14 28 59 ed    	vmulps ymm13,ymm13,ymm21
  abb253:	c5 c0 c6 fc 88       	vshufps xmm7,xmm7,xmm4,0x88
  abb258:	c4 41 28 c6 d3 88    	vshufps xmm10,xmm10,xmm11,0x88
  abb25e:	c5 2c 58 df          	vaddps ymm11,ymm10,ymm7
  abb262:	c5 fb 10 64 17 10    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x10]
  abb268:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  abb26e:	c4 e3 5d 0c e2 c0    	vblendps ymm4,ymm4,ymm2,0xc0
  abb274:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  abb27a:	c4 41 50 c6 fe 88    	vshufps xmm15,xmm5,xmm14,0x88
  abb280:	62 81 7c 28 28 c1    	vmovaps ymm16,ymm25
  abb286:	62 c2 25 28 ac c7    	vfnmadd213ps ymm16,ymm11,ymm15
  abb28c:	62 b1 14 28 58 e0    	vaddps ymm4,ymm13,ymm16
  abb292:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x78]
  abb299:	78 00 00 00 
  abb29d:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x88]
  abb2a4:	11 
  abb2a5:	62 b3 7d 28 18 da 01 	vinsertf32x4 ymm3,ymm0,xmm18,0x1
  abb2ac:	c4 e3 65 0c da c0    	vblendps ymm3,ymm3,ymm2,0xc0
  abb2b2:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  abb2b8:	62 e1 74 00 c6 d3 dd 	vshufps xmm18,xmm17,xmm3,0xdd
  abb2bf:	62 e1 ff 08 10 64 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x28]
  abb2c6:	05 
  abb2c7:	62 b3 7d 28 18 c4 01 	vinsertf32x4 ymm0,ymm0,xmm20,0x1
  abb2ce:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  abb2d4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  abb2da:	62 e1 4c 08 c6 e0 dd 	vshufps xmm20,xmm6,xmm0,0xdd
  abb2e1:	62 a1 6c 20 5c f4    	vsubps ymm22,ymm18,ymm20
  abb2e7:	62 a1 4c 20 59 f5    	vmulps ymm22,ymm22,ymm21
  abb2ed:	62 f1 74 00 c6 db 88 	vshufps xmm3,xmm17,xmm3,0x88
  abb2f4:	c5 c8 c6 c0 88       	vshufps xmm0,xmm6,xmm0,0x88
  abb2f9:	c5 e4 58 f0          	vaddps ymm6,ymm3,ymm0
  abb2fd:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x58]
  abb304:	0b 
  abb305:	62 b3 7d 28 18 c9 01 	vinsertf32x4 ymm1,ymm0,xmm17,0x1
  abb30c:	c4 e3 75 0c ca c0    	vblendps ymm1,ymm1,ymm2,0xc0
  abb312:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  abb318:	62 e1 3c 08 c6 c9 88 	vshufps xmm17,xmm8,xmm1,0x88
  abb31f:	62 81 7c 28 28 f9    	vmovaps ymm23,ymm25
  abb325:	62 a2 4d 28 ac f9    	vfnmadd213ps ymm23,ymm6,ymm17
  abb32b:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  abb331:	c4 41 34 58 cc       	vaddps ymm9,ymm9,ymm12
  abb336:	c4 c1 50 c6 ee dd    	vshufps xmm5,xmm5,xmm14,0xdd
  abb33c:	62 11 7c 28 28 e1    	vmovaps ymm12,ymm25
  abb342:	c4 62 35 ac e5       	vfnmadd213ps ymm12,ymm9,ymm5
  abb347:	c4 c1 44 5c fa       	vsubps ymm7,ymm7,ymm10
  abb34c:	62 b1 44 28 59 fd    	vmulps ymm7,ymm7,ymm21
  abb352:	c5 1c 5c d7          	vsubps ymm10,ymm12,ymm7
  abb356:	62 31 6c 20 58 f4    	vaddps ymm14,ymm18,ymm20
  abb35c:	c5 b8 c6 c9 dd       	vshufps xmm1,xmm8,xmm1,0xdd
  abb361:	62 11 7c 28 28 c1    	vmovaps ymm8,ymm25
  abb367:	c4 62 0d ac c1       	vfnmadd213ps ymm8,ymm14,ymm1
  abb36c:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  abb370:	62 b1 7c 28 59 c5    	vmulps ymm0,ymm0,ymm21
  abb376:	c5 bc 5c d8          	vsubps ymm3,ymm8,ymm0
  abb37a:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  abb380:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  abb386:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  abb38a:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  abb38e:	c4 41 04 58 c3       	vaddps ymm8,ymm15,ymm11
  abb393:	62 f1 74 20 58 f6    	vaddps ymm6,ymm17,ymm6
  abb399:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  abb39d:	c5 8c 58 c9          	vaddps ymm1,ymm14,ymm1
  abb3a1:	62 31 14 28 5c c8    	vsubps ymm9,ymm13,ymm16
  abb3a7:	c5 44 5c d8          	vsubps ymm11,ymm7,ymm0
  abb3ab:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  abb3af:	c5 54 58 f1          	vaddps ymm14,ymm5,ymm1
  abb3b3:	c5 c0 58 c0          	vaddps xmm0,xmm7,xmm0
  abb3b7:	c4 e3 0d 18 c0 01    	vinsertf128 ymm0,ymm14,xmm0,0x1
  abb3bd:	c5 a8 5c fb          	vsubps xmm7,xmm10,xmm3
  abb3c1:	c4 e3 25 18 ff 01    	vinsertf128 ymm7,ymm11,xmm7,0x1
  abb3c7:	c5 a8 58 db          	vaddps xmm3,xmm10,xmm3
  abb3cb:	c5 7d 14 d3          	vunpcklpd ymm10,ymm0,ymm3
  abb3cf:	c5 d0 5c c9          	vsubps xmm1,xmm5,xmm1
  abb3d3:	c5 c5 14 e9          	vunpcklpd ymm5,ymm7,ymm1
  abb3d7:	c5 2c c6 dd 88       	vshufps ymm11,ymm10,ymm5,0x88
  abb3dc:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  abb3e2:	c5 ac c6 ed dd       	vshufps ymm5,ymm10,ymm5,0xdd
  abb3e7:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  abb3ec:	c5 fd 15 c3          	vunpckhpd ymm0,ymm0,ymm3
  abb3f0:	c5 c5 15 c9          	vunpckhpd ymm1,ymm7,ymm1
  abb3f4:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  abb3f9:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  abb3fe:	62 b1 14 08 58 c8    	vaddps xmm1,xmm13,xmm16
  abb404:	c4 e3 1d 18 c9 01    	vinsertf128 ymm1,ymm12,xmm1,0x1
  abb40a:	62 91 5c 08 5c d8    	vsubps xmm3,xmm4,xmm24
  abb410:	c4 e3 35 18 db 01    	vinsertf128 ymm3,ymm9,xmm3,0x1
  abb416:	62 91 5c 08 58 e0    	vaddps xmm4,xmm4,xmm24
  abb41c:	c5 f5 14 fc          	vunpcklpd ymm7,ymm1,ymm4
  abb420:	c5 b8 5c f6          	vsubps xmm6,xmm8,xmm6
  abb424:	c5 65 14 c6          	vunpcklpd ymm8,ymm3,ymm6
  abb428:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  abb42e:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  abb434:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  abb43a:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  abb43f:	c5 f5 15 cc          	vunpckhpd ymm1,ymm1,ymm4
  abb443:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  abb447:	c5 f4 c6 cb 88       	vshufps ymm1,ymm1,ymm3,0x88
  abb44c:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  abb451:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  abb456:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  abb45b:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  abb462:	00 
  abb463:	c5 7c 10 81 a0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xa0]
  abb46a:	00 
  abb46b:	c5 54 59 d3          	vmulps ymm10,ymm5,ymm3
  abb46f:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  abb474:	c5 7c 59 e6          	vmulps ymm12,ymm0,ymm6
  abb478:	c4 42 75 bc e0       	vfnmadd231ps ymm12,ymm1,ymm8
  abb47d:	c4 41 2c 58 ec       	vaddps ymm13,ymm10,ymm12
  abb482:	c5 c4 59 db          	vmulps ymm3,ymm7,ymm3
  abb486:	c4 e2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm4
  abb48b:	c5 f4 59 ce          	vmulps ymm1,ymm1,ymm6
  abb48f:	c4 c2 7d b8 c8       	vfmadd231ps ymm1,ymm0,ymm8
  abb494:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  abb498:	62 91 7c 28 28 e1    	vmovaps ymm4,ymm25
  abb49e:	c4 c2 15 ac e3       	vfnmadd213ps ymm4,ymm13,ymm11
  abb4a3:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  abb4a7:	62 b1 74 28 59 cd    	vmulps ymm1,ymm1,ymm21
  abb4ad:	c5 dc 58 d9          	vaddps ymm3,ymm4,ymm1
  abb4b1:	62 91 7c 28 28 e9    	vmovaps ymm5,ymm25
  abb4b7:	c4 c2 7d ac e9       	vfnmadd213ps ymm5,ymm0,ymm9
  abb4bc:	c4 c1 2c 5c f4       	vsubps ymm6,ymm10,ymm12
  abb4c1:	62 b1 4c 28 59 f5    	vmulps ymm6,ymm6,ymm21
  abb4c7:	c5 d4 5c fe          	vsubps ymm7,ymm5,ymm6
  abb4cb:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  abb4cf:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  abb4d3:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  abb4d7:	c4 c1 24 58 ed       	vaddps ymm5,ymm11,ymm13
  abb4dc:	c4 e3 7d 19 c6 01    	vextractf128 xmm6,ymm0,0x1
  abb4e2:	62 f2 65 20 7f c5    	vpermt2ps ymm0,ymm19,ymm5
  abb4e8:	c5 fc 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm0
  abb4ed:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  abb4f3:	c5 c8 14 c0          	vunpcklps xmm0,xmm6,xmm0
  abb4f7:	c5 f8 11 44 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm0
  abb4fd:	c4 e3 7d 19 f8 01    	vextractf128 xmm0,ymm7,0x1
  abb503:	62 f2 65 20 7f fb    	vpermt2ps ymm7,ymm19,ymm3
  abb509:	c5 fc 11 7c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm7
  abb50f:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  abb515:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  abb519:	c5 f8 11 44 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm0
  abb51f:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  abb525:	62 f2 65 20 7f e1    	vpermt2ps ymm4,ymm19,ymm1
  abb52b:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  abb531:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  abb537:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  abb53b:	c5 f8 11 84 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm0
  abb542:	00 00 
  abb544:	48 81 c2 90 00 00 00 	add    rdx,0x90
  abb54b:	48 39 d0             	cmp    rax,rdx
  abb54e:	0f 85 9c fc ff ff    	jne    abb1f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  abb554:	c5 f8 77             	vzeroupper
  abb557:	c3                   	ret
