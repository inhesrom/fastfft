
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1a000 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1a000:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b1a004:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b1a009:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  b1a00e:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  b1a013:	c5 ec c6 e3 dd       	vshufps ymm4,ymm2,ymm3,0xdd
  b1a018:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b1a01e:	c5 fc 10 af 80 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x80]
  b1a025:	00 
  b1a026:	c5 fc 10 b7 a0 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0xa0]
  b1a02d:	00 
  b1a02e:	c5 d4 c6 fe dd       	vshufps ymm7,ymm5,ymm6,0xdd
  b1a033:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b1a039:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b1a03d:	c4 62 7d 18 0d 8e b2 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff55b28e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1a044:	55 ff 
  b1a046:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b1a04b:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  b1a050:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b1a056:	c5 d4 c6 de 88       	vshufps ymm3,ymm5,ymm6,0x88
  b1a05b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b1a061:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  b1a065:	c5 fc c6 e9 88       	vshufps ymm5,ymm0,ymm1,0x88
  b1a06a:	c4 63 fd 01 d5 d8    	vpermpd ymm10,ymm5,0xd8
  b1a070:	c4 62 7d 18 1d e7 b3 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff55b3e7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1a077:	55 ff 
  b1a079:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b1a07e:	c4 42 4d ac e2       	vfnmadd213ps ymm12,ymm6,ymm10
  b1a083:	c4 c1 3c 58 ec       	vaddps ymm5,ymm8,ymm12
  b1a088:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b1a08c:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b1a091:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b1a097:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  b1a09c:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  b1a0a0:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  b1a0a4:	c5 a4 5c d1          	vsubps ymm2,ymm11,ymm1
  b1a0a8:	c4 41 1c 5c e0       	vsubps ymm12,ymm12,ymm8
  b1a0ad:	c5 a4 58 c9          	vaddps ymm1,ymm11,ymm1
  b1a0b1:	c5 2c 58 d6          	vaddps ymm10,ymm10,ymm6
  b1a0b5:	c5 fc 58 c4          	vaddps ymm0,ymm0,ymm4
  b1a0b9:	c5 f8 28 d8          	vmovaps xmm3,xmm0
  b1a0bd:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1a0c3:	c5 f8 28 e1          	vmovaps xmm4,xmm1
  b1a0c7:	c4 e3 7d 19 ce 01    	vextractf128 xmm6,ymm1,0x1
  b1a0cd:	c5 f8 28 fa          	vmovaps xmm7,xmm2
  b1a0d1:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1a0d7:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  b1a0db:	c5 e5 14 df          	vunpcklpd ymm3,ymm3,ymm7
  b1a0df:	c5 fa 7e c9          	vmovq  xmm1,xmm1
  b1a0e3:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  b1a0e8:	c5 7d 15 da          	vunpckhpd ymm11,ymm0,ymm2
  b1a0ec:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  b1a0f0:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  b1a0f5:	c4 c3 4d 0c f9 cc    	vblendps ymm7,ymm6,ymm9,0xcc
  b1a0fb:	c4 41 4d 15 e9       	vunpckhpd ymm13,ymm6,ymm9
  b1a100:	62 e1 64 28 c6 d1 88 	vshufps ymm18,ymm3,ymm1,0x88
  b1a107:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b1a10c:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  b1a111:	c5 bc c6 cc 88       	vshufps ymm1,ymm8,ymm4,0x88
  b1a116:	c5 f4 c6 f1 d8       	vshufps ymm6,ymm1,ymm1,0xd8
  b1a11b:	c5 bc c6 cc dd       	vshufps ymm1,ymm8,ymm4,0xdd
  b1a120:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1a125:	c5 ec c6 e7 88       	vshufps ymm4,ymm2,ymm7,0x88
  b1a12a:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  b1a12f:	c5 ec c6 d7 dd       	vshufps ymm2,ymm2,ymm7,0xdd
  b1a134:	c5 ec c6 e2 d8       	vshufps ymm4,ymm2,ymm2,0xd8
  b1a139:	c4 c1 24 c6 d5 88    	vshufps ymm2,ymm11,ymm13,0x88
  b1a13f:	c5 ec c6 fa d8       	vshufps ymm7,ymm2,ymm2,0xd8
  b1a144:	c4 c1 24 c6 d5 dd    	vshufps ymm2,ymm11,ymm13,0xdd
  b1a14a:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1a14f:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  b1a154:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b1a15a:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b1a15f:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  b1a165:	c5 78 28 fd          	vmovaps xmm15,xmm5
  b1a169:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b1a16f:	62 c1 a5 28 15 c7    	vunpckhpd ymm16,ymm11,ymm15
  b1a175:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b1a17a:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  b1a17f:	c4 c1 15 73 dd 08    	vpsrldq ymm13,ymm13,0x8
  b1a185:	c5 2d 15 fd          	vunpckhpd ymm15,ymm10,ymm5
  b1a189:	62 e1 ad 28 14 cd    	vunpcklpd ymm17,ymm10,ymm5
  b1a18f:	c4 c3 0d 0c c1 cc    	vblendps ymm0,ymm14,ymm9,0xcc
  b1a195:	c4 41 0d 15 f1       	vunpckhpd ymm14,ymm14,ymm9
  b1a19a:	c4 c1 24 c6 ec 88    	vshufps ymm5,ymm11,ymm12,0x88
  b1a1a0:	c4 41 24 c6 cc dd    	vshufps ymm9,ymm11,ymm12,0xdd
  b1a1a6:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  b1a1ac:	62 51 7c 20 c6 cd 88 	vshufps ymm9,ymm16,ymm13,0x88
  b1a1b3:	62 c1 34 28 c6 d9 d8 	vshufps ymm19,ymm9,ymm9,0xd8
  b1a1ba:	62 51 7c 20 c6 cd dd 	vshufps ymm9,ymm16,ymm13,0xdd
  b1a1c1:	c4 41 34 c6 d1 d8    	vshufps ymm10,ymm9,ymm9,0xd8
  b1a1c7:	62 71 74 20 c6 c8 88 	vshufps ymm9,ymm17,ymm0,0x88
  b1a1ce:	62 c1 34 28 c6 c1 d8 	vshufps ymm16,ymm9,ymm9,0xd8
  b1a1d5:	62 f1 74 20 c6 c0 dd 	vshufps ymm0,ymm17,ymm0,0xdd
  b1a1dc:	c5 7c c6 e8 d8       	vshufps ymm13,ymm0,ymm0,0xd8
  b1a1e1:	c4 c1 04 c6 c6 dd    	vshufps ymm0,ymm15,ymm14,0xdd
  b1a1e7:	c5 7c c6 c8 d8       	vshufps ymm9,ymm0,ymm0,0xd8
  b1a1ec:	c4 c1 04 c6 c6 88    	vshufps ymm0,ymm15,ymm14,0x88
  b1a1f2:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1a1f7:	c5 7c 10 b2 00 01 00 	vmovups ymm14,YMMWORD PTR [rdx+0x100]
  b1a1fe:	00 
  b1a1ff:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  b1a206:	00 
  b1a207:	c4 41 3c 59 de       	vmulps ymm11,ymm8,ymm14
  b1a20c:	62 52 7d 20 bc df    	vfnmadd231ps ymm11,ymm16,ymm15
  b1a212:	62 51 7c 20 59 f6    	vmulps ymm14,ymm16,ymm14
  b1a218:	62 e1 7c 28 10 42 04 	vmovups ymm16,YMMWORD PTR [rdx+0x80]
  b1a21f:	c4 42 3d b8 f7       	vfmadd231ps ymm14,ymm8,ymm15
  b1a224:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  b1a22b:	00 
  b1a22c:	62 31 4c 28 59 c0    	vmulps ymm8,ymm6,ymm16
  b1a232:	62 52 65 20 bc c7    	vfnmadd231ps ymm8,ymm19,ymm15
  b1a238:	62 a1 64 20 59 c0    	vmulps ymm16,ymm19,ymm16
  b1a23e:	62 e1 7c 28 10 4a 0c 	vmovups ymm17,YMMWORD PTR [rdx+0x180]
  b1a245:	62 c2 4d 28 b8 c7    	vfmadd231ps ymm16,ymm6,ymm15
  b1a24b:	c5 fc 10 b2 a0 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x1a0]
  b1a252:	00 
  b1a253:	62 31 44 28 59 f9    	vmulps ymm15,ymm7,ymm17
  b1a259:	c4 62 7d bc fe       	vfnmadd231ps ymm15,ymm0,ymm6
  b1a25e:	62 b1 7c 28 59 c1    	vmulps ymm0,ymm0,ymm17
  b1a264:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1a26b:	c4 e2 45 b8 c6       	vfmadd231ps ymm0,ymm7,ymm6
  b1a270:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  b1a275:	62 b1 64 28 59 f9    	vmulps ymm7,ymm3,ymm17
  b1a27b:	c4 e2 1d bc fe       	vfnmadd231ps ymm7,ymm12,ymm6
  b1a280:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  b1a286:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  b1a28d:	c4 62 65 b8 e6       	vfmadd231ps ymm12,ymm3,ymm6
  b1a292:	c5 fc 10 9a 60 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x160]
  b1a299:	00 
  b1a29a:	62 b1 5c 28 59 f1    	vmulps ymm6,ymm4,ymm17
  b1a2a0:	c4 e2 15 bc f3       	vfnmadd231ps ymm6,ymm13,ymm3
  b1a2a5:	62 31 14 28 59 e9    	vmulps ymm13,ymm13,ymm17
  b1a2ab:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  b1a2b2:	c4 62 5d b8 eb       	vfmadd231ps ymm13,ymm4,ymm3
  b1a2b7:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  b1a2be:	00 
  b1a2bf:	62 b1 74 28 59 e1    	vmulps ymm4,ymm1,ymm17
  b1a2c5:	c4 e2 2d bc e3       	vfnmadd231ps ymm4,ymm10,ymm3
  b1a2ca:	62 31 2c 28 59 d1    	vmulps ymm10,ymm10,ymm17
  b1a2d0:	62 e1 7c 28 10 4a 0e 	vmovups ymm17,YMMWORD PTR [rdx+0x1c0]
  b1a2d7:	c4 62 75 b8 d3       	vfmadd231ps ymm10,ymm1,ymm3
  b1a2dc:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  b1a2e3:	00 
  b1a2e4:	62 b1 6c 28 59 d9    	vmulps ymm3,ymm2,ymm17
  b1a2ea:	c4 e2 35 bc d9       	vfnmadd231ps ymm3,ymm9,ymm1
  b1a2ef:	62 31 34 28 59 c9    	vmulps ymm9,ymm9,ymm17
  b1a2f5:	62 a1 6c 20 c6 ca d8 	vshufps ymm17,ymm18,ymm18,0xd8
  b1a2fc:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1a301:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  b1a306:	62 d1 74 20 58 cb    	vaddps ymm1,ymm17,ymm11
  b1a30c:	c4 c1 3c 58 d7       	vaddps ymm2,ymm8,ymm15
  b1a311:	62 51 74 20 5c db    	vsubps ymm11,ymm17,ymm11
  b1a317:	62 e1 7c 20 58 c8    	vaddps ymm17,ymm16,ymm0
  b1a31d:	62 e1 7c 20 5c c0    	vsubps ymm16,ymm16,ymm0
  b1a323:	62 e1 44 28 58 d6    	vaddps ymm18,ymm7,ymm6
  b1a329:	c5 c4 5c c6          	vsubps ymm0,ymm7,ymm6
  b1a32d:	c4 c1 1c 58 fd       	vaddps ymm7,ymm12,ymm13
  b1a332:	c4 c1 1c 5c f5       	vsubps ymm6,ymm12,ymm13
  b1a337:	c4 41 2c 58 e1       	vaddps ymm12,ymm10,ymm9
  b1a33c:	c4 41 2c 5c c9       	vsubps ymm9,ymm10,ymm9
  b1a341:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b1a345:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b1a349:	c5 8c 58 e5          	vaddps ymm4,ymm14,ymm5
  b1a34d:	c4 c1 54 5c ee       	vsubps ymm5,ymm5,ymm14
  b1a352:	c5 74 58 ea          	vaddps ymm13,ymm1,ymm2
  b1a356:	c4 41 04 5c c0       	vsubps ymm8,ymm15,ymm8
  b1a35b:	c5 7c 58 f6          	vaddps ymm14,ymm0,ymm6
  b1a35f:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  b1a363:	c5 b4 5c f3          	vsubps ymm6,ymm9,ymm3
  b1a367:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  b1a36b:	c4 62 7d 18 0d 28 b0 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff55b028]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b1a372:	55 ff 
  b1a374:	c4 41 0c 59 f1       	vmulps ymm14,ymm14,ymm9
  b1a379:	c5 34 59 fe          	vmulps ymm15,ymm9,ymm6
  b1a37d:	62 c1 7c 28 59 d9    	vmulps ymm19,ymm0,ymm9
  b1a383:	c5 b4 59 db          	vmulps ymm3,ymm9,ymm3
  b1a387:	62 51 6c 20 58 ca    	vaddps ymm9,ymm18,ymm10
  b1a38d:	62 e1 74 28 5c e2    	vsubps ymm20,ymm1,ymm2
  b1a393:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  b1a397:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  b1a39c:	62 71 74 20 58 e4    	vaddps ymm12,ymm17,ymm4
  b1a3a2:	62 b1 5c 28 5c c1    	vsubps ymm0,ymm4,ymm17
  b1a3a8:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b1a3ae:	62 b1 2c 28 5c d2    	vsubps ymm2,ymm10,ymm18
  b1a3b4:	c4 41 0c 58 d7       	vaddps ymm10,ymm14,ymm15
  b1a3b9:	62 31 24 28 5c d8    	vsubps ymm11,ymm11,ymm16
  b1a3bf:	62 e1 64 20 5c c3    	vsubps ymm16,ymm19,ymm3
  b1a3c5:	62 e1 64 20 58 cb    	vaddps ymm17,ymm19,ymm3
  b1a3cb:	62 e1 3c 28 58 d5    	vaddps ymm18,ymm8,ymm5
  b1a3d1:	c4 c1 54 5c c8       	vsubps ymm1,ymm5,ymm8
  b1a3d6:	c5 2c 58 c4          	vaddps ymm8,ymm10,ymm4
  b1a3da:	c4 c1 04 5c de       	vsubps ymm3,ymm15,ymm14
  b1a3df:	62 71 5c 20 58 f7    	vaddps ymm14,ymm20,ymm7
  b1a3e5:	c4 41 5c 5c d2       	vsubps ymm10,ymm4,ymm10
  b1a3ea:	62 31 24 28 58 f9    	vaddps ymm15,ymm11,ymm17
  b1a3f0:	62 f1 5c 20 5c ff    	vsubps ymm7,ymm20,ymm7
  b1a3f6:	62 c1 14 28 5c d9    	vsubps ymm19,ymm13,ymm9
  b1a3fc:	62 b1 24 28 5c e1    	vsubps ymm4,ymm11,ymm17
  b1a402:	c4 41 14 58 c9       	vaddps ymm9,ymm13,ymm9
  b1a407:	c5 98 58 ee          	vaddps xmm5,xmm12,xmm6
  b1a40b:	c5 7c 28 1d ad de 55 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff55dead]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b1a412:	ff 
  b1a413:	62 d2 25 28 7f e9    	vpermt2ps ymm5,ymm11,ymm9
  b1a419:	62 31 6c 00 58 c8    	vaddps xmm9,xmm18,xmm16
  b1a41f:	62 52 25 28 7f c8    	vpermt2ps ymm9,ymm11,ymm8
  b1a425:	c5 78 58 c2          	vaddps xmm8,xmm0,xmm2
  b1a429:	62 52 25 28 7f c6    	vpermt2ps ymm8,ymm11,ymm14
  b1a42f:	c5 70 58 eb          	vaddps xmm13,xmm1,xmm3
  b1a433:	62 52 25 28 7f ef    	vpermt2ps ymm13,ymm11,ymm15
  b1a439:	c5 98 5c f6          	vsubps xmm6,xmm12,xmm6
  b1a43d:	62 b2 25 28 7f f3    	vpermt2ps ymm6,ymm11,ymm19
  b1a443:	62 31 6c 00 5c e0    	vsubps xmm12,xmm18,xmm16
  b1a449:	62 52 25 28 7f e2    	vpermt2ps ymm12,ymm11,ymm10
  b1a44f:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b1a453:	62 f2 25 28 7f c7    	vpermt2ps ymm0,ymm11,ymm7
  b1a459:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  b1a45d:	62 f2 25 28 7f cc    	vpermt2ps ymm1,ymm11,ymm4
  b1a463:	c4 e3 7d 19 ea 01    	vextractf128 xmm2,ymm5,0x1
  b1a469:	c5 f8 13 56 10       	vmovlps QWORD PTR [rsi+0x10],xmm2
  b1a46e:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  b1a472:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  b1a478:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  b1a47d:	c5 78 11 4e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm9
  b1a482:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  b1a488:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  b1a48d:	c5 78 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm8
  b1a492:	c4 63 7d 19 ea 01    	vextractf128 xmm2,ymm13,0x1
  b1a498:	c5 f8 13 56 58       	vmovlps QWORD PTR [rsi+0x58],xmm2
  b1a49d:	c5 78 11 6e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm13
  b1a4a2:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  b1a4a8:	c5 f8 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm2
  b1a4ad:	c5 f8 11 76 60       	vmovups XMMWORD PTR [rsi+0x60],xmm6
  b1a4b2:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  b1a4b8:	c5 f8 13 96 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm2
  b1a4bf:	00 
  b1a4c0:	c5 78 11 66 78       	vmovups XMMWORD PTR [rsi+0x78],xmm12
  b1a4c5:	c4 e3 7d 19 c2 01    	vextractf128 xmm2,ymm0,0x1
  b1a4cb:	c5 f8 13 96 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm2
  b1a4d2:	00 
  b1a4d3:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  b1a4da:	00 
  b1a4db:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b1a4e1:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  b1a4e8:	00 
  b1a4e9:	c5 f8 11 8e a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm1
  b1a4f0:	00 
  b1a4f1:	c5 f8 77             	vzeroupper
  b1a4f4:	c3                   	ret
