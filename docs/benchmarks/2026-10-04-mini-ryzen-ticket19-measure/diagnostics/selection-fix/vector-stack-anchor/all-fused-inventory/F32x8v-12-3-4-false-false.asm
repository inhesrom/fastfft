
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1f180 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1f180:	c5 f8 10 07          	vmovups xmm0,XMMWORD PTR [rdi]
  b1f184:	c5 f8 10 4f 10       	vmovups xmm1,XMMWORD PTR [rdi+0x10]
  b1f189:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  b1f18e:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  b1f193:	c5 e8 c6 e3 88       	vshufps xmm4,xmm2,xmm3,0x88
  b1f198:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  b1f19d:	c5 f8 10 77 40       	vmovups xmm6,XMMWORD PTR [rdi+0x40]
  b1f1a2:	c5 c8 c6 fd 88       	vshufps xmm7,xmm6,xmm5,0x88
  b1f1a7:	c5 5c 5c c7          	vsubps ymm8,ymm4,ymm7
  b1f1ab:	c4 62 7d 18 0d 20 61 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff556120]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1f1b2:	55 ff 
  b1f1b4:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  b1f1b9:	c5 e8 c6 d3 dd       	vshufps xmm2,xmm2,xmm3,0xdd
  b1f1be:	c5 c8 c6 dd dd       	vshufps xmm3,xmm6,xmm5,0xdd
  b1f1c3:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b1f1c7:	c5 f8 c6 f1 dd       	vshufps xmm6,xmm0,xmm1,0xdd
  b1f1cc:	c4 62 7d 18 15 8b 62 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff55628b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1f1d3:	55 ff 
  b1f1d5:	c5 dc 58 e7          	vaddps ymm4,ymm4,ymm7
  b1f1d9:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
  b1f1de:	c5 f8 58 cc          	vaddps xmm1,xmm0,xmm4
  b1f1e2:	c4 c2 5d bc c2       	vfnmadd231ps ymm0,ymm4,ymm10
  b1f1e7:	c4 62 55 ac d6       	vfnmadd213ps ymm10,ymm5,ymm6
  b1f1ec:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b1f1f0:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  b1f1f4:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  b1f1f8:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b1f1fc:	c5 f5 15 d0          	vunpckhpd ymm2,ymm1,ymm0
  b1f200:	c5 f5 14 c0          	vunpcklpd ymm0,ymm1,ymm0
  b1f204:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b1f208:	c4 e3 65 0c e1 cc    	vblendps ymm4,ymm3,ymm1,0xcc
  b1f20e:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  b1f213:	c5 fc c6 fc 88       	vshufps ymm7,ymm0,ymm4,0x88
  b1f218:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b1f21d:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  b1f222:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1f227:	c5 ec c6 e3 88       	vshufps ymm4,ymm2,ymm3,0x88
  b1f22c:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b1f231:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  b1f236:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1f23b:	c5 c8 58 dd          	vaddps xmm3,xmm6,xmm5
  b1f23f:	c4 c1 28 5c e8       	vsubps xmm5,xmm10,xmm8
  b1f244:	c4 c1 38 58 f2       	vaddps xmm6,xmm8,xmm10
  b1f249:	c5 65 15 c6          	vunpckhpd ymm8,ymm3,ymm6
  b1f24d:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b1f251:	c4 e3 55 0c c9 cc    	vblendps ymm1,ymm5,ymm1,0xcc
  b1f257:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  b1f25c:	c5 e4 c6 f1 88       	vshufps ymm6,ymm3,ymm1,0x88
  b1f261:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1f266:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  b1f26b:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1f270:	c5 bc c6 dd 88       	vshufps ymm3,ymm8,ymm5,0x88
  b1f275:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1f27a:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  b1f27f:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1f284:	c5 7c 10 42 40       	vmovups ymm8,YMMWORD PTR [rdx+0x40]
  b1f289:	c5 7c 10 4a 60       	vmovups ymm9,YMMWORD PTR [rdx+0x60]
  b1f28e:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  b1f295:	00 
  b1f296:	c5 7c 10 9a a0 00 00 	vmovups ymm11,YMMWORD PTR [rdx+0xa0]
  b1f29d:	00 
  b1f29e:	c5 7c 10 a2 c0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xc0]
  b1f2a5:	00 
  b1f2a6:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  b1f2ad:	00 
  b1f2ae:	c5 2c 59 f4          	vmulps ymm14,ymm10,ymm4
  b1f2b2:	c4 42 65 bc f3       	vfnmadd231ps ymm14,ymm3,ymm11
  b1f2b7:	c5 0c 58 ff          	vaddps ymm15,ymm14,ymm7
  b1f2bb:	62 c1 7c 28 59 c0    	vmulps ymm16,ymm0,ymm8
  b1f2c1:	62 c2 75 28 bc c1    	vfnmadd231ps ymm16,ymm1,ymm9
  b1f2c7:	62 c1 6c 28 59 cc    	vmulps ymm17,ymm2,ymm12
  b1f2cd:	62 c2 55 28 bc cd    	vfnmadd231ps ymm17,ymm5,ymm13
  b1f2d3:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  b1f2d9:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  b1f2dd:	c4 c2 5d b8 db       	vfmadd231ps ymm3,ymm4,ymm11
  b1f2e2:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  b1f2e6:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  b1f2ea:	c4 c2 7d b8 c9       	vfmadd231ps ymm1,ymm0,ymm9
  b1f2ef:	c5 9c 59 c5          	vmulps ymm0,ymm12,ymm5
  b1f2f3:	c4 c2 6d b8 c5       	vfmadd231ps ymm0,ymm2,ymm13
  b1f2f8:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  b1f2fc:	c4 c1 44 5c ee       	vsubps ymm5,ymm7,ymm14
  b1f301:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b1f305:	c5 cc 5c cb          	vsubps ymm1,ymm6,ymm3
  b1f309:	62 b1 74 20 5c d8    	vsubps ymm3,ymm17,ymm16
  b1f30f:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b1f313:	c5 dc 5c fa          	vsubps ymm7,ymm4,ymm2
  b1f317:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b1f31b:	c5 dc 58 d2          	vaddps ymm2,ymm4,ymm2
  b1f31f:	62 b1 04 08 58 da    	vaddps xmm3,xmm15,xmm18
  b1f325:	c5 fc 28 25 93 8f 55 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff558f93]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  b1f32c:	ff 
  b1f32d:	62 f2 5d 28 7f da    	vpermt2ps ymm3,ymm4,ymm2
  b1f333:	c5 f8 11 1e          	vmovups XMMWORD PTR [rsi],xmm3
  b1f337:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  b1f33d:	c5 f8 13 56 10       	vmovlps QWORD PTR [rsi+0x10],xmm2
  b1f342:	c5 d0 58 d0          	vaddps xmm2,xmm5,xmm0
  b1f346:	62 f2 5d 28 7f d6    	vpermt2ps ymm2,ymm4,ymm6
  b1f34c:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  b1f351:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1f357:	c5 f8 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm2
  b1f35c:	62 b1 04 08 5c d2    	vsubps xmm2,xmm15,xmm18
  b1f362:	62 f2 5d 28 7f d7    	vpermt2ps ymm2,ymm4,ymm7
  b1f368:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  b1f36d:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1f373:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  b1f378:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  b1f37c:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  b1f382:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b1f388:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  b1f38d:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  b1f392:	c5 f8 77             	vzeroupper
  b1f395:	c3                   	ret
