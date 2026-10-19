
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3a300 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3a300:	55                   	push   rbp
  a3a301:	48 89 e5             	mov    rbp,rsp
  a3a304:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3a308:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a3a30f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a3a314:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a3a319:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a3a31e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a3a323:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a3a327:	c5 fc 10 67 20       	vmovups ymm4,YMMWORD PTR [rdi+0x20]
  a3a32c:	c5 fc 10 7f 40       	vmovups ymm7,YMMWORD PTR [rdi+0x40]
  a3a331:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  a3a336:	62 71 7c 48 28 05 00 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff657100]        # 91440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e8f0>
  a3a33d:	71 65 ff 
  a3a340:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a3a344:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a3a34a:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a3a350:	62 f1 7c 48 28 0d 26 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff657126]        # 91480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e930>
  a3a357:	71 65 ff 
  a3a35a:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a3a360:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a3a366:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a3a36c:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a3a372:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a3a378:	62 72 3d 48 7f d0    	vpermt2ps zmm10,zmm8,zmm0
  a3a37e:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a3a384:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a3a38a:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a3a390:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a3a396:	c5 7c 10 a7 80 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0x80]
  a3a39d:	00 
  a3a39e:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a3a3a4:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a3a3aa:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a3a3b0:	c5 7c 10 b7 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xa0]
  a3a3b7:	00 
  a3a3b8:	62 72 0d 48 77 c0    	vpermi2ps zmm8,zmm14,zmm0
  a3a3be:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a3a3c4:	62 51 2c 48 58 fd    	vaddps zmm15,zmm10,zmm13
  a3a3ca:	62 c1 54 48 58 c7    	vaddps zmm16,zmm5,zmm15
  a3a3d0:	62 c1 3c 48 58 c9    	vaddps zmm17,zmm8,zmm9
  a3a3d6:	62 a1 24 48 58 d1    	vaddps zmm18,zmm11,zmm17
  a3a3dc:	62 b1 7c 40 58 f2    	vaddps zmm6,zmm16,zmm18
  a3a3e2:	62 c1 44 48 58 dc    	vaddps zmm19,zmm7,zmm12
  a3a3e8:	62 a1 6c 48 58 e3    	vaddps zmm20,zmm2,zmm19
  a3a3ee:	62 e1 0c 48 58 ec    	vaddps zmm21,zmm14,zmm4
  a3a3f4:	62 a1 64 48 58 f5    	vaddps zmm22,zmm3,zmm21
  a3a3fa:	62 b1 5c 40 58 ce    	vaddps zmm1,zmm20,zmm22
  a3a400:	62 e2 7d 48 18 3d 56 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63b056]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3a407:	b0 63 ff 
  a3a40a:	62 d2 45 40 bc ef    	vfnmadd231ps zmm5,zmm23,zmm15
  a3a410:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a3a416:	62 72 7d 48 18 25 b4 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff63aeb4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3a41d:	ae 63 ff 
  a3a420:	62 d1 44 48 59 fc    	vmulps zmm7,zmm7,zmm12
  a3a426:	62 71 54 48 58 ff    	vaddps zmm15,zmm5,zmm7
  a3a42c:	62 32 45 40 bc d9    	vfnmadd231ps zmm11,zmm23,zmm17
  a3a432:	62 f1 0c 48 5c e4    	vsubps zmm4,zmm14,zmm4
  a3a438:	62 51 5c 48 59 f4    	vmulps zmm14,zmm4,zmm12
  a3a43e:	62 c1 24 48 58 ce    	vaddps zmm17,zmm11,zmm14
  a3a444:	62 21 04 48 5c c1    	vsubps zmm24,zmm15,zmm17
  a3a44a:	62 b2 45 40 bc d3    	vfnmadd231ps zmm2,zmm23,zmm19
  a3a450:	62 d1 2c 48 5c e5    	vsubps zmm4,zmm10,zmm13
  a3a456:	62 51 5c 48 59 d4    	vmulps zmm10,zmm4,zmm12
  a3a45c:	62 51 6c 48 5c ea    	vsubps zmm13,zmm2,zmm10
  a3a462:	62 b2 55 40 bc df    	vfnmadd231ps zmm3,zmm21,zmm23
  a3a468:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a3a46e:	62 51 5c 48 59 c4    	vmulps zmm8,zmm4,zmm12
  a3a474:	62 51 64 48 5c c8    	vsubps zmm9,zmm3,zmm8
  a3a47a:	62 d1 14 48 5c e1    	vsubps zmm4,zmm13,zmm9
  a3a480:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a3a486:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a3a48c:	62 51 54 48 58 e3    	vaddps zmm12,zmm5,zmm11
  a3a492:	62 f1 2c 48 58 d2    	vaddps zmm2,zmm10,zmm2
  a3a498:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a3a49e:	62 f1 6c 48 58 fb    	vaddps zmm7,zmm2,zmm3
  a3a4a4:	62 31 7c 40 5c d2    	vsubps zmm10,zmm16,zmm18
  a3a4aa:	62 31 5c 40 5c c6    	vsubps zmm8,zmm20,zmm22
  a3a4b0:	62 31 04 48 58 f1    	vaddps zmm14,zmm15,zmm17
  a3a4b6:	62 51 14 48 58 c9    	vaddps zmm9,zmm13,zmm9
  a3a4bc:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a3a4c2:	62 71 6c 48 5c db    	vsubps zmm11,zmm2,zmm3
  a3a4c8:	62 71 7c 48 28 2d ae 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68caae]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3a4cf:	ca 68 ff 
  a3a4d2:	62 f2 15 48 7f f0    	vpermt2ps zmm6,zmm13,zmm0
  a3a4d8:	62 62 15 48 7f c0    	vpermt2ps zmm24,zmm13,zmm0
  a3a4de:	62 72 15 48 7f e0    	vpermt2ps zmm12,zmm13,zmm0
  a3a4e4:	62 72 15 48 7f d0    	vpermt2ps zmm10,zmm13,zmm0
  a3a4ea:	62 72 15 48 7f f0    	vpermt2ps zmm14,zmm13,zmm0
  a3a4f0:	62 f2 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm0
  a3a4f6:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a3a4fb:	62 52 15 48 7f ff    	vpermt2ps zmm15,zmm13,zmm15
  a3a501:	62 e1 7c 48 28 05 f5 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68c9f5]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3a508:	c9 68 ff 
  a3a50b:	62 d2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm14
  a3a511:	62 62 7d 40 7f c5    	vpermt2ps zmm24,zmm16,zmm5
  a3a517:	62 52 7d 40 7f e7    	vpermt2ps zmm12,zmm16,zmm15
  a3a51d:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a3a523:	62 d1 cd 48 14 ec    	vunpcklpd zmm5,zmm6,zmm12
  a3a529:	62 d1 cd 48 15 d4    	vunpckhpd zmm2,zmm6,zmm12
  a3a52f:	62 d1 bd 40 14 f2    	vunpcklpd zmm6,zmm24,zmm10
  a3a535:	62 51 bd 40 15 d2    	vunpckhpd zmm10,zmm24,zmm10
  a3a53b:	62 71 7c 48 28 25 bb 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68c8bb]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3a542:	c8 68 ff 
  a3a545:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a3a54b:	62 f2 1d 48 7f de    	vpermt2ps zmm3,zmm12,zmm6
  a3a551:	62 71 7c 48 28 35 e5 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68c8e5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3a558:	c8 68 ff 
  a3a55b:	62 f2 0d 48 7f ee    	vpermt2ps zmm5,zmm14,zmm6
  a3a561:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a3a567:	62 d2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm10
  a3a56d:	62 d2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm10
  a3a573:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a3a579:	62 f2 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm0
  a3a57f:	62 f2 15 48 7f f8    	vpermt2ps zmm7,zmm13,zmm0
  a3a585:	62 72 15 48 7f c0    	vpermt2ps zmm8,zmm13,zmm0
  a3a58b:	62 72 15 48 7f c8    	vpermt2ps zmm9,zmm13,zmm0
  a3a591:	62 72 15 48 7f d8    	vpermt2ps zmm11,zmm13,zmm0
  a3a597:	62 d2 7d 40 7f c9    	vpermt2ps zmm1,zmm16,zmm9
  a3a59d:	62 d2 7d 40 7f e3    	vpermt2ps zmm4,zmm16,zmm11
  a3a5a3:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a3a5a9:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a3a5af:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  a3a5b5:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  a3a5bb:	62 d1 dd 48 14 f8    	vunpcklpd zmm7,zmm4,zmm8
  a3a5c1:	62 d1 dd 48 15 e0    	vunpckhpd zmm4,zmm4,zmm8
  a3a5c7:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a3a5cd:	62 72 1d 48 7f c7    	vpermt2ps zmm8,zmm12,zmm7
  a3a5d3:	62 f2 0d 48 7f c7    	vpermt2ps zmm0,zmm14,zmm7
  a3a5d9:	62 72 75 48 77 e4    	vpermi2ps zmm12,zmm1,zmm4
  a3a5df:	62 f2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm4
  a3a5e5:	62 f1 7c 48 10 62 02 	vmovups zmm4,ZMMWORD PTR [rdx+0x80]
  a3a5ec:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a3a5f3:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a3a5fa:	62 71 7c 48 10 52 05 	vmovups zmm10,ZMMWORD PTR [rdx+0x140]
  a3a601:	62 71 7c 48 10 5a 06 	vmovups zmm11,ZMMWORD PTR [rdx+0x180]
  a3a608:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a3a60f:	62 51 4c 48 59 f1    	vmulps zmm14,zmm6,zmm9
  a3a615:	62 52 1d 48 bc f2    	vfnmadd231ps zmm14,zmm12,zmm10
  a3a61b:	62 51 64 48 58 fe    	vaddps zmm15,zmm3,zmm14
  a3a621:	62 e1 54 48 59 c4    	vmulps zmm16,zmm5,zmm4
  a3a627:	62 e2 7d 48 bc c7    	vfnmadd231ps zmm16,zmm0,zmm7
  a3a62d:	62 c1 6c 48 59 cb    	vmulps zmm17,zmm2,zmm11
  a3a633:	62 c2 75 48 bc cd    	vfnmadd231ps zmm17,zmm1,zmm13
  a3a639:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a3a63f:	62 51 1c 48 59 c9    	vmulps zmm9,zmm12,zmm9
  a3a645:	62 72 2d 48 b8 ce    	vfmadd231ps zmm9,zmm10,zmm6
  a3a64b:	62 d1 34 48 58 f0    	vaddps zmm6,zmm9,zmm8
  a3a651:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a3a657:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a3a65d:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a3a663:	62 f2 15 48 b8 ca    	vfmadd231ps zmm1,zmm13,zmm2
  a3a669:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a3a66f:	62 d1 64 48 5c de    	vsubps zmm3,zmm3,zmm14
  a3a675:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a3a67b:	62 f1 64 48 58 c8    	vaddps zmm1,zmm3,zmm0
  a3a681:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a3a687:	62 b1 74 40 5c e8    	vsubps zmm5,zmm17,zmm16
  a3a68d:	62 f1 5c 48 58 fd    	vaddps zmm7,zmm4,zmm5
  a3a693:	62 31 04 48 5c c2    	vsubps zmm8,zmm15,zmm18
  a3a699:	62 71 4c 48 5c ca    	vsubps zmm9,zmm6,zmm2
  a3a69f:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a3a6a5:	62 f1 5c 48 5c dd    	vsubps zmm3,zmm4,zmm5
  a3a6ab:	62 b1 04 48 58 e2    	vaddps zmm4,zmm15,zmm18
  a3a6b1:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a3a6b7:	62 f1 7c 48 28 2d ff 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff656dff]        # 914c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e970>
  a3a6be:	6d 65 ff 
  a3a6c1:	62 f2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm2
  a3a6c7:	62 f3 7d 48 19 66 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm4,0x2
  a3a6ce:	02 
  a3a6cf:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  a3a6d3:	62 f2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm7
  a3a6d9:	62 f3 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm1,0x2
  a3a6e0:	02 
  a3a6e1:	c5 fc 11 4e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm1
  a3a6e6:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a3a6ec:	62 73 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm8,0x2
  a3a6f3:	02 
  a3a6f4:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  a3a6f9:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a3a6ff:	62 f3 7d 48 19 46 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm0,0x2
  a3a706:	02 
  a3a707:	c5 fc 11 86 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm0
  a3a70e:	00 
  a3a70f:	48 89 ec             	mov    rsp,rbp
  a3a712:	5d                   	pop    rbp
  a3a713:	c5 f8 77             	vzeroupper
  a3a716:	c3                   	ret
