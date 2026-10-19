
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c6180 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c6180:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  6c6184:	c5 fb 10 4f 20       	vmovsd xmm1,QWORD PTR [rdi+0x20]
  6c6189:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  6c618e:	c5 fb 10 5f 48       	vmovsd xmm3,QWORD PTR [rdi+0x48]
  6c6193:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  6c6198:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  6c619d:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  6c61a2:	c4 e3 fd 01 fe d8    	vpermpd ymm7,ymm6,0xd8
  6c61a8:	c5 ec c6 f3 88       	vshufps ymm6,ymm2,ymm3,0x88
  6c61ad:	c4 63 fd 01 c6 d8    	vpermpd ymm8,ymm6,0xd8
  6c61b3:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  6c61b8:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  6c61be:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  6c61c3:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6c61c9:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  6c61ce:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6c61d4:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  6c61d9:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6c61df:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  6c61e4:	c5 e4 58 e7          	vaddps ymm4,ymm3,ymm7
  6c61e8:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  6c61ec:	c5 d4 58 f0          	vaddps ymm6,ymm5,ymm0
  6c61f0:	c4 62 7d 18 15 67 f2 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9af267]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c61f7:	9a ff 
  6c61f9:	c4 e2 2d ac df       	vfnmadd213ps ymm3,ymm10,ymm7
  6c61fe:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6c6202:	c4 e2 7d 18 15 c9 f0 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9af0c9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6209:	9a ff 
  6c620b:	c5 f4 59 fa          	vmulps ymm7,ymm1,ymm2
  6c620f:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  6c6213:	c4 62 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm0
  6c6218:	c4 c1 3c 5c c1       	vsubps ymm0,ymm8,ymm9
  6c621d:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6c6221:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  6c6225:	c5 e4 5c d7          	vsubps ymm2,ymm3,ymm7
  6c6229:	c5 ac 58 f8          	vaddps ymm7,ymm10,ymm0
  6c622d:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  6c6231:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  6c6237:	c5 78 29 dc          	vmovaps xmm4,xmm11
  6c623b:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  6c6241:	c5 78 28 c2          	vmovaps xmm8,xmm2
  6c6245:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6c624b:	c5 e5 14 d2          	vunpcklpd ymm2,ymm3,ymm2
  6c624f:	c4 41 7d 15 c8       	vunpckhpd ymm9,ymm0,ymm8
  6c6254:	c4 c1 7d 14 d8       	vunpcklpd ymm3,ymm0,ymm8
  6c6259:	c4 41 7a 7e d3       	vmovq  xmm10,xmm11
  6c625e:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c6263:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  6c6268:	c4 c3 55 0c c0 cc    	vblendps ymm0,ymm5,ymm8,0xcc
  6c626e:	c5 6c c6 d8 88       	vshufps ymm11,ymm2,ymm0,0x88
  6c6273:	c4 c1 64 c6 c2 88    	vshufps ymm0,ymm3,ymm10,0x88
  6c6279:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6c627e:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  6c6284:	c4 c1 64 c6 d2 dd    	vshufps ymm2,ymm3,ymm10,0xdd
  6c628a:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  6c628f:	c5 b4 c6 d4 88       	vshufps ymm2,ymm9,ymm4,0x88
  6c6294:	c5 ec c6 da d8       	vshufps ymm3,ymm2,ymm2,0xd8
  6c6299:	c5 b4 c6 d4 dd       	vshufps ymm2,ymm9,ymm4,0xdd
  6c629e:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6c62a3:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  6c62a9:	c5 78 28 ce          	vmovaps xmm9,xmm6
  6c62ad:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c62b3:	c5 78 28 d1          	vmovaps xmm10,xmm1
  6c62b7:	c4 c3 7d 19 cb 01    	vextractf128 xmm11,ymm1,0x1
  6c62bd:	c5 78 28 e7          	vmovaps xmm12,xmm7
  6c62c1:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6c62c7:	c5 cd 14 f7          	vunpcklpd ymm6,ymm6,ymm7
  6c62cb:	c4 c1 35 15 fc       	vunpckhpd ymm7,ymm9,ymm12
  6c62d0:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  6c62d5:	c5 7a 7e e1          	vmovq  xmm12,xmm1
  6c62d9:	c4 c1 2d 73 da 08    	vpsrldq ymm10,ymm10,0x8
  6c62df:	c4 c3 25 0c c8 cc    	vblendps ymm1,ymm11,ymm8,0xcc
  6c62e5:	c5 cc c6 f1 88       	vshufps ymm6,ymm6,ymm1,0x88
  6c62ea:	c4 c1 34 c6 cc 88    	vshufps ymm1,ymm9,ymm12,0x88
  6c62f0:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  6c62f5:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  6c62fb:	c4 41 34 c6 c4 dd    	vshufps ymm8,ymm9,ymm12,0xdd
  6c6301:	c4 41 3c c6 c8 d8    	vshufps ymm9,ymm8,ymm8,0xd8
  6c6307:	c4 41 44 c6 c2 88    	vshufps ymm8,ymm7,ymm10,0x88
  6c630d:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c6313:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  6c6319:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c631e:	c5 4c c6 de d8       	vshufps ymm11,ymm6,ymm6,0xd8
  6c6323:	c5 7c 10 6a 40       	vmovups ymm13,YMMWORD PTR [rdx+0x40]
  6c6328:	c5 7c 10 72 60       	vmovups ymm14,YMMWORD PTR [rdx+0x60]
  6c632d:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  6c6334:	00 
  6c6335:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  6c633c:	00 
  6c633d:	c5 94 59 f5          	vmulps ymm6,ymm13,ymm5
  6c6341:	c4 c2 35 bc f6       	vfnmadd231ps ymm6,ymm9,ymm14
  6c6346:	c4 41 14 59 e9       	vmulps ymm13,ymm13,ymm9
  6c634b:	c5 7c 10 ba 00 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x100]
  6c6352:	00 
  6c6353:	c4 42 55 b8 ee       	vfmadd231ps ymm13,ymm5,ymm14
  6c6358:	c5 fc 10 aa 20 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x120]
  6c635f:	00 
  6c6360:	c5 04 59 cc          	vmulps ymm9,ymm15,ymm4
  6c6364:	c4 62 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm5
  6c6369:	c4 41 04 59 f3       	vmulps ymm14,ymm15,ymm11
  6c636e:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  6c6375:	00 
  6c6376:	c4 62 5d b8 f5       	vfmadd231ps ymm14,ymm4,ymm5
  6c637b:	c5 fc 10 82 e0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xe0]
  6c6382:	00 
  6c6383:	c5 1c 59 db          	vmulps ymm11,ymm12,ymm3
  6c6387:	c4 42 3d bc da       	vfnmadd231ps ymm11,ymm8,ymm10
  6c638c:	c4 41 1c 59 e0       	vmulps ymm12,ymm12,ymm8
  6c6391:	c5 b4 58 e6          	vaddps ymm4,ymm9,ymm6
  6c6395:	c4 42 65 b8 e2       	vfmadd231ps ymm12,ymm3,ymm10
  6c639a:	c5 04 59 d2          	vmulps ymm10,ymm15,ymm2
  6c639e:	c4 62 45 bc d0       	vfnmadd231ps ymm10,ymm7,ymm0
  6c63a3:	c4 c1 24 58 ea       	vaddps ymm5,ymm11,ymm10
  6c63a8:	c5 84 59 df          	vmulps ymm3,ymm15,ymm7
  6c63ac:	c4 c1 14 58 fe       	vaddps ymm7,ymm13,ymm14
  6c63b1:	c4 e2 6d b8 d8       	vfmadd231ps ymm3,ymm2,ymm0
  6c63b6:	c5 1c 58 c3          	vaddps ymm8,ymm12,ymm3
  6c63ba:	c4 e2 7d 18 0d 25 f3 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9af325]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6c63c1:	9a ff 
  6c63c3:	c4 41 14 5c ee       	vsubps ymm13,ymm13,ymm14
  6c63c8:	c5 fc 28 d1          	vmovaps ymm2,ymm1
  6c63cc:	c5 1c 5c e3          	vsubps ymm12,ymm12,ymm3
  6c63d0:	c4 62 7d 18 35 7f f3 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9af37f]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6c63d7:	9a ff 
  6c63d9:	c5 fc 10 44 24 b8    	vmovups ymm0,YMMWORD PTR [rsp-0x48]
  6c63df:	c4 e2 5d a8 d0       	vfmadd213ps ymm2,ymm4,ymm0
  6c63e4:	c4 41 4c 5c f9       	vsubps ymm15,ymm6,ymm9
  6c63e9:	c4 c1 1c 59 de       	vmulps ymm3,ymm12,ymm14
  6c63ee:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  6c63f3:	c4 62 7d 18 1d a4 ef 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff9aefa4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6c63fa:	9a ff 
  6c63fc:	c4 c2 15 b8 db       	vfmadd231ps ymm3,ymm13,ymm11
  6c6401:	c4 41 14 59 ce       	vmulps ymm9,ymm13,ymm14
  6c6406:	c4 42 25 bc cc       	vfnmadd231ps ymm9,ymm11,ymm12
  6c640b:	c4 c1 2c 59 f6       	vmulps ymm6,ymm10,ymm14
  6c6410:	c4 c2 05 b8 f3       	vfmadd231ps ymm6,ymm15,ymm11
  6c6415:	c4 41 04 59 e6       	vmulps ymm12,ymm15,ymm14
  6c641a:	c4 62 7d 18 2d 21 f2 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff9af221]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6c6421:	9a ff 
  6c6423:	c4 c2 55 bc d5       	vfnmadd231ps ymm2,ymm5,ymm13
  6c6428:	c4 42 2d bc e3       	vfnmadd231ps ymm12,ymm10,ymm11
  6c642d:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  6c6431:	c5 7c 10 7c 24 d8    	vmovups ymm15,YMMWORD PTR [rsp-0x28]
  6c6437:	c4 42 45 a8 df       	vfmadd213ps ymm11,ymm7,ymm15
  6c643c:	c4 42 3d bc dd       	vfnmadd231ps ymm11,ymm8,ymm13
  6c6441:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  6c6446:	c5 7c 28 d0          	vmovaps ymm10,ymm0
  6c644a:	c4 62 5d ac f0       	vfnmadd213ps ymm14,ymm4,ymm0
  6c644f:	c4 62 55 b8 f1       	vfmadd231ps ymm14,ymm5,ymm1
  6c6454:	c4 42 45 ac ef       	vfnmadd213ps ymm13,ymm7,ymm15
  6c6459:	c4 62 3d b8 e9       	vfmadd231ps ymm13,ymm8,ymm1
  6c645e:	c5 80 58 c7          	vaddps xmm0,xmm15,xmm7
  6c6462:	c5 b8 58 c0          	vaddps xmm0,xmm8,xmm0
  6c6466:	c5 a8 58 cc          	vaddps xmm1,xmm10,xmm4
  6c646a:	c5 f0 58 cd          	vaddps xmm1,xmm1,xmm5
  6c646e:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  6c6472:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6476:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  6c647b:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  6c647f:	c5 a0 5c c6          	vsubps xmm0,xmm11,xmm6
  6c6483:	c5 e8 58 cb          	vaddps xmm1,xmm2,xmm3
  6c6487:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  6c648b:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c648f:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  6c6494:	c5 f8 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm4
  6c6499:	c4 c1 10 5c c4       	vsubps xmm0,xmm13,xmm12
  6c649e:	c4 c1 08 58 c9       	vaddps xmm1,xmm14,xmm9
  6c64a3:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  6c64a7:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c64ab:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  6c64b0:	c5 f8 13 66 40       	vmovlps QWORD PTR [rsi+0x40],xmm4
  6c64b5:	c4 c1 10 58 c4       	vaddps xmm0,xmm13,xmm12
  6c64ba:	c4 c1 08 5c c9       	vsubps xmm1,xmm14,xmm9
  6c64bf:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  6c64c3:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c64c7:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  6c64cc:	c5 f8 13 66 58       	vmovlps QWORD PTR [rsi+0x58],xmm4
  6c64d1:	c5 a0 58 c6          	vaddps xmm0,xmm11,xmm6
  6c64d5:	c5 e8 5c cb          	vsubps xmm1,xmm2,xmm3
  6c64d9:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  6c64dd:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c64e1:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  6c64e6:	c5 f8 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm2
  6c64eb:	c5 f8 77             	vzeroupper
  6c64ee:	c3                   	ret
